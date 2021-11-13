.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005A010 # 0
/* 000000 8005A010 14800003 */  bne         $a0, $zero, .L8005A020
/* 000004 8005A014 00000000 */   nop
/* 000008 8005A018 3C04800A */  lui         $a0, %hi(D_8009F8A0)
/* 00000C 8005A01C 8C84F8A0 */  lw          $a0, %lo(D_8009F8A0)($a0)
.L8005A020:
/* 000010 8005A020 03E00008 */  jr          $ra
/* 000014 8005A024 8C820004 */   lw         $v0, 0x4($a0)
/* 000018 8005A028 00000000 */  nop
/* 00001C 8005A02C 00000000 */  nop
