################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/dae/ReaderWriterDAE.cpp \
../src/osg/src/osgPlugins/dae/daeRAnimations.cpp \
../src/osg/src/osgPlugins/dae/daeRGeometry.cpp \
../src/osg/src/osgPlugins/dae/daeRMaterials.cpp \
../src/osg/src/osgPlugins/dae/daeRSceneObjects.cpp \
../src/osg/src/osgPlugins/dae/daeRSkinning.cpp \
../src/osg/src/osgPlugins/dae/daeRTransforms.cpp \
../src/osg/src/osgPlugins/dae/daeReader.cpp \
../src/osg/src/osgPlugins/dae/daeWAnimations.cpp \
../src/osg/src/osgPlugins/dae/daeWGeometry.cpp \
../src/osg/src/osgPlugins/dae/daeWMaterials.cpp \
../src/osg/src/osgPlugins/dae/daeWSceneObjects.cpp \
../src/osg/src/osgPlugins/dae/daeWTransforms.cpp \
../src/osg/src/osgPlugins/dae/daeWriter.cpp \
../src/osg/src/osgPlugins/dae/domSourceReader.cpp 

OBJS += \
./src/osg/src/osgPlugins/dae/ReaderWriterDAE.o \
./src/osg/src/osgPlugins/dae/daeRAnimations.o \
./src/osg/src/osgPlugins/dae/daeRGeometry.o \
./src/osg/src/osgPlugins/dae/daeRMaterials.o \
./src/osg/src/osgPlugins/dae/daeRSceneObjects.o \
./src/osg/src/osgPlugins/dae/daeRSkinning.o \
./src/osg/src/osgPlugins/dae/daeRTransforms.o \
./src/osg/src/osgPlugins/dae/daeReader.o \
./src/osg/src/osgPlugins/dae/daeWAnimations.o \
./src/osg/src/osgPlugins/dae/daeWGeometry.o \
./src/osg/src/osgPlugins/dae/daeWMaterials.o \
./src/osg/src/osgPlugins/dae/daeWSceneObjects.o \
./src/osg/src/osgPlugins/dae/daeWTransforms.o \
./src/osg/src/osgPlugins/dae/daeWriter.o \
./src/osg/src/osgPlugins/dae/domSourceReader.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/dae/ReaderWriterDAE.d \
./src/osg/src/osgPlugins/dae/daeRAnimations.d \
./src/osg/src/osgPlugins/dae/daeRGeometry.d \
./src/osg/src/osgPlugins/dae/daeRMaterials.d \
./src/osg/src/osgPlugins/dae/daeRSceneObjects.d \
./src/osg/src/osgPlugins/dae/daeRSkinning.d \
./src/osg/src/osgPlugins/dae/daeRTransforms.d \
./src/osg/src/osgPlugins/dae/daeReader.d \
./src/osg/src/osgPlugins/dae/daeWAnimations.d \
./src/osg/src/osgPlugins/dae/daeWGeometry.d \
./src/osg/src/osgPlugins/dae/daeWMaterials.d \
./src/osg/src/osgPlugins/dae/daeWSceneObjects.d \
./src/osg/src/osgPlugins/dae/daeWTransforms.d \
./src/osg/src/osgPlugins/dae/daeWriter.d \
./src/osg/src/osgPlugins/dae/domSourceReader.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/dae/%.o: ../src/osg/src/osgPlugins/dae/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


