################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/tests/src/asn1_helpers.c \
../Crypto/mbedtls/tests/src/certs.c \
../Crypto/mbedtls/tests/src/fake_external_rng_for_test.c \
../Crypto/mbedtls/tests/src/helpers.c \
../Crypto/mbedtls/tests/src/psa_crypto_helpers.c \
../Crypto/mbedtls/tests/src/psa_exercise_key.c \
../Crypto/mbedtls/tests/src/random.c \
../Crypto/mbedtls/tests/src/threading_helpers.c 

OBJS += \
./Crypto/mbedtls/tests/src/asn1_helpers.o \
./Crypto/mbedtls/tests/src/certs.o \
./Crypto/mbedtls/tests/src/fake_external_rng_for_test.o \
./Crypto/mbedtls/tests/src/helpers.o \
./Crypto/mbedtls/tests/src/psa_crypto_helpers.o \
./Crypto/mbedtls/tests/src/psa_exercise_key.o \
./Crypto/mbedtls/tests/src/random.o \
./Crypto/mbedtls/tests/src/threading_helpers.o 

C_DEPS += \
./Crypto/mbedtls/tests/src/asn1_helpers.d \
./Crypto/mbedtls/tests/src/certs.d \
./Crypto/mbedtls/tests/src/fake_external_rng_for_test.d \
./Crypto/mbedtls/tests/src/helpers.d \
./Crypto/mbedtls/tests/src/psa_crypto_helpers.d \
./Crypto/mbedtls/tests/src/psa_exercise_key.d \
./Crypto/mbedtls/tests/src/random.d \
./Crypto/mbedtls/tests/src/threading_helpers.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/tests/src/%.o: ../Crypto/mbedtls/tests/src/%.c Crypto/mbedtls/tests/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

