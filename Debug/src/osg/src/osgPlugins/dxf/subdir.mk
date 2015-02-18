################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/dxf/DXFWriterNodeVisitor.cpp \
../src/osg/src/osgPlugins/dxf/ReaderWriterDXF.cpp \
../src/osg/src/osgPlugins/dxf/aci.cpp \
../src/osg/src/osgPlugins/dxf/dxfBlock.cpp \
../src/osg/src/osgPlugins/dxf/dxfEntity.cpp \
../src/osg/src/osgPlugins/dxf/dxfFile.cpp \
../src/osg/src/osgPlugins/dxf/dxfReader.cpp \
../src/osg/src/osgPlugins/dxf/dxfSection.cpp \
../src/osg/src/osgPlugins/dxf/dxfTable.cpp \
../src/osg/src/osgPlugins/dxf/scene.cpp 

OBJS += \
./src/osg/src/osgPlugins/dxf/DXFWriterNodeVisitor.o \
./src/osg/src/osgPlugins/dxf/ReaderWriterDXF.o \
./src/osg/src/osgPlugins/dxf/aci.o \
./src/osg/src/osgPlugins/dxf/dxfBlock.o \
./src/osg/src/osgPlugins/dxf/dxfEntity.o \
./src/osg/src/osgPlugins/dxf/dxfFile.o \
./src/osg/src/osgPlugins/dxf/dxfReader.o \
./src/osg/src/osgPlugins/dxf/dxfSection.o \
./src/osg/src/osgPlugins/dxf/dxfTable.o \
./src/osg/src/osgPlugins/dxf/scene.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/dxf/DXFWriterNodeVisitor.d \
./src/osg/src/osgPlugins/dxf/ReaderWriterDXF.d \
./src/osg/src/osgPlugins/dxf/aci.d \
./src/osg/src/osgPlugins/dxf/dxfBlock.d \
./src/osg/src/osgPlugins/dxf/dxfEntity.d \
./src/osg/src/osgPlugins/dxf/dxfFile.d \
./src/osg/src/osgPlugins/dxf/dxfReader.d \
./src/osg/src/osgPlugins/dxf/dxfSection.d \
./src/osg/src/osgPlugins/dxf/dxfTable.d \
./src/osg/src/osgPlugins/dxf/scene.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/dxf/%.o: ../src/osg/src/osgPlugins/dxf/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


