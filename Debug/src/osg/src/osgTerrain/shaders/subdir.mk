################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_CCC_frag.cpp \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_CC_frag.cpp \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_C_frag.cpp \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_flat_vert.cpp \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_frag.cpp \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_geom.cpp \
../src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_vert.cpp 

OBJS += \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_CCC_frag.o \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_CC_frag.o \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_C_frag.o \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_flat_vert.o \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_frag.o \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_geom.o \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_vert.o 

CPP_DEPS += \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_CCC_frag.d \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_CC_frag.d \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_C_frag.d \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_flat_vert.d \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_frag.d \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_geom.d \
./src/osg/src/osgTerrain/shaders/terrain_displacement_mapping_vert.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgTerrain/shaders/%.o: ../src/osg/src/osgTerrain/shaders/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


