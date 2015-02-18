################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgTerrain/CompositeLayer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/ContourLayer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/DisplacementMappingTechnique.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/GeometryTechnique.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/HeightFieldLayer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/ImageLayer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/Layer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/Locator.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/ProxyLayer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/SwitchLayer.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/Terrain.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/TerrainTechnique.cpp \
../src/osg/src/osgWrappers/serializers/osgTerrain/TerrainTile.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgTerrain/CompositeLayer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/ContourLayer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/DisplacementMappingTechnique.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/GeometryTechnique.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/HeightFieldLayer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/ImageLayer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/Layer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/LibraryWrapper.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/Locator.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/ProxyLayer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/SwitchLayer.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/Terrain.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/TerrainTechnique.o \
./src/osg/src/osgWrappers/serializers/osgTerrain/TerrainTile.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgTerrain/CompositeLayer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/ContourLayer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/DisplacementMappingTechnique.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/GeometryTechnique.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/HeightFieldLayer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/ImageLayer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/Layer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/LibraryWrapper.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/Locator.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/ProxyLayer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/SwitchLayer.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/Terrain.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/TerrainTechnique.d \
./src/osg/src/osgWrappers/serializers/osgTerrain/TerrainTile.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgTerrain/%.o: ../src/osg/src/osgWrappers/serializers/osgTerrain/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


