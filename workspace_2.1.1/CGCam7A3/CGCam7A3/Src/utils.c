/*
 * utils.c
 *
 *  Created on: Jun 3, 2026
 *      Author: bbandali
 */

#include "main.h"

// ------------------------------------------------------------------------------------------------
void SystemClock_Config(void)
{
	RCC_OscInitTypeDef RCC_OscInitStruct = {0};
	RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
	RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

	/*AXI clock gating */
	RCC->CKGAENR = 0xE003FFFF;

	/** Hardware supply configuration update */
	HAL_PWREx_ConfigSupply(PWR_DIRECT_SMPS_SUPPLY);

	/** Configure the main internal regulator output voltage  */
	__HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

	while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}

	/** Initializes the RCC Oscillators */
	RCC_OscInitStruct.OscillatorType 			= RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_HSI48|RCC_OSCILLATORTYPE_HSE;
	RCC_OscInitStruct.HSEState 					= RCC_HSE_BYPASS;
	RCC_OscInitStruct.HSIState 					= RCC_HSI_DIV1;
	RCC_OscInitStruct.HSICalibrationValue 		= 64;
	RCC_OscInitStruct.HSI48State 				= RCC_HSI48_ON;
	RCC_OscInitStruct.PLL.PLLState 				= RCC_PLL_ON;
	RCC_OscInitStruct.PLL.PLLSource 			= RCC_PLLSOURCE_HSE;
	RCC_OscInitStruct.PLL.PLLM 					= 13;
	RCC_OscInitStruct.PLL.PLLN 					= 275;
	RCC_OscInitStruct.PLL.PLLP 					= 2;
	RCC_OscInitStruct.PLL.PLLQ 					= 22;
	RCC_OscInitStruct.PLL.PLLR 					= 4;
	RCC_OscInitStruct.PLL.PLLRGE 				= RCC_PLL1VCIRANGE_1;
	RCC_OscInitStruct.PLL.PLLVCOSEL 			= RCC_PLL1VCOWIDE;
	RCC_OscInitStruct.PLL.PLLFRACN 				= 0;
	if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
		Error_Handler();

	/** Initializes the CPU, AHB and APB buses clocks  */
	RCC_ClkInitStruct.ClockType 				= RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK|RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
													|RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
	RCC_ClkInitStruct.SYSCLKSource 				= RCC_SYSCLKSOURCE_PLLCLK;
	RCC_ClkInitStruct.SYSCLKDivider 			= RCC_SYSCLK_DIV1;
	RCC_ClkInitStruct.AHBCLKDivider 			= RCC_HCLK_DIV1;
	RCC_ClkInitStruct.APB3CLKDivider 			= RCC_APB3_DIV2;
	RCC_ClkInitStruct.APB1CLKDivider 			= RCC_APB1_DIV2;
	RCC_ClkInitStruct.APB2CLKDivider 			= RCC_APB2_DIV2;
	RCC_ClkInitStruct.APB4CLKDivider 			= RCC_APB4_DIV2;
	if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_6) != HAL_OK)
		Error_Handler();

	PeriphClkInitStruct.PeriphClockSelection	= RCC_PERIPHCLK_USART10|RCC_PERIPHCLK_CKPER|RCC_PERIPHCLK_SAI2A;
	PeriphClkInitStruct.PLL2.PLL2M 				= 13;
	PeriphClkInitStruct.PLL2.PLL2N 				= 273;
	PeriphClkInitStruct.PLL2.PLL2P 				= 21;
	PeriphClkInitStruct.PLL2.PLL2Q 				= 2;
	PeriphClkInitStruct.PLL2.PLL2R 				= 2; // SDMMC2: 273MHz
	PeriphClkInitStruct.PLL2.PLL2RGE 			= RCC_PLL2VCIRANGE_1;
	PeriphClkInitStruct.PLL2.PLL2VCOSEL 		= RCC_PLL2VCOWIDE;
	PeriphClkInitStruct.PLL2.PLL2FRACN 			= 0;
	PeriphClkInitStruct.SdmmcClockSelection 	= RCC_SDMMCCLKSOURCE_PLL2;
	PeriphClkInitStruct.CkperClockSelection 	= RCC_CLKPSOURCE_HSI;
	PeriphClkInitStruct.AdcClockSelection 		= RCC_ADCCLKSOURCE_PLL2;
	PeriphClkInitStruct.Usart16ClockSelection 	= RCC_USART16910CLKSOURCE_D2PCLK2;
    PeriphClkInitStruct.I2c4ClockSelection		= RCC_I2C4CLKSOURCE_D3PCLK1;
    PeriphClkInitStruct.PLL3.PLL3M 				= 13;
    PeriphClkInitStruct.PLL3.PLL3N 				= 280;
    PeriphClkInitStruct.PLL3.PLL3P 				= 4;
    PeriphClkInitStruct.PLL3.PLL3Q 				= 2;
    PeriphClkInitStruct.PLL3.PLL3R 				= 2;
    PeriphClkInitStruct.PLL3.PLL3RGE 			= RCC_PLL3VCIRANGE_1;
    PeriphClkInitStruct.PLL3.PLL3VCOSEL 		= RCC_PLL3VCOWIDE;
    PeriphClkInitStruct.PLL3.PLL3FRACN 			= 0;
    PeriphClkInitStruct.Sai2AClockSelection 	= RCC_SAI2ACLKSOURCE_PLL3;	// SAI2: 16.470588MHz
	if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
		Error_Handler();

    __HAL_RCC_SDMMC2_FORCE_RESET();
    __HAL_RCC_SDMMC2_RELEASE_RESET();

    __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL1_DIVQ);
	HAL_RCC_MCOConfig(RCC_MCO1, RCC_MCO1SOURCE_PLL1QCLK, RCC_MCODIV_1);
	HAL_RCC_MCOConfig(RCC_MCO2, RCC_MCO2SOURCE_HSE, RCC_MCODIV_1);
}

