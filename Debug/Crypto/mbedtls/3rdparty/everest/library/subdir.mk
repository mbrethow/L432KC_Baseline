################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/3rdparty/everest/library/Hacl_Curve25519.c \
../Crypto/mbedtls/3rdparty/everest/library/Hacl_Curve25519_joined.c \
../Crypto/mbedtls/3rdparty/everest/library/everest.c \
../Crypto/mbedtls/3rdparty/everest/library/x25519.c 

OBJS += \
./Crypto/mbedtls/3rdparty/everest/library/Hacl_Curve25519.o \
./Crypto/mbedtls/3rdparty/everest/library/Hacl_Curve25519_joined.o \
./Crypto/mbedtls/3rdparty/everest/library/everest.o \
./Crypto/mbedtls/3rdparty/everest/library/x25519.o 

C_DEPS += \
./Crypto/mbedtls/3rdparty/everest/library/Hacl_Curve25519.d \
./Crypto/mbedtls/3rdparty/everest/library/Hacl_Curve25519_joined.d \
./Crypto/mbedtls/3rdparty/everest/library/everest.d \
./Crypto/mbedtls/3rdparty/everest/library/x25519.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/3rdparty/everest/library/%.o: ../Crypto/mbedtls/3rdparty/everest/library/%.c Crypto/mbedtls/3rdparty/everest/library/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto/mbedtls/include" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto/mbedtls/library" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

