################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.1/MX66LM1G45G/Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.c 

OBJS += \
./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.o 

C_DEPS += \
./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.1/MX66LM1G45G/Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.c Drivers/BSP/STM32U5G9J-DK2/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U5G9xx -c -I../../Core/Inc -I../../Drivers/BSP/Components/mx66uw1g45g -I../../Drivers/BSP/STM32U5G9J-DK2 -I../../Core/Flash_loader/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-STM32U5G9J-2d-DK2

clean-Drivers-2f-BSP-2f-STM32U5G9J-2d-DK2:
	-$(RM) ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.cyclo ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.d ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.o ./Drivers/BSP/STM32U5G9J-DK2/stm32u5g9j_discovery_hspi.su

.PHONY: clean-Drivers-2f-BSP-2f-STM32U5G9J-2d-DK2

