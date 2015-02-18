################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/ffmpeg/FFmpegAudioStream.cpp \
../src/osg/src/osgPlugins/ffmpeg/FFmpegClocks.cpp \
../src/osg/src/osgPlugins/ffmpeg/FFmpegDecoder.cpp \
../src/osg/src/osgPlugins/ffmpeg/FFmpegDecoderAudio.cpp \
../src/osg/src/osgPlugins/ffmpeg/FFmpegDecoderVideo.cpp \
../src/osg/src/osgPlugins/ffmpeg/FFmpegImageStream.cpp \
../src/osg/src/osgPlugins/ffmpeg/FFmpegParameters.cpp \
../src/osg/src/osgPlugins/ffmpeg/ReaderWriterFFmpeg.cpp 

OBJS += \
./src/osg/src/osgPlugins/ffmpeg/FFmpegAudioStream.o \
./src/osg/src/osgPlugins/ffmpeg/FFmpegClocks.o \
./src/osg/src/osgPlugins/ffmpeg/FFmpegDecoder.o \
./src/osg/src/osgPlugins/ffmpeg/FFmpegDecoderAudio.o \
./src/osg/src/osgPlugins/ffmpeg/FFmpegDecoderVideo.o \
./src/osg/src/osgPlugins/ffmpeg/FFmpegImageStream.o \
./src/osg/src/osgPlugins/ffmpeg/FFmpegParameters.o \
./src/osg/src/osgPlugins/ffmpeg/ReaderWriterFFmpeg.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/ffmpeg/FFmpegAudioStream.d \
./src/osg/src/osgPlugins/ffmpeg/FFmpegClocks.d \
./src/osg/src/osgPlugins/ffmpeg/FFmpegDecoder.d \
./src/osg/src/osgPlugins/ffmpeg/FFmpegDecoderAudio.d \
./src/osg/src/osgPlugins/ffmpeg/FFmpegDecoderVideo.d \
./src/osg/src/osgPlugins/ffmpeg/FFmpegImageStream.d \
./src/osg/src/osgPlugins/ffmpeg/FFmpegParameters.d \
./src/osg/src/osgPlugins/ffmpeg/ReaderWriterFFmpeg.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/ffmpeg/%.o: ../src/osg/src/osgPlugins/ffmpeg/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


