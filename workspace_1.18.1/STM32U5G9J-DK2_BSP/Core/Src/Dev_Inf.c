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

/* This structure contains information used by STM32CubeProgrammer to program and erase the device */
#if defined(__ICCARM__)
__root struct StorageInfo const StorageInfo =
#else

struct StorageInfo __attribute__((section(".Dev_info"))) /*const*/ StorageInfo  =

{
    "CUSTOM_MX66LM1G45G_STM32U5G9J-DK2",   /* Device Name + Board name */
    NOR_FLASH,                      /* Device Type */
    0xA0000000UL,                   /* Device Start Address */
    0x08000000UL,                   /* Device Size in Bytes (128MBytes) */
    0x1000UL,                       /* Programming Page Size 4096Bytes */
    0xFFUL,                         /* Initial Content of Erased Memory */

    /* Specify Size and Address of Sectors (view example below) */
	{
			   { 0x00000800UL,                   /* Sector Num : 2048 */
						0x00010000UL },                   /* Sector Size: 64KBytes */

			   { 0x00000000UL, 0x00000000UL }
	}
};
#endif /* __ICCARM__ */
