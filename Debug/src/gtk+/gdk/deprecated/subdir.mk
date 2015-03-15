################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/deprecated/gdkcolor.c 

OBJS += \
./src/gtk+/gdk/deprecated/gdkcolor.o 

C_DEPS += \
./src/gtk+/gdk/deprecated/gdkcolor.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/deprecated/%.o: ../src/gtk+/gdk/deprecated/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


