################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/examples/osgviewerMFC/ChildFrm.cpp \
../src/osg/examples/osgviewerMFC/MFC_OSG.cpp \
../src/osg/examples/osgviewerMFC/MFC_OSG_MDI.cpp \
../src/osg/examples/osgviewerMFC/MFC_OSG_MDIDoc.cpp \
../src/osg/examples/osgviewerMFC/MFC_OSG_MDIView.cpp \
../src/osg/examples/osgviewerMFC/MainFrm.cpp \
../src/osg/examples/osgviewerMFC/stdafx.cpp 

OBJS += \
./src/osg/examples/osgviewerMFC/ChildFrm.o \
./src/osg/examples/osgviewerMFC/MFC_OSG.o \
./src/osg/examples/osgviewerMFC/MFC_OSG_MDI.o \
./src/osg/examples/osgviewerMFC/MFC_OSG_MDIDoc.o \
./src/osg/examples/osgviewerMFC/MFC_OSG_MDIView.o \
./src/osg/examples/osgviewerMFC/MainFrm.o \
./src/osg/examples/osgviewerMFC/stdafx.o 

CPP_DEPS += \
./src/osg/examples/osgviewerMFC/ChildFrm.d \
./src/osg/examples/osgviewerMFC/MFC_OSG.d \
./src/osg/examples/osgviewerMFC/MFC_OSG_MDI.d \
./src/osg/examples/osgviewerMFC/MFC_OSG_MDIDoc.d \
./src/osg/examples/osgviewerMFC/MFC_OSG_MDIView.d \
./src/osg/examples/osgviewerMFC/MainFrm.d \
./src/osg/examples/osgviewerMFC/stdafx.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/examples/osgviewerMFC/%.o: ../src/osg/examples/osgviewerMFC/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


