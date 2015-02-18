################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWidget/Box.cpp \
../src/osg/src/osgWidget/Browser.cpp \
../src/osg/src/osgWidget/Canvas.cpp \
../src/osg/src/osgWidget/Frame.cpp \
../src/osg/src/osgWidget/Input.cpp \
../src/osg/src/osgWidget/Label.cpp \
../src/osg/src/osgWidget/Lua.cpp \
../src/osg/src/osgWidget/PdfReader.cpp \
../src/osg/src/osgWidget/Python.cpp \
../src/osg/src/osgWidget/StyleManager.cpp \
../src/osg/src/osgWidget/Table.cpp \
../src/osg/src/osgWidget/Util.cpp \
../src/osg/src/osgWidget/Version.cpp \
../src/osg/src/osgWidget/ViewerEventHandlers.cpp \
../src/osg/src/osgWidget/VncClient.cpp \
../src/osg/src/osgWidget/Widget.cpp \
../src/osg/src/osgWidget/Window.cpp \
../src/osg/src/osgWidget/WindowManager.cpp 

OBJS += \
./src/osg/src/osgWidget/Box.o \
./src/osg/src/osgWidget/Browser.o \
./src/osg/src/osgWidget/Canvas.o \
./src/osg/src/osgWidget/Frame.o \
./src/osg/src/osgWidget/Input.o \
./src/osg/src/osgWidget/Label.o \
./src/osg/src/osgWidget/Lua.o \
./src/osg/src/osgWidget/PdfReader.o \
./src/osg/src/osgWidget/Python.o \
./src/osg/src/osgWidget/StyleManager.o \
./src/osg/src/osgWidget/Table.o \
./src/osg/src/osgWidget/Util.o \
./src/osg/src/osgWidget/Version.o \
./src/osg/src/osgWidget/ViewerEventHandlers.o \
./src/osg/src/osgWidget/VncClient.o \
./src/osg/src/osgWidget/Widget.o \
./src/osg/src/osgWidget/Window.o \
./src/osg/src/osgWidget/WindowManager.o 

CPP_DEPS += \
./src/osg/src/osgWidget/Box.d \
./src/osg/src/osgWidget/Browser.d \
./src/osg/src/osgWidget/Canvas.d \
./src/osg/src/osgWidget/Frame.d \
./src/osg/src/osgWidget/Input.d \
./src/osg/src/osgWidget/Label.d \
./src/osg/src/osgWidget/Lua.d \
./src/osg/src/osgWidget/PdfReader.d \
./src/osg/src/osgWidget/Python.d \
./src/osg/src/osgWidget/StyleManager.d \
./src/osg/src/osgWidget/Table.d \
./src/osg/src/osgWidget/Util.d \
./src/osg/src/osgWidget/Version.d \
./src/osg/src/osgWidget/ViewerEventHandlers.d \
./src/osg/src/osgWidget/VncClient.d \
./src/osg/src/osgWidget/Widget.d \
./src/osg/src/osgWidget/Window.d \
./src/osg/src/osgWidget/WindowManager.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWidget/%.o: ../src/osg/src/osgWidget/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


