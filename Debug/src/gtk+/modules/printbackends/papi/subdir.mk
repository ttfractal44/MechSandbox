################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/modules/printbackends/papi/gtkprintbackendpapi.c \
../src/gtk+/modules/printbackends/papi/gtkprinterpapi.c 

OBJS += \
./src/gtk+/modules/printbackends/papi/gtkprintbackendpapi.o \
./src/gtk+/modules/printbackends/papi/gtkprinterpapi.o 

C_DEPS += \
./src/gtk+/modules/printbackends/papi/gtkprintbackendpapi.d \
./src/gtk+/modules/printbackends/papi/gtkprinterpapi.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/modules/printbackends/papi/%.o: ../src/gtk+/modules/printbackends/papi/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


