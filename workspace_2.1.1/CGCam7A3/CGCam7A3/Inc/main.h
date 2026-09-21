/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include <defines.h>

/* Exported variables ------------------------------------------------------------*/
extern GPIO_InitTypeDef 	hGPIO;
extern SAI_HandleTypeDef 	hSAI2A;
extern UART_HandleTypeDef 	hUART10;
extern DMA_HandleTypeDef	hDMA_SAI2A;

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);
void SystemClock_Config(void);
void GPIO_Init(void);
void SAI2_Init(void);
void USART10_DBG_Init(void);

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
