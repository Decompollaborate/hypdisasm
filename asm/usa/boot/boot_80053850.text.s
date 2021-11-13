.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053850 # 0
/* 053400 80053850 03E00008 */  jr          $ra
/* 053404 80053854 46006004 */   sqrt.s     $f0, $f12
/* 053408 80053858 00000000 */  nop
/* 05340C 8005385C 00000000 */  nop
