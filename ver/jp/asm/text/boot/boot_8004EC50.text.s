.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EC50 # 0
/* 04E800 8004EC50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04E804 8004EC54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04E808 8004EC58 AFA40020 */  sw          $a0, 0x20($sp)
/* 04E80C 8004EC5C 0C0150EC */  jal         func_800543B0
/* 04E810 8004EC60 AFA50024 */   sw         $a1, 0x24($sp)
/* 04E814 8004EC64 3C0E8010 */  lui         $t6, %hi(D_80102380)
/* 04E818 8004EC68 91CE2380 */  lbu         $t6, %lo(D_80102380)($t6)
/* 04E81C 8004EC6C 240100FF */  addiu       $at, $zero, 0xff
/* 04E820 8004EC70 11C10023 */  beq         $t6, $at, .L8004ED00
/* 04E824 8004EC74 00000000 */   nop
/* 04E828 8004EC78 0C013B53 */  jal         func_8004ED4C
/* 04E82C 8004EC7C 00000000 */   nop
/* 04E830 8004EC80 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04E834 8004EC84 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04E838 8004EC88 0C015108 */  jal         func_80054420
/* 04E83C 8004EC8C 24040001 */   addiu      $a0, $zero, 0x1
/* 04E840 8004EC90 AFA20018 */  sw          $v0, 0x18($sp)
/* 04E844 8004EC94 8FA40020 */  lw          $a0, 0x20($sp)
/* 04E848 8004EC98 00002825 */  move        $a1, $zero
/* 04E84C 8004EC9C 0C013A48 */  jal         func_8004E920
/* 04E850 8004ECA0 24060001 */   addiu      $a2, $zero, 0x1
/* 04E854 8004ECA4 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04E858 8004ECA8 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04E85C 8004ECAC 0C015108 */  jal         func_80054420
/* 04E860 8004ECB0 00002025 */   move       $a0, $zero
/* 04E864 8004ECB4 AFA20018 */  sw          $v0, 0x18($sp)
/* 04E868 8004ECB8 8FA40020 */  lw          $a0, 0x20($sp)
/* 04E86C 8004ECBC 00002825 */  move        $a1, $zero
/* 04E870 8004ECC0 0C013A48 */  jal         func_8004E920
/* 04E874 8004ECC4 24060001 */   addiu      $a2, $zero, 0x1
/* 04E878 8004ECC8 0C013BFC */  jal         func_8004EFF0
/* 04E87C 8004ECCC 240400FF */   addiu      $a0, $zero, 0xff
/* 04E880 8004ECD0 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04E884 8004ECD4 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04E888 8004ECD8 0C015108 */  jal         func_80054420
/* 04E88C 8004ECDC 24040001 */   addiu      $a0, $zero, 0x1
/* 04E890 8004ECE0 AFA20018 */  sw          $v0, 0x18($sp)
/* 04E894 8004ECE4 8FA40020 */  lw          $a0, 0x20($sp)
/* 04E898 8004ECE8 00002825 */  move        $a1, $zero
/* 04E89C 8004ECEC 0C013A48 */  jal         func_8004E920
/* 04E8A0 8004ECF0 24060001 */   addiu      $a2, $zero, 0x1
/* 04E8A4 8004ECF4 240F00FF */  addiu       $t7, $zero, 0xff
/* 04E8A8 8004ECF8 3C018010 */  lui         $at, %hi(D_80102380)
/* 04E8AC 8004ECFC A02F2380 */  sb          $t7, %lo(D_80102380)($at)
.L8004ED00:
/* 04E8B0 8004ED00 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04E8B4 8004ED04 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04E8B8 8004ED08 0C015108 */  jal         func_80054420
/* 04E8BC 8004ED0C 00002025 */   move       $a0, $zero
/* 04E8C0 8004ED10 AFA20018 */  sw          $v0, 0x18($sp)
/* 04E8C4 8004ED14 8FA40020 */  lw          $a0, 0x20($sp)
/* 04E8C8 8004ED18 00002825 */  move        $a1, $zero
/* 04E8CC 8004ED1C 0C013A48 */  jal         func_8004E920
/* 04E8D0 8004ED20 24060001 */   addiu      $a2, $zero, 0x1
/* 04E8D4 8004ED24 27A4001F */  addiu       $a0, $sp, 0x1f
/* 04E8D8 8004ED28 0C013BC8 */  jal         func_8004EF20
/* 04E8DC 8004ED2C 8FA50024 */   lw         $a1, 0x24($sp)
/* 04E8E0 8004ED30 0C0150FD */  jal         func_800543F4
/* 04E8E4 8004ED34 00000000 */   nop
/* 04E8E8 8004ED38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04E8EC 8004ED3C 8FA20018 */  lw          $v0, 0x18($sp)
/* 04E8F0 8004ED40 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04E8F4 8004ED44 03E00008 */  jr          $ra
/* 04E8F8 8004ED48 00000000 */   nop

glabel func_8004ED4C # 1
/* 04E8FC 8004ED4C 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 04E900 8004ED50 3C0F8010 */  lui         $t7, %hi(D_80102340)
/* 04E904 8004ED54 240E0001 */  addiu       $t6, $zero, 0x1
/* 04E908 8004ED58 3C018010 */  lui         $at, %hi(D_8010237C)
/* 04E90C 8004ED5C 25EF2340 */  addiu       $t7, $t7, %lo(D_80102340)
/* 04E910 8004ED60 AC2E237C */  sw          $t6, %lo(D_8010237C)($at)
/* 04E914 8004ED64 AFAF0004 */  sw          $t7, 0x4($sp)
/* 04E918 8004ED68 AFA00000 */  sw          $zero, 0x0($sp)
.L8004ED6C:
/* 04E91C 8004ED6C 8FB90004 */  lw          $t9, 0x4($sp)
/* 04E920 8004ED70 241800FD */  addiu       $t8, $zero, 0xfd
/* 04E924 8004ED74 A3380000 */  sb          $t8, 0x0($t9)
/* 04E928 8004ED78 8FAA0000 */  lw          $t2, 0x0($sp)
/* 04E92C 8004ED7C 8FA80004 */  lw          $t0, 0x4($sp)
/* 04E930 8004ED80 254B0001 */  addiu       $t3, $t2, 0x1
/* 04E934 8004ED84 29610004 */  slti        $at, $t3, 0x4
/* 04E938 8004ED88 25090001 */  addiu       $t1, $t0, 0x1
/* 04E93C 8004ED8C AFAB0000 */  sw          $t3, 0x0($sp)
/* 04E940 8004ED90 1420FFF6 */  bnez        $at, .L8004ED6C
/* 04E944 8004ED94 AFA90004 */   sw         $t1, 0x4($sp)
/* 04E948 8004ED98 8FAD0004 */  lw          $t5, 0x4($sp)
/* 04E94C 8004ED9C 240C00FE */  addiu       $t4, $zero, 0xfe
/* 04E950 8004EDA0 27BD0008 */  addiu       $sp, $sp, 0x8
/* 04E954 8004EDA4 03E00008 */  jr          $ra
/* 04E958 8004EDA8 A1AC0000 */   sb         $t4, 0x0($t5)
/* 04E95C 8004EDAC 00000000 */  nop
