.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004B9A0 # 0
/* 04B550 8004B9A0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04B554 8004B9A4 3C0E800A */  lui         $t6, %hi(D_800A2E64)
/* 04B558 8004B9A8 8DCE2E64 */  lw          $t6, %lo(D_800A2E64)($t6)
/* 04B55C 8004B9AC AFBF002C */  sw          $ra, 0x2c($sp)
/* 04B560 8004B9B0 AFB40028 */  sw          $s4, 0x28($sp)
/* 04B564 8004B9B4 AFB30024 */  sw          $s3, 0x24($sp)
/* 04B568 8004B9B8 AFB20020 */  sw          $s2, 0x20($sp)
/* 04B56C 8004B9BC AFB1001C */  sw          $s1, 0x1c($sp)
/* 04B570 8004B9C0 AFB00018 */  sw          $s0, 0x18($sp)
/* 04B574 8004B9C4 8DD30040 */  lw          $s3, 0x40($t6)
/* 04B578 8004B9C8 3C0F0200 */  lui         $t7, (0x20007C0 >> 16)
/* 04B57C 8004B9CC 35EF07C0 */  ori         $t7, $t7, (0x20007C0 & 0xFFFF)
/* 04B580 8004B9D0 8E62001C */  lw          $v0, 0x1c($s3)
/* 04B584 8004B9D4 241802E0 */  addiu       $t8, $zero, 0x2e0
/* 04B588 8004B9D8 ACB80004 */  sw          $t8, 0x4($a1)
/* 04B58C 8004B9DC ACAF0000 */  sw          $t7, 0x0($a1)
/* 04B590 8004B9E0 8E790014 */  lw          $t9, 0x14($s3)
/* 04B594 8004B9E4 0080A025 */  move        $s4, $a0
/* 04B598 8004B9E8 24B20008 */  addiu       $s2, $a1, 0x8
/* 04B59C 8004B9EC 1B20000C */  blez        $t9, .L8004BA20
/* 04B5A0 8004B9F0 00008025 */   move       $s0, $zero
/* 04B5A4 8004B9F4 00408825 */  move        $s1, $v0
.L8004B9F8:
/* 04B5A8 8004B9F8 8E240000 */  lw          $a0, 0x0($s1)
/* 04B5AC 8004B9FC 02802825 */  move        $a1, $s4
/* 04B5B0 8004BA00 0C012A2F */  jal         func_8004A8BC
/* 04B5B4 8004BA04 02403025 */   move       $a2, $s2
/* 04B5B8 8004BA08 8E680014 */  lw          $t0, 0x14($s3)
/* 04B5BC 8004BA0C 26100001 */  addiu       $s0, $s0, 0x1
/* 04B5C0 8004BA10 26310004 */  addiu       $s1, $s1, 0x4
/* 04B5C4 8004BA14 0208082A */  slt         $at, $s0, $t0
/* 04B5C8 8004BA18 1420FFF7 */  bnez        $at, .L8004B9F8
/* 04B5CC 8004BA1C 00409025 */   move       $s2, $v0
.L8004BA20:
/* 04B5D0 8004BA20 8FBF002C */  lw          $ra, 0x2c($sp)
/* 04B5D4 8004BA24 02401025 */  move        $v0, $s2
/* 04B5D8 8004BA28 8FB20020 */  lw          $s2, 0x20($sp)
/* 04B5DC 8004BA2C 8FB00018 */  lw          $s0, 0x18($sp)
/* 04B5E0 8004BA30 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04B5E4 8004BA34 8FB30024 */  lw          $s3, 0x24($sp)
/* 04B5E8 8004BA38 8FB40028 */  lw          $s4, 0x28($sp)
/* 04B5EC 8004BA3C 03E00008 */  jr          $ra
/* 04B5F0 8004BA40 27BD0030 */   addiu      $sp, $sp, 0x30
/* 04B5F4 8004BA44 00000000 */  nop
/* 04B5F8 8004BA48 00000000 */  nop
/* 04B5FC 8004BA4C 00000000 */  nop
