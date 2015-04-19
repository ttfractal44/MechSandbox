################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/misc/subdir.mk
-include src/World/subdir.mk
-include src/Model/Drawing/subdir.mk
-include src/Client/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: MechSandbox

# Tool invocations
MechSandbox: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross G++ Linker'
	g++ -L/usr/include/gtk-3.0 -L/usr/include/atk-1.0 -L/usr/include/at-spi2-atk/2.0 -L/usr/include/pango-1.0 -L/usr/include/gio-unix-2.0/ -L/usr/include/cairo -L/usr/include/gdk-pixbuf-2.0 -L/usr/include/glib-2.0 -L/usr/lib/x86_64-linux-gnu/glib-2.0/include -L/usr/include/harfbuzz -L/usr/include/freetype2 -L/usr/include/pixman-1 -L/usr/include/libpng12 -o "MechSandbox" $(OBJS) $(USER_OBJS) $(LIBS) `pkg-config --libs openscenegraph sdl2 glew gtk+-3.0`
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C++_DEPS)$(OBJS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) MechSandbox
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
