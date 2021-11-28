.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_800A4D40
/* 0A48F0 800A4D40 */ .word 0x00000000
/* 0A48F4 800A4D44 */ .word 0x00000000
/* 0A48F8 800A4D48 */ .word 0x00000000
/* 0A48FC 800A4D4C */ .word 0x00000000
/* 0A4900 800A4D50 */ .word 0x00000000
/* 0A4904 800A4D54 */ .word 0x00000000
/* 0A4908 800A4D58 */ .word 0x00000000
/* 0A490C 800A4D5C */ .word 0x00000000
