################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/programs/test/benchmark.c \
../Crypto/mbedtls/programs/test/query_compile_time_config.c \
../Crypto/mbedtls/programs/test/selftest.c \
../Crypto/mbedtls/programs/test/udp_proxy.c \
../Crypto/mbedtls/programs/test/zeroize.c 

OBJS += \
./Crypto/mbedtls/programs/test/benchmark.o \
./Crypto/mbedtls/programs/test/query_compile_time_config.o \
./Crypto/mbedtls/programs/test/selftest.o \
./Crypto/mbedtls/programs/test/udp_proxy.o \
./Crypto/mbedtls/programs/test/zeroize.o 

C_DEPS += \
./Crypto/mbedtls/programs/test/benchmark.d \
./Crypto/mbedtls/programs/test/query_compile_time_config.d \
./Crypto/mbedtls/programs/test/selftest.d \
./Crypto/mbedtls/programs/test/udp_proxy.d \
./Crypto/mbedtls/programs/test/zeroize.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/programs/test/%.o: ../Crypto/mbedtls/programs/test/%.c Crypto/mbedtls/programs/test/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

