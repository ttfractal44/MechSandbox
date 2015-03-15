################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/examples/application8/exampleapp.c \
../src/gtk+/examples/application8/exampleappprefs.c \
../src/gtk+/examples/application8/exampleappwin.c \
../src/gtk+/examples/application8/main.c 

OBJS += \
./src/gtk+/examples/application8/exampleapp.o \
./src/gtk+/examples/application8/exampleappprefs.o \
./src/gtk+/examples/application8/exampleappwin.o \
./src/gtk+/examples/application8/main.o 

C_DEPS += \
./src/gtk+/examples/application8/exampleapp.d \
./src/gtk+/examples/application8/exampleappprefs.d \
./src/gtk+/examples/application8/exampleappwin.d \
./src/gtk+/examples/application8/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/examples/application8/%.o: ../src/gtk+/examples/application8/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


