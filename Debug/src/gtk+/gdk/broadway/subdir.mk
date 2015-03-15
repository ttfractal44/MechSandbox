################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/broadway/broadway-buffer.c \
../src/gtk+/gdk/broadway/broadway-output.c \
../src/gtk+/gdk/broadway/broadway-server.c \
../src/gtk+/gdk/broadway/broadwayd.c \
../src/gtk+/gdk/broadway/gdkbroadway-server.c \
../src/gtk+/gdk/broadway/gdkcursor-broadway.c \
../src/gtk+/gdk/broadway/gdkdevice-broadway.c \
../src/gtk+/gdk/broadway/gdkdevicemanager-broadway.c \
../src/gtk+/gdk/broadway/gdkdisplay-broadway.c \
../src/gtk+/gdk/broadway/gdkdnd-broadway.c \
../src/gtk+/gdk/broadway/gdkeventsource.c \
../src/gtk+/gdk/broadway/gdkglobals-broadway.c \
../src/gtk+/gdk/broadway/gdkkeys-broadway.c \
../src/gtk+/gdk/broadway/gdkproperty-broadway.c \
../src/gtk+/gdk/broadway/gdkscreen-broadway.c \
../src/gtk+/gdk/broadway/gdkselection-broadway.c \
../src/gtk+/gdk/broadway/gdktestutils-broadway.c \
../src/gtk+/gdk/broadway/gdkvisual-broadway.c \
../src/gtk+/gdk/broadway/gdkwindow-broadway.c 

OBJS += \
./src/gtk+/gdk/broadway/broadway-buffer.o \
./src/gtk+/gdk/broadway/broadway-output.o \
./src/gtk+/gdk/broadway/broadway-server.o \
./src/gtk+/gdk/broadway/broadwayd.o \
./src/gtk+/gdk/broadway/gdkbroadway-server.o \
./src/gtk+/gdk/broadway/gdkcursor-broadway.o \
./src/gtk+/gdk/broadway/gdkdevice-broadway.o \
./src/gtk+/gdk/broadway/gdkdevicemanager-broadway.o \
./src/gtk+/gdk/broadway/gdkdisplay-broadway.o \
./src/gtk+/gdk/broadway/gdkdnd-broadway.o \
./src/gtk+/gdk/broadway/gdkeventsource.o \
./src/gtk+/gdk/broadway/gdkglobals-broadway.o \
./src/gtk+/gdk/broadway/gdkkeys-broadway.o \
./src/gtk+/gdk/broadway/gdkproperty-broadway.o \
./src/gtk+/gdk/broadway/gdkscreen-broadway.o \
./src/gtk+/gdk/broadway/gdkselection-broadway.o \
./src/gtk+/gdk/broadway/gdktestutils-broadway.o \
./src/gtk+/gdk/broadway/gdkvisual-broadway.o \
./src/gtk+/gdk/broadway/gdkwindow-broadway.o 

C_DEPS += \
./src/gtk+/gdk/broadway/broadway-buffer.d \
./src/gtk+/gdk/broadway/broadway-output.d \
./src/gtk+/gdk/broadway/broadway-server.d \
./src/gtk+/gdk/broadway/broadwayd.d \
./src/gtk+/gdk/broadway/gdkbroadway-server.d \
./src/gtk+/gdk/broadway/gdkcursor-broadway.d \
./src/gtk+/gdk/broadway/gdkdevice-broadway.d \
./src/gtk+/gdk/broadway/gdkdevicemanager-broadway.d \
./src/gtk+/gdk/broadway/gdkdisplay-broadway.d \
./src/gtk+/gdk/broadway/gdkdnd-broadway.d \
./src/gtk+/gdk/broadway/gdkeventsource.d \
./src/gtk+/gdk/broadway/gdkglobals-broadway.d \
./src/gtk+/gdk/broadway/gdkkeys-broadway.d \
./src/gtk+/gdk/broadway/gdkproperty-broadway.d \
./src/gtk+/gdk/broadway/gdkscreen-broadway.d \
./src/gtk+/gdk/broadway/gdkselection-broadway.d \
./src/gtk+/gdk/broadway/gdktestutils-broadway.d \
./src/gtk+/gdk/broadway/gdkvisual-broadway.d \
./src/gtk+/gdk/broadway/gdkwindow-broadway.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/broadway/%.o: ../src/gtk+/gdk/broadway/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


