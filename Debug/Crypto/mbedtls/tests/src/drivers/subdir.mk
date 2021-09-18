################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/tests/src/drivers/hash.c \
../Crypto/mbedtls/tests/src/drivers/platform_builtin_keys.c \
../Crypto/mbedtls/tests/src/drivers/test_driver_aead.c \
../Crypto/mbedtls/tests/src/drivers/test_driver_cipher.c \
../Crypto/mbedtls/tests/src/drivers/test_driver_key_management.c \
../Crypto/mbedtls/tests/src/drivers/test_driver_mac.c \
../Crypto/mbedtls/tests/src/drivers/test_driver_signature.c 

OBJS += \
./Crypto/mbedtls/tests/src/drivers/hash.o \
./Crypto/mbedtls/tests/src/drivers/platform_builtin_keys.o \
./Crypto/mbedtls/tests/src/drivers/test_driver_aead.o \
./Crypto/mbedtls/tests/src/drivers/test_driver_cipher.o \
./Crypto/mbedtls/tests/src/drivers/test_driver_key_management.o \
./Crypto/mbedtls/tests/src/drivers/test_driver_mac.o \
./Crypto/mbedtls/tests/src/drivers/test_driver_signature.o 

C_DEPS += \
./Crypto/mbedtls/tests/src/drivers/hash.d \
./Crypto/mbedtls/tests/src/drivers/platform_builtin_keys.d \
./Crypto/mbedtls/tests/src/drivers/test_driver_aead.d \
./Crypto/mbedtls/tests/src/drivers/test_driver_cipher.d \
./Crypto/mbedtls/tests/src/drivers/test_driver_key_management.d \
./Crypto/mbedtls/tests/src/drivers/test_driver_mac.d \
./Crypto/mbedtls/tests/src/drivers/test_driver_signature.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/tests/src/drivers/%.o: ../Crypto/mbedtls/tests/src/drivers/%.c Crypto/mbedtls/tests/src/drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

