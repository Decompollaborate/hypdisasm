.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80053550 # 0
/* 000000 80053550 40028000 */  cop0        0x0028000
/* 000004 80053554 03E00008 */  jr          $ra
/* 000008 80053558 00000000 */   nop
/* 00000C 8005355C 00000000 */  nop
