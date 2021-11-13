.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80003A40 # 0
/* 000000 80003A40 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 80003A44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 80003A48 0C000AB7 */  jal         func_80002ADC
/* 00000C 80003A4C 00000000 */   nop
/* 000010 80003A50 5040000E */  beql        $v0, $zero, .L80003A8C
/* 000014 80003A54 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000018 80003A58 0C000A1C */  jal         func_80002870
/* 00001C 80003A5C 00000000 */   nop
/* 000020 80003A60 AFA2001C */  sw          $v0, 0x1c($sp)
/* 000024 80003A64 0C014BEC */  jal         func_80052FB0
/* 000028 80003A68 00402025 */   move       $a0, $v0
/* 00002C 80003A6C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 000030 80003A70 00002825 */  move        $a1, $zero
/* 000034 80003A74 0C014554 */  jal         func_80051550
/* 000038 80003A78 24060001 */   addiu      $a2, $zero, 0x1
/* 00003C 80003A7C 3C04800B */  lui         $a0, %hi(D_800AD400)
/* 000040 80003A80 0C014C0D */  jal         func_80053034
/* 000044 80003A84 2484D400 */   addiu      $a0, $a0, %lo(D_800AD400)
/* 000048 80003A88 8FBF0014 */  lw          $ra, 0x14($sp)
.L80003A8C:
/* 00004C 80003A8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000050 80003A90 03E00008 */  jr          $ra
/* 000054 80003A94 00000000 */   nop

glabel func_80003A98 # 1
/* 000058 80003A98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00005C 80003A9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000060 80003AA0 3C04800B */  lui         $a0, %hi(D_800AD400)
/* 000064 80003AA4 2484D400 */  addiu       $a0, $a0, %lo(D_800AD400)
/* 000068 80003AA8 0C014388 */  jal         func_80050E20
/* 00006C 80003AAC 24050018 */   addiu      $a1, $zero, 0x18
/* 000070 80003AB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000074 80003AB4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000078 80003AB8 03E00008 */  jr          $ra
/* 00007C 80003ABC 00000000 */   nop

glabel func_80003AC0 # 2
/* 000080 80003AC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000084 80003AC4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000088 80003AC8 00803025 */  move        $a2, $a0
/* 00008C 80003ACC AFA5001C */  sw          $a1, 0x1c($sp)
/* 000090 80003AD0 AFA60018 */  sw          $a2, 0x18($sp)
/* 000094 80003AD4 0C000ABA */  jal         func_80002AE8
/* 000098 80003AD8 00A02025 */   move       $a0, $a1
/* 00009C 80003ADC 10400012 */  beq         $v0, $zero, .L80003B28
/* 0000A0 80003AE0 8FA60018 */   lw         $a2, 0x18($sp)
/* 0000A4 80003AE4 8FAE001C */  lw          $t6, 0x1c($sp)
/* 0000A8 80003AE8 3C18800B */  lui         $t8, %hi(D_800AD400)
/* 0000AC 80003AEC 2718D400 */  addiu       $t8, $t8, %lo(D_800AD400)
/* 0000B0 80003AF0 000E7880 */  sll         $t7, $t6, 2
/* 0000B4 80003AF4 01EE7823 */  subu        $t7, $t7, $t6
/* 0000B8 80003AF8 000F7840 */  sll         $t7, $t7, 1
/* 0000BC 80003AFC 01F8C821 */  addu        $t9, $t7, $t8
/* 0000C0 80003B00 8B210000 */  lwl         $at, 0x0($t9)
/* 0000C4 80003B04 9B210003 */  lwr         $at, 0x3($t9)
/* 0000C8 80003B08 A8C10000 */  swl         $at, 0x0($a2)
/* 0000CC 80003B0C B8C10003 */  swr         $at, 0x3($a2)
/* 0000D0 80003B10 97210004 */  lhu         $at, 0x4($t9)
/* 0000D4 80003B14 A4C10004 */  sh          $at, 0x4($a2)
/* 0000D8 80003B18 90C20004 */  lbu         $v0, 0x4($a2)
/* 0000DC 80003B1C 2C4A0001 */  sltiu       $t2, $v0, 0x1
/* 0000E0 80003B20 10000005 */  b           .L80003B38
/* 0000E4 80003B24 01401025 */   move       $v0, $t2
.L80003B28:
/* 0000E8 80003B28 00C02025 */  move        $a0, $a2
/* 0000EC 80003B2C 0C014388 */  jal         func_80050E20
/* 0000F0 80003B30 24050006 */   addiu      $a1, $zero, 0x6
/* 0000F4 80003B34 00001025 */  move        $v0, $zero
.L80003B38:
/* 0000F8 80003B38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0000FC 80003B3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000100 80003B40 03E00008 */  jr          $ra
/* 000104 80003B44 00000000 */   nop
/* 000108 80003B48 00000000 */  nop
/* 00010C 80003B4C 00000000 */  nop
