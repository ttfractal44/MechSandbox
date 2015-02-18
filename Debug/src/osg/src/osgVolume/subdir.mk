################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgVolume/FixedFunctionTechnique.cpp \
../src/osg/src/osgVolume/Layer.cpp \
../src/osg/src/osgVolume/Locator.cpp \
../src/osg/src/osgVolume/MultipassTechnique.cpp \
../src/osg/src/osgVolume/Property.cpp \
../src/osg/src/osgVolume/RayTracedTechnique.cpp \
../src/osg/src/osgVolume/Version.cpp \
../src/osg/src/osgVolume/Volume.cpp \
../src/osg/src/osgVolume/VolumeScene.cpp \
../src/osg/src/osgVolume/VolumeSettings.cpp \
../src/osg/src/osgVolume/VolumeTechnique.cpp \
../src/osg/src/osgVolume/VolumeTile.cpp 

OBJS += \
./src/osg/src/osgVolume/FixedFunctionTechnique.o \
./src/osg/src/osgVolume/Layer.o \
./src/osg/src/osgVolume/Locator.o \
./src/osg/src/osgVolume/MultipassTechnique.o \
./src/osg/src/osgVolume/Property.o \
./src/osg/src/osgVolume/RayTracedTechnique.o \
./src/osg/src/osgVolume/Version.o \
./src/osg/src/osgVolume/Volume.o \
./src/osg/src/osgVolume/VolumeScene.o \
./src/osg/src/osgVolume/VolumeSettings.o \
./src/osg/src/osgVolume/VolumeTechnique.o \
./src/osg/src/osgVolume/VolumeTile.o 

CPP_DEPS += \
./src/osg/src/osgVolume/FixedFunctionTechnique.d \
./src/osg/src/osgVolume/Layer.d \
./src/osg/src/osgVolume/Locator.d \
./src/osg/src/osgVolume/MultipassTechnique.d \
./src/osg/src/osgVolume/Property.d \
./src/osg/src/osgVolume/RayTracedTechnique.d \
./src/osg/src/osgVolume/Version.d \
./src/osg/src/osgVolume/Volume.d \
./src/osg/src/osgVolume/VolumeScene.d \
./src/osg/src/osgVolume/VolumeSettings.d \
./src/osg/src/osgVolume/VolumeTechnique.d \
./src/osg/src/osgVolume/VolumeTile.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgVolume/%.o: ../src/osg/src/osgVolume/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


