/*
 * DMM_4026.h
 *
 *  Created on: Jun 5, 2026
 *      Author: bbandali
 */

#ifndef INC_DMM_4026_H_
#define INC_DMM_4026_H_

#define AUDIO_BUF_SIZE		8192

#define MIC_GAIN_M12DB		0;		// gain is set based on SAI bit offset and shift
#define MIC_GAIN_M06DB		1;
#define MIC_GAIN_P00DB		2;
#define MIC_GAIN_P06DB		3;
#define MIC_GAIN_P12DB		4;
#define MIC_GAIN_P18DB		5;
#define MIC_GAIN_P24DB		6;
#define MIC_GAIN_P30DB		7;

typedef enum {
  BUFFER_EMPTY = 0,
  BUFFER_HALF,
  BUFFER_FULL,
}BUFFER_StateTypeDef;


typedef struct {
  uint32_t ChunkID;       /* 0 */
  uint32_t FileSize;      /* 4 */
  uint32_t FileFormat;    /* 8 */
  uint32_t SubChunk1ID;   /* 12 */
  uint32_t SubChunk1Size; /* 16*/
  uint16_t AudioFormat;   /* 20 */
  uint16_t NbrChannels;   /* 22 */
  uint32_t SampleRate;    /* 24 */
  uint32_t ByteRate;      /* 28 */
  uint16_t BlockAlign;    /* 32 */
  uint16_t BitPerSample;  /* 34 */
  uint32_t SubChunk2ID;   /* 36 */
  uint32_t SubChunk2Size; /* 40 */
}WAVE_FormatTypeDef;



uint8_t BSP_Audio_StartRecording(char* fname);
uint8_t BSP_Audio_ProcessRecording(void);
uint8_t BSP_Audio_StopRecording(void);

#endif /* INC_DMM_4026_H_ */
