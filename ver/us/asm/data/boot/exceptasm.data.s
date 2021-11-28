.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel __osHwIntTable
/* 09F410 8009F860 */ .word 0x00000000
/* 09F414 8009F864 */ .word 0x00000000
/* 09F418 8009F868 */ .word 0x00000000
/* 09F41C 8009F86C */ .word 0x00000000
/* 09F420 8009F870 */ .word 0x00000000
/* 09F424 8009F874 */ .word 0x00000000
/* 09F428 8009F878 */ .word 0x00000000
/* 09F42C 8009F87C */ .word 0x00000000
/* 09F430 8009F880 */ .word 0x00000000
/* 09F434 8009F884 */ .word 0x00000000

glabel __osPiIntTable
/* 09F438 8009F888 */ .word 0x00000000
/* 09F43C 8009F88C */ .word 0x00000000
