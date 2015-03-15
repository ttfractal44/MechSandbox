################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/examples/action-namespace.c \
../src/gtk+/examples/builder.c \
../src/gtk+/examples/drawing.c \
../src/gtk+/examples/grid-packing.c \
../src/gtk+/examples/hello-world.c \
../src/gtk+/examples/plugman.c \
../src/gtk+/examples/search-bar.c \
../src/gtk+/examples/sunny.c \
../src/gtk+/examples/window-default.c 

OBJS += \
./src/gtk+/examples/action-namespace.o \
./src/gtk+/examples/builder.o \
./src/gtk+/examples/drawing.o \
./src/gtk+/examples/grid-packing.o \
./src/gtk+/examples/hello-world.o \
./src/gtk+/examples/plugman.o \
./src/gtk+/examples/search-bar.o \
./src/gtk+/examples/sunny.o \
./src/gtk+/examples/window-default.o 

C_DEPS += \
./src/gtk+/examples/action-namespace.d \
./src/gtk+/examples/builder.d \
./src/gtk+/examples/drawing.d \
./src/gtk+/examples/grid-packing.d \
./src/gtk+/examples/hello-world.d \
./src/gtk+/examples/plugman.d \
./src/gtk+/examples/search-bar.d \
./src/gtk+/examples/sunny.d \
./src/gtk+/examples/window-default.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/examples/%.o: ../src/gtk+/examples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


