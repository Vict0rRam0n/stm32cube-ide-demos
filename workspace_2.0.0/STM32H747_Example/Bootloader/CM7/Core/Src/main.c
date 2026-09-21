/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body (CM7 Bootloader)
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "eth.h"
#include "i2c.h"
#include "quadspi.h"
#include "sdmmc.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"
#include "fmc.h"
#include "stm32h7xx_hal.h"
#include "stm32h7xx_hal_hsem.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef void (*pFunction)(void);
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define CM7_APP_ADDRESS   0x08020000U
#define CM4_APP_ADDRESS   0x08100000U

/* DUAL_CORE_BOOT_SYNC_SEQUENCE: Define for dual core boot synchronization
 * demonstration code based on hardware semaphore.
 * This define is present in both CM7/CM4 projects.
 */
#define DUAL_CORE_BOOT_SYNC_SEQUENCE

#if defined(DUAL_CORE_BOOT_SYNC_SEQUENCE)
#ifndef HSEM_ID_0
#define HSEM_ID_0 (0U) /* HW semaphore 0*/
#endif
#endif /* DUAL_CORE_BOOT_SYNC_SEQUENCE */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MPU_Config(void);
/* USER CODE BEGIN PFP */

/* Jump to CM7 application */
static void JumpToCM7App(void)
{
    uint32_t appStack = *(__IO uint32_t *)CM7_APP_ADDRESS;

    /* Validate that first word looks like a valid SRAM address (MSP) */
    if ((appStack & 0x2FFE0000U) != 0x20000000U) {
        /* Invalid stack pointer -> no valid app */
        return;
    }

    __disable_irq();

    /* De-init HAL and clock if needed */
    HAL_RCC_DeInit();
    HAL_DeInit();

    /* Clear NVIC configuration */
    for (int i = 0; i < 8; i++) {
        NVIC->ICER[i] = 0xFFFFFFFF;
        NVIC->ICPR[i] = 0xFFFFFFFF;
    }

    /* Relocate vector table to app start */
    SCB->VTOR = CM7_APP_ADDRESS;

    /* Set main stack pointer */
    __set_MSP(appStack);

    /* Fetch app reset handler (second word in vector table) */
    uint32_t appEntryAddr = *(__IO uint32_t *)(CM7_APP_ADDRESS + 4U);
    pFunction appEntry = (pFunction)appEntryAddr;

    __DSB();
    __ISB();
    __enable_irq();

    appEntry();  /* Never returns if app is valid */
}

/* Configure and start CM4 from CM7 */
static void StartCM4(void)
{
    /* Optional: wait until D2 domain is ready */
    while (__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) == RESET) {
        /* spin */
    }

    /* Ensure CM4 is stopped before booting it (optional safety) */
    CLEAR_BIT(RCC->GCR, RCC_GCR_BOOT_C2);
    __DSB();
    __ISB();

    /* Do NOT program C2BOOTADD0 here – rely on Option Bytes */

    /* Release CM4 to start from OB boot address */
    SET_BIT(RCC->GCR, RCC_GCR_BOOT_C2);

    __DSB();
    __ISB();
}

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
/* USER CODE END 0 */

/**
  * @brief  The application entry point (CM7 Bootloader).
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
#if defined(DUAL_CORE_BOOT_SYNC_SEQUENCE)
  int32_t timeout;
#endif
  /* USER CODE END 1 */

  /* MPU Configuration--------------------------------------------------------*/
  MPU_Config();

  /* Enable the CPU I-Cache */
  SCB_EnableICache();

  /* USER CODE BEGIN Boot_Mode_Sequence_1 */
#if defined(DUAL_CORE_BOOT_SYNC_SEQUENCE)
  /* Wait until CPU2 (CM4) boots and enters stop mode or timeout */
  timeout = 0xFFFF;
  while((__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) != RESET) && (timeout-- > 0));
  if (timeout < 0)
  {
    Error_Handler();
  }
#endif /* DUAL_CORE_BOOT_SYNC_SEQUENCE */
  /* USER CODE END Boot_Mode_Sequence_1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN Boot_Mode_Sequence_2 */
#if defined(DUAL_CORE_BOOT_SYNC_SEQUENCE)
  /* HW semaphore Clock enable */
  __HAL_RCC_HSEM_CLK_ENABLE();

  /* Take HSEM */
  HAL_HSEM_FastTake(HSEM_ID_0);

  /* Release HSEM to notify CPU2 (CM4) */
  HAL_HSEM_Release(HSEM_ID_0, 0);

  /* Wait until CPU2 wakes up from stop mode */
  timeout = 0xFFFF;
  while((__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) == RESET) && (timeout-- > 0));
  if (timeout < 0)
  {
    Error_Handler();
  }
