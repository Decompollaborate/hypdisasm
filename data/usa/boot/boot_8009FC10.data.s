.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_8009FC10
/* 09F7C0 8009FC10 */ .word 0xFFFFFFFF

glabel D_8009FC14
/* 09F7C4 8009FC14 */ .word 0xFA000000
/* 09F7C8 8009FC18 */ .word 0x00000000
/* 09F7CC 8009FC1C */ .word 0x00000000

glabel D_8009FC20
/* 09F7D0 8009FC20 */ .word 0x00000000

glabel D_8009FC24
/* 09F7D4 8009FC24 */ .word 0x00000000

glabel D_8009FC28
/* 09F7D8 8009FC28 */ .word 0x00000001
/* 09F7DC 8009FC2C */ .word 0x00000000
