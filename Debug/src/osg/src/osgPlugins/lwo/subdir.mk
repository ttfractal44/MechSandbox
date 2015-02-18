################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/lwo/Block.cpp \
../src/osg/src/osgPlugins/lwo/Clip.cpp \
../src/osg/src/osgPlugins/lwo/Converter.cpp \
../src/osg/src/osgPlugins/lwo/Object.cpp \
../src/osg/src/osgPlugins/lwo/Polygon.cpp \
../src/osg/src/osgPlugins/lwo/ReaderWriterLWO.cpp \
../src/osg/src/osgPlugins/lwo/Surface.cpp \
../src/osg/src/osgPlugins/lwo/Tessellator.cpp \
../src/osg/src/osgPlugins/lwo/Unit.cpp \
../src/osg/src/osgPlugins/lwo/VertexMap.cpp \
../src/osg/src/osgPlugins/lwo/old_Lwo2.cpp \
../src/osg/src/osgPlugins/lwo/old_Lwo2Layer.cpp \
../src/osg/src/osgPlugins/lwo/old_lw.cpp 

OBJS += \
./src/osg/src/osgPlugins/lwo/Block.o \
./src/osg/src/osgPlugins/lwo/Clip.o \
./src/osg/src/osgPlugins/lwo/Converter.o \
./src/osg/src/osgPlugins/lwo/Object.o \
./src/osg/src/osgPlugins/lwo/Polygon.o \
./src/osg/src/osgPlugins/lwo/ReaderWriterLWO.o \
./src/osg/src/osgPlugins/lwo/Surface.o \
./src/osg/src/osgPlugins/lwo/Tessellator.o \
./src/osg/src/osgPlugins/lwo/Unit.o \
./src/osg/src/osgPlugins/lwo/VertexMap.o \
./src/osg/src/osgPlugins/lwo/old_Lwo2.o \
./src/osg/src/osgPlugins/lwo/old_Lwo2Layer.o \
./src/osg/src/osgPlugins/lwo/old_lw.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/lwo/Block.d \
./src/osg/src/osgPlugins/lwo/Clip.d \
./src/osg/src/osgPlugins/lwo/Converter.d \
./src/osg/src/osgPlugins/lwo/Object.d \
./src/osg/src/osgPlugins/lwo/Polygon.d \
./src/osg/src/osgPlugins/lwo/ReaderWriterLWO.d \
./src/osg/src/osgPlugins/lwo/Surface.d \
./src/osg/src/osgPlugins/lwo/Tessellator.d \
./src/osg/src/osgPlugins/lwo/Unit.d \
./src/osg/src/osgPlugins/lwo/VertexMap.d \
./src/osg/src/osgPlugins/lwo/old_Lwo2.d \
./src/osg/src/osgPlugins/lwo/old_Lwo2Layer.d \
./src/osg/src/osgPlugins/lwo/old_lw.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/lwo/%.o: ../src/osg/src/osgPlugins/lwo/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


