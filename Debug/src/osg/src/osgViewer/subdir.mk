################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgViewer/CompositeViewer.cpp \
../src/osg/src/osgViewer/GraphicsWindow.cpp \
../src/osg/src/osgViewer/GraphicsWindowCarbon.cpp \
../src/osg/src/osgViewer/GraphicsWindowWin32.cpp \
../src/osg/src/osgViewer/GraphicsWindowX11.cpp \
../src/osg/src/osgViewer/HelpHandler.cpp \
../src/osg/src/osgViewer/Keystone.cpp \
../src/osg/src/osgViewer/PixelBufferCarbon.cpp \
../src/osg/src/osgViewer/PixelBufferWin32.cpp \
../src/osg/src/osgViewer/PixelBufferX11.cpp \
../src/osg/src/osgViewer/Renderer.cpp \
../src/osg/src/osgViewer/Scene.cpp \
../src/osg/src/osgViewer/ScreenCaptureHandler.cpp \
../src/osg/src/osgViewer/StatsHandler.cpp \
../src/osg/src/osgViewer/Version.cpp \
../src/osg/src/osgViewer/View.cpp \
../src/osg/src/osgViewer/Viewer.cpp \
../src/osg/src/osgViewer/ViewerBase.cpp \
../src/osg/src/osgViewer/ViewerEventHandlers.cpp 

OBJS += \
./src/osg/src/osgViewer/CompositeViewer.o \
./src/osg/src/osgViewer/GraphicsWindow.o \
./src/osg/src/osgViewer/GraphicsWindowCarbon.o \
./src/osg/src/osgViewer/GraphicsWindowWin32.o \
./src/osg/src/osgViewer/GraphicsWindowX11.o \
./src/osg/src/osgViewer/HelpHandler.o \
./src/osg/src/osgViewer/Keystone.o \
./src/osg/src/osgViewer/PixelBufferCarbon.o \
./src/osg/src/osgViewer/PixelBufferWin32.o \
./src/osg/src/osgViewer/PixelBufferX11.o \
./src/osg/src/osgViewer/Renderer.o \
./src/osg/src/osgViewer/Scene.o \
./src/osg/src/osgViewer/ScreenCaptureHandler.o \
./src/osg/src/osgViewer/StatsHandler.o \
./src/osg/src/osgViewer/Version.o \
./src/osg/src/osgViewer/View.o \
./src/osg/src/osgViewer/Viewer.o \
./src/osg/src/osgViewer/ViewerBase.o \
./src/osg/src/osgViewer/ViewerEventHandlers.o 

CPP_DEPS += \
./src/osg/src/osgViewer/CompositeViewer.d \
./src/osg/src/osgViewer/GraphicsWindow.d \
./src/osg/src/osgViewer/GraphicsWindowCarbon.d \
./src/osg/src/osgViewer/GraphicsWindowWin32.d \
./src/osg/src/osgViewer/GraphicsWindowX11.d \
./src/osg/src/osgViewer/HelpHandler.d \
./src/osg/src/osgViewer/Keystone.d \
./src/osg/src/osgViewer/PixelBufferCarbon.d \
./src/osg/src/osgViewer/PixelBufferWin32.d \
./src/osg/src/osgViewer/PixelBufferX11.d \
./src/osg/src/osgViewer/Renderer.d \
./src/osg/src/osgViewer/Scene.d \
./src/osg/src/osgViewer/ScreenCaptureHandler.d \
./src/osg/src/osgViewer/StatsHandler.d \
./src/osg/src/osgViewer/Version.d \
./src/osg/src/osgViewer/View.d \
./src/osg/src/osgViewer/Viewer.d \
./src/osg/src/osgViewer/ViewerBase.d \
./src/osg/src/osgViewer/ViewerEventHandlers.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgViewer/%.o: ../src/osg/src/osgViewer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


