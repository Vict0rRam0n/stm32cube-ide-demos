################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/ism330dhcx/ism330dhcx.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/ism330dhcx/ism330dhcx_reg.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/lsm6dso/lsm6dso.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/lsm6dso/lsm6dso_reg.c 

OBJS += \
./Drivers/BSP/Components/ism330dhcx.o \
./Drivers/BSP/Components/ism330dhcx_reg.o \
./Drivers/BSP/Components/lsm6dso.o \
./Drivers/BSP/Components/lsm6dso_reg.o 

C_DEPS += \
./Drivers/BSP/Components/ism330dhcx.d \
./Drivers/BSP/Components/ism330dhcx_reg.d \
./Drivers/BSP/Components/lsm6dso.d \
./Drivers/BSP/Components/lsm6dso_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/ism330dhcx.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/ism330dhcx/ism330dhcx.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G071xx -c -I../../X-CUBE-MEMS1/Target -I../../Core/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/Components/lsm6dso -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/ism330dhcx_reg.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/ism330dhcx/ism330dhcx_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G071xx -c -I../../X-CUBE-MEMS1/Target -I../../Core/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/Components/lsm6dso -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/lsm6dso.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/lsm6dso/lsm6dso.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G071xx -c -I../../X-CUBE-MEMS1/Target -I../../Core/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/Components/lsm6dso -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/lsm6dso_reg.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.18.0/ACCE_CUBE_MEMS/Drivers/BSP/Components/lsm6dso/lsm6dso_reg.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G071xx -c -I../../X-CUBE-MEMS1/Target -I../../Core/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc -I../../Drivers/STM32G0xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32G0xx/Include -I../../Drivers/CMSIS/Include -I../../Drivers/BSP/Components/lsm6dso -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/ism330dhcx.cyclo ./Drivers/BSP/Components/ism330dhcx.d ./Drivers/BSP/Components/ism330dhcx.o ./Drivers/BSP/Components/ism330dhcx.su ./Drivers/BSP/Components/ism330dhcx_reg.cyclo ./Drivers/BSP/Components/ism330dhcx_reg.d ./Drivers/BSP/Components/ism330dhcx_reg.o ./Drivers/BSP/Components/ism330dhcx_reg.su ./Drivers/BSP/Components/lsm6dso.cyclo ./Drivers/BSP/Components/lsm6dso.d ./Drivers/BSP/Components/lsm6dso.o ./Drivers/BSP/Components/lsm6dso.su ./Drivers/BSP/Components/lsm6dso_reg.cyclo ./Drivers/BSP/Components/lsm6dso_reg.d ./Drivers/BSP/Components/lsm6dso_reg.o ./Drivers/BSP/Components/lsm6dso_reg.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

