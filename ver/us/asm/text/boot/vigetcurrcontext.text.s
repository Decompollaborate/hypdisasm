.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osViGetCurrentContext # 0
/* 05A2A0 8005A6F0 3C02800A */  lui         $v0, %hi(__osViCurr)
/* 05A2A4 8005A6F4 03E00008 */  jr          $ra
/* 05A2A8 8005A6F8 8C42F950 */   lw         $v0, %lo(__osViCurr)($v0)
/* 05A2AC 8005A6FC 00000000 */  nop
