################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/CompositeLayer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/GeometryTechnique.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/HeightFieldLayer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/ImageLayer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Layer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Locator.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/SwitchLayer.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Terrain.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/TerrainTile.cpp 

OBJS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/CompositeLayer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/GeometryTechnique.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/HeightFieldLayer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/ImageLayer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Layer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/LibraryWrapper.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Locator.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/SwitchLayer.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Terrain.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/TerrainTile.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/CompositeLayer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/GeometryTechnique.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/HeightFieldLayer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/ImageLayer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Layer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/LibraryWrapper.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Locator.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/SwitchLayer.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/Terrain.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/TerrainTile.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/%.o: ../src/osg/src/osgWrappers/deprecated-dotosg/osgTerrain/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


