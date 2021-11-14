DEBUG       ?= 0
LLD         ?= 1
ASAN        ?= 0

PROGRAMS	:= extract_baserom.elf

CC          := clang
INC         := 
WARNINGS    := -Wall -Wextra -Wpedantic -Wshadow -Werror=implicit-function-declaration -Wvla
CFLAGS      := -std=c11
LDFLAGS     := 

ifeq ($(DEBUG),0)
  OPTFLAGS  := -O2
  CFLAGS    += -Werror
else
  OPTFLAGS  := -O0 -g3
endif

ifneq ($(ASAN),0)
  CFLAGS    += -fsanitize=address -fsanitize=pointer-compare -fsanitize=pointer-subtract -fsanitize=undefined
endif

ifneq ($(LLD),0)
  LDFLAGS   += -fuse-ld=lld
endif

all: $(PROGRAMS)

clean:
	$(RM) -r $(ELF)

.PHONY: all clean

%.elf: %.c
	$(CC) $(INC) $(WARNINGS) $(CFLAGS) $(OPTFLAGS) $(LDFLAGS) -o $@ $^
