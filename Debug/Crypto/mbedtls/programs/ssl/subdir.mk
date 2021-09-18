################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/programs/ssl/dtls_client.c \
../Crypto/mbedtls/programs/ssl/dtls_server.c \
../Crypto/mbedtls/programs/ssl/mini_client.c \
../Crypto/mbedtls/programs/ssl/ssl_client1.c \
../Crypto/mbedtls/programs/ssl/ssl_client2.c \
../Crypto/mbedtls/programs/ssl/ssl_context_info.c \
../Crypto/mbedtls/programs/ssl/ssl_fork_server.c \
../Crypto/mbedtls/programs/ssl/ssl_mail_client.c \
../Crypto/mbedtls/programs/ssl/ssl_pthread_server.c \
../Crypto/mbedtls/programs/ssl/ssl_server.c \
../Crypto/mbedtls/programs/ssl/ssl_server2.c \
../Crypto/mbedtls/programs/ssl/ssl_test_common_source.c \
../Crypto/mbedtls/programs/ssl/ssl_test_lib.c 

OBJS += \
./Crypto/mbedtls/programs/ssl/dtls_client.o \
./Crypto/mbedtls/programs/ssl/dtls_server.o \
./Crypto/mbedtls/programs/ssl/mini_client.o \
./Crypto/mbedtls/programs/ssl/ssl_client1.o \
./Crypto/mbedtls/programs/ssl/ssl_client2.o \
./Crypto/mbedtls/programs/ssl/ssl_context_info.o \
./Crypto/mbedtls/programs/ssl/ssl_fork_server.o \
./Crypto/mbedtls/programs/ssl/ssl_mail_client.o \
./Crypto/mbedtls/programs/ssl/ssl_pthread_server.o \
./Crypto/mbedtls/programs/ssl/ssl_server.o \
./Crypto/mbedtls/programs/ssl/ssl_server2.o \
./Crypto/mbedtls/programs/ssl/ssl_test_common_source.o \
./Crypto/mbedtls/programs/ssl/ssl_test_lib.o 

C_DEPS += \
./Crypto/mbedtls/programs/ssl/dtls_client.d \
./Crypto/mbedtls/programs/ssl/dtls_server.d \
./Crypto/mbedtls/programs/ssl/mini_client.d \
./Crypto/mbedtls/programs/ssl/ssl_client1.d \
./Crypto/mbedtls/programs/ssl/ssl_client2.d \
./Crypto/mbedtls/programs/ssl/ssl_context_info.d \
./Crypto/mbedtls/programs/ssl/ssl_fork_server.d \
./Crypto/mbedtls/programs/ssl/ssl_mail_client.d \
./Crypto/mbedtls/programs/ssl/ssl_pthread_server.d \
./Crypto/mbedtls/programs/ssl/ssl_server.d \
./Crypto/mbedtls/programs/ssl/ssl_server2.d \
./Crypto/mbedtls/programs/ssl/ssl_test_common_source.d \
./Crypto/mbedtls/programs/ssl/ssl_test_lib.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/programs/ssl/%.o: ../Crypto/mbedtls/programs/ssl/%.c Crypto/mbedtls/programs/ssl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

