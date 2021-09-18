################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Crypto/mbedtls/programs/pkey/dh_client.c \
../Crypto/mbedtls/programs/pkey/dh_genprime.c \
../Crypto/mbedtls/programs/pkey/dh_server.c \
../Crypto/mbedtls/programs/pkey/ecdh_curve25519.c \
../Crypto/mbedtls/programs/pkey/ecdsa.c \
../Crypto/mbedtls/programs/pkey/gen_key.c \
../Crypto/mbedtls/programs/pkey/key_app.c \
../Crypto/mbedtls/programs/pkey/key_app_writer.c \
../Crypto/mbedtls/programs/pkey/mpi_demo.c \
../Crypto/mbedtls/programs/pkey/pk_decrypt.c \
../Crypto/mbedtls/programs/pkey/pk_encrypt.c \
../Crypto/mbedtls/programs/pkey/pk_sign.c \
../Crypto/mbedtls/programs/pkey/pk_verify.c \
../Crypto/mbedtls/programs/pkey/rsa_decrypt.c \
../Crypto/mbedtls/programs/pkey/rsa_encrypt.c \
../Crypto/mbedtls/programs/pkey/rsa_genkey.c \
../Crypto/mbedtls/programs/pkey/rsa_sign.c \
../Crypto/mbedtls/programs/pkey/rsa_sign_pss.c \
../Crypto/mbedtls/programs/pkey/rsa_verify.c \
../Crypto/mbedtls/programs/pkey/rsa_verify_pss.c 

OBJS += \
./Crypto/mbedtls/programs/pkey/dh_client.o \
./Crypto/mbedtls/programs/pkey/dh_genprime.o \
./Crypto/mbedtls/programs/pkey/dh_server.o \
./Crypto/mbedtls/programs/pkey/ecdh_curve25519.o \
./Crypto/mbedtls/programs/pkey/ecdsa.o \
./Crypto/mbedtls/programs/pkey/gen_key.o \
./Crypto/mbedtls/programs/pkey/key_app.o \
./Crypto/mbedtls/programs/pkey/key_app_writer.o \
./Crypto/mbedtls/programs/pkey/mpi_demo.o \
./Crypto/mbedtls/programs/pkey/pk_decrypt.o \
./Crypto/mbedtls/programs/pkey/pk_encrypt.o \
./Crypto/mbedtls/programs/pkey/pk_sign.o \
./Crypto/mbedtls/programs/pkey/pk_verify.o \
./Crypto/mbedtls/programs/pkey/rsa_decrypt.o \
./Crypto/mbedtls/programs/pkey/rsa_encrypt.o \
./Crypto/mbedtls/programs/pkey/rsa_genkey.o \
./Crypto/mbedtls/programs/pkey/rsa_sign.o \
./Crypto/mbedtls/programs/pkey/rsa_sign_pss.o \
./Crypto/mbedtls/programs/pkey/rsa_verify.o \
./Crypto/mbedtls/programs/pkey/rsa_verify_pss.o 

C_DEPS += \
./Crypto/mbedtls/programs/pkey/dh_client.d \
./Crypto/mbedtls/programs/pkey/dh_genprime.d \
./Crypto/mbedtls/programs/pkey/dh_server.d \
./Crypto/mbedtls/programs/pkey/ecdh_curve25519.d \
./Crypto/mbedtls/programs/pkey/ecdsa.d \
./Crypto/mbedtls/programs/pkey/gen_key.d \
./Crypto/mbedtls/programs/pkey/key_app.d \
./Crypto/mbedtls/programs/pkey/key_app_writer.d \
./Crypto/mbedtls/programs/pkey/mpi_demo.d \
./Crypto/mbedtls/programs/pkey/pk_decrypt.d \
./Crypto/mbedtls/programs/pkey/pk_encrypt.d \
./Crypto/mbedtls/programs/pkey/pk_sign.d \
./Crypto/mbedtls/programs/pkey/pk_verify.d \
./Crypto/mbedtls/programs/pkey/rsa_decrypt.d \
./Crypto/mbedtls/programs/pkey/rsa_encrypt.d \
./Crypto/mbedtls/programs/pkey/rsa_genkey.d \
./Crypto/mbedtls/programs/pkey/rsa_sign.d \
./Crypto/mbedtls/programs/pkey/rsa_sign_pss.d \
./Crypto/mbedtls/programs/pkey/rsa_verify.d \
./Crypto/mbedtls/programs/pkey/rsa_verify_pss.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto/mbedtls/programs/pkey/%.o: ../Crypto/mbedtls/programs/pkey/%.c Crypto/mbedtls/programs/pkey/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L432xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Crypto" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/RTT" -I"/home/shokto/STM32CubeIDE/workspace_1.7.0/L432KC_Baseline/Services" -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

