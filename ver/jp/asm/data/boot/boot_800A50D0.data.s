.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_800A50D0
/* 0A4C80 800A50D0 */ .word 0x00000000

glabel D_800A50D4
/* 0A4C84 800A50D4 */ .word 0x00000000

glabel D_800A50D8
/* 0A4C88 800A50D8 */ .word 0x00000001
/* 0A4C8C 800A50DC */ .word 0x00000000
