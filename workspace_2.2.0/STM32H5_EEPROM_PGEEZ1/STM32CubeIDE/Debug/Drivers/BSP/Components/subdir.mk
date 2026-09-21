################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_2.2.0/STM32H5_EEPROM_PGEEZ1/Drivers/BSP/Components/M95P32/m95p32.c 

OBJS += \
./Drivers/BSP/Components/m95p32.o 

C_DEPS += \
./Drivers/BSP/Components/m95p32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/m95p32.o: C:/Users/aliagavi/STM32CubeIDE/workspace_2.2.0/STM32H5_EEPROM_PGEEZ1/Drivers/BSP/Components/M95P32/m95p32.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H503xx -c -I../../EEPROM -I../../Core/Inc -I../../Drivers/STM32H5xx_HAL_Driver/Inc -I../../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/Components/M95P32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/m95p32.cyclo ./Drivers/BSP/Components/m95p32.d ./Drivers/BSP/Components/m95p32.o ./Drivers/BSP/Components/m95p32.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

