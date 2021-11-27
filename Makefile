MAKEFLAGS += --no-builtin-rules

# Build options can either be changed by modifying the makefile, or by building with 'make SETTING=value'

VERSION  ?= us
# If COMPARE is 1, check the output md5sum after building
COMPARE ?= 1

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



CPP             := cpp
ELF2ROM         ?= 
MKLDSCRIPT      ?= 
DISASSEMBLER    ?= tools/py-mips-disasm/simpleDisasm.py

OPTFLAGS := 
ASFLAGS := -march=vr4300 -32 -Iinclude
MIPS_VERSION := -mips2


#### Files ####

BASE_DIR       := ver/$(VERSION)

# ROM image
BASE_ROM       := $(BASE_DIR)/baserom_us.z64
ROM            := hyp_$(VERSION).z64
ELF            := $(BASE_DIR)/build/$(ROM:.z64=.elf)
# description of ROM segments
SPEC           := $(BASE_DIR)/spec_$(VERSION)
LDSCRIPT       := $(BASE_DIR)/build/ldscript_$(VERSION).txt


ASM_DIRS := $(shell find $(BASE_DIR)/asm/ -type d)

S_FILES       := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
#O_FILES       := $(foreach f,$(S_FILES:.s=.o),build/$f) \
#                 $(foreach f,$(wildcard baserom/*),build/$f.o)

# $(info $(S_FILES))

# create asm directories
$(shell mkdir -p $(BASE_DIR)/baserom/ $(BASE_DIR)/asm/text $(BASE_DIR)/asm/data)


# create build directories
$(shell mkdir -p $(BASE_DIR)/build/baserom)
# $(shell mkdir -p $(BASE_DIR)/build/baserom $(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(ASSET_BIN_DIRS),build/$(dir)))

#### Main Targets ###

all: $(ROM)
ifeq ($(COMPARE),1)
	@md5sum $(ROM)
	@md5sum -c $(BASE_DIR)/checksum_$(VERSION).md5
endif

$(ROM): $(ELF)
	$(ELF2ROM) -cic 6102 $< $@

$(ELF): $(O_FILES) $(LDSCRIPT) $(BASE_DIR)/build/undefined_syms_$(VERSION).txt $(BASE_DIR)/build/libultra_syms.txt $(BASE_DIR)/build/hardware_regs.txt
	$(LD) -T $(BASE_DIR)/build/undefined_syms_$(VERSION).txt -T $(BASE_DIR)/build/libultra_syms.txt -T $(BASE_DIR)/build/hardware_regs.txt -T $(LDSCRIPT) --no-check-sections --accept-unknown-input-arch --emit-relocs -Map $(BASE_DIR)/build/hyp_$(VERSION).map -o $@

.PHONY: all setup clean
.DEFAULT_GOAL := all

#### Main commands ####

## Cleaning ##
clean:
	$(RM) -rf $(ROM) $(ELF) $(BASE_DIR)/build


## Extraction step
setup:
	$(RM) -f $(ELF) $(ROM)
	$(MAKE) -C tools
	./tools/extract_baserom.elf $(VERSION) $(BASE_ROM)


#### Various Recipes ####

$(BASE_DIR)/build/undefined_syms_$(VERSION).txt: $(BASE_DIR)/undefined_syms_$(VERSION).txt
	$(CPP) $(CPPFLAGS) $< > $@
$(BASE_DIR)/build/libultra_syms.txt: $(BASE_DIR)/libultra_syms.txt
	$(CPP) $(CPPFLAGS) $< > $@
$(BASE_DIR)/build/hardware_regs.txt: $(BASE_DIR)/hardware_regs.txt
	$(CPP) $(CPPFLAGS) $< > $@

$(LDSCRIPT): $(SPEC)
	$(CPP) $(CPPFLAGS) $< > $(BASE_DIR)/build/spec_us
	$(MKLDSCRIPT) $(BASE_DIR)/build/spec_us $@


$(BASE_DIR)/build/baserom/%.o: $(BASE_DIR)/baserom/%.bin
	$(OBJCOPY) -I binary -O elf32-big $< $@

$(BASE_DIR)/build/asm/text/%.o: $(BASE_DIR)/asm/text/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(BASE_DIR)/build/asm/data/%.o: $(BASE_DIR)/asm/data/%.s
	iconv --from UTF-8 --to EUC-JP $< | $(AS) $(ASFLAGS) -o $@