#endif /* DUAL_CORE_BOOT_SYNC_SEQUENCE */
  /* USER CODE END Boot_Mode_Sequence_2 */

  /* USER CODE BEGIN SysInit */
  /* USER CODE END SysInit */

  /* Initialize all configured peripherals (only what you really need in BL) */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_I2C2_Init();
  MX_ETH_Init();
  MX_FMC_Init();
  MX_QUADSPI_Init();
  // MX_SDMMC1_SD_Init();  /* enable when needed */
  MX_SPI4_Init();
  MX_USART1_UART_Init();

  /* USER CODE BEGIN 2 */

  /* Example policy:
   * - Option A: Immediately start CM4 (if CM4 app present)
   * - Option B: Immediately jump to CM7 app if valid
   * - Option C: Stay in bootloader if e.g. button pressed, else jump.
   */

  /* Start CM4 core (if you actually want CM4 app running) */
  StartCM4();

  /* Check if CM7 application is valid and jump if yes */
  JumpToCM7App();

  /* If we get here, no valid app or jump failed: stay in bootloader */
  /* USER CODE END 2 */

  /* Infinite loop: simple LED blink + HSEM demo */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* ############### CM7 LD1 Blinking ############### */

    /* Take semaphore as 2-step lock */
    HAL_HSEM_Take(HSEM_ID_0, HSEM_PROCESSID_MIN);

    /* Wait until semaphore is taken */
    while (HAL_HSEM_IsSemTaken(HSEM_ID_0) == 0);

    /* Blink LED 3 times (6 toggles) */
    for (uint8_t i = 0; i < 6; i++)
    {
        HAL_GPIO_TogglePin(GPIOI, GPIO_PIN_12);  /* adjust LED port/pin if needed */
        HAL_Delay(500);
    }

    /* Release semaphore (will generate interrupt on CM4 side, if used) */
    HAL_HSEM_Release(HSEM_ID_0, HSEM_PROCESSID_MIN);
  }
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /* Supply configuration update enable */
  HAL_PWREx_ConfigSupply(PWR_DIRECT_SMPS_SUPPLY);

  /* Configure the main internal regulator output voltage */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

  /* Initializes the RCC Oscillators */
  RCC_OscInitStruct.OscillatorType      = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState            = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState        = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource       = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM            = 5;
  RCC_OscInitStruct.PLL.PLLN            = 160;
  RCC_OscInitStruct.PLL.PLLP            = 2;
  RCC_OscInitStruct.PLL.PLLQ            = 2;
  RCC_OscInitStruct.PLL.PLLR            = 4;
  RCC_OscInitStruct.PLL.PLLRGE          = RCC_PLL1VCIRANGE_2;
  RCC_OscInitStruct.PLL.PLLVCOSEL       = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN        = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /* Initializes the CPU, AHB and APB buses clocks */
  RCC_ClkInitStruct.ClockType      = RCC_CLOCKTYPE_HCLK   | RCC_CLOCKTYPE_SYSCLK
                                   | RCC_CLOCKTYPE_PCLK1  | RCC_CLOCKTYPE_PCLK2
                                   | RCC_CLOCKTYPE_D3PCLK1| RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource   = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider  = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider  = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/* MPU Configuration */
static void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct = {0};

  HAL_MPU_Disable();

  /* Region 0: CM7 Flash (example: 0x08040000, 1MB) */
  MPU_InitStruct.Enable           = MPU_REGION_ENABLE;
  MPU_InitStruct.Number           = MPU_REGION_NUMBER0;
  MPU_InitStruct.BaseAddress      = 0x08040000U;
  MPU_InitStruct.Size             = MPU_REGION_SIZE_1MB;
  MPU_InitStruct.SubRegionDisable = 0x0;
  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /* Region 1: D1 SRAM (0x24000000, 512KB) */
  MPU_InitStruct.Number           = MPU_REGION_NUMBER1;
  MPU_InitStruct.BaseAddress      = 0x24000000U;
  MPU_InitStruct.Size             = MPU_REGION_SIZE_512KB;
  MPU_InitStruct.SubRegionDisable = 0x0;
  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /* Region 2: D2 SRAM1 (0x30000000, 128KB) */
  MPU_InitStruct.Number           = MPU_REGION_NUMBER2;
  MPU_InitStruct.BaseAddress      = 0x30000000U;
  MPU_InitStruct.Size             = MPU_REGION_SIZE_128KB;
  MPU_InitStruct.SubRegionDisable = 0x0;
  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  /* Region 3: D3 SRAM4 (0x38000000, 64KB) */
  MPU_InitStruct.Number           = MPU_REGION_NUMBER3;
  MPU_InitStruct.BaseAddress      = 0x38000000U;
  MPU_InitStruct.Size             = MPU_REGION_SIZE_64KB;
  MPU_InitStruct.SubRegionDisable = 0x0;
  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
  HAL_MPU_ConfigRegion(&MPU_InitStruct);

  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);
}

/**
  * @brief  Period elapsed callback in non-blocking mode
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  if (htim->Instance == TIM1)
  {
    HAL_IncTick();
  }
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  __disable_irq();
  while (1)
  {
    /* Optionally blink an error LED here */
  }
}

#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* User can implement logging here */
}
#endif /* USE_FULL_ASSERT */
