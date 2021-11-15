.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053550 # 0
/* 053100 80053550 40028000 */  mfc0        $v0, Config
/* 053104 80053554 03E00008 */  jr          $ra
/* 053108 80053558 00000000 */   nop
/* 05310C 8005355C 00000000 */  nop
