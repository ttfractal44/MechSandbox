################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPresentation/Action.cpp \
../src/osg/src/osgPresentation/Audio.cpp \
../src/osg/src/osgPresentation/Cursor.cpp \
../src/osg/src/osgPresentation/Element.cpp \
../src/osg/src/osgPresentation/Group.cpp \
../src/osg/src/osgPresentation/Image.cpp \
../src/osg/src/osgPresentation/Layer.cpp \
../src/osg/src/osgPresentation/Model.cpp \
../src/osg/src/osgPresentation/Movie.cpp \
../src/osg/src/osgPresentation/Presentation.cpp \
../src/osg/src/osgPresentation/PresentationInterface.cpp \
../src/osg/src/osgPresentation/Section.cpp \
../src/osg/src/osgPresentation/Show.cpp \
../src/osg/src/osgPresentation/Slide.cpp \
../src/osg/src/osgPresentation/Text.cpp \
../src/osg/src/osgPresentation/Volume.cpp 

OBJS += \
./src/osg/src/osgPresentation/Action.o \
./src/osg/src/osgPresentation/Audio.o \
./src/osg/src/osgPresentation/Cursor.o \
./src/osg/src/osgPresentation/Element.o \
./src/osg/src/osgPresentation/Group.o \
./src/osg/src/osgPresentation/Image.o \
./src/osg/src/osgPresentation/Layer.o \
./src/osg/src/osgPresentation/Model.o \
./src/osg/src/osgPresentation/Movie.o \
./src/osg/src/osgPresentation/Presentation.o \
./src/osg/src/osgPresentation/PresentationInterface.o \
./src/osg/src/osgPresentation/Section.o \
./src/osg/src/osgPresentation/Show.o \
./src/osg/src/osgPresentation/Slide.o \
./src/osg/src/osgPresentation/Text.o \
./src/osg/src/osgPresentation/Volume.o 

CPP_DEPS += \
./src/osg/src/osgPresentation/Action.d \
./src/osg/src/osgPresentation/Audio.d \
./src/osg/src/osgPresentation/Cursor.d \
./src/osg/src/osgPresentation/Element.d \
./src/osg/src/osgPresentation/Group.d \
./src/osg/src/osgPresentation/Image.d \
./src/osg/src/osgPresentation/Layer.d \
./src/osg/src/osgPresentation/Model.d \
./src/osg/src/osgPresentation/Movie.d \
./src/osg/src/osgPresentation/Presentation.d \
./src/osg/src/osgPresentation/PresentationInterface.d \
./src/osg/src/osgPresentation/Section.d \
./src/osg/src/osgPresentation/Show.d \
./src/osg/src/osgPresentation/Slide.d \
./src/osg/src/osgPresentation/Text.d \
./src/osg/src/osgPresentation/Volume.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPresentation/%.o: ../src/osg/src/osgPresentation/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


