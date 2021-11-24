.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80003A40 # 0
/* 0035F0 80003A40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0035F4 80003A44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0035F8 80003A48 0C000AB7 */  jal         func_80002ADC
/* 0035FC 80003A4C 00000000 */   nop
/* 003600 80003A50 5040000E */  beql        $v0, $zero, .L80003A8C
/* 003604 80003A54 8FBF0014 */   lw         $ra, 0x14($sp)
/* 003608 80003A58 0C000A1C */  jal         func_80002870
/* 00360C 80003A5C 00000000 */   nop
/* 003610 80003A60 AFA2001C */  sw          $v0, 0x1c($sp)
/* 003614 80003A64 0C014BEC */  jal         osContStartReadData
/* 003618 80003A68 00402025 */   move       $a0, $v0
/* 00361C 80003A6C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 003620 80003A70 00002825 */  move        $a1, $zero
/* 003624 80003A74 0C014554 */  jal         osRecvMesg
/* 003628 80003A78 24060001 */   addiu      $a2, $zero, 0x1
/* 00362C 80003A7C 3C04800B */  lui         $a0, %hi(D_800AD400)
/* 003630 80003A80 0C014C0D */  jal         osContGetReadData
/* 003634 80003A84 2484D400 */   addiu      $a0, $a0, %lo(D_800AD400)
/* 003638 80003A88 8FBF0014 */  lw          $ra, 0x14($sp)
.L80003A8C:
/* 00363C 80003A8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 003640 80003A90 03E00008 */  jr          $ra
/* 003644 80003A94 00000000 */   nop

glabel func_80003A98 # 1
/* 003648 80003A98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00364C 80003A9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 003650 80003AA0 3C04800B */  lui         $a0, %hi(D_800AD400)
/* 003654 80003AA4 2484D400 */  addiu       $a0, $a0, %lo(D_800AD400)
/* 003658 80003AA8 0C014388 */  jal         bzero
/* 00365C 80003AAC 24050018 */   addiu      $a1, $zero, 0x18
/* 003660 80003AB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 003664 80003AB4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 003668 80003AB8 03E00008 */  jr          $ra
/* 00366C 80003ABC 00000000 */   nop

glabel func_80003AC0 # 2
/* 003670 80003AC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 003674 80003AC4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 003678 80003AC8 00803025 */  move        $a2, $a0
/* 00367C 80003ACC AFA5001C */  sw          $a1, 0x1c($sp)
/* 003680 80003AD0 AFA60018 */  sw          $a2, 0x18($sp)
/* 003684 80003AD4 0C000ABA */  jal         func_80002AE8
/* 003688 80003AD8 00A02025 */   move       $a0, $a1
/* 00368C 80003ADC 10400012 */  beqz        $v0, .L80003B28
/* 003690 80003AE0 8FA60018 */   lw         $a2, 0x18($sp)
/* 003694 80003AE4 8FAE001C */  lw          $t6, 0x1c($sp)
/* 003698 80003AE8 3C18800B */  lui         $t8, %hi(D_800AD400)
/* 00369C 80003AEC 2718D400 */  addiu       $t8, $t8, %lo(D_800AD400)
/* 0036A0 80003AF0 000E7880 */  sll         $t7, $t6, 2
/* 0036A4 80003AF4 01EE7823 */  subu        $t7, $t7, $t6
/* 0036A8 80003AF8 000F7840 */  sll         $t7, $t7, 1
/* 0036AC 80003AFC 01F8C821 */  addu        $t9, $t7, $t8
/* 0036B0 80003B00 8B210000 */  lwl         $at, 0x0($t9)
/* 0036B4 80003B04 9B210003 */  lwr         $at, 0x3($t9)
/* 0036B8 80003B08 A8C10000 */  swl         $at, 0x0($a2)
/* 0036BC 80003B0C B8C10003 */  swr         $at, 0x3($a2)
/* 0036C0 80003B10 97210004 */  lhu         $at, 0x4($t9)
/* 0036C4 80003B14 A4C10004 */  sh          $at, 0x4($a2)
/* 0036C8 80003B18 90C20004 */  lbu         $v0, 0x4($a2)
/* 0036CC 80003B1C 2C4A0001 */  sltiu       $t2, $v0, 0x1
/* 0036D0 80003B20 10000005 */  b           .L80003B38
/* 0036D4 80003B24 01401025 */   move       $v0, $t2
.L80003B28:
/* 0036D8 80003B28 00C02025 */  move        $a0, $a2
/* 0036DC 80003B2C 0C014388 */  jal         bzero
/* 0036E0 80003B30 24050006 */   addiu      $a1, $zero, 0x6
/* 0036E4 80003B34 00001025 */  move        $v0, $zero
.L80003B38:
/* 0036E8 80003B38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0036EC 80003B3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0036F0 80003B40 03E00008 */  jr          $ra
/* 0036F4 80003B44 00000000 */   nop
/* 0036F8 80003B48 00000000 */  nop
/* 0036FC 80003B4C 00000000 */  nop
