################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middleware/FatFs/diskio.c \
../Middleware/FatFs/ff.c \
../Middleware/FatFs/ff_gen_drv.c \
../Middleware/FatFs/ffsystem.c \
../Middleware/FatFs/ffunicode.c \
../Middleware/FatFs/sd_diskio.c 

OBJS += \
./Middleware/FatFs/diskio.o \
./Middleware/FatFs/ff.o \
./Middleware/FatFs/ff_gen_drv.o \
./Middleware/FatFs/ffsystem.o \
./Middleware/FatFs/ffunicode.o \
./Middleware/FatFs/sd_diskio.o 

C_DEPS += \
./Middleware/FatFs/diskio.d \
./Middleware/FatFs/ff.d \
./Middleware/FatFs/ff_gen_drv.d \
./Middleware/FatFs/ffsystem.d \
./Middleware/FatFs/ffunicode.d \
./Middleware/FatFs/sd_diskio.d 


# Each subdirectory must supply rules for building sources it contributes
Middleware/FatFs/%.o Middleware/FatFs/%.su Middleware/FatFs/%.cyclo: ../Middleware/FatFs/%.c Middleware/FatFs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_PWR_DIRECT_SMPS_SUPPLY -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -DUSE_FULL_ASSERT -c -I../Inc -I../Middleware/FatFs -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middleware-2f-FatFs

clean-Middleware-2f-FatFs:
	-$(RM) ./Middleware/FatFs/diskio.cyclo ./Middleware/FatFs/diskio.d ./Middleware/FatFs/diskio.o ./Middleware/FatFs/diskio.su ./Middleware/FatFs/ff.cyclo ./Middleware/FatFs/ff.d ./Middleware/FatFs/ff.o ./Middleware/FatFs/ff.su ./Middleware/FatFs/ff_gen_drv.cyclo ./Middleware/FatFs/ff_gen_drv.d ./Middleware/FatFs/ff_gen_drv.o ./Middleware/FatFs/ff_gen_drv.su ./Middleware/FatFs/ffsystem.cyclo ./Middleware/FatFs/ffsystem.d ./Middleware/FatFs/ffsystem.o ./Middleware/FatFs/ffsystem.su ./Middleware/FatFs/ffunicode.cyclo ./Middleware/FatFs/ffunicode.d ./Middleware/FatFs/ffunicode.o ./Middleware/FatFs/ffunicode.su ./Middleware/FatFs/sd_diskio.cyclo ./Middleware/FatFs/sd_diskio.d ./Middleware/FatFs/sd_diskio.o ./Middleware/FatFs/sd_diskio.su

.PHONY: clean-Middleware-2f-FatFs

