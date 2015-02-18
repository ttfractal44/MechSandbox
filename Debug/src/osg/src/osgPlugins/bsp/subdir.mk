################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/bsp/BITSET.cpp \
../src/osg/src/osgPlugins/bsp/Q3BSPLoad.cpp \
../src/osg/src/osgPlugins/bsp/Q3BSPReader.cpp \
../src/osg/src/osgPlugins/bsp/ReaderWriterBSP.cpp \
../src/osg/src/osgPlugins/bsp/VBSPData.cpp \
../src/osg/src/osgPlugins/bsp/VBSPEntity.cpp \
../src/osg/src/osgPlugins/bsp/VBSPGeometry.cpp \
../src/osg/src/osgPlugins/bsp/VBSPReader.cpp 

OBJS += \
./src/osg/src/osgPlugins/bsp/BITSET.o \
./src/osg/src/osgPlugins/bsp/Q3BSPLoad.o \
./src/osg/src/osgPlugins/bsp/Q3BSPReader.o \
./src/osg/src/osgPlugins/bsp/ReaderWriterBSP.o \
./src/osg/src/osgPlugins/bsp/VBSPData.o \
./src/osg/src/osgPlugins/bsp/VBSPEntity.o \
./src/osg/src/osgPlugins/bsp/VBSPGeometry.o \
./src/osg/src/osgPlugins/bsp/VBSPReader.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/bsp/BITSET.d \
./src/osg/src/osgPlugins/bsp/Q3BSPLoad.d \
./src/osg/src/osgPlugins/bsp/Q3BSPReader.d \
./src/osg/src/osgPlugins/bsp/ReaderWriterBSP.d \
./src/osg/src/osgPlugins/bsp/VBSPData.d \
./src/osg/src/osgPlugins/bsp/VBSPEntity.d \
./src/osg/src/osgPlugins/bsp/VBSPGeometry.d \
./src/osg/src/osgPlugins/bsp/VBSPReader.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/bsp/%.o: ../src/osg/src/osgPlugins/bsp/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