// --- SAI2 Initialization for microphone ----------------------------------------------------------
void SAI2_Init(void)
{
    __HAL_RCC_SAI2_CLK_ENABLE();
    hGPIO.Pin 							= GPIO_PIN_13|GPIO_PIN_12|GPIO_PIN_11;
    hGPIO.Mode 							= GPIO_MODE_AF_PP;
    hGPIO.Pull 							= GPIO_NOPULL;
    hGPIO.Speed 						= GPIO_SPEED_FREQ_LOW;
    hGPIO.Alternate						= GPIO_AF10_SAI2;
    HAL_GPIO_Init(GPIOD, &hGPIO);

    hDMA_SAI2A.Instance 				= DMA1_Stream0;
    hDMA_SAI2A.Init.Request 			= DMA_REQUEST_SAI2_A;
    hDMA_SAI2A.Init.Direction 			= DMA_PERIPH_TO_MEMORY;
    hDMA_SAI2A.Init.PeriphInc			= DMA_PINC_DISABLE;
    hDMA_SAI2A.Init.MemInc 				= DMA_MINC_ENABLE;
    hDMA_SAI2A.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
    hDMA_SAI2A.Init.MemDataAlignment 	= DMA_MDATAALIGN_HALFWORD;
    hDMA_SAI2A.Init.Mode 				= DMA_CIRCULAR;
    hDMA_SAI2A.Init.Priority 			= DMA_PRIORITY_MEDIUM;
    hDMA_SAI2A.Init.FIFOMode 			= DMA_FIFOMODE_DISABLE;
    hDMA_SAI2A.Init.FIFOThreshold 		= DMA_FIFO_THRESHOLD_HALFFULL;
    hDMA_SAI2A.Init.MemBurst 			= DMA_MBURST_SINGLE;
    hDMA_SAI2A.Init.PeriphBurst 		= DMA_PBURST_SINGLE;
    if (HAL_DMA_Init(&hDMA_SAI2A) != HAL_OK)
    	Error_Handler();
    __HAL_LINKDMA(&hSAI2A, hdmarx, hDMA_SAI2A);
    __HAL_RCC_DMA1_CLK_ENABLE();
    HAL_NVIC_SetPriority(DMA1_Stream0_IRQn, 3, 0);
    HAL_NVIC_EnableIRQ(DMA1_Stream0_IRQn);

    hSAI2A.Instance 					= SAI2_Block_A;
	hSAI2A.Init.AudioMode 				= SAI_MODEMASTER_RX;
	hSAI2A.Init.Synchro 				= SAI_ASYNCHRONOUS;
	hSAI2A.Init.OutputDrive 			= SAI_OUTPUTDRIVE_ENABLE;
	hSAI2A.Init.NoDivider 				= SAI_MASTERDIVIDER_ENABLE;
	hSAI2A.Init.FIFOThreshold 			= SAI_FIFOTHRESHOLD_1QF;
	hSAI2A.Init.Mckdiv 					= 0;
	hSAI2A.Init.AudioFrequency 			= SAI_AUDIO_FREQUENCY_32K; // BBZ fsamp
	hSAI2A.Init.Protocol 				= SAI_FREE_PROTOCOL;
	hSAI2A.Init.DataSize 				= SAI_DATASIZE_16;
	hSAI2A.Init.FirstBit 				= SAI_FIRSTBIT_MSB;
	hSAI2A.Init.ClockStrobing 			= SAI_CLOCKSTROBING_RISINGEDGE;
	hSAI2A.Init.SynchroExt 				= SAI_SYNCEXT_DISABLE;
	hSAI2A.Init.MonoStereoMode 			= SAI_STEREOMODE;
	hSAI2A.Init.CompandingMode 			= SAI_NOCOMPANDING;
	hSAI2A.Init.TriState 				= SAI_OUTPUT_RELEASED;
	hSAI2A.Init.PdmInit.Activation		= DISABLE;

	hSAI2A.FrameInit.FrameLength 		= 64;
	hSAI2A.FrameInit.ActiveFrameLength	= 32;
	hSAI2A.FrameInit.FSDefinition 		= SAI_FS_CHANNEL_IDENTIFICATION;
	hSAI2A.FrameInit.FSPolarity 		= SAI_FS_ACTIVE_LOW;
	hSAI2A.FrameInit.FSOffset 			= SAI_FS_BEFOREFIRSTBIT;

	hSAI2A.SlotInit.FirstBitOffset 		= 0;
	hSAI2A.SlotInit.SlotSize 			= SAI_SLOTSIZE_32B;
	hSAI2A.SlotInit.SlotNumber 			= 1;
	hSAI2A.SlotInit.SlotActive 			= SAI_SLOTACTIVE_0;

	if (HAL_SAI_Init(&hSAI2A) != HAL_OK)
		Error_Handler();
}

