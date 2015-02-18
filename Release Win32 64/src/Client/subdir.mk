################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/Client/Camera.cpp \
../src/Client/Client.cpp \
../src/Client/CustomViewer.cpp \
../src/Client/input.cpp \
../src/Client/interface.cpp \
../src/Client/rendering.cpp 

OBJS += \
./src/Client/Camera.o \
./src/Client/Client.o \
./src/Client/CustomViewer.o \
./src/Client/input.o \
./src/Client/interface.o \
./src/Client/rendering.o 

CPP_DEPS += \
./src/Client/Camera.d \
./src/Client/Client.d \
./src/Client/CustomViewer.d \
./src/Client/input.d \
./src/Client/interface.d \
./src/Client/rendering.d 


# Each subdirectory must supply rules for building sources it contributes
src/Client/%.o: ../src/Client/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	x86_64-w64-mingw32-g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


