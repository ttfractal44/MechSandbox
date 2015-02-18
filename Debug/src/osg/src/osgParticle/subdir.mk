################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osg/src/osgParticle/BounceOperator.cpp \
../src/osg/src/osgParticle/ConnectedParticleSystem.cpp \
../src/osg/src/osgParticle/DomainOperator.cpp \
../src/osg/src/osgParticle/Emitter.cpp \
../src/osg/src/osgParticle/ExplosionDebrisEffect.cpp \
../src/osg/src/osgParticle/ExplosionEffect.cpp \
../src/osg/src/osgParticle/FireEffect.cpp \
../src/osg/src/osgParticle/FluidFrictionOperator.cpp \
../src/osg/src/osgParticle/FluidProgram.cpp \
../src/osg/src/osgParticle/ModularEmitter.cpp \
../src/osg/src/osgParticle/ModularProgram.cpp \
../src/osg/src/osgParticle/MultiSegmentPlacer.cpp \
../src/osg/src/osgParticle/Particle.cpp \
../src/osg/src/osgParticle/ParticleEffect.cpp \
../src/osg/src/osgParticle/ParticleProcessor.cpp \
../src/osg/src/osgParticle/ParticleSystem.cpp \
../src/osg/src/osgParticle/ParticleSystemUpdater.cpp \
../src/osg/src/osgParticle/PrecipitationEffect.cpp \
../src/osg/src/osgParticle/Program.cpp \
../src/osg/src/osgParticle/SinkOperator.cpp \
../src/osg/src/osgParticle/SmokeEffect.cpp \
../src/osg/src/osgParticle/SmokeTrailEffect.cpp \
../src/osg/src/osgParticle/Version.cpp 

OBJS += \
./src/osg/src/osgParticle/BounceOperator.o \
./src/osg/src/osgParticle/ConnectedParticleSystem.o \
./src/osg/src/osgParticle/DomainOperator.o \
./src/osg/src/osgParticle/Emitter.o \
./src/osg/src/osgParticle/ExplosionDebrisEffect.o \
./src/osg/src/osgParticle/ExplosionEffect.o \
./src/osg/src/osgParticle/FireEffect.o \
./src/osg/src/osgParticle/FluidFrictionOperator.o \
./src/osg/src/osgParticle/FluidProgram.o \
./src/osg/src/osgParticle/ModularEmitter.o \
./src/osg/src/osgParticle/ModularProgram.o \
./src/osg/src/osgParticle/MultiSegmentPlacer.o \
./src/osg/src/osgParticle/Particle.o \
./src/osg/src/osgParticle/ParticleEffect.o \
./src/osg/src/osgParticle/ParticleProcessor.o \
./src/osg/src/osgParticle/ParticleSystem.o \
./src/osg/src/osgParticle/ParticleSystemUpdater.o \
./src/osg/src/osgParticle/PrecipitationEffect.o \
./src/osg/src/osgParticle/Program.o \
./src/osg/src/osgParticle/SinkOperator.o \
./src/osg/src/osgParticle/SmokeEffect.o \
./src/osg/src/osgParticle/SmokeTrailEffect.o \
./src/osg/src/osgParticle/Version.o 

CPP_DEPS += \
./src/osg/src/osgParticle/BounceOperator.d \
./src/osg/src/osgParticle/ConnectedParticleSystem.d \
./src/osg/src/osgParticle/DomainOperator.d \
./src/osg/src/osgParticle/Emitter.d \
./src/osg/src/osgParticle/ExplosionDebrisEffect.d \
./src/osg/src/osgParticle/ExplosionEffect.d \
./src/osg/src/osgParticle/FireEffect.d \
./src/osg/src/osgParticle/FluidFrictionOperator.d \
./src/osg/src/osgParticle/FluidProgram.d \
./src/osg/src/osgParticle/ModularEmitter.d \
./src/osg/src/osgParticle/ModularProgram.d \
./src/osg/src/osgParticle/MultiSegmentPlacer.d \
./src/osg/src/osgParticle/Particle.d \
./src/osg/src/osgParticle/ParticleEffect.d \
./src/osg/src/osgParticle/ParticleProcessor.d \
./src/osg/src/osgParticle/ParticleSystem.d \
./src/osg/src/osgParticle/ParticleSystemUpdater.d \
./src/osg/src/osgParticle/PrecipitationEffect.d \
./src/osg/src/osgParticle/Program.d \
./src/osg/src/osgParticle/SinkOperator.d \
./src/osg/src/osgParticle/SmokeEffect.d \
./src/osg/src/osgParticle/SmokeTrailEffect.d \
./src/osg/src/osgParticle/Version.d 


# Each subdirectory must supply rules for building sources it contributes
src/osg/src/osgParticle/%.o: ../src/osg/src/osgParticle/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -std=c++11 -I/usr/include/gtk-3.0 -I/usr/include/atk-1.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/pango-1.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/usr/include/harfbuzz -I/usr/include/freetype2 -I/usr/include/pixman-1 -I/usr/include/libpng12 -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


