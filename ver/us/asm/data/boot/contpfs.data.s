.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel __osPfsInodeCacheChannel
/* 09F7C0 8009FC10 */ .word 0xFFFFFFFF

glabel __osPfsInodeCacheBank
/* 09F7C4 8009FC14 */ .word 0xFA000000
/* 09F7C8 8009FC18 */ .word 0x00000000
/* 09F7CC 8009FC1C */ .word 0x00000000
