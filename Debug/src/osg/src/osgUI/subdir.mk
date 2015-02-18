################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgUI/AlignmentSettings.cpp \
../src/osg/src/osgUI/Callbacks.cpp \
../src/osg/src/osgUI/ColorPalette.cpp \
../src/osg/src/osgUI/ComboBox.cpp \
../src/osg/src/osgUI/Dialog.cpp \
../src/osg/src/osgUI/FrameSettings.cpp \
../src/osg/src/osgUI/Label.cpp \
../src/osg/src/osgUI/LineEdit.cpp \
../src/osg/src/osgUI/Popup.cpp \
../src/osg/src/osgUI/PushButton.cpp \
../src/osg/src/osgUI/Style.cpp \
../src/osg/src/osgUI/TabWidget.cpp \
../src/osg/src/osgUI/TextSettings.cpp \
../src/osg/src/osgUI/Validator.cpp \
../src/osg/src/osgUI/Widget.cpp 

OBJS += \
./src/osg/src/osgUI/AlignmentSettings.o \
./src/osg/src/osgUI/Callbacks.o \
./src/osg/src/osgUI/ColorPalette.o \
./src/osg/src/osgUI/ComboBox.o \
./src/osg/src/osgUI/Dialog.o \
./src/osg/src/osgUI/FrameSettings.o \
./src/osg/src/osgUI/Label.o \
./src/osg/src/osgUI/LineEdit.o \
./src/osg/src/osgUI/Popup.o \
./src/osg/src/osgUI/PushButton.o \
./src/osg/src/osgUI/Style.o \
./src/osg/src/osgUI/TabWidget.o \
./src/osg/src/osgUI/TextSettings.o \
./src/osg/src/osgUI/Validator.o \
./src/osg/src/osgUI/Widget.o 

CPP_DEPS += \
./src/osg/src/osgUI/AlignmentSettings.d \
./src/osg/src/osgUI/Callbacks.d \
./src/osg/src/osgUI/ColorPalette.d \
./src/osg/src/osgUI/ComboBox.d \
./src/osg/src/osgUI/Dialog.d \
./src/osg/src/osgUI/FrameSettings.d \
./src/osg/src/osgUI/Label.d \
./src/osg/src/osgUI/LineEdit.d \
./src/osg/src/osgUI/Popup.d \
./src/osg/src/osgUI/PushButton.d \
./src/osg/src/osgUI/Style.d \
./src/osg/src/osgUI/TabWidget.d \
./src/osg/src/osgUI/TextSettings.d \
./src/osg/src/osgUI/Validator.d \
./src/osg/src/osgUI/Widget.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgUI/%.o: ../src/osg/src/osgUI/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


