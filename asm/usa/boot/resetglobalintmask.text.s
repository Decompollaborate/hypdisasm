.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __osResetGlobalIntMask # 0
/* 05E470 8005E8C0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05E474 8005E8C4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05E478 8005E8C8 AFA40028 */  sw          $a0, 0x28($sp)
/* 05E47C 8005E8CC 0C015FFC */  jal         __osDisableInt
/* 05E480 8005E8D0 AFB00018 */   sw         $s0, 0x18($sp)
/* 05E484 8005E8D4 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05E488 8005E8D8 3C0E800A */  lui         $t6, %hi(__OSGlobalIntMask)
/* 05E48C 8005E8DC 8DCEDC80 */  lw          $t6, %lo(__OSGlobalIntMask)($t6)
/* 05E490 8005E8E0 2401FBFE */  addiu       $at, $zero, -0x402
/* 05E494 8005E8E4 01E1C024 */  and         $t8, $t7, $at
/* 05E498 8005E8E8 0300C827 */  nor         $t9, $t8, $zero
/* 05E49C 8005E8EC 00408025 */  move        $s0, $v0
/* 05E4A0 8005E8F0 3C01800A */  lui         $at, %hi(__OSGlobalIntMask)
/* 05E4A4 8005E8F4 01D94024 */  and         $t0, $t6, $t9
/* 05E4A8 8005E8F8 AC28DC80 */  sw          $t0, %lo(__OSGlobalIntMask)($at)
/* 05E4AC 8005E8FC 0C016018 */  jal         __osRestoreInt
/* 05E4B0 8005E900 02002025 */   move       $a0, $s0
/* 05E4B4 8005E904 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05E4B8 8005E908 8FB00018 */  lw          $s0, 0x18($sp)
/* 05E4BC 8005E90C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05E4C0 8005E910 03E00008 */  jr          $ra
/* 05E4C4 8005E914 00000000 */   nop
/* 05E4C8 8005E918 00000000 */  nop
/* 05E4CC 8005E91C 00000000 */  nop
