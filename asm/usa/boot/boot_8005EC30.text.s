.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005EC30 # 0
/* 000000 8005EC30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 8005EC34 AFB10018 */  sw          $s1, 0x18($sp)
/* 000008 8005EC38 AFA50024 */  sw          $a1, 0x24($sp)
/* 00000C 8005EC3C 87B10026 */  lh          $s1, 0x26($sp)
/* 000010 8005EC40 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000014 8005EC44 AFB00014 */  sw          $s0, 0x14($sp)
/* 000018 8005EC48 00117080 */  sll         $t6, $s1, 2
/* 00001C 8005EC4C AFA60028 */  sw          $a2, 0x28($sp)
/* 000020 8005EC50 01D17021 */  addu        $t6, $t6, $s1
/* 000024 8005EC54 8C8F0034 */  lw          $t7, 0x34($a0)
/* 000028 8005EC58 000E7080 */  sll         $t6, $t6, 2
/* 00002C 8005EC5C 01D17023 */  subu        $t6, $t6, $s1
/* 000030 8005EC60 00808025 */  move        $s0, $a0
/* 000034 8005EC64 000E8880 */  sll         $s1, $t6, 2
/* 000038 8005EC68 00C02825 */  move        $a1, $a2
/* 00003C 8005EC6C 01F12021 */  addu        $a0, $t7, $s1
/* 000040 8005EC70 24840020 */  addiu       $a0, $a0, 0x20
/* 000044 8005EC74 0C01586C */  jal         func_800561B0
/* 000048 8005EC78 00E03025 */   move       $a2, $a3
/* 00004C 8005EC7C 8E180034 */  lw          $t8, 0x34($s0)
/* 000050 8005EC80 24050001 */  addiu       $a1, $zero, 0x1
/* 000054 8005EC84 03113021 */  addu        $a2, $t8, $s1
/* 000058 8005EC88 0C015B00 */  jal         func_80056C00
/* 00005C 8005EC8C 24C40020 */   addiu      $a0, $a2, 0x20
/* 000060 8005EC90 8E190034 */  lw          $t9, 0x34($s0)
/* 000064 8005EC94 8E040030 */  lw          $a0, 0x30($s0)
/* 000068 8005EC98 24050002 */  addiu       $a1, $zero, 0x2
/* 00006C 8005EC9C 03313021 */  addu        $a2, $t9, $s1
/* 000070 8005ECA0 0C017514 */  jal         func_8005D450
/* 000074 8005ECA4 24C60020 */   addiu      $a2, $a2, 0x20
/* 000078 8005ECA8 8E080034 */  lw          $t0, 0x34($s0)
/* 00007C 8005ECAC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000080 8005ECB0 8FB00014 */  lw          $s0, 0x14($sp)
/* 000084 8005ECB4 01111021 */  addu        $v0, $t0, $s1
/* 000088 8005ECB8 8FB10018 */  lw          $s1, 0x18($sp)
/* 00008C 8005ECBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000090 8005ECC0 03E00008 */  jr          $ra
/* 000094 8005ECC4 24420020 */   addiu      $v0, $v0, 0x20
/* 000098 8005ECC8 00000000 */  nop
/* 00009C 8005ECCC 00000000 */  nop
