.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050F00 # 0
/* 050AB0 80050F00 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 050AB4 80050F04 AFBF001C */  sw          $ra, 0x1c($sp)
/* 050AB8 80050F08 AFA40028 */  sw          $a0, 0x28($sp)
/* 050ABC 80050F0C AFA5002C */  sw          $a1, 0x2c($sp)
/* 050AC0 80050F10 0C015EA4 */  jal         func_80057A90
/* 050AC4 80050F14 AFB00018 */   sw         $s0, 0x18($sp)
/* 050AC8 80050F18 8FA40028 */  lw          $a0, 0x28($sp)
/* 050ACC 80050F1C 0C01557C */  jal         func_800555F0
/* 050AD0 80050F20 8FA5002C */   lw         $a1, 0x2c($sp)
/* 050AD4 80050F24 0C015EB5 */  jal         func_80057AD4
/* 050AD8 80050F28 00408025 */   move       $s0, $v0
/* 050ADC 80050F2C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 050AE0 80050F30 02001025 */  move        $v0, $s0
/* 050AE4 80050F34 8FB00018 */  lw          $s0, 0x18($sp)
/* 050AE8 80050F38 03E00008 */  jr          $ra
/* 050AEC 80050F3C 27BD0028 */   addiu      $sp, $sp, 0x28
/* 050AF0 80050F40 00000000 */  nop
/* 050AF4 80050F44 00000000 */  nop
/* 050AF8 80050F48 00000000 */  nop
/* 050AFC 80050F4C 00000000 */  nop
/* 050B00 80050F50 00000000 */  nop
/* 050B04 80050F54 00000000 */  nop
/* 050B08 80050F58 00000000 */  nop
/* 050B0C 80050F5C 00000000 */  nop
/* 050B10 80050F60 00000000 */  nop
/* 050B14 80050F64 00000000 */  nop
/* 050B18 80050F68 00000000 */  nop
/* 050B1C 80050F6C 00000000 */  nop
/* 050B20 80050F70 00000000 */  nop
/* 050B24 80050F74 00000000 */  nop
/* 050B28 80050F78 00000000 */  nop
/* 050B2C 80050F7C 00000000 */  nop
/* 050B30 80050F80 00000000 */  nop
/* 050B34 80050F84 00000000 */  nop
/* 050B38 80050F88 00000000 */  nop
/* 050B3C 80050F8C 00000000 */  nop
/* 050B40 80050F90 00000000 */  nop
/* 050B44 80050F94 00000000 */  nop
/* 050B48 80050F98 00000000 */  nop
/* 050B4C 80050F9C 00000000 */  nop
