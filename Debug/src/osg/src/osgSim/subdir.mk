################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgSim/BlinkSequence.cpp \
../src/osg/src/osgSim/ColorRange.cpp \
../src/osg/src/osgSim/DOFTransform.cpp \
../src/osg/src/osgSim/ElevationSlice.cpp \
../src/osg/src/osgSim/HeightAboveTerrain.cpp \
../src/osg/src/osgSim/Impostor.cpp \
../src/osg/src/osgSim/ImpostorSprite.cpp \
../src/osg/src/osgSim/InsertImpostorsVisitor.cpp \
../src/osg/src/osgSim/LightPoint.cpp \
../src/osg/src/osgSim/LightPointDrawable.cpp \
../src/osg/src/osgSim/LightPointNode.cpp \
../src/osg/src/osgSim/LightPointSpriteDrawable.cpp \
../src/osg/src/osgSim/LineOfSight.cpp \
../src/osg/src/osgSim/MultiSwitch.cpp \
../src/osg/src/osgSim/OverlayNode.cpp \
../src/osg/src/osgSim/ScalarBar.cpp \
../src/osg/src/osgSim/ScalarsToColors.cpp \
../src/osg/src/osgSim/Sector.cpp \
../src/osg/src/osgSim/ShapeAttribute.cpp \
../src/osg/src/osgSim/SphereSegment.cpp \
../src/osg/src/osgSim/Version.cpp \
../src/osg/src/osgSim/VisibilityGroup.cpp 

OBJS += \
./src/osg/src/osgSim/BlinkSequence.o \
./src/osg/src/osgSim/ColorRange.o \
./src/osg/src/osgSim/DOFTransform.o \
./src/osg/src/osgSim/ElevationSlice.o \
./src/osg/src/osgSim/HeightAboveTerrain.o \
./src/osg/src/osgSim/Impostor.o \
./src/osg/src/osgSim/ImpostorSprite.o \
./src/osg/src/osgSim/InsertImpostorsVisitor.o \
./src/osg/src/osgSim/LightPoint.o \
./src/osg/src/osgSim/LightPointDrawable.o \
./src/osg/src/osgSim/LightPointNode.o \
./src/osg/src/osgSim/LightPointSpriteDrawable.o \
./src/osg/src/osgSim/LineOfSight.o \
./src/osg/src/osgSim/MultiSwitch.o \
./src/osg/src/osgSim/OverlayNode.o \
./src/osg/src/osgSim/ScalarBar.o \
./src/osg/src/osgSim/ScalarsToColors.o \
./src/osg/src/osgSim/Sector.o \
./src/osg/src/osgSim/ShapeAttribute.o \
./src/osg/src/osgSim/SphereSegment.o \
./src/osg/src/osgSim/Version.o \
./src/osg/src/osgSim/VisibilityGroup.o 

CPP_DEPS += \
./src/osg/src/osgSim/BlinkSequence.d \
./src/osg/src/osgSim/ColorRange.d \
./src/osg/src/osgSim/DOFTransform.d \
./src/osg/src/osgSim/ElevationSlice.d \
./src/osg/src/osgSim/HeightAboveTerrain.d \
./src/osg/src/osgSim/Impostor.d \
./src/osg/src/osgSim/ImpostorSprite.d \
./src/osg/src/osgSim/InsertImpostorsVisitor.d \
./src/osg/src/osgSim/LightPoint.d \
./src/osg/src/osgSim/LightPointDrawable.d \
./src/osg/src/osgSim/LightPointNode.d \
./src/osg/src/osgSim/LightPointSpriteDrawable.d \
./src/osg/src/osgSim/LineOfSight.d \
./src/osg/src/osgSim/MultiSwitch.d \
./src/osg/src/osgSim/OverlayNode.d \
./src/osg/src/osgSim/ScalarBar.d \
./src/osg/src/osgSim/ScalarsToColors.d \
./src/osg/src/osgSim/Sector.d \
./src/osg/src/osgSim/ShapeAttribute.d \
./src/osg/src/osgSim/SphereSegment.d \
./src/osg/src/osgSim/Version.d \
./src/osg/src/osgSim/VisibilityGroup.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgSim/%.o: ../src/osg/src/osgSim/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


