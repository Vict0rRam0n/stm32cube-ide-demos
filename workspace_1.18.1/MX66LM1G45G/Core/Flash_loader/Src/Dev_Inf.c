/**
  ************************************************************************************************
  * @file    Dev_Inf.c
  * @author  ST/GPAM Application Team
  * @brief   This file defines the structure containing information about the
  *          external flash memory MX66LM1G45G used by STM32CubeProgramer in
  *          programming/erasing the device.
  ************************************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  *************************************************************************************************/

#include "Dev_Inf.h"
#include "mx66uw1g45g.h"
#define MEMORY_FLASH_SIZE               0x8000000 /* 1024 MBits => 128MBytes */
#define MEMORY_BLOCK_SIZE               0x10000   /* 1024 sectors of 64KBytes */
#define MEMORY_SECTOR_SIZE              0x1000    /* 64kBytes */
#define MEMORY_PAGE_SIZE                0x1000     /* 4096Bytes */


/* This structure contains information used by STM32CubeProgrammer to program and erase the device */
#if defined(__ICCARM__)
__root struct StorageInfo const StorageInfo =
#else
//struct StorageInfo const StorageInfo =
//{
//	    "MX66LM1G45G_STM32U5G9J-DK2",   /* Device Name + Board name */
//	    NOR_FLASH,                      /* Device Type */
//	    0xA0000000UL,                   /* Device Start Address */
//	    0x08000000UL,                   /* Device Size in Bytes (128MBytes) */
//	    0x1000UL,                       /* Programming Page Size 4096Bytes */
//	    0xFFUL,                         /* Initial Content of Erased Memory */
//	    /* Specify Size and Address of Sectors (view example below) */
//	    0x00000800UL,                   /* Sector Num : 2048 */
//	    0x00010000UL,                   /* Sector Size: 64KBytes */
//	    0x00000000UL,
//	    0x00000000UL,
//};
struct StorageInfo __attribute__((section(".Dev_info"))) /*const*/ StorageInfo  =
{
    "CUSTOM_MX66LM1G45G",   /* Device Name + Board name */
    NOR_FLASH,                      /* Device Type */
    0xA0000000,                   /* Device Start Address */
	MEMORY_FLASH_SIZE,                   /* Device Size in Bytes (128MBytes) */
	MEMORY_PAGE_SIZE,                       /* Programming Page Size 4096Bytes */
    0xFF,                         /* Initial Content of Erased Memory */
    /* Specify Size and Address of Sectors (view example below) */
    {
    		{
    			(MEMORY_FLASH_SIZE / MEMORY_SECTOR_SIZE),                 /* Sector Num : 2048 */
    			(uint32_t)MEMORY_SECTOR_SIZE
    		},                   /* Sector Size: 64KBytes */

			{0x00000000, 0x00000000}
    }
};
#endif /* __ICCARM__ */

