.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel ldigs
/* 0A4C50 800A50A0 */ .word 0x30313233
/* 0A4C54 800A50A4 */ .word 0x34353637
/* 0A4C58 800A50A8 */ .word 0x38396162
/* 0A4C5C 800A50AC */ .word 0x63646566
/* 0A4C60 800A50B0 */ .word 0x00000000

glabel udigs
/* 0A4C64 800A50B4 */ .word 0x30313233
/* 0A4C68 800A50B8 */ .word 0x34353637
/* 0A4C6C 800A50BC */ .word 0x38394142
/* 0A4C70 800A50C0 */ .word 0x43444546
/* 0A4C74 800A50C4 */ .word 0x00000000
/* 0A4C78 800A50C8 */ .word 0x00000000
/* 0A4C7C 800A50CC */ .word 0x00000000
