################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowMap.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowTechnique.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowTexture.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowVolume.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowedScene.cpp 

OBJS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/LibraryWrapper.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowMap.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowTechnique.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowTexture.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowVolume.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowedScene.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/LibraryWrapper.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowMap.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowTechnique.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowTexture.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowVolume.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/ShadowedScene.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/%.o: ../src/osg/src/osgWrappers/deprecated-dotosg/osgShadow/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

