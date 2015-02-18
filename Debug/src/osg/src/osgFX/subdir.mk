################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgFX/AnisotropicLighting.cpp \
../src/osg/src/osgFX/BumpMapping.cpp \
../src/osg/src/osgFX/Cartoon.cpp \
../src/osg/src/osgFX/Effect.cpp \
../src/osg/src/osgFX/MultiTextureControl.cpp \
../src/osg/src/osgFX/Outline.cpp \
../src/osg/src/osgFX/Registry.cpp \
../src/osg/src/osgFX/Scribe.cpp \
../src/osg/src/osgFX/SpecularHighlights.cpp \
../src/osg/src/osgFX/Technique.cpp \
../src/osg/src/osgFX/Validator.cpp \
../src/osg/src/osgFX/Version.cpp 

OBJS += \
./src/osg/src/osgFX/AnisotropicLighting.o \
./src/osg/src/osgFX/BumpMapping.o \
./src/osg/src/osgFX/Cartoon.o \
./src/osg/src/osgFX/Effect.o \
./src/osg/src/osgFX/MultiTextureControl.o \
./src/osg/src/osgFX/Outline.o \
./src/osg/src/osgFX/Registry.o \
./src/osg/src/osgFX/Scribe.o \
./src/osg/src/osgFX/SpecularHighlights.o \
./src/osg/src/osgFX/Technique.o \
./src/osg/src/osgFX/Validator.o \
./src/osg/src/osgFX/Version.o 

CPP_DEPS += \
./src/osg/src/osgFX/AnisotropicLighting.d \
./src/osg/src/osgFX/BumpMapping.d \
./src/osg/src/osgFX/Cartoon.d \
./src/osg/src/osgFX/Effect.d \
./src/osg/src/osgFX/MultiTextureControl.d \
./src/osg/src/osgFX/Outline.d \
./src/osg/src/osgFX/Registry.d \
./src/osg/src/osgFX/Scribe.d \
./src/osg/src/osgFX/SpecularHighlights.d \
./src/osg/src/osgFX/Technique.d \
./src/osg/src/osgFX/Validator.d \
./src/osg/src/osgFX/Version.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgFX/%.o: ../src/osg/src/osgFX/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


