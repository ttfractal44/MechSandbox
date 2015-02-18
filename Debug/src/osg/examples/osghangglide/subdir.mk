################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/examples/osghangglide/GliderManipulator.cpp \
../src/osg/examples/osghangglide/base.cpp \
../src/osg/examples/osghangglide/hat.cpp \
../src/osg/examples/osghangglide/osghangglide.cpp \
../src/osg/examples/osghangglide/sky.cpp \
../src/osg/examples/osghangglide/tank.cpp \
../src/osg/examples/osghangglide/terrain.cpp \
../src/osg/examples/osghangglide/trees.cpp 

OBJS += \
./src/osg/examples/osghangglide/GliderManipulator.o \
./src/osg/examples/osghangglide/base.o \
./src/osg/examples/osghangglide/hat.o \
./src/osg/examples/osghangglide/osghangglide.o \
./src/osg/examples/osghangglide/sky.o \
./src/osg/examples/osghangglide/tank.o \
./src/osg/examples/osghangglide/terrain.o \
./src/osg/examples/osghangglide/trees.o 

CPP_DEPS += \
./src/osg/examples/osghangglide/GliderManipulator.d \
./src/osg/examples/osghangglide/base.d \
./src/osg/examples/osghangglide/hat.d \
./src/osg/examples/osghangglide/osghangglide.d \
./src/osg/examples/osghangglide/sky.d \
./src/osg/examples/osghangglide/tank.d \
./src/osg/examples/osghangglide/terrain.d \
./src/osg/examples/osghangglide/trees.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/examples/osghangglide/%.o: ../src/osg/examples/osghangglide/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


