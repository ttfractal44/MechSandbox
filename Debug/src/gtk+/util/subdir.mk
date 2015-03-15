################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/util/extract-strings.c 

OBJS += \
./src/gtk+/util/extract-strings.o 

C_DEPS += \
./src/gtk+/util/extract-strings.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/util/%.o: ../src/gtk+/util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


