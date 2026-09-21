/*
 * MIC_43434.c
 *
 *  Created on: Oct 17, 2017
 *      Author: bbandali
 */
#include "main.h"

uint16_t					Audio_Buffer[AUDIO_BUF_SIZE]	__attribute__((section (".Audio"), aligned(32)));
uint32_t					Audio_fileSize;
uint32_t					Audio_offset;
BUFFER_StateTypeDef			Audio_state;

#define WORD_BYTES			2

extern SAI_HandleTypeDef 	hSAI2A;


uint8_t BSP_Audio_StartRecording(char* fname)
{
	Audio_fileSize = 0;
	Audio_offset = 0;
	Audio_state = BUFFER_EMPTY;

memset((uint8_t*)&Audio_Buffer, 0, AUDIO_BUF_SIZE * WORD_BYTES);	// clear buffer to be sure...

	HAL_SAI_Receive_DMA(&hSAI2A, (uint8_t*)&Audio_Buffer, AUDIO_BUF_SIZE * WORD_BYTES);
	return HAL_OK;
}


uint8_t BSP_Audio_ProcessRecording(void)
{
	uint8_t	 ret;
	uint32_t bw = 0;

	if (Audio_state != BUFFER_EMPTY) {
		uint16_t ofs = Audio_offset;

		if (Audio_state == BUFFER_FULL) {
    		Audio_state = BUFFER_EMPTY;
        	Audio_offset = 0;
		}

		// ToDo: Copy & use sampled mic data
//memset((void*)&Audio_Buffer + ofs, 0, AUDIO_BUF_SIZE);
		Audio_fileSize += bw;								// Increase file size
		UPRINTF("fsize %u\r\n", (uint)Audio_fileSize);
	}
	return HAL_OK;
}


uint8_t BSP_Audio_StopRecording(void)
{
	HAL_SAI_DMAStop(&hSAI2A);
	// Copy and flush buffer

	return HAL_OK;
}

void HAL_SAI_RxCpltCallback(SAI_HandleTypeDef *hsai)
{
	Audio_state = BUFFER_FULL;
	Audio_offset = AUDIO_BUF_SIZE * WORD_BYTES / 2;		// offset in bytes
}


void HAL_SAI_RxHalfCpltCallback(SAI_HandleTypeDef *hsai)
{
	Audio_state = BUFFER_HALF;
	Audio_offset = 0;
	// BUG: !!! Buffer is all zero here !!!
}

