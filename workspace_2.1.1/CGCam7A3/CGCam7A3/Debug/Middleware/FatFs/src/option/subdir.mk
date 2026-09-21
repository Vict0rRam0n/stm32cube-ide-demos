################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FatFs/src/option/syscall.c 

OBJS += \
./Middleware/FatFs/src/option/syscall.o 

C_DEPS += \
./Middleware/FatFs/src/option/syscall.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FatFs/src/option/%.o Middleware/FatFs/src/option/%.su Middleware/FatFs/src/option/%.cyclo: ../Middleware/FatFs/src/option/%.c Middleware/FatFs/src/option/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DUSE_FULL_ASSERT -c -I../Inc -I"../Middleware/FatFs/src" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-FatFs-2f-src-2f-option

clean-Middleware-2f-FatFs-2f-src-2f-option:
	-$(RM) ./Middleware/FatFs/src/option/syscall.cyclo ./Middleware/FatFs/src/option/syscall.d ./Middleware/FatFs/src/option/syscall.o ./Middleware/FatFs/src/option/syscall.su

.PHONY: clean-Middleware-2f-FatFs-2f-src-2f-option

