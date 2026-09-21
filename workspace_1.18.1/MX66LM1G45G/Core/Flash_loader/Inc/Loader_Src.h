/**
  ******************************************************************************
  * @file    Loader_Src.h
  * @author  GPAM/ST Application Team
  * @brief   Header file of Loader_Src.c
  *
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef LOADER_SRC_H
#define LOADER_SRC_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32u5g9j_discovery_hspi.h"

/* Private includes ----------------------------------------------------------*/
#include <string.h>
#include <stdio.h>

/* Exported types ------------------------------------------------------------*/

/**
  * @brief Memory map status typedef
  */
typedef enum
{
    MEM_MAPDISABLE = 0, /*!< map mode disabled      */
    MEM_MAPENABLE       /*!< map mode enabled       */
} MEM_MAPSTAT;

/**
  * @brief Debug state machine typedef
  */
typedef enum
{
    DEBUG_STATE_WAIT,        /*!< Debug state: Wait       */
    DEBUG_STATE_INIT,        /*!< Debug state: Initialize */
    DEBUG_STATE_WRITE,       /*!< Debug state: Write      */
    DEBUG_STATE_SECTORERASE, /*!< Debug state: Sector Erase */
    DEBUG_STATE_MASSERASE    /*!< Debug state: Mass Erase */
} DEBUG_STATETypedef;

/**
  * @brief Loader status typedef
  */
typedef enum
{
    LOADER_STATUS_SUCCESS = 1, /*!< Loader status: Success */
    LOADER_STATUS_FAIL = 0     /*!< Loader status: Fail    */
} loader_status;

/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/

/* Exported functions prototypes ---------------------------------------------*/
uint32_t Init();
uint32_t Write(uint32_t Address, uint32_t Size, uint8_t *buffer);
uint32_t SectorErase(uint32_t EraseStartAddress, uint32_t EraseEndAddress);
uint64_t Verify(uint32_t MemoryAddr, uint32_t RAMBufferAddr,
                                    uint32_t Size, uint32_t missalignement);
uint32_t MassErase(uint32_t Parallelism);
uint32_t CheckSum(uint32_t StartAddress, uint32_t Size, uint32_t InitVal);
void Reset_Handler(void) __attribute__((weak));
int main(void);
HAL_StatusTypeDef COM_Init(void);

/* Private defines -----------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void SystemClock_Config(void);

#ifdef __cplusplus
}
#endif

#endif /* LOADER_SRC_H */
