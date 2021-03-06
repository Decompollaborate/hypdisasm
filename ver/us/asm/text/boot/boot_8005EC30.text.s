.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005EC30 # 0
/* 05E7E0 8005EC30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05E7E4 8005EC34 AFB10018 */  sw          $s1, 0x18($sp)
/* 05E7E8 8005EC38 AFA50024 */  sw          $a1, 0x24($sp)
/* 05E7EC 8005EC3C 87B10026 */  lh          $s1, 0x26($sp)
/* 05E7F0 8005EC40 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05E7F4 8005EC44 AFB00014 */  sw          $s0, 0x14($sp)
/* 05E7F8 8005EC48 00117080 */  sll         $t6, $s1, 2
/* 05E7FC 8005EC4C AFA60028 */  sw          $a2, 0x28($sp)
/* 05E800 8005EC50 01D17021 */  addu        $t6, $t6, $s1
/* 05E804 8005EC54 8C8F0034 */  lw          $t7, 0x34($a0)
/* 05E808 8005EC58 000E7080 */  sll         $t6, $t6, 2
/* 05E80C 8005EC5C 01D17023 */  subu        $t6, $t6, $s1
/* 05E810 8005EC60 00808025 */  move        $s0, $a0
/* 05E814 8005EC64 000E8880 */  sll         $s1, $t6, 2
/* 05E818 8005EC68 00C02825 */  move        $a1, $a2
/* 05E81C 8005EC6C 01F12021 */  addu        $a0, $t7, $s1
/* 05E820 8005EC70 24840020 */  addiu       $a0, $a0, 0x20
/* 05E824 8005EC74 0C01586C */  jal         func_800561B0
/* 05E828 8005EC78 00E03025 */   move       $a2, $a3
/* 05E82C 8005EC7C 8E180034 */  lw          $t8, 0x34($s0)
/* 05E830 8005EC80 24050001 */  addiu       $a1, $zero, 0x1
/* 05E834 8005EC84 03113021 */  addu        $a2, $t8, $s1
/* 05E838 8005EC88 0C015B00 */  jal         func_80056C00
/* 05E83C 8005EC8C 24C40020 */   addiu      $a0, $a2, 0x20
/* 05E840 8005EC90 8E190034 */  lw          $t9, 0x34($s0)
/* 05E844 8005EC94 8E040030 */  lw          $a0, 0x30($s0)
/* 05E848 8005EC98 24050002 */  addiu       $a1, $zero, 0x2
/* 05E84C 8005EC9C 03313021 */  addu        $a2, $t9, $s1
/* 05E850 8005ECA0 0C017514 */  jal         func_8005D450
/* 05E854 8005ECA4 24C60020 */   addiu      $a2, $a2, 0x20
/* 05E858 8005ECA8 8E080034 */  lw          $t0, 0x34($s0)
/* 05E85C 8005ECAC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05E860 8005ECB0 8FB00014 */  lw          $s0, 0x14($sp)
/* 05E864 8005ECB4 01111021 */  addu        $v0, $t0, $s1
/* 05E868 8005ECB8 8FB10018 */  lw          $s1, 0x18($sp)
/* 05E86C 8005ECBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 05E870 8005ECC0 03E00008 */  jr          $ra
/* 05E874 8005ECC4 24420020 */   addiu      $v0, $v0, 0x20
/* 05E878 8005ECC8 00000000 */  nop
/* 05E87C 8005ECCC 00000000 */  nop
