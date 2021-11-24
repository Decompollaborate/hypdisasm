.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel osViModeNtscLan1
/* 09F740 8009FB90 */ .word 0x02000000
/* 09F744 8009FB94 */ .word 0x0000311E
/* 09F748 8009FB98 */ .word 0x00000140
/* 09F74C 8009FB9C */ .word 0x03E52239
/* 09F750 8009FBA0 */ .word 0x0000020D
/* 09F754 8009FBA4 */ .word 0x00000C15
/* 09F758 8009FBA8 */ .word 0x0C150C15
/* 09F75C 8009FBAC */ .word 0x006C02EC
/* 09F760 8009FBB0 */ .word 0x00000200
/* 09F764 8009FBB4 */ .word 0x00000000
/* 09F768 8009FBB8 */ .word 0x00000280
/* 09F76C 8009FBBC */ .word 0x00000400
/* 09F770 8009FBC0 */ .word 0x002501FF
/* 09F774 8009FBC4 */ .word 0x000E0204
/* 09F778 8009FBC8 */ .word 0x00000002
/* 09F77C 8009FBCC */ .word 0x00000280
/* 09F780 8009FBD0 */ .word 0x00000400
/* 09F784 8009FBD4 */ .word 0x002501FF
/* 09F788 8009FBD8 */ .word 0x000E0204
/* 09F78C 8009FBDC */ .word 0x00000002
