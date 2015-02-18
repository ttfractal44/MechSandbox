################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgPlugins/fbx/ReaderWriterFBX.cpp \
../src/osg/src/osgPlugins/fbx/WriterCompareTriangle.cpp \
../src/osg/src/osgPlugins/fbx/WriterNodeVisitor.cpp \
../src/osg/src/osgPlugins/fbx/fbxMaterialToOsgStateSet.cpp \
../src/osg/src/osgPlugins/fbx/fbxRAnimation.cpp \
../src/osg/src/osgPlugins/fbx/fbxRCamera.cpp \
../src/osg/src/osgPlugins/fbx/fbxRLight.cpp \
../src/osg/src/osgPlugins/fbx/fbxRMesh.cpp \
../src/osg/src/osgPlugins/fbx/fbxRNode.cpp 

OBJS += \
./src/osg/src/osgPlugins/fbx/ReaderWriterFBX.o \
./src/osg/src/osgPlugins/fbx/WriterCompareTriangle.o \
./src/osg/src/osgPlugins/fbx/WriterNodeVisitor.o \
./src/osg/src/osgPlugins/fbx/fbxMaterialToOsgStateSet.o \
./src/osg/src/osgPlugins/fbx/fbxRAnimation.o \
./src/osg/src/osgPlugins/fbx/fbxRCamera.o \
./src/osg/src/osgPlugins/fbx/fbxRLight.o \
./src/osg/src/osgPlugins/fbx/fbxRMesh.o \
./src/osg/src/osgPlugins/fbx/fbxRNode.o 

CPP_DEPS += \
./src/osg/src/osgPlugins/fbx/ReaderWriterFBX.d \
./src/osg/src/osgPlugins/fbx/WriterCompareTriangle.d \
./src/osg/src/osgPlugins/fbx/WriterNodeVisitor.d \
./src/osg/src/osgPlugins/fbx/fbxMaterialToOsgStateSet.d \
./src/osg/src/osgPlugins/fbx/fbxRAnimation.d \
./src/osg/src/osgPlugins/fbx/fbxRCamera.d \
./src/osg/src/osgPlugins/fbx/fbxRLight.d \
./src/osg/src/osgPlugins/fbx/fbxRMesh.d \
./src/osg/src/osgPlugins/fbx/fbxRNode.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/fbx/%.o: ../src/osg/src/osgPlugins/fbx/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


