################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/ClientCommon.c \
../src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/dns-sd.c 

OBJS += \
./src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/ClientCommon.o \
./src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/dns-sd.o 

C_DEPS += \
./src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/ClientCommon.d \
./src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/dns-sd.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/%.o: ../src/osg/src/osgPlugins/ZeroConfDevice/mdns_win/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


