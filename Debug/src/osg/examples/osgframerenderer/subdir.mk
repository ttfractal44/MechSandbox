################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/examples/osgframerenderer/CameraPathProperty.cpp \
../src/osg/examples/osgframerenderer/CameraProperty.cpp \
../src/osg/examples/osgframerenderer/CaptureSettings.cpp \
../src/osg/examples/osgframerenderer/EventProperty.cpp \
../src/osg/examples/osgframerenderer/UpdateProperty.cpp \
../src/osg/examples/osgframerenderer/osgframerenderer.cpp 

OBJS += \
./src/osg/examples/osgframerenderer/CameraPathProperty.o \
./src/osg/examples/osgframerenderer/CameraProperty.o \
./src/osg/examples/osgframerenderer/CaptureSettings.o \
./src/osg/examples/osgframerenderer/EventProperty.o \
./src/osg/examples/osgframerenderer/UpdateProperty.o \
./src/osg/examples/osgframerenderer/osgframerenderer.o 

CPP_DEPS += \
./src/osg/examples/osgframerenderer/CameraPathProperty.d \
./src/osg/examples/osgframerenderer/CameraProperty.d \
./src/osg/examples/osgframerenderer/CaptureSettings.d \
./src/osg/examples/osgframerenderer/EventProperty.d \
./src/osg/examples/osgframerenderer/UpdateProperty.d \
./src/osg/examples/osgframerenderer/osgframerenderer.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/examples/osgframerenderer/%.o: ../src/osg/examples/osgframerenderer/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


