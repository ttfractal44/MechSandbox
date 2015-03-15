################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/quartz/GdkQuartzNSWindow.c \
../src/gtk+/gdk/quartz/GdkQuartzView.c \
../src/gtk+/gdk/quartz/gdkcursor-quartz.c \
../src/gtk+/gdk/quartz/gdkdevice-core-quartz.c \
../src/gtk+/gdk/quartz/gdkdevicemanager-core-quartz.c \
../src/gtk+/gdk/quartz/gdkdisplay-quartz.c \
../src/gtk+/gdk/quartz/gdkdisplaymanager-quartz.c \
../src/gtk+/gdk/quartz/gdkdnd-quartz.c \
../src/gtk+/gdk/quartz/gdkeventloop-quartz.c \
../src/gtk+/gdk/quartz/gdkevents-quartz.c \
../src/gtk+/gdk/quartz/gdkglobals-quartz.c \
../src/gtk+/gdk/quartz/gdkkeys-quartz.c \
../src/gtk+/gdk/quartz/gdkproperty-quartz.c \
../src/gtk+/gdk/quartz/gdkscreen-quartz.c \
../src/gtk+/gdk/quartz/gdkselection-quartz.c \
../src/gtk+/gdk/quartz/gdktestutils-quartz.c \
../src/gtk+/gdk/quartz/gdkutils-quartz.c \
../src/gtk+/gdk/quartz/gdkvisual-quartz.c \
../src/gtk+/gdk/quartz/gdkwindow-quartz.c 

OBJS += \
./src/gtk+/gdk/quartz/GdkQuartzNSWindow.o \
./src/gtk+/gdk/quartz/GdkQuartzView.o \
./src/gtk+/gdk/quartz/gdkcursor-quartz.o \
./src/gtk+/gdk/quartz/gdkdevice-core-quartz.o \
./src/gtk+/gdk/quartz/gdkdevicemanager-core-quartz.o \
./src/gtk+/gdk/quartz/gdkdisplay-quartz.o \
./src/gtk+/gdk/quartz/gdkdisplaymanager-quartz.o \
./src/gtk+/gdk/quartz/gdkdnd-quartz.o \
./src/gtk+/gdk/quartz/gdkeventloop-quartz.o \
./src/gtk+/gdk/quartz/gdkevents-quartz.o \
./src/gtk+/gdk/quartz/gdkglobals-quartz.o \
./src/gtk+/gdk/quartz/gdkkeys-quartz.o \
./src/gtk+/gdk/quartz/gdkproperty-quartz.o \
./src/gtk+/gdk/quartz/gdkscreen-quartz.o \
./src/gtk+/gdk/quartz/gdkselection-quartz.o \
./src/gtk+/gdk/quartz/gdktestutils-quartz.o \
./src/gtk+/gdk/quartz/gdkutils-quartz.o \
./src/gtk+/gdk/quartz/gdkvisual-quartz.o \
./src/gtk+/gdk/quartz/gdkwindow-quartz.o 

C_DEPS += \
./src/gtk+/gdk/quartz/GdkQuartzNSWindow.d \
./src/gtk+/gdk/quartz/GdkQuartzView.d \
./src/gtk+/gdk/quartz/gdkcursor-quartz.d \
./src/gtk+/gdk/quartz/gdkdevice-core-quartz.d \
./src/gtk+/gdk/quartz/gdkdevicemanager-core-quartz.d \
./src/gtk+/gdk/quartz/gdkdisplay-quartz.d \
./src/gtk+/gdk/quartz/gdkdisplaymanager-quartz.d \
./src/gtk+/gdk/quartz/gdkdnd-quartz.d \
./src/gtk+/gdk/quartz/gdkeventloop-quartz.d \
./src/gtk+/gdk/quartz/gdkevents-quartz.d \
./src/gtk+/gdk/quartz/gdkglobals-quartz.d \
./src/gtk+/gdk/quartz/gdkkeys-quartz.d \
./src/gtk+/gdk/quartz/gdkproperty-quartz.d \
./src/gtk+/gdk/quartz/gdkscreen-quartz.d \
./src/gtk+/gdk/quartz/gdkselection-quartz.d \
./src/gtk+/gdk/quartz/gdktestutils-quartz.d \
./src/gtk+/gdk/quartz/gdkutils-quartz.d \
./src/gtk+/gdk/quartz/gdkvisual-quartz.d \
./src/gtk+/gdk/quartz/gdkwindow-quartz.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/quartz/%.o: ../src/gtk+/gdk/quartz/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


