################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/applications/present3D/deprecated/Cluster.cpp \
../src/osg/applications/present3D/deprecated/ExportHTML.cpp \
../src/osg/applications/present3D/deprecated/PointsEventHandler.cpp \
../src/osg/applications/present3D/deprecated/ReadShowFile.cpp \
../src/osg/applications/present3D/deprecated/SDLIntegration.cpp \
../src/osg/applications/present3D/deprecated/ShowEventHandler.cpp \
../src/osg/applications/present3D/deprecated/SpellChecker.cpp \
../src/osg/applications/present3D/deprecated/present3D.cpp 

OBJS += \
./src/osg/applications/present3D/deprecated/Cluster.o \
./src/osg/applications/present3D/deprecated/ExportHTML.o \
./src/osg/applications/present3D/deprecated/PointsEventHandler.o \
./src/osg/applications/present3D/deprecated/ReadShowFile.o \
./src/osg/applications/present3D/deprecated/SDLIntegration.o \
./src/osg/applications/present3D/deprecated/ShowEventHandler.o \
./src/osg/applications/present3D/deprecated/SpellChecker.o \
./src/osg/applications/present3D/deprecated/present3D.o 

CPP_DEPS += \
./src/osg/applications/present3D/deprecated/Cluster.d \
./src/osg/applications/present3D/deprecated/ExportHTML.d \
./src/osg/applications/present3D/deprecated/PointsEventHandler.d \
./src/osg/applications/present3D/deprecated/ReadShowFile.d \
./src/osg/applications/present3D/deprecated/SDLIntegration.d \
./src/osg/applications/present3D/deprecated/ShowEventHandler.d \
./src/osg/applications/present3D/deprecated/SpellChecker.d \
./src/osg/applications/present3D/deprecated/present3D.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/applications/present3D/deprecated/%.o: ../src/osg/applications/present3D/deprecated/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


