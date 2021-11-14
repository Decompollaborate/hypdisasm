.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osGetThreadId # 0
/* 053B50 80053FA0 14800003 */  bne         $a0, $zero, .L80053FB0
/* 053B54 80053FA4 00000000 */   nop
/* 053B58 80053FA8 3C04800A */  lui         $a0, %hi(__osRunningThread)
/* 053B5C 80053FAC 8C84F8A0 */  lw          $a0, %lo(__osRunningThread)($a0)
.L80053FB0:
/* 053B60 80053FB0 03E00008 */  jr          $ra
/* 053B64 80053FB4 8C820014 */   lw         $v0, 0x14($a0)
/* 053B68 80053FB8 00000000 */  nop
/* 053B6C 80053FBC 00000000 */  nop
