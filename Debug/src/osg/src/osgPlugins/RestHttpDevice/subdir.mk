################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/RestHttpDevice/ReaderWriterRestHttpDevice.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/RestHttpDevice.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/connection.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/io_service_pool.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/mime_types.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/reply.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/request_handler.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/request_parser.cpp \
../src/osg/src/osgPlugins/RestHttpDevice/server.cpp 

OBJS += \
./src/osg/src/osgPlugins/RestHttpDevice/ReaderWriterRestHttpDevice.o \
./src/osg/src/osgPlugins/RestHttpDevice/RestHttpDevice.o \
./src/osg/src/osgPlugins/RestHttpDevice/connection.o \
./src/osg/src/osgPlugins/RestHttpDevice/io_service_pool.o \
./src/osg/src/osgPlugins/RestHttpDevice/mime_types.o \
./src/osg/src/osgPlugins/RestHttpDevice/reply.o \
./src/osg/src/osgPlugins/RestHttpDevice/request_handler.o \
./src/osg/src/osgPlugins/RestHttpDevice/request_parser.o \
./src/osg/src/osgPlugins/RestHttpDevice/server.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/RestHttpDevice/ReaderWriterRestHttpDevice.d \
./src/osg/src/osgPlugins/RestHttpDevice/RestHttpDevice.d \
./src/osg/src/osgPlugins/RestHttpDevice/connection.d \
./src/osg/src/osgPlugins/RestHttpDevice/io_service_pool.d \
./src/osg/src/osgPlugins/RestHttpDevice/mime_types.d \
./src/osg/src/osgPlugins/RestHttpDevice/reply.d \
./src/osg/src/osgPlugins/RestHttpDevice/request_handler.d \
./src/osg/src/osgPlugins/RestHttpDevice/request_parser.d \
./src/osg/src/osgPlugins/RestHttpDevice/server.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/RestHttpDevice/%.o: ../src/osg/src/osgPlugins/RestHttpDevice/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


