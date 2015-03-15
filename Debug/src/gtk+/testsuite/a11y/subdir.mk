################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/testsuite/a11y/accessibility-dump.c \
../src/gtk+/testsuite/a11y/children.c \
../src/gtk+/testsuite/a11y/derive.c \
../src/gtk+/testsuite/a11y/misc.c \
../src/gtk+/testsuite/a11y/testfocus.c \
../src/gtk+/testsuite/a11y/text.c \
../src/gtk+/testsuite/a11y/tree-performance.c \
../src/gtk+/testsuite/a11y/tree-relationships.c \
../src/gtk+/testsuite/a11y/util.c \
../src/gtk+/testsuite/a11y/value.c 

OBJS += \
./src/gtk+/testsuite/a11y/accessibility-dump.o \
./src/gtk+/testsuite/a11y/children.o \
./src/gtk+/testsuite/a11y/derive.o \
./src/gtk+/testsuite/a11y/misc.o \
./src/gtk+/testsuite/a11y/testfocus.o \
./src/gtk+/testsuite/a11y/text.o \
./src/gtk+/testsuite/a11y/tree-performance.o \
./src/gtk+/testsuite/a11y/tree-relationships.o \
./src/gtk+/testsuite/a11y/util.o \
./src/gtk+/testsuite/a11y/value.o 

C_DEPS += \
./src/gtk+/testsuite/a11y/accessibility-dump.d \
./src/gtk+/testsuite/a11y/children.d \
./src/gtk+/testsuite/a11y/derive.d \
./src/gtk+/testsuite/a11y/misc.d \
./src/gtk+/testsuite/a11y/testfocus.d \
./src/gtk+/testsuite/a11y/text.d \
./src/gtk+/testsuite/a11y/tree-performance.d \
./src/gtk+/testsuite/a11y/tree-relationships.d \
./src/gtk+/testsuite/a11y/util.d \
./src/gtk+/testsuite/a11y/value.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/testsuite/a11y/%.o: ../src/gtk+/testsuite/a11y/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


