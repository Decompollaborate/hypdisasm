.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel ldigs
/* 09F790 8009FBE0 */ .word 0x30313233
/* 09F794 8009FBE4 */ .word 0x34353637
/* 09F798 8009FBE8 */ .word 0x38396162
/* 09F79C 8009FBEC */ .word 0x63646566
/* 09F7A0 8009FBF0 */ .word 0x00000000

glabel udigs
/* 09F7A4 8009FBF4 */ .word 0x30313233
/* 09F7A8 8009FBF8 */ .word 0x34353637
/* 09F7AC 8009FBFC */ .word 0x38394142
/* 09F7B0 8009FC00 */ .word 0x43444546
/* 09F7B4 8009FC04 */ .word 0x00000000
/* 09F7B8 8009FC08 */ .word 0x00000000
/* 09F7BC 8009FC0C */ .word 0x00000000
