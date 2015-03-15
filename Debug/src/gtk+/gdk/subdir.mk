################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/fallback-c89.c \
../src/gtk+/gdk/gdk-private.c \
../src/gtk+/gdk/gdk.c \
../src/gtk+/gdk/gdkapplaunchcontext.c \
../src/gtk+/gdk/gdkcairo.c \
../src/gtk+/gdk/gdkcursor.c \
../src/gtk+/gdk/gdkdeprecated.c \
../src/gtk+/gdk/gdkdevice.c \
../src/gtk+/gdk/gdkdevicemanager.c \
../src/gtk+/gdk/gdkdisplay.c \
../src/gtk+/gdk/gdkdisplaymanager.c \
../src/gtk+/gdk/gdkdnd.c \
../src/gtk+/gdk/gdkevents.c \
../src/gtk+/gdk/gdkframeclock.c \
../src/gtk+/gdk/gdkframeclockidle.c \
../src/gtk+/gdk/gdkframetimings.c \
../src/gtk+/gdk/gdkgl.c \
../src/gtk+/gdk/gdkglcontext.c \
../src/gtk+/gdk/gdkglobals.c \
../src/gtk+/gdk/gdkkeynames.c \
../src/gtk+/gdk/gdkkeys.c \
../src/gtk+/gdk/gdkkeyuni.c \
../src/gtk+/gdk/gdkoffscreenwindow.c \
../src/gtk+/gdk/gdkpango.c \
../src/gtk+/gdk/gdkpixbuf-drawable.c \
../src/gtk+/gdk/gdkproperty.c \
../src/gtk+/gdk/gdkrectangle.c \
../src/gtk+/gdk/gdkrgba.c \
../src/gtk+/gdk/gdkscreen.c \
../src/gtk+/gdk/gdkselection.c \
../src/gtk+/gdk/gdkvisual.c \
../src/gtk+/gdk/gdkwindow.c \
../src/gtk+/gdk/gdkwindowimpl.c 

OBJS += \
./src/gtk+/gdk/fallback-c89.o \
./src/gtk+/gdk/gdk-private.o \
./src/gtk+/gdk/gdk.o \
./src/gtk+/gdk/gdkapplaunchcontext.o \
./src/gtk+/gdk/gdkcairo.o \
./src/gtk+/gdk/gdkcursor.o \
./src/gtk+/gdk/gdkdeprecated.o \
./src/gtk+/gdk/gdkdevice.o \
./src/gtk+/gdk/gdkdevicemanager.o \
./src/gtk+/gdk/gdkdisplay.o \
./src/gtk+/gdk/gdkdisplaymanager.o \
./src/gtk+/gdk/gdkdnd.o \
./src/gtk+/gdk/gdkevents.o \
./src/gtk+/gdk/gdkframeclock.o \
./src/gtk+/gdk/gdkframeclockidle.o \
./src/gtk+/gdk/gdkframetimings.o \
./src/gtk+/gdk/gdkgl.o \
./src/gtk+/gdk/gdkglcontext.o \
./src/gtk+/gdk/gdkglobals.o \
./src/gtk+/gdk/gdkkeynames.o \
./src/gtk+/gdk/gdkkeys.o \
./src/gtk+/gdk/gdkkeyuni.o \
./src/gtk+/gdk/gdkoffscreenwindow.o \
./src/gtk+/gdk/gdkpango.o \
./src/gtk+/gdk/gdkpixbuf-drawable.o \
./src/gtk+/gdk/gdkproperty.o \
./src/gtk+/gdk/gdkrectangle.o \
./src/gtk+/gdk/gdkrgba.o \
./src/gtk+/gdk/gdkscreen.o \
./src/gtk+/gdk/gdkselection.o \
./src/gtk+/gdk/gdkvisual.o \
./src/gtk+/gdk/gdkwindow.o \
./src/gtk+/gdk/gdkwindowimpl.o 

C_DEPS += \
./src/gtk+/gdk/fallback-c89.d \
./src/gtk+/gdk/gdk-private.d \
./src/gtk+/gdk/gdk.d \
./src/gtk+/gdk/gdkapplaunchcontext.d \
./src/gtk+/gdk/gdkcairo.d \
./src/gtk+/gdk/gdkcursor.d \
./src/gtk+/gdk/gdkdeprecated.d \
./src/gtk+/gdk/gdkdevice.d \
./src/gtk+/gdk/gdkdevicemanager.d \
./src/gtk+/gdk/gdkdisplay.d \
./src/gtk+/gdk/gdkdisplaymanager.d \
./src/gtk+/gdk/gdkdnd.d \
./src/gtk+/gdk/gdkevents.d \
./src/gtk+/gdk/gdkframeclock.d \
./src/gtk+/gdk/gdkframeclockidle.d \
./src/gtk+/gdk/gdkframetimings.d \
./src/gtk+/gdk/gdkgl.d \
./src/gtk+/gdk/gdkglcontext.d \
./src/gtk+/gdk/gdkglobals.d \
./src/gtk+/gdk/gdkkeynames.d \
./src/gtk+/gdk/gdkkeys.d \
./src/gtk+/gdk/gdkkeyuni.d \
./src/gtk+/gdk/gdkoffscreenwindow.d \
./src/gtk+/gdk/gdkpango.d \
./src/gtk+/gdk/gdkpixbuf-drawable.d \
./src/gtk+/gdk/gdkproperty.d \
./src/gtk+/gdk/gdkrectangle.d \
./src/gtk+/gdk/gdkrgba.d \
./src/gtk+/gdk/gdkscreen.d \
./src/gtk+/gdk/gdkselection.d \
./src/gtk+/gdk/gdkvisual.d \
./src/gtk+/gdk/gdkwindow.d \
./src/gtk+/gdk/gdkwindowimpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/%.o: ../src/gtk+/gdk/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


