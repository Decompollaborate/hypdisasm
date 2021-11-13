.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057520 # 0
/* 000000 80057520 40846000 */  cop0        0x0846000
/* 000004 80057524 00000000 */  nop
/* 000008 80057528 03E00008 */  jr          $ra
/* 00000C 8005752C 00000000 */   nop

glabel func_80057530 # 1
/* 000010 80057530 40026000 */  cop0        0x0026000
/* 000014 80057534 03E00008 */  jr          $ra
/* 000018 80057538 00000000 */   nop
/* 00001C 8005753C 00000000 */  nop
