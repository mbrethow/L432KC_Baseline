################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/programs/fuzz/common.c \
../Crypto/mbedtls/programs/fuzz/fuzz_client.c \
../Crypto/mbedtls/programs/fuzz/fuzz_dtlsclient.c \
../Crypto/mbedtls/programs/fuzz/fuzz_dtlsserver.c \
../Crypto/mbedtls/programs/fuzz/fuzz_privkey.c \
../Crypto/mbedtls/programs/fuzz/fuzz_pubkey.c \
../Crypto/mbedtls/programs/fuzz/fuzz_server.c \
../Crypto/mbedtls/programs/fuzz/fuzz_x509crl.c \
../Crypto/mbedtls/programs/fuzz/fuzz_x509crt.c \
../Crypto/mbedtls/programs/fuzz/fuzz_x509csr.c \
../Crypto/mbedtls/programs/fuzz/onefile.c 

OBJS += \
./Crypto/mbedtls/programs/fuzz/common.o \
./Crypto/mbedtls/programs/fuzz/fuzz_client.o \
./Crypto/mbedtls/programs/fuzz/fuzz_dtlsclient.o \
./Crypto/mbedtls/programs/fuzz/fuzz_dtlsserver.o \
./Crypto/mbedtls/programs/fuzz/fuzz_privkey.o \
./Crypto/mbedtls/programs/fuzz/fuzz_pubkey.o \
./Crypto/mbedtls/programs/fuzz/fuzz_server.o \
./Crypto/mbedtls/programs/fuzz/fuzz_x509crl.o \
./Crypto/mbedtls/programs/fuzz/fuzz_x509crt.o \
./Crypto/mbedtls/programs/fuzz/fuzz_x509csr.o \
./Crypto/mbedtls/programs/fuzz/onefile.o 

C_DEPS += \
./Crypto/mbedtls/programs/fuzz/common.d \
./Crypto/mbedtls/programs/fuzz/fuzz_client.d \
./Crypto/mbedtls/programs/fuzz/fuzz_dtlsclient.d \
./Crypto/mbedtls/programs/fuzz/fuzz_dtlsserver.d \
./Crypto/mbedtls/programs/fuzz/fuzz_privkey.d \
./Crypto/mbedtls/programs/fuzz/fuzz_pubkey.d \
./Crypto/mbedtls/programs/fuzz/fuzz_server.d \
./Crypto/mbedtls/programs/fuzz/fuzz_x509crl.d \
./Crypto/mbedtls/programs/fuzz/fuzz_x509crt.d \
./Crypto/mbedtls/programs/fuzz/fuzz_x509csr.d \
./Crypto/mbedtls/programs/fuzz/onefile.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/programs/fuzz/%.o: ../Crypto/mbedtls/programs/fuzz/%.c Crypto/mbedtls/programs/fuzz/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

