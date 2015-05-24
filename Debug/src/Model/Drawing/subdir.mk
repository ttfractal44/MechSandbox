################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Model/Drawing/Attribute.cpp \
../src/Model/Drawing/Circle.cpp \
../src/Model/Drawing/CopySequence.cpp \
../src/Model/Drawing/Curve.cpp \
../src/Model/Drawing/Drawing.cpp \
../src/Model/Drawing/Element.cpp \
../src/Model/Drawing/Line.cpp \
../src/Model/Drawing/Point.cpp \
../src/Model/Drawing/Union.cpp \
../src/Model/Drawing/UpdateElement.cpp 

OBJS += \
./src/Model/Drawing/Attribute.o \
./src/Model/Drawing/Circle.o \
./src/Model/Drawing/CopySequence.o \
./src/Model/Drawing/Curve.o \
./src/Model/Drawing/Drawing.o \
./src/Model/Drawing/Element.o \
./src/Model/Drawing/Line.o \
./src/Model/Drawing/Point.o \
./src/Model/Drawing/Union.o \
./src/Model/Drawing/UpdateElement.o 

CPP_DEPS += \
./src/Model/Drawing/Attribute.d \
./src/Model/Drawing/Circle.d \
./src/Model/Drawing/CopySequence.d \
./src/Model/Drawing/Curve.d \
./src/Model/Drawing/Drawing.d \
./src/Model/Drawing/Element.d \
./src/Model/Drawing/Line.d \
./src/Model/Drawing/Point.d \
./src/Model/Drawing/Union.d \
./src/Model/Drawing/UpdateElement.d 


# Each subdirectory must supply rules for building sources it contributes
src/Model/Drawing/%.o: ../src/Model/Drawing/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags openscenegraph sdl2 glew gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


