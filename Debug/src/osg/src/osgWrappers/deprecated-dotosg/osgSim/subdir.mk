################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_BlinkSequence.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_DOFTransform.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_Impostor.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_LightPoint.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_LightPointNode.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_MultiSwitch.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_ObjectRecordData.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_OverlayNode.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_Sector.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_ShapeAttribute.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_VisibilityGroup.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/LibraryWrapper.cpp 

OBJS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_BlinkSequence.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_DOFTransform.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_Impostor.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_LightPoint.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_LightPointNode.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_MultiSwitch.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_ObjectRecordData.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_OverlayNode.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_Sector.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_ShapeAttribute.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_VisibilityGroup.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/LibraryWrapper.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_BlinkSequence.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_DOFTransform.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_Impostor.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_LightPoint.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_LightPointNode.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_MultiSwitch.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_ObjectRecordData.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_OverlayNode.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_Sector.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_ShapeAttribute.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/IO_VisibilityGroup.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgSim/LibraryWrapper.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/deprecated-dotosg/osgSim/%.o: ../src/osg/src/osgWrappers/deprecated-dotosg/osgSim/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


