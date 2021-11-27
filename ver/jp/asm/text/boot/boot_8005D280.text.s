.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D280 # 0
/* 05CE30 8005D280 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05CE34 8005D284 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05CE38 8005D288 AFA40028 */  sw          $a0, 0x28($sp)
/* 05CE3C 8005D28C 0C015594 */  jal         func_80055650
/* 05CE40 8005D290 AFB00018 */   sw         $s0, 0x18($sp)
/* 05CE44 8005D294 8FAF0028 */  lw          $t7, 0x28($sp)
/* 05CE48 8005D298 3C0E800A */  lui         $t6, %hi(D_800A3130)
/* 05CE4C 8005D29C 8DCE3130 */  lw          $t6, %lo(D_800A3130)($t6)
/* 05CE50 8005D2A0 2401FBFE */  addiu       $at, $zero, -0x402
/* 05CE54 8005D2A4 01E1C024 */  and         $t8, $t7, $at
/* 05CE58 8005D2A8 0300C827 */  not         $t9, $t8
/* 05CE5C 8005D2AC 00408025 */  move        $s0, $v0
/* 05CE60 8005D2B0 3C01800A */  lui         $at, %hi(D_800A3130)
/* 05CE64 8005D2B4 01D94024 */  and         $t0, $t6, $t9
/* 05CE68 8005D2B8 AC283130 */  sw          $t0, %lo(D_800A3130)($at)
/* 05CE6C 8005D2BC 0C01559C */  jal         func_80055670
/* 05CE70 8005D2C0 02002025 */   move       $a0, $s0
/* 05CE74 8005D2C4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05CE78 8005D2C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 05CE7C 8005D2CC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 05CE80 8005D2D0 03E00008 */  jr          $ra
/* 05CE84 8005D2D4 00000000 */   nop
/* 05CE88 8005D2D8 00000000 */  nop
/* 05CE8C 8005D2DC 00000000 */  nop
