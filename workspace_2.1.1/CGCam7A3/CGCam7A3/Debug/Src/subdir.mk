################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Src/startup_stm32h7a3agixq.s 

C_SRCS += \
../Src/DMM_4026.c \
../Src/main.c \
../Src/stm32h7xx_it.c \
../Src/syscalls.c \
../Src/sysmem.c \
../Src/system_stm32h7xx.c \
../Src/utils.c \
../Src/variables.c 

OBJS += \
./Src/DMM_4026.o \
./Src/main.o \
./Src/startup_stm32h7a3agixq.o \
./Src/stm32h7xx_it.o \
./Src/syscalls.o \
./Src/sysmem.o \
./Src/system_stm32h7xx.o \
./Src/utils.o \
./Src/variables.o 

S_DEPS += \
./Src/startup_stm32h7a3agixq.d 

C_DEPS += \
./Src/DMM_4026.d \
./Src/main.d \
./Src/stm32h7xx_it.d \
./Src/syscalls.d \
./Src/sysmem.d \
./Src/system_stm32h7xx.d \
./Src/utils.d \
./Src/variables.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su Src/%.cyclo: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DUSE_FULL_ASSERT -c -I../Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/CMSIS/Include -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/%.o: ../Src/%.s Src/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/DMM_4026.cyclo ./Src/DMM_4026.d ./Src/DMM_4026.o ./Src/DMM_4026.su ./Src/main.cyclo ./Src/main.d ./Src/main.o ./Src/main.su ./Src/startup_stm32h7a3agixq.d ./Src/startup_stm32h7a3agixq.o ./Src/stm32h7xx_it.cyclo ./Src/stm32h7xx_it.d ./Src/stm32h7xx_it.o ./Src/stm32h7xx_it.su ./Src/syscalls.cyclo ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.cyclo ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su ./Src/system_stm32h7xx.cyclo ./Src/system_stm32h7xx.d ./Src/system_stm32h7xx.o ./Src/system_stm32h7xx.su ./Src/utils.cyclo ./Src/utils.d ./Src/utils.o ./Src/utils.su ./Src/variables.cyclo ./Src/variables.d ./Src/variables.o ./Src/variables.su

.PHONY: clean-Src

