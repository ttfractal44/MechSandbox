################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/examples/osgphotoalbum/ImageReaderWriter.cpp \
../src/osg/examples/osgphotoalbum/PhotoArchive.cpp \
../src/osg/examples/osgphotoalbum/osgphotoalbum.cpp 

OBJS += \
./src/osg/examples/osgphotoalbum/ImageReaderWriter.o \
./src/osg/examples/osgphotoalbum/PhotoArchive.o \
./src/osg/examples/osgphotoalbum/osgphotoalbum.o 

CPP_DEPS += \
./src/osg/examples/osgphotoalbum/ImageReaderWriter.d \
./src/osg/examples/osgphotoalbum/PhotoArchive.d \
./src/osg/examples/osgphotoalbum/osgphotoalbum.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/examples/osgphotoalbum/%.o: ../src/osg/examples/osgphotoalbum/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


