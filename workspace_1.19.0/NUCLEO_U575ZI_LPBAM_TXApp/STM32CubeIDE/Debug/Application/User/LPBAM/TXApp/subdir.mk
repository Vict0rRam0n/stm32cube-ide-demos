################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/LPBAM/TXApp/lpbam_txapp_config.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/LPBAM/TXApp/lpbam_txapp_txdata_build.c \
C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/LPBAM/TXApp/lpbam_txapp_txdata_config.c 

OBJS += \
./Application/User/LPBAM/TXApp/lpbam_txapp_config.o \
./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.o \
./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.o 

C_DEPS += \
./Application/User/LPBAM/TXApp/lpbam_txapp_config.d \
./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.d \
./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/LPBAM/TXApp/lpbam_txapp_config.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/LPBAM/TXApp/lpbam_txapp_config.c Application/User/LPBAM/TXApp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/LPBAM/TXApp/lpbam_txapp_txdata_build.c Application/User/LPBAM/TXApp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.o: C:/Users/aliagavi/STM32CubeIDE/workspace_1.19.0/NUCLEO_U575ZI_LPBAM_TXApp/LPBAM/TXApp/lpbam_txapp_txdata_config.c Application/User/LPBAM/TXApp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32U575xx -c -I../../LPBAM/TXApp -I../../Core/Inc -I../../Utilities/lpbam -I../../Utilities/lpbam/STM32U5 -I../../Drivers/STM32U5xx_HAL_Driver/Inc -I../../Drivers/STM32U5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32U5xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-LPBAM-2f-TXApp

clean-Application-2f-User-2f-LPBAM-2f-TXApp:
	-$(RM) ./Application/User/LPBAM/TXApp/lpbam_txapp_config.cyclo ./Application/User/LPBAM/TXApp/lpbam_txapp_config.d ./Application/User/LPBAM/TXApp/lpbam_txapp_config.o ./Application/User/LPBAM/TXApp/lpbam_txapp_config.su ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.cyclo ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.d ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.o ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_build.su ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.cyclo ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.d ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.o ./Application/User/LPBAM/TXApp/lpbam_txapp_txdata_config.su

.PHONY: clean-Application-2f-User-2f-LPBAM-2f-TXApp

