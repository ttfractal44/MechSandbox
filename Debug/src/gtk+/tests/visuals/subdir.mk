################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/tests/visuals/visuals.c 

OBJS += \
./src/gtk+/tests/visuals/visuals.o 

C_DEPS += \
./src/gtk+/tests/visuals/visuals.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/tests/visuals/%.o: ../src/gtk+/tests/visuals/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


