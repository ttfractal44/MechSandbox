################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C++_SRCS += \
../src/osg/src/OpenThreads/sproc/SharedArena.c++ \
../src/osg/src/OpenThreads/sproc/SprocBarrier.c++ \
../src/osg/src/OpenThreads/sproc/SprocCondition.c++ \
../src/osg/src/OpenThreads/sproc/SprocMutex.c++ \
../src/osg/src/OpenThreads/sproc/SprocThread.c++ 

C++_DEPS += \
./src/osg/src/OpenThreads/sproc/SharedArena.d \
./src/osg/src/OpenThreads/sproc/SprocBarrier.d \
./src/osg/src/OpenThreads/sproc/SprocCondition.d \
./src/osg/src/OpenThreads/sproc/SprocMutex.d \
./src/osg/src/OpenThreads/sproc/SprocThread.d 

OBJS += \
./src/osg/src/OpenThreads/sproc/SharedArena.o \
./src/osg/src/OpenThreads/sproc/SprocBarrier.o \
./src/osg/src/OpenThreads/sproc/SprocCondition.o \
./src/osg/src/OpenThreads/sproc/SprocMutex.o \
./src/osg/src/OpenThreads/sproc/SprocThread.o 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/OpenThreads/sproc/%.o: ../src/osg/src/OpenThreads/sproc/%.c++
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


