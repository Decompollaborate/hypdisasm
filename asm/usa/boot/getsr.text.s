.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osGetSR # 0
/* 0570E0 80057530 40026000 */  mfc0        $v0, Status
/* 0570E4 80057534 03E00008 */  jr          $ra
/* 0570E8 80057538 00000000 */   nop
/* 0570EC 8005753C 00000000 */  nop
