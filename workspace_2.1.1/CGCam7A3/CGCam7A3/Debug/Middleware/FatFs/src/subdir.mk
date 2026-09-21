################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FatFs/src/diskio.c \
../Middleware/FatFs/src/ff.c \
../Middleware/FatFs/src/ff_gen_drv.c \
../Middleware/FatFs/src/ffunicode.c 

OBJS += \
./Middleware/FatFs/src/diskio.o \
./Middleware/FatFs/src/ff.o \
./Middleware/FatFs/src/ff_gen_drv.o \
./Middleware/FatFs/src/ffunicode.o 

C_DEPS += \
./Middleware/FatFs/src/diskio.d \
./Middleware/FatFs/src/ff.d \
./Middleware/FatFs/src/ff_gen_drv.d \
./Middleware/FatFs/src/ffunicode.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FatFs/src/%.o Middleware/FatFs/src/%.su Middleware/FatFs/src/%.cyclo: ../Middleware/FatFs/src/%.c Middleware/FatFs/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DUSE_FULL_ASSERT -c -I../Inc -I"../Middleware/FatFs/src" -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-FatFs-2f-src

clean-Middleware-2f-FatFs-2f-src:
	-$(RM) ./Middleware/FatFs/src/diskio.cyclo ./Middleware/FatFs/src/diskio.d ./Middleware/FatFs/src/diskio.o ./Middleware/FatFs/src/diskio.su ./Middleware/FatFs/src/ff.cyclo ./Middleware/FatFs/src/ff.d ./Middleware/FatFs/src/ff.o ./Middleware/FatFs/src/ff.su ./Middleware/FatFs/src/ff_gen_drv.cyclo ./Middleware/FatFs/src/ff_gen_drv.d ./Middleware/FatFs/src/ff_gen_drv.o ./Middleware/FatFs/src/ff_gen_drv.su ./Middleware/FatFs/src/ffunicode.cyclo ./Middleware/FatFs/src/ffunicode.d ./Middleware/FatFs/src/ffunicode.o ./Middleware/FatFs/src/ffunicode.su

.PHONY: clean-Middleware-2f-FatFs-2f-src

