.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8011CB20 # 0
/* 00E7C0 8011CB20 3C048014 */  lui         $a0, %hi(D_801381E0)
/* 00E7C4 8011CB24 8C8481E0 */  lw          $a0, %lo(D_801381E0)($a0)
/* 00E7C8 8011CB28 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00E7CC 8011CB2C AFBF001C */  sw          $ra, 0x1c($sp)
/* 00E7D0 8011CB30 10800003 */  beqz        $a0, .L8011CB40
/* 00E7D4 8011CB34 24060000 */   addiu      $a2, $zero, 0x0
/* 00E7D8 8011CB38 0C0079A4 */  jal         func_8001E690
/* 00E7DC 8011CB3C 24070000 */   addiu      $a3, $zero, 0x0
.L8011CB40:
/* 00E7E0 8011CB40 27A40034 */  addiu       $a0, $sp, 0x34
/* 00E7E4 8011CB44 0C008494 */  jal         func_80021250
/* 00E7E8 8011CB48 27A50028 */   addiu      $a1, $sp, 0x28
/* 00E7EC 8011CB4C 3C048014 */  lui         $a0, %hi(D_801381D0)
/* 00E7F0 8011CB50 8C8481D0 */  lw          $a0, %lo(D_801381D0)($a0)
/* 00E7F4 8011CB54 8FAE0034 */  lw          $t6, 0x34($sp)
/* 00E7F8 8011CB58 D7A40028 */  ldc1        $f4, 0x28($sp)
/* 00E7FC 8011CB5C 3C018014 */  lui         $at, %hi(D_801381D8)
/* 00E800 8011CB60 55C4000A */  bnel        $t6, $a0, .L8011CB8C
/* 00E804 8011CB64 3C013FF0 */   lui        $at, 0x3ff0
/* 00E808 8011CB68 D42681D8 */  ldc1        $f6, %lo(D_801381D8)($at)
/* 00E80C 8011CB6C 3C018013 */  lui         $at, %hi(D_80136B18)
/* 00E810 8011CB70 D4286B18 */  ldc1        $f8, %lo(D_80136B18)($at)
/* 00E814 8011CB74 46262001 */  sub.d       $f0, $f4, $f6
/* 00E818 8011CB78 46200005 */  abs.d       $f0, $f0
/* 00E81C 8011CB7C 4620403C */  c.lt.d      $f8, $f0
/* 00E820 8011CB80 00000000 */  nop
/* 00E824 8011CB84 4500000A */  bc1f        .L8011CBB0
/* 00E828 8011CB88 3C013FF0 */   lui        $at, 0x3ff0
.L8011CB8C:
/* 00E82C 8011CB8C 44810800 */  mtc1        $at, $f1
/* 00E830 8011CB90 44800000 */  mtc1        $zero, $f0
/* 00E834 8011CB94 44060800 */  mfc1        $a2, $f1
/* 00E838 8011CB98 44070000 */  mfc1        $a3, $f0
/* 00E83C 8011CB9C 0C00849C */  jal         func_80021270
/* 00E840 8011CBA0 F7A00010 */   sdc1       $f0, 0x10($sp)
/* 00E844 8011CBA4 3C018014 */  lui         $at, %hi(D_801381D8)
/* 00E848 8011CBA8 0C0084C5 */  jal         func_80021314
/* 00E84C 8011CBAC D42C81D8 */   ldc1       $f12, %lo(D_801381D8)($at)
.L8011CBB0:
/* 00E850 8011CBB0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00E854 8011CBB4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00E858 8011CBB8 03E00008 */  jr          $ra
/* 00E85C 8011CBBC 00000000 */   nop

glabel func_8011CBC0 # 1
/* 00E860 8011CBC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00E864 8011CBC4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00E868 8011CBC8 0C002671 */  jal         func_800099C4
/* 00E86C 8011CBCC AFA40018 */   sw         $a0, 0x18($sp)
/* 00E870 8011CBD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00E874 8011CBD4 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00E878 8011CBD8 8FAE0018 */  lw          $t6, 0x18($sp)
/* 00E87C 8011CBDC 248481E8 */  addiu       $a0, $a0, %lo(D_801381E8)
/* 00E880 8011CBE0 AC820028 */  sw          $v0, 0x28($a0)
/* 00E884 8011CBE4 AC83002C */  sw          $v1, 0x2c($a0)
/* 00E888 8011CBE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00E88C 8011CBEC 03E00008 */  jr          $ra
/* 00E890 8011CBF0 AC8E0018 */   sw         $t6, 0x18($a0)

glabel func_8011CBF4 # 2
/* 00E894 8011CBF4 3C028014 */  lui         $v0, %hi(D_801381E8)
/* 00E898 8011CBF8 244281E8 */  addiu       $v0, $v0, %lo(D_801381E8)
/* 00E89C 8011CBFC 8C4F0014 */  lw          $t7, 0x14($v0)
/* 00E8A0 8011CC00 8C4E0000 */  lw          $t6, 0x0($v0)
/* 00E8A4 8011CC04 000FC080 */  sll         $t8, $t7, 2
/* 00E8A8 8011CC08 0058C821 */  addu        $t9, $v0, $t8
/* 00E8AC 8011CC0C AF2E0004 */  sw          $t6, 0x4($t9)
/* 00E8B0 8011CC10 8C480014 */  lw          $t0, 0x14($v0)
/* 00E8B4 8011CC14 25090001 */  addiu       $t1, $t0, 0x1
/* 00E8B8 8011CC18 03E00008 */  jr          $ra
/* 00E8BC 8011CC1C AC490014 */   sw         $t1, 0x14($v0)

glabel func_8011CC20 # 3
/* 00E8C0 8011CC20 3C028014 */  lui         $v0, %hi(D_801381E8)
/* 00E8C4 8011CC24 244281E8 */  addiu       $v0, $v0, %lo(D_801381E8)
/* 00E8C8 8011CC28 8C4E0014 */  lw          $t6, 0x14($v0)
/* 00E8CC 8011CC2C 3C018014 */  lui         $at, %hi(D_801381FC)
/* 00E8D0 8011CC30 3C088014 */  lui         $t0, %hi(D_801381FC)
/* 00E8D4 8011CC34 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 00E8D8 8011CC38 05E10007 */  bgez        $t7, .L8011CC58
/* 00E8DC 8011CC3C AC4F0014 */   sw         $t7, 0x14($v0)
/* 00E8E0 8011CC40 AC2081FC */  sw          $zero, %lo(D_801381FC)($at)
/* 00E8E4 8011CC44 3C198013 */  lui         $t9, %hi(D_8012E5D8)
/* 00E8E8 8011CC48 2739E5D8 */  addiu       $t9, $t9, %lo(D_8012E5D8)
/* 00E8EC 8011CC4C 3C018014 */  lui         $at, %hi(D_801381E8)
/* 00E8F0 8011CC50 03E00008 */  jr          $ra
/* 00E8F4 8011CC54 AC3981E8 */   sw         $t9, %lo(D_801381E8)($at)
.L8011CC58:
/* 00E8F8 8011CC58 8D0881FC */  lw          $t0, %lo(D_801381FC)($t0)
/* 00E8FC 8011CC5C 3C018014 */  lui         $at, %hi(D_801381E8)
/* 00E900 8011CC60 00084880 */  sll         $t1, $t0, 2
/* 00E904 8011CC64 00495021 */  addu        $t2, $v0, $t1
/* 00E908 8011CC68 8D4B0004 */  lw          $t3, 0x4($t2)
/* 00E90C 8011CC6C AC2B81E8 */  sw          $t3, %lo(D_801381E8)($at)
/* 00E910 8011CC70 03E00008 */  jr          $ra
/* 00E914 8011CC74 00000000 */   nop

glabel func_8011CC78 # 4
/* 00E918 8011CC78 8C830004 */  lw          $v1, 0x4($a0)
/* 00E91C 8011CC7C 00001025 */  move        $v0, $zero
/* 00E920 8011CC80 5060000B */  beql        $v1, $zero, .L8011CCB0
/* 00E924 8011CC84 00001025 */   move       $v0, $zero
/* 00E928 8011CC88 8C85000C */  lw          $a1, 0xc($a0)
.L8011CC8C:
/* 00E92C 8011CC8C 54450004 */  bnel        $v0, $a1, .L8011CCA0
/* 00E930 8011CC90 8C630014 */   lw         $v1, 0x14($v1)
/* 00E934 8011CC94 03E00008 */  jr          $ra
/* 00E938 8011CC98 00601025 */   move       $v0, $v1
/* 00E93C 8011CC9C 8C630014 */  lw          $v1, 0x14($v1)
.L8011CCA0:
/* 00E940 8011CCA0 24420001 */  addiu       $v0, $v0, 0x1
/* 00E944 8011CCA4 1460FFF9 */  bnez        $v1, .L8011CC8C
/* 00E948 8011CCA8 00000000 */   nop
/* 00E94C 8011CCAC 00001025 */  move        $v0, $zero
.L8011CCB0:
/* 00E950 8011CCB0 03E00008 */  jr          $ra
/* 00E954 8011CCB4 00000000 */   nop

glabel func_8011CCB8 # 5
/* 00E958 8011CCB8 8C820004 */  lw          $v0, 0x4($a0)
/* 00E95C 8011CCBC 00001825 */  move        $v1, $zero
/* 00E960 8011CCC0 50400006 */  beql        $v0, $zero, .L8011CCDC
/* 00E964 8011CCC4 AC830018 */   sw         $v1, 0x18($a0)
/* 00E968 8011CCC8 8C420014 */  lw          $v0, 0x14($v0)
.L8011CCCC:
/* 00E96C 8011CCCC 24630001 */  addiu       $v1, $v1, 0x1
/* 00E970 8011CCD0 5440FFFE */  bnel        $v0, $zero, .L8011CCCC
/* 00E974 8011CCD4 8C420014 */   lw         $v0, 0x14($v0)
/* 00E978 8011CCD8 AC830018 */  sw          $v1, 0x18($a0)
.L8011CCDC:
/* 00E97C 8011CCDC 03E00008 */  jr          $ra
/* 00E980 8011CCE0 00601025 */   move       $v0, $v1

glabel func_8011CCE4 # 6
/* 00E984 8011CCE4 90820000 */  lbu         $v0, 0x0($a0)
/* 00E988 8011CCE8 3C068014 */  lui         $a2, %hi(D_801382B8)
/* 00E98C 8011CCEC 24C682B8 */  addiu       $a2, $a2, %lo(D_801382B8)
/* 00E990 8011CCF0 1040000D */  beqz        $v0, .L8011CD28
/* 00E994 8011CCF4 3C058014 */   lui        $a1, %hi(D_80138318)
/* 00E998 8011CCF8 24A58318 */  addiu       $a1, $a1, %lo(D_80138318)
/* 00E99C 8011CCFC 8CA30000 */  lw          $v1, 0x0($a1)
.L8011CD00:
/* 00E9A0 8011CD00 2861005F */  slti        $at, $v1, 0x5f
/* 00E9A4 8011CD04 10200008 */  beqz        $at, .L8011CD28
/* 00E9A8 8011CD08 00C37021 */   addu       $t6, $a2, $v1
/* 00E9AC 8011CD0C A1C20000 */  sb          $v0, 0x0($t6)
/* 00E9B0 8011CD10 246F0001 */  addiu       $t7, $v1, 0x1
/* 00E9B4 8011CD14 ACAF0000 */  sw          $t7, 0x0($a1)
/* 00E9B8 8011CD18 90820001 */  lbu         $v0, 0x1($a0)
/* 00E9BC 8011CD1C 24840001 */  addiu       $a0, $a0, 0x1
/* 00E9C0 8011CD20 5440FFF7 */  bnel        $v0, $zero, .L8011CD00
/* 00E9C4 8011CD24 8CA30000 */   lw         $v1, 0x0($a1)
.L8011CD28:
/* 00E9C8 8011CD28 3C058014 */  lui         $a1, %hi(D_80138318)
/* 00E9CC 8011CD2C 24A58318 */  addiu       $a1, $a1, %lo(D_80138318)
/* 00E9D0 8011CD30 8CB80000 */  lw          $t8, 0x0($a1)
/* 00E9D4 8011CD34 3C068014 */  lui         $a2, %hi(D_801382B8)
/* 00E9D8 8011CD38 24C682B8 */  addiu       $a2, $a2, %lo(D_801382B8)
/* 00E9DC 8011CD3C 00D8C821 */  addu        $t9, $a2, $t8
/* 00E9E0 8011CD40 03E00008 */  jr          $ra
/* 00E9E4 8011CD44 A3200000 */   sb         $zero, 0x0($t9)

glabel func_8011CD48 # 7
/* 00E9E8 8011CD48 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 00E9EC 8011CD4C AFB40024 */  sw          $s4, 0x24($sp)
/* 00E9F0 8011CD50 3C148014 */  lui         $s4, %hi(D_801382B4)
/* 00E9F4 8011CD54 269482B4 */  addiu       $s4, $s4, %lo(D_801382B4)
/* 00E9F8 8011CD58 8E8E0000 */  lw          $t6, 0x0($s4)
/* 00E9FC 8011CD5C AFB10018 */  sw          $s1, 0x18($sp)
/* 00EA00 8011CD60 AFB00014 */  sw          $s0, 0x14($sp)
/* 00EA04 8011CD64 3C188014 */  lui         $t8, %hi(D_80138280)
/* 00EA08 8011CD68 39CF0001 */  xori        $t7, $t6, 0x1
/* 00EA0C 8011CD6C 000F4080 */  sll         $t0, $t7, 2
/* 00EA10 8011CD70 27108280 */  addiu       $s0, $t8, %lo(D_80138280)
/* 00EA14 8011CD74 3C118014 */  lui         $s1, %hi(D_801382B0)
/* 00EA18 8011CD78 AFBF0034 */  sw          $ra, 0x34($sp)
/* 00EA1C 8011CD7C AFB70030 */  sw          $s7, 0x30($sp)
/* 00EA20 8011CD80 AFB6002C */  sw          $s6, 0x2c($sp)
/* 00EA24 8011CD84 AFB50028 */  sw          $s5, 0x28($sp)
/* 00EA28 8011CD88 AFB30020 */  sw          $s3, 0x20($sp)
/* 00EA2C 8011CD8C AFB2001C */  sw          $s2, 0x1c($sp)
/* 00EA30 8011CD90 AE8F0000 */  sw          $t7, 0x0($s4)
/* 00EA34 8011CD94 263182B0 */  addiu       $s1, $s1, %lo(D_801382B0)
/* 00EA38 8011CD98 01101021 */  addu        $v0, $t0, $s0
.L8011CD9C:
/* 00EA3C 8011CD9C 8C440000 */  lw          $a0, 0x0($v0)
/* 00EA40 8011CDA0 50800008 */  beql        $a0, $zero, .L8011CDC4
/* 00EA44 8011CDA4 26100008 */   addiu      $s0, $s0, 0x8
/* 00EA48 8011CDA8 0C00F412 */  jal         func_8003D048
/* 00EA4C 8011CDAC 00000000 */   nop
/* 00EA50 8011CDB0 8E890000 */  lw          $t1, 0x0($s4)
/* 00EA54 8011CDB4 00095080 */  sll         $t2, $t1, 2
/* 00EA58 8011CDB8 020A1021 */  addu        $v0, $s0, $t2
/* 00EA5C 8011CDBC AC400000 */  sw          $zero, 0x0($v0)
/* 00EA60 8011CDC0 26100008 */  addiu       $s0, $s0, 0x8
.L8011CDC4:
/* 00EA64 8011CDC4 1611FFF5 */  bne         $s0, $s1, .L8011CD9C
/* 00EA68 8011CDC8 24420008 */   addiu      $v0, $v0, 0x8
/* 00EA6C 8011CDCC 3C108014 */  lui         $s0, %hi(D_801382B8)
/* 00EA70 8011CDD0 3C168007 */  lui         $s6, %hi(D_80070B58)
/* 00EA74 8011CDD4 3C158014 */  lui         $s5, %hi(D_80138280)
/* 00EA78 8011CDD8 26B58280 */  addiu       $s5, $s5, %lo(D_80138280)
/* 00EA7C 8011CDDC 26D60B58 */  addiu       $s6, $s6, %lo(D_80070B58)
/* 00EA80 8011CDE0 261082B8 */  addiu       $s0, $s0, %lo(D_801382B8)
/* 00EA84 8011CDE4 00009825 */  move        $s3, $zero
/* 00EA88 8011CDE8 24170006 */  addiu       $s7, $zero, 0x6
/* 00EA8C 8011CDEC 2412000A */  addiu       $s2, $zero, 0xa
/* 00EA90 8011CDF0 27B10054 */  addiu       $s1, $sp, 0x54
/* 00EA94 8011CDF4 92020000 */  lbu         $v0, 0x0($s0)
.L8011CDF8:
/* 00EA98 8011CDF8 00002025 */  move        $a0, $zero
/* 00EA9C 8011CDFC A3A00054 */  sb          $zero, 0x54($sp)
/* 00EAA0 8011CE00 10400012 */  beqz        $v0, .L8011CE4C
/* 00EAA4 8011CE04 00401825 */   move       $v1, $v0
.L8011CE08:
/* 00EAA8 8011CE08 16430003 */  bne         $s2, $v1, .L8011CE18
/* 00EAAC 8011CE0C 02245821 */   addu       $t3, $s1, $a0
/* 00EAB0 8011CE10 1000000E */  b           .L8011CE4C
/* 00EAB4 8011CE14 26100001 */   addiu      $s0, $s0, 0x1
.L8011CE18:
/* 00EAB8 8011CE18 24840001 */  addiu       $a0, $a0, 0x1
/* 00EABC 8011CE1C 28810010 */  slti        $at, $a0, 0x10
/* 00EAC0 8011CE20 A1620000 */  sb          $v0, 0x0($t3)
/* 00EAC4 8011CE24 14200006 */  bnez        $at, .L8011CE40
/* 00EAC8 8011CE28 26100001 */   addiu      $s0, $s0, 0x1
/* 00EACC 8011CE2C 920C0000 */  lbu         $t4, 0x0($s0)
/* 00EAD0 8011CE30 564C0007 */  bnel        $s2, $t4, .L8011CE50
/* 00EAD4 8011CE34 02246821 */   addu       $t5, $s1, $a0
/* 00EAD8 8011CE38 10000004 */  b           .L8011CE4C
/* 00EADC 8011CE3C 26100001 */   addiu      $s0, $s0, 0x1
.L8011CE40:
/* 00EAE0 8011CE40 92020000 */  lbu         $v0, 0x0($s0)
/* 00EAE4 8011CE44 1440FFF0 */  bnez        $v0, .L8011CE08
/* 00EAE8 8011CE48 00401825 */   move       $v1, $v0
.L8011CE4C:
/* 00EAEC 8011CE4C 02246821 */  addu        $t5, $s1, $a0
.L8011CE50:
/* 00EAF0 8011CE50 A1A00000 */  sb          $zero, 0x0($t5)
/* 00EAF4 8011CE54 93AE0054 */  lbu         $t6, 0x54($sp)
/* 00EAF8 8011CE58 001378C0 */  sll         $t7, $s3, 3
/* 00EAFC 8011CE5C 02AFC821 */  addu        $t9, $s5, $t7
/* 00EB00 8011CE60 51C00008 */  beql        $t6, $zero, .L8011CE84
/* 00EB04 8011CE64 26730001 */   addiu      $s3, $s3, 0x1
/* 00EB08 8011CE68 8E880000 */  lw          $t0, 0x0($s4)
/* 00EB0C 8011CE6C 02202825 */  move        $a1, $s1
/* 00EB10 8011CE70 02C03025 */  move        $a2, $s6
/* 00EB14 8011CE74 0008C080 */  sll         $t8, $t0, 2
/* 00EB18 8011CE78 0C00F1B7 */  jal         func_8003C6DC
/* 00EB1C 8011CE7C 03382021 */   addu       $a0, $t9, $t8
/* 00EB20 8011CE80 26730001 */  addiu       $s3, $s3, 0x1
.L8011CE84:
/* 00EB24 8011CE84 5677FFDC */  bnel        $s3, $s7, .L8011CDF8
/* 00EB28 8011CE88 92020000 */   lbu        $v0, 0x0($s0)
/* 00EB2C 8011CE8C 8FBF0034 */  lw          $ra, 0x34($sp)
/* 00EB30 8011CE90 8FB00014 */  lw          $s0, 0x14($sp)
/* 00EB34 8011CE94 8FB10018 */  lw          $s1, 0x18($sp)
/* 00EB38 8011CE98 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00EB3C 8011CE9C 8FB30020 */  lw          $s3, 0x20($sp)
/* 00EB40 8011CEA0 8FB40024 */  lw          $s4, 0x24($sp)
/* 00EB44 8011CEA4 8FB50028 */  lw          $s5, 0x28($sp)
/* 00EB48 8011CEA8 8FB6002C */  lw          $s6, 0x2c($sp)
/* 00EB4C 8011CEAC 8FB70030 */  lw          $s7, 0x30($sp)
/* 00EB50 8011CEB0 03E00008 */  jr          $ra
/* 00EB54 8011CEB4 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8011CEB8 # 8
/* 00EB58 8011CEB8 3C018014 */  lui         $at, %hi(D_80138318)
/* 00EB5C 8011CEBC AC208318 */  sw          $zero, %lo(D_80138318)($at)
/* 00EB60 8011CEC0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00EB64 8011CEC4 3C018014 */  lui         $at, %hi(D_801382B8)
/* 00EB68 8011CEC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00EB6C 8011CECC A02082B8 */  sb          $zero, %lo(D_801382B8)($at)
/* 00EB70 8011CED0 8C820010 */  lw          $v0, 0x10($a0)
/* 00EB74 8011CED4 00803025 */  move        $a2, $a0
/* 00EB78 8011CED8 8C45000C */  lw          $a1, 0xc($v0)
/* 00EB7C 8011CEDC 10A00005 */  beqz        $a1, .L8011CEF4
/* 00EB80 8011CEE0 00A02025 */   move       $a0, $a1
/* 00EB84 8011CEE4 0C047339 */  jal         func_8011CCE4
/* 00EB88 8011CEE8 AFA60018 */   sw         $a2, 0x18($sp)
/* 00EB8C 8011CEEC 8FA60018 */  lw          $a2, 0x18($sp)
/* 00EB90 8011CEF0 8CC20010 */  lw          $v0, 0x10($a2)
.L8011CEF4:
/* 00EB94 8011CEF4 8C430010 */  lw          $v1, 0x10($v0)
/* 00EB98 8011CEF8 10600003 */  beqz        $v1, .L8011CF08
/* 00EB9C 8011CEFC 00000000 */   nop
/* 00EBA0 8011CF00 0060F809 */  jalr        $v1
/* 00EBA4 8011CF04 00000000 */   nop
.L8011CF08:
/* 00EBA8 8011CF08 0C047352 */  jal         func_8011CD48
/* 00EBAC 8011CF0C 00000000 */   nop
/* 00EBB0 8011CF10 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00EBB4 8011CF14 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00EBB8 8011CF18 03E00008 */  jr          $ra
/* 00EBBC 8011CF1C 00000000 */   nop

glabel func_8011CF20 # 9
/* 00EBC0 8011CF20 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00EBC4 8011CF24 AFA40028 */  sw          $a0, 0x28($sp)
/* 00EBC8 8011CF28 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00EBCC 8011CF2C 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00EBD0 8011CF30 AFB30020 */  sw          $s3, 0x20($sp)
/* 00EBD4 8011CF34 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00EBD8 8011CF38 AFB10018 */  sw          $s1, 0x18($sp)
/* 00EBDC 8011CF3C AFB00014 */  sw          $s0, 0x14($sp)
/* 00EBE0 8011CF40 0C0473AE */  jal         func_8011CEB8
/* 00EBE4 8011CF44 248481E8 */   addiu      $a0, $a0, %lo(D_801381E8)
/* 00EBE8 8011CF48 8FAE0028 */  lw          $t6, 0x28($sp)
/* 00EBEC 8011CF4C 0C00ED84 */  jal         func_8003B610
/* 00EBF0 8011CF50 8DC40000 */   lw         $a0, 0x0($t6)
/* 00EBF4 8011CF54 0C00F134 */  jal         func_8003C4D0
/* 00EBF8 8011CF58 00002025 */   move       $a0, $zero
/* 00EBFC 8011CF5C 0C00EDD9 */  jal         func_8003B764
/* 00EC00 8011CF60 00000000 */   nop
/* 00EC04 8011CF64 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 00EC08 8011CF68 0C00F131 */  jal         func_8003C4C4
/* 00EC0C 8011CF6C 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
/* 00EC10 8011CF70 0C00F137 */  jal         func_8003C4DC
/* 00EC14 8011CF74 00002025 */   move       $a0, $zero
/* 00EC18 8011CF78 3C013F80 */  lui         $at, 0x3f80
/* 00EC1C 8011CF7C 44816000 */  mtc1        $at, $f12
/* 00EC20 8011CF80 0C00F13A */  jal         func_8003C4E8
/* 00EC24 8011CF84 46006386 */   mov.s      $f14, $f12
/* 00EC28 8011CF88 00002025 */  move        $a0, $zero
/* 00EC2C 8011CF8C 00002825 */  move        $a1, $zero
/* 00EC30 8011CF90 2406013F */  addiu       $a2, $zero, 0x13f
/* 00EC34 8011CF94 0C00F098 */  jal         func_8003C260
/* 00EC38 8011CF98 240700EF */   addiu      $a3, $zero, 0xef
/* 00EC3C 8011CF9C 00002025 */  move        $a0, $zero
/* 00EC40 8011CFA0 00002825 */  move        $a1, $zero
/* 00EC44 8011CFA4 00003025 */  move        $a2, $zero
/* 00EC48 8011CFA8 0C00F0F9 */  jal         func_8003C3E4
/* 00EC4C 8011CFAC 240700FE */   addiu      $a3, $zero, 0xfe
/* 00EC50 8011CFB0 3C118014 */  lui         $s1, %hi(D_80138280)
/* 00EC54 8011CFB4 3C138014 */  lui         $s3, %hi(D_801382B0)
/* 00EC58 8011CFB8 3C128014 */  lui         $s2, %hi(D_801382B4)
/* 00EC5C 8011CFBC 24100026 */  addiu       $s0, $zero, 0x26
/* 00EC60 8011CFC0 265282B4 */  addiu       $s2, $s2, %lo(D_801382B4)
/* 00EC64 8011CFC4 267382B0 */  addiu       $s3, $s3, %lo(D_801382B0)
/* 00EC68 8011CFC8 26318280 */  addiu       $s1, $s1, %lo(D_80138280)
/* 00EC6C 8011CFCC 8E4F0000 */  lw          $t7, 0x0($s2)
.L8011CFD0:
/* 00EC70 8011CFD0 240400B7 */  addiu       $a0, $zero, 0xb7
/* 00EC74 8011CFD4 000FC080 */  sll         $t8, $t7, 2
/* 00EC78 8011CFD8 0238C821 */  addu        $t9, $s1, $t8
/* 00EC7C 8011CFDC 8F280000 */  lw          $t0, 0x0($t9)
/* 00EC80 8011CFE0 15000003 */  bnez        $t0, .L8011CFF0
/* 00EC84 8011CFE4 00000000 */   nop
/* 00EC88 8011CFE8 10000009 */  b           .L8011D010
/* 00EC8C 8011CFEC 26100010 */   addiu      $s0, $s0, 0x10
.L8011CFF0:
/* 00EC90 8011CFF0 0C00F0CA */  jal         func_8003C328
/* 00EC94 8011CFF4 02002825 */   move       $a1, $s0
/* 00EC98 8011CFF8 8E490000 */  lw          $t1, 0x0($s2)
/* 00EC9C 8011CFFC 00095080 */  sll         $t2, $t1, 2
/* 00ECA0 8011D000 022A5821 */  addu        $t3, $s1, $t2
/* 00ECA4 8011D004 0C00F423 */  jal         func_8003D08C
/* 00ECA8 8011D008 8D640000 */   lw         $a0, 0x0($t3)
/* 00ECAC 8011D00C 26100010 */  addiu       $s0, $s0, 0x10
.L8011D010:
/* 00ECB0 8011D010 26310008 */  addiu       $s1, $s1, 0x8
/* 00ECB4 8011D014 5633FFEE */  bnel        $s1, $s3, .L8011CFD0
/* 00ECB8 8011D018 8E4F0000 */   lw         $t7, 0x0($s2)
/* 00ECBC 8011D01C 0C00EDD5 */  jal         func_8003B754
/* 00ECC0 8011D020 8FA40028 */   lw         $a0, 0x28($sp)
/* 00ECC4 8011D024 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00ECC8 8011D028 8FB00014 */  lw          $s0, 0x14($sp)
/* 00ECCC 8011D02C 8FB10018 */  lw          $s1, 0x18($sp)
/* 00ECD0 8011D030 8FB2001C */  lw          $s2, 0x1c($sp)
/* 00ECD4 8011D034 8FB30020 */  lw          $s3, 0x20($sp)
/* 00ECD8 8011D038 03E00008 */  jr          $ra
/* 00ECDC 8011D03C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8011D040 # 10
/* 00ECE0 8011D040 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00ECE4 8011D044 AFB30024 */  sw          $s3, 0x24($sp)
/* 00ECE8 8011D048 3C138014 */  lui         $s3, %hi(D_801382B0)
/* 00ECEC 8011D04C 267382B0 */  addiu       $s3, $s3, %lo(D_801382B0)
/* 00ECF0 8011D050 8E6E0000 */  lw          $t6, 0x0($s3)
/* 00ECF4 8011D054 AFBE0038 */  sw          $fp, 0x38($sp)
/* 00ECF8 8011D058 AFB1001C */  sw          $s1, 0x1c($sp)
/* 00ECFC 8011D05C 39CF0001 */  xori        $t7, $t6, 0x1
/* 00ED00 8011D060 AFB00018 */  sw          $s0, 0x18($sp)
/* 00ED04 8011D064 3C188014 */  lui         $t8, %hi(D_80138250)
/* 00ED08 8011D068 AFBF003C */  sw          $ra, 0x3c($sp)
/* 00ED0C 8011D06C AFB70034 */  sw          $s7, 0x34($sp)
/* 00ED10 8011D070 AFB60030 */  sw          $s6, 0x30($sp)
/* 00ED14 8011D074 AFB5002C */  sw          $s5, 0x2c($sp)
/* 00ED18 8011D078 AFB40028 */  sw          $s4, 0x28($sp)
/* 00ED1C 8011D07C AFB20020 */  sw          $s2, 0x20($sp)
/* 00ED20 8011D080 AE6F0000 */  sw          $t7, 0x0($s3)
/* 00ED24 8011D084 27108250 */  addiu       $s0, $t8, %lo(D_80138250)
/* 00ED28 8011D088 000F1880 */  sll         $v1, $t7, 2
/* 00ED2C 8011D08C 3C118014 */  lui         $s1, %hi(D_80138280)
/* 00ED30 8011D090 0080F025 */  move        $fp, $a0
/* 00ED34 8011D094 8C950000 */  lw          $s5, 0x0($a0)
/* 00ED38 8011D098 26318280 */  addiu       $s1, $s1, %lo(D_80138280)
/* 00ED3C 8011D09C 00701021 */  addu        $v0, $v1, $s0
.L8011D0A0:
/* 00ED40 8011D0A0 8C440000 */  lw          $a0, 0x0($v0)
/* 00ED44 8011D0A4 50800009 */  beql        $a0, $zero, .L8011D0CC
/* 00ED48 8011D0A8 26100008 */   addiu      $s0, $s0, 0x8
/* 00ED4C 8011D0AC 0C00F412 */  jal         func_8003D048
/* 00ED50 8011D0B0 00000000 */   nop
/* 00ED54 8011D0B4 8E630000 */  lw          $v1, 0x0($s3)
/* 00ED58 8011D0B8 00034080 */  sll         $t0, $v1, 2
/* 00ED5C 8011D0BC 02081021 */  addu        $v0, $s0, $t0
/* 00ED60 8011D0C0 AC400000 */  sw          $zero, 0x0($v0)
/* 00ED64 8011D0C4 01001825 */  move        $v1, $t0
/* 00ED68 8011D0C8 26100008 */  addiu       $s0, $s0, 0x8
.L8011D0CC:
/* 00ED6C 8011D0CC 0211082B */  sltu        $at, $s0, $s1
/* 00ED70 8011D0D0 1420FFF3 */  bnez        $at, .L8011D0A0
/* 00ED74 8011D0D4 24420008 */   addiu      $v0, $v0, 0x8
/* 00ED78 8011D0D8 8FC90018 */  lw          $t1, 0x18($fp)
/* 00ED7C 8011D0DC 24010002 */  addiu       $at, $zero, 0x2
/* 00ED80 8011D0E0 3C148007 */  lui         $s4, %hi(D_80070B58)
/* 00ED84 8011D0E4 15210011 */  bne         $t1, $at, .L8011D12C
/* 00ED88 8011D0E8 26940B58 */   addiu      $s4, $s4, %lo(D_80070B58)
/* 00ED8C 8011D0EC 0C00E500 */  jal         func_80039400
/* 00ED90 8011D0F0 24040006 */   addiu      $a0, $zero, 0x6
/* 00ED94 8011D0F4 8E6B0000 */  lw          $t3, 0x0($s3)
/* 00ED98 8011D0F8 000250C0 */  sll         $t2, $v0, 3
/* 00ED9C 8011D0FC 3C0E8014 */  lui         $t6, %hi(D_80138250)
/* 00EDA0 8011D100 000B6080 */  sll         $t4, $t3, 2
/* 00EDA4 8011D104 3C148007 */  lui         $s4, %hi(D_80070B58)
/* 00EDA8 8011D108 014C6821 */  addu        $t5, $t2, $t4
/* 00EDAC 8011D10C 25CE8250 */  addiu       $t6, $t6, %lo(D_80138250)
/* 00EDB0 8011D110 3C058013 */  lui         $a1, %hi(D_801357E8)
/* 00EDB4 8011D114 26860B58 */  addiu       $a2, $s4, %lo(D_80070B58)
/* 00EDB8 8011D118 24A557E8 */  addiu       $a1, $a1, %lo(D_801357E8)
/* 00EDBC 8011D11C 0C00F1B7 */  jal         func_8003C6DC
/* 00EDC0 8011D120 01AE2021 */   addu       $a0, $t5, $t6
/* 00EDC4 8011D124 10000031 */  b           .L8011D1EC
/* 00EDC8 8011D128 8FBF003C */   lw         $ra, 0x3c($sp)
.L8011D12C:
/* 00EDCC 8011D12C 3C0F8014 */  lui         $t7, %hi(D_80138250)
/* 00EDD0 8011D130 25EF8250 */  addiu       $t7, $t7, %lo(D_80138250)
/* 00EDD4 8011D134 006F2021 */  addu        $a0, $v1, $t7
/* 00EDD8 8011D138 8EA50000 */  lw          $a1, 0x0($s5)
/* 00EDDC 8011D13C 0C00F1B7 */  jal         func_8003C6DC
/* 00EDE0 8011D140 02803025 */   move       $a2, $s4
/* 00EDE4 8011D144 8EA20014 */  lw          $v0, 0x14($s5)
/* 00EDE8 8011D148 8EB20004 */  lw          $s2, 0x4($s5)
/* 00EDEC 8011D14C 00008825 */  move        $s1, $zero
/* 00EDF0 8011D150 18400005 */  blez        $v0, .L8011D168
/* 00EDF4 8011D154 3C108014 */   lui        $s0, %hi(D_80138258)
.L8011D158:
/* 00EDF8 8011D158 26310001 */  addiu       $s1, $s1, 0x1
/* 00EDFC 8011D15C 0222082A */  slt         $at, $s1, $v0
/* 00EE00 8011D160 1420FFFD */  bnez        $at, .L8011D158
/* 00EE04 8011D164 8E520014 */   lw         $s2, 0x14($s2)
.L8011D168:
/* 00EE08 8011D168 3C168013 */  lui         $s6, %hi(D_801357F0)
/* 00EE0C 8011D16C 26D657F0 */  addiu       $s6, $s6, %lo(D_801357F0)
/* 00EE10 8011D170 24110001 */  addiu       $s1, $zero, 0x1
/* 00EE14 8011D174 26108258 */  addiu       $s0, $s0, %lo(D_80138258)
/* 00EE18 8011D178 24170006 */  addiu       $s7, $zero, 0x6
.L8011D17C:
/* 00EE1C 8011D17C 5640000A */  bnel        $s2, $zero, .L8011D1A8
/* 00EE20 8011D180 8EA8000C */   lw         $t0, 0xc($s5)
/* 00EE24 8011D184 8E790000 */  lw          $t9, 0x0($s3)
/* 00EE28 8011D188 02C02825 */  move        $a1, $s6
/* 00EE2C 8011D18C 02803025 */  move        $a2, $s4
/* 00EE30 8011D190 0019C080 */  sll         $t8, $t9, 2
/* 00EE34 8011D194 0C00F1B7 */  jal         func_8003C6DC
/* 00EE38 8011D198 02182021 */   addu       $a0, $s0, $t8
/* 00EE3C 8011D19C 10000010 */  b           .L8011D1E0
/* 00EE40 8011D1A0 26310001 */   addiu      $s1, $s1, 0x1
/* 00EE44 8011D1A4 8EA8000C */  lw          $t0, 0xc($s5)
.L8011D1A8:
/* 00EE48 8011D1A8 8EAB0014 */  lw          $t3, 0x14($s5)
/* 00EE4C 8011D1AC 25090001 */  addiu       $t1, $t0, 0x1
/* 00EE50 8011D1B0 022B5021 */  addu        $t2, $s1, $t3
/* 00EE54 8011D1B4 552A0003 */  bnel        $t1, $t2, .L8011D1C4
/* 00EE58 8011D1B8 8E6C0000 */   lw         $t4, 0x0($s3)
/* 00EE5C 8011D1BC AFD20010 */  sw          $s2, 0x10($fp)
/* 00EE60 8011D1C0 8E6C0000 */  lw          $t4, 0x0($s3)
.L8011D1C4:
/* 00EE64 8011D1C4 8E450000 */  lw          $a1, 0x0($s2)
/* 00EE68 8011D1C8 02803025 */  move        $a2, $s4
/* 00EE6C 8011D1CC 000C6880 */  sll         $t5, $t4, 2
/* 00EE70 8011D1D0 0C00F1B7 */  jal         func_8003C6DC
/* 00EE74 8011D1D4 020D2021 */   addu       $a0, $s0, $t5
/* 00EE78 8011D1D8 8E520014 */  lw          $s2, 0x14($s2)
/* 00EE7C 8011D1DC 26310001 */  addiu       $s1, $s1, 0x1
.L8011D1E0:
/* 00EE80 8011D1E0 1637FFE6 */  bne         $s1, $s7, .L8011D17C
/* 00EE84 8011D1E4 26100008 */   addiu      $s0, $s0, 0x8
/* 00EE88 8011D1E8 8FBF003C */  lw          $ra, 0x3c($sp)
.L8011D1EC:
/* 00EE8C 8011D1EC 8FB00018 */  lw          $s0, 0x18($sp)
/* 00EE90 8011D1F0 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00EE94 8011D1F4 8FB20020 */  lw          $s2, 0x20($sp)
/* 00EE98 8011D1F8 8FB30024 */  lw          $s3, 0x24($sp)
/* 00EE9C 8011D1FC 8FB40028 */  lw          $s4, 0x28($sp)
/* 00EEA0 8011D200 8FB5002C */  lw          $s5, 0x2c($sp)
/* 00EEA4 8011D204 8FB60030 */  lw          $s6, 0x30($sp)
/* 00EEA8 8011D208 8FB70034 */  lw          $s7, 0x34($sp)
/* 00EEAC 8011D20C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 00EEB0 8011D210 03E00008 */  jr          $ra
/* 00EEB4 8011D214 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8011D218 # 11
/* 00EEB8 8011D218 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00EEBC 8011D21C AFB30024 */  sw          $s3, 0x24($sp)
/* 00EEC0 8011D220 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00EEC4 8011D224 AFB40028 */  sw          $s4, 0x28($sp)
/* 00EEC8 8011D228 AFB20020 */  sw          $s2, 0x20($sp)
/* 00EECC 8011D22C AFB1001C */  sw          $s1, 0x1c($sp)
/* 00EED0 8011D230 AFB00018 */  sw          $s0, 0x18($sp)
/* 00EED4 8011D234 AFA40030 */  sw          $a0, 0x30($sp)
/* 00EED8 8011D238 3C138014 */  lui         $s3, %hi(D_801381E8)
/* 00EEDC 8011D23C 8E7381E8 */  lw          $s3, %lo(D_801381E8)($s3)
/* 00EEE0 8011D240 0C00ED84 */  jal         func_8003B610
/* 00EEE4 8011D244 8C840000 */   lw         $a0, 0x0($a0)
/* 00EEE8 8011D248 0C00F134 */  jal         func_8003C4D0
/* 00EEEC 8011D24C 00002025 */   move       $a0, $zero
/* 00EEF0 8011D250 0C00EDD9 */  jal         func_8003B764
/* 00EEF4 8011D254 00000000 */   nop
/* 00EEF8 8011D258 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 00EEFC 8011D25C 0C00F131 */  jal         func_8003C4C4
/* 00EF00 8011D260 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
/* 00EF04 8011D264 0C00F137 */  jal         func_8003C4DC
/* 00EF08 8011D268 00002025 */   move       $a0, $zero
/* 00EF0C 8011D26C 3C013F80 */  lui         $at, 0x3f80
/* 00EF10 8011D270 44816000 */  mtc1        $at, $f12
/* 00EF14 8011D274 0C00F13A */  jal         func_8003C4E8
/* 00EF18 8011D278 46006386 */   mov.s      $f14, $f12
/* 00EF1C 8011D27C 00002025 */  move        $a0, $zero
/* 00EF20 8011D280 00002825 */  move        $a1, $zero
/* 00EF24 8011D284 2406013F */  addiu       $a2, $zero, 0x13f
/* 00EF28 8011D288 0C00F098 */  jal         func_8003C260
/* 00EF2C 8011D28C 240700EF */   addiu      $a3, $zero, 0xef
/* 00EF30 8011D290 3C148014 */  lui         $s4, %hi(D_8013824C)
/* 00EF34 8011D294 3C128014 */  lui         $s2, %hi(D_80138248)
/* 00EF38 8011D298 24110036 */  addiu       $s1, $zero, 0x36
/* 00EF3C 8011D29C 26528248 */  addiu       $s2, $s2, %lo(D_80138248)
/* 00EF40 8011D2A0 2694824C */  addiu       $s4, $s4, %lo(D_8013824C)
/* 00EF44 8011D2A4 00008025 */  move        $s0, $zero
.L8011D2A8:
/* 00EF48 8011D2A8 8E6F0014 */  lw          $t7, 0x14($s3)
/* 00EF4C 8011D2AC 8E78000C */  lw          $t8, 0xc($s3)
/* 00EF50 8011D2B0 24040028 */  addiu       $a0, $zero, 0x28
/* 00EF54 8011D2B4 01F01021 */  addu        $v0, $t7, $s0
/* 00EF58 8011D2B8 5702000D */  bnel        $t8, $v0, .L8011D2F0
/* 00EF5C 8011D2BC 8E680010 */   lw         $t0, 0x10($s3)
/* 00EF60 8011D2C0 0C00F0CA */  jal         func_8003C328
/* 00EF64 8011D2C4 02202825 */   move       $a1, $s1
/* 00EF68 8011D2C8 00002025 */  move        $a0, $zero
/* 00EF6C 8011D2CC 00002825 */  move        $a1, $zero
/* 00EF70 8011D2D0 00003025 */  move        $a2, $zero
/* 00EF74 8011D2D4 0C00F0F9 */  jal         func_8003C3E4
/* 00EF78 8011D2D8 240700FE */   addiu      $a3, $zero, 0xfe
/* 00EF7C 8011D2DC 0C00F423 */  jal         func_8003D08C
/* 00EF80 8011D2E0 8E440000 */   lw         $a0, 0x0($s2)
/* 00EF84 8011D2E4 8E790014 */  lw          $t9, 0x14($s3)
/* 00EF88 8011D2E8 03301021 */  addu        $v0, $t9, $s0
/* 00EF8C 8011D2EC 8E680010 */  lw          $t0, 0x10($s3)
.L8011D2F0:
/* 00EF90 8011D2F0 24040028 */  addiu       $a0, $zero, 0x28
/* 00EF94 8011D2F4 5502000B */  bnel        $t0, $v0, .L8011D324
/* 00EF98 8011D2F8 26100001 */   addiu      $s0, $s0, 0x1
/* 00EF9C 8011D2FC 0C00F0CA */  jal         func_8003C328
/* 00EFA0 8011D300 02202825 */   move       $a1, $s1
/* 00EFA4 8011D304 240400FF */  addiu       $a0, $zero, 0xff
/* 00EFA8 8011D308 00002825 */  move        $a1, $zero
/* 00EFAC 8011D30C 00003025 */  move        $a2, $zero
/* 00EFB0 8011D310 0C00F0F9 */  jal         func_8003C3E4
/* 00EFB4 8011D314 240700FE */   addiu      $a3, $zero, 0xfe
/* 00EFB8 8011D318 0C00F423 */  jal         func_8003D08C
/* 00EFBC 8011D31C 8E840000 */   lw         $a0, 0x0($s4)
/* 00EFC0 8011D320 26100001 */  addiu       $s0, $s0, 0x1
.L8011D324:
/* 00EFC4 8011D324 2A010005 */  slti        $at, $s0, 0x5
/* 00EFC8 8011D328 1420FFDF */  bnez        $at, .L8011D2A8
/* 00EFCC 8011D32C 26310010 */   addiu      $s1, $s1, 0x10
/* 00EFD0 8011D330 3C128014 */  lui         $s2, %hi(D_80138250)
/* 00EFD4 8011D334 3C148014 */  lui         $s4, %hi(D_801382B0)
/* 00EFD8 8011D338 24110026 */  addiu       $s1, $zero, 0x26
/* 00EFDC 8011D33C 269482B0 */  addiu       $s4, $s4, %lo(D_801382B0)
/* 00EFE0 8011D340 26528250 */  addiu       $s2, $s2, %lo(D_80138250)
/* 00EFE4 8011D344 00008025 */  move        $s0, $zero
.L8011D348:
/* 00EFE8 8011D348 8E890000 */  lw          $t1, 0x0($s4)
/* 00EFEC 8011D34C 02202825 */  move        $a1, $s1
/* 00EFF0 8011D350 24040034 */  addiu       $a0, $zero, 0x34
/* 00EFF4 8011D354 00095080 */  sll         $t2, $t1, 2
/* 00EFF8 8011D358 024A5821 */  addu        $t3, $s2, $t2
/* 00EFFC 8011D35C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 00F000 8011D360 11800029 */  beqz        $t4, .L8011D408
/* 00F004 8011D364 00000000 */   nop
/* 00F008 8011D368 1600000A */  bnez        $s0, .L8011D394
/* 00F00C 8011D36C 00000000 */   nop
/* 00F010 8011D370 0C00F0CA */  jal         func_8003C328
/* 00F014 8011D374 24040028 */   addiu      $a0, $zero, 0x28
/* 00F018 8011D378 00002025 */  move        $a0, $zero
/* 00F01C 8011D37C 00002825 */  move        $a1, $zero
/* 00F020 8011D380 00003025 */  move        $a2, $zero
/* 00F024 8011D384 0C00F0F9 */  jal         func_8003C3E4
/* 00F028 8011D388 240700FE */   addiu      $a3, $zero, 0xfe
/* 00F02C 8011D38C 10000015 */  b           .L8011D3E4
/* 00F030 8011D390 8E990000 */   lw         $t9, 0x0($s4)
.L8011D394:
/* 00F034 8011D394 0C00F0CA */  jal         func_8003C328
/* 00F038 8011D398 02202825 */   move       $a1, $s1
/* 00F03C 8011D39C 8E6D0010 */  lw          $t5, 0x10($s3)
/* 00F040 8011D3A0 8E6F0014 */  lw          $t7, 0x14($s3)
/* 00F044 8011D3A4 00002025 */  move        $a0, $zero
/* 00F048 8011D3A8 25AE0001 */  addiu       $t6, $t5, 0x1
/* 00F04C 8011D3AC 020FC021 */  addu        $t8, $s0, $t7
/* 00F050 8011D3B0 15D80008 */  bne         $t6, $t8, .L8011D3D4
/* 00F054 8011D3B4 00002825 */   move       $a1, $zero
/* 00F058 8011D3B8 240400FF */  addiu       $a0, $zero, 0xff
/* 00F05C 8011D3BC 00002825 */  move        $a1, $zero
/* 00F060 8011D3C0 00003025 */  move        $a2, $zero
/* 00F064 8011D3C4 0C00F0F9 */  jal         func_8003C3E4
/* 00F068 8011D3C8 240700FE */   addiu      $a3, $zero, 0xfe
/* 00F06C 8011D3CC 10000005 */  b           .L8011D3E4
/* 00F070 8011D3D0 8E990000 */   lw         $t9, 0x0($s4)
.L8011D3D4:
/* 00F074 8011D3D4 00003025 */  move        $a2, $zero
/* 00F078 8011D3D8 0C00F0F9 */  jal         func_8003C3E4
/* 00F07C 8011D3DC 240700FE */   addiu      $a3, $zero, 0xfe
/* 00F080 8011D3E0 8E990000 */  lw          $t9, 0x0($s4)
.L8011D3E4:
/* 00F084 8011D3E4 00194080 */  sll         $t0, $t9, 2
/* 00F088 8011D3E8 02484821 */  addu        $t1, $s2, $t0
/* 00F08C 8011D3EC 0C00F423 */  jal         func_8003D08C
/* 00F090 8011D3F0 8D240000 */   lw         $a0, 0x0($t1)
/* 00F094 8011D3F4 26100001 */  addiu       $s0, $s0, 0x1
/* 00F098 8011D3F8 24010006 */  addiu       $at, $zero, 0x6
/* 00F09C 8011D3FC 26520008 */  addiu       $s2, $s2, 0x8
/* 00F0A0 8011D400 1601FFD1 */  bne         $s0, $at, .L8011D348
/* 00F0A4 8011D404 26310010 */   addiu      $s1, $s1, 0x10
.L8011D408:
/* 00F0A8 8011D408 0C00EDD5 */  jal         func_8003B754
/* 00F0AC 8011D40C 8FA40030 */   lw         $a0, 0x30($sp)
/* 00F0B0 8011D410 8E620008 */  lw          $v0, 0x8($s3)
/* 00F0B4 8011D414 50400004 */  beql        $v0, $zero, .L8011D428
/* 00F0B8 8011D418 8FBF002C */   lw         $ra, 0x2c($sp)
/* 00F0BC 8011D41C 0040F809 */  jalr        $v0
/* 00F0C0 8011D420 02602025 */   move       $a0, $s3
/* 00F0C4 8011D424 8FBF002C */  lw          $ra, 0x2c($sp)
.L8011D428:
/* 00F0C8 8011D428 8FB00018 */  lw          $s0, 0x18($sp)
/* 00F0CC 8011D42C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00F0D0 8011D430 8FB20020 */  lw          $s2, 0x20($sp)
/* 00F0D4 8011D434 8FB30024 */  lw          $s3, 0x24($sp)
/* 00F0D8 8011D438 8FB40028 */  lw          $s4, 0x28($sp)
/* 00F0DC 8011D43C 03E00008 */  jr          $ra
/* 00F0E0 8011D440 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8011D444 # 12
/* 00F0E4 8011D444 3C028014 */  lui         $v0, %hi(D_80138200)
/* 00F0E8 8011D448 8C428200 */  lw          $v0, %lo(D_80138200)($v0)
/* 00F0EC 8011D44C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F0F0 8011D450 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F0F4 8011D454 10400020 */  beqz        $v0, .L8011D4D8
/* 00F0F8 8011D458 AFA40018 */   sw         $a0, 0x18($sp)
/* 00F0FC 8011D45C 24010001 */  addiu       $at, $zero, 0x1
/* 00F100 8011D460 10410007 */  beq         $v0, $at, .L8011D480
/* 00F104 8011D464 24010002 */   addiu      $at, $zero, 0x2
/* 00F108 8011D468 10410011 */  beq         $v0, $at, .L8011D4B0
/* 00F10C 8011D46C 24010003 */   addiu      $at, $zero, 0x3
/* 00F110 8011D470 10410019 */  beq         $v0, $at, .L8011D4D8
/* 00F114 8011D474 00000000 */   nop
/* 00F118 8011D478 1000002E */  b           .L8011D534
/* 00F11C 8011D47C 00000000 */   nop
.L8011D480:
/* 00F120 8011D480 0C00C522 */  jal         func_80031488
/* 00F124 8011D484 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F128 8011D488 3C048014 */  lui         $a0, %hi(D_8013820C)
/* 00F12C 8011D48C 8C84820C */  lw          $a0, %lo(D_8013820C)($a0)
/* 00F130 8011D490 0C00205F */  jal         func_8000817C
/* 00F134 8011D494 24052000 */   addiu      $a1, $zero, 0x2000
/* 00F138 8011D498 0C047486 */  jal         func_8011D218
/* 00F13C 8011D49C 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F140 8011D4A0 0C0473C8 */  jal         func_8011CF20
/* 00F144 8011D4A4 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F148 8011D4A8 10000022 */  b           .L8011D534
/* 00F14C 8011D4AC 00000000 */   nop
.L8011D4B0:
/* 00F150 8011D4B0 0C00C522 */  jal         func_80031488
/* 00F154 8011D4B4 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F158 8011D4B8 3C048014 */  lui         $a0, %hi(D_8013820C)
/* 00F15C 8011D4BC 8C84820C */  lw          $a0, %lo(D_8013820C)($a0)
/* 00F160 8011D4C0 0C00205F */  jal         func_8000817C
/* 00F164 8011D4C4 24052000 */   addiu      $a1, $zero, 0x2000
/* 00F168 8011D4C8 0C047486 */  jal         func_8011D218
/* 00F16C 8011D4CC 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F170 8011D4D0 10000018 */  b           .L8011D534
/* 00F174 8011D4D4 00000000 */   nop
.L8011D4D8:
/* 00F178 8011D4D8 0C002033 */  jal         func_800080CC
/* 00F17C 8011D4DC 00002025 */   move       $a0, $zero
/* 00F180 8011D4E0 3C028013 */  lui         $v0, %hi(D_8012E604)
/* 00F184 8011D4E4 2442E604 */  addiu       $v0, $v0, %lo(D_8012E604)
/* 00F188 8011D4E8 90440000 */  lbu         $a0, 0x0($v0)
/* 00F18C 8011D4EC 90450001 */  lbu         $a1, 0x1($v0)
/* 00F190 8011D4F0 90460002 */  lbu         $a2, 0x2($v0)
/* 00F194 8011D4F4 0C000B00 */  jal         func_80002C00
/* 00F198 8011D4F8 90470003 */   lbu        $a3, 0x3($v0)
/* 00F19C 8011D4FC 3C04800B */  lui         $a0, %hi(D_800B1A78)
/* 00F1A0 8011D500 8C841A78 */  lw          $a0, %lo(D_800B1A78)($a0)
/* 00F1A4 8011D504 0C0009A7 */  jal         func_8000269C
/* 00F1A8 8011D508 00002825 */   move       $a1, $zero
/* 00F1AC 8011D50C 3C04800B */  lui         $a0, %hi(D_800B1A78)
/* 00F1B0 8011D510 0C0009DA */  jal         func_80002768
/* 00F1B4 8011D514 8C841A78 */   lw         $a0, %lo(D_800B1A78)($a0)
/* 00F1B8 8011D518 3C04800B */  lui         $a0, %hi(D_800B1A78)
/* 00F1BC 8011D51C 0C000A1D */  jal         func_80002874
/* 00F1C0 8011D520 8C841A78 */   lw         $a0, %lo(D_800B1A78)($a0)
/* 00F1C4 8011D524 3C048014 */  lui         $a0, %hi(D_80138204)
/* 00F1C8 8011D528 8C848204 */  lw          $a0, %lo(D_80138204)($a0)
/* 00F1CC 8011D52C 0C00205F */  jal         func_8000817C
/* 00F1D0 8011D530 24052000 */   addiu      $a1, $zero, 0x2000
.L8011D534:
/* 00F1D4 8011D534 0C00EDD9 */  jal         func_8003B764
/* 00F1D8 8011D538 00000000 */   nop
/* 00F1DC 8011D53C 3C048006 */  lui         $a0, %hi(D_800615F0)
/* 00F1E0 8011D540 0C00F131 */  jal         func_8003C4C4
/* 00F1E4 8011D544 248415F0 */   addiu      $a0, $a0, %lo(D_800615F0)
/* 00F1E8 8011D548 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F1EC 8011D54C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F1F0 8011D550 03E00008 */  jr          $ra
/* 00F1F4 8011D554 00000000 */   nop

glabel func_8011D558 # 13
/* 00F1F8 8011D558 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00F1FC 8011D55C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F200 8011D560 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 00F204 8011D564 0C0455E7 */  jal         func_8011579C
/* 00F208 8011D568 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 00F20C 8011D56C 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 00F210 8011D570 0C045473 */  jal         func_801151CC
/* 00F214 8011D574 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 00F218 8011D578 3C0E8014 */  lui         $t6, %hi(D_80138200)
/* 00F21C 8011D57C 8DCE8200 */  lw          $t6, %lo(D_80138200)($t6)
/* 00F220 8011D580 24010001 */  addiu       $at, $zero, 0x1
/* 00F224 8011D584 3C04800B */  lui         $a0, %hi(D_800B093E)
/* 00F228 8011D588 55C10084 */  bnel        $t6, $at, .L8011D79C
/* 00F22C 8011D58C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F230 8011D590 9484093E */  lhu         $a0, %lo(D_800B093E)($a0)
/* 00F234 8011D594 10800080 */  beqz        $a0, .L8011D798
/* 00F238 8011D598 00801825 */   move       $v1, $a0
/* 00F23C 8011D59C 308F1000 */  andi        $t7, $a0, 0x1000
/* 00F240 8011D5A0 11E0000C */  beqz        $t7, .L8011D5D4
/* 00F244 8011D5A4 30780800 */   andi       $t8, $v1, 0x800
/* 00F248 8011D5A8 0C00789A */  jal         func_8001E268
/* 00F24C 8011D5AC 240400C1 */   addiu      $a0, $zero, 0xc1
/* 00F250 8011D5B0 0C0472F0 */  jal         func_8011CBC0
/* 00F254 8011D5B4 24040002 */   addiu      $a0, $zero, 0x2
/* 00F258 8011D5B8 0C0472C8 */  jal         func_8011CB20
/* 00F25C 8011D5BC 00000000 */   nop
/* 00F260 8011D5C0 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00F264 8011D5C4 0C047410 */  jal         func_8011D040
/* 00F268 8011D5C8 248481E8 */   addiu      $a0, $a0, %lo(D_801381E8)
/* 00F26C 8011D5CC 10000073 */  b           .L8011D79C
/* 00F270 8011D5D0 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011D5D4:
/* 00F274 8011D5D4 1300000D */  beqz        $t8, .L8011D60C
/* 00F278 8011D5D8 30690400 */   andi       $t1, $v1, 0x400
/* 00F27C 8011D5DC 3C198014 */  lui         $t9, %hi(D_801381E8)
/* 00F280 8011D5E0 8F3981E8 */  lw          $t9, %lo(D_801381E8)($t9)
/* 00F284 8011D5E4 240400BF */  addiu       $a0, $zero, 0xbf
/* 00F288 8011D5E8 8F22000C */  lw          $v0, 0xc($t9)
/* 00F28C 8011D5EC 18400005 */  blez        $v0, .L8011D604
/* 00F290 8011D5F0 2448FFFF */   addiu      $t0, $v0, -0x1
/* 00F294 8011D5F4 0C00789A */  jal         func_8001E268
/* 00F298 8011D5F8 AF28000C */   sw         $t0, 0xc($t9)
/* 00F29C 8011D5FC 3C04800B */  lui         $a0, %hi(D_800B093E)
/* 00F2A0 8011D600 9483093E */  lhu         $v1, %lo(D_800B093E)($a0)
.L8011D604:
/* 00F2A4 8011D604 10000010 */  b           .L8011D648
/* 00F2A8 8011D608 306E8000 */   andi       $t6, $v1, 0x8000
.L8011D60C:
/* 00F2AC 8011D60C 1120000D */  beqz        $t1, .L8011D644
/* 00F2B0 8011D610 3C0A8014 */   lui        $t2, %hi(D_801381E8)
/* 00F2B4 8011D614 8D4A81E8 */  lw          $t2, %lo(D_801381E8)($t2)
/* 00F2B8 8011D618 240400BF */  addiu       $a0, $zero, 0xbf
/* 00F2BC 8011D61C 8D4B0018 */  lw          $t3, 0x18($t2)
/* 00F2C0 8011D620 8D42000C */  lw          $v0, 0xc($t2)
/* 00F2C4 8011D624 256CFFFF */  addiu       $t4, $t3, -0x1
/* 00F2C8 8011D628 004C082A */  slt         $at, $v0, $t4
/* 00F2CC 8011D62C 10200005 */  beqz        $at, .L8011D644
/* 00F2D0 8011D630 244D0001 */   addiu      $t5, $v0, 0x1
/* 00F2D4 8011D634 0C00789A */  jal         func_8001E268
/* 00F2D8 8011D638 AD4D000C */   sw         $t5, 0xc($t2)
/* 00F2DC 8011D63C 3C04800B */  lui         $a0, %hi(D_800B093E)
/* 00F2E0 8011D640 9483093E */  lhu         $v1, %lo(D_800B093E)($a0)
.L8011D644:
/* 00F2E4 8011D644 306E8000 */  andi        $t6, $v1, 0x8000
.L8011D648:
/* 00F2E8 8011D648 11C0002B */  beqz        $t6, .L8011D6F8
/* 00F2EC 8011D64C 306A4000 */   andi       $t2, $v1, 0x4000
/* 00F2F0 8011D650 3C0F8014 */  lui         $t7, %hi(D_801381E8)
/* 00F2F4 8011D654 8DEF81E8 */  lw          $t7, %lo(D_801381E8)($t7)
/* 00F2F8 8011D658 8DF8001C */  lw          $t8, 0x1c($t7)
/* 00F2FC 8011D65C 17000003 */  bnez        $t8, .L8011D66C
/* 00F300 8011D660 00000000 */   nop
/* 00F304 8011D664 0C00789A */  jal         func_8001E268
/* 00F308 8011D668 240400C0 */   addiu      $a0, $zero, 0xc0
.L8011D66C:
/* 00F30C 8011D66C 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00F310 8011D670 0C04731E */  jal         func_8011CC78
/* 00F314 8011D674 8C8481E8 */   lw         $a0, %lo(D_801381E8)($a0)
/* 00F318 8011D678 10400030 */  beqz        $v0, .L8011D73C
/* 00F31C 8011D67C 00401825 */   move       $v1, $v0
/* 00F320 8011D680 3C088014 */  lui         $t0, %hi(D_801381E8)
/* 00F324 8011D684 8D0881E8 */  lw          $t0, %lo(D_801381E8)($t0)
/* 00F328 8011D688 8D190010 */  lw          $t9, 0x10($t0)
/* 00F32C 8011D68C 07220004 */  bltzl       $t9, .L8011D6A0
/* 00F330 8011D690 8C4B0004 */   lw         $t3, 0x4($v0)
/* 00F334 8011D694 8D09000C */  lw          $t1, 0xc($t0)
/* 00F338 8011D698 AD090010 */  sw          $t1, 0x10($t0)
/* 00F33C 8011D69C 8C4B0004 */  lw          $t3, 0x4($v0)
.L8011D6A0:
/* 00F340 8011D6A0 51600008 */  beql        $t3, $zero, .L8011D6C4
/* 00F344 8011D6A4 8C6C0018 */   lw         $t4, 0x18($v1)
/* 00F348 8011D6A8 8C640008 */  lw          $a0, 0x8($v1)
/* 00F34C 8011D6AC AFA30018 */  sw          $v1, 0x18($sp)
/* 00F350 8011D6B0 8C790004 */  lw          $t9, 0x4($v1)
/* 00F354 8011D6B4 0320F809 */  jalr        $t9
/* 00F358 8011D6B8 00000000 */   nop
/* 00F35C 8011D6BC 8FA30018 */  lw          $v1, 0x18($sp)
/* 00F360 8011D6C0 8C6C0018 */  lw          $t4, 0x18($v1)
.L8011D6C4:
/* 00F364 8011D6C4 1180001D */  beqz        $t4, .L8011D73C
/* 00F368 8011D6C8 00000000 */   nop
/* 00F36C 8011D6CC 0C0472FD */  jal         func_8011CBF4
/* 00F370 8011D6D0 AFA30018 */   sw         $v1, 0x18($sp)
/* 00F374 8011D6D4 8FA30018 */  lw          $v1, 0x18($sp)
/* 00F378 8011D6D8 3C018014 */  lui         $at, %hi(D_801381E8)
/* 00F37C 8011D6DC 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00F380 8011D6E0 8C6D0018 */  lw          $t5, 0x18($v1)
/* 00F384 8011D6E4 AC2D81E8 */  sw          $t5, %lo(D_801381E8)($at)
/* 00F388 8011D6E8 0C04732E */  jal         func_8011CCB8
/* 00F38C 8011D6EC 8C8481E8 */   lw         $a0, %lo(D_801381E8)($a0)
/* 00F390 8011D6F0 10000012 */  b           .L8011D73C
/* 00F394 8011D6F4 00000000 */   nop
.L8011D6F8:
/* 00F398 8011D6F8 11400010 */  beqz        $t2, .L8011D73C
/* 00F39C 8011D6FC 00000000 */   nop
/* 00F3A0 8011D700 0C0472C8 */  jal         func_8011CB20
/* 00F3A4 8011D704 00000000 */   nop
/* 00F3A8 8011D708 3C0E8014 */  lui         $t6, %hi(D_801381FC)
/* 00F3AC 8011D70C 8DCE81FC */  lw          $t6, %lo(D_801381FC)($t6)
/* 00F3B0 8011D710 15C00008 */  bnez        $t6, .L8011D734
/* 00F3B4 8011D714 00000000 */   nop
/* 00F3B8 8011D718 0C0472F0 */  jal         func_8011CBC0
/* 00F3BC 8011D71C 24040002 */   addiu      $a0, $zero, 0x2
/* 00F3C0 8011D720 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00F3C4 8011D724 0C047410 */  jal         func_8011D040
/* 00F3C8 8011D728 248481E8 */   addiu      $a0, $a0, %lo(D_801381E8)
/* 00F3CC 8011D72C 1000001B */  b           .L8011D79C
/* 00F3D0 8011D730 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011D734:
/* 00F3D4 8011D734 0C047308 */  jal         func_8011CC20
/* 00F3D8 8011D738 00000000 */   nop
.L8011D73C:
/* 00F3DC 8011D73C 3C0F8014 */  lui         $t7, %hi(D_801381E8)
/* 00F3E0 8011D740 8DEF81E8 */  lw          $t7, %lo(D_801381E8)($t7)
/* 00F3E4 8011D744 3C188014 */  lui         $t8, %hi(D_801381E8)
/* 00F3E8 8011D748 3C0B8014 */  lui         $t3, %hi(D_801381E8)
/* 00F3EC 8011D74C 8DE2000C */  lw          $v0, 0xc($t7)
/* 00F3F0 8011D750 8DE30014 */  lw          $v1, 0x14($t7)
/* 00F3F4 8011D754 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 00F3F8 8011D758 0043082A */  slt         $at, $v0, $v1
/* 00F3FC 8011D75C 50200006 */  beql        $at, $zero, .L8011D778
/* 00F400 8011D760 24690004 */   addiu      $t1, $v1, 0x4
/* 00F404 8011D764 ADE20014 */  sw          $v0, 0x14($t7)
/* 00F408 8011D768 8F1881E8 */  lw          $t8, %lo(D_801381E8)($t8)
/* 00F40C 8011D76C 8F02000C */  lw          $v0, 0xc($t8)
/* 00F410 8011D770 8F030014 */  lw          $v1, 0x14($t8)
/* 00F414 8011D774 24690004 */  addiu       $t1, $v1, 0x4
.L8011D778:
/* 00F418 8011D778 0049082A */  slt         $at, $v0, $t1
/* 00F41C 8011D77C 14200004 */  bnez        $at, .L8011D790
/* 00F420 8011D780 00000000 */   nop
/* 00F424 8011D784 8D6B81E8 */  lw          $t3, %lo(D_801381E8)($t3)
/* 00F428 8011D788 2448FFFC */  addiu       $t0, $v0, -0x4
/* 00F42C 8011D78C AD680014 */  sw          $t0, 0x14($t3)
.L8011D790:
/* 00F430 8011D790 0C047410 */  jal         func_8011D040
/* 00F434 8011D794 248481E8 */   addiu      $a0, $a0, %lo(D_801381E8)
.L8011D798:
/* 00F438 8011D798 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011D79C:
/* 00F43C 8011D79C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00F440 8011D7A0 03E00008 */  jr          $ra
/* 00F444 8011D7A4 00000000 */   nop

glabel func_8011D7A8 # 14
/* 00F448 8011D7A8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00F44C 8011D7AC AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F450 8011D7B0 0C002671 */  jal         func_800099C4
/* 00F454 8011D7B4 AFB00018 */   sw         $s0, 0x18($sp)
/* 00F458 8011D7B8 3C108014 */  lui         $s0, %hi(D_801381E8)
/* 00F45C 8011D7BC 261081E8 */  addiu       $s0, $s0, %lo(D_801381E8)
/* 00F460 8011D7C0 8E0E0028 */  lw          $t6, 0x28($s0)
/* 00F464 8011D7C4 8E0F002C */  lw          $t7, 0x2c($s0)
/* 00F468 8011D7C8 004E2023 */  subu        $a0, $v0, $t6
/* 00F46C 8011D7CC 006F082B */  sltu        $at, $v1, $t7
/* 00F470 8011D7D0 00812023 */  subu        $a0, $a0, $at
/* 00F474 8011D7D4 0C0143B2 */  jal         func_80050EC8
/* 00F478 8011D7D8 006F2823 */   subu       $a1, $v1, $t7
/* 00F47C 8011D7DC 3C0143C8 */  lui         $at, 0x43c8
/* 00F480 8011D7E0 44812000 */  mtc1        $at, $f4
/* 00F484 8011D7E4 3C028013 */  lui         $v0, %hi(D_8012E5F8)
/* 00F488 8011D7E8 3C014120 */  lui         $at, 0x4120
/* 00F48C 8011D7EC 46040083 */  div.s       $f2, $f0, $f4
/* 00F490 8011D7F0 44815000 */  mtc1        $at, $f10
/* 00F494 8011D7F4 2442E5F8 */  addiu       $v0, $v0, %lo(D_8012E5F8)
/* 00F498 8011D7F8 C44E0004 */  lwc1        $f14, 0x4($v0)
/* 00F49C 8011D7FC 3C0142B4 */  lui         $at, 0x42b4
/* 00F4A0 8011D800 44818000 */  mtc1        $at, $f16
/* 00F4A4 8011D804 460A7381 */  sub.s       $f14, $f14, $f10
/* 00F4A8 8011D808 C4460000 */  lwc1        $f6, 0x0($v0)
/* 00F4AC 8011D80C C4480008 */  lwc1        $f8, 0x8($v0)
/* 00F4B0 8011D810 E7AE0040 */  swc1        $f14, 0x40($sp)
/* 00F4B4 8011D814 E7A6003C */  swc1        $f6, 0x3c($sp)
/* 00F4B8 8011D818 E7A80044 */  swc1        $f8, 0x44($sp)
/* 00F4BC 8011D81C 46028302 */  mul.s       $f12, $f16, $f2
/* 00F4C0 8011D820 0C00EB2F */  jal         func_8003ACBC
/* 00F4C4 8011D824 E7A20034 */   swc1       $f2, 0x34($sp)
/* 00F4C8 8011D828 3C014120 */  lui         $at, 0x4120
/* 00F4CC 8011D82C 44819000 */  mtc1        $at, $f18
/* 00F4D0 8011D830 3C0142B4 */  lui         $at, 0x42b4
/* 00F4D4 8011D834 44813000 */  mtc1        $at, $f6
/* 00F4D8 8011D838 46009102 */  mul.s       $f4, $f18, $f0
/* 00F4DC 8011D83C C7A80034 */  lwc1        $f8, 0x34($sp)
/* 00F4E0 8011D840 C7AE0040 */  lwc1        $f14, 0x40($sp)
/* 00F4E4 8011D844 46083302 */  mul.s       $f12, $f6, $f8
/* 00F4E8 8011D848 46047380 */  add.s       $f14, $f14, $f4
/* 00F4EC 8011D84C E7AC0020 */  swc1        $f12, 0x20($sp)
/* 00F4F0 8011D850 0C00EB6C */  jal         func_8003ADB0
/* 00F4F4 8011D854 E7AE0040 */   swc1       $f14, 0x40($sp)
/* 00F4F8 8011D858 3C014120 */  lui         $at, 0x4120
/* 00F4FC 8011D85C 44818000 */  mtc1        $at, $f16
/* 00F500 8011D860 C7AA0044 */  lwc1        $f10, 0x44($sp)
/* 00F504 8011D864 8E06001C */  lw          $a2, 0x1c($s0)
/* 00F508 8011D868 46008482 */  mul.s       $f18, $f16, $f0
/* 00F50C 8011D86C 3C048014 */  lui         $a0, %hi(D_80138218)
/* 00F510 8011D870 24848218 */  addiu       $a0, $a0, %lo(D_80138218)
/* 00F514 8011D874 27A5003C */  addiu       $a1, $sp, 0x3c
/* 00F518 8011D878 24C60018 */  addiu       $a2, $a2, 0x18
/* 00F51C 8011D87C 46125101 */  sub.s       $f4, $f10, $f18
/* 00F520 8011D880 0C00F620 */  jal         func_8003D880
/* 00F524 8011D884 E7A40044 */   swc1       $f4, 0x44($sp)
/* 00F528 8011D888 3C01800F */  lui         $at, %hi(D_800F3E38)
/* 00F52C 8011D88C C4263E38 */  lwc1        $f6, %lo(D_800F3E38)($at)
/* 00F530 8011D890 3C01800F */  lui         $at, %hi(D_800F3E2C)
/* 00F534 8011D894 C4283E2C */  lwc1        $f8, %lo(D_800F3E2C)($at)
/* 00F538 8011D898 3C014334 */  lui         $at, 0x4334
/* 00F53C 8011D89C 44815000 */  mtc1        $at, $f10
/* 00F540 8011D8A0 46083400 */  add.s       $f16, $f6, $f8
/* 00F544 8011D8A4 8E18001C */  lw          $t8, 0x1c($s0)
/* 00F548 8011D8A8 3C013F80 */  lui         $at, 0x3f80
/* 00F54C 8011D8AC 44812000 */  mtc1        $at, $f4
/* 00F550 8011D8B0 460A8480 */  add.s       $f18, $f16, $f10
/* 00F554 8011D8B4 3C01C2B4 */  lui         $at, 0xc2b4
/* 00F558 8011D8B8 44818000 */  mtc1        $at, $f16
/* 00F55C 8011D8BC E7120010 */  swc1        $f18, 0x10($t8)
/* 00F560 8011D8C0 C7A60034 */  lwc1        $f6, 0x34($sp)
/* 00F564 8011D8C4 8E19001C */  lw          $t9, 0x1c($s0)
/* 00F568 8011D8C8 46062201 */  sub.s       $f8, $f4, $f6
/* 00F56C 8011D8CC 46104282 */  mul.s       $f10, $f8, $f16
/* 00F570 8011D8D0 E72A000C */  swc1        $f10, 0xc($t9)
/* 00F574 8011D8D4 8E080020 */  lw          $t0, 0x20($s0)
/* 00F578 8011D8D8 C7B20020 */  lwc1        $f18, 0x20($sp)
/* 00F57C 8011D8DC E5120010 */  swc1        $f18, 0x10($t0)
/* 00F580 8011D8E0 0C001F40 */  jal         func_80007D00
/* 00F584 8011D8E4 8E04001C */   lw         $a0, 0x1c($s0)
/* 00F588 8011D8E8 0C002671 */  jal         func_800099C4
/* 00F58C 8011D8EC 00000000 */   nop
/* 00F590 8011D8F0 8E0A0028 */  lw          $t2, 0x28($s0)
/* 00F594 8011D8F4 8E0B002C */  lw          $t3, 0x2c($s0)
/* 00F598 8011D8F8 00002025 */  move        $a0, $zero
/* 00F59C 8011D8FC 004A6023 */  subu        $t4, $v0, $t2
/* 00F5A0 8011D900 006B082B */  sltu        $at, $v1, $t3
/* 00F5A4 8011D904 01816023 */  subu        $t4, $t4, $at
/* 00F5A8 8011D908 006B6823 */  subu        $t5, $v1, $t3
/* 00F5AC 8011D90C 15800002 */  bnez        $t4, .L8011D918
/* 00F5B0 8011D910 2DA10190 */   sltiu      $at, $t5, 0x190
/* 00F5B4 8011D914 14200007 */  bnez        $at, .L8011D934
.L8011D918:
/* 00F5B8 8011D918 3C01800B */   lui        $at, %hi(D_800B1A34)
/* 00F5BC 8011D91C AC201A34 */  sw          $zero, %lo(D_800B1A34)($at)
/* 00F5C0 8011D920 24050009 */  addiu       $a1, $zero, 0x9
/* 00F5C4 8011D924 0C00C4E0 */  jal         func_80031380
/* 00F5C8 8011D928 00003025 */   move       $a2, $zero
/* 00F5CC 8011D92C 0C0472F0 */  jal         func_8011CBC0
/* 00F5D0 8011D930 24040001 */   addiu      $a0, $zero, 0x1
.L8011D934:
/* 00F5D4 8011D934 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00F5D8 8011D938 8FB00018 */  lw          $s0, 0x18($sp)
/* 00F5DC 8011D93C 27BD0048 */  addiu       $sp, $sp, 0x48
/* 00F5E0 8011D940 03E00008 */  jr          $ra
/* 00F5E4 8011D944 00000000 */   nop

glabel func_8011D948 # 15
/* 00F5E8 8011D948 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00F5EC 8011D94C AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F5F0 8011D950 0C002671 */  jal         func_800099C4
/* 00F5F4 8011D954 AFB00018 */   sw         $s0, 0x18($sp)
/* 00F5F8 8011D958 3C108014 */  lui         $s0, %hi(D_801381E8)
/* 00F5FC 8011D95C 261081E8 */  addiu       $s0, $s0, %lo(D_801381E8)
/* 00F600 8011D960 8E0E0028 */  lw          $t6, 0x28($s0)
/* 00F604 8011D964 8E0F002C */  lw          $t7, 0x2c($s0)
/* 00F608 8011D968 004E2023 */  subu        $a0, $v0, $t6
/* 00F60C 8011D96C 006F082B */  sltu        $at, $v1, $t7
/* 00F610 8011D970 00812023 */  subu        $a0, $a0, $at
/* 00F614 8011D974 0C0143B2 */  jal         func_80050EC8
/* 00F618 8011D978 006F2823 */   subu       $a1, $v1, $t7
/* 00F61C 8011D97C 3C0143C8 */  lui         $at, 0x43c8
/* 00F620 8011D980 44812000 */  mtc1        $at, $f4
/* 00F624 8011D984 3C014120 */  lui         $at, 0x4120
/* 00F628 8011D988 44815000 */  mtc1        $at, $f10
/* 00F62C 8011D98C 46040083 */  div.s       $f2, $f0, $f4
/* 00F630 8011D990 3C013F80 */  lui         $at, 0x3f80
/* 00F634 8011D994 44818000 */  mtc1        $at, $f16
/* 00F638 8011D998 3C028013 */  lui         $v0, %hi(D_8012E5F8)
/* 00F63C 8011D99C 2442E5F8 */  addiu       $v0, $v0, %lo(D_8012E5F8)
/* 00F640 8011D9A0 C44E0004 */  lwc1        $f14, 0x4($v0)
/* 00F644 8011D9A4 3C0142B4 */  lui         $at, 0x42b4
/* 00F648 8011D9A8 44812000 */  mtc1        $at, $f4
/* 00F64C 8011D9AC 460A7381 */  sub.s       $f14, $f14, $f10
/* 00F650 8011D9B0 C4460000 */  lwc1        $f6, 0x0($v0)
/* 00F654 8011D9B4 C4480008 */  lwc1        $f8, 0x8($v0)
/* 00F658 8011D9B8 E7AE0040 */  swc1        $f14, 0x40($sp)
/* 00F65C 8011D9BC E7A6003C */  swc1        $f6, 0x3c($sp)
/* 00F660 8011D9C0 E7A80044 */  swc1        $f8, 0x44($sp)
/* 00F664 8011D9C4 46028481 */  sub.s       $f18, $f16, $f2
/* 00F668 8011D9C8 E7A20034 */  swc1        $f2, 0x34($sp)
/* 00F66C 8011D9CC 46049302 */  mul.s       $f12, $f18, $f4
/* 00F670 8011D9D0 0C00EB2F */  jal         func_8003ACBC
/* 00F674 8011D9D4 00000000 */   nop
/* 00F678 8011D9D8 3C014120 */  lui         $at, 0x4120
/* 00F67C 8011D9DC 44813000 */  mtc1        $at, $f6
/* 00F680 8011D9E0 3C013F80 */  lui         $at, 0x3f80
/* 00F684 8011D9E4 44815000 */  mtc1        $at, $f10
/* 00F688 8011D9E8 46003202 */  mul.s       $f8, $f6, $f0
/* 00F68C 8011D9EC C7B00034 */  lwc1        $f16, 0x34($sp)
/* 00F690 8011D9F0 C7AE0040 */  lwc1        $f14, 0x40($sp)
/* 00F694 8011D9F4 3C0142B4 */  lui         $at, 0x42b4
/* 00F698 8011D9F8 44812000 */  mtc1        $at, $f4
/* 00F69C 8011D9FC 46105481 */  sub.s       $f18, $f10, $f16
/* 00F6A0 8011DA00 46087380 */  add.s       $f14, $f14, $f8
/* 00F6A4 8011DA04 46049302 */  mul.s       $f12, $f18, $f4
/* 00F6A8 8011DA08 0C00EB6C */  jal         func_8003ADB0
/* 00F6AC 8011DA0C E7AE0040 */   swc1       $f14, 0x40($sp)
/* 00F6B0 8011DA10 3C014120 */  lui         $at, 0x4120
/* 00F6B4 8011DA14 44814000 */  mtc1        $at, $f8
/* 00F6B8 8011DA18 C7A60044 */  lwc1        $f6, 0x44($sp)
/* 00F6BC 8011DA1C 8E06001C */  lw          $a2, 0x1c($s0)
/* 00F6C0 8011DA20 46004282 */  mul.s       $f10, $f8, $f0
/* 00F6C4 8011DA24 3C048014 */  lui         $a0, %hi(D_80138218)
/* 00F6C8 8011DA28 24848218 */  addiu       $a0, $a0, %lo(D_80138218)
/* 00F6CC 8011DA2C 27A5003C */  addiu       $a1, $sp, 0x3c
/* 00F6D0 8011DA30 24C60018 */  addiu       $a2, $a2, 0x18
/* 00F6D4 8011DA34 460A3401 */  sub.s       $f16, $f6, $f10
/* 00F6D8 8011DA38 0C00F620 */  jal         func_8003D880
/* 00F6DC 8011DA3C E7B00044 */   swc1       $f16, 0x44($sp)
/* 00F6E0 8011DA40 3C01800F */  lui         $at, %hi(D_800F3E38)
/* 00F6E4 8011DA44 C4323E38 */  lwc1        $f18, %lo(D_800F3E38)($at)
/* 00F6E8 8011DA48 3C01800F */  lui         $at, %hi(D_800F3E2C)
/* 00F6EC 8011DA4C C4243E2C */  lwc1        $f4, %lo(D_800F3E2C)($at)
/* 00F6F0 8011DA50 3C014334 */  lui         $at, 0x4334
/* 00F6F4 8011DA54 44813000 */  mtc1        $at, $f6
/* 00F6F8 8011DA58 46049200 */  add.s       $f8, $f18, $f4
/* 00F6FC 8011DA5C 3C01C2B4 */  lui         $at, 0xc2b4
/* 00F700 8011DA60 C7A00034 */  lwc1        $f0, 0x34($sp)
/* 00F704 8011DA64 44818000 */  mtc1        $at, $f16
/* 00F708 8011DA68 46064280 */  add.s       $f10, $f8, $f6
/* 00F70C 8011DA6C 8E18001C */  lw          $t8, 0x1c($s0)
/* 00F710 8011DA70 46008482 */  mul.s       $f18, $f16, $f0
/* 00F714 8011DA74 3C013FF0 */  lui         $at, 0x3ff0
/* 00F718 8011DA78 E70A0010 */  swc1        $f10, 0x10($t8)
/* 00F71C 8011DA7C 8E19001C */  lw          $t9, 0x1c($s0)
/* 00F720 8011DA80 44812800 */  mtc1        $at, $f5
/* 00F724 8011DA84 44802000 */  mtc1        $zero, $f4
/* 00F728 8011DA88 46000221 */  cvt.d.s     $f8, $f0
/* 00F72C 8011DA8C 3C018013 */  lui         $at, %hi(D_80136B20)
/* 00F730 8011DA90 46282181 */  sub.d       $f6, $f4, $f8
/* 00F734 8011DA94 E732000C */  swc1        $f18, 0xc($t9)
/* 00F738 8011DA98 D42A6B20 */  ldc1        $f10, %lo(D_80136B20)($at)
/* 00F73C 8011DA9C 8E080020 */  lw          $t0, 0x20($s0)
/* 00F740 8011DAA0 462A3402 */  mul.d       $f16, $f6, $f10
/* 00F744 8011DAA4 462084A0 */  cvt.s.d     $f18, $f16
/* 00F748 8011DAA8 E5120010 */  swc1        $f18, 0x10($t0)
/* 00F74C 8011DAAC 0C001F40 */  jal         func_80007D00
/* 00F750 8011DAB0 8E04001C */   lw         $a0, 0x1c($s0)
/* 00F754 8011DAB4 0C002671 */  jal         func_800099C4
/* 00F758 8011DAB8 00000000 */   nop
/* 00F75C 8011DABC 8E0A0028 */  lw          $t2, 0x28($s0)
/* 00F760 8011DAC0 8E0B002C */  lw          $t3, 0x2c($s0)
/* 00F764 8011DAC4 004A6023 */  subu        $t4, $v0, $t2
/* 00F768 8011DAC8 006B082B */  sltu        $at, $v1, $t3
/* 00F76C 8011DACC 01816023 */  subu        $t4, $t4, $at
/* 00F770 8011DAD0 006B6823 */  subu        $t5, $v1, $t3
/* 00F774 8011DAD4 15800003 */  bnez        $t4, .L8011DAE4
/* 00F778 8011DAD8 2DA10190 */   sltiu      $at, $t5, 0x190
/* 00F77C 8011DADC 54200004 */  bnel        $at, $zero, .L8011DAF0
/* 00F780 8011DAE0 8FBF001C */   lw         $ra, 0x1c($sp)
.L8011DAE4:
/* 00F784 8011DAE4 0C047766 */  jal         func_8011DD98
/* 00F788 8011DAE8 00000000 */   nop
/* 00F78C 8011DAEC 8FBF001C */  lw          $ra, 0x1c($sp)
.L8011DAF0:
/* 00F790 8011DAF0 8FB00018 */  lw          $s0, 0x18($sp)
/* 00F794 8011DAF4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 00F798 8011DAF8 03E00008 */  jr          $ra
/* 00F79C 8011DAFC 00000000 */   nop

glabel func_8011DB00 # 16
/* 00F7A0 8011DB00 3C018013 */  lui         $at, %hi(D_80136B28)
/* 00F7A4 8011DB04 C4246B28 */  lwc1        $f4, %lo(D_80136B28)($at)
/* 00F7A8 8011DB08 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00F7AC 8011DB0C 3C018013 */  lui         $at, %hi(D_80136B2C)
/* 00F7B0 8011DB10 C4266B2C */  lwc1        $f6, %lo(D_80136B2C)($at)
/* 00F7B4 8011DB14 3C078014 */  lui         $a3, %hi(D_8013820C)
/* 00F7B8 8011DB18 8CE7820C */  lw          $a3, %lo(D_8013820C)($a3)
/* 00F7BC 8011DB1C 3C01C170 */  lui         $at, 0xc170
/* 00F7C0 8011DB20 44814000 */  mtc1        $at, $f8
/* 00F7C4 8011DB24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F7C8 8011DB28 3C048014 */  lui         $a0, %hi(D_80138218)
/* 00F7CC 8011DB2C 24848218 */  addiu       $a0, $a0, %lo(D_80138218)
/* 00F7D0 8011DB30 27A50024 */  addiu       $a1, $sp, 0x24
/* 00F7D4 8011DB34 E7A40024 */  swc1        $f4, 0x24($sp)
/* 00F7D8 8011DB38 E7A60028 */  swc1        $f6, 0x28($sp)
/* 00F7DC 8011DB3C 24E60018 */  addiu       $a2, $a3, 0x18
/* 00F7E0 8011DB40 AFA70020 */  sw          $a3, 0x20($sp)
/* 00F7E4 8011DB44 0C00F620 */  jal         func_8003D880
/* 00F7E8 8011DB48 E7A8002C */   swc1       $f8, 0x2c($sp)
/* 00F7EC 8011DB4C 3C014000 */  lui         $at, 0x4000
/* 00F7F0 8011DB50 44810000 */  mtc1        $at, $f0
/* 00F7F4 8011DB54 3C01C170 */  lui         $at, 0xc170
/* 00F7F8 8011DB58 44811000 */  mtc1        $at, $f2
/* 00F7FC 8011DB5C 8FA40020 */  lw          $a0, 0x20($sp)
/* 00F800 8011DB60 3C01800F */  lui         $at, %hi(D_800F3E38)
/* 00F804 8011DB64 3C0E800B */  lui         $t6, %hi(D_800B093E + 0x3)
/* 00F808 8011DB68 E482000C */  swc1        $f2, 0xc($a0)
/* 00F80C 8011DB6C C42A3E38 */  lwc1        $f10, %lo(D_800F3E38)($at)
/* 00F810 8011DB70 3C01800F */  lui         $at, %hi(D_800F3E2C)
/* 00F814 8011DB74 C4303E2C */  lwc1        $f16, %lo(D_800F3E2C)($at)
/* 00F818 8011DB78 3C014334 */  lui         $at, 0x4334
/* 00F81C 8011DB7C 44812000 */  mtc1        $at, $f4
/* 00F820 8011DB80 46105480 */  add.s       $f18, $f10, $f16
/* 00F824 8011DB84 3C0141B8 */  lui         $at, 0x41b8
/* 00F828 8011DB88 44814000 */  mtc1        $at, $f8
/* 00F82C 8011DB8C 44808000 */  mtc1        $zero, $f16
/* 00F830 8011DB90 46049180 */  add.s       $f6, $f18, $f4
/* 00F834 8011DB94 3C0F800B */  lui         $t7, %hi(D_800B093E + 0x2)
/* 00F838 8011DB98 E4900014 */  swc1        $f16, 0x14($a0)
/* 00F83C 8011DB9C 46083280 */  add.s       $f10, $f6, $f8
/* 00F840 8011DBA0 E48A0010 */  swc1        $f10, 0x10($a0)
/* 00F844 8011DBA4 81CE0941 */  lb          $t6, %lo(D_800B093E + 0x3)($t6)
/* 00F848 8011DBA8 C48A0010 */  lwc1        $f10, 0x10($a0)
/* 00F84C 8011DBAC 448E9000 */  mtc1        $t6, $f18
/* 00F850 8011DBB0 00000000 */  nop
/* 00F854 8011DBB4 46809120 */  cvt.s.w     $f4, $f18
/* 00F858 8011DBB8 46002183 */  div.s       $f6, $f4, $f0
/* 00F85C 8011DBBC 46061201 */  sub.s       $f8, $f2, $f6
/* 00F860 8011DBC0 E488000C */  swc1        $f8, 0xc($a0)
/* 00F864 8011DBC4 81EF0940 */  lb          $t7, %lo(D_800B093E + 0x2)($t7)
/* 00F868 8011DBC8 448F8000 */  mtc1        $t7, $f16
/* 00F86C 8011DBCC 00000000 */  nop
/* 00F870 8011DBD0 468084A0 */  cvt.s.w     $f18, $f16
/* 00F874 8011DBD4 46009103 */  div.s       $f4, $f18, $f0
/* 00F878 8011DBD8 46045180 */  add.s       $f6, $f10, $f4
/* 00F87C 8011DBDC 0C001F40 */  jal         func_80007D00
/* 00F880 8011DBE0 E4860010 */   swc1       $f6, 0x10($a0)
/* 00F884 8011DBE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F888 8011DBE8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00F88C 8011DBEC 03E00008 */  jr          $ra
/* 00F890 8011DBF0 00000000 */   nop

glabel func_8011DBF4 # 17
/* 00F894 8011DBF4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F898 8011DBF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F89C 8011DBFC 3C048014 */  lui         $a0, %hi(D_80138218)
/* 00F8A0 8011DC00 0C000754 */  jal         func_80001D50
/* 00F8A4 8011DC04 24848218 */   addiu      $a0, $a0, %lo(D_80138218)
/* 00F8A8 8011DC08 3C028014 */  lui         $v0, %hi(D_80138200)
/* 00F8AC 8011DC0C 8C428200 */  lw          $v0, %lo(D_80138200)($v0)
/* 00F8B0 8011DC10 24010001 */  addiu       $at, $zero, 0x1
/* 00F8B4 8011DC14 10400009 */  beqz        $v0, .L8011DC3C
/* 00F8B8 8011DC18 00000000 */   nop
/* 00F8BC 8011DC1C 1041000B */  beq         $v0, $at, .L8011DC4C
/* 00F8C0 8011DC20 24010002 */   addiu      $at, $zero, 0x2
/* 00F8C4 8011DC24 1041000D */  beq         $v0, $at, .L8011DC5C
/* 00F8C8 8011DC28 24010003 */   addiu      $at, $zero, 0x3
/* 00F8CC 8011DC2C 1041002B */  beq         $v0, $at, .L8011DCDC
/* 00F8D0 8011DC30 00000000 */   nop
/* 00F8D4 8011DC34 1000002C */  b           .L8011DCE8
/* 00F8D8 8011DC38 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011DC3C:
/* 00F8DC 8011DC3C 0C0475EA */  jal         func_8011D7A8
/* 00F8E0 8011DC40 00000000 */   nop
/* 00F8E4 8011DC44 10000028 */  b           .L8011DCE8
/* 00F8E8 8011DC48 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011DC4C:
/* 00F8EC 8011DC4C 0C0476C0 */  jal         func_8011DB00
/* 00F8F0 8011DC50 00000000 */   nop
/* 00F8F4 8011DC54 10000024 */  b           .L8011DCE8
/* 00F8F8 8011DC58 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011DC5C:
/* 00F8FC 8011DC5C 0C002671 */  jal         func_800099C4
/* 00F900 8011DC60 00000000 */   nop
/* 00F904 8011DC64 3C0E8014 */  lui         $t6, %hi(D_80138210)
/* 00F908 8011DC68 3C0F8014 */  lui         $t7, %hi(D_80138214)
/* 00F90C 8011DC6C 8DEF8214 */  lw          $t7, %lo(D_80138214)($t7)
/* 00F910 8011DC70 8DCE8210 */  lw          $t6, %lo(D_80138210)($t6)
/* 00F914 8011DC74 24080001 */  addiu       $t0, $zero, 0x1
/* 00F918 8011DC78 006F082B */  sltu        $at, $v1, $t7
/* 00F91C 8011DC7C 004EC023 */  subu        $t8, $v0, $t6
/* 00F920 8011DC80 0301C023 */  subu        $t8, $t8, $at
/* 00F924 8011DC84 006FC823 */  subu        $t9, $v1, $t7
/* 00F928 8011DC88 17000002 */  bnez        $t8, .L8011DC94
/* 00F92C 8011DC8C 2F21012D */   sltiu      $at, $t9, 0x12d
/* 00F930 8011DC90 1420000E */  bnez        $at, .L8011DCCC
.L8011DC94:
/* 00F934 8011DC94 3C098013 */   lui        $t1, %hi(D_80137EE4)
/* 00F938 8011DC98 8D297EE4 */  lw          $t1, %lo(D_80137EE4)($t1)
/* 00F93C 8011DC9C 3C01800B */  lui         $at, %hi(D_800B1A34)
/* 00F940 8011DCA0 AC281A34 */  sw          $t0, %lo(D_800B1A34)($at)
/* 00F944 8011DCA4 00002025 */  move        $a0, $zero
/* 00F948 8011DCA8 24060001 */  addiu       $a2, $zero, 0x1
/* 00F94C 8011DCAC 0C00C4E0 */  jal         func_80031380
/* 00F950 8011DCB0 8D250064 */   lw         $a1, 0x64($t1)
/* 00F954 8011DCB4 0C0472F0 */  jal         func_8011CBC0
/* 00F958 8011DCB8 24040003 */   addiu      $a0, $zero, 0x3
/* 00F95C 8011DCBC 0C047652 */  jal         func_8011D948
/* 00F960 8011DCC0 00000000 */   nop
/* 00F964 8011DCC4 10000008 */  b           .L8011DCE8
/* 00F968 8011DCC8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011DCCC:
/* 00F96C 8011DCCC 0C0476C0 */  jal         func_8011DB00
/* 00F970 8011DCD0 00000000 */   nop
/* 00F974 8011DCD4 10000004 */  b           .L8011DCE8
/* 00F978 8011DCD8 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011DCDC:
/* 00F97C 8011DCDC 0C047652 */  jal         func_8011D948
/* 00F980 8011DCE0 00000000 */   nop
/* 00F984 8011DCE4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011DCE8:
/* 00F988 8011DCE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F98C 8011DCEC 03E00008 */  jr          $ra
/* 00F990 8011DCF0 00000000 */   nop

glabel func_8011DCF4 # 18
/* 00F994 8011DCF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00F998 8011DCF8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F99C 8011DCFC AFB00018 */  sw          $s0, 0x18($sp)
/* 00F9A0 8011DD00 0C00061A */  jal         func_80001868
/* 00F9A4 8011DD04 00002025 */   move       $a0, $zero
/* 00F9A8 8011DD08 3C018014 */  lui         $at, %hi(D_801381E0)
/* 00F9AC 8011DD0C 3C048014 */  lui         $a0, %hi(D_801381D0)
/* 00F9B0 8011DD10 3C058014 */  lui         $a1, %hi(D_801381D8)
/* 00F9B4 8011DD14 AC2081E0 */  sw          $zero, %lo(D_801381E0)($at)
/* 00F9B8 8011DD18 24A581D8 */  addiu       $a1, $a1, %lo(D_801381D8)
/* 00F9BC 8011DD1C 0C008494 */  jal         func_80021250
/* 00F9C0 8011DD20 248481D0 */   addiu      $a0, $a0, %lo(D_801381D0)
/* 00F9C4 8011DD24 0C0026E4 */  jal         func_80009B90
/* 00F9C8 8011DD28 24040002 */   addiu      $a0, $zero, 0x2
/* 00F9CC 8011DD2C 0C0472F0 */  jal         func_8011CBC0
/* 00F9D0 8011DD30 00002025 */   move       $a0, $zero
/* 00F9D4 8011DD34 3C108014 */  lui         $s0, %hi(D_801381E8)
/* 00F9D8 8011DD38 261081E8 */  addiu       $s0, $s0, %lo(D_801381E8)
/* 00F9DC 8011DD3C 8E04001C */  lw          $a0, 0x1c($s0)
/* 00F9E0 8011DD40 0C001E12 */  jal         func_80007848
/* 00F9E4 8011DD44 24050002 */   addiu      $a1, $zero, 0x2
/* 00F9E8 8011DD48 8E040024 */  lw          $a0, 0x24($s0)
/* 00F9EC 8011DD4C 0C001E12 */  jal         func_80007848
/* 00F9F0 8011DD50 24050002 */   addiu      $a1, $zero, 0x2
/* 00F9F4 8011DD54 0C0476FD */  jal         func_8011DBF4
/* 00F9F8 8011DD58 00000000 */   nop
/* 00F9FC 8011DD5C 3C0E8013 */  lui         $t6, %hi(D_8012E5D8)
/* 00FA00 8011DD60 25CEE5D8 */  addiu       $t6, $t6, %lo(D_8012E5D8)
/* 00FA04 8011DD64 AE000014 */  sw          $zero, 0x14($s0)
/* 00FA08 8011DD68 AE0E0000 */  sw          $t6, 0x0($s0)
/* 00FA0C 8011DD6C 0C047410 */  jal         func_8011D040
/* 00FA10 8011DD70 02002025 */   move       $a0, $s0
/* 00FA14 8011DD74 0C0473AE */  jal         func_8011CEB8
/* 00FA18 8011DD78 02002025 */   move       $a0, $s0
/* 00FA1C 8011DD7C 0C0005EC */  jal         func_800017B0
/* 00FA20 8011DD80 24040001 */   addiu      $a0, $zero, 0x1
/* 00FA24 8011DD84 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00FA28 8011DD88 8FB00018 */  lw          $s0, 0x18($sp)
/* 00FA2C 8011DD8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00FA30 8011DD90 03E00008 */  jr          $ra
/* 00FA34 8011DD94 00000000 */   nop

glabel func_8011DD98 # 19
/* 00FA38 8011DD98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FA3C 8011DD9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FA40 8011DDA0 0C0026E4 */  jal         func_80009B90
/* 00FA44 8011DDA4 00002025 */   move       $a0, $zero
/* 00FA48 8011DDA8 0C0005EC */  jal         func_800017B0
/* 00FA4C 8011DDAC 00002025 */   move       $a0, $zero
/* 00FA50 8011DDB0 3C048014 */  lui         $a0, %hi(D_80138204)
/* 00FA54 8011DDB4 8C848204 */  lw          $a0, %lo(D_80138204)($a0)
/* 00FA58 8011DDB8 0C001DF8 */  jal         func_800077E0
/* 00FA5C 8011DDBC 24050002 */   addiu      $a1, $zero, 0x2
/* 00FA60 8011DDC0 3C048014 */  lui         $a0, %hi(D_8013820C)
/* 00FA64 8011DDC4 8C84820C */  lw          $a0, %lo(D_8013820C)($a0)
/* 00FA68 8011DDC8 0C001DF8 */  jal         func_800077E0
/* 00FA6C 8011DDCC 24050002 */   addiu      $a1, $zero, 0x2
/* 00FA70 8011DDD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FA74 8011DDD4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FA78 8011DDD8 03E00008 */  jr          $ra
/* 00FA7C 8011DDDC 00000000 */   nop

glabel func_8011DDE0 # 20
/* 00FA80 8011DDE0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 00FA84 8011DDE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FA88 8011DDE8 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 00FA8C 8011DDEC 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 00FA90 8011DDF0 0C00DBAD */  jal         func_80036EB4
/* 00FA94 8011DDF4 27A50018 */   addiu      $a1, $sp, 0x18
/* 00FA98 8011DDF8 3C058013 */  lui         $a1, %hi(D_80135860)
/* 00FA9C 8011DDFC 24A55860 */  addiu       $a1, $a1, %lo(D_80135860)
/* 00FAA0 8011DE00 27A40020 */  addiu       $a0, $sp, 0x20
/* 00FAA4 8011DE04 00403025 */  move        $a2, $v0
/* 00FAA8 8011DE08 0C014589 */  jal         func_80051624
/* 00FAAC 8011DE0C 8FA70018 */   lw         $a3, 0x18($sp)
/* 00FAB0 8011DE10 0C047339 */  jal         func_8011CCE4
/* 00FAB4 8011DE14 27A40020 */   addiu      $a0, $sp, 0x20
/* 00FAB8 8011DE18 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FABC 8011DE1C 27BD0070 */  addiu       $sp, $sp, 0x70
/* 00FAC0 8011DE20 03E00008 */  jr          $ra
/* 00FAC4 8011DE24 00000000 */   nop

glabel func_8011DE28 # 21
/* 00FAC8 8011DE28 27BDFF30 */  addiu       $sp, $sp, -0xd0
/* 00FACC 8011DE2C AFBF0044 */  sw          $ra, 0x44($sp)
/* 00FAD0 8011DE30 0C00C14B */  jal         func_8003052C
/* 00FAD4 8011DE34 240400B9 */   addiu      $a0, $zero, 0xb9
/* 00FAD8 8011DE38 10400004 */  beqz        $v0, .L8011DE4C
/* 00FADC 8011DE3C 3C0E8013 */   lui        $t6, %hi(D_801358B0)
/* 00FAE0 8011DE40 25CE58B0 */  addiu       $t6, $t6, %lo(D_801358B0)
/* 00FAE4 8011DE44 10000004 */  b           .L8011DE58
/* 00FAE8 8011DE48 AFAE0048 */   sw         $t6, 0x48($sp)
.L8011DE4C:
/* 00FAEC 8011DE4C 3C0F8013 */  lui         $t7, %hi(D_801358B4)
/* 00FAF0 8011DE50 25EF58B4 */  addiu       $t7, $t7, %lo(D_801358B4)
/* 00FAF4 8011DE54 AFAF0048 */  sw          $t7, 0x48($sp)
.L8011DE58:
/* 00FAF8 8011DE58 0C00C14B */  jal         func_8003052C
/* 00FAFC 8011DE5C 240400AC */   addiu      $a0, $zero, 0xac
/* 00FB00 8011DE60 10400004 */  beqz        $v0, .L8011DE74
/* 00FB04 8011DE64 3C188013 */   lui        $t8, %hi(D_801358B8)
/* 00FB08 8011DE68 271858B8 */  addiu       $t8, $t8, %lo(D_801358B8)
/* 00FB0C 8011DE6C 10000004 */  b           .L8011DE80
/* 00FB10 8011DE70 AFB8004C */   sw         $t8, 0x4c($sp)
.L8011DE74:
/* 00FB14 8011DE74 3C198013 */  lui         $t9, %hi(D_801358BC)
/* 00FB18 8011DE78 273958BC */  addiu       $t9, $t9, %lo(D_801358BC)
/* 00FB1C 8011DE7C AFB9004C */  sw          $t9, 0x4c($sp)
.L8011DE80:
/* 00FB20 8011DE80 0C00C14B */  jal         func_8003052C
/* 00FB24 8011DE84 240400BA */   addiu      $a0, $zero, 0xba
/* 00FB28 8011DE88 10400004 */  beqz        $v0, .L8011DE9C
/* 00FB2C 8011DE8C 3C088013 */   lui        $t0, %hi(D_801358C0)
/* 00FB30 8011DE90 250858C0 */  addiu       $t0, $t0, %lo(D_801358C0)
/* 00FB34 8011DE94 10000004 */  b           .L8011DEA8
/* 00FB38 8011DE98 AFA80050 */   sw         $t0, 0x50($sp)
.L8011DE9C:
/* 00FB3C 8011DE9C 3C098013 */  lui         $t1, %hi(D_801358C4)
/* 00FB40 8011DEA0 252958C4 */  addiu       $t1, $t1, %lo(D_801358C4)
/* 00FB44 8011DEA4 AFA90050 */  sw          $t1, 0x50($sp)
.L8011DEA8:
/* 00FB48 8011DEA8 0C00C14B */  jal         func_8003052C
/* 00FB4C 8011DEAC 24040089 */   addiu      $a0, $zero, 0x89
/* 00FB50 8011DEB0 10400004 */  beqz        $v0, .L8011DEC4
/* 00FB54 8011DEB4 3C0A8013 */   lui        $t2, %hi(D_801358C8)
/* 00FB58 8011DEB8 254A58C8 */  addiu       $t2, $t2, %lo(D_801358C8)
/* 00FB5C 8011DEBC 10000004 */  b           .L8011DED0
/* 00FB60 8011DEC0 AFAA0054 */   sw         $t2, 0x54($sp)
.L8011DEC4:
/* 00FB64 8011DEC4 3C0B8013 */  lui         $t3, %hi(D_801358CC)
/* 00FB68 8011DEC8 256B58CC */  addiu       $t3, $t3, %lo(D_801358CC)
/* 00FB6C 8011DECC AFAB0054 */  sw          $t3, 0x54($sp)
.L8011DED0:
/* 00FB70 8011DED0 0C00C14B */  jal         func_8003052C
/* 00FB74 8011DED4 240400AD */   addiu      $a0, $zero, 0xad
/* 00FB78 8011DED8 10400004 */  beqz        $v0, .L8011DEEC
/* 00FB7C 8011DEDC 3C0C8013 */   lui        $t4, %hi(D_801358D0)
/* 00FB80 8011DEE0 258C58D0 */  addiu       $t4, $t4, %lo(D_801358D0)
/* 00FB84 8011DEE4 10000004 */  b           .L8011DEF8
/* 00FB88 8011DEE8 AFAC0058 */   sw         $t4, 0x58($sp)
.L8011DEEC:
/* 00FB8C 8011DEEC 3C0D8013 */  lui         $t5, %hi(D_801358D4)
/* 00FB90 8011DEF0 25AD58D4 */  addiu       $t5, $t5, %lo(D_801358D4)
/* 00FB94 8011DEF4 AFAD0058 */  sw          $t5, 0x58($sp)
.L8011DEF8:
/* 00FB98 8011DEF8 0C00C14B */  jal         func_8003052C
/* 00FB9C 8011DEFC 240400AF */   addiu      $a0, $zero, 0xaf
/* 00FBA0 8011DF00 10400004 */  beqz        $v0, .L8011DF14
/* 00FBA4 8011DF04 3C0E8013 */   lui        $t6, %hi(D_801358D8)
/* 00FBA8 8011DF08 25CE58D8 */  addiu       $t6, $t6, %lo(D_801358D8)
/* 00FBAC 8011DF0C 10000004 */  b           .L8011DF20
/* 00FBB0 8011DF10 AFAE005C */   sw         $t6, 0x5c($sp)
.L8011DF14:
/* 00FBB4 8011DF14 3C0F8013 */  lui         $t7, %hi(D_801358DC)
/* 00FBB8 8011DF18 25EF58DC */  addiu       $t7, $t7, %lo(D_801358DC)
/* 00FBBC 8011DF1C AFAF005C */  sw          $t7, 0x5c($sp)
.L8011DF20:
/* 00FBC0 8011DF20 0C00C14B */  jal         func_8003052C
/* 00FBC4 8011DF24 240400BD */   addiu      $a0, $zero, 0xbd
/* 00FBC8 8011DF28 10400004 */  beqz        $v0, .L8011DF3C
/* 00FBCC 8011DF2C 3C188013 */   lui        $t8, %hi(D_801358E0)
/* 00FBD0 8011DF30 271858E0 */  addiu       $t8, $t8, %lo(D_801358E0)
/* 00FBD4 8011DF34 10000004 */  b           .L8011DF48
/* 00FBD8 8011DF38 AFB80060 */   sw         $t8, 0x60($sp)
.L8011DF3C:
/* 00FBDC 8011DF3C 3C198013 */  lui         $t9, %hi(D_801358E4)
/* 00FBE0 8011DF40 273958E4 */  addiu       $t9, $t9, %lo(D_801358E4)
/* 00FBE4 8011DF44 AFB90060 */  sw          $t9, 0x60($sp)
.L8011DF48:
/* 00FBE8 8011DF48 0C00C14B */  jal         func_8003052C
/* 00FBEC 8011DF4C 240400AE */   addiu      $a0, $zero, 0xae
/* 00FBF0 8011DF50 10400004 */  beqz        $v0, .L8011DF64
/* 00FBF4 8011DF54 3C088013 */   lui        $t0, %hi(D_801358E8)
/* 00FBF8 8011DF58 250858E8 */  addiu       $t0, $t0, %lo(D_801358E8)
/* 00FBFC 8011DF5C 10000004 */  b           .L8011DF70
/* 00FC00 8011DF60 AFA80064 */   sw         $t0, 0x64($sp)
.L8011DF64:
/* 00FC04 8011DF64 3C098013 */  lui         $t1, %hi(D_801358EC)
/* 00FC08 8011DF68 252958EC */  addiu       $t1, $t1, %lo(D_801358EC)
/* 00FC0C 8011DF6C AFA90064 */  sw          $t1, 0x64($sp)
.L8011DF70:
/* 00FC10 8011DF70 0C00C14B */  jal         func_8003052C
/* 00FC14 8011DF74 2404000E */   addiu      $a0, $zero, 0xe
/* 00FC18 8011DF78 10400005 */  beqz        $v0, .L8011DF90
/* 00FC1C 8011DF7C 3C0B8013 */   lui        $t3, %hi(D_801358F4)
/* 00FC20 8011DF80 3C0A8013 */  lui         $t2, %hi(D_801358F0)
/* 00FC24 8011DF84 254A58F0 */  addiu       $t2, $t2, %lo(D_801358F0)
/* 00FC28 8011DF88 10000003 */  b           .L8011DF98
/* 00FC2C 8011DF8C AFAA0068 */   sw         $t2, 0x68($sp)
.L8011DF90:
/* 00FC30 8011DF90 256B58F4 */  addiu       $t3, $t3, %lo(D_801358F4)
/* 00FC34 8011DF94 AFAB0068 */  sw          $t3, 0x68($sp)
.L8011DF98:
/* 00FC38 8011DF98 0C00C14B */  jal         func_8003052C
/* 00FC3C 8011DF9C 2404000F */   addiu      $a0, $zero, 0xf
/* 00FC40 8011DFA0 10400005 */  beqz        $v0, .L8011DFB8
/* 00FC44 8011DFA4 3C0D8013 */   lui        $t5, %hi(D_801358FC)
/* 00FC48 8011DFA8 3C0C8013 */  lui         $t4, %hi(D_801358F8)
/* 00FC4C 8011DFAC 258C58F8 */  addiu       $t4, $t4, %lo(D_801358F8)
/* 00FC50 8011DFB0 10000003 */  b           .L8011DFC0
/* 00FC54 8011DFB4 AFAC006C */   sw         $t4, 0x6c($sp)
.L8011DFB8:
/* 00FC58 8011DFB8 25AD58FC */  addiu       $t5, $t5, %lo(D_801358FC)
/* 00FC5C 8011DFBC AFAD006C */  sw          $t5, 0x6c($sp)
.L8011DFC0:
/* 00FC60 8011DFC0 0C00C14B */  jal         func_8003052C
/* 00FC64 8011DFC4 24040010 */   addiu      $a0, $zero, 0x10
/* 00FC68 8011DFC8 10400005 */  beqz        $v0, .L8011DFE0
/* 00FC6C 8011DFCC 3C0F8013 */   lui        $t7, %hi(D_80135904)
/* 00FC70 8011DFD0 3C0E8013 */  lui         $t6, %hi(D_80135900)
/* 00FC74 8011DFD4 25CE5900 */  addiu       $t6, $t6, %lo(D_80135900)
/* 00FC78 8011DFD8 10000003 */  b           .L8011DFE8
/* 00FC7C 8011DFDC AFAE0070 */   sw         $t6, 0x70($sp)
.L8011DFE0:
/* 00FC80 8011DFE0 25EF5904 */  addiu       $t7, $t7, %lo(D_80135904)
/* 00FC84 8011DFE4 AFAF0070 */  sw          $t7, 0x70($sp)
.L8011DFE8:
/* 00FC88 8011DFE8 0C00C14B */  jal         func_8003052C
/* 00FC8C 8011DFEC 24040013 */   addiu      $a0, $zero, 0x13
/* 00FC90 8011DFF0 AFA20074 */  sw          $v0, 0x74($sp)
/* 00FC94 8011DFF4 0C00C14B */  jal         func_8003052C
/* 00FC98 8011DFF8 2404001A */   addiu      $a0, $zero, 0x1a
/* 00FC9C 8011DFFC AFA20078 */  sw          $v0, 0x78($sp)
/* 00FCA0 8011E000 0C00C14B */  jal         func_8003052C
/* 00FCA4 8011E004 24040014 */   addiu      $a0, $zero, 0x14
/* 00FCA8 8011E008 8FB80050 */  lw          $t8, 0x50($sp)
/* 00FCAC 8011E00C 8FB90054 */  lw          $t9, 0x54($sp)
/* 00FCB0 8011E010 8FA80058 */  lw          $t0, 0x58($sp)
/* 00FCB4 8011E014 AFB80010 */  sw          $t8, 0x10($sp)
/* 00FCB8 8011E018 8FB80078 */  lw          $t8, 0x78($sp)
/* 00FCBC 8011E01C 8FA9005C */  lw          $t1, 0x5c($sp)
/* 00FCC0 8011E020 8FAA0060 */  lw          $t2, 0x60($sp)
/* 00FCC4 8011E024 8FAB0064 */  lw          $t3, 0x64($sp)
/* 00FCC8 8011E028 8FAC0068 */  lw          $t4, 0x68($sp)
/* 00FCCC 8011E02C 8FAD006C */  lw          $t5, 0x6c($sp)
/* 00FCD0 8011E030 8FAE0070 */  lw          $t6, 0x70($sp)
/* 00FCD4 8011E034 8FAF0074 */  lw          $t7, 0x74($sp)
/* 00FCD8 8011E038 3C058013 */  lui         $a1, %hi(D_8013587C)
/* 00FCDC 8011E03C 24A5587C */  addiu       $a1, $a1, %lo(D_8013587C)
/* 00FCE0 8011E040 27A40080 */  addiu       $a0, $sp, 0x80
/* 00FCE4 8011E044 8FA60048 */  lw          $a2, 0x48($sp)
/* 00FCE8 8011E048 8FA7004C */  lw          $a3, 0x4c($sp)
/* 00FCEC 8011E04C AFA2003C */  sw          $v0, 0x3c($sp)
/* 00FCF0 8011E050 AFB90014 */  sw          $t9, 0x14($sp)
/* 00FCF4 8011E054 AFA80018 */  sw          $t0, 0x18($sp)
/* 00FCF8 8011E058 AFB80038 */  sw          $t8, 0x38($sp)
/* 00FCFC 8011E05C AFA9001C */  sw          $t1, 0x1c($sp)
/* 00FD00 8011E060 AFAA0020 */  sw          $t2, 0x20($sp)
/* 00FD04 8011E064 AFAB0024 */  sw          $t3, 0x24($sp)
/* 00FD08 8011E068 AFAC0028 */  sw          $t4, 0x28($sp)
/* 00FD0C 8011E06C AFAD002C */  sw          $t5, 0x2c($sp)
/* 00FD10 8011E070 AFAE0030 */  sw          $t6, 0x30($sp)
/* 00FD14 8011E074 0C014589 */  jal         func_80051624
/* 00FD18 8011E078 AFAF0034 */   sw         $t7, 0x34($sp)
/* 00FD1C 8011E07C 0C047339 */  jal         func_8011CCE4
/* 00FD20 8011E080 27A40080 */   addiu      $a0, $sp, 0x80
/* 00FD24 8011E084 8FBF0044 */  lw          $ra, 0x44($sp)
/* 00FD28 8011E088 27BD00D0 */  addiu       $sp, $sp, 0xd0
/* 00FD2C 8011E08C 03E00008 */  jr          $ra
/* 00FD30 8011E090 00000000 */   nop

glabel func_8011E094 # 22
/* 00FD34 8011E094 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 00FD38 8011E098 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00FD3C 8011E09C 0C00C14B */  jal         func_8003052C
/* 00FD40 8011E0A0 24040006 */   addiu      $a0, $zero, 0x6
/* 00FD44 8011E0A4 3C010001 */  lui         $at, 0x1
/* 00FD48 8011E0A8 342186A0 */  ori         $at, $at, 0x86a0
/* 00FD4C 8011E0AC 0041082A */  slt         $at, $v0, $at
/* 00FD50 8011E0B0 14200003 */  bnez        $at, .L8011E0C0
/* 00FD54 8011E0B4 3C030001 */   lui        $v1, 0x1
/* 00FD58 8011E0B8 10000004 */  b           .L8011E0CC
/* 00FD5C 8011E0BC 3463869F */   ori        $v1, $v1, 0x869f
.L8011E0C0:
/* 00FD60 8011E0C0 0C00C14B */  jal         func_8003052C
/* 00FD64 8011E0C4 24040006 */   addiu      $a0, $zero, 0x6
/* 00FD68 8011E0C8 00401825 */  move        $v1, $v0
.L8011E0CC:
/* 00FD6C 8011E0CC 28612710 */  slti        $at, $v1, 0x2710
/* 00FD70 8011E0D0 10200004 */  beqz        $at, .L8011E0E4
/* 00FD74 8011E0D4 27A40040 */   addiu      $a0, $sp, 0x40
/* 00FD78 8011E0D8 3C068013 */  lui         $a2, %hi(D_80135938)
/* 00FD7C 8011E0DC 10000003 */  b           .L8011E0EC
/* 00FD80 8011E0E0 24C65938 */   addiu      $a2, $a2, %lo(D_80135938)
.L8011E0E4:
/* 00FD84 8011E0E4 3C068013 */  lui         $a2, %hi(D_8013593C)
/* 00FD88 8011E0E8 24C6593C */  addiu       $a2, $a2, %lo(D_8013593C)
.L8011E0EC:
/* 00FD8C 8011E0EC 286103E8 */  slti        $at, $v1, 0x3e8
/* 00FD90 8011E0F0 10200004 */  beqz        $at, .L8011E104
/* 00FD94 8011E0F4 3C058013 */   lui        $a1, %hi(D_80135908)
/* 00FD98 8011E0F8 3C078013 */  lui         $a3, %hi(D_80135940)
/* 00FD9C 8011E0FC 10000003 */  b           .L8011E10C
/* 00FDA0 8011E100 24E75940 */   addiu      $a3, $a3, %lo(D_80135940)
.L8011E104:
/* 00FDA4 8011E104 3C078013 */  lui         $a3, %hi(D_80135944)
/* 00FDA8 8011E108 24E75944 */  addiu       $a3, $a3, %lo(D_80135944)
.L8011E10C:
/* 00FDAC 8011E10C 28610064 */  slti        $at, $v1, 0x64
/* 00FDB0 8011E110 10200004 */  beqz        $at, .L8011E124
/* 00FDB4 8011E114 24A55908 */   addiu      $a1, $a1, %lo(D_80135908)
/* 00FDB8 8011E118 3C088013 */  lui         $t0, %hi(D_80135948)
/* 00FDBC 8011E11C 10000003 */  b           .L8011E12C
/* 00FDC0 8011E120 25085948 */   addiu      $t0, $t0, %lo(D_80135948)
.L8011E124:
/* 00FDC4 8011E124 3C088013 */  lui         $t0, %hi(D_8013594C)
/* 00FDC8 8011E128 2508594C */  addiu       $t0, $t0, %lo(D_8013594C)
.L8011E12C:
/* 00FDCC 8011E12C 2861000A */  slti        $at, $v1, 0xa
/* 00FDD0 8011E130 10200004 */  beqz        $at, .L8011E144
/* 00FDD4 8011E134 3C028013 */   lui        $v0, %hi(D_80135954)
/* 00FDD8 8011E138 3C028013 */  lui         $v0, %hi(D_80135950)
/* 00FDDC 8011E13C 10000002 */  b           .L8011E148
/* 00FDE0 8011E140 24425950 */   addiu      $v0, $v0, %lo(D_80135950)
.L8011E144:
/* 00FDE4 8011E144 24425954 */  addiu       $v0, $v0, %lo(D_80135954)
.L8011E148:
/* 00FDE8 8011E148 AFA80010 */  sw          $t0, 0x10($sp)
/* 00FDEC 8011E14C AFA20014 */  sw          $v0, 0x14($sp)
/* 00FDF0 8011E150 0C014589 */  jal         func_80051624
/* 00FDF4 8011E154 AFA30018 */   sw         $v1, 0x18($sp)
/* 00FDF8 8011E158 0C047339 */  jal         func_8011CCE4
/* 00FDFC 8011E15C 27A40040 */   addiu      $a0, $sp, 0x40
/* 00FE00 8011E160 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00FE04 8011E164 27BD0080 */  addiu       $sp, $sp, 0x80
/* 00FE08 8011E168 03E00008 */  jr          $ra
/* 00FE0C 8011E16C 00000000 */   nop

glabel func_8011E170 # 23
/* 00FE10 8011E170 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 00FE14 8011E174 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00FE18 8011E178 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 00FE1C 8011E17C AFB00018 */  sw          $s0, 0x18($sp)
/* 00FE20 8011E180 0C045718 */  jal         func_80115C60
/* 00FE24 8011E184 24843E20 */   addiu      $a0, $a0, %lo(D_800F3E20)
/* 00FE28 8011E188 27B00028 */  addiu       $s0, $sp, 0x28
/* 00FE2C 8011E18C 3C058013 */  lui         $a1, %hi(D_80135958)
/* 00FE30 8011E190 24A55958 */  addiu       $a1, $a1, %lo(D_80135958)
/* 00FE34 8011E194 02002025 */  move        $a0, $s0
/* 00FE38 8011E198 0C014589 */  jal         func_80051624
/* 00FE3C 8011E19C 00403025 */   move       $a2, $v0
/* 00FE40 8011E1A0 0C047339 */  jal         func_8011CCE4
/* 00FE44 8011E1A4 02002025 */   move       $a0, $s0
/* 00FE48 8011E1A8 3C058013 */  lui         $a1, %hi(D_8013595C)
/* 00FE4C 8011E1AC 24A5595C */  addiu       $a1, $a1, %lo(D_8013595C)
/* 00FE50 8011E1B0 0C014589 */  jal         func_80051624
/* 00FE54 8011E1B4 02002025 */   move       $a0, $s0
/* 00FE58 8011E1B8 0C047339 */  jal         func_8011CCE4
/* 00FE5C 8011E1BC 02002025 */   move       $a0, $s0
/* 00FE60 8011E1C0 3C058013 */  lui         $a1, %hi(D_80135964)
/* 00FE64 8011E1C4 3C06800F */  lui         $a2, %hi(D_800F3F10)
/* 00FE68 8011E1C8 8CC63F10 */  lw          $a2, %lo(D_800F3F10)($a2)
/* 00FE6C 8011E1CC 24A55964 */  addiu       $a1, $a1, %lo(D_80135964)
/* 00FE70 8011E1D0 0C014589 */  jal         func_80051624
/* 00FE74 8011E1D4 02002025 */   move       $a0, $s0
/* 00FE78 8011E1D8 0C047339 */  jal         func_8011CCE4
/* 00FE7C 8011E1DC 02002025 */   move       $a0, $s0
/* 00FE80 8011E1E0 3C058013 */  lui         $a1, %hi(D_8013596C)
/* 00FE84 8011E1E4 24A5596C */  addiu       $a1, $a1, %lo(D_8013596C)
/* 00FE88 8011E1E8 0C014589 */  jal         func_80051624
/* 00FE8C 8011E1EC 02002025 */   move       $a0, $s0
/* 00FE90 8011E1F0 0C047339 */  jal         func_8011CCE4
/* 00FE94 8011E1F4 02002025 */   move       $a0, $s0
/* 00FE98 8011E1F8 3C058013 */  lui         $a1, %hi(D_80135974)
/* 00FE9C 8011E1FC 3C06800F */  lui         $a2, %hi(D_800F3F1C)
/* 00FEA0 8011E200 8CC63F1C */  lw          $a2, %lo(D_800F3F1C)($a2)
/* 00FEA4 8011E204 24A55974 */  addiu       $a1, $a1, %lo(D_80135974)
/* 00FEA8 8011E208 0C014589 */  jal         func_80051624
/* 00FEAC 8011E20C 02002025 */   move       $a0, $s0
/* 00FEB0 8011E210 0C047339 */  jal         func_8011CCE4
/* 00FEB4 8011E214 02002025 */   move       $a0, $s0
/* 00FEB8 8011E218 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00FEBC 8011E21C 8FB00018 */  lw          $s0, 0x18($sp)
/* 00FEC0 8011E220 27BD0058 */  addiu       $sp, $sp, 0x58
/* 00FEC4 8011E224 03E00008 */  jr          $ra
/* 00FEC8 8011E228 00000000 */   nop

glabel func_8011E22C # 24
/* 00FECC 8011E22C 3C0B800B */  lui         $t3, %hi(D_800B1A70)
/* 00FED0 8011E230 8D6B1A70 */  lw          $t3, %lo(D_800B1A70)($t3)
/* 00FED4 8011E234 3C01800B */  lui         $at, %hi(D_800B1A70)
/* 00FED8 8011E238 3C0FE700 */  lui         $t7, 0xe700
/* 00FEDC 8011E23C 256E0008 */  addiu       $t6, $t3, 0x8
/* 00FEE0 8011E240 AC2E1A70 */  sw          $t6, %lo(D_800B1A70)($at)
/* 00FEE4 8011E244 AD600004 */  sw          $zero, 0x4($t3)
/* 00FEE8 8011E248 AD6F0000 */  sw          $t7, 0x0($t3)
/* 00FEEC 8011E24C 3C0B800B */  lui         $t3, %hi(D_800B1A70)
/* 00FEF0 8011E250 8D6B1A70 */  lw          $t3, %lo(D_800B1A70)($t3)
/* 00FEF4 8011E254 3C19E300 */  lui         $t9, 0xe300
/* 00FEF8 8011E258 37390A01 */  ori         $t9, $t9, 0xa01
/* 00FEFC 8011E25C 25780008 */  addiu       $t8, $t3, 0x8
/* 00FF00 8011E260 AC381A70 */  sw          $t8, %lo(D_800B1A70)($at)
/* 00FF04 8011E264 AD600004 */  sw          $zero, 0x4($t3)
/* 00FF08 8011E268 AD790000 */  sw          $t9, 0x0($t3)
/* 00FF0C 8011E26C 8C820000 */  lw          $v0, 0x0($a0)
/* 00FF10 8011E270 3C180050 */  lui         $t8, 0x50
/* 00FF14 8011E274 3C0FE200 */  lui         $t7, 0xe200
/* 00FF18 8011E278 244E0008 */  addiu       $t6, $v0, 0x8
/* 00FF1C 8011E27C AC8E0000 */  sw          $t6, 0x0($a0)
/* 00FF20 8011E280 35EF001C */  ori         $t7, $t7, 0x1c
/* 00FF24 8011E284 37187040 */  ori         $t8, $t8, 0x7040
/* 00FF28 8011E288 AC580004 */  sw          $t8, 0x4($v0)
/* 00FF2C 8011E28C AC4F0000 */  sw          $t7, 0x0($v0)
/* 00FF30 8011E290 8C820000 */  lw          $v0, 0x0($a0)
/* 00FF34 8011E294 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00FF38 8011E298 3C18FFFD */  lui         $t8, 0xfffd
/* 00FF3C 8011E29C AFA20004 */  sw          $v0, 0x4($sp)
/* 00FF40 8011E2A0 24590008 */  addiu       $t9, $v0, 0x8
/* 00FF44 8011E2A4 AC990000 */  sw          $t9, 0x0($a0)
/* 00FF48 8011E2A8 8FAF0004 */  lw          $t7, 0x4($sp)
/* 00FF4C 8011E2AC 3C0EFCFF */  lui         $t6, 0xfcff
/* 00FF50 8011E2B0 35CEFFFF */  ori         $t6, $t6, 0xffff
/* 00FF54 8011E2B4 3718F6FB */  ori         $t8, $t8, 0xf6fb
/* 00FF58 8011E2B8 ADF80004 */  sw          $t8, 0x4($t7)
/* 00FF5C 8011E2BC ADEE0000 */  sw          $t6, 0x0($t7)
/* 00FF60 8011E2C0 8C820000 */  lw          $v0, 0x0($a0)
/* 00FF64 8011E2C4 3C0BFA00 */  lui         $t3, 0xfa00
/* 00FF68 8011E2C8 240C008C */  addiu       $t4, $zero, 0x8c
/* 00FF6C 8011E2CC 24590008 */  addiu       $t9, $v0, 0x8
/* 00FF70 8011E2D0 AC990000 */  sw          $t9, 0x0($a0)
/* 00FF74 8011E2D4 AC4C0004 */  sw          $t4, 0x4($v0)
/* 00FF78 8011E2D8 AC4B0000 */  sw          $t3, 0x0($v0)
/* 00FF7C 8011E2DC 8C820000 */  lw          $v0, 0x0($a0)
/* 00FF80 8011E2E0 24A90050 */  addiu       $t1, $a1, 0x50
/* 00FF84 8011E2E4 313803FF */  andi        $t8, $t1, 0x3ff
/* 00FF88 8011E2E8 244E0008 */  addiu       $t6, $v0, 0x8
/* 00FF8C 8011E2EC 24C30003 */  addiu       $v1, $a2, 0x3
/* 00FF90 8011E2F0 AC8E0000 */  sw          $t6, 0x0($a0)
/* 00FF94 8011E2F4 00187B80 */  sll         $t7, $t8, 14
/* 00FF98 8011E2F8 3C0DF600 */  lui         $t5, 0xf600
/* 00FF9C 8011E2FC 306E03FF */  andi        $t6, $v1, 0x3ff
/* 00FFA0 8011E300 000EC080 */  sll         $t8, $t6, 2
/* 00FFA4 8011E304 01EDC825 */  or          $t9, $t7, $t5
/* 00FFA8 8011E308 03387825 */  or          $t7, $t9, $t8
/* 00FFAC 8011E30C 30D803FF */  andi        $t8, $a2, 0x3ff
/* 00FFB0 8011E310 30AE03FF */  andi        $t6, $a1, 0x3ff
/* 00FFB4 8011E314 AC4F0000 */  sw          $t7, 0x0($v0)
/* 00FFB8 8011E318 00187880 */  sll         $t7, $t8, 2
/* 00FFBC 8011E31C 000ECB80 */  sll         $t9, $t6, 14
/* 00FFC0 8011E320 032F7025 */  or          $t6, $t9, $t7
/* 00FFC4 8011E324 10E00009 */  beqz        $a3, .L8011E34C
/* 00FFC8 8011E328 AC4E0004 */   sw         $t6, 0x4($v0)
/* 00FFCC 8011E32C 8C820000 */  lw          $v0, 0x0($a0)
/* 00FFD0 8011E330 3C19FF00 */  lui         $t9, 0xff00
/* 00FFD4 8011E334 3739008C */  ori         $t9, $t9, 0x8c
/* 00FFD8 8011E338 24580008 */  addiu       $t8, $v0, 0x8
/* 00FFDC 8011E33C AC980000 */  sw          $t8, 0x0($a0)
/* 00FFE0 8011E340 AC590004 */  sw          $t9, 0x4($v0)
/* 00FFE4 8011E344 10000006 */  b           .L8011E360
/* 00FFE8 8011E348 AC4B0000 */   sw         $t3, 0x0($v0)
.L8011E34C:
/* 00FFEC 8011E34C 8C820000 */  lw          $v0, 0x0($a0)
/* 00FFF0 8011E350 244F0008 */  addiu       $t7, $v0, 0x8
/* 00FFF4 8011E354 AC8F0000 */  sw          $t7, 0x0($a0)
/* 00FFF8 8011E358 AC4C0004 */  sw          $t4, 0x4($v0)
/* 00FFFC 8011E35C AC4B0000 */  sw          $t3, 0x0($v0)
.L8011E360:
/* 010000 8011E360 8C820000 */  lw          $v0, 0x0($a0)
/* 010004 8011E364 3C0142A0 */  lui         $at, 0x42a0
/* 010008 8011E368 44812000 */  mtc1        $at, $f4
/* 01000C 8011E36C 244E0008 */  addiu       $t6, $v0, 0x8
/* 010010 8011E370 AC8E0000 */  sw          $t6, 0x0($a0)
/* 010014 8011E374 C7A60030 */  lwc1        $f6, 0x30($sp)
/* 010018 8011E378 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01001C 8011E37C 46062202 */  mul.s       $f8, $f4, $f6
/* 010020 8011E380 4600428D */  trunc.w.s   $f10, $f8
/* 010024 8011E384 44195000 */  mfc1        $t9, $f10
/* 010028 8011E388 00000000 */  nop
/* 01002C 8011E38C 03253821 */  addu        $a3, $t9, $a1
/* 010030 8011E390 24EF0002 */  addiu       $t7, $a3, 0x2
/* 010034 8011E394 31EE03FF */  andi        $t6, $t7, 0x3ff
/* 010038 8011E398 000EC380 */  sll         $t8, $t6, 14
/* 01003C 8011E39C 246F0003 */  addiu       $t7, $v1, 0x3
/* 010040 8011E3A0 31EE03FF */  andi        $t6, $t7, 0x3ff
/* 010044 8011E3A4 030DC825 */  or          $t9, $t8, $t5
/* 010048 8011E3A8 000EC080 */  sll         $t8, $t6, 2
/* 01004C 8011E3AC 03387825 */  or          $t7, $t9, $t8
/* 010050 8011E3B0 24EEFFFE */  addiu       $t6, $a3, -0x2
/* 010054 8011E3B4 31D903FF */  andi        $t9, $t6, 0x3ff
/* 010058 8011E3B8 AC4F0000 */  sw          $t7, 0x0($v0)
/* 01005C 8011E3BC 24CFFFFD */  addiu       $t7, $a2, -0x3
/* 010060 8011E3C0 31EE03FF */  andi        $t6, $t7, 0x3ff
/* 010064 8011E3C4 0019C380 */  sll         $t8, $t9, 14
/* 010068 8011E3C8 000EC880 */  sll         $t9, $t6, 2
/* 01006C 8011E3CC 03197825 */  or          $t7, $t8, $t9
/* 010070 8011E3D0 03E00008 */  jr          $ra
/* 010074 8011E3D4 AC4F0004 */   sw         $t7, 0x4($v0)

glabel func_8011E3D8 # 25
/* 010078 8011E3D8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01007C 8011E3DC AFBF0024 */  sw          $ra, 0x24($sp)
/* 010080 8011E3E0 AFA40030 */  sw          $a0, 0x30($sp)
/* 010084 8011E3E4 AFB10020 */  sw          $s1, 0x20($sp)
/* 010088 8011E3E8 AFB0001C */  sw          $s0, 0x1c($sp)
/* 01008C 8011E3EC 0C00C141 */  jal         func_80030504
/* 010090 8011E3F0 2404000A */   addiu      $a0, $zero, 0xa
/* 010094 8011E3F4 AFA2002C */  sw          $v0, 0x2c($sp)
/* 010098 8011E3F8 0C00C141 */  jal         func_80030504
/* 01009C 8011E3FC 2404000B */   addiu      $a0, $zero, 0xb
/* 0100A0 8011E400 AFA20028 */  sw          $v0, 0x28($sp)
/* 0100A4 8011E404 0C00C14B */  jal         func_8003052C
/* 0100A8 8011E408 2404000A */   addiu      $a0, $zero, 0xa
/* 0100AC 8011E40C 00408025 */  move        $s0, $v0
/* 0100B0 8011E410 0C00C14B */  jal         func_8003052C
/* 0100B4 8011E414 2404000B */   addiu      $a0, $zero, 0xb
/* 0100B8 8011E418 3C0E800B */  lui         $t6, %hi(D_800B093E)
/* 0100BC 8011E41C 95CE093E */  lhu         $t6, %lo(D_800B093E)($t6)
/* 0100C0 8011E420 00408825 */  move        $s1, $v0
/* 0100C4 8011E424 8FAF0030 */  lw          $t7, 0x30($sp)
/* 0100C8 8011E428 51C00036 */  beql        $t6, $zero, .L8011E504
/* 0100CC 8011E42C 8FAC0030 */   lw         $t4, 0x30($sp)
/* 0100D0 8011E430 8DE3000C */  lw          $v1, 0xc($t7)
/* 0100D4 8011E434 31D80100 */  andi        $t8, $t6, 0x100
/* 0100D8 8011E438 2404000A */  addiu       $a0, $zero, 0xa
/* 0100DC 8011E43C 14600017 */  bnez        $v1, .L8011E49C
/* 0100E0 8011E440 24010001 */   addiu      $at, $zero, 0x1
/* 0100E4 8011E444 13000002 */  beqz        $t8, .L8011E450
/* 0100E8 8011E448 01C01825 */   move       $v1, $t6
/* 0100EC 8011E44C 26100001 */  addiu       $s0, $s0, 0x1
.L8011E450:
/* 0100F0 8011E450 30790200 */  andi        $t9, $v1, 0x200
/* 0100F4 8011E454 13200002 */  beqz        $t9, .L8011E460
/* 0100F8 8011E458 8FA8002C */   lw         $t0, 0x2c($sp)
/* 0100FC 8011E45C 2610FFFF */  addiu       $s0, $s0, -0x1
.L8011E460:
/* 010100 8011E460 06010003 */  bgez        $s0, .L8011E470
/* 010104 8011E464 0110082A */   slt        $at, $t0, $s0
/* 010108 8011E468 10000004 */  b           .L8011E47C
/* 01010C 8011E46C 00008025 */   move       $s0, $zero
.L8011E470:
/* 010110 8011E470 10200002 */  beqz        $at, .L8011E47C
/* 010114 8011E474 00000000 */   nop
/* 010118 8011E478 01008025 */  move        $s0, $t0
.L8011E47C:
/* 01011C 8011E47C 0C00C155 */  jal         func_80030554
/* 010120 8011E480 02002825 */   move       $a1, $s0
/* 010124 8011E484 3C013F80 */  lui         $at, 0x3f80
/* 010128 8011E488 44816000 */  mtc1        $at, $f12
/* 01012C 8011E48C 0C04580A */  jal         func_80116028
/* 010130 8011E490 00000000 */   nop
/* 010134 8011E494 1000001B */  b           .L8011E504
/* 010138 8011E498 8FAC0030 */   lw         $t4, 0x30($sp)
.L8011E49C:
/* 01013C 8011E49C 14610018 */  bne         $v1, $at, .L8011E500
/* 010140 8011E4A0 3C04800B */   lui        $a0, %hi(D_800B093E)
/* 010144 8011E4A4 9483093E */  lhu         $v1, %lo(D_800B093E)($a0)
/* 010148 8011E4A8 8FAB0028 */  lw          $t3, 0x28($sp)
/* 01014C 8011E4AC 2404000B */  addiu       $a0, $zero, 0xb
/* 010150 8011E4B0 30690100 */  andi        $t1, $v1, 0x100
/* 010154 8011E4B4 11200002 */  beqz        $t1, .L8011E4C0
/* 010158 8011E4B8 306A0200 */   andi       $t2, $v1, 0x200
/* 01015C 8011E4BC 24510001 */  addiu       $s1, $v0, 0x1
.L8011E4C0:
/* 010160 8011E4C0 11400002 */  beqz        $t2, .L8011E4CC
/* 010164 8011E4C4 00000000 */   nop
/* 010168 8011E4C8 2631FFFF */  addiu       $s1, $s1, -0x1
.L8011E4CC:
/* 01016C 8011E4CC 06210003 */  bgez        $s1, .L8011E4DC
/* 010170 8011E4D0 0171082A */   slt        $at, $t3, $s1
/* 010174 8011E4D4 10000004 */  b           .L8011E4E8
/* 010178 8011E4D8 00008825 */   move       $s1, $zero
.L8011E4DC:
/* 01017C 8011E4DC 10200002 */  beqz        $at, .L8011E4E8
/* 010180 8011E4E0 00000000 */   nop
/* 010184 8011E4E4 01608825 */  move        $s1, $t3
.L8011E4E8:
/* 010188 8011E4E8 0C00C155 */  jal         func_80030554
/* 01018C 8011E4EC 02202825 */   move       $a1, $s1
/* 010190 8011E4F0 3C013F80 */  lui         $at, 0x3f80
/* 010194 8011E4F4 44816000 */  mtc1        $at, $f12
/* 010198 8011E4F8 0C045836 */  jal         func_801160D8
/* 01019C 8011E4FC 00000000 */   nop
.L8011E500:
/* 0101A0 8011E500 8FAC0030 */  lw          $t4, 0x30($sp)
.L8011E504:
/* 0101A4 8011E504 44902000 */  mtc1        $s0, $f4
/* 0101A8 8011E508 00003825 */  move        $a3, $zero
/* 0101AC 8011E50C 8D8D000C */  lw          $t5, 0xc($t4)
/* 0101B0 8011E510 15A00003 */  bnez        $t5, .L8011E520
/* 0101B4 8011E514 00000000 */   nop
/* 0101B8 8011E518 10000001 */  b           .L8011E520
/* 0101BC 8011E51C 24070001 */   addiu      $a3, $zero, 0x1
.L8011E520:
/* 0101C0 8011E520 8FAF002C */  lw          $t7, 0x2c($sp)
/* 0101C4 8011E524 468021A0 */  cvt.s.w     $f6, $f4
/* 0101C8 8011E528 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 0101CC 8011E52C 448F4000 */  mtc1        $t7, $f8
/* 0101D0 8011E530 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 0101D4 8011E534 240500C1 */  addiu       $a1, $zero, 0xc1
/* 0101D8 8011E538 468042A0 */  cvt.s.w     $f10, $f8
/* 0101DC 8011E53C 2406003A */  addiu       $a2, $zero, 0x3a
/* 0101E0 8011E540 460A3403 */  div.s       $f16, $f6, $f10
/* 0101E4 8011E544 0C04788B */  jal         func_8011E22C
/* 0101E8 8011E548 E7B00010 */   swc1       $f16, 0x10($sp)
/* 0101EC 8011E54C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0101F0 8011E550 24010001 */  addiu       $at, $zero, 0x1
/* 0101F4 8011E554 44919000 */  mtc1        $s1, $f18
/* 0101F8 8011E558 8DD8000C */  lw          $t8, 0xc($t6)
/* 0101FC 8011E55C 00003825 */  move        $a3, $zero
/* 010200 8011E560 17010003 */  bne         $t8, $at, .L8011E570
/* 010204 8011E564 00000000 */   nop
/* 010208 8011E568 10000001 */  b           .L8011E570
/* 01020C 8011E56C 24070001 */   addiu      $a3, $zero, 0x1
.L8011E570:
/* 010210 8011E570 8FB90028 */  lw          $t9, 0x28($sp)
/* 010214 8011E574 46809120 */  cvt.s.w     $f4, $f18
/* 010218 8011E578 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 01021C 8011E57C 44994000 */  mtc1        $t9, $f8
/* 010220 8011E580 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 010224 8011E584 240500C1 */  addiu       $a1, $zero, 0xc1
/* 010228 8011E588 468041A0 */  cvt.s.w     $f6, $f8
/* 01022C 8011E58C 2406004F */  addiu       $a2, $zero, 0x4f
/* 010230 8011E590 46062283 */  div.s       $f10, $f4, $f6
/* 010234 8011E594 0C04788B */  jal         func_8011E22C
/* 010238 8011E598 E7AA0010 */   swc1       $f10, 0x10($sp)
/* 01023C 8011E59C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 010240 8011E5A0 8FB0001C */  lw          $s0, 0x1c($sp)
/* 010244 8011E5A4 8FB10020 */  lw          $s1, 0x20($sp)
/* 010248 8011E5A8 03E00008 */  jr          $ra
/* 01024C 8011E5AC 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8011E5B0 # 26
/* 010250 8011E5B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010254 8011E5B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010258 8011E5B8 0C047308 */  jal         func_8011CC20
/* 01025C 8011E5BC AFA40018 */   sw         $a0, 0x18($sp)
/* 010260 8011E5C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010264 8011E5C4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010268 8011E5C8 03E00008 */  jr          $ra
/* 01026C 8011E5CC 00000000 */   nop

glabel func_8011E5D0 # 27
/* 010270 8011E5D0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010274 8011E5D4 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 010278 8011E5D8 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 01027C 8011E5DC 240E0001 */  addiu       $t6, $zero, 0x1
/* 010280 8011E5E0 3C01800B */  lui         $at, %hi(D_800B1A34)
/* 010284 8011E5E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010288 8011E5E8 AFA40018 */  sw          $a0, 0x18($sp)
/* 01028C 8011E5EC AC2E1A34 */  sw          $t6, %lo(D_800B1A34)($at)
/* 010290 8011E5F0 00002025 */  move        $a0, $zero
/* 010294 8011E5F4 24060001 */  addiu       $a2, $zero, 0x1
/* 010298 8011E5F8 0C00C4E0 */  jal         func_80031380
/* 01029C 8011E5FC 8DE50064 */   lw         $a1, 0x64($t7)
/* 0102A0 8011E600 0C047766 */  jal         func_8011DD98
/* 0102A4 8011E604 00000000 */   nop
/* 0102A8 8011E608 0C0026E4 */  jal         func_80009B90
/* 0102AC 8011E60C 2404000C */   addiu      $a0, $zero, 0xc
/* 0102B0 8011E610 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0102B4 8011E614 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0102B8 8011E618 03E00008 */  jr          $ra
/* 0102BC 8011E61C 00000000 */   nop

glabel func_8011E620 # 28
/* 0102C0 8011E620 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0102C4 8011E624 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 0102C8 8011E628 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 0102CC 8011E62C 240E0001 */  addiu       $t6, $zero, 0x1
/* 0102D0 8011E630 3C01800B */  lui         $at, %hi(D_800B1A34)
/* 0102D4 8011E634 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0102D8 8011E638 AFA40018 */  sw          $a0, 0x18($sp)
/* 0102DC 8011E63C AC2E1A34 */  sw          $t6, %lo(D_800B1A34)($at)
/* 0102E0 8011E640 00002025 */  move        $a0, $zero
/* 0102E4 8011E644 24060001 */  addiu       $a2, $zero, 0x1
/* 0102E8 8011E648 0C00C4E0 */  jal         func_80031380
/* 0102EC 8011E64C 8DE50064 */   lw         $a1, 0x64($t7)
/* 0102F0 8011E650 0C047766 */  jal         func_8011DD98
/* 0102F4 8011E654 00000000 */   nop
/* 0102F8 8011E658 8FA40018 */  lw          $a0, 0x18($sp)
/* 0102FC 8011E65C 0C04477F */  jal         func_80111DFC
/* 010300 8011E660 00002825 */   move       $a1, $zero
/* 010304 8011E664 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010308 8011E668 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01030C 8011E66C 03E00008 */  jr          $ra
/* 010310 8011E670 00000000 */   nop

glabel func_8011E674 # 29
/* 010314 8011E674 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010318 8011E678 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 01031C 8011E67C 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 010320 8011E680 240E0001 */  addiu       $t6, $zero, 0x1
/* 010324 8011E684 3C01800B */  lui         $at, %hi(D_800B1A34)
/* 010328 8011E688 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01032C 8011E68C AFA40018 */  sw          $a0, 0x18($sp)
/* 010330 8011E690 AC2E1A34 */  sw          $t6, %lo(D_800B1A34)($at)
/* 010334 8011E694 00002025 */  move        $a0, $zero
/* 010338 8011E698 24060001 */  addiu       $a2, $zero, 0x1
/* 01033C 8011E69C 0C00C4E0 */  jal         func_80031380
/* 010340 8011E6A0 8DE50064 */   lw         $a1, 0x64($t7)
/* 010344 8011E6A4 8FB80018 */  lw          $t8, 0x18($sp)
/* 010348 8011E6A8 3C01800A */  lui         $at, %hi(D_800A0A10)
/* 01034C 8011E6AC 0C047766 */  jal         func_8011DD98
/* 010350 8011E6B0 AC380A10 */   sw         $t8, %lo(D_800A0A10)($at)
/* 010354 8011E6B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010358 8011E6B8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01035C 8011E6BC 03E00008 */  jr          $ra
/* 010360 8011E6C0 00000000 */   nop

glabel func_8011E6C4 # 30
/* 010364 8011E6C4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010368 8011E6C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01036C 8011E6CC 0C00A21F */  jal         func_8002887C
/* 010370 8011E6D0 00000000 */   nop
/* 010374 8011E6D4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010378 8011E6D8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01037C 8011E6DC 03E00008 */  jr          $ra
/* 010380 8011E6E0 00000000 */   nop

glabel func_8011E6E4 # 31
/* 010384 8011E6E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010388 8011E6E8 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 01038C 8011E6EC 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 010390 8011E6F0 240E0001 */  addiu       $t6, $zero, 0x1
/* 010394 8011E6F4 3C01800B */  lui         $at, %hi(D_800B1A34)
/* 010398 8011E6F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01039C 8011E6FC AFA40018 */  sw          $a0, 0x18($sp)
/* 0103A0 8011E700 AC2E1A34 */  sw          $t6, %lo(D_800B1A34)($at)
/* 0103A4 8011E704 00002025 */  move        $a0, $zero
/* 0103A8 8011E708 24060001 */  addiu       $a2, $zero, 0x1
/* 0103AC 8011E70C 0C00C4E0 */  jal         func_80031380
/* 0103B0 8011E710 8DE50064 */   lw         $a1, 0x64($t7)
/* 0103B4 8011E714 0C047766 */  jal         func_8011DD98
/* 0103B8 8011E718 00000000 */   nop
/* 0103BC 8011E71C 0C0026E4 */  jal         func_80009B90
/* 0103C0 8011E720 24040006 */   addiu      $a0, $zero, 0x6
/* 0103C4 8011E724 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0103C8 8011E728 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0103CC 8011E72C 03E00008 */  jr          $ra
/* 0103D0 8011E730 00000000 */   nop

glabel func_8011E734 # 32
/* 0103D4 8011E734 3C018013 */  lui         $at, %hi(D_80136B30)
/* 0103D8 8011E738 D4246B30 */  ldc1        $f4, %lo(D_80136B30)($at)
/* 0103DC 8011E73C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0103E0 8011E740 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0103E4 8011E744 24060000 */  addiu       $a2, $zero, 0x0
/* 0103E8 8011E748 24070000 */  addiu       $a3, $zero, 0x0
/* 0103EC 8011E74C 0C00849C */  jal         func_80021270
/* 0103F0 8011E750 F7A40010 */   sdc1       $f4, 0x10($sp)
/* 0103F4 8011E754 3C013FF0 */  lui         $at, 0x3ff0
/* 0103F8 8011E758 44816800 */  mtc1        $at, $f13
/* 0103FC 8011E75C 44806000 */  mtc1        $zero, $f12
/* 010400 8011E760 0C0084C5 */  jal         func_80021314
/* 010404 8011E764 00000000 */   nop
/* 010408 8011E768 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01040C 8011E76C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 010410 8011E770 03E00008 */  jr          $ra
/* 010414 8011E774 00000000 */   nop

glabel func_8011E778 # 33
/* 010418 8011E778 3C058014 */  lui         $a1, %hi(D_801381E0)
/* 01041C 8011E77C 8CA581E0 */  lw          $a1, %lo(D_801381E0)($a1)
/* 010420 8011E780 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010424 8011E784 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010428 8011E788 10A00005 */  beqz        $a1, .L8011E7A0
/* 01042C 8011E78C AFA40018 */   sw         $a0, 0x18($sp)
/* 010430 8011E790 00A02025 */  move        $a0, $a1
/* 010434 8011E794 24060000 */  addiu       $a2, $zero, 0x0
/* 010438 8011E798 0C0079A4 */  jal         func_8001E690
/* 01043C 8011E79C 24070000 */   addiu      $a3, $zero, 0x0
.L8011E7A0:
/* 010440 8011E7A0 0C00789A */  jal         func_8001E268
/* 010444 8011E7A4 8FA40018 */   lw         $a0, 0x18($sp)
/* 010448 8011E7A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01044C 8011E7AC 3C018014 */  lui         $at, %hi(D_801381E0)
/* 010450 8011E7B0 AC2281E0 */  sw          $v0, %lo(D_801381E0)($at)
/* 010454 8011E7B4 03E00008 */  jr          $ra
/* 010458 8011E7B8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011E7BC # 34
/* 01045C 8011E7BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010460 8011E7C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010464 8011E7C4 0C007792 */  jal         func_8001DE48
/* 010468 8011E7C8 AFA40018 */   sw         $a0, 0x18($sp)
/* 01046C 8011E7CC 8FAE0018 */  lw          $t6, 0x18($sp)
/* 010470 8011E7D0 240F0002 */  addiu       $t7, $zero, 0x2
/* 010474 8011E7D4 24040009 */  addiu       $a0, $zero, 0x9
/* 010478 8011E7D8 0C00C155 */  jal         func_80030554
/* 01047C 8011E7DC 01EE2823 */   subu       $a1, $t7, $t6
/* 010480 8011E7E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010484 8011E7E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010488 8011E7E8 03E00008 */  jr          $ra
/* 01048C 8011E7EC 00000000 */   nop

glabel func_8011E7F0 # 35
/* 010490 8011E7F0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010494 8011E7F4 10800006 */  beqz        $a0, .L8011E810
/* 010498 8011E7F8 AFBF0014 */   sw         $ra, 0x14($sp)
/* 01049C 8011E7FC 24040008 */  addiu       $a0, $zero, 0x8
/* 0104A0 8011E800 0C00C155 */  jal         func_80030554
/* 0104A4 8011E804 24050001 */   addiu      $a1, $zero, 0x1
/* 0104A8 8011E808 10000005 */  b           .L8011E820
/* 0104AC 8011E80C 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011E810:
/* 0104B0 8011E810 24040008 */  addiu       $a0, $zero, 0x8
/* 0104B4 8011E814 0C00C155 */  jal         func_80030554
/* 0104B8 8011E818 00002825 */   move       $a1, $zero
/* 0104BC 8011E81C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011E820:
/* 0104C0 8011E820 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0104C4 8011E824 03E00008 */  jr          $ra
/* 0104C8 8011E828 00000000 */   nop

glabel func_8011E82C # 36
/* 0104CC 8011E82C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0104D0 8011E830 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0104D4 8011E834 0C045787 */  jal         func_80115E1C
/* 0104D8 8011E838 00000000 */   nop
/* 0104DC 8011E83C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0104E0 8011E840 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0104E4 8011E844 03E00008 */  jr          $ra
/* 0104E8 8011E848 00000000 */   nop

glabel func_8011E84C # 37
/* 0104EC 8011E84C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0104F0 8011E850 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0104F4 8011E854 00802825 */  move        $a1, $a0
/* 0104F8 8011E858 0C00C155 */  jal         func_80030554
/* 0104FC 8011E85C 24040011 */   addiu      $a0, $zero, 0x11
/* 010500 8011E860 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010504 8011E864 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010508 8011E868 03E00008 */  jr          $ra
/* 01050C 8011E86C 00000000 */   nop

glabel func_8011E870 # 38
/* 010510 8011E870 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010514 8011E874 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010518 8011E878 00802825 */  move        $a1, $a0
/* 01051C 8011E87C 0C00C155 */  jal         func_80030554
/* 010520 8011E880 2404000D */   addiu      $a0, $zero, 0xd
/* 010524 8011E884 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010528 8011E888 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01052C 8011E88C 03E00008 */  jr          $ra
/* 010530 8011E890 00000000 */   nop

glabel func_8011E894 # 39
/* 010534 8011E894 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010538 8011E898 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01053C 8011E89C 00802825 */  move        $a1, $a0
/* 010540 8011E8A0 0C00C155 */  jal         func_80030554
/* 010544 8011E8A4 2404000E */   addiu      $a0, $zero, 0xe
/* 010548 8011E8A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01054C 8011E8AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010550 8011E8B0 03E00008 */  jr          $ra
/* 010554 8011E8B4 00000000 */   nop

glabel func_8011E8B8 # 40
/* 010558 8011E8B8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01055C 8011E8BC 10800006 */  beqz        $a0, .L8011E8D8
/* 010560 8011E8C0 AFBF0014 */   sw         $ra, 0x14($sp)
/* 010564 8011E8C4 24040007 */  addiu       $a0, $zero, 0x7
/* 010568 8011E8C8 0C00C155 */  jal         func_80030554
/* 01056C 8011E8CC 24050001 */   addiu      $a1, $zero, 0x1
/* 010570 8011E8D0 10000005 */  b           .L8011E8E8
/* 010574 8011E8D4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8011E8D8:
/* 010578 8011E8D8 24040007 */  addiu       $a0, $zero, 0x7
/* 01057C 8011E8DC 0C00C155 */  jal         func_80030554
/* 010580 8011E8E0 00002825 */   move       $a1, $zero
/* 010584 8011E8E4 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011E8E8:
/* 010588 8011E8E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01058C 8011E8EC 03E00008 */  jr          $ra
/* 010590 8011E8F0 00000000 */   nop

glabel func_8011E8F4 # 41
/* 010594 8011E8F4 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 010598 8011E8F8 3C0F8013 */  lui         $t7, %hi(D_8012E608)
/* 01059C 8011E8FC AFBF001C */  sw          $ra, 0x1c($sp)
/* 0105A0 8011E900 25EFE608 */  addiu       $t7, $t7, %lo(D_8012E608)
/* 0105A4 8011E904 8DE10000 */  lw          $at, 0x0($t7)
/* 0105A8 8011E908 8DEA0004 */  lw          $t2, 0x4($t7)
/* 0105AC 8011E90C 27AE0038 */  addiu       $t6, $sp, 0x38
/* 0105B0 8011E910 ADC10000 */  sw          $at, 0x0($t6)
/* 0105B4 8011E914 ADCA0004 */  sw          $t2, 0x4($t6)
/* 0105B8 8011E918 8DEA000C */  lw          $t2, 0xc($t7)
/* 0105BC 8011E91C 8DE10008 */  lw          $at, 0x8($t7)
/* 0105C0 8011E920 ADCA000C */  sw          $t2, 0xc($t6)
/* 0105C4 8011E924 ADC10008 */  sw          $at, 0x8($t6)
/* 0105C8 8011E928 8DE10010 */  lw          $at, 0x10($t7)
/* 0105CC 8011E92C 8DEA0014 */  lw          $t2, 0x14($t7)
/* 0105D0 8011E930 ADC10010 */  sw          $at, 0x10($t6)
/* 0105D4 8011E934 0C00068C */  jal         func_80001A30
/* 0105D8 8011E938 ADCA0014 */   sw         $t2, 0x14($t6)
/* 0105DC 8011E93C 24040002 */  addiu       $a0, $zero, 0x2
/* 0105E0 8011E940 1044000A */  beq         $v0, $a0, .L8011E96C
/* 0105E4 8011E944 3C03800B */   lui        $v1, %hi(D_800B2C90)
/* 0105E8 8011E948 24010003 */  addiu       $at, $zero, 0x3
/* 0105EC 8011E94C 1041001B */  beq         $v0, $at, .L8011E9BC
/* 0105F0 8011E950 24010004 */   addiu      $at, $zero, 0x4
/* 0105F4 8011E954 10410019 */  beq         $v0, $at, .L8011E9BC
/* 0105F8 8011E958 24010005 */   addiu      $at, $zero, 0x5
/* 0105FC 8011E95C 10410017 */  beq         $v0, $at, .L8011E9BC
/* 010600 8011E960 3C03800B */   lui        $v1, %hi(D_800B2C90)
/* 010604 8011E964 10000029 */  b           .L8011EA0C
/* 010608 8011E968 8C632C90 */   lw         $v1, %lo(D_800B2C90)($v1)
.L8011E96C:
/* 01060C 8011E96C 8C632C90 */  lw          $v1, %lo(D_800B2C90)($v1)
/* 010610 8011E970 24010001 */  addiu       $at, $zero, 0x1
/* 010614 8011E974 10610005 */  beq         $v1, $at, .L8011E98C
/* 010618 8011E978 00601025 */   move       $v0, $v1
/* 01061C 8011E97C 10440009 */  beq         $v0, $a0, .L8011E9A4
/* 010620 8011E980 00000000 */   nop
/* 010624 8011E984 10000022 */  b           .L8011EA10
/* 010628 8011E988 24010001 */   addiu      $at, $zero, 0x1
.L8011E98C:
/* 01062C 8011E98C 3C04800A */  lui         $a0, %hi(D_8009FB40)
/* 010630 8011E990 2484FB40 */  addiu       $a0, $a0, %lo(D_8009FB40)
/* 010634 8011E994 908B0000 */  lbu         $t3, 0x0($a0)
/* 010638 8011E998 356C0001 */  ori         $t4, $t3, 0x1
/* 01063C 8011E99C 1000001B */  b           .L8011EA0C
/* 010640 8011E9A0 A08C0000 */   sb         $t4, 0x0($a0)
.L8011E9A4:
/* 010644 8011E9A4 3C04800A */  lui         $a0, %hi(D_8009FB40)
/* 010648 8011E9A8 2484FB40 */  addiu       $a0, $a0, %lo(D_8009FB40)
/* 01064C 8011E9AC 908D0000 */  lbu         $t5, 0x0($a0)
/* 010650 8011E9B0 35B90002 */  ori         $t9, $t5, 0x2
/* 010654 8011E9B4 10000015 */  b           .L8011EA0C
/* 010658 8011E9B8 A0990000 */   sb         $t9, 0x0($a0)
.L8011E9BC:
/* 01065C 8011E9BC 3C03800B */  lui         $v1, %hi(D_800B2C90)
/* 010660 8011E9C0 8C632C90 */  lw          $v1, %lo(D_800B2C90)($v1)
/* 010664 8011E9C4 24010001 */  addiu       $at, $zero, 0x1
/* 010668 8011E9C8 10610005 */  beq         $v1, $at, .L8011E9E0
/* 01066C 8011E9CC 00601025 */   move       $v0, $v1
/* 010670 8011E9D0 10440009 */  beq         $v0, $a0, .L8011E9F8
/* 010674 8011E9D4 00000000 */   nop
/* 010678 8011E9D8 1000000D */  b           .L8011EA10
/* 01067C 8011E9DC 24010001 */   addiu      $at, $zero, 0x1
.L8011E9E0:
/* 010680 8011E9E0 3C04800A */  lui         $a0, %hi(D_8009FB40)
/* 010684 8011E9E4 2484FB40 */  addiu       $a0, $a0, %lo(D_8009FB40)
/* 010688 8011E9E8 90980000 */  lbu         $t8, 0x0($a0)
/* 01068C 8011E9EC 330EFFFE */  andi        $t6, $t8, 0xfffe
/* 010690 8011E9F0 10000006 */  b           .L8011EA0C
/* 010694 8011E9F4 A08E0000 */   sb         $t6, 0x0($a0)
.L8011E9F8:
/* 010698 8011E9F8 3C04800A */  lui         $a0, %hi(D_8009FB40)
/* 01069C 8011E9FC 2484FB40 */  addiu       $a0, $a0, %lo(D_8009FB40)
/* 0106A0 8011EA00 908F0000 */  lbu         $t7, 0x0($a0)
/* 0106A4 8011EA04 31EAFFFD */  andi        $t2, $t7, 0xfffd
/* 0106A8 8011EA08 A08A0000 */  sb          $t2, 0x0($a0)
.L8011EA0C:
/* 0106AC 8011EA0C 24010001 */  addiu       $at, $zero, 0x1
.L8011EA10:
/* 0106B0 8011EA10 14610003 */  bne         $v1, $at, .L8011EA20
/* 0106B4 8011EA14 3C068013 */   lui        $a2, %hi(D_80135ABC)
/* 0106B8 8011EA18 10000003 */  b           .L8011EA28
/* 0106BC 8011EA1C 24C65ABC */   addiu      $a2, $a2, %lo(D_80135ABC)
.L8011EA20:
/* 0106C0 8011EA20 3C068013 */  lui         $a2, %hi(D_80135AC0)
/* 0106C4 8011EA24 24C65AC0 */  addiu       $a2, $a2, %lo(D_80135AC0)
.L8011EA28:
/* 0106C8 8011EA28 0C00068C */  jal         func_80001A30
/* 0106CC 8011EA2C AFA60028 */   sw         $a2, 0x28($sp)
/* 0106D0 8011EA30 3C04800A */  lui         $a0, %hi(D_8009FB40)
/* 0106D4 8011EA34 2484FB40 */  addiu       $a0, $a0, %lo(D_8009FB40)
/* 0106D8 8011EA38 90830000 */  lbu         $v1, 0x0($a0)
/* 0106DC 8011EA3C 8FA60028 */  lw          $a2, 0x28($sp)
/* 0106E0 8011EA40 00404825 */  move        $t1, $v0
/* 0106E4 8011EA44 306B0001 */  andi        $t3, $v1, 0x1
/* 0106E8 8011EA48 11600004 */  beqz        $t3, .L8011EA5C
/* 0106EC 8011EA4C 306C0002 */   andi       $t4, $v1, 0x2
/* 0106F0 8011EA50 3C088013 */  lui         $t0, %hi(D_80135AC4)
/* 0106F4 8011EA54 10000003 */  b           .L8011EA64
/* 0106F8 8011EA58 25085AC4 */   addiu      $t0, $t0, %lo(D_80135AC4)
.L8011EA5C:
/* 0106FC 8011EA5C 3C088013 */  lui         $t0, %hi(D_80135AC8)
/* 010700 8011EA60 25085AC8 */  addiu       $t0, $t0, %lo(D_80135AC8)
.L8011EA64:
/* 010704 8011EA64 11800004 */  beqz        $t4, .L8011EA78
/* 010708 8011EA68 27A40050 */   addiu      $a0, $sp, 0x50
/* 01070C 8011EA6C 3C028013 */  lui         $v0, %hi(D_80135ACC)
/* 010710 8011EA70 10000003 */  b           .L8011EA80
/* 010714 8011EA74 24425ACC */   addiu      $v0, $v0, %lo(D_80135ACC)
.L8011EA78:
/* 010718 8011EA78 3C028013 */  lui         $v0, %hi(D_80135AD0)
/* 01071C 8011EA7C 24425AD0 */  addiu       $v0, $v0, %lo(D_80135AD0)
.L8011EA80:
/* 010720 8011EA80 00096880 */  sll         $t5, $t1, 2
/* 010724 8011EA84 03AD3821 */  addu        $a3, $sp, $t5
/* 010728 8011EA88 8CE70038 */  lw          $a3, 0x38($a3)
/* 01072C 8011EA8C 3C058013 */  lui         $a1, %hi(D_80135A9C)
/* 010730 8011EA90 24A55A9C */  addiu       $a1, $a1, %lo(D_80135A9C)
/* 010734 8011EA94 AFA20014 */  sw          $v0, 0x14($sp)
/* 010738 8011EA98 0C014589 */  jal         func_80051624
/* 01073C 8011EA9C AFA80010 */   sw         $t0, 0x10($sp)
/* 010740 8011EAA0 0C047339 */  jal         func_8011CCE4
/* 010744 8011EAA4 27A40050 */   addiu      $a0, $sp, 0x50
/* 010748 8011EAA8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01074C 8011EAAC 27BD0080 */  addiu       $sp, $sp, 0x80
/* 010750 8011EAB0 03E00008 */  jr          $ra
/* 010754 8011EAB4 00000000 */   nop

glabel func_8011EAB8 # 42
/* 010758 8011EAB8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01075C 8011EABC 2C810006 */  sltiu       $at, $a0, 0x6
/* 010760 8011EAC0 10200029 */  beqz        $at, .L8011EB68
/* 010764 8011EAC4 AFBF0014 */   sw         $ra, 0x14($sp)
/* 010768 8011EAC8 00047080 */  sll         $t6, $a0, 2
/* 01076C 8011EACC 3C018013 */  lui         $at, %hi(jtbl_80136B38)
/* 010770 8011EAD0 002E0821 */  addu        $at, $at, $t6
/* 010774 8011EAD4 8C2E6B38 */  lw          $t6, %lo(jtbl_80136B38)($at)
/* 010778 8011EAD8 01C00008 */  jr          $t6
/* 01077C 8011EADC 00000000 */   nop
glabel L8011EAE0
/* 010780 8011EAE0 3C02800B */  lui         $v0, %hi(D_800B2C90)
/* 010784 8011EAE4 24422C90 */  addiu       $v0, $v0, %lo(D_800B2C90)
/* 010788 8011EAE8 24040001 */  addiu       $a0, $zero, 0x1
/* 01078C 8011EAEC 0C00C1B5 */  jal         func_800306D4
/* 010790 8011EAF0 AC440000 */   sw         $a0, 0x0($v0)
/* 010794 8011EAF4 1000001D */  b           .L8011EB6C
/* 010798 8011EAF8 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8011EAFC
/* 01079C 8011EAFC 3C02800B */  lui         $v0, %hi(D_800B2C90)
/* 0107A0 8011EB00 24422C90 */  addiu       $v0, $v0, %lo(D_800B2C90)
/* 0107A4 8011EB04 24040002 */  addiu       $a0, $zero, 0x2
/* 0107A8 8011EB08 0C00C1B5 */  jal         func_800306D4
/* 0107AC 8011EB0C AC440000 */   sw         $a0, 0x0($v0)
/* 0107B0 8011EB10 10000016 */  b           .L8011EB6C
/* 0107B4 8011EB14 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8011EB18
/* 0107B8 8011EB18 3C02800B */  lui         $v0, %hi(D_800B2C90)
/* 0107BC 8011EB1C 24422C90 */  addiu       $v0, $v0, %lo(D_800B2C90)
/* 0107C0 8011EB20 24040001 */  addiu       $a0, $zero, 0x1
/* 0107C4 8011EB24 0C00C195 */  jal         func_80030654
/* 0107C8 8011EB28 AC440000 */   sw         $a0, 0x0($v0)
/* 0107CC 8011EB2C 1000000F */  b           .L8011EB6C
/* 0107D0 8011EB30 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8011EB34
/* 0107D4 8011EB34 3C02800B */  lui         $v0, %hi(D_800B2C90)
/* 0107D8 8011EB38 24422C90 */  addiu       $v0, $v0, %lo(D_800B2C90)
/* 0107DC 8011EB3C 24040002 */  addiu       $a0, $zero, 0x2
/* 0107E0 8011EB40 0C00C195 */  jal         func_80030654
/* 0107E4 8011EB44 AC440000 */   sw         $a0, 0x0($v0)
/* 0107E8 8011EB48 10000008 */  b           .L8011EB6C
/* 0107EC 8011EB4C 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8011EB50
/* 0107F0 8011EB50 0C00C187 */  jal         func_8003061C
/* 0107F4 8011EB54 00000000 */   nop
/* 0107F8 8011EB58 10000004 */  b           .L8011EB6C
/* 0107FC 8011EB5C 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L8011EB60
/* 010800 8011EB60 0C00C179 */  jal         func_800305E4
/* 010804 8011EB64 00000000 */   nop
.L8011EB68:
/* 010808 8011EB68 8FBF0014 */  lw          $ra, 0x14($sp)
.L8011EB6C:
/* 01080C 8011EB6C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010810 8011EB70 03E00008 */  jr          $ra
/* 010814 8011EB74 00000000 */   nop

glabel func_8011EB78 # 43
/* 010818 8011EB78 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01081C 8011EB7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 010820 8011EB80 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 010824 8011EB84 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 010828 8011EB88 2405001C */  addiu       $a1, $zero, 0x1c
/* 01082C 8011EB8C 0C00DA76 */  jal         func_800369D8
/* 010830 8011EB90 240606C4 */   addiu      $a2, $zero, 0x6c4
/* 010834 8011EB94 AFA2001C */  sw          $v0, 0x1c($sp)
/* 010838 8011EB98 00402025 */  move        $a0, $v0
/* 01083C 8011EB9C 0C013C58 */  jal         func_8004F160
/* 010840 8011EBA0 2405001C */   addiu      $a1, $zero, 0x1c
/* 010844 8011EBA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010848 8011EBA8 8FA2001C */  lw          $v0, 0x1c($sp)
/* 01084C 8011EBAC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 010850 8011EBB0 03E00008 */  jr          $ra
/* 010854 8011EBB4 00000000 */   nop

glabel func_8011EBB8 # 44
/* 010858 8011EBB8 8C820004 */  lw          $v0, 0x4($a0)
/* 01085C 8011EBBC 54400004 */  bnel        $v0, $zero, .L8011EBD0
/* 010860 8011EBC0 8C440014 */   lw         $a0, 0x14($v0)
/* 010864 8011EBC4 1000000A */  b           .L8011EBF0
/* 010868 8011EBC8 AC850004 */   sw         $a1, 0x4($a0)
/* 01086C 8011EBCC 8C440014 */  lw          $a0, 0x14($v0)
.L8011EBD0:
/* 010870 8011EBD0 00401825 */  move        $v1, $v0
/* 010874 8011EBD4 50800006 */  beql        $a0, $zero, .L8011EBF0
/* 010878 8011EBD8 AC650014 */   sw         $a1, 0x14($v1)
/* 01087C 8011EBDC 00801825 */  move        $v1, $a0
.L8011EBE0:
/* 010880 8011EBE0 8C840014 */  lw          $a0, 0x14($a0)
/* 010884 8011EBE4 5480FFFE */  bnel        $a0, $zero, .L8011EBE0
/* 010888 8011EBE8 00801825 */   move       $v1, $a0
/* 01088C 8011EBEC AC650014 */  sw          $a1, 0x14($v1)
.L8011EBF0:
/* 010890 8011EBF0 03E00008 */  jr          $ra
/* 010894 8011EBF4 ACA00014 */   sw         $zero, 0x14($a1)

glabel func_8011EBF8 # 45
/* 010898 8011EBF8 03E00008 */  jr          $ra
/* 01089C 8011EBFC 00000000 */   nop

glabel func_8011EC00 # 46
/* 0108A0 8011EC00 03E00008 */  jr          $ra
/* 0108A4 8011EC04 00000000 */   nop

glabel func_8011EC08 # 47
/* 0108A8 8011EC08 03E00008 */  jr          $ra
/* 0108AC 8011EC0C 00000000 */   nop

glabel func_8011EC10 # 48
/* 0108B0 8011EC10 03E00008 */  jr          $ra
/* 0108B4 8011EC14 00000000 */   nop

glabel func_8011EC18 # 49
/* 0108B8 8011EC18 03E00008 */  jr          $ra
/* 0108BC 8011EC1C 00000000 */   nop

glabel func_8011EC20 # 50
/* 0108C0 8011EC20 03E00008 */  jr          $ra
/* 0108C4 8011EC24 00000000 */   nop

glabel func_8011EC28 # 51
/* 0108C8 8011EC28 03E00008 */  jr          $ra
/* 0108CC 8011EC2C 00000000 */   nop

glabel func_8011EC30 # 52
/* 0108D0 8011EC30 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0108D4 8011EC34 3C018013 */  lui         $at, %hi(D_8012E874)
/* 0108D8 8011EC38 AFB30024 */  sw          $s3, 0x24($sp)
/* 0108DC 8011EC3C AFB20020 */  sw          $s2, 0x20($sp)
/* 0108E0 8011EC40 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0108E4 8011EC44 AC20E874 */  sw          $zero, %lo(D_8012E874)($at)
/* 0108E8 8011EC48 AC20E87C */  sw          $zero, %lo(D_8012E87C)($at)
/* 0108EC 8011EC4C AFB40028 */  sw          $s4, 0x28($sp)
/* 0108F0 8011EC50 AFB00018 */  sw          $s0, 0x18($sp)
/* 0108F4 8011EC54 3C018013 */  lui         $at, %hi(D_8012E880)
/* 0108F8 8011EC58 3C118013 */  lui         $s1, %hi(D_8012F540)
/* 0108FC 8011EC5C 3C128012 */  lui         $s2, %hi(func_8011E734)
/* 010900 8011EC60 3C138013 */  lui         $s3, %hi(D_8012E870)
/* 010904 8011EC64 AFBF002C */  sw          $ra, 0x2c($sp)
/* 010908 8011EC68 AC20E880 */  sw          $zero, %lo(D_8012E880)($at)
/* 01090C 8011EC6C 2673E870 */  addiu       $s3, $s3, %lo(D_8012E870)
/* 010910 8011EC70 2652E734 */  addiu       $s2, $s2, %lo(func_8011E734)
/* 010914 8011EC74 2631F540 */  addiu       $s1, $s1, %lo(D_8012F540)
/* 010918 8011EC78 00008025 */  move        $s0, $zero
/* 01091C 8011EC7C 2414002D */  addiu       $s4, $zero, 0x2d
.L8011EC80:
/* 010920 8011EC80 0C047ADE */  jal         func_8011EB78
/* 010924 8011EC84 00000000 */   nop
/* 010928 8011EC88 8E2E0000 */  lw          $t6, 0x0($s1)
/* 01092C 8011EC8C AC500008 */  sw          $s0, 0x8($v0)
/* 010930 8011EC90 AC520004 */  sw          $s2, 0x4($v0)
/* 010934 8011EC94 02602025 */  move        $a0, $s3
/* 010938 8011EC98 00402825 */  move        $a1, $v0
/* 01093C 8011EC9C 0C047AEE */  jal         func_8011EBB8
/* 010940 8011ECA0 AC4E0000 */   sw         $t6, 0x0($v0)
/* 010944 8011ECA4 26100001 */  addiu       $s0, $s0, 0x1
/* 010948 8011ECA8 1614FFF5 */  bne         $s0, $s4, .L8011EC80
/* 01094C 8011ECAC 26310004 */   addiu      $s1, $s1, 0x4
/* 010950 8011ECB0 0C04732E */  jal         func_8011CCB8
/* 010954 8011ECB4 02602025 */   move       $a0, $s3
/* 010958 8011ECB8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01095C 8011ECBC 3C028013 */  lui         $v0, %hi(D_8012E890)
/* 010960 8011ECC0 8FB00018 */  lw          $s0, 0x18($sp)
/* 010964 8011ECC4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 010968 8011ECC8 8FB20020 */  lw          $s2, 0x20($sp)
/* 01096C 8011ECCC 8FB30024 */  lw          $s3, 0x24($sp)
/* 010970 8011ECD0 8FB40028 */  lw          $s4, 0x28($sp)
/* 010974 8011ECD4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 010978 8011ECD8 03E00008 */  jr          $ra
/* 01097C 8011ECDC 2442E890 */   addiu      $v0, $v0, %lo(D_8012E890)

glabel func_8011ECE0 # 53
/* 010980 8011ECE0 27BDFC98 */  addiu       $sp, $sp, -0x368
/* 010984 8011ECE4 3C0F8013 */  lui         $t7, %hi(D_8012E8AC)
/* 010988 8011ECE8 25EFE8AC */  addiu       $t7, $t7, %lo(D_8012E8AC)
/* 01098C 8011ECEC AFBF002C */  sw          $ra, 0x2c($sp)
/* 010990 8011ECF0 AFB40028 */  sw          $s4, 0x28($sp)
/* 010994 8011ECF4 AFB30024 */  sw          $s3, 0x24($sp)
/* 010998 8011ECF8 AFB20020 */  sw          $s2, 0x20($sp)
/* 01099C 8011ECFC AFB1001C */  sw          $s1, 0x1c($sp)
/* 0109A0 8011ED00 AFB00018 */  sw          $s0, 0x18($sp)
/* 0109A4 8011ED04 25E80318 */  addiu       $t0, $t7, 0x318
/* 0109A8 8011ED08 27AE003C */  addiu       $t6, $sp, 0x3c
.L8011ED0C:
/* 0109AC 8011ED0C 8DE10000 */  lw          $at, 0x0($t7)
/* 0109B0 8011ED10 25EF000C */  addiu       $t7, $t7, 0xc
/* 0109B4 8011ED14 25CE000C */  addiu       $t6, $t6, 0xc
/* 0109B8 8011ED18 ADC1FFF4 */  sw          $at, -0xc($t6)
/* 0109BC 8011ED1C 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 0109C0 8011ED20 ADC1FFF8 */  sw          $at, -0x8($t6)
/* 0109C4 8011ED24 8DE1FFFC */  lw          $at, -0x4($t7)
/* 0109C8 8011ED28 15E8FFF8 */  bne         $t7, $t0, .L8011ED0C
/* 0109CC 8011ED2C ADC1FFFC */   sw         $at, -0x4($t6)
/* 0109D0 8011ED30 8DE10000 */  lw          $at, 0x0($t7)
/* 0109D4 8011ED34 8DE80004 */  lw          $t0, 0x4($t7)
/* 0109D8 8011ED38 3C128012 */  lui         $s2, %hi(func_8011E778)
/* 0109DC 8011ED3C ADC10000 */  sw          $at, 0x0($t6)
/* 0109E0 8011ED40 3C018013 */  lui         $at, %hi(D_8012EBD0)
/* 0109E4 8011ED44 ADC80004 */  sw          $t0, 0x4($t6)
/* 0109E8 8011ED48 3C138013 */  lui         $s3, %hi(D_8012EBCC)
/* 0109EC 8011ED4C AC20EBD0 */  sw          $zero, %lo(D_8012EBD0)($at)
/* 0109F0 8011ED50 AC20EBD8 */  sw          $zero, %lo(D_8012EBD8)($at)
/* 0109F4 8011ED54 2673EBCC */  addiu       $s3, $s3, %lo(D_8012EBCC)
/* 0109F8 8011ED58 2652E778 */  addiu       $s2, $s2, %lo(func_8011E778)
/* 0109FC 8011ED5C 00008025 */  move        $s0, $zero
/* 010A00 8011ED60 27B1003C */  addiu       $s1, $sp, 0x3c
/* 010A04 8011ED64 241400C8 */  addiu       $s4, $zero, 0xc8
.L8011ED68:
/* 010A08 8011ED68 0C047ADE */  jal         func_8011EB78
/* 010A0C 8011ED6C 00000000 */   nop
/* 010A10 8011ED70 8E290000 */  lw          $t1, 0x0($s1)
/* 010A14 8011ED74 AC500008 */  sw          $s0, 0x8($v0)
/* 010A18 8011ED78 AC520004 */  sw          $s2, 0x4($v0)
/* 010A1C 8011ED7C 02602025 */  move        $a0, $s3
/* 010A20 8011ED80 00402825 */  move        $a1, $v0
/* 010A24 8011ED84 0C047AEE */  jal         func_8011EBB8
/* 010A28 8011ED88 AC490000 */   sw         $t1, 0x0($v0)
/* 010A2C 8011ED8C 26100001 */  addiu       $s0, $s0, 0x1
/* 010A30 8011ED90 1614FFF5 */  bne         $s0, $s4, .L8011ED68
/* 010A34 8011ED94 26310004 */   addiu      $s1, $s1, 0x4
/* 010A38 8011ED98 0C04732E */  jal         func_8011CCB8
/* 010A3C 8011ED9C 02602025 */   move       $a0, $s3
/* 010A40 8011EDA0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 010A44 8011EDA4 3C028013 */  lui         $v0, %hi(D_8012EBEC)
/* 010A48 8011EDA8 8FB00018 */  lw          $s0, 0x18($sp)
/* 010A4C 8011EDAC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 010A50 8011EDB0 8FB20020 */  lw          $s2, 0x20($sp)
/* 010A54 8011EDB4 8FB30024 */  lw          $s3, 0x24($sp)
/* 010A58 8011EDB8 8FB40028 */  lw          $s4, 0x28($sp)
/* 010A5C 8011EDBC 27BD0368 */  addiu       $sp, $sp, 0x368
/* 010A60 8011EDC0 03E00008 */  jr          $ra
/* 010A64 8011EDC4 2442EBEC */   addiu      $v0, $v0, %lo(D_8012EBEC)

glabel func_8011EDC8 # 54
/* 010A68 8011EDC8 3C018013 */  lui         $at, %hi(D_8012EC0C)
/* 010A6C 8011EDCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010A70 8011EDD0 AC20EC0C */  sw          $zero, %lo(D_8012EC0C)($at)
/* 010A74 8011EDD4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010A78 8011EDD8 3C018013 */  lui         $at, %hi(D_8012EC14)
/* 010A7C 8011EDDC 0C047B0C */  jal         func_8011EC30
/* 010A80 8011EDE0 AC20EC14 */   sw         $zero, %lo(D_8012EC14)($at)
/* 010A84 8011EDE4 3C048013 */  lui         $a0, %hi(D_8012EC08)
/* 010A88 8011EDE8 2484EC08 */  addiu       $a0, $a0, %lo(D_8012EC08)
/* 010A8C 8011EDEC 0C047AEE */  jal         func_8011EBB8
/* 010A90 8011EDF0 00402825 */   move       $a1, $v0
/* 010A94 8011EDF4 0C047B38 */  jal         func_8011ECE0
/* 010A98 8011EDF8 00000000 */   nop
/* 010A9C 8011EDFC 3C048013 */  lui         $a0, %hi(D_8012EC08)
/* 010AA0 8011EE00 2484EC08 */  addiu       $a0, $a0, %lo(D_8012EC08)
/* 010AA4 8011EE04 0C047AEE */  jal         func_8011EBB8
/* 010AA8 8011EE08 00402825 */   move       $a1, $v0
/* 010AAC 8011EE0C 3C048013 */  lui         $a0, %hi(D_8012EC08)
/* 010AB0 8011EE10 0C04732E */  jal         func_8011CCB8
/* 010AB4 8011EE14 2484EC08 */   addiu      $a0, $a0, %lo(D_8012EC08)
/* 010AB8 8011EE18 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010ABC 8011EE1C 3C028013 */  lui         $v0, %hi(D_8012EC28)
/* 010AC0 8011EE20 2442EC28 */  addiu       $v0, $v0, %lo(D_8012EC28)
/* 010AC4 8011EE24 03E00008 */  jr          $ra
/* 010AC8 8011EE28 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011EE2C # 55
/* 010ACC 8011EE2C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010AD0 8011EE30 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010AD4 8011EE34 AFA40018 */  sw          $a0, 0x18($sp)
/* 010AD8 8011EE38 0C00C14B */  jal         func_8003052C
/* 010ADC 8011EE3C 24040007 */   addiu      $a0, $zero, 0x7
/* 010AE0 8011EE40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010AE4 8011EE44 3C038013 */  lui         $v1, %hi(D_8012E460)
/* 010AE8 8011EE48 2463E460 */  addiu       $v1, $v1, %lo(D_8012E460)
/* 010AEC 8011EE4C AC620010 */  sw          $v0, 0x10($v1)
/* 010AF0 8011EE50 AC62000C */  sw          $v0, 0xc($v1)
/* 010AF4 8011EE54 03E00008 */  jr          $ra
/* 010AF8 8011EE58 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011EE5C # 56
/* 010AFC 8011EE5C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010B00 8011EE60 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010B04 8011EE64 AFA40018 */  sw          $a0, 0x18($sp)
/* 010B08 8011EE68 0C00C14B */  jal         func_8003052C
/* 010B0C 8011EE6C 24040009 */   addiu      $a0, $zero, 0x9
/* 010B10 8011EE70 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010B14 8011EE74 3C038013 */  lui         $v1, %hi(D_8012E408)
/* 010B18 8011EE78 2463E408 */  addiu       $v1, $v1, %lo(D_8012E408)
/* 010B1C 8011EE7C AC620010 */  sw          $v0, 0x10($v1)
/* 010B20 8011EE80 AC62000C */  sw          $v0, 0xc($v1)
/* 010B24 8011EE84 03E00008 */  jr          $ra
/* 010B28 8011EE88 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8011EE8C # 57
/* 010B2C 8011EE8C 03E00008 */  jr          $ra
/* 010B30 8011EE90 00000000 */   nop

glabel func_8011EE94 # 58
/* 010B34 8011EE94 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 010B38 8011EE98 AFBF001C */  sw          $ra, 0x1c($sp)
/* 010B3C 8011EE9C 3C048014 */  lui         $a0, %hi(D_801381E8)
/* 010B40 8011EEA0 AFB00018 */  sw          $s0, 0x18($sp)
/* 010B44 8011EEA4 248481E8 */  addiu       $a0, $a0, %lo(D_801381E8)
/* 010B48 8011EEA8 0C013C58 */  jal         func_8004F160
/* 010B4C 8011EEAC 24050030 */   addiu      $a1, $zero, 0x30
/* 010B50 8011EEB0 3C108007 */  lui         $s0, %hi(D_80070B58)
/* 010B54 8011EEB4 26100B58 */  addiu       $s0, $s0, %lo(D_80070B58)
/* 010B58 8011EEB8 3C048014 */  lui         $a0, %hi(D_80138248)
/* 010B5C 8011EEBC 3C058013 */  lui         $a1, %hi(D_80136B0C)
/* 010B60 8011EEC0 24A56B0C */  addiu       $a1, $a1, %lo(D_80136B0C)
/* 010B64 8011EEC4 24848248 */  addiu       $a0, $a0, %lo(D_80138248)
/* 010B68 8011EEC8 0C00F1B7 */  jal         func_8003C6DC
/* 010B6C 8011EECC 02003025 */   move       $a2, $s0
/* 010B70 8011EED0 3C048014 */  lui         $a0, %hi(D_8013824C)
/* 010B74 8011EED4 3C058013 */  lui         $a1, %hi(D_80136B10)
/* 010B78 8011EED8 24A56B10 */  addiu       $a1, $a1, %lo(D_80136B10)
/* 010B7C 8011EEDC 2484824C */  addiu       $a0, $a0, %lo(D_8013824C)
/* 010B80 8011EEE0 0C00F1B7 */  jal         func_8003C6DC
/* 010B84 8011EEE4 02003025 */   move       $a2, $s0
/* 010B88 8011EEE8 3C018014 */  lui         $at, %hi(D_801382B0)
/* 010B8C 8011EEEC AC2082B0 */  sw          $zero, %lo(D_801382B0)($at)
/* 010B90 8011EEF0 3C018014 */  lui         $at, %hi(D_801382B4)
/* 010B94 8011EEF4 3C048014 */  lui         $a0, %hi(D_80138250)
/* 010B98 8011EEF8 AC2082B4 */  sw          $zero, %lo(D_801382B4)($at)
/* 010B9C 8011EEFC 24848250 */  addiu       $a0, $a0, %lo(D_80138250)
/* 010BA0 8011EF00 0C013C58 */  jal         func_8004F160
/* 010BA4 8011EF04 24050030 */   addiu      $a1, $zero, 0x30
/* 010BA8 8011EF08 3C048014 */  lui         $a0, %hi(D_80138280)
/* 010BAC 8011EF0C 24848280 */  addiu       $a0, $a0, %lo(D_80138280)
/* 010BB0 8011EF10 0C013C58 */  jal         func_8004F160
/* 010BB4 8011EF14 24050030 */   addiu      $a1, $zero, 0x30
/* 010BB8 8011EF18 3C048013 */  lui         $a0, %hi(D_8012E180)
/* 010BBC 8011EF1C 0C001B92 */  jal         func_80006E48
/* 010BC0 8011EF20 2484E180 */   addiu      $a0, $a0, %lo(D_8012E180)
/* 010BC4 8011EF24 00408025 */  move        $s0, $v0
/* 010BC8 8011EF28 00402025 */  move        $a0, $v0
/* 010BCC 8011EF2C 0C001DF8 */  jal         func_800077E0
/* 010BD0 8011EF30 24052002 */   addiu      $a1, $zero, 0x2002
/* 010BD4 8011EF34 0C001C1B */  jal         func_8000706C
/* 010BD8 8011EF38 02002025 */   move       $a0, $s0
/* 010BDC 8011EF3C 3C038013 */  lui         $v1, %hi(D_80137EE4)
/* 010BE0 8011EF40 24637EE4 */  addiu       $v1, $v1, %lo(D_80137EE4)
/* 010BE4 8011EF44 8C6E0000 */  lw          $t6, 0x0($v1)
/* 010BE8 8011EF48 3C014014 */  lui         $at, 0x4014
/* 010BEC 8011EF4C 44810800 */  mtc1        $at, $f1
/* 010BF0 8011EF50 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 010BF4 8011EF54 44800000 */  mtc1        $zero, $f0
/* 010BF8 8011EF58 3C018014 */  lui         $at, %hi(D_80138204)
/* 010BFC 8011EF5C 460021A1 */  cvt.d.s     $f6, $f4
/* 010C00 8011EF60 44801000 */  mtc1        $zero, $f2
/* 010C04 8011EF64 46203202 */  mul.d       $f8, $f6, $f0
/* 010C08 8011EF68 3C088014 */  lui         $t0, %hi(D_80138204)
/* 010C0C 8011EF6C 3C098014 */  lui         $t1, %hi(D_80138204)
/* 010C10 8011EF70 3C0A8014 */  lui         $t2, %hi(D_80138208)
/* 010C14 8011EF74 3C0B8014 */  lui         $t3, %hi(D_80138208)
/* 010C18 8011EF78 3C0C8014 */  lui         $t4, %hi(D_80138208)
/* 010C1C 8011EF7C 3C0D8014 */  lui         $t5, %hi(D_80138208)
/* 010C20 8011EF80 3C048013 */  lui         $a0, %hi(D_8012E238)
/* 010C24 8011EF84 462042A0 */  cvt.s.d     $f10, $f8
/* 010C28 8011EF88 2484E238 */  addiu       $a0, $a0, %lo(D_8012E238)
/* 010C2C 8011EF8C E60A0000 */  swc1        $f10, 0x0($s0)
/* 010C30 8011EF90 8C6F0000 */  lw          $t7, 0x0($v1)
/* 010C34 8011EF94 C5F0000C */  lwc1        $f16, 0xc($t7)
/* 010C38 8011EF98 460084A1 */  cvt.d.s     $f18, $f16
/* 010C3C 8011EF9C 46209102 */  mul.d       $f4, $f18, $f0
/* 010C40 8011EFA0 462021A0 */  cvt.s.d     $f6, $f4
/* 010C44 8011EFA4 E6060004 */  swc1        $f6, 0x4($s0)
/* 010C48 8011EFA8 8C780000 */  lw          $t8, 0x0($v1)
/* 010C4C 8011EFAC C708000C */  lwc1        $f8, 0xc($t8)
/* 010C50 8011EFB0 460042A1 */  cvt.d.s     $f10, $f8
/* 010C54 8011EFB4 46205402 */  mul.d       $f16, $f10, $f0
/* 010C58 8011EFB8 462084A0 */  cvt.s.d     $f18, $f16
/* 010C5C 8011EFBC E6120008 */  swc1        $f18, 0x8($s0)
/* 010C60 8011EFC0 AC308204 */  sw          $s0, %lo(D_80138204)($at)
/* 010C64 8011EFC4 8E19002C */  lw          $t9, 0x2c($s0)
/* 010C68 8011EFC8 3C018014 */  lui         $at, %hi(D_80138208)
/* 010C6C 8011EFCC AC398208 */  sw          $t9, %lo(D_80138208)($at)
/* 010C70 8011EFD0 E602000C */  swc1        $f2, 0xc($s0)
/* 010C74 8011EFD4 8D088204 */  lw          $t0, %lo(D_80138204)($t0)
/* 010C78 8011EFD8 3C0142B4 */  lui         $at, 0x42b4
/* 010C7C 8011EFDC 44812000 */  mtc1        $at, $f4
/* 010C80 8011EFE0 E5020010 */  swc1        $f2, 0x10($t0)
/* 010C84 8011EFE4 8D298204 */  lw          $t1, %lo(D_80138204)($t1)
/* 010C88 8011EFE8 E5220014 */  swc1        $f2, 0x14($t1)
/* 010C8C 8011EFEC 8D4A8208 */  lw          $t2, %lo(D_80138208)($t2)
/* 010C90 8011EFF0 E542000C */  swc1        $f2, 0xc($t2)
/* 010C94 8011EFF4 8D6B8208 */  lw          $t3, %lo(D_80138208)($t3)
/* 010C98 8011EFF8 E5620010 */  swc1        $f2, 0x10($t3)
/* 010C9C 8011EFFC 8D8C8208 */  lw          $t4, %lo(D_80138208)($t4)
/* 010CA0 8011F000 E5820014 */  swc1        $f2, 0x14($t4)
/* 010CA4 8011F004 8DAD8208 */  lw          $t5, %lo(D_80138208)($t5)
/* 010CA8 8011F008 0C001B92 */  jal         func_80006E48
/* 010CAC 8011F00C E5A40010 */   swc1       $f4, 0x10($t5)
/* 010CB0 8011F010 00408025 */  move        $s0, $v0
/* 010CB4 8011F014 00402025 */  move        $a0, $v0
/* 010CB8 8011F018 0C001DF8 */  jal         func_800077E0
/* 010CBC 8011F01C 24052002 */   addiu      $a1, $zero, 0x2002
/* 010CC0 8011F020 0C001C1B */  jal         func_8000706C
/* 010CC4 8011F024 02002025 */   move       $a0, $s0
/* 010CC8 8011F028 3C038013 */  lui         $v1, %hi(D_80137EE4)
/* 010CCC 8011F02C 24637EE4 */  addiu       $v1, $v1, %lo(D_80137EE4)
/* 010CD0 8011F030 8C6E0000 */  lw          $t6, 0x0($v1)
/* 010CD4 8011F034 44801000 */  mtc1        $zero, $f2
/* 010CD8 8011F038 3C018014 */  lui         $at, %hi(D_8013820C)
/* 010CDC 8011F03C C5C6000C */  lwc1        $f6, 0xc($t6)
/* 010CE0 8011F040 E6060000 */  swc1        $f6, 0x0($s0)
/* 010CE4 8011F044 8C6F0000 */  lw          $t7, 0x0($v1)
/* 010CE8 8011F048 C5E8000C */  lwc1        $f8, 0xc($t7)
/* 010CEC 8011F04C E6080004 */  swc1        $f8, 0x4($s0)
/* 010CF0 8011F050 8C780000 */  lw          $t8, 0x0($v1)
/* 010CF4 8011F054 C70A000C */  lwc1        $f10, 0xc($t8)
/* 010CF8 8011F058 E60A0008 */  swc1        $f10, 0x8($s0)
/* 010CFC 8011F05C AC30820C */  sw          $s0, %lo(D_8013820C)($at)
/* 010D00 8011F060 E6020014 */  swc1        $f2, 0x14($s0)
/* 010D04 8011F064 E6020010 */  swc1        $f2, 0x10($s0)
/* 010D08 8011F068 0C00A217 */  jal         func_8002885C
/* 010D0C 8011F06C E602000C */   swc1       $f2, 0xc($s0)
/* 010D10 8011F070 24010004 */  addiu       $at, $zero, 0x4
/* 010D14 8011F074 10410011 */  beq         $v0, $at, .L8011F0BC
/* 010D18 8011F078 24010006 */   addiu      $at, $zero, 0x6
/* 010D1C 8011F07C 1041000F */  beq         $v0, $at, .L8011F0BC
/* 010D20 8011F080 24010008 */   addiu      $at, $zero, 0x8
/* 010D24 8011F084 1041000D */  beq         $v0, $at, .L8011F0BC
/* 010D28 8011F088 3C19800B */   lui        $t9, %hi(D_800B2C78)
/* 010D2C 8011F08C 8F392C78 */  lw          $t9, %lo(D_800B2C78)($t9)
/* 010D30 8011F090 2B210003 */  slti        $at, $t9, 0x3
/* 010D34 8011F094 14200009 */  bnez        $at, .L8011F0BC
/* 010D38 8011F098 00000000 */   nop
/* 010D3C 8011F09C 0C00C14B */  jal         func_8003052C
/* 010D40 8011F0A0 24040012 */   addiu      $a0, $zero, 0x12
/* 010D44 8011F0A4 14400005 */  bnez        $v0, .L8011F0BC
/* 010D48 8011F0A8 3C108013 */   lui        $s0, %hi(D_8012E5D8)
/* 010D4C 8011F0AC 3C058013 */  lui         $a1, %hi(D_8012E54C)
/* 010D50 8011F0B0 2604E5D8 */  addiu       $a0, $s0, %lo(D_8012E5D8)
/* 010D54 8011F0B4 0C047AEE */  jal         func_8011EBB8
/* 010D58 8011F0B8 24A5E54C */   addiu      $a1, $a1, %lo(D_8012E54C)
.L8011F0BC:
/* 010D5C 8011F0BC 3C108013 */  lui         $s0, %hi(D_8012E5D8)
/* 010D60 8011F0C0 2610E5D8 */  addiu       $s0, $s0, %lo(D_8012E5D8)
/* 010D64 8011F0C4 0C00C14B */  jal         func_8003052C
/* 010D68 8011F0C8 2404000E */   addiu      $a0, $zero, 0xe
/* 010D6C 8011F0CC 50400007 */  beql        $v0, $zero, .L8011F0EC
/* 010D70 8011F0D0 AE000014 */   sw         $zero, 0x14($s0)
/* 010D74 8011F0D4 0C047B72 */  jal         func_8011EDC8
/* 010D78 8011F0D8 00000000 */   nop
/* 010D7C 8011F0DC 02002025 */  move        $a0, $s0
/* 010D80 8011F0E0 0C047AEE */  jal         func_8011EBB8
/* 010D84 8011F0E4 00402825 */   move       $a1, $v0
/* 010D88 8011F0E8 AE000014 */  sw          $zero, 0x14($s0)
.L8011F0EC:
/* 010D8C 8011F0EC AE00000C */  sw          $zero, 0xc($s0)
/* 010D90 8011F0F0 0C04732E */  jal         func_8011CCB8
/* 010D94 8011F0F4 02002025 */   move       $a0, $s0
/* 010D98 8011F0F8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010D9C 8011F0FC 3C018014 */  lui         $at, %hi(D_801381E8)
/* 010DA0 8011F100 AC3081E8 */  sw          $s0, %lo(D_801381E8)($at)
/* 010DA4 8011F104 8FB00018 */  lw          $s0, 0x18($sp)
/* 010DA8 8011F108 03E00008 */  jr          $ra
/* 010DAC 8011F10C 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8011F110 # 59
/* 010DB0 8011F110 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 010DB4 8011F114 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010DB8 8011F118 AFA40020 */  sw          $a0, 0x20($sp)
/* 010DBC 8011F11C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 010DC0 8011F120 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 010DC4 8011F124 0C046307 */  jal         func_80118C1C
/* 010DC8 8011F128 AFA4001C */   sw         $a0, 0x1c($sp)
/* 010DCC 8011F12C 8FA5001C */  lw          $a1, 0x1c($sp)
/* 010DD0 8011F130 0002C880 */  sll         $t9, $v0, 2
/* 010DD4 8011F134 8FA40020 */  lw          $a0, 0x20($sp)
/* 010DD8 8011F138 8CB802AC */  lw          $t8, 0x2ac($a1)
/* 010DDC 8011F13C 03194021 */  addu        $t0, $t8, $t9
/* 010DE0 8011F140 8D030000 */  lw          $v1, 0x0($t0)
/* 010DE4 8011F144 0060F809 */  jalr        $v1
/* 010DE8 8011F148 00000000 */   nop
/* 010DEC 8011F14C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010DF0 8011F150 27BD0020 */  addiu       $sp, $sp, 0x20
/* 010DF4 8011F154 03E00008 */  jr          $ra
/* 010DF8 8011F158 00000000 */   nop

glabel func_8011F15C # 60
/* 010DFC 8011F15C 90CE0000 */  lbu         $t6, 0x0($a2)
/* 010E00 8011F160 00803825 */  move        $a3, $a0
/* 010E04 8011F164 00001025 */  move        $v0, $zero
/* 010E08 8011F168 11C0000A */  beqz        $t6, .L8011F194
/* 010E0C 8011F16C 24A3FFFF */   addiu      $v1, $a1, -0x1
/* 010E10 8011F170 18600008 */  blez        $v1, .L8011F194
/* 010E14 8011F174 00C02021 */   addu       $a0, $a2, $zero
/* 010E18 8011F178 908F0001 */  lbu         $t7, 0x1($a0)
.L8011F17C:
/* 010E1C 8011F17C 24420001 */  addiu       $v0, $v0, 0x1
/* 010E20 8011F180 0043082A */  slt         $at, $v0, $v1
/* 010E24 8011F184 11E00003 */  beqz        $t7, .L8011F194
/* 010E28 8011F188 24840001 */   addiu      $a0, $a0, 0x1
/* 010E2C 8011F18C 5420FFFB */  bnel        $at, $zero, .L8011F17C
/* 010E30 8011F190 908F0001 */   lbu        $t7, 0x1($a0)
.L8011F194:
/* 010E34 8011F194 90F80000 */  lbu         $t8, 0x0($a3)
/* 010E38 8011F198 00A22023 */  subu        $a0, $a1, $v0
/* 010E3C 8011F19C 2484FFFF */  addiu       $a0, $a0, -0x1
/* 010E40 8011F1A0 1300000A */  beqz        $t8, .L8011F1CC
/* 010E44 8011F1A4 00001825 */   move       $v1, $zero
/* 010E48 8011F1A8 18800008 */  blez        $a0, .L8011F1CC
/* 010E4C 8011F1AC 00E04021 */   addu       $t0, $a3, $zero
/* 010E50 8011F1B0 91190001 */  lbu         $t9, 0x1($t0)
.L8011F1B4:
/* 010E54 8011F1B4 24630001 */  addiu       $v1, $v1, 0x1
/* 010E58 8011F1B8 0064082A */  slt         $at, $v1, $a0
/* 010E5C 8011F1BC 13200003 */  beqz        $t9, .L8011F1CC
/* 010E60 8011F1C0 25080001 */   addiu      $t0, $t0, 0x1
/* 010E64 8011F1C4 5420FFFB */  bnel        $at, $zero, .L8011F1B4
/* 010E68 8011F1C8 91190001 */   lbu        $t9, 0x1($t0)
.L8011F1CC:
/* 010E6C 8011F1CC 04600009 */  bltz        $v1, .L8011F1F4
/* 010E70 8011F1D0 00E34021 */   addu       $t0, $a3, $v1
/* 010E74 8011F1D4 00E35821 */  addu        $t3, $a3, $v1
/* 010E78 8011F1D8 01622021 */  addu        $a0, $t3, $v0
.L8011F1DC:
/* 010E7C 8011F1DC 910C0000 */  lbu         $t4, 0x0($t0)
/* 010E80 8011F1E0 2463FFFF */  addiu       $v1, $v1, -0x1
/* 010E84 8011F1E4 2508FFFF */  addiu       $t0, $t0, -0x1
/* 010E88 8011F1E8 2484FFFF */  addiu       $a0, $a0, -0x1
/* 010E8C 8011F1EC 0461FFFB */  bgez        $v1, .L8011F1DC
/* 010E90 8011F1F0 A08C0001 */   sb         $t4, 0x1($a0)
.L8011F1F4:
/* 010E94 8011F1F4 1840001B */  blez        $v0, .L8011F264
/* 010E98 8011F1F8 00001825 */   move       $v1, $zero
/* 010E9C 8011F1FC 304A0003 */  andi        $t2, $v0, 0x3
/* 010EA0 8011F200 1140000A */  beqz        $t2, .L8011F22C
/* 010EA4 8011F204 01404825 */   move       $t1, $t2
/* 010EA8 8011F208 00E02021 */  addu        $a0, $a3, $zero
/* 010EAC 8011F20C 00C04021 */  addu        $t0, $a2, $zero
.L8011F210:
/* 010EB0 8011F210 910D0000 */  lbu         $t5, 0x0($t0)
/* 010EB4 8011F214 24630001 */  addiu       $v1, $v1, 0x1
/* 010EB8 8011F218 24840001 */  addiu       $a0, $a0, 0x1
/* 010EBC 8011F21C 25080001 */  addiu       $t0, $t0, 0x1
/* 010EC0 8011F220 1523FFFB */  bne         $t1, $v1, .L8011F210
/* 010EC4 8011F224 A08DFFFF */   sb         $t5, -0x1($a0)
/* 010EC8 8011F228 1062000E */  beq         $v1, $v0, .L8011F264
.L8011F22C:
/* 010ECC 8011F22C 00E32021 */   addu       $a0, $a3, $v1
/* 010ED0 8011F230 00C34021 */  addu        $t0, $a2, $v1
.L8011F234:
/* 010ED4 8011F234 910E0000 */  lbu         $t6, 0x0($t0)
/* 010ED8 8011F238 24630004 */  addiu       $v1, $v1, 0x4
/* 010EDC 8011F23C 24840004 */  addiu       $a0, $a0, 0x4
/* 010EE0 8011F240 A08EFFFC */  sb          $t6, -0x4($a0)
/* 010EE4 8011F244 910F0001 */  lbu         $t7, 0x1($t0)
/* 010EE8 8011F248 25080004 */  addiu       $t0, $t0, 0x4
/* 010EEC 8011F24C A08FFFFD */  sb          $t7, -0x3($a0)
/* 010EF0 8011F250 9118FFFE */  lbu         $t8, -0x2($t0)
/* 010EF4 8011F254 A098FFFE */  sb          $t8, -0x2($a0)
/* 010EF8 8011F258 9119FFFF */  lbu         $t9, -0x1($t0)
/* 010EFC 8011F25C 1462FFF5 */  bne         $v1, $v0, .L8011F234
/* 010F00 8011F260 A099FFFF */   sb         $t9, -0x1($a0)
.L8011F264:
/* 010F04 8011F264 00E55821 */  addu        $t3, $a3, $a1
/* 010F08 8011F268 03E00008 */  jr          $ra
/* 010F0C 8011F26C A160FFFF */   sb         $zero, -0x1($t3)

glabel func_8011F270 # 61
/* 010F10 8011F270 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010F14 8011F274 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010F18 8011F278 8C8E0054 */  lw          $t6, 0x54($a0)
/* 010F1C 8011F27C 00002825 */  move        $a1, $zero
/* 010F20 8011F280 0C046573 */  jal         func_801195CC
/* 010F24 8011F284 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 010F28 8011F288 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010F2C 8011F28C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010F30 8011F290 24020001 */  addiu       $v0, $zero, 0x1
/* 010F34 8011F294 03E00008 */  jr          $ra
/* 010F38 8011F298 00000000 */   nop

glabel func_8011F29C # 62
/* 010F3C 8011F29C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010F40 8011F2A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010F44 8011F2A4 0C046754 */  jal         func_80119D50
/* 010F48 8011F2A8 24050002 */   addiu      $a1, $zero, 0x2
/* 010F4C 8011F2AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010F50 8011F2B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010F54 8011F2B4 24020002 */  addiu       $v0, $zero, 0x2
/* 010F58 8011F2B8 03E00008 */  jr          $ra
/* 010F5C 8011F2BC 00000000 */   nop

glabel func_8011F2C0 # 63
/* 010F60 8011F2C0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010F64 8011F2C4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010F68 8011F2C8 0C046754 */  jal         func_80119D50
/* 010F6C 8011F2CC 24050003 */   addiu      $a1, $zero, 0x3
/* 010F70 8011F2D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010F74 8011F2D4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010F78 8011F2D8 24020002 */  addiu       $v0, $zero, 0x2
/* 010F7C 8011F2DC 03E00008 */  jr          $ra
/* 010F80 8011F2E0 00000000 */   nop

glabel func_8011F2E4 # 64
/* 010F84 8011F2E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010F88 8011F2E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010F8C 8011F2EC 0C046754 */  jal         func_80119D50
/* 010F90 8011F2F0 24050003 */   addiu      $a1, $zero, 0x3
/* 010F94 8011F2F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010F98 8011F2F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010F9C 8011F2FC 24020002 */  addiu       $v0, $zero, 0x2
/* 010FA0 8011F300 03E00008 */  jr          $ra
/* 010FA4 8011F304 00000000 */   nop

glabel func_8011F308 # 65
/* 010FA8 8011F308 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010FAC 8011F30C AFBF0014 */  sw          $ra, 0x14($sp)
/* 010FB0 8011F310 0C046754 */  jal         func_80119D50
/* 010FB4 8011F314 24050005 */   addiu      $a1, $zero, 0x5
/* 010FB8 8011F318 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010FBC 8011F31C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010FC0 8011F320 24020002 */  addiu       $v0, $zero, 0x2
/* 010FC4 8011F324 03E00008 */  jr          $ra
/* 010FC8 8011F328 00000000 */   nop

glabel func_8011F32C # 66
/* 010FCC 8011F32C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010FD0 8011F330 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010FD4 8011F334 0C046754 */  jal         func_80119D50
/* 010FD8 8011F338 24050006 */   addiu      $a1, $zero, 0x6
/* 010FDC 8011F33C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010FE0 8011F340 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010FE4 8011F344 24020002 */  addiu       $v0, $zero, 0x2
/* 010FE8 8011F348 03E00008 */  jr          $ra
/* 010FEC 8011F34C 00000000 */   nop

glabel func_8011F350 # 67
/* 010FF0 8011F350 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010FF4 8011F354 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010FF8 8011F358 0C046754 */  jal         func_80119D50
/* 010FFC 8011F35C 24050007 */   addiu      $a1, $zero, 0x7
/* 011000 8011F360 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011004 8011F364 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011008 8011F368 24020002 */  addiu       $v0, $zero, 0x2
/* 01100C 8011F36C 03E00008 */  jr          $ra
/* 011010 8011F370 00000000 */   nop

glabel func_8011F374 # 68
/* 011014 8011F374 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011018 8011F378 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01101C 8011F37C 0C046754 */  jal         func_80119D50
/* 011020 8011F380 24050008 */   addiu      $a1, $zero, 0x8
/* 011024 8011F384 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011028 8011F388 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01102C 8011F38C 24020002 */  addiu       $v0, $zero, 0x2
/* 011030 8011F390 03E00008 */  jr          $ra
/* 011034 8011F394 00000000 */   nop

glabel func_8011F398 # 69
/* 011038 8011F398 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01103C 8011F39C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011040 8011F3A0 0C046754 */  jal         func_80119D50
/* 011044 8011F3A4 24050009 */   addiu      $a1, $zero, 0x9
/* 011048 8011F3A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01104C 8011F3AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011050 8011F3B0 24020002 */  addiu       $v0, $zero, 0x2
/* 011054 8011F3B4 03E00008 */  jr          $ra
/* 011058 8011F3B8 00000000 */   nop

glabel func_8011F3BC # 70
/* 01105C 8011F3BC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011060 8011F3C0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 011064 8011F3C4 AFB20020 */  sw          $s2, 0x20($sp)
/* 011068 8011F3C8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01106C 8011F3CC AFB00018 */  sw          $s0, 0x18($sp)
/* 011070 8011F3D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011074 8011F3D4 3C128014 */  lui         $s2, %hi(D_80138320)
/* 011078 8011F3D8 26528320 */  addiu       $s2, $s2, %lo(D_80138320)
/* 01107C 8011F3DC 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 011080 8011F3E0 A2400000 */  sb          $zero, 0x0($s2)
/* 011084 8011F3E4 0C046307 */  jal         func_80118C1C
/* 011088 8011F3E8 02202025 */   move       $a0, $s1
/* 01108C 8011F3EC 2450FFFF */  addiu       $s0, $v0, -0x1
/* 011090 8011F3F0 0602000B */  bltzl       $s0, .L8011F420
/* 011094 8011F3F4 02202025 */   move       $a0, $s1
.L8011F3F8:
/* 011098 8011F3F8 0C0465AD */  jal         func_801196B4
/* 01109C 8011F3FC 02202025 */   move       $a0, $s1
/* 0110A0 8011F400 02402025 */  move        $a0, $s2
/* 0110A4 8011F404 24050050 */  addiu       $a1, $zero, 0x50
/* 0110A8 8011F408 0C047C57 */  jal         func_8011F15C
/* 0110AC 8011F40C 00403025 */   move       $a2, $v0
/* 0110B0 8011F410 2610FFFF */  addiu       $s0, $s0, -0x1
/* 0110B4 8011F414 0601FFF8 */  bgez        $s0, .L8011F3F8
/* 0110B8 8011F418 00000000 */   nop
/* 0110BC 8011F41C 02202025 */  move        $a0, $s1
.L8011F420:
/* 0110C0 8011F420 0C046573 */  jal         func_801195CC
/* 0110C4 8011F424 00002825 */   move       $a1, $zero
/* 0110C8 8011F428 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0110CC 8011F42C 8FB00018 */  lw          $s0, 0x18($sp)
/* 0110D0 8011F430 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0110D4 8011F434 8FB20020 */  lw          $s2, 0x20($sp)
/* 0110D8 8011F438 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0110DC 8011F43C 03E00008 */  jr          $ra
/* 0110E0 8011F440 00001025 */   move       $v0, $zero

glabel func_8011F444 # 71
/* 0110E4 8011F444 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0110E8 8011F448 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0110EC 8011F44C AFB20020 */  sw          $s2, 0x20($sp)
/* 0110F0 8011F450 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0110F4 8011F454 AFB00018 */  sw          $s0, 0x18($sp)
/* 0110F8 8011F458 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0110FC 8011F45C 3C128014 */  lui         $s2, %hi(D_80138320)
/* 011100 8011F460 26528320 */  addiu       $s2, $s2, %lo(D_80138320)
/* 011104 8011F464 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 011108 8011F468 A2400000 */  sb          $zero, 0x0($s2)
/* 01110C 8011F46C 0C046307 */  jal         func_80118C1C
/* 011110 8011F470 02202025 */   move       $a0, $s1
/* 011114 8011F474 2450FFFF */  addiu       $s0, $v0, -0x1
/* 011118 8011F478 0602000B */  bltzl       $s0, .L8011F4A8
/* 01111C 8011F47C 02202025 */   move       $a0, $s1
.L8011F480:
/* 011120 8011F480 0C0465AD */  jal         func_801196B4
/* 011124 8011F484 02202025 */   move       $a0, $s1
/* 011128 8011F488 02402025 */  move        $a0, $s2
/* 01112C 8011F48C 24050050 */  addiu       $a1, $zero, 0x50
/* 011130 8011F490 0C047C57 */  jal         func_8011F15C
/* 011134 8011F494 00403025 */   move       $a2, $v0
/* 011138 8011F498 2610FFFF */  addiu       $s0, $s0, -0x1
/* 01113C 8011F49C 0601FFF8 */  bgez        $s0, .L8011F480
/* 011140 8011F4A0 00000000 */   nop
/* 011144 8011F4A4 02202025 */  move        $a0, $s1
.L8011F4A8:
/* 011148 8011F4A8 0C046573 */  jal         func_801195CC
/* 01114C 8011F4AC 00002825 */   move       $a1, $zero
/* 011150 8011F4B0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 011154 8011F4B4 8FB00018 */  lw          $s0, 0x18($sp)
/* 011158 8011F4B8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01115C 8011F4BC 8FB20020 */  lw          $s2, 0x20($sp)
/* 011160 8011F4C0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011164 8011F4C4 03E00008 */  jr          $ra
/* 011168 8011F4C8 00001025 */   move       $v0, $zero

glabel func_8011F4CC # 72
/* 01116C 8011F4CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011170 8011F4D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011174 8011F4D4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011178 8011F4D8 00002825 */  move        $a1, $zero
/* 01117C 8011F4DC 0C046573 */  jal         func_801195CC
/* 011180 8011F4E0 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 011184 8011F4E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011188 8011F4E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01118C 8011F4EC 00001025 */  move        $v0, $zero
/* 011190 8011F4F0 03E00008 */  jr          $ra
/* 011194 8011F4F4 00000000 */   nop

glabel func_8011F4F8 # 73
/* 011198 8011F4F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01119C 8011F4FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0111A0 8011F500 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0111A4 8011F504 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0111A8 8011F508 0C00E512 */  jal         func_80039448
/* 0111AC 8011F50C AFAF001C */   sw         $t7, 0x1c($sp)
/* 0111B0 8011F510 44822000 */  mtc1        $v0, $f4
/* 0111B4 8011F514 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0111B8 8011F518 04410006 */  bgez        $v0, .L8011F534
/* 0111BC 8011F51C 468021A1 */   cvt.d.w    $f6, $f4
/* 0111C0 8011F520 3C0141F0 */  lui         $at, 0x41f0
/* 0111C4 8011F524 44814800 */  mtc1        $at, $f9
/* 0111C8 8011F528 44804000 */  mtc1        $zero, $f8
/* 0111CC 8011F52C 00000000 */  nop
/* 0111D0 8011F530 46283180 */  add.d       $f6, $f6, $f8
.L8011F534:
/* 0111D4 8011F534 3C013DF0 */  lui         $at, 0x3df0
/* 0111D8 8011F538 44815800 */  mtc1        $at, $f11
/* 0111DC 8011F53C 44805000 */  mtc1        $zero, $f10
/* 0111E0 8011F540 00000000 */  nop
/* 0111E4 8011F544 462A3402 */  mul.d       $f16, $f6, $f10
/* 0111E8 8011F548 462084A0 */  cvt.s.d     $f18, $f16
/* 0111EC 8011F54C 44059000 */  mfc1        $a1, $f18
/* 0111F0 8011F550 0C04657F */  jal         func_801195FC
/* 0111F4 8011F554 00000000 */   nop
/* 0111F8 8011F558 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0111FC 8011F55C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011200 8011F560 00001025 */  move        $v0, $zero
/* 011204 8011F564 03E00008 */  jr          $ra
/* 011208 8011F568 00000000 */   nop

glabel func_8011F56C # 74
/* 01120C 8011F56C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011210 8011F570 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011214 8011F574 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011218 8011F578 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01121C 8011F57C 0C046599 */  jal         func_80119664
/* 011220 8011F580 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011224 8011F584 0C00E500 */  jal         func_80039400
/* 011228 8011F588 00402025 */   move       $a0, $v0
/* 01122C 8011F58C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011230 8011F590 0C046573 */  jal         func_801195CC
/* 011234 8011F594 00402825 */   move       $a1, $v0
/* 011238 8011F598 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01123C 8011F59C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011240 8011F5A0 00001025 */  move        $v0, $zero
/* 011244 8011F5A4 03E00008 */  jr          $ra
/* 011248 8011F5A8 00000000 */   nop

glabel func_8011F5AC # 75
/* 01124C 8011F5AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011250 8011F5B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011254 8011F5B4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011258 8011F5B8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01125C 8011F5BC 0C046599 */  jal         func_80119664
/* 011260 8011F5C0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011264 8011F5C4 0C0031A6 */  jal         func_8000C698
/* 011268 8011F5C8 00402025 */   move       $a0, $v0
/* 01126C 8011F5CC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011270 8011F5D0 0C046573 */  jal         func_801195CC
/* 011274 8011F5D4 00402825 */   move       $a1, $v0
/* 011278 8011F5D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01127C 8011F5DC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011280 8011F5E0 00001025 */  move        $v0, $zero
/* 011284 8011F5E4 03E00008 */  jr          $ra
/* 011288 8011F5E8 00000000 */   nop

glabel func_8011F5EC # 76
/* 01128C 8011F5EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011290 8011F5F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011294 8011F5F4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011298 8011F5F8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01129C 8011F5FC 0C046599 */  jal         func_80119664
/* 0112A0 8011F600 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0112A4 8011F604 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0112A8 8011F608 0C046573 */  jal         func_801195CC
/* 0112AC 8011F60C 00402825 */   move       $a1, $v0
/* 0112B0 8011F610 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0112B4 8011F614 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0112B8 8011F618 00001025 */  move        $v0, $zero
/* 0112BC 8011F61C 03E00008 */  jr          $ra
/* 0112C0 8011F620 00000000 */   nop

glabel func_8011F624 # 77
/* 0112C4 8011F624 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0112C8 8011F628 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0112CC 8011F62C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0112D0 8011F630 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0112D4 8011F634 0C0465A3 */  jal         func_8011968C
/* 0112D8 8011F638 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0112DC 8011F63C 44050000 */  mfc1        $a1, $f0
/* 0112E0 8011F640 0C04657F */  jal         func_801195FC
/* 0112E4 8011F644 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0112E8 8011F648 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0112EC 8011F64C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0112F0 8011F650 00001025 */  move        $v0, $zero
/* 0112F4 8011F654 03E00008 */  jr          $ra
/* 0112F8 8011F658 00000000 */   nop

glabel func_8011F65C # 78
/* 0112FC 8011F65C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011300 8011F660 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011304 8011F664 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011308 8011F668 44802000 */  mtc1        $zero, $f4
/* 01130C 8011F66C 00002825 */  move        $a1, $zero
/* 011310 8011F670 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011314 8011F674 0C046573 */  jal         func_801195CC
/* 011318 8011F678 E484000C */   swc1       $f4, 0xc($a0)
/* 01131C 8011F67C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011320 8011F680 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011324 8011F684 00001025 */  move        $v0, $zero
/* 011328 8011F688 03E00008 */  jr          $ra
/* 01132C 8011F68C 00000000 */   nop

glabel func_8011F690 # 79
/* 011330 8011F690 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011334 8011F694 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011338 8011F698 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01133C 8011F69C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011340 8011F6A0 0C04657F */  jal         func_801195FC
/* 011344 8011F6A4 8C85000C */   lw         $a1, 0xc($a0)
/* 011348 8011F6A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01134C 8011F6AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011350 8011F6B0 00001025 */  move        $v0, $zero
/* 011354 8011F6B4 03E00008 */  jr          $ra
/* 011358 8011F6B8 00000000 */   nop

glabel func_8011F6BC # 80
/* 01135C 8011F6BC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011360 8011F6C0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 011364 8011F6C4 AFB20020 */  sw          $s2, 0x20($sp)
/* 011368 8011F6C8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01136C 8011F6CC AFB00018 */  sw          $s0, 0x18($sp)
/* 011370 8011F6D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011374 8011F6D4 3C128014 */  lui         $s2, %hi(D_80138320)
/* 011378 8011F6D8 26528320 */  addiu       $s2, $s2, %lo(D_80138320)
/* 01137C 8011F6DC 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 011380 8011F6E0 A2400000 */  sb          $zero, 0x0($s2)
/* 011384 8011F6E4 0C046307 */  jal         func_80118C1C
/* 011388 8011F6E8 02202025 */   move       $a0, $s1
/* 01138C 8011F6EC 2450FFFF */  addiu       $s0, $v0, -0x1
/* 011390 8011F6F0 0602000B */  bltzl       $s0, .L8011F720
/* 011394 8011F6F4 8E2402B4 */   lw         $a0, 0x2b4($s1)
.L8011F6F8:
/* 011398 8011F6F8 0C0465AD */  jal         func_801196B4
/* 01139C 8011F6FC 02202025 */   move       $a0, $s1
/* 0113A0 8011F700 02402025 */  move        $a0, $s2
/* 0113A4 8011F704 24050050 */  addiu       $a1, $zero, 0x50
/* 0113A8 8011F708 0C047C57 */  jal         func_8011F15C
/* 0113AC 8011F70C 00403025 */   move       $a2, $v0
/* 0113B0 8011F710 2610FFFF */  addiu       $s0, $s0, -0x1
/* 0113B4 8011F714 0601FFF8 */  bgez        $s0, .L8011F6F8
/* 0113B8 8011F718 00000000 */   nop
/* 0113BC 8011F71C 8E2402B4 */  lw          $a0, 0x2b4($s1)
.L8011F720:
/* 0113C0 8011F720 8E2502B8 */  lw          $a1, 0x2b8($s1)
/* 0113C4 8011F724 0C009589 */  jal         func_80025624
/* 0113C8 8011F728 02403025 */   move       $a2, $s2
/* 0113CC 8011F72C 02202025 */  move        $a0, $s1
/* 0113D0 8011F730 0C046573 */  jal         func_801195CC
/* 0113D4 8011F734 00002825 */   move       $a1, $zero
/* 0113D8 8011F738 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0113DC 8011F73C 8FB00018 */  lw          $s0, 0x18($sp)
/* 0113E0 8011F740 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0113E4 8011F744 8FB20020 */  lw          $s2, 0x20($sp)
/* 0113E8 8011F748 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0113EC 8011F74C 03E00008 */  jr          $ra
/* 0113F0 8011F750 00001025 */   move       $v0, $zero

glabel func_8011F754 # 81
/* 0113F4 8011F754 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0113F8 8011F758 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0113FC 8011F75C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011400 8011F760 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011404 8011F764 0C0095B5 */  jal         func_800256D4
/* 011408 8011F768 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01140C 8011F76C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011410 8011F770 0C046573 */  jal         func_801195CC
/* 011414 8011F774 00002825 */   move       $a1, $zero
/* 011418 8011F778 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01141C 8011F77C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011420 8011F780 00001025 */  move        $v0, $zero
/* 011424 8011F784 03E00008 */  jr          $ra
/* 011428 8011F788 00000000 */   nop

glabel func_8011F78C # 82
/* 01142C 8011F78C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011430 8011F790 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011434 8011F794 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011438 8011F798 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01143C 8011F79C 0C046599 */  jal         func_80119664
/* 011440 8011F7A0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011444 8011F7A4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011448 8011F7A8 00002825 */  move        $a1, $zero
/* 01144C 8011F7AC 0C046573 */  jal         func_801195CC
/* 011450 8011F7B0 AC8202B4 */   sw         $v0, 0x2b4($a0)
/* 011454 8011F7B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011458 8011F7B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01145C 8011F7BC 00001025 */  move        $v0, $zero
/* 011460 8011F7C0 03E00008 */  jr          $ra
/* 011464 8011F7C4 00000000 */   nop

glabel func_8011F7C8 # 83
/* 011468 8011F7C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01146C 8011F7CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011470 8011F7D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011474 8011F7D4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011478 8011F7D8 0C0465A3 */  jal         func_8011968C
/* 01147C 8011F7DC AFA4001C */   sw         $a0, 0x1c($sp)
/* 011480 8011F7E0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011484 8011F7E4 00002825 */  move        $a1, $zero
/* 011488 8011F7E8 0C046573 */  jal         func_801195CC
/* 01148C 8011F7EC E48002B8 */   swc1       $f0, 0x2b8($a0)
/* 011490 8011F7F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011494 8011F7F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011498 8011F7F8 00001025 */  move        $v0, $zero
/* 01149C 8011F7FC 03E00008 */  jr          $ra
/* 0114A0 8011F800 00000000 */   nop

glabel func_8011F804 # 84
/* 0114A4 8011F804 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0114A8 8011F808 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0114AC 8011F80C AFB20020 */  sw          $s2, 0x20($sp)
/* 0114B0 8011F810 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0114B4 8011F814 AFB00018 */  sw          $s0, 0x18($sp)
/* 0114B8 8011F818 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0114BC 8011F81C 3C128014 */  lui         $s2, %hi(D_80138320)
/* 0114C0 8011F820 26528320 */  addiu       $s2, $s2, %lo(D_80138320)
/* 0114C4 8011F824 8DD101B8 */  lw          $s1, 0x1b8($t6)
/* 0114C8 8011F828 A2400000 */  sb          $zero, 0x0($s2)
/* 0114CC 8011F82C 0C046307 */  jal         func_80118C1C
/* 0114D0 8011F830 02202025 */   move       $a0, $s1
/* 0114D4 8011F834 2450FFFF */  addiu       $s0, $v0, -0x1
/* 0114D8 8011F838 0600000A */  bltz        $s0, .L8011F864
/* 0114DC 8011F83C 00000000 */   nop
.L8011F840:
/* 0114E0 8011F840 0C0465AD */  jal         func_801196B4
/* 0114E4 8011F844 02202025 */   move       $a0, $s1
/* 0114E8 8011F848 02402025 */  move        $a0, $s2
/* 0114EC 8011F84C 24050050 */  addiu       $a1, $zero, 0x50
/* 0114F0 8011F850 0C047C57 */  jal         func_8011F15C
/* 0114F4 8011F854 00403025 */   move       $a2, $v0
/* 0114F8 8011F858 2610FFFF */  addiu       $s0, $s0, -0x1
/* 0114FC 8011F85C 0601FFF8 */  bgez        $s0, .L8011F840
/* 011500 8011F860 00000000 */   nop
.L8011F864:
/* 011504 8011F864 0C00A74C */  jal         func_80029D30
/* 011508 8011F868 02402025 */   move       $a0, $s2
/* 01150C 8011F86C 02202025 */  move        $a0, $s1
/* 011510 8011F870 0C046573 */  jal         func_801195CC
/* 011514 8011F874 00002825 */   move       $a1, $zero
/* 011518 8011F878 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01151C 8011F87C 8FB00018 */  lw          $s0, 0x18($sp)
/* 011520 8011F880 8FB1001C */  lw          $s1, 0x1c($sp)
/* 011524 8011F884 8FB20020 */  lw          $s2, 0x20($sp)
/* 011528 8011F888 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01152C 8011F88C 03E00008 */  jr          $ra
/* 011530 8011F890 00001025 */   move       $v0, $zero

glabel func_8011F894 # 85
/* 011534 8011F894 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011538 8011F898 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01153C 8011F89C 0C046754 */  jal         func_80119D50
/* 011540 8011F8A0 2405000D */   addiu      $a1, $zero, 0xd
/* 011544 8011F8A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011548 8011F8A8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01154C 8011F8AC 24020002 */  addiu       $v0, $zero, 0x2
/* 011550 8011F8B0 03E00008 */  jr          $ra
/* 011554 8011F8B4 00000000 */   nop

glabel func_8011F8B8 # 86
/* 011558 8011F8B8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01155C 8011F8BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011560 8011F8C0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011564 8011F8C4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011568 8011F8C8 0C00A8B0 */  jal         func_8002A2C0
/* 01156C 8011F8CC AFAF001C */   sw         $t7, 0x1c($sp)
/* 011570 8011F8D0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011574 8011F8D4 0C046573 */  jal         func_801195CC
/* 011578 8011F8D8 00002825 */   move       $a1, $zero
/* 01157C 8011F8DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011580 8011F8E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011584 8011F8E4 00001025 */  move        $v0, $zero
/* 011588 8011F8E8 03E00008 */  jr          $ra
/* 01158C 8011F8EC 00000000 */   nop

glabel func_8011F8F0 # 87
/* 011590 8011F8F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011594 8011F8F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011598 8011F8F8 AFA40020 */  sw          $a0, 0x20($sp)
/* 01159C 8011F8FC 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0115A0 8011F900 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0115A4 8011F904 0C046599 */  jal         func_80119664
/* 0115A8 8011F908 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0115AC 8011F90C 8FA40020 */  lw          $a0, 0x20($sp)
/* 0115B0 8011F910 0C0041FD */  jal         func_800107F4
/* 0115B4 8011F914 00402825 */   move       $a1, $v0
/* 0115B8 8011F918 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0115BC 8011F91C 0C046573 */  jal         func_801195CC
/* 0115C0 8011F920 00002825 */   move       $a1, $zero
/* 0115C4 8011F924 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0115C8 8011F928 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0115CC 8011F92C 24020001 */  addiu       $v0, $zero, 0x1
/* 0115D0 8011F930 03E00008 */  jr          $ra
/* 0115D4 8011F934 00000000 */   nop

glabel func_8011F938 # 88
/* 0115D8 8011F938 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0115DC 8011F93C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0115E0 8011F940 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0115E4 8011F944 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0115E8 8011F948 0C00421B */  jal         func_8001086C
/* 0115EC 8011F94C AFAF001C */   sw         $t7, 0x1c($sp)
/* 0115F0 8011F950 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0115F4 8011F954 0C046573 */  jal         func_801195CC
/* 0115F8 8011F958 00002825 */   move       $a1, $zero
/* 0115FC 8011F95C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011600 8011F960 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011604 8011F964 00001025 */  move        $v0, $zero
/* 011608 8011F968 03E00008 */  jr          $ra
/* 01160C 8011F96C 00000000 */   nop

glabel func_8011F970 # 89
/* 011610 8011F970 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 011614 8011F974 AFBF001C */  sw          $ra, 0x1c($sp)
/* 011618 8011F978 AFB00018 */  sw          $s0, 0x18($sp)
/* 01161C 8011F97C AFA40030 */  sw          $a0, 0x30($sp)
/* 011620 8011F980 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011624 8011F984 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 011628 8011F988 0C0465A3 */  jal         func_8011968C
/* 01162C 8011F98C 02002025 */   move       $a0, $s0
/* 011630 8011F990 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 011634 8011F994 0C0465A3 */  jal         func_8011968C
/* 011638 8011F998 02002025 */   move       $a0, $s0
/* 01163C 8011F99C E7A00028 */  swc1        $f0, 0x28($sp)
/* 011640 8011F9A0 0C0465A3 */  jal         func_8011968C
/* 011644 8011F9A4 02002025 */   move       $a0, $s0
/* 011648 8011F9A8 E7A00024 */  swc1        $f0, 0x24($sp)
/* 01164C 8011F9AC 8FA40030 */  lw          $a0, 0x30($sp)
/* 011650 8011F9B0 0C046EFD */  jal         func_8011BBF4
/* 011654 8011F9B4 27A50024 */   addiu      $a1, $sp, 0x24
/* 011658 8011F9B8 8FB80030 */  lw          $t8, 0x30($sp)
/* 01165C 8011F9BC 44802000 */  mtc1        $zero, $f4
/* 011660 8011F9C0 02002025 */  move        $a0, $s0
/* 011664 8011F9C4 8F190054 */  lw          $t9, 0x54($t8)
/* 011668 8011F9C8 00002825 */  move        $a1, $zero
/* 01166C 8011F9CC AF200198 */  sw          $zero, 0x198($t9)
/* 011670 8011F9D0 8F080054 */  lw          $t0, 0x54($t8)
/* 011674 8011F9D4 0C046573 */  jal         func_801195CC
/* 011678 8011F9D8 E50401A0 */   swc1       $f4, 0x1a0($t0)
/* 01167C 8011F9DC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 011680 8011F9E0 8FB00018 */  lw          $s0, 0x18($sp)
/* 011684 8011F9E4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 011688 8011F9E8 03E00008 */  jr          $ra
/* 01168C 8011F9EC 00001025 */   move       $v0, $zero

glabel func_8011F9F0 # 90
/* 011690 8011F9F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011694 8011F9F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011698 8011F9F8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01169C 8011F9FC 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0116A0 8011FA00 AFA40020 */  sw          $a0, 0x20($sp)
/* 0116A4 8011FA04 0C046F65 */  jal         func_8011BD94
/* 0116A8 8011FA08 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0116AC 8011FA0C 8FA40020 */  lw          $a0, 0x20($sp)
/* 0116B0 8011FA10 44806000 */  mtc1        $zero, $f12
/* 0116B4 8011FA14 8C980054 */  lw          $t8, 0x54($a0)
/* 0116B8 8011FA18 C70401A0 */  lwc1        $f4, 0x1a0($t8)
/* 0116BC 8011FA1C 46040081 */  sub.s       $f2, $f0, $f4
/* 0116C0 8011FA20 460C103C */  c.lt.s      $f2, $f12
/* 0116C4 8011FA24 00000000 */  nop
/* 0116C8 8011FA28 45020003 */  bc1fl       .L8011FA38
/* 0116CC 8011FA2C 44051000 */   mfc1       $a1, $f2
/* 0116D0 8011FA30 46006086 */  mov.s       $f2, $f12
/* 0116D4 8011FA34 44051000 */  mfc1        $a1, $f2
.L8011FA38:
/* 0116D8 8011FA38 0C04657F */  jal         func_801195FC
/* 0116DC 8011FA3C 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0116E0 8011FA40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0116E4 8011FA44 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0116E8 8011FA48 00001025 */  move        $v0, $zero
/* 0116EC 8011FA4C 03E00008 */  jr          $ra
/* 0116F0 8011FA50 00000000 */   nop

glabel func_8011FA54 # 91
/* 0116F4 8011FA54 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0116F8 8011FA58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0116FC 8011FA5C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011700 8011FA60 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011704 8011FA64 AFA40020 */  sw          $a0, 0x20($sp)
/* 011708 8011FA68 0C046F90 */  jal         func_8011BE40
/* 01170C 8011FA6C AFAF001C */   sw         $t7, 0x1c($sp)
/* 011710 8011FA70 8FA60020 */  lw          $a2, 0x20($sp)
/* 011714 8011FA74 44802000 */  mtc1        $zero, $f4
/* 011718 8011FA78 00002825 */  move        $a1, $zero
/* 01171C 8011FA7C 8CD80054 */  lw          $t8, 0x54($a2)
/* 011720 8011FA80 AF000198 */  sw          $zero, 0x198($t8)
/* 011724 8011FA84 8CD90054 */  lw          $t9, 0x54($a2)
/* 011728 8011FA88 E72401A0 */  swc1        $f4, 0x1a0($t9)
/* 01172C 8011FA8C 0C046573 */  jal         func_801195CC
/* 011730 8011FA90 8FA4001C */   lw         $a0, 0x1c($sp)
/* 011734 8011FA94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011738 8011FA98 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01173C 8011FA9C 00001025 */  move        $v0, $zero
/* 011740 8011FAA0 03E00008 */  jr          $ra
/* 011744 8011FAA4 00000000 */   nop

glabel func_8011FAA8 # 92
/* 011748 8011FAA8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01174C 8011FAAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011750 8011FAB0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011754 8011FAB4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011758 8011FAB8 0C00422C */  jal         func_800108B0
/* 01175C 8011FABC AFAF001C */   sw         $t7, 0x1c($sp)
/* 011760 8011FAC0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011764 8011FAC4 0C046573 */  jal         func_801195CC
/* 011768 8011FAC8 00402825 */   move       $a1, $v0
/* 01176C 8011FACC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011770 8011FAD0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011774 8011FAD4 00001025 */  move        $v0, $zero
/* 011778 8011FAD8 03E00008 */  jr          $ra
/* 01177C 8011FADC 00000000 */   nop

glabel func_8011FAE0 # 93
/* 011780 8011FAE0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011784 8011FAE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011788 8011FAE8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01178C 8011FAEC 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011790 8011FAF0 0C004235 */  jal         func_800108D4
/* 011794 8011FAF4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011798 8011FAF8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01179C 8011FAFC 0C046573 */  jal         func_801195CC
/* 0117A0 8011FB00 00402825 */   move       $a1, $v0
/* 0117A4 8011FB04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0117A8 8011FB08 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0117AC 8011FB0C 00001025 */  move        $v0, $zero
/* 0117B0 8011FB10 03E00008 */  jr          $ra
/* 0117B4 8011FB14 00000000 */   nop

glabel func_8011FB18 # 94
/* 0117B8 8011FB18 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0117BC 8011FB1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0117C0 8011FB20 AFA40028 */  sw          $a0, 0x28($sp)
/* 0117C4 8011FB24 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0117C8 8011FB28 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0117CC 8011FB2C 0C0465A3 */  jal         func_8011968C
/* 0117D0 8011FB30 AFA40024 */   sw         $a0, 0x24($sp)
/* 0117D4 8011FB34 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0117D8 8011FB38 0C046599 */  jal         func_80119664
/* 0117DC 8011FB3C 8FA40024 */   lw         $a0, 0x24($sp)
/* 0117E0 8011FB40 AFA20020 */  sw          $v0, 0x20($sp)
/* 0117E4 8011FB44 0C00421B */  jal         func_8001086C
/* 0117E8 8011FB48 8FA40028 */   lw         $a0, 0x28($sp)
/* 0117EC 8011FB4C 8FA40028 */  lw          $a0, 0x28($sp)
/* 0117F0 8011FB50 8FA50020 */  lw          $a1, 0x20($sp)
/* 0117F4 8011FB54 0C00375D */  jal         func_8000DD74
/* 0117F8 8011FB58 8FA6001C */   lw         $a2, 0x1c($sp)
/* 0117FC 8011FB5C 8FA40024 */  lw          $a0, 0x24($sp)
/* 011800 8011FB60 0C046573 */  jal         func_801195CC
/* 011804 8011FB64 00002825 */   move       $a1, $zero
/* 011808 8011FB68 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01180C 8011FB6C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011810 8011FB70 24020001 */  addiu       $v0, $zero, 0x1
/* 011814 8011FB74 03E00008 */  jr          $ra
/* 011818 8011FB78 00000000 */   nop

glabel func_8011FB7C # 95
/* 01181C 8011FB7C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011820 8011FB80 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011824 8011FB84 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011828 8011FB88 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01182C 8011FB8C AFA40020 */  sw          $a0, 0x20($sp)
/* 011830 8011FB90 0C046FEC */  jal         func_8011BFB0
/* 011834 8011FB94 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011838 8011FB98 8FA60020 */  lw          $a2, 0x20($sp)
/* 01183C 8011FB9C 44802000 */  mtc1        $zero, $f4
/* 011840 8011FBA0 00002825 */  move        $a1, $zero
/* 011844 8011FBA4 8CD80054 */  lw          $t8, 0x54($a2)
/* 011848 8011FBA8 E70401A0 */  swc1        $f4, 0x1a0($t8)
/* 01184C 8011FBAC 0C046573 */  jal         func_801195CC
/* 011850 8011FBB0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 011854 8011FBB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011858 8011FBB8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01185C 8011FBBC 00001025 */  move        $v0, $zero
/* 011860 8011FBC0 03E00008 */  jr          $ra
/* 011864 8011FBC4 00000000 */   nop

glabel func_8011FBC8 # 96
/* 011868 8011FBC8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01186C 8011FBCC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011870 8011FBD0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011874 8011FBD4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011878 8011FBD8 0C0471EC */  jal         func_8011C7B0
/* 01187C 8011FBDC AFAF001C */   sw         $t7, 0x1c($sp)
/* 011880 8011FBE0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011884 8011FBE4 0C046573 */  jal         func_801195CC
/* 011888 8011FBE8 00402825 */   move       $a1, $v0
/* 01188C 8011FBEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011890 8011FBF0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011894 8011FBF4 00001025 */  move        $v0, $zero
/* 011898 8011FBF8 03E00008 */  jr          $ra
/* 01189C 8011FBFC 00000000 */   nop

glabel func_8011FC00 # 97
/* 0118A0 8011FC00 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0118A4 8011FC04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0118A8 8011FC08 8C820054 */  lw          $v0, 0x54($a0)
/* 0118AC 8011FC0C 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0118B0 8011FC10 0C046573 */  jal         func_801195CC
/* 0118B4 8011FC14 8C450218 */   lw         $a1, 0x218($v0)
/* 0118B8 8011FC18 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0118BC 8011FC1C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0118C0 8011FC20 00001025 */  move        $v0, $zero
/* 0118C4 8011FC24 03E00008 */  jr          $ra
/* 0118C8 8011FC28 00000000 */   nop

glabel func_8011FC2C # 98
/* 0118CC 8011FC2C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0118D0 8011FC30 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0118D4 8011FC34 8C820054 */  lw          $v0, 0x54($a0)
/* 0118D8 8011FC38 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0118DC 8011FC3C 0C046573 */  jal         func_801195CC
/* 0118E0 8011FC40 8C45021C */   lw         $a1, 0x21c($v0)
/* 0118E4 8011FC44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0118E8 8011FC48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0118EC 8011FC4C 00001025 */  move        $v0, $zero
/* 0118F0 8011FC50 03E00008 */  jr          $ra
/* 0118F4 8011FC54 00000000 */   nop

glabel func_8011FC58 # 99
/* 0118F8 8011FC58 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0118FC 8011FC5C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011900 8011FC60 8C820054 */  lw          $v0, 0x54($a0)
/* 011904 8011FC64 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011908 8011FC68 0C046573 */  jal         func_801195CC
/* 01190C 8011FC6C 8C450220 */   lw         $a1, 0x220($v0)
/* 011910 8011FC70 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011914 8011FC74 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011918 8011FC78 00001025 */  move        $v0, $zero
/* 01191C 8011FC7C 03E00008 */  jr          $ra
/* 011920 8011FC80 00000000 */   nop

glabel func_8011FC84 # 100
/* 011924 8011FC84 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011928 8011FC88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01192C 8011FC8C 8C820054 */  lw          $v0, 0x54($a0)
/* 011930 8011FC90 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011934 8011FC94 0C046573 */  jal         func_801195CC
/* 011938 8011FC98 8C450228 */   lw         $a1, 0x228($v0)
/* 01193C 8011FC9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011940 8011FCA0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011944 8011FCA4 00001025 */  move        $v0, $zero
/* 011948 8011FCA8 03E00008 */  jr          $ra
/* 01194C 8011FCAC 00000000 */   nop

glabel func_8011FCB0 # 101
/* 011950 8011FCB0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011954 8011FCB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011958 8011FCB8 8C820054 */  lw          $v0, 0x54($a0)
/* 01195C 8011FCBC 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 011960 8011FCC0 0C046573 */  jal         func_801195CC
/* 011964 8011FCC4 8C45022C */   lw         $a1, 0x22c($v0)
/* 011968 8011FCC8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01196C 8011FCCC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011970 8011FCD0 00001025 */  move        $v0, $zero
/* 011974 8011FCD4 03E00008 */  jr          $ra
/* 011978 8011FCD8 00000000 */   nop

glabel func_8011FCDC # 102
/* 01197C 8011FCDC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011980 8011FCE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011984 8011FCE4 8C820054 */  lw          $v0, 0x54($a0)
/* 011988 8011FCE8 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 01198C 8011FCEC 0C046573 */  jal         func_801195CC
/* 011990 8011FCF0 8C450230 */   lw         $a1, 0x230($v0)
/* 011994 8011FCF4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011998 8011FCF8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01199C 8011FCFC 00001025 */  move        $v0, $zero
/* 0119A0 8011FD00 03E00008 */  jr          $ra
/* 0119A4 8011FD04 00000000 */   nop

glabel func_8011FD08 # 103
/* 0119A8 8011FD08 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0119AC 8011FD0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0119B0 8011FD10 AFA40028 */  sw          $a0, 0x28($sp)
/* 0119B4 8011FD14 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0119B8 8011FD18 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0119BC 8011FD1C 0C046599 */  jal         func_80119664
/* 0119C0 8011FD20 AFA40024 */   sw         $a0, 0x24($sp)
/* 0119C4 8011FD24 8FA40024 */  lw          $a0, 0x24($sp)
/* 0119C8 8011FD28 0C046599 */  jal         func_80119664
/* 0119CC 8011FD2C AFA2001C */   sw         $v0, 0x1c($sp)
/* 0119D0 8011FD30 8FA6001C */  lw          $a2, 0x1c($sp)
/* 0119D4 8011FD34 8FA40028 */  lw          $a0, 0x28($sp)
/* 0119D8 8011FD38 0C00463C */  jal         func_800118F0
/* 0119DC 8011FD3C 00402825 */   move       $a1, $v0
/* 0119E0 8011FD40 3C198007 */  lui         $t9, %hi(D_80071E88)
/* 0119E4 8011FD44 8F391E88 */  lw          $t9, %lo(D_80071E88)($t9)
/* 0119E8 8011FD48 8FB80028 */  lw          $t8, 0x28($sp)
/* 0119EC 8011FD4C 8FA6001C */  lw          $a2, 0x1c($sp)
/* 0119F0 8011FD50 240100A6 */  addiu       $at, $zero, 0xa6
/* 0119F4 8011FD54 57190022 */  bnel        $t8, $t9, .L8011FDE0
/* 0119F8 8011FD58 8FA40024 */   lw         $a0, 0x24($sp)
/* 0119FC 8011FD5C 10C10007 */  beq         $a2, $at, .L8011FD7C
/* 011A00 8011FD60 240100A7 */   addiu      $at, $zero, 0xa7
/* 011A04 8011FD64 10C10005 */  beq         $a2, $at, .L8011FD7C
/* 011A08 8011FD68 240100AF */   addiu      $at, $zero, 0xaf
/* 011A0C 8011FD6C 10C10003 */  beq         $a2, $at, .L8011FD7C
/* 011A10 8011FD70 240100B3 */   addiu      $at, $zero, 0xb3
/* 011A14 8011FD74 54C1001A */  bnel        $a2, $at, .L8011FDE0
/* 011A18 8011FD78 8FA40024 */   lw         $a0, 0x24($sp)
.L8011FD7C:
/* 011A1C 8011FD7C 0C00E512 */  jal         func_80039448
/* 011A20 8011FD80 00000000 */   nop
/* 011A24 8011FD84 44823000 */  mtc1        $v0, $f6
/* 011A28 8011FD88 3C013FE0 */  lui         $at, 0x3fe0
/* 011A2C 8011FD8C 44812800 */  mtc1        $at, $f5
/* 011A30 8011FD90 44802000 */  mtc1        $zero, $f4
/* 011A34 8011FD94 04410006 */  bgez        $v0, .L8011FDB0
/* 011A38 8011FD98 46803221 */   cvt.d.w    $f8, $f6
/* 011A3C 8011FD9C 3C0141F0 */  lui         $at, 0x41f0
/* 011A40 8011FDA0 44815800 */  mtc1        $at, $f11
/* 011A44 8011FDA4 44805000 */  mtc1        $zero, $f10
/* 011A48 8011FDA8 00000000 */  nop
/* 011A4C 8011FDAC 462A4200 */  add.d       $f8, $f8, $f10
.L8011FDB0:
/* 011A50 8011FDB0 3C013DF0 */  lui         $at, 0x3df0
/* 011A54 8011FDB4 44818800 */  mtc1        $at, $f17
/* 011A58 8011FDB8 44808000 */  mtc1        $zero, $f16
/* 011A5C 8011FDBC 2404001A */  addiu       $a0, $zero, 0x1a
/* 011A60 8011FDC0 46304482 */  mul.d       $f18, $f8, $f16
/* 011A64 8011FDC4 4632203C */  c.lt.d      $f4, $f18
/* 011A68 8011FDC8 00000000 */  nop
/* 011A6C 8011FDCC 45020004 */  bc1fl       .L8011FDE0
/* 011A70 8011FDD0 8FA40024 */   lw         $a0, 0x24($sp)
/* 011A74 8011FDD4 0C00C160 */  jal         func_80030580
/* 011A78 8011FDD8 24050001 */   addiu      $a1, $zero, 0x1
/* 011A7C 8011FDDC 8FA40024 */  lw          $a0, 0x24($sp)
.L8011FDE0:
/* 011A80 8011FDE0 0C046573 */  jal         func_801195CC
/* 011A84 8011FDE4 00002825 */   move       $a1, $zero
/* 011A88 8011FDE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011A8C 8011FDEC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011A90 8011FDF0 00001025 */  move        $v0, $zero
/* 011A94 8011FDF4 03E00008 */  jr          $ra
/* 011A98 8011FDF8 00000000 */   nop

glabel func_8011FDFC # 104
/* 011A9C 8011FDFC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 011AA0 8011FE00 AFBF0024 */  sw          $ra, 0x24($sp)
/* 011AA4 8011FE04 AFB00020 */  sw          $s0, 0x20($sp)
/* 011AA8 8011FE08 AFA40040 */  sw          $a0, 0x40($sp)
/* 011AAC 8011FE0C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011AB0 8011FE10 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 011AB4 8011FE14 0C0465A3 */  jal         func_8011968C
/* 011AB8 8011FE18 02002025 */   move       $a0, $s0
/* 011ABC 8011FE1C E7A0002C */  swc1        $f0, 0x2c($sp)
/* 011AC0 8011FE20 0C0465A3 */  jal         func_8011968C
/* 011AC4 8011FE24 02002025 */   move       $a0, $s0
/* 011AC8 8011FE28 E7A00030 */  swc1        $f0, 0x30($sp)
/* 011ACC 8011FE2C 0C046599 */  jal         func_80119664
/* 011AD0 8011FE30 02002025 */   move       $a0, $s0
/* 011AD4 8011FE34 AFA20034 */  sw          $v0, 0x34($sp)
/* 011AD8 8011FE38 0C046599 */  jal         func_80119664
/* 011ADC 8011FE3C 02002025 */   move       $a0, $s0
/* 011AE0 8011FE40 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 011AE4 8011FE44 8FA40040 */  lw          $a0, 0x40($sp)
/* 011AE8 8011FE48 00402825 */  move        $a1, $v0
/* 011AEC 8011FE4C 8FA60034 */  lw          $a2, 0x34($sp)
/* 011AF0 8011FE50 8FA70030 */  lw          $a3, 0x30($sp)
/* 011AF4 8011FE54 0C046FCD */  jal         func_8011BF34
/* 011AF8 8011FE58 E7A40010 */   swc1       $f4, 0x10($sp)
/* 011AFC 8011FE5C 02002025 */  move        $a0, $s0
/* 011B00 8011FE60 0C046573 */  jal         func_801195CC
/* 011B04 8011FE64 00402825 */   move       $a1, $v0
/* 011B08 8011FE68 8FBF0024 */  lw          $ra, 0x24($sp)
/* 011B0C 8011FE6C 8FB00020 */  lw          $s0, 0x20($sp)
/* 011B10 8011FE70 27BD0040 */  addiu       $sp, $sp, 0x40
/* 011B14 8011FE74 03E00008 */  jr          $ra
/* 011B18 8011FE78 00001025 */   move       $v0, $zero

glabel func_8011FE7C # 105
/* 011B1C 8011FE7C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011B20 8011FE80 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011B24 8011FE84 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011B28 8011FE88 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011B2C 8011FE8C 0C046FBA */  jal         func_8011BEE8
/* 011B30 8011FE90 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011B34 8011FE94 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011B38 8011FE98 0C046573 */  jal         func_801195CC
/* 011B3C 8011FE9C 00402825 */   move       $a1, $v0
/* 011B40 8011FEA0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011B44 8011FEA4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011B48 8011FEA8 00001025 */  move        $v0, $zero
/* 011B4C 8011FEAC 03E00008 */  jr          $ra
/* 011B50 8011FEB0 00000000 */   nop

glabel func_8011FEB4 # 106
/* 011B54 8011FEB4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011B58 8011FEB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011B5C 8011FEBC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011B60 8011FEC0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011B64 8011FEC4 0C046F7A */  jal         func_8011BDE8
/* 011B68 8011FEC8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011B6C 8011FECC 44050000 */  mfc1        $a1, $f0
/* 011B70 8011FED0 0C04657F */  jal         func_801195FC
/* 011B74 8011FED4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 011B78 8011FED8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011B7C 8011FEDC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011B80 8011FEE0 00001025 */  move        $v0, $zero
/* 011B84 8011FEE4 03E00008 */  jr          $ra
/* 011B88 8011FEE8 00000000 */   nop

glabel func_8011FEEC # 107
/* 011B8C 8011FEEC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 011B90 8011FEF0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 011B94 8011FEF4 AFB00018 */  sw          $s0, 0x18($sp)
/* 011B98 8011FEF8 AFA40038 */  sw          $a0, 0x38($sp)
/* 011B9C 8011FEFC 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011BA0 8011FF00 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 011BA4 8011FF04 0C0465A3 */  jal         func_8011968C
/* 011BA8 8011FF08 02002025 */   move       $a0, $s0
/* 011BAC 8011FF0C 8FB80038 */  lw          $t8, 0x38($sp)
/* 011BB0 8011FF10 02002025 */  move        $a0, $s0
/* 011BB4 8011FF14 C704004C */  lwc1        $f4, 0x4c($t8)
/* 011BB8 8011FF18 46040181 */  sub.s       $f6, $f0, $f4
/* 011BBC 8011FF1C 0C0465A3 */  jal         func_8011968C
/* 011BC0 8011FF20 E7A60030 */   swc1       $f6, 0x30($sp)
/* 011BC4 8011FF24 8FB90038 */  lw          $t9, 0x38($sp)
/* 011BC8 8011FF28 02002025 */  move        $a0, $s0
/* 011BCC 8011FF2C C7280048 */  lwc1        $f8, 0x48($t9)
/* 011BD0 8011FF30 46080281 */  sub.s       $f10, $f0, $f8
/* 011BD4 8011FF34 0C0465A3 */  jal         func_8011968C
/* 011BD8 8011FF38 E7AA002C */   swc1       $f10, 0x2c($sp)
/* 011BDC 8011FF3C 8FA80038 */  lw          $t0, 0x38($sp)
/* 011BE0 8011FF40 27A40028 */  addiu       $a0, $sp, 0x28
/* 011BE4 8011FF44 C5100044 */  lwc1        $f16, 0x44($t0)
/* 011BE8 8011FF48 46100481 */  sub.s       $f18, $f0, $f16
/* 011BEC 8011FF4C 0C00E3B7 */  jal         func_80038EDC
/* 011BF0 8011FF50 E7B20028 */   swc1       $f18, 0x28($sp)
/* 011BF4 8011FF54 44050000 */  mfc1        $a1, $f0
/* 011BF8 8011FF58 0C04657F */  jal         func_801195FC
/* 011BFC 8011FF5C 02002025 */   move       $a0, $s0
/* 011C00 8011FF60 8FBF001C */  lw          $ra, 0x1c($sp)
/* 011C04 8011FF64 8FB00018 */  lw          $s0, 0x18($sp)
/* 011C08 8011FF68 27BD0038 */  addiu       $sp, $sp, 0x38
/* 011C0C 8011FF6C 03E00008 */  jr          $ra
/* 011C10 8011FF70 00001025 */   move       $v0, $zero

glabel func_8011FF74 # 108
/* 011C14 8011FF74 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 011C18 8011FF78 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011C1C 8011FF7C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011C20 8011FF80 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011C24 8011FF84 0C046599 */  jal         func_80119664
/* 011C28 8011FF88 AFA40034 */   sw         $a0, 0x34($sp)
/* 011C2C 8011FF8C 0C04701F */  jal         func_8011C07C
/* 011C30 8011FF90 00402025 */   move       $a0, $v0
/* 011C34 8011FF94 14400006 */  bnez        $v0, .L8011FFB0
/* 011C38 8011FF98 00401825 */   move       $v1, $v0
/* 011C3C 8011FF9C 8FA40034 */  lw          $a0, 0x34($sp)
/* 011C40 8011FFA0 0C04657F */  jal         func_801195FC
/* 011C44 8011FFA4 3C05BF80 */   lui        $a1, 0xbf80
/* 011C48 8011FFA8 10000015 */  b           .L80120000
/* 011C4C 8011FFAC 00001025 */   move       $v0, $zero
.L8011FFB0:
/* 011C50 8011FFB0 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 011C54 8011FFB4 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 011C58 8011FFB8 C4440000 */  lwc1        $f4, 0x0($v0)
/* 011C5C 8011FFBC C4660044 */  lwc1        $f6, 0x44($v1)
/* 011C60 8011FFC0 C44A0004 */  lwc1        $f10, 0x4($v0)
/* 011C64 8011FFC4 27A40028 */  addiu       $a0, $sp, 0x28
/* 011C68 8011FFC8 46062201 */  sub.s       $f8, $f4, $f6
/* 011C6C 8011FFCC C4440008 */  lwc1        $f4, 0x8($v0)
/* 011C70 8011FFD0 E7A80030 */  swc1        $f8, 0x30($sp)
/* 011C74 8011FFD4 C4700048 */  lwc1        $f16, 0x48($v1)
/* 011C78 8011FFD8 46105481 */  sub.s       $f18, $f10, $f16
/* 011C7C 8011FFDC E7B2002C */  swc1        $f18, 0x2c($sp)
/* 011C80 8011FFE0 C466004C */  lwc1        $f6, 0x4c($v1)
/* 011C84 8011FFE4 46062201 */  sub.s       $f8, $f4, $f6
/* 011C88 8011FFE8 0C00E3B7 */  jal         func_80038EDC
/* 011C8C 8011FFEC E7A80028 */   swc1       $f8, 0x28($sp)
/* 011C90 8011FFF0 44050000 */  mfc1        $a1, $f0
/* 011C94 8011FFF4 0C04657F */  jal         func_801195FC
/* 011C98 8011FFF8 8FA40034 */   lw         $a0, 0x34($sp)
/* 011C9C 8011FFFC 00001025 */  move        $v0, $zero
.L80120000:
/* 011CA0 80120000 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011CA4 80120004 27BD0038 */  addiu       $sp, $sp, 0x38
/* 011CA8 80120008 03E00008 */  jr          $ra
/* 011CAC 8012000C 00000000 */   nop

glabel func_80120010 # 109
/* 011CB0 80120010 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011CB4 80120014 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011CB8 80120018 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011CBC 8012001C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011CC0 80120020 0C046FE5 */  jal         func_8011BF94
/* 011CC4 80120024 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011CC8 80120028 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011CCC 8012002C 0C046573 */  jal         func_801195CC
/* 011CD0 80120030 00002825 */   move       $a1, $zero
/* 011CD4 80120034 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011CD8 80120038 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011CDC 8012003C 00001025 */  move        $v0, $zero
/* 011CE0 80120040 03E00008 */  jr          $ra
/* 011CE4 80120044 00000000 */   nop

glabel func_80120048 # 110
/* 011CE8 80120048 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011CEC 8012004C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011CF0 80120050 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011CF4 80120054 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011CF8 80120058 0C046B5E */  jal         func_8011AD78
/* 011CFC 8012005C AFAF001C */   sw         $t7, 0x1c($sp)
/* 011D00 80120060 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011D04 80120064 0C046573 */  jal         func_801195CC
/* 011D08 80120068 00002825 */   move       $a1, $zero
/* 011D0C 8012006C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011D10 80120070 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011D14 80120074 00001025 */  move        $v0, $zero
/* 011D18 80120078 03E00008 */  jr          $ra
/* 011D1C 8012007C 00000000 */   nop

glabel func_80120080 # 111
/* 011D20 80120080 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011D24 80120084 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011D28 80120088 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011D2C 8012008C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011D30 80120090 0C047011 */  jal         func_8011C044
/* 011D34 80120094 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011D38 80120098 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011D3C 8012009C 0C046573 */  jal         func_801195CC
/* 011D40 801200A0 00002825 */   move       $a1, $zero
/* 011D44 801200A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011D48 801200A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011D4C 801200AC 00001025 */  move        $v0, $zero
/* 011D50 801200B0 03E00008 */  jr          $ra
/* 011D54 801200B4 00000000 */   nop

glabel func_801200B8 # 112
/* 011D58 801200B8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 011D5C 801200BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011D60 801200C0 AFA40028 */  sw          $a0, 0x28($sp)
/* 011D64 801200C4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 011D68 801200C8 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 011D6C 801200CC 0C046599 */  jal         func_80119664
/* 011D70 801200D0 AFA40024 */   sw         $a0, 0x24($sp)
/* 011D74 801200D4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 011D78 801200D8 0C0465A3 */  jal         func_8011968C
/* 011D7C 801200DC 8FA40024 */   lw         $a0, 0x24($sp)
/* 011D80 801200E0 44050000 */  mfc1        $a1, $f0
/* 011D84 801200E4 8FA40028 */  lw          $a0, 0x28($sp)
/* 011D88 801200E8 0C00519D */  jal         func_80014674
/* 011D8C 801200EC 8FA6001C */   lw         $a2, 0x1c($sp)
/* 011D90 801200F0 8FA40024 */  lw          $a0, 0x24($sp)
/* 011D94 801200F4 0C046573 */  jal         func_801195CC
/* 011D98 801200F8 00002825 */   move       $a1, $zero
/* 011D9C 801200FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011DA0 80120100 27BD0028 */  addiu       $sp, $sp, 0x28
/* 011DA4 80120104 00001025 */  move        $v0, $zero
/* 011DA8 80120108 03E00008 */  jr          $ra
/* 011DAC 8012010C 00000000 */   nop

glabel func_80120110 # 113
/* 011DB0 80120110 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011DB4 80120114 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011DB8 80120118 0C046754 */  jal         func_80119D50
/* 011DBC 8012011C 2405000A */   addiu      $a1, $zero, 0xa
/* 011DC0 80120120 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011DC4 80120124 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011DC8 80120128 24020002 */  addiu       $v0, $zero, 0x2
/* 011DCC 8012012C 03E00008 */  jr          $ra
/* 011DD0 80120130 00000000 */   nop

glabel func_80120134 # 114
/* 011DD4 80120134 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011DD8 80120138 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011DDC 8012013C 0C046754 */  jal         func_80119D50
/* 011DE0 80120140 2405000B */   addiu      $a1, $zero, 0xb
/* 011DE4 80120144 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011DE8 80120148 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011DEC 8012014C 24020002 */  addiu       $v0, $zero, 0x2
/* 011DF0 80120150 03E00008 */  jr          $ra
/* 011DF4 80120154 00000000 */   nop

glabel func_80120158 # 115
/* 011DF8 80120158 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011DFC 8012015C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011E00 80120160 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011E04 80120164 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011E08 80120168 0C046FF3 */  jal         func_8011BFCC
/* 011E0C 8012016C AFA4001C */   sw         $a0, 0x1c($sp)
/* 011E10 80120170 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011E14 80120174 0C046573 */  jal         func_801195CC
/* 011E18 80120178 00002825 */   move       $a1, $zero
/* 011E1C 8012017C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E20 80120180 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011E24 80120184 00001025 */  move        $v0, $zero
/* 011E28 80120188 03E00008 */  jr          $ra
/* 011E2C 8012018C 00000000 */   nop

glabel func_80120190 # 116
/* 011E30 80120190 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011E34 80120194 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011E38 80120198 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011E3C 8012019C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011E40 801201A0 0C04544A */  jal         func_80115128
/* 011E44 801201A4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 011E48 801201A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011E4C 801201AC 0C046573 */  jal         func_801195CC
/* 011E50 801201B0 00002825 */   move       $a1, $zero
/* 011E54 801201B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E58 801201B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011E5C 801201BC 00001025 */  move        $v0, $zero
/* 011E60 801201C0 03E00008 */  jr          $ra
/* 011E64 801201C4 00000000 */   nop

glabel func_801201C8 # 117
/* 011E68 801201C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011E6C 801201CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 011E70 801201D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011E74 801201D4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 011E78 801201D8 0C04545B */  jal         func_8011516C
/* 011E7C 801201DC AFAF001C */   sw         $t7, 0x1c($sp)
/* 011E80 801201E0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011E84 801201E4 0C046573 */  jal         func_801195CC
/* 011E88 801201E8 00002825 */   move       $a1, $zero
/* 011E8C 801201EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011E90 801201F0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011E94 801201F4 00001025 */  move        $v0, $zero
/* 011E98 801201F8 03E00008 */  jr          $ra
/* 011E9C 801201FC 00000000 */   nop

glabel func_80120200 # 118
/* 011EA0 80120200 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 011EA4 80120204 AFBF001C */  sw          $ra, 0x1c($sp)
/* 011EA8 80120208 AFB00018 */  sw          $s0, 0x18($sp)
/* 011EAC 8012020C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011EB0 80120210 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 011EB4 80120214 0C0465A3 */  jal         func_8011968C
/* 011EB8 80120218 02002025 */   move       $a0, $s0
/* 011EBC 8012021C E7A00028 */  swc1        $f0, 0x28($sp)
/* 011EC0 80120220 0C0465A3 */  jal         func_8011968C
/* 011EC4 80120224 02002025 */   move       $a0, $s0
/* 011EC8 80120228 E7A00024 */  swc1        $f0, 0x24($sp)
/* 011ECC 8012022C 0C0465A3 */  jal         func_8011968C
/* 011ED0 80120230 02002025 */   move       $a0, $s0
/* 011ED4 80120234 E7A00020 */  swc1        $f0, 0x20($sp)
/* 011ED8 80120238 0C0456B5 */  jal         func_80115AD4
/* 011EDC 8012023C 27A40020 */   addiu      $a0, $sp, 0x20
/* 011EE0 80120240 02002025 */  move        $a0, $s0
/* 011EE4 80120244 0C046573 */  jal         func_801195CC
/* 011EE8 80120248 00002825 */   move       $a1, $zero
/* 011EEC 8012024C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 011EF0 80120250 8FB00018 */  lw          $s0, 0x18($sp)
/* 011EF4 80120254 27BD0030 */  addiu       $sp, $sp, 0x30
/* 011EF8 80120258 03E00008 */  jr          $ra
/* 011EFC 8012025C 00001025 */   move       $v0, $zero

glabel func_80120260 # 119
/* 011F00 80120260 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011F04 80120264 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011F08 80120268 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011F0C 8012026C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011F10 80120270 0C0465A3 */  jal         func_8011968C
/* 011F14 80120274 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011F18 80120278 0C0456C7 */  jal         func_80115B1C
/* 011F1C 8012027C 46000306 */   mov.s      $f12, $f0
/* 011F20 80120280 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011F24 80120284 0C046573 */  jal         func_801195CC
/* 011F28 80120288 00002825 */   move       $a1, $zero
/* 011F2C 8012028C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011F30 80120290 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011F34 80120294 00001025 */  move        $v0, $zero
/* 011F38 80120298 03E00008 */  jr          $ra
/* 011F3C 8012029C 00000000 */   nop

glabel func_801202A0 # 120
/* 011F40 801202A0 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 011F44 801202A4 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 011F48 801202A8 C4440018 */  lwc1        $f4, 0x18($v0)
/* 011F4C 801202AC C446000C */  lwc1        $f6, 0xc($v0)
/* 011F50 801202B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011F54 801202B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011F58 801202B8 46062200 */  add.s       $f8, $f4, $f6
/* 011F5C 801202BC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011F60 801202C0 44054000 */  mfc1        $a1, $f8
/* 011F64 801202C4 0C04657F */  jal         func_801195FC
/* 011F68 801202C8 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 011F6C 801202CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011F70 801202D0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011F74 801202D4 00001025 */  move        $v0, $zero
/* 011F78 801202D8 03E00008 */  jr          $ra
/* 011F7C 801202DC 00000000 */   nop

glabel func_801202E0 # 121
/* 011F80 801202E0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011F84 801202E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011F88 801202E8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011F8C 801202EC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 011F90 801202F0 0C0465A3 */  jal         func_8011968C
/* 011F94 801202F4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 011F98 801202F8 0C0456D2 */  jal         func_80115B48
/* 011F9C 801202FC 46000306 */   mov.s      $f12, $f0
/* 011FA0 80120300 8FA4001C */  lw          $a0, 0x1c($sp)
/* 011FA4 80120304 0C046573 */  jal         func_801195CC
/* 011FA8 80120308 00002825 */   move       $a1, $zero
/* 011FAC 8012030C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011FB0 80120310 27BD0020 */  addiu       $sp, $sp, 0x20
/* 011FB4 80120314 00001025 */  move        $v0, $zero
/* 011FB8 80120318 03E00008 */  jr          $ra
/* 011FBC 8012031C 00000000 */   nop

glabel func_80120320 # 122
/* 011FC0 80120320 3C02800F */  lui         $v0, %hi(D_800F3E20)
/* 011FC4 80120324 24423E20 */  addiu       $v0, $v0, %lo(D_800F3E20)
/* 011FC8 80120328 C4440014 */  lwc1        $f4, 0x14($v0)
/* 011FCC 8012032C C4460010 */  lwc1        $f6, 0x10($v0)
/* 011FD0 80120330 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011FD4 80120334 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011FD8 80120338 46062200 */  add.s       $f8, $f4, $f6
/* 011FDC 8012033C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011FE0 80120340 44054000 */  mfc1        $a1, $f8
/* 011FE4 80120344 0C04657F */  jal         func_801195FC
/* 011FE8 80120348 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 011FEC 8012034C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011FF0 80120350 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011FF4 80120354 00001025 */  move        $v0, $zero
/* 011FF8 80120358 03E00008 */  jr          $ra
/* 011FFC 8012035C 00000000 */   nop

glabel func_80120360 # 123
/* 012000 80120360 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012004 80120364 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012008 80120368 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01200C 8012036C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012010 80120370 0C046FA1 */  jal         func_8011BE84
/* 012014 80120374 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012018 80120378 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01201C 8012037C 0C046573 */  jal         func_801195CC
/* 012020 80120380 00402825 */   move       $a1, $v0
/* 012024 80120384 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012028 80120388 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01202C 8012038C 00001025 */  move        $v0, $zero
/* 012030 80120390 03E00008 */  jr          $ra
/* 012034 80120394 00000000 */   nop

glabel func_80120398 # 124
/* 012038 80120398 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01203C 8012039C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012040 801203A0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012044 801203A4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012048 801203A8 AFA0001C */  sw          $zero, 0x1c($sp)
/* 01204C 801203AC 0C046599 */  jal         func_80119664
/* 012050 801203B0 AFA40024 */   sw         $a0, 0x24($sp)
/* 012054 801203B4 000278C0 */  sll         $t7, $v0, 3
/* 012058 801203B8 01E27823 */  subu        $t7, $t7, $v0
/* 01205C 801203BC 000F7880 */  sll         $t7, $t7, 2
/* 012060 801203C0 01E27821 */  addu        $t7, $t7, $v0
/* 012064 801203C4 000F7880 */  sll         $t7, $t7, 2
/* 012068 801203C8 3C038013 */  lui         $v1, %hi(D_80129338 + 0x2)
/* 01206C 801203CC 006F1821 */  addu        $v1, $v1, $t7
/* 012070 801203D0 9063933A */  lbu         $v1, %lo(D_80129338 + 0x2)($v1)
/* 012074 801203D4 24010002 */  addiu       $at, $zero, 0x2
/* 012078 801203D8 8FA40024 */  lw          $a0, 0x24($sp)
/* 01207C 801203DC 10610008 */  beq         $v1, $at, .L80120400
/* 012080 801203E0 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012084 801203E4 24010004 */  addiu       $at, $zero, 0x4
/* 012088 801203E8 10610005 */  beq         $v1, $at, .L80120400
/* 01208C 801203EC 24010005 */   addiu      $at, $zero, 0x5
/* 012090 801203F0 10610003 */  beq         $v1, $at, .L80120400
/* 012094 801203F4 24010006 */   addiu      $at, $zero, 0x6
/* 012098 801203F8 14610002 */  bne         $v1, $at, .L80120404
/* 01209C 801203FC 00000000 */   nop
.L80120400:
/* 0120A0 80120400 24060001 */  addiu       $a2, $zero, 0x1
.L80120404:
/* 0120A4 80120404 0C046573 */  jal         func_801195CC
/* 0120A8 80120408 00C02825 */   move       $a1, $a2
/* 0120AC 8012040C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0120B0 80120410 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0120B4 80120414 00001025 */  move        $v0, $zero
/* 0120B8 80120418 03E00008 */  jr          $ra
/* 0120BC 8012041C 00000000 */   nop

glabel func_80120420 # 125
/* 0120C0 80120420 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0120C4 80120424 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0120C8 80120428 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0120CC 8012042C 3C058007 */  lui         $a1, %hi(D_8007000C)
/* 0120D0 80120430 8CA5000C */  lw          $a1, %lo(D_8007000C)($a1)
/* 0120D4 80120434 0C046573 */  jal         func_801195CC
/* 0120D8 80120438 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0120DC 8012043C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0120E0 80120440 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0120E4 80120444 00001025 */  move        $v0, $zero
/* 0120E8 80120448 03E00008 */  jr          $ra
/* 0120EC 8012044C 00000000 */   nop

glabel func_80120450 # 126
/* 0120F0 80120450 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 0120F4 80120454 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0120F8 80120458 AFB00028 */  sw          $s0, 0x28($sp)
/* 0120FC 8012045C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012100 80120460 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 012104 80120464 AFA00040 */  sw          $zero, 0x40($sp)
/* 012108 80120468 0C046599 */  jal         func_80119664
/* 01210C 8012046C 02002025 */   move       $a0, $s0
/* 012110 80120470 AFA2004C */  sw          $v0, 0x4c($sp)
/* 012114 80120474 0C046599 */  jal         func_80119664
/* 012118 80120478 02002025 */   move       $a0, $s0
/* 01211C 8012047C AFA20048 */  sw          $v0, 0x48($sp)
/* 012120 80120480 0C046599 */  jal         func_80119664
/* 012124 80120484 02002025 */   move       $a0, $s0
/* 012128 80120488 AFA20044 */  sw          $v0, 0x44($sp)
/* 01212C 8012048C 0C046599 */  jal         func_80119664
/* 012130 80120490 02002025 */   move       $a0, $s0
/* 012134 80120494 AFA2003C */  sw          $v0, 0x3c($sp)
/* 012138 80120498 0C046599 */  jal         func_80119664
/* 01213C 8012049C 02002025 */   move       $a0, $s0
/* 012140 801204A0 AFA20038 */  sw          $v0, 0x38($sp)
/* 012144 801204A4 0C046599 */  jal         func_80119664
/* 012148 801204A8 02002025 */   move       $a0, $s0
/* 01214C 801204AC 0C001A23 */  jal         func_8000688C
/* 012150 801204B0 00402025 */   move       $a0, $v0
/* 012154 801204B4 10400015 */  beqz        $v0, .L8012050C
/* 012158 801204B8 00402025 */   move       $a0, $v0
/* 01215C 801204BC 27AF0038 */  addiu       $t7, $sp, 0x38
/* 012160 801204C0 8DE10000 */  lw          $at, 0x0($t7)
/* 012164 801204C4 AFA10004 */  sw          $at, 0x4($sp)
/* 012168 801204C8 8DF90004 */  lw          $t9, 0x4($t7)
/* 01216C 801204CC 8FA50004 */  lw          $a1, 0x4($sp)
/* 012170 801204D0 AFB90008 */  sw          $t9, 0x8($sp)
/* 012174 801204D4 8DE10008 */  lw          $at, 0x8($t7)
/* 012178 801204D8 8FA60008 */  lw          $a2, 0x8($sp)
/* 01217C 801204DC AFA1000C */  sw          $at, 0xc($sp)
/* 012180 801204E0 8DF9000C */  lw          $t9, 0xc($t7)
/* 012184 801204E4 8FA7000C */  lw          $a3, 0xc($sp)
/* 012188 801204E8 AFB90010 */  sw          $t9, 0x10($sp)
/* 01218C 801204EC 8DE10010 */  lw          $at, 0x10($t7)
/* 012190 801204F0 AFA10014 */  sw          $at, 0x14($sp)
/* 012194 801204F4 8DF90014 */  lw          $t9, 0x14($t7)
/* 012198 801204F8 AFA0001C */  sw          $zero, 0x1c($sp)
/* 01219C 801204FC 0C047109 */  jal         func_8011C424
/* 0121A0 80120500 AFB90018 */   sw         $t9, 0x18($sp)
/* 0121A4 80120504 10000002 */  b           .L80120510
/* 0121A8 80120508 00402825 */   move       $a1, $v0
.L8012050C:
/* 0121AC 8012050C 00002825 */  move        $a1, $zero
.L80120510:
/* 0121B0 80120510 0C046573 */  jal         func_801195CC
/* 0121B4 80120514 02002025 */   move       $a0, $s0
/* 0121B8 80120518 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0121BC 8012051C 8FB00028 */  lw          $s0, 0x28($sp)
/* 0121C0 80120520 27BD0058 */  addiu       $sp, $sp, 0x58
/* 0121C4 80120524 03E00008 */  jr          $ra
/* 0121C8 80120528 00001025 */   move       $v0, $zero

glabel func_8012052C # 127
/* 0121CC 8012052C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0121D0 80120530 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0121D4 80120534 AFA40028 */  sw          $a0, 0x28($sp)
/* 0121D8 80120538 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0121DC 8012053C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0121E0 80120540 0C0465A3 */  jal         func_8011968C
/* 0121E4 80120544 AFA40024 */   sw         $a0, 0x24($sp)
/* 0121E8 80120548 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0121EC 8012054C 0C046599 */  jal         func_80119664
/* 0121F0 80120550 8FA40024 */   lw         $a0, 0x24($sp)
/* 0121F4 80120554 8FA40028 */  lw          $a0, 0x28($sp)
/* 0121F8 80120558 00402825 */  move        $a1, $v0
/* 0121FC 8012055C 0C0469F0 */  jal         func_8011A7C0
/* 012200 80120560 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012204 80120564 8FA40024 */  lw          $a0, 0x24($sp)
/* 012208 80120568 0C046573 */  jal         func_801195CC
/* 01220C 8012056C 00402825 */   move       $a1, $v0
/* 012210 80120570 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012214 80120574 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012218 80120578 00001025 */  move        $v0, $zero
/* 01221C 8012057C 03E00008 */  jr          $ra
/* 012220 80120580 00000000 */   nop

glabel func_80120584 # 128
/* 012224 80120584 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012228 80120588 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01222C 8012058C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012230 80120590 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012234 80120594 0C046A21 */  jal         func_8011A884
/* 012238 80120598 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01223C 8012059C 44050000 */  mfc1        $a1, $f0
/* 012240 801205A0 0C04657F */  jal         func_801195FC
/* 012244 801205A4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012248 801205A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01224C 801205AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012250 801205B0 00001025 */  move        $v0, $zero
/* 012254 801205B4 03E00008 */  jr          $ra
/* 012258 801205B8 00000000 */   nop

glabel func_801205BC # 129
/* 01225C 801205BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012260 801205C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012264 801205C4 AFA40020 */  sw          $a0, 0x20($sp)
/* 012268 801205C8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01226C 801205CC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012270 801205D0 0C046599 */  jal         func_80119664
/* 012274 801205D4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012278 801205D8 8FA40020 */  lw          $a0, 0x20($sp)
/* 01227C 801205DC 0C046A2F */  jal         func_8011A8BC
/* 012280 801205E0 00402825 */   move       $a1, $v0
/* 012284 801205E4 44050000 */  mfc1        $a1, $f0
/* 012288 801205E8 0C04657F */  jal         func_801195FC
/* 01228C 801205EC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012290 801205F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012294 801205F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012298 801205F8 00001025 */  move        $v0, $zero
/* 01229C 801205FC 03E00008 */  jr          $ra
/* 0122A0 80120600 00000000 */   nop

glabel func_80120604 # 130
/* 0122A4 80120604 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0122A8 80120608 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0122AC 8012060C AFA40020 */  sw          $a0, 0x20($sp)
/* 0122B0 80120610 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0122B4 80120614 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0122B8 80120618 0C046599 */  jal         func_80119664
/* 0122BC 8012061C AFA4001C */   sw         $a0, 0x1c($sp)
/* 0122C0 80120620 8FA40020 */  lw          $a0, 0x20($sp)
/* 0122C4 80120624 0C046A4E */  jal         func_8011A938
/* 0122C8 80120628 00402825 */   move       $a1, $v0
/* 0122CC 8012062C 44050000 */  mfc1        $a1, $f0
/* 0122D0 80120630 0C04657F */  jal         func_801195FC
/* 0122D4 80120634 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0122D8 80120638 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0122DC 8012063C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0122E0 80120640 00001025 */  move        $v0, $zero
/* 0122E4 80120644 03E00008 */  jr          $ra
/* 0122E8 80120648 00000000 */   nop

glabel func_8012064C # 131
/* 0122EC 8012064C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0122F0 80120650 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0122F4 80120654 8C820054 */  lw          $v0, 0x54($a0)
/* 0122F8 80120658 00803025 */  move        $a2, $a0
/* 0122FC 8012065C C4C60048 */  lwc1        $f6, 0x48($a2)
/* 012300 80120660 C44401F0 */  lwc1        $f4, 0x1f0($v0)
/* 012304 80120664 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 012308 80120668 46062201 */  sub.s       $f8, $f4, $f6
/* 01230C 8012066C 44054000 */  mfc1        $a1, $f8
/* 012310 80120670 0C04657F */  jal         func_801195FC
/* 012314 80120674 00000000 */   nop
/* 012318 80120678 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01231C 8012067C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 012320 80120680 00001025 */  move        $v0, $zero
/* 012324 80120684 03E00008 */  jr          $ra
/* 012328 80120688 00000000 */   nop

glabel func_8012068C # 132
/* 01232C 8012068C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012330 80120690 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012334 80120694 AFA40020 */  sw          $a0, 0x20($sp)
/* 012338 80120698 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01233C 8012069C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012340 801206A0 0C046599 */  jal         func_80119664
/* 012344 801206A4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012348 801206A8 8FA40020 */  lw          $a0, 0x20($sp)
/* 01234C 801206AC 0C046A5E */  jal         func_8011A978
/* 012350 801206B0 00402825 */   move       $a1, $v0
/* 012354 801206B4 44050000 */  mfc1        $a1, $f0
/* 012358 801206B8 0C04657F */  jal         func_801195FC
/* 01235C 801206BC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012360 801206C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012364 801206C4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012368 801206C8 00001025 */  move        $v0, $zero
/* 01236C 801206CC 03E00008 */  jr          $ra
/* 012370 801206D0 00000000 */   nop

glabel func_801206D4 # 133
/* 012374 801206D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012378 801206D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01237C 801206DC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012380 801206E0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012384 801206E4 0C046A79 */  jal         func_8011A9E4
/* 012388 801206E8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01238C 801206EC 44050000 */  mfc1        $a1, $f0
/* 012390 801206F0 0C04657F */  jal         func_801195FC
/* 012394 801206F4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012398 801206F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01239C 801206FC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0123A0 80120700 00001025 */  move        $v0, $zero
/* 0123A4 80120704 03E00008 */  jr          $ra
/* 0123A8 80120708 00000000 */   nop

glabel func_8012070C # 134
/* 0123AC 8012070C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0123B0 80120710 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0123B4 80120714 AFA40020 */  sw          $a0, 0x20($sp)
/* 0123B8 80120718 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0123BC 8012071C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0123C0 80120720 0C046599 */  jal         func_80119664
/* 0123C4 80120724 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0123C8 80120728 8FA40020 */  lw          $a0, 0x20($sp)
/* 0123CC 8012072C 0C046A8C */  jal         func_8011AA30
/* 0123D0 80120730 00402825 */   move       $a1, $v0
/* 0123D4 80120734 44050000 */  mfc1        $a1, $f0
/* 0123D8 80120738 0C04657F */  jal         func_801195FC
/* 0123DC 8012073C 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0123E0 80120740 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0123E4 80120744 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0123E8 80120748 00001025 */  move        $v0, $zero
/* 0123EC 8012074C 03E00008 */  jr          $ra
/* 0123F0 80120750 00000000 */   nop

glabel func_80120754 # 135
/* 0123F4 80120754 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0123F8 80120758 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0123FC 8012075C AFA40020 */  sw          $a0, 0x20($sp)
/* 012400 80120760 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012404 80120764 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012408 80120768 0C046599 */  jal         func_80119664
/* 01240C 8012076C AFA4001C */   sw         $a0, 0x1c($sp)
/* 012410 80120770 8FA40020 */  lw          $a0, 0x20($sp)
/* 012414 80120774 0C046A98 */  jal         func_8011AA60
/* 012418 80120778 00402825 */   move       $a1, $v0
/* 01241C 8012077C 44050000 */  mfc1        $a1, $f0
/* 012420 80120780 0C04657F */  jal         func_801195FC
/* 012424 80120784 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012428 80120788 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01242C 8012078C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012430 80120790 00001025 */  move        $v0, $zero
/* 012434 80120794 03E00008 */  jr          $ra
/* 012438 80120798 00000000 */   nop

glabel func_8012079C # 136
/* 01243C 8012079C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012440 801207A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012444 801207A4 AFA40020 */  sw          $a0, 0x20($sp)
/* 012448 801207A8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01244C 801207AC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012450 801207B0 0C046599 */  jal         func_80119664
/* 012454 801207B4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012458 801207B8 8FB80020 */  lw          $t8, 0x20($sp)
/* 01245C 801207BC 0002C880 */  sll         $t9, $v0, 2
/* 012460 801207C0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012464 801207C4 03194021 */  addu        $t0, $t8, $t9
/* 012468 801207C8 0C04657F */  jal         func_801195FC
/* 01246C 801207CC 8D05000C */   lw         $a1, 0xc($t0)
/* 012470 801207D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012474 801207D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012478 801207D8 00001025 */  move        $v0, $zero
/* 01247C 801207DC 03E00008 */  jr          $ra
/* 012480 801207E0 00000000 */   nop

glabel func_801207E4 # 137
/* 012484 801207E4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012488 801207E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01248C 801207EC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012490 801207F0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012494 801207F4 0C046AA3 */  jal         func_8011AA8C
/* 012498 801207F8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01249C 801207FC 44050000 */  mfc1        $a1, $f0
/* 0124A0 80120800 0C04657F */  jal         func_801195FC
/* 0124A4 80120804 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0124A8 80120808 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0124AC 8012080C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0124B0 80120810 00001025 */  move        $v0, $zero
/* 0124B4 80120814 03E00008 */  jr          $ra
/* 0124B8 80120818 00000000 */   nop

glabel func_8012081C # 138
/* 0124BC 8012081C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0124C0 80120820 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0124C4 80120824 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0124C8 80120828 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0124CC 8012082C 0C046AA6 */  jal         func_8011AA98
/* 0124D0 80120830 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0124D4 80120834 44050000 */  mfc1        $a1, $f0
/* 0124D8 80120838 0C04657F */  jal         func_801195FC
/* 0124DC 8012083C 8FA4001C */   lw         $a0, 0x1c($sp)
/* 0124E0 80120840 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0124E4 80120844 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0124E8 80120848 00001025 */  move        $v0, $zero
/* 0124EC 8012084C 03E00008 */  jr          $ra
/* 0124F0 80120850 00000000 */   nop

glabel func_80120854 # 139
/* 0124F4 80120854 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0124F8 80120858 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0124FC 8012085C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012500 80120860 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012504 80120864 0C046AA9 */  jal         func_8011AAA4
/* 012508 80120868 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01250C 8012086C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012510 80120870 0C046573 */  jal         func_801195CC
/* 012514 80120874 00402825 */   move       $a1, $v0
/* 012518 80120878 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01251C 8012087C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012520 80120880 00001025 */  move        $v0, $zero
/* 012524 80120884 03E00008 */  jr          $ra
/* 012528 80120888 00000000 */   nop

glabel func_8012088C # 140
/* 01252C 8012088C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012530 80120890 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012534 80120894 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012538 80120898 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01253C 8012089C 0C046AAC */  jal         func_8011AAB0
/* 012540 801208A0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012544 801208A4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012548 801208A8 0C046573 */  jal         func_801195CC
/* 01254C 801208AC 00402825 */   move       $a1, $v0
/* 012550 801208B0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012554 801208B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012558 801208B8 00001025 */  move        $v0, $zero
/* 01255C 801208BC 03E00008 */  jr          $ra
/* 012560 801208C0 00000000 */   nop

glabel func_801208C4 # 141
/* 012564 801208C4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012568 801208C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01256C 801208CC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012570 801208D0 3C05800F */  lui         $a1, %hi(D_800F3EAC)
/* 012574 801208D4 8CA53EAC */  lw          $a1, %lo(D_800F3EAC)($a1)
/* 012578 801208D8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01257C 801208DC 24060000 */  addiu       $a2, $zero, 0x0
/* 012580 801208E0 0C046ACD */  jal         func_8011AB34
/* 012584 801208E4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012588 801208E8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01258C 801208EC 0C046573 */  jal         func_801195CC
/* 012590 801208F0 00002825 */   move       $a1, $zero
/* 012594 801208F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012598 801208F8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01259C 801208FC 00001025 */  move        $v0, $zero
/* 0125A0 80120900 03E00008 */  jr          $ra
/* 0125A4 80120904 00000000 */   nop

glabel func_80120908 # 142
/* 0125A8 80120908 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0125AC 8012090C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0125B0 80120910 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0125B4 80120914 3C05800F */  lui         $a1, %hi(D_800F3EB0)
/* 0125B8 80120918 8CA53EB0 */  lw          $a1, %lo(D_800F3EB0)($a1)
/* 0125BC 8012091C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0125C0 80120920 24060000 */  addiu       $a2, $zero, 0x0
/* 0125C4 80120924 0C046ACD */  jal         func_8011AB34
/* 0125C8 80120928 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0125CC 8012092C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0125D0 80120930 0C046573 */  jal         func_801195CC
/* 0125D4 80120934 00002825 */   move       $a1, $zero
/* 0125D8 80120938 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0125DC 8012093C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0125E0 80120940 00001025 */  move        $v0, $zero
/* 0125E4 80120944 03E00008 */  jr          $ra
/* 0125E8 80120948 00000000 */   nop

glabel func_8012094C # 143
/* 0125EC 8012094C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0125F0 80120950 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0125F4 80120954 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0125F8 80120958 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0125FC 8012095C 0C046599 */  jal         func_80119664
/* 012600 80120960 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012604 80120964 0C0005DD */  jal         func_80001774
/* 012608 80120968 00402025 */   move       $a0, $v0
/* 01260C 8012096C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012610 80120970 0C046573 */  jal         func_801195CC
/* 012614 80120974 00002825 */   move       $a1, $zero
/* 012618 80120978 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01261C 8012097C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012620 80120980 24020001 */  addiu       $v0, $zero, 0x1
/* 012624 80120984 03E00008 */  jr          $ra
/* 012628 80120988 00000000 */   nop

glabel func_8012098C # 144
/* 01262C 8012098C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012630 80120990 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012634 80120994 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012638 80120998 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01263C 8012099C 0C0005E9 */  jal         func_800017A4
/* 012640 801209A0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012644 801209A4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012648 801209A8 0C046573 */  jal         func_801195CC
/* 01264C 801209AC 00402825 */   move       $a1, $v0
/* 012650 801209B0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012654 801209B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012658 801209B8 00001025 */  move        $v0, $zero
/* 01265C 801209BC 03E00008 */  jr          $ra
/* 012660 801209C0 00000000 */   nop

glabel func_801209C4 # 145
/* 012664 801209C4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 012668 801209C8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01266C 801209CC AFB00020 */  sw          $s0, 0x20($sp)
/* 012670 801209D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012674 801209D4 27A40034 */  addiu       $a0, $sp, 0x34
/* 012678 801209D8 27A50028 */  addiu       $a1, $sp, 0x28
/* 01267C 801209DC 0C008494 */  jal         func_80021250
/* 012680 801209E0 8DD001B8 */   lw         $s0, 0x1b8($t6)
/* 012684 801209E4 0C0465A3 */  jal         func_8011968C
/* 012688 801209E8 02002025 */   move       $a0, $s0
/* 01268C 801209EC 460000A1 */  cvt.d.s     $f2, $f0
/* 012690 801209F0 02002025 */  move        $a0, $s0
/* 012694 801209F4 0C0465A3 */  jal         func_8011968C
/* 012698 801209F8 F7A20040 */   sdc1       $f2, 0x40($sp)
/* 01269C 801209FC 46000321 */  cvt.d.s     $f12, $f0
/* 0126A0 80120A00 02002025 */  move        $a0, $s0
/* 0126A4 80120A04 0C046599 */  jal         func_80119664
/* 0126A8 80120A08 F7AC0038 */   sdc1       $f12, 0x38($sp)
/* 0126AC 80120A0C 8FAF0034 */  lw          $t7, 0x34($sp)
/* 0126B0 80120A10 D7A20040 */  ldc1        $f2, 0x40($sp)
/* 0126B4 80120A14 D7AC0038 */  ldc1        $f12, 0x38($sp)
/* 0126B8 80120A18 104F000C */  beq         $v0, $t7, .L80120A4C
/* 0126BC 80120A1C 00402025 */   move       $a0, $v0
/* 0126C0 80120A20 44061800 */  mfc1        $a2, $f3
/* 0126C4 80120A24 44071000 */  mfc1        $a3, $f2
/* 0126C8 80120A28 0C00849C */  jal         func_80021270
/* 0126CC 80120A2C F7AC0010 */   sdc1       $f12, 0x10($sp)
/* 0126D0 80120A30 0C0084C5 */  jal         func_80021314
/* 0126D4 80120A34 D7AC0028 */   ldc1       $f12, 0x28($sp)
/* 0126D8 80120A38 02002025 */  move        $a0, $s0
/* 0126DC 80120A3C 0C046573 */  jal         func_801195CC
/* 0126E0 80120A40 24050001 */   addiu      $a1, $zero, 0x1
/* 0126E4 80120A44 10000005 */  b           .L80120A5C
/* 0126E8 80120A48 8FBF0024 */   lw         $ra, 0x24($sp)
.L80120A4C:
/* 0126EC 80120A4C 02002025 */  move        $a0, $s0
/* 0126F0 80120A50 0C046573 */  jal         func_801195CC
/* 0126F4 80120A54 00002825 */   move       $a1, $zero
/* 0126F8 80120A58 8FBF0024 */  lw          $ra, 0x24($sp)
.L80120A5C:
/* 0126FC 80120A5C 8FB00020 */  lw          $s0, 0x20($sp)
/* 012700 80120A60 27BD0050 */  addiu       $sp, $sp, 0x50
/* 012704 80120A64 03E00008 */  jr          $ra
/* 012708 80120A68 00001025 */   move       $v0, $zero

glabel func_80120A6C # 146
/* 01270C 80120A6C 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 012710 80120A70 AFBF0024 */  sw          $ra, 0x24($sp)
/* 012714 80120A74 AFB00020 */  sw          $s0, 0x20($sp)
/* 012718 80120A78 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01271C 80120A7C 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 012720 80120A80 0C0465A3 */  jal         func_8011968C
/* 012724 80120A84 02002025 */   move       $a0, $s0
/* 012728 80120A88 460000A1 */  cvt.d.s     $f2, $f0
/* 01272C 80120A8C 02002025 */  move        $a0, $s0
/* 012730 80120A90 0C0465A3 */  jal         func_8011968C
/* 012734 80120A94 F7A20030 */   sdc1       $f2, 0x30($sp)
/* 012738 80120A98 46000321 */  cvt.d.s     $f12, $f0
/* 01273C 80120A9C 02002025 */  move        $a0, $s0
/* 012740 80120AA0 0C046599 */  jal         func_80119664
/* 012744 80120AA4 F7AC0028 */   sdc1       $f12, 0x28($sp)
/* 012748 80120AA8 D7A20030 */  ldc1        $f2, 0x30($sp)
/* 01274C 80120AAC D7AC0028 */  ldc1        $f12, 0x28($sp)
/* 012750 80120AB0 00402025 */  move        $a0, $v0
/* 012754 80120AB4 44071000 */  mfc1        $a3, $f2
/* 012758 80120AB8 44061800 */  mfc1        $a2, $f3
/* 01275C 80120ABC 0C00849C */  jal         func_80021270
/* 012760 80120AC0 F7AC0010 */   sdc1       $f12, 0x10($sp)
/* 012764 80120AC4 02002025 */  move        $a0, $s0
/* 012768 80120AC8 0C046573 */  jal         func_801195CC
/* 01276C 80120ACC 00402825 */   move       $a1, $v0
/* 012770 80120AD0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 012774 80120AD4 8FB00020 */  lw          $s0, 0x20($sp)
/* 012778 80120AD8 27BD0040 */  addiu       $sp, $sp, 0x40
/* 01277C 80120ADC 03E00008 */  jr          $ra
/* 012780 80120AE0 00001025 */   move       $v0, $zero

glabel func_80120AE4 # 147
/* 012784 80120AE4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012788 80120AE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01278C 80120AEC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012790 80120AF0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012794 80120AF4 0C0465A3 */  jal         func_8011968C
/* 012798 80120AF8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01279C 80120AFC 0C0084C5 */  jal         func_80021314
/* 0127A0 80120B00 46000321 */   cvt.d.s    $f12, $f0
/* 0127A4 80120B04 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0127A8 80120B08 0C046573 */  jal         func_801195CC
/* 0127AC 80120B0C 00402825 */   move       $a1, $v0
/* 0127B0 80120B10 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0127B4 80120B14 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0127B8 80120B18 00001025 */  move        $v0, $zero
/* 0127BC 80120B1C 03E00008 */  jr          $ra
/* 0127C0 80120B20 00000000 */   nop

glabel func_80120B24 # 148
/* 0127C4 80120B24 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0127C8 80120B28 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0127CC 80120B2C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0127D0 80120B30 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0127D4 80120B34 0C046599 */  jal         func_80119664
/* 0127D8 80120B38 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0127DC 80120B3C 0C0084D9 */  jal         func_80021364
/* 0127E0 80120B40 00402025 */   move       $a0, $v0
/* 0127E4 80120B44 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0127E8 80120B48 0C046573 */  jal         func_801195CC
/* 0127EC 80120B4C 00402825 */   move       $a1, $v0
/* 0127F0 80120B50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0127F4 80120B54 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0127F8 80120B58 00001025 */  move        $v0, $zero
/* 0127FC 80120B5C 03E00008 */  jr          $ra
/* 012800 80120B60 00000000 */   nop

glabel func_80120B64 # 149
/* 012804 80120B64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012808 80120B68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01280C 80120B6C AFA40020 */  sw          $a0, 0x20($sp)
/* 012810 80120B70 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012814 80120B74 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012818 80120B78 0C046599 */  jal         func_80119664
/* 01281C 80120B7C AFA4001C */   sw         $a0, 0x1c($sp)
/* 012820 80120B80 8FA40020 */  lw          $a0, 0x20($sp)
/* 012824 80120B84 0C004CC4 */  jal         func_80013310
/* 012828 80120B88 00402825 */   move       $a1, $v0
/* 01282C 80120B8C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012830 80120B90 0C046573 */  jal         func_801195CC
/* 012834 80120B94 00402825 */   move       $a1, $v0
/* 012838 80120B98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01283C 80120B9C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012840 80120BA0 00001025 */  move        $v0, $zero
/* 012844 80120BA4 03E00008 */  jr          $ra
/* 012848 80120BA8 00000000 */   nop

glabel func_80120BAC # 150
/* 01284C 80120BAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012850 80120BB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012854 80120BB4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012858 80120BB8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01285C 80120BBC 0C046599 */  jal         func_80119664
/* 012860 80120BC0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012864 80120BC4 0C00789A */  jal         func_8001E268
/* 012868 80120BC8 00402025 */   move       $a0, $v0
/* 01286C 80120BCC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012870 80120BD0 0C046573 */  jal         func_801195CC
/* 012874 80120BD4 00402825 */   move       $a1, $v0
/* 012878 80120BD8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01287C 80120BDC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012880 80120BE0 00001025 */  move        $v0, $zero
/* 012884 80120BE4 03E00008 */  jr          $ra
/* 012888 80120BE8 00000000 */   nop

glabel func_80120BEC # 151
/* 01288C 80120BEC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012890 80120BF0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012894 80120BF4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012898 80120BF8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01289C 80120BFC 0C046599 */  jal         func_80119664
/* 0128A0 80120C00 AFA40024 */   sw         $a0, 0x24($sp)
/* 0128A4 80120C04 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0128A8 80120C08 0C046599 */  jal         func_80119664
/* 0128AC 80120C0C 8FA40024 */   lw         $a0, 0x24($sp)
/* 0128B0 80120C10 00402025 */  move        $a0, $v0
/* 0128B4 80120C14 0C0078B3 */  jal         func_8001E2CC
/* 0128B8 80120C18 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0128BC 80120C1C 8FA40024 */  lw          $a0, 0x24($sp)
/* 0128C0 80120C20 0C046573 */  jal         func_801195CC
/* 0128C4 80120C24 00402825 */   move       $a1, $v0
/* 0128C8 80120C28 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0128CC 80120C2C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0128D0 80120C30 00001025 */  move        $v0, $zero
/* 0128D4 80120C34 03E00008 */  jr          $ra
/* 0128D8 80120C38 00000000 */   nop

glabel func_80120C3C # 152
/* 0128DC 80120C3C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0128E0 80120C40 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0128E4 80120C44 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0128E8 80120C48 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0128EC 80120C4C 0C046599 */  jal         func_80119664
/* 0128F0 80120C50 AFA40024 */   sw         $a0, 0x24($sp)
/* 0128F4 80120C54 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0128F8 80120C58 0C046599 */  jal         func_80119664
/* 0128FC 80120C5C 8FA40024 */   lw         $a0, 0x24($sp)
/* 012900 80120C60 00402025 */  move        $a0, $v0
/* 012904 80120C64 0C0078A6 */  jal         func_8001E298
/* 012908 80120C68 8FA5001C */   lw         $a1, 0x1c($sp)
/* 01290C 80120C6C 8FA40024 */  lw          $a0, 0x24($sp)
/* 012910 80120C70 0C046573 */  jal         func_801195CC
/* 012914 80120C74 00402825 */   move       $a1, $v0
/* 012918 80120C78 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01291C 80120C7C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012920 80120C80 00001025 */  move        $v0, $zero
/* 012924 80120C84 03E00008 */  jr          $ra
/* 012928 80120C88 00000000 */   nop

glabel func_80120C8C # 153
/* 01292C 80120C8C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012930 80120C90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012934 80120C94 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012938 80120C98 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01293C 80120C9C 0C0465A3 */  jal         func_8011968C
/* 012940 80120CA0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012944 80120CA4 46000021 */  cvt.d.s     $f0, $f0
/* 012948 80120CA8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01294C 80120CAC 46200004 */  sqrt.d      $f0, $f0
/* 012950 80120CB0 46200120 */  cvt.s.d     $f4, $f0
/* 012954 80120CB4 44052000 */  mfc1        $a1, $f4
/* 012958 80120CB8 0C04657F */  jal         func_801195FC
/* 01295C 80120CBC 00000000 */   nop
/* 012960 80120CC0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012964 80120CC4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012968 80120CC8 00001025 */  move        $v0, $zero
/* 01296C 80120CCC 03E00008 */  jr          $ra
/* 012970 80120CD0 00000000 */   nop

glabel func_80120CD4 # 154
/* 012974 80120CD4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 012978 80120CD8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01297C 80120CDC AFB00028 */  sw          $s0, 0x28($sp)
/* 012980 80120CE0 AFA40050 */  sw          $a0, 0x50($sp)
/* 012984 80120CE4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012988 80120CE8 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 01298C 80120CEC 0C046599 */  jal         func_80119664
/* 012990 80120CF0 02002025 */   move       $a0, $s0
/* 012994 80120CF4 AFA20034 */  sw          $v0, 0x34($sp)
/* 012998 80120CF8 0C046599 */  jal         func_80119664
/* 01299C 80120CFC 02002025 */   move       $a0, $s0
/* 0129A0 80120D00 AFA20038 */  sw          $v0, 0x38($sp)
/* 0129A4 80120D04 0C0465A3 */  jal         func_8011968C
/* 0129A8 80120D08 02002025 */   move       $a0, $s0
/* 0129AC 80120D0C E7A0003C */  swc1        $f0, 0x3c($sp)
/* 0129B0 80120D10 0C0465A3 */  jal         func_8011968C
/* 0129B4 80120D14 02002025 */   move       $a0, $s0
/* 0129B8 80120D18 E7A00040 */  swc1        $f0, 0x40($sp)
/* 0129BC 80120D1C 0C046599 */  jal         func_80119664
/* 0129C0 80120D20 02002025 */   move       $a0, $s0
/* 0129C4 80120D24 AFA20044 */  sw          $v0, 0x44($sp)
/* 0129C8 80120D28 0C046599 */  jal         func_80119664
/* 0129CC 80120D2C 02002025 */   move       $a0, $s0
/* 0129D0 80120D30 8FB80044 */  lw          $t8, 0x44($sp)
/* 0129D4 80120D34 8FB90038 */  lw          $t9, 0x38($sp)
/* 0129D8 80120D38 8FA80034 */  lw          $t0, 0x34($sp)
/* 0129DC 80120D3C 8FA40050 */  lw          $a0, 0x50($sp)
/* 0129E0 80120D40 8FA50040 */  lw          $a1, 0x40($sp)
/* 0129E4 80120D44 8FA6003C */  lw          $a2, 0x3c($sp)
/* 0129E8 80120D48 00403825 */  move        $a3, $v0
/* 0129EC 80120D4C AFB80010 */  sw          $t8, 0x10($sp)
/* 0129F0 80120D50 AFB90014 */  sw          $t9, 0x14($sp)
/* 0129F4 80120D54 0C046AAF */  jal         func_8011AABC
/* 0129F8 80120D58 AFA80018 */   sw         $t0, 0x18($sp)
/* 0129FC 80120D5C 02002025 */  move        $a0, $s0
/* 012A00 80120D60 0C046573 */  jal         func_801195CC
/* 012A04 80120D64 00402825 */   move       $a1, $v0
/* 012A08 80120D68 8FBF002C */  lw          $ra, 0x2c($sp)
/* 012A0C 80120D6C 8FB00028 */  lw          $s0, 0x28($sp)
/* 012A10 80120D70 27BD0050 */  addiu       $sp, $sp, 0x50
/* 012A14 80120D74 03E00008 */  jr          $ra
/* 012A18 80120D78 00001025 */   move       $v0, $zero

glabel func_80120D7C # 155
/* 012A1C 80120D7C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 012A20 80120D80 AFBF001C */  sw          $ra, 0x1c($sp)
/* 012A24 80120D84 AFB00018 */  sw          $s0, 0x18($sp)
/* 012A28 80120D88 AFA40038 */  sw          $a0, 0x38($sp)
/* 012A2C 80120D8C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012A30 80120D90 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 012A34 80120D94 0C0465A3 */  jal         func_8011968C
/* 012A38 80120D98 02002025 */   move       $a0, $s0
/* 012A3C 80120D9C E7A00028 */  swc1        $f0, 0x28($sp)
/* 012A40 80120DA0 0C0465A3 */  jal         func_8011968C
/* 012A44 80120DA4 02002025 */   move       $a0, $s0
/* 012A48 80120DA8 E7A00034 */  swc1        $f0, 0x34($sp)
/* 012A4C 80120DAC 0C0465A3 */  jal         func_8011968C
/* 012A50 80120DB0 02002025 */   move       $a0, $s0
/* 012A54 80120DB4 E7A00030 */  swc1        $f0, 0x30($sp)
/* 012A58 80120DB8 0C0465A3 */  jal         func_8011968C
/* 012A5C 80120DBC 02002025 */   move       $a0, $s0
/* 012A60 80120DC0 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 012A64 80120DC4 8FA40038 */  lw          $a0, 0x38($sp)
/* 012A68 80120DC8 0C046EFD */  jal         func_8011BBF4
/* 012A6C 80120DCC 27A5002C */   addiu      $a1, $sp, 0x2c
/* 012A70 80120DD0 8FB80038 */  lw          $t8, 0x38($sp)
/* 012A74 80120DD4 02002025 */  move        $a0, $s0
/* 012A78 80120DD8 00002825 */  move        $a1, $zero
/* 012A7C 80120DDC 8F190054 */  lw          $t9, 0x54($t8)
/* 012A80 80120DE0 AF200198 */  sw          $zero, 0x198($t9)
/* 012A84 80120DE4 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 012A88 80120DE8 8F080054 */  lw          $t0, 0x54($t8)
/* 012A8C 80120DEC 0C046573 */  jal         func_801195CC
/* 012A90 80120DF0 E50401A0 */   swc1       $f4, 0x1a0($t0)
/* 012A94 80120DF4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 012A98 80120DF8 8FB00018 */  lw          $s0, 0x18($sp)
/* 012A9C 80120DFC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 012AA0 80120E00 03E00008 */  jr          $ra
/* 012AA4 80120E04 00001025 */   move       $v0, $zero

glabel func_80120E08 # 156
/* 012AA8 80120E08 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012AAC 80120E0C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012AB0 80120E10 AFA40028 */  sw          $a0, 0x28($sp)
/* 012AB4 80120E14 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012AB8 80120E18 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012ABC 80120E1C 0C0465A3 */  jal         func_8011968C
/* 012AC0 80120E20 AFA40024 */   sw         $a0, 0x24($sp)
/* 012AC4 80120E24 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 012AC8 80120E28 0C046599 */  jal         func_80119664
/* 012ACC 80120E2C 8FA40024 */   lw         $a0, 0x24($sp)
/* 012AD0 80120E30 8FA40028 */  lw          $a0, 0x28($sp)
/* 012AD4 80120E34 00402825 */  move        $a1, $v0
/* 012AD8 80120E38 0C046ACD */  jal         func_8011AB34
/* 012ADC 80120E3C 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012AE0 80120E40 8FA40024 */  lw          $a0, 0x24($sp)
/* 012AE4 80120E44 0C046573 */  jal         func_801195CC
/* 012AE8 80120E48 00402825 */   move       $a1, $v0
/* 012AEC 80120E4C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012AF0 80120E50 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012AF4 80120E54 00001025 */  move        $v0, $zero
/* 012AF8 80120E58 03E00008 */  jr          $ra
/* 012AFC 80120E5C 00000000 */   nop

glabel func_80120E60 # 157
/* 012B00 80120E60 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012B04 80120E64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012B08 80120E68 AFA40028 */  sw          $a0, 0x28($sp)
/* 012B0C 80120E6C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012B10 80120E70 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012B14 80120E74 0C0465A3 */  jal         func_8011968C
/* 012B18 80120E78 AFA40024 */   sw         $a0, 0x24($sp)
/* 012B1C 80120E7C E7A0001C */  swc1        $f0, 0x1c($sp)
/* 012B20 80120E80 0C046599 */  jal         func_80119664
/* 012B24 80120E84 8FA40024 */   lw         $a0, 0x24($sp)
/* 012B28 80120E88 8FA40028 */  lw          $a0, 0x28($sp)
/* 012B2C 80120E8C 00402825 */  move        $a1, $v0
/* 012B30 80120E90 0C046AF5 */  jal         func_8011ABD4
/* 012B34 80120E94 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012B38 80120E98 8FA40024 */  lw          $a0, 0x24($sp)
/* 012B3C 80120E9C 0C046573 */  jal         func_801195CC
/* 012B40 80120EA0 00402825 */   move       $a1, $v0
/* 012B44 80120EA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012B48 80120EA8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012B4C 80120EAC 00001025 */  move        $v0, $zero
/* 012B50 80120EB0 03E00008 */  jr          $ra
/* 012B54 80120EB4 00000000 */   nop

glabel func_80120EB8 # 158
/* 012B58 80120EB8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012B5C 80120EBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 012B60 80120EC0 AFA40020 */  sw          $a0, 0x20($sp)
/* 012B64 80120EC4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012B68 80120EC8 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012B6C 80120ECC 0C046599 */  jal         func_80119664
/* 012B70 80120ED0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012B74 80120ED4 8FA40020 */  lw          $a0, 0x20($sp)
/* 012B78 80120ED8 0C046B16 */  jal         func_8011AC58
/* 012B7C 80120EDC 00402825 */   move       $a1, $v0
/* 012B80 80120EE0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012B84 80120EE4 0C046573 */  jal         func_801195CC
/* 012B88 80120EE8 00402825 */   move       $a1, $v0
/* 012B8C 80120EEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012B90 80120EF0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012B94 80120EF4 00001025 */  move        $v0, $zero
/* 012B98 80120EF8 03E00008 */  jr          $ra
/* 012B9C 80120EFC 00000000 */   nop

glabel func_80120F00 # 159
/* 012BA0 80120F00 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012BA4 80120F04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012BA8 80120F08 AFA40020 */  sw          $a0, 0x20($sp)
/* 012BAC 80120F0C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012BB0 80120F10 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012BB4 80120F14 0C046599 */  jal         func_80119664
/* 012BB8 80120F18 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012BBC 80120F1C 8FA40020 */  lw          $a0, 0x20($sp)
/* 012BC0 80120F20 0C046B3D */  jal         func_8011ACF4
/* 012BC4 80120F24 00402825 */   move       $a1, $v0
/* 012BC8 80120F28 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012BCC 80120F2C 0C046573 */  jal         func_801195CC
/* 012BD0 80120F30 00402825 */   move       $a1, $v0
/* 012BD4 80120F34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012BD8 80120F38 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012BDC 80120F3C 00001025 */  move        $v0, $zero
/* 012BE0 80120F40 03E00008 */  jr          $ra
/* 012BE4 80120F44 00000000 */   nop

glabel func_80120F48 # 160
/* 012BE8 80120F48 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 012BEC 80120F4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012BF0 80120F50 8C820054 */  lw          $v0, 0x54($a0)
/* 012BF4 80120F54 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 012BF8 80120F58 0C04657F */  jal         func_801195FC
/* 012BFC 80120F5C 8C4501A0 */   lw         $a1, 0x1a0($v0)
/* 012C00 80120F60 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012C04 80120F64 27BD0018 */  addiu       $sp, $sp, 0x18
/* 012C08 80120F68 00001025 */  move        $v0, $zero
/* 012C0C 80120F6C 03E00008 */  jr          $ra
/* 012C10 80120F70 00000000 */   nop

glabel func_80120F74 # 161
/* 012C14 80120F74 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012C18 80120F78 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012C1C 80120F7C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012C20 80120F80 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012C24 80120F84 0C046B6B */  jal         func_8011ADAC
/* 012C28 80120F88 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012C2C 80120F8C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012C30 80120F90 0C046573 */  jal         func_801195CC
/* 012C34 80120F94 00402825 */   move       $a1, $v0
/* 012C38 80120F98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012C3C 80120F9C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012C40 80120FA0 00001025 */  move        $v0, $zero
/* 012C44 80120FA4 03E00008 */  jr          $ra
/* 012C48 80120FA8 00000000 */   nop

glabel func_80120FAC # 162
/* 012C4C 80120FAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012C50 80120FB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012C54 80120FB4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012C58 80120FB8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012C5C 80120FBC 0C046B76 */  jal         func_8011ADD8
/* 012C60 80120FC0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012C64 80120FC4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012C68 80120FC8 0C046573 */  jal         func_801195CC
/* 012C6C 80120FCC 00402825 */   move       $a1, $v0
/* 012C70 80120FD0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012C74 80120FD4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012C78 80120FD8 00001025 */  move        $v0, $zero
/* 012C7C 80120FDC 03E00008 */  jr          $ra
/* 012C80 80120FE0 00000000 */   nop

glabel func_80120FE4 # 163
/* 012C84 80120FE4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012C88 80120FE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012C8C 80120FEC AFA40020 */  sw          $a0, 0x20($sp)
/* 012C90 80120FF0 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012C94 80120FF4 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012C98 80120FF8 0C046599 */  jal         func_80119664
/* 012C9C 80120FFC AFA4001C */   sw         $a0, 0x1c($sp)
/* 012CA0 80121000 8FA40020 */  lw          $a0, 0x20($sp)
/* 012CA4 80121004 0C046B79 */  jal         func_8011ADE4
/* 012CA8 80121008 00402825 */   move       $a1, $v0
/* 012CAC 8012100C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012CB0 80121010 0C046573 */  jal         func_801195CC
/* 012CB4 80121014 00002825 */   move       $a1, $zero
/* 012CB8 80121018 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012CBC 8012101C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012CC0 80121020 00001025 */  move        $v0, $zero
/* 012CC4 80121024 03E00008 */  jr          $ra
/* 012CC8 80121028 00000000 */   nop

glabel func_8012102C # 164
/* 012CCC 8012102C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012CD0 80121030 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012CD4 80121034 AFA40020 */  sw          $a0, 0x20($sp)
/* 012CD8 80121038 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012CDC 8012103C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012CE0 80121040 0C046599 */  jal         func_80119664
/* 012CE4 80121044 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012CE8 80121048 8FA40020 */  lw          $a0, 0x20($sp)
/* 012CEC 8012104C 0C046B7C */  jal         func_8011ADF0
/* 012CF0 80121050 00402825 */   move       $a1, $v0
/* 012CF4 80121054 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012CF8 80121058 0C046573 */  jal         func_801195CC
/* 012CFC 8012105C 00402825 */   move       $a1, $v0
/* 012D00 80121060 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012D04 80121064 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012D08 80121068 00001025 */  move        $v0, $zero
/* 012D0C 8012106C 03E00008 */  jr          $ra
/* 012D10 80121070 00000000 */   nop

glabel func_80121074 # 165
/* 012D14 80121074 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012D18 80121078 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012D1C 8012107C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012D20 80121080 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012D24 80121084 0C046599 */  jal         func_80119664
/* 012D28 80121088 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012D2C 8012108C 0C046BA7 */  jal         func_8011AE9C
/* 012D30 80121090 00402025 */   move       $a0, $v0
/* 012D34 80121094 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012D38 80121098 0C046573 */  jal         func_801195CC
/* 012D3C 8012109C 00402825 */   move       $a1, $v0
/* 012D40 801210A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012D44 801210A4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012D48 801210A8 00001025 */  move        $v0, $zero
/* 012D4C 801210AC 03E00008 */  jr          $ra
/* 012D50 801210B0 00000000 */   nop

glabel func_801210B4 # 166
/* 012D54 801210B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012D58 801210B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012D5C 801210BC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012D60 801210C0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012D64 801210C4 0C046599 */  jal         func_80119664
/* 012D68 801210C8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012D6C 801210CC 0C046BD2 */  jal         func_8011AF48
/* 012D70 801210D0 00402025 */   move       $a0, $v0
/* 012D74 801210D4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012D78 801210D8 0C046573 */  jal         func_801195CC
/* 012D7C 801210DC 00402825 */   move       $a1, $v0
/* 012D80 801210E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012D84 801210E4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012D88 801210E8 00001025 */  move        $v0, $zero
/* 012D8C 801210EC 03E00008 */  jr          $ra
/* 012D90 801210F0 00000000 */   nop

glabel func_801210F4 # 167
/* 012D94 801210F4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012D98 801210F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012D9C 801210FC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012DA0 80121100 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012DA4 80121104 0C046599 */  jal         func_80119664
/* 012DA8 80121108 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012DAC 8012110C 0C046BE6 */  jal         func_8011AF98
/* 012DB0 80121110 00402025 */   move       $a0, $v0
/* 012DB4 80121114 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012DB8 80121118 0C046573 */  jal         func_801195CC
/* 012DBC 8012111C 00402825 */   move       $a1, $v0
/* 012DC0 80121120 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012DC4 80121124 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012DC8 80121128 00001025 */  move        $v0, $zero
/* 012DCC 8012112C 03E00008 */  jr          $ra
/* 012DD0 80121130 00000000 */   nop

glabel func_80121134 # 168
/* 012DD4 80121134 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012DD8 80121138 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012DDC 8012113C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012DE0 80121140 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012DE4 80121144 0C046599 */  jal         func_80119664
/* 012DE8 80121148 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012DEC 8012114C 0C046BF8 */  jal         func_8011AFE0
/* 012DF0 80121150 00402025 */   move       $a0, $v0
/* 012DF4 80121154 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012DF8 80121158 0C046573 */  jal         func_801195CC
/* 012DFC 8012115C 00402825 */   move       $a1, $v0
/* 012E00 80121160 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012E04 80121164 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012E08 80121168 00001025 */  move        $v0, $zero
/* 012E0C 8012116C 03E00008 */  jr          $ra
/* 012E10 80121170 00000000 */   nop

glabel func_80121174 # 169
/* 012E14 80121174 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012E18 80121178 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012E1C 8012117C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012E20 80121180 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 012E24 80121184 0C046599 */  jal         func_80119664
/* 012E28 80121188 AFA4001C */   sw         $a0, 0x1c($sp)
/* 012E2C 8012118C 0C046C05 */  jal         func_8011B014
/* 012E30 80121190 00402025 */   move       $a0, $v0
/* 012E34 80121194 44050000 */  mfc1        $a1, $f0
/* 012E38 80121198 0C04657F */  jal         func_801195FC
/* 012E3C 8012119C 8FA4001C */   lw         $a0, 0x1c($sp)
/* 012E40 801211A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012E44 801211A4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012E48 801211A8 00001025 */  move        $v0, $zero
/* 012E4C 801211AC 03E00008 */  jr          $ra
/* 012E50 801211B0 00000000 */   nop

glabel func_801211B4 # 170
/* 012E54 801211B4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012E58 801211B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012E5C 801211BC AFA40020 */  sw          $a0, 0x20($sp)
/* 012E60 801211C0 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012E64 801211C4 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012E68 801211C8 0C046599 */  jal         func_80119664
/* 012E6C 801211CC AFA4001C */   sw         $a0, 0x1c($sp)
/* 012E70 801211D0 8FA40020 */  lw          $a0, 0x20($sp)
/* 012E74 801211D4 0C046C11 */  jal         func_8011B044
/* 012E78 801211D8 00402825 */   move       $a1, $v0
/* 012E7C 801211DC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012E80 801211E0 0C046573 */  jal         func_801195CC
/* 012E84 801211E4 00002825 */   move       $a1, $zero
/* 012E88 801211E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012E8C 801211EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012E90 801211F0 00001025 */  move        $v0, $zero
/* 012E94 801211F4 03E00008 */  jr          $ra
/* 012E98 801211F8 00000000 */   nop

glabel func_801211FC # 171
/* 012E9C 801211FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 012EA0 80121200 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012EA4 80121204 8C820054 */  lw          $v0, 0x54($a0)
/* 012EA8 80121208 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 012EAC 8012120C 0C046573 */  jal         func_801195CC
/* 012EB0 80121210 8445013C */   lh         $a1, 0x13c($v0)
/* 012EB4 80121214 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012EB8 80121218 27BD0018 */  addiu       $sp, $sp, 0x18
/* 012EBC 8012121C 00001025 */  move        $v0, $zero
/* 012EC0 80121220 03E00008 */  jr          $ra
/* 012EC4 80121224 00000000 */   nop

glabel func_80121228 # 172
/* 012EC8 80121228 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012ECC 8012122C AFBF0014 */  sw          $ra, 0x14($sp)
/* 012ED0 80121230 AFA40028 */  sw          $a0, 0x28($sp)
/* 012ED4 80121234 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012ED8 80121238 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012EDC 8012123C 0C046599 */  jal         func_80119664
/* 012EE0 80121240 AFA40024 */   sw         $a0, 0x24($sp)
/* 012EE4 80121244 44822000 */  mtc1        $v0, $f4
/* 012EE8 80121248 8FA40024 */  lw          $a0, 0x24($sp)
/* 012EEC 8012124C 468021A0 */  cvt.s.w     $f6, $f4
/* 012EF0 80121250 0C046599 */  jal         func_80119664
/* 012EF4 80121254 E7A6001C */   swc1       $f6, 0x1c($sp)
/* 012EF8 80121258 C7A8001C */  lwc1        $f8, 0x1c($sp)
/* 012EFC 8012125C 8FA40028 */  lw          $a0, 0x28($sp)
/* 012F00 80121260 00402825 */  move        $a1, $v0
/* 012F04 80121264 4600428D */  trunc.w.s   $f10, $f8
/* 012F08 80121268 44065000 */  mfc1        $a2, $f10
/* 012F0C 8012126C 0C00420E */  jal         func_80010838
/* 012F10 80121270 00000000 */   nop
/* 012F14 80121274 8FA40024 */  lw          $a0, 0x24($sp)
/* 012F18 80121278 0C046573 */  jal         func_801195CC
/* 012F1C 8012127C 00002825 */   move       $a1, $zero
/* 012F20 80121280 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012F24 80121284 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012F28 80121288 24020001 */  addiu       $v0, $zero, 0x1
/* 012F2C 8012128C 03E00008 */  jr          $ra
/* 012F30 80121290 00000000 */   nop

glabel func_80121294 # 173
/* 012F34 80121294 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012F38 80121298 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012F3C 8012129C AFA40028 */  sw          $a0, 0x28($sp)
/* 012F40 801212A0 8C8F0054 */  lw          $t7, 0x54($a0)
/* 012F44 801212A4 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 012F48 801212A8 0C0465A3 */  jal         func_8011968C
/* 012F4C 801212AC AFA40024 */   sw         $a0, 0x24($sp)
/* 012F50 801212B0 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 012F54 801212B4 0C046599 */  jal         func_80119664
/* 012F58 801212B8 8FA40024 */   lw         $a0, 0x24($sp)
/* 012F5C 801212BC 8FA40028 */  lw          $a0, 0x28($sp)
/* 012F60 801212C0 00402825 */  move        $a1, $v0
/* 012F64 801212C4 0C046C14 */  jal         func_8011B050
/* 012F68 801212C8 8FA6001C */   lw         $a2, 0x1c($sp)
/* 012F6C 801212CC 8FA40024 */  lw          $a0, 0x24($sp)
/* 012F70 801212D0 0C046573 */  jal         func_801195CC
/* 012F74 801212D4 00002825 */   move       $a1, $zero
/* 012F78 801212D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012F7C 801212DC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 012F80 801212E0 24020001 */  addiu       $v0, $zero, 0x1
/* 012F84 801212E4 03E00008 */  jr          $ra
/* 012F88 801212E8 00000000 */   nop

glabel func_801212EC # 174
/* 012F8C 801212EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 012F90 801212F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012F94 801212F4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012F98 801212F8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 012F9C 801212FC 0C046C20 */  jal         func_8011B080
/* 012FA0 80121300 AFAF001C */   sw         $t7, 0x1c($sp)
/* 012FA4 80121304 8FA4001C */  lw          $a0, 0x1c($sp)
/* 012FA8 80121308 0C046573 */  jal         func_801195CC
/* 012FAC 8012130C 00402825 */   move       $a1, $v0
/* 012FB0 80121310 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012FB4 80121314 27BD0020 */  addiu       $sp, $sp, 0x20
/* 012FB8 80121318 00001025 */  move        $v0, $zero
/* 012FBC 8012131C 03E00008 */  jr          $ra
/* 012FC0 80121320 00000000 */   nop

glabel func_80121324 # 175
/* 012FC4 80121324 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 012FC8 80121328 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012FCC 8012132C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 012FD0 80121330 3C05800F */  lui         $a1, %hi(D_800F3F16)
/* 012FD4 80121334 90A53F16 */  lbu         $a1, %lo(D_800F3F16)($a1)
/* 012FD8 80121338 0C046573 */  jal         func_801195CC
/* 012FDC 8012133C 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 012FE0 80121340 8FBF0014 */  lw          $ra, 0x14($sp)
/* 012FE4 80121344 27BD0018 */  addiu       $sp, $sp, 0x18
/* 012FE8 80121348 00001025 */  move        $v0, $zero
/* 012FEC 8012134C 03E00008 */  jr          $ra
/* 012FF0 80121350 00000000 */   nop

glabel func_80121354 # 176
/* 012FF4 80121354 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 012FF8 80121358 AFBF0014 */  sw          $ra, 0x14($sp)
/* 012FFC 8012135C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013000 80121360 3C05800F */  lui         $a1, %hi(D_800F3F1C)
/* 013004 80121364 8CA53F1C */  lw          $a1, %lo(D_800F3F1C)($a1)
/* 013008 80121368 0C046573 */  jal         func_801195CC
/* 01300C 8012136C 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013010 80121370 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013014 80121374 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013018 80121378 00001025 */  move        $v0, $zero
/* 01301C 8012137C 03E00008 */  jr          $ra
/* 013020 80121380 00000000 */   nop

glabel func_80121384 # 177
/* 013024 80121384 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013028 80121388 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01302C 8012138C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013030 80121390 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013034 80121394 0C046599 */  jal         func_80119664
/* 013038 80121398 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01303C 8012139C 00027880 */  sll         $t7, $v0, 2
/* 013040 801213A0 3C05800F */  lui         $a1, %hi(D_800F3E20)
/* 013044 801213A4 00AF2821 */  addu        $a1, $a1, $t7
/* 013048 801213A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01304C 801213AC 0C04657F */  jal         func_801195FC
/* 013050 801213B0 8CA53E20 */   lw         $a1, %lo(D_800F3E20)($a1)
/* 013054 801213B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013058 801213B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01305C 801213BC 00001025 */  move        $v0, $zero
/* 013060 801213C0 03E00008 */  jr          $ra
/* 013064 801213C4 00000000 */   nop

glabel func_801213C8 # 178
/* 013068 801213C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01306C 801213CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013070 801213D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013074 801213D4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013078 801213D8 0C047257 */  jal         func_8011C95C
/* 01307C 801213DC AFAF001C */   sw         $t7, 0x1c($sp)
/* 013080 801213E0 44050000 */  mfc1        $a1, $f0
/* 013084 801213E4 0C04657F */  jal         func_801195FC
/* 013088 801213E8 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01308C 801213EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013090 801213F0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013094 801213F4 00001025 */  move        $v0, $zero
/* 013098 801213F8 03E00008 */  jr          $ra
/* 01309C 801213FC 00000000 */   nop

glabel func_80121400 # 179
/* 0130A0 80121400 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0130A4 80121404 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0130A8 80121408 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0130AC 8012140C 3C05800F */  lui         $a1, %hi(D_800F3F10)
/* 0130B0 80121410 8CA53F10 */  lw          $a1, %lo(D_800F3F10)($a1)
/* 0130B4 80121414 0C046573 */  jal         func_801195CC
/* 0130B8 80121418 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0130BC 8012141C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0130C0 80121420 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0130C4 80121424 00001025 */  move        $v0, $zero
/* 0130C8 80121428 03E00008 */  jr          $ra
/* 0130CC 8012142C 00000000 */   nop

glabel func_80121430 # 180
/* 0130D0 80121430 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0130D4 80121434 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0130D8 80121438 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0130DC 8012143C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0130E0 80121440 0C046599 */  jal         func_80119664
/* 0130E4 80121444 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0130E8 80121448 3C03800F */  lui         $v1, %hi(D_800F3E20)
/* 0130EC 8012144C 24633E20 */  addiu       $v1, $v1, %lo(D_800F3E20)
/* 0130F0 80121450 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0130F4 80121454 AC6200F0 */  sw          $v0, 0xf0($v1)
/* 0130F8 80121458 0C046573 */  jal         func_801195CC
/* 0130FC 8012145C 00402825 */   move       $a1, $v0
/* 013100 80121460 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013104 80121464 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013108 80121468 00001025 */  move        $v0, $zero
/* 01310C 8012146C 03E00008 */  jr          $ra
/* 013110 80121470 00000000 */   nop

glabel func_80121474 # 181
/* 013114 80121474 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013118 80121478 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01311C 8012147C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013120 80121480 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013124 80121484 0C046599 */  jal         func_80119664
/* 013128 80121488 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01312C 8012148C 0C0458A1 */  jal         func_80116284
/* 013130 80121490 00402025 */   move       $a0, $v0
/* 013134 80121494 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013138 80121498 0C046573 */  jal         func_801195CC
/* 01313C 8012149C 00402825 */   move       $a1, $v0
/* 013140 801214A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013144 801214A4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013148 801214A8 00001025 */  move        $v0, $zero
/* 01314C 801214AC 03E00008 */  jr          $ra
/* 013150 801214B0 00000000 */   nop

glabel func_801214B4 # 182
/* 013154 801214B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013158 801214B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01315C 801214BC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013160 801214C0 3C05800F */  lui         $a1, %hi(D_800F3E98)
/* 013164 801214C4 8CA53E98 */  lw          $a1, %lo(D_800F3E98)($a1)
/* 013168 801214C8 0C046573 */  jal         func_801195CC
/* 01316C 801214CC 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013170 801214D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013174 801214D4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013178 801214D8 00001025 */  move        $v0, $zero
/* 01317C 801214DC 03E00008 */  jr          $ra
/* 013180 801214E0 00000000 */   nop

glabel func_801214E4 # 183
/* 013184 801214E4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013188 801214E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01318C 801214EC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013190 801214F0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013194 801214F4 0C045799 */  jal         func_80115E64
/* 013198 801214F8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01319C 801214FC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0131A0 80121500 0C046573 */  jal         func_801195CC
/* 0131A4 80121504 00402825 */   move       $a1, $v0
/* 0131A8 80121508 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0131AC 8012150C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0131B0 80121510 00001025 */  move        $v0, $zero
/* 0131B4 80121514 03E00008 */  jr          $ra
/* 0131B8 80121518 00000000 */   nop

glabel func_8012151C # 184
/* 0131BC 8012151C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0131C0 80121520 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0131C4 80121524 AFA40020 */  sw          $a0, 0x20($sp)
/* 0131C8 80121528 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0131CC 8012152C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0131D0 80121530 0C046599 */  jal         func_80119664
/* 0131D4 80121534 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0131D8 80121538 8FA40020 */  lw          $a0, 0x20($sp)
/* 0131DC 8012153C 0C04704F */  jal         func_8011C13C
/* 0131E0 80121540 00402825 */   move       $a1, $v0
/* 0131E4 80121544 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0131E8 80121548 0C046573 */  jal         func_801195CC
/* 0131EC 8012154C 00002825 */   move       $a1, $zero
/* 0131F0 80121550 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0131F4 80121554 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0131F8 80121558 00001025 */  move        $v0, $zero
/* 0131FC 8012155C 03E00008 */  jr          $ra
/* 013200 80121560 00000000 */   nop

glabel func_80121564 # 185
/* 013204 80121564 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013208 80121568 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01320C 8012156C 8C820054 */  lw          $v0, 0x54($a0)
/* 013210 80121570 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 013214 80121574 0C046573 */  jal         func_801195CC
/* 013218 80121578 8C450214 */   lw         $a1, 0x214($v0)
/* 01321C 8012157C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013220 80121580 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013224 80121584 00001025 */  move        $v0, $zero
/* 013228 80121588 03E00008 */  jr          $ra
/* 01322C 8012158C 00000000 */   nop

glabel func_80121590 # 186
/* 013230 80121590 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013234 80121594 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013238 80121598 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01323C 8012159C 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013240 801215A0 0C046C23 */  jal         func_8011B08C
/* 013244 801215A4 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013248 801215A8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01324C 801215AC 0C046573 */  jal         func_801195CC
/* 013250 801215B0 00402825 */   move       $a1, $v0
/* 013254 801215B4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013258 801215B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01325C 801215BC 00001025 */  move        $v0, $zero
/* 013260 801215C0 03E00008 */  jr          $ra
/* 013264 801215C4 00000000 */   nop

glabel func_801215C8 # 187
/* 013268 801215C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01326C 801215CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013270 801215D0 948F0036 */  lhu         $t7, 0x36($a0)
/* 013274 801215D4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013278 801215D8 24050001 */  addiu       $a1, $zero, 0x1
/* 01327C 801215DC 31F80002 */  andi        $t8, $t7, 0x2
/* 013280 801215E0 13000003 */  beqz        $t8, .L801215F0
/* 013284 801215E4 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 013288 801215E8 10000001 */  b           .L801215F0
/* 01328C 801215EC 00002825 */   move       $a1, $zero
.L801215F0:
/* 013290 801215F0 0C046573 */  jal         func_801195CC
/* 013294 801215F4 00C02025 */   move       $a0, $a2
/* 013298 801215F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01329C 801215FC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0132A0 80121600 00001025 */  move        $v0, $zero
/* 0132A4 80121604 03E00008 */  jr          $ra
/* 0132A8 80121608 00000000 */   nop

glabel func_8012160C # 188
/* 0132AC 8012160C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0132B0 80121610 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0132B4 80121614 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0132B8 80121618 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0132BC 8012161C 0C046599 */  jal         func_80119664
/* 0132C0 80121620 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0132C4 80121624 0C046C31 */  jal         func_8011B0C4
/* 0132C8 80121628 00402025 */   move       $a0, $v0
/* 0132CC 8012162C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0132D0 80121630 0C046573 */  jal         func_801195CC
/* 0132D4 80121634 00002825 */   move       $a1, $zero
/* 0132D8 80121638 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0132DC 8012163C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0132E0 80121640 24020001 */  addiu       $v0, $zero, 0x1
/* 0132E4 80121644 03E00008 */  jr          $ra
/* 0132E8 80121648 00000000 */   nop

glabel func_8012164C # 189
/* 0132EC 8012164C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0132F0 80121650 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0132F4 80121654 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0132F8 80121658 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0132FC 8012165C 0C046C34 */  jal         func_8011B0D0
/* 013300 80121660 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013304 80121664 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013308 80121668 0C046573 */  jal         func_801195CC
/* 01330C 8012166C 00402825 */   move       $a1, $v0
/* 013310 80121670 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013314 80121674 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013318 80121678 00001025 */  move        $v0, $zero
/* 01331C 8012167C 03E00008 */  jr          $ra
/* 013320 80121680 00000000 */   nop

glabel func_80121684 # 190
/* 013324 80121684 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013328 80121688 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01332C 8012168C AFA40020 */  sw          $a0, 0x20($sp)
/* 013330 80121690 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013334 80121694 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013338 80121698 0C046599 */  jal         func_80119664
/* 01333C 8012169C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013340 801216A0 8FA40020 */  lw          $a0, 0x20($sp)
/* 013344 801216A4 0C046C38 */  jal         func_8011B0E0
/* 013348 801216A8 00402825 */   move       $a1, $v0
/* 01334C 801216AC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013350 801216B0 0C046573 */  jal         func_801195CC
/* 013354 801216B4 00002825 */   move       $a1, $zero
/* 013358 801216B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01335C 801216BC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013360 801216C0 00001025 */  move        $v0, $zero
/* 013364 801216C4 03E00008 */  jr          $ra
/* 013368 801216C8 00000000 */   nop

glabel func_801216CC # 191
/* 01336C 801216CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013370 801216D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013374 801216D4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013378 801216D8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01337C 801216DC 0C046C45 */  jal         func_8011B114
/* 013380 801216E0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013384 801216E4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013388 801216E8 0C046573 */  jal         func_801195CC
/* 01338C 801216EC 00402825 */   move       $a1, $v0
/* 013390 801216F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013394 801216F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013398 801216F8 00001025 */  move        $v0, $zero
/* 01339C 801216FC 03E00008 */  jr          $ra
/* 0133A0 80121700 00000000 */   nop

glabel func_80121704 # 192
/* 0133A4 80121704 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0133A8 80121708 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0133AC 8012170C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0133B0 80121710 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 0133B4 80121714 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 0133B8 80121718 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0133BC 8012171C 0C045661 */  jal         func_80115984
/* 0133C0 80121720 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0133C4 80121724 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0133C8 80121728 0C046573 */  jal         func_801195CC
/* 0133CC 8012172C 00402825 */   move       $a1, $v0
/* 0133D0 80121730 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0133D4 80121734 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0133D8 80121738 00001025 */  move        $v0, $zero
/* 0133DC 8012173C 03E00008 */  jr          $ra
/* 0133E0 80121740 00000000 */   nop

glabel func_80121744 # 193
/* 0133E4 80121744 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0133E8 80121748 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0133EC 8012174C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0133F0 80121750 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0133F4 80121754 0C046599 */  jal         func_80119664
/* 0133F8 80121758 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0133FC 8012175C 0C00842B */  jal         func_800210AC
/* 013400 80121760 00402025 */   move       $a0, $v0
/* 013404 80121764 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013408 80121768 0C046573 */  jal         func_801195CC
/* 01340C 8012176C 00002825 */   move       $a1, $zero
/* 013410 80121770 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013414 80121774 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013418 80121778 00001025 */  move        $v0, $zero
/* 01341C 8012177C 03E00008 */  jr          $ra
/* 013420 80121780 00000000 */   nop

glabel func_80121784 # 194
/* 013424 80121784 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013428 80121788 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01342C 8012178C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013430 80121790 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013434 80121794 0C046599 */  jal         func_80119664
/* 013438 80121798 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01343C 8012179C 0C008438 */  jal         func_800210E0
/* 013440 801217A0 00402025 */   move       $a0, $v0
/* 013444 801217A4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013448 801217A8 0C046573 */  jal         func_801195CC
/* 01344C 801217AC 00002825 */   move       $a1, $zero
/* 013450 801217B0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013454 801217B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013458 801217B8 00001025 */  move        $v0, $zero
/* 01345C 801217BC 03E00008 */  jr          $ra
/* 013460 801217C0 00000000 */   nop

glabel func_801217C4 # 195
/* 013464 801217C4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013468 801217C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01346C 801217CC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013470 801217D0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013474 801217D4 0C046599 */  jal         func_80119664
/* 013478 801217D8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01347C 801217DC 0C00843B */  jal         func_800210EC
/* 013480 801217E0 00402025 */   move       $a0, $v0
/* 013484 801217E4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013488 801217E8 0C046573 */  jal         func_801195CC
/* 01348C 801217EC 00002825 */   move       $a1, $zero
/* 013490 801217F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013494 801217F4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013498 801217F8 00001025 */  move        $v0, $zero
/* 01349C 801217FC 03E00008 */  jr          $ra
/* 0134A0 80121800 00000000 */   nop

glabel func_80121804 # 196
/* 0134A4 80121804 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0134A8 80121808 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0134AC 8012180C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0134B0 80121810 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0134B4 80121814 0C046599 */  jal         func_80119664
/* 0134B8 80121818 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0134BC 8012181C 0C00803F */  jal         func_800200FC
/* 0134C0 80121820 00402025 */   move       $a0, $v0
/* 0134C4 80121824 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0134C8 80121828 0C046573 */  jal         func_801195CC
/* 0134CC 8012182C 00002825 */   move       $a1, $zero
/* 0134D0 80121830 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0134D4 80121834 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0134D8 80121838 00001025 */  move        $v0, $zero
/* 0134DC 8012183C 03E00008 */  jr          $ra
/* 0134E0 80121840 00000000 */   nop

glabel func_80121844 # 197
/* 0134E4 80121844 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0134E8 80121848 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0134EC 8012184C AFA40020 */  sw          $a0, 0x20($sp)
/* 0134F0 80121850 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0134F4 80121854 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 0134F8 80121858 0C046599 */  jal         func_80119664
/* 0134FC 8012185C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013500 80121860 8FB80020 */  lw          $t8, 0x20($sp)
/* 013504 80121864 AFA20018 */  sw          $v0, 0x18($sp)
/* 013508 80121868 8F190054 */  lw          $t9, 0x54($t8)
/* 01350C 8012186C 0C001A23 */  jal         func_8000688C
/* 013510 80121870 8F24018C */   lw         $a0, 0x18c($t9)
/* 013514 80121874 10400014 */  beqz        $v0, .L801218C8
/* 013518 80121878 8FA80018 */   lw         $t0, 0x18($sp)
/* 01351C 8012187C 11000009 */  beqz        $t0, .L801218A4
/* 013520 80121880 8C430054 */   lw         $v1, 0x54($v0)
/* 013524 80121884 8C690000 */  lw          $t1, 0x0($v1)
/* 013528 80121888 3C014000 */  lui         $at, 0x4000
/* 01352C 8012188C 24040004 */  addiu       $a0, $zero, 0x4
/* 013530 80121890 01215025 */  or          $t2, $t1, $at
/* 013534 80121894 0C00803F */  jal         func_800200FC
/* 013538 80121898 AC6A0000 */   sw         $t2, 0x0($v1)
/* 01353C 8012189C 1000000D */  b           .L801218D4
/* 013540 801218A0 8FA4001C */   lw         $a0, 0x1c($sp)
.L801218A4:
/* 013544 801218A4 8C6B0000 */  lw          $t3, 0x0($v1)
/* 013548 801218A8 3C01BFFF */  lui         $at, 0xbfff
/* 01354C 801218AC 3421FFFF */  ori         $at, $at, 0xffff
/* 013550 801218B0 01616024 */  and         $t4, $t3, $at
/* 013554 801218B4 AC6C0000 */  sw          $t4, 0x0($v1)
/* 013558 801218B8 0C00803F */  jal         func_800200FC
/* 01355C 801218BC 00002025 */   move       $a0, $zero
/* 013560 801218C0 10000004 */  b           .L801218D4
/* 013564 801218C4 8FA4001C */   lw         $a0, 0x1c($sp)
.L801218C8:
/* 013568 801218C8 0C00803F */  jal         func_800200FC
/* 01356C 801218CC 00002025 */   move       $a0, $zero
/* 013570 801218D0 8FA4001C */  lw          $a0, 0x1c($sp)
.L801218D4:
/* 013574 801218D4 0C046573 */  jal         func_801195CC
/* 013578 801218D8 00002825 */   move       $a1, $zero
/* 01357C 801218DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013580 801218E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013584 801218E4 00001025 */  move        $v0, $zero
/* 013588 801218E8 03E00008 */  jr          $ra
/* 01358C 801218EC 00000000 */   nop

glabel func_801218F0 # 198
/* 013590 801218F0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013594 801218F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013598 801218F8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01359C 801218FC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0135A0 80121900 0C046599 */  jal         func_80119664
/* 0135A4 80121904 AFA40024 */   sw         $a0, 0x24($sp)
/* 0135A8 80121908 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0135AC 8012190C 0C046599 */  jal         func_80119664
/* 0135B0 80121910 8FA40024 */   lw         $a0, 0x24($sp)
/* 0135B4 80121914 00402025 */  move        $a0, $v0
/* 0135B8 80121918 0C0471B9 */  jal         func_8011C6E4
/* 0135BC 8012191C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0135C0 80121920 10400003 */  beqz        $v0, .L80121930
/* 0135C4 80121924 00402825 */   move       $a1, $v0
/* 0135C8 80121928 10000002 */  b           .L80121934
/* 0135CC 8012192C 24040002 */   addiu      $a0, $zero, 0x2
.L80121930:
/* 0135D0 80121930 00002025 */  move        $a0, $zero
.L80121934:
/* 0135D4 80121934 0C00803F */  jal         func_800200FC
/* 0135D8 80121938 AFA50018 */   sw         $a1, 0x18($sp)
/* 0135DC 8012193C 8FA50018 */  lw          $a1, 0x18($sp)
/* 0135E0 80121940 0C046573 */  jal         func_801195CC
/* 0135E4 80121944 8FA40024 */   lw         $a0, 0x24($sp)
/* 0135E8 80121948 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0135EC 8012194C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0135F0 80121950 00001025 */  move        $v0, $zero
/* 0135F4 80121954 03E00008 */  jr          $ra
/* 0135F8 80121958 00000000 */   nop

glabel func_8012195C # 199
/* 0135FC 8012195C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013600 80121960 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013604 80121964 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013608 80121968 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01360C 8012196C 0C007520 */  jal         func_8001D480
/* 013610 80121970 AFAF001C */   sw         $t7, 0x1c($sp)
/* 013614 80121974 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013618 80121978 0C046573 */  jal         func_801195CC
/* 01361C 8012197C 00402825 */   move       $a1, $v0
/* 013620 80121980 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013624 80121984 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013628 80121988 00001025 */  move        $v0, $zero
/* 01362C 8012198C 03E00008 */  jr          $ra
/* 013630 80121990 00000000 */   nop

glabel func_80121994 # 200
/* 013634 80121994 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013638 80121998 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01363C 8012199C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013640 801219A0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 013644 801219A4 0C007523 */  jal         func_8001D48C
/* 013648 801219A8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01364C 801219AC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013650 801219B0 0C046573 */  jal         func_801195CC
/* 013654 801219B4 00402825 */   move       $a1, $v0
/* 013658 801219B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01365C 801219BC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013660 801219C0 00001025 */  move        $v0, $zero
/* 013664 801219C4 03E00008 */  jr          $ra
/* 013668 801219C8 00000000 */   nop

glabel func_801219CC # 201
/* 01366C 801219CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013670 801219D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013674 801219D4 3C0F8007 */  lui         $t7, %hi(D_80071E88)
/* 013678 801219D8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01367C 801219DC 8DEF1E88 */  lw          $t7, %lo(D_80071E88)($t7)
/* 013680 801219E0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013684 801219E4 0C046573 */  jal         func_801195CC
/* 013688 801219E8 8DE50038 */   lw         $a1, 0x38($t7)
/* 01368C 801219EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013690 801219F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013694 801219F4 00001025 */  move        $v0, $zero
/* 013698 801219F8 03E00008 */  jr          $ra
/* 01369C 801219FC 00000000 */   nop

glabel func_80121A00 # 202
/* 0136A0 80121A00 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0136A4 80121A04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0136A8 80121A08 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0136AC 80121A0C 00803025 */  move        $a2, $a0
/* 0136B0 80121A10 8CC50038 */  lw          $a1, 0x38($a2)
/* 0136B4 80121A14 0C046573 */  jal         func_801195CC
/* 0136B8 80121A18 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0136BC 80121A1C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0136C0 80121A20 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0136C4 80121A24 00001025 */  move        $v0, $zero
/* 0136C8 80121A28 03E00008 */  jr          $ra
/* 0136CC 80121A2C 00000000 */   nop

glabel func_80121A30 # 203
/* 0136D0 80121A30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0136D4 80121A34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0136D8 80121A38 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0136DC 80121A3C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0136E0 80121A40 0C046599 */  jal         func_80119664
/* 0136E4 80121A44 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0136E8 80121A48 0C046C4E */  jal         func_8011B138
/* 0136EC 80121A4C 00402025 */   move       $a0, $v0
/* 0136F0 80121A50 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0136F4 80121A54 0C046573 */  jal         func_801195CC
/* 0136F8 80121A58 00402825 */   move       $a1, $v0
/* 0136FC 80121A5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013700 80121A60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013704 80121A64 00001025 */  move        $v0, $zero
/* 013708 80121A68 03E00008 */  jr          $ra
/* 01370C 80121A6C 00000000 */   nop

glabel func_80121A70 # 204
/* 013710 80121A70 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 013714 80121A74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 013718 80121A78 AFB00018 */  sw          $s0, 0x18($sp)
/* 01371C 80121A7C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013720 80121A80 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 013724 80121A84 0C046599 */  jal         func_80119664
/* 013728 80121A88 02002025 */   move       $a0, $s0
/* 01372C 80121A8C AFA20020 */  sw          $v0, 0x20($sp)
/* 013730 80121A90 0C046599 */  jal         func_80119664
/* 013734 80121A94 02002025 */   move       $a0, $s0
/* 013738 80121A98 AFA20024 */  sw          $v0, 0x24($sp)
/* 01373C 80121A9C 0C046599 */  jal         func_80119664
/* 013740 80121AA0 02002025 */   move       $a0, $s0
/* 013744 80121AA4 00402025 */  move        $a0, $v0
/* 013748 80121AA8 8FA50024 */  lw          $a1, 0x24($sp)
/* 01374C 80121AAC 0C046C55 */  jal         func_8011B154
/* 013750 80121AB0 8FA60020 */   lw         $a2, 0x20($sp)
/* 013754 80121AB4 44050000 */  mfc1        $a1, $f0
/* 013758 80121AB8 0C04657F */  jal         func_801195FC
/* 01375C 80121ABC 02002025 */   move       $a0, $s0
/* 013760 80121AC0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 013764 80121AC4 8FB00018 */  lw          $s0, 0x18($sp)
/* 013768 80121AC8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 01376C 80121ACC 03E00008 */  jr          $ra
/* 013770 80121AD0 00001025 */   move       $v0, $zero

glabel func_80121AD4 # 205
/* 013774 80121AD4 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 013778 80121AD8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01377C 80121ADC AFB00020 */  sw          $s0, 0x20($sp)
/* 013780 80121AE0 AFA40058 */  sw          $a0, 0x58($sp)
/* 013784 80121AE4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013788 80121AE8 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 01378C 80121AEC 0C0465A3 */  jal         func_8011968C
/* 013790 80121AF0 02002025 */   move       $a0, $s0
/* 013794 80121AF4 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 013798 80121AF8 0C046599 */  jal         func_80119664
/* 01379C 80121AFC 02002025 */   move       $a0, $s0
/* 0137A0 80121B00 AFA20040 */  sw          $v0, 0x40($sp)
/* 0137A4 80121B04 0C046599 */  jal         func_80119664
/* 0137A8 80121B08 02002025 */   move       $a0, $s0
/* 0137AC 80121B0C AFA20044 */  sw          $v0, 0x44($sp)
/* 0137B0 80121B10 0C0465A3 */  jal         func_8011968C
/* 0137B4 80121B14 02002025 */   move       $a0, $s0
/* 0137B8 80121B18 E7A00048 */  swc1        $f0, 0x48($sp)
/* 0137BC 80121B1C 0C0465A3 */  jal         func_8011968C
/* 0137C0 80121B20 02002025 */   move       $a0, $s0
/* 0137C4 80121B24 E7A0004C */  swc1        $f0, 0x4c($sp)
/* 0137C8 80121B28 0C0465A3 */  jal         func_8011968C
/* 0137CC 80121B2C 02002025 */   move       $a0, $s0
/* 0137D0 80121B30 C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 0137D4 80121B34 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 0137D8 80121B38 C7A8003C */  lwc1        $f8, 0x3c($sp)
/* 0137DC 80121B3C E7A00030 */  swc1        $f0, 0x30($sp)
/* 0137E0 80121B40 8FA40058 */  lw          $a0, 0x58($sp)
/* 0137E4 80121B44 27A50030 */  addiu       $a1, $sp, 0x30
/* 0137E8 80121B48 8FA60044 */  lw          $a2, 0x44($sp)
/* 0137EC 80121B4C 8FA70040 */  lw          $a3, 0x40($sp)
/* 0137F0 80121B50 E7A40034 */  swc1        $f4, 0x34($sp)
/* 0137F4 80121B54 E7A60038 */  swc1        $f6, 0x38($sp)
/* 0137F8 80121B58 0C046C72 */  jal         func_8011B1C8
/* 0137FC 80121B5C E7A80010 */   swc1       $f8, 0x10($sp)
/* 013800 80121B60 02002025 */  move        $a0, $s0
/* 013804 80121B64 0C046573 */  jal         func_801195CC
/* 013808 80121B68 00402825 */   move       $a1, $v0
/* 01380C 80121B6C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 013810 80121B70 8FB00020 */  lw          $s0, 0x20($sp)
/* 013814 80121B74 27BD0058 */  addiu       $sp, $sp, 0x58
/* 013818 80121B78 03E00008 */  jr          $ra
/* 01381C 80121B7C 00001025 */   move       $v0, $zero

glabel func_80121B80 # 206
/* 013820 80121B80 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 013824 80121B84 AFBF0024 */  sw          $ra, 0x24($sp)
/* 013828 80121B88 AFB00020 */  sw          $s0, 0x20($sp)
/* 01382C 80121B8C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013830 80121B90 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 013834 80121B94 0C046599 */  jal         func_80119664
/* 013838 80121B98 02002025 */   move       $a0, $s0
/* 01383C 80121B9C AFA2002C */  sw          $v0, 0x2c($sp)
/* 013840 80121BA0 0C046599 */  jal         func_80119664
/* 013844 80121BA4 02002025 */   move       $a0, $s0
/* 013848 80121BA8 AFA20030 */  sw          $v0, 0x30($sp)
/* 01384C 80121BAC 0C0465A3 */  jal         func_8011968C
/* 013850 80121BB0 02002025 */   move       $a0, $s0
/* 013854 80121BB4 E7A00034 */  swc1        $f0, 0x34($sp)
/* 013858 80121BB8 0C046599 */  jal         func_80119664
/* 01385C 80121BBC 02002025 */   move       $a0, $s0
/* 013860 80121BC0 AFA20038 */  sw          $v0, 0x38($sp)
/* 013864 80121BC4 0C046599 */  jal         func_80119664
/* 013868 80121BC8 02002025 */   move       $a0, $s0
/* 01386C 80121BCC AFA2003C */  sw          $v0, 0x3c($sp)
/* 013870 80121BD0 0C0465A3 */  jal         func_8011968C
/* 013874 80121BD4 02002025 */   move       $a0, $s0
/* 013878 80121BD8 E7A00048 */  swc1        $f0, 0x48($sp)
/* 01387C 80121BDC 0C0465A3 */  jal         func_8011968C
/* 013880 80121BE0 02002025 */   move       $a0, $s0
/* 013884 80121BE4 E7A00044 */  swc1        $f0, 0x44($sp)
/* 013888 80121BE8 0C0465A3 */  jal         func_8011968C
/* 01388C 80121BEC 02002025 */   move       $a0, $s0
/* 013890 80121BF0 8FAF0030 */  lw          $t7, 0x30($sp)
/* 013894 80121BF4 8FB8002C */  lw          $t8, 0x2c($sp)
/* 013898 80121BF8 E7A00040 */  swc1        $f0, 0x40($sp)
/* 01389C 80121BFC 27A40040 */  addiu       $a0, $sp, 0x40
/* 0138A0 80121C00 8FA50034 */  lw          $a1, 0x34($sp)
/* 0138A4 80121C04 8FA6003C */  lw          $a2, 0x3c($sp)
/* 0138A8 80121C08 8FA70038 */  lw          $a3, 0x38($sp)
/* 0138AC 80121C0C AFAF0010 */  sw          $t7, 0x10($sp)
/* 0138B0 80121C10 0C046C89 */  jal         func_8011B224
/* 0138B4 80121C14 AFB80014 */   sw         $t8, 0x14($sp)
/* 0138B8 80121C18 02002025 */  move        $a0, $s0
/* 0138BC 80121C1C 0C046573 */  jal         func_801195CC
/* 0138C0 80121C20 00402825 */   move       $a1, $v0
/* 0138C4 80121C24 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0138C8 80121C28 8FB00020 */  lw          $s0, 0x20($sp)
/* 0138CC 80121C2C 27BD0050 */  addiu       $sp, $sp, 0x50
/* 0138D0 80121C30 03E00008 */  jr          $ra
/* 0138D4 80121C34 00001025 */   move       $v0, $zero

glabel func_80121C38 # 207
/* 0138D8 80121C38 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0138DC 80121C3C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0138E0 80121C40 AFB00020 */  sw          $s0, 0x20($sp)
/* 0138E4 80121C44 AFA40040 */  sw          $a0, 0x40($sp)
/* 0138E8 80121C48 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0138EC 80121C4C 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 0138F0 80121C50 0C0465A3 */  jal         func_8011968C
/* 0138F4 80121C54 02002025 */   move       $a0, $s0
/* 0138F8 80121C58 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 0138FC 80121C5C 0C0465A3 */  jal         func_8011968C
/* 013900 80121C60 02002025 */   move       $a0, $s0
/* 013904 80121C64 E7A00030 */  swc1        $f0, 0x30($sp)
/* 013908 80121C68 0C046599 */  jal         func_80119664
/* 01390C 80121C6C 02002025 */   move       $a0, $s0
/* 013910 80121C70 AFA20034 */  sw          $v0, 0x34($sp)
/* 013914 80121C74 0C046599 */  jal         func_80119664
/* 013918 80121C78 02002025 */   move       $a0, $s0
/* 01391C 80121C7C C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 013920 80121C80 8FA40040 */  lw          $a0, 0x40($sp)
/* 013924 80121C84 00402825 */  move        $a1, $v0
/* 013928 80121C88 8FA60034 */  lw          $a2, 0x34($sp)
/* 01392C 80121C8C 8FA70030 */  lw          $a3, 0x30($sp)
/* 013930 80121C90 0C046CA7 */  jal         func_8011B29C
/* 013934 80121C94 E7A40010 */   swc1       $f4, 0x10($sp)
/* 013938 80121C98 02002025 */  move        $a0, $s0
/* 01393C 80121C9C 0C046573 */  jal         func_801195CC
/* 013940 80121CA0 00402825 */   move       $a1, $v0
/* 013944 80121CA4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 013948 80121CA8 8FB00020 */  lw          $s0, 0x20($sp)
/* 01394C 80121CAC 27BD0040 */  addiu       $sp, $sp, 0x40
/* 013950 80121CB0 03E00008 */  jr          $ra
/* 013954 80121CB4 00001025 */   move       $v0, $zero

glabel func_80121CB8 # 208
/* 013958 80121CB8 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 01395C 80121CBC AFBF0024 */  sw          $ra, 0x24($sp)
/* 013960 80121CC0 AFB00020 */  sw          $s0, 0x20($sp)
/* 013964 80121CC4 AFA40058 */  sw          $a0, 0x58($sp)
/* 013968 80121CC8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01396C 80121CCC 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 013970 80121CD0 0C0465A3 */  jal         func_8011968C
/* 013974 80121CD4 02002025 */   move       $a0, $s0
/* 013978 80121CD8 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 01397C 80121CDC 0C046599 */  jal         func_80119664
/* 013980 80121CE0 02002025 */   move       $a0, $s0
/* 013984 80121CE4 AFA20040 */  sw          $v0, 0x40($sp)
/* 013988 80121CE8 0C046599 */  jal         func_80119664
/* 01398C 80121CEC 02002025 */   move       $a0, $s0
/* 013990 80121CF0 AFA20044 */  sw          $v0, 0x44($sp)
/* 013994 80121CF4 0C0465A3 */  jal         func_8011968C
/* 013998 80121CF8 02002025 */   move       $a0, $s0
/* 01399C 80121CFC E7A00048 */  swc1        $f0, 0x48($sp)
/* 0139A0 80121D00 0C0465A3 */  jal         func_8011968C
/* 0139A4 80121D04 02002025 */   move       $a0, $s0
/* 0139A8 80121D08 E7A0004C */  swc1        $f0, 0x4c($sp)
/* 0139AC 80121D0C 0C0465A3 */  jal         func_8011968C
/* 0139B0 80121D10 02002025 */   move       $a0, $s0
/* 0139B4 80121D14 C7A4004C */  lwc1        $f4, 0x4c($sp)
/* 0139B8 80121D18 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 0139BC 80121D1C C7A8003C */  lwc1        $f8, 0x3c($sp)
/* 0139C0 80121D20 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0139C4 80121D24 8FA40058 */  lw          $a0, 0x58($sp)
/* 0139C8 80121D28 27A50030 */  addiu       $a1, $sp, 0x30
/* 0139CC 80121D2C 8FA60044 */  lw          $a2, 0x44($sp)
/* 0139D0 80121D30 8FA70040 */  lw          $a3, 0x40($sp)
/* 0139D4 80121D34 E7A40034 */  swc1        $f4, 0x34($sp)
/* 0139D8 80121D38 E7A60038 */  swc1        $f6, 0x38($sp)
/* 0139DC 80121D3C 0C046CBF */  jal         func_8011B2FC
/* 0139E0 80121D40 E7A80010 */   swc1       $f8, 0x10($sp)
/* 0139E4 80121D44 02002025 */  move        $a0, $s0
/* 0139E8 80121D48 0C046573 */  jal         func_801195CC
/* 0139EC 80121D4C 00402825 */   move       $a1, $v0
/* 0139F0 80121D50 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0139F4 80121D54 8FB00020 */  lw          $s0, 0x20($sp)
/* 0139F8 80121D58 27BD0058 */  addiu       $sp, $sp, 0x58
/* 0139FC 80121D5C 03E00008 */  jr          $ra
/* 013A00 80121D60 00001025 */   move       $v0, $zero

glabel func_80121D64 # 209
/* 013A04 80121D64 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013A08 80121D68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013A0C 80121D6C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013A10 80121D70 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013A14 80121D74 0C0465A3 */  jal         func_8011968C
/* 013A18 80121D78 AFA40024 */   sw         $a0, 0x24($sp)
/* 013A1C 80121D7C E7A0001C */  swc1        $f0, 0x1c($sp)
/* 013A20 80121D80 0C046599 */  jal         func_80119664
/* 013A24 80121D84 8FA40024 */   lw         $a0, 0x24($sp)
/* 013A28 80121D88 00402025 */  move        $a0, $v0
/* 013A2C 80121D8C 0C046CD6 */  jal         func_8011B358
/* 013A30 80121D90 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013A34 80121D94 8FA40024 */  lw          $a0, 0x24($sp)
/* 013A38 80121D98 0C046573 */  jal         func_801195CC
/* 013A3C 80121D9C 00002825 */   move       $a1, $zero
/* 013A40 80121DA0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013A44 80121DA4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013A48 80121DA8 00001025 */  move        $v0, $zero
/* 013A4C 80121DAC 03E00008 */  jr          $ra
/* 013A50 80121DB0 00000000 */   nop

glabel func_80121DB4 # 210
/* 013A54 80121DB4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013A58 80121DB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013A5C 80121DBC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013A60 80121DC0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013A64 80121DC4 0C046599 */  jal         func_80119664
/* 013A68 80121DC8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013A6C 80121DCC 0C046CF5 */  jal         func_8011B3D4
/* 013A70 80121DD0 00402025 */   move       $a0, $v0
/* 013A74 80121DD4 44050000 */  mfc1        $a1, $f0
/* 013A78 80121DD8 0C04657F */  jal         func_801195FC
/* 013A7C 80121DDC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013A80 80121DE0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013A84 80121DE4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013A88 80121DE8 00001025 */  move        $v0, $zero
/* 013A8C 80121DEC 03E00008 */  jr          $ra
/* 013A90 80121DF0 00000000 */   nop

glabel func_80121DF4 # 211
/* 013A94 80121DF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013A98 80121DF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013A9C 80121DFC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013AA0 80121E00 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013AA4 80121E04 0C046599 */  jal         func_80119664
/* 013AA8 80121E08 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013AAC 80121E0C 0C046D0C */  jal         func_8011B430
/* 013AB0 80121E10 00402025 */   move       $a0, $v0
/* 013AB4 80121E14 44050000 */  mfc1        $a1, $f0
/* 013AB8 80121E18 0C04657F */  jal         func_801195FC
/* 013ABC 80121E1C 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013AC0 80121E20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013AC4 80121E24 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013AC8 80121E28 00001025 */  move        $v0, $zero
/* 013ACC 80121E2C 03E00008 */  jr          $ra
/* 013AD0 80121E30 00000000 */   nop

glabel func_80121E34 # 212
/* 013AD4 80121E34 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013AD8 80121E38 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013ADC 80121E3C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013AE0 80121E40 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013AE4 80121E44 0C046599 */  jal         func_80119664
/* 013AE8 80121E48 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013AEC 80121E4C 0C046D26 */  jal         func_8011B498
/* 013AF0 80121E50 00402025 */   move       $a0, $v0
/* 013AF4 80121E54 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013AF8 80121E58 0C046573 */  jal         func_801195CC
/* 013AFC 80121E5C 00402825 */   move       $a1, $v0
/* 013B00 80121E60 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013B04 80121E64 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013B08 80121E68 00001025 */  move        $v0, $zero
/* 013B0C 80121E6C 03E00008 */  jr          $ra
/* 013B10 80121E70 00000000 */   nop

glabel func_80121E74 # 213
/* 013B14 80121E74 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013B18 80121E78 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013B1C 80121E7C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013B20 80121E80 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013B24 80121E84 0C046599 */  jal         func_80119664
/* 013B28 80121E88 AFA40024 */   sw         $a0, 0x24($sp)
/* 013B2C 80121E8C AFA2001C */  sw          $v0, 0x1c($sp)
/* 013B30 80121E90 0C046599 */  jal         func_80119664
/* 013B34 80121E94 8FA40024 */   lw         $a0, 0x24($sp)
/* 013B38 80121E98 00402025 */  move        $a0, $v0
/* 013B3C 80121E9C 0C046D61 */  jal         func_8011B584
/* 013B40 80121EA0 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013B44 80121EA4 44050000 */  mfc1        $a1, $f0
/* 013B48 80121EA8 0C04657F */  jal         func_801195FC
/* 013B4C 80121EAC 8FA40024 */   lw         $a0, 0x24($sp)
/* 013B50 80121EB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013B54 80121EB4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013B58 80121EB8 00001025 */  move        $v0, $zero
/* 013B5C 80121EBC 03E00008 */  jr          $ra
/* 013B60 80121EC0 00000000 */   nop

glabel func_80121EC4 # 214
/* 013B64 80121EC4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013B68 80121EC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013B6C 80121ECC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013B70 80121ED0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013B74 80121ED4 0C046599 */  jal         func_80119664
/* 013B78 80121ED8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013B7C 80121EDC 0C046DC7 */  jal         func_8011B71C
/* 013B80 80121EE0 00402025 */   move       $a0, $v0
/* 013B84 80121EE4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013B88 80121EE8 0C046573 */  jal         func_801195CC
/* 013B8C 80121EEC 00402825 */   move       $a1, $v0
/* 013B90 80121EF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013B94 80121EF4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013B98 80121EF8 00001025 */  move        $v0, $zero
/* 013B9C 80121EFC 03E00008 */  jr          $ra
/* 013BA0 80121F00 00000000 */   nop

glabel func_80121F04 # 215
/* 013BA4 80121F04 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013BA8 80121F08 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013BAC 80121F0C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013BB0 80121F10 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013BB4 80121F14 0C046599 */  jal         func_80119664
/* 013BB8 80121F18 AFA40024 */   sw         $a0, 0x24($sp)
/* 013BBC 80121F1C AFA2001C */  sw          $v0, 0x1c($sp)
/* 013BC0 80121F20 0C046599 */  jal         func_80119664
/* 013BC4 80121F24 8FA40024 */   lw         $a0, 0x24($sp)
/* 013BC8 80121F28 00402025 */  move        $a0, $v0
/* 013BCC 80121F2C 0C046DD5 */  jal         func_8011B754
/* 013BD0 80121F30 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013BD4 80121F34 44050000 */  mfc1        $a1, $f0
/* 013BD8 80121F38 0C04657F */  jal         func_801195FC
/* 013BDC 80121F3C 8FA40024 */   lw         $a0, 0x24($sp)
/* 013BE0 80121F40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013BE4 80121F44 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013BE8 80121F48 00001025 */  move        $v0, $zero
/* 013BEC 80121F4C 03E00008 */  jr          $ra
/* 013BF0 80121F50 00000000 */   nop

glabel func_80121F54 # 216
/* 013BF4 80121F54 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013BF8 80121F58 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013BFC 80121F5C AFA40028 */  sw          $a0, 0x28($sp)
/* 013C00 80121F60 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013C04 80121F64 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013C08 80121F68 0C046599 */  jal         func_80119664
/* 013C0C 80121F6C AFA40024 */   sw         $a0, 0x24($sp)
/* 013C10 80121F70 AFA2001C */  sw          $v0, 0x1c($sp)
/* 013C14 80121F74 0C046599 */  jal         func_80119664
/* 013C18 80121F78 8FA40024 */   lw         $a0, 0x24($sp)
/* 013C1C 80121F7C 8FA40028 */  lw          $a0, 0x28($sp)
/* 013C20 80121F80 00402825 */  move        $a1, $v0
/* 013C24 80121F84 0C046DF0 */  jal         func_8011B7C0
/* 013C28 80121F88 8FA6001C */   lw         $a2, 0x1c($sp)
/* 013C2C 80121F8C 44050000 */  mfc1        $a1, $f0
/* 013C30 80121F90 0C04657F */  jal         func_801195FC
/* 013C34 80121F94 8FA40024 */   lw         $a0, 0x24($sp)
/* 013C38 80121F98 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013C3C 80121F9C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013C40 80121FA0 00001025 */  move        $v0, $zero
/* 013C44 80121FA4 03E00008 */  jr          $ra
/* 013C48 80121FA8 00000000 */   nop

glabel func_80121FAC # 217
/* 013C4C 80121FAC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013C50 80121FB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013C54 80121FB4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013C58 80121FB8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013C5C 80121FBC 0C046599 */  jal         func_80119664
/* 013C60 80121FC0 AFA40024 */   sw         $a0, 0x24($sp)
/* 013C64 80121FC4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 013C68 80121FC8 0C046599 */  jal         func_80119664
/* 013C6C 80121FCC 8FA40024 */   lw         $a0, 0x24($sp)
/* 013C70 80121FD0 00402025 */  move        $a0, $v0
/* 013C74 80121FD4 0C046E5F */  jal         func_8011B97C
/* 013C78 80121FD8 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013C7C 80121FDC 44050000 */  mfc1        $a1, $f0
/* 013C80 80121FE0 0C04657F */  jal         func_801195FC
/* 013C84 80121FE4 8FA40024 */   lw         $a0, 0x24($sp)
/* 013C88 80121FE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013C8C 80121FEC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013C90 80121FF0 00001025 */  move        $v0, $zero
/* 013C94 80121FF4 03E00008 */  jr          $ra
/* 013C98 80121FF8 00000000 */   nop

glabel func_80121FFC # 218
/* 013C9C 80121FFC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013CA0 80122000 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013CA4 80122004 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013CA8 80122008 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013CAC 8012200C 0C046599 */  jal         func_80119664
/* 013CB0 80122010 AFA40024 */   sw         $a0, 0x24($sp)
/* 013CB4 80122014 AFA2001C */  sw          $v0, 0x1c($sp)
/* 013CB8 80122018 0C046599 */  jal         func_80119664
/* 013CBC 8012201C 8FA40024 */   lw         $a0, 0x24($sp)
/* 013CC0 80122020 00402025 */  move        $a0, $v0
/* 013CC4 80122024 0C046E76 */  jal         func_8011B9D8
/* 013CC8 80122028 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013CCC 8012202C 44050000 */  mfc1        $a1, $f0
/* 013CD0 80122030 0C04657F */  jal         func_801195FC
/* 013CD4 80122034 8FA40024 */   lw         $a0, 0x24($sp)
/* 013CD8 80122038 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013CDC 8012203C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013CE0 80122040 00001025 */  move        $v0, $zero
/* 013CE4 80122044 03E00008 */  jr          $ra
/* 013CE8 80122048 00000000 */   nop

glabel func_8012204C # 219
/* 013CEC 8012204C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013CF0 80122050 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013CF4 80122054 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013CF8 80122058 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013CFC 8012205C 0C046599 */  jal         func_80119664
/* 013D00 80122060 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013D04 80122064 0C046E8D */  jal         func_8011BA34
/* 013D08 80122068 00402025 */   move       $a0, $v0
/* 013D0C 8012206C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013D10 80122070 0C046573 */  jal         func_801195CC
/* 013D14 80122074 00402825 */   move       $a1, $v0
/* 013D18 80122078 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013D1C 8012207C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013D20 80122080 00001025 */  move        $v0, $zero
/* 013D24 80122084 03E00008 */  jr          $ra
/* 013D28 80122088 00000000 */   nop

glabel func_8012208C # 220
/* 013D2C 8012208C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 013D30 80122090 AFBF001C */  sw          $ra, 0x1c($sp)
/* 013D34 80122094 AFB00018 */  sw          $s0, 0x18($sp)
/* 013D38 80122098 AFA40030 */  sw          $a0, 0x30($sp)
/* 013D3C 8012209C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013D40 801220A0 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 013D44 801220A4 0C046599 */  jal         func_80119664
/* 013D48 801220A8 02002025 */   move       $a0, $s0
/* 013D4C 801220AC AFA20020 */  sw          $v0, 0x20($sp)
/* 013D50 801220B0 0C0465A3 */  jal         func_8011968C
/* 013D54 801220B4 02002025 */   move       $a0, $s0
/* 013D58 801220B8 E7A00024 */  swc1        $f0, 0x24($sp)
/* 013D5C 801220BC 0C0465A3 */  jal         func_8011968C
/* 013D60 801220C0 02002025 */   move       $a0, $s0
/* 013D64 801220C4 44050000 */  mfc1        $a1, $f0
/* 013D68 801220C8 8FA40030 */  lw          $a0, 0x30($sp)
/* 013D6C 801220CC 8FA60024 */  lw          $a2, 0x24($sp)
/* 013D70 801220D0 0C046D77 */  jal         func_8011B5DC
/* 013D74 801220D4 8FA70020 */   lw         $a3, 0x20($sp)
/* 013D78 801220D8 44050000 */  mfc1        $a1, $f0
/* 013D7C 801220DC 0C04657F */  jal         func_801195FC
/* 013D80 801220E0 02002025 */   move       $a0, $s0
/* 013D84 801220E4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 013D88 801220E8 8FB00018 */  lw          $s0, 0x18($sp)
/* 013D8C 801220EC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 013D90 801220F0 03E00008 */  jr          $ra
/* 013D94 801220F4 00001025 */   move       $v0, $zero

glabel func_801220F8 # 221
/* 013D98 801220F8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 013D9C 801220FC AFBF001C */  sw          $ra, 0x1c($sp)
/* 013DA0 80122100 AFB00018 */  sw          $s0, 0x18($sp)
/* 013DA4 80122104 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013DA8 80122108 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 013DAC 8012210C 0C0465A3 */  jal         func_8011968C
/* 013DB0 80122110 02002025 */   move       $a0, $s0
/* 013DB4 80122114 E7A00020 */  swc1        $f0, 0x20($sp)
/* 013DB8 80122118 0C0465A3 */  jal         func_8011968C
/* 013DBC 8012211C 02002025 */   move       $a0, $s0
/* 013DC0 80122120 E7A00024 */  swc1        $f0, 0x24($sp)
/* 013DC4 80122124 0C0465A3 */  jal         func_8011968C
/* 013DC8 80122128 02002025 */   move       $a0, $s0
/* 013DCC 8012212C 46000306 */  mov.s       $f12, $f0
/* 013DD0 80122130 C7AE0024 */  lwc1        $f14, 0x24($sp)
/* 013DD4 80122134 8FA60020 */  lw          $a2, 0x20($sp)
/* 013DD8 80122138 0C043D75 */  jal         func_8010F5D4
/* 013DDC 8012213C 00003825 */   move       $a3, $zero
/* 013DE0 80122140 02002025 */  move        $a0, $s0
/* 013DE4 80122144 0C046573 */  jal         func_801195CC
/* 013DE8 80122148 00402825 */   move       $a1, $v0
/* 013DEC 8012214C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 013DF0 80122150 8FB00018 */  lw          $s0, 0x18($sp)
/* 013DF4 80122154 27BD0030 */  addiu       $sp, $sp, 0x30
/* 013DF8 80122158 03E00008 */  jr          $ra
/* 013DFC 8012215C 00001025 */   move       $v0, $zero

glabel func_80122160 # 222
/* 013E00 80122160 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013E04 80122164 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013E08 80122168 AFA40020 */  sw          $a0, 0x20($sp)
/* 013E0C 8012216C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013E10 80122170 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013E14 80122174 0C0465A3 */  jal         func_8011968C
/* 013E18 80122178 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013E1C 8012217C 44050000 */  mfc1        $a1, $f0
/* 013E20 80122180 8FA40020 */  lw          $a0, 0x20($sp)
/* 013E24 80122184 0C046DA6 */  jal         func_8011B698
/* 013E28 80122188 24060000 */   addiu      $a2, $zero, 0x0
/* 013E2C 8012218C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013E30 80122190 0C046573 */  jal         func_801195CC
/* 013E34 80122194 00402825 */   move       $a1, $v0
/* 013E38 80122198 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013E3C 8012219C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013E40 801221A0 00001025 */  move        $v0, $zero
/* 013E44 801221A4 03E00008 */  jr          $ra
/* 013E48 801221A8 00000000 */   nop

glabel func_801221AC # 223
/* 013E4C 801221AC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013E50 801221B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013E54 801221B4 AFA40028 */  sw          $a0, 0x28($sp)
/* 013E58 801221B8 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013E5C 801221BC 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013E60 801221C0 0C0465A3 */  jal         func_8011968C
/* 013E64 801221C4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 013E68 801221C8 E7A00020 */  swc1        $f0, 0x20($sp)
/* 013E6C 801221CC 0C0465A3 */  jal         func_8011968C
/* 013E70 801221D0 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013E74 801221D4 44050000 */  mfc1        $a1, $f0
/* 013E78 801221D8 8FA40028 */  lw          $a0, 0x28($sp)
/* 013E7C 801221DC 0C046DA6 */  jal         func_8011B698
/* 013E80 801221E0 8FA60020 */   lw         $a2, 0x20($sp)
/* 013E84 801221E4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 013E88 801221E8 0C046573 */  jal         func_801195CC
/* 013E8C 801221EC 00402825 */   move       $a1, $v0
/* 013E90 801221F0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013E94 801221F4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013E98 801221F8 00001025 */  move        $v0, $zero
/* 013E9C 801221FC 03E00008 */  jr          $ra
/* 013EA0 80122200 00000000 */   nop

glabel func_80122204 # 224
/* 013EA4 80122204 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013EA8 80122208 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013EAC 8012220C AFA40020 */  sw          $a0, 0x20($sp)
/* 013EB0 80122210 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013EB4 80122214 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013EB8 80122218 0C0465A3 */  jal         func_8011968C
/* 013EBC 8012221C AFA4001C */   sw         $a0, 0x1c($sp)
/* 013EC0 80122220 44050000 */  mfc1        $a1, $f0
/* 013EC4 80122224 8FA40020 */  lw          $a0, 0x20($sp)
/* 013EC8 80122228 0C04720E */  jal         func_8011C838
/* 013ECC 8012222C 24060000 */   addiu      $a2, $zero, 0x0
/* 013ED0 80122230 44050000 */  mfc1        $a1, $f0
/* 013ED4 80122234 0C04657F */  jal         func_801195FC
/* 013ED8 80122238 8FA4001C */   lw         $a0, 0x1c($sp)
/* 013EDC 8012223C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013EE0 80122240 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013EE4 80122244 00001025 */  move        $v0, $zero
/* 013EE8 80122248 03E00008 */  jr          $ra
/* 013EEC 8012224C 00000000 */   nop

glabel func_80122250 # 225
/* 013EF0 80122250 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013EF4 80122254 AFBF0014 */  sw          $ra, 0x14($sp)
/* 013EF8 80122258 AFA40028 */  sw          $a0, 0x28($sp)
/* 013EFC 8012225C 8C8F0054 */  lw          $t7, 0x54($a0)
/* 013F00 80122260 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 013F04 80122264 0C0465A3 */  jal         func_8011968C
/* 013F08 80122268 AFA40024 */   sw         $a0, 0x24($sp)
/* 013F0C 8012226C E7A0001C */  swc1        $f0, 0x1c($sp)
/* 013F10 80122270 0C0465A3 */  jal         func_8011968C
/* 013F14 80122274 8FA40024 */   lw         $a0, 0x24($sp)
/* 013F18 80122278 44050000 */  mfc1        $a1, $f0
/* 013F1C 8012227C 8FA40028 */  lw          $a0, 0x28($sp)
/* 013F20 80122280 0C04720E */  jal         func_8011C838
/* 013F24 80122284 8FA6001C */   lw         $a2, 0x1c($sp)
/* 013F28 80122288 44050000 */  mfc1        $a1, $f0
/* 013F2C 8012228C 0C04657F */  jal         func_801195FC
/* 013F30 80122290 8FA40024 */   lw         $a0, 0x24($sp)
/* 013F34 80122294 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013F38 80122298 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013F3C 8012229C 00001025 */  move        $v0, $zero
/* 013F40 801222A0 03E00008 */  jr          $ra
/* 013F44 801222A4 00000000 */   nop

glabel func_801222A8 # 226
/* 013F48 801222A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013F4C 801222AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013F50 801222B0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013F54 801222B4 3C05800B */  lui         $a1, %hi(D_800B2C84)
/* 013F58 801222B8 8CA52C84 */  lw          $a1, %lo(D_800B2C84)($a1)
/* 013F5C 801222BC 0C046573 */  jal         func_801195CC
/* 013F60 801222C0 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013F64 801222C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013F68 801222C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013F6C 801222CC 00001025 */  move        $v0, $zero
/* 013F70 801222D0 03E00008 */  jr          $ra
/* 013F74 801222D4 00000000 */   nop

glabel func_801222D8 # 227
/* 013F78 801222D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013F7C 801222DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 013F80 801222E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013F84 801222E4 3C05800B */  lui         $a1, %hi(D_800B0938)
/* 013F88 801222E8 94A50938 */  lhu         $a1, %lo(D_800B0938)($a1)
/* 013F8C 801222EC 0C046573 */  jal         func_801195CC
/* 013F90 801222F0 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 013F94 801222F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013F98 801222F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 013F9C 801222FC 24020001 */  addiu       $v0, $zero, 0x1
/* 013FA0 80122300 03E00008 */  jr          $ra
/* 013FA4 80122304 00000000 */   nop

glabel func_80122308 # 228
/* 013FA8 80122308 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 013FAC 8012230C AFBF0014 */  sw          $ra, 0x14($sp)
/* 013FB0 80122310 8C8E0054 */  lw          $t6, 0x54($a0)
/* 013FB4 80122314 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 013FB8 80122318 0C046599 */  jal         func_80119664
/* 013FBC 8012231C AFA40024 */   sw         $a0, 0x24($sp)
/* 013FC0 80122320 AFA2001C */  sw          $v0, 0x1c($sp)
/* 013FC4 80122324 0C046599 */  jal         func_80119664
/* 013FC8 80122328 8FA40024 */   lw         $a0, 0x24($sp)
/* 013FCC 8012232C 00402025 */  move        $a0, $v0
/* 013FD0 80122330 0C04477F */  jal         func_80111DFC
/* 013FD4 80122334 8FA5001C */   lw         $a1, 0x1c($sp)
/* 013FD8 80122338 8FA40024 */  lw          $a0, 0x24($sp)
/* 013FDC 8012233C 0C046573 */  jal         func_801195CC
/* 013FE0 80122340 00002825 */   move       $a1, $zero
/* 013FE4 80122344 8FBF0014 */  lw          $ra, 0x14($sp)
/* 013FE8 80122348 27BD0028 */  addiu       $sp, $sp, 0x28
/* 013FEC 8012234C 24020001 */  addiu       $v0, $zero, 0x1
/* 013FF0 80122350 03E00008 */  jr          $ra
/* 013FF4 80122354 00000000 */   nop

glabel func_80122358 # 229
/* 013FF8 80122358 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 013FFC 8012235C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014000 80122360 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014004 80122364 3C05800B */  lui         $a1, %hi(D_800B2C78)
/* 014008 80122368 8CA52C78 */  lw          $a1, %lo(D_800B2C78)($a1)
/* 01400C 8012236C 0C046573 */  jal         func_801195CC
/* 014010 80122370 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 014014 80122374 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014018 80122378 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01401C 8012237C 00001025 */  move        $v0, $zero
/* 014020 80122380 03E00008 */  jr          $ra
/* 014024 80122384 00000000 */   nop

glabel func_80122388 # 230
/* 014028 80122388 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01402C 8012238C AFBF001C */  sw          $ra, 0x1c($sp)
/* 014030 80122390 AFB00018 */  sw          $s0, 0x18($sp)
/* 014034 80122394 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014038 80122398 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 01403C 8012239C 0C046599 */  jal         func_80119664
/* 014040 801223A0 02002025 */   move       $a0, $s0
/* 014044 801223A4 AFA20024 */  sw          $v0, 0x24($sp)
/* 014048 801223A8 0C046599 */  jal         func_80119664
/* 01404C 801223AC 02002025 */   move       $a0, $s0
/* 014050 801223B0 AFA20028 */  sw          $v0, 0x28($sp)
/* 014054 801223B4 0C046599 */  jal         func_80119664
/* 014058 801223B8 02002025 */   move       $a0, $s0
/* 01405C 801223BC AFA2002C */  sw          $v0, 0x2c($sp)
/* 014060 801223C0 0C046599 */  jal         func_80119664
/* 014064 801223C4 02002025 */   move       $a0, $s0
/* 014068 801223C8 10400005 */  beqz        $v0, .L801223E0
/* 01406C 801223CC 02002025 */   move       $a0, $s0
/* 014070 801223D0 24020001 */  addiu       $v0, $zero, 0x1
/* 014074 801223D4 3C018010 */  lui         $at, %hi(D_800FD088)
/* 014078 801223D8 10000004 */  b           .L801223EC
/* 01407C 801223DC AC22D088 */   sw         $v0, %lo(D_800FD088)($at)
.L801223E0:
/* 014080 801223E0 3C018010 */  lui         $at, %hi(D_800FD088)
/* 014084 801223E4 AC20D088 */  sw          $zero, %lo(D_800FD088)($at)
/* 014088 801223E8 24020001 */  addiu       $v0, $zero, 0x1
.L801223EC:
/* 01408C 801223EC 8FAF002C */  lw          $t7, 0x2c($sp)
/* 014090 801223F0 3C018006 */  lui         $at, %hi(D_80061290)
/* 014094 801223F4 11E00004 */  beqz        $t7, .L80122408
/* 014098 801223F8 00000000 */   nop
/* 01409C 801223FC 3C018006 */  lui         $at, %hi(D_80061290)
/* 0140A0 80122400 10000002 */  b           .L8012240C
/* 0140A4 80122404 AC221290 */   sw         $v0, %lo(D_80061290)($at)
.L80122408:
/* 0140A8 80122408 AC201290 */  sw          $zero, %lo(D_80061290)($at)
.L8012240C:
/* 0140AC 8012240C 8FB80028 */  lw          $t8, 0x28($sp)
/* 0140B0 80122410 3C018007 */  lui         $at, %hi(D_80070000)
/* 0140B4 80122414 13000004 */  beqz        $t8, .L80122428
/* 0140B8 80122418 00000000 */   nop
/* 0140BC 8012241C 3C018007 */  lui         $at, %hi(D_80070000)
/* 0140C0 80122420 10000002 */  b           .L8012242C
/* 0140C4 80122424 AC220000 */   sw         $v0, %lo(D_80070000)($at)
.L80122428:
/* 0140C8 80122428 AC200000 */  sw          $zero, %lo(D_80070000)($at)
.L8012242C:
/* 0140CC 8012242C 8FB90024 */  lw          $t9, 0x24($sp)
/* 0140D0 80122430 3C018007 */  lui         $at, %hi(D_80070004)
/* 0140D4 80122434 13200004 */  beqz        $t9, .L80122448
/* 0140D8 80122438 00000000 */   nop
/* 0140DC 8012243C 3C018007 */  lui         $at, %hi(D_80070004)
/* 0140E0 80122440 10000002 */  b           .L8012244C
/* 0140E4 80122444 AC220004 */   sw         $v0, %lo(D_80070004)($at)
.L80122448:
/* 0140E8 80122448 AC200004 */  sw          $zero, %lo(D_80070004)($at)
.L8012244C:
/* 0140EC 8012244C 0C046573 */  jal         func_801195CC
/* 0140F0 80122450 00002825 */   move       $a1, $zero
/* 0140F4 80122454 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0140F8 80122458 8FB00018 */  lw          $s0, 0x18($sp)
/* 0140FC 8012245C 27BD0038 */  addiu       $sp, $sp, 0x38
/* 014100 80122460 03E00008 */  jr          $ra
/* 014104 80122464 24020001 */   addiu      $v0, $zero, 0x1

glabel func_80122468 # 231
/* 014108 80122468 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01410C 8012246C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014110 80122470 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014114 80122474 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014118 80122478 0C0465A3 */  jal         func_8011968C
/* 01411C 8012247C AFA4001C */   sw         $a0, 0x1c($sp)
/* 014120 80122480 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 014124 80122484 44050000 */  mfc1        $a1, $f0
/* 014128 80122488 0C004C64 */  jal         func_80013190
/* 01412C 8012248C 8C841E88 */   lw         $a0, %lo(D_80071E88)($a0)
/* 014130 80122490 44050000 */  mfc1        $a1, $f0
/* 014134 80122494 0C04657F */  jal         func_801195FC
/* 014138 80122498 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01413C 8012249C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014140 801224A0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014144 801224A4 00001025 */  move        $v0, $zero
/* 014148 801224A8 03E00008 */  jr          $ra
/* 01414C 801224AC 00000000 */   nop

glabel func_801224B0 # 232
/* 014150 801224B0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014154 801224B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014158 801224B8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01415C 801224BC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014160 801224C0 0C0465A3 */  jal         func_8011968C
/* 014164 801224C4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014168 801224C8 44806000 */  mtc1        $zero, $f12
/* 01416C 801224CC 3C028007 */  lui         $v0, %hi(D_80071E88)
/* 014170 801224D0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014174 801224D4 460C003C */  c.lt.s      $f0, $f12
/* 014178 801224D8 46000086 */  mov.s       $f2, $f0
/* 01417C 801224DC 24421E88 */  addiu       $v0, $v0, %lo(D_80071E88)
/* 014180 801224E0 3C0142C8 */  lui         $at, 0x42c8
/* 014184 801224E4 45020004 */  bc1fl       .L801224F8
/* 014188 801224E8 44816000 */   mtc1       $at, $f12
/* 01418C 801224EC 10000008 */  b           .L80122510
/* 014190 801224F0 46006086 */   mov.s      $f2, $f12
/* 014194 801224F4 44816000 */  mtc1        $at, $f12
.L801224F8:
/* 014198 801224F8 00000000 */  nop
/* 01419C 801224FC 4600603C */  c.lt.s      $f12, $f0
/* 0141A0 80122500 00000000 */  nop
/* 0141A4 80122504 45020003 */  bc1fl       .L80122514
/* 0141A8 80122508 8C4F0000 */   lw         $t7, 0x0($v0)
/* 0141AC 8012250C 46006086 */  mov.s       $f2, $f12
.L80122510:
/* 0141B0 80122510 8C4F0000 */  lw          $t7, 0x0($v0)
.L80122514:
/* 0141B4 80122514 8DF80054 */  lw          $t8, 0x54($t7)
/* 0141B8 80122518 E70203F8 */  swc1        $f2, 0x3f8($t8)
/* 0141BC 8012251C 8C590000 */  lw          $t9, 0x0($v0)
/* 0141C0 80122520 8F280054 */  lw          $t0, 0x54($t9)
/* 0141C4 80122524 0C04657F */  jal         func_801195FC
/* 0141C8 80122528 8D0503F8 */   lw         $a1, 0x3f8($t0)
/* 0141CC 8012252C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0141D0 80122530 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0141D4 80122534 00001025 */  move        $v0, $zero
/* 0141D8 80122538 03E00008 */  jr          $ra
/* 0141DC 8012253C 00000000 */   nop

glabel func_80122540 # 233
/* 0141E0 80122540 3C0F8007 */  lui         $t7, %hi(D_80071E88)
/* 0141E4 80122544 8DEF1E88 */  lw          $t7, %lo(D_80071E88)($t7)
/* 0141E8 80122548 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0141EC 8012254C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0141F0 80122550 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0141F4 80122554 8DF80054 */  lw          $t8, 0x54($t7)
/* 0141F8 80122558 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0141FC 8012255C 0C04657F */  jal         func_801195FC
/* 014200 80122560 8F0503F8 */   lw         $a1, 0x3f8($t8)
/* 014204 80122564 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014208 80122568 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01420C 8012256C 00001025 */  move        $v0, $zero
/* 014210 80122570 03E00008 */  jr          $ra
/* 014214 80122574 00000000 */   nop

glabel func_80122578 # 234
/* 014218 80122578 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01421C 8012257C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014220 80122580 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014224 80122584 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014228 80122588 0C0465A3 */  jal         func_8011968C
/* 01422C 8012258C AFA4001C */   sw         $a0, 0x1c($sp)
/* 014230 80122590 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 014234 80122594 44050000 */  mfc1        $a1, $f0
/* 014238 80122598 0C004C7F */  jal         func_800131FC
/* 01423C 8012259C 8C841E88 */   lw         $a0, %lo(D_80071E88)($a0)
/* 014240 801225A0 44050000 */  mfc1        $a1, $f0
/* 014244 801225A4 0C04657F */  jal         func_801195FC
/* 014248 801225A8 8FA4001C */   lw         $a0, 0x1c($sp)
/* 01424C 801225AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014250 801225B0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014254 801225B4 00001025 */  move        $v0, $zero
/* 014258 801225B8 03E00008 */  jr          $ra
/* 01425C 801225BC 00000000 */   nop

glabel func_801225C0 # 235
/* 014260 801225C0 3C0F8007 */  lui         $t7, %hi(D_80071E88)
/* 014264 801225C4 8DEF1E88 */  lw          $t7, %lo(D_80071E88)($t7)
/* 014268 801225C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01426C 801225CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 014270 801225D0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014274 801225D4 8DF80054 */  lw          $t8, 0x54($t7)
/* 014278 801225D8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01427C 801225DC 0C04657F */  jal         func_801195FC
/* 014280 801225E0 8F0503F4 */   lw         $a1, 0x3f4($t8)
/* 014284 801225E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014288 801225E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01428C 801225EC 00001025 */  move        $v0, $zero
/* 014290 801225F0 03E00008 */  jr          $ra
/* 014294 801225F4 00000000 */   nop

glabel func_801225F8 # 236
/* 014298 801225F8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01429C 801225FC AFBF0024 */  sw          $ra, 0x24($sp)
/* 0142A0 80122600 AFB00020 */  sw          $s0, 0x20($sp)
/* 0142A4 80122604 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0142A8 80122608 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0142AC 8012260C 0C046599 */  jal         func_80119664
/* 0142B0 80122610 02002025 */   move       $a0, $s0
/* 0142B4 80122614 AFA2002C */  sw          $v0, 0x2c($sp)
/* 0142B8 80122618 0C0465A3 */  jal         func_8011968C
/* 0142BC 8012261C 02002025 */   move       $a0, $s0
/* 0142C0 80122620 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0142C4 80122624 0C0465A3 */  jal         func_8011968C
/* 0142C8 80122628 02002025 */   move       $a0, $s0
/* 0142CC 8012262C E7A00034 */  swc1        $f0, 0x34($sp)
/* 0142D0 80122630 0C0465A3 */  jal         func_8011968C
/* 0142D4 80122634 02002025 */   move       $a0, $s0
/* 0142D8 80122638 E7A00038 */  swc1        $f0, 0x38($sp)
/* 0142DC 8012263C 0C0465A3 */  jal         func_8011968C
/* 0142E0 80122640 02002025 */   move       $a0, $s0
/* 0142E4 80122644 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 0142E8 80122648 0C0465A3 */  jal         func_8011968C
/* 0142EC 8012264C 02002025 */   move       $a0, $s0
/* 0142F0 80122650 C7A40030 */  lwc1        $f4, 0x30($sp)
/* 0142F4 80122654 8FAF002C */  lw          $t7, 0x2c($sp)
/* 0142F8 80122658 46000306 */  mov.s       $f12, $f0
/* 0142FC 8012265C C7AE003C */  lwc1        $f14, 0x3c($sp)
/* 014300 80122660 8FA60038 */  lw          $a2, 0x38($sp)
/* 014304 80122664 8FA70034 */  lw          $a3, 0x34($sp)
/* 014308 80122668 E7A40010 */  swc1        $f4, 0x10($sp)
/* 01430C 8012266C 0C045BDD */  jal         func_80116F74
/* 014310 80122670 AFAF0014 */   sw         $t7, 0x14($sp)
/* 014314 80122674 02002025 */  move        $a0, $s0
/* 014318 80122678 0C046573 */  jal         func_801195CC
/* 01431C 8012267C 8C450038 */   lw         $a1, 0x38($v0)
/* 014320 80122680 8FBF0024 */  lw          $ra, 0x24($sp)
/* 014324 80122684 8FB00020 */  lw          $s0, 0x20($sp)
/* 014328 80122688 27BD0048 */  addiu       $sp, $sp, 0x48
/* 01432C 8012268C 03E00008 */  jr          $ra
/* 014330 80122690 00001025 */   move       $v0, $zero

glabel func_80122694 # 237
/* 014334 80122694 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 014338 80122698 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01433C 8012269C AFB00020 */  sw          $s0, 0x20($sp)
/* 014340 801226A0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014344 801226A4 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 014348 801226A8 0C046599 */  jal         func_80119664
/* 01434C 801226AC 02002025 */   move       $a0, $s0
/* 014350 801226B0 AFA2002C */  sw          $v0, 0x2c($sp)
/* 014354 801226B4 0C0465A3 */  jal         func_8011968C
/* 014358 801226B8 02002025 */   move       $a0, $s0
/* 01435C 801226BC E7A00030 */  swc1        $f0, 0x30($sp)
/* 014360 801226C0 0C0465A3 */  jal         func_8011968C
/* 014364 801226C4 02002025 */   move       $a0, $s0
/* 014368 801226C8 E7A00034 */  swc1        $f0, 0x34($sp)
/* 01436C 801226CC 0C0465A3 */  jal         func_8011968C
/* 014370 801226D0 02002025 */   move       $a0, $s0
/* 014374 801226D4 E7A00038 */  swc1        $f0, 0x38($sp)
/* 014378 801226D8 0C0465A3 */  jal         func_8011968C
/* 01437C 801226DC 02002025 */   move       $a0, $s0
/* 014380 801226E0 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 014384 801226E4 0C0465A3 */  jal         func_8011968C
/* 014388 801226E8 02002025 */   move       $a0, $s0
/* 01438C 801226EC C7A40030 */  lwc1        $f4, 0x30($sp)
/* 014390 801226F0 8FAF002C */  lw          $t7, 0x2c($sp)
/* 014394 801226F4 46000306 */  mov.s       $f12, $f0
/* 014398 801226F8 C7AE003C */  lwc1        $f14, 0x3c($sp)
/* 01439C 801226FC 8FA60038 */  lw          $a2, 0x38($sp)
/* 0143A0 80122700 8FA70034 */  lw          $a3, 0x34($sp)
/* 0143A4 80122704 E7A40010 */  swc1        $f4, 0x10($sp)
/* 0143A8 80122708 0C045BDD */  jal         func_80116F74
/* 0143AC 8012270C AFAF0014 */   sw         $t7, 0x14($sp)
/* 0143B0 80122710 AFA20028 */  sw          $v0, 0x28($sp)
/* 0143B4 80122714 00402025 */  move        $a0, $v0
/* 0143B8 80122718 0C045E9A */  jal         func_80117A68
/* 0143BC 8012271C 24050002 */   addiu      $a1, $zero, 0x2
/* 0143C0 80122720 8FB80028 */  lw          $t8, 0x28($sp)
/* 0143C4 80122724 02002025 */  move        $a0, $s0
/* 0143C8 80122728 0C046573 */  jal         func_801195CC
/* 0143CC 8012272C 8F050038 */   lw         $a1, 0x38($t8)
/* 0143D0 80122730 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0143D4 80122734 8FB00020 */  lw          $s0, 0x20($sp)
/* 0143D8 80122738 27BD0048 */  addiu       $sp, $sp, 0x48
/* 0143DC 8012273C 03E00008 */  jr          $ra
/* 0143E0 80122740 00001025 */   move       $v0, $zero

glabel func_80122744 # 238
/* 0143E4 80122744 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0143E8 80122748 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0143EC 8012274C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0143F0 80122750 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0143F4 80122754 0C046599 */  jal         func_80119664
/* 0143F8 80122758 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0143FC 8012275C 0C04701F */  jal         func_8011C07C
/* 014400 80122760 00402025 */   move       $a0, $v0
/* 014404 80122764 10400003 */  beqz        $v0, .L80122774
/* 014408 80122768 00402025 */   move       $a0, $v0
/* 01440C 8012276C 0C045C6A */  jal         func_801171A8
/* 014410 80122770 00000000 */   nop
.L80122774:
/* 014414 80122774 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014418 80122778 0C046573 */  jal         func_801195CC
/* 01441C 8012277C 00002825 */   move       $a1, $zero
/* 014420 80122780 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014424 80122784 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014428 80122788 00001025 */  move        $v0, $zero
/* 01442C 8012278C 03E00008 */  jr          $ra
/* 014430 80122790 00000000 */   nop

glabel func_80122794 # 239
/* 014434 80122794 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 014438 80122798 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01443C 8012279C AFB00018 */  sw          $s0, 0x18($sp)
/* 014440 801227A0 AFA40038 */  sw          $a0, 0x38($sp)
/* 014444 801227A4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 014448 801227A8 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 01444C 801227AC 0C046599 */  jal         func_80119664
/* 014450 801227B0 02002025 */   move       $a0, $s0
/* 014454 801227B4 AFA20024 */  sw          $v0, 0x24($sp)
/* 014458 801227B8 0C0465A3 */  jal         func_8011968C
/* 01445C 801227BC 02002025 */   move       $a0, $s0
/* 014460 801227C0 E7A00028 */  swc1        $f0, 0x28($sp)
/* 014464 801227C4 0C0465A3 */  jal         func_8011968C
/* 014468 801227C8 02002025 */   move       $a0, $s0
/* 01446C 801227CC E7A0002C */  swc1        $f0, 0x2c($sp)
/* 014470 801227D0 0C0465A3 */  jal         func_8011968C
/* 014474 801227D4 02002025 */   move       $a0, $s0
/* 014478 801227D8 E7A00030 */  swc1        $f0, 0x30($sp)
/* 01447C 801227DC 0C04701F */  jal         func_8011C07C
/* 014480 801227E0 8FA40024 */   lw         $a0, 0x24($sp)
/* 014484 801227E4 1040000D */  beqz        $v0, .L8012281C
/* 014488 801227E8 8FA40038 */   lw         $a0, 0x38($sp)
/* 01448C 801227EC 0C046FBA */  jal         func_8011BEE8
/* 014490 801227F0 AFA20020 */   sw         $v0, 0x20($sp)
/* 014494 801227F4 8FA30020 */  lw          $v1, 0x20($sp)
/* 014498 801227F8 C7A0002C */  lwc1        $f0, 0x2c($sp)
/* 01449C 801227FC C7A20030 */  lwc1        $f2, 0x30($sp)
/* 0144A0 80122800 C7AC0028 */  lwc1        $f12, 0x28($sp)
/* 0144A4 80122804 E460001C */  swc1        $f0, 0x1c($v1)
/* 0144A8 80122808 E4600048 */  swc1        $f0, 0x48($v1)
/* 0144AC 8012280C E4620018 */  swc1        $f2, 0x18($v1)
/* 0144B0 80122810 E4620044 */  swc1        $f2, 0x44($v1)
/* 0144B4 80122814 E46C0020 */  swc1        $f12, 0x20($v1)
/* 0144B8 80122818 E46C004C */  swc1        $f12, 0x4c($v1)
.L8012281C:
/* 0144BC 8012281C 02002025 */  move        $a0, $s0
/* 0144C0 80122820 0C046573 */  jal         func_801195CC
/* 0144C4 80122824 00002825 */   move       $a1, $zero
/* 0144C8 80122828 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0144CC 8012282C 8FB00018 */  lw          $s0, 0x18($sp)
/* 0144D0 80122830 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0144D4 80122834 03E00008 */  jr          $ra
/* 0144D8 80122838 00001025 */   move       $v0, $zero

glabel func_8012283C # 240
/* 0144DC 8012283C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0144E0 80122840 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0144E4 80122844 AFB00020 */  sw          $s0, 0x20($sp)
/* 0144E8 80122848 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0144EC 8012284C 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0144F0 80122850 0C046599 */  jal         func_80119664
/* 0144F4 80122854 02002025 */   move       $a0, $s0
/* 0144F8 80122858 AFA2003C */  sw          $v0, 0x3c($sp)
/* 0144FC 8012285C 0C046599 */  jal         func_80119664
/* 014500 80122860 02002025 */   move       $a0, $s0
/* 014504 80122864 0C04701F */  jal         func_8011C07C
/* 014508 80122868 00402025 */   move       $a0, $v0
/* 01450C 8012286C 14400006 */  bnez        $v0, .L80122888
/* 014510 80122870 00402025 */   move       $a0, $v0
/* 014514 80122874 02002025 */  move        $a0, $s0
/* 014518 80122878 0C046573 */  jal         func_801195CC
/* 01451C 8012287C 00002825 */   move       $a1, $zero
/* 014520 80122880 10000019 */  b           .L801228E8
/* 014524 80122884 8FBF0024 */   lw         $ra, 0x24($sp)
.L80122888:
/* 014528 80122888 C4840044 */  lwc1        $f4, 0x44($a0)
/* 01452C 8012288C E7A40038 */  swc1        $f4, 0x38($sp)
/* 014530 80122890 C4860048 */  lwc1        $f6, 0x48($a0)
/* 014534 80122894 E7A60034 */  swc1        $f6, 0x34($sp)
/* 014538 80122898 C488004C */  lwc1        $f8, 0x4c($a0)
/* 01453C 8012289C E7A80030 */  swc1        $f8, 0x30($sp)
/* 014540 801228A0 C48A000C */  lwc1        $f10, 0xc($a0)
/* 014544 801228A4 E7AA002C */  swc1        $f10, 0x2c($sp)
/* 014548 801228A8 C4900010 */  lwc1        $f16, 0x10($a0)
/* 01454C 801228AC 0C045C6A */  jal         func_801171A8
/* 014550 801228B0 E7B00028 */   swc1       $f16, 0x28($sp)
/* 014554 801228B4 C7B20028 */  lwc1        $f18, 0x28($sp)
/* 014558 801228B8 8FAF003C */  lw          $t7, 0x3c($sp)
/* 01455C 801228BC C7AC0038 */  lwc1        $f12, 0x38($sp)
/* 014560 801228C0 C7AE0034 */  lwc1        $f14, 0x34($sp)
/* 014564 801228C4 8FA60030 */  lw          $a2, 0x30($sp)
/* 014568 801228C8 8FA7002C */  lw          $a3, 0x2c($sp)
/* 01456C 801228CC E7B20010 */  swc1        $f18, 0x10($sp)
/* 014570 801228D0 0C045BDD */  jal         func_80116F74
/* 014574 801228D4 AFAF0014 */   sw         $t7, 0x14($sp)
/* 014578 801228D8 02002025 */  move        $a0, $s0
/* 01457C 801228DC 0C046573 */  jal         func_801195CC
/* 014580 801228E0 8C450038 */   lw         $a1, 0x38($v0)
/* 014584 801228E4 8FBF0024 */  lw          $ra, 0x24($sp)
.L801228E8:
/* 014588 801228E8 8FB00020 */  lw          $s0, 0x20($sp)
/* 01458C 801228EC 27BD0048 */  addiu       $sp, $sp, 0x48
/* 014590 801228F0 03E00008 */  jr          $ra
/* 014594 801228F4 00001025 */   move       $v0, $zero

glabel func_801228F8 # 241
/* 014598 801228F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01459C 801228FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0145A0 80122900 8C820054 */  lw          $v0, 0x54($a0)
/* 0145A4 80122904 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0145A8 80122908 0C046573 */  jal         func_801195CC
/* 0145AC 8012290C 8C45018C */   lw         $a1, 0x18c($v0)
/* 0145B0 80122910 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0145B4 80122914 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0145B8 80122918 00001025 */  move        $v0, $zero
/* 0145BC 8012291C 03E00008 */  jr          $ra
/* 0145C0 80122920 00000000 */   nop

glabel func_80122924 # 242
/* 0145C4 80122924 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0145C8 80122928 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0145CC 8012292C AFA40020 */  sw          $a0, 0x20($sp)
/* 0145D0 80122930 8C820054 */  lw          $v0, 0x54($a0)
/* 0145D4 80122934 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 0145D8 80122938 0C046599 */  jal         func_80119664
/* 0145DC 8012293C AFA40018 */   sw         $a0, 0x18($sp)
/* 0145E0 80122940 8FA40020 */  lw          $a0, 0x20($sp)
/* 0145E4 80122944 00402825 */  move        $a1, $v0
/* 0145E8 80122948 0C047157 */  jal         func_8011C55C
/* 0145EC 8012294C 24060001 */   addiu      $a2, $zero, 0x1
/* 0145F0 80122950 0C046FA1 */  jal         func_8011BE84
/* 0145F4 80122954 8FA40020 */   lw         $a0, 0x20($sp)
/* 0145F8 80122958 8FA40018 */  lw          $a0, 0x18($sp)
/* 0145FC 8012295C 0C046573 */  jal         func_801195CC
/* 014600 80122960 00402825 */   move       $a1, $v0
/* 014604 80122964 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014608 80122968 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01460C 8012296C 00001025 */  move        $v0, $zero
/* 014610 80122970 03E00008 */  jr          $ra
/* 014614 80122974 00000000 */   nop

glabel func_80122978 # 243
/* 014618 80122978 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01461C 8012297C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014620 80122980 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014624 80122984 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014628 80122988 0C046599 */  jal         func_80119664
/* 01462C 8012298C AFA4001C */   sw         $a0, 0x1c($sp)
/* 014630 80122990 0C001A23 */  jal         func_8000688C
/* 014634 80122994 00402025 */   move       $a0, $v0
/* 014638 80122998 10400010 */  beqz        $v0, .L801229DC
/* 01463C 8012299C 8FA6001C */   lw         $a2, 0x1c($sp)
/* 014640 801229A0 944F0034 */  lhu         $t7, 0x34($v0)
/* 014644 801229A4 24010086 */  addiu       $at, $zero, 0x86
/* 014648 801229A8 00C02025 */  move        $a0, $a2
/* 01464C 801229AC 15E10007 */  bne         $t7, $at, .L801229CC
/* 014650 801229B0 00000000 */   nop
/* 014654 801229B4 8C580054 */  lw          $t8, 0x54($v0)
/* 014658 801229B8 00C02025 */  move        $a0, $a2
/* 01465C 801229BC 0C046573 */  jal         func_801195CC
/* 014660 801229C0 83050006 */   lb         $a1, 0x6($t8)
/* 014664 801229C4 10000009 */  b           .L801229EC
/* 014668 801229C8 8FBF0014 */   lw         $ra, 0x14($sp)
.L801229CC:
/* 01466C 801229CC 0C046573 */  jal         func_801195CC
/* 014670 801229D0 2405FFFF */   addiu      $a1, $zero, -0x1
/* 014674 801229D4 10000005 */  b           .L801229EC
/* 014678 801229D8 8FBF0014 */   lw         $ra, 0x14($sp)
.L801229DC:
/* 01467C 801229DC 00C02025 */  move        $a0, $a2
/* 014680 801229E0 0C046573 */  jal         func_801195CC
/* 014684 801229E4 2405FFFF */   addiu      $a1, $zero, -0x1
/* 014688 801229E8 8FBF0014 */  lw          $ra, 0x14($sp)
.L801229EC:
/* 01468C 801229EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014690 801229F0 00001025 */  move        $v0, $zero
/* 014694 801229F4 03E00008 */  jr          $ra
/* 014698 801229F8 00000000 */   nop

glabel func_801229FC # 244
/* 01469C 801229FC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0146A0 80122A00 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0146A4 80122A04 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0146A8 80122A08 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0146AC 80122A0C 0C046599 */  jal         func_80119664
/* 0146B0 80122A10 AFA40024 */   sw         $a0, 0x24($sp)
/* 0146B4 80122A14 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0146B8 80122A18 0C046599 */  jal         func_80119664
/* 0146BC 80122A1C 8FA40024 */   lw         $a0, 0x24($sp)
/* 0146C0 80122A20 0C04701F */  jal         func_8011C07C
/* 0146C4 80122A24 00402025 */   move       $a0, $v0
/* 0146C8 80122A28 10400003 */  beqz        $v0, .L80122A38
/* 0146CC 80122A2C 00402025 */   move       $a0, $v0
/* 0146D0 80122A30 0C045EFF */  jal         func_80117BFC
/* 0146D4 80122A34 8FA5001C */   lw         $a1, 0x1c($sp)
.L80122A38:
/* 0146D8 80122A38 8FA40024 */  lw          $a0, 0x24($sp)
/* 0146DC 80122A3C 0C046573 */  jal         func_801195CC
/* 0146E0 80122A40 00002825 */   move       $a1, $zero
/* 0146E4 80122A44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0146E8 80122A48 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0146EC 80122A4C 00001025 */  move        $v0, $zero
/* 0146F0 80122A50 03E00008 */  jr          $ra
/* 0146F4 80122A54 00000000 */   nop

glabel func_80122A58 # 245
/* 0146F8 80122A58 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0146FC 80122A5C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014700 80122A60 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014704 80122A64 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014708 80122A68 0C046599 */  jal         func_80119664
/* 01470C 80122A6C AFA40024 */   sw         $a0, 0x24($sp)
/* 014710 80122A70 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014714 80122A74 0C046599 */  jal         func_80119664
/* 014718 80122A78 8FA40024 */   lw         $a0, 0x24($sp)
/* 01471C 80122A7C 0C04701F */  jal         func_8011C07C
/* 014720 80122A80 00402025 */   move       $a0, $v0
/* 014724 80122A84 10400003 */  beqz        $v0, .L80122A94
/* 014728 80122A88 00402025 */   move       $a0, $v0
/* 01472C 80122A8C 0C045F10 */  jal         func_80117C40
/* 014730 80122A90 8FA5001C */   lw         $a1, 0x1c($sp)
.L80122A94:
/* 014734 80122A94 8FA40024 */  lw          $a0, 0x24($sp)
/* 014738 80122A98 0C046573 */  jal         func_801195CC
/* 01473C 80122A9C 00002825 */   move       $a1, $zero
/* 014740 80122AA0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014744 80122AA4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014748 80122AA8 00001025 */  move        $v0, $zero
/* 01474C 80122AAC 03E00008 */  jr          $ra
/* 014750 80122AB0 00000000 */   nop

glabel func_80122AB4 # 246
/* 014754 80122AB4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014758 80122AB8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01475C 80122ABC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014760 80122AC0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014764 80122AC4 0C046599 */  jal         func_80119664
/* 014768 80122AC8 AFA40024 */   sw         $a0, 0x24($sp)
/* 01476C 80122ACC AFA2001C */  sw          $v0, 0x1c($sp)
/* 014770 80122AD0 0C046599 */  jal         func_80119664
/* 014774 80122AD4 8FA40024 */   lw         $a0, 0x24($sp)
/* 014778 80122AD8 00402025 */  move        $a0, $v0
/* 01477C 80122ADC 0C045F14 */  jal         func_80117C50
/* 014780 80122AE0 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014784 80122AE4 8FA40024 */  lw          $a0, 0x24($sp)
/* 014788 80122AE8 0C046573 */  jal         func_801195CC
/* 01478C 80122AEC 00002825 */   move       $a1, $zero
/* 014790 80122AF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014794 80122AF4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014798 80122AF8 00001025 */  move        $v0, $zero
/* 01479C 80122AFC 03E00008 */  jr          $ra
/* 0147A0 80122B00 00000000 */   nop

glabel func_80122B04 # 247
/* 0147A4 80122B04 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0147A8 80122B08 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0147AC 80122B0C AFB00020 */  sw          $s0, 0x20($sp)
/* 0147B0 80122B10 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0147B4 80122B14 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0147B8 80122B18 0C046599 */  jal         func_80119664
/* 0147BC 80122B1C 02002025 */   move       $a0, $s0
/* 0147C0 80122B20 A3A2002C */  sb          $v0, 0x2c($sp)
/* 0147C4 80122B24 0C046599 */  jal         func_80119664
/* 0147C8 80122B28 02002025 */   move       $a0, $s0
/* 0147CC 80122B2C A3A2002D */  sb          $v0, 0x2d($sp)
/* 0147D0 80122B30 0C046599 */  jal         func_80119664
/* 0147D4 80122B34 02002025 */   move       $a0, $s0
/* 0147D8 80122B38 A3A2002E */  sb          $v0, 0x2e($sp)
/* 0147DC 80122B3C 0C046599 */  jal         func_80119664
/* 0147E0 80122B40 02002025 */   move       $a0, $s0
/* 0147E4 80122B44 A3A2002F */  sb          $v0, 0x2f($sp)
/* 0147E8 80122B48 0C046599 */  jal         func_80119664
/* 0147EC 80122B4C 02002025 */   move       $a0, $s0
/* 0147F0 80122B50 93AF002C */  lbu         $t7, 0x2c($sp)
/* 0147F4 80122B54 00402025 */  move        $a0, $v0
/* 0147F8 80122B58 93A5002F */  lbu         $a1, 0x2f($sp)
/* 0147FC 80122B5C 93A6002E */  lbu         $a2, 0x2e($sp)
/* 014800 80122B60 93A7002D */  lbu         $a3, 0x2d($sp)
/* 014804 80122B64 0C045F20 */  jal         func_80117C80
/* 014808 80122B68 AFAF0010 */   sw         $t7, 0x10($sp)
/* 01480C 80122B6C 02002025 */  move        $a0, $s0
/* 014810 80122B70 0C046573 */  jal         func_801195CC
/* 014814 80122B74 00002825 */   move       $a1, $zero
/* 014818 80122B78 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01481C 80122B7C 8FB00020 */  lw          $s0, 0x20($sp)
/* 014820 80122B80 27BD0038 */  addiu       $sp, $sp, 0x38
/* 014824 80122B84 03E00008 */  jr          $ra
/* 014828 80122B88 00001025 */   move       $v0, $zero

glabel func_80122B8C # 248
/* 01482C 80122B8C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014830 80122B90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014834 80122B94 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014838 80122B98 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01483C 80122B9C 0C046599 */  jal         func_80119664
/* 014840 80122BA0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014844 80122BA4 0C04701F */  jal         func_8011C07C
/* 014848 80122BA8 00402025 */   move       $a0, $v0
/* 01484C 80122BAC 0C00B32F */  jal         func_8002CCBC
/* 014850 80122BB0 00402025 */   move       $a0, $v0
/* 014854 80122BB4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014858 80122BB8 0C046573 */  jal         func_801195CC
/* 01485C 80122BBC 00002825 */   move       $a1, $zero
/* 014860 80122BC0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014864 80122BC4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014868 80122BC8 00001025 */  move        $v0, $zero
/* 01486C 80122BCC 03E00008 */  jr          $ra
/* 014870 80122BD0 00000000 */   nop

glabel func_80122BD4 # 249
/* 014874 80122BD4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014878 80122BD8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01487C 80122BDC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014880 80122BE0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014884 80122BE4 0C046599 */  jal         func_80119664
/* 014888 80122BE8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01488C 80122BEC 0C04701F */  jal         func_8011C07C
/* 014890 80122BF0 00402025 */   move       $a0, $v0
/* 014894 80122BF4 10400003 */  beqz        $v0, .L80122C04
/* 014898 80122BF8 00402025 */   move       $a0, $v0
/* 01489C 80122BFC 0C00B341 */  jal         func_8002CD04
/* 0148A0 80122C00 00000000 */   nop
.L80122C04:
/* 0148A4 80122C04 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0148A8 80122C08 0C046573 */  jal         func_801195CC
/* 0148AC 80122C0C 00002825 */   move       $a1, $zero
/* 0148B0 80122C10 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0148B4 80122C14 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0148B8 80122C18 00001025 */  move        $v0, $zero
/* 0148BC 80122C1C 03E00008 */  jr          $ra
/* 0148C0 80122C20 00000000 */   nop

glabel func_80122C24 # 250
/* 0148C4 80122C24 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0148C8 80122C28 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0148CC 80122C2C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0148D0 80122C30 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0148D4 80122C34 0C046599 */  jal         func_80119664
/* 0148D8 80122C38 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0148DC 80122C3C 0C00B353 */  jal         func_8002CD4C
/* 0148E0 80122C40 00402025 */   move       $a0, $v0
/* 0148E4 80122C44 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0148E8 80122C48 0C046573 */  jal         func_801195CC
/* 0148EC 80122C4C 00402825 */   move       $a1, $v0
/* 0148F0 80122C50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0148F4 80122C54 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0148F8 80122C58 00001025 */  move        $v0, $zero
/* 0148FC 80122C5C 03E00008 */  jr          $ra
/* 014900 80122C60 00000000 */   nop

glabel func_80122C64 # 251
/* 014904 80122C64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014908 80122C68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01490C 80122C6C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014910 80122C70 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014914 80122C74 0C046599 */  jal         func_80119664
/* 014918 80122C78 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01491C 80122C7C 0C04718F */  jal         func_8011C63C
/* 014920 80122C80 00402025 */   move       $a0, $v0
/* 014924 80122C84 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014928 80122C88 0C046573 */  jal         func_801195CC
/* 01492C 80122C8C 00402825 */   move       $a1, $v0
/* 014930 80122C90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014934 80122C94 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014938 80122C98 00001025 */  move        $v0, $zero
/* 01493C 80122C9C 03E00008 */  jr          $ra
/* 014940 80122CA0 00000000 */   nop

glabel func_80122CA4 # 252
/* 014944 80122CA4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014948 80122CA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01494C 80122CAC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014950 80122CB0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014954 80122CB4 0C046599 */  jal         func_80119664
/* 014958 80122CB8 AFA40024 */   sw         $a0, 0x24($sp)
/* 01495C 80122CBC AFA2001C */  sw          $v0, 0x1c($sp)
/* 014960 80122CC0 0C046599 */  jal         func_80119664
/* 014964 80122CC4 8FA40024 */   lw         $a0, 0x24($sp)
/* 014968 80122CC8 00402025 */  move        $a0, $v0
/* 01496C 80122CCC 0C0471A3 */  jal         func_8011C68C
/* 014970 80122CD0 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014974 80122CD4 8FA40024 */  lw          $a0, 0x24($sp)
/* 014978 80122CD8 0C046573 */  jal         func_801195CC
/* 01497C 80122CDC 00402825 */   move       $a1, $v0
/* 014980 80122CE0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014984 80122CE4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014988 80122CE8 00001025 */  move        $v0, $zero
/* 01498C 80122CEC 03E00008 */  jr          $ra
/* 014990 80122CF0 00000000 */   nop

glabel func_80122CF4 # 253
/* 014994 80122CF4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014998 80122CF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01499C 80122CFC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0149A0 80122D00 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0149A4 80122D04 0C04657F */  jal         func_801195FC
/* 0149A8 80122D08 8C850010 */   lw         $a1, 0x10($a0)
/* 0149AC 80122D0C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0149B0 80122D10 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0149B4 80122D14 00001025 */  move        $v0, $zero
/* 0149B8 80122D18 03E00008 */  jr          $ra
/* 0149BC 80122D1C 00000000 */   nop

glabel func_80122D20 # 254
/* 0149C0 80122D20 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0149C4 80122D24 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0149C8 80122D28 AFB00018 */  sw          $s0, 0x18($sp)
/* 0149CC 80122D2C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0149D0 80122D30 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0149D4 80122D34 0C0465A3 */  jal         func_8011968C
/* 0149D8 80122D38 02002025 */   move       $a0, $s0
/* 0149DC 80122D3C E7A00020 */  swc1        $f0, 0x20($sp)
/* 0149E0 80122D40 0C0465A3 */  jal         func_8011968C
/* 0149E4 80122D44 02002025 */   move       $a0, $s0
/* 0149E8 80122D48 E7A00024 */  swc1        $f0, 0x24($sp)
/* 0149EC 80122D4C 0C0465A3 */  jal         func_8011968C
/* 0149F0 80122D50 02002025 */   move       $a0, $s0
/* 0149F4 80122D54 46000306 */  mov.s       $f12, $f0
/* 0149F8 80122D58 C7AE0024 */  lwc1        $f14, 0x24($sp)
/* 0149FC 80122D5C 8FA60020 */  lw          $a2, 0x20($sp)
/* 014A00 80122D60 0C043D2C */  jal         func_8010F4B0
/* 014A04 80122D64 00003825 */   move       $a3, $zero
/* 014A08 80122D68 44050000 */  mfc1        $a1, $f0
/* 014A0C 80122D6C 0C04657F */  jal         func_801195FC
/* 014A10 80122D70 02002025 */   move       $a0, $s0
/* 014A14 80122D74 8FBF001C */  lw          $ra, 0x1c($sp)
/* 014A18 80122D78 8FB00018 */  lw          $s0, 0x18($sp)
/* 014A1C 80122D7C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 014A20 80122D80 03E00008 */  jr          $ra
/* 014A24 80122D84 00001025 */   move       $v0, $zero

glabel func_80122D88 # 255
/* 014A28 80122D88 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014A2C 80122D8C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014A30 80122D90 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014A34 80122D94 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014A38 80122D98 0C046599 */  jal         func_80119664
/* 014A3C 80122D9C AFA40024 */   sw         $a0, 0x24($sp)
/* 014A40 80122DA0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014A44 80122DA4 0C046599 */  jal         func_80119664
/* 014A48 80122DA8 8FA40024 */   lw         $a0, 0x24($sp)
/* 014A4C 80122DAC 00402025 */  move        $a0, $v0
/* 014A50 80122DB0 0C045F6D */  jal         func_80117DB4
/* 014A54 80122DB4 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014A58 80122DB8 8FA40024 */  lw          $a0, 0x24($sp)
/* 014A5C 80122DBC 0C046573 */  jal         func_801195CC
/* 014A60 80122DC0 00402825 */   move       $a1, $v0
/* 014A64 80122DC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014A68 80122DC8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014A6C 80122DCC 00001025 */  move        $v0, $zero
/* 014A70 80122DD0 03E00008 */  jr          $ra
/* 014A74 80122DD4 00000000 */   nop

glabel func_80122DD8 # 256
/* 014A78 80122DD8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014A7C 80122DDC AFBF0014 */  sw          $ra, 0x14($sp)
/* 014A80 80122DE0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014A84 80122DE4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014A88 80122DE8 0C046599 */  jal         func_80119664
/* 014A8C 80122DEC AFA40024 */   sw         $a0, 0x24($sp)
/* 014A90 80122DF0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014A94 80122DF4 0C046599 */  jal         func_80119664
/* 014A98 80122DF8 8FA40024 */   lw         $a0, 0x24($sp)
/* 014A9C 80122DFC 00402025 */  move        $a0, $v0
/* 014AA0 80122E00 0C045F34 */  jal         func_80117CD0
/* 014AA4 80122E04 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014AA8 80122E08 8FA40024 */  lw          $a0, 0x24($sp)
/* 014AAC 80122E0C 0C046573 */  jal         func_801195CC
/* 014AB0 80122E10 00402825 */   move       $a1, $v0
/* 014AB4 80122E14 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014AB8 80122E18 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014ABC 80122E1C 00001025 */  move        $v0, $zero
/* 014AC0 80122E20 03E00008 */  jr          $ra
/* 014AC4 80122E24 00000000 */   nop

glabel func_80122E28 # 257
/* 014AC8 80122E28 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014ACC 80122E2C AFBF0014 */  sw          $ra, 0x14($sp)
/* 014AD0 80122E30 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014AD4 80122E34 00802825 */  move        $a1, $a0
/* 014AD8 80122E38 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014ADC 80122E3C AFA50020 */  sw          $a1, 0x20($sp)
/* 014AE0 80122E40 0C046599 */  jal         func_80119664
/* 014AE4 80122E44 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014AE8 80122E48 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014AEC 80122E4C 10400006 */  beqz        $v0, .L80122E68
/* 014AF0 80122E50 8FA50020 */   lw         $a1, 0x20($sp)
/* 014AF4 80122E54 8CA20054 */  lw          $v0, 0x54($a1)
/* 014AF8 80122E58 944F01E8 */  lhu         $t7, 0x1e8($v0)
/* 014AFC 80122E5C 35F80001 */  ori         $t8, $t7, 0x1
/* 014B00 80122E60 10000005 */  b           .L80122E78
/* 014B04 80122E64 A45801E8 */   sh         $t8, 0x1e8($v0)
.L80122E68:
/* 014B08 80122E68 8CA20054 */  lw          $v0, 0x54($a1)
/* 014B0C 80122E6C 945901E8 */  lhu         $t9, 0x1e8($v0)
/* 014B10 80122E70 3328FFFE */  andi        $t0, $t9, 0xfffe
/* 014B14 80122E74 A44801E8 */  sh          $t0, 0x1e8($v0)
.L80122E78:
/* 014B18 80122E78 0C046573 */  jal         func_801195CC
/* 014B1C 80122E7C 00002825 */   move       $a1, $zero
/* 014B20 80122E80 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014B24 80122E84 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014B28 80122E88 00001025 */  move        $v0, $zero
/* 014B2C 80122E8C 03E00008 */  jr          $ra
/* 014B30 80122E90 00000000 */   nop

glabel func_80122E94 # 258
/* 014B34 80122E94 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014B38 80122E98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014B3C 80122E9C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014B40 80122EA0 00802825 */  move        $a1, $a0
/* 014B44 80122EA4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014B48 80122EA8 AFA50020 */  sw          $a1, 0x20($sp)
/* 014B4C 80122EAC 0C046599 */  jal         func_80119664
/* 014B50 80122EB0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014B54 80122EB4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014B58 80122EB8 10400006 */  beqz        $v0, .L80122ED4
/* 014B5C 80122EBC 8FA50020 */   lw         $a1, 0x20($sp)
/* 014B60 80122EC0 8CA20054 */  lw          $v0, 0x54($a1)
/* 014B64 80122EC4 944F01E8 */  lhu         $t7, 0x1e8($v0)
/* 014B68 80122EC8 35F80004 */  ori         $t8, $t7, 0x4
/* 014B6C 80122ECC 10000005 */  b           .L80122EE4
/* 014B70 80122ED0 A45801E8 */   sh         $t8, 0x1e8($v0)
.L80122ED4:
/* 014B74 80122ED4 8CA20054 */  lw          $v0, 0x54($a1)
/* 014B78 80122ED8 945901E8 */  lhu         $t9, 0x1e8($v0)
/* 014B7C 80122EDC 3328FFFB */  andi        $t0, $t9, 0xfffb
/* 014B80 80122EE0 A44801E8 */  sh          $t0, 0x1e8($v0)
.L80122EE4:
/* 014B84 80122EE4 0C046573 */  jal         func_801195CC
/* 014B88 80122EE8 00002825 */   move       $a1, $zero
/* 014B8C 80122EEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014B90 80122EF0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014B94 80122EF4 00001025 */  move        $v0, $zero
/* 014B98 80122EF8 03E00008 */  jr          $ra
/* 014B9C 80122EFC 00000000 */   nop

glabel func_80122F00 # 259
/* 014BA0 80122F00 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014BA4 80122F04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014BA8 80122F08 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014BAC 80122F0C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014BB0 80122F10 0C046599 */  jal         func_80119664
/* 014BB4 80122F14 AFA40024 */   sw         $a0, 0x24($sp)
/* 014BB8 80122F18 AFA2001C */  sw          $v0, 0x1c($sp)
/* 014BBC 80122F1C 0C046599 */  jal         func_80119664
/* 014BC0 80122F20 8FA40024 */   lw         $a0, 0x24($sp)
/* 014BC4 80122F24 00402025 */  move        $a0, $v0
/* 014BC8 80122F28 0C045F84 */  jal         func_80117E10
/* 014BCC 80122F2C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014BD0 80122F30 8FA40024 */  lw          $a0, 0x24($sp)
/* 014BD4 80122F34 0C046573 */  jal         func_801195CC
/* 014BD8 80122F38 00402825 */   move       $a1, $v0
/* 014BDC 80122F3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014BE0 80122F40 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014BE4 80122F44 00001025 */  move        $v0, $zero
/* 014BE8 80122F48 03E00008 */  jr          $ra
/* 014BEC 80122F4C 00000000 */   nop

glabel func_80122F50 # 260
/* 014BF0 80122F50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014BF4 80122F54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014BF8 80122F58 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014BFC 80122F5C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014C00 80122F60 0C0465A3 */  jal         func_8011968C
/* 014C04 80122F64 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014C08 80122F68 0C000A60 */  jal         func_80002980
/* 014C0C 80122F6C 46000306 */   mov.s      $f12, $f0
/* 014C10 80122F70 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014C14 80122F74 0C046573 */  jal         func_801195CC
/* 014C18 80122F78 00002825 */   move       $a1, $zero
/* 014C1C 80122F7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014C20 80122F80 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014C24 80122F84 00001025 */  move        $v0, $zero
/* 014C28 80122F88 03E00008 */  jr          $ra
/* 014C2C 80122F8C 00000000 */   nop

glabel func_80122F90 # 261
/* 014C30 80122F90 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014C34 80122F94 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014C38 80122F98 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014C3C 80122F9C 2404000C */  addiu       $a0, $zero, 0xc
/* 014C40 80122FA0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 014C44 80122FA4 0C0026E4 */  jal         func_80009B90
/* 014C48 80122FA8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 014C4C 80122FAC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014C50 80122FB0 0C046573 */  jal         func_801195CC
/* 014C54 80122FB4 00002825 */   move       $a1, $zero
/* 014C58 80122FB8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014C5C 80122FBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014C60 80122FC0 24020001 */  addiu       $v0, $zero, 0x1
/* 014C64 80122FC4 03E00008 */  jr          $ra
/* 014C68 80122FC8 00000000 */   nop

glabel func_80122FCC # 262
/* 014C6C 80122FCC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014C70 80122FD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014C74 80122FD4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014C78 80122FD8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014C7C 80122FDC 0C046599 */  jal         func_80119664
/* 014C80 80122FE0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014C84 80122FE4 3C01800B */  lui         $at, %hi(D_800B2C8C)
/* 014C88 80122FE8 AC222C8C */  sw          $v0, %lo(D_800B2C8C)($at)
/* 014C8C 80122FEC 0C0026E4 */  jal         func_80009B90
/* 014C90 80122FF0 24040007 */   addiu      $a0, $zero, 0x7
/* 014C94 80122FF4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014C98 80122FF8 0C046573 */  jal         func_801195CC
/* 014C9C 80122FFC 00002825 */   move       $a1, $zero
/* 014CA0 80123000 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014CA4 80123004 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014CA8 80123008 24020001 */  addiu       $v0, $zero, 0x1
/* 014CAC 8012300C 03E00008 */  jr          $ra
/* 014CB0 80123010 00000000 */   nop

glabel func_80123014 # 263
/* 014CB4 80123014 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014CB8 80123018 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014CBC 8012301C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014CC0 80123020 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014CC4 80123024 0C046599 */  jal         func_80119664
/* 014CC8 80123028 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014CCC 8012302C 0C04606E */  jal         func_801181B8
/* 014CD0 80123030 00402025 */   move       $a0, $v0
/* 014CD4 80123034 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014CD8 80123038 0C046573 */  jal         func_801195CC
/* 014CDC 8012303C 00002825 */   move       $a1, $zero
/* 014CE0 80123040 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014CE4 80123044 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014CE8 80123048 00001025 */  move        $v0, $zero
/* 014CEC 8012304C 03E00008 */  jr          $ra
/* 014CF0 80123050 00000000 */   nop

glabel func_80123054 # 264
/* 014CF4 80123054 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014CF8 80123058 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014CFC 8012305C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014D00 80123060 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014D04 80123064 0C046599 */  jal         func_80119664
/* 014D08 80123068 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014D0C 8012306C 0C04608E */  jal         func_80118238
/* 014D10 80123070 00402025 */   move       $a0, $v0
/* 014D14 80123074 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014D18 80123078 0C046573 */  jal         func_801195CC
/* 014D1C 8012307C 00002825 */   move       $a1, $zero
/* 014D20 80123080 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014D24 80123084 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014D28 80123088 00001025 */  move        $v0, $zero
/* 014D2C 8012308C 03E00008 */  jr          $ra
/* 014D30 80123090 00000000 */   nop

glabel func_80123094 # 265
/* 014D34 80123094 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014D38 80123098 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014D3C 8012309C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014D40 801230A0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014D44 801230A4 0C046599 */  jal         func_80119664
/* 014D48 801230A8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014D4C 801230AC 0C0460A0 */  jal         func_80118280
/* 014D50 801230B0 00402025 */   move       $a0, $v0
/* 014D54 801230B4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014D58 801230B8 0C046573 */  jal         func_801195CC
/* 014D5C 801230BC 00402825 */   move       $a1, $v0
/* 014D60 801230C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014D64 801230C4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014D68 801230C8 00001025 */  move        $v0, $zero
/* 014D6C 801230CC 03E00008 */  jr          $ra
/* 014D70 801230D0 00000000 */   nop

glabel func_801230D4 # 266
/* 014D74 801230D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014D78 801230D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014D7C 801230DC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014D80 801230E0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014D84 801230E4 0C046599 */  jal         func_80119664
/* 014D88 801230E8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014D8C 801230EC AFA20018 */  sw          $v0, 0x18($sp)
/* 014D90 801230F0 0C046599 */  jal         func_80119664
/* 014D94 801230F4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 014D98 801230F8 00402025 */  move        $a0, $v0
/* 014D9C 801230FC 0C0460AF */  jal         func_801182BC
/* 014DA0 80123100 8FA50018 */   lw         $a1, 0x18($sp)
/* 014DA4 80123104 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014DA8 80123108 0C046573 */  jal         func_801195CC
/* 014DAC 8012310C 00402825 */   move       $a1, $v0
/* 014DB0 80123110 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014DB4 80123114 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014DB8 80123118 00001025 */  move        $v0, $zero
/* 014DBC 8012311C 03E00008 */  jr          $ra
/* 014DC0 80123120 00000000 */   nop

glabel func_80123124 # 267
/* 014DC4 80123124 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 014DC8 80123128 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014DCC 8012312C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014DD0 80123130 3C05800F */  lui         $a1, %hi(D_800F3F00)
/* 014DD4 80123134 24A53F00 */  addiu       $a1, $a1, %lo(D_800F3F00)
/* 014DD8 80123138 0C04658D */  jal         func_80119634
/* 014DDC 8012313C 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 014DE0 80123140 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014DE4 80123144 27BD0018 */  addiu       $sp, $sp, 0x18
/* 014DE8 80123148 00001025 */  move        $v0, $zero
/* 014DEC 8012314C 03E00008 */  jr          $ra
/* 014DF0 80123150 00000000 */   nop

glabel func_80123154 # 268
/* 014DF4 80123154 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014DF8 80123158 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014DFC 8012315C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014E00 80123160 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014E04 80123164 0C046599 */  jal         func_80119664
/* 014E08 80123168 AFA40024 */   sw         $a0, 0x24($sp)
/* 014E0C 8012316C AFA2001C */  sw          $v0, 0x1c($sp)
/* 014E10 80123170 0C046599 */  jal         func_80119664
/* 014E14 80123174 8FA40024 */   lw         $a0, 0x24($sp)
/* 014E18 80123178 00402025 */  move        $a0, $v0
/* 014E1C 8012317C 0C04610B */  jal         func_8011842C
/* 014E20 80123180 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014E24 80123184 8FA40024 */  lw          $a0, 0x24($sp)
/* 014E28 80123188 0C04658D */  jal         func_80119634
/* 014E2C 8012318C 00402825 */   move       $a1, $v0
/* 014E30 80123190 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014E34 80123194 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014E38 80123198 00001025 */  move        $v0, $zero
/* 014E3C 8012319C 03E00008 */  jr          $ra
/* 014E40 801231A0 00000000 */   nop

glabel func_801231A4 # 269
/* 014E44 801231A4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 014E48 801231A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014E4C 801231AC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014E50 801231B0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014E54 801231B4 0C046599 */  jal         func_80119664
/* 014E58 801231B8 AFA40024 */   sw         $a0, 0x24($sp)
/* 014E5C 801231BC AFA2001C */  sw          $v0, 0x1c($sp)
/* 014E60 801231C0 0C046599 */  jal         func_80119664
/* 014E64 801231C4 8FA40024 */   lw         $a0, 0x24($sp)
/* 014E68 801231C8 00402025 */  move        $a0, $v0
/* 014E6C 801231CC 0C0072A8 */  jal         func_8001CAA0
/* 014E70 801231D0 8FA5001C */   lw         $a1, 0x1c($sp)
/* 014E74 801231D4 8FA40024 */  lw          $a0, 0x24($sp)
/* 014E78 801231D8 0C04658D */  jal         func_80119634
/* 014E7C 801231DC 00402825 */   move       $a1, $v0
/* 014E80 801231E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014E84 801231E4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 014E88 801231E8 00001025 */  move        $v0, $zero
/* 014E8C 801231EC 03E00008 */  jr          $ra
/* 014E90 801231F0 00000000 */   nop

glabel func_801231F4 # 270
/* 014E94 801231F4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014E98 801231F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014E9C 801231FC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014EA0 80123200 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014EA4 80123204 0C046599 */  jal         func_80119664
/* 014EA8 80123208 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014EAC 8012320C 0C00D98C */  jal         func_80036630
/* 014EB0 80123210 3044FFFF */   andi       $a0, $v0, 0xffff
/* 014EB4 80123214 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014EB8 80123218 0C04658D */  jal         func_80119634
/* 014EBC 8012321C 00402825 */   move       $a1, $v0
/* 014EC0 80123220 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014EC4 80123224 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014EC8 80123228 00001025 */  move        $v0, $zero
/* 014ECC 8012322C 03E00008 */  jr          $ra
/* 014ED0 80123230 00000000 */   nop

glabel func_80123234 # 271
/* 014ED4 80123234 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014ED8 80123238 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014EDC 8012323C AFA40020 */  sw          $a0, 0x20($sp)
/* 014EE0 80123240 8C830054 */  lw          $v1, 0x54($a0)
/* 014EE4 80123244 8C6401B8 */  lw          $a0, 0x1b8($v1)
/* 014EE8 80123248 AFA3001C */  sw          $v1, 0x1c($sp)
/* 014EEC 8012324C 0C046599 */  jal         func_80119664
/* 014EF0 80123250 AFA40018 */   sw         $a0, 0x18($sp)
/* 014EF4 80123254 1040000A */  beqz        $v0, .L80123280
/* 014EF8 80123258 8FA3001C */   lw         $v1, 0x1c($sp)
/* 014EFC 8012325C 8FA40020 */  lw          $a0, 0x20($sp)
/* 014F00 80123260 24050002 */  addiu       $a1, $zero, 0x2
/* 014F04 80123264 0C001DF8 */  jal         func_800077E0
/* 014F08 80123268 AFA3001C */   sw         $v1, 0x1c($sp)
/* 014F0C 8012326C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 014F10 80123270 946F01E8 */  lhu         $t7, 0x1e8($v1)
/* 014F14 80123274 35F80020 */  ori         $t8, $t7, 0x20
/* 014F18 80123278 10000004 */  b           .L8012328C
/* 014F1C 8012327C A47801E8 */   sh         $t8, 0x1e8($v1)
.L80123280:
/* 014F20 80123280 947901E8 */  lhu         $t9, 0x1e8($v1)
/* 014F24 80123284 3328FFDF */  andi        $t0, $t9, 0xffdf
/* 014F28 80123288 A46801E8 */  sh          $t0, 0x1e8($v1)
.L8012328C:
/* 014F2C 8012328C 8FA40018 */  lw          $a0, 0x18($sp)
/* 014F30 80123290 0C046573 */  jal         func_801195CC
/* 014F34 80123294 00002825 */   move       $a1, $zero
/* 014F38 80123298 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014F3C 8012329C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014F40 801232A0 00001025 */  move        $v0, $zero
/* 014F44 801232A4 03E00008 */  jr          $ra
/* 014F48 801232A8 00000000 */   nop

glabel func_801232AC # 272
/* 014F4C 801232AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014F50 801232B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014F54 801232B4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014F58 801232B8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014F5C 801232BC 0C046599 */  jal         func_80119664
/* 014F60 801232C0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014F64 801232C4 0C044854 */  jal         func_80112150
/* 014F68 801232C8 00402025 */   move       $a0, $v0
/* 014F6C 801232CC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014F70 801232D0 0C04658D */  jal         func_80119634
/* 014F74 801232D4 00402825 */   move       $a1, $v0
/* 014F78 801232D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014F7C 801232DC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014F80 801232E0 00001025 */  move        $v0, $zero
/* 014F84 801232E4 03E00008 */  jr          $ra
/* 014F88 801232E8 00000000 */   nop

glabel func_801232EC # 273
/* 014F8C 801232EC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014F90 801232F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014F94 801232F4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014F98 801232F8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014F9C 801232FC 0C046599 */  jal         func_80119664
/* 014FA0 80123300 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014FA4 80123304 0C044859 */  jal         func_80112164
/* 014FA8 80123308 00402025 */   move       $a0, $v0
/* 014FAC 8012330C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 014FB0 80123310 0C04658D */  jal         func_80119634
/* 014FB4 80123314 00402825 */   move       $a1, $v0
/* 014FB8 80123318 8FBF0014 */  lw          $ra, 0x14($sp)
/* 014FBC 8012331C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014FC0 80123320 00001025 */  move        $v0, $zero
/* 014FC4 80123324 03E00008 */  jr          $ra
/* 014FC8 80123328 00000000 */   nop

glabel func_8012332C # 274
/* 014FCC 8012332C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014FD0 80123330 AFBF0014 */  sw          $ra, 0x14($sp)
/* 014FD4 80123334 8C8E0054 */  lw          $t6, 0x54($a0)
/* 014FD8 80123338 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 014FDC 8012333C 0C046599 */  jal         func_80119664
/* 014FE0 80123340 AFA4001C */   sw         $a0, 0x1c($sp)
/* 014FE4 80123344 000278C0 */  sll         $t7, $v0, 3
/* 014FE8 80123348 01E27823 */  subu        $t7, $t7, $v0
/* 014FEC 8012334C 000F7880 */  sll         $t7, $t7, 2
/* 014FF0 80123350 01E27821 */  addu        $t7, $t7, $v0
/* 014FF4 80123354 000F7880 */  sll         $t7, $t7, 2
/* 014FF8 80123358 3C058013 */  lui         $a1, %hi(D_8012935E)
/* 014FFC 8012335C 00AF2821 */  addu        $a1, $a1, $t7
/* 015000 80123360 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015004 80123364 0C046573 */  jal         func_801195CC
/* 015008 80123368 84A5935E */   lh         $a1, %lo(D_8012935E)($a1)
/* 01500C 8012336C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015010 80123370 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015014 80123374 00001025 */  move        $v0, $zero
/* 015018 80123378 03E00008 */  jr          $ra
/* 01501C 8012337C 00000000 */   nop

glabel func_80123380 # 275
/* 015020 80123380 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015024 80123384 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015028 80123388 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01502C 8012338C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015030 80123390 0C046599 */  jal         func_80119664
/* 015034 80123394 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015038 80123398 000278C0 */  sll         $t7, $v0, 3
/* 01503C 8012339C 01E27823 */  subu        $t7, $t7, $v0
/* 015040 801233A0 000F7880 */  sll         $t7, $t7, 2
/* 015044 801233A4 01E27821 */  addu        $t7, $t7, $v0
/* 015048 801233A8 000F7880 */  sll         $t7, $t7, 2
/* 01504C 801233AC 3C058013 */  lui         $a1, %hi(D_8012938C)
/* 015050 801233B0 00AF2821 */  addu        $a1, $a1, $t7
/* 015054 801233B4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015058 801233B8 0C046573 */  jal         func_801195CC
/* 01505C 801233BC 8CA5938C */   lw         $a1, %lo(D_8012938C)($a1)
/* 015060 801233C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015064 801233C4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015068 801233C8 00001025 */  move        $v0, $zero
/* 01506C 801233CC 03E00008 */  jr          $ra
/* 015070 801233D0 00000000 */   nop

glabel func_801233D4 # 276
/* 015074 801233D4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 015078 801233D8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01507C 801233DC AFB00018 */  sw          $s0, 0x18($sp)
/* 015080 801233E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015084 801233E4 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015088 801233E8 0C046599 */  jal         func_80119664
/* 01508C 801233EC 02002025 */   move       $a0, $s0
/* 015090 801233F0 AFA20020 */  sw          $v0, 0x20($sp)
/* 015094 801233F4 0C046599 */  jal         func_80119664
/* 015098 801233F8 02002025 */   move       $a0, $s0
/* 01509C 801233FC AFA20024 */  sw          $v0, 0x24($sp)
/* 0150A0 80123400 0C046599 */  jal         func_80119664
/* 0150A4 80123404 02002025 */   move       $a0, $s0
/* 0150A8 80123408 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 0150AC 8012340C 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 0150B0 80123410 00402825 */  move        $a1, $v0
/* 0150B4 80123414 8FA60024 */  lw          $a2, 0x24($sp)
/* 0150B8 80123418 0C0471F0 */  jal         func_8011C7C0
/* 0150BC 8012341C 8FA70020 */   lw         $a3, 0x20($sp)
/* 0150C0 80123420 02002025 */  move        $a0, $s0
/* 0150C4 80123424 0C046573 */  jal         func_801195CC
/* 0150C8 80123428 00002825 */   move       $a1, $zero
/* 0150CC 8012342C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0150D0 80123430 8FB00018 */  lw          $s0, 0x18($sp)
/* 0150D4 80123434 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0150D8 80123438 03E00008 */  jr          $ra
/* 0150DC 8012343C 00001025 */   move       $v0, $zero

glabel func_80123440 # 277
/* 0150E0 80123440 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0150E4 80123444 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0150E8 80123448 AFB00020 */  sw          $s0, 0x20($sp)
/* 0150EC 8012344C AFA40038 */  sw          $a0, 0x38($sp)
/* 0150F0 80123450 8C8F0054 */  lw          $t7, 0x54($a0)
/* 0150F4 80123454 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 0150F8 80123458 0C0465A3 */  jal         func_8011968C
/* 0150FC 8012345C 02002025 */   move       $a0, $s0
/* 015100 80123460 E7A00030 */  swc1        $f0, 0x30($sp)
/* 015104 80123464 0C046599 */  jal         func_80119664
/* 015108 80123468 02002025 */   move       $a0, $s0
/* 01510C 8012346C A3A2002C */  sb          $v0, 0x2c($sp)
/* 015110 80123470 0C046599 */  jal         func_80119664
/* 015114 80123474 02002025 */   move       $a0, $s0
/* 015118 80123478 A3A2002D */  sb          $v0, 0x2d($sp)
/* 01511C 8012347C 0C046599 */  jal         func_80119664
/* 015120 80123480 02002025 */   move       $a0, $s0
/* 015124 80123484 A3A2002E */  sb          $v0, 0x2e($sp)
/* 015128 80123488 0C046599 */  jal         func_80119664
/* 01512C 8012348C 02002025 */   move       $a0, $s0
/* 015130 80123490 93B8002C */  lbu         $t8, 0x2c($sp)
/* 015134 80123494 C7A40030 */  lwc1        $f4, 0x30($sp)
/* 015138 80123498 8FA40038 */  lw          $a0, 0x38($sp)
/* 01513C 8012349C 304500FF */  andi        $a1, $v0, 0xff
/* 015140 801234A0 93A6002E */  lbu         $a2, 0x2e($sp)
/* 015144 801234A4 93A7002D */  lbu         $a3, 0x2d($sp)
/* 015148 801234A8 AFB80010 */  sw          $t8, 0x10($sp)
/* 01514C 801234AC 0C004F38 */  jal         func_80013CE0
/* 015150 801234B0 E7A40014 */   swc1       $f4, 0x14($sp)
/* 015154 801234B4 02002025 */  move        $a0, $s0
/* 015158 801234B8 0C046573 */  jal         func_801195CC
/* 01515C 801234BC 00002825 */   move       $a1, $zero
/* 015160 801234C0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015164 801234C4 8FB00020 */  lw          $s0, 0x20($sp)
/* 015168 801234C8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01516C 801234CC 03E00008 */  jr          $ra
/* 015170 801234D0 00001025 */   move       $v0, $zero

glabel func_801234D4 # 278
/* 015174 801234D4 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 015178 801234D8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01517C 801234DC AFB00020 */  sw          $s0, 0x20($sp)
/* 015180 801234E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015184 801234E4 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015188 801234E8 0C0465A3 */  jal         func_8011968C
/* 01518C 801234EC 02002025 */   move       $a0, $s0
/* 015190 801234F0 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 015194 801234F4 0C046599 */  jal         func_80119664
/* 015198 801234F8 02002025 */   move       $a0, $s0
/* 01519C 801234FC AFA20034 */  sw          $v0, 0x34($sp)
/* 0151A0 80123500 0C0465A3 */  jal         func_8011968C
/* 0151A4 80123504 02002025 */   move       $a0, $s0
/* 0151A8 80123508 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0151AC 8012350C 0C046599 */  jal         func_80119664
/* 0151B0 80123510 02002025 */   move       $a0, $s0
/* 0151B4 80123514 AFA20038 */  sw          $v0, 0x38($sp)
/* 0151B8 80123518 0C0465A3 */  jal         func_8011968C
/* 0151BC 8012351C 02002025 */   move       $a0, $s0
/* 0151C0 80123520 E7A00044 */  swc1        $f0, 0x44($sp)
/* 0151C4 80123524 0C0465A3 */  jal         func_8011968C
/* 0151C8 80123528 02002025 */   move       $a0, $s0
/* 0151CC 8012352C E7A00040 */  swc1        $f0, 0x40($sp)
/* 0151D0 80123530 0C0465A3 */  jal         func_8011968C
/* 0151D4 80123534 02002025 */   move       $a0, $s0
/* 0151D8 80123538 E7A0003C */  swc1        $f0, 0x3c($sp)
/* 0151DC 8012353C 0C046599 */  jal         func_80119664
/* 0151E0 80123540 02002025 */   move       $a0, $s0
/* 0151E4 80123544 8FAF0034 */  lw          $t7, 0x34($sp)
/* 0151E8 80123548 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 0151EC 8012354C 00402025 */  move        $a0, $v0
/* 0151F0 80123550 27A5003C */  addiu       $a1, $sp, 0x3c
/* 0151F4 80123554 8FA60030 */  lw          $a2, 0x30($sp)
/* 0151F8 80123558 8FA70038 */  lw          $a3, 0x38($sp)
/* 0151FC 8012355C AFAF0010 */  sw          $t7, 0x10($sp)
/* 015200 80123560 0C005E18 */  jal         func_80017860
/* 015204 80123564 E7A40014 */   swc1       $f4, 0x14($sp)
/* 015208 80123568 02002025 */  move        $a0, $s0
/* 01520C 8012356C 0C046573 */  jal         func_801195CC
/* 015210 80123570 00002825 */   move       $a1, $zero
/* 015214 80123574 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015218 80123578 8FB00020 */  lw          $s0, 0x20($sp)
/* 01521C 8012357C 27BD0050 */  addiu       $sp, $sp, 0x50
/* 015220 80123580 03E00008 */  jr          $ra
/* 015224 80123584 00001025 */   move       $v0, $zero

glabel func_80123588 # 279
/* 015228 80123588 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01522C 8012358C AFBF001C */  sw          $ra, 0x1c($sp)
/* 015230 80123590 AFB00018 */  sw          $s0, 0x18($sp)
/* 015234 80123594 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015238 80123598 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 01523C 8012359C 0C0465A3 */  jal         func_8011968C
/* 015240 801235A0 02002025 */   move       $a0, $s0
/* 015244 801235A4 E7A00024 */  swc1        $f0, 0x24($sp)
/* 015248 801235A8 0C0465A3 */  jal         func_8011968C
/* 01524C 801235AC 02002025 */   move       $a0, $s0
/* 015250 801235B0 E7A00028 */  swc1        $f0, 0x28($sp)
/* 015254 801235B4 0C0465A3 */  jal         func_8011968C
/* 015258 801235B8 02002025 */   move       $a0, $s0
/* 01525C 801235BC E7A0002C */  swc1        $f0, 0x2c($sp)
/* 015260 801235C0 0C046599 */  jal         func_80119664
/* 015264 801235C4 02002025 */   move       $a0, $s0
/* 015268 801235C8 00402025 */  move        $a0, $v0
/* 01526C 801235CC 8FA5002C */  lw          $a1, 0x2c($sp)
/* 015270 801235D0 8FA60028 */  lw          $a2, 0x28($sp)
/* 015274 801235D4 0C00581A */  jal         func_80016068
/* 015278 801235D8 8FA70024 */   lw         $a3, 0x24($sp)
/* 01527C 801235DC 02002025 */  move        $a0, $s0
/* 015280 801235E0 0C046573 */  jal         func_801195CC
/* 015284 801235E4 00002825 */   move       $a1, $zero
/* 015288 801235E8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01528C 801235EC 8FB00018 */  lw          $s0, 0x18($sp)
/* 015290 801235F0 27BD0038 */  addiu       $sp, $sp, 0x38
/* 015294 801235F4 03E00008 */  jr          $ra
/* 015298 801235F8 00001025 */   move       $v0, $zero

glabel func_801235FC # 280
/* 01529C 801235FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0152A0 80123600 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0152A4 80123604 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0152A8 80123608 3C05800A */  lui         $a1, %hi(D_8009EC10)
/* 0152AC 8012360C 8CA5EC10 */  lw          $a1, %lo(D_8009EC10)($a1)
/* 0152B0 80123610 0C046573 */  jal         func_801195CC
/* 0152B4 80123614 8DC401B8 */   lw         $a0, 0x1b8($t6)
/* 0152B8 80123618 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0152BC 8012361C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0152C0 80123620 00001025 */  move        $v0, $zero
/* 0152C4 80123624 03E00008 */  jr          $ra
/* 0152C8 80123628 00000000 */   nop

glabel func_8012362C # 281
/* 0152CC 8012362C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0152D0 80123630 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0152D4 80123634 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0152D8 80123638 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0152DC 8012363C 0C046599 */  jal         func_80119664
/* 0152E0 80123640 AFA40024 */   sw         $a0, 0x24($sp)
/* 0152E4 80123644 AFA2001C */  sw          $v0, 0x1c($sp)
/* 0152E8 80123648 0C046599 */  jal         func_80119664
/* 0152EC 8012364C 8FA40024 */   lw         $a0, 0x24($sp)
/* 0152F0 80123650 00402025 */  move        $a0, $v0
/* 0152F4 80123654 0C00C160 */  jal         func_80030580
/* 0152F8 80123658 8FA5001C */   lw         $a1, 0x1c($sp)
/* 0152FC 8012365C 8FA40024 */  lw          $a0, 0x24($sp)
/* 015300 80123660 0C046573 */  jal         func_801195CC
/* 015304 80123664 00402825 */   move       $a1, $v0
/* 015308 80123668 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01530C 8012366C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 015310 80123670 00001025 */  move        $v0, $zero
/* 015314 80123674 03E00008 */  jr          $ra
/* 015318 80123678 00000000 */   nop

glabel func_8012367C # 282
/* 01531C 8012367C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 015320 80123680 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015324 80123684 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015328 80123688 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01532C 8012368C 0C046599 */  jal         func_80119664
/* 015330 80123690 AFA40024 */   sw         $a0, 0x24($sp)
/* 015334 80123694 AFA2001C */  sw          $v0, 0x1c($sp)
/* 015338 80123698 0C046599 */  jal         func_80119664
/* 01533C 8012369C 8FA40024 */   lw         $a0, 0x24($sp)
/* 015340 801236A0 00402025 */  move        $a0, $v0
/* 015344 801236A4 0C00C155 */  jal         func_80030554
/* 015348 801236A8 8FA5001C */   lw         $a1, 0x1c($sp)
/* 01534C 801236AC 8FA40024 */  lw          $a0, 0x24($sp)
/* 015350 801236B0 0C046573 */  jal         func_801195CC
/* 015354 801236B4 00402825 */   move       $a1, $v0
/* 015358 801236B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01535C 801236BC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 015360 801236C0 00001025 */  move        $v0, $zero
/* 015364 801236C4 03E00008 */  jr          $ra
/* 015368 801236C8 00000000 */   nop

glabel func_801236CC # 283
/* 01536C 801236CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015370 801236D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015374 801236D4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015378 801236D8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01537C 801236DC 0C046599 */  jal         func_80119664
/* 015380 801236E0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015384 801236E4 0C00C14B */  jal         func_8003052C
/* 015388 801236E8 00402025 */   move       $a0, $v0
/* 01538C 801236EC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015390 801236F0 0C046573 */  jal         func_801195CC
/* 015394 801236F4 00402825 */   move       $a1, $v0
/* 015398 801236F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01539C 801236FC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0153A0 80123700 00001025 */  move        $v0, $zero
/* 0153A4 80123704 03E00008 */  jr          $ra
/* 0153A8 80123708 00000000 */   nop

glabel func_8012370C # 284
/* 0153AC 8012370C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0153B0 80123710 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0153B4 80123714 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0153B8 80123718 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0153BC 8012371C 0C046599 */  jal         func_80119664
/* 0153C0 80123720 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0153C4 80123724 0C00C141 */  jal         func_80030504
/* 0153C8 80123728 00402025 */   move       $a0, $v0
/* 0153CC 8012372C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0153D0 80123730 0C046573 */  jal         func_801195CC
/* 0153D4 80123734 00402825 */   move       $a1, $v0
/* 0153D8 80123738 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0153DC 8012373C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0153E0 80123740 00001025 */  move        $v0, $zero
/* 0153E4 80123744 03E00008 */  jr          $ra
/* 0153E8 80123748 00000000 */   nop

glabel func_8012374C # 285
/* 0153EC 8012374C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0153F0 80123750 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0153F4 80123754 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0153F8 80123758 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0153FC 8012375C 0C046599 */  jal         func_80119664
/* 015400 80123760 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015404 80123764 0C00C137 */  jal         func_800304DC
/* 015408 80123768 00402025 */   move       $a0, $v0
/* 01540C 8012376C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015410 80123770 0C046573 */  jal         func_801195CC
/* 015414 80123774 00402825 */   move       $a1, $v0
/* 015418 80123778 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01541C 8012377C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015420 80123780 00001025 */  move        $v0, $zero
/* 015424 80123784 03E00008 */  jr          $ra
/* 015428 80123788 00000000 */   nop

glabel func_8012378C # 286
/* 01542C 8012378C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 015430 80123790 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015434 80123794 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015438 80123798 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01543C 8012379C 0C046599 */  jal         func_80119664
/* 015440 801237A0 AFA40024 */   sw         $a0, 0x24($sp)
/* 015444 801237A4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 015448 801237A8 0C046599 */  jal         func_80119664
/* 01544C 801237AC 8FA40024 */   lw         $a0, 0x24($sp)
/* 015450 801237B0 00402025 */  move        $a0, $v0
/* 015454 801237B4 0C00699A */  jal         func_8001A668
/* 015458 801237B8 8FA5001C */   lw         $a1, 0x1c($sp)
/* 01545C 801237BC 8FA40024 */  lw          $a0, 0x24($sp)
/* 015460 801237C0 0C046573 */  jal         func_801195CC
/* 015464 801237C4 00002825 */   move       $a1, $zero
/* 015468 801237C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01546C 801237CC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 015470 801237D0 00001025 */  move        $v0, $zero
/* 015474 801237D4 03E00008 */  jr          $ra
/* 015478 801237D8 00000000 */   nop

glabel func_801237DC # 287
/* 01547C 801237DC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 015480 801237E0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 015484 801237E4 AFB00020 */  sw          $s0, 0x20($sp)
/* 015488 801237E8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01548C 801237EC 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015490 801237F0 0C0465A3 */  jal         func_8011968C
/* 015494 801237F4 02002025 */   move       $a0, $s0
/* 015498 801237F8 E7A00038 */  swc1        $f0, 0x38($sp)
/* 01549C 801237FC 0C046599 */  jal         func_80119664
/* 0154A0 80123800 02002025 */   move       $a0, $s0
/* 0154A4 80123804 AFA20028 */  sw          $v0, 0x28($sp)
/* 0154A8 80123808 0C046599 */  jal         func_80119664
/* 0154AC 8012380C 02002025 */   move       $a0, $s0
/* 0154B0 80123810 AFA2002C */  sw          $v0, 0x2c($sp)
/* 0154B4 80123814 0C046599 */  jal         func_80119664
/* 0154B8 80123818 02002025 */   move       $a0, $s0
/* 0154BC 8012381C AFA20030 */  sw          $v0, 0x30($sp)
/* 0154C0 80123820 0C046599 */  jal         func_80119664
/* 0154C4 80123824 02002025 */   move       $a0, $s0
/* 0154C8 80123828 C7A40038 */  lwc1        $f4, 0x38($sp)
/* 0154CC 8012382C 00402025 */  move        $a0, $v0
/* 0154D0 80123830 8FA50030 */  lw          $a1, 0x30($sp)
/* 0154D4 80123834 8FA6002C */  lw          $a2, 0x2c($sp)
/* 0154D8 80123838 8FA70028 */  lw          $a3, 0x28($sp)
/* 0154DC 8012383C 0C000ABB */  jal         func_80002AEC
/* 0154E0 80123840 E7A40010 */   swc1       $f4, 0x10($sp)
/* 0154E4 80123844 02002025 */  move        $a0, $s0
/* 0154E8 80123848 0C046573 */  jal         func_801195CC
/* 0154EC 8012384C 00002825 */   move       $a1, $zero
/* 0154F0 80123850 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0154F4 80123854 8FB00020 */  lw          $s0, 0x20($sp)
/* 0154F8 80123858 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0154FC 8012385C 03E00008 */  jr          $ra
/* 015500 80123860 00001025 */   move       $v0, $zero

glabel func_80123864 # 288
/* 015504 80123864 3C01800B */  lui         $at, %hi(D_800B1A60)
/* 015508 80123868 C4261A60 */  lwc1        $f6, %lo(D_800B1A60)($at)
/* 01550C 8012386C 44802800 */  mtc1        $zero, $f5
/* 015510 80123870 44802000 */  mtc1        $zero, $f4
/* 015514 80123874 46003221 */  cvt.d.s     $f8, $f6
/* 015518 80123878 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01551C 8012387C 46282032 */  c.eq.d      $f4, $f8
/* 015520 80123880 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015524 80123884 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015528 80123888 00002825 */  move        $a1, $zero
/* 01552C 8012388C 45000006 */  bc1f        .L801238A8
/* 015530 80123890 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 015534 80123894 00C02025 */  move        $a0, $a2
/* 015538 80123898 0C046573 */  jal         func_801195CC
/* 01553C 8012389C 24050001 */   addiu      $a1, $zero, 0x1
/* 015540 801238A0 10000004 */  b           .L801238B4
/* 015544 801238A4 8FBF0014 */   lw         $ra, 0x14($sp)
.L801238A8:
/* 015548 801238A8 0C046573 */  jal         func_801195CC
/* 01554C 801238AC 00C02025 */   move       $a0, $a2
/* 015550 801238B0 8FBF0014 */  lw          $ra, 0x14($sp)
.L801238B4:
/* 015554 801238B4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015558 801238B8 00001025 */  move        $v0, $zero
/* 01555C 801238BC 03E00008 */  jr          $ra
/* 015560 801238C0 00000000 */   nop

glabel func_801238C4 # 289
/* 015564 801238C4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015568 801238C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01556C 801238CC 8C820054 */  lw          $v0, 0x54($a0)
/* 015570 801238D0 8C4401B8 */  lw          $a0, 0x1b8($v0)
/* 015574 801238D4 0C046573 */  jal         func_801195CC
/* 015578 801238D8 8C450238 */   lw         $a1, 0x238($v0)
/* 01557C 801238DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015580 801238E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015584 801238E4 00001025 */  move        $v0, $zero
/* 015588 801238E8 03E00008 */  jr          $ra
/* 01558C 801238EC 00000000 */   nop

glabel func_801238F0 # 290
/* 015590 801238F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015594 801238F4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015598 801238F8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01559C 801238FC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0155A0 80123900 0C046599 */  jal         func_80119664
/* 0155A4 80123904 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0155A8 80123908 0C001A23 */  jal         func_8000688C
/* 0155AC 8012390C 00402025 */   move       $a0, $v0
/* 0155B0 80123910 10400007 */  beqz        $v0, .L80123930
/* 0155B4 80123914 8FA6001C */   lw         $a2, 0x1c($sp)
/* 0155B8 80123918 8C4F0054 */  lw          $t7, 0x54($v0)
/* 0155BC 8012391C 00C02025 */  move        $a0, $a2
/* 0155C0 80123920 0C046573 */  jal         func_801195CC
/* 0155C4 80123924 8DE50238 */   lw         $a1, 0x238($t7)
/* 0155C8 80123928 10000005 */  b           .L80123940
/* 0155CC 8012392C 8FBF0014 */   lw         $ra, 0x14($sp)
.L80123930:
/* 0155D0 80123930 00C02025 */  move        $a0, $a2
/* 0155D4 80123934 0C046573 */  jal         func_801195CC
/* 0155D8 80123938 2405FFFF */   addiu      $a1, $zero, -0x1
/* 0155DC 8012393C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80123940:
/* 0155E0 80123940 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0155E4 80123944 00001025 */  move        $v0, $zero
/* 0155E8 80123948 03E00008 */  jr          $ra
/* 0155EC 8012394C 00000000 */   nop

glabel func_80123950 # 291
/* 0155F0 80123950 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0155F4 80123954 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0155F8 80123958 AFB00018 */  sw          $s0, 0x18($sp)
/* 0155FC 8012395C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015600 80123960 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015604 80123964 0C0465A3 */  jal         func_8011968C
/* 015608 80123968 02002025 */   move       $a0, $s0
/* 01560C 8012396C E7A00020 */  swc1        $f0, 0x20($sp)
/* 015610 80123970 0C0465A3 */  jal         func_8011968C
/* 015614 80123974 02002025 */   move       $a0, $s0
/* 015618 80123978 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 01561C 8012397C 0C0465A3 */  jal         func_8011968C
/* 015620 80123980 02002025 */   move       $a0, $s0
/* 015624 80123984 E7A00028 */  swc1        $f0, 0x28($sp)
/* 015628 80123988 0C0465A3 */  jal         func_8011968C
/* 01562C 8012398C 02002025 */   move       $a0, $s0
/* 015630 80123990 E7A00024 */  swc1        $f0, 0x24($sp)
/* 015634 80123994 0C0465A3 */  jal         func_8011968C
/* 015638 80123998 02002025 */   move       $a0, $s0
/* 01563C 8012399C E7A00038 */  swc1        $f0, 0x38($sp)
/* 015640 801239A0 0C0465A3 */  jal         func_8011968C
/* 015644 801239A4 02002025 */   move       $a0, $s0
/* 015648 801239A8 E7A00034 */  swc1        $f0, 0x34($sp)
/* 01564C 801239AC 0C0465A3 */  jal         func_8011968C
/* 015650 801239B0 02002025 */   move       $a0, $s0
/* 015654 801239B4 E7A00030 */  swc1        $f0, 0x30($sp)
/* 015658 801239B8 27A40030 */  addiu       $a0, $sp, 0x30
/* 01565C 801239BC 27A50024 */  addiu       $a1, $sp, 0x24
/* 015660 801239C0 0C045736 */  jal         func_80115CD8
/* 015664 801239C4 8FA60020 */   lw         $a2, 0x20($sp)
/* 015668 801239C8 02002025 */  move        $a0, $s0
/* 01566C 801239CC 0C046573 */  jal         func_801195CC
/* 015670 801239D0 00002825 */   move       $a1, $zero
/* 015674 801239D4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 015678 801239D8 8FB00018 */  lw          $s0, 0x18($sp)
/* 01567C 801239DC 27BD0040 */  addiu       $sp, $sp, 0x40
/* 015680 801239E0 03E00008 */  jr          $ra
/* 015684 801239E4 00001025 */   move       $v0, $zero

glabel func_801239E8 # 292
/* 015688 801239E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01568C 801239EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 015690 801239F0 0C046754 */  jal         func_80119D50
/* 015694 801239F4 2405000E */   addiu      $a1, $zero, 0xe
/* 015698 801239F8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01569C 801239FC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0156A0 80123A00 24020002 */  addiu       $v0, $zero, 0x2
/* 0156A4 80123A04 03E00008 */  jr          $ra
/* 0156A8 80123A08 00000000 */   nop

glabel func_80123A0C # 293
/* 0156AC 80123A0C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0156B0 80123A10 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0156B4 80123A14 AFB00018 */  sw          $s0, 0x18($sp)
/* 0156B8 80123A18 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0156BC 80123A1C 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 0156C0 80123A20 0C046599 */  jal         func_80119664
/* 0156C4 80123A24 02002025 */   move       $a0, $s0
/* 0156C8 80123A28 AFA20024 */  sw          $v0, 0x24($sp)
/* 0156CC 80123A2C 0C046599 */  jal         func_80119664
/* 0156D0 80123A30 02002025 */   move       $a0, $s0
/* 0156D4 80123A34 0C04701F */  jal         func_8011C07C
/* 0156D8 80123A38 00402025 */   move       $a0, $v0
/* 0156DC 80123A3C 8FA40024 */  lw          $a0, 0x24($sp)
/* 0156E0 80123A40 0C04701F */  jal         func_8011C07C
/* 0156E4 80123A44 AFA20030 */   sw         $v0, 0x30($sp)
/* 0156E8 80123A48 8FA60030 */  lw          $a2, 0x30($sp)
/* 0156EC 80123A4C 00402825 */  move        $a1, $v0
/* 0156F0 80123A50 02002025 */  move        $a0, $s0
/* 0156F4 80123A54 10C00003 */  beqz        $a2, .L80123A64
/* 0156F8 80123A58 00000000 */   nop
/* 0156FC 80123A5C 14400005 */  bnez        $v0, .L80123A74
/* 015700 80123A60 00000000 */   nop
.L80123A64:
/* 015704 80123A64 0C04657F */  jal         func_801195FC
/* 015708 80123A68 3C05BF80 */   lui        $a1, 0xbf80
/* 01570C 80123A6C 10000007 */  b           .L80123A8C
/* 015710 80123A70 8FBF001C */   lw         $ra, 0x1c($sp)
.L80123A74:
/* 015714 80123A74 0C0021BB */  jal         func_800086EC
/* 015718 80123A78 00C02025 */   move       $a0, $a2
/* 01571C 80123A7C 44050000 */  mfc1        $a1, $f0
/* 015720 80123A80 0C04657F */  jal         func_801195FC
/* 015724 80123A84 02002025 */   move       $a0, $s0
/* 015728 80123A88 8FBF001C */  lw          $ra, 0x1c($sp)
.L80123A8C:
/* 01572C 80123A8C 8FB00018 */  lw          $s0, 0x18($sp)
/* 015730 80123A90 27BD0038 */  addiu       $sp, $sp, 0x38
/* 015734 80123A94 03E00008 */  jr          $ra
/* 015738 80123A98 00001025 */   move       $v0, $zero

glabel func_80123A9C # 294
/* 01573C 80123A9C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015740 80123AA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015744 80123AA4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015748 80123AA8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01574C 80123AAC 0C00C51F */  jal         func_8003147C
/* 015750 80123AB0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 015754 80123AB4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015758 80123AB8 0C046573 */  jal         func_801195CC
/* 01575C 80123ABC 00402825 */   move       $a1, $v0
/* 015760 80123AC0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015764 80123AC4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015768 80123AC8 00001025 */  move        $v0, $zero
/* 01576C 80123ACC 03E00008 */  jr          $ra
/* 015770 80123AD0 00000000 */   nop

glabel func_80123AD4 # 295
/* 015774 80123AD4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015778 80123AD8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01577C 80123ADC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015780 80123AE0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015784 80123AE4 0C046599 */  jal         func_80119664
/* 015788 80123AE8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01578C 80123AEC 00002025 */  move        $a0, $zero
/* 015790 80123AF0 00402825 */  move        $a1, $v0
/* 015794 80123AF4 0C00C4E0 */  jal         func_80031380
/* 015798 80123AF8 00003025 */   move       $a2, $zero
/* 01579C 80123AFC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0157A0 80123B00 0C046573 */  jal         func_801195CC
/* 0157A4 80123B04 00002825 */   move       $a1, $zero
/* 0157A8 80123B08 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0157AC 80123B0C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0157B0 80123B10 00001025 */  move        $v0, $zero
/* 0157B4 80123B14 03E00008 */  jr          $ra
/* 0157B8 80123B18 00000000 */   nop

glabel func_80123B1C # 296
/* 0157BC 80123B1C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0157C0 80123B20 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0157C4 80123B24 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 0157C8 80123B28 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0157CC 80123B2C 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 0157D0 80123B30 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0157D4 80123B34 0C04657F */  jal         func_801195FC
/* 0157D8 80123B38 8DE50028 */   lw         $a1, 0x28($t7)
/* 0157DC 80123B3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0157E0 80123B40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0157E4 80123B44 00001025 */  move        $v0, $zero
/* 0157E8 80123B48 03E00008 */  jr          $ra
/* 0157EC 80123B4C 00000000 */   nop

glabel func_80123B50 # 297
/* 0157F0 80123B50 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0157F4 80123B54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0157F8 80123B58 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 0157FC 80123B5C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015800 80123B60 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 015804 80123B64 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015808 80123B68 0C04657F */  jal         func_801195FC
/* 01580C 80123B6C 8DE50024 */   lw         $a1, 0x24($t7)
/* 015810 80123B70 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015814 80123B74 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015818 80123B78 00001025 */  move        $v0, $zero
/* 01581C 80123B7C 03E00008 */  jr          $ra
/* 015820 80123B80 00000000 */   nop

glabel func_80123B84 # 298
/* 015824 80123B84 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015828 80123B88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01582C 80123B8C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015830 80123B90 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015834 80123B94 0C0465A3 */  jal         func_8011968C
/* 015838 80123B98 AFA40018 */   sw         $a0, 0x18($sp)
/* 01583C 80123B9C 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 015840 80123BA0 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 015844 80123BA4 8FA40018 */  lw          $a0, 0x18($sp)
/* 015848 80123BA8 00002825 */  move        $a1, $zero
/* 01584C 80123BAC 0C046573 */  jal         func_801195CC
/* 015850 80123BB0 E5E00028 */   swc1       $f0, 0x28($t7)
/* 015854 80123BB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015858 80123BB8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01585C 80123BBC 00001025 */  move        $v0, $zero
/* 015860 80123BC0 03E00008 */  jr          $ra
/* 015864 80123BC4 00000000 */   nop

glabel func_80123BC8 # 299
/* 015868 80123BC8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01586C 80123BCC AFBF0014 */  sw          $ra, 0x14($sp)
/* 015870 80123BD0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015874 80123BD4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015878 80123BD8 0C0465A3 */  jal         func_8011968C
/* 01587C 80123BDC AFA40018 */   sw         $a0, 0x18($sp)
/* 015880 80123BE0 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 015884 80123BE4 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 015888 80123BE8 8FA40018 */  lw          $a0, 0x18($sp)
/* 01588C 80123BEC 00002825 */  move        $a1, $zero
/* 015890 80123BF0 0C046573 */  jal         func_801195CC
/* 015894 80123BF4 E5E00024 */   swc1       $f0, 0x24($t7)
/* 015898 80123BF8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01589C 80123BFC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0158A0 80123C00 00001025 */  move        $v0, $zero
/* 0158A4 80123C04 03E00008 */  jr          $ra
/* 0158A8 80123C08 00000000 */   nop

glabel func_80123C0C # 300
/* 0158AC 80123C0C 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 0158B0 80123C10 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 0158B4 80123C14 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0158B8 80123C18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0158BC 80123C1C 8DF80030 */  lw          $t8, 0x30($t7)
/* 0158C0 80123C20 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0158C4 80123C24 44982000 */  mtc1        $t8, $f4
/* 0158C8 80123C28 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0158CC 80123C2C 46802120 */  cvt.s.w     $f4, $f4
/* 0158D0 80123C30 44052000 */  mfc1        $a1, $f4
/* 0158D4 80123C34 0C04657F */  jal         func_801195FC
/* 0158D8 80123C38 00000000 */   nop
/* 0158DC 80123C3C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0158E0 80123C40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0158E4 80123C44 00001025 */  move        $v0, $zero
/* 0158E8 80123C48 03E00008 */  jr          $ra
/* 0158EC 80123C4C 00000000 */   nop

glabel func_80123C50 # 301
/* 0158F0 80123C50 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0158F4 80123C54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0158F8 80123C58 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0158FC 80123C5C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015900 80123C60 0C0465A3 */  jal         func_8011968C
/* 015904 80123C64 AFA40018 */   sw         $a0, 0x18($sp)
/* 015908 80123C68 4600010D */  trunc.w.s   $f4, $f0
/* 01590C 80123C6C 3C198013 */  lui         $t9, %hi(D_80137EE4)
/* 015910 80123C70 8F397EE4 */  lw          $t9, %lo(D_80137EE4)($t9)
/* 015914 80123C74 8FA40018 */  lw          $a0, 0x18($sp)
/* 015918 80123C78 44182000 */  mfc1        $t8, $f4
/* 01591C 80123C7C 00002825 */  move        $a1, $zero
/* 015920 80123C80 0C046573 */  jal         func_801195CC
/* 015924 80123C84 AF380030 */   sw         $t8, 0x30($t9)
/* 015928 80123C88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01592C 80123C8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015930 80123C90 00001025 */  move        $v0, $zero
/* 015934 80123C94 03E00008 */  jr          $ra
/* 015938 80123C98 00000000 */   nop

glabel func_80123C9C # 302
/* 01593C 80123C9C 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 015940 80123CA0 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 015944 80123CA4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 015948 80123CA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01594C 80123CAC 8DF80034 */  lw          $t8, 0x34($t7)
/* 015950 80123CB0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015954 80123CB4 44982000 */  mtc1        $t8, $f4
/* 015958 80123CB8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 01595C 80123CBC 46802120 */  cvt.s.w     $f4, $f4
/* 015960 80123CC0 44052000 */  mfc1        $a1, $f4
/* 015964 80123CC4 0C04657F */  jal         func_801195FC
/* 015968 80123CC8 00000000 */   nop
/* 01596C 80123CCC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015970 80123CD0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 015974 80123CD4 00001025 */  move        $v0, $zero
/* 015978 80123CD8 03E00008 */  jr          $ra
/* 01597C 80123CDC 00000000 */   nop

glabel func_80123CE0 # 303
/* 015980 80123CE0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015984 80123CE4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015988 80123CE8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01598C 80123CEC 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015990 80123CF0 0C0465A3 */  jal         func_8011968C
/* 015994 80123CF4 AFA40018 */   sw         $a0, 0x18($sp)
/* 015998 80123CF8 4600010D */  trunc.w.s   $f4, $f0
/* 01599C 80123CFC 3C198013 */  lui         $t9, %hi(D_80137EE4)
/* 0159A0 80123D00 8F397EE4 */  lw          $t9, %lo(D_80137EE4)($t9)
/* 0159A4 80123D04 8FA40018 */  lw          $a0, 0x18($sp)
/* 0159A8 80123D08 44182000 */  mfc1        $t8, $f4
/* 0159AC 80123D0C 00002825 */  move        $a1, $zero
/* 0159B0 80123D10 0C046573 */  jal         func_801195CC
/* 0159B4 80123D14 AF380034 */   sw         $t8, 0x34($t9)
/* 0159B8 80123D18 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0159BC 80123D1C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0159C0 80123D20 00001025 */  move        $v0, $zero
/* 0159C4 80123D24 03E00008 */  jr          $ra
/* 0159C8 80123D28 00000000 */   nop

glabel func_80123D2C # 304
/* 0159CC 80123D2C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0159D0 80123D30 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0159D4 80123D34 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0159D8 80123D38 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0159DC 80123D3C 0C046599 */  jal         func_80119664
/* 0159E0 80123D40 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0159E4 80123D44 0C045757 */  jal         func_80115D5C
/* 0159E8 80123D48 00402025 */   move       $a0, $v0
/* 0159EC 80123D4C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0159F0 80123D50 0C046573 */  jal         func_801195CC
/* 0159F4 80123D54 00402825 */   move       $a1, $v0
/* 0159F8 80123D58 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0159FC 80123D5C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015A00 80123D60 00001025 */  move        $v0, $zero
/* 015A04 80123D64 03E00008 */  jr          $ra
/* 015A08 80123D68 00000000 */   nop

glabel func_80123D6C # 305
/* 015A0C 80123D6C 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 015A10 80123D70 AFBF002C */  sw          $ra, 0x2c($sp)
/* 015A14 80123D74 AFB00028 */  sw          $s0, 0x28($sp)
/* 015A18 80123D78 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015A1C 80123D7C 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015A20 80123D80 0C0465A3 */  jal         func_8011968C
/* 015A24 80123D84 02002025 */   move       $a0, $s0
/* 015A28 80123D88 E7A00030 */  swc1        $f0, 0x30($sp)
/* 015A2C 80123D8C 0C0465A3 */  jal         func_8011968C
/* 015A30 80123D90 02002025 */   move       $a0, $s0
/* 015A34 80123D94 E7A00034 */  swc1        $f0, 0x34($sp)
/* 015A38 80123D98 0C046599 */  jal         func_80119664
/* 015A3C 80123D9C 02002025 */   move       $a0, $s0
/* 015A40 80123DA0 AFA20038 */  sw          $v0, 0x38($sp)
/* 015A44 80123DA4 0C046599 */  jal         func_80119664
/* 015A48 80123DA8 02002025 */   move       $a0, $s0
/* 015A4C 80123DAC AFA2003C */  sw          $v0, 0x3c($sp)
/* 015A50 80123DB0 0C046599 */  jal         func_80119664
/* 015A54 80123DB4 02002025 */   move       $a0, $s0
/* 015A58 80123DB8 AFA20040 */  sw          $v0, 0x40($sp)
/* 015A5C 80123DBC 0C046599 */  jal         func_80119664
/* 015A60 80123DC0 02002025 */   move       $a0, $s0
/* 015A64 80123DC4 AFA20044 */  sw          $v0, 0x44($sp)
/* 015A68 80123DC8 0C046599 */  jal         func_80119664
/* 015A6C 80123DCC 02002025 */   move       $a0, $s0
/* 015A70 80123DD0 AFA20048 */  sw          $v0, 0x48($sp)
/* 015A74 80123DD4 0C046599 */  jal         func_80119664
/* 015A78 80123DD8 02002025 */   move       $a0, $s0
/* 015A7C 80123DDC AFA2004C */  sw          $v0, 0x4c($sp)
/* 015A80 80123DE0 0C0465A3 */  jal         func_8011968C
/* 015A84 80123DE4 02002025 */   move       $a0, $s0
/* 015A88 80123DE8 E7A00058 */  swc1        $f0, 0x58($sp)
/* 015A8C 80123DEC 0C0465A3 */  jal         func_8011968C
/* 015A90 80123DF0 02002025 */   move       $a0, $s0
/* 015A94 80123DF4 E7A00054 */  swc1        $f0, 0x54($sp)
/* 015A98 80123DF8 0C0465A3 */  jal         func_8011968C
/* 015A9C 80123DFC 02002025 */   move       $a0, $s0
/* 015AA0 80123E00 E7A00050 */  swc1        $f0, 0x50($sp)
/* 015AA4 80123E04 0C0465A3 */  jal         func_8011968C
/* 015AA8 80123E08 02002025 */   move       $a0, $s0
/* 015AAC 80123E0C E7A00064 */  swc1        $f0, 0x64($sp)
/* 015AB0 80123E10 0C0465A3 */  jal         func_8011968C
/* 015AB4 80123E14 02002025 */   move       $a0, $s0
/* 015AB8 80123E18 E7A00060 */  swc1        $f0, 0x60($sp)
/* 015ABC 80123E1C 0C0465A3 */  jal         func_8011968C
/* 015AC0 80123E20 02002025 */   move       $a0, $s0
/* 015AC4 80123E24 E7A0005C */  swc1        $f0, 0x5c($sp)
/* 015AC8 80123E28 0C046599 */  jal         func_80119664
/* 015ACC 80123E2C 02002025 */   move       $a0, $s0
/* 015AD0 80123E30 AFA20068 */  sw          $v0, 0x68($sp)
/* 015AD4 80123E34 0C046599 */  jal         func_80119664
/* 015AD8 80123E38 02002025 */   move       $a0, $s0
/* 015ADC 80123E3C AFA2006C */  sw          $v0, 0x6c($sp)
/* 015AE0 80123E40 0C046599 */  jal         func_80119664
/* 015AE4 80123E44 02002025 */   move       $a0, $s0
/* 015AE8 80123E48 AFA20070 */  sw          $v0, 0x70($sp)
/* 015AEC 80123E4C 0C046599 */  jal         func_80119664
/* 015AF0 80123E50 02002025 */   move       $a0, $s0
/* 015AF4 80123E54 8FAF0044 */  lw          $t7, 0x44($sp)
/* 015AF8 80123E58 8FB80040 */  lw          $t8, 0x40($sp)
/* 015AFC 80123E5C 8FB9003C */  lw          $t9, 0x3c($sp)
/* 015B00 80123E60 8FA80038 */  lw          $t0, 0x38($sp)
/* 015B04 80123E64 AFA20074 */  sw          $v0, 0x74($sp)
/* 015B08 80123E68 8FA4006C */  lw          $a0, 0x6c($sp)
/* 015B0C 80123E6C 8FA50068 */  lw          $a1, 0x68($sp)
/* 015B10 80123E70 93A6004F */  lbu         $a2, 0x4f($sp)
/* 015B14 80123E74 93A7004B */  lbu         $a3, 0x4b($sp)
/* 015B18 80123E78 AFAF0010 */  sw          $t7, 0x10($sp)
/* 015B1C 80123E7C AFB80014 */  sw          $t8, 0x14($sp)
/* 015B20 80123E80 AFB90018 */  sw          $t9, 0x18($sp)
/* 015B24 80123E84 0C008E7C */  jal         func_800239F0
/* 015B28 80123E88 AFA8001C */   sw         $t0, 0x1c($sp)
/* 015B2C 80123E8C AFA20078 */  sw          $v0, 0x78($sp)
/* 015B30 80123E90 8C440038 */  lw          $a0, 0x38($v0)
/* 015B34 80123E94 8FA50074 */  lw          $a1, 0x74($sp)
/* 015B38 80123E98 0C0472AE */  jal         func_8011CAB8
/* 015B3C 80123E9C 8FA60070 */   lw         $a2, 0x70($sp)
/* 015B40 80123EA0 8FA40078 */  lw          $a0, 0x78($sp)
/* 015B44 80123EA4 0C008EA6 */  jal         func_80023A98
/* 015B48 80123EA8 8FA50030 */   lw         $a1, 0x30($sp)
/* 015B4C 80123EAC 3C098013 */  lui         $t1, %hi(D_80137EE4)
/* 015B50 80123EB0 8D297EE4 */  lw          $t1, %lo(D_80137EE4)($t1)
/* 015B54 80123EB4 C7A60034 */  lwc1        $f6, 0x34($sp)
/* 015B58 80123EB8 8FA40078 */  lw          $a0, 0x78($sp)
/* 015B5C 80123EBC C524000C */  lwc1        $f4, 0xc($t1)
/* 015B60 80123EC0 27A5005C */  addiu       $a1, $sp, 0x5c
/* 015B64 80123EC4 27A60050 */  addiu       $a2, $sp, 0x50
/* 015B68 80123EC8 46062202 */  mul.s       $f8, $f4, $f6
/* 015B6C 80123ECC 44074000 */  mfc1        $a3, $f8
/* 015B70 80123ED0 0C008EB0 */  jal         func_80023AC0
/* 015B74 80123ED4 00000000 */   nop
/* 015B78 80123ED8 8FAA0078 */  lw          $t2, 0x78($sp)
/* 015B7C 80123EDC 02002025 */  move        $a0, $s0
/* 015B80 80123EE0 0C046573 */  jal         func_801195CC
/* 015B84 80123EE4 8D450038 */   lw         $a1, 0x38($t2)
/* 015B88 80123EE8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 015B8C 80123EEC 8FB00028 */  lw          $s0, 0x28($sp)
/* 015B90 80123EF0 27BD0080 */  addiu       $sp, $sp, 0x80
/* 015B94 80123EF4 03E00008 */  jr          $ra
/* 015B98 80123EF8 00001025 */   move       $v0, $zero

glabel func_80123EFC # 306
/* 015B9C 80123EFC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 015BA0 80123F00 AFBF001C */  sw          $ra, 0x1c($sp)
/* 015BA4 80123F04 AFB00018 */  sw          $s0, 0x18($sp)
/* 015BA8 80123F08 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015BAC 80123F0C 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015BB0 80123F10 0C046599 */  jal         func_80119664
/* 015BB4 80123F14 02002025 */   move       $a0, $s0
/* 015BB8 80123F18 AFA20020 */  sw          $v0, 0x20($sp)
/* 015BBC 80123F1C 0C046599 */  jal         func_80119664
/* 015BC0 80123F20 02002025 */   move       $a0, $s0
/* 015BC4 80123F24 AFA20024 */  sw          $v0, 0x24($sp)
/* 015BC8 80123F28 0C046599 */  jal         func_80119664
/* 015BCC 80123F2C 02002025 */   move       $a0, $s0
/* 015BD0 80123F30 00402025 */  move        $a0, $v0
/* 015BD4 80123F34 8FA50024 */  lw          $a1, 0x24($sp)
/* 015BD8 80123F38 0C0472AE */  jal         func_8011CAB8
/* 015BDC 80123F3C 8FA60020 */   lw         $a2, 0x20($sp)
/* 015BE0 80123F40 02002025 */  move        $a0, $s0
/* 015BE4 80123F44 0C046573 */  jal         func_801195CC
/* 015BE8 80123F48 00002825 */   move       $a1, $zero
/* 015BEC 80123F4C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 015BF0 80123F50 8FB00018 */  lw          $s0, 0x18($sp)
/* 015BF4 80123F54 27BD0030 */  addiu       $sp, $sp, 0x30
/* 015BF8 80123F58 03E00008 */  jr          $ra
/* 015BFC 80123F5C 00001025 */   move       $v0, $zero

glabel func_80123F60 # 307
/* 015C00 80123F60 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 015C04 80123F64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015C08 80123F68 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015C0C 80123F6C 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015C10 80123F70 0C0465A3 */  jal         func_8011968C
/* 015C14 80123F74 AFA40024 */   sw         $a0, 0x24($sp)
/* 015C18 80123F78 E7A00018 */  swc1        $f0, 0x18($sp)
/* 015C1C 80123F7C 0C046599 */  jal         func_80119664
/* 015C20 80123F80 8FA40024 */   lw         $a0, 0x24($sp)
/* 015C24 80123F84 0C001A23 */  jal         func_8000688C
/* 015C28 80123F88 00402025 */   move       $a0, $v0
/* 015C2C 80123F8C 00402025 */  move        $a0, $v0
/* 015C30 80123F90 0C008EA6 */  jal         func_80023A98
/* 015C34 80123F94 8FA50018 */   lw         $a1, 0x18($sp)
/* 015C38 80123F98 8FA40024 */  lw          $a0, 0x24($sp)
/* 015C3C 80123F9C 0C046573 */  jal         func_801195CC
/* 015C40 80123FA0 00002825 */   move       $a1, $zero
/* 015C44 80123FA4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015C48 80123FA8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 015C4C 80123FAC 00001025 */  move        $v0, $zero
/* 015C50 80123FB0 03E00008 */  jr          $ra
/* 015C54 80123FB4 00000000 */   nop

glabel func_80123FB8 # 308
/* 015C58 80123FB8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 015C5C 80123FBC AFBF001C */  sw          $ra, 0x1c($sp)
/* 015C60 80123FC0 AFB00018 */  sw          $s0, 0x18($sp)
/* 015C64 80123FC4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015C68 80123FC8 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015C6C 80123FCC 0C0465A3 */  jal         func_8011968C
/* 015C70 80123FD0 02002025 */   move       $a0, $s0
/* 015C74 80123FD4 E7A00020 */  swc1        $f0, 0x20($sp)
/* 015C78 80123FD8 0C0465A3 */  jal         func_8011968C
/* 015C7C 80123FDC 02002025 */   move       $a0, $s0
/* 015C80 80123FE0 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 015C84 80123FE4 0C0465A3 */  jal         func_8011968C
/* 015C88 80123FE8 02002025 */   move       $a0, $s0
/* 015C8C 80123FEC E7A00028 */  swc1        $f0, 0x28($sp)
/* 015C90 80123FF0 0C0465A3 */  jal         func_8011968C
/* 015C94 80123FF4 02002025 */   move       $a0, $s0
/* 015C98 80123FF8 E7A00024 */  swc1        $f0, 0x24($sp)
/* 015C9C 80123FFC 0C0465A3 */  jal         func_8011968C
/* 015CA0 80124000 02002025 */   move       $a0, $s0
/* 015CA4 80124004 E7A00038 */  swc1        $f0, 0x38($sp)
/* 015CA8 80124008 0C0465A3 */  jal         func_8011968C
/* 015CAC 8012400C 02002025 */   move       $a0, $s0
/* 015CB0 80124010 E7A00034 */  swc1        $f0, 0x34($sp)
/* 015CB4 80124014 0C0465A3 */  jal         func_8011968C
/* 015CB8 80124018 02002025 */   move       $a0, $s0
/* 015CBC 8012401C E7A00030 */  swc1        $f0, 0x30($sp)
/* 015CC0 80124020 0C046599 */  jal         func_80119664
/* 015CC4 80124024 02002025 */   move       $a0, $s0
/* 015CC8 80124028 0C001A23 */  jal         func_8000688C
/* 015CCC 8012402C 00402025 */   move       $a0, $v0
/* 015CD0 80124030 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 015CD4 80124034 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 015CD8 80124038 C7A60020 */  lwc1        $f6, 0x20($sp)
/* 015CDC 8012403C 00402025 */  move        $a0, $v0
/* 015CE0 80124040 C5E4000C */  lwc1        $f4, 0xc($t7)
/* 015CE4 80124044 27A50030 */  addiu       $a1, $sp, 0x30
/* 015CE8 80124048 27A60024 */  addiu       $a2, $sp, 0x24
/* 015CEC 8012404C 46062202 */  mul.s       $f8, $f4, $f6
/* 015CF0 80124050 44074000 */  mfc1        $a3, $f8
/* 015CF4 80124054 0C008EB0 */  jal         func_80023AC0
/* 015CF8 80124058 00000000 */   nop
/* 015CFC 8012405C 02002025 */  move        $a0, $s0
/* 015D00 80124060 0C046573 */  jal         func_801195CC
/* 015D04 80124064 00002825 */   move       $a1, $zero
/* 015D08 80124068 8FBF001C */  lw          $ra, 0x1c($sp)
/* 015D0C 8012406C 8FB00018 */  lw          $s0, 0x18($sp)
/* 015D10 80124070 27BD0048 */  addiu       $sp, $sp, 0x48
/* 015D14 80124074 03E00008 */  jr          $ra
/* 015D18 80124078 00001025 */   move       $v0, $zero

glabel func_8012407C # 309
/* 015D1C 8012407C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015D20 80124080 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015D24 80124084 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015D28 80124088 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015D2C 8012408C 0C0465A3 */  jal         func_8011968C
/* 015D30 80124090 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015D34 80124094 0C00EB2F */  jal         func_8003ACBC
/* 015D38 80124098 46000306 */   mov.s      $f12, $f0
/* 015D3C 8012409C 44050000 */  mfc1        $a1, $f0
/* 015D40 801240A0 0C04657F */  jal         func_801195FC
/* 015D44 801240A4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 015D48 801240A8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015D4C 801240AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015D50 801240B0 00001025 */  move        $v0, $zero
/* 015D54 801240B4 03E00008 */  jr          $ra
/* 015D58 801240B8 00000000 */   nop

glabel func_801240BC # 310
/* 015D5C 801240BC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015D60 801240C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015D64 801240C4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015D68 801240C8 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015D6C 801240CC 0C0465A3 */  jal         func_8011968C
/* 015D70 801240D0 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015D74 801240D4 0C00EB6C */  jal         func_8003ADB0
/* 015D78 801240D8 46000306 */   mov.s      $f12, $f0
/* 015D7C 801240DC 44050000 */  mfc1        $a1, $f0
/* 015D80 801240E0 0C04657F */  jal         func_801195FC
/* 015D84 801240E4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 015D88 801240E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015D8C 801240EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015D90 801240F0 00001025 */  move        $v0, $zero
/* 015D94 801240F4 03E00008 */  jr          $ra
/* 015D98 801240F8 00000000 */   nop

glabel func_801240FC # 311
/* 015D9C 801240FC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015DA0 80124100 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015DA4 80124104 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015DA8 80124108 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015DAC 8012410C 0C046599 */  jal         func_80119664
/* 015DB0 80124110 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015DB4 80124114 3C058015 */  lui         $a1, %hi(D_80153E8C)
/* 015DB8 80124118 00A22821 */  addu        $a1, $a1, $v0
/* 015DBC 8012411C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015DC0 80124120 0C046573 */  jal         func_801195CC
/* 015DC4 80124124 90A53E8C */   lbu        $a1, %lo(D_80153E8C)($a1)
/* 015DC8 80124128 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015DCC 8012412C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015DD0 80124130 00001025 */  move        $v0, $zero
/* 015DD4 80124134 03E00008 */  jr          $ra
/* 015DD8 80124138 00000000 */   nop

glabel func_8012413C # 312
/* 015DDC 8012413C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 015DE0 80124140 AFBF0014 */  sw          $ra, 0x14($sp)
/* 015DE4 80124144 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015DE8 80124148 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 015DEC 8012414C 0C046599 */  jal         func_80119664
/* 015DF0 80124150 AFA4001C */   sw         $a0, 0x1c($sp)
/* 015DF4 80124154 00027880 */  sll         $t7, $v0, 2
/* 015DF8 80124158 3C058015 */  lui         $a1, %hi(D_80153F28)
/* 015DFC 8012415C 00AF2821 */  addu        $a1, $a1, $t7
/* 015E00 80124160 8FA4001C */  lw          $a0, 0x1c($sp)
/* 015E04 80124164 0C04658D */  jal         func_80119634
/* 015E08 80124168 8CA53F28 */   lw         $a1, %lo(D_80153F28)($a1)
/* 015E0C 8012416C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 015E10 80124170 27BD0020 */  addiu       $sp, $sp, 0x20
/* 015E14 80124174 00001025 */  move        $v0, $zero
/* 015E18 80124178 03E00008 */  jr          $ra
/* 015E1C 8012417C 00000000 */   nop

glabel func_80124180 # 313
/* 015E20 80124180 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 015E24 80124184 AFBF0034 */  sw          $ra, 0x34($sp)
/* 015E28 80124188 AFB70030 */  sw          $s7, 0x30($sp)
/* 015E2C 8012418C AFB6002C */  sw          $s6, 0x2c($sp)
/* 015E30 80124190 AFB50028 */  sw          $s5, 0x28($sp)
/* 015E34 80124194 AFB40024 */  sw          $s4, 0x24($sp)
/* 015E38 80124198 AFB30020 */  sw          $s3, 0x20($sp)
/* 015E3C 8012419C AFB2001C */  sw          $s2, 0x1c($sp)
/* 015E40 801241A0 AFB10018 */  sw          $s1, 0x18($sp)
/* 015E44 801241A4 AFB00014 */  sw          $s0, 0x14($sp)
/* 015E48 801241A8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015E4C 801241AC 3C178015 */  lui         $s7, %hi(D_801541F0)
/* 015E50 801241B0 3C158015 */  lui         $s5, %hi(D_801541F4)
/* 015E54 801241B4 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 015E58 801241B8 3C148015 */  lui         $s4, %hi(D_801541F8)
/* 015E5C 801241BC 3C128015 */  lui         $s2, %hi(D_8015418C)
/* 015E60 801241C0 8EF741F0 */  lw          $s7, %lo(D_801541F0)($s7)
/* 015E64 801241C4 8EB541F4 */  lw          $s5, %lo(D_801541F4)($s5)
/* 015E68 801241C8 8E9441F8 */  lw          $s4, %lo(D_801541F8)($s4)
/* 015E6C 801241CC 2652418C */  addiu       $s2, $s2, %lo(D_8015418C)
/* 015E70 801241D0 24130064 */  addiu       $s3, $zero, 0x64
/* 015E74 801241D4 2416FFFF */  addiu       $s6, $zero, -0x1
/* 015E78 801241D8 AFAF003C */  sw          $t7, 0x3c($sp)
/* 015E7C 801241DC 24040099 */  addiu       $a0, $zero, 0x99
.L801241E0:
/* 015E80 801241E0 02A08025 */  move        $s0, $s5
/* 015E84 801241E4 0C00E500 */  jal         func_80039400
/* 015E88 801241E8 00008825 */   move       $s1, $zero
/* 015E8C 801241EC 1A80000E */  blez        $s4, .L80124228
/* 015E90 801241F0 00402825 */   move       $a1, $v0
/* 015E94 801241F4 0250C021 */  addu        $t8, $s2, $s0
.L801241F8:
/* 015E98 801241F8 93190000 */  lbu         $t9, 0x0($t8)
/* 015E9C 801241FC 26310001 */  addiu       $s1, $s1, 0x1
/* 015EA0 80124200 26100001 */  addiu       $s0, $s0, 0x1
/* 015EA4 80124204 14590003 */  bne         $v0, $t9, .L80124214
/* 015EA8 80124208 00000000 */   nop
/* 015EAC 8012420C 10000006 */  b           .L80124228
/* 015EB0 80124210 02C02825 */   move       $a1, $s6
.L80124214:
/* 015EB4 80124214 16130002 */  bne         $s0, $s3, .L80124220
/* 015EB8 80124218 00000000 */   nop
/* 015EBC 8012421C 00008025 */  move        $s0, $zero
.L80124220:
/* 015EC0 80124220 5634FFF5 */  bnel        $s1, $s4, .L801241F8
/* 015EC4 80124224 0250C021 */   addu       $t8, $s2, $s0
.L80124228:
/* 015EC8 80124228 50B6FFED */  beql        $a1, $s6, .L801241E0
/* 015ECC 8012422C 24040099 */   addiu      $a0, $zero, 0x99
/* 015ED0 80124230 02574021 */  addu        $t0, $s2, $s7
/* 015ED4 80124234 26F70001 */  addiu       $s7, $s7, 0x1
/* 015ED8 80124238 16F30002 */  bne         $s7, $s3, .L80124244
/* 015EDC 8012423C A1050000 */   sb         $a1, 0x0($t0)
/* 015EE0 80124240 0000B825 */  move        $s7, $zero
.L80124244:
/* 015EE4 80124244 2A810064 */  slti        $at, $s4, 0x64
/* 015EE8 80124248 50200004 */  beql        $at, $zero, .L8012425C
/* 015EEC 8012424C 26B50001 */   addiu      $s5, $s5, 0x1
/* 015EF0 80124250 10000005 */  b           .L80124268
/* 015EF4 80124254 26940001 */   addiu      $s4, $s4, 0x1
/* 015EF8 80124258 26B50001 */  addiu       $s5, $s5, 0x1
.L8012425C:
/* 015EFC 8012425C 16B30002 */  bne         $s5, $s3, .L80124268
/* 015F00 80124260 00000000 */   nop
/* 015F04 80124264 0000A825 */  move        $s5, $zero
.L80124268:
/* 015F08 80124268 3C018015 */  lui         $at, %hi(D_801541F0)
/* 015F0C 8012426C AC3741F0 */  sw          $s7, %lo(D_801541F0)($at)
/* 015F10 80124270 3C018015 */  lui         $at, %hi(D_801541F4)
/* 015F14 80124274 AC3541F4 */  sw          $s5, %lo(D_801541F4)($at)
/* 015F18 80124278 3C018015 */  lui         $at, %hi(D_801541F8)
/* 015F1C 8012427C AC3441F8 */  sw          $s4, %lo(D_801541F8)($at)
/* 015F20 80124280 0C046573 */  jal         func_801195CC
/* 015F24 80124284 8FA4003C */   lw         $a0, 0x3c($sp)
/* 015F28 80124288 8FBF0034 */  lw          $ra, 0x34($sp)
/* 015F2C 8012428C 8FB00014 */  lw          $s0, 0x14($sp)
/* 015F30 80124290 8FB10018 */  lw          $s1, 0x18($sp)
/* 015F34 80124294 8FB2001C */  lw          $s2, 0x1c($sp)
/* 015F38 80124298 8FB30020 */  lw          $s3, 0x20($sp)
/* 015F3C 8012429C 8FB40024 */  lw          $s4, 0x24($sp)
/* 015F40 801242A0 8FB50028 */  lw          $s5, 0x28($sp)
/* 015F44 801242A4 8FB6002C */  lw          $s6, 0x2c($sp)
/* 015F48 801242A8 8FB70030 */  lw          $s7, 0x30($sp)
/* 015F4C 801242AC 27BD0040 */  addiu       $sp, $sp, 0x40
/* 015F50 801242B0 03E00008 */  jr          $ra
/* 015F54 801242B4 00001025 */   move       $v0, $zero

glabel func_801242B8 # 314
/* 015F58 801242B8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 015F5C 801242BC AFBF0024 */  sw          $ra, 0x24($sp)
/* 015F60 801242C0 AFB00020 */  sw          $s0, 0x20($sp)
/* 015F64 801242C4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 015F68 801242C8 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 015F6C 801242CC 0C046599 */  jal         func_80119664
/* 015F70 801242D0 02002025 */   move       $a0, $s0
/* 015F74 801242D4 AFA2002C */  sw          $v0, 0x2c($sp)
/* 015F78 801242D8 0C046599 */  jal         func_80119664
/* 015F7C 801242DC 02002025 */   move       $a0, $s0
/* 015F80 801242E0 AFA20030 */  sw          $v0, 0x30($sp)
/* 015F84 801242E4 0C0465A3 */  jal         func_8011968C
/* 015F88 801242E8 02002025 */   move       $a0, $s0
/* 015F8C 801242EC E7A00034 */  swc1        $f0, 0x34($sp)
/* 015F90 801242F0 0C0465A3 */  jal         func_8011968C
/* 015F94 801242F4 02002025 */   move       $a0, $s0
/* 015F98 801242F8 E7A00038 */  swc1        $f0, 0x38($sp)
/* 015F9C 801242FC 0C046599 */  jal         func_80119664
/* 015FA0 80124300 02002025 */   move       $a0, $s0
/* 015FA4 80124304 AFA2003C */  sw          $v0, 0x3c($sp)
/* 015FA8 80124308 0C046599 */  jal         func_80119664
/* 015FAC 8012430C 02002025 */   move       $a0, $s0
/* 015FB0 80124310 8FAF0030 */  lw          $t7, 0x30($sp)
/* 015FB4 80124314 8FB8002C */  lw          $t8, 0x2c($sp)
/* 015FB8 80124318 00402025 */  move        $a0, $v0
/* 015FBC 8012431C 8FA5003C */  lw          $a1, 0x3c($sp)
/* 015FC0 80124320 8FA60038 */  lw          $a2, 0x38($sp)
/* 015FC4 80124324 8FA70034 */  lw          $a3, 0x34($sp)
/* 015FC8 80124328 AFAF0010 */  sw          $t7, 0x10($sp)
/* 015FCC 8012432C 0C046E9C */  jal         func_8011BA70
/* 015FD0 80124330 AFB80014 */   sw         $t8, 0x14($sp)
/* 015FD4 80124334 02002025 */  move        $a0, $s0
/* 015FD8 80124338 0C046573 */  jal         func_801195CC
/* 015FDC 8012433C 00402825 */   move       $a1, $v0
/* 015FE0 80124340 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015FE4 80124344 8FB00020 */  lw          $s0, 0x20($sp)
/* 015FE8 80124348 27BD0048 */  addiu       $sp, $sp, 0x48
/* 015FEC 8012434C 03E00008 */  jr          $ra
/* 015FF0 80124350 00001025 */   move       $v0, $zero

glabel func_80124354 # 315
/* 015FF4 80124354 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 015FF8 80124358 AFBF0024 */  sw          $ra, 0x24($sp)
/* 015FFC 8012435C AFB00020 */  sw          $s0, 0x20($sp)
/* 016000 80124360 AFA40040 */  sw          $a0, 0x40($sp)
/* 016004 80124364 8C8F0054 */  lw          $t7, 0x54($a0)
/* 016008 80124368 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 01600C 8012436C 0C0465A3 */  jal         func_8011968C
/* 016010 80124370 02002025 */   move       $a0, $s0
/* 016014 80124374 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 016018 80124378 0C0465A3 */  jal         func_8011968C
/* 01601C 8012437C 02002025 */   move       $a0, $s0
/* 016020 80124380 E7A00030 */  swc1        $f0, 0x30($sp)
/* 016024 80124384 0C046599 */  jal         func_80119664
/* 016028 80124388 02002025 */   move       $a0, $s0
/* 01602C 8012438C AFA20034 */  sw          $v0, 0x34($sp)
/* 016030 80124390 0C046599 */  jal         func_80119664
/* 016034 80124394 02002025 */   move       $a0, $s0
/* 016038 80124398 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 01603C 8012439C 8FA40040 */  lw          $a0, 0x40($sp)
/* 016040 801243A0 00402825 */  move        $a1, $v0
/* 016044 801243A4 8FA60034 */  lw          $a2, 0x34($sp)
/* 016048 801243A8 8FA70030 */  lw          $a3, 0x30($sp)
/* 01604C 801243AC 0C046EBD */  jal         func_8011BAF4
/* 016050 801243B0 E7A40010 */   swc1       $f4, 0x10($sp)
/* 016054 801243B4 02002025 */  move        $a0, $s0
/* 016058 801243B8 0C046573 */  jal         func_801195CC
/* 01605C 801243BC 00402825 */   move       $a1, $v0
/* 016060 801243C0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016064 801243C4 8FB00020 */  lw          $s0, 0x20($sp)
/* 016068 801243C8 27BD0040 */  addiu       $sp, $sp, 0x40
/* 01606C 801243CC 03E00008 */  jr          $ra
/* 016070 801243D0 00001025 */   move       $v0, $zero

glabel func_801243D4 # 316
/* 016074 801243D4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 016078 801243D8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01607C 801243DC AFB00020 */  sw          $s0, 0x20($sp)
/* 016080 801243E0 AFA40040 */  sw          $a0, 0x40($sp)
/* 016084 801243E4 8C8F0054 */  lw          $t7, 0x54($a0)
/* 016088 801243E8 8DF001B8 */  lw          $s0, 0x1b8($t7)
/* 01608C 801243EC 0C0465A3 */  jal         func_8011968C
/* 016090 801243F0 02002025 */   move       $a0, $s0
/* 016094 801243F4 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 016098 801243F8 0C0465A3 */  jal         func_8011968C
/* 01609C 801243FC 02002025 */   move       $a0, $s0
/* 0160A0 80124400 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0160A4 80124404 0C046599 */  jal         func_80119664
/* 0160A8 80124408 02002025 */   move       $a0, $s0
/* 0160AC 8012440C AFA20034 */  sw          $v0, 0x34($sp)
/* 0160B0 80124410 0C046599 */  jal         func_80119664
/* 0160B4 80124414 02002025 */   move       $a0, $s0
/* 0160B8 80124418 C7A4002C */  lwc1        $f4, 0x2c($sp)
/* 0160BC 8012441C 8FA40040 */  lw          $a0, 0x40($sp)
/* 0160C0 80124420 00402825 */  move        $a1, $v0
/* 0160C4 80124424 8FA60034 */  lw          $a2, 0x34($sp)
/* 0160C8 80124428 8FA70030 */  lw          $a3, 0x30($sp)
/* 0160CC 8012442C 0C046EDD */  jal         func_8011BB74
/* 0160D0 80124430 E7A40010 */   swc1       $f4, 0x10($sp)
/* 0160D4 80124434 02002025 */  move        $a0, $s0
/* 0160D8 80124438 0C046573 */  jal         func_801195CC
/* 0160DC 8012443C 00402825 */   move       $a1, $v0
/* 0160E0 80124440 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0160E4 80124444 8FB00020 */  lw          $s0, 0x20($sp)
/* 0160E8 80124448 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0160EC 8012444C 03E00008 */  jr          $ra
/* 0160F0 80124450 00001025 */   move       $v0, $zero

glabel func_80124454 # 317
/* 0160F4 80124454 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0160F8 80124458 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0160FC 8012445C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016100 80124460 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016104 80124464 0C04723A */  jal         func_8011C8E8
/* 016108 80124468 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01610C 8012446C 44050000 */  mfc1        $a1, $f0
/* 016110 80124470 0C04657F */  jal         func_801195FC
/* 016114 80124474 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016118 80124478 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01611C 8012447C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016120 80124480 00001025 */  move        $v0, $zero
/* 016124 80124484 03E00008 */  jr          $ra
/* 016128 80124488 00000000 */   nop

glabel func_8012448C # 318
/* 01612C 8012448C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016130 80124490 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016134 80124494 AFA40020 */  sw          $a0, 0x20($sp)
/* 016138 80124498 8C8F0054 */  lw          $t7, 0x54($a0)
/* 01613C 8012449C 8DE401B8 */  lw          $a0, 0x1b8($t7)
/* 016140 801244A0 0C046599 */  jal         func_80119664
/* 016144 801244A4 AFA4001C */   sw         $a0, 0x1c($sp)
/* 016148 801244A8 8FA40020 */  lw          $a0, 0x20($sp)
/* 01614C 801244AC 0C047273 */  jal         func_8011C9CC
/* 016150 801244B0 00402825 */   move       $a1, $v0
/* 016154 801244B4 44050000 */  mfc1        $a1, $f0
/* 016158 801244B8 0C04657F */  jal         func_801195FC
/* 01615C 801244BC 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016160 801244C0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016164 801244C4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016168 801244C8 00001025 */  move        $v0, $zero
/* 01616C 801244CC 03E00008 */  jr          $ra
/* 016170 801244D0 00000000 */   nop

glabel func_801244D4 # 319
/* 016174 801244D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016178 801244D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01617C 801244DC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016180 801244E0 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016184 801244E4 0C0465A3 */  jal         func_8011968C
/* 016188 801244E8 AFA4001C */   sw         $a0, 0x1c($sp)
/* 01618C 801244EC E7A00018 */  swc1        $f0, 0x18($sp)
/* 016190 801244F0 0C046599 */  jal         func_80119664
/* 016194 801244F4 8FA4001C */   lw         $a0, 0x1c($sp)
/* 016198 801244F8 0C04701F */  jal         func_8011C07C
/* 01619C 801244FC 00402025 */   move       $a0, $v0
/* 0161A0 80124500 10400003 */  beqz        $v0, .L80124510
/* 0161A4 80124504 00402025 */   move       $a0, $v0
/* 0161A8 80124508 0C045A5E */  jal         func_80116978
/* 0161AC 8012450C 8FA50018 */   lw         $a1, 0x18($sp)
.L80124510:
/* 0161B0 80124510 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0161B4 80124514 0C046573 */  jal         func_801195CC
/* 0161B8 80124518 00002825 */   move       $a1, $zero
/* 0161BC 8012451C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0161C0 80124520 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0161C4 80124524 00001025 */  move        $v0, $zero
/* 0161C8 80124528 03E00008 */  jr          $ra
/* 0161CC 8012452C 00000000 */   nop

glabel func_80124530 # 320
/* 0161D0 80124530 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0161D4 80124534 3C028007 */  lui         $v0, %hi(D_80070010)
/* 0161D8 80124538 8C420010 */  lw          $v0, %lo(D_80070010)($v0)
/* 0161DC 8012453C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0161E0 80124540 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0161E4 80124544 97A50018 */  lhu         $a1, 0x18($sp)
/* 0161E8 80124548 04410003 */  bgez        $v0, .L80124558
/* 0161EC 8012454C 8DC601B8 */   lw         $a2, 0x1b8($t6)
/* 0161F0 80124550 10000001 */  b           .L80124558
/* 0161F4 80124554 00002825 */   move       $a1, $zero
.L80124558:
/* 0161F8 80124558 0C046573 */  jal         func_801195CC
/* 0161FC 8012455C 00C02025 */   move       $a0, $a2
/* 016200 80124560 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016204 80124564 27BD0040 */  addiu       $sp, $sp, 0x40
/* 016208 80124568 00001025 */  move        $v0, $zero
/* 01620C 8012456C 03E00008 */  jr          $ra
/* 016210 80124570 00000000 */   nop

glabel func_80124574 # 321
/* 016214 80124574 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016218 80124578 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01621C 8012457C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016220 80124580 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016224 80124584 0C00A217 */  jal         func_8002885C
/* 016228 80124588 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01622C 8012458C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016230 80124590 0C046573 */  jal         func_801195CC
/* 016234 80124594 00402825 */   move       $a1, $v0
/* 016238 80124598 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01623C 8012459C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016240 801245A0 00001025 */  move        $v0, $zero
/* 016244 801245A4 03E00008 */  jr          $ra
/* 016248 801245A8 00000000 */   nop

glabel func_801245AC # 322
/* 01624C 801245AC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016250 801245B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016254 801245B4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016258 801245B8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01625C 801245BC 0C00A245 */  jal         func_80028914
/* 016260 801245C0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 016264 801245C4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016268 801245C8 0C046573 */  jal         func_801195CC
/* 01626C 801245CC 00402825 */   move       $a1, $v0
/* 016270 801245D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016274 801245D4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016278 801245D8 00001025 */  move        $v0, $zero
/* 01627C 801245DC 03E00008 */  jr          $ra
/* 016280 801245E0 00000000 */   nop

glabel func_801245E4 # 323
/* 016284 801245E4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016288 801245E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01628C 801245EC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016290 801245F0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016294 801245F4 0C04615E */  jal         func_80118578
/* 016298 801245F8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01629C 801245FC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0162A0 80124600 0C046573 */  jal         func_801195CC
/* 0162A4 80124604 00402825 */   move       $a1, $v0
/* 0162A8 80124608 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0162AC 8012460C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0162B0 80124610 00001025 */  move        $v0, $zero
/* 0162B4 80124614 03E00008 */  jr          $ra
/* 0162B8 80124618 00000000 */   nop

glabel func_8012461C # 324
/* 0162BC 8012461C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0162C0 80124620 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0162C4 80124624 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0162C8 80124628 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0162CC 8012462C 0C04672E */  jal         func_80119CB8
/* 0162D0 80124630 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0162D4 80124634 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0162D8 80124638 0C046573 */  jal         func_801195CC
/* 0162DC 8012463C 00002825 */   move       $a1, $zero
/* 0162E0 80124640 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0162E4 80124644 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0162E8 80124648 00001025 */  move        $v0, $zero
/* 0162EC 8012464C 03E00008 */  jr          $ra
/* 0162F0 80124650 00000000 */   nop

glabel func_80124654 # 325
/* 0162F4 80124654 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0162F8 80124658 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0162FC 8012465C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016300 80124660 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016304 80124664 0C00CA75 */  jal         func_800329D4
/* 016308 80124668 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01630C 8012466C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016310 80124670 0C046573 */  jal         func_801195CC
/* 016314 80124674 00402825 */   move       $a1, $v0
/* 016318 80124678 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01631C 8012467C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016320 80124680 00001025 */  move        $v0, $zero
/* 016324 80124684 03E00008 */  jr          $ra
/* 016328 80124688 00000000 */   nop

glabel func_8012468C # 326
/* 01632C 8012468C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016330 80124690 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016334 80124694 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016338 80124698 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01633C 8012469C 0C00CA84 */  jal         func_80032A10
/* 016340 801246A0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 016344 801246A4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016348 801246A8 0C046573 */  jal         func_801195CC
/* 01634C 801246AC 00002825 */   move       $a1, $zero
/* 016350 801246B0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016354 801246B4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016358 801246B8 00001025 */  move        $v0, $zero
/* 01635C 801246BC 03E00008 */  jr          $ra
/* 016360 801246C0 00000000 */   nop

glabel func_801246C4 # 327
/* 016364 801246C4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016368 801246C8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01636C 801246CC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016370 801246D0 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 016374 801246D4 0C00CA92 */  jal         func_80032A48
/* 016378 801246D8 AFAF001C */   sw         $t7, 0x1c($sp)
/* 01637C 801246DC 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016380 801246E0 0C046573 */  jal         func_801195CC
/* 016384 801246E4 00002825 */   move       $a1, $zero
/* 016388 801246E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01638C 801246EC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016390 801246F0 00001025 */  move        $v0, $zero
/* 016394 801246F4 03E00008 */  jr          $ra
/* 016398 801246F8 00000000 */   nop

glabel func_801246FC # 328
/* 01639C 801246FC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0163A0 80124700 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0163A4 80124704 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0163A8 80124708 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 0163AC 8012470C 0C00CAB0 */  jal         func_80032AC0
/* 0163B0 80124710 AFAF001C */   sw         $t7, 0x1c($sp)
/* 0163B4 80124714 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0163B8 80124718 0C046573 */  jal         func_801195CC
/* 0163BC 8012471C 00402825 */   move       $a1, $v0
/* 0163C0 80124720 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0163C4 80124724 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0163C8 80124728 00001025 */  move        $v0, $zero
/* 0163CC 8012472C 03E00008 */  jr          $ra
/* 0163D0 80124730 00000000 */   nop

glabel func_80124734 # 329
/* 0163D4 80124734 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 0163D8 80124738 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0163DC 8012473C AFB00020 */  sw          $s0, 0x20($sp)
/* 0163E0 80124740 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0163E4 80124744 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0163E8 80124748 0C046599 */  jal         func_80119664
/* 0163EC 8012474C AFA40054 */   sw         $a0, 0x54($sp)
/* 0163F0 80124750 0C001A23 */  jal         func_8000688C
/* 0163F4 80124754 00402025 */   move       $a0, $v0
/* 0163F8 80124758 10400043 */  beqz        $v0, .L80124868
/* 0163FC 8012475C 00408025 */   move       $s0, $v0
/* 016400 80124760 944F0034 */  lhu         $t7, 0x34($v0)
/* 016404 80124764 24010088 */  addiu       $at, $zero, 0x88
/* 016408 80124768 55E10040 */  bnel        $t7, $at, .L8012486C
/* 01640C 8012476C 8FA40054 */   lw         $a0, 0x54($sp)
/* 016410 80124770 C4440044 */  lwc1        $f4, 0x44($v0)
/* 016414 80124774 3C013F00 */  lui         $at, 0x3f00
/* 016418 80124778 44810000 */  mtc1        $at, $f0
/* 01641C 8012477C E7A4003C */  swc1        $f4, 0x3c($sp)
/* 016420 80124780 C4460048 */  lwc1        $f6, 0x48($v0)
/* 016424 80124784 3C013F80 */  lui         $at, 0x3f80
/* 016428 80124788 44811000 */  mtc1        $at, $f2
/* 01642C 8012478C E7A60040 */  swc1        $f6, 0x40($sp)
/* 016430 80124790 C448004C */  lwc1        $f8, 0x4c($v0)
/* 016434 80124794 3C028013 */  lui         $v0, %hi(D_80137EE4)
/* 016438 80124798 8C427EE4 */  lw          $v0, %lo(D_80137EE4)($v0)
/* 01643C 8012479C E7A80044 */  swc1        $f8, 0x44($sp)
/* 016440 801247A0 C60A0024 */  lwc1        $f10, 0x24($s0)
/* 016444 801247A4 C450000C */  lwc1        $f16, 0xc($v0)
/* 016448 801247A8 C7A6003C */  lwc1        $f6, 0x3c($sp)
/* 01644C 801247AC 00002025 */  move        $a0, $zero
/* 016450 801247B0 46105482 */  mul.s       $f18, $f10, $f16
/* 016454 801247B4 27A50030 */  addiu       $a1, $sp, 0x30
/* 016458 801247B8 3C064040 */  lui         $a2, 0x4040
/* 01645C 801247BC 00003825 */  move        $a3, $zero
/* 016460 801247C0 46009102 */  mul.s       $f4, $f18, $f0
/* 016464 801247C4 46043200 */  add.s       $f8, $f6, $f4
/* 016468 801247C8 C7A40044 */  lwc1        $f4, 0x44($sp)
/* 01646C 801247CC E7A8003C */  swc1        $f8, 0x3c($sp)
/* 016470 801247D0 C60A0024 */  lwc1        $f10, 0x24($s0)
/* 016474 801247D4 C450000C */  lwc1        $f16, 0xc($v0)
/* 016478 801247D8 E7A80030 */  swc1        $f8, 0x30($sp)
/* 01647C 801247DC AFA00010 */  sw          $zero, 0x10($sp)
/* 016480 801247E0 46105482 */  mul.s       $f18, $f10, $f16
/* 016484 801247E4 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 016488 801247E8 E7B00034 */  swc1        $f16, 0x34($sp)
/* 01648C 801247EC 46009182 */  mul.s       $f6, $f18, $f0
/* 016490 801247F0 46024480 */  add.s       $f18, $f8, $f2
/* 016494 801247F4 E7B20030 */  swc1        $f18, 0x30($sp)
/* 016498 801247F8 46062280 */  add.s       $f10, $f4, $f6
/* 01649C 801247FC 44803000 */  mtc1        $zero, $f6
/* 0164A0 80124800 46025100 */  add.s       $f4, $f10, $f2
/* 0164A4 80124804 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 0164A8 80124808 E7AA0044 */  swc1        $f10, 0x44($sp)
/* 0164AC 8012480C E7A60014 */  swc1        $f6, 0x14($sp)
/* 0164B0 80124810 0C005E18 */  jal         func_80017860
/* 0164B4 80124814 E7A40038 */   swc1       $f4, 0x38($sp)
/* 0164B8 80124818 0C04451B */  jal         func_8011146C
/* 0164BC 8012481C 02002025 */   move       $a0, $s0
/* 0164C0 80124820 3C013F80 */  lui         $at, 0x3f80
/* 0164C4 80124824 44816000 */  mtc1        $at, $f12
/* 0164C8 80124828 C7A0003C */  lwc1        $f0, 0x3c($sp)
/* 0164CC 8012482C C7A20044 */  lwc1        $f2, 0x44($sp)
/* 0164D0 80124830 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 0164D4 80124834 460C0001 */  sub.s       $f0, $f0, $f12
/* 0164D8 80124838 44804000 */  mtc1        $zero, $f8
/* 0164DC 8012483C 00002025 */  move        $a0, $zero
/* 0164E0 80124840 460C1081 */  sub.s       $f2, $f2, $f12
/* 0164E4 80124844 E7A00030 */  swc1        $f0, 0x30($sp)
/* 0164E8 80124848 27A5003C */  addiu       $a1, $sp, 0x3c
/* 0164EC 8012484C 3C064040 */  lui         $a2, 0x4040
/* 0164F0 80124850 E7A20038 */  swc1        $f2, 0x38($sp)
/* 0164F4 80124854 00003825 */  move        $a3, $zero
/* 0164F8 80124858 AFA00010 */  sw          $zero, 0x10($sp)
/* 0164FC 8012485C E7B00034 */  swc1        $f16, 0x34($sp)
/* 016500 80124860 0C005E18 */  jal         func_80017860
/* 016504 80124864 E7A80014 */   swc1       $f8, 0x14($sp)
.L80124868:
/* 016508 80124868 8FA40054 */  lw          $a0, 0x54($sp)
.L8012486C:
/* 01650C 8012486C 0C046573 */  jal         func_801195CC
/* 016510 80124870 00002825 */   move       $a1, $zero
/* 016514 80124874 8FBF0024 */  lw          $ra, 0x24($sp)
/* 016518 80124878 8FB00020 */  lw          $s0, 0x20($sp)
/* 01651C 8012487C 27BD0058 */  addiu       $sp, $sp, 0x58
/* 016520 80124880 03E00008 */  jr          $ra
/* 016524 80124884 00001025 */   move       $v0, $zero

glabel func_80124888 # 330
/* 016528 80124888 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01652C 8012488C AFBF0024 */  sw          $ra, 0x24($sp)
/* 016530 80124890 AFB00020 */  sw          $s0, 0x20($sp)
/* 016534 80124894 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016538 80124898 8DD001B8 */  lw          $s0, 0x1b8($t6)
/* 01653C 8012489C 0C0465A3 */  jal         func_8011968C
/* 016540 801248A0 02002025 */   move       $a0, $s0
/* 016544 801248A4 E7A00030 */  swc1        $f0, 0x30($sp)
/* 016548 801248A8 0C0465A3 */  jal         func_8011968C
/* 01654C 801248AC 02002025 */   move       $a0, $s0
/* 016550 801248B0 E7A00034 */  swc1        $f0, 0x34($sp)
/* 016554 801248B4 0C0465A3 */  jal         func_8011968C
/* 016558 801248B8 02002025 */   move       $a0, $s0
/* 01655C 801248BC E7A00038 */  swc1        $f0, 0x38($sp)
/* 016560 801248C0 0C046599 */  jal         func_80119664
/* 016564 801248C4 02002025 */   move       $a0, $s0
/* 016568 801248C8 AFA2003C */  sw          $v0, 0x3c($sp)
/* 01656C 801248CC 0C046599 */  jal         func_80119664
/* 016570 801248D0 02002025 */   move       $a0, $s0
/* 016574 801248D4 0C04701F */  jal         func_8011C07C
/* 016578 801248D8 00402025 */   move       $a0, $v0
/* 01657C 801248DC 1040000D */  beqz        $v0, .L80124914
/* 016580 801248E0 00402025 */   move       $a0, $v0
/* 016584 801248E4 8FA50038 */  lw          $a1, 0x38($sp)
/* 016588 801248E8 3C0642C8 */  lui         $a2, 0x42c8
/* 01658C 801248EC 3C07447A */  lui         $a3, 0x447a
/* 016590 801248F0 0C0460D7 */  jal         func_8011835C
/* 016594 801248F4 AFA2002C */   sw         $v0, 0x2c($sp)
/* 016598 801248F8 8FAF002C */  lw          $t7, 0x2c($sp)
/* 01659C 801248FC 8FA4003C */  lw          $a0, 0x3c($sp)
/* 0165A0 80124900 8FA50038 */  lw          $a1, 0x38($sp)
/* 0165A4 80124904 8FA60034 */  lw          $a2, 0x34($sp)
/* 0165A8 80124908 8FA70030 */  lw          $a3, 0x30($sp)
/* 0165AC 8012490C 0C005FCC */  jal         func_80017F30
/* 0165B0 80124910 AFAF0010 */   sw         $t7, 0x10($sp)
.L80124914:
/* 0165B4 80124914 02002025 */  move        $a0, $s0
/* 0165B8 80124918 0C046573 */  jal         func_801195CC
/* 0165BC 8012491C 00002825 */   move       $a1, $zero
/* 0165C0 80124920 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0165C4 80124924 8FB00020 */  lw          $s0, 0x20($sp)
/* 0165C8 80124928 27BD0048 */  addiu       $sp, $sp, 0x48
/* 0165CC 8012492C 03E00008 */  jr          $ra
/* 0165D0 80124930 00001025 */   move       $v0, $zero

glabel func_80124934 # 331
/* 0165D4 80124934 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0165D8 80124938 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0165DC 8012493C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0165E0 80124940 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0165E4 80124944 0C046599 */  jal         func_80119664
/* 0165E8 80124948 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0165EC 8012494C 000278C0 */  sll         $t7, $v0, 3
/* 0165F0 80124950 01E27823 */  subu        $t7, $t7, $v0
/* 0165F4 80124954 000F7880 */  sll         $t7, $t7, 2
/* 0165F8 80124958 01E27821 */  addu        $t7, $t7, $v0
/* 0165FC 8012495C 000F7880 */  sll         $t7, $t7, 2
/* 016600 80124960 3C058013 */  lui         $a1, %hi(D_8012932C)
/* 016604 80124964 00AF2821 */  addu        $a1, $a1, $t7
/* 016608 80124968 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01660C 8012496C 0C046573 */  jal         func_801195CC
/* 016610 80124970 8CA5932C */   lw         $a1, %lo(D_8012932C)($a1)
/* 016614 80124974 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016618 80124978 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01661C 8012497C 00001025 */  move        $v0, $zero
/* 016620 80124980 03E00008 */  jr          $ra
/* 016624 80124984 00000000 */   nop

glabel func_80124988 # 332
/* 016628 80124988 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01662C 8012498C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016630 80124990 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016634 80124994 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016638 80124998 0C046599 */  jal         func_80119664
/* 01663C 8012499C AFA40024 */   sw         $a0, 0x24($sp)
/* 016640 801249A0 AFA2001C */  sw          $v0, 0x1c($sp)
/* 016644 801249A4 0C046599 */  jal         func_80119664
/* 016648 801249A8 8FA40024 */   lw         $a0, 0x24($sp)
/* 01664C 801249AC 00402025 */  move        $a0, $v0
/* 016650 801249B0 0C046163 */  jal         func_8011858C
/* 016654 801249B4 8FA5001C */   lw         $a1, 0x1c($sp)
/* 016658 801249B8 8FA40024 */  lw          $a0, 0x24($sp)
/* 01665C 801249BC 0C046573 */  jal         func_801195CC
/* 016660 801249C0 00402825 */   move       $a1, $v0
/* 016664 801249C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016668 801249C8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01666C 801249CC 00001025 */  move        $v0, $zero
/* 016670 801249D0 03E00008 */  jr          $ra
/* 016674 801249D4 00000000 */   nop

glabel func_801249D8 # 333
/* 016678 801249D8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01667C 801249DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 016680 801249E0 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016684 801249E4 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016688 801249E8 0C046599 */  jal         func_80119664
/* 01668C 801249EC AFA4001C */   sw         $a0, 0x1c($sp)
/* 016690 801249F0 0C046176 */  jal         func_801185D8
/* 016694 801249F4 00402025 */   move       $a0, $v0
/* 016698 801249F8 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01669C 801249FC 0C046573 */  jal         func_801195CC
/* 0166A0 80124A00 00402825 */   move       $a1, $v0
/* 0166A4 80124A04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0166A8 80124A08 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0166AC 80124A0C 00001025 */  move        $v0, $zero
/* 0166B0 80124A10 03E00008 */  jr          $ra
/* 0166B4 80124A14 00000000 */   nop

glabel func_80124A18 # 334
/* 0166B8 80124A18 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0166BC 80124A1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0166C0 80124A20 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0166C4 80124A24 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0166C8 80124A28 0C046599 */  jal         func_80119664
/* 0166CC 80124A2C AFA4001C */   sw         $a0, 0x1c($sp)
/* 0166D0 80124A30 0C04617F */  jal         func_801185FC
/* 0166D4 80124A34 00402025 */   move       $a0, $v0
/* 0166D8 80124A38 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0166DC 80124A3C 0C046573 */  jal         func_801195CC
/* 0166E0 80124A40 00402825 */   move       $a1, $v0
/* 0166E4 80124A44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0166E8 80124A48 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0166EC 80124A4C 00001025 */  move        $v0, $zero
/* 0166F0 80124A50 03E00008 */  jr          $ra
/* 0166F4 80124A54 00000000 */   nop

glabel func_80124A58 # 335
/* 0166F8 80124A58 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0166FC 80124A5C AFBF0014 */  sw          $ra, 0x14($sp)
/* 016700 80124A60 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016704 80124A64 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 016708 80124A68 0C046599 */  jal         func_80119664
/* 01670C 80124A6C AFA4001C */   sw         $a0, 0x1c($sp)
/* 016710 80124A70 0C04701F */  jal         func_8011C07C
/* 016714 80124A74 00402025 */   move       $a0, $v0
/* 016718 80124A78 10400008 */  beqz        $v0, .L80124A9C
/* 01671C 80124A7C 00402025 */   move       $a0, $v0
/* 016720 80124A80 0C045D9D */  jal         func_80117674
/* 016724 80124A84 24050001 */   addiu      $a1, $zero, 0x1
/* 016728 80124A88 8FA4001C */  lw          $a0, 0x1c($sp)
/* 01672C 80124A8C 0C046573 */  jal         func_801195CC
/* 016730 80124A90 00402825 */   move       $a1, $v0
/* 016734 80124A94 10000005 */  b           .L80124AAC
/* 016738 80124A98 8FBF0014 */   lw         $ra, 0x14($sp)
.L80124A9C:
/* 01673C 80124A9C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016740 80124AA0 0C046573 */  jal         func_801195CC
/* 016744 80124AA4 00002825 */   move       $a1, $zero
/* 016748 80124AA8 8FBF0014 */  lw          $ra, 0x14($sp)
.L80124AAC:
/* 01674C 80124AAC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016750 80124AB0 00001025 */  move        $v0, $zero
/* 016754 80124AB4 03E00008 */  jr          $ra
/* 016758 80124AB8 00000000 */   nop

glabel func_80124ABC # 336
/* 01675C 80124ABC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016760 80124AC0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 016764 80124AC4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 016768 80124AC8 8DCF01B8 */  lw          $t7, 0x1b8($t6)
/* 01676C 80124ACC 0C003745 */  jal         func_8000DD14
/* 016770 80124AD0 AFAF001C */   sw         $t7, 0x1c($sp)
/* 016774 80124AD4 8FA4001C */  lw          $a0, 0x1c($sp)
/* 016778 80124AD8 0C046573 */  jal         func_801195CC
/* 01677C 80124ADC 00002825 */   move       $a1, $zero
/* 016780 80124AE0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 016784 80124AE4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016788 80124AE8 00001025 */  move        $v0, $zero
/* 01678C 80124AEC 03E00008 */  jr          $ra
/* 016790 80124AF0 00000000 */   nop

glabel func_80124AF4 # 337
/* 016794 80124AF4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016798 80124AF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01679C 80124AFC 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0167A0 80124B00 8DC401B8 */  lw          $a0, 0x1b8($t6)
/* 0167A4 80124B04 0C046599 */  jal         func_80119664
/* 0167A8 80124B08 AFA4001C */   sw         $a0, 0x1c($sp)
/* 0167AC 80124B0C 3C04800F */  lui         $a0, %hi(D_800F3E20)
/* 0167B0 80124B10 24843E20 */  addiu       $a0, $a0, %lo(D_800F3E20)
/* 0167B4 80124B14 0C0456FB */  jal         func_80115BEC
/* 0167B8 80124B18 00402825 */   move       $a1, $v0
/* 0167BC 80124B1C 8FA4001C */  lw          $a0, 0x1c($sp)
/* 0167C0 80124B20 0C046573 */  jal         func_801195CC
/* 0167C4 80124B24 00402825 */   move       $a1, $v0
/* 0167C8 80124B28 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0167CC 80124B2C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0167D0 80124B30 00001025 */  move        $v0, $zero
/* 0167D4 80124B34 03E00008 */  jr          $ra
/* 0167D8 80124B38 00000000 */   nop
/* 0167DC 80124B3C 00000000 */  nop
