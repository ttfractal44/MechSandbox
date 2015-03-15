################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gdk/mir/gdkmir-debug.c \
../src/gtk+/gdk/mir/gdkmircursor.c \
../src/gtk+/gdk/mir/gdkmirdevicemanager.c \
../src/gtk+/gdk/mir/gdkmirdisplay.c \
../src/gtk+/gdk/mir/gdkmireventsource.c \
../src/gtk+/gdk/mir/gdkmirglcontext.c \
../src/gtk+/gdk/mir/gdkmirkeyboard.c \
../src/gtk+/gdk/mir/gdkmirkeymap.c \
../src/gtk+/gdk/mir/gdkmirpointer.c \
../src/gtk+/gdk/mir/gdkmirscreen.c \
../src/gtk+/gdk/mir/gdkmirwindow.c \
../src/gtk+/gdk/mir/gdkmirwindowimpl.c 

OBJS += \
./src/gtk+/gdk/mir/gdkmir-debug.o \
./src/gtk+/gdk/mir/gdkmircursor.o \
./src/gtk+/gdk/mir/gdkmirdevicemanager.o \
./src/gtk+/gdk/mir/gdkmirdisplay.o \
./src/gtk+/gdk/mir/gdkmireventsource.o \
./src/gtk+/gdk/mir/gdkmirglcontext.o \
./src/gtk+/gdk/mir/gdkmirkeyboard.o \
./src/gtk+/gdk/mir/gdkmirkeymap.o \
./src/gtk+/gdk/mir/gdkmirpointer.o \
./src/gtk+/gdk/mir/gdkmirscreen.o \
./src/gtk+/gdk/mir/gdkmirwindow.o \
./src/gtk+/gdk/mir/gdkmirwindowimpl.o 

C_DEPS += \
./src/gtk+/gdk/mir/gdkmir-debug.d \
./src/gtk+/gdk/mir/gdkmircursor.d \
./src/gtk+/gdk/mir/gdkmirdevicemanager.d \
./src/gtk+/gdk/mir/gdkmirdisplay.d \
./src/gtk+/gdk/mir/gdkmireventsource.d \
./src/gtk+/gdk/mir/gdkmirglcontext.d \
./src/gtk+/gdk/mir/gdkmirkeyboard.d \
./src/gtk+/gdk/mir/gdkmirkeymap.d \
./src/gtk+/gdk/mir/gdkmirpointer.d \
./src/gtk+/gdk/mir/gdkmirscreen.d \
./src/gtk+/gdk/mir/gdkmirwindow.d \
./src/gtk+/gdk/mir/gdkmirwindowimpl.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gdk/mir/%.o: ../src/gtk+/gdk/mir/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


