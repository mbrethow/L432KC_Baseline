################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../RTT/SEGGER_RTT.c \
../RTT/SEGGER_RTT_printf.c 

S_UPPER_SRCS += \
../RTT/SEGGER_RTT_ASM_ARMv7M.S 

OBJS += \
./RTT/SEGGER_RTT.o \
./RTT/SEGGER_RTT_ASM_ARMv7M.o \
./RTT/SEGGER_RTT_printf.o 

S_UPPER_DEPS += \
./RTT/SEGGER_RTT_ASM_ARMv7M.d 

C_DEPS += \
./RTT/SEGGER_RTT.d \
./RTT/SEGGER_RTT_printf.d 


# Each subdirectory must supply rules for building sources it contributes
RTT/%.o: ../RTT/%.c RTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto/mbedtls/include" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto/mbedtls/library" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
RTT/%.o: ../RTT/%.S RTT/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

