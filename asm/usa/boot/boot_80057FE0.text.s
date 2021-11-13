.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057FE0 # 0
/* 000000 80057FE0 40026800 */  cop0        0x0026800
/* 000004 80057FE4 03E00008 */  jr          $ra
/* 000008 80057FE8 00000000 */   nop
/* 00000C 80057FEC 00000000 */  nop
