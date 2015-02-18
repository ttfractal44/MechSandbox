################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgWrappers/serializers/osgUI/AlignmentSettings.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/ColorPalette.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/ComboBox.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Dialog.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/DoubleValidator.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/FrameSettings.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/IntValidator.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Item.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Label.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/LineEdit.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Popup.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/PushButton.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Tab.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/TabWidget.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/TextSettings.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Validator.cpp \
../src/osg/src/osgWrappers/serializers/osgUI/Widget.cpp 

OBJS += \
./src/osg/src/osgWrappers/serializers/osgUI/AlignmentSettings.o \
./src/osg/src/osgWrappers/serializers/osgUI/ColorPalette.o \
./src/osg/src/osgWrappers/serializers/osgUI/ComboBox.o \
./src/osg/src/osgWrappers/serializers/osgUI/Dialog.o \
./src/osg/src/osgWrappers/serializers/osgUI/DoubleValidator.o \
./src/osg/src/osgWrappers/serializers/osgUI/FrameSettings.o \
./src/osg/src/osgWrappers/serializers/osgUI/IntValidator.o \
./src/osg/src/osgWrappers/serializers/osgUI/Item.o \
./src/osg/src/osgWrappers/serializers/osgUI/Label.o \
./src/osg/src/osgWrappers/serializers/osgUI/LineEdit.o \
./src/osg/src/osgWrappers/serializers/osgUI/Popup.o \
./src/osg/src/osgWrappers/serializers/osgUI/PushButton.o \
./src/osg/src/osgWrappers/serializers/osgUI/Tab.o \
./src/osg/src/osgWrappers/serializers/osgUI/TabWidget.o \
./src/osg/src/osgWrappers/serializers/osgUI/TextSettings.o \
./src/osg/src/osgWrappers/serializers/osgUI/Validator.o \
./src/osg/src/osgWrappers/serializers/osgUI/Widget.o 

CPP_DEPS += \
./src/osg/src/osgWrappers/serializers/osgUI/AlignmentSettings.d \
./src/osg/src/osgWrappers/serializers/osgUI/ColorPalette.d \
./src/osg/src/osgWrappers/serializers/osgUI/ComboBox.d \
./src/osg/src/osgWrappers/serializers/osgUI/Dialog.d \
./src/osg/src/osgWrappers/serializers/osgUI/DoubleValidator.d \
./src/osg/src/osgWrappers/serializers/osgUI/FrameSettings.d \
./src/osg/src/osgWrappers/serializers/osgUI/IntValidator.d \
./src/osg/src/osgWrappers/serializers/osgUI/Item.d \
./src/osg/src/osgWrappers/serializers/osgUI/Label.d \
./src/osg/src/osgWrappers/serializers/osgUI/LineEdit.d \
./src/osg/src/osgWrappers/serializers/osgUI/Popup.d \
./src/osg/src/osgWrappers/serializers/osgUI/PushButton.d \
./src/osg/src/osgWrappers/serializers/osgUI/Tab.d \
./src/osg/src/osgWrappers/serializers/osgUI/TabWidget.d \
./src/osg/src/osgWrappers/serializers/osgUI/TextSettings.d \
./src/osg/src/osgWrappers/serializers/osgUI/Validator.d \
./src/osg/src/osgWrappers/serializers/osgUI/Widget.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgWrappers/serializers/osgUI/%.o: ../src/osg/src/osgWrappers/serializers/osgUI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


