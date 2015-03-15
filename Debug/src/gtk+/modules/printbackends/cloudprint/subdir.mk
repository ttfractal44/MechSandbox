################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/modules/printbackends/cloudprint/gtkcloudprintaccount.c \
../src/gtk+/modules/printbackends/cloudprint/gtkprintbackendcloudprint.c \
../src/gtk+/modules/printbackends/cloudprint/gtkprintercloudprint.c 

OBJS += \
./src/gtk+/modules/printbackends/cloudprint/gtkcloudprintaccount.o \
./src/gtk+/modules/printbackends/cloudprint/gtkprintbackendcloudprint.o \
./src/gtk+/modules/printbackends/cloudprint/gtkprintercloudprint.o 

C_DEPS += \
./src/gtk+/modules/printbackends/cloudprint/gtkcloudprintaccount.d \
./src/gtk+/modules/printbackends/cloudprint/gtkprintbackendcloudprint.d \
./src/gtk+/modules/printbackends/cloudprint/gtkprintercloudprint.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/modules/printbackends/cloudprint/%.o: ../src/gtk+/modules/printbackends/cloudprint/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


