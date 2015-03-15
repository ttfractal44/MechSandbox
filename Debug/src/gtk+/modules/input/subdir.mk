################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/modules/input/gtkimcontextime.c \
../src/gtk+/modules/input/gtkimcontextmultipress.c \
../src/gtk+/modules/input/gtkimcontextthai.c \
../src/gtk+/modules/input/gtkimcontextxim.c \
../src/gtk+/modules/input/imam-et.c \
../src/gtk+/modules/input/imbroadway.c \
../src/gtk+/modules/input/imcedilla.c \
../src/gtk+/modules/input/imcyrillic-translit.c \
../src/gtk+/modules/input/imime.c \
../src/gtk+/modules/input/iminuktitut.c \
../src/gtk+/modules/input/imipa.c \
../src/gtk+/modules/input/immultipress.c \
../src/gtk+/modules/input/imquartz.c \
../src/gtk+/modules/input/imthai.c \
../src/gtk+/modules/input/imti-er.c \
../src/gtk+/modules/input/imti-et.c \
../src/gtk+/modules/input/imviqr.c \
../src/gtk+/modules/input/imxim.c \
../src/gtk+/modules/input/thai-charprop.c 

OBJS += \
./src/gtk+/modules/input/gtkimcontextime.o \
./src/gtk+/modules/input/gtkimcontextmultipress.o \
./src/gtk+/modules/input/gtkimcontextthai.o \
./src/gtk+/modules/input/gtkimcontextxim.o \
./src/gtk+/modules/input/imam-et.o \
./src/gtk+/modules/input/imbroadway.o \
./src/gtk+/modules/input/imcedilla.o \
./src/gtk+/modules/input/imcyrillic-translit.o \
./src/gtk+/modules/input/imime.o \
./src/gtk+/modules/input/iminuktitut.o \
./src/gtk+/modules/input/imipa.o \
./src/gtk+/modules/input/immultipress.o \
./src/gtk+/modules/input/imquartz.o \
./src/gtk+/modules/input/imthai.o \
./src/gtk+/modules/input/imti-er.o \
./src/gtk+/modules/input/imti-et.o \
./src/gtk+/modules/input/imviqr.o \
./src/gtk+/modules/input/imxim.o \
./src/gtk+/modules/input/thai-charprop.o 

C_DEPS += \
./src/gtk+/modules/input/gtkimcontextime.d \
./src/gtk+/modules/input/gtkimcontextmultipress.d \
./src/gtk+/modules/input/gtkimcontextthai.d \
./src/gtk+/modules/input/gtkimcontextxim.d \
./src/gtk+/modules/input/imam-et.d \
./src/gtk+/modules/input/imbroadway.d \
./src/gtk+/modules/input/imcedilla.d \
./src/gtk+/modules/input/imcyrillic-translit.d \
./src/gtk+/modules/input/imime.d \
./src/gtk+/modules/input/iminuktitut.d \
./src/gtk+/modules/input/imipa.d \
./src/gtk+/modules/input/immultipress.d \
./src/gtk+/modules/input/imquartz.d \
./src/gtk+/modules/input/imthai.d \
./src/gtk+/modules/input/imti-er.d \
./src/gtk+/modules/input/imti-et.d \
./src/gtk+/modules/input/imviqr.d \
./src/gtk+/modules/input/imxim.d \
./src/gtk+/modules/input/thai-charprop.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/modules/input/%.o: ../src/gtk+/modules/input/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


