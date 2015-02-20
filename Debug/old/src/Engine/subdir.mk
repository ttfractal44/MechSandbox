################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../old/src/Engine/glrendering.cpp \
../old/src/Engine/meshutils.cpp \
../old/src/Engine/primitives.cpp \
../old/src/Engine/userinput.cpp \
../old/src/Engine/world.cpp 

OBJS += \
./old/src/Engine/glrendering.o \
./old/src/Engine/meshutils.o \
./old/src/Engine/primitives.o \
./old/src/Engine/userinput.o \
./old/src/Engine/world.o 

CPP_DEPS += \
./old/src/Engine/glrendering.d \
./old/src/Engine/meshutils.d \
./old/src/Engine/primitives.d \
./old/src/Engine/userinput.d \
./old/src/Engine/world.d 


# Each subdirectory must supply rules for building sources it contributes
old/src/Engine/%.o: ../old/src/Engine/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


