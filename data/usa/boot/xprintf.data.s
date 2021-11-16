.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel spaces
/* 09F510 8009F960 */ .word 0x20202020
/* 09F514 8009F964 */ .word 0x20202020
/* 09F518 8009F968 */ .word 0x20202020
/* 09F51C 8009F96C */ .word 0x20202020
/* 09F520 8009F970 */ .word 0x20202020
/* 09F524 8009F974 */ .word 0x20202020
/* 09F528 8009F978 */ .word 0x20202020
/* 09F52C 8009F97C */ .word 0x20202020
/* 09F530 8009F980 */ .word 0x00000000

glabel zeros
/* 09F534 8009F984 */ .word 0x30303030
/* 09F538 8009F988 */ .word 0x30303030
/* 09F53C 8009F98C */ .word 0x30303030
/* 09F540 8009F990 */ .word 0x30303030
/* 09F544 8009F994 */ .word 0x30303030
/* 09F548 8009F998 */ .word 0x30303030
/* 09F54C 8009F99C */ .word 0x30303030
/* 09F550 8009F9A0 */ .word 0x30303030
/* 09F554 8009F9A4 */ .word 0x00000000
/* 09F558 8009F9A8 */ .word 0x00000000
/* 09F55C 8009F9AC */ .word 0x00000000
