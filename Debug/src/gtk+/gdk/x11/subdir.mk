################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/x11/gdkapplaunchcontext-x11.c \
../src/gtk+/gdk/x11/gdkasync.c \
../src/gtk+/gdk/x11/gdkcursor-x11.c \
../src/gtk+/gdk/x11/gdkdevice-core-x11.c \
../src/gtk+/gdk/x11/gdkdevice-xi2.c \
../src/gtk+/gdk/x11/gdkdevicemanager-core-x11.c \
../src/gtk+/gdk/x11/gdkdevicemanager-x11.c \
../src/gtk+/gdk/x11/gdkdevicemanager-xi2.c \
../src/gtk+/gdk/x11/gdkdisplay-x11.c \
../src/gtk+/gdk/x11/gdkdisplaymanager-x11.c \
../src/gtk+/gdk/x11/gdkdnd-x11.c \
../src/gtk+/gdk/x11/gdkeventsource.c \
../src/gtk+/gdk/x11/gdkeventtranslator.c \
../src/gtk+/gdk/x11/gdkgeometry-x11.c \
../src/gtk+/gdk/x11/gdkglcontext-x11.c \
../src/gtk+/gdk/x11/gdkkeys-x11.c \
../src/gtk+/gdk/x11/gdkmain-x11.c \
../src/gtk+/gdk/x11/gdkproperty-x11.c \
../src/gtk+/gdk/x11/gdkscreen-x11.c \
../src/gtk+/gdk/x11/gdkselection-x11.c \
../src/gtk+/gdk/x11/gdksettings.c \
../src/gtk+/gdk/x11/gdktestutils-x11.c \
../src/gtk+/gdk/x11/gdkvisual-x11.c \
../src/gtk+/gdk/x11/gdkwindow-x11.c \
../src/gtk+/gdk/x11/gdkxftdefaults.c \
../src/gtk+/gdk/x11/gdkxid.c \
../src/gtk+/gdk/x11/xsettings-client.c 

OBJS += \
./src/gtk+/gdk/x11/gdkapplaunchcontext-x11.o \
./src/gtk+/gdk/x11/gdkasync.o \
./src/gtk+/gdk/x11/gdkcursor-x11.o \
./src/gtk+/gdk/x11/gdkdevice-core-x11.o \
./src/gtk+/gdk/x11/gdkdevice-xi2.o \
./src/gtk+/gdk/x11/gdkdevicemanager-core-x11.o \
./src/gtk+/gdk/x11/gdkdevicemanager-x11.o \
./src/gtk+/gdk/x11/gdkdevicemanager-xi2.o \
./src/gtk+/gdk/x11/gdkdisplay-x11.o \
./src/gtk+/gdk/x11/gdkdisplaymanager-x11.o \
./src/gtk+/gdk/x11/gdkdnd-x11.o \
./src/gtk+/gdk/x11/gdkeventsource.o \
./src/gtk+/gdk/x11/gdkeventtranslator.o \
./src/gtk+/gdk/x11/gdkgeometry-x11.o \
./src/gtk+/gdk/x11/gdkglcontext-x11.o \
./src/gtk+/gdk/x11/gdkkeys-x11.o \
./src/gtk+/gdk/x11/gdkmain-x11.o \
./src/gtk+/gdk/x11/gdkproperty-x11.o \
./src/gtk+/gdk/x11/gdkscreen-x11.o \
./src/gtk+/gdk/x11/gdkselection-x11.o \
./src/gtk+/gdk/x11/gdksettings.o \
./src/gtk+/gdk/x11/gdktestutils-x11.o \
./src/gtk+/gdk/x11/gdkvisual-x11.o \
./src/gtk+/gdk/x11/gdkwindow-x11.o \
./src/gtk+/gdk/x11/gdkxftdefaults.o \
./src/gtk+/gdk/x11/gdkxid.o \
./src/gtk+/gdk/x11/xsettings-client.o 

C_DEPS += \
./src/gtk+/gdk/x11/gdkapplaunchcontext-x11.d \
./src/gtk+/gdk/x11/gdkasync.d \
./src/gtk+/gdk/x11/gdkcursor-x11.d \
./src/gtk+/gdk/x11/gdkdevice-core-x11.d \
./src/gtk+/gdk/x11/gdkdevice-xi2.d \
./src/gtk+/gdk/x11/gdkdevicemanager-core-x11.d \
./src/gtk+/gdk/x11/gdkdevicemanager-x11.d \
./src/gtk+/gdk/x11/gdkdevicemanager-xi2.d \
./src/gtk+/gdk/x11/gdkdisplay-x11.d \
./src/gtk+/gdk/x11/gdkdisplaymanager-x11.d \
./src/gtk+/gdk/x11/gdkdnd-x11.d \
./src/gtk+/gdk/x11/gdkeventsource.d \
./src/gtk+/gdk/x11/gdkeventtranslator.d \
./src/gtk+/gdk/x11/gdkgeometry-x11.d \
./src/gtk+/gdk/x11/gdkglcontext-x11.d \
./src/gtk+/gdk/x11/gdkkeys-x11.d \
./src/gtk+/gdk/x11/gdkmain-x11.d \
./src/gtk+/gdk/x11/gdkproperty-x11.d \
./src/gtk+/gdk/x11/gdkscreen-x11.d \
./src/gtk+/gdk/x11/gdkselection-x11.d \
./src/gtk+/gdk/x11/gdksettings.d \
./src/gtk+/gdk/x11/gdktestutils-x11.d \
./src/gtk+/gdk/x11/gdkvisual-x11.d \
./src/gtk+/gdk/x11/gdkwindow-x11.d \
./src/gtk+/gdk/x11/gdkxftdefaults.d \
./src/gtk+/gdk/x11/gdkxid.d \
./src/gtk+/gdk/x11/xsettings-client.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/x11/%.o: ../src/gtk+/gdk/x11/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


