################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.1/MX66LM1G45G/Core/Flash_loader/Src/Dev_Inf.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.1/MX66LM1G45G/Core/Flash_loader/Src/Loader_Src.c 

OBJS += \
./Application/User/Core/Flash_loader/src/Dev_Inf.o \
./Application/User/Core/Flash_loader/src/Loader_Src.o 

C_DEPS += \
./Application/User/Core/Flash_loader/src/Dev_Inf.d \
./Application/User/Core/Flash_loader/src/Loader_Src.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/Flash_loader/src/Dev_Inf.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.1/MX66LM1G45G/Core/Flash_loader/Src/Dev_Inf.c Application/User/Core/Flash_loader/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Core/Inc -I../../Drivers/BSP/Components/mx66uw1g45g -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Core/Flash_loader/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/Flash_loader/src/Loader_Src.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.1/MX66LM1G45G/Core/Flash_loader/Src/Loader_Src.c Application/User/Core/Flash_loader/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Core/Inc -I../../Drivers/BSP/Components/mx66uw1g45g -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Core/Flash_loader/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core-2f-Flash_loader-2f-src

clean-Application-2f-User-2f-Core-2f-Flash_loader-2f-src:
	-$(RM) ./Application/User/Core/Flash_loader/src/Dev_Inf.cyclo ./Application/User/Core/Flash_loader/src/Dev_Inf.d ./Application/User/Core/Flash_loader/src/Dev_Inf.o ./Application/User/Core/Flash_loader/src/Dev_Inf.su ./Application/User/Core/Flash_loader/src/Loader_Src.cyclo ./Application/User/Core/Flash_loader/src/Loader_Src.d ./Application/User/Core/Flash_loader/src/Loader_Src.o ./Application/User/Core/Flash_loader/src/Loader_Src.su

.PHONY: clean-Application-2f-User-2f-Core-2f-Flash_loader-2f-src

