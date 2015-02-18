################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgPresentation/Audio.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Element.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Group.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Image.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Layer.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Model.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Movie.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Presentation.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/PresentationInterface.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Section.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Show.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Slide.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Text.cpp \
../src/osg/src/osgWrappers/serializers/osgPresentation/Volume.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgPresentation/Audio.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Element.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Group.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Image.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Layer.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Model.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Movie.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Presentation.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/PresentationInterface.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Section.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Show.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Slide.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Text.o \
./src/osg/src/osgWrappers/serializers/osgPresentation/Volume.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgPresentation/Audio.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Element.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Group.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Image.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Layer.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Model.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Movie.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Presentation.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/PresentationInterface.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Section.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Show.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Slide.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Text.d \
./src/osg/src/osgWrappers/serializers/osgPresentation/Volume.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgPresentation/%.o: ../src/osg/src/osgWrappers/serializers/osgPresentation/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


