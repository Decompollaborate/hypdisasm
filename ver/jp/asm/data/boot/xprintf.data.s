.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel spaces
/* 0A49D0 800A4E20 */ .word 0x20202020
/* 0A49D4 800A4E24 */ .word 0x20202020
/* 0A49D8 800A4E28 */ .word 0x20202020
/* 0A49DC 800A4E2C */ .word 0x20202020
/* 0A49E0 800A4E30 */ .word 0x20202020
/* 0A49E4 800A4E34 */ .word 0x20202020
/* 0A49E8 800A4E38 */ .word 0x20202020
/* 0A49EC 800A4E3C */ .word 0x20202020
/* 0A49F0 800A4E40 */ .word 0x00000000

glabel zeros
/* 0A49F4 800A4E44 */ .word 0x30303030
/* 0A49F8 800A4E48 */ .word 0x30303030
/* 0A49FC 800A4E4C */ .word 0x30303030
/* 0A4A00 800A4E50 */ .word 0x30303030
/* 0A4A04 800A4E54 */ .word 0x30303030
/* 0A4A08 800A4E58 */ .word 0x30303030
/* 0A4A0C 800A4E5C */ .word 0x30303030
/* 0A4A10 800A4E60 */ .word 0x30303030
/* 0A4A14 800A4E64 */ .word 0x00000000
/* 0A4A18 800A4E68 */ .word 0x00000000
/* 0A4A1C 800A4E6C */ .word 0x00000000
