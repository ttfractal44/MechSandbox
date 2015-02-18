################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/examples/osggpucull/AggregateGeometryVisitor.cpp \
../src/osg/examples/osggpucull/DrawIndirectPrimitiveSet.cpp \
../src/osg/examples/osggpucull/ShapeToGeometry.cpp \
../src/osg/examples/osggpucull/osggpucull.cpp 

OBJS += \
./src/osg/examples/osggpucull/AggregateGeometryVisitor.o \
./src/osg/examples/osggpucull/DrawIndirectPrimitiveSet.o \
./src/osg/examples/osggpucull/ShapeToGeometry.o \
./src/osg/examples/osggpucull/osggpucull.o 

CPP_DEPS += \
./src/osg/examples/osggpucull/AggregateGeometryVisitor.d \
./src/osg/examples/osggpucull/DrawIndirectPrimitiveSet.d \
./src/osg/examples/osggpucull/ShapeToGeometry.d \
./src/osg/examples/osggpucull/osggpucull.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/examples/osggpucull/%.o: ../src/osg/examples/osggpucull/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


