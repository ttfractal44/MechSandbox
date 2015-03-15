################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/docs/tools/shadow.c \
../src/gtk+/docs/tools/shooter.c \
../src/gtk+/docs/tools/widgets.c 

OBJS += \
./src/gtk+/docs/tools/shadow.o \
./src/gtk+/docs/tools/shooter.o \
./src/gtk+/docs/tools/widgets.o 

C_DEPS += \
./src/gtk+/docs/tools/shadow.d \
./src/gtk+/docs/tools/shooter.d \
./src/gtk+/docs/tools/widgets.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/docs/tools/%.o: ../src/gtk+/docs/tools/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


