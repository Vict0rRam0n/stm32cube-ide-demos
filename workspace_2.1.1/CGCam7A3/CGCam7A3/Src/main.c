/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

/* Private includes ----------------------------------------------------------*/
#include "main.h"
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private user code ---------------------------------------------------------*/

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
	HAL_Init();
	SystemClock_Config();										// Configure the system clock

	GPIO_Init();
	USART10_DBG_Init();

SAI2_Init();
BSP_Audio_StartRecording("test1");

//for (int i=0; i<12; i++) {
//	BSP_Audio_ProcessRecording();
while(1) {
	HAL_Delay(100);
	LL_GPIO_TogglePin(LED_Port, LED_Pin);
}
BSP_Audio_StopRecording();

	while(1) {
		HAL_Delay(950);
		LL_GPIO_ResetOutputPin(LED_Port, LED_Pin);
		HAL_Delay(50);
		LL_GPIO_SetOutputPin(LED_Port, LED_Pin);
	}
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* User can add his own implementation to report the HAL error return state */
  while (1) {
	HAL_Delay(100);
	LL_GPIO_TogglePin(LED_Port, LED_Pin);
  }
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
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
}
#endif /* USE_FULL_ASSERT */
