################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgGA/AnimationPathManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/DriveManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/EventVisitor.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/FlightManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/GUIEventAdapter.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/KeySwitchMatrixManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/MultiTouchTrackballManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/StateSetManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/TerrainManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/TouchData.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/TrackballManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/UFOManipulator.cpp \
../src/osg/src/osgWrappers/serializers/osgGA/Widget.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgGA/AnimationPathManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/DriveManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/EventVisitor.o \
./src/osg/src/osgWrappers/serializers/osgGA/FlightManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/GUIEventAdapter.o \
./src/osg/src/osgWrappers/serializers/osgGA/KeySwitchMatrixManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/MultiTouchTrackballManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/StateSetManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/TerrainManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/TouchData.o \
./src/osg/src/osgWrappers/serializers/osgGA/TrackballManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/UFOManipulator.o \
./src/osg/src/osgWrappers/serializers/osgGA/Widget.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgGA/AnimationPathManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/DriveManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/EventVisitor.d \
./src/osg/src/osgWrappers/serializers/osgGA/FlightManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/GUIEventAdapter.d \
./src/osg/src/osgWrappers/serializers/osgGA/KeySwitchMatrixManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/MultiTouchTrackballManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/StateSetManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/TerrainManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/TouchData.d \
./src/osg/src/osgWrappers/serializers/osgGA/TrackballManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/UFOManipulator.d \
./src/osg/src/osgWrappers/serializers/osgGA/Widget.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgGA/%.o: ../src/osg/src/osgWrappers/serializers/osgGA/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


