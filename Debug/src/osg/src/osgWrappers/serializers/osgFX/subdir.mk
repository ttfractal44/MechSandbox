################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgFX/AnisotropicLighting.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/BumpMapping.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/Cartoon.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/Effect.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/MultiTextureControl.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/Outline.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/Scribe.cpp \
../src/osg/src/osgWrappers/serializers/osgFX/SpecularHighlights.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgFX/AnisotropicLighting.o \
./src/osg/src/osgWrappers/serializers/osgFX/BumpMapping.o \
./src/osg/src/osgWrappers/serializers/osgFX/Cartoon.o \
./src/osg/src/osgWrappers/serializers/osgFX/Effect.o \
./src/osg/src/osgWrappers/serializers/osgFX/LibraryWrapper.o \
./src/osg/src/osgWrappers/serializers/osgFX/MultiTextureControl.o \
./src/osg/src/osgWrappers/serializers/osgFX/Outline.o \
./src/osg/src/osgWrappers/serializers/osgFX/Scribe.o \
./src/osg/src/osgWrappers/serializers/osgFX/SpecularHighlights.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgFX/AnisotropicLighting.d \
./src/osg/src/osgWrappers/serializers/osgFX/BumpMapping.d \
./src/osg/src/osgWrappers/serializers/osgFX/Cartoon.d \
./src/osg/src/osgWrappers/serializers/osgFX/Effect.d \
./src/osg/src/osgWrappers/serializers/osgFX/LibraryWrapper.d \
./src/osg/src/osgWrappers/serializers/osgFX/MultiTextureControl.d \
./src/osg/src/osgWrappers/serializers/osgFX/Outline.d \
./src/osg/src/osgWrappers/serializers/osgFX/Scribe.d \
./src/osg/src/osgWrappers/serializers/osgFX/SpecularHighlights.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgFX/%.o: ../src/osg/src/osgWrappers/serializers/osgFX/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


