################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/examples/application9/exampleapp.c \
../src/gtk+/examples/application9/exampleappprefs.c \
../src/gtk+/examples/application9/exampleappwin.c \
../src/gtk+/examples/application9/main.c 

OBJS += \
./src/gtk+/examples/application9/exampleapp.o \
./src/gtk+/examples/application9/exampleappprefs.o \
./src/gtk+/examples/application9/exampleappwin.o \
./src/gtk+/examples/application9/main.o 

C_DEPS += \
./src/gtk+/examples/application9/exampleapp.d \
./src/gtk+/examples/application9/exampleappprefs.d \
./src/gtk+/examples/application9/exampleappwin.d \
./src/gtk+/examples/application9/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/examples/application9/%.o: ../src/gtk+/examples/application9/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


