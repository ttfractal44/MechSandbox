################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/testsuite/gdk/cairo.c \
../src/gtk+/testsuite/gdk/check-gdk-cairo.c \
../src/gtk+/testsuite/gdk/display.c \
../src/gtk+/testsuite/gdk/encoding.c \
../src/gtk+/testsuite/gdk/keysyms.c \
../src/gtk+/testsuite/gdk/rgba.c 

OBJS += \
./src/gtk+/testsuite/gdk/cairo.o \
./src/gtk+/testsuite/gdk/check-gdk-cairo.o \
./src/gtk+/testsuite/gdk/display.o \
./src/gtk+/testsuite/gdk/encoding.o \
./src/gtk+/testsuite/gdk/keysyms.o \
./src/gtk+/testsuite/gdk/rgba.o 

C_DEPS += \
./src/gtk+/testsuite/gdk/cairo.d \
./src/gtk+/testsuite/gdk/check-gdk-cairo.d \
./src/gtk+/testsuite/gdk/display.d \
./src/gtk+/testsuite/gdk/encoding.d \
./src/gtk+/testsuite/gdk/keysyms.d \
./src/gtk+/testsuite/gdk/rgba.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/testsuite/gdk/%.o: ../src/gtk+/testsuite/gdk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


