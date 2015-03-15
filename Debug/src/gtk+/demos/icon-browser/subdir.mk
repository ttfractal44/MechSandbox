################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/demos/icon-browser/iconbrowserapp.c \
../src/gtk+/demos/icon-browser/iconbrowserwin.c \
../src/gtk+/demos/icon-browser/iconstore.c \
../src/gtk+/demos/icon-browser/main.c 

OBJS += \
./src/gtk+/demos/icon-browser/iconbrowserapp.o \
./src/gtk+/demos/icon-browser/iconbrowserwin.o \
./src/gtk+/demos/icon-browser/iconstore.o \
./src/gtk+/demos/icon-browser/main.o 

C_DEPS += \
./src/gtk+/demos/icon-browser/iconbrowserapp.d \
./src/gtk+/demos/icon-browser/iconbrowserwin.d \
./src/gtk+/demos/icon-browser/iconstore.d \
./src/gtk+/demos/icon-browser/main.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/demos/icon-browser/%.o: ../src/gtk+/demos/icon-browser/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


