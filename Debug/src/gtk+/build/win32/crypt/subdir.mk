################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/build/win32/crypt/crypt3.c 

OBJS += \
./src/gtk+/build/win32/crypt/crypt3.o 

C_DEPS += \
./src/gtk+/build/win32/crypt/crypt3.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/build/win32/crypt/%.o: ../src/gtk+/build/win32/crypt/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


