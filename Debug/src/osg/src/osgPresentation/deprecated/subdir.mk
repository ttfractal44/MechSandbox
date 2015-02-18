################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPresentation/deprecated/AnimationMaterial.cpp \
../src/osg/src/osgPresentation/deprecated/CompileSlideCallback.cpp \
../src/osg/src/osgPresentation/deprecated/KeyEventHandler.cpp \
../src/osg/src/osgPresentation/deprecated/PickEventHandler.cpp \
../src/osg/src/osgPresentation/deprecated/PropertyManager.cpp \
../src/osg/src/osgPresentation/deprecated/SlideEventHandler.cpp \
../src/osg/src/osgPresentation/deprecated/SlideShowConstructor.cpp \
../src/osg/src/osgPresentation/deprecated/Timeout.cpp 

OBJS += \
./src/osg/src/osgPresentation/deprecated/AnimationMaterial.o \
./src/osg/src/osgPresentation/deprecated/CompileSlideCallback.o \
./src/osg/src/osgPresentation/deprecated/KeyEventHandler.o \
./src/osg/src/osgPresentation/deprecated/PickEventHandler.o \
./src/osg/src/osgPresentation/deprecated/PropertyManager.o \
./src/osg/src/osgPresentation/deprecated/SlideEventHandler.o \
./src/osg/src/osgPresentation/deprecated/SlideShowConstructor.o \
./src/osg/src/osgPresentation/deprecated/Timeout.o 

CPP_DEPS += \
./src/osg/src/osgPresentation/deprecated/AnimationMaterial.d \
./src/osg/src/osgPresentation/deprecated/CompileSlideCallback.d \
./src/osg/src/osgPresentation/deprecated/KeyEventHandler.d \
./src/osg/src/osgPresentation/deprecated/PickEventHandler.d \
./src/osg/src/osgPresentation/deprecated/PropertyManager.d \
./src/osg/src/osgPresentation/deprecated/SlideEventHandler.d \
./src/osg/src/osgPresentation/deprecated/SlideShowConstructor.d \
./src/osg/src/osgPresentation/deprecated/Timeout.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPresentation/deprecated/%.o: ../src/osg/src/osgPresentation/deprecated/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


