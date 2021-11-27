.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800458D0 # 0
/* 045480 800458D0 03E00008 */  jr          $ra
/* 045484 800458D4 46206004 */   sqrt.d     $f0, $f12
/* 045488 800458D8 00000000 */  nop
/* 04548C 800458DC 00000000 */  nop
