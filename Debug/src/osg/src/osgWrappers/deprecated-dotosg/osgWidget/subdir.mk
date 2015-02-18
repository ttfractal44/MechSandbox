################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Box.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/EmbeddedWindow.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Frame.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Input.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Label.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/LibraryWrapper.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Table.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Widget.cpp \
../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/WindowManager.cpp 

OBJS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Box.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/EmbeddedWindow.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Frame.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Input.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Label.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/LibraryWrapper.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Table.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Widget.o \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/WindowManager.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Box.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/EmbeddedWindow.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Frame.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Input.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Label.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/LibraryWrapper.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Table.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/Widget.d \
./src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/WindowManager.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/%.o: ../src/osg/src/osgWrappers/deprecated-dotosg/osgWidget/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


