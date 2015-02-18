################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgGA/AnimationPathManipulator.cpp \
../src/osg/src/osgGA/CameraManipulator.cpp \
../src/osg/src/osgGA/CameraViewSwitchManipulator.cpp \
../src/osg/src/osgGA/Device.cpp \
../src/osg/src/osgGA/DriveManipulator.cpp \
../src/osg/src/osgGA/Event.cpp \
../src/osg/src/osgGA/EventHandler.cpp \
../src/osg/src/osgGA/EventQueue.cpp \
../src/osg/src/osgGA/EventVisitor.cpp \
../src/osg/src/osgGA/FirstPersonManipulator.cpp \
../src/osg/src/osgGA/FlightManipulator.cpp \
../src/osg/src/osgGA/GUIEventAdapter.cpp \
../src/osg/src/osgGA/GUIEventHandler.cpp \
../src/osg/src/osgGA/KeySwitchMatrixManipulator.cpp \
../src/osg/src/osgGA/MultiTouchTrackballManipulator.cpp \
../src/osg/src/osgGA/NodeTrackerManipulator.cpp \
../src/osg/src/osgGA/OrbitManipulator.cpp \
../src/osg/src/osgGA/SphericalManipulator.cpp \
../src/osg/src/osgGA/StandardManipulator.cpp \
../src/osg/src/osgGA/StateSetManipulator.cpp \
../src/osg/src/osgGA/TerrainManipulator.cpp \
../src/osg/src/osgGA/TrackballManipulator.cpp \
../src/osg/src/osgGA/UFOManipulator.cpp \
../src/osg/src/osgGA/Version.cpp \
../src/osg/src/osgGA/Widget.cpp 

OBJS += \
./src/osg/src/osgGA/AnimationPathManipulator.o \
./src/osg/src/osgGA/CameraManipulator.o \
./src/osg/src/osgGA/CameraViewSwitchManipulator.o \
./src/osg/src/osgGA/Device.o \
./src/osg/src/osgGA/DriveManipulator.o \
./src/osg/src/osgGA/Event.o \
./src/osg/src/osgGA/EventHandler.o \
./src/osg/src/osgGA/EventQueue.o \
./src/osg/src/osgGA/EventVisitor.o \
./src/osg/src/osgGA/FirstPersonManipulator.o \
./src/osg/src/osgGA/FlightManipulator.o \
./src/osg/src/osgGA/GUIEventAdapter.o \
./src/osg/src/osgGA/GUIEventHandler.o \
./src/osg/src/osgGA/KeySwitchMatrixManipulator.o \
./src/osg/src/osgGA/MultiTouchTrackballManipulator.o \
./src/osg/src/osgGA/NodeTrackerManipulator.o \
./src/osg/src/osgGA/OrbitManipulator.o \
./src/osg/src/osgGA/SphericalManipulator.o \
./src/osg/src/osgGA/StandardManipulator.o \
./src/osg/src/osgGA/StateSetManipulator.o \
./src/osg/src/osgGA/TerrainManipulator.o \
./src/osg/src/osgGA/TrackballManipulator.o \
./src/osg/src/osgGA/UFOManipulator.o \
./src/osg/src/osgGA/Version.o \
./src/osg/src/osgGA/Widget.o 

CPP_DEPS += \
./src/osg/src/osgGA/AnimationPathManipulator.d \
./src/osg/src/osgGA/CameraManipulator.d \
./src/osg/src/osgGA/CameraViewSwitchManipulator.d \
./src/osg/src/osgGA/Device.d \
./src/osg/src/osgGA/DriveManipulator.d \
./src/osg/src/osgGA/Event.d \
./src/osg/src/osgGA/EventHandler.d \
./src/osg/src/osgGA/EventQueue.d \
./src/osg/src/osgGA/EventVisitor.d \
./src/osg/src/osgGA/FirstPersonManipulator.d \
./src/osg/src/osgGA/FlightManipulator.d \
./src/osg/src/osgGA/GUIEventAdapter.d \
./src/osg/src/osgGA/GUIEventHandler.d \
./src/osg/src/osgGA/KeySwitchMatrixManipulator.d \
./src/osg/src/osgGA/MultiTouchTrackballManipulator.d \
./src/osg/src/osgGA/NodeTrackerManipulator.d \
./src/osg/src/osgGA/OrbitManipulator.d \
./src/osg/src/osgGA/SphericalManipulator.d \
./src/osg/src/osgGA/StandardManipulator.d \
./src/osg/src/osgGA/StateSetManipulator.d \
./src/osg/src/osgGA/TerrainManipulator.d \
./src/osg/src/osgGA/TrackballManipulator.d \
./src/osg/src/osgGA/UFOManipulator.d \
./src/osg/src/osgGA/Version.d \
./src/osg/src/osgGA/Widget.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgGA/%.o: ../src/osg/src/osgGA/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


