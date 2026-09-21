/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* DUAL_CORE_BOOT_SYNC_SEQUENCE: Define for dual core boot synchronization    */
/*                             demonstration code based on hardware semaphore */
/* This define is present in both CM7/CM4 projects                            */
/* To comment when developping/debugging on a single core                     */
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
FlagStatus uFlagNotif = RESET;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MPU_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MPU Configuration--------------------------------------------------------*/
  MPU_Config();

/* USER CODE BEGIN Boot_Mode_Sequence_1 */
#if defined(DUAL_CORE_BOOT_SYNC_SEQUENCE)
  /*HW semaphore Clock enable*/
  __HAL_RCC_HSEM_CLK_ENABLE();
  /* Activate HSEM notification for Cortex-M4*/
  HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));
  /*
  Domain D2 goes to STOP mode (Cortex-M4 in deep-sleep) waiting for Cortex-M7 to
  perform system initialization (system clock config, external memory configuration.. )
  */
  HAL_PWREx_ClearPendingEvent();
  HAL_PWREx_EnterSTOPMode(PWR_MAINREGULATOR_ON, PWR_STOPENTRY_WFE, PWR_D2_DOMAIN);
  /* Clear HSEM flag */
  __HAL_HSEM_CLEAR_FLAG(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));

#endif /* DUAL_CORE_BOOT_SYNC_SEQUENCE */
/* USER CODE END Boot_Mode_Sequence_1 */
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  /* USER CODE BEGIN 2 */
  HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	  /* ############### CM4 LD3 Blinking every notification ############### */
	  /* Check if the uFlagNotif was set - (Free Semaphore) */
	  if(uFlagNotif)
	  {
			 /* Toggle the LD3 status every notification */
			 HAL_GPIO_TogglePin(GPIOI, GPIO_PIN_13);
			 /* Clear the uFlagNotif */
			 uFlagNotif = RESET;
	  }
  }
  /* USER CODE END 3 */
}

/* USER CODE BEGIN 4 */
/* Callback triggered when a semaphore is released */
void HAL_HSEM_FreeCallback(uint32_t SemMask)
{
      /* Reactivate the HSEM notification for Semaphore 0 */
      HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));
      uFlagNotif = SET;
}
/* USER CODE END 4 */

 /* MPU Configuration */

void MPU_Config(void)
{
	  MPU_Region_InitTypeDef MPU_InitStruct = {0};

	  /* Disable the MPU */
	  HAL_MPU_Disable();

	  /* Region 0: CM4 Flash (Bank2: 0x08100000, 1MB) */
	  MPU_InitStruct.Enable           = MPU_REGION_ENABLE;
	  MPU_InitStruct.Number           = MPU_REGION_NUMBER0;
	  MPU_InitStruct.BaseAddress      = 0x08100000U;
	  MPU_InitStruct.Size             = MPU_REGION_SIZE_1MB;
	  MPU_InitStruct.SubRegionDisable = 0x0;
	  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
	  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
	  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
	  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
	  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
	  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
	  HAL_MPU_ConfigRegion(&MPU_InitStruct);

	  /* Region 1: D2 SRAM1 (0x10000000, 128KB) */
	  MPU_InitStruct.Number           = MPU_REGION_NUMBER1;
	  MPU_InitStruct.BaseAddress      = 0x10000000U;
	  MPU_InitStruct.Size             = MPU_REGION_SIZE_128KB;
	  MPU_InitStruct.SubRegionDisable = 0x0;
	  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
	  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
	  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
	  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
	  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
	  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
	  HAL_MPU_ConfigRegion(&MPU_InitStruct);

	  /* Region 2: D2 SRAM3 (0x10040000, 32KB) */
	  MPU_InitStruct.Number           = MPU_REGION_NUMBER2;
	  MPU_InitStruct.BaseAddress      = 0x10040000U;
	  MPU_InitStruct.Size             = MPU_REGION_SIZE_32KB;
	  MPU_InitStruct.SubRegionDisable = 0x0;
	  MPU_InitStruct.TypeExtField     = MPU_TEX_LEVEL1;
	  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
	  MPU_InitStruct.DisableExec      = MPU_INSTRUCTION_ACCESS_ENABLE;
	  MPU_InitStruct.IsShareable      = MPU_ACCESS_NOT_SHAREABLE;
	  MPU_InitStruct.IsCacheable      = MPU_ACCESS_CACHEABLE;
	  MPU_InitStruct.IsBufferable     = MPU_ACCESS_BUFFERABLE;
	  HAL_MPU_ConfigRegion(&MPU_InitStruct);

	  /* (Optional) Region 3: external memory at 0xD0000000, if you really need it
		 Keep it out for now if unused to simplify debugging.
	  */

	  /* Enable the MPU */
	  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
