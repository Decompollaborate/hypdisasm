.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osGetThreadPri # 0
/* 059BC0 8005A010 14800003 */  bnez        $a0, .L8005A020
/* 059BC4 8005A014 00000000 */   nop
/* 059BC8 8005A018 3C04800A */  lui         $a0, %hi(__osRunningThread)
/* 059BCC 8005A01C 8C84F8A0 */  lw          $a0, %lo(__osRunningThread)($a0)
.L8005A020:
/* 059BD0 8005A020 03E00008 */  jr          $ra
/* 059BD4 8005A024 8C820004 */   lw         $v0, 0x4($a0)
/* 059BD8 8005A028 00000000 */  nop
/* 059BDC 8005A02C 00000000 */  nop
