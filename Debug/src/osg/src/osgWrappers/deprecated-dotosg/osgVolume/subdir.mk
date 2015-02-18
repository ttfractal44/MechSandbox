################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/CompositeProperty.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/FixedFunctionTechnique.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/ImageLayer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Layer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Locator.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Property.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/PropertyAdjustmentCallback.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/RayTracedTechnique.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/ScalarProperty.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/SwitchProperty.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/TransferFunctionProperty.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Volume.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/VolumeTile.cpp 

OBJS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/CompositeProperty.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/FixedFunctionTechnique.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/ImageLayer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Layer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/LibraryWrapper.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Locator.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Property.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/PropertyAdjustmentCallback.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/RayTracedTechnique.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/ScalarProperty.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/SwitchProperty.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/TransferFunctionProperty.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Volume.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/VolumeTile.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/CompositeProperty.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/FixedFunctionTechnique.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/ImageLayer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Layer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/LibraryWrapper.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Locator.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Property.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/PropertyAdjustmentCallback.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/RayTracedTechnique.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/ScalarProperty.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/SwitchProperty.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/TransferFunctionProperty.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/Volume.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/VolumeTile.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/%.o: ../src/osg/src/osgWrappers/deprecated-dotosg/osgVolume/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


