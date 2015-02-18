################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgSim/AzimElevationSector.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/AzimSector.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/BlinkSequence.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/ConeSector.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/DOFTransform.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/DirectionalSector.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/ElevationSector.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/Impostor.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/LightPointNode.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/LightPointSystem.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/MultiSwitch.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/ObjectRecordData.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/OverlayNode.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/ScalarBar.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/Sector.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/SequenceGroup.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/ShapeAttributeList.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/SphereSegment.cpp \
../src/osg/src/osgWrappers/serializers/osgSim/VisibilityGroup.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgSim/AzimElevationSector.o \
./src/osg/src/osgWrappers/serializers/osgSim/AzimSector.o \
./src/osg/src/osgWrappers/serializers/osgSim/BlinkSequence.o \
./src/osg/src/osgWrappers/serializers/osgSim/ConeSector.o \
./src/osg/src/osgWrappers/serializers/osgSim/DOFTransform.o \
./src/osg/src/osgWrappers/serializers/osgSim/DirectionalSector.o \
./src/osg/src/osgWrappers/serializers/osgSim/ElevationSector.o \
./src/osg/src/osgWrappers/serializers/osgSim/Impostor.o \
./src/osg/src/osgWrappers/serializers/osgSim/LibraryWrapper.o \
./src/osg/src/osgWrappers/serializers/osgSim/LightPointNode.o \
./src/osg/src/osgWrappers/serializers/osgSim/LightPointSystem.o \
./src/osg/src/osgWrappers/serializers/osgSim/MultiSwitch.o \
./src/osg/src/osgWrappers/serializers/osgSim/ObjectRecordData.o \
./src/osg/src/osgWrappers/serializers/osgSim/OverlayNode.o \
./src/osg/src/osgWrappers/serializers/osgSim/ScalarBar.o \
./src/osg/src/osgWrappers/serializers/osgSim/Sector.o \
./src/osg/src/osgWrappers/serializers/osgSim/SequenceGroup.o \
./src/osg/src/osgWrappers/serializers/osgSim/ShapeAttributeList.o \
./src/osg/src/osgWrappers/serializers/osgSim/SphereSegment.o \
./src/osg/src/osgWrappers/serializers/osgSim/VisibilityGroup.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgSim/AzimElevationSector.d \
./src/osg/src/osgWrappers/serializers/osgSim/AzimSector.d \
./src/osg/src/osgWrappers/serializers/osgSim/BlinkSequence.d \
./src/osg/src/osgWrappers/serializers/osgSim/ConeSector.d \
./src/osg/src/osgWrappers/serializers/osgSim/DOFTransform.d \
./src/osg/src/osgWrappers/serializers/osgSim/DirectionalSector.d \
./src/osg/src/osgWrappers/serializers/osgSim/ElevationSector.d \
./src/osg/src/osgWrappers/serializers/osgSim/Impostor.d \
./src/osg/src/osgWrappers/serializers/osgSim/LibraryWrapper.d \
./src/osg/src/osgWrappers/serializers/osgSim/LightPointNode.d \
./src/osg/src/osgWrappers/serializers/osgSim/LightPointSystem.d \
./src/osg/src/osgWrappers/serializers/osgSim/MultiSwitch.d \
./src/osg/src/osgWrappers/serializers/osgSim/ObjectRecordData.d \
./src/osg/src/osgWrappers/serializers/osgSim/OverlayNode.d \
./src/osg/src/osgWrappers/serializers/osgSim/ScalarBar.d \
./src/osg/src/osgWrappers/serializers/osgSim/Sector.d \
./src/osg/src/osgWrappers/serializers/osgSim/SequenceGroup.d \
./src/osg/src/osgWrappers/serializers/osgSim/ShapeAttributeList.d \
./src/osg/src/osgWrappers/serializers/osgSim/SphereSegment.d \
./src/osg/src/osgWrappers/serializers/osgSim/VisibilityGroup.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgSim/%.o: ../src/osg/src/osgWrappers/serializers/osgSim/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


