################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgManipulator/AntiSquish.cpp \
../src/osg/src/osgManipulator/Command.cpp \
../src/osg/src/osgManipulator/Constraint.cpp \
../src/osg/src/osgManipulator/Dragger.cpp \
../src/osg/src/osgManipulator/Projector.cpp \
../src/osg/src/osgManipulator/RotateCylinderDragger.cpp \
../src/osg/src/osgManipulator/RotateSphereDragger.cpp \
../src/osg/src/osgManipulator/Scale1DDragger.cpp \
../src/osg/src/osgManipulator/Scale2DDragger.cpp \
../src/osg/src/osgManipulator/ScaleAxisDragger.cpp \
../src/osg/src/osgManipulator/TabBoxDragger.cpp \
../src/osg/src/osgManipulator/TabBoxTrackballDragger.cpp \
../src/osg/src/osgManipulator/TabPlaneDragger.cpp \
../src/osg/src/osgManipulator/TabPlaneTrackballDragger.cpp \
../src/osg/src/osgManipulator/TrackballDragger.cpp \
../src/osg/src/osgManipulator/Translate1DDragger.cpp \
../src/osg/src/osgManipulator/Translate2DDragger.cpp \
../src/osg/src/osgManipulator/TranslateAxisDragger.cpp \
../src/osg/src/osgManipulator/TranslatePlaneDragger.cpp \
../src/osg/src/osgManipulator/Version.cpp 

OBJS += \
./src/osg/src/osgManipulator/AntiSquish.o \
./src/osg/src/osgManipulator/Command.o \
./src/osg/src/osgManipulator/Constraint.o \
./src/osg/src/osgManipulator/Dragger.o \
./src/osg/src/osgManipulator/Projector.o \
./src/osg/src/osgManipulator/RotateCylinderDragger.o \
./src/osg/src/osgManipulator/RotateSphereDragger.o \
./src/osg/src/osgManipulator/Scale1DDragger.o \
./src/osg/src/osgManipulator/Scale2DDragger.o \
./src/osg/src/osgManipulator/ScaleAxisDragger.o \
./src/osg/src/osgManipulator/TabBoxDragger.o \
./src/osg/src/osgManipulator/TabBoxTrackballDragger.o \
./src/osg/src/osgManipulator/TabPlaneDragger.o \
./src/osg/src/osgManipulator/TabPlaneTrackballDragger.o \
./src/osg/src/osgManipulator/TrackballDragger.o \
./src/osg/src/osgManipulator/Translate1DDragger.o \
./src/osg/src/osgManipulator/Translate2DDragger.o \
./src/osg/src/osgManipulator/TranslateAxisDragger.o \
./src/osg/src/osgManipulator/TranslatePlaneDragger.o \
./src/osg/src/osgManipulator/Version.o 

CPP_DEPS += \
./src/osg/src/osgManipulator/AntiSquish.d \
./src/osg/src/osgManipulator/Command.d \
./src/osg/src/osgManipulator/Constraint.d \
./src/osg/src/osgManipulator/Dragger.d \
./src/osg/src/osgManipulator/Projector.d \
./src/osg/src/osgManipulator/RotateCylinderDragger.d \
./src/osg/src/osgManipulator/RotateSphereDragger.d \
./src/osg/src/osgManipulator/Scale1DDragger.d \
./src/osg/src/osgManipulator/Scale2DDragger.d \
./src/osg/src/osgManipulator/ScaleAxisDragger.d \
./src/osg/src/osgManipulator/TabBoxDragger.d \
./src/osg/src/osgManipulator/TabBoxTrackballDragger.d \
./src/osg/src/osgManipulator/TabPlaneDragger.d \
./src/osg/src/osgManipulator/TabPlaneTrackballDragger.d \
./src/osg/src/osgManipulator/TrackballDragger.d \
./src/osg/src/osgManipulator/Translate1DDragger.d \
./src/osg/src/osgManipulator/Translate2DDragger.d \
./src/osg/src/osgManipulator/TranslateAxisDragger.d \
./src/osg/src/osgManipulator/TranslatePlaneDragger.d \
./src/osg/src/osgManipulator/Version.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgManipulator/%.o: ../src/osg/src/osgManipulator/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


