################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/gtk+/modules/printbackends/cups/gtkcupssecretsutils.c \
../src/gtk+/modules/printbackends/cups/gtkcupsutils.c \
../src/gtk+/modules/printbackends/cups/gtkprintbackendcups.c \
../src/gtk+/modules/printbackends/cups/gtkprintercups.c 

OBJS += \
./src/gtk+/modules/printbackends/cups/gtkcupssecretsutils.o \
./src/gtk+/modules/printbackends/cups/gtkcupsutils.o \
./src/gtk+/modules/printbackends/cups/gtkprintbackendcups.o \
./src/gtk+/modules/printbackends/cups/gtkprintercups.o 

C_DEPS += \
./src/gtk+/modules/printbackends/cups/gtkcupssecretsutils.d \
./src/gtk+/modules/printbackends/cups/gtkcupsutils.d \
./src/gtk+/modules/printbackends/cups/gtkprintbackendcups.d \
./src/gtk+/modules/printbackends/cups/gtkprintercups.d 


# Each subdirectory must supply rules for building sources it contributes
src/gtk+/modules/printbackends/cups/%.o: ../src/gtk+/modules/printbackends/cups/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 `pkg-config --cflags glib-2.0` -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


