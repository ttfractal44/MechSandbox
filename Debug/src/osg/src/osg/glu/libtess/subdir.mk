################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osg/glu/libtess/dict.cpp \
../src/osg/src/osg/glu/libtess/geom.cpp \
../src/osg/src/osg/glu/libtess/memalloc.cpp \
../src/osg/src/osg/glu/libtess/mesh.cpp \
../src/osg/src/osg/glu/libtess/normal.cpp \
../src/osg/src/osg/glu/libtess/priorityq-heap.cpp \
../src/osg/src/osg/glu/libtess/priorityq.cpp \
../src/osg/src/osg/glu/libtess/render.cpp \
../src/osg/src/osg/glu/libtess/sweep.cpp \
../src/osg/src/osg/glu/libtess/tess.cpp \
../src/osg/src/osg/glu/libtess/tessmono.cpp 

OBJS += \
./src/osg/src/osg/glu/libtess/dict.o \
./src/osg/src/osg/glu/libtess/geom.o \
./src/osg/src/osg/glu/libtess/memalloc.o \
./src/osg/src/osg/glu/libtess/mesh.o \
./src/osg/src/osg/glu/libtess/normal.o \
./src/osg/src/osg/glu/libtess/priorityq-heap.o \
./src/osg/src/osg/glu/libtess/priorityq.o \
./src/osg/src/osg/glu/libtess/render.o \
./src/osg/src/osg/glu/libtess/sweep.o \
./src/osg/src/osg/glu/libtess/tess.o \
./src/osg/src/osg/glu/libtess/tessmono.o 

CPP_DEPS += \
./src/osg/src/osg/glu/libtess/dict.d \
./src/osg/src/osg/glu/libtess/geom.d \
./src/osg/src/osg/glu/libtess/memalloc.d \
./src/osg/src/osg/glu/libtess/mesh.d \
./src/osg/src/osg/glu/libtess/normal.d \
./src/osg/src/osg/glu/libtess/priorityq-heap.d \
./src/osg/src/osg/glu/libtess/priorityq.d \
./src/osg/src/osg/glu/libtess/render.d \
./src/osg/src/osg/glu/libtess/sweep.d \
./src/osg/src/osg/glu/libtess/tess.d \
./src/osg/src/osg/glu/libtess/tessmono.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osg/glu/libtess/%.o: ../src/osg/src/osg/glu/libtess/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


