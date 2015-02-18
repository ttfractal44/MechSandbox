################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgTerrain/DisplacementMappingTechnique.cpp \
../src/osg/src/osgTerrain/GeometryPool.cpp \
../src/osg/src/osgTerrain/GeometryTechnique.cpp \
../src/osg/src/osgTerrain/Layer.cpp \
../src/osg/src/osgTerrain/Locator.cpp \
../src/osg/src/osgTerrain/Terrain.cpp \
../src/osg/src/osgTerrain/TerrainTechnique.cpp \
../src/osg/src/osgTerrain/TerrainTile.cpp \
../src/osg/src/osgTerrain/Version.cpp 

OBJS += \
./src/osg/src/osgTerrain/DisplacementMappingTechnique.o \
./src/osg/src/osgTerrain/GeometryPool.o \
./src/osg/src/osgTerrain/GeometryTechnique.o \
./src/osg/src/osgTerrain/Layer.o \
./src/osg/src/osgTerrain/Locator.o \
./src/osg/src/osgTerrain/Terrain.o \
./src/osg/src/osgTerrain/TerrainTechnique.o \
./src/osg/src/osgTerrain/TerrainTile.o \
./src/osg/src/osgTerrain/Version.o 

CPP_DEPS += \
./src/osg/src/osgTerrain/DisplacementMappingTechnique.d \
./src/osg/src/osgTerrain/GeometryPool.d \
./src/osg/src/osgTerrain/GeometryTechnique.d \
./src/osg/src/osgTerrain/Layer.d \
./src/osg/src/osgTerrain/Locator.d \
./src/osg/src/osgTerrain/Terrain.d \
./src/osg/src/osgTerrain/TerrainTechnique.d \
./src/osg/src/osgTerrain/TerrainTile.d \
./src/osg/src/osgTerrain/Version.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgTerrain/%.o: ../src/osg/src/osgTerrain/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


