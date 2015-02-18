################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgText/DefaultFont.cpp \
../src/osg/src/osgText/FadeText.cpp \
../src/osg/src/osgText/Font.cpp \
../src/osg/src/osgText/Glyph.cpp \
../src/osg/src/osgText/GlyphGeometry.cpp \
../src/osg/src/osgText/String.cpp \
../src/osg/src/osgText/Style.cpp \
../src/osg/src/osgText/Text.cpp \
../src/osg/src/osgText/Text3D.cpp \
../src/osg/src/osgText/TextBase.cpp \
../src/osg/src/osgText/Version.cpp 

OBJS += \
./src/osg/src/osgText/DefaultFont.o \
./src/osg/src/osgText/FadeText.o \
./src/osg/src/osgText/Font.o \
./src/osg/src/osgText/Glyph.o \
./src/osg/src/osgText/GlyphGeometry.o \
./src/osg/src/osgText/String.o \
./src/osg/src/osgText/Style.o \
./src/osg/src/osgText/Text.o \
./src/osg/src/osgText/Text3D.o \
./src/osg/src/osgText/TextBase.o \
./src/osg/src/osgText/Version.o 

CPP_DEPS += \
./src/osg/src/osgText/DefaultFont.d \
./src/osg/src/osgText/FadeText.d \
./src/osg/src/osgText/Font.d \
./src/osg/src/osgText/Glyph.d \
./src/osg/src/osgText/GlyphGeometry.d \
./src/osg/src/osgText/String.d \
./src/osg/src/osgText/Style.d \
./src/osg/src/osgText/Text.d \
./src/osg/src/osgText/Text3D.d \
./src/osg/src/osgText/TextBase.d \
./src/osg/src/osgText/Version.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgText/%.o: ../src/osg/src/osgText/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


