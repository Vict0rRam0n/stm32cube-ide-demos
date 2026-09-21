################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_common.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_gpio.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_spi.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_uart.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/STM32U5/stm32_ll_lpbam.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_common.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_gpio.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_spi.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_uart.c 

OBJS += \
./Utilities/stm32_adv_lpbam_common.o \
./Utilities/stm32_adv_lpbam_gpio.o \
./Utilities/stm32_adv_lpbam_spi.o \
./Utilities/stm32_adv_lpbam_uart.o \
./Utilities/stm32_ll_lpbam.o \
./Utilities/stm32_lpbam_common.o \
./Utilities/stm32_lpbam_gpio.o \
./Utilities/stm32_lpbam_spi.o \
./Utilities/stm32_lpbam_uart.o 

C_DEPS += \
./Utilities/stm32_adv_lpbam_common.d \
./Utilities/stm32_adv_lpbam_gpio.d \
./Utilities/stm32_adv_lpbam_spi.d \
./Utilities/stm32_adv_lpbam_uart.d \
./Utilities/stm32_ll_lpbam.d \
./Utilities/stm32_lpbam_common.d \
./Utilities/stm32_lpbam_gpio.d \
./Utilities/stm32_lpbam_spi.d \
./Utilities/stm32_lpbam_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/stm32_adv_lpbam_common.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_common.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_adv_lpbam_gpio.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_gpio.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_adv_lpbam_spi.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_spi.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_adv_lpbam_uart.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_adv_lpbam_uart.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_ll_lpbam.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/STM32U5/stm32_ll_lpbam.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_lpbam_common.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_common.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_lpbam_gpio.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_gpio.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_lpbam_spi.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_spi.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Utilities/stm32_lpbam_uart.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/Utilities/lpbam/stm32_lpbam_uart.c Utilities/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Utilities

clean-Utilities:
	-$(RM) ./Utilities/stm32_adv_lpbam_common.cyclo ./Utilities/stm32_adv_lpbam_common.d ./Utilities/stm32_adv_lpbam_common.o ./Utilities/stm32_adv_lpbam_common.su ./Utilities/stm32_adv_lpbam_gpio.cyclo ./Utilities/stm32_adv_lpbam_gpio.d ./Utilities/stm32_adv_lpbam_gpio.o ./Utilities/stm32_adv_lpbam_gpio.su ./Utilities/stm32_adv_lpbam_spi.cyclo ./Utilities/stm32_adv_lpbam_spi.d ./Utilities/stm32_adv_lpbam_spi.o ./Utilities/stm32_adv_lpbam_spi.su ./Utilities/stm32_adv_lpbam_uart.cyclo ./Utilities/stm32_adv_lpbam_uart.d ./Utilities/stm32_adv_lpbam_uart.o ./Utilities/stm32_adv_lpbam_uart.su ./Utilities/stm32_ll_lpbam.cyclo ./Utilities/stm32_ll_lpbam.d ./Utilities/stm32_ll_lpbam.o ./Utilities/stm32_ll_lpbam.su ./Utilities/stm32_lpbam_common.cyclo ./Utilities/stm32_lpbam_common.d ./Utilities/stm32_lpbam_common.o ./Utilities/stm32_lpbam_common.su ./Utilities/stm32_lpbam_gpio.cyclo ./Utilities/stm32_lpbam_gpio.d ./Utilities/stm32_lpbam_gpio.o ./Utilities/stm32_lpbam_gpio.su ./Utilities/stm32_lpbam_spi.cyclo ./Utilities/stm32_lpbam_spi.d ./Utilities/stm32_lpbam_spi.o ./Utilities/stm32_lpbam_spi.su ./Utilities/stm32_lpbam_uart.cyclo ./Utilities/stm32_lpbam_uart.d ./Utilities/stm32_lpbam_uart.o ./Utilities/stm32_lpbam_uart.su

.PHONY: clean-Utilities

