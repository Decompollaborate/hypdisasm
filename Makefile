MAKEFLAGS += --no-builtin-rules

# Build options can either be changed by modifying the makefile, or by building with 'make SETTING=value'
VERSION  ?= us

MAKE = make
CPPFLAGS += -P


#### Tools ####
ifeq ($(shell type mips-linux-gnu-ld >/dev/null 2>/dev/null; echo $$?), 0)
  MIPS_BINUTILS_PREFIX := mips-linux-gnu-
else
  $(error Please install or build mips-linux-gnu)
endif



AS         := $(MIPS_BINUTILS_PREFIX)as
LD         := $(MIPS_BINUTILS_PREFIX)ld
OBJCOPY    := $(MIPS_BINUTILS_PREFIX)objcopy
OBJDUMP    := $(MIPS_BINUTILS_PREFIX)objdump
MIPS_GCC   := $(MIPS_BINUTILS_PREFIX)gcc



CPP        := cpp

OPTFLAGS := 
ASFLAGS := -march=vr4300 -32 -Iinclude
MIPS_VERSION := -mips2


# create asm directories
$(shell mkdir -p ver/$(VERSION)/baserom/ ver/$(VERSION)/asm/text ver/$(VERSION)/asm/data)



# create build directories
$(shell mkdir -p ver/$(VERSION)/build/baserom)
# $(shell mkdir -p ver/$(VERSION)/build/baserom $(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(ASSET_BIN_DIRS),build/$(dir)))


.PHONY: setup


## Extraction step
setup:
	$(MAKE) -C tools



ver/$(VERSION)/build/baserom/%.o: ver/$(VERSION)/baserom/%.bin
	$(OBJCOPY) -I binary -O elf32-big $< $@

ver/$(VERSION)/build/asm/text/%.o: ver/$(VERSION)/asm/text/%.s
	$(AS) $(ASFLAGS) $< -o $@

ver/$(VERSION)/build/asm/data/%.o: ver/$(VERSION)/asm/data/%.s
	iconv --from UTF-8 --to EUC-JP $< | $(AS) $(ASFLAGS) -o $@
