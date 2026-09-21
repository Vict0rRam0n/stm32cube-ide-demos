################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/STM32_USB_Device_Library/usbd_cdc.o \
./Middlewares/STM32_USB_Device_Library/usbd_core.o \
./Middlewares/STM32_USB_Device_Library/usbd_ctlreq.o \
./Middlewares/STM32_USB_Device_Library/usbd_ioreq.o 

C_DEPS += \
./Middlewares/STM32_USB_Device_Library/usbd_cdc.d \
./Middlewares/STM32_USB_Device_Library/usbd_core.d \
./Middlewares/STM32_USB_Device_Library/usbd_ctlreq.d \
./Middlewares/STM32_USB_Device_Library/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USB_Device_Library/usbd_cdc.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c Middlewares/STM32_USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DUSE_PWR_LDO_SUPPLY -c -I../../../CM7/USB_DEVICE/App -I../../../CM7/USB_DEVICE/Target -I../../../CM7/Core/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_USB_Device_Library/usbd_core.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c Middlewares/STM32_USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DUSE_PWR_LDO_SUPPLY -c -I../../../CM7/USB_DEVICE/App -I../../../CM7/USB_DEVICE/Target -I../../../CM7/Core/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_USB_Device_Library/usbd_ctlreq.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c Middlewares/STM32_USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DUSE_PWR_LDO_SUPPLY -c -I../../../CM7/USB_DEVICE/App -I../../../CM7/USB_DEVICE/Target -I../../../CM7/Core/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/STM32_USB_Device_Library/usbd_ioreq.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.1.1/STM32H7_DualCore_USB_CDC/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c Middlewares/STM32_USB_Device_Library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H745xx -DUSE_PWR_LDO_SUPPLY -c -I../../../CM7/USB_DEVICE/App -I../../../CM7/USB_DEVICE/Target -I../../../CM7/Core/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USB_Device_Library

clean-Middlewares-2f-STM32_USB_Device_Library:
	-$(RM) ./Middlewares/STM32_USB_Device_Library/usbd_cdc.cyclo ./Middlewares/STM32_USB_Device_Library/usbd_cdc.d ./Middlewares/STM32_USB_Device_Library/usbd_cdc.o ./Middlewares/STM32_USB_Device_Library/usbd_cdc.su ./Middlewares/STM32_USB_Device_Library/usbd_core.cyclo ./Middlewares/STM32_USB_Device_Library/usbd_core.d ./Middlewares/STM32_USB_Device_Library/usbd_core.o ./Middlewares/STM32_USB_Device_Library/usbd_core.su ./Middlewares/STM32_USB_Device_Library/usbd_ctlreq.cyclo ./Middlewares/STM32_USB_Device_Library/usbd_ctlreq.d ./Middlewares/STM32_USB_Device_Library/usbd_ctlreq.o ./Middlewares/STM32_USB_Device_Library/usbd_ctlreq.su ./Middlewares/STM32_USB_Device_Library/usbd_ioreq.cyclo ./Middlewares/STM32_USB_Device_Library/usbd_ioreq.d ./Middlewares/STM32_USB_Device_Library/usbd_ioreq.o ./Middlewares/STM32_USB_Device_Library/usbd_ioreq.su

.PHONY: clean-Middlewares-2f-STM32_USB_Device_Library

