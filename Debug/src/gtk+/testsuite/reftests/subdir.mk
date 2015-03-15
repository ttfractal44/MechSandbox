################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/testsuite/reftests/expand-expander.c \
../src/gtk+/testsuite/reftests/gtk-reftest.c \
../src/gtk+/testsuite/reftests/label-text-shadow-changes-modify-clip.c \
../src/gtk+/testsuite/reftests/reftest-compare.c \
../src/gtk+/testsuite/reftests/reftest-module.c \
../src/gtk+/testsuite/reftests/reftest-snapshot.c \
../src/gtk+/testsuite/reftests/set-default-direction.c \
../src/gtk+/testsuite/reftests/statusbar-remove-all.c \
../src/gtk+/testsuite/reftests/textview-border-windows.c \
../src/gtk+/testsuite/reftests/textview-tags.c 

OBJS += \
./src/gtk+/testsuite/reftests/expand-expander.o \
./src/gtk+/testsuite/reftests/gtk-reftest.o \
./src/gtk+/testsuite/reftests/label-text-shadow-changes-modify-clip.o \
./src/gtk+/testsuite/reftests/reftest-compare.o \
./src/gtk+/testsuite/reftests/reftest-module.o \
./src/gtk+/testsuite/reftests/reftest-snapshot.o \
./src/gtk+/testsuite/reftests/set-default-direction.o \
./src/gtk+/testsuite/reftests/statusbar-remove-all.o \
./src/gtk+/testsuite/reftests/textview-border-windows.o \
./src/gtk+/testsuite/reftests/textview-tags.o 

C_DEPS += \
./src/gtk+/testsuite/reftests/expand-expander.d \
./src/gtk+/testsuite/reftests/gtk-reftest.d \
./src/gtk+/testsuite/reftests/label-text-shadow-changes-modify-clip.d \
./src/gtk+/testsuite/reftests/reftest-compare.d \
./src/gtk+/testsuite/reftests/reftest-module.d \
./src/gtk+/testsuite/reftests/reftest-snapshot.d \
./src/gtk+/testsuite/reftests/set-default-direction.d \
./src/gtk+/testsuite/reftests/statusbar-remove-all.d \
./src/gtk+/testsuite/reftests/textview-border-windows.d \
./src/gtk+/testsuite/reftests/textview-tags.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/testsuite/reftests/%.o: ../src/gtk+/testsuite/reftests/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


