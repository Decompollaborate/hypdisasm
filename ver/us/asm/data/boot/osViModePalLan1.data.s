.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel osViModePalLan1
/* 09F6A0 8009FAF0 */ .word 0x10000000
/* 09F6A4 8009FAF4 */ .word 0x0000311E
/* 09F6A8 8009FAF8 */ .word 0x00000140
/* 09F6AC 8009FAFC */ .word 0x04541E3A
/* 09F6B0 8009FB00 */ .word 0x00000271
/* 09F6B4 8009FB04 */ .word 0x00170C69
/* 09F6B8 8009FB08 */ .word 0x0C6F0C6D
/* 09F6BC 8009FB0C */ .word 0x00800300
/* 09F6C0 8009FB10 */ .word 0x00000200
/* 09F6C4 8009FB14 */ .word 0x00000000
/* 09F6C8 8009FB18 */ .word 0x00000280
/* 09F6CC 8009FB1C */ .word 0x00000400
/* 09F6D0 8009FB20 */ .word 0x005F0239
/* 09F6D4 8009FB24 */ .word 0x0009026B
/* 09F6D8 8009FB28 */ .word 0x00000002
/* 09F6DC 8009FB2C */ .word 0x00000280
/* 09F6E0 8009FB30 */ .word 0x00000400
/* 09F6E4 8009FB34 */ .word 0x005F0239
/* 09F6E8 8009FB38 */ .word 0x0009026B
/* 09F6EC 8009FB3C */ .word 0x00000002
