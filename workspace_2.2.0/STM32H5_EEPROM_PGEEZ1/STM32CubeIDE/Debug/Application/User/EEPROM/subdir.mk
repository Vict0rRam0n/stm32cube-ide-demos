################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/EEPROM/pgeez1_m95p32.c 

OBJS += \
./Application/User/EEPROM/pgeez1_m95p32.o 

C_DEPS += \
./Application/User/EEPROM/pgeez1_m95p32.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/EEPROM/%.o Application/User/EEPROM/%.su Application/User/EEPROM/%.cyclo: ../Application/User/EEPROM/%.c Application/User/EEPROM/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H503xx -c -I../../EEPROM -I../../Core/Inc -I../../Drivers/STM32H5xx_HAL_Driver/Inc -I../../Drivers/STM32H5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H5xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/Components/M95P32 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-EEPROM

clean-Application-2f-User-2f-EEPROM:
	-$(RM) ./Application/User/EEPROM/pgeez1_m95p32.cyclo ./Application/User/EEPROM/pgeez1_m95p32.d ./Application/User/EEPROM/pgeez1_m95p32.o ./Application/User/EEPROM/pgeez1_m95p32.su

.PHONY: clean-Application-2f-User-2f-EEPROM

