################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgManipulator/AntiSquish.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/CompositeDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/Dragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/RotateCylinderDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/RotateSphereDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/Scale1DDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/Scale2DDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/ScaleAxisDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TabBoxDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TabBoxTrackballDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TabPlaneDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TabPlaneTrackballDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TrackballDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/Translate1DDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/Translate2DDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TranslateAxisDragger.cpp \
../src/osg/src/osgWrappers/serializers/osgManipulator/TranslatePlaneDragger.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgManipulator/AntiSquish.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/CompositeDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/Dragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/LibraryWrapper.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/RotateCylinderDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/RotateSphereDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/Scale1DDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/Scale2DDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/ScaleAxisDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabBoxDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabBoxTrackballDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabPlaneDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabPlaneTrackballDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TrackballDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/Translate1DDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/Translate2DDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TranslateAxisDragger.o \
./src/osg/src/osgWrappers/serializers/osgManipulator/TranslatePlaneDragger.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgManipulator/AntiSquish.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/CompositeDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/Dragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/LibraryWrapper.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/RotateCylinderDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/RotateSphereDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/Scale1DDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/Scale2DDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/ScaleAxisDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabBoxDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabBoxTrackballDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabPlaneDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TabPlaneTrackballDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TrackballDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/Translate1DDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/Translate2DDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TranslateAxisDragger.d \
./src/osg/src/osgWrappers/serializers/osgManipulator/TranslatePlaneDragger.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgManipulator/%.o: ../src/osg/src/osgWrappers/serializers/osgManipulator/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


