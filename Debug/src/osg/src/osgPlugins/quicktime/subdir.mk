################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/quicktime/MovieData.cpp \
../src/osg/src/osgPlugins/quicktime/QTImportExport.cpp \
../src/osg/src/osgPlugins/quicktime/QTLiveUtils.cpp \
../src/osg/src/osgPlugins/quicktime/QTUtils.cpp \
../src/osg/src/osgPlugins/quicktime/QuicktimeImageStream.cpp \
../src/osg/src/osgPlugins/quicktime/QuicktimeLiveImageStream.cpp \
../src/osg/src/osgPlugins/quicktime/ReaderWriterQT.cpp 

OBJS += \
./src/osg/src/osgPlugins/quicktime/MovieData.o \
./src/osg/src/osgPlugins/quicktime/QTImportExport.o \
./src/osg/src/osgPlugins/quicktime/QTLiveUtils.o \
./src/osg/src/osgPlugins/quicktime/QTUtils.o \
./src/osg/src/osgPlugins/quicktime/QuicktimeImageStream.o \
./src/osg/src/osgPlugins/quicktime/QuicktimeLiveImageStream.o \
./src/osg/src/osgPlugins/quicktime/ReaderWriterQT.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/quicktime/MovieData.d \
./src/osg/src/osgPlugins/quicktime/QTImportExport.d \
./src/osg/src/osgPlugins/quicktime/QTLiveUtils.d \
./src/osg/src/osgPlugins/quicktime/QTUtils.d \
./src/osg/src/osgPlugins/quicktime/QuicktimeImageStream.d \
./src/osg/src/osgPlugins/quicktime/QuicktimeLiveImageStream.d \
./src/osg/src/osgPlugins/quicktime/ReaderWriterQT.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/quicktime/%.o: ../src/osg/src/osgPlugins/quicktime/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


