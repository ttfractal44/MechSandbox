################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgShadow/ConvexPolyhedron.cpp \
../src/osg/src/osgShadow/DebugShadowMap.cpp \
../src/osg/src/osgShadow/LightSpacePerspectiveShadowMap.cpp \
../src/osg/src/osgShadow/MinimalCullBoundsShadowMap.cpp \
../src/osg/src/osgShadow/MinimalDrawBoundsShadowMap.cpp \
../src/osg/src/osgShadow/MinimalShadowMap.cpp \
../src/osg/src/osgShadow/OccluderGeometry.cpp \
../src/osg/src/osgShadow/ParallelSplitShadowMap.cpp \
../src/osg/src/osgShadow/ShadowMap.cpp \
../src/osg/src/osgShadow/ShadowSettings.cpp \
../src/osg/src/osgShadow/ShadowTechnique.cpp \
../src/osg/src/osgShadow/ShadowTexture.cpp \
../src/osg/src/osgShadow/ShadowVolume.cpp \
../src/osg/src/osgShadow/ShadowedScene.cpp \
../src/osg/src/osgShadow/SoftShadowMap.cpp \
../src/osg/src/osgShadow/StandardShadowMap.cpp \
../src/osg/src/osgShadow/Version.cpp \
../src/osg/src/osgShadow/ViewDependentShadowMap.cpp \
../src/osg/src/osgShadow/ViewDependentShadowTechnique.cpp 

OBJS += \
./src/osg/src/osgShadow/ConvexPolyhedron.o \
./src/osg/src/osgShadow/DebugShadowMap.o \
./src/osg/src/osgShadow/LightSpacePerspectiveShadowMap.o \
./src/osg/src/osgShadow/MinimalCullBoundsShadowMap.o \
./src/osg/src/osgShadow/MinimalDrawBoundsShadowMap.o \
./src/osg/src/osgShadow/MinimalShadowMap.o \
./src/osg/src/osgShadow/OccluderGeometry.o \
./src/osg/src/osgShadow/ParallelSplitShadowMap.o \
./src/osg/src/osgShadow/ShadowMap.o \
./src/osg/src/osgShadow/ShadowSettings.o \
./src/osg/src/osgShadow/ShadowTechnique.o \
./src/osg/src/osgShadow/ShadowTexture.o \
./src/osg/src/osgShadow/ShadowVolume.o \
./src/osg/src/osgShadow/ShadowedScene.o \
./src/osg/src/osgShadow/SoftShadowMap.o \
./src/osg/src/osgShadow/StandardShadowMap.o \
./src/osg/src/osgShadow/Version.o \
./src/osg/src/osgShadow/ViewDependentShadowMap.o \
./src/osg/src/osgShadow/ViewDependentShadowTechnique.o 

CPP_DEPS += \
./src/osg/src/osgShadow/ConvexPolyhedron.d \
./src/osg/src/osgShadow/DebugShadowMap.d \
./src/osg/src/osgShadow/LightSpacePerspectiveShadowMap.d \
./src/osg/src/osgShadow/MinimalCullBoundsShadowMap.d \
./src/osg/src/osgShadow/MinimalDrawBoundsShadowMap.d \
./src/osg/src/osgShadow/MinimalShadowMap.d \
./src/osg/src/osgShadow/OccluderGeometry.d \
./src/osg/src/osgShadow/ParallelSplitShadowMap.d \
./src/osg/src/osgShadow/ShadowMap.d \
./src/osg/src/osgShadow/ShadowSettings.d \
./src/osg/src/osgShadow/ShadowTechnique.d \
./src/osg/src/osgShadow/ShadowTexture.d \
./src/osg/src/osgShadow/ShadowVolume.d \
./src/osg/src/osgShadow/ShadowedScene.d \
./src/osg/src/osgShadow/SoftShadowMap.d \
./src/osg/src/osgShadow/StandardShadowMap.d \
./src/osg/src/osgShadow/Version.d \
./src/osg/src/osgShadow/ViewDependentShadowMap.d \
./src/osg/src/osgShadow/ViewDependentShadowTechnique.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgShadow/%.o: ../src/osg/src/osgShadow/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


