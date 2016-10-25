# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = $(SHELL) -c "mkdir -p \"$(1)\""
    RM = $(SHELL) -c "rm -rf \"$(1)\""
endif

ifeq (,$(filter .build,$(notdir $(CURDIR))))
.SUFFIXES:
OBJDIR := .build
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = $(MAKE) --no-print-directory -C $(OBJDIR) -f $(mkfile_path) \
		SRCDIR=$(CURDIR) $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

VPATH = .. 

GCC_BIN = 
PROJECT = main
OBJECTS = main.o 
SYS_OBJECTS = mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/cmsis_nvic.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/mbed_board.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/mbed_overrides.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/retarget.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/startup_MK64F12.o mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/system_MK64F12.o 
INCLUDE_PATHS = -I../. -I../mbed/. -I../mbed/TARGET_K64F -I../mbed/TARGET_K64F/TARGET_Freescale -I../mbed/TARGET_K64F/TARGET_Freescale/TARGET_KSDK2_MCUS -I../mbed/TARGET_K64F/TARGET_Freescale/TARGET_KSDK2_MCUS/TARGET_MCU_K64F -I../mbed/TARGET_K64F/TARGET_Freescale/TARGET_KSDK2_MCUS/TARGET_MCU_K64F/TARGET_FRDM -I../mbed/TARGET_K64F/TARGET_Freescale/TARGET_KSDK2_MCUS/TARGET_MCU_K64F/drivers -I../mbed/TARGET_K64F/TARGET_Freescale/TARGET_KSDK2_MCUS/api -I../mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM 
LIBRARY_PATHS = -L../mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM 
LIBRARIES = -lmbed 
LINKER_SCRIPT = ../mbed/TARGET_K64F/TOOLCHAIN_GCC_ARM/MK64FN1M0xxx12.ld

############################################################################### 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE    = $(GCC_BIN)arm-none-eabi-size 

ifeq ($(HARDFP),1)
	FLOAT_ABI = hard
else
	FLOAT_ABI = softfp
endif


