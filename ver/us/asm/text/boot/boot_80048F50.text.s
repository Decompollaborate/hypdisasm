.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80048F50 # 0
/* 048B00 80048F50 03E00008 */  jr          $ra
/* 048B04 80048F54 46206004 */   sqrt.d     $f0, $f12
/* 048B08 80048F58 00000000 */  nop
/* 048B0C 80048F5C 00000000 */  nop
