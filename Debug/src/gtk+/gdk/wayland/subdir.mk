################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/wayland/gdkapplaunchcontext-wayland.c \
../src/gtk+/gdk/wayland/gdkcursor-wayland.c \
../src/gtk+/gdk/wayland/gdkdevice-wayland.c \
../src/gtk+/gdk/wayland/gdkdisplay-wayland.c \
../src/gtk+/gdk/wayland/gdkdnd-wayland.c \
../src/gtk+/gdk/wayland/gdkeventsource.c \
../src/gtk+/gdk/wayland/gdkglcontext-wayland.c \
../src/gtk+/gdk/wayland/gdkkeys-wayland.c \
../src/gtk+/gdk/wayland/gdkscreen-wayland.c \
../src/gtk+/gdk/wayland/gdkselection-wayland.c \
../src/gtk+/gdk/wayland/gdkwindow-wayland.c \
../src/gtk+/gdk/wayland/wm-button-layout-translation.c 

OBJS += \
./src/gtk+/gdk/wayland/gdkapplaunchcontext-wayland.o \
./src/gtk+/gdk/wayland/gdkcursor-wayland.o \
./src/gtk+/gdk/wayland/gdkdevice-wayland.o \
./src/gtk+/gdk/wayland/gdkdisplay-wayland.o \
./src/gtk+/gdk/wayland/gdkdnd-wayland.o \
./src/gtk+/gdk/wayland/gdkeventsource.o \
./src/gtk+/gdk/wayland/gdkglcontext-wayland.o \
./src/gtk+/gdk/wayland/gdkkeys-wayland.o \
./src/gtk+/gdk/wayland/gdkscreen-wayland.o \
./src/gtk+/gdk/wayland/gdkselection-wayland.o \
./src/gtk+/gdk/wayland/gdkwindow-wayland.o \
./src/gtk+/gdk/wayland/wm-button-layout-translation.o 

C_DEPS += \
./src/gtk+/gdk/wayland/gdkapplaunchcontext-wayland.d \
./src/gtk+/gdk/wayland/gdkcursor-wayland.d \
./src/gtk+/gdk/wayland/gdkdevice-wayland.d \
./src/gtk+/gdk/wayland/gdkdisplay-wayland.d \
./src/gtk+/gdk/wayland/gdkdnd-wayland.d \
./src/gtk+/gdk/wayland/gdkeventsource.d \
./src/gtk+/gdk/wayland/gdkglcontext-wayland.d \
./src/gtk+/gdk/wayland/gdkkeys-wayland.d \
./src/gtk+/gdk/wayland/gdkscreen-wayland.d \
./src/gtk+/gdk/wayland/gdkselection-wayland.d \
./src/gtk+/gdk/wayland/gdkwindow-wayland.d \
./src/gtk+/gdk/wayland/wm-button-layout-translation.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/wayland/%.o: ../src/gtk+/gdk/wayland/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


