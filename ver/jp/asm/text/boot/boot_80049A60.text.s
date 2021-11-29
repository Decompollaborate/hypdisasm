.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80049A60 # 0
/* 049610 80049A60 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049614 80049A64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 049618 80049A68 00802825 */  move        $a1, $a0
/* 04961C 80049A6C AFA50018 */  sw          $a1, 0x18($sp)
/* 049620 80049A70 0C0145C8 */  jal         osSetIntMask
/* 049624 80049A74 24040001 */   addiu      $a0, $zero, 0x1
/* 049628 80049A78 3C03800A */  lui         $v1, %hi(D_800A2E64)
/* 04962C 80049A7C 24632E64 */  addiu       $v1, $v1, %lo(D_800A2E64)
/* 049630 80049A80 8C6E0000 */  lw          $t6, 0x0($v1)
/* 049634 80049A84 8FA50018 */  lw          $a1, 0x18($sp)
/* 049638 80049A88 00403025 */  move        $a2, $v0
/* 04963C 80049A8C 8DCF002C */  lw          $t7, 0x2c($t6)
/* 049640 80049A90 ACAF0010 */  sw          $t7, 0x10($a1)
/* 049644 80049A94 8C780000 */  lw          $t8, 0x0($v1)
/* 049648 80049A98 8F190000 */  lw          $t9, 0x0($t8)
/* 04964C 80049A9C ACB90000 */  sw          $t9, 0x0($a1)
/* 049650 80049AA0 8C680000 */  lw          $t0, 0x0($v1)
/* 049654 80049AA4 AD050000 */  sw          $a1, 0x0($t0)
/* 049658 80049AA8 8C640000 */  lw          $a0, 0x0($v1)
/* 04965C 80049AAC 8C890004 */  lw          $t1, 0x4($a0)
/* 049660 80049AB0 55200004 */  bnel        $t1, $zero, .L80049AC4
/* 049664 80049AB4 8C8A0008 */   lw         $t2, 0x8($a0)
/* 049668 80049AB8 10000005 */  b           .L80049AD0
/* 04966C 80049ABC AC850004 */   sw         $a1, 0x4($a0)
/* 049670 80049AC0 8C8A0008 */  lw          $t2, 0x8($a0)
.L80049AC4:
/* 049674 80049AC4 15400002 */  bnez        $t2, .L80049AD0
/* 049678 80049AC8 00000000 */   nop
/* 04967C 80049ACC AC850008 */  sw          $a1, 0x8($a0)
.L80049AD0:
/* 049680 80049AD0 0C0145C8 */  jal         osSetIntMask
/* 049684 80049AD4 00C02025 */   move       $a0, $a2
/* 049688 80049AD8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04968C 80049ADC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049690 80049AE0 03E00008 */  jr          $ra
/* 049694 80049AE4 00000000 */   nop

glabel func_80049AE8 # 1
/* 049698 80049AE8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04969C 80049AEC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0496A0 80049AF0 00802825 */  move        $a1, $a0
/* 0496A4 80049AF4 AFA50018 */  sw          $a1, 0x18($sp)
/* 0496A8 80049AF8 0C0145C8 */  jal         osSetIntMask
/* 0496AC 80049AFC 24040001 */   addiu      $a0, $zero, 0x1
/* 0496B0 80049B00 3C03800A */  lui         $v1, %hi(D_800A2E64)
/* 0496B4 80049B04 24632E64 */  addiu       $v1, $v1, %lo(D_800A2E64)
/* 0496B8 80049B08 8C6E0000 */  lw          $t6, 0x0($v1)
/* 0496BC 80049B0C 8FA50018 */  lw          $a1, 0x18($sp)
/* 0496C0 80049B10 00403025 */  move        $a2, $v0
/* 0496C4 80049B14 8DCF002C */  lw          $t7, 0x2c($t6)
/* 0496C8 80049B18 ACAF0010 */  sw          $t7, 0x10($a1)
/* 0496CC 80049B1C 8C780000 */  lw          $t8, 0x0($v1)
/* 0496D0 80049B20 8F190000 */  lw          $t9, 0x0($t8)
/* 0496D4 80049B24 ACB90000 */  sw          $t9, 0x0($a1)
/* 0496D8 80049B28 8C680000 */  lw          $t0, 0x0($v1)
/* 0496DC 80049B2C AD050000 */  sw          $a1, 0x0($t0)
/* 0496E0 80049B30 8C640000 */  lw          $a0, 0x0($v1)
/* 0496E4 80049B34 8C89000C */  lw          $t1, 0xc($a0)
/* 0496E8 80049B38 15200002 */  bnez        $t1, .L80049B44
/* 0496EC 80049B3C 00000000 */   nop
/* 0496F0 80049B40 AC85000C */  sw          $a1, 0xc($a0)
.L80049B44:
/* 0496F4 80049B44 0C0145C8 */  jal         osSetIntMask
/* 0496F8 80049B48 00C02025 */   move       $a0, $a2
/* 0496FC 80049B4C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 049700 80049B50 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049704 80049B54 03E00008 */  jr          $ra
/* 049708 80049B58 00000000 */   nop

glabel func_80049B5C # 2
/* 04970C 80049B5C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049710 80049B60 AFBF0014 */  sw          $ra, 0x14($sp)
/* 049714 80049B64 00802825 */  move        $a1, $a0
/* 049718 80049B68 AFA50018 */  sw          $a1, 0x18($sp)
/* 04971C 80049B6C 0C0145C8 */  jal         osSetIntMask
/* 049720 80049B70 24040001 */   addiu      $a0, $zero, 0x1
/* 049724 80049B74 3C03800A */  lui         $v1, %hi(D_800A2E64)
/* 049728 80049B78 24632E64 */  addiu       $v1, $v1, %lo(D_800A2E64)
/* 04972C 80049B7C 8C6E0000 */  lw          $t6, 0x0($v1)
/* 049730 80049B80 8FA50018 */  lw          $a1, 0x18($sp)
/* 049734 80049B84 00402025 */  move        $a0, $v0
/* 049738 80049B88 8DCF002C */  lw          $t7, 0x2c($t6)
/* 04973C 80049B8C ACAF0010 */  sw          $t7, 0x10($a1)
/* 049740 80049B90 8C780000 */  lw          $t8, 0x0($v1)
/* 049744 80049B94 8F190000 */  lw          $t9, 0x0($t8)
/* 049748 80049B98 ACB90000 */  sw          $t9, 0x0($a1)
/* 04974C 80049B9C 8C680000 */  lw          $t0, 0x0($v1)
/* 049750 80049BA0 0C0145C8 */  jal         osSetIntMask
/* 049754 80049BA4 AD050000 */   sw         $a1, 0x0($t0)
/* 049758 80049BA8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04975C 80049BAC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049760 80049BB0 03E00008 */  jr          $ra
/* 049764 80049BB4 00000000 */   nop
/* 049768 80049BB8 00000000 */  nop
/* 04976C 80049BBC 00000000 */  nop