CPU = -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=$(FLOAT_ABI) 
CC_FLAGS = -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Os -std=gnu99 -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -D__FPU_PRESENT=1 -DTARGET_Freescale -DDEVICE_PORTINOUT=1 -DTARGET_RTOS_M4_M7 -DDEVICE_LOWPOWERTIMER=1 -DDEVICE_RTC=1 -DTOOLCHAIN_object -D__CMSIS_RTOS -DMBED_BUILD_TIMESTAMP=1477337802.14 -DFSL_RTOS_MBED -DMBEDTLS_ENTROPY_HARDWARE_ALT -DTARGET_KPSDK_MCUS -DTOOLCHAIN_GCC -DTARGET_CORTEX_M -DTARGET_KSDK2_MCUS -DTARGET_LIKE_CORTEX_M4 -DDEVICE_ANALOGOUT=1 -DTARGET_M4 -DTARGET_UVISOR_UNSUPPORTED -DTARGET_K64F -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -D__CORTEX_M4 -DDEVICE_STDIO_MESSAGES=1 -DCPU_MK64FN1M0VMD12 -DFEATURE_IPV4=1 -DTARGET_LIKE_MBED -DTARGET_FF_ARDUINO -DTARGET_KPSDK_CODE -DTARGET_RELEASE -DDEVICE_SERIAL_FC=1 -DFEATURE_STORAGE=1 -DDEVICE_STORAGE=1 -D__MBED_CMSIS_RTOS_CM -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DTARGET_FRDM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DDEVICE_PORTIN=1 -DTARGET_MCU_K64F -DARM_MATH_CM4 -include mbed_config.h -MMD -MP
CPPC_FLAGS = -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Os -std=gnu++98 -fno-rtti -Wvla -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -D__FPU_PRESENT=1 -DTARGET_Freescale -DDEVICE_PORTINOUT=1 -DTARGET_RTOS_M4_M7 -DDEVICE_LOWPOWERTIMER=1 -DDEVICE_RTC=1 -DTOOLCHAIN_object -D__CMSIS_RTOS -DMBED_BUILD_TIMESTAMP=1477337802.14 -DFSL_RTOS_MBED -DMBEDTLS_ENTROPY_HARDWARE_ALT -DTARGET_KPSDK_MCUS -DTOOLCHAIN_GCC -DTARGET_CORTEX_M -DTARGET_KSDK2_MCUS -DTARGET_LIKE_CORTEX_M4 -DDEVICE_ANALOGOUT=1 -DTARGET_M4 -DTARGET_UVISOR_UNSUPPORTED -DTARGET_K64F -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -D__CORTEX_M4 -DDEVICE_STDIO_MESSAGES=1 -DCPU_MK64FN1M0VMD12 -DFEATURE_IPV4=1 -DTARGET_LIKE_MBED -DTARGET_FF_ARDUINO -DTARGET_KPSDK_CODE -DTARGET_RELEASE -DDEVICE_SERIAL_FC=1 -DFEATURE_STORAGE=1 -DDEVICE_STORAGE=1 -D__MBED_CMSIS_RTOS_CM -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DTARGET_FRDM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DDEVICE_PORTIN=1 -DTARGET_MCU_K64F -DARM_MATH_CM4 -include mbed_config.h -MMD -MP
ASM_FLAGS = -x assembler-with-cpp -D__CORTEX_M4 -DCPU_MK64FN1M0VMD12 -DARM_MATH_CM4 -D__FPU_PRESENT=1 -D__MBED_CMSIS_RTOS_CM -D__CMSIS_RTOS -DFSL_RTOS_MBED -DMBEDTLS_ENTROPY_HARDWARE_ALT -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -Os
CC_SYMBOLS = -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -D__FPU_PRESENT=1 -DTARGET_Freescale -DDEVICE_PORTINOUT=1 -DTARGET_RTOS_M4_M7 -DDEVICE_LOWPOWERTIMER=1 -DDEVICE_RTC=1 -DTOOLCHAIN_object -D__CMSIS_RTOS -DMBED_BUILD_TIMESTAMP=1477337802.14 -DFSL_RTOS_MBED -DMBEDTLS_ENTROPY_HARDWARE_ALT -DTARGET_KPSDK_MCUS -DTOOLCHAIN_GCC -DTARGET_CORTEX_M -DTARGET_KSDK2_MCUS -DTARGET_LIKE_CORTEX_M4 -DDEVICE_ANALOGOUT=1 -DTARGET_M4 -DTARGET_UVISOR_UNSUPPORTED -DTARGET_K64F -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -D__CORTEX_M4 -DDEVICE_STDIO_MESSAGES=1 -DCPU_MK64FN1M0VMD12 -DFEATURE_IPV4=1 -DTARGET_LIKE_MBED -DTARGET_FF_ARDUINO -DTARGET_KPSDK_CODE -DTARGET_RELEASE -DDEVICE_SERIAL_FC=1 -DFEATURE_STORAGE=1 -DDEVICE_STORAGE=1 -D__MBED_CMSIS_RTOS_CM -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DTARGET_FRDM -DDEVICE_SPI=1 -DDEVICE_ERROR_RED=1 -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DDEVICE_PORTIN=1 -DTARGET_MCU_K64F -DARM_MATH_CM4 

LD_FLAGS =-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_calloc_r -mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=softfp 
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys


ifeq ($(DEBUG), 1)
  CC_FLAGS += -DDEBUG -O0
else
  CC_FLAGS += -DNDEBUG -Os
endif


.PHONY: all lst size

all: $(PROJECT).bin $(PROJECT).hex size



.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.s.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.S.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CPP) $(CPPC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(LINKER_SCRIPT)
	$(LD) $(LD_FLAGS) -T$(filter %.ld, $^) $(LIBRARY_PATHS) -o $@ $(filter %.o, $^) -Wl,--start-group $(LIBRARIES) $(LD_SYS_LIBS) -Wl,--end-group


$(PROJECT).bin: $(PROJECT).elf
	$(OBJCOPY) -O binary $< $@

$(PROJECT).hex: $(PROJECT).elf
	@$(OBJCOPY) -O ihex $< $@

$(PROJECT).lst: $(PROJECT).elf
	@$(OBJDUMP) -Sdh $< > $@

lst: $(PROJECT).lst

size: $(PROJECT).elf
	$(SIZE) $(PROJECT).elf

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)


MBED ?= /cygdrive/e
CYG = $(shell uname -o)
load:
	$(shell if [[ "$(CYG)" -eq "Cygwin" ]]; then cp $(PROJECT).bin $(MBED); else echo "Cygwin only!"; fi)
	


endif