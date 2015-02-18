################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_atmosphere.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_background.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_camera.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_chunk.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_chunktable.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_file.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_io.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_light.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_material.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_math.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_matrix.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_mesh.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_node.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_quat.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_shadow.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_track.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_util.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_vector.c \
../src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_viewport.c 

OBJS += \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_atmosphere.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_background.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_camera.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_chunk.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_chunktable.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_file.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_io.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_light.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_material.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_math.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_matrix.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_mesh.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_node.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_quat.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_shadow.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_track.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_util.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_vector.o \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_viewport.o 

C_DEPS += \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_atmosphere.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_background.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_camera.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_chunk.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_chunktable.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_file.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_io.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_light.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_material.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_math.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_matrix.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_mesh.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_node.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_quat.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_shadow.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_track.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_util.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_vector.d \
./src/osg/src/osgPlugins/3ds/lib3ds/lib3ds_viewport.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/3ds/lib3ds/%.o: ../src/osg/src/osgPlugins/3ds/lib3ds/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


