/*
 * defines.h
 *
 *  Created on: Jun 3, 2026
 *      Author: bbandali
 */

#ifndef DEFINES_H_
#define DEFINES_H_

/* Private includes ----------------------------------------------------------*/
#include "stm32h7xx_hal.h"
#include "stm32h7xx_ll_gpio.h"
#include "DMM_4026.h"
#include <string.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>

/* Exported types ------------------------------------------------------------*/

/* Exported constants --------------------------------------------------------*/
#define FIRMWARE_VER_HI		5
#define FIRMWARE_VER_LO		01

#define FALSE				0
#define TRUE				1

/* Exported defines -----------------------------------------------------------*/
#define SD_VSEL_Pin 		GPIO_PIN_15
#define SD_VSEL_Port 		GPIOC
#define USB_RST_Pin 		GPIO_PIN_14
#define USB_RST_Port 		GPIOC
#define RTCINT_WKP4_Pin 	GPIO_PIN_13
#define RTCINT_WKP4_Port 	GPIOC
#define CAM_MCLK_MCO1_Pin 	GPIO_PIN_8
#define CAM_MCLK_MCO1_Port 	GPIOA
#define USB_RCK_MCO2_Pin 	GPIO_PIN_9
#define USB_RCK_MCO2_Port 	GPIOC
#define CAM_RST_Pin 		GPIO_PIN_8
#define CAM_RST_Port 		GPIOD
#define CAM_PWDN_Pin 		GPIO_PIN_15
#define CAM_PWDN_Port 		GPIOB
#define USBDET_WKP2_Pin 	GPIO_PIN_2
#define USBDET_WKP2_Port 	GPIOA
#define LED_Pin 			GPIO_PIN_2
#define LED_Port 			GPIOH
#define VBAT_A1I8_Pin 		GPIO_PIN_5
#define VBAT_A1I8_Port 		GPIOC
#define CTL_ADC_Pin 		GPIO_PIN_12
#define CTL_ADC_Port 		GPIOF
#define CAM_VEN_Pin 		GPIO_PIN_15
#define CAM_VEN_Port 		GPIOE


/* Exported macro ------------------------------------------------------------*/
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)

#define	STR(x) 				#x
#define __STR__(x)			STR(x)

#if (UART_PRINTF == TRUE)
	#define UPRINTF(...)	printf(__VA_ARGS__);
#else
	#define UPRINTF(...)
#endif


#endif /* DEFINES_H_ */
