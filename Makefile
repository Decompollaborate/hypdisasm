MAKEFLAGS += --no-builtin-rules

# Build options can either be changed by modifying the makefile, or by building with 'make SETTING=value'



# create asm directories
$(shell mkdir -p asm data baserom/usa baserom/jp)



# create build directories
# $(shell mkdir -p build/baserom $(foreach dir,$(SRC_DIRS) $(ASM_DIRS) $(ASSET_BIN_DIRS),build/$(dir)))


.PHONY: setup


## Extraction step
setup:
	$(MAKE) -C tools