// ------------------------------------------------------------------------------------------------
void USART10_DBG_Init(void)
{
    __HAL_RCC_USART10_CLK_ENABLE();
    hGPIO.Pin 							= GPIO_PIN_3;				// USART10 GPIO Configuration     PE3 -> USART10_TX
    hGPIO.Pull 							= GPIO_NOPULL;
    hGPIO.Mode 							= GPIO_MODE_AF_PP;
    hGPIO.Speed 						= GPIO_SPEED_FREQ_LOW;
    hGPIO.Alternate 					= GPIO_AF11_USART10;
    HAL_GPIO_Init(GPIOE, &hGPIO);

	hUART10.Instance 					= USART10;
	hUART10.Init.BaudRate 				= 115200;
	hUART10.Init.WordLength 			= UART_WORDLENGTH_8B;
	hUART10.Init.StopBits 				= UART_STOPBITS_1;
	hUART10.Init.Parity 				= UART_PARITY_NONE;
	hUART10.Init.Mode 					= UART_MODE_TX;
	hUART10.Init.HwFlowCtl 				= UART_HWCONTROL_NONE;
	hUART10.Init.OverSampling 			= UART_OVERSAMPLING_16;
	hUART10.Init.OneBitSampling 		= UART_ONE_BIT_SAMPLE_DISABLE;
	hUART10.Init.ClockPrescaler 		= UART_PRESCALER_DIV1;
	hUART10.AdvancedInit.AdvFeatureInit	= UART_ADVFEATURE_NO_INIT;
	if (HAL_HalfDuplex_Init(&hUART10) != HAL_OK)
		Error_Handler();

	UPRINTF("Hello CGCam7A3 !\r\n");
}

// ------------------------------------------------------------------------------------------------
void GPIO_Init(void)
{
	SET_BIT(RCC->AHB4ENR, RCC_AHB4ENR_GPIOAEN|RCC_AHB4ENR_GPIOBEN|RCC_AHB4ENR_GPIOCEN|RCC_AHB4ENR_GPIODEN|
						RCC_AHB4ENR_GPIOEEN|RCC_AHB4ENR_GPIOFEN|RCC_AHB4ENR_GPIOGEN|RCC_AHB4ENR_GPIOHEN);

	hGPIO.Pin 		= CAM_MCLK_MCO1_Pin;
	hGPIO.Mode 		= GPIO_MODE_AF_PP;
	hGPIO.Pull 		= GPIO_NOPULL;
	hGPIO.Speed 	= GPIO_SPEED_FREQ_HIGH;
	hGPIO.Alternate	= GPIO_AF0_MCO;
	HAL_GPIO_Init(CAM_MCLK_MCO1_Port, &hGPIO);

	hGPIO.Pin 		= USB_RCK_MCO2_Pin;
	hGPIO.Alternate = GPIO_AF0_MCO;
	HAL_GPIO_Init(USB_RCK_MCO2_Port, &hGPIO);

	LL_GPIO_SetOutputPin(LED_Port, LED_Pin);								// Set important pins to zero
	LL_GPIO_ResetOutputPin(SD_VSEL_Port, SD_VSEL_Pin);						// Reset important pins to zero
	LL_GPIO_ResetOutputPin(USB_RST_Port, USB_RST_Pin);
	LL_GPIO_ResetOutputPin(CTL_ADC_Port, CTL_ADC_Pin);
	LL_GPIO_ResetOutputPin(CAM_RST_Port, CAM_RST_Pin);
	LL_GPIO_ResetOutputPin(CAM_VEN_Port, CAM_VEN_Pin);
	LL_GPIO_ResetOutputPin(CAM_PWDN_Port, CAM_PWDN_Pin);

	LL_GPIO_SetPinMode(LED_Port, LED_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(USB_RST_Port, USB_RST_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(CTL_ADC_Port, CTL_ADC_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(SD_VSEL_Port, SD_VSEL_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(CAM_RST_Port, CAM_RST_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(CAM_VEN_Port, CAM_VEN_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetPinMode(CAM_PWDN_Port, CAM_PWDN_Pin, LL_GPIO_MODE_OUTPUT);
}

// ------------------------------------------------------------------------------------------------
PUTCHAR_PROTOTYPE
{
	USART10->TDR = ch;
	while (!(USART10->ISR & USART_ISR_TC)) {}
	return ch;
}

