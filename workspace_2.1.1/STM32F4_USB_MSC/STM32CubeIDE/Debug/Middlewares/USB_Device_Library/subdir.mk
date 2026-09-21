################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.c 

OBJS += \
./Middlewares/USB_Device_Library/usbd_core.o \
./Middlewares/USB_Device_Library/usbd_ctlreq.o \
./Middlewares/USB_Device_Library/usbd_ioreq.o \
./Middlewares/USB_Device_Library/usbd_msc.o \
./Middlewares/USB_Device_Library/usbd_msc_bot.o \
./Middlewares/USB_Device_Library/usbd_msc_data.o \
./Middlewares/USB_Device_Library/usbd_msc_scsi.o 

C_DEPS += \
./Middlewares/USB_Device_Library/usbd_core.d \
./Middlewares/USB_Device_Library/usbd_ctlreq.d \
./Middlewares/USB_Device_Library/usbd_ioreq.d \
./Middlewares/USB_Device_Library/usbd_msc.d \
./Middlewares/USB_Device_Library/usbd_msc_bot.d \
./Middlewares/USB_Device_Library/usbd_msc_data.d \
./Middlewares/USB_Device_Library/usbd_msc_scsi.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/USB_Device_Library/usbd_core.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_ctlreq.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_ioreq.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_msc.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_msc_bot.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_bot.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_msc_data.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_data.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/USB_Device_Library/usbd_msc_scsi.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32F4_USB_MSC/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src/usbd_msc_scsi.c Middlewares/USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../../USB_DEVICE/App -I../../USB_DEVICE/Target -I../../Core/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc -I../../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../../Drivers/CMSIS/Include -I../../FATFS/Target -I../../FATFS/App -I../../Middlewares/Third_Party/FatFs/src -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-USB_Device_Library

clean-Middlewares-2f-USB_Device_Library:
	-$(RM) ./Middlewares/USB_Device_Library/usbd_core.cyclo ./Middlewares/USB_Device_Library/usbd_core.d ./Middlewares/USB_Device_Library/usbd_core.o ./Middlewares/USB_Device_Library/usbd_core.su ./Middlewares/USB_Device_Library/usbd_ctlreq.cyclo ./Middlewares/USB_Device_Library/usbd_ctlreq.d ./Middlewares/USB_Device_Library/usbd_ctlreq.o ./Middlewares/USB_Device_Library/usbd_ctlreq.su ./Middlewares/USB_Device_Library/usbd_ioreq.cyclo ./Middlewares/USB_Device_Library/usbd_ioreq.d ./Middlewares/USB_Device_Library/usbd_ioreq.o ./Middlewares/USB_Device_Library/usbd_ioreq.su ./Middlewares/USB_Device_Library/usbd_msc.cyclo ./Middlewares/USB_Device_Library/usbd_msc.d ./Middlewares/USB_Device_Library/usbd_msc.o ./Middlewares/USB_Device_Library/usbd_msc.su ./Middlewares/USB_Device_Library/usbd_msc_bot.cyclo ./Middlewares/USB_Device_Library/usbd_msc_bot.d ./Middlewares/USB_Device_Library/usbd_msc_bot.o ./Middlewares/USB_Device_Library/usbd_msc_bot.su ./Middlewares/USB_Device_Library/usbd_msc_data.cyclo ./Middlewares/USB_Device_Library/usbd_msc_data.d ./Middlewares/USB_Device_Library/usbd_msc_data.o ./Middlewares/USB_Device_Library/usbd_msc_data.su ./Middlewares/USB_Device_Library/usbd_msc_scsi.cyclo ./Middlewares/USB_Device_Library/usbd_msc_scsi.d ./Middlewares/USB_Device_Library/usbd_msc_scsi.o ./Middlewares/USB_Device_Library/usbd_msc_scsi.su

.PHONY: clean-Middlewares-2f-USB_Device_Library

