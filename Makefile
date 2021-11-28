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
N64READER       ?= tools/64scripts/n64reader/n64reader.elf

OPTFLAGS := 
ASFLAGS := -march=vr4300 -32 -Iinclude
MIPS_VERSION := -mips2


#### Files ####

BASE_DIR       := ver/$(VERSION)

# ROM image
BASE_ROM       := $(BASE_DIR)/baserom_$(VERSION).z64
ROM            := hyp_$(VERSION).z64
ELF            := $(BASE_DIR)/build/$(ROM:.z64=.elf)
# description of ROM segments
SPEC           := $(BASE_DIR)/spec_$(VERSION)
LDSCRIPT       := $(BASE_DIR)/build/ldscript_$(VERSION).txt


ASM_DIRS       := $(shell find $(BASE_DIR)/asm/ -type d)

S_FILES        := $(foreach dir,$(ASM_DIRS),$(wildcard $(dir)/*.s))
BASEROM_FILES  := $(wildcard $(BASE_DIR)/baserom/*)
O_FILES        := $(subst $(BASE_DIR)/,$(BASE_DIR)/build/,$(S_FILES:.s=.o)) \
                  $(subst $(BASE_DIR)/,$(BASE_DIR)/build/,$(BASEROM_FILES:.bin=.o))

DISASM_TARGETS := $(shell sed -r 's/(.+)/ver\/$(VERSION)\/asm\/text\/\1\/.disasm/' $(BASE_DIR)/tables/disasm_list.txt)

# create asm directories
$(shell mkdir -p $(BASE_DIR)/baserom/ $(BASE_DIR)/asm/text $(BASE_DIR)/asm/data)

# create build directories
$(shell mkdir -p $(BASE_DIR)/build/baserom $(foreach dir,$(ASM_DIRS),$(subst $(BASE_DIR)/,$(BASE_DIR)/build/,$(dir))))

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

.PHONY: all setup disasm asmclean clean
.DEFAULT_GOAL := all

#### Main commands ####

## Cleaning ##
clean:
	$(RM) -rf $(ROM) $(ELF) $(BASE_DIR)/build
	$(RM) -rf $(BASE_DIR)/context

asmclean:
	$(RM) -rf $(BASE_DIR)/asm/text $(BASE_DIR)/asm/data $(BASE_DIR)/context

## Extraction step
setup:
	$(RM) -rf $(ELF) $(ROM)
	$(MAKE) -C tools
	./tools/extract_baserom.elf $(VERSION) $(BASE_ROM)

## Assembly generation
disasm: $(DISASM_TARGETS) $(BASE_DIR)/asm/text/makerom/rom_header.s $(BASE_DIR)/asm/text/makerom/ipl3.s
	@echo "Disassembly done!"

#### Various Recipes ####

$(BASE_DIR)/build/undefined_syms_$(VERSION).txt: $(BASE_DIR)/undefined_syms_$(VERSION).txt
	$(CPP) $(CPPFLAGS) $< > $@
$(BASE_DIR)/build/libultra_syms.txt: $(BASE_DIR)/libultra_syms.txt
	$(CPP) $(CPPFLAGS) $< > $@
$(BASE_DIR)/build/hardware_regs.txt: $(BASE_DIR)/hardware_regs.txt
	$(CPP) $(CPPFLAGS) $< > $@

$(LDSCRIPT): $(SPEC)
	$(CPP) $(CPPFLAGS) $< > $(BASE_DIR)/build/spec_$(VERSION)
	$(MKLDSCRIPT) $(BASE_DIR)/build/spec_$(VERSION) $@


$(BASE_DIR)/build/baserom/%.o: $(BASE_DIR)/baserom/%.bin
	$(OBJCOPY) -I binary -O elf32-big $< $@

$(BASE_DIR)/build/asm/text/%.o: $(BASE_DIR)/asm/text/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(BASE_DIR)/build/asm/data/%.o: $(BASE_DIR)/asm/data/%.s
	iconv --from UTF-8 --to EUC-JP $< | $(AS) $(ASFLAGS) -o $@

$(BASE_DIR)/asm/text/%/.disasm: $(BASE_DIR)/baserom/%.bin $(BASE_DIR)/tables/variables.csv $(BASE_DIR)/tables/functions.csv $(BASE_DIR)/tables/files_%.csv
	$(RM) -rf $(BASE_DIR)/asm/text/$* $(BASE_DIR)/asm/data/$* $(BASE_DIR)/context/$*.txt
	$(DISASSEMBLER) $< $(BASE_DIR)/asm/text/$* -q --data-output $(BASE_DIR)/asm/data/$* --variables $(BASE_DIR)/tables/variables.csv --functions $(BASE_DIR)/tables/functions.csv --file-splits $(BASE_DIR)/tables/files_$*.csv  --save-context $(BASE_DIR)/context/$*.txt --functions $(BASE_DIR)/tables/functions_$*.csv --variables $(BASE_DIR)/tables/variables_$*.csv --constants $(BASE_DIR)/tables/constants_$*.csv
	@touch $@

$(BASE_DIR)/asm/text/makerom/rom_header.s: $(BASE_DIR)/baserom/makerom.bin
	mkdir -p $(BASE_DIR)/asm/text/makerom/
	$(N64READER) $(BASE_DIR)/baserom/makerom.bin -e entrypoint -a -u > $(BASE_DIR)/asm/text/makerom/rom_header.s

$(BASE_DIR)/asm/text/makerom/ipl3.s: $(BASE_DIR)/baserom/makerom.bin
	mkdir -p $(BASE_DIR)/asm/text/makerom/
	echo ".incbin \"$(BASE_DIR)/baserom/makerom.bin\", 0x40, 0xFC0" > $(BASE_DIR)/asm/text/makerom/ipl3.s
