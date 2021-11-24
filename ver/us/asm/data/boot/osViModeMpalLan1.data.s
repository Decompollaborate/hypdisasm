.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel osViModeMpalLan1
/* 09F6F0 8009FB40 */ .word 0x1E000000
/* 09F6F4 8009FB44 */ .word 0x0000311E
/* 09F6F8 8009FB48 */ .word 0x00000140
/* 09F6FC 8009FB4C */ .word 0x04651E39
/* 09F700 8009FB50 */ .word 0x0000020D
/* 09F704 8009FB54 */ .word 0x00040C11
/* 09F708 8009FB58 */ .word 0x0C190C1A
/* 09F70C 8009FB5C */ .word 0x006C02EC
/* 09F710 8009FB60 */ .word 0x00000200
/* 09F714 8009FB64 */ .word 0x00000000
/* 09F718 8009FB68 */ .word 0x00000280
/* 09F71C 8009FB6C */ .word 0x00000400
/* 09F720 8009FB70 */ .word 0x002501FF
/* 09F724 8009FB74 */ .word 0x000E0204
/* 09F728 8009FB78 */ .word 0x00000002
/* 09F72C 8009FB7C */ .word 0x00000280
/* 09F730 8009FB80 */ .word 0x00000400
/* 09F734 8009FB84 */ .word 0x002501FF
/* 09F738 8009FB88 */ .word 0x000E0204
/* 09F73C 8009FB8C */ .word 0x00000002
