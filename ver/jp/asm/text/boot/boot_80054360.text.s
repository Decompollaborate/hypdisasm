.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054360 # 0
/* 053F10 80054360 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053F14 80054364 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053F18 80054368 240E0001 */  addiu       $t6, $zero, 0x1
/* 053F1C 8005436C 3C01800A */  lui         $at, %hi(D_800A4D20)
/* 053F20 80054370 3C048010 */  lui         $a0, %hi(D_80104A48)
/* 053F24 80054374 3C058010 */  lui         $a1, %hi(D_80104A40)
/* 053F28 80054378 AC2E4D20 */  sw          $t6, %lo(D_800A4D20)($at)
/* 053F2C 8005437C 24A54A40 */  addiu       $a1, $a1, %lo(D_80104A40)
/* 053F30 80054380 24844A48 */  addiu       $a0, $a0, %lo(D_80104A48)
/* 053F34 80054384 0C013AEC */  jal         func_8004EBB0
/* 053F38 80054388 24060001 */   addiu      $a2, $zero, 0x1
/* 053F3C 8005438C 3C048010 */  lui         $a0, %hi(D_80104A48)
/* 053F40 80054390 24844A48 */  addiu       $a0, $a0, %lo(D_80104A48)
/* 053F44 80054394 00002825 */  move        $a1, $zero
/* 053F48 80054398 0C013A98 */  jal         func_8004EA60
/* 053F4C 8005439C 00003025 */   move       $a2, $zero
/* 053F50 800543A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053F54 800543A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053F58 800543A8 03E00008 */  jr          $ra
/* 053F5C 800543AC 00000000 */   nop

glabel func_800543B0 # 1
/* 053F60 800543B0 3C0E800A */  lui         $t6, %hi(D_800A4D20)
/* 053F64 800543B4 8DCE4D20 */  lw          $t6, %lo(D_800A4D20)($t6)
/* 053F68 800543B8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 053F6C 800543BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 053F70 800543C0 15C00003 */  bnez        $t6, .L800543D0
/* 053F74 800543C4 00000000 */   nop
/* 053F78 800543C8 0C0150D8 */  jal         func_80054360
/* 053F7C 800543CC 00000000 */   nop
.L800543D0:
/* 053F80 800543D0 3C048010 */  lui         $a0, %hi(D_80104A48)
/* 053F84 800543D4 24844A48 */  addiu       $a0, $a0, %lo(D_80104A48)
/* 053F88 800543D8 27A5001C */  addiu       $a1, $sp, 0x1c
/* 053F8C 800543DC 0C013A48 */  jal         func_8004E920
/* 053F90 800543E0 24060001 */   addiu      $a2, $zero, 0x1
/* 053F94 800543E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053F98 800543E8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 053F9C 800543EC 03E00008 */  jr          $ra
/* 053FA0 800543F0 00000000 */   nop

glabel func_800543F4 # 2
/* 053FA4 800543F4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053FA8 800543F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053FAC 800543FC 3C048010 */  lui         $a0, %hi(D_80104A48)
/* 053FB0 80054400 24844A48 */  addiu       $a0, $a0, %lo(D_80104A48)
/* 053FB4 80054404 00002825 */  move        $a1, $zero
/* 053FB8 80054408 0C013A98 */  jal         func_8004EA60
/* 053FBC 8005440C 00003025 */   move       $a2, $zero
/* 053FC0 80054410 8FBF0014 */  lw          $ra, 0x14($sp)
/* 053FC4 80054414 27BD0018 */  addiu       $sp, $sp, 0x18
/* 053FC8 80054418 03E00008 */  jr          $ra
/* 053FCC 8005441C 00000000 */   nop

glabel func_80054420 # 3
/* 053FD0 80054420 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 053FD4 80054424 AFBF0014 */  sw          $ra, 0x14($sp)
/* 053FD8 80054428 AFA5001C */  sw          $a1, 0x1c($sp)
/* 053FDC 8005442C 3C0EA480 */  lui         $t6, %hi(D_A4800018)
/* 053FE0 80054430 8DCF0018 */  lw          $t7, %lo(D_A4800018)($t6)
/* 053FE4 80054434 00803025 */  move        $a2, $a0
/* 053FE8 80054438 24010001 */  addiu       $at, $zero, 0x1
/* 053FEC 8005443C 31F80003 */  andi        $t8, $t7, 0x3
/* 053FF0 80054440 13000003 */  beqz        $t8, .L80054450
/* 053FF4 80054444 00000000 */   nop
/* 053FF8 80054448 1000001C */  b           .L800544BC
/* 053FFC 8005444C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80054450:
/* 054000 80054450 14C10005 */  bne         $a2, $at, .L80054468
/* 054004 80054454 8FA4001C */   lw         $a0, 0x1c($sp)
/* 054008 80054458 24050040 */  addiu       $a1, $zero, 0x40
/* 05400C 8005445C 0C014868 */  jal         func_800521A0
/* 054010 80054460 AFA60018 */   sw         $a2, 0x18($sp)
/* 054014 80054464 8FA60018 */  lw          $a2, 0x18($sp)
.L80054468:
/* 054018 80054468 8FA4001C */  lw          $a0, 0x1c($sp)
/* 05401C 8005446C 0C0140F4 */  jal         func_800503D0
/* 054020 80054470 AFA60018 */   sw         $a2, 0x18($sp)
/* 054024 80054474 8FA60018 */  lw          $a2, 0x18($sp)
/* 054028 80054478 3C19A480 */  lui         $t9, %hi(D_A4800000)
/* 05402C 8005447C AF220000 */  sw          $v0, %lo(D_A4800000)($t9)
/* 054030 80054480 14C00006 */  bnez        $a2, .L8005449C
/* 054034 80054484 3C0A1FC0 */   lui        $t2, 0x1fc0
/* 054038 80054488 3C081FC0 */  lui         $t0, 0x1fc0
/* 05403C 8005448C 350807C0 */  ori         $t0, $t0, 0x7c0
/* 054040 80054490 3C09A480 */  lui         $t1, %hi(D_A4800004)
/* 054044 80054494 10000004 */  b           .L800544A8
/* 054048 80054498 AD280004 */   sw         $t0, %lo(D_A4800004)($t1)
.L8005449C:
/* 05404C 8005449C 354A07C0 */  ori         $t2, $t2, 0x7c0
/* 054050 800544A0 3C0BA480 */  lui         $t3, %hi(D_A4800010)
/* 054054 800544A4 AD6A0010 */  sw          $t2, %lo(D_A4800010)($t3)
.L800544A8:
/* 054058 800544A8 14C00003 */  bnez        $a2, .L800544B8
/* 05405C 800544AC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 054060 800544B0 0C0142CC */  jal         func_80050B30
/* 054064 800544B4 24050040 */   addiu      $a1, $zero, 0x40
.L800544B8:
/* 054068 800544B8 00001025 */  move        $v0, $zero
.L800544BC:
/* 05406C 800544BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 054070 800544C0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 054074 800544C4 03E00008 */  jr          $ra
/* 054078 800544C8 00000000 */   nop
/* 05407C 800544CC 00000000 */  nop
