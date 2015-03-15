################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/libgail-util/gailmisc.c \
../src/gtk+/libgail-util/gailtextutil.c 

OBJS += \
./src/gtk+/libgail-util/gailmisc.o \
./src/gtk+/libgail-util/gailtextutil.o 

C_DEPS += \
./src/gtk+/libgail-util/gailmisc.d \
./src/gtk+/libgail-util/gailtextutil.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/libgail-util/%.o: ../src/gtk+/libgail-util/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


