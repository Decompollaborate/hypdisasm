.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A7D20
/* 0A78D0 800A7D20 80000000 */  .word  0x80000000
/* 0A78D4 800A7D24 00000000 */  .word  0x00000000

glabel D_800A7D28
/* 0A78D8 800A7D28 80000000 */  .word  0x80000000
/* 0A78DC 800A7D2C 00000000 */  .word  0x00000000
