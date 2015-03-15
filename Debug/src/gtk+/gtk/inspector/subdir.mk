################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/gtk/inspector/action-editor.c \
../src/gtk+/gtk/inspector/actions.c \
../src/gtk+/gtk/inspector/cellrenderergraph.c \
../src/gtk+/gtk/inspector/classes-list.c \
../src/gtk+/gtk/inspector/css-editor.c \
../src/gtk+/gtk/inspector/data-list.c \
../src/gtk+/gtk/inspector/general.c \
../src/gtk+/gtk/inspector/gestures.c \
../src/gtk+/gtk/inspector/graphdata.c \
../src/gtk+/gtk/inspector/init.c \
../src/gtk+/gtk/inspector/inspect-button.c \
../src/gtk+/gtk/inspector/magnifier.c \
../src/gtk+/gtk/inspector/menu.c \
../src/gtk+/gtk/inspector/misc-info.c \
../src/gtk+/gtk/inspector/object-hierarchy.c \
../src/gtk+/gtk/inspector/object-tree.c \
../src/gtk+/gtk/inspector/prop-editor.c \
../src/gtk+/gtk/inspector/prop-list.c \
../src/gtk+/gtk/inspector/resource-list.c \
../src/gtk+/gtk/inspector/selector.c \
../src/gtk+/gtk/inspector/signals-list.c \
../src/gtk+/gtk/inspector/size-groups.c \
../src/gtk+/gtk/inspector/statistics.c \
../src/gtk+/gtk/inspector/style-prop-list.c \
../src/gtk+/gtk/inspector/treewalk.c \
../src/gtk+/gtk/inspector/visual.c \
../src/gtk+/gtk/inspector/window.c 

OBJS += \
./src/gtk+/gtk/inspector/action-editor.o \
./src/gtk+/gtk/inspector/actions.o \
./src/gtk+/gtk/inspector/cellrenderergraph.o \
./src/gtk+/gtk/inspector/classes-list.o \
./src/gtk+/gtk/inspector/css-editor.o \
./src/gtk+/gtk/inspector/data-list.o \
./src/gtk+/gtk/inspector/general.o \
./src/gtk+/gtk/inspector/gestures.o \
./src/gtk+/gtk/inspector/graphdata.o \
./src/gtk+/gtk/inspector/init.o \
./src/gtk+/gtk/inspector/inspect-button.o \
./src/gtk+/gtk/inspector/magnifier.o \
./src/gtk+/gtk/inspector/menu.o \
./src/gtk+/gtk/inspector/misc-info.o \
./src/gtk+/gtk/inspector/object-hierarchy.o \
./src/gtk+/gtk/inspector/object-tree.o \
./src/gtk+/gtk/inspector/prop-editor.o \
./src/gtk+/gtk/inspector/prop-list.o \
./src/gtk+/gtk/inspector/resource-list.o \
./src/gtk+/gtk/inspector/selector.o \
./src/gtk+/gtk/inspector/signals-list.o \
./src/gtk+/gtk/inspector/size-groups.o \
./src/gtk+/gtk/inspector/statistics.o \
./src/gtk+/gtk/inspector/style-prop-list.o \
./src/gtk+/gtk/inspector/treewalk.o \
./src/gtk+/gtk/inspector/visual.o \
./src/gtk+/gtk/inspector/window.o 

C_DEPS += \
./src/gtk+/gtk/inspector/action-editor.d \
./src/gtk+/gtk/inspector/actions.d \
./src/gtk+/gtk/inspector/cellrenderergraph.d \
./src/gtk+/gtk/inspector/classes-list.d \
./src/gtk+/gtk/inspector/css-editor.d \
./src/gtk+/gtk/inspector/data-list.d \
./src/gtk+/gtk/inspector/general.d \
./src/gtk+/gtk/inspector/gestures.d \
./src/gtk+/gtk/inspector/graphdata.d \
./src/gtk+/gtk/inspector/init.d \
./src/gtk+/gtk/inspector/inspect-button.d \
./src/gtk+/gtk/inspector/magnifier.d \
./src/gtk+/gtk/inspector/menu.d \
./src/gtk+/gtk/inspector/misc-info.d \
./src/gtk+/gtk/inspector/object-hierarchy.d \
./src/gtk+/gtk/inspector/object-tree.d \
./src/gtk+/gtk/inspector/prop-editor.d \
./src/gtk+/gtk/inspector/prop-list.d \
./src/gtk+/gtk/inspector/resource-list.d \
./src/gtk+/gtk/inspector/selector.d \
./src/gtk+/gtk/inspector/signals-list.d \
./src/gtk+/gtk/inspector/size-groups.d \
./src/gtk+/gtk/inspector/statistics.d \
./src/gtk+/gtk/inspector/style-prop-list.d \
./src/gtk+/gtk/inspector/treewalk.d \
./src/gtk+/gtk/inspector/visual.d \
./src/gtk+/gtk/inspector/window.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/gtk/inspector/%.o: ../src/gtk+/gtk/inspector/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0 gtk+-3.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


