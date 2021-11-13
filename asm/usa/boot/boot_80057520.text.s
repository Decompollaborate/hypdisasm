.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80057520 # 0
/* 0570D0 80057520 40846000 */  cop0        0x0846000
/* 0570D4 80057524 00000000 */  nop
/* 0570D8 80057528 03E00008 */  jr          $ra
/* 0570DC 8005752C 00000000 */   nop

glabel func_80057530 # 1
/* 0570E0 80057530 40026000 */  cop0        0x0026000
/* 0570E4 80057534 03E00008 */  jr          $ra
/* 0570E8 80057538 00000000 */   nop
/* 0570EC 8005753C 00000000 */  nop
