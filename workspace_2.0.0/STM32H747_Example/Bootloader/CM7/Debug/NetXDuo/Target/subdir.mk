################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../NetXDuo/Target/nx_stm32_custom_driver.c 

OBJS += \
./NetXDuo/Target/nx_stm32_custom_driver.o 

C_DEPS += \
./NetXDuo/Target/nx_stm32_custom_driver.d 


# Each subdirectory must supply rules for building sources it contributes
NetXDuo/Target/%.o NetXDuo/Target/%.su NetXDuo/Target/%.cyclo: ../NetXDuo/Target/%.c NetXDuo/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -DTX_INCLUDE_USER_DEFINE_FILE -DNX_SECURE_INCLUDE_USER_DEFINE_FILE -DNX_INCLUDE_USER_DEFINE_FILE -c -I../Core/Inc -I../AZURE_RTOS/App -I../NetXDuo/App -I../NetXDuo/Target -I../../Drivers/BSP/Components/mt25tl01g/ -I../../Middlewares/ST/netxduo/addons/auto_ip/ -I../../Middlewares/ST/netxduo/addons/dhcp/ -I../../Middlewares/ST/netxduo/common/inc/ -I../../Middlewares/ST/netxduo/ports/cortex_m7/gnu/inc/ -I../../Middlewares/ST/netxduo/nx_secure/inc/ -I../../Middlewares/ST/netxduo/nx_secure/ports/ -I../../Middlewares/ST/netxduo/crypto_libraries/inc/ -I../../Middlewares/ST/netxduo/crypto_libraries/ports/cortex_m7/gnu/inc/ -I../../Middlewares/ST/netxduo/addons/mdns/ -I../../Middlewares/ST/threadx/common/inc/ -I../../Middlewares/ST/threadx/ports/cortex_m7/gnu/inc/ -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-NetXDuo-2f-Target

clean-NetXDuo-2f-Target:
	-$(RM) ./NetXDuo/Target/nx_stm32_custom_driver.cyclo ./NetXDuo/Target/nx_stm32_custom_driver.d ./NetXDuo/Target/nx_stm32_custom_driver.o ./NetXDuo/Target/nx_stm32_custom_driver.su

.PHONY: clean-NetXDuo-2f-Target

