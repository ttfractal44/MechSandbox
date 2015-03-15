################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/win32/bdfcursor.c \
../src/gtk+/gdk/win32/gdkcursor-win32.c \
../src/gtk+/gdk/win32/gdkdevice-virtual.c \
../src/gtk+/gdk/win32/gdkdevice-win32.c \
../src/gtk+/gdk/win32/gdkdevice-wintab.c \
../src/gtk+/gdk/win32/gdkdevicemanager-win32.c \
../src/gtk+/gdk/win32/gdkdisplay-win32.c \
../src/gtk+/gdk/win32/gdkdisplaymanager-win32.c \
../src/gtk+/gdk/win32/gdkdnd-win32.c \
../src/gtk+/gdk/win32/gdkevents-win32.c \
../src/gtk+/gdk/win32/gdkgeometry-win32.c \
../src/gtk+/gdk/win32/gdkglcontext-win32.c \
../src/gtk+/gdk/win32/gdkglobals-win32.c \
../src/gtk+/gdk/win32/gdkinput.c \
../src/gtk+/gdk/win32/gdkkeys-win32.c \
../src/gtk+/gdk/win32/gdkmain-win32.c \
../src/gtk+/gdk/win32/gdkproperty-win32.c \
../src/gtk+/gdk/win32/gdkscreen-win32.c \
../src/gtk+/gdk/win32/gdkselection-win32.c \
../src/gtk+/gdk/win32/gdktestutils-win32.c \
../src/gtk+/gdk/win32/gdkvisual-win32.c \
../src/gtk+/gdk/win32/gdkwin32id.c \
../src/gtk+/gdk/win32/gdkwindow-win32.c 

OBJS += \
./src/gtk+/gdk/win32/bdfcursor.o \
./src/gtk+/gdk/win32/gdkcursor-win32.o \
./src/gtk+/gdk/win32/gdkdevice-virtual.o \
./src/gtk+/gdk/win32/gdkdevice-win32.o \
./src/gtk+/gdk/win32/gdkdevice-wintab.o \
./src/gtk+/gdk/win32/gdkdevicemanager-win32.o \
./src/gtk+/gdk/win32/gdkdisplay-win32.o \
./src/gtk+/gdk/win32/gdkdisplaymanager-win32.o \
./src/gtk+/gdk/win32/gdkdnd-win32.o \
./src/gtk+/gdk/win32/gdkevents-win32.o \
./src/gtk+/gdk/win32/gdkgeometry-win32.o \
./src/gtk+/gdk/win32/gdkglcontext-win32.o \
./src/gtk+/gdk/win32/gdkglobals-win32.o \
./src/gtk+/gdk/win32/gdkinput.o \
./src/gtk+/gdk/win32/gdkkeys-win32.o \
./src/gtk+/gdk/win32/gdkmain-win32.o \
./src/gtk+/gdk/win32/gdkproperty-win32.o \
./src/gtk+/gdk/win32/gdkscreen-win32.o \
./src/gtk+/gdk/win32/gdkselection-win32.o \
./src/gtk+/gdk/win32/gdktestutils-win32.o \
./src/gtk+/gdk/win32/gdkvisual-win32.o \
./src/gtk+/gdk/win32/gdkwin32id.o \
./src/gtk+/gdk/win32/gdkwindow-win32.o 

C_DEPS += \
./src/gtk+/gdk/win32/bdfcursor.d \
./src/gtk+/gdk/win32/gdkcursor-win32.d \
./src/gtk+/gdk/win32/gdkdevice-virtual.d \
./src/gtk+/gdk/win32/gdkdevice-win32.d \
./src/gtk+/gdk/win32/gdkdevice-wintab.d \
./src/gtk+/gdk/win32/gdkdevicemanager-win32.d \
./src/gtk+/gdk/win32/gdkdisplay-win32.d \
./src/gtk+/gdk/win32/gdkdisplaymanager-win32.d \
./src/gtk+/gdk/win32/gdkdnd-win32.d \
./src/gtk+/gdk/win32/gdkevents-win32.d \
./src/gtk+/gdk/win32/gdkgeometry-win32.d \
./src/gtk+/gdk/win32/gdkglcontext-win32.d \
./src/gtk+/gdk/win32/gdkglobals-win32.d \
./src/gtk+/gdk/win32/gdkinput.d \
./src/gtk+/gdk/win32/gdkkeys-win32.d \
./src/gtk+/gdk/win32/gdkmain-win32.d \
./src/gtk+/gdk/win32/gdkproperty-win32.d \
./src/gtk+/gdk/win32/gdkscreen-win32.d \
./src/gtk+/gdk/win32/gdkselection-win32.d \
./src/gtk+/gdk/win32/gdktestutils-win32.d \
./src/gtk+/gdk/win32/gdkvisual-win32.d \
./src/gtk+/gdk/win32/gdkwin32id.d \
./src/gtk+/gdk/win32/gdkwindow-win32.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/win32/%.o: ../src/gtk+/gdk/win32/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


