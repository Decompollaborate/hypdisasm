.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050340 # 0
/* 04FEF0 80050340 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 04FEF4 80050344 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04FEF8 80050348 0C015594 */  jal         func_80055650
/* 04FEFC 8005034C AFB00018 */   sw         $s0, 0x18($sp)
/* 04FF00 80050350 0C0142B4 */  jal         func_80050AD0
/* 04FF04 80050354 00408025 */   move       $s0, $v0
/* 04FF08 80050358 AFA20034 */  sw          $v0, 0x34($sp)
/* 04FF0C 8005035C 3C0F8010 */  lui         $t7, %hi(D_80104BC8)
/* 04FF10 80050360 8DEF4BC8 */  lw          $t7, %lo(D_80104BC8)($t7)
/* 04FF14 80050364 8FAE0034 */  lw          $t6, 0x34($sp)
/* 04FF18 80050368 3C088010 */  lui         $t0, %hi(D_80104BC0)
/* 04FF1C 8005036C 3C098010 */  lui         $t1, %hi(D_80104BC4)
/* 04FF20 80050370 8D294BC4 */  lw          $t1, %lo(D_80104BC4)($t1)
/* 04FF24 80050374 8D084BC0 */  lw          $t0, %lo(D_80104BC0)($t0)
/* 04FF28 80050378 01CFC023 */  subu        $t8, $t6, $t7
/* 04FF2C 8005037C AFB80030 */  sw          $t8, 0x30($sp)
/* 04FF30 80050380 02002025 */  move        $a0, $s0
/* 04FF34 80050384 AFA9002C */  sw          $t1, 0x2c($sp)
/* 04FF38 80050388 0C01559C */  jal         func_80055670
/* 04FF3C 8005038C AFA80028 */   sw         $t0, 0x28($sp)
/* 04FF40 80050390 8FB90030 */  lw          $t9, 0x30($sp)
/* 04FF44 80050394 8FAD002C */  lw          $t5, 0x2c($sp)
/* 04FF48 80050398 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04FF4C 8005039C 03205825 */  move        $t3, $t9
/* 04FF50 800503A0 016D1821 */  addu        $v1, $t3, $t5
/* 04FF54 800503A4 8FAC0028 */  lw          $t4, 0x28($sp)
/* 04FF58 800503A8 240A0000 */  addiu       $t2, $zero, 0x0
/* 04FF5C 800503AC 006D082B */  sltu        $at, $v1, $t5
/* 04FF60 800503B0 002A1021 */  addu        $v0, $at, $t2
/* 04FF64 800503B4 8FB00018 */  lw          $s0, 0x18($sp)
/* 04FF68 800503B8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 04FF6C 800503BC 03E00008 */  jr          $ra
/* 04FF70 800503C0 004C1021 */   addu       $v0, $v0, $t4
/* 04FF74 800503C4 00000000 */  nop
/* 04FF78 800503C8 00000000 */  nop
/* 04FF7C 800503CC 00000000 */  nop
