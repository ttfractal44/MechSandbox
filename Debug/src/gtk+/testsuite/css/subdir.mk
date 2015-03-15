################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/testsuite/css/api.c 

OBJS += \
./src/gtk+/testsuite/css/api.o 

C_DEPS += \
./src/gtk+/testsuite/css/api.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/testsuite/css/%.o: ../src/gtk+/testsuite/css/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


