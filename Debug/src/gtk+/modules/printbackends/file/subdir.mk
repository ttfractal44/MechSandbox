################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/modules/printbackends/file/gtkprintbackendfile.c 

OBJS += \
./src/gtk+/modules/printbackends/file/gtkprintbackendfile.o 

C_DEPS += \
./src/gtk+/modules/printbackends/file/gtkprintbackendfile.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/modules/printbackends/file/%.o: ../src/gtk+/modules/printbackends/file/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


