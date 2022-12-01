################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTOS/os.c \
../RTOS/port.c 

OBJS += \
./RTOS/os.o \
./RTOS/port.o 

C_DEPS += \
./RTOS/os.d \
./RTOS/port.d 


# Each subdirectory must supply rules for building sources it contributes
RTOS/%.o RTOS/%.su: ../RTOS/%.c RTOS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -DARM_MATH_CM4 -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/linked_list_os/RTOS" -I"/home/gustavo/STM32CubeIDE/workspace_1.10.1/linked_list_os/CMSIS/include" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-RTOS

clean-RTOS:
	-$(RM) ./RTOS/os.d ./RTOS/os.o ./RTOS/os.su ./RTOS/port.d ./RTOS/port.o ./RTOS/port.su

.PHONY: clean-RTOS

