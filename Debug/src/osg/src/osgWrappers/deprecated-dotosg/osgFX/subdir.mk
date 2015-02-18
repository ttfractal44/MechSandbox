################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_AnisotropicLighting.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_BumpMapping.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Cartoon.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Effect.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_MultiTextureControl.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Outline.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Scribe.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_SpecularHighlights.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/LibraryWrapper.cpp 

OBJS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_AnisotropicLighting.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_BumpMapping.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Cartoon.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Effect.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_MultiTextureControl.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Outline.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Scribe.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_SpecularHighlights.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/LibraryWrapper.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_AnisotropicLighting.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_BumpMapping.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Cartoon.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Effect.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_MultiTextureControl.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Outline.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_Scribe.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/IO_SpecularHighlights.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgFX/LibraryWrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/deprecated-dotosg/osgFX/%.o: ../src/osg/src/osgWrappers/deprecated-dotosg/osgFX/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


