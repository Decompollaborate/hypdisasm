.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8002EB60 # 0
/* 02E710 8002EB60 03E00008 */  jr          $ra
/* 02E714 8002EB64 AFA40000 */   sw         $a0, 0x0($sp)

glabel func_8002EB68 # 1
/* 02E718 8002EB68 3C02800F */  lui         $v0, %hi(D_800EF6A0)
/* 02E71C 8002EB6C 2442F6A0 */  addiu       $v0, $v0, %lo(D_800EF6A0)
/* 02E720 8002EB70 C4440010 */  lwc1        $f4, 0x10($v0)
/* 02E724 8002EB74 C4460014 */  lwc1        $f6, 0x14($v0)
/* 02E728 8002EB78 C44A000C */  lwc1        $f10, 0xc($v0)
/* 02E72C 8002EB7C C4500018 */  lwc1        $f16, 0x18($v0)
/* 02E730 8002EB80 46062200 */  add.s       $f8, $f4, $f6
/* 02E734 8002EB84 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 02E738 8002EB88 AFA50054 */  sw          $a1, 0x54($sp)
/* 02E73C 8002EB8C 46105480 */  add.s       $f18, $f10, $f16
/* 02E740 8002EB90 AFA60058 */  sw          $a2, 0x58($sp)
/* 02E744 8002EB94 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02E748 8002EB98 AFA40050 */  sw          $a0, 0x50($sp)
/* 02E74C 8002EB9C 44069000 */  mfc1        $a2, $f18
/* 02E750 8002EBA0 44054000 */  mfc1        $a1, $f8
/* 02E754 8002EBA4 27A4001C */  addiu       $a0, $sp, 0x1c
/* 02E758 8002EBA8 0C00E665 */  jal         func_80039994
/* 02E75C 8002EBAC 24070000 */   addiu      $a3, $zero, 0x0
/* 02E760 8002EBB0 27A4001C */  addiu       $a0, $sp, 0x1c
/* 02E764 8002EBB4 8FA50054 */  lw          $a1, 0x54($sp)
/* 02E768 8002EBB8 8FA60058 */  lw          $a2, 0x58($sp)
/* 02E76C 8002EBBC 0C00E623 */  jal         func_8003988C
/* 02E770 8002EBC0 24070000 */   addiu      $a3, $zero, 0x0
/* 02E774 8002EBC4 8FA20050 */  lw          $v0, 0x50($sp)
/* 02E778 8002EBC8 27A4001C */  addiu       $a0, $sp, 0x1c
/* 02E77C 8002EBCC 2445000C */  addiu       $a1, $v0, 0xc
/* 02E780 8002EBD0 24460010 */  addiu       $a2, $v0, 0x10
/* 02E784 8002EBD4 0C00EDD9 */  jal         func_8003B764
/* 02E788 8002EBD8 24470014 */   addiu      $a3, $v0, 0x14
/* 02E78C 8002EBDC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02E790 8002EBE0 27BD0050 */  addiu       $sp, $sp, 0x50
/* 02E794 8002EBE4 03E00008 */  jr          $ra
/* 02E798 8002EBE8 00000000 */   nop

glabel func_8002EBEC # 2
/* 02E79C 8002EBEC 44856000 */  mtc1        $a1, $f12
/* 02E7A0 8002EBF0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02E7A4 8002EBF4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02E7A8 8002EBF8 0C001FA3 */  jal         func_80007E8C
/* 02E7AC 8002EBFC E7AC001C */   swc1       $f12, 0x1c($sp)
/* 02E7B0 8002EC00 C7AC001C */  lwc1        $f12, 0x1c($sp)
/* 02E7B4 8002EC04 10400017 */  beq         $v0, $zero, .L8002EC64
/* 02E7B8 8002EC08 00402025 */   move       $a0, $v0
/* 02E7BC 8002EC0C 944E0034 */  lhu         $t6, 0x34($v0)
/* 02E7C0 8002EC10 24010086 */  addiu       $at, $zero, 0x86
/* 02E7C4 8002EC14 3C038013 */  lui         $v1, %hi(D_80133DE4)
/* 02E7C8 8002EC18 15C10006 */  bne         $t6, $at, .L8002EC34
/* 02E7CC 8002EC1C 24633DE4 */   addiu      $v1, $v1, %lo(D_80133DE4)
/* 02E7D0 8002EC20 44056000 */  mfc1        $a1, $f12
/* 02E7D4 8002EC24 0C044CD2 */  jal         func_80113348
/* 02E7D8 8002EC28 00000000 */   nop
/* 02E7DC 8002EC2C 1000000E */  b           .L8002EC68
/* 02E7E0 8002EC30 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002EC34:
/* 02E7E4 8002EC34 8C6F0000 */  lw          $t7, 0x0($v1)
/* 02E7E8 8002EC38 C5E4000C */  lwc1        $f4, 0xc($t7)
/* 02E7EC 8002EC3C 460C2182 */  mul.s       $f6, $f4, $f12
/* 02E7F0 8002EC40 E4460000 */  swc1        $f6, 0x0($v0)
/* 02E7F4 8002EC44 8C780000 */  lw          $t8, 0x0($v1)
/* 02E7F8 8002EC48 C708000C */  lwc1        $f8, 0xc($t8)
/* 02E7FC 8002EC4C 460C4282 */  mul.s       $f10, $f8, $f12
/* 02E800 8002EC50 E44A0004 */  swc1        $f10, 0x4($v0)
/* 02E804 8002EC54 8C790000 */  lw          $t9, 0x0($v1)
/* 02E808 8002EC58 C730000C */  lwc1        $f16, 0xc($t9)
/* 02E80C 8002EC5C 460C8482 */  mul.s       $f18, $f16, $f12
/* 02E810 8002EC60 E4520008 */  swc1        $f18, 0x8($v0)
.L8002EC64:
/* 02E814 8002EC64 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002EC68:
/* 02E818 8002EC68 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02E81C 8002EC6C 03E00008 */  jr          $ra
/* 02E820 8002EC70 00000000 */   nop

glabel func_8002EC74 # 3
/* 02E824 8002EC74 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 02E828 8002EC78 AFBF0034 */  sw          $ra, 0x34($sp)
/* 02E82C 8002EC7C AFB30030 */  sw          $s3, 0x30($sp)
/* 02E830 8002EC80 AFB2002C */  sw          $s2, 0x2c($sp)
/* 02E834 8002EC84 AFB10028 */  sw          $s1, 0x28($sp)
/* 02E838 8002EC88 AFB00024 */  sw          $s0, 0x24($sp)
/* 02E83C 8002EC8C F7B60018 */  sdc1        $f22, 0x18($sp)
/* 02E840 8002EC90 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 02E844 8002EC94 8C8E0014 */  lw          $t6, 0x14($a0)
/* 02E848 8002EC98 3C01800A */  lui         $at, %hi(D_800A5F54)
/* 02E84C 8002EC9C C4365F54 */  lwc1        $f22, %lo(D_800A5F54)($at)
/* 02E850 8002ECA0 000E7880 */  sll         $t7, $t6, 2
/* 02E854 8002ECA4 01EE7821 */  addu        $t7, $t7, $t6
/* 02E858 8002ECA8 000F7900 */  sll         $t7, $t7, 4
/* 02E85C 8002ECAC 3C013F00 */  lui         $at, 0x3f00
/* 02E860 8002ECB0 008F1021 */  addu        $v0, $a0, $t7
/* 02E864 8002ECB4 4481A000 */  mtc1        $at, $f20
/* 02E868 8002ECB8 00809825 */  move        $s3, $a0
/* 02E86C 8002ECBC 24510028 */  addiu       $s1, $v0, 0x28
/* 02E870 8002ECC0 00008025 */  move        $s0, $zero
/* 02E874 8002ECC4 2412000A */  addiu       $s2, $zero, 0xa
.L8002ECC8:
/* 02E878 8002ECC8 8E220004 */  lw          $v0, 0x4($s1)
/* 02E87C 8002ECCC 0010C080 */  sll         $t8, $s0, 2
/* 02E880 8002ECD0 0278C821 */  addu        $t9, $s3, $t8
/* 02E884 8002ECD4 14400003 */  bne         $v0, $zero, .L8002ECE4
/* 02E888 8002ECD8 00402025 */   move       $a0, $v0
/* 02E88C 8002ECDC 10000001 */  b           .L8002ECE4
/* 02E890 8002ECE0 8F2400C8 */   lw         $a0, 0xc8($t9)
.L8002ECE4:
/* 02E894 8002ECE4 56000007 */  bnel        $s0, $zero, .L8002ED04
/* 02E898 8002ECE8 4405B000 */   mfc1       $a1, $f22
/* 02E89C 8002ECEC 4405A000 */  mfc1        $a1, $f20
/* 02E8A0 8002ECF0 0C00BAFB */  jal         func_8002EBEC
/* 02E8A4 8002ECF4 00000000 */   nop
/* 02E8A8 8002ECF8 10000005 */  b           .L8002ED10
/* 02E8AC 8002ECFC 26100001 */   addiu      $s0, $s0, 0x1
/* 02E8B0 8002ED00 4405B000 */  mfc1        $a1, $f22
.L8002ED04:
/* 02E8B4 8002ED04 0C00BAFB */  jal         func_8002EBEC
/* 02E8B8 8002ED08 00000000 */   nop
/* 02E8BC 8002ED0C 26100001 */  addiu       $s0, $s0, 0x1
.L8002ED10:
/* 02E8C0 8002ED10 1612FFED */  bne         $s0, $s2, .L8002ECC8
/* 02E8C4 8002ED14 26310008 */   addiu      $s1, $s1, 0x8
/* 02E8C8 8002ED18 8FBF0034 */  lw          $ra, 0x34($sp)
/* 02E8CC 8002ED1C D7B40010 */  ldc1        $f20, 0x10($sp)
/* 02E8D0 8002ED20 D7B60018 */  ldc1        $f22, 0x18($sp)
/* 02E8D4 8002ED24 8FB00024 */  lw          $s0, 0x24($sp)
/* 02E8D8 8002ED28 8FB10028 */  lw          $s1, 0x28($sp)
/* 02E8DC 8002ED2C 8FB2002C */  lw          $s2, 0x2c($sp)
/* 02E8E0 8002ED30 8FB30030 */  lw          $s3, 0x30($sp)
/* 02E8E4 8002ED34 03E00008 */  jr          $ra
/* 02E8E8 8002ED38 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8002ED3C # 4
/* 02E8EC 8002ED3C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02E8F0 8002ED40 AFB30020 */  sw          $s3, 0x20($sp)
/* 02E8F4 8002ED44 AFB10018 */  sw          $s1, 0x18($sp)
/* 02E8F8 8002ED48 AFB00014 */  sw          $s0, 0x14($sp)
/* 02E8FC 8002ED4C 3C10800F */  lui         $s0, %hi(D_800F1C08)
/* 02E900 8002ED50 3C11800F */  lui         $s1, %hi(D_800F1BE0)
/* 02E904 8002ED54 3C13800F */  lui         $s3, %hi(D_800F1C58)
/* 02E908 8002ED58 AFBF0024 */  sw          $ra, 0x24($sp)
/* 02E90C 8002ED5C AFB2001C */  sw          $s2, 0x1c($sp)
/* 02E910 8002ED60 26731C58 */  addiu       $s3, $s3, %lo(D_800F1C58)
/* 02E914 8002ED64 26311BE0 */  addiu       $s1, $s1, %lo(D_800F1BE0)
/* 02E918 8002ED68 26101C08 */  addiu       $s0, $s0, %lo(D_800F1C08)
.L8002ED6C:
/* 02E91C 8002ED6C 8E2E002C */  lw          $t6, 0x2c($s1)
/* 02E920 8002ED70 02009025 */  move        $s2, $s0
/* 02E924 8002ED74 AE200028 */  sw          $zero, 0x28($s1)
/* 02E928 8002ED78 51C00006 */  beql        $t6, $zero, .L8002ED94
/* 02E92C 8002ED7C 26100008 */   addiu      $s0, $s0, 0x8
/* 02E930 8002ED80 0C001FA3 */  jal         func_80007E8C
/* 02E934 8002ED84 8E040004 */   lw         $a0, 0x4($s0)
/* 02E938 8002ED88 0C044EDE */  jal         func_80113B78
/* 02E93C 8002ED8C 00402025 */   move       $a0, $v0
/* 02E940 8002ED90 26100008 */  addiu       $s0, $s0, 0x8
.L8002ED94:
/* 02E944 8002ED94 26310008 */  addiu       $s1, $s1, 0x8
/* 02E948 8002ED98 1613FFF4 */  bne         $s0, $s3, .L8002ED6C
/* 02E94C 8002ED9C AE400004 */   sw         $zero, 0x4($s2)
/* 02E950 8002EDA0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02E954 8002EDA4 8FB00014 */  lw          $s0, 0x14($sp)
/* 02E958 8002EDA8 8FB10018 */  lw          $s1, 0x18($sp)
/* 02E95C 8002EDAC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02E960 8002EDB0 8FB30020 */  lw          $s3, 0x20($sp)
/* 02E964 8002EDB4 03E00008 */  jr          $ra
/* 02E968 8002EDB8 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002EDBC # 5
/* 02E96C 8002EDBC 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02E970 8002EDC0 3C0F800A */  lui         $t7, %hi(D_8009A654)
/* 02E974 8002EDC4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02E978 8002EDC8 AFB40028 */  sw          $s4, 0x28($sp)
/* 02E97C 8002EDCC AFB30024 */  sw          $s3, 0x24($sp)
/* 02E980 8002EDD0 AFB20020 */  sw          $s2, 0x20($sp)
/* 02E984 8002EDD4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 02E988 8002EDD8 AFB00018 */  sw          $s0, 0x18($sp)
/* 02E98C 8002EDDC 25EFA654 */  addiu       $t7, $t7, %lo(D_8009A654)
/* 02E990 8002EDE0 8DE10000 */  lw          $at, 0x0($t7)
/* 02E994 8002EDE4 27AE003C */  addiu       $t6, $sp, 0x3c
/* 02E998 8002EDE8 8DE80004 */  lw          $t0, 0x4($t7)
/* 02E99C 8002EDEC ADC10000 */  sw          $at, 0x0($t6)
/* 02E9A0 8002EDF0 8DE10008 */  lw          $at, 0x8($t7)
/* 02E9A4 8002EDF4 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02E9A8 8002EDF8 ADC80004 */  sw          $t0, 0x4($t6)
/* 02E9AC 8002EDFC ADC10008 */  sw          $at, 0x8($t6)
/* 02E9B0 8002EE00 8C841BE0 */  lw          $a0, %lo(D_800F1BE0)($a0)
/* 02E9B4 8002EE04 0C00237A */  jal         func_80008DE8
/* 02E9B8 8002EE08 24052002 */   addiu      $a1, $zero, 0x2002
/* 02E9BC 8002EE0C 3C09800F */  lui         $t1, %hi(D_800F1BE0)
/* 02E9C0 8002EE10 8D291BE0 */  lw          $t1, %lo(D_800F1BE0)($t1)
/* 02E9C4 8002EE14 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 02E9C8 8002EE18 3C0A800F */  lui         $t2, %hi(D_800F1BE0)
/* 02E9CC 8002EE1C 3C0B800F */  lui         $t3, %hi(D_800F1BE0)
/* 02E9D0 8002EE20 E5240018 */  swc1        $f4, 0x18($t1)
/* 02E9D4 8002EE24 8D4A1BE0 */  lw          $t2, %lo(D_800F1BE0)($t2)
/* 02E9D8 8002EE28 C7A60040 */  lwc1        $f6, 0x40($sp)
/* 02E9DC 8002EE2C 3C13800F */  lui         $s3, %hi(D_800F1BE0)
/* 02E9E0 8002EE30 3C14800F */  lui         $s4, %hi(D_800F1C80)
/* 02E9E4 8002EE34 E546001C */  swc1        $f6, 0x1c($t2)
/* 02E9E8 8002EE38 8D6B1BE0 */  lw          $t3, %lo(D_800F1BE0)($t3)
/* 02E9EC 8002EE3C C7A80044 */  lwc1        $f8, 0x44($sp)
/* 02E9F0 8002EE40 26941C80 */  addiu       $s4, $s4, %lo(D_800F1C80)
/* 02E9F4 8002EE44 26731BE0 */  addiu       $s3, $s3, %lo(D_800F1BE0)
/* 02E9F8 8002EE48 E5680020 */  swc1        $f8, 0x20($t3)
/* 02E9FC 8002EE4C 00008825 */  move        $s1, $zero
.L8002EE50:
/* 02EA00 8002EE50 02609025 */  move        $s2, $s3
.L8002EE54:
/* 02EA04 8002EE54 0C001FA3 */  jal         func_80007E8C
/* 02EA08 8002EE58 8E44002C */   lw         $a0, 0x2c($s2)
/* 02EA0C 8002EE5C 1040000A */  beq         $v0, $zero, .L8002EE88
/* 02EA10 8002EE60 00408025 */   move       $s0, $v0
/* 02EA14 8002EE64 00402025 */  move        $a0, $v0
/* 02EA18 8002EE68 0C00237A */  jal         func_80008DE8
/* 02EA1C 8002EE6C 24052002 */   addiu      $a1, $zero, 0x2002
/* 02EA20 8002EE70 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 02EA24 8002EE74 E60A0018 */  swc1        $f10, 0x18($s0)
/* 02EA28 8002EE78 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 02EA2C 8002EE7C E610001C */  swc1        $f16, 0x1c($s0)
/* 02EA30 8002EE80 C7B20044 */  lwc1        $f18, 0x44($sp)
/* 02EA34 8002EE84 E6120020 */  swc1        $f18, 0x20($s0)
.L8002EE88:
/* 02EA38 8002EE88 26310008 */  addiu       $s1, $s1, 0x8
/* 02EA3C 8002EE8C 2A210050 */  slti        $at, $s1, 0x50
/* 02EA40 8002EE90 1420FFF0 */  bne         $at, $zero, .L8002EE54
/* 02EA44 8002EE94 26520008 */   addiu      $s2, $s2, 0x8
/* 02EA48 8002EE98 26730050 */  addiu       $s3, $s3, 0x50
/* 02EA4C 8002EE9C 0274082B */  sltu        $at, $s3, $s4
/* 02EA50 8002EEA0 5420FFEB */  bnel        $at, $zero, .L8002EE50
/* 02EA54 8002EEA4 00008825 */   move       $s1, $zero
/* 02EA58 8002EEA8 3C11800F */  lui         $s1, %hi(D_800F1BE0)
/* 02EA5C 8002EEAC 3C12800F */  lui         $s2, %hi(D_800F1C08)
/* 02EA60 8002EEB0 26521C08 */  addiu       $s2, $s2, %lo(D_800F1C08)
/* 02EA64 8002EEB4 26311BE0 */  addiu       $s1, $s1, %lo(D_800F1BE0)
.L8002EEB8:
/* 02EA68 8002EEB8 0C001FA3 */  jal         func_80007E8C
/* 02EA6C 8002EEBC 8E2400C8 */   lw         $a0, 0xc8($s1)
/* 02EA70 8002EEC0 1040000A */  beq         $v0, $zero, .L8002EEEC
/* 02EA74 8002EEC4 00408025 */   move       $s0, $v0
/* 02EA78 8002EEC8 00402025 */  move        $a0, $v0
/* 02EA7C 8002EECC 0C00237A */  jal         func_80008DE8
/* 02EA80 8002EED0 24052002 */   addiu      $a1, $zero, 0x2002
/* 02EA84 8002EED4 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 02EA88 8002EED8 E6040018 */  swc1        $f4, 0x18($s0)
/* 02EA8C 8002EEDC C7A60040 */  lwc1        $f6, 0x40($sp)
/* 02EA90 8002EEE0 E606001C */  swc1        $f6, 0x1c($s0)
/* 02EA94 8002EEE4 C7A80044 */  lwc1        $f8, 0x44($sp)
/* 02EA98 8002EEE8 E6080020 */  swc1        $f8, 0x20($s0)
.L8002EEEC:
/* 02EA9C 8002EEEC 26310004 */  addiu       $s1, $s1, 0x4
/* 02EAA0 8002EEF0 1632FFF1 */  bne         $s1, $s2, .L8002EEB8
/* 02EAA4 8002EEF4 00000000 */   nop
/* 02EAA8 8002EEF8 3C04800F */  lui         $a0, %hi(D_800F1CD4)
/* 02EAAC 8002EEFC 0C001FA3 */  jal         func_80007E8C
/* 02EAB0 8002EF00 8C841CD4 */   lw         $a0, %lo(D_800F1CD4)($a0)
/* 02EAB4 8002EF04 1040000A */  beq         $v0, $zero, .L8002EF30
/* 02EAB8 8002EF08 00408025 */   move       $s0, $v0
/* 02EABC 8002EF0C 00402025 */  move        $a0, $v0
/* 02EAC0 8002EF10 0C00237A */  jal         func_80008DE8
/* 02EAC4 8002EF14 24052002 */   addiu      $a1, $zero, 0x2002
/* 02EAC8 8002EF18 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 02EACC 8002EF1C E60A0018 */  swc1        $f10, 0x18($s0)
/* 02EAD0 8002EF20 C7B00040 */  lwc1        $f16, 0x40($sp)
/* 02EAD4 8002EF24 E610001C */  swc1        $f16, 0x1c($s0)
/* 02EAD8 8002EF28 C7B20044 */  lwc1        $f18, 0x44($sp)
/* 02EADC 8002EF2C E6120020 */  swc1        $f18, 0x20($s0)
.L8002EF30:
/* 02EAE0 8002EF30 3C04800F */  lui         $a0, %hi(D_800F1CDC)
/* 02EAE4 8002EF34 0C001FA3 */  jal         func_80007E8C
/* 02EAE8 8002EF38 8C841CDC */   lw         $a0, %lo(D_800F1CDC)($a0)
/* 02EAEC 8002EF3C 1040000A */  beq         $v0, $zero, .L8002EF68
/* 02EAF0 8002EF40 00408025 */   move       $s0, $v0
/* 02EAF4 8002EF44 00402025 */  move        $a0, $v0
/* 02EAF8 8002EF48 0C00237A */  jal         func_80008DE8
/* 02EAFC 8002EF4C 24052002 */   addiu      $a1, $zero, 0x2002
/* 02EB00 8002EF50 C7A4003C */  lwc1        $f4, 0x3c($sp)
/* 02EB04 8002EF54 E6040018 */  swc1        $f4, 0x18($s0)
/* 02EB08 8002EF58 C7A60040 */  lwc1        $f6, 0x40($sp)
/* 02EB0C 8002EF5C E606001C */  swc1        $f6, 0x1c($s0)
/* 02EB10 8002EF60 C7A80044 */  lwc1        $f8, 0x44($sp)
/* 02EB14 8002EF64 E6080020 */  swc1        $f8, 0x20($s0)
.L8002EF68:
/* 02EB18 8002EF68 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02EB1C 8002EF6C 8FB00018 */  lw          $s0, 0x18($sp)
/* 02EB20 8002EF70 8FB1001C */  lw          $s1, 0x1c($sp)
/* 02EB24 8002EF74 8FB20020 */  lw          $s2, 0x20($sp)
/* 02EB28 8002EF78 8FB30024 */  lw          $s3, 0x24($sp)
/* 02EB2C 8002EF7C 8FB40028 */  lw          $s4, 0x28($sp)
/* 02EB30 8002EF80 03E00008 */  jr          $ra
/* 02EB34 8002EF84 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8002EF88 # 6
/* 02EB38 8002EF88 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02EB3C 8002EF8C AFBF0024 */  sw          $ra, 0x24($sp)
/* 02EB40 8002EF90 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02EB44 8002EF94 AFB30020 */  sw          $s3, 0x20($sp)
/* 02EB48 8002EF98 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02EB4C 8002EF9C AFB10018 */  sw          $s1, 0x18($sp)
/* 02EB50 8002EFA0 AFB00014 */  sw          $s0, 0x14($sp)
/* 02EB54 8002EFA4 8C841BE0 */  lw          $a0, %lo(D_800F1BE0)($a0)
/* 02EB58 8002EFA8 0C002394 */  jal         func_80008E50
/* 02EB5C 8002EFAC 24050002 */   addiu      $a1, $zero, 0x2
/* 02EB60 8002EFB0 3C12800F */  lui         $s2, %hi(D_800F1BE0)
/* 02EB64 8002EFB4 3C13800F */  lui         $s3, %hi(D_800F1C80)
/* 02EB68 8002EFB8 26731C80 */  addiu       $s3, $s3, %lo(D_800F1C80)
/* 02EB6C 8002EFBC 26521BE0 */  addiu       $s2, $s2, %lo(D_800F1BE0)
/* 02EB70 8002EFC0 00008025 */  move        $s0, $zero
.L8002EFC4:
/* 02EB74 8002EFC4 02408825 */  move        $s1, $s2
.L8002EFC8:
/* 02EB78 8002EFC8 0C001FA3 */  jal         func_80007E8C
/* 02EB7C 8002EFCC 8E24002C */   lw         $a0, 0x2c($s1)
/* 02EB80 8002EFD0 10400003 */  beq         $v0, $zero, .L8002EFE0
/* 02EB84 8002EFD4 00402025 */   move       $a0, $v0
/* 02EB88 8002EFD8 0C002394 */  jal         func_80008E50
/* 02EB8C 8002EFDC 24050002 */   addiu      $a1, $zero, 0x2
.L8002EFE0:
/* 02EB90 8002EFE0 26100008 */  addiu       $s0, $s0, 0x8
/* 02EB94 8002EFE4 2A010050 */  slti        $at, $s0, 0x50
/* 02EB98 8002EFE8 1420FFF7 */  bne         $at, $zero, .L8002EFC8
/* 02EB9C 8002EFEC 26310008 */   addiu      $s1, $s1, 0x8
/* 02EBA0 8002EFF0 26520050 */  addiu       $s2, $s2, 0x50
/* 02EBA4 8002EFF4 0253082B */  sltu        $at, $s2, $s3
/* 02EBA8 8002EFF8 5420FFF2 */  bnel        $at, $zero, .L8002EFC4
/* 02EBAC 8002EFFC 00008025 */   move       $s0, $zero
/* 02EBB0 8002F000 3C10800F */  lui         $s0, %hi(D_800F1BE0)
/* 02EBB4 8002F004 3C11800F */  lui         $s1, %hi(D_800F1C08)
/* 02EBB8 8002F008 26311C08 */  addiu       $s1, $s1, %lo(D_800F1C08)
/* 02EBBC 8002F00C 26101BE0 */  addiu       $s0, $s0, %lo(D_800F1BE0)
.L8002F010:
/* 02EBC0 8002F010 0C001FA3 */  jal         func_80007E8C
/* 02EBC4 8002F014 8E0400C8 */   lw         $a0, 0xc8($s0)
/* 02EBC8 8002F018 10400003 */  beq         $v0, $zero, .L8002F028
/* 02EBCC 8002F01C 00402025 */   move       $a0, $v0
/* 02EBD0 8002F020 0C002394 */  jal         func_80008E50
/* 02EBD4 8002F024 24050002 */   addiu      $a1, $zero, 0x2
.L8002F028:
/* 02EBD8 8002F028 26100004 */  addiu       $s0, $s0, 0x4
/* 02EBDC 8002F02C 1611FFF8 */  bne         $s0, $s1, .L8002F010
/* 02EBE0 8002F030 00000000 */   nop
/* 02EBE4 8002F034 3C04800F */  lui         $a0, %hi(D_800F1CD4)
/* 02EBE8 8002F038 0C001FA3 */  jal         func_80007E8C
/* 02EBEC 8002F03C 8C841CD4 */   lw         $a0, %lo(D_800F1CD4)($a0)
/* 02EBF0 8002F040 10400003 */  beq         $v0, $zero, .L8002F050
/* 02EBF4 8002F044 00402025 */   move       $a0, $v0
/* 02EBF8 8002F048 0C002394 */  jal         func_80008E50
/* 02EBFC 8002F04C 24050002 */   addiu      $a1, $zero, 0x2
.L8002F050:
/* 02EC00 8002F050 3C04800F */  lui         $a0, %hi(D_800F1CDC)
/* 02EC04 8002F054 0C001FA3 */  jal         func_80007E8C
/* 02EC08 8002F058 8C841CDC */   lw         $a0, %lo(D_800F1CDC)($a0)
/* 02EC0C 8002F05C 10400003 */  beq         $v0, $zero, .L8002F06C
/* 02EC10 8002F060 00402025 */   move       $a0, $v0
/* 02EC14 8002F064 0C002394 */  jal         func_80008E50
/* 02EC18 8002F068 24050002 */   addiu      $a1, $zero, 0x2
.L8002F06C:
/* 02EC1C 8002F06C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 02EC20 8002F070 8FB00014 */  lw          $s0, 0x14($sp)
/* 02EC24 8002F074 8FB10018 */  lw          $s1, 0x18($sp)
/* 02EC28 8002F078 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02EC2C 8002F07C 8FB30020 */  lw          $s3, 0x20($sp)
/* 02EC30 8002F080 03E00008 */  jr          $ra
/* 02EC34 8002F084 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002F088 # 7
/* 02EC38 8002F088 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02EC3C 8002F08C AFB00014 */  sw          $s0, 0x14($sp)
/* 02EC40 8002F090 AFA40020 */  sw          $a0, 0x20($sp)
/* 02EC44 8002F094 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02EC48 8002F098 AFB10018 */  sw          $s1, 0x18($sp)
/* 02EC4C 8002F09C 00A08025 */  move        $s0, $a1
/* 02EC50 8002F0A0 8CB10054 */  lw          $s1, 0x54($a1)
/* 02EC54 8002F0A4 00A02025 */  move        $a0, $a1
/* 02EC58 8002F0A8 0C045011 */  jal         func_80114044
/* 02EC5C 8002F0AC 24050001 */   addiu      $a1, $zero, 0x1
/* 02EC60 8002F0B0 240E0004 */  addiu       $t6, $zero, 0x4
/* 02EC64 8002F0B4 A22E0006 */  sb          $t6, 0x6($s1)
/* 02EC68 8002F0B8 02002025 */  move        $a0, $s0
/* 02EC6C 8002F0BC 0C04510F */  jal         func_8011443C
/* 02EC70 8002F0C0 24050005 */   addiu      $a1, $zero, 0x5
/* 02EC74 8002F0C4 8E2F0000 */  lw          $t7, 0x0($s1)
/* 02EC78 8002F0C8 3C01BFFF */  lui         $at, 0xbfff
/* 02EC7C 8002F0CC 3421FFFF */  ori         $at, $at, 0xffff
/* 02EC80 8002F0D0 01E1C024 */  and         $t8, $t7, $at
/* 02EC84 8002F0D4 AE380000 */  sw          $t8, 0x0($s1)
/* 02EC88 8002F0D8 02002025 */  move        $a0, $s0
/* 02EC8C 8002F0DC 0C00237A */  jal         func_80008DE8
/* 02EC90 8002F0E0 24052000 */   addiu      $a1, $zero, 0x2000
/* 02EC94 8002F0E4 8FA20020 */  lw          $v0, 0x20($sp)
/* 02EC98 8002F0E8 8E190038 */  lw          $t9, 0x38($s0)
/* 02EC9C 8002F0EC AC590004 */  sw          $t9, 0x4($v0)
/* 02ECA0 8002F0F0 86280004 */  lh          $t0, 0x4($s1)
/* 02ECA4 8002F0F4 AC480000 */  sw          $t0, 0x0($v0)
/* 02ECA8 8002F0F8 0C044FF2 */  jal         func_80113FC8
/* 02ECAC 8002F0FC 8E040038 */   lw         $a0, 0x38($s0)
/* 02ECB0 8002F100 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02ECB4 8002F104 8FB00014 */  lw          $s0, 0x14($sp)
/* 02ECB8 8002F108 8FB10018 */  lw          $s1, 0x18($sp)
/* 02ECBC 8002F10C 03E00008 */  jr          $ra
/* 02ECC0 8002F110 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8002F114 # 8
/* 02ECC4 8002F114 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02ECC8 8002F118 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02ECCC 8002F11C AFA40030 */  sw          $a0, 0x30($sp)
/* 02ECD0 8002F120 AFA50034 */  sw          $a1, 0x34($sp)
/* 02ECD4 8002F124 8C880054 */  lw          $t0, 0x54($a0)
/* 02ECD8 8002F128 8FB80034 */  lw          $t8, 0x34($sp)
/* 02ECDC 8002F12C 3C028012 */  lui         $v0, %hi(D_80125AB0 + 0x1)
/* 02ECE0 8002F130 85070004 */  lh          $a3, 0x4($t0)
/* 02ECE4 8002F134 0018C880 */  sll         $t9, $t8, 2
/* 02ECE8 8002F138 24010003 */  addiu       $at, $zero, 0x3
/* 02ECEC 8002F13C 000778C0 */  sll         $t7, $a3, 3
/* 02ECF0 8002F140 01E77823 */  subu        $t7, $t7, $a3
/* 02ECF4 8002F144 000F7880 */  sll         $t7, $t7, 2
/* 02ECF8 8002F148 01E77821 */  addu        $t7, $t7, $a3
/* 02ECFC 8002F14C 000F7880 */  sll         $t7, $t7, 2
/* 02ED00 8002F150 004F1021 */  addu        $v0, $v0, $t7
/* 02ED04 8002F154 80425AB1 */  lb          $v0, %lo(D_80125AB0 + 0x1)($v0)
/* 02ED08 8002F158 0338C821 */  addu        $t9, $t9, $t8
/* 02ED0C 8002F15C 0019C900 */  sll         $t9, $t9, 4
/* 02ED10 8002F160 10410003 */  beq         $v0, $at, .L8002F170
/* 02ED14 8002F164 3C09800F */   lui        $t1, %hi(D_800F1BE0)
/* 02ED18 8002F168 24010002 */  addiu       $at, $zero, 0x2
/* 02ED1C 8002F16C 14410031 */  bne         $v0, $at, .L8002F234
.L8002F170:
/* 02ED20 8002F170 25291BE0 */   addiu      $t1, $t1, %lo(D_800F1BE0)
/* 02ED24 8002F174 03292821 */  addu        $a1, $t9, $t1
/* 02ED28 8002F178 8CAA0028 */  lw          $t2, 0x28($a1)
/* 02ED2C 8002F17C 00A01825 */  move        $v1, $a1
/* 02ED30 8002F180 24620028 */  addiu       $v0, $v1, 0x28
/* 02ED34 8002F184 14EA0004 */  bne         $a3, $t2, .L8002F198
/* 02ED38 8002F188 24040010 */   addiu      $a0, $zero, 0x10
/* 02ED3C 8002F18C AC400000 */  sw          $zero, 0x0($v0)
/* 02ED40 8002F190 AC400004 */  sw          $zero, 0x4($v0)
/* 02ED44 8002F194 85070004 */  lh          $a3, 0x4($t0)
.L8002F198:
/* 02ED48 8002F198 8C6B0030 */  lw          $t3, 0x30($v1)
/* 02ED4C 8002F19C 24620030 */  addiu       $v0, $v1, 0x30
/* 02ED50 8002F1A0 54EB0004 */  bnel        $a3, $t3, .L8002F1B4
/* 02ED54 8002F1A4 24A30010 */   addiu      $v1, $a1, 0x10
/* 02ED58 8002F1A8 AC400000 */  sw          $zero, 0x0($v0)
/* 02ED5C 8002F1AC AC400004 */  sw          $zero, 0x4($v0)
/* 02ED60 8002F1B0 24A30010 */  addiu       $v1, $a1, 0x10
.L8002F1B4:
/* 02ED64 8002F1B4 24050050 */  addiu       $a1, $zero, 0x50
.L8002F1B8:
/* 02ED68 8002F1B8 85070004 */  lh          $a3, 0x4($t0)
/* 02ED6C 8002F1BC 8C6C0028 */  lw          $t4, 0x28($v1)
/* 02ED70 8002F1C0 24840020 */  addiu       $a0, $a0, 0x20
/* 02ED74 8002F1C4 24620028 */  addiu       $v0, $v1, 0x28
/* 02ED78 8002F1C8 54EC0005 */  bnel        $a3, $t4, .L8002F1E0
/* 02ED7C 8002F1CC 8C6D0030 */   lw         $t5, 0x30($v1)
/* 02ED80 8002F1D0 AC400000 */  sw          $zero, 0x0($v0)
/* 02ED84 8002F1D4 AC400004 */  sw          $zero, 0x4($v0)
/* 02ED88 8002F1D8 85070004 */  lh          $a3, 0x4($t0)
/* 02ED8C 8002F1DC 8C6D0030 */  lw          $t5, 0x30($v1)
.L8002F1E0:
/* 02ED90 8002F1E0 24620030 */  addiu       $v0, $v1, 0x30
/* 02ED94 8002F1E4 54ED0005 */  bnel        $a3, $t5, .L8002F1FC
/* 02ED98 8002F1E8 8C6E0038 */   lw         $t6, 0x38($v1)
/* 02ED9C 8002F1EC AC400000 */  sw          $zero, 0x0($v0)
/* 02EDA0 8002F1F0 AC400004 */  sw          $zero, 0x4($v0)
/* 02EDA4 8002F1F4 85070004 */  lh          $a3, 0x4($t0)
/* 02EDA8 8002F1F8 8C6E0038 */  lw          $t6, 0x38($v1)
.L8002F1FC:
/* 02EDAC 8002F1FC 24620038 */  addiu       $v0, $v1, 0x38
/* 02EDB0 8002F200 54EE0005 */  bnel        $a3, $t6, .L8002F218
/* 02EDB4 8002F204 8C6F0040 */   lw         $t7, 0x40($v1)
/* 02EDB8 8002F208 AC400000 */  sw          $zero, 0x0($v0)
/* 02EDBC 8002F20C AC400004 */  sw          $zero, 0x4($v0)
/* 02EDC0 8002F210 85070004 */  lh          $a3, 0x4($t0)
/* 02EDC4 8002F214 8C6F0040 */  lw          $t7, 0x40($v1)
.L8002F218:
/* 02EDC8 8002F218 24620040 */  addiu       $v0, $v1, 0x40
/* 02EDCC 8002F21C 14EF0003 */  bne         $a3, $t7, .L8002F22C
/* 02EDD0 8002F220 00000000 */   nop
/* 02EDD4 8002F224 AC400000 */  sw          $zero, 0x0($v0)
/* 02EDD8 8002F228 AC400004 */  sw          $zero, 0x4($v0)
.L8002F22C:
/* 02EDDC 8002F22C 1485FFE2 */  bne         $a0, $a1, .L8002F1B8
/* 02EDE0 8002F230 24630020 */   addiu      $v1, $v1, 0x20
.L8002F234:
/* 02EDE4 8002F234 8FB80034 */  lw          $t8, 0x34($sp)
/* 02EDE8 8002F238 000648C0 */  sll         $t1, $a2, 3
/* 02EDEC 8002F23C 3C0C800F */  lui         $t4, %hi(D_800F1BE0)
/* 02EDF0 8002F240 0018C880 */  sll         $t9, $t8, 2
/* 02EDF4 8002F244 0338C821 */  addu        $t9, $t9, $t8
/* 02EDF8 8002F248 0019C900 */  sll         $t9, $t9, 4
/* 02EDFC 8002F24C 03295021 */  addu        $t2, $t9, $t1
/* 02EE00 8002F250 254B0028 */  addiu       $t3, $t2, 0x28
/* 02EE04 8002F254 258C1BE0 */  addiu       $t4, $t4, %lo(D_800F1BE0)
/* 02EE08 8002F258 016C2021 */  addu        $a0, $t3, $t4
/* 02EE0C 8002F25C AFA4001C */  sw          $a0, 0x1c($sp)
/* 02EE10 8002F260 0C00BC22 */  jal         func_8002F088
/* 02EE14 8002F264 8FA50030 */   lw         $a1, 0x30($sp)
/* 02EE18 8002F268 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02EE1C 8002F26C 8FA2001C */  lw          $v0, 0x1c($sp)
/* 02EE20 8002F270 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02EE24 8002F274 03E00008 */  jr          $ra
/* 02EE28 8002F278 00000000 */   nop

glabel func_8002F27C # 9
/* 02EE2C 8002F27C 00057080 */  sll         $t6, $a1, 2
/* 02EE30 8002F280 01C57021 */  addu        $t6, $t6, $a1
/* 02EE34 8002F284 000E7100 */  sll         $t6, $t6, 4
/* 02EE38 8002F288 3C18800F */  lui         $t8, %hi(D_800F1BE0)
/* 02EE3C 8002F28C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02EE40 8002F290 27181BE0 */  addiu       $t8, $t8, %lo(D_800F1BE0)
/* 02EE44 8002F294 25CF0028 */  addiu       $t7, $t6, 0x28
/* 02EE48 8002F298 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02EE4C 8002F29C 01F81021 */  addu        $v0, $t7, $t8
/* 02EE50 8002F2A0 00003025 */  move        $a2, $zero
/* 02EE54 8002F2A4 2403000A */  addiu       $v1, $zero, 0xa
.L8002F2A8:
/* 02EE58 8002F2A8 8C590004 */  lw          $t9, 0x4($v0)
/* 02EE5C 8002F2AC 57200009 */  bnel        $t9, $zero, .L8002F2D4
/* 02EE60 8002F2B0 24C60001 */   addiu      $a2, $a2, 0x1
/* 02EE64 8002F2B4 8C480000 */  lw          $t0, 0x0($v0)
/* 02EE68 8002F2B8 55000006 */  bnel        $t0, $zero, .L8002F2D4
/* 02EE6C 8002F2BC 24C60001 */   addiu      $a2, $a2, 0x1
/* 02EE70 8002F2C0 0C00BC45 */  jal         func_8002F114
/* 02EE74 8002F2C4 00000000 */   nop
/* 02EE78 8002F2C8 10000006 */  b           .L8002F2E4
/* 02EE7C 8002F2CC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 02EE80 8002F2D0 24C60001 */  addiu       $a2, $a2, 0x1
.L8002F2D4:
/* 02EE84 8002F2D4 14C3FFF4 */  bne         $a2, $v1, .L8002F2A8
/* 02EE88 8002F2D8 24420008 */   addiu      $v0, $v0, 0x8
/* 02EE8C 8002F2DC 00001025 */  move        $v0, $zero
/* 02EE90 8002F2E0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002F2E4:
/* 02EE94 8002F2E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02EE98 8002F2E8 03E00008 */  jr          $ra
/* 02EE9C 8002F2EC 00000000 */   nop

glabel func_8002F2F0 # 10
/* 02EEA0 8002F2F0 3C0E800F */  lui         $t6, %hi(D_800F1CD4)
/* 02EEA4 8002F2F4 8DCE1CD4 */  lw          $t6, %lo(D_800F1CD4)($t6)
/* 02EEA8 8002F2F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02EEAC 8002F2FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02EEB0 8002F300 11C00005 */  beq         $t6, $zero, .L8002F318
/* 02EEB4 8002F304 AFA40018 */   sw         $a0, 0x18($sp)
/* 02EEB8 8002F308 0C001FA3 */  jal         func_80007E8C
/* 02EEBC 8002F30C 01C02025 */   move       $a0, $t6
/* 02EEC0 8002F310 0C044EDE */  jal         func_80113B78
/* 02EEC4 8002F314 00402025 */   move       $a0, $v0
.L8002F318:
/* 02EEC8 8002F318 3C04800F */  lui         $a0, %hi(D_800F1CD0)
/* 02EECC 8002F31C 24841CD0 */  addiu       $a0, $a0, %lo(D_800F1CD0)
/* 02EED0 8002F320 0C00BC22 */  jal         func_8002F088
/* 02EED4 8002F324 8FA50018 */   lw         $a1, 0x18($sp)
/* 02EED8 8002F328 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02EEDC 8002F32C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02EEE0 8002F330 03E00008 */  jr          $ra
/* 02EEE4 8002F334 00000000 */   nop

glabel func_8002F338 # 11
/* 02EEE8 8002F338 3C0E800F */  lui         $t6, %hi(D_800F1CDC)
/* 02EEEC 8002F33C 8DCE1CDC */  lw          $t6, %lo(D_800F1CDC)($t6)
/* 02EEF0 8002F340 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02EEF4 8002F344 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02EEF8 8002F348 11C00005 */  beq         $t6, $zero, .L8002F360
/* 02EEFC 8002F34C AFA40018 */   sw         $a0, 0x18($sp)
/* 02EF00 8002F350 0C001FA3 */  jal         func_80007E8C
/* 02EF04 8002F354 01C02025 */   move       $a0, $t6
/* 02EF08 8002F358 0C044EDE */  jal         func_80113B78
/* 02EF0C 8002F35C 00402025 */   move       $a0, $v0
.L8002F360:
/* 02EF10 8002F360 3C04800F */  lui         $a0, %hi(D_800F1CD8)
/* 02EF14 8002F364 24841CD8 */  addiu       $a0, $a0, %lo(D_800F1CD8)
/* 02EF18 8002F368 0C00BC22 */  jal         func_8002F088
/* 02EF1C 8002F36C 8FA50018 */   lw         $a1, 0x18($sp)
/* 02EF20 8002F370 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02EF24 8002F374 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02EF28 8002F378 03E00008 */  jr          $ra
/* 02EF2C 8002F37C 00000000 */   nop

glabel func_8002F380 # 12
/* 02EF30 8002F380 000470C0 */  sll         $t6, $a0, 3
/* 02EF34 8002F384 01C47023 */  subu        $t6, $t6, $a0
/* 02EF38 8002F388 000E7080 */  sll         $t6, $t6, 2
/* 02EF3C 8002F38C 01C47021 */  addu        $t6, $t6, $a0
/* 02EF40 8002F390 3C0F8012 */  lui         $t7, %hi(D_80125A40)
/* 02EF44 8002F394 25EF5A40 */  addiu       $t7, $t7, %lo(D_80125A40)
/* 02EF48 8002F398 000E7080 */  sll         $t6, $t6, 2
/* 02EF4C 8002F39C 01CF1021 */  addu        $v0, $t6, $t7
/* 02EF50 8002F3A0 80430071 */  lb          $v1, 0x71($v0)
/* 02EF54 8002F3A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02EF58 8002F3A8 24010003 */  addiu       $at, $zero, 0x3
/* 02EF5C 8002F3AC 10610006 */  beq         $v1, $at, .L8002F3C8
/* 02EF60 8002F3B0 AFBF0014 */   sw         $ra, 0x14($sp)
/* 02EF64 8002F3B4 24010002 */  addiu       $at, $zero, 0x2
/* 02EF68 8002F3B8 50610004 */  beql        $v1, $at, .L8002F3CC
/* 02EF6C 8002F3BC 84440072 */   lh         $a0, 0x72($v0)
/* 02EF70 8002F3C0 1000000A */  b           .L8002F3EC
/* 02EF74 8002F3C4 00001025 */   move       $v0, $zero
.L8002F3C8:
/* 02EF78 8002F3C8 84440072 */  lh          $a0, 0x72($v0)
.L8002F3CC:
/* 02EF7C 8002F3CC 2401FFFF */  addiu       $at, $zero, -0x1
/* 02EF80 8002F3D0 14810003 */  bne         $a0, $at, .L8002F3E0
/* 02EF84 8002F3D4 00000000 */   nop
/* 02EF88 8002F3D8 10000004 */  b           .L8002F3EC
/* 02EF8C 8002F3DC 00001025 */   move       $v0, $zero
.L8002F3E0:
/* 02EF90 8002F3E0 0C00CB11 */  jal         func_80032C44
/* 02EF94 8002F3E4 24050001 */   addiu      $a1, $zero, 0x1
/* 02EF98 8002F3E8 24020001 */  addiu       $v0, $zero, 0x1
.L8002F3EC:
/* 02EF9C 8002F3EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02EFA0 8002F3F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02EFA4 8002F3F4 03E00008 */  jr          $ra
/* 02EFA8 8002F3F8 00000000 */   nop

glabel func_8002F3FC # 13
/* 02EFAC 8002F3FC 00047080 */  sll         $t6, $a0, 2
/* 02EFB0 8002F400 01C47021 */  addu        $t6, $t6, $a0
/* 02EFB4 8002F404 000E7100 */  sll         $t6, $t6, 4
/* 02EFB8 8002F408 000578C0 */  sll         $t7, $a1, 3
/* 02EFBC 8002F40C 3C19800F */  lui         $t9, %hi(D_800F1BE0)
/* 02EFC0 8002F410 27391BE0 */  addiu       $t9, $t9, %lo(D_800F1BE0)
/* 02EFC4 8002F414 01CFC021 */  addu        $t8, $t6, $t7
/* 02EFC8 8002F418 03191021 */  addu        $v0, $t8, $t9
/* 02EFCC 8002F41C 8C48002C */  lw          $t0, 0x2c($v0)
/* 02EFD0 8002F420 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02EFD4 8002F424 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02EFD8 8002F428 15000003 */  bne         $t0, $zero, .L8002F438
/* 02EFDC 8002F42C AFB00018 */   sw         $s0, 0x18($sp)
/* 02EFE0 8002F430 1000002E */  b           .L8002F4EC
/* 02EFE4 8002F434 00001025 */   move       $v0, $zero
.L8002F438:
/* 02EFE8 8002F438 24500028 */  addiu       $s0, $v0, 0x28
/* 02EFEC 8002F43C 8E090000 */  lw          $t1, 0x0($s0)
/* 02EFF0 8002F440 3C038012 */  lui         $v1, %hi(D_80125AB0 + 0x1)
/* 02EFF4 8002F444 24010005 */  addiu       $at, $zero, 0x5
/* 02EFF8 8002F448 000950C0 */  sll         $t2, $t1, 3
/* 02EFFC 8002F44C 01495023 */  subu        $t2, $t2, $t1
/* 02F000 8002F450 000A5080 */  sll         $t2, $t2, 2
/* 02F004 8002F454 01495021 */  addu        $t2, $t2, $t1
/* 02F008 8002F458 000A5080 */  sll         $t2, $t2, 2
/* 02F00C 8002F45C 006A1821 */  addu        $v1, $v1, $t2
/* 02F010 8002F460 80635AB1 */  lb          $v1, %lo(D_80125AB0 + 0x1)($v1)
/* 02F014 8002F464 54610004 */  bnel        $v1, $at, .L8002F478
/* 02F018 8002F468 24010002 */   addiu      $at, $zero, 0x2
/* 02F01C 8002F46C 1000001F */  b           .L8002F4EC
/* 02F020 8002F470 00001025 */   move       $v0, $zero
/* 02F024 8002F474 24010002 */  addiu       $at, $zero, 0x2
.L8002F478:
/* 02F028 8002F478 14610003 */  bne         $v1, $at, .L8002F488
/* 02F02C 8002F47C 00000000 */   nop
/* 02F030 8002F480 1000001A */  b           .L8002F4EC
/* 02F034 8002F484 00001025 */   move       $v0, $zero
.L8002F488:
/* 02F038 8002F488 0C001FA3 */  jal         func_80007E8C
/* 02F03C 8002F48C 8E040004 */   lw         $a0, 0x4($s0)
/* 02F040 8002F490 AFA20024 */  sw          $v0, 0x24($sp)
/* 02F044 8002F494 8C430054 */  lw          $v1, 0x54($v0)
/* 02F048 8002F498 00402025 */  move        $a0, $v0
/* 02F04C 8002F49C 00002825 */  move        $a1, $zero
/* 02F050 8002F4A0 A0600006 */  sb          $zero, 0x6($v1)
/* 02F054 8002F4A4 AC600008 */  sw          $zero, 0x8($v1)
/* 02F058 8002F4A8 0C04510F */  jal         func_8011443C
/* 02F05C 8002F4AC AFA30020 */   sw         $v1, 0x20($sp)
/* 02F060 8002F4B0 8FA30020 */  lw          $v1, 0x20($sp)
/* 02F064 8002F4B4 3C01BFFF */  lui         $at, 0xbfff
/* 02F068 8002F4B8 3421FFFF */  ori         $at, $at, 0xffff
/* 02F06C 8002F4BC 8C6B0000 */  lw          $t3, 0x0($v1)
/* 02F070 8002F4C0 24052000 */  addiu       $a1, $zero, 0x2000
/* 02F074 8002F4C4 01616024 */  and         $t4, $t3, $at
/* 02F078 8002F4C8 AC6C0000 */  sw          $t4, 0x0($v1)
/* 02F07C 8002F4CC 0C002394 */  jal         func_80008E50
/* 02F080 8002F4D0 8FA40024 */   lw         $a0, 0x24($sp)
/* 02F084 8002F4D4 8FAD0024 */  lw          $t5, 0x24($sp)
/* 02F088 8002F4D8 0C045003 */  jal         func_8011400C
/* 02F08C 8002F4DC 8DA40038 */   lw         $a0, 0x38($t5)
/* 02F090 8002F4E0 AE000000 */  sw          $zero, 0x0($s0)
/* 02F094 8002F4E4 AE000004 */  sw          $zero, 0x4($s0)
/* 02F098 8002F4E8 8FA20024 */  lw          $v0, 0x24($sp)
.L8002F4EC:
/* 02F09C 8002F4EC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02F0A0 8002F4F0 8FB00018 */  lw          $s0, 0x18($sp)
/* 02F0A4 8002F4F4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02F0A8 8002F4F8 03E00008 */  jr          $ra
/* 02F0AC 8002F4FC 00000000 */   nop

glabel func_8002F500 # 14
/* 02F0B0 8002F500 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02F0B4 8002F504 AFA40030 */  sw          $a0, 0x30($sp)
/* 02F0B8 8002F508 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02F0BC 8002F50C 00A02025 */  move        $a0, $a1
/* 02F0C0 8002F510 AFB00018 */  sw          $s0, 0x18($sp)
/* 02F0C4 8002F514 0C00BCFF */  jal         func_8002F3FC
/* 02F0C8 8002F518 00C02825 */   move       $a1, $a2
/* 02F0CC 8002F51C 14400003 */  bne         $v0, $zero, .L8002F52C
/* 02F0D0 8002F520 00408025 */   move       $s0, $v0
/* 02F0D4 8002F524 10000019 */  b           .L8002F58C
/* 02F0D8 8002F528 00001025 */   move       $v0, $zero
.L8002F52C:
/* 02F0DC 8002F52C 8E020054 */  lw          $v0, 0x54($s0)
/* 02F0E0 8002F530 02002025 */  move        $a0, $s0
/* 02F0E4 8002F534 24052000 */  addiu       $a1, $zero, 0x2000
/* 02F0E8 8002F538 0C00237A */  jal         func_80008DE8
/* 02F0EC 8002F53C AFA20024 */   sw         $v0, 0x24($sp)
/* 02F0F0 8002F540 8FA20024 */  lw          $v0, 0x24($sp)
/* 02F0F4 8002F544 240E0001 */  addiu       $t6, $zero, 0x1
/* 02F0F8 8002F548 02002025 */  move        $a0, $s0
/* 02F0FC 8002F54C 24050003 */  addiu       $a1, $zero, 0x3
/* 02F100 8002F550 A04E0006 */  sb          $t6, 0x6($v0)
/* 02F104 8002F554 0C04510F */  jal         func_8011443C
/* 02F108 8002F558 AC400008 */   sw         $zero, 0x8($v0)
/* 02F10C 8002F55C 8FA20024 */  lw          $v0, 0x24($sp)
/* 02F110 8002F560 3C014000 */  lui         $at, 0x4000
/* 02F114 8002F564 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02F118 8002F568 8C4F0000 */  lw          $t7, 0x0($v0)
/* 02F11C 8002F56C 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 02F120 8002F570 01E1C025 */  or          $t8, $t7, $at
/* 02F124 8002F574 AC580000 */  sw          $t8, 0x0($v0)
/* 02F128 8002F578 8FA80030 */  lw          $t0, 0x30($sp)
/* 02F12C 8002F57C 8E190038 */  lw          $t9, 0x38($s0)
/* 02F130 8002F580 0C00BB1D */  jal         func_8002EC74
/* 02F134 8002F584 AD190084 */   sw         $t9, 0x84($t0)
/* 02F138 8002F588 02001025 */  move        $v0, $s0
.L8002F58C:
/* 02F13C 8002F58C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02F140 8002F590 8FB00018 */  lw          $s0, 0x18($sp)
/* 02F144 8002F594 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02F148 8002F598 03E00008 */  jr          $ra
/* 02F14C 8002F59C 00000000 */   nop

glabel func_8002F5A0 # 15
/* 02F150 8002F5A0 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 02F154 8002F5A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F158 8002F5A8 AFA500A4 */  sw          $a1, 0xa4($sp)
/* 02F15C 8002F5AC 8C820054 */  lw          $v0, 0x54($a0)
/* 02F160 8002F5B0 24050001 */  addiu       $a1, $zero, 0x1
/* 02F164 8002F5B4 0C04539D */  jal         func_80114E74
/* 02F168 8002F5B8 84440004 */   lh         $a0, 0x4($v0)
/* 02F16C 8002F5BC 27A4001C */  addiu       $a0, $sp, 0x1c
/* 02F170 8002F5C0 8FA500A4 */  lw          $a1, 0xa4($sp)
/* 02F174 8002F5C4 0C014E38 */  jal         func_800538E0
/* 02F178 8002F5C8 00403025 */   move       $a2, $v0
/* 02F17C 8002F5CC 00002025 */  move        $a0, $zero
/* 02F180 8002F5D0 3C054060 */  lui         $a1, 0x4060
/* 02F184 8002F5D4 0C009E62 */  jal         func_80027988
/* 02F188 8002F5D8 27A6001C */   addiu      $a2, $sp, 0x1c
/* 02F18C 8002F5DC 0C002C3F */  jal         func_8000B0FC
/* 02F190 8002F5E0 00000000 */   nop
/* 02F194 8002F5E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F198 8002F5E8 3C01800F */  lui         $at, %hi(D_800F1D20)
/* 02F19C 8002F5EC AC231D20 */  sw          $v1, %lo(D_800F1D20)($at)
/* 02F1A0 8002F5F0 03E00008 */  jr          $ra
/* 02F1A4 8002F5F4 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_8002F5F8 # 16
/* 02F1A8 8002F5F8 8C820054 */  lw          $v0, 0x54($a0)
/* 02F1AC 8002F5FC 3C038012 */  lui         $v1, %hi(D_80125AB0 + 0x1)
/* 02F1B0 8002F600 24060001 */  addiu       $a2, $zero, 0x1
/* 02F1B4 8002F604 844E0004 */  lh          $t6, 0x4($v0)
/* 02F1B8 8002F608 24010003 */  addiu       $at, $zero, 0x3
/* 02F1BC 8002F60C 000E78C0 */  sll         $t7, $t6, 3
/* 02F1C0 8002F610 01EE7823 */  subu        $t7, $t7, $t6
/* 02F1C4 8002F614 000F7880 */  sll         $t7, $t7, 2
/* 02F1C8 8002F618 01EE7821 */  addu        $t7, $t7, $t6
/* 02F1CC 8002F61C 000F7880 */  sll         $t7, $t7, 2
/* 02F1D0 8002F620 006F1821 */  addu        $v1, $v1, $t7
/* 02F1D4 8002F624 80635AB1 */  lb          $v1, %lo(D_80125AB0 + 0x1)($v1)
/* 02F1D8 8002F628 14660007 */  bne         $v1, $a2, .L8002F648
/* 02F1DC 8002F62C 00000000 */   nop
/* 02F1E0 8002F630 14A00003 */  bne         $a1, $zero, .L8002F640
/* 02F1E4 8002F634 00000000 */   nop
/* 02F1E8 8002F638 03E00008 */  jr          $ra
/* 02F1EC 8002F63C 24020001 */   addiu      $v0, $zero, 0x1
.L8002F640:
/* 02F1F0 8002F640 03E00008 */  jr          $ra
/* 02F1F4 8002F644 00001025 */   move       $v0, $zero
.L8002F648:
/* 02F1F8 8002F648 10610005 */  beq         $v1, $at, .L8002F660
/* 02F1FC 8002F64C 24010002 */   addiu      $at, $zero, 0x2
/* 02F200 8002F650 10610003 */  beq         $v1, $at, .L8002F660
/* 02F204 8002F654 24010005 */   addiu      $at, $zero, 0x5
/* 02F208 8002F658 14610007 */  bne         $v1, $at, .L8002F678
/* 02F20C 8002F65C 00001025 */   move       $v0, $zero
.L8002F660:
/* 02F210 8002F660 14A60003 */  bne         $a1, $a2, .L8002F670
/* 02F214 8002F664 00000000 */   nop
/* 02F218 8002F668 03E00008 */  jr          $ra
/* 02F21C 8002F66C 24020001 */   addiu      $v0, $zero, 0x1
.L8002F670:
/* 02F220 8002F670 03E00008 */  jr          $ra
/* 02F224 8002F674 00001025 */   move       $v0, $zero
.L8002F678:
/* 02F228 8002F678 03E00008 */  jr          $ra
/* 02F22C 8002F67C 00000000 */   nop

glabel func_8002F680 # 17
/* 02F230 8002F680 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F234 8002F684 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F238 8002F688 AFA40018 */  sw          $a0, 0x18($sp)
/* 02F23C 8002F68C 0C002C3F */  jal         func_8000B0FC
/* 02F240 8002F690 AC850018 */   sw         $a1, 0x18($a0)
/* 02F244 8002F694 8FAF0018 */  lw          $t7, 0x18($sp)
/* 02F248 8002F698 ADE20020 */  sw          $v0, 0x20($t7)
/* 02F24C 8002F69C ADE30024 */  sw          $v1, 0x24($t7)
/* 02F250 8002F6A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F254 8002F6A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F258 8002F6A8 03E00008 */  jr          $ra
/* 02F25C 8002F6AC 00000000 */   nop

glabel func_8002F6B0 # 18
/* 02F260 8002F6B0 3C02800F */  lui         $v0, %hi(D_800F1BE0)
/* 02F264 8002F6B4 24421BE0 */  addiu       $v0, $v0, %lo(D_800F1BE0)
/* 02F268 8002F6B8 8C4E0014 */  lw          $t6, 0x14($v0)
/* 02F26C 8002F6BC 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02F270 8002F6C0 AFB00018 */  sw          $s0, 0x18($sp)
/* 02F274 8002F6C4 000E7880 */  sll         $t7, $t6, 2
/* 02F278 8002F6C8 01EE7821 */  addu        $t7, $t7, $t6
/* 02F27C 8002F6CC 000F7900 */  sll         $t7, $t7, 4
/* 02F280 8002F6D0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02F284 8002F6D4 AFA40040 */  sw          $a0, 0x40($sp)
/* 02F288 8002F6D8 004F8021 */  addu        $s0, $v0, $t7
/* 02F28C 8002F6DC 26100028 */  addiu       $s0, $s0, 0x28
/* 02F290 8002F6E0 0C001FA3 */  jal         func_80007E8C
/* 02F294 8002F6E4 8E040004 */   lw         $a0, 0x4($s0)
/* 02F298 8002F6E8 8E180000 */  lw          $t8, 0x0($s0)
/* 02F29C 8002F6EC 3C028012 */  lui         $v0, %hi(D_80125AB0 + 0x1)
/* 02F2A0 8002F6F0 24010002 */  addiu       $at, $zero, 0x2
/* 02F2A4 8002F6F4 0018C8C0 */  sll         $t9, $t8, 3
/* 02F2A8 8002F6F8 0338C823 */  subu        $t9, $t9, $t8
/* 02F2AC 8002F6FC 0019C880 */  sll         $t9, $t9, 2
/* 02F2B0 8002F700 0338C821 */  addu        $t9, $t9, $t8
/* 02F2B4 8002F704 0019C880 */  sll         $t9, $t9, 2
/* 02F2B8 8002F708 00591021 */  addu        $v0, $v0, $t9
/* 02F2BC 8002F70C 80425AB1 */  lb          $v0, %lo(D_80125AB0 + 0x1)($v0)
/* 02F2C0 8002F710 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F2C4 8002F714 10410015 */  beq         $v0, $at, .L8002F76C
/* 02F2C8 8002F718 24010005 */   addiu      $at, $zero, 0x5
/* 02F2CC 8002F71C 1441001D */  bne         $v0, $at, .L8002F794
/* 02F2D0 8002F720 8FA90040 */   lw         $t1, 0x40($sp)
/* 02F2D4 8002F724 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F2D8 8002F728 0C0446F9 */  jal         func_80111BE4
/* 02F2DC 8002F72C 240500C5 */   addiu      $a1, $zero, 0xc5
/* 02F2E0 8002F730 24080002 */  addiu       $t0, $zero, 0x2
/* 02F2E4 8002F734 3C01800F */  lui         $at, %hi(D_800F1D18)
/* 02F2E8 8002F738 3C053DCC */  lui         $a1, 0x3dcc
/* 02F2EC 8002F73C 3C06800A */  lui         $a2, %hi(D_800A5D54)
/* 02F2F0 8002F740 AC281D18 */  sw          $t0, %lo(D_800F1D18)($at)
/* 02F2F4 8002F744 24C65D54 */  addiu       $a2, $a2, %lo(D_800A5D54)
/* 02F2F8 8002F748 34A5CCCD */  ori         $a1, $a1, 0xcccd
/* 02F2FC 8002F74C 0C009E62 */  jal         func_80027988
/* 02F300 8002F750 00002025 */   move       $a0, $zero
/* 02F304 8002F754 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02F308 8002F758 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 02F30C 8002F75C 0C00BDA0 */  jal         func_8002F680
/* 02F310 8002F760 24050003 */   addiu      $a1, $zero, 0x3
/* 02F314 8002F764 1000008B */  b           .L8002F994
/* 02F318 8002F768 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F76C:
/* 02F31C 8002F76C 0C0446F9 */  jal         func_80111BE4
/* 02F320 8002F770 24050092 */   addiu      $a1, $zero, 0x92
/* 02F324 8002F774 0C001FA3 */  jal         func_80007E8C
/* 02F328 8002F778 8E040004 */   lw         $a0, 0x4($s0)
/* 02F32C 8002F77C 3C05800A */  lui         $a1, %hi(D_800A5D58)
/* 02F330 8002F780 24A55D58 */  addiu       $a1, $a1, %lo(D_800A5D58)
/* 02F334 8002F784 0C00BD68 */  jal         func_8002F5A0
/* 02F338 8002F788 00402025 */   move       $a0, $v0
/* 02F33C 8002F78C 10000081 */  b           .L8002F994
/* 02F340 8002F790 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F794:
/* 02F344 8002F794 0C001FA3 */  jal         func_80007E8C
/* 02F348 8002F798 8D240084 */   lw         $a0, 0x84($t1)
/* 02F34C 8002F79C 10400042 */  beq         $v0, $zero, .L8002F8A8
/* 02F350 8002F7A0 AFA20030 */   sw         $v0, 0x30($sp)
/* 02F354 8002F7A4 3C05800F */  lui         $a1, %hi(D_800F1BF4)
/* 02F358 8002F7A8 8CA51BF4 */  lw          $a1, %lo(D_800F1BF4)($a1)
/* 02F35C 8002F7AC 0C00BD7E */  jal         func_8002F5F8
/* 02F360 8002F7B0 00402025 */   move       $a0, $v0
/* 02F364 8002F7B4 14400014 */  bne         $v0, $zero, .L8002F808
/* 02F368 8002F7B8 3C0B800F */   lui        $t3, %hi(D_800F1BF4)
/* 02F36C 8002F7BC 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F370 8002F7C0 0C0446F9 */  jal         func_80111BE4
/* 02F374 8002F7C4 24050092 */   addiu      $a1, $zero, 0x92
/* 02F378 8002F7C8 3C0A800F */  lui         $t2, %hi(D_800F1BF4)
/* 02F37C 8002F7CC 8D4A1BF4 */  lw          $t2, %lo(D_800F1BF4)($t2)
/* 02F380 8002F7D0 24010001 */  addiu       $at, $zero, 0x1
/* 02F384 8002F7D4 8FA40030 */  lw          $a0, 0x30($sp)
/* 02F388 8002F7D8 15410007 */  bne         $t2, $at, .L8002F7F8
/* 02F38C 8002F7DC 3C05800A */   lui        $a1, 0x800a
/* 02F390 8002F7E0 3C05800A */  lui         $a1, %hi(D_800A5D78)
/* 02F394 8002F7E4 24A55D78 */  addiu       $a1, $a1, %lo(D_800A5D78)
/* 02F398 8002F7E8 0C00BD68 */  jal         func_8002F5A0
/* 02F39C 8002F7EC 8FA40030 */   lw         $a0, 0x30($sp)
/* 02F3A0 8002F7F0 10000068 */  b           .L8002F994
/* 02F3A4 8002F7F4 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F7F8:
/* 02F3A8 8002F7F8 0C00BD68 */  jal         func_8002F5A0
/* 02F3AC 8002F7FC 24A55D9C */   addiu      $a1, $a1, 0x5d9c
/* 02F3B0 8002F800 10000064 */  b           .L8002F994
/* 02F3B4 8002F804 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F808:
/* 02F3B8 8002F808 8D6B1BF4 */  lw          $t3, %lo(D_800F1BF4)($t3)
/* 02F3BC 8002F80C 24010001 */  addiu       $at, $zero, 0x1
/* 02F3C0 8002F810 8FAC0030 */  lw          $t4, 0x30($sp)
/* 02F3C4 8002F814 15610021 */  bne         $t3, $at, .L8002F89C
/* 02F3C8 8002F818 00008025 */   move       $s0, $zero
/* 02F3CC 8002F81C 8D850054 */  lw          $a1, 0x54($t4)
.L8002F820:
/* 02F3D0 8002F820 3C0D800F */  lui         $t5, %hi(D_800F1BF4)
/* 02F3D4 8002F824 8DAD1BF4 */  lw          $t5, %lo(D_800F1BF4)($t5)
/* 02F3D8 8002F828 3C04800F */  lui         $a0, %hi(D_800F1C0C)
/* 02F3DC 8002F82C AFA50024 */  sw          $a1, 0x24($sp)
/* 02F3E0 8002F830 000D7080 */  sll         $t6, $t5, 2
/* 02F3E4 8002F834 01CD7021 */  addu        $t6, $t6, $t5
/* 02F3E8 8002F838 000E7100 */  sll         $t6, $t6, 4
/* 02F3EC 8002F83C 01D07821 */  addu        $t7, $t6, $s0
/* 02F3F0 8002F840 008F2021 */  addu        $a0, $a0, $t7
/* 02F3F4 8002F844 0C001FA3 */  jal         func_80007E8C
/* 02F3F8 8002F848 8C841C0C */   lw         $a0, %lo(D_800F1C0C)($a0)
/* 02F3FC 8002F84C 1040000F */  beq         $v0, $zero, .L8002F88C
/* 02F400 8002F850 8FA50024 */   lw         $a1, 0x24($sp)
/* 02F404 8002F854 8C430054 */  lw          $v1, 0x54($v0)
/* 02F408 8002F858 84B80004 */  lh          $t8, 0x4($a1)
/* 02F40C 8002F85C 84790004 */  lh          $t9, 0x4($v1)
/* 02F410 8002F860 5719000B */  bnel        $t8, $t9, .L8002F890
/* 02F414 8002F864 26100008 */   addiu      $s0, $s0, 0x8
/* 02F418 8002F868 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F41C 8002F86C 0C0446F9 */  jal         func_80111BE4
/* 02F420 8002F870 24050092 */   addiu      $a1, $zero, 0x92
/* 02F424 8002F874 3C05800A */  lui         $a1, %hi(D_800A5DC0)
/* 02F428 8002F878 24A55DC0 */  addiu       $a1, $a1, %lo(D_800A5DC0)
/* 02F42C 8002F87C 0C00BD68 */  jal         func_8002F5A0
/* 02F430 8002F880 8FA40030 */   lw         $a0, 0x30($sp)
/* 02F434 8002F884 10000043 */  b           .L8002F994
/* 02F438 8002F888 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F88C:
/* 02F43C 8002F88C 26100008 */  addiu       $s0, $s0, 0x8
.L8002F890:
/* 02F440 8002F890 24010050 */  addiu       $at, $zero, 0x50
/* 02F444 8002F894 1601FFE2 */  bne         $s0, $at, .L8002F820
/* 02F448 8002F898 00000000 */   nop
.L8002F89C:
/* 02F44C 8002F89C 8FA40030 */  lw          $a0, 0x30($sp)
/* 02F450 8002F8A0 0C045011 */  jal         func_80114044
/* 02F454 8002F8A4 24050001 */   addiu      $a1, $zero, 0x1
.L8002F8A8:
/* 02F458 8002F8A8 3C05800F */  lui         $a1, %hi(D_800F1BF4)
/* 02F45C 8002F8AC 8CA51BF4 */  lw          $a1, %lo(D_800F1BF4)($a1)
/* 02F460 8002F8B0 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F464 8002F8B4 0C00BD40 */  jal         func_8002F500
/* 02F468 8002F8B8 00003025 */   move       $a2, $zero
/* 02F46C 8002F8BC 8FA80030 */  lw          $t0, 0x30($sp)
/* 02F470 8002F8C0 00408025 */  move        $s0, $v0
/* 02F474 8002F8C4 3C05800F */  lui         $a1, %hi(D_800F1BF4)
/* 02F478 8002F8C8 11000004 */  beq         $t0, $zero, .L8002F8DC
/* 02F47C 8002F8CC 01002025 */   move       $a0, $t0
/* 02F480 8002F8D0 8CA51BF4 */  lw          $a1, %lo(D_800F1BF4)($a1)
/* 02F484 8002F8D4 0C00BC45 */  jal         func_8002F114
/* 02F488 8002F8D8 00003025 */   move       $a2, $zero
.L8002F8DC:
/* 02F48C 8002F8DC 1200000F */  beq         $s0, $zero, .L8002F91C
/* 02F490 8002F8E0 8FA90030 */   lw         $t1, 0x30($sp)
/* 02F494 8002F8E4 1120000D */  beq         $t1, $zero, .L8002F91C
/* 02F498 8002F8E8 8FA40040 */   lw         $a0, 0x40($sp)
/* 02F49C 8002F8EC 0C0446F9 */  jal         func_80111BE4
/* 02F4A0 8002F8F0 240500C5 */   addiu      $a1, $zero, 0xc5
/* 02F4A4 8002F8F4 3C05800A */  lui         $a1, %hi(D_800A5DE0)
/* 02F4A8 8002F8F8 24A55DE0 */  addiu       $a1, $a1, %lo(D_800A5DE0)
/* 02F4AC 8002F8FC 0C00BD68 */  jal         func_8002F5A0
/* 02F4B0 8002F900 8FA40030 */   lw         $a0, 0x30($sp)
/* 02F4B4 8002F904 3C05800A */  lui         $a1, %hi(D_800A5DF8)
/* 02F4B8 8002F908 24A55DF8 */  addiu       $a1, $a1, %lo(D_800A5DF8)
/* 02F4BC 8002F90C 0C00BD68 */  jal         func_8002F5A0
/* 02F4C0 8002F910 02002025 */   move       $a0, $s0
/* 02F4C4 8002F914 1000001F */  b           .L8002F994
/* 02F4C8 8002F918 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F91C:
/* 02F4CC 8002F91C 1200000A */  beq         $s0, $zero, .L8002F948
/* 02F4D0 8002F920 8FAA0030 */   lw         $t2, 0x30($sp)
/* 02F4D4 8002F924 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F4D8 8002F928 0C0446F9 */  jal         func_80111BE4
/* 02F4DC 8002F92C 240500C5 */   addiu      $a1, $zero, 0xc5
/* 02F4E0 8002F930 3C05800A */  lui         $a1, %hi(D_800A5E1C)
/* 02F4E4 8002F934 24A55E1C */  addiu       $a1, $a1, %lo(D_800A5E1C)
/* 02F4E8 8002F938 0C00BD68 */  jal         func_8002F5A0
/* 02F4EC 8002F93C 02002025 */   move       $a0, $s0
/* 02F4F0 8002F940 10000014 */  b           .L8002F994
/* 02F4F4 8002F944 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F948:
/* 02F4F8 8002F948 1140000A */  beq         $t2, $zero, .L8002F974
/* 02F4FC 8002F94C 8FA40040 */   lw         $a0, 0x40($sp)
/* 02F500 8002F950 8FA40040 */  lw          $a0, 0x40($sp)
/* 02F504 8002F954 0C0446F9 */  jal         func_80111BE4
/* 02F508 8002F958 240500C5 */   addiu      $a1, $zero, 0xc5
/* 02F50C 8002F95C 3C05800A */  lui         $a1, %hi(D_800A5E38)
/* 02F510 8002F960 24A55E38 */  addiu       $a1, $a1, %lo(D_800A5E38)
/* 02F514 8002F964 0C00BD68 */  jal         func_8002F5A0
/* 02F518 8002F968 8FA40030 */   lw         $a0, 0x30($sp)
/* 02F51C 8002F96C 10000009 */  b           .L8002F994
/* 02F520 8002F970 8FBF001C */   lw         $ra, 0x1c($sp)
.L8002F974:
/* 02F524 8002F974 0C0446F9 */  jal         func_80111BE4
/* 02F528 8002F978 24050092 */   addiu      $a1, $zero, 0x92
/* 02F52C 8002F97C 3C06800A */  lui         $a2, %hi(D_800A5E50)
/* 02F530 8002F980 24C65E50 */  addiu       $a2, $a2, %lo(D_800A5E50)
/* 02F534 8002F984 00002025 */  move        $a0, $zero
/* 02F538 8002F988 0C009E62 */  jal         func_80027988
/* 02F53C 8002F98C 3C054000 */   lui        $a1, 0x4000
/* 02F540 8002F990 8FBF001C */  lw          $ra, 0x1c($sp)
.L8002F994:
/* 02F544 8002F994 8FB00018 */  lw          $s0, 0x18($sp)
/* 02F548 8002F998 27BD0040 */  addiu       $sp, $sp, 0x40
/* 02F54C 8002F99C 03E00008 */  jr          $ra
/* 02F550 8002F9A0 00000000 */   nop

glabel func_8002F9A4 # 19
/* 02F554 8002F9A4 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02F558 8002F9A8 AFBF0044 */  sw          $ra, 0x44($sp)
/* 02F55C 8002F9AC AFB50040 */  sw          $s5, 0x40($sp)
/* 02F560 8002F9B0 0080A825 */  move        $s5, $a0
/* 02F564 8002F9B4 AFB4003C */  sw          $s4, 0x3c($sp)
/* 02F568 8002F9B8 AFB30038 */  sw          $s3, 0x38($sp)
/* 02F56C 8002F9BC AFB20034 */  sw          $s2, 0x34($sp)
/* 02F570 8002F9C0 AFB10030 */  sw          $s1, 0x30($sp)
/* 02F574 8002F9C4 AFB0002C */  sw          $s0, 0x2c($sp)
/* 02F578 8002F9C8 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02F57C 8002F9CC 0C00BAD8 */  jal         func_8002EB60
/* 02F580 8002F9D0 F7B40018 */   sdc1       $f20, 0x18($sp)
/* 02F584 8002F9D4 3C01447A */  lui         $at, 0x447a
/* 02F588 8002F9D8 3C12800A */  lui         $s2, %hi(D_8009A5C8)
/* 02F58C 8002F9DC 4481A000 */  mtc1        $at, $f20
/* 02F590 8002F9E0 4480B000 */  mtc1        $zero, $f22
/* 02F594 8002F9E4 2652A5C8 */  addiu       $s2, $s2, %lo(D_8009A5C8)
/* 02F598 8002F9E8 00008825 */  move        $s1, $zero
/* 02F59C 8002F9EC 00009825 */  move        $s3, $zero
/* 02F5A0 8002F9F0 2414FFFF */  addiu       $s4, $zero, -0x1
.L8002F9F4:
/* 02F5A4 8002F9F4 8E440000 */  lw          $a0, 0x0($s2)
/* 02F5A8 8002F9F8 52840006 */  beql        $s4, $a0, .L8002FA14
/* 02F5AC 8002F9FC 8E4E0004 */   lw         $t6, 0x4($s2)
/* 02F5B0 8002FA00 0C00CB07 */  jal         func_80032C1C
/* 02F5B4 8002FA04 00000000 */   nop
/* 02F5B8 8002FA08 1040000F */  beq         $v0, $zero, .L8002FA48
/* 02F5BC 8002FA0C 02B38021 */   addu       $s0, $s5, $s3
/* 02F5C0 8002FA10 8E4E0004 */  lw          $t6, 0x4($s2)
.L8002FA14:
/* 02F5C4 8002FA14 4406A000 */  mfc1        $a2, $f20
/* 02F5C8 8002FA18 4407B000 */  mfc1        $a3, $f22
/* 02F5CC 8002FA1C 4600A306 */  mov.s       $f12, $f20
/* 02F5D0 8002FA20 4600A386 */  mov.s       $f14, $f20
/* 02F5D4 8002FA24 E7B60010 */  swc1        $f22, 0x10($sp)
/* 02F5D8 8002FA28 0C044E51 */  jal         func_80113944
/* 02F5DC 8002FA2C AFAE0014 */   sw         $t6, 0x14($sp)
/* 02F5E0 8002FA30 00402025 */  move        $a0, $v0
/* 02F5E4 8002FA34 24050001 */  addiu       $a1, $zero, 0x1
/* 02F5E8 8002FA38 0C00BC45 */  jal         func_8002F114
/* 02F5EC 8002FA3C 02203025 */   move       $a2, $s1
/* 02F5F0 8002FA40 10000004 */  b           .L8002FA54
/* 02F5F4 8002FA44 26310001 */   addiu      $s1, $s1, 0x1
.L8002FA48:
/* 02F5F8 8002FA48 AE00007C */  sw          $zero, 0x7c($s0)
/* 02F5FC 8002FA4C AE000078 */  sw          $zero, 0x78($s0)
/* 02F600 8002FA50 26310001 */  addiu       $s1, $s1, 0x1
.L8002FA54:
/* 02F604 8002FA54 2A21000A */  slti        $at, $s1, 0xa
/* 02F608 8002FA58 26730008 */  addiu       $s3, $s3, 0x8
/* 02F60C 8002FA5C 1420FFE5 */  bne         $at, $zero, .L8002F9F4
/* 02F610 8002FA60 26520008 */   addiu      $s2, $s2, 0x8
/* 02F614 8002FA64 00008825 */  move        $s1, $zero
/* 02F618 8002FA68 02A08025 */  move        $s0, $s5
/* 02F61C 8002FA6C 2412000A */  addiu       $s2, $zero, 0xa
.L8002FA70:
/* 02F620 8002FA70 8E0F0028 */  lw          $t7, 0x28($s0)
/* 02F624 8002FA74 51E0000E */  beql        $t7, $zero, .L8002FAB0
/* 02F628 8002FA78 26310001 */   addiu      $s1, $s1, 0x1
/* 02F62C 8002FA7C E7B60010 */  swc1        $f22, 0x10($sp)
/* 02F630 8002FA80 8E180028 */  lw          $t8, 0x28($s0)
/* 02F634 8002FA84 4406A000 */  mfc1        $a2, $f20
/* 02F638 8002FA88 4407B000 */  mfc1        $a3, $f22
/* 02F63C 8002FA8C 4600A306 */  mov.s       $f12, $f20
/* 02F640 8002FA90 4600A386 */  mov.s       $f14, $f20
/* 02F644 8002FA94 0C044E51 */  jal         func_80113944
/* 02F648 8002FA98 AFB80014 */   sw         $t8, 0x14($sp)
/* 02F64C 8002FA9C 00402025 */  move        $a0, $v0
/* 02F650 8002FAA0 00002825 */  move        $a1, $zero
/* 02F654 8002FAA4 0C00BC45 */  jal         func_8002F114
/* 02F658 8002FAA8 02203025 */   move       $a2, $s1
/* 02F65C 8002FAAC 26310001 */  addiu       $s1, $s1, 0x1
.L8002FAB0:
/* 02F660 8002FAB0 1632FFEF */  bne         $s1, $s2, .L8002FA70
/* 02F664 8002FAB4 26100008 */   addiu      $s0, $s0, 0x8
/* 02F668 8002FAB8 8EB900F0 */  lw          $t9, 0xf0($s5)
/* 02F66C 8002FABC 26B000F0 */  addiu       $s0, $s5, 0xf0
/* 02F670 8002FAC0 5320000D */  beql        $t9, $zero, .L8002FAF8
/* 02F674 8002FAC4 8EA900F8 */   lw         $t1, 0xf8($s5)
/* 02F678 8002FAC8 E7B60010 */  swc1        $f22, 0x10($sp)
/* 02F67C 8002FACC 8E080000 */  lw          $t0, 0x0($s0)
/* 02F680 8002FAD0 4406A000 */  mfc1        $a2, $f20
/* 02F684 8002FAD4 4407B000 */  mfc1        $a3, $f22
/* 02F688 8002FAD8 4600A306 */  mov.s       $f12, $f20
/* 02F68C 8002FADC 4600A386 */  mov.s       $f14, $f20
/* 02F690 8002FAE0 0C044E51 */  jal         func_80113944
/* 02F694 8002FAE4 AFA80014 */   sw         $t0, 0x14($sp)
/* 02F698 8002FAE8 AE000000 */  sw          $zero, 0x0($s0)
/* 02F69C 8002FAEC 0C00BCBC */  jal         func_8002F2F0
/* 02F6A0 8002FAF0 00402025 */   move       $a0, $v0
/* 02F6A4 8002FAF4 8EA900F8 */  lw          $t1, 0xf8($s5)
.L8002FAF8:
/* 02F6A8 8002FAF8 26B000F8 */  addiu       $s0, $s5, 0xf8
/* 02F6AC 8002FAFC 1120000C */  beq         $t1, $zero, .L8002FB30
/* 02F6B0 8002FB00 00000000 */   nop
/* 02F6B4 8002FB04 E7B60010 */  swc1        $f22, 0x10($sp)
/* 02F6B8 8002FB08 8E0A0000 */  lw          $t2, 0x0($s0)
/* 02F6BC 8002FB0C 4406A000 */  mfc1        $a2, $f20
/* 02F6C0 8002FB10 4407B000 */  mfc1        $a3, $f22
/* 02F6C4 8002FB14 4600A306 */  mov.s       $f12, $f20
/* 02F6C8 8002FB18 4600A386 */  mov.s       $f14, $f20
/* 02F6CC 8002FB1C 0C044E51 */  jal         func_80113944
/* 02F6D0 8002FB20 AFAA0014 */   sw         $t2, 0x14($sp)
/* 02F6D4 8002FB24 AE000000 */  sw          $zero, 0x0($s0)
/* 02F6D8 8002FB28 0C00BCCE */  jal         func_8002F338
/* 02F6DC 8002FB2C 00402025 */   move       $a0, $v0
.L8002FB30:
/* 02F6E0 8002FB30 0C00BAD8 */  jal         func_8002EB60
/* 02F6E4 8002FB34 02A02025 */   move       $a0, $s5
/* 02F6E8 8002FB38 8FBF0044 */  lw          $ra, 0x44($sp)
/* 02F6EC 8002FB3C D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02F6F0 8002FB40 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02F6F4 8002FB44 8FB0002C */  lw          $s0, 0x2c($sp)
/* 02F6F8 8002FB48 8FB10030 */  lw          $s1, 0x30($sp)
/* 02F6FC 8002FB4C 8FB20034 */  lw          $s2, 0x34($sp)
/* 02F700 8002FB50 8FB30038 */  lw          $s3, 0x38($sp)
/* 02F704 8002FB54 8FB4003C */  lw          $s4, 0x3c($sp)
/* 02F708 8002FB58 8FB50040 */  lw          $s5, 0x40($sp)
/* 02F70C 8002FB5C 03E00008 */  jr          $ra
/* 02F710 8002FB60 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8002FB64 # 20
/* 02F714 8002FB64 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02F718 8002FB68 AFBF003C */  sw          $ra, 0x3c($sp)
/* 02F71C 8002FB6C 3C04800A */  lui         $a0, %hi(D_8009A3F0)
/* 02F720 8002FB70 AFB40038 */  sw          $s4, 0x38($sp)
/* 02F724 8002FB74 AFB30034 */  sw          $s3, 0x34($sp)
/* 02F728 8002FB78 AFB20030 */  sw          $s2, 0x30($sp)
/* 02F72C 8002FB7C AFB1002C */  sw          $s1, 0x2c($sp)
/* 02F730 8002FB80 AFB00028 */  sw          $s0, 0x28($sp)
/* 02F734 8002FB84 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02F738 8002FB88 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02F73C 8002FB8C 0C002114 */  jal         func_80008450
/* 02F740 8002FB90 2484A3F0 */   addiu      $a0, $a0, %lo(D_8009A3F0)
/* 02F744 8002FB94 00408025 */  move        $s0, $v0
/* 02F748 8002FB98 00402025 */  move        $a0, $v0
/* 02F74C 8002FB9C 0C00237A */  jal         func_80008DE8
/* 02F750 8002FBA0 24052000 */   addiu      $a1, $zero, 0x2000
/* 02F754 8002FBA4 0C00219D */  jal         func_80008674
/* 02F758 8002FBA8 02002025 */   move       $a0, $s0
/* 02F75C 8002FBAC 3C128013 */  lui         $s2, %hi(D_80133DE4)
/* 02F760 8002FBB0 26523DE4 */  addiu       $s2, $s2, %lo(D_80133DE4)
/* 02F764 8002FBB4 8E4E0000 */  lw          $t6, 0x0($s2)
/* 02F768 8002FBB8 3C01800F */  lui         $at, %hi(D_800F1BE4)
/* 02F76C 8002FBBC 3C09800F */  lui         $t1, %hi(D_800F1BE4)
/* 02F770 8002FBC0 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 02F774 8002FBC4 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02F778 8002FBC8 3C05800F */  lui         $a1, %hi(D_800F1C80)
/* 02F77C 8002FBCC E6040000 */  swc1        $f4, 0x0($s0)
/* 02F780 8002FBD0 8E4F0000 */  lw          $t7, 0x0($s2)
/* 02F784 8002FBD4 3C11800F */  lui         $s1, %hi(D_800F1BE0)
/* 02F788 8002FBD8 3C14800F */  lui         $s4, %hi(D_800F1C08)
/* 02F78C 8002FBDC C5E6000C */  lwc1        $f6, 0xc($t7)
/* 02F790 8002FBE0 3C13800A */  lui         $s3, %hi(D_8009A540)
/* 02F794 8002FBE4 4480A000 */  mtc1        $zero, $f20
/* 02F798 8002FBE8 E6060004 */  swc1        $f6, 0x4($s0)
/* 02F79C 8002FBEC 8E580000 */  lw          $t8, 0x0($s2)
/* 02F7A0 8002FBF0 24A51C80 */  addiu       $a1, $a1, %lo(D_800F1C80)
/* 02F7A4 8002FBF4 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 02F7A8 8002FBF8 C708000C */  lwc1        $f8, 0xc($t8)
/* 02F7AC 8002FBFC 2673A540 */  addiu       $s3, $s3, %lo(D_8009A540)
/* 02F7B0 8002FC00 26941C08 */  addiu       $s4, $s4, %lo(D_800F1C08)
/* 02F7B4 8002FC04 E6080008 */  swc1        $f8, 0x8($s0)
/* 02F7B8 8002FC08 AC301BE0 */  sw          $s0, %lo(D_800F1BE0)($at)
/* 02F7BC 8002FC0C 8E19002C */  lw          $t9, 0x2c($s0)
/* 02F7C0 8002FC10 26311BE0 */  addiu       $s1, $s1, %lo(D_800F1BE0)
/* 02F7C4 8002FC14 8F280028 */  lw          $t0, 0x28($t9)
/* 02F7C8 8002FC18 AC281BE4 */  sw          $t0, %lo(D_800F1BE4)($at)
/* 02F7CC 8002FC1C 8D291BE4 */  lw          $t1, %lo(D_800F1BE4)($t1)
/* 02F7D0 8002FC20 3C01800F */  lui         $at, %hi(D_800F1BE8)
/* 02F7D4 8002FC24 8D2A0028 */  lw          $t2, 0x28($t1)
/* 02F7D8 8002FC28 AC2A1BE8 */  sw          $t2, %lo(D_800F1BE8)($at)
/* 02F7DC 8002FC2C 00001025 */  move        $v0, $zero
.L8002FC30:
/* 02F7E0 8002FC30 00801825 */  move        $v1, $a0
.L8002FC34:
/* 02F7E4 8002FC34 24420001 */  addiu       $v0, $v0, 0x1
/* 02F7E8 8002FC38 2841000A */  slti        $at, $v0, 0xa
/* 02F7EC 8002FC3C 24630008 */  addiu       $v1, $v1, 0x8
/* 02F7F0 8002FC40 1420FFFC */  bne         $at, $zero, .L8002FC34
/* 02F7F4 8002FC44 AC600024 */   sw         $zero, 0x24($v1)
/* 02F7F8 8002FC48 24840050 */  addiu       $a0, $a0, 0x50
/* 02F7FC 8002FC4C 0085082B */  sltu        $at, $a0, $a1
/* 02F800 8002FC50 5420FFF7 */  bnel        $at, $zero, .L8002FC30
/* 02F804 8002FC54 00001025 */   move       $v0, $zero
/* 02F808 8002FC58 3C01800F */  lui         $at, %hi(D_800F1CD4)
/* 02F80C 8002FC5C AC201CD4 */  sw          $zero, %lo(D_800F1CD4)($at)
/* 02F810 8002FC60 3C01800F */  lui         $at, %hi(D_800F1CDC)
/* 02F814 8002FC64 AC201CDC */  sw          $zero, %lo(D_800F1CDC)($at)
/* 02F818 8002FC68 3C01800A */  lui         $at, %hi(D_800A5F58)
/* 02F81C 8002FC6C C4365F58 */  lwc1        $f22, %lo(D_800A5F58)($at)
.L8002FC70:
/* 02F820 8002FC70 0C002114 */  jal         func_80008450
/* 02F824 8002FC74 02602025 */   move       $a0, $s3
/* 02F828 8002FC78 00408025 */  move        $s0, $v0
/* 02F82C 8002FC7C 00402025 */  move        $a0, $v0
/* 02F830 8002FC80 0C00237A */  jal         func_80008DE8
/* 02F834 8002FC84 24052000 */   addiu      $a1, $zero, 0x2000
/* 02F838 8002FC88 0C00219D */  jal         func_80008674
/* 02F83C 8002FC8C 02002025 */   move       $a0, $s0
/* 02F840 8002FC90 E614000C */  swc1        $f20, 0xc($s0)
/* 02F844 8002FC94 E6140010 */  swc1        $f20, 0x10($s0)
/* 02F848 8002FC98 E6140014 */  swc1        $f20, 0x14($s0)
/* 02F84C 8002FC9C E6140018 */  swc1        $f20, 0x18($s0)
/* 02F850 8002FCA0 E614001C */  swc1        $f20, 0x1c($s0)
/* 02F854 8002FCA4 E6140020 */  swc1        $f20, 0x20($s0)
/* 02F858 8002FCA8 8E4B0000 */  lw          $t3, 0x0($s2)
/* 02F85C 8002FCAC 8E0E0038 */  lw          $t6, 0x38($s0)
/* 02F860 8002FCB0 26310004 */  addiu       $s1, $s1, 0x4
/* 02F864 8002FCB4 C56A000C */  lwc1        $f10, 0xc($t3)
/* 02F868 8002FCB8 0234082B */  sltu        $at, $s1, $s4
/* 02F86C 8002FCBC 46165402 */  mul.s       $f16, $f10, $f22
/* 02F870 8002FCC0 E6100000 */  swc1        $f16, 0x0($s0)
/* 02F874 8002FCC4 8E4C0000 */  lw          $t4, 0x0($s2)
/* 02F878 8002FCC8 C592000C */  lwc1        $f18, 0xc($t4)
/* 02F87C 8002FCCC 46169102 */  mul.s       $f4, $f18, $f22
/* 02F880 8002FCD0 E6040004 */  swc1        $f4, 0x4($s0)
/* 02F884 8002FCD4 8E4D0000 */  lw          $t5, 0x0($s2)
/* 02F888 8002FCD8 C5A6000C */  lwc1        $f6, 0xc($t5)
/* 02F88C 8002FCDC 46163202 */  mul.s       $f8, $f6, $f22
/* 02F890 8002FCE0 E6080008 */  swc1        $f8, 0x8($s0)
/* 02F894 8002FCE4 1420FFE2 */  bne         $at, $zero, .L8002FC70
/* 02F898 8002FCE8 AE2E00C4 */   sw         $t6, 0xc4($s1)
/* 02F89C 8002FCEC 3C10800F */  lui         $s0, %hi(D_800F1D28)
/* 02F8A0 8002FCF0 3C11800A */  lui         $s1, %hi(D_8009A64C)
/* 02F8A4 8002FCF4 3C13800A */  lui         $s3, %hi(D_8009A654)
/* 02F8A8 8002FCF8 3C128007 */  lui         $s2, %hi(D_80074DE0)
/* 02F8AC 8002FCFC 26524DE0 */  addiu       $s2, $s2, %lo(D_80074DE0)
/* 02F8B0 8002FD00 2673A654 */  addiu       $s3, $s3, %lo(D_8009A654)
/* 02F8B4 8002FD04 2631A64C */  addiu       $s1, $s1, %lo(D_8009A64C)
/* 02F8B8 8002FD08 26101D28 */  addiu       $s0, $s0, %lo(D_800F1D28)
.L8002FD0C:
/* 02F8BC 8002FD0C AE000000 */  sw          $zero, 0x0($s0)
/* 02F8C0 8002FD10 02002025 */  move        $a0, $s0
/* 02F8C4 8002FD14 8E250000 */  lw          $a1, 0x0($s1)
/* 02F8C8 8002FD18 0C00F770 */  jal         func_8003DDC0
/* 02F8CC 8002FD1C 02403025 */   move       $a2, $s2
/* 02F8D0 8002FD20 26310004 */  addiu       $s1, $s1, 0x4
/* 02F8D4 8002FD24 1633FFF9 */  bne         $s1, $s3, .L8002FD0C
/* 02F8D8 8002FD28 26100004 */   addiu      $s0, $s0, 0x4
/* 02F8DC 8002FD2C 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02F8E0 8002FD30 0C00BE69 */  jal         func_8002F9A4
/* 02F8E4 8002FD34 24841BE0 */   addiu      $a0, $a0, %lo(D_800F1BE0)
/* 02F8E8 8002FD38 8FBF003C */  lw          $ra, 0x3c($sp)
/* 02F8EC 8002FD3C D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02F8F0 8002FD40 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02F8F4 8002FD44 8FB00028 */  lw          $s0, 0x28($sp)
/* 02F8F8 8002FD48 8FB1002C */  lw          $s1, 0x2c($sp)
/* 02F8FC 8002FD4C 8FB20030 */  lw          $s2, 0x30($sp)
/* 02F900 8002FD50 8FB30034 */  lw          $s3, 0x34($sp)
/* 02F904 8002FD54 8FB40038 */  lw          $s4, 0x38($sp)
/* 02F908 8002FD58 03E00008 */  jr          $ra
/* 02F90C 8002FD5C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8002FD60 # 21
/* 02F910 8002FD60 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F914 8002FD64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F918 8002FD68 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 02F91C 8002FD6C 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 02F920 8002FD70 0C014388 */  jal         bzero
/* 02F924 8002FD74 24050100 */   addiu      $a1, $zero, 0x100
/* 02F928 8002FD78 240E0001 */  addiu       $t6, $zero, 0x1
/* 02F92C 8002FD7C 3C01800F */  lui         $at, %hi(D_800F1BF4)
/* 02F930 8002FD80 AC2E1BF4 */  sw          $t6, %lo(D_800F1BF4)($at)
/* 02F934 8002FD84 3C0F800F */  lui         $t7, %hi(D_800F1BE0)
/* 02F938 8002FD88 3C01800F */  lui         $at, %hi(D_800F1D18)
/* 02F93C 8002FD8C 25E51BE0 */  addiu       $a1, $t7, %lo(D_800F1BE0)
/* 02F940 8002FD90 3C07800F */  lui         $a3, %hi(D_800F1C80)
/* 02F944 8002FD94 AC201D18 */  sw          $zero, %lo(D_800F1D18)($at)
/* 02F948 8002FD98 24E71C80 */  addiu       $a3, $a3, %lo(D_800F1C80)
/* 02F94C 8002FD9C 00A03025 */  move        $a2, $a1
/* 02F950 8002FDA0 2404000A */  addiu       $a0, $zero, 0xa
.L8002FDA4:
/* 02F954 8002FDA4 ACA0002C */  sw          $zero, 0x2c($a1)
/* 02F958 8002FDA8 ACA00028 */  sw          $zero, 0x28($a1)
/* 02F95C 8002FDAC ACA00034 */  sw          $zero, 0x34($a1)
/* 02F960 8002FDB0 ACA00030 */  sw          $zero, 0x30($a1)
/* 02F964 8002FDB4 24030002 */  addiu       $v1, $zero, 0x2
/* 02F968 8002FDB8 24C20010 */  addiu       $v0, $a2, 0x10
.L8002FDBC:
/* 02F96C 8002FDBC 24630004 */  addiu       $v1, $v1, 0x4
/* 02F970 8002FDC0 AC400034 */  sw          $zero, 0x34($v0)
/* 02F974 8002FDC4 AC400030 */  sw          $zero, 0x30($v0)
/* 02F978 8002FDC8 AC40003C */  sw          $zero, 0x3c($v0)
/* 02F97C 8002FDCC AC400038 */  sw          $zero, 0x38($v0)
/* 02F980 8002FDD0 AC400044 */  sw          $zero, 0x44($v0)
/* 02F984 8002FDD4 AC400040 */  sw          $zero, 0x40($v0)
/* 02F988 8002FDD8 24420020 */  addiu       $v0, $v0, 0x20
/* 02F98C 8002FDDC AC40000C */  sw          $zero, 0xc($v0)
/* 02F990 8002FDE0 1464FFF6 */  bne         $v1, $a0, .L8002FDBC
/* 02F994 8002FDE4 AC400008 */   sw         $zero, 0x8($v0)
/* 02F998 8002FDE8 24A50050 */  addiu       $a1, $a1, 0x50
/* 02F99C 8002FDEC 14A7FFED */  bne         $a1, $a3, .L8002FDA4
/* 02F9A0 8002FDF0 24C60050 */   addiu      $a2, $a2, 0x50
/* 02F9A4 8002FDF4 3C01800F */  lui         $at, %hi(D_800F1CD0)
/* 02F9A8 8002FDF8 AC201CD4 */  sw          $zero, %lo(D_800F1CD4)($at)
/* 02F9AC 8002FDFC AC201CD0 */  sw          $zero, %lo(D_800F1CD0)($at)
/* 02F9B0 8002FE00 3C01800F */  lui         $at, %hi(D_800F1CD8)
/* 02F9B4 8002FE04 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F9B8 8002FE08 AC201CDC */  sw          $zero, %lo(D_800F1CDC)($at)
/* 02F9BC 8002FE0C AC201CD8 */  sw          $zero, %lo(D_800F1CD8)($at)
/* 02F9C0 8002FE10 3C01800F */  lui         $at, %hi(D_800F1C58)
/* 02F9C4 8002FE14 241800A4 */  addiu       $t8, $zero, 0xa4
/* 02F9C8 8002FE18 AC381C58 */  sw          $t8, %lo(D_800F1C58)($at)
/* 02F9CC 8002FE1C 03E00008 */  jr          $ra
/* 02F9D0 8002FE20 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002FE24 # 22
/* 02F9D4 8002FE24 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02F9D8 8002FE28 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02F9DC 8002FE2C AFBF002C */  sw          $ra, 0x2c($sp)
/* 02F9E0 8002FE30 AFB20028 */  sw          $s2, 0x28($sp)
/* 02F9E4 8002FE34 AFB10024 */  sw          $s1, 0x24($sp)
/* 02F9E8 8002FE38 AFB00020 */  sw          $s0, 0x20($sp)
/* 02F9EC 8002FE3C 4480A000 */  mtc1        $zero, $f20
/* 02F9F0 8002FE40 8C8E0004 */  lw          $t6, 0x4($a0)
/* 02F9F4 8002FE44 3C014334 */  lui         $at, 0x4334
/* 02F9F8 8002FE48 44812000 */  mtc1        $at, $f4
/* 02F9FC 8002FE4C E5D4000C */  swc1        $f20, 0xc($t6)
/* 02FA00 8002FE50 8C8F0004 */  lw          $t7, 0x4($a0)
/* 02FA04 8002FE54 00808825 */  move        $s1, $a0
/* 02FA08 8002FE58 00008025 */  move        $s0, $zero
/* 02FA0C 8002FE5C E5F40010 */  swc1        $f20, 0x10($t7)
/* 02FA10 8002FE60 8C980004 */  lw          $t8, 0x4($a0)
/* 02FA14 8002FE64 24120050 */  addiu       $s2, $zero, 0x50
/* 02FA18 8002FE68 E7140014 */  swc1        $f20, 0x14($t8)
/* 02FA1C 8002FE6C 8C990008 */  lw          $t9, 0x8($a0)
/* 02FA20 8002FE70 E7340018 */  swc1        $f20, 0x18($t9)
/* 02FA24 8002FE74 8C880008 */  lw          $t0, 0x8($a0)
/* 02FA28 8002FE78 E514001C */  swc1        $f20, 0x1c($t0)
/* 02FA2C 8002FE7C 8C890008 */  lw          $t1, 0x8($a0)
/* 02FA30 8002FE80 E5340020 */  swc1        $f20, 0x20($t1)
/* 02FA34 8002FE84 AC80000C */  sw          $zero, 0xc($a0)
/* 02FA38 8002FE88 E4840010 */  swc1        $f4, 0x10($a0)
/* 02FA3C 8002FE8C 8E2A0014 */  lw          $t2, 0x14($s1)
.L8002FE90:
/* 02FA40 8002FE90 000A5880 */  sll         $t3, $t2, 2
/* 02FA44 8002FE94 016A5821 */  addu        $t3, $t3, $t2
/* 02FA48 8002FE98 000B5900 */  sll         $t3, $t3, 4
/* 02FA4C 8002FE9C 022B6021 */  addu        $t4, $s1, $t3
/* 02FA50 8002FEA0 01906821 */  addu        $t5, $t4, $s0
/* 02FA54 8002FEA4 8DA4002C */  lw          $a0, 0x2c($t5)
/* 02FA58 8002FEA8 50800007 */  beql        $a0, $zero, .L8002FEC8
/* 02FA5C 8002FEAC 26100008 */   addiu      $s0, $s0, 0x8
/* 02FA60 8002FEB0 0C001FA3 */  jal         func_80007E8C
/* 02FA64 8002FEB4 00000000 */   nop
/* 02FA68 8002FEB8 E454000C */  swc1        $f20, 0xc($v0)
/* 02FA6C 8002FEBC E4540010 */  swc1        $f20, 0x10($v0)
/* 02FA70 8002FEC0 E4540014 */  swc1        $f20, 0x14($v0)
/* 02FA74 8002FEC4 26100008 */  addiu       $s0, $s0, 0x8
.L8002FEC8:
/* 02FA78 8002FEC8 5612FFF1 */  bnel        $s0, $s2, .L8002FE90
/* 02FA7C 8002FECC 8E2A0014 */   lw         $t2, 0x14($s1)
/* 02FA80 8002FED0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02FA84 8002FED4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02FA88 8002FED8 8FB00020 */  lw          $s0, 0x20($sp)
/* 02FA8C 8002FEDC 8FB10024 */  lw          $s1, 0x24($sp)
/* 02FA90 8002FEE0 8FB20028 */  lw          $s2, 0x28($sp)
/* 02FA94 8002FEE4 03E00008 */  jr          $ra
/* 02FA98 8002FEE8 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8002FEEC # 23
/* 02FA9C 8002FEEC 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 02FAA0 8002FEF0 AFB30054 */  sw          $s3, 0x54($sp)
/* 02FAA4 8002FEF4 3C13800F */  lui         $s3, %hi(D_800F1BE0)
/* 02FAA8 8002FEF8 26731BE0 */  addiu       $s3, $s3, %lo(D_800F1BE0)
/* 02FAAC 8002FEFC 8E6E0014 */  lw          $t6, 0x14($s3)
/* 02FAB0 8002FF00 3C01C0C0 */  lui         $at, 0xc0c0
/* 02FAB4 8002FF04 44812000 */  mtc1        $at, $f4
/* 02FAB8 8002FF08 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02FABC 8002FF0C 4486A000 */  mtc1        $a2, $f20
/* 02FAC0 8002FF10 F7BA0030 */  sdc1        $f26, 0x30($sp)
/* 02FAC4 8002FF14 3C01C0A0 */  lui         $at, 0xc0a0
/* 02FAC8 8002FF18 000E7880 */  sll         $t7, $t6, 2
/* 02FACC 8002FF1C F7BC0038 */  sdc1        $f28, 0x38($sp)
/* 02FAD0 8002FF20 4481D000 */  mtc1        $at, $f26
/* 02FAD4 8002FF24 01EE7821 */  addu        $t7, $t7, $t6
/* 02FAD8 8002FF28 AFB70064 */  sw          $s7, 0x64($sp)
/* 02FADC 8002FF2C AFB60060 */  sw          $s6, 0x60($sp)
/* 02FAE0 8002FF30 F7B80028 */  sdc1        $f24, 0x28($sp)
/* 02FAE4 8002FF34 000F7900 */  sll         $t7, $t7, 4
/* 02FAE8 8002FF38 3C0143B4 */  lui         $at, 0x43b4
/* 02FAEC 8002FF3C 46142700 */  add.s       $f28, $f4, $f20
/* 02FAF0 8002FF40 AFBE0068 */  sw          $fp, 0x68($sp)
/* 02FAF4 8002FF44 AFB5005C */  sw          $s5, 0x5c($sp)
/* 02FAF8 8002FF48 AFB40058 */  sw          $s4, 0x58($sp)
/* 02FAFC 8002FF4C AFB20050 */  sw          $s2, 0x50($sp)
/* 02FB00 8002FF50 AFB1004C */  sw          $s1, 0x4c($sp)
/* 02FB04 8002FF54 F7BE0040 */  sdc1        $f30, 0x40($sp)
/* 02FB08 8002FF58 026F1021 */  addu        $v0, $s3, $t7
/* 02FB0C 8002FF5C 3C16800B */  lui         $s6, %hi(D_800AE4E4)
/* 02FB10 8002FF60 3C17800F */  lui         $s7, %hi(D_800F1CE8)
/* 02FB14 8002FF64 4481A000 */  mtc1        $at, $f20
/* 02FB18 8002FF68 4480C000 */  mtc1        $zero, $f24
/* 02FB1C 8002FF6C 46006786 */  mov.s       $f30, $f12
/* 02FB20 8002FF70 AFBF006C */  sw          $ra, 0x6c($sp)
/* 02FB24 8002FF74 AFB00048 */  sw          $s0, 0x48($sp)
/* 02FB28 8002FF78 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02FB2C 8002FF7C E7AE00A4 */  swc1        $f14, 0xa4($sp)
/* 02FB30 8002FF80 24520028 */  addiu       $s2, $v0, 0x28
/* 02FB34 8002FF84 26F71CE8 */  addiu       $s7, $s7, %lo(D_800F1CE8)
/* 02FB38 8002FF88 26D6E4E4 */  addiu       $s6, $s6, %lo(D_800AE4E4)
/* 02FB3C 8002FF8C 00008825 */  move        $s1, $zero
/* 02FB40 8002FF90 24140086 */  addiu       $s4, $zero, 0x86
/* 02FB44 8002FF94 2415000A */  addiu       $s5, $zero, 0xa
/* 02FB48 8002FF98 27BE007C */  addiu       $fp, $sp, 0x7c
.L8002FF9C:
/* 02FB4C 8002FF9C 8E440004 */  lw          $a0, 0x4($s2)
/* 02FB50 8002FFA0 0011C080 */  sll         $t8, $s1, 2
/* 02FB54 8002FFA4 0278C821 */  addu        $t9, $s3, $t8
/* 02FB58 8002FFA8 10800005 */  beq         $a0, $zero, .L8002FFC0
/* 02FB5C 8002FFAC 00000000 */   nop
/* 02FB60 8002FFB0 0C001FA3 */  jal         func_80007E8C
/* 02FB64 8002FFB4 00000000 */   nop
/* 02FB68 8002FFB8 10000004 */  b           .L8002FFCC
/* 02FB6C 8002FFBC 00408025 */   move       $s0, $v0
.L8002FFC0:
/* 02FB70 8002FFC0 0C001FA3 */  jal         func_80007E8C
/* 02FB74 8002FFC4 8F2400C8 */   lw         $a0, 0xc8($t9)
/* 02FB78 8002FFC8 00408025 */  move        $s0, $v0
.L8002FFCC:
/* 02FB7C 8002FFCC 44913000 */  mtc1        $s1, $f6
/* 02FB80 8002FFD0 3C014210 */  lui         $at, 0x4210
/* 02FB84 8002FFD4 44815000 */  mtc1        $at, $f10
/* 02FB88 8002FFD8 46803220 */  cvt.s.w     $f8, $f6
/* 02FB8C 8002FFDC 3C0142B4 */  lui         $at, 0x42b4
/* 02FB90 8002FFE0 44812000 */  mtc1        $at, $f4
/* 02FB94 8002FFE4 460A4402 */  mul.s       $f16, $f8, $f10
/* 02FB98 8002FFE8 461E8480 */  add.s       $f18, $f16, $f30
/* 02FB9C 8002FFEC 46049581 */  sub.s       $f22, $f18, $f4
/* 02FBA0 8002FFF0 0C00F134 */  jal         func_8003C4D0
/* 02FBA4 8002FFF4 4600B306 */   mov.s      $f12, $f22
/* 02FBA8 8002FFF8 46000180 */  add.s       $f6, $f0, $f0
/* 02FBAC 8002FFFC 4600B306 */  mov.s       $f12, $f22
/* 02FBB0 80030000 0C00F0F7 */  jal         func_8003C3DC
/* 02FBB4 80030004 E7A6007C */   swc1       $f6, 0x7c($sp)
/* 02FBB8 80030008 3C013F00 */  lui         $at, 0x3f00
/* 02FBBC 8003000C 44814000 */  mtc1        $at, $f8
/* 02FBC0 80030010 C7B000A4 */  lwc1        $f16, 0xa4($sp)
/* 02FBC4 80030014 4600B306 */  mov.s       $f12, $f22
/* 02FBC8 80030018 46080282 */  mul.s       $f10, $f0, $f8
/* 02FBCC 8003001C 46105480 */  add.s       $f18, $f10, $f16
/* 02FBD0 80030020 0C00F0F7 */  jal         func_8003C3DC
/* 02FBD4 80030024 E7B20080 */   swc1       $f18, 0x80($sp)
/* 02FBD8 80030028 3C013FC0 */  lui         $at, 0x3fc0
/* 02FBDC 8003002C 44812000 */  mtc1        $at, $f4
/* 02FBE0 80030030 02E02025 */  move        $a0, $s7
/* 02FBE4 80030034 03C02825 */  move        $a1, $fp
/* 02FBE8 80030038 46040182 */  mul.s       $f6, $f0, $f4
/* 02FBEC 8003003C 26060018 */  addiu       $a2, $s0, 0x18
/* 02FBF0 80030040 4606E201 */  sub.s       $f8, $f28, $f6
/* 02FBF4 80030044 0C00FEE4 */  jal         func_8003FB90
/* 02FBF8 80030048 E7A80084 */   swc1       $f8, 0x84($sp)
/* 02FBFC 8003004C 16200005 */  bne         $s1, $zero, .L80030064
/* 02FC00 80030050 02002025 */   move       $a0, $s0
/* 02FC04 80030054 96080034 */  lhu         $t0, 0x34($s0)
/* 02FC08 80030058 3C01800F */  lui         $at, %hi(D_800F1BF0)
/* 02FC0C 8003005C 12880006 */  beq         $s4, $t0, .L80030078
/* 02FC10 80030060 00000000 */   nop
.L80030064:
/* 02FC14 80030064 4405D000 */  mfc1        $a1, $f26
/* 02FC18 80030068 0C00BADA */  jal         func_8002EB68
/* 02FC1C 8003006C 3C064334 */   lui        $a2, 0x4334
/* 02FC20 80030070 1000001F */  b           .L800300F0
/* 02FC24 80030074 00000000 */   nop
.L80030078:
/* 02FC28 80030078 C4201BF0 */  lwc1        $f0, %lo(D_800F1BF0)($at)
/* 02FC2C 8003007C 3C0142C8 */  lui         $at, 0x42c8
/* 02FC30 80030080 44818000 */  mtc1        $at, $f16
/* 02FC34 80030084 C6CA0000 */  lwc1        $f10, 0x0($s6)
/* 02FC38 80030088 4405D000 */  mfc1        $a1, $f26
/* 02FC3C 8003008C 3C01800F */  lui         $at, %hi(D_800F1BF0)
/* 02FC40 80030090 46105482 */  mul.s       $f18, $f10, $f16
/* 02FC44 80030094 02002025 */  move        $a0, $s0
/* 02FC48 80030098 46120000 */  add.s       $f0, $f0, $f18
/* 02FC4C 8003009C 4618003C */  c.lt.s      $f0, $f24
/* 02FC50 800300A0 00000000 */  nop
/* 02FC54 800300A4 45020007 */  bc1fl       .L800300C4
/* 02FC58 800300A8 4600A03E */   c.le.s     $f20, $f0
/* 02FC5C 800300AC 46140000 */  add.s       $f0, $f0, $f20
.L800300B0:
/* 02FC60 800300B0 4618003C */  c.lt.s      $f0, $f24
/* 02FC64 800300B4 00000000 */  nop
/* 02FC68 800300B8 4503FFFD */  bc1tl       .L800300B0
/* 02FC6C 800300BC 46140000 */   add.s      $f0, $f0, $f20
/* 02FC70 800300C0 4600A03E */  c.le.s      $f20, $f0
.L800300C4:
/* 02FC74 800300C4 00000000 */  nop
/* 02FC78 800300C8 45020007 */  bc1fl       .L800300E8
/* 02FC7C 800300CC 44060000 */   mfc1       $a2, $f0
/* 02FC80 800300D0 46140001 */  sub.s       $f0, $f0, $f20
.L800300D4:
/* 02FC84 800300D4 4600A03E */  c.le.s      $f20, $f0
/* 02FC88 800300D8 00000000 */  nop
/* 02FC8C 800300DC 4503FFFD */  bc1tl       .L800300D4
/* 02FC90 800300E0 46140001 */   sub.s      $f0, $f0, $f20
/* 02FC94 800300E4 44060000 */  mfc1        $a2, $f0
.L800300E8:
/* 02FC98 800300E8 0C00BADA */  jal         func_8002EB68
/* 02FC9C 800300EC E4201BF0 */   swc1       $f0, %lo(D_800F1BF0)($at)
.L800300F0:
/* 02FCA0 800300F0 0C0024C2 */  jal         func_80009308
/* 02FCA4 800300F4 02002025 */   move       $a0, $s0
/* 02FCA8 800300F8 26310001 */  addiu       $s1, $s1, 0x1
/* 02FCAC 800300FC 1635FFA7 */  bne         $s1, $s5, .L8002FF9C
/* 02FCB0 80030100 26520008 */   addiu      $s2, $s2, 0x8
/* 02FCB4 80030104 3C04800F */  lui         $a0, %hi(D_800EF724)
/* 02FCB8 80030108 8C84F724 */  lw          $a0, %lo(D_800EF724)($a0)
/* 02FCBC 8003010C 50800017 */  beql        $a0, $zero, .L8003016C
/* 02FCC0 80030110 8FBF006C */   lw         $ra, 0x6c($sp)
/* 02FCC4 80030114 0C001FA3 */  jal         func_80007E8C
/* 02FCC8 80030118 00000000 */   nop
/* 02FCCC 8003011C 10400012 */  beq         $v0, $zero, .L80030168
/* 02FCD0 80030120 00408025 */   move       $s0, $v0
/* 02FCD4 80030124 3C01BFC0 */  lui         $at, 0xbfc0
/* 02FCD8 80030128 44813000 */  mtc1        $at, $f6
/* 02FCDC 8003012C 3C01C080 */  lui         $at, 0xc080
/* 02FCE0 80030130 44814000 */  mtc1        $at, $f8
/* 02FCE4 80030134 44802000 */  mtc1        $zero, $f4
/* 02FCE8 80030138 02E02025 */  move        $a0, $s7
/* 02FCEC 8003013C 03C02825 */  move        $a1, $fp
/* 02FCF0 80030140 24460018 */  addiu       $a2, $v0, 0x18
/* 02FCF4 80030144 E7A60080 */  swc1        $f6, 0x80($sp)
/* 02FCF8 80030148 E7A80084 */  swc1        $f8, 0x84($sp)
/* 02FCFC 8003014C 0C00FEE4 */  jal         func_8003FB90
/* 02FD00 80030150 E7A4007C */   swc1       $f4, 0x7c($sp)
/* 02FD04 80030154 E618000C */  swc1        $f24, 0xc($s0)
/* 02FD08 80030158 E6180010 */  swc1        $f24, 0x10($s0)
/* 02FD0C 8003015C E6180014 */  swc1        $f24, 0x14($s0)
/* 02FD10 80030160 0C0024C2 */  jal         func_80009308
/* 02FD14 80030164 02002025 */   move       $a0, $s0
.L80030168:
/* 02FD18 80030168 8FBF006C */  lw          $ra, 0x6c($sp)
.L8003016C:
/* 02FD1C 8003016C D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02FD20 80030170 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02FD24 80030174 D7B80028 */  ldc1        $f24, 0x28($sp)
/* 02FD28 80030178 D7BA0030 */  ldc1        $f26, 0x30($sp)
/* 02FD2C 8003017C D7BC0038 */  ldc1        $f28, 0x38($sp)
/* 02FD30 80030180 D7BE0040 */  ldc1        $f30, 0x40($sp)
/* 02FD34 80030184 8FB00048 */  lw          $s0, 0x48($sp)
/* 02FD38 80030188 8FB1004C */  lw          $s1, 0x4c($sp)
/* 02FD3C 8003018C 8FB20050 */  lw          $s2, 0x50($sp)
/* 02FD40 80030190 8FB30054 */  lw          $s3, 0x54($sp)
/* 02FD44 80030194 8FB40058 */  lw          $s4, 0x58($sp)
/* 02FD48 80030198 8FB5005C */  lw          $s5, 0x5c($sp)
/* 02FD4C 8003019C 8FB60060 */  lw          $s6, 0x60($sp)
/* 02FD50 800301A0 8FB70064 */  lw          $s7, 0x64($sp)
/* 02FD54 800301A4 8FBE0068 */  lw          $fp, 0x68($sp)
/* 02FD58 800301A8 03E00008 */  jr          $ra
/* 02FD5C 800301AC 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_800301B0 # 24
/* 02FD60 800301B0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 02FD64 800301B4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 02FD68 800301B8 AFB00018 */  sw          $s0, 0x18($sp)
/* 02FD6C 800301BC 8C8E0014 */  lw          $t6, 0x14($a0)
/* 02FD70 800301C0 2403000C */  addiu       $v1, $zero, 0xc
/* 02FD74 800301C4 3C02800A */  lui         $v0, %hi(D_8009A5B0)
/* 02FD78 800301C8 01C30019 */  multu       $t6, $v1
/* 02FD7C 800301CC 2442A5B0 */  addiu       $v0, $v0, %lo(D_8009A5B0)
/* 02FD80 800301D0 44856000 */  mtc1        $a1, $f12
/* 02FD84 800301D4 00808025 */  move        $s0, $a0
/* 02FD88 800301D8 27A50024 */  addiu       $a1, $sp, 0x24
/* 02FD8C 800301DC 00007812 */  mflo        $t7
/* 02FD90 800301E0 004FC021 */  addu        $t8, $v0, $t7
/* 02FD94 800301E4 C7040000 */  lwc1        $f4, 0x0($t8)
/* 02FD98 800301E8 E7A40024 */  swc1        $f4, 0x24($sp)
/* 02FD9C 800301EC 8C990014 */  lw          $t9, 0x14($a0)
/* 02FDA0 800301F0 03230019 */  multu       $t9, $v1
/* 02FDA4 800301F4 00004012 */  mflo        $t0
/* 02FDA8 800301F8 00484821 */  addu        $t1, $v0, $t0
/* 02FDAC 800301FC C5260004 */  lwc1        $f6, 0x4($t1)
/* 02FDB0 80030200 E7A60028 */  swc1        $f6, 0x28($sp)
/* 02FDB4 80030204 8C8A0014 */  lw          $t2, 0x14($a0)
/* 02FDB8 80030208 C7AA0028 */  lwc1        $f10, 0x28($sp)
/* 02FDBC 8003020C 3C04800F */  lui         $a0, %hi(D_800F1CE8)
/* 02FDC0 80030210 01430019 */  multu       $t2, $v1
/* 02FDC4 80030214 460C5400 */  add.s       $f16, $f10, $f12
/* 02FDC8 80030218 24841CE8 */  addiu       $a0, $a0, %lo(D_800F1CE8)
/* 02FDCC 8003021C 00005812 */  mflo        $t3
/* 02FDD0 80030220 004B6021 */  addu        $t4, $v0, $t3
/* 02FDD4 80030224 C5880008 */  lwc1        $f8, 0x8($t4)
/* 02FDD8 80030228 E7B00028 */  swc1        $f16, 0x28($sp)
/* 02FDDC 8003022C E7A8002C */  swc1        $f8, 0x2c($sp)
/* 02FDE0 80030230 8E060000 */  lw          $a2, 0x0($s0)
/* 02FDE4 80030234 0C00FEE4 */  jal         func_8003FB90
/* 02FDE8 80030238 24C60018 */   addiu      $a2, $a2, 0x18
/* 02FDEC 8003023C 8E0D0014 */  lw          $t5, 0x14($s0)
/* 02FDF0 80030240 3C05C0A0 */  lui         $a1, 0xc0a0
/* 02FDF4 80030244 3C064334 */  lui         $a2, 0x4334
/* 02FDF8 80030248 15A00007 */  bne         $t5, $zero, .L80030268
/* 02FDFC 8003024C 00000000 */   nop
/* 02FE00 80030250 8E040000 */  lw          $a0, 0x0($s0)
/* 02FE04 80030254 3C05C0A0 */  lui         $a1, 0xc0a0
/* 02FE08 80030258 0C00BADA */  jal         func_8002EB68
/* 02FE0C 8003025C 3C064352 */   lui        $a2, 0x4352
/* 02FE10 80030260 10000003 */  b           .L80030270
/* 02FE14 80030264 00000000 */   nop
.L80030268:
/* 02FE18 80030268 0C00BADA */  jal         func_8002EB68
/* 02FE1C 8003026C 8E040000 */   lw         $a0, 0x0($s0)
.L80030270:
/* 02FE20 80030270 0C0024C2 */  jal         func_80009308
/* 02FE24 80030274 8E040000 */   lw         $a0, 0x0($s0)
/* 02FE28 80030278 8FBF001C */  lw          $ra, 0x1c($sp)
/* 02FE2C 8003027C 8FB00018 */  lw          $s0, 0x18($sp)
/* 02FE30 80030280 27BD0030 */  addiu       $sp, $sp, 0x30
/* 02FE34 80030284 03E00008 */  jr          $ra
/* 02FE38 80030288 00000000 */   nop

glabel func_8003028C # 25
/* 02FE3C 8003028C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02FE40 80030290 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02FE44 80030294 0C002C3F */  jal         func_8000B0FC
/* 02FE48 80030298 00000000 */   nop
/* 02FE4C 8003029C 3C0E800F */  lui         $t6, %hi(D_800F1D20)
/* 02FE50 800302A0 8DCE1D20 */  lw          $t6, %lo(D_800F1D20)($t6)
/* 02FE54 800302A4 24180000 */  addiu       $t8, $zero, 0x0
/* 02FE58 800302A8 00584023 */  subu        $t0, $v0, $t8
/* 02FE5C 800302AC 006E082B */  sltu        $at, $v1, $t6
/* 02FE60 800302B0 01014023 */  subu        $t0, $t0, $at
/* 02FE64 800302B4 006E4823 */  subu        $t1, $v1, $t6
/* 02FE68 800302B8 15000002 */  bne         $t0, $zero, .L800302C4
/* 02FE6C 800302BC 2D210BB9 */   sltiu      $at, $t1, 0xbb9
/* 02FE70 800302C0 1420001F */  bne         $at, $zero, .L80030340
.L800302C4:
/* 02FE74 800302C4 3C07800A */   lui        $a3, %hi(D_8009A660)
/* 02FE78 800302C8 8CE7A660 */  lw          $a3, %lo(D_8009A660)($a3)
/* 02FE7C 800302CC 3C06800A */  lui         $a2, %hi(D_8009A634)
/* 02FE80 800302D0 00002025 */  move        $a0, $zero
/* 02FE84 800302D4 00077880 */  sll         $t7, $a3, 2
/* 02FE88 800302D8 00CF3021 */  addu        $a2, $a2, $t7
/* 02FE8C 800302DC 8CC6A634 */  lw          $a2, %lo(D_8009A634)($a2)
/* 02FE90 800302E0 0C009E62 */  jal         func_80027988
/* 02FE94 800302E4 3C054060 */   lui        $a1, 0x4060
/* 02FE98 800302E8 3C07800A */  lui         $a3, %hi(D_8009A660)
/* 02FE9C 800302EC 8CE7A660 */  lw          $a3, %lo(D_8009A660)($a3)
/* 02FEA0 800302F0 3C01800A */  lui         $at, %hi(D_8009A660)
/* 02FEA4 800302F4 24E70001 */  addiu       $a3, $a3, 0x1
/* 02FEA8 800302F8 04E10004 */  bgez        $a3, .L8003030C
/* 02FEAC 800302FC 00000000 */   nop
/* 02FEB0 80030300 24E70006 */  addiu       $a3, $a3, 0x6
.L80030304:
/* 02FEB4 80030304 04E2FFFF */  bltzl       $a3, .L80030304
/* 02FEB8 80030308 24E70006 */   addiu      $a3, $a3, 0x6
.L8003030C:
/* 02FEBC 8003030C AC27A660 */  sw          $a3, %lo(D_8009A660)($at)
/* 02FEC0 80030310 28E10006 */  slti        $at, $a3, 0x6
/* 02FEC4 80030314 14200006 */  bne         $at, $zero, .L80030330
/* 02FEC8 80030318 24E7FFFA */   addiu      $a3, $a3, -0x6
.L8003031C:
/* 02FECC 8003031C 28E10006 */  slti        $at, $a3, 0x6
/* 02FED0 80030320 5020FFFE */  beql        $at, $zero, .L8003031C
/* 02FED4 80030324 24E7FFFA */   addiu      $a3, $a3, -0x6
/* 02FED8 80030328 3C01800A */  lui         $at, %hi(D_8009A660)
/* 02FEDC 8003032C AC27A660 */  sw          $a3, %lo(D_8009A660)($at)
.L80030330:
/* 02FEE0 80030330 0C002C3F */  jal         func_8000B0FC
/* 02FEE4 80030334 00000000 */   nop
/* 02FEE8 80030338 3C01800F */  lui         $at, %hi(D_800F1D20)
/* 02FEEC 8003033C AC231D20 */  sw          $v1, %lo(D_800F1D20)($at)
.L80030340:
/* 02FEF0 80030340 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02FEF4 80030344 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02FEF8 80030348 03E00008 */  jr          $ra
/* 02FEFC 8003034C 00000000 */   nop

glabel func_80030350 # 26
/* 02FF00 80030350 3C02800F */  lui         $v0, %hi(D_800F1BF4)
/* 02FF04 80030354 8C421BF4 */  lw          $v0, %lo(D_800F1BF4)($v0)
/* 02FF08 80030358 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 02FF0C 8003035C AFB00018 */  sw          $s0, 0x18($sp)
/* 02FF10 80030360 00808025 */  move        $s0, $a0
/* 02FF14 80030364 3C04800A */  lui         $a0, %hi(D_8009A64C)
/* 02FF18 80030368 00021880 */  sll         $v1, $v0, 2
/* 02FF1C 8003036C AFBF001C */  sw          $ra, 0x1c($sp)
/* 02FF20 80030370 00832021 */  addu        $a0, $a0, $v1
/* 02FF24 80030374 3C058007 */  lui         $a1, %hi(D_80074DE0)
/* 02FF28 80030378 24A54DE0 */  addiu       $a1, $a1, %lo(D_80074DE0)
/* 02FF2C 8003037C 8C84A64C */  lw          $a0, %lo(D_8009A64C)($a0)
/* 02FF30 80030380 AFA30024 */  sw          $v1, 0x24($sp)
/* 02FF34 80030384 0C00FDB7 */  jal         func_8003F6DC
/* 02FF38 80030388 24060001 */   addiu      $a2, $zero, 0x1
/* 02FF3C 8003038C 8E030000 */  lw          $v1, 0x0($s0)
/* 02FF40 80030390 3C0FE700 */  lui         $t7, 0xe700
/* 02FF44 80030394 3C19E200 */  lui         $t9, 0xe200
/* 02FF48 80030398 246E0008 */  addiu       $t6, $v1, 0x8
/* 02FF4C 8003039C AE0E0000 */  sw          $t6, 0x0($s0)
/* 02FF50 800303A0 AC600004 */  sw          $zero, 0x4($v1)
/* 02FF54 800303A4 AC6F0000 */  sw          $t7, 0x0($v1)
/* 02FF58 800303A8 8E030000 */  lw          $v1, 0x0($s0)
/* 02FF5C 800303AC 3C090050 */  lui         $t1, 0x50
/* 02FF60 800303B0 35294240 */  ori         $t1, $t1, 0x4240
/* 02FF64 800303B4 24780008 */  addiu       $t8, $v1, 0x8
/* 02FF68 800303B8 AE180000 */  sw          $t8, 0x0($s0)
/* 02FF6C 800303BC 3739001C */  ori         $t9, $t9, 0x1c
/* 02FF70 800303C0 AC790000 */  sw          $t9, 0x0($v1)
/* 02FF74 800303C4 AC690004 */  sw          $t1, 0x4($v1)
/* 02FF78 800303C8 8E030000 */  lw          $v1, 0x0($s0)
/* 02FF7C 800303CC 3C0BFC11 */  lui         $t3, 0xfc11
/* 02FF80 800303D0 356BFE23 */  ori         $t3, $t3, 0xfe23
/* 02FF84 800303D4 246A0008 */  addiu       $t2, $v1, 0x8
/* 02FF88 800303D8 AE0A0000 */  sw          $t2, 0x0($s0)
/* 02FF8C 800303DC 240CF7FB */  addiu       $t4, $zero, -0x805
/* 02FF90 800303E0 AC6C0004 */  sw          $t4, 0x4($v1)
/* 02FF94 800303E4 AC6B0000 */  sw          $t3, 0x0($v1)
/* 02FF98 800303E8 8E030000 */  lw          $v1, 0x0($s0)
/* 02FF9C 800303EC 240F00C8 */  addiu       $t7, $zero, 0xc8
/* 02FFA0 800303F0 3C0EFA00 */  lui         $t6, 0xfa00
/* 02FFA4 800303F4 246D0008 */  addiu       $t5, $v1, 0x8
/* 02FFA8 800303F8 AE0D0000 */  sw          $t5, 0x0($s0)
/* 02FFAC 800303FC AC6F0004 */  sw          $t7, 0x4($v1)
/* 02FFB0 80030400 AC6E0000 */  sw          $t6, 0x0($v1)
/* 02FFB4 80030404 8E030000 */  lw          $v1, 0x0($s0)
/* 02FFB8 80030408 24590028 */  addiu       $t9, $v0, 0x28
/* 02FFBC 8003040C 332903FF */  andi        $t1, $t9, 0x3ff
/* 02FFC0 80030410 00095380 */  sll         $t2, $t1, 14
/* 02FFC4 80030414 3C01F600 */  lui         $at, 0xf600
/* 02FFC8 80030418 24780008 */  addiu       $t8, $v1, 0x8
/* 02FFCC 8003041C AE180000 */  sw          $t8, 0x0($s0)
/* 02FFD0 80030420 01415825 */  or          $t3, $t2, $at
/* 02FFD4 80030424 3C0D0007 */  lui         $t5, 0x7
/* 02FFD8 80030428 35ADC2F4 */  ori         $t5, $t5, 0xc2f4
/* 02FFDC 8003042C 356C033C */  ori         $t4, $t3, 0x33c
/* 02FFE0 80030430 AC6C0000 */  sw          $t4, 0x0($v1)
/* 02FFE4 80030434 AC6D0004 */  sw          $t5, 0x4($v1)
/* 02FFE8 80030438 0C00F389 */  jal         func_8003CE24
/* 02FFEC 8003043C 8E040000 */   lw         $a0, 0x0($s0)
/* 02FFF0 80030440 0C00F563 */  jal         func_8003D58C
/* 02FFF4 80030444 00002025 */   move       $a0, $zero
/* 02FFF8 80030448 0C00F3DE */  jal         func_8003CF78
/* 02FFFC 8003044C 00000000 */   nop
/* 030000 80030450 3C048006 */  lui         $a0, %hi(D_80063800)
/* 030004 80030454 0C00F560 */  jal         func_8003D580
/* 030008 80030458 24843800 */   addiu      $a0, $a0, %lo(D_80063800)
/* 03000C 8003045C 0C00F56B */  jal         func_8003D5AC
/* 030010 80030460 24040001 */   addiu      $a0, $zero, 0x1
/* 030014 80030464 3C013F80 */  lui         $at, 0x3f80
/* 030018 80030468 44816000 */  mtc1        $at, $f12
/* 03001C 8003046C 0C00F566 */  jal         func_8003D598
/* 030020 80030470 46006386 */   mov.s      $f14, $f12
/* 030024 80030474 00002025 */  move        $a0, $zero
/* 030028 80030478 00002825 */  move        $a1, $zero
/* 03002C 8003047C 2406013F */  addiu       $a2, $zero, 0x13f
/* 030030 80030480 0C00F4C7 */  jal         func_8003D31C
/* 030034 80030484 240700EF */   addiu      $a3, $zero, 0xef
/* 030038 80030488 240400FF */  addiu       $a0, $zero, 0xff
/* 03003C 8003048C 240500FF */  addiu       $a1, $zero, 0xff
/* 030040 80030490 240600FF */  addiu       $a2, $zero, 0xff
/* 030044 80030494 0C00F528 */  jal         func_8003D4A0
/* 030048 80030498 240700FE */   addiu      $a3, $zero, 0xfe
/* 03004C 8003049C 24040024 */  addiu       $a0, $zero, 0x24
/* 030050 800304A0 0C00F4F9 */  jal         func_8003D3E4
/* 030054 800304A4 240500BE */   addiu      $a1, $zero, 0xbe
/* 030058 800304A8 8FAE0024 */  lw          $t6, 0x24($sp)
/* 03005C 800304AC 3C04800F */  lui         $a0, %hi(D_800F1D28)
/* 030060 800304B0 008E2021 */  addu        $a0, $a0, $t6
/* 030064 800304B4 0C00F57B */  jal         func_8003D5EC
/* 030068 800304B8 8C841D28 */   lw         $a0, %lo(D_800F1D28)($a0)
/* 03006C 800304BC 0C00F3DA */  jal         func_8003CF68
/* 030070 800304C0 02002025 */   move       $a0, $s0
/* 030074 800304C4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 030078 800304C8 8FB00018 */  lw          $s0, 0x18($sp)
/* 03007C 800304CC 27BD0048 */  addiu       $sp, $sp, 0x48
/* 030080 800304D0 03E00008 */  jr          $ra
/* 030084 800304D4 00000000 */   nop

glabel func_800304D8 # 27
/* 030088 800304D8 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 03008C 800304DC AFB00038 */  sw          $s0, 0x38($sp)
/* 030090 800304E0 00808025 */  move        $s0, $a0
/* 030094 800304E4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 030098 800304E8 AFA60088 */  sw          $a2, 0x88($sp)
/* 03009C 800304EC AFA7008C */  sw          $a3, 0x8c($sp)
/* 0300A0 800304F0 27A60070 */  addiu       $a2, $sp, 0x70
/* 0300A4 800304F4 0C003066 */  jal         func_8000C198
/* 0300A8 800304F8 24040005 */   addiu      $a0, $zero, 0x5
/* 0300AC 800304FC 8E020000 */  lw          $v0, 0x0($s0)
/* 0300B0 80030500 3C0FE700 */  lui         $t7, 0xe700
/* 0300B4 80030504 24010002 */  addiu       $at, $zero, 0x2
/* 0300B8 80030508 244E0008 */  addiu       $t6, $v0, 0x8
/* 0300BC 8003050C AE0E0000 */  sw          $t6, 0x0($s0)
/* 0300C0 80030510 AC400004 */  sw          $zero, 0x4($v0)
/* 0300C4 80030514 AC4F0000 */  sw          $t7, 0x0($v0)
/* 0300C8 80030518 93B8007D */  lbu         $t8, 0x7d($sp)
/* 0300CC 8003051C 3C0E0101 */  lui         $t6, 0x101
/* 0300D0 80030520 25CEC8C8 */  addiu       $t6, $t6, -0x3738
/* 0300D4 80030524 1701000A */  bne         $t8, $at, .L80030550
/* 0300D8 80030528 3C0DDE00 */   lui        $t5, 0xde00
/* 0300DC 8003052C 8E020000 */  lw          $v0, 0x0($s0)
/* 0300E0 80030530 3C08E300 */  lui         $t0, 0xe300
/* 0300E4 80030534 35081001 */  ori         $t0, $t0, 0x1001
/* 0300E8 80030538 24590008 */  addiu       $t9, $v0, 0x8
/* 0300EC 8003053C AE190000 */  sw          $t9, 0x0($s0)
/* 0300F0 80030540 34098000 */  ori         $t1, $zero, 0x8000
/* 0300F4 80030544 AC490004 */  sw          $t1, 0x4($v0)
/* 0300F8 80030548 10000008 */  b           .L8003056C
/* 0300FC 8003054C AC480000 */   sw         $t0, 0x0($v0)
.L80030550:
/* 030100 80030550 8E020000 */  lw          $v0, 0x0($s0)
/* 030104 80030554 3C0BE300 */  lui         $t3, 0xe300
/* 030108 80030558 356B1001 */  ori         $t3, $t3, 0x1001
/* 03010C 8003055C 244A0008 */  addiu       $t2, $v0, 0x8
/* 030110 80030560 AE0A0000 */  sw          $t2, 0x0($s0)
/* 030114 80030564 AC400004 */  sw          $zero, 0x4($v0)
/* 030118 80030568 AC4B0000 */  sw          $t3, 0x0($v0)
.L8003056C:
/* 03011C 8003056C 8E020000 */  lw          $v0, 0x0($s0)
/* 030120 80030570 24080001 */  addiu       $t0, $zero, 0x1
/* 030124 80030574 24090001 */  addiu       $t1, $zero, 0x1
/* 030128 80030578 244C0008 */  addiu       $t4, $v0, 0x8
/* 03012C 8003057C AE0C0000 */  sw          $t4, 0x0($s0)
/* 030130 80030580 AC4E0004 */  sw          $t6, 0x4($v0)
/* 030134 80030584 AC4D0000 */  sw          $t5, 0x0($v0)
/* 030138 80030588 97B9007A */  lhu         $t9, 0x7a($sp)
/* 03013C 8003058C 97B80078 */  lhu         $t8, 0x78($sp)
/* 030140 80030590 93AF007C */  lbu         $t7, 0x7c($sp)
/* 030144 80030594 AFA90028 */  sw          $t1, 0x28($sp)
/* 030148 80030598 AFA80024 */  sw          $t0, 0x24($sp)
/* 03014C 8003059C AFA00020 */  sw          $zero, 0x20($sp)
/* 030150 800305A0 AFA0001C */  sw          $zero, 0x1c($sp)
/* 030154 800305A4 93A7007D */  lbu         $a3, 0x7d($sp)
/* 030158 800305A8 8FA60074 */  lw          $a2, 0x74($sp)
/* 03015C 800305AC 8FA50070 */  lw          $a1, 0x70($sp)
/* 030160 800305B0 02002025 */  move        $a0, $s0
/* 030164 800305B4 AFB90018 */  sw          $t9, 0x18($sp)
/* 030168 800305B8 AFB80014 */  sw          $t8, 0x14($sp)
/* 03016C 800305BC 0C010A10 */  jal         func_80042840
/* 030170 800305C0 AFAF0010 */   sw         $t7, 0x10($sp)
/* 030174 800305C4 8E020000 */  lw          $v0, 0x0($s0)
/* 030178 800305C8 8FA60088 */  lw          $a2, 0x88($sp)
/* 03017C 800305CC 8FA7008C */  lw          $a3, 0x8c($sp)
/* 030180 800305D0 C7A20098 */  lwc1        $f2, 0x98($sp)
/* 030184 800305D4 C7B0009C */  lwc1        $f16, 0x9c($sp)
/* 030188 800305D8 244A0008 */  addiu       $t2, $v0, 0x8
/* 03018C 800305DC AE0A0000 */  sw          $t2, 0x0($s0)
/* 030190 800305E0 8FAB0090 */  lw          $t3, 0x90($sp)
/* 030194 800305E4 44862000 */  mtc1        $a2, $f4
/* 030198 800305E8 3C014080 */  lui         $at, 0x4080
/* 03019C 800305EC 256CFFFF */  addiu       $t4, $t3, -0x1
/* 0301A0 800305F0 448C4000 */  mtc1        $t4, $f8
/* 0301A4 800305F4 468021A0 */  cvt.s.w     $f6, $f4
/* 0301A8 800305F8 44810000 */  mtc1        $at, $f0
/* 0301AC 800305FC 8FA80094 */  lw          $t0, 0x94($sp)
/* 0301B0 80030600 3C01E400 */  lui         $at, 0xe400
/* 0301B4 80030604 44809000 */  mtc1        $zero, $f18
/* 0301B8 80030608 468042A0 */  cvt.s.w     $f10, $f8
/* 0301BC 8003060C 2509FFFF */  addiu       $t1, $t0, -0x1
/* 0301C0 80030610 00074080 */  sll         $t0, $a3, 2
/* 0301C4 80030614 46025102 */  mul.s       $f4, $f10, $f2
/* 0301C8 80030618 46043200 */  add.s       $f8, $f6, $f4
/* 0301CC 8003061C 44872000 */  mtc1        $a3, $f4
/* 0301D0 80030620 46004282 */  mul.s       $f10, $f8, $f0
/* 0301D4 80030624 46802220 */  cvt.s.w     $f8, $f4
/* 0301D8 80030628 4600518D */  trunc.w.s   $f6, $f10
/* 0301DC 8003062C 44895000 */  mtc1        $t1, $f10
/* 0301E0 80030630 31090FFF */  andi        $t1, $t0, 0xfff
/* 0301E4 80030634 440E3000 */  mfc1        $t6, $f6
/* 0301E8 80030638 468051A0 */  cvt.s.w     $f6, $f10
/* 0301EC 8003063C 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 0301F0 80030640 000FC300 */  sll         $t8, $t7, 12
/* 0301F4 80030644 0301C825 */  or          $t9, $t8, $at
/* 0301F8 80030648 3C014480 */  lui         $at, 0x4480
/* 0301FC 8003064C 46103102 */  mul.s       $f4, $f6, $f16
/* 030200 80030650 00067080 */  sll         $t6, $a2, 2
/* 030204 80030654 31CF0FFF */  andi        $t7, $t6, 0xfff
/* 030208 80030658 000FC300 */  sll         $t8, $t7, 12
/* 03020C 8003065C 03095025 */  or          $t2, $t8, $t1
/* 030210 80030660 AC4A0004 */  sw          $t2, 0x4($v0)
/* 030214 80030664 3C0EF100 */  lui         $t6, 0xf100
/* 030218 80030668 46044280 */  add.s       $f10, $f8, $f4
/* 03021C 8003066C 44812000 */  mtc1        $at, $f4
/* 030220 80030670 3C013F00 */  lui         $at, 0x3f00
/* 030224 80030674 46005182 */  mul.s       $f6, $f10, $f0
/* 030228 80030678 46022003 */  div.s       $f0, $f4, $f2
/* 03022C 8003067C 4600320D */  trunc.w.s   $f8, $f6
/* 030230 80030680 440B4000 */  mfc1        $t3, $f8
/* 030234 80030684 00000000 */  nop
/* 030238 80030688 316C0FFF */  andi        $t4, $t3, 0xfff
/* 03023C 8003068C 032C6825 */  or          $t5, $t9, $t4
/* 030240 80030690 AC4D0000 */  sw          $t5, 0x0($v0)
/* 030244 80030694 8E020000 */  lw          $v0, 0x0($s0)
/* 030248 80030698 340CFFE0 */  ori         $t4, $zero, 0xffe0
/* 03024C 8003069C 3C19E100 */  lui         $t9, 0xe100
/* 030250 800306A0 244B0008 */  addiu       $t3, $v0, 0x8
/* 030254 800306A4 AE0B0000 */  sw          $t3, 0x0($s0)
/* 030258 800306A8 AC4C0004 */  sw          $t4, 0x4($v0)
/* 03025C 800306AC AC590000 */  sw          $t9, 0x0($v0)
/* 030260 800306B0 8E050000 */  lw          $a1, 0x0($s0)
/* 030264 800306B4 4600903E */  c.le.s      $f18, $f0
/* 030268 800306B8 24AD0008 */  addiu       $t5, $a1, 0x8
/* 03026C 800306BC AE0D0000 */  sw          $t5, 0x0($s0)
/* 030270 800306C0 45000005 */  bc1f        .L800306D8
/* 030274 800306C4 ACAE0000 */   sw         $t6, 0x0($a1)
/* 030278 800306C8 3C013F00 */  lui         $at, 0x3f00
/* 03027C 800306CC 44817000 */  mtc1        $at, $f14
/* 030280 800306D0 10000004 */  b           .L800306E4
/* 030284 800306D4 460E0300 */   add.s      $f12, $f0, $f14
.L800306D8:
/* 030288 800306D8 44817000 */  mtc1        $at, $f14
/* 03028C 800306DC 00000000 */  nop
/* 030290 800306E0 460E0301 */  sub.s       $f12, $f0, $f14
.L800306E4:
/* 030294 800306E4 3C01C480 */  lui         $at, 0xc480
/* 030298 800306E8 44815000 */  mtc1        $at, $f10
/* 03029C 800306EC 4600620D */  trunc.w.s   $f8, $f12
/* 0302A0 800306F0 46105003 */  div.s       $f0, $f10, $f16
/* 0302A4 800306F4 4600903E */  c.le.s      $f18, $f0
/* 0302A8 800306F8 00000000 */  nop
/* 0302AC 800306FC 45020004 */  bc1fl       .L80030710
/* 0302B0 80030700 460E0081 */   sub.s      $f2, $f0, $f14
/* 0302B4 80030704 10000002 */  b           .L80030710
/* 0302B8 80030708 460E0080 */   add.s      $f2, $f0, $f14
/* 0302BC 8003070C 460E0081 */  sub.s       $f2, $f0, $f14
.L80030710:
/* 0302C0 80030710 4600118D */  trunc.w.s   $f6, $f2
/* 0302C4 80030714 440B4000 */  mfc1        $t3, $f8
/* 0302C8 80030718 3C0ED700 */  lui         $t6, 0xd700
/* 0302CC 8003071C 3C0F7FFF */  lui         $t7, 0x7fff
/* 0302D0 80030720 44083000 */  mfc1        $t0, $f6
/* 0302D4 80030724 000BCC00 */  sll         $t9, $t3, 16
/* 0302D8 80030728 3C09DB08 */  lui         $t1, 0xdb08
/* 0302DC 8003072C 3118FFFF */  andi        $t8, $t0, 0xffff
/* 0302E0 80030730 03196025 */  or          $t4, $t8, $t9
/* 0302E4 80030734 ACAC0004 */  sw          $t4, 0x4($a1)
/* 0302E8 80030738 8E020000 */  lw          $v0, 0x0($s0)
/* 0302EC 8003073C 35290010 */  ori         $t1, $t1, 0x10
/* 0302F0 80030740 240A7FFF */  addiu       $t2, $zero, 0x7fff
/* 0302F4 80030744 244D0008 */  addiu       $t5, $v0, 0x8
/* 0302F8 80030748 AE0D0000 */  sw          $t5, 0x0($s0)
/* 0302FC 8003074C AC4F0004 */  sw          $t7, 0x4($v0)
/* 030300 80030750 AC4E0000 */  sw          $t6, 0x0($v0)
/* 030304 80030754 8E020000 */  lw          $v0, 0x0($s0)
/* 030308 80030758 24480008 */  addiu       $t0, $v0, 0x8
/* 03030C 8003075C AE080000 */  sw          $t0, 0x0($s0)
/* 030310 80030760 AC4A0004 */  sw          $t2, 0x4($v0)
/* 030314 80030764 AC490000 */  sw          $t1, 0x0($v0)
/* 030318 80030768 8FBF003C */  lw          $ra, 0x3c($sp)
/* 03031C 8003076C 8FB00038 */  lw          $s0, 0x38($sp)
/* 030320 80030770 27BD0080 */  addiu       $sp, $sp, 0x80
/* 030324 80030774 03E00008 */  jr          $ra
/* 030328 80030778 00000000 */   nop

glabel func_8003077C # 28
/* 03032C 8003077C 27BDFF48 */  addiu       $sp, $sp, -0xb8
/* 030330 80030780 AFBF002C */  sw          $ra, 0x2c($sp)
/* 030334 80030784 AFB00028 */  sw          $s0, 0x28($sp)
/* 030338 80030788 8C820000 */  lw          $v0, 0x0($a0)
/* 03033C 8003078C 3C0AE700 */  lui         $t2, 0xe700
/* 030340 80030790 3C0B800B */  lui         $t3, %hi(D_800ABDD0)
/* 030344 80030794 244E0008 */  addiu       $t6, $v0, 0x8
/* 030348 80030798 AC8E0000 */  sw          $t6, 0x0($a0)
/* 03034C 8003079C 256BBDD0 */  addiu       $t3, $t3, %lo(D_800ABDD0)
/* 030350 800307A0 AC400004 */  sw          $zero, 0x4($v0)
/* 030354 800307A4 AC4A0000 */  sw          $t2, 0x0($v0)
/* 030358 800307A8 8D660000 */  lw          $a2, 0x0($t3)
/* 03035C 800307AC 3C18E300 */  lui         $t8, 0xe300
/* 030360 800307B0 37180A01 */  ori         $t8, $t8, 0xa01
/* 030364 800307B4 24CF0008 */  addiu       $t7, $a2, 0x8
/* 030368 800307B8 AD6F0000 */  sw          $t7, 0x0($t3)
/* 03036C 800307BC ACC00004 */  sw          $zero, 0x4($a2)
/* 030370 800307C0 ACD80000 */  sw          $t8, 0x0($a2)
/* 030374 800307C4 8C820000 */  lw          $v0, 0x0($a0)
/* 030378 800307C8 3C0E0050 */  lui         $t6, 0x50
/* 03037C 800307CC 3C0DE200 */  lui         $t5, 0xe200
/* 030380 800307D0 24590008 */  addiu       $t9, $v0, 0x8
/* 030384 800307D4 AC990000 */  sw          $t9, 0x0($a0)
/* 030388 800307D8 AC400004 */  sw          $zero, 0x4($v0)
/* 03038C 800307DC AC4A0000 */  sw          $t2, 0x0($v0)
/* 030390 800307E0 8C820000 */  lw          $v0, 0x0($a0)
/* 030394 800307E4 35AD001C */  ori         $t5, $t5, 0x1c
/* 030398 800307E8 35CE4240 */  ori         $t6, $t6, 0x4240
/* 03039C 800307EC 244C0008 */  addiu       $t4, $v0, 0x8
/* 0303A0 800307F0 AC8C0000 */  sw          $t4, 0x0($a0)
/* 0303A4 800307F4 AC4E0004 */  sw          $t6, 0x4($v0)
/* 0303A8 800307F8 AC4D0000 */  sw          $t5, 0x0($v0)
/* 0303AC 800307FC 8C820000 */  lw          $v0, 0x0($a0)
/* 0303B0 80030800 3C19FF2F */  lui         $t9, 0xff2f
/* 0303B4 80030804 3C18FC11 */  lui         $t8, 0xfc11
/* 0303B8 80030808 244F0008 */  addiu       $t7, $v0, 0x8
/* 0303BC 8003080C AC8F0000 */  sw          $t7, 0x0($a0)
/* 0303C0 80030810 37189623 */  ori         $t8, $t8, 0x9623
/* 0303C4 80030814 3739FFFF */  ori         $t9, $t9, 0xffff
/* 0303C8 80030818 00808025 */  move        $s0, $a0
/* 0303CC 8003081C AC590004 */  sw          $t9, 0x4($v0)
/* 0303D0 80030820 0C002C3F */  jal         func_8000B0FC
/* 0303D4 80030824 AC580000 */   sw         $t8, 0x0($v0)
/* 0303D8 80030828 3C0C800F */  lui         $t4, %hi(D_800F1C00)
/* 0303DC 8003082C 3C0D800F */  lui         $t5, %hi(D_800F1C04)
/* 0303E0 80030830 8DAD1C04 */  lw          $t5, %lo(D_800F1C04)($t5)
/* 0303E4 80030834 8D8C1C00 */  lw          $t4, %lo(D_800F1C00)($t4)
/* 0303E8 80030838 006D082B */  sltu        $at, $v1, $t5
/* 0303EC 8003083C 004C2023 */  subu        $a0, $v0, $t4
/* 0303F0 80030840 00812023 */  subu        $a0, $a0, $at
/* 0303F4 80030844 0C0148C6 */  jal         func_80052318
/* 0303F8 80030848 006D2823 */   subu       $a1, $v1, $t5
/* 0303FC 8003084C 3C013FE0 */  lui         $at, 0x3fe0
/* 030400 80030850 44817800 */  mtc1        $at, $f15
/* 030404 80030854 3C014348 */  lui         $at, 0x4348
/* 030408 80030858 44812000 */  mtc1        $at, $f4
/* 03040C 8003085C 44807000 */  mtc1        $zero, $f14
/* 030410 80030860 E7A00094 */  swc1        $f0, 0x94($sp)
/* 030414 80030864 46040183 */  div.s       $f6, $f0, $f4
/* 030418 80030868 3C0E800F */  lui         $t6, %hi(D_800F1BEC)
/* 03041C 8003086C 240C0020 */  addiu       $t4, $zero, 0x20
/* 030420 80030870 3C0DFA00 */  lui         $t5, 0xfa00
/* 030424 80030874 2418FF80 */  addiu       $t8, $zero, -0x80
/* 030428 80030878 02002025 */  move        $a0, $s0
/* 03042C 8003087C 240500F5 */  addiu       $a1, $zero, 0xf5
/* 030430 80030880 24060024 */  addiu       $a2, $zero, 0x24
/* 030434 80030884 24070070 */  addiu       $a3, $zero, 0x70
/* 030438 80030888 240F0020 */  addiu       $t7, $zero, 0x20
/* 03043C 8003088C 24190020 */  addiu       $t9, $zero, 0x20
/* 030440 80030890 460030A1 */  cvt.d.s     $f2, $f6
/* 030444 80030894 4622703E */  c.le.d      $f14, $f2
/* 030448 80030898 00000000 */  nop
/* 03044C 8003089C 45020004 */  bc1fl       .L800308B0
/* 030450 800308A0 462E1301 */   sub.d      $f12, $f2, $f14
/* 030454 800308A4 10000003 */  b           .L800308B4
/* 030458 800308A8 462E1301 */   sub.d      $f12, $f2, $f14
/* 03045C 800308AC 462E1301 */  sub.d       $f12, $f2, $f14
.L800308B0:
/* 030460 800308B0 46206307 */  neg.d       $f12, $f12
.L800308B4:
/* 030464 800308B4 8DCE1BEC */  lw          $t6, %lo(D_800F1BEC)($t6)
/* 030468 800308B8 24010001 */  addiu       $at, $zero, 0x1
/* 03046C 800308BC 55C1002F */  bnel        $t6, $at, .L8003097C
/* 030470 800308C0 8E020000 */   lw         $v0, 0x0($s0)
/* 030474 800308C4 462C7201 */  sub.d       $f8, $f14, $f12
/* 030478 800308C8 3C013FF0 */  lui         $at, 0x3ff0
/* 03047C 800308CC 44815800 */  mtc1        $at, $f11
/* 030480 800308D0 44805000 */  mtc1        $zero, $f10
/* 030484 800308D4 3C014200 */  lui         $at, 0x4200
/* 030488 800308D8 44819000 */  mtc1        $at, $f18
/* 03048C 800308DC 462A4400 */  add.d       $f16, $f8, $f10
/* 030490 800308E0 8E020000 */  lw          $v0, 0x0($s0)
/* 030494 800308E4 3C18FA00 */  lui         $t8, 0xfa00
/* 030498 800308E8 2419FFFF */  addiu       $t9, $zero, -0x1
/* 03049C 800308EC 46208020 */  cvt.s.d     $f0, $f16
/* 0304A0 800308F0 244F0008 */  addiu       $t7, $v0, 0x8
/* 0304A4 800308F4 AE0F0000 */  sw          $t7, 0x0($s0)
/* 0304A8 800308F8 AC590004 */  sw          $t9, 0x4($v0)
/* 0304AC 800308FC 46009102 */  mul.s       $f4, $f18, $f0
/* 0304B0 80030900 AC580000 */  sw          $t8, 0x0($v0)
/* 0304B4 80030904 24180080 */  addiu       $t8, $zero, 0x80
/* 0304B8 80030908 24190020 */  addiu       $t9, $zero, 0x20
/* 0304BC 8003090C 240E0034 */  addiu       $t6, $zero, 0x34
/* 0304C0 80030910 AFB90010 */  sw          $t9, 0x10($sp)
/* 0304C4 80030914 F7AC0030 */  sdc1        $f12, 0x30($sp)
/* 0304C8 80030918 4600218D */  trunc.w.s   $f6, $f4
/* 0304CC 8003091C E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0304D0 80030920 E7A00018 */  swc1        $f0, 0x18($sp)
/* 0304D4 80030924 AFAC0014 */  sw          $t4, 0x14($sp)
/* 0304D8 80030928 44033000 */  mfc1        $v1, $f6
/* 0304DC 8003092C 02002025 */  move        $a0, $s0
/* 0304E0 80030930 240500F5 */  addiu       $a1, $zero, 0xf5
/* 0304E4 80030934 00404025 */  move        $t0, $v0
/* 0304E8 80030938 04610003 */  bgez        $v1, .L80030948
/* 0304EC 8003093C 00036843 */   sra        $t5, $v1, 1
/* 0304F0 80030940 24610001 */  addiu       $at, $v1, 0x1
/* 0304F4 80030944 00016843 */  sra         $t5, $at, 1
.L80030948:
/* 0304F8 80030948 01CD3023 */  subu        $a2, $t6, $t5
/* 0304FC 8003094C 04610003 */  bgez        $v1, .L8003095C
/* 030500 80030950 00037843 */   sra        $t7, $v1, 1
/* 030504 80030954 00000000 */  nop
/* 030508 80030958 00017843 */  sra         $t7, $at, 1
.L8003095C:
/* 03050C 8003095C 0C00C136 */  jal         func_800304D8
/* 030510 80030960 030F3823 */   subu       $a3, $t8, $t7
/* 030514 80030964 3C013FE0 */  lui         $at, 0x3fe0
/* 030518 80030968 44817800 */  mtc1        $at, $f15
/* 03051C 8003096C 44807000 */  mtc1        $zero, $f14
/* 030520 80030970 10000013 */  b           .L800309C0
/* 030524 80030974 D7AC0030 */   ldc1       $f12, 0x30($sp)
/* 030528 80030978 8E020000 */  lw          $v0, 0x0($s0)
.L8003097C:
/* 03052C 8003097C 3C013F80 */  lui         $at, 0x3f80
/* 030530 80030980 44814000 */  mtc1        $at, $f8
/* 030534 80030984 244E0008 */  addiu       $t6, $v0, 0x8
/* 030538 80030988 AE0E0000 */  sw          $t6, 0x0($s0)
/* 03053C 8003098C AC580004 */  sw          $t8, 0x4($v0)
/* 030540 80030990 AC4D0000 */  sw          $t5, 0x0($v0)
/* 030544 80030994 44815000 */  mtc1        $at, $f10
/* 030548 80030998 F7AC0030 */  sdc1        $f12, 0x30($sp)
/* 03054C 8003099C AFB90014 */  sw          $t9, 0x14($sp)
/* 030550 800309A0 AFAF0010 */  sw          $t7, 0x10($sp)
/* 030554 800309A4 E7A80018 */  swc1        $f8, 0x18($sp)
/* 030558 800309A8 0C00C136 */  jal         func_800304D8
/* 03055C 800309AC E7AA001C */   swc1       $f10, 0x1c($sp)
/* 030560 800309B0 3C013FE0 */  lui         $at, 0x3fe0
/* 030564 800309B4 44817800 */  mtc1        $at, $f15
/* 030568 800309B8 44807000 */  mtc1        $zero, $f14
/* 03056C 800309BC D7AC0030 */  ldc1        $f12, 0x30($sp)
.L800309C0:
/* 030570 800309C0 3C0C800F */  lui         $t4, %hi(D_800F1BEC)
/* 030574 800309C4 8D8C1BEC */  lw          $t4, %lo(D_800F1BEC)($t4)
/* 030578 800309C8 2401FFFF */  addiu       $at, $zero, -0x1
/* 03057C 800309CC 3C19FA00 */  lui         $t9, 0xfa00
/* 030580 800309D0 1581002E */  bne         $t4, $at, .L80030A8C
/* 030584 800309D4 240DFF80 */   addiu      $t5, $zero, -0x80
/* 030588 800309D8 462C7401 */  sub.d       $f16, $f14, $f12
/* 03058C 800309DC 3C013FF0 */  lui         $at, 0x3ff0
/* 030590 800309E0 44819800 */  mtc1        $at, $f19
/* 030594 800309E4 44809000 */  mtc1        $zero, $f18
/* 030598 800309E8 3C014200 */  lui         $at, 0x4200
/* 03059C 800309EC 44813000 */  mtc1        $at, $f6
/* 0305A0 800309F0 46328100 */  add.d       $f4, $f16, $f18
/* 0305A4 800309F4 8E020000 */  lw          $v0, 0x0($s0)
/* 0305A8 800309F8 3C0DFA00 */  lui         $t5, 0xfa00
/* 0305AC 800309FC 2418FFFF */  addiu       $t8, $zero, -0x1
/* 0305B0 80030A00 46202020 */  cvt.s.d     $f0, $f4
/* 0305B4 80030A04 244E0008 */  addiu       $t6, $v0, 0x8
/* 0305B8 80030A08 AE0E0000 */  sw          $t6, 0x0($s0)
/* 0305BC 80030A0C AC580004 */  sw          $t8, 0x4($v0)
/* 0305C0 80030A10 46003202 */  mul.s       $f8, $f6, $f0
/* 0305C4 80030A14 AC4D0000 */  sw          $t5, 0x0($v0)
/* 0305C8 80030A18 240D0080 */  addiu       $t5, $zero, 0x80
/* 0305CC 80030A1C 24180020 */  addiu       $t8, $zero, 0x20
/* 0305D0 80030A20 240C010C */  addiu       $t4, $zero, 0x10c
/* 0305D4 80030A24 240F0020 */  addiu       $t7, $zero, 0x20
/* 0305D8 80030A28 AFAF0014 */  sw          $t7, 0x14($sp)
/* 0305DC 80030A2C 4600428D */  trunc.w.s   $f10, $f8
/* 0305E0 80030A30 AFB80010 */  sw          $t8, 0x10($sp)
/* 0305E4 80030A34 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0305E8 80030A38 E7A00018 */  swc1        $f0, 0x18($sp)
/* 0305EC 80030A3C 44035000 */  mfc1        $v1, $f10
/* 0305F0 80030A40 02002025 */  move        $a0, $s0
/* 0305F4 80030A44 240500F6 */  addiu       $a1, $zero, 0xf6
/* 0305F8 80030A48 00404025 */  move        $t0, $v0
/* 0305FC 80030A4C 04610003 */  bgez        $v1, .L80030A5C
/* 030600 80030A50 0003C843 */   sra        $t9, $v1, 1
/* 030604 80030A54 24610001 */  addiu       $at, $v1, 0x1
/* 030608 80030A58 0001C843 */  sra         $t9, $at, 1
.L80030A5C:
/* 03060C 80030A5C 01993023 */  subu        $a2, $t4, $t9
/* 030610 80030A60 04610003 */  bgez        $v1, .L80030A70
/* 030614 80030A64 00037043 */   sra        $t6, $v1, 1
/* 030618 80030A68 00000000 */  nop
/* 03061C 80030A6C 00017043 */  sra         $t6, $at, 1
.L80030A70:
/* 030620 80030A70 0C00C136 */  jal         func_800304D8
/* 030624 80030A74 01AE3823 */   subu       $a3, $t5, $t6
/* 030628 80030A78 3C013FE0 */  lui         $at, 0x3fe0
/* 03062C 80030A7C 44817800 */  mtc1        $at, $f15
/* 030630 80030A80 44807000 */  mtc1        $zero, $f14
/* 030634 80030A84 10000018 */  b           .L80030AE8
/* 030638 80030A88 00000000 */   nop
.L80030A8C:
/* 03063C 80030A8C 8E020000 */  lw          $v0, 0x0($s0)
/* 030640 80030A90 3C013F80 */  lui         $at, 0x3f80
/* 030644 80030A94 44818000 */  mtc1        $at, $f16
/* 030648 80030A98 244C0008 */  addiu       $t4, $v0, 0x8
/* 03064C 80030A9C AE0C0000 */  sw          $t4, 0x0($s0)
/* 030650 80030AA0 AC4D0004 */  sw          $t5, 0x4($v0)
/* 030654 80030AA4 AC590000 */  sw          $t9, 0x0($v0)
/* 030658 80030AA8 44819000 */  mtc1        $at, $f18
/* 03065C 80030AAC 240E0020 */  addiu       $t6, $zero, 0x20
/* 030660 80030AB0 24180020 */  addiu       $t8, $zero, 0x20
/* 030664 80030AB4 AFB80014 */  sw          $t8, 0x14($sp)
/* 030668 80030AB8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03066C 80030ABC 02002025 */  move        $a0, $s0
/* 030670 80030AC0 240500F6 */  addiu       $a1, $zero, 0xf6
/* 030674 80030AC4 240600FC */  addiu       $a2, $zero, 0xfc
/* 030678 80030AC8 24070070 */  addiu       $a3, $zero, 0x70
/* 03067C 80030ACC E7B00018 */  swc1        $f16, 0x18($sp)
/* 030680 80030AD0 0C00C136 */  jal         func_800304D8
/* 030684 80030AD4 E7B2001C */   swc1       $f18, 0x1c($sp)
/* 030688 80030AD8 3C013FE0 */  lui         $at, 0x3fe0
/* 03068C 80030ADC 44817800 */  mtc1        $at, $f15
/* 030690 80030AE0 44807000 */  mtc1        $zero, $f14
/* 030694 80030AE4 00000000 */  nop
.L80030AE8:
/* 030698 80030AE8 3C04800F */  lui         $a0, %hi(D_800F1BF4)
/* 03069C 80030AEC 8C841BF4 */  lw          $a0, %lo(D_800F1BF4)($a0)
/* 0306A0 80030AF0 24010001 */  addiu       $at, $zero, 0x1
/* 0306A4 80030AF4 3C0F800F */  lui         $t7, %hi(D_800F1BF8)
/* 0306A8 80030AF8 1481005D */  bne         $a0, $at, .L80030C70
/* 0306AC 80030AFC 00000000 */   nop
/* 0306B0 80030B00 8DEF1BF8 */  lw          $t7, %lo(D_800F1BF8)($t7)
/* 0306B4 80030B04 24010003 */  addiu       $at, $zero, 0x3
/* 0306B8 80030B08 3C0C800F */  lui         $t4, %hi(D_800F1D18)
/* 0306BC 80030B0C 15E10040 */  bne         $t7, $at, .L80030C10
/* 0306C0 80030B10 240500F7 */   addiu      $a1, $zero, 0xf7
/* 0306C4 80030B14 8D8C1D18 */  lw          $t4, %lo(D_800F1D18)($t4)
/* 0306C8 80030B18 24010002 */  addiu       $at, $zero, 0x2
/* 0306CC 80030B1C 3C19800F */  lui         $t9, %hi(D_800F1D1C)
/* 0306D0 80030B20 5181003C */  beql        $t4, $at, .L80030C14
/* 0306D4 80030B24 8E020000 */   lw         $v0, 0x0($s0)
/* 0306D8 80030B28 8F391D1C */  lw          $t9, %lo(D_800F1D1C)($t9)
/* 0306DC 80030B2C C7A40094 */  lwc1        $f4, 0x94($sp)
/* 0306E0 80030B30 3C014396 */  lui         $at, 0x4396
/* 0306E4 80030B34 13240036 */  beq         $t9, $a0, .L80030C10
/* 0306E8 80030B38 3C0EFA00 */   lui        $t6, 0xfa00
/* 0306EC 80030B3C 44813000 */  mtc1        $at, $f6
/* 0306F0 80030B40 3C013FF0 */  lui         $at, 0x3ff0
/* 0306F4 80030B44 44818800 */  mtc1        $at, $f17
/* 0306F8 80030B48 46062203 */  div.s       $f8, $f4, $f6
/* 0306FC 80030B4C 46004021 */  cvt.d.s     $f0, $f8
/* 030700 80030B50 4620703E */  c.le.d      $f14, $f0
/* 030704 80030B54 00000000 */  nop
/* 030708 80030B58 45020004 */  bc1fl       .L80030B6C
/* 03070C 80030B5C 462E0301 */   sub.d      $f12, $f0, $f14
/* 030710 80030B60 10000003 */  b           .L80030B70
/* 030714 80030B64 462E0301 */   sub.d      $f12, $f0, $f14
/* 030718 80030B68 462E0301 */  sub.d       $f12, $f0, $f14
.L80030B6C:
/* 03071C 80030B6C 46206307 */  neg.d       $f12, $f12
.L80030B70:
/* 030720 80030B70 462C7281 */  sub.d       $f10, $f14, $f12
/* 030724 80030B74 44808000 */  mtc1        $zero, $f16
/* 030728 80030B78 3C014200 */  lui         $at, 0x4200
/* 03072C 80030B7C 44812000 */  mtc1        $at, $f4
/* 030730 80030B80 46305480 */  add.d       $f18, $f10, $f16
/* 030734 80030B84 8E020000 */  lw          $v0, 0x0($s0)
/* 030738 80030B88 2418FFFF */  addiu       $t8, $zero, -0x1
/* 03073C 80030B8C 241900A0 */  addiu       $t9, $zero, 0xa0
/* 030740 80030B90 46209020 */  cvt.s.d     $f0, $f18
/* 030744 80030B94 244D0008 */  addiu       $t5, $v0, 0x8
/* 030748 80030B98 AE0D0000 */  sw          $t5, 0x0($s0)
/* 03074C 80030B9C AC580004 */  sw          $t8, 0x4($v0)
/* 030750 80030BA0 46002182 */  mul.s       $f6, $f4, $f0
/* 030754 80030BA4 AC4E0000 */  sw          $t6, 0x0($v0)
/* 030758 80030BA8 240E0020 */  addiu       $t6, $zero, 0x20
/* 03075C 80030BAC 24180020 */  addiu       $t8, $zero, 0x20
/* 030760 80030BB0 240D0044 */  addiu       $t5, $zero, 0x44
/* 030764 80030BB4 AFB80014 */  sw          $t8, 0x14($sp)
/* 030768 80030BB8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 03076C 80030BBC 4600320D */  trunc.w.s   $f8, $f6
/* 030770 80030BC0 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 030774 80030BC4 E7A00018 */  swc1        $f0, 0x18($sp)
/* 030778 80030BC8 02002025 */  move        $a0, $s0
/* 03077C 80030BCC 44084000 */  mfc1        $t0, $f8
/* 030780 80030BD0 240500F7 */  addiu       $a1, $zero, 0xf7
/* 030784 80030BD4 00401825 */  move        $v1, $v0
/* 030788 80030BD8 05010003 */  bgez        $t0, .L80030BE8
/* 03078C 80030BDC 00086043 */   sra        $t4, $t0, 1
/* 030790 80030BE0 25010001 */  addiu       $at, $t0, 0x1
/* 030794 80030BE4 00016043 */  sra         $t4, $at, 1
.L80030BE8:
/* 030798 80030BE8 01804025 */  move        $t0, $t4
/* 03079C 80030BEC 032C3023 */  subu        $a2, $t9, $t4
/* 0307A0 80030BF0 0C00C136 */  jal         func_800304D8
/* 0307A4 80030BF4 01AC3823 */   subu       $a3, $t5, $t4
/* 0307A8 80030BF8 3C013FE0 */  lui         $at, 0x3fe0
/* 0307AC 80030BFC 44817800 */  mtc1        $at, $f15
/* 0307B0 80030C00 44807000 */  mtc1        $zero, $f14
/* 0307B4 80030C04 3C04800F */  lui         $a0, %hi(D_800F1BF4)
/* 0307B8 80030C08 10000019 */  b           .L80030C70
/* 0307BC 80030C0C 8C841BF4 */   lw         $a0, %lo(D_800F1BF4)($a0)
.L80030C10:
/* 0307C0 80030C10 8E020000 */  lw          $v0, 0x0($s0)
.L80030C14:
/* 0307C4 80030C14 3C013F80 */  lui         $at, 0x3f80
/* 0307C8 80030C18 3C0CFA00 */  lui         $t4, 0xfa00
/* 0307CC 80030C1C 244F0008 */  addiu       $t7, $v0, 0x8
/* 0307D0 80030C20 AE0F0000 */  sw          $t7, 0x0($s0)
/* 0307D4 80030C24 2419FF80 */  addiu       $t9, $zero, -0x80
/* 0307D8 80030C28 44810000 */  mtc1        $at, $f0
/* 0307DC 80030C2C AC590004 */  sw          $t9, 0x4($v0)
/* 0307E0 80030C30 AC4C0000 */  sw          $t4, 0x0($v0)
/* 0307E4 80030C34 240D0020 */  addiu       $t5, $zero, 0x20
/* 0307E8 80030C38 240E0020 */  addiu       $t6, $zero, 0x20
/* 0307EC 80030C3C AFAE0014 */  sw          $t6, 0x14($sp)
/* 0307F0 80030C40 AFAD0010 */  sw          $t5, 0x10($sp)
/* 0307F4 80030C44 02002025 */  move        $a0, $s0
/* 0307F8 80030C48 24060090 */  addiu       $a2, $zero, 0x90
/* 0307FC 80030C4C 24070034 */  addiu       $a3, $zero, 0x34
/* 030800 80030C50 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 030804 80030C54 0C00C136 */  jal         func_800304D8
/* 030808 80030C58 E7A00018 */   swc1       $f0, 0x18($sp)
/* 03080C 80030C5C 3C013FE0 */  lui         $at, 0x3fe0
/* 030810 80030C60 3C04800F */  lui         $a0, %hi(D_800F1BF4)
/* 030814 80030C64 44817800 */  mtc1        $at, $f15
/* 030818 80030C68 44807000 */  mtc1        $zero, $f14
/* 03081C 80030C6C 8C841BF4 */  lw          $a0, %lo(D_800F1BF4)($a0)
.L80030C70:
/* 030820 80030C70 1480004E */  bne         $a0, $zero, .L80030DAC
/* 030824 80030C74 3C18800F */   lui        $t8, %hi(D_800F1BF8)
/* 030828 80030C78 8F181BF8 */  lw          $t8, %lo(D_800F1BF8)($t8)
/* 03082C 80030C7C 24010003 */  addiu       $at, $zero, 0x3
/* 030830 80030C80 3C0F800F */  lui         $t7, %hi(D_800F1D1C)
/* 030834 80030C84 17010036 */  bne         $t8, $at, .L80030D60
/* 030838 80030C88 240500F4 */   addiu      $a1, $zero, 0xf4
/* 03083C 80030C8C 8DEF1D1C */  lw          $t7, %lo(D_800F1D1C)($t7)
/* 030840 80030C90 C7AA0094 */  lwc1        $f10, 0x94($sp)
/* 030844 80030C94 3C014396 */  lui         $at, 0x4396
/* 030848 80030C98 11E40031 */  beq         $t7, $a0, .L80030D60
/* 03084C 80030C9C 3C19FA00 */   lui        $t9, 0xfa00
/* 030850 80030CA0 44818000 */  mtc1        $at, $f16
/* 030854 80030CA4 3C013FF0 */  lui         $at, 0x3ff0
/* 030858 80030CA8 44813800 */  mtc1        $at, $f7
/* 03085C 80030CAC 46105483 */  div.s       $f18, $f10, $f16
/* 030860 80030CB0 46009021 */  cvt.d.s     $f0, $f18
/* 030864 80030CB4 4620703E */  c.le.d      $f14, $f0
/* 030868 80030CB8 462E0081 */  sub.d       $f2, $f0, $f14
/* 03086C 80030CBC 45020004 */  bc1fl       .L80030CD0
/* 030870 80030CC0 46201307 */   neg.d      $f12, $f2
/* 030874 80030CC4 10000002 */  b           .L80030CD0
/* 030878 80030CC8 46201306 */   mov.d      $f12, $f2
/* 03087C 80030CCC 46201307 */  neg.d       $f12, $f2
.L80030CD0:
/* 030880 80030CD0 462C7101 */  sub.d       $f4, $f14, $f12
/* 030884 80030CD4 44803000 */  mtc1        $zero, $f6
/* 030888 80030CD8 3C014200 */  lui         $at, 0x4200
/* 03088C 80030CDC 44815000 */  mtc1        $at, $f10
/* 030890 80030CE0 46262200 */  add.d       $f8, $f4, $f6
/* 030894 80030CE4 8E020000 */  lw          $v0, 0x0($s0)
/* 030898 80030CE8 240DFFFF */  addiu       $t5, $zero, -0x1
/* 03089C 80030CEC 240F00A0 */  addiu       $t7, $zero, 0xa0
/* 0308A0 80030CF0 46204020 */  cvt.s.d     $f0, $f8
/* 0308A4 80030CF4 244C0008 */  addiu       $t4, $v0, 0x8
/* 0308A8 80030CF8 AE0C0000 */  sw          $t4, 0x0($s0)
/* 0308AC 80030CFC AC4D0004 */  sw          $t5, 0x4($v0)
/* 0308B0 80030D00 46005402 */  mul.s       $f16, $f10, $f0
/* 0308B4 80030D04 AC590000 */  sw          $t9, 0x0($v0)
/* 0308B8 80030D08 24190020 */  addiu       $t9, $zero, 0x20
/* 0308BC 80030D0C 240D0020 */  addiu       $t5, $zero, 0x20
/* 0308C0 80030D10 240C00C4 */  addiu       $t4, $zero, 0xc4
/* 0308C4 80030D14 AFAD0014 */  sw          $t5, 0x14($sp)
/* 0308C8 80030D18 AFB90010 */  sw          $t9, 0x10($sp)
/* 0308CC 80030D1C 4600848D */  trunc.w.s   $f18, $f16
/* 0308D0 80030D20 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0308D4 80030D24 E7A00018 */  swc1        $f0, 0x18($sp)
/* 0308D8 80030D28 02002025 */  move        $a0, $s0
/* 0308DC 80030D2C 44089000 */  mfc1        $t0, $f18
/* 0308E0 80030D30 240500F4 */  addiu       $a1, $zero, 0xf4
/* 0308E4 80030D34 00401825 */  move        $v1, $v0
/* 0308E8 80030D38 05010003 */  bgez        $t0, .L80030D48
/* 0308EC 80030D3C 0008C043 */   sra        $t8, $t0, 1
/* 0308F0 80030D40 25010001 */  addiu       $at, $t0, 0x1
/* 0308F4 80030D44 0001C043 */  sra         $t8, $at, 1
.L80030D48:
/* 0308F8 80030D48 03004025 */  move        $t0, $t8
/* 0308FC 80030D4C 01F83023 */  subu        $a2, $t7, $t8
/* 030900 80030D50 0C00C136 */  jal         func_800304D8
/* 030904 80030D54 01983823 */   subu       $a3, $t4, $t8
/* 030908 80030D58 10000014 */  b           .L80030DAC
/* 03090C 80030D5C 00000000 */   nop
.L80030D60:
/* 030910 80030D60 8E020000 */  lw          $v0, 0x0($s0)
/* 030914 80030D64 3C013F80 */  lui         $at, 0x3f80
/* 030918 80030D68 3C18FA00 */  lui         $t8, 0xfa00
/* 03091C 80030D6C 244E0008 */  addiu       $t6, $v0, 0x8
/* 030920 80030D70 AE0E0000 */  sw          $t6, 0x0($s0)
/* 030924 80030D74 240FFF80 */  addiu       $t7, $zero, -0x80
/* 030928 80030D78 44810000 */  mtc1        $at, $f0
/* 03092C 80030D7C AC4F0004 */  sw          $t7, 0x4($v0)
/* 030930 80030D80 AC580000 */  sw          $t8, 0x0($v0)
/* 030934 80030D84 240C0020 */  addiu       $t4, $zero, 0x20
/* 030938 80030D88 24190020 */  addiu       $t9, $zero, 0x20
/* 03093C 80030D8C AFB90014 */  sw          $t9, 0x14($sp)
/* 030940 80030D90 AFAC0010 */  sw          $t4, 0x10($sp)
/* 030944 80030D94 02002025 */  move        $a0, $s0
/* 030948 80030D98 24060090 */  addiu       $a2, $zero, 0x90
/* 03094C 80030D9C 240700B4 */  addiu       $a3, $zero, 0xb4
/* 030950 80030DA0 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 030954 80030DA4 0C00C136 */  jal         func_800304D8
/* 030958 80030DA8 E7A00018 */   swc1       $f0, 0x18($sp)
.L80030DAC:
/* 03095C 80030DAC 3C0D800F */  lui         $t5, %hi(D_800F1BEC)
/* 030960 80030DB0 8DAD1BEC */  lw          $t5, %lo(D_800F1BEC)($t5)
/* 030964 80030DB4 3C0E800F */  lui         $t6, %hi(D_800F1BF4)
/* 030968 80030DB8 55A00067 */  bnel        $t5, $zero, .L80030F58
/* 03096C 80030DBC 8FBF002C */   lw         $ra, 0x2c($sp)
/* 030970 80030DC0 8DCE1BF4 */  lw          $t6, %lo(D_800F1BF4)($t6)
/* 030974 80030DC4 3C04800F */  lui         $a0, %hi(D_800F1C0C)
/* 030978 80030DC8 000EC080 */  sll         $t8, $t6, 2
/* 03097C 80030DCC 030EC021 */  addu        $t8, $t8, $t6
/* 030980 80030DD0 0018C100 */  sll         $t8, $t8, 4
/* 030984 80030DD4 00982021 */  addu        $a0, $a0, $t8
/* 030988 80030DD8 0C001FA3 */  jal         func_80007E8C
/* 03098C 80030DDC 8C841C0C */   lw         $a0, %lo(D_800F1C0C)($a0)
/* 030990 80030DE0 1040005C */  beq         $v0, $zero, .L80030F54
/* 030994 80030DE4 3C04800F */   lui        $a0, %hi(D_800F1BF4)
/* 030998 80030DE8 8C841BF4 */  lw          $a0, %lo(D_800F1BF4)($a0)
/* 03099C 80030DEC 3C014010 */  lui         $at, 0x4010
/* 0309A0 80030DF0 3C0D800F */  lui         $t5, %hi(D_800F1BF4)
/* 0309A4 80030DF4 14800021 */  bne         $a0, $zero, .L80030E7C
/* 0309A8 80030DF8 00000000 */   nop
/* 0309AC 80030DFC C4440024 */  lwc1        $f4, 0x24($v0)
/* 0309B0 80030E00 44816800 */  mtc1        $at, $f13
/* 0309B4 80030E04 44806000 */  mtc1        $zero, $f12
/* 0309B8 80030E08 460021A1 */  cvt.d.s     $f6, $f4
/* 0309BC 80030E0C 3C013FF0 */  lui         $at, 0x3ff0
/* 0309C0 80030E10 462C3202 */  mul.d       $f8, $f6, $f12
/* 0309C4 80030E14 44815800 */  mtc1        $at, $f11
/* 0309C8 80030E18 44805000 */  mtc1        $zero, $f10
/* 0309CC 80030E1C 3C013F80 */  lui         $at, 0x3f80
/* 0309D0 80030E20 462040A0 */  cvt.s.d     $f2, $f8
/* 0309D4 80030E24 46001021 */  cvt.d.s     $f0, $f2
/* 0309D8 80030E28 462A003C */  c.lt.d      $f0, $f10
/* 0309DC 80030E2C 00000000 */  nop
/* 0309E0 80030E30 45020005 */  bc1fl       .L80030E48
/* 0309E4 80030E34 4620603C */   c.lt.d     $f12, $f0
/* 0309E8 80030E38 44811000 */  mtc1        $at, $f2
/* 0309EC 80030E3C 10000008 */  b           .L80030E60
/* 0309F0 80030E40 8E020000 */   lw         $v0, 0x0($s0)
/* 0309F4 80030E44 4620603C */  c.lt.d      $f12, $f0
.L80030E48:
/* 0309F8 80030E48 3C014080 */  lui         $at, 0x4080
/* 0309FC 80030E4C 45020004 */  bc1fl       .L80030E60
/* 030A00 80030E50 8E020000 */   lw         $v0, 0x0($s0)
/* 030A04 80030E54 44811000 */  mtc1        $at, $f2
/* 030A08 80030E58 00000000 */  nop
/* 030A0C 80030E5C 8E020000 */  lw          $v0, 0x0($s0)
.L80030E60:
/* 030A10 80030E60 3C0CFA00 */  lui         $t4, 0xfa00
/* 030A14 80030E64 2419FFC8 */  addiu       $t9, $zero, -0x38
/* 030A18 80030E68 244F0008 */  addiu       $t7, $v0, 0x8
/* 030A1C 80030E6C AE0F0000 */  sw          $t7, 0x0($s0)
/* 030A20 80030E70 AC590004 */  sw          $t9, 0x4($v0)
/* 030A24 80030E74 1000001D */  b           .L80030EEC
/* 030A28 80030E78 AC4C0000 */   sw         $t4, 0x0($v0)
.L80030E7C:
/* 030A2C 80030E7C 8DAD1BF4 */  lw          $t5, %lo(D_800F1BF4)($t5)
/* 030A30 80030E80 3C02800F */  lui         $v0, %hi(D_800F1C08)
/* 030A34 80030E84 3C038012 */  lui         $v1, %hi(D_80125AB0 + 0x1)
/* 030A38 80030E88 000D7080 */  sll         $t6, $t5, 2
/* 030A3C 80030E8C 01CD7021 */  addu        $t6, $t6, $t5
/* 030A40 80030E90 000E7100 */  sll         $t6, $t6, 4
/* 030A44 80030E94 004E1021 */  addu        $v0, $v0, $t6
/* 030A48 80030E98 8C421C08 */  lw          $v0, %lo(D_800F1C08)($v0)
/* 030A4C 80030E9C 24010002 */  addiu       $at, $zero, 0x2
/* 030A50 80030EA0 0002C0C0 */  sll         $t8, $v0, 3
/* 030A54 80030EA4 0302C023 */  subu        $t8, $t8, $v0
/* 030A58 80030EA8 0018C080 */  sll         $t8, $t8, 2
/* 030A5C 80030EAC 0302C021 */  addu        $t8, $t8, $v0
/* 030A60 80030EB0 0018C080 */  sll         $t8, $t8, 2
/* 030A64 80030EB4 00781821 */  addu        $v1, $v1, $t8
/* 030A68 80030EB8 80635AB1 */  lb          $v1, %lo(D_80125AB0 + 0x1)($v1)
/* 030A6C 80030EBC 10610025 */  beq         $v1, $at, .L80030F54
/* 030A70 80030EC0 24010005 */   addiu      $at, $zero, 0x5
/* 030A74 80030EC4 10610023 */  beq         $v1, $at, .L80030F54
/* 030A78 80030EC8 3C0CFA00 */   lui        $t4, 0xfa00
/* 030A7C 80030ECC 8E020000 */  lw          $v0, 0x0($s0)
/* 030A80 80030ED0 3C014000 */  lui         $at, 0x4000
/* 030A84 80030ED4 241996C8 */  addiu       $t9, $zero, -0x6938
/* 030A88 80030ED8 244F0008 */  addiu       $t7, $v0, 0x8
/* 030A8C 80030EDC AE0F0000 */  sw          $t7, 0x0($s0)
/* 030A90 80030EE0 44811000 */  mtc1        $at, $f2
/* 030A94 80030EE4 AC590004 */  sw          $t9, 0x4($v0)
/* 030A98 80030EE8 AC4C0000 */  sw          $t4, 0x0($v0)
.L80030EEC:
/* 030A9C 80030EEC 3C014200 */  lui         $at, 0x4200
/* 030AA0 80030EF0 44818000 */  mtc1        $at, $f16
/* 030AA4 80030EF4 3C05800A */  lui         $a1, %hi(D_8009A664)
/* 030AA8 80030EF8 24A5A664 */  addiu       $a1, $a1, %lo(D_8009A664)
/* 030AAC 80030EFC 46028482 */  mul.s       $f18, $f16, $f2
/* 030AB0 80030F00 241800A0 */  addiu       $t8, $zero, 0xa0
/* 030AB4 80030F04 240C0096 */  addiu       $t4, $zero, 0x96
/* 030AB8 80030F08 24030020 */  addiu       $v1, $zero, 0x20
/* 030ABC 80030F0C ACA3000C */  sw          $v1, 0xc($a1)
/* 030AC0 80030F10 ACA30010 */  sw          $v1, 0x10($a1)
/* 030AC4 80030F14 E4A2001C */  swc1        $f2, 0x1c($a1)
/* 030AC8 80030F18 4600910D */  trunc.w.s   $f4, $f18
/* 030ACC 80030F1C E4A20020 */  swc1        $f2, 0x20($a1)
/* 030AD0 80030F20 24040005 */  addiu       $a0, $zero, 0x5
/* 030AD4 80030F24 02003025 */  move        $a2, $s0
/* 030AD8 80030F28 44022000 */  mfc1        $v0, $f4
/* 030ADC 80030F2C 00000000 */  nop
/* 030AE0 80030F30 04410003 */  bgez        $v0, .L80030F40
/* 030AE4 80030F34 00027043 */   sra        $t6, $v0, 1
/* 030AE8 80030F38 24410001 */  addiu       $at, $v0, 0x1
/* 030AEC 80030F3C 00017043 */  sra         $t6, $at, 1
.L80030F40:
/* 030AF0 80030F40 030E7823 */  subu        $t7, $t8, $t6
/* 030AF4 80030F44 018EC823 */  subu        $t9, $t4, $t6
/* 030AF8 80030F48 ACAF0004 */  sw          $t7, 0x4($a1)
/* 030AFC 80030F4C 0C0030D5 */  jal         func_8000C354
/* 030B00 80030F50 ACB90008 */   sw         $t9, 0x8($a1)
.L80030F54:
/* 030B04 80030F54 8FBF002C */  lw          $ra, 0x2c($sp)
.L80030F58:
/* 030B08 80030F58 8FB00028 */  lw          $s0, 0x28($sp)
/* 030B0C 80030F5C 27BD00B8 */  addiu       $sp, $sp, 0xb8
/* 030B10 80030F60 03E00008 */  jr          $ra
/* 030B14 80030F64 00000000 */   nop

glabel func_80030F68 # 29
/* 030B18 80030F68 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 030B1C 80030F6C AFBF0024 */  sw          $ra, 0x24($sp)
/* 030B20 80030F70 AFA40028 */  sw          $a0, 0x28($sp)
/* 030B24 80030F74 AFB30020 */  sw          $s3, 0x20($sp)
/* 030B28 80030F78 AFB2001C */  sw          $s2, 0x1c($sp)
/* 030B2C 80030F7C AFB10018 */  sw          $s1, 0x18($sp)
/* 030B30 80030F80 AFB00014 */  sw          $s0, 0x14($sp)
/* 030B34 80030F84 0C0025B5 */  jal         func_800096D4
/* 030B38 80030F88 00002025 */   move       $a0, $zero
/* 030B3C 80030F8C 3C02800A */  lui         $v0, %hi(D_8009A6AC)
/* 030B40 80030F90 2442A6AC */  addiu       $v0, $v0, %lo(D_8009A6AC)
/* 030B44 80030F94 90440000 */  lbu         $a0, 0x0($v0)
/* 030B48 80030F98 90450001 */  lbu         $a1, 0x1($v0)
/* 030B4C 80030F9C 90460002 */  lbu         $a2, 0x2($v0)
/* 030B50 80030FA0 0C0005AC */  jal         func_800016B0
/* 030B54 80030FA4 90470003 */   lbu        $a3, 0x3($v0)
/* 030B58 80030FA8 3C10800B */  lui         $s0, %hi(D_800ABDD8)
/* 030B5C 80030FAC 2610BDD8 */  addiu       $s0, $s0, %lo(D_800ABDD8)
/* 030B60 80030FB0 8E040000 */  lw          $a0, 0x0($s0)
/* 030B64 80030FB4 0C000453 */  jal         func_8000114C
/* 030B68 80030FB8 00002825 */   move       $a1, $zero
/* 030B6C 80030FBC 0C000486 */  jal         func_80001218
/* 030B70 80030FC0 8E040000 */   lw         $a0, 0x0($s0)
/* 030B74 80030FC4 0C0004C9 */  jal         func_80001324
/* 030B78 80030FC8 8E040000 */   lw         $a0, 0x0($s0)
/* 030B7C 80030FCC 3C03800F */  lui         $v1, %hi(D_800F1CE0)
/* 030B80 80030FD0 24631CE0 */  addiu       $v1, $v1, %lo(D_800F1CE0)
/* 030B84 80030FD4 8C620000 */  lw          $v0, 0x0($v1)
/* 030B88 80030FD8 28410002 */  slti        $at, $v0, 0x2
/* 030B8C 80030FDC 10200003 */  beq         $at, $zero, .L80030FEC
/* 030B90 80030FE0 244E0001 */   addiu      $t6, $v0, 0x1
/* 030B94 80030FE4 1000003D */  b           .L800310DC
/* 030B98 80030FE8 AC6E0000 */   sw         $t6, 0x0($v1)
.L80030FEC:
/* 030B9C 80030FEC 3C0F800F */  lui         $t7, %hi(D_800F1BF4)
/* 030BA0 80030FF0 8DEF1BF4 */  lw          $t7, %lo(D_800F1BF4)($t7)
/* 030BA4 80030FF4 3C13800F */  lui         $s3, %hi(D_800F1BE0)
/* 030BA8 80030FF8 26731BE0 */  addiu       $s3, $s3, %lo(D_800F1BE0)
/* 030BAC 80030FFC 000FC080 */  sll         $t8, $t7, 2
/* 030BB0 80031000 030FC021 */  addu        $t8, $t8, $t7
/* 030BB4 80031004 0018C100 */  sll         $t8, $t8, 4
/* 030BB8 80031008 02789021 */  addu        $s2, $s3, $t8
/* 030BBC 8003100C 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 030BC0 80031010 26520028 */  addiu       $s2, $s2, 0x28
/* 030BC4 80031014 8C841BE0 */  lw          $a0, %lo(D_800F1BE0)($a0)
/* 030BC8 80031018 0C0025E1 */  jal         func_80009784
/* 030BCC 8003101C 24052000 */   addiu      $a1, $zero, 0x2000
/* 030BD0 80031020 0C00C0A3 */  jal         func_8003028C
/* 030BD4 80031024 00000000 */   nop
/* 030BD8 80031028 02408825 */  move        $s1, $s2
/* 030BDC 8003102C 2412000A */  addiu       $s2, $zero, 0xa
/* 030BE0 80031030 00008025 */  move        $s0, $zero
.L80031034:
/* 030BE4 80031034 8E240004 */  lw          $a0, 0x4($s1)
/* 030BE8 80031038 0010C880 */  sll         $t9, $s0, 2
/* 030BEC 8003103C 02794021 */  addu        $t0, $s3, $t9
/* 030BF0 80031040 14800005 */  bne         $a0, $zero, .L80031058
/* 030BF4 80031044 00000000 */   nop
/* 030BF8 80031048 0C001FA3 */  jal         func_80007E8C
/* 030BFC 8003104C 8D0400C8 */   lw         $a0, 0xc8($t0)
/* 030C00 80031050 10000004 */  b           .L80031064
/* 030C04 80031054 00402025 */   move       $a0, $v0
.L80031058:
/* 030C08 80031058 0C001FA3 */  jal         func_80007E8C
/* 030C0C 8003105C 00000000 */   nop
/* 030C10 80031060 00402025 */  move        $a0, $v0
.L80031064:
/* 030C14 80031064 50400004 */  beql        $v0, $zero, .L80031078
/* 030C18 80031068 26100001 */   addiu      $s0, $s0, 0x1
/* 030C1C 8003106C 0C0025E1 */  jal         func_80009784
/* 030C20 80031070 24052000 */   addiu      $a1, $zero, 0x2000
/* 030C24 80031074 26100001 */  addiu       $s0, $s0, 0x1
.L80031078:
/* 030C28 80031078 1612FFEE */  bne         $s0, $s2, .L80031034
/* 030C2C 8003107C 26310008 */   addiu      $s1, $s1, 0x8
/* 030C30 80031080 3C04800F */  lui         $a0, %hi(D_800EF724)
/* 030C34 80031084 8C84F724 */  lw          $a0, %lo(D_800EF724)($a0)
/* 030C38 80031088 10800007 */  beq         $a0, $zero, .L800310A8
/* 030C3C 8003108C 00000000 */   nop
/* 030C40 80031090 0C001FA3 */  jal         func_80007E8C
/* 030C44 80031094 00000000 */   nop
/* 030C48 80031098 10400003 */  beq         $v0, $zero, .L800310A8
/* 030C4C 8003109C 00402025 */   move       $a0, $v0
/* 030C50 800310A0 0C0025E1 */  jal         func_80009784
/* 030C54 800310A4 24052000 */   addiu      $a1, $zero, 0x2000
.L800310A8:
/* 030C58 800310A8 3C09800F */  lui         $t1, %hi(D_800F1BF8)
/* 030C5C 800310AC 8D291BF8 */  lw          $t1, %lo(D_800F1BF8)($t1)
/* 030C60 800310B0 24010005 */  addiu       $at, $zero, 0x5
/* 030C64 800310B4 15210005 */  bne         $t1, $at, .L800310CC
/* 030C68 800310B8 00000000 */   nop
/* 030C6C 800310BC 0C00B0EF */  jal         func_8002C3BC
/* 030C70 800310C0 00000000 */   nop
/* 030C74 800310C4 10000006 */  b           .L800310E0
/* 030C78 800310C8 8FBF0024 */   lw         $ra, 0x24($sp)
.L800310CC:
/* 030C7C 800310CC 0C00C0D4 */  jal         func_80030350
/* 030C80 800310D0 8FA40028 */   lw         $a0, 0x28($sp)
/* 030C84 800310D4 0C00C1DF */  jal         func_8003077C
/* 030C88 800310D8 8FA40028 */   lw         $a0, 0x28($sp)
.L800310DC:
/* 030C8C 800310DC 8FBF0024 */  lw          $ra, 0x24($sp)
.L800310E0:
/* 030C90 800310E0 8FB00014 */  lw          $s0, 0x14($sp)
/* 030C94 800310E4 8FB10018 */  lw          $s1, 0x18($sp)
/* 030C98 800310E8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 030C9C 800310EC 8FB30020 */  lw          $s3, 0x20($sp)
/* 030CA0 800310F0 03E00008 */  jr          $ra
/* 030CA4 800310F4 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_800310F8 # 30
/* 030CA8 800310F8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 030CAC 800310FC AFB00020 */  sw          $s0, 0x20($sp)
/* 030CB0 80031100 00808025 */  move        $s0, $a0
/* 030CB4 80031104 AFBF002C */  sw          $ra, 0x2c($sp)
/* 030CB8 80031108 AFB10024 */  sw          $s1, 0x24($sp)
/* 030CBC 8003110C 00A08825 */  move        $s1, $a1
/* 030CC0 80031110 AFB20028 */  sw          $s2, 0x28($sp)
/* 030CC4 80031114 0C001283 */  jal         func_80004A0C
/* 030CC8 80031118 00002025 */   move       $a0, $zero
/* 030CCC 8003111C 0C002CB2 */  jal         func_8000B2C8
/* 030CD0 80031120 24040001 */   addiu      $a0, $zero, 0x1
/* 030CD4 80031124 3C04800F */  lui         $a0, %hi(D_800EF724)
/* 030CD8 80031128 0C001FA3 */  jal         func_80007E8C
/* 030CDC 8003112C 8C84F724 */   lw         $a0, %lo(D_800EF724)($a0)
/* 030CE0 80031130 10400012 */  beq         $v0, $zero, .L8003117C
/* 030CE4 80031134 AFA20034 */   sw         $v0, 0x34($sp)
/* 030CE8 80031138 12200010 */  beq         $s1, $zero, .L8003117C
/* 030CEC 8003113C 8C440054 */   lw         $a0, 0x54($v0)
/* 030CF0 80031140 848E0004 */  lh          $t6, 0x4($a0)
/* 030CF4 80031144 3C188012 */  lui         $t8, %hi(D_80125AB0 + 0x1)
/* 030CF8 80031148 24010001 */  addiu       $at, $zero, 0x1
/* 030CFC 8003114C 000E78C0 */  sll         $t7, $t6, 3
/* 030D00 80031150 01EE7823 */  subu        $t7, $t7, $t6
/* 030D04 80031154 000F7880 */  sll         $t7, $t7, 2
/* 030D08 80031158 01EE7821 */  addu        $t7, $t7, $t6
/* 030D0C 8003115C 000F7880 */  sll         $t7, $t7, 2
/* 030D10 80031160 030FC021 */  addu        $t8, $t8, $t7
/* 030D14 80031164 83185AB1 */  lb          $t8, %lo(D_80125AB0 + 0x1)($t8)
/* 030D18 80031168 24100001 */  addiu       $s0, $zero, 0x1
/* 030D1C 8003116C 17010003 */  bne         $t8, $at, .L8003117C
/* 030D20 80031170 00000000 */   nop
/* 030D24 80031174 10000001 */  b           .L8003117C
/* 030D28 80031178 00008025 */   move       $s0, $zero
.L8003117C:
/* 030D2C 8003117C 2401FFFF */  addiu       $at, $zero, -0x1
/* 030D30 80031180 12010003 */  beq         $s0, $at, .L80031190
/* 030D34 80031184 3C12800F */   lui        $s2, %hi(D_800F1BE0)
/* 030D38 80031188 3C01800F */  lui         $at, %hi(D_800F1BF4)
/* 030D3C 8003118C AC301BF4 */  sw          $s0, %lo(D_800F1BF4)($at)
.L80031190:
/* 030D40 80031190 26521BE0 */  addiu       $s2, $s2, %lo(D_800F1BE0)
/* 030D44 80031194 02402025 */  move        $a0, $s2
/* 030D48 80031198 0C00BDA0 */  jal         func_8002F680
/* 030D4C 8003119C 00002825 */   move       $a1, $zero
/* 030D50 800311A0 0C00BF89 */  jal         func_8002FE24
/* 030D54 800311A4 02402025 */   move       $a0, $s2
/* 030D58 800311A8 0C00BB1D */  jal         func_8002EC74
/* 030D5C 800311AC 02402025 */   move       $a0, $s2
/* 030D60 800311B0 3C04800F */  lui         $a0, %hi(D_800F1BF4)
/* 030D64 800311B4 8C841BF4 */  lw          $a0, %lo(D_800F1BF4)($a0)
/* 030D68 800311B8 3C01800F */  lui         $at, %hi(D_800F1CE0)
/* 030D6C 800311BC AC201CE0 */  sw          $zero, %lo(D_800F1CE0)($at)
/* 030D70 800311C0 0004C880 */  sll         $t9, $a0, 2
/* 030D74 800311C4 0324C821 */  addu        $t9, $t9, $a0
/* 030D78 800311C8 0019C900 */  sll         $t9, $t9, 4
/* 030D7C 800311CC 02591021 */  addu        $v0, $s2, $t9
/* 030D80 800311D0 3C01800F */  lui         $at, %hi(D_800F1D1C)
/* 030D84 800311D4 24510028 */  addiu       $s1, $v0, 0x28
/* 030D88 800311D8 24120050 */  addiu       $s2, $zero, 0x50
/* 030D8C 800311DC 00008025 */  move        $s0, $zero
/* 030D90 800311E0 AC241D1C */  sw          $a0, %lo(D_800F1D1C)($at)
.L800311E4:
/* 030D94 800311E4 0C001FA3 */  jal         func_80007E8C
/* 030D98 800311E8 8E240004 */   lw         $a0, 0x4($s1)
/* 030D9C 800311EC 26100008 */  addiu       $s0, $s0, 0x8
/* 030DA0 800311F0 1612FFFC */  bne         $s0, $s2, .L800311E4
/* 030DA4 800311F4 26310008 */   addiu      $s1, $s1, 0x8
/* 030DA8 800311F8 8FA40034 */  lw          $a0, 0x34($sp)
/* 030DAC 800311FC 10800007 */  beq         $a0, $zero, .L8003121C
/* 030DB0 80031200 00000000 */   nop
/* 030DB4 80031204 0C00237A */  jal         func_80008DE8
/* 030DB8 80031208 24052000 */   addiu      $a1, $zero, 0x2000
/* 030DBC 8003120C 3C04800F */  lui         $a0, %hi(D_800EF724)
/* 030DC0 80031210 8C84F724 */  lw          $a0, %lo(D_800EF724)($a0)
/* 030DC4 80031214 0C00BAFB */  jal         func_8002EBEC
/* 030DC8 80031218 3C053F00 */   lui        $a1, 0x3f00
.L8003121C:
/* 030DCC 8003121C 0C00BBE2 */  jal         func_8002EF88
/* 030DD0 80031220 00000000 */   nop
/* 030DD4 80031224 2408001E */  addiu       $t0, $zero, 0x1e
/* 030DD8 80031228 AFA80010 */  sw          $t0, 0x10($sp)
/* 030DDC 8003122C 24040001 */  addiu       $a0, $zero, 0x1
/* 030DE0 80031230 2405001E */  addiu       $a1, $zero, 0x1e
/* 030DE4 80031234 2406001E */  addiu       $a2, $zero, 0x1e
/* 030DE8 80031238 0C0013C9 */  jal         func_80004F24
/* 030DEC 8003123C 2407001E */   addiu      $a3, $zero, 0x1e
/* 030DF0 80031240 0C002C3F */  jal         func_8000B0FC
/* 030DF4 80031244 00000000 */   nop
/* 030DF8 80031248 8FBF002C */  lw          $ra, 0x2c($sp)
/* 030DFC 8003124C 246BF448 */  addiu       $t3, $v1, -0xbb8
/* 030E00 80031250 3C01800F */  lui         $at, %hi(D_800F1D20)
/* 030E04 80031254 8FB00020 */  lw          $s0, 0x20($sp)
/* 030E08 80031258 8FB10024 */  lw          $s1, 0x24($sp)
/* 030E0C 8003125C 8FB20028 */  lw          $s2, 0x28($sp)
/* 030E10 80031260 AC2B1D20 */  sw          $t3, %lo(D_800F1D20)($at)
/* 030E14 80031264 03E00008 */  jr          $ra
/* 030E18 80031268 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8003126C # 31
/* 030E1C 8003126C 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 030E20 80031270 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 030E24 80031274 8C8E0014 */  lw          $t6, 0x14($a0)
/* 030E28 80031278 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 030E2C 8003127C AFB20028 */  sw          $s2, 0x28($sp)
/* 030E30 80031280 000E7880 */  sll         $t7, $t6, 2
/* 030E34 80031284 01EE7821 */  addu        $t7, $t7, $t6
/* 030E38 80031288 000F7900 */  sll         $t7, $t7, 4
/* 030E3C 8003128C AFB10024 */  sw          $s1, 0x24($sp)
/* 030E40 80031290 AFB00020 */  sw          $s0, 0x20($sp)
/* 030E44 80031294 008F1021 */  addu        $v0, $a0, $t7
/* 030E48 80031298 AFBF002C */  sw          $ra, 0x2c($sp)
/* 030E4C 8003129C 24510028 */  addiu       $s1, $v0, 0x28
/* 030E50 800312A0 00008025 */  move        $s0, $zero
/* 030E54 800312A4 24120050 */  addiu       $s2, $zero, 0x50
.L800312A8:
/* 030E58 800312A8 0C001FA3 */  jal         func_80007E8C
/* 030E5C 800312AC 8E240004 */   lw         $a0, 0x4($s1)
/* 030E60 800312B0 26100008 */  addiu       $s0, $s0, 0x8
/* 030E64 800312B4 1612FFFC */  bne         $s0, $s2, .L800312A8
/* 030E68 800312B8 26310008 */   addiu      $s1, $s1, 0x8
/* 030E6C 800312BC 3C04800F */  lui         $a0, %hi(D_800EF724)
/* 030E70 800312C0 8C84F724 */  lw          $a0, %lo(D_800EF724)($a0)
/* 030E74 800312C4 1080000A */  beq         $a0, $zero, .L800312F0
/* 030E78 800312C8 00000000 */   nop
/* 030E7C 800312CC 0C001FA3 */  jal         func_80007E8C
/* 030E80 800312D0 00000000 */   nop
/* 030E84 800312D4 00402025 */  move        $a0, $v0
/* 030E88 800312D8 0C002394 */  jal         func_80008E50
/* 030E8C 800312DC 24052000 */   addiu      $a1, $zero, 0x2000
/* 030E90 800312E0 3C04800F */  lui         $a0, %hi(D_800EF724)
/* 030E94 800312E4 8C84F724 */  lw          $a0, %lo(D_800EF724)($a0)
/* 030E98 800312E8 0C00BAFB */  jal         func_8002EBEC
/* 030E9C 800312EC 3C053F80 */   lui        $a1, 0x3f80
.L800312F0:
/* 030EA0 800312F0 0C009EA2 */  jal         func_80027A88
/* 030EA4 800312F4 00000000 */   nop
/* 030EA8 800312F8 0C00BB6F */  jal         func_8002EDBC
/* 030EAC 800312FC 00000000 */   nop
/* 030EB0 80031300 2418001E */  addiu       $t8, $zero, 0x1e
/* 030EB4 80031304 AFB80010 */  sw          $t8, 0x10($sp)
/* 030EB8 80031308 00002025 */  move        $a0, $zero
/* 030EBC 8003130C 2405001E */  addiu       $a1, $zero, 0x1e
/* 030EC0 80031310 2406001E */  addiu       $a2, $zero, 0x1e
/* 030EC4 80031314 0C0013C9 */  jal         func_80004F24
/* 030EC8 80031318 2407001E */   addiu      $a3, $zero, 0x1e
/* 030ECC 8003131C 3C10800F */  lui         $s0, %hi(D_800F1D18)
/* 030ED0 80031320 26101D18 */  addiu       $s0, $s0, %lo(D_800F1D18)
/* 030ED4 80031324 8E020000 */  lw          $v0, 0x0($s0)
/* 030ED8 80031328 24010001 */  addiu       $at, $zero, 0x1
/* 030EDC 8003132C 10400008 */  beq         $v0, $zero, .L80031350
/* 030EE0 80031330 00000000 */   nop
/* 030EE4 80031334 1041000A */  beq         $v0, $at, .L80031360
/* 030EE8 80031338 3C04800F */   lui        $a0, 0x800f
/* 030EEC 8003133C 24010002 */  addiu       $at, $zero, 0x2
/* 030EF0 80031340 1041000C */  beq         $v0, $at, .L80031374
/* 030EF4 80031344 00000000 */   nop
/* 030EF8 80031348 1000000E */  b           .L80031384
/* 030EFC 8003134C 8FBF002C */   lw         $ra, 0x2c($sp)
.L80031350:
/* 030F00 80031350 0C002CB2 */  jal         func_8000B2C8
/* 030F04 80031354 00002025 */   move       $a0, $zero
/* 030F08 80031358 1000000A */  b           .L80031384
/* 030F0C 8003135C 8FBF002C */   lw         $ra, 0x2c($sp)
.L80031360:
/* 030F10 80031360 8C841D1C */  lw          $a0, 0x1d1c($a0)
/* 030F14 80031364 0C00C43E */  jal         func_800310F8
/* 030F18 80031368 00002825 */   move       $a1, $zero
/* 030F1C 8003136C 10000005 */  b           .L80031384
/* 030F20 80031370 8FBF002C */   lw         $ra, 0x2c($sp)
.L80031374:
/* 030F24 80031374 0C046A1E */  jal         func_8011A878
/* 030F28 80031378 00000000 */   nop
/* 030F2C 8003137C AE000000 */  sw          $zero, 0x0($s0)
/* 030F30 80031380 8FBF002C */  lw          $ra, 0x2c($sp)
.L80031384:
/* 030F34 80031384 8FB00020 */  lw          $s0, 0x20($sp)
/* 030F38 80031388 8FB10024 */  lw          $s1, 0x24($sp)
/* 030F3C 8003138C 8FB20028 */  lw          $s2, 0x28($sp)
/* 030F40 80031390 03E00008 */  jr          $ra
/* 030F44 80031394 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80031398 # 32
/* 030F48 80031398 3C07800F */  lui         $a3, %hi(D_800F1BE0)
/* 030F4C 8003139C 24E71BE0 */  addiu       $a3, $a3, %lo(D_800F1BE0)
/* 030F50 800313A0 8CEE0018 */  lw          $t6, 0x18($a3)
/* 030F54 800313A4 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 030F58 800313A8 24010005 */  addiu       $at, $zero, 0x5
/* 030F5C 800313AC 15C1000E */  bne         $t6, $at, .L800313E8
/* 030F60 800313B0 AFBF001C */   sw         $ra, 0x1c($sp)
/* 030F64 800313B4 3C02800B */  lui         $v0, %hi(D_800AD54C)
/* 030F68 800313B8 8C42D54C */  lw          $v0, %lo(D_800AD54C)($v0)
/* 030F6C 800313BC 304F8000 */  andi        $t7, $v0, 0x8000
/* 030F70 800313C0 51E000D4 */  beql        $t7, $zero, .L80031714
/* 030F74 800313C4 8FBF001C */   lw         $ra, 0x1c($sp)
/* 030F78 800313C8 0C00B10F */  jal         func_8002C43C
/* 030F7C 800313CC 00000000 */   nop
/* 030F80 800313D0 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 030F84 800313D4 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 030F88 800313D8 0C00BDA0 */  jal         func_8002F680
/* 030F8C 800313DC 24050002 */   addiu      $a1, $zero, 0x2
/* 030F90 800313E0 100000CC */  b           .L80031714
/* 030F94 800313E4 8FBF001C */   lw         $ra, 0x1c($sp)
.L800313E8:
/* 030F98 800313E8 3C18800F */  lui         $t8, %hi(D_800F1BF8)
/* 030F9C 800313EC 8F181BF8 */  lw          $t8, %lo(D_800F1BF8)($t8)
/* 030FA0 800313F0 24010002 */  addiu       $at, $zero, 0x2
/* 030FA4 800313F4 3C19800F */  lui         $t9, %hi(D_800F1BEC)
/* 030FA8 800313F8 570100C6 */  bnel        $t8, $at, .L80031714
/* 030FAC 800313FC 8FBF001C */   lw         $ra, 0x1c($sp)
/* 030FB0 80031400 8F391BEC */  lw          $t9, %lo(D_800F1BEC)($t9)
/* 030FB4 80031404 3C02800B */  lui         $v0, %hi(D_800AD54C)
/* 030FB8 80031408 572000C2 */  bnel        $t9, $zero, .L80031714
/* 030FBC 8003140C 8FBF001C */   lw         $ra, 0x1c($sp)
/* 030FC0 80031410 8C42D54C */  lw          $v0, %lo(D_800AD54C)($v0)
/* 030FC4 80031414 3C01800F */  lui         $at, %hi(D_800F1D18)
/* 030FC8 80031418 00002025 */  move        $a0, $zero
/* 030FCC 8003141C 30481000 */  andi        $t0, $v0, 0x1000
/* 030FD0 80031420 11000010 */  beq         $t0, $zero, .L80031464
/* 030FD4 80031424 30494000 */   andi       $t1, $v0, 0x4000
/* 030FD8 80031428 3C06800A */  lui         $a2, %hi(D_800A5EB0)
/* 030FDC 8003142C AC201D18 */  sw          $zero, %lo(D_800F1D18)($at)
/* 030FE0 80031430 24C65EB0 */  addiu       $a2, $a2, %lo(D_800A5EB0)
/* 030FE4 80031434 0C009E62 */  jal         func_80027988
/* 030FE8 80031438 3C053F80 */   lui        $a1, 0x3f80
/* 030FEC 8003143C 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 030FF0 80031440 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 030FF4 80031444 0C00BDA0 */  jal         func_8002F680
/* 030FF8 80031448 24050003 */   addiu      $a1, $zero, 0x3
/* 030FFC 8003144C 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 031000 80031450 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 031004 80031454 0C0446F9 */  jal         func_80111BE4
/* 031008 80031458 240500B8 */   addiu      $a1, $zero, 0xb8
/* 03100C 8003145C 100000AD */  b           .L80031714
/* 031010 80031460 8FBF001C */   lw         $ra, 0x1c($sp)
.L80031464:
/* 031014 80031464 11200057 */  beq         $t1, $zero, .L800315C4
/* 031018 80031468 304B8000 */   andi       $t3, $v0, 0x8000
/* 03101C 8003146C 3C0A800F */  lui         $t2, %hi(D_800F1BF4)
/* 031020 80031470 8D4A1BF4 */  lw          $t2, %lo(D_800F1BF4)($t2)
/* 031024 80031474 3C0D800A */  lui         $t5, %hi(D_800A5EE0)
/* 031028 80031478 25AD5EE0 */  addiu       $t5, $t5, %lo(D_800A5EE0)
/* 03102C 8003147C 000A5880 */  sll         $t3, $t2, 2
/* 031030 80031480 016A5821 */  addu        $t3, $t3, $t2
/* 031034 80031484 000B5900 */  sll         $t3, $t3, 4
/* 031038 80031488 00EB1021 */  addu        $v0, $a3, $t3
/* 03103C 8003148C 8C4C002C */  lw          $t4, 0x2c($v0)
/* 031040 80031490 51800008 */  beql        $t4, $zero, .L800314B4
/* 031044 80031494 AFA00060 */   sw         $zero, 0x60($sp)
/* 031048 80031498 8C440028 */  lw          $a0, 0x28($v0)
/* 03104C 8003149C 24050001 */  addiu       $a1, $zero, 0x1
/* 031050 800314A0 0C0453D3 */  jal         func_80114F4C
/* 031054 800314A4 AFA40060 */   sw         $a0, 0x60($sp)
/* 031058 800314A8 10000003 */  b           .L800314B8
/* 03105C 800314AC AFA2005C */   sw         $v0, 0x5c($sp)
/* 031060 800314B0 AFA00060 */  sw          $zero, 0x60($sp)
.L800314B4:
/* 031064 800314B4 AFAD005C */  sw          $t5, 0x5c($sp)
.L800314B8:
/* 031068 800314B8 00002025 */  move        $a0, $zero
/* 03106C 800314BC 00002825 */  move        $a1, $zero
/* 031070 800314C0 0C00B0D2 */  jal         func_8002C348
/* 031074 800314C4 00003025 */   move       $a2, $zero
/* 031078 800314C8 10400091 */  beq         $v0, $zero, .L80031710
/* 03107C 800314CC 8FA70060 */   lw         $a3, 0x60($sp)
/* 031080 800314D0 10E00022 */  beq         $a3, $zero, .L8003155C
/* 031084 800314D4 000770C0 */   sll        $t6, $a3, 3
/* 031088 800314D8 01C77023 */  subu        $t6, $t6, $a3
/* 03108C 800314DC 000E7080 */  sll         $t6, $t6, 2
/* 031090 800314E0 01C77021 */  addu        $t6, $t6, $a3
/* 031094 800314E4 000E7080 */  sll         $t6, $t6, 2
/* 031098 800314E8 3C028012 */  lui         $v0, %hi(D_80125AB0 + 0x1)
/* 03109C 800314EC 004E1021 */  addu        $v0, $v0, $t6
/* 0310A0 800314F0 80425AB1 */  lb          $v0, %lo(D_80125AB0 + 0x1)($v0)
/* 0310A4 800314F4 24010002 */  addiu       $at, $zero, 0x2
/* 0310A8 800314F8 00E02025 */  move        $a0, $a3
/* 0310AC 800314FC 10410004 */  beq         $v0, $at, .L80031510
/* 0310B0 80031500 24050001 */   addiu      $a1, $zero, 0x1
/* 0310B4 80031504 24010005 */  addiu       $at, $zero, 0x5
/* 0310B8 80031508 14410004 */  bne         $v0, $at, .L8003151C
/* 0310BC 8003150C 3C06800A */   lui        $a2, 0x800a
.L80031510:
/* 0310C0 80031510 3C06800A */  lui         $a2, %hi(D_800A5F4C)
/* 0310C4 80031514 10000002 */  b           .L80031520
/* 0310C8 80031518 24C65F4C */   addiu      $a2, $a2, %lo(D_800A5F4C)
.L8003151C:
/* 0310CC 8003151C 24C65F50 */  addiu       $a2, $a2, 0x5f50
.L80031520:
/* 0310D0 80031520 0C04539D */  jal         func_80114E74
/* 0310D4 80031524 AFA60024 */   sw         $a2, 0x24($sp)
/* 0310D8 80031528 AFA20028 */  sw          $v0, 0x28($sp)
/* 0310DC 8003152C 0C0453BA */  jal         func_80114EE8
/* 0310E0 80031530 8FA40060 */   lw         $a0, 0x60($sp)
/* 0310E4 80031534 3C05800A */  lui         $a1, %hi(D_800A5F3C)
/* 0310E8 80031538 24A55F3C */  addiu       $a1, $a1, %lo(D_800A5F3C)
/* 0310EC 8003153C 8FA60024 */  lw          $a2, 0x24($sp)
/* 0310F0 80031540 27A40034 */  addiu       $a0, $sp, 0x34
/* 0310F4 80031544 8FA70028 */  lw          $a3, 0x28($sp)
/* 0310F8 80031548 0C014E38 */  jal         func_800538E0
/* 0310FC 8003154C AFA20010 */   sw         $v0, 0x10($sp)
/* 031100 80031550 0C00B0B9 */  jal         func_8002C2E4
/* 031104 80031554 27A40034 */   addiu      $a0, $sp, 0x34
/* 031108 80031558 8FA70060 */  lw          $a3, 0x60($sp)
.L8003155C:
/* 03110C 8003155C 000778C0 */  sll         $t7, $a3, 3
/* 031110 80031560 01E77823 */  subu        $t7, $t7, $a3
/* 031114 80031564 000F7880 */  sll         $t7, $t7, 2
/* 031118 80031568 01E77821 */  addu        $t7, $t7, $a3
/* 03111C 8003156C 3C188012 */  lui         $t8, %hi(D_80125A40)
/* 031120 80031570 27185A40 */  addiu       $t8, $t8, %lo(D_80125A40)
/* 031124 80031574 000F7880 */  sll         $t7, $t7, 2
/* 031128 80031578 01F8C821 */  addu        $t9, $t7, $t8
/* 03112C 8003157C AFB90020 */  sw          $t9, 0x20($sp)
/* 031130 80031580 0C00B0B9 */  jal         func_8002C2E4
/* 031134 80031584 8FA4005C */   lw         $a0, 0x5c($sp)
/* 031138 80031588 8FA80020 */  lw          $t0, 0x20($sp)
/* 03113C 8003158C 3C04800A */  lui         $a0, %hi(D_8009A618)
/* 031140 80031590 81090071 */  lb          $t1, 0x71($t0)
/* 031144 80031594 00095080 */  sll         $t2, $t1, 2
/* 031148 80031598 008A2021 */  addu        $a0, $a0, $t2
/* 03114C 8003159C 0C00B0B9 */  jal         func_8002C2E4
/* 031150 800315A0 8C84A618 */   lw         $a0, %lo(D_8009A618)($a0)
/* 031154 800315A4 0C00B0FF */  jal         func_8002C3FC
/* 031158 800315A8 00000000 */   nop
/* 03115C 800315AC 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031160 800315B0 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031164 800315B4 0C00BDA0 */  jal         func_8002F680
/* 031168 800315B8 24050005 */   addiu      $a1, $zero, 0x5
/* 03116C 800315BC 10000055 */  b           .L80031714
/* 031170 800315C0 8FBF001C */   lw         $ra, 0x1c($sp)
.L800315C4:
/* 031174 800315C4 11600006 */  beq         $t3, $zero, .L800315E0
/* 031178 800315C8 304C0300 */   andi       $t4, $v0, 0x300
/* 03117C 800315CC 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 031180 800315D0 0C00BDAC */  jal         func_8002F6B0
/* 031184 800315D4 2484F6A0 */   addiu      $a0, $a0, %lo(D_800EF6A0)
/* 031188 800315D8 1000004E */  b           .L80031714
/* 03118C 800315DC 8FBF001C */   lw         $ra, 0x1c($sp)
.L800315E0:
/* 031190 800315E0 1180002C */  beq         $t4, $zero, .L80031694
/* 031194 800315E4 30480400 */   andi       $t0, $v0, 0x400
/* 031198 800315E8 304D0100 */  andi        $t5, $v0, 0x100
/* 03119C 800315EC 11A00005 */  beq         $t5, $zero, .L80031604
/* 0311A0 800315F0 3C04800F */   lui        $a0, %hi(D_800EF6A0)
/* 0311A4 800315F4 240EFFFF */  addiu       $t6, $zero, -0x1
/* 0311A8 800315F8 3C01800F */  lui         $at, %hi(D_800F1BEC)
/* 0311AC 800315FC 10000004 */  b           .L80031610
/* 0311B0 80031600 AC2E1BEC */   sw         $t6, %lo(D_800F1BEC)($at)
.L80031604:
/* 0311B4 80031604 240F0001 */  addiu       $t7, $zero, 0x1
/* 0311B8 80031608 3C01800F */  lui         $at, %hi(D_800F1BEC)
/* 0311BC 8003160C AC2F1BEC */  sw          $t7, %lo(D_800F1BEC)($at)
.L80031610:
/* 0311C0 80031610 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 0311C4 80031614 0C0446F9 */  jal         func_80111BE4
/* 0311C8 80031618 240500AD */   addiu      $a1, $zero, 0xad
/* 0311CC 8003161C 0C002C3F */  jal         func_8000B0FC
/* 0311D0 80031620 00000000 */   nop
/* 0311D4 80031624 3C01800F */  lui         $at, %hi(D_800F1C04)
/* 0311D8 80031628 AC221C00 */  sw          $v0, %lo(D_800F1C00)($at)
/* 0311DC 8003162C AC231C04 */  sw          $v1, %lo(D_800F1C04)($at)
/* 0311E0 80031630 3C18800F */  lui         $t8, %hi(D_800F1BF4)
/* 0311E4 80031634 8F181BF4 */  lw          $t8, %lo(D_800F1BF4)($t8)
/* 0311E8 80031638 3C04800F */  lui         $a0, %hi(D_800F1C0C)
/* 0311EC 8003163C 3C053E99 */  lui         $a1, 0x3e99
/* 0311F0 80031640 0018C880 */  sll         $t9, $t8, 2
/* 0311F4 80031644 0338C821 */  addu        $t9, $t9, $t8
/* 0311F8 80031648 0019C900 */  sll         $t9, $t9, 4
/* 0311FC 8003164C 00992021 */  addu        $a0, $a0, $t9
/* 031200 80031650 8C841C0C */  lw          $a0, %lo(D_800F1C0C)($a0)
/* 031204 80031654 14800008 */  bne         $a0, $zero, .L80031678
/* 031208 80031658 00000000 */   nop
/* 03120C 8003165C 3C04800F */  lui         $a0, %hi(D_800F1CA8)
/* 031210 80031660 3C053E99 */  lui         $a1, 0x3e99
/* 031214 80031664 34A5999A */  ori         $a1, $a1, 0x999a
/* 031218 80031668 0C00BAFB */  jal         func_8002EBEC
/* 03121C 8003166C 8C841CA8 */   lw         $a0, %lo(D_800F1CA8)($a0)
/* 031220 80031670 10000004 */  b           .L80031684
/* 031224 80031674 3C014334 */   lui        $at, 0x4334
.L80031678:
/* 031228 80031678 0C00BAFB */  jal         func_8002EBEC
/* 03122C 8003167C 34A5999A */   ori        $a1, $a1, 0x999a
/* 031230 80031680 3C014334 */  lui         $at, 0x4334
.L80031684:
/* 031234 80031684 44812000 */  mtc1        $at, $f4
/* 031238 80031688 3C01800F */  lui         $at, %hi(D_800F1BF0)
/* 03123C 8003168C 10000020 */  b           .L80031710
/* 031240 80031690 E4241BF0 */   swc1       $f4, %lo(D_800F1BF0)($at)
.L80031694:
/* 031244 80031694 11000003 */  beq         $t0, $zero, .L800316A4
/* 031248 80031698 3C09800F */   lui        $t1, %hi(D_800F1BF4)
/* 03124C 8003169C 8D291BF4 */  lw          $t1, %lo(D_800F1BF4)($t1)
/* 031250 800316A0 11200006 */  beq         $t1, $zero, .L800316BC
.L800316A4:
/* 031254 800316A4 304A0800 */   andi       $t2, $v0, 0x800
/* 031258 800316A8 11400019 */  beq         $t2, $zero, .L80031710
/* 03125C 800316AC 3C0B800F */   lui        $t3, %hi(D_800F1BF4)
/* 031260 800316B0 8D6B1BF4 */  lw          $t3, %lo(D_800F1BF4)($t3)
/* 031264 800316B4 24010001 */  addiu       $at, $zero, 0x1
/* 031268 800316B8 15610015 */  bne         $t3, $at, .L80031710
.L800316BC:
/* 03126C 800316BC 240C0001 */   addiu      $t4, $zero, 0x1
/* 031270 800316C0 3C01800F */  lui         $at, %hi(D_800F1D18)
/* 031274 800316C4 AC2C1D18 */  sw          $t4, %lo(D_800F1D18)($at)
/* 031278 800316C8 00E02025 */  move        $a0, $a3
/* 03127C 800316CC 0C00BDA0 */  jal         func_8002F680
/* 031280 800316D0 24050003 */   addiu      $a1, $zero, 0x3
/* 031284 800316D4 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 031288 800316D8 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 03128C 800316DC 0C0446F9 */  jal         func_80111BE4
/* 031290 800316E0 240500B8 */   addiu      $a1, $zero, 0xb8
/* 031294 800316E4 3C02800B */  lui         $v0, %hi(D_800AD54C)
/* 031298 800316E8 8C42D54C */  lw          $v0, %lo(D_800AD54C)($v0)
/* 03129C 800316EC 240E0001 */  addiu       $t6, $zero, 0x1
/* 0312A0 800316F0 3C01800F */  lui         $at, 0x800f
/* 0312A4 800316F4 304D0400 */  andi        $t5, $v0, 0x400
/* 0312A8 800316F8 11A00004 */  beq         $t5, $zero, .L8003170C
/* 0312AC 800316FC 00000000 */   nop
/* 0312B0 80031700 3C01800F */  lui         $at, %hi(D_800F1D1C)
/* 0312B4 80031704 10000002 */  b           .L80031710
/* 0312B8 80031708 AC2E1D1C */   sw         $t6, %lo(D_800F1D1C)($at)
.L8003170C:
/* 0312BC 8003170C AC201D1C */  sw          $zero, %lo(D_800F1D1C)($at)
.L80031710:
/* 0312C0 80031710 8FBF001C */  lw          $ra, 0x1c($sp)
.L80031714:
/* 0312C4 80031714 27BD0070 */  addiu       $sp, $sp, 0x70
/* 0312C8 80031718 03E00008 */  jr          $ra
/* 0312CC 8003171C 00000000 */   nop

glabel func_80031720 # 33
/* 0312D0 80031720 8C8E0014 */  lw          $t6, 0x14($a0)
/* 0312D4 80031724 8C98000C */  lw          $t8, 0xc($a0)
/* 0312D8 80031728 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0312DC 8003172C 000E7880 */  sll         $t7, $t6, 2
/* 0312E0 80031730 01EE7821 */  addu        $t7, $t7, $t6
/* 0312E4 80031734 000F7900 */  sll         $t7, $t7, 4
/* 0312E8 80031738 008F1021 */  addu        $v0, $a0, $t7
/* 0312EC 8003173C 1B00002D */  blez        $t8, .L800317F4
/* 0312F0 80031740 24420028 */   addiu      $v0, $v0, 0x28
/* 0312F4 80031744 8C410048 */  lw          $at, 0x48($v0)
/* 0312F8 80031748 27AA0018 */  addiu       $t2, $sp, 0x18
/* 0312FC 8003174C 24490048 */  addiu       $t1, $v0, 0x48
/* 031300 80031750 AD410000 */  sw          $at, 0x0($t2)
/* 031304 80031754 8C4B004C */  lw          $t3, 0x4c($v0)
/* 031308 80031758 24440040 */  addiu       $a0, $v0, 0x40
/* 03130C 8003175C 2485FFF8 */  addiu       $a1, $a0, -0x8
/* 031310 80031760 AD4B0004 */  sw          $t3, 0x4($t2)
/* 031314 80031764 8D2DFFFC */  lw          $t5, -0x4($t1)
/* 031318 80031768 8D21FFF8 */  lw          $at, -0x8($t1)
/* 03131C 8003176C 2486FFF0 */  addiu       $a2, $a0, -0x10
/* 031320 80031770 2487FFE8 */  addiu       $a3, $a0, -0x18
/* 031324 80031774 2488FFE0 */  addiu       $t0, $a0, -0x20
/* 031328 80031778 24030008 */  addiu       $v1, $zero, 0x8
/* 03132C 8003177C AD2D0004 */  sw          $t5, 0x4($t1)
/* 031330 80031780 AD210000 */  sw          $at, 0x0($t1)
.L80031784:
/* 031334 80031784 8CA10000 */  lw          $at, 0x0($a1)
/* 031338 80031788 2463FFFC */  addiu       $v1, $v1, -0x4
/* 03133C 8003178C 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 031340 80031790 AC810020 */  sw          $at, 0x20($a0)
/* 031344 80031794 8CAF0004 */  lw          $t7, 0x4($a1)
/* 031348 80031798 24A5FFE0 */  addiu       $a1, $a1, -0x20
/* 03134C 8003179C 24C6FFE0 */  addiu       $a2, $a2, -0x20
/* 031350 800317A0 AC8F0024 */  sw          $t7, 0x24($a0)
/* 031354 800317A4 8CC10020 */  lw          $at, 0x20($a2)
/* 031358 800317A8 24E7FFE0 */  addiu       $a3, $a3, -0x20
/* 03135C 800317AC 2508FFE0 */  addiu       $t0, $t0, -0x20
/* 031360 800317B0 ACA10020 */  sw          $at, 0x20($a1)
/* 031364 800317B4 8CD90024 */  lw          $t9, 0x24($a2)
/* 031368 800317B8 ACB90024 */  sw          $t9, 0x24($a1)
/* 03136C 800317BC 8CE10020 */  lw          $at, 0x20($a3)
/* 031370 800317C0 ACC10020 */  sw          $at, 0x20($a2)
/* 031374 800317C4 8CEC0024 */  lw          $t4, 0x24($a3)
/* 031378 800317C8 ACCC0024 */  sw          $t4, 0x24($a2)
/* 03137C 800317CC 8D010020 */  lw          $at, 0x20($t0)
/* 031380 800317D0 ACE10020 */  sw          $at, 0x20($a3)
/* 031384 800317D4 8D0E0024 */  lw          $t6, 0x24($t0)
/* 031388 800317D8 1460FFEA */  bne         $v1, $zero, .L80031784
/* 03138C 800317DC ACEE0024 */   sw         $t6, 0x24($a3)
/* 031390 800317E0 8D410000 */  lw          $at, 0x0($t2)
/* 031394 800317E4 AC410000 */  sw          $at, 0x0($v0)
/* 031398 800317E8 8D580004 */  lw          $t8, 0x4($t2)
/* 03139C 800317EC 1000002C */  b           .L800318A0
/* 0313A0 800317F0 AC580004 */   sw         $t8, 0x4($v0)
.L800317F4:
/* 0313A4 800317F4 8C410000 */  lw          $at, 0x0($v0)
/* 0313A8 800317F8 27AA0018 */  addiu       $t2, $sp, 0x18
/* 0313AC 800317FC 24440008 */  addiu       $a0, $v0, 0x8
/* 0313B0 80031800 AD410000 */  sw          $at, 0x0($t2)
/* 0313B4 80031804 8C4B0004 */  lw          $t3, 0x4($v0)
/* 0313B8 80031808 24850008 */  addiu       $a1, $a0, 0x8
/* 0313BC 8003180C 24860010 */  addiu       $a2, $a0, 0x10
/* 0313C0 80031810 AD4B0004 */  sw          $t3, 0x4($t2)
/* 0313C4 80031814 8C4D000C */  lw          $t5, 0xc($v0)
/* 0313C8 80031818 8C410008 */  lw          $at, 0x8($v0)
/* 0313CC 8003181C 24870018 */  addiu       $a3, $a0, 0x18
/* 0313D0 80031820 24880020 */  addiu       $t0, $a0, 0x20
/* 0313D4 80031824 24030001 */  addiu       $v1, $zero, 0x1
/* 0313D8 80031828 24090009 */  addiu       $t1, $zero, 0x9
/* 0313DC 8003182C AC4D0004 */  sw          $t5, 0x4($v0)
/* 0313E0 80031830 AC410000 */  sw          $at, 0x0($v0)
.L80031834:
/* 0313E4 80031834 8CA10000 */  lw          $at, 0x0($a1)
/* 0313E8 80031838 24630004 */  addiu       $v1, $v1, 0x4
/* 0313EC 8003183C 24840020 */  addiu       $a0, $a0, 0x20
/* 0313F0 80031840 AC81FFE0 */  sw          $at, -0x20($a0)
/* 0313F4 80031844 8CAF0004 */  lw          $t7, 0x4($a1)
/* 0313F8 80031848 24A50020 */  addiu       $a1, $a1, 0x20
/* 0313FC 8003184C 24C60020 */  addiu       $a2, $a2, 0x20
/* 031400 80031850 AC8FFFE4 */  sw          $t7, -0x1c($a0)
/* 031404 80031854 8CC1FFE0 */  lw          $at, -0x20($a2)
/* 031408 80031858 24E70020 */  addiu       $a3, $a3, 0x20
/* 03140C 8003185C 25080020 */  addiu       $t0, $t0, 0x20
/* 031410 80031860 ACA1FFE0 */  sw          $at, -0x20($a1)
/* 031414 80031864 8CD9FFE4 */  lw          $t9, -0x1c($a2)
/* 031418 80031868 ACB9FFE4 */  sw          $t9, -0x1c($a1)
/* 03141C 8003186C 8CE1FFE0 */  lw          $at, -0x20($a3)
/* 031420 80031870 ACC1FFE0 */  sw          $at, -0x20($a2)
/* 031424 80031874 8CECFFE4 */  lw          $t4, -0x1c($a3)
/* 031428 80031878 ACCCFFE4 */  sw          $t4, -0x1c($a2)
/* 03142C 8003187C 8D01FFE0 */  lw          $at, -0x20($t0)
/* 031430 80031880 ACE1FFE0 */  sw          $at, -0x20($a3)
/* 031434 80031884 8D0EFFE4 */  lw          $t6, -0x1c($t0)
/* 031438 80031888 1469FFEA */  bne         $v1, $t1, .L80031834
/* 03143C 8003188C ACEEFFE4 */   sw         $t6, -0x1c($a3)
/* 031440 80031890 8D410000 */  lw          $at, 0x0($t2)
/* 031444 80031894 AC410048 */  sw          $at, 0x48($v0)
/* 031448 80031898 8D580004 */  lw          $t8, 0x4($t2)
/* 03144C 8003189C AC58004C */  sw          $t8, 0x4c($v0)
.L800318A0:
/* 031450 800318A0 03E00008 */  jr          $ra
/* 031454 800318A4 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_800318A8 # 34
/* 031458 800318A8 3C02800F */  lui         $v0, %hi(D_800F1BE0)
/* 03145C 800318AC 24421BE0 */  addiu       $v0, $v0, %lo(D_800F1BE0)
/* 031460 800318B0 8C4E0014 */  lw          $t6, 0x14($v0)
/* 031464 800318B4 8C48000C */  lw          $t0, 0xc($v0)
/* 031468 800318B8 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03146C 800318BC 000E7880 */  sll         $t7, $t6, 2
/* 031470 800318C0 01EE7821 */  addu        $t7, $t7, $t6
/* 031474 800318C4 000F7900 */  sll         $t7, $t7, 4
/* 031478 800318C8 004FC021 */  addu        $t8, $v0, $t7
/* 03147C 800318CC 27190028 */  addiu       $t9, $t8, 0x28
/* 031480 800318D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031484 800318D4 11000026 */  beq         $t0, $zero, .L80031970
/* 031488 800318D8 AFB9002C */   sw         $t9, 0x2c($sp)
/* 03148C 800318DC 0C002C3F */  jal         func_8000B0FC
/* 031490 800318E0 00000000 */   nop
/* 031494 800318E4 3C0A800F */  lui         $t2, %hi(D_800F1C00)
/* 031498 800318E8 3C0B800F */  lui         $t3, %hi(D_800F1C04)
/* 03149C 800318EC 8D6B1C04 */  lw          $t3, %lo(D_800F1C04)($t3)
/* 0314A0 800318F0 8D4A1C00 */  lw          $t2, %lo(D_800F1C00)($t2)
/* 0314A4 800318F4 006B082B */  sltu        $at, $v1, $t3
/* 0314A8 800318F8 004A2023 */  subu        $a0, $v0, $t2
/* 0314AC 800318FC 00812023 */  subu        $a0, $a0, $at
/* 0314B0 80031900 0C0148C6 */  jal         func_80052318
/* 0314B4 80031904 006B2823 */   subu       $a1, $v1, $t3
/* 0314B8 80031908 3C014348 */  lui         $at, 0x4348
/* 0314BC 8003190C 44812000 */  mtc1        $at, $f4
/* 0314C0 80031910 E7A0001C */  swc1        $f0, 0x1c($sp)
/* 0314C4 80031914 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 0314C8 80031918 4600203E */  c.le.s      $f4, $f0
/* 0314CC 8003191C 00000000 */  nop
/* 0314D0 80031920 45000011 */  bc1f        .L80031968
/* 0314D4 80031924 00000000 */   nop
/* 0314D8 80031928 0C00C5C8 */  jal         func_80031720
/* 0314DC 8003192C 24841BE0 */   addiu      $a0, $a0, %lo(D_800F1BE0)
/* 0314E0 80031930 8FA9002C */  lw          $t1, 0x2c($sp)
/* 0314E4 80031934 3C053F00 */  lui         $a1, 0x3f00
/* 0314E8 80031938 8D240004 */  lw          $a0, 0x4($t1)
/* 0314EC 8003193C 14800006 */  bne         $a0, $zero, .L80031958
/* 0314F0 80031940 00000000 */   nop
/* 0314F4 80031944 3C04800F */  lui         $a0, %hi(D_800F1CA8)
/* 0314F8 80031948 0C00BAFB */  jal         func_8002EBEC
/* 0314FC 8003194C 8C841CA8 */   lw         $a0, %lo(D_800F1CA8)($a0)
/* 031500 80031950 10000003 */  b           .L80031960
/* 031504 80031954 00000000 */   nop
.L80031958:
/* 031508 80031958 0C00BAFB */  jal         func_8002EBEC
/* 03150C 8003195C 3C053F00 */   lui        $a1, 0x3f00
.L80031960:
/* 031510 80031960 3C01800F */  lui         $at, %hi(D_800F1BEC)
/* 031514 80031964 AC201BEC */  sw          $zero, %lo(D_800F1BEC)($at)
.L80031968:
/* 031518 80031968 10000004 */  b           .L8003197C
/* 03151C 8003196C 00000000 */   nop
.L80031970:
/* 031520 80031970 44803000 */  mtc1        $zero, $f6
/* 031524 80031974 00000000 */  nop
/* 031528 80031978 E7A6001C */  swc1        $f6, 0x1c($sp)
.L8003197C:
/* 03152C 8003197C 3C0C800F */  lui         $t4, %hi(D_800F1BEC)
/* 031530 80031980 8D8C1BEC */  lw          $t4, %lo(D_800F1BEC)($t4)
/* 031534 80031984 3C014210 */  lui         $at, 0x4210
/* 031538 80031988 44818000 */  mtc1        $at, $f16
/* 03153C 8003198C 448C4000 */  mtc1        $t4, $f8
/* 031540 80031990 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 031544 80031994 44807000 */  mtc1        $zero, $f14
/* 031548 80031998 468042A0 */  cvt.s.w     $f10, $f8
/* 03154C 8003199C 3C014348 */  lui         $at, 0x4348
/* 031550 800319A0 44814000 */  mtc1        $at, $f8
/* 031554 800319A4 44067000 */  mfc1        $a2, $f14
/* 031558 800319A8 46105482 */  mul.s       $f18, $f10, $f16
/* 03155C 800319AC 00000000 */  nop
/* 031560 800319B0 46049182 */  mul.s       $f6, $f18, $f4
/* 031564 800319B4 0C00BFBB */  jal         func_8002FEEC
/* 031568 800319B8 46083303 */   div.s      $f12, $f6, $f8
/* 03156C 800319BC 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031570 800319C0 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031574 800319C4 0C00C06C */  jal         func_800301B0
/* 031578 800319C8 24050000 */   addiu      $a1, $zero, 0x0
/* 03157C 800319CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 031580 800319D0 27BD0038 */  addiu       $sp, $sp, 0x38
/* 031584 800319D4 03E00008 */  jr          $ra
/* 031588 800319D8 00000000 */   nop

glabel func_800319DC # 35
/* 03158C 800319DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 031590 800319E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031594 800319E4 0C002C3F */  jal         func_8000B0FC
/* 031598 800319E8 00000000 */   nop
/* 03159C 800319EC 3C0E800F */  lui         $t6, %hi(D_800F1C00)
/* 0315A0 800319F0 3C0F800F */  lui         $t7, %hi(D_800F1C04)
/* 0315A4 800319F4 8DEF1C04 */  lw          $t7, %lo(D_800F1C04)($t7)
/* 0315A8 800319F8 8DCE1C00 */  lw          $t6, %lo(D_800F1C00)($t6)
/* 0315AC 800319FC 006F082B */  sltu        $at, $v1, $t7
/* 0315B0 80031A00 004E2023 */  subu        $a0, $v0, $t6
/* 0315B4 80031A04 00812023 */  subu        $a0, $a0, $at
/* 0315B8 80031A08 0C0148C6 */  jal         func_80052318
/* 0315BC 80031A0C 006F2823 */   subu       $a1, $v1, $t7
/* 0315C0 80031A10 3C014396 */  lui         $at, 0x4396
/* 0315C4 80031A14 44818000 */  mtc1        $at, $f16
/* 0315C8 80031A18 46000086 */  mov.s       $f2, $f0
/* 0315CC 80031A1C 3C01800F */  lui         $at, %hi(D_800F1BF8)
/* 0315D0 80031A20 4600803E */  c.le.s      $f16, $f0
/* 0315D4 80031A24 24180002 */  addiu       $t8, $zero, 0x2
/* 0315D8 80031A28 3C19800F */  lui         $t9, %hi(D_800F1BF4)
/* 0315DC 80031A2C 45000003 */  bc1f        .L80031A3C
/* 0315E0 80031A30 00000000 */   nop
/* 0315E4 80031A34 46008086 */  mov.s       $f2, $f16
/* 0315E8 80031A38 AC381BF8 */  sw          $t8, %lo(D_800F1BF8)($at)
.L80031A3C:
/* 0315EC 80031A3C 8F391BF4 */  lw          $t9, %lo(D_800F1BF4)($t9)
/* 0315F0 80031A40 57200024 */  bnel        $t9, $zero, .L80031AD4
/* 0315F4 80031A44 46101003 */   div.s      $f0, $f2, $f16
/* 0315F8 80031A48 46101003 */  div.s       $f0, $f2, $f16
/* 0315FC 80031A4C 3C013F80 */  lui         $at, 0x3f80
/* 031600 80031A50 44819000 */  mtc1        $at, $f18
/* 031604 80031A54 3C0142B4 */  lui         $at, 0x42b4
/* 031608 80031A58 44813000 */  mtc1        $at, $f6
/* 03160C 80031A5C 3C0143B4 */  lui         $at, 0x43b4
/* 031610 80031A60 44815000 */  mtc1        $at, $f10
/* 031614 80031A64 3C08800F */  lui         $t0, %hi(D_800F1BE4)
/* 031618 80031A68 8D081BE4 */  lw          $t0, %lo(D_800F1BE4)($t0)
/* 03161C 80031A6C 3C01BF80 */  lui         $at, 0xbf80
/* 031620 80031A70 3C09800F */  lui         $t1, %hi(D_800F1BF4)
/* 031624 80031A74 46000107 */  neg.s       $f4, $f0
/* 031628 80031A78 46062202 */  mul.s       $f8, $f4, $f6
/* 03162C 80031A7C 44812000 */  mtc1        $at, $f4
/* 031630 80031A80 3C01800A */  lui         $at, %hi(D_8009A5B8)
/* 031634 80031A84 46005302 */  mul.s       $f12, $f10, $f0
/* 031638 80031A88 00000000 */  nop
/* 03163C 80031A8C 46002182 */  mul.s       $f6, $f4, $f0
/* 031640 80031A90 E508000C */  swc1        $f8, 0xc($t0)
/* 031644 80031A94 8D291BF4 */  lw          $t1, %lo(D_800F1BF4)($t1)
/* 031648 80031A98 00095080 */  sll         $t2, $t1, 2
/* 03164C 80031A9C 01495023 */  subu        $t2, $t2, $t1
/* 031650 80031AA0 000A5080 */  sll         $t2, $t2, 2
/* 031654 80031AA4 46009101 */  sub.s       $f4, $f18, $f0
/* 031658 80031AA8 002A0821 */  addu        $at, $at, $t2
/* 03165C 80031AAC 46003202 */  mul.s       $f8, $f6, $f0
/* 031660 80031AB0 C42AA5B8 */  lwc1        $f10, %lo(D_8009A5B8)($at)
/* 031664 80031AB4 46045182 */  mul.s       $f6, $f10, $f4
/* 031668 80031AB8 46124380 */  add.s       $f14, $f8, $f18
/* 03166C 80031ABC 44063000 */  mfc1        $a2, $f6
/* 031670 80031AC0 0C00BFBB */  jal         func_8002FEEC
/* 031674 80031AC4 00000000 */   nop
/* 031678 80031AC8 1000001C */  b           .L80031B3C
/* 03167C 80031ACC 00000000 */   nop
/* 031680 80031AD0 46101003 */  div.s       $f0, $f2, $f16
.L80031AD4:
/* 031684 80031AD4 3C013F80 */  lui         $at, 0x3f80
/* 031688 80031AD8 44819000 */  mtc1        $at, $f18
/* 03168C 80031ADC 3C01437A */  lui         $at, 0x437a
/* 031690 80031AE0 44814000 */  mtc1        $at, $f8
/* 031694 80031AE4 3C0B800F */  lui         $t3, %hi(D_800F1BE8)
/* 031698 80031AE8 8D6B1BE8 */  lw          $t3, %lo(D_800F1BE8)($t3)
/* 03169C 80031AEC 3C0C800F */  lui         $t4, %hi(D_800F1BF4)
/* 0316A0 80031AF0 3C0143B4 */  lui         $at, 0x43b4
/* 0316A4 80031AF4 44812000 */  mtc1        $at, $f4
/* 0316A8 80031AF8 3C01800A */  lui         $at, %hi(D_8009A5B8)
/* 0316AC 80031AFC 46080282 */  mul.s       $f10, $f0, $f8
/* 0316B0 80031B00 E56A0020 */  swc1        $f10, 0x20($t3)
/* 0316B4 80031B04 8D8C1BF4 */  lw          $t4, %lo(D_800F1BF4)($t4)
/* 0316B8 80031B08 46002302 */  mul.s       $f12, $f4, $f0
/* 0316BC 80031B0C 46009281 */  sub.s       $f10, $f18, $f0
/* 0316C0 80031B10 000C6880 */  sll         $t5, $t4, 2
/* 0316C4 80031B14 01AC6823 */  subu        $t5, $t5, $t4
/* 0316C8 80031B18 000D6880 */  sll         $t5, $t5, 2
/* 0316CC 80031B1C 002D0821 */  addu        $at, $at, $t5
/* 0316D0 80031B20 46000182 */  mul.s       $f6, $f0, $f0
/* 0316D4 80031B24 C428A5B8 */  lwc1        $f8, %lo(D_8009A5B8)($at)
/* 0316D8 80031B28 460A4102 */  mul.s       $f4, $f8, $f10
/* 0316DC 80031B2C 46123381 */  sub.s       $f14, $f6, $f18
/* 0316E0 80031B30 44062000 */  mfc1        $a2, $f4
/* 0316E4 80031B34 0C00BFBB */  jal         func_8002FEEC
/* 0316E8 80031B38 00000000 */   nop
.L80031B3C:
/* 0316EC 80031B3C 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 0316F0 80031B40 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 0316F4 80031B44 0C00C06C */  jal         func_800301B0
/* 0316F8 80031B48 24050000 */   addiu      $a1, $zero, 0x0
/* 0316FC 80031B4C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 031700 80031B50 27BD0018 */  addiu       $sp, $sp, 0x18
/* 031704 80031B54 03E00008 */  jr          $ra
/* 031708 80031B58 00000000 */   nop

glabel func_80031B5C # 36
/* 03170C 80031B5C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 031710 80031B60 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031714 80031B64 0C002C3F */  jal         func_8000B0FC
/* 031718 80031B68 00000000 */   nop
/* 03171C 80031B6C 3C0E800F */  lui         $t6, %hi(D_800F1C00)
/* 031720 80031B70 3C0F800F */  lui         $t7, %hi(D_800F1C04)
/* 031724 80031B74 8DEF1C04 */  lw          $t7, %lo(D_800F1C04)($t7)
/* 031728 80031B78 8DCE1C00 */  lw          $t6, %lo(D_800F1C00)($t6)
/* 03172C 80031B7C 006F082B */  sltu        $at, $v1, $t7
/* 031730 80031B80 004E2023 */  subu        $a0, $v0, $t6
/* 031734 80031B84 00812023 */  subu        $a0, $a0, $at
/* 031738 80031B88 0C0148C6 */  jal         func_80052318
/* 03173C 80031B8C 006F2823 */   subu       $a1, $v1, $t7
/* 031740 80031B90 3C014396 */  lui         $at, 0x4396
/* 031744 80031B94 44819000 */  mtc1        $at, $f18
/* 031748 80031B98 46000406 */  mov.s       $f16, $f0
/* 03174C 80031B9C 3C18800F */  lui         $t8, %hi(D_800F1BF4)
/* 031750 80031BA0 4600903E */  c.le.s      $f18, $f0
/* 031754 80031BA4 00000000 */  nop
/* 031758 80031BA8 4500000F */  bc1f        .L80031BE8
/* 03175C 80031BAC 00000000 */   nop
/* 031760 80031BB0 44806000 */  mtc1        $zero, $f12
/* 031764 80031BB4 3C0644FA */  lui         $a2, 0x44fa
/* 031768 80031BB8 0C00BFBB */  jal         func_8002FEEC
/* 03176C 80031BBC 46006386 */   mov.s      $f14, $f12
/* 031770 80031BC0 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031774 80031BC4 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031778 80031BC8 0C00C06C */  jal         func_800301B0
/* 03177C 80031BCC 24050000 */   addiu      $a1, $zero, 0x0
/* 031780 80031BD0 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031784 80031BD4 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031788 80031BD8 0C00BDA0 */  jal         func_8002F680
/* 03178C 80031BDC 24050004 */   addiu      $a1, $zero, 0x4
/* 031790 80031BE0 10000048 */  b           .L80031D04
/* 031794 80031BE4 8FBF0014 */   lw         $ra, 0x14($sp)
.L80031BE8:
/* 031798 80031BE8 8F181BF4 */  lw          $t8, %lo(D_800F1BF4)($t8)
/* 03179C 80031BEC 57000023 */  bnel        $t8, $zero, .L80031C7C
/* 0317A0 80031BF0 46128003 */   div.s      $f0, $f16, $f18
/* 0317A4 80031BF4 46128003 */  div.s       $f0, $f16, $f18
/* 0317A8 80031BF8 3C013F80 */  lui         $at, 0x3f80
/* 0317AC 80031BFC 44811000 */  mtc1        $at, $f2
/* 0317B0 80031C00 3C0142B4 */  lui         $at, 0x42b4
/* 0317B4 80031C04 44814000 */  mtc1        $at, $f8
/* 0317B8 80031C08 3C0143B4 */  lui         $at, 0x43b4
/* 0317BC 80031C0C 3C19800F */  lui         $t9, %hi(D_800F1BE4)
/* 0317C0 80031C10 8F391BE4 */  lw          $t9, %lo(D_800F1BE4)($t9)
/* 0317C4 80031C14 3C08800F */  lui         $t0, %hi(D_800F1BF4)
/* 0317C8 80031C18 46001101 */  sub.s       $f4, $f2, $f0
/* 0317CC 80031C1C 46002187 */  neg.s       $f6, $f4
/* 0317D0 80031C20 44812000 */  mtc1        $at, $f4
/* 0317D4 80031C24 46083282 */  mul.s       $f10, $f6, $f8
/* 0317D8 80031C28 3C01BF80 */  lui         $at, 0xbf80
/* 0317DC 80031C2C 44813000 */  mtc1        $at, $f6
/* 0317E0 80031C30 46002302 */  mul.s       $f12, $f4, $f0
/* 0317E4 80031C34 3C01800A */  lui         $at, %hi(D_8009A5B8)
/* 0317E8 80031C38 46003202 */  mul.s       $f8, $f6, $f0
/* 0317EC 80031C3C E72A000C */  swc1        $f10, 0xc($t9)
/* 0317F0 80031C40 8D081BF4 */  lw          $t0, %lo(D_800F1BF4)($t0)
/* 0317F4 80031C44 00084880 */  sll         $t1, $t0, 2
/* 0317F8 80031C48 01284823 */  subu        $t1, $t1, $t0
/* 0317FC 80031C4C 00094880 */  sll         $t1, $t1, 2
/* 031800 80031C50 00290821 */  addu        $at, $at, $t1
/* 031804 80031C54 46004282 */  mul.s       $f10, $f8, $f0
/* 031808 80031C58 C424A5B8 */  lwc1        $f4, %lo(D_8009A5B8)($at)
/* 03180C 80031C5C 46002182 */  mul.s       $f6, $f4, $f0
/* 031810 80031C60 46025380 */  add.s       $f14, $f10, $f2
/* 031814 80031C64 44063000 */  mfc1        $a2, $f6
/* 031818 80031C68 0C00BFBB */  jal         func_8002FEEC
/* 03181C 80031C6C 00000000 */   nop
/* 031820 80031C70 1000001F */  b           .L80031CF0
/* 031824 80031C74 00000000 */   nop
/* 031828 80031C78 46128003 */  div.s       $f0, $f16, $f18
.L80031C7C:
/* 03182C 80031C7C 3C013F80 */  lui         $at, 0x3f80
/* 031830 80031C80 44814000 */  mtc1        $at, $f8
/* 031834 80031C84 3C01437A */  lui         $at, 0x437a
/* 031838 80031C88 44815000 */  mtc1        $at, $f10
/* 03183C 80031C8C 3C0A800F */  lui         $t2, %hi(D_800F1BE8)
/* 031840 80031C90 8D4A1BE8 */  lw          $t2, %lo(D_800F1BE8)($t2)
/* 031844 80031C94 3C0B800F */  lui         $t3, %hi(D_800F1BF4)
/* 031848 80031C98 3C0143B4 */  lui         $at, 0x43b4
/* 03184C 80031C9C 44813000 */  mtc1        $at, $f6
/* 031850 80031CA0 3C013F80 */  lui         $at, 0x3f80
/* 031854 80031CA4 46004081 */  sub.s       $f2, $f8, $f0
/* 031858 80031CA8 460A1102 */  mul.s       $f4, $f2, $f10
/* 03185C 80031CAC 44815000 */  mtc1        $at, $f10
/* 031860 80031CB0 3C01800A */  lui         $at, %hi(D_8009A5B8)
/* 031864 80031CB4 46003302 */  mul.s       $f12, $f6, $f0
/* 031868 80031CB8 00000000 */  nop
/* 03186C 80031CBC 46021202 */  mul.s       $f8, $f2, $f2
/* 031870 80031CC0 E5440020 */  swc1        $f4, 0x20($t2)
/* 031874 80031CC4 8D6B1BF4 */  lw          $t3, %lo(D_800F1BF4)($t3)
/* 031878 80031CC8 000B6080 */  sll         $t4, $t3, 2
/* 03187C 80031CCC 018B6023 */  subu        $t4, $t4, $t3
/* 031880 80031CD0 000C6080 */  sll         $t4, $t4, 2
/* 031884 80031CD4 002C0821 */  addu        $at, $at, $t4
/* 031888 80031CD8 C424A5B8 */  lwc1        $f4, %lo(D_8009A5B8)($at)
/* 03188C 80031CDC 460A4381 */  sub.s       $f14, $f8, $f10
/* 031890 80031CE0 46002182 */  mul.s       $f6, $f4, $f0
/* 031894 80031CE4 44063000 */  mfc1        $a2, $f6
/* 031898 80031CE8 0C00BFBB */  jal         func_8002FEEC
/* 03189C 80031CEC 00000000 */   nop
.L80031CF0:
/* 0318A0 80031CF0 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 0318A4 80031CF4 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 0318A8 80031CF8 0C00C06C */  jal         func_800301B0
/* 0318AC 80031CFC 24050000 */   addiu      $a1, $zero, 0x0
/* 0318B0 80031D00 8FBF0014 */  lw          $ra, 0x14($sp)
.L80031D04:
/* 0318B4 80031D04 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0318B8 80031D08 03E00008 */  jr          $ra
/* 0318BC 80031D0C 00000000 */   nop

glabel func_80031D10 # 37
/* 0318C0 80031D10 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0318C4 80031D14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0318C8 80031D18 0C002C3F */  jal         func_8000B0FC
/* 0318CC 80031D1C 00000000 */   nop
/* 0318D0 80031D20 3C0E800F */  lui         $t6, %hi(D_800F1C00)
/* 0318D4 80031D24 3C0F800F */  lui         $t7, %hi(D_800F1C04)
/* 0318D8 80031D28 8DEF1C04 */  lw          $t7, %lo(D_800F1C04)($t7)
/* 0318DC 80031D2C 8DCE1C00 */  lw          $t6, %lo(D_800F1C00)($t6)
/* 0318E0 80031D30 006F082B */  sltu        $at, $v1, $t7
/* 0318E4 80031D34 004E2023 */  subu        $a0, $v0, $t6
/* 0318E8 80031D38 00812023 */  subu        $a0, $a0, $at
/* 0318EC 80031D3C 0C0148C6 */  jal         func_80052318
/* 0318F0 80031D40 006F2823 */   subu       $a1, $v1, $t7
/* 0318F4 80031D44 3C014348 */  lui         $at, 0x4348
/* 0318F8 80031D48 44812000 */  mtc1        $at, $f4
/* 0318FC 80031D4C 46000086 */  mov.s       $f2, $f0
/* 031900 80031D50 3C18800F */  lui         $t8, %hi(D_800F1D18)
/* 031904 80031D54 4600203E */  c.le.s      $f4, $f0
/* 031908 80031D58 3C02800F */  lui         $v0, %hi(D_800F1BF8)
/* 03190C 80031D5C 45010004 */  bc1t        .L80031D70
/* 031910 80031D60 00000000 */   nop
/* 031914 80031D64 8F181D18 */  lw          $t8, %lo(D_800F1D18)($t8)
/* 031918 80031D68 13000027 */  beq         $t8, $zero, .L80031E08
/* 03191C 80031D6C 00000000 */   nop
.L80031D70:
/* 031920 80031D70 8C421BF8 */  lw          $v0, %lo(D_800F1BF8)($v0)
/* 031924 80031D74 24010004 */  addiu       $at, $zero, 0x4
/* 031928 80031D78 1440001D */  bne         $v0, $zero, .L80031DF0
/* 03192C 80031D7C 00000000 */   nop
/* 031930 80031D80 44806000 */  mtc1        $zero, $f12
/* 031934 80031D84 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031938 80031D88 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 03193C 80031D8C 44056000 */  mfc1        $a1, $f12
/* 031940 80031D90 0C00C06C */  jal         func_800301B0
/* 031944 80031D94 00000000 */   nop
/* 031948 80031D98 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 03194C 80031D9C 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031950 80031DA0 0C00BDA0 */  jal         func_8002F680
/* 031954 80031DA4 24050001 */   addiu      $a1, $zero, 0x1
/* 031958 80031DA8 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 03195C 80031DAC 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 031960 80031DB0 0C0446F9 */  jal         func_80111BE4
/* 031964 80031DB4 240500B9 */   addiu      $a1, $zero, 0xb9
/* 031968 80031DB8 3C19800F */  lui         $t9, %hi(D_800F1BF4)
/* 03196C 80031DBC 8F391BF4 */  lw          $t9, %lo(D_800F1BF4)($t9)
/* 031970 80031DC0 3C04800F */  lui         $a0, %hi(D_800EF6A0)
/* 031974 80031DC4 2484F6A0 */  addiu       $a0, $a0, %lo(D_800EF6A0)
/* 031978 80031DC8 17200005 */  bne         $t9, $zero, .L80031DE0
/* 03197C 80031DCC 00000000 */   nop
/* 031980 80031DD0 0C0446F9 */  jal         func_80111BE4
/* 031984 80031DD4 240500B5 */   addiu      $a1, $zero, 0xb5
/* 031988 80031DD8 10000039 */  b           .L80031EC0
/* 03198C 80031DDC 8FBF0014 */   lw         $ra, 0x14($sp)
.L80031DE0:
/* 031990 80031DE0 0C0446F9 */  jal         func_80111BE4
/* 031994 80031DE4 240500B6 */   addiu      $a1, $zero, 0xb6
/* 031998 80031DE8 10000035 */  b           .L80031EC0
/* 03199C 80031DEC 8FBF0014 */   lw         $ra, 0x14($sp)
.L80031DF0:
/* 0319A0 80031DF0 54410033 */  bnel        $v0, $at, .L80031EC0
/* 0319A4 80031DF4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0319A8 80031DF8 0C00C49B */  jal         func_8003126C
/* 0319AC 80031DFC 00000000 */   nop
/* 0319B0 80031E00 1000002F */  b           .L80031EC0
/* 0319B4 80031E04 8FBF0014 */   lw         $ra, 0x14($sp)
.L80031E08:
/* 0319B8 80031E08 3C02800F */  lui         $v0, %hi(D_800F1BF8)
/* 0319BC 80031E0C 8C421BF8 */  lw          $v0, %lo(D_800F1BF8)($v0)
/* 0319C0 80031E10 3C0644FA */  lui         $a2, 0x44fa
/* 0319C4 80031E14 24010004 */  addiu       $at, $zero, 0x4
/* 0319C8 80031E18 14400016 */  bne         $v0, $zero, .L80031E74
/* 0319CC 80031E1C 00000000 */   nop
/* 0319D0 80031E20 44806000 */  mtc1        $zero, $f12
/* 0319D4 80031E24 E7A2001C */  swc1        $f2, 0x1c($sp)
/* 0319D8 80031E28 0C00BFBB */  jal         func_8002FEEC
/* 0319DC 80031E2C 46006386 */   mov.s      $f14, $f12
/* 0319E0 80031E30 3C014348 */  lui         $at, 0x4348
/* 0319E4 80031E34 C7A2001C */  lwc1        $f2, 0x1c($sp)
/* 0319E8 80031E38 44813000 */  mtc1        $at, $f6
/* 0319EC 80031E3C 3C014170 */  lui         $at, 0x4170
/* 0319F0 80031E40 44815000 */  mtc1        $at, $f10
/* 0319F4 80031E44 46061203 */  div.s       $f8, $f2, $f6
/* 0319F8 80031E48 3C01C170 */  lui         $at, 0xc170
/* 0319FC 80031E4C 44819000 */  mtc1        $at, $f18
/* 031A00 80031E50 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031A04 80031E54 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031A08 80031E58 460A4402 */  mul.s       $f16, $f8, $f10
/* 031A0C 80031E5C 46128100 */  add.s       $f4, $f16, $f18
/* 031A10 80031E60 44052000 */  mfc1        $a1, $f4
/* 031A14 80031E64 0C00C06C */  jal         func_800301B0
/* 031A18 80031E68 00000000 */   nop
/* 031A1C 80031E6C 10000014 */  b           .L80031EC0
/* 031A20 80031E70 8FBF0014 */   lw         $ra, 0x14($sp)
.L80031E74:
/* 031A24 80031E74 14410011 */  bne         $v0, $at, .L80031EBC
/* 031A28 80031E78 3C0644FA */   lui        $a2, 0x44fa
/* 031A2C 80031E7C 44806000 */  mtc1        $zero, $f12
/* 031A30 80031E80 E7A2001C */  swc1        $f2, 0x1c($sp)
/* 031A34 80031E84 0C00BFBB */  jal         func_8002FEEC
/* 031A38 80031E88 46006386 */   mov.s      $f14, $f12
/* 031A3C 80031E8C 3C014348 */  lui         $at, 0x4348
/* 031A40 80031E90 C7A2001C */  lwc1        $f2, 0x1c($sp)
/* 031A44 80031E94 44813000 */  mtc1        $at, $f6
/* 031A48 80031E98 3C01C170 */  lui         $at, 0xc170
/* 031A4C 80031E9C 44815000 */  mtc1        $at, $f10
/* 031A50 80031EA0 46061203 */  div.s       $f8, $f2, $f6
/* 031A54 80031EA4 3C04800F */  lui         $a0, %hi(D_800F1BE0)
/* 031A58 80031EA8 24841BE0 */  addiu       $a0, $a0, %lo(D_800F1BE0)
/* 031A5C 80031EAC 460A4402 */  mul.s       $f16, $f8, $f10
/* 031A60 80031EB0 44058000 */  mfc1        $a1, $f16
/* 031A64 80031EB4 0C00C06C */  jal         func_800301B0
/* 031A68 80031EB8 00000000 */   nop
.L80031EBC:
/* 031A6C 80031EBC 8FBF0014 */  lw          $ra, 0x14($sp)
.L80031EC0:
/* 031A70 80031EC0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 031A74 80031EC4 03E00008 */  jr          $ra
/* 031A78 80031EC8 00000000 */   nop

glabel func_80031ECC # 38
/* 031A7C 80031ECC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 031A80 80031ED0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031A84 80031ED4 3C04800F */  lui         $a0, %hi(D_800F1CE8)
/* 031A88 80031ED8 0C000200 */  jal         func_80000800
/* 031A8C 80031EDC 24841CE8 */   addiu      $a0, $a0, %lo(D_800F1CE8)
/* 031A90 80031EE0 3C0E800F */  lui         $t6, %hi(D_800F1BF8)
/* 031A94 80031EE4 8DCE1BF8 */  lw          $t6, %lo(D_800F1BF8)($t6)
/* 031A98 80031EE8 2DC10006 */  sltiu       $at, $t6, 0x6
/* 031A9C 80031EEC 10200014 */  beq         $at, $zero, .L80031F40
/* 031AA0 80031EF0 000E7080 */   sll        $t6, $t6, 2
/* 031AA4 80031EF4 3C01800A */  lui         $at, %hi(jtbl_800A5F5C)
/* 031AA8 80031EF8 002E0821 */  addu        $at, $at, $t6
/* 031AAC 80031EFC 8C2E5F5C */  lw          $t6, %lo(jtbl_800A5F5C)($at)
/* 031AB0 80031F00 01C00008 */  jr          $t6
/* 031AB4 80031F04 00000000 */   nop
glabel jmplabel_80031F08
/* 031AB8 80031F08 0C00C744 */  jal         func_80031D10
/* 031ABC 80031F0C 00000000 */   nop
/* 031AC0 80031F10 1000000C */  b           .L80031F44
/* 031AC4 80031F14 8FBF0014 */   lw         $ra, 0x14($sp)
glabel jmplabel_80031F18
/* 031AC8 80031F18 0C00C677 */  jal         func_800319DC
/* 031ACC 80031F1C 00000000 */   nop
/* 031AD0 80031F20 10000008 */  b           .L80031F44
/* 031AD4 80031F24 8FBF0014 */   lw         $ra, 0x14($sp)
glabel jmplabel_80031F28
/* 031AD8 80031F28 0C00C62A */  jal         func_800318A8
/* 031ADC 80031F2C 00000000 */   nop
/* 031AE0 80031F30 10000004 */  b           .L80031F44
/* 031AE4 80031F34 8FBF0014 */   lw         $ra, 0x14($sp)
glabel jmplabel_80031F38
/* 031AE8 80031F38 0C00C6D7 */  jal         func_80031B5C
/* 031AEC 80031F3C 00000000 */   nop
.L80031F40:
/* 031AF0 80031F40 8FBF0014 */  lw          $ra, 0x14($sp)
.L80031F44:
/* 031AF4 80031F44 27BD0018 */  addiu       $sp, $sp, 0x18
/* 031AF8 80031F48 03E00008 */  jr          $ra
/* 031AFC 80031F4C 00000000 */   nop

glabel func_80031F50 # 39
/* 031B00 80031F50 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 031B04 80031F54 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031B08 80031F58 AFA60030 */  sw          $a2, 0x30($sp)
/* 031B0C 80031F5C AFA70034 */  sw          $a3, 0x34($sp)
/* 031B10 80031F60 0C0033A7 */  jal         func_8000CE9C
/* 031B14 80031F64 27A6001C */   addiu      $a2, $sp, 0x1c
/* 031B18 80031F68 8FAF0034 */  lw          $t7, 0x34($sp)
/* 031B1C 80031F6C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 031B20 80031F70 27A4001C */  addiu       $a0, $sp, 0x1c
/* 031B24 80031F74 000FC100 */  sll         $t8, $t7, 4
/* 031B28 80031F78 01D82821 */  addu        $a1, $t6, $t8
/* 031B2C 80031F7C 0C00E939 */  jal         func_8003A4E4
/* 031B30 80031F80 24A50010 */   addiu      $a1, $a1, 0x10
/* 031B34 80031F84 8FBF0014 */  lw          $ra, 0x14($sp)
/* 031B38 80031F88 27BD0028 */  addiu       $sp, $sp, 0x28
/* 031B3C 80031F8C 03E00008 */  jr          $ra
/* 031B40 80031F90 00000000 */   nop

glabel func_80031F94 # 40
/* 031B44 80031F94 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 031B48 80031F98 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031B4C 80031F9C 94820072 */  lhu         $v0, 0x72($a0)
/* 031B50 80031FA0 44856000 */  mtc1        $a1, $f12
/* 031B54 80031FA4 44867000 */  mtc1        $a2, $f14
/* 031B58 80031FA8 384E0001 */  xori        $t6, $v0, 0x1
/* 031B5C 80031FAC 000E7880 */  sll         $t7, $t6, 2
/* 031B60 80031FB0 01EE7821 */  addu        $t7, $t7, $t6
/* 031B64 80031FB4 000F78C0 */  sll         $t7, $t7, 3
/* 031B68 80031FB8 0C00C7D4 */  jal         func_80031F50
/* 031B6C 80031FBC 008F3021 */   addu       $a2, $a0, $t7
/* 031B70 80031FC0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 031B74 80031FC4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 031B78 80031FC8 03E00008 */  jr          $ra
/* 031B7C 80031FCC 00000000 */   nop

glabel func_80031FD0 # 41
/* 031B80 80031FD0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 031B84 80031FD4 00057080 */  sll         $t6, $a1, 2
/* 031B88 80031FD8 AFB20030 */  sw          $s2, 0x30($sp)
/* 031B8C 80031FDC F7B60020 */  sdc1        $f22, 0x20($sp)
/* 031B90 80031FE0 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 031B94 80031FE4 01C57021 */  addu        $t6, $t6, $a1
/* 031B98 80031FE8 3C0143B4 */  lui         $at, 0x43b4
/* 031B9C 80031FEC AFB40038 */  sw          $s4, 0x38($sp)
/* 031BA0 80031FF0 AFB30034 */  sw          $s3, 0x34($sp)
/* 031BA4 80031FF4 AFB1002C */  sw          $s1, 0x2c($sp)
/* 031BA8 80031FF8 AFB00028 */  sw          $s0, 0x28($sp)
/* 031BAC 80031FFC 000E70C0 */  sll         $t6, $t6, 3
/* 031BB0 80032000 3C12800B */  lui         $s2, %hi(D_800AE4E4)
/* 031BB4 80032004 4481A000 */  mtc1        $at, $f20
/* 031BB8 80032008 4480B000 */  mtc1        $zero, $f22
/* 031BBC 8003200C AFBF003C */  sw          $ra, 0x3c($sp)
/* 031BC0 80032010 2652E4E4 */  addiu       $s2, $s2, %lo(D_800AE4E4)
/* 031BC4 80032014 008E9821 */  addu        $s3, $a0, $t6
/* 031BC8 80032018 24900050 */  addiu       $s0, $a0, 0x50
/* 031BCC 8003201C 00008825 */  move        $s1, $zero
/* 031BD0 80032020 24140002 */  addiu       $s4, $zero, 0x2
.L80032024:
/* 031BD4 80032024 C6040008 */  lwc1        $f4, 0x8($s0)
/* 031BD8 80032028 C6460000 */  lwc1        $f6, 0x0($s2)
/* 031BDC 8003202C C60A0000 */  lwc1        $f10, 0x0($s0)
/* 031BE0 80032030 C612000C */  lwc1        $f18, 0xc($s0)
/* 031BE4 80032034 46062202 */  mul.s       $f8, $f4, $f6
/* 031BE8 80032038 02603025 */  move        $a2, $s3
/* 031BEC 8003203C 02203825 */  move        $a3, $s1
/* 031BF0 80032040 46085400 */  add.s       $f16, $f10, $f8
/* 031BF4 80032044 C60A0004 */  lwc1        $f10, 0x4($s0)
/* 031BF8 80032048 E6100000 */  swc1        $f16, 0x0($s0)
/* 031BFC 8003204C C6440000 */  lwc1        $f4, 0x0($s2)
/* 031C00 80032050 C6000000 */  lwc1        $f0, 0x0($s0)
/* 031C04 80032054 46049182 */  mul.s       $f6, $f18, $f4
/* 031C08 80032058 4616003C */  c.lt.s      $f0, $f22
/* 031C0C 8003205C 46065200 */  add.s       $f8, $f10, $f6
/* 031C10 80032060 45000008 */  bc1f        .L80032084
/* 031C14 80032064 E6080004 */   swc1       $f8, 0x4($s0)
/* 031C18 80032068 46140400 */  add.s       $f16, $f0, $f20
.L8003206C:
/* 031C1C 8003206C E6100000 */  swc1        $f16, 0x0($s0)
/* 031C20 80032070 C6000000 */  lwc1        $f0, 0x0($s0)
/* 031C24 80032074 4616003C */  c.lt.s      $f0, $f22
/* 031C28 80032078 00000000 */  nop
/* 031C2C 8003207C 4503FFFB */  bc1tl       .L8003206C
/* 031C30 80032080 46140400 */   add.s      $f16, $f0, $f20
.L80032084:
/* 031C34 80032084 4600A03E */  c.le.s      $f20, $f0
/* 031C38 80032088 00000000 */  nop
/* 031C3C 8003208C 45020009 */  bc1fl       .L800320B4
/* 031C40 80032090 C60E0004 */   lwc1       $f14, 0x4($s0)
/* 031C44 80032094 46140481 */  sub.s       $f18, $f0, $f20
.L80032098:
/* 031C48 80032098 E6120000 */  swc1        $f18, 0x0($s0)
/* 031C4C 8003209C C6000000 */  lwc1        $f0, 0x0($s0)
/* 031C50 800320A0 4600A03E */  c.le.s      $f20, $f0
/* 031C54 800320A4 00000000 */  nop
/* 031C58 800320A8 4503FFFB */  bc1tl       .L80032098
/* 031C5C 800320AC 46140481 */   sub.s      $f18, $f0, $f20
/* 031C60 800320B0 C60E0004 */  lwc1        $f14, 0x4($s0)
.L800320B4:
/* 031C64 800320B4 4616703C */  c.lt.s      $f14, $f22
/* 031C68 800320B8 00000000 */  nop
/* 031C6C 800320BC 45020009 */  bc1fl       .L800320E4
/* 031C70 800320C0 460EA03E */   c.le.s     $f20, $f14
/* 031C74 800320C4 46147100 */  add.s       $f4, $f14, $f20
.L800320C8:
/* 031C78 800320C8 E6040004 */  swc1        $f4, 0x4($s0)
/* 031C7C 800320CC C60E0004 */  lwc1        $f14, 0x4($s0)
/* 031C80 800320D0 4616703C */  c.lt.s      $f14, $f22
/* 031C84 800320D4 00000000 */  nop
/* 031C88 800320D8 4503FFFB */  bc1tl       .L800320C8
/* 031C8C 800320DC 46147100 */   add.s      $f4, $f14, $f20
/* 031C90 800320E0 460EA03E */  c.le.s      $f20, $f14
.L800320E4:
/* 031C94 800320E4 00000000 */  nop
/* 031C98 800320E8 45000008 */  bc1f        .L8003210C
/* 031C9C 800320EC 00000000 */   nop
/* 031CA0 800320F0 46147281 */  sub.s       $f10, $f14, $f20
.L800320F4:
/* 031CA4 800320F4 E60A0004 */  swc1        $f10, 0x4($s0)
/* 031CA8 800320F8 C60E0004 */  lwc1        $f14, 0x4($s0)
/* 031CAC 800320FC 460EA03E */  c.le.s      $f20, $f14
/* 031CB0 80032100 00000000 */  nop
/* 031CB4 80032104 4503FFFB */  bc1tl       .L800320F4
/* 031CB8 80032108 46147281 */   sub.s      $f10, $f14, $f20
.L8003210C:
/* 031CBC 8003210C 0C00C7D4 */  jal         func_80031F50
/* 031CC0 80032110 C60C0000 */   lwc1       $f12, 0x0($s0)
/* 031CC4 80032114 26310001 */  addiu       $s1, $s1, 0x1
/* 031CC8 80032118 1634FFC2 */  bne         $s1, $s4, .L80032024
/* 031CCC 8003211C 26100010 */   addiu      $s0, $s0, 0x10
/* 031CD0 80032120 8FBF003C */  lw          $ra, 0x3c($sp)
/* 031CD4 80032124 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 031CD8 80032128 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 031CDC 8003212C 8FB00028 */  lw          $s0, 0x28($sp)
/* 031CE0 80032130 8FB1002C */  lw          $s1, 0x2c($sp)
/* 031CE4 80032134 8FB20030 */  lw          $s2, 0x30($sp)
/* 031CE8 80032138 8FB30034 */  lw          $s3, 0x34($sp)
/* 031CEC 8003213C 8FB40038 */  lw          $s4, 0x38($sp)
/* 031CF0 80032140 03E00008 */  jr          $ra
/* 031CF4 80032144 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_80032148 # 42
/* 031CF8 80032148 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 031CFC 8003214C AFBF0034 */  sw          $ra, 0x34($sp)
/* 031D00 80032150 AFB50030 */  sw          $s5, 0x30($sp)
/* 031D04 80032154 AFB4002C */  sw          $s4, 0x2c($sp)
/* 031D08 80032158 AFB30028 */  sw          $s3, 0x28($sp)
/* 031D0C 8003215C AFB20024 */  sw          $s2, 0x24($sp)
/* 031D10 80032160 AFB10020 */  sw          $s1, 0x20($sp)
/* 031D14 80032164 AFB0001C */  sw          $s0, 0x1c($sp)
/* 031D18 80032168 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 031D1C 8003216C 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 031D20 80032170 C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 031D24 80032174 C4840078 */  lwc1        $f4, 0x78($a0)
/* 031D28 80032178 44808000 */  mtc1        $zero, $f16
/* 031D2C 8003217C 3C11800A */  lui         $s1, %hi(D_8009A6C0)
/* 031D30 80032180 46062201 */  sub.s       $f8, $f4, $f6
/* 031D34 80032184 3C15800A */  lui         $s5, %hi(D_8009A6E0)
/* 031D38 80032188 240E0002 */  addiu       $t6, $zero, 0x2
/* 031D3C 8003218C 3C013F00 */  lui         $at, 0x3f00
/* 031D40 80032190 E4880078 */  swc1        $f8, 0x78($a0)
/* 031D44 80032194 C48A0078 */  lwc1        $f10, 0x78($a0)
/* 031D48 80032198 26B5A6E0 */  addiu       $s5, $s5, %lo(D_8009A6E0)
/* 031D4C 8003219C 2631A6C0 */  addiu       $s1, $s1, %lo(D_8009A6C0)
/* 031D50 800321A0 4610503C */  c.lt.s      $f10, $f16
/* 031D54 800321A4 24900050 */  addiu       $s0, $a0, 0x50
/* 031D58 800321A8 27B20044 */  addiu       $s2, $sp, 0x44
/* 031D5C 800321AC 27B30040 */  addiu       $s3, $sp, 0x40
/* 031D60 800321B0 4500001E */  bc1f        .L8003222C
/* 031D64 800321B4 27B4003C */   addiu      $s4, $sp, 0x3c
/* 031D68 800321B8 44819000 */  mtc1        $at, $f18
/* 031D6C 800321BC 3C014000 */  lui         $at, 0x4000
/* 031D70 800321C0 4481A000 */  mtc1        $at, $f20
/* 031D74 800321C4 A48E0070 */  sh          $t6, 0x70($a0)
/* 031D78 800321C8 E4920078 */  swc1        $f18, 0x78($a0)
.L800321CC:
/* 031D7C 800321CC 02202025 */  move        $a0, $s1
/* 031D80 800321D0 0C00E957 */  jal         func_8003A55C
/* 031D84 800321D4 02402825 */   move       $a1, $s2
/* 031D88 800321D8 02402025 */  move        $a0, $s2
/* 031D8C 800321DC 02602825 */  move        $a1, $s3
/* 031D90 800321E0 0C003298 */  jal         func_8000CA60
/* 031D94 800321E4 02803025 */   move       $a2, $s4
/* 031D98 800321E8 C7A40040 */  lwc1        $f4, 0x40($sp)
/* 031D9C 800321EC C6060000 */  lwc1        $f6, 0x0($s0)
/* 031DA0 800321F0 0C00EDB5 */  jal         func_8003B6D4
/* 031DA4 800321F4 46062301 */   sub.s      $f12, $f4, $f6
/* 031DA8 800321F8 46140202 */  mul.s       $f8, $f0, $f20
/* 031DAC 800321FC C6100004 */  lwc1        $f16, 0x4($s0)
/* 031DB0 80032200 E6080008 */  swc1        $f8, 0x8($s0)
/* 031DB4 80032204 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 031DB8 80032208 0C00EDB5 */  jal         func_8003B6D4
/* 031DBC 8003220C 46105301 */   sub.s      $f12, $f10, $f16
/* 031DC0 80032210 46140482 */  mul.s       $f18, $f0, $f20
/* 031DC4 80032214 26310010 */  addiu       $s1, $s1, 0x10
/* 031DC8 80032218 26100010 */  addiu       $s0, $s0, 0x10
/* 031DCC 8003221C 1635FFEB */  bne         $s1, $s5, .L800321CC
/* 031DD0 80032220 E612FFFC */   swc1       $f18, -0x4($s0)
/* 031DD4 80032224 10000004 */  b           .L80032238
/* 031DD8 80032228 8FBF0034 */   lw         $ra, 0x34($sp)
.L8003222C:
/* 031DDC 8003222C 0C00C7F4 */  jal         func_80031FD0
/* 031DE0 80032230 00000000 */   nop
/* 031DE4 80032234 8FBF0034 */  lw          $ra, 0x34($sp)
.L80032238:
/* 031DE8 80032238 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 031DEC 8003223C 8FB0001C */  lw          $s0, 0x1c($sp)
/* 031DF0 80032240 8FB10020 */  lw          $s1, 0x20($sp)
/* 031DF4 80032244 8FB20024 */  lw          $s2, 0x24($sp)
/* 031DF8 80032248 8FB30028 */  lw          $s3, 0x28($sp)
/* 031DFC 8003224C 8FB4002C */  lw          $s4, 0x2c($sp)
/* 031E00 80032250 8FB50030 */  lw          $s5, 0x30($sp)
/* 031E04 80032254 03E00008 */  jr          $ra
/* 031E08 80032258 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8003225C # 43
/* 031E0C 8003225C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 031E10 80032260 AFBF0014 */  sw          $ra, 0x14($sp)
/* 031E14 80032264 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 031E18 80032268 C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 031E1C 8003226C C4840078 */  lwc1        $f4, 0x78($a0)
/* 031E20 80032270 44808000 */  mtc1        $zero, $f16
/* 031E24 80032274 46062201 */  sub.s       $f8, $f4, $f6
/* 031E28 80032278 E4880078 */  swc1        $f8, 0x78($a0)
/* 031E2C 8003227C C48A0078 */  lwc1        $f10, 0x78($a0)
/* 031E30 80032280 4610503C */  c.lt.s      $f10, $f16
/* 031E34 80032284 00000000 */  nop
/* 031E38 80032288 45000005 */  bc1f        .L800322A0
/* 031E3C 8003228C 00000000 */   nop
/* 031E40 80032290 0C00C8AE */  jal         func_800322B8
/* 031E44 80032294 00000000 */   nop
/* 031E48 80032298 10000004 */  b           .L800322AC
/* 031E4C 8003229C 8FBF0014 */   lw         $ra, 0x14($sp)
.L800322A0:
/* 031E50 800322A0 0C00C7F4 */  jal         func_80031FD0
/* 031E54 800322A4 00000000 */   nop
/* 031E58 800322A8 8FBF0014 */  lw          $ra, 0x14($sp)
.L800322AC:
/* 031E5C 800322AC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 031E60 800322B0 03E00008 */  jr          $ra
/* 031E64 800322B4 00000000 */   nop

glabel func_800322B8 # 44
/* 031E68 800322B8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 031E6C 800322BC 3C0E800A */  lui         $t6, %hi(D_8009A6B0)
/* 031E70 800322C0 27A20000 */  addiu       $v0, $sp, 0x0
/* 031E74 800322C4 25CEA6B0 */  addiu       $t6, $t6, %lo(D_8009A6B0)
/* 031E78 800322C8 25D90024 */  addiu       $t9, $t6, 0x24
/* 031E7C 800322CC 00404025 */  move        $t0, $v0
.L800322D0:
/* 031E80 800322D0 8DC10000 */  lw          $at, 0x0($t6)
/* 031E84 800322D4 25CE000C */  addiu       $t6, $t6, 0xc
/* 031E88 800322D8 2508000C */  addiu       $t0, $t0, 0xc
/* 031E8C 800322DC AD01FFF4 */  sw          $at, -0xc($t0)
/* 031E90 800322E0 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 031E94 800322E4 AD01FFF8 */  sw          $at, -0x8($t0)
/* 031E98 800322E8 8DC1FFFC */  lw          $at, -0x4($t6)
/* 031E9C 800322EC 15D9FFF8 */  bne         $t6, $t9, .L800322D0
/* 031EA0 800322F0 AD01FFFC */   sw         $at, -0x4($t0)
/* 031EA4 800322F4 8DC10000 */  lw          $at, 0x0($t6)
/* 031EA8 800322F8 00406025 */  move        $t4, $v0
/* 031EAC 800322FC 00806825 */  move        $t5, $a0
/* 031EB0 80032300 244B0024 */  addiu       $t3, $v0, 0x24
/* 031EB4 80032304 AD010000 */  sw          $at, 0x0($t0)
.L80032308:
/* 031EB8 80032308 8D810000 */  lw          $at, 0x0($t4)
/* 031EBC 8003230C 258C000C */  addiu       $t4, $t4, 0xc
/* 031EC0 80032310 25AD000C */  addiu       $t5, $t5, 0xc
/* 031EC4 80032314 ADA1001C */  sw          $at, 0x1c($t5)
/* 031EC8 80032318 8D81FFF8 */  lw          $at, -0x8($t4)
/* 031ECC 8003231C ADA10020 */  sw          $at, 0x20($t5)
/* 031ED0 80032320 8D81FFFC */  lw          $at, -0x4($t4)
/* 031ED4 80032324 158BFFF8 */  bne         $t4, $t3, .L80032308
/* 031ED8 80032328 ADA10024 */   sw         $at, 0x24($t5)
/* 031EDC 8003232C 8D810000 */  lw          $at, 0x0($t4)
/* 031EE0 80032330 00407025 */  move        $t6, $v0
/* 031EE4 80032334 00804025 */  move        $t0, $a0
/* 031EE8 80032338 24590024 */  addiu       $t9, $v0, 0x24
/* 031EEC 8003233C ADA10028 */  sw          $at, 0x28($t5)
.L80032340:
/* 031EF0 80032340 8DC10000 */  lw          $at, 0x0($t6)
/* 031EF4 80032344 25CE000C */  addiu       $t6, $t6, 0xc
/* 031EF8 80032348 2508000C */  addiu       $t0, $t0, 0xc
/* 031EFC 8003234C AD01FFF4 */  sw          $at, -0xc($t0)
/* 031F00 80032350 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 031F04 80032354 AD01FFF8 */  sw          $at, -0x8($t0)
/* 031F08 80032358 8DC1FFFC */  lw          $at, -0x4($t6)
/* 031F0C 8003235C 15D9FFF8 */  bne         $t6, $t9, .L80032340
/* 031F10 80032360 AD01FFFC */   sw         $at, -0x4($t0)
/* 031F14 80032364 8DC10000 */  lw          $at, 0x0($t6)
/* 031F18 80032368 27BD0028 */  addiu       $sp, $sp, 0x28
/* 031F1C 8003236C AD010000 */  sw          $at, 0x0($t0)
/* 031F20 80032370 A4800070 */  sh          $zero, 0x70($a0)
/* 031F24 80032374 03E00008 */  jr          $ra
/* 031F28 80032378 A4800072 */   sh         $zero, 0x72($a0)

glabel func_8003237C # 45
/* 031F2C 8003237C 03E00008 */  jr          $ra
/* 031F30 80032380 A4800070 */   sh         $zero, 0x70($a0)

glabel func_80032384 # 46
/* 031F34 80032384 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 031F38 80032388 44856000 */  mtc1        $a1, $f12
/* 031F3C 8003238C AFB50028 */  sw          $s5, 0x28($sp)
/* 031F40 80032390 AFB40024 */  sw          $s4, 0x24($sp)
/* 031F44 80032394 AFB30020 */  sw          $s3, 0x20($sp)
/* 031F48 80032398 AFB2001C */  sw          $s2, 0x1c($sp)
/* 031F4C 8003239C AFB10018 */  sw          $s1, 0x18($sp)
/* 031F50 800323A0 AFB00014 */  sw          $s0, 0x14($sp)
/* 031F54 800323A4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 031F58 800323A8 240E0001 */  addiu       $t6, $zero, 0x1
/* 031F5C 800323AC 00809825 */  move        $s3, $a0
/* 031F60 800323B0 A48E0070 */  sh          $t6, 0x70($a0)
/* 031F64 800323B4 24900050 */  addiu       $s0, $a0, 0x50
/* 031F68 800323B8 00008825 */  move        $s1, $zero
/* 031F6C 800323BC 00C09025 */  move        $s2, $a2
/* 031F70 800323C0 27B4003C */  addiu       $s4, $sp, 0x3c
/* 031F74 800323C4 24150020 */  addiu       $s5, $zero, 0x20
/* 031F78 800323C8 E48C0074 */  swc1        $f12, 0x74($a0)
/* 031F7C 800323CC E48C0078 */  swc1        $f12, 0x78($a0)
.L800323D0:
/* 031F80 800323D0 966F0072 */  lhu         $t7, 0x72($s3)
/* 031F84 800323D4 02802825 */  move        $a1, $s4
/* 031F88 800323D8 000FC080 */  sll         $t8, $t7, 2
/* 031F8C 800323DC 030FC021 */  addu        $t8, $t8, $t7
/* 031F90 800323E0 0018C0C0 */  sll         $t8, $t8, 3
/* 031F94 800323E4 0278C821 */  addu        $t9, $s3, $t8
/* 031F98 800323E8 03312021 */  addu        $a0, $t9, $s1
/* 031F9C 800323EC 0C00E957 */  jal         func_8003A55C
/* 031FA0 800323F0 24840010 */   addiu      $a0, $a0, 0x10
/* 031FA4 800323F4 02802025 */  move        $a0, $s4
/* 031FA8 800323F8 02002825 */  move        $a1, $s0
/* 031FAC 800323FC 0C003298 */  jal         func_8000CA60
/* 031FB0 80032400 26060004 */   addiu      $a2, $s0, 0x4
/* 031FB4 80032404 C6440000 */  lwc1        $f4, 0x0($s2)
/* 031FB8 80032408 26310010 */  addiu       $s1, $s1, 0x10
/* 031FBC 8003240C 26520008 */  addiu       $s2, $s2, 0x8
/* 031FC0 80032410 E6040008 */  swc1        $f4, 0x8($s0)
/* 031FC4 80032414 C646FFFC */  lwc1        $f6, -0x4($s2)
/* 031FC8 80032418 26100010 */  addiu       $s0, $s0, 0x10
/* 031FCC 8003241C 1635FFEC */  bne         $s1, $s5, .L800323D0
/* 031FD0 80032420 E606FFFC */   swc1       $f6, -0x4($s0)
/* 031FD4 80032424 8FBF002C */  lw          $ra, 0x2c($sp)
/* 031FD8 80032428 8FB00014 */  lw          $s0, 0x14($sp)
/* 031FDC 8003242C 8FB10018 */  lw          $s1, 0x18($sp)
/* 031FE0 80032430 8FB2001C */  lw          $s2, 0x1c($sp)
/* 031FE4 80032434 8FB30020 */  lw          $s3, 0x20($sp)
/* 031FE8 80032438 8FB40024 */  lw          $s4, 0x24($sp)
/* 031FEC 8003243C 8FB50028 */  lw          $s5, 0x28($sp)
/* 031FF0 80032440 03E00008 */  jr          $ra
/* 031FF4 80032444 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_80032448 # 47
/* 031FF8 80032448 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 031FFC 8003244C AFBF0014 */  sw          $ra, 0x14($sp)
/* 032000 80032450 94820070 */  lhu         $v0, 0x70($a0)
/* 032004 80032454 1040000A */  beq         $v0, $zero, .L80032480
/* 032008 80032458 0002C080 */   sll        $t8, $v0, 2
/* 03200C 8003245C 948E0072 */  lhu         $t6, 0x72($a0)
/* 032010 80032460 3C19800A */  lui         $t9, %hi(D_8009A6D8)
/* 032014 80032464 0338C821 */  addu        $t9, $t9, $t8
/* 032018 80032468 39CF0001 */  xori        $t7, $t6, 0x1
/* 03201C 8003246C A48F0072 */  sh          $t7, 0x72($a0)
/* 032020 80032470 8F39A6D8 */  lw          $t9, %lo(D_8009A6D8)($t9)
/* 032024 80032474 31E5FFFF */  andi        $a1, $t7, 0xffff
/* 032028 80032478 0320F809 */  jalr        $t9
/* 03202C 8003247C 00000000 */   nop
.L80032480:
/* 032030 80032480 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032034 80032484 27BD0018 */  addiu       $sp, $sp, 0x18
/* 032038 80032488 03E00008 */  jr          $ra
/* 03203C 8003248C 00000000 */   nop

glabel func_80032490 # 48
/* 032040 80032490 8C8E0004 */  lw          $t6, 0x4($a0)
/* 032044 80032494 00001025 */  move        $v0, $zero
/* 032048 80032498 15C0000D */  bne         $t6, $zero, .L800324D0
/* 03204C 8003249C 00000000 */   nop
/* 032050 800324A0 8C830000 */  lw          $v1, 0x0($a0)
/* 032054 800324A4 24630008 */  addiu       $v1, $v1, 0x8
.L800324A8:
/* 032058 800324A8 8C6F0004 */  lw          $t7, 0x4($v1)
/* 03205C 800324AC 8C78FFFC */  lw          $t8, -0x4($v1)
/* 032060 800324B0 8C680000 */  lw          $t0, 0x0($v1)
/* 032064 800324B4 24630008 */  addiu       $v1, $v1, 0x8
/* 032068 800324B8 01F8C821 */  addu        $t9, $t7, $t8
/* 03206C 800324BC 11000003 */  beq         $t0, $zero, .L800324CC
/* 032070 800324C0 AC79FFFC */   sw         $t9, -0x4($v1)
/* 032074 800324C4 1000FFF8 */  b           .L800324A8
/* 032078 800324C8 24420001 */   addiu      $v0, $v0, 0x1
.L800324CC:
/* 03207C 800324CC AC820004 */  sw          $v0, 0x4($a0)
.L800324D0:
/* 032080 800324D0 03E00008 */  jr          $ra
/* 032084 800324D4 00000000 */   nop

glabel func_800324D8 # 49
/* 032088 800324D8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03208C 800324DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 032090 800324E0 0C00C924 */  jal         func_80032490
/* 032094 800324E4 AFA40028 */   sw         $a0, 0x28($sp)
/* 032098 800324E8 8FA50028 */  lw          $a1, 0x28($sp)
/* 03209C 800324EC 8CAE0004 */  lw          $t6, 0x4($a1)
/* 0320A0 800324F0 8CA30000 */  lw          $v1, 0x0($a1)
/* 0320A4 800324F4 000E78C0 */  sll         $t7, $t6, 3
/* 0320A8 800324F8 006FC021 */  addu        $t8, $v1, $t7
/* 0320AC 800324FC 8F040004 */  lw          $a0, 0x4($t8)
/* 0320B0 80032500 0C00EAC8 */  jal         func_8003AB20
/* 0320B4 80032504 AFA3001C */   sw         $v1, 0x1c($sp)
/* 0320B8 80032508 8FA3001C */  lw          $v1, 0x1c($sp)
/* 0320BC 8003250C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0320C0 80032510 8C640000 */  lw          $a0, 0x0($v1)
/* 0320C4 80032514 5080000C */  beql        $a0, $zero, .L80032548
/* 0320C8 80032518 00001025 */   move       $v0, $zero
/* 0320CC 8003251C 8C790004 */  lw          $t9, 0x4($v1)
.L80032520:
/* 0320D0 80032520 0322082A */  slt         $at, $t9, $v0
/* 0320D4 80032524 54200004 */  bnel        $at, $zero, .L80032538
/* 0320D8 80032528 8C640008 */   lw         $a0, 0x8($v1)
/* 0320DC 8003252C 10000006 */  b           .L80032548
/* 0320E0 80032530 00801025 */   move       $v0, $a0
/* 0320E4 80032534 8C640008 */  lw          $a0, 0x8($v1)
.L80032538:
/* 0320E8 80032538 24630008 */  addiu       $v1, $v1, 0x8
/* 0320EC 8003253C 5480FFF8 */  bnel        $a0, $zero, .L80032520
/* 0320F0 80032540 8C790004 */   lw         $t9, 0x4($v1)
/* 0320F4 80032544 00001025 */  move        $v0, $zero
.L80032548:
/* 0320F8 80032548 03E00008 */  jr          $ra
/* 0320FC 8003254C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80032550 # 50
/* 032100 80032550 3C0E800A */  lui         $t6, %hi(D_8009ADC4)
/* 032104 80032554 25CEADC4 */  addiu       $t6, $t6, %lo(D_8009ADC4)
/* 032108 80032558 8DC10000 */  lw          $at, 0x0($t6)
/* 03210C 8003255C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 032110 80032560 27A60008 */  addiu       $a2, $sp, 0x8
/* 032114 80032564 ACC10000 */  sw          $at, 0x0($a2)
/* 032118 80032568 8DD90004 */  lw          $t9, 0x4($t6)
/* 03211C 8003256C 24030002 */  addiu       $v1, $zero, 0x2
/* 032120 80032570 00036880 */  sll         $t5, $v1, 2
/* 032124 80032574 ACD90004 */  sw          $t9, 0x4($a2)
/* 032128 80032578 8DC10008 */  lw          $at, 0x8($t6)
/* 03212C 8003257C 00CD2821 */  addu        $a1, $a2, $t5
/* 032130 80032580 3C0C800F */  lui         $t4, %hi(D_800F2544)
/* 032134 80032584 ACC10008 */  sw          $at, 0x8($a2)
/* 032138 80032588 8DD9000C */  lw          $t9, 0xc($t6)
/* 03213C 8003258C 258C2544 */  addiu       $t4, $t4, %lo(D_800F2544)
/* 032140 80032590 006C2021 */  addu        $a0, $v1, $t4
/* 032144 80032594 ACD9000C */  sw          $t9, 0xc($a2)
/* 032148 80032598 8DC10010 */  lw          $at, 0x10($t6)
/* 03214C 8003259C ACC10010 */  sw          $at, 0x10($a2)
/* 032150 800325A0 8DD90014 */  lw          $t9, 0x14($t6)
/* 032154 800325A4 3C01800F */  lui         $at, %hi(D_800F2544 + 0x1)
/* 032158 800325A8 ACD90014 */  sw          $t9, 0x14($a2)
/* 03215C 800325AC 8FA20008 */  lw          $v0, 0x8($sp)
/* 032160 800325B0 8FA9000C */  lw          $t1, 0xc($sp)
/* 032164 800325B4 A0202544 */  sb          $zero, %lo(D_800F2544)($at)
/* 032168 800325B8 2442000B */  addiu       $v0, $v0, 0xb
/* 03216C 800325BC 000240C2 */  srl         $t0, $v0, 3
/* 032170 800325C0 A0282545 */  sb          $t0, %lo(D_800F2544 + 0x1)($at)
/* 032174 800325C4 8CB80000 */  lw          $t8, 0x0($a1)
/* 032178 800325C8 252A000B */  addiu       $t2, $t1, 0xb
/* 03217C 800325CC 000A58C2 */  srl         $t3, $t2, 3
/* 032180 800325D0 8CB90004 */  lw          $t9, 0x4($a1)
/* 032184 800325D4 010B1021 */  addu        $v0, $t0, $t3
/* 032188 800325D8 270F000B */  addiu       $t7, $t8, 0xb
/* 03218C 800325DC 8CAA0008 */  lw          $t2, 0x8($a1)
/* 032190 800325E0 A0820000 */  sb          $v0, 0x0($a0)
/* 032194 800325E4 000F70C2 */  srl         $t6, $t7, 3
/* 032198 800325E8 004E1021 */  addu        $v0, $v0, $t6
/* 03219C 800325EC 2728000B */  addiu       $t0, $t9, 0xb
/* 0321A0 800325F0 000848C2 */  srl         $t1, $t0, 3
/* 0321A4 800325F4 A0820001 */  sb          $v0, 0x1($a0)
/* 0321A8 800325F8 00491021 */  addu        $v0, $v0, $t1
/* 0321AC 800325FC 254B000B */  addiu       $t3, $t2, 0xb
/* 0321B0 80032600 000B60C2 */  srl         $t4, $t3, 3
/* 0321B4 80032604 A0820002 */  sb          $v0, 0x2($a0)
/* 0321B8 80032608 004C1021 */  addu        $v0, $v0, $t4
/* 0321BC 8003260C A0820003 */  sb          $v0, 0x3($a0)
/* 0321C0 80032610 03E00008 */  jr          $ra
/* 0321C4 80032614 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80032618 # 51
/* 0321C8 80032618 3C0E800A */  lui         $t6, %hi(D_8009ADDC)
/* 0321CC 8003261C 25CEADDC */  addiu       $t6, $t6, %lo(D_8009ADDC)
/* 0321D0 80032620 8DC10000 */  lw          $at, 0x0($t6)
/* 0321D4 80032624 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0321D8 80032628 27A30000 */  addiu       $v1, $sp, 0x0
/* 0321DC 8003262C AC610000 */  sw          $at, 0x0($v1)
/* 0321E0 80032630 8DD90004 */  lw          $t9, 0x4($t6)
/* 0321E4 80032634 00044080 */  sll         $t0, $a0, 2
/* 0321E8 80032638 00684821 */  addu        $t1, $v1, $t0
/* 0321EC 8003263C AC790004 */  sw          $t9, 0x4($v1)
/* 0321F0 80032640 8DC10008 */  lw          $at, 0x8($t6)
/* 0321F4 80032644 AC610008 */  sw          $at, 0x8($v1)
/* 0321F8 80032648 8DD9000C */  lw          $t9, 0xc($t6)
/* 0321FC 8003264C AC79000C */  sw          $t9, 0xc($v1)
/* 032200 80032650 8DC10010 */  lw          $at, 0x10($t6)
/* 032204 80032654 AC610010 */  sw          $at, 0x10($v1)
/* 032208 80032658 8DD90014 */  lw          $t9, 0x14($t6)
/* 03220C 8003265C AC790014 */  sw          $t9, 0x14($v1)
/* 032210 80032660 8D220000 */  lw          $v0, 0x0($t1)
/* 032214 80032664 03E00008 */  jr          $ra
/* 032218 80032668 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003266C # 52
/* 03221C 8003266C 03E00008 */  jr          $ra
/* 032220 80032670 00000000 */   nop

glabel func_80032674 # 53
/* 032224 80032674 03E00008 */  jr          $ra
/* 032228 80032678 00000000 */   nop

glabel func_8003267C # 54
/* 03222C 8003267C 3C06800A */  lui         $a2, %hi(D_8009A6F4)
/* 032230 80032680 3C0A800F */  lui         $t2, %hi(D_800F1D30)
/* 032234 80032684 00001025 */  move        $v0, $zero
/* 032238 80032688 00001825 */  move        $v1, $zero
/* 03223C 8003268C 254A1D30 */  addiu       $t2, $t2, %lo(D_800F1D30)
/* 032240 80032690 24C6A6F4 */  addiu       $a2, $a2, %lo(D_8009A6F4)
/* 032244 80032694 00002025 */  move        $a0, $zero
/* 032248 80032698 240C0008 */  addiu       $t4, $zero, 0x8
/* 03224C 8003269C 240B00F4 */  addiu       $t3, $zero, 0xf4
.L800326A0:
/* 032250 800326A0 10400003 */  beq         $v0, $zero, .L800326B0
/* 032254 800326A4 8CC50000 */   lw         $a1, 0x0($a2)
/* 032258 800326A8 00001025 */  move        $v0, $zero
/* 03225C 800326AC 24630001 */  addiu       $v1, $v1, 0x1
.L800326B0:
/* 032260 800326B0 24A70007 */  addiu       $a3, $a1, 0x7
/* 032264 800326B4 04E10003 */  bgez        $a3, .L800326C4
/* 032268 800326B8 000770C3 */   sra        $t6, $a3, 3
/* 03226C 800326BC 24E10007 */  addiu       $at, $a3, 0x7
/* 032270 800326C0 000170C3 */  sra         $t6, $at, 3
.L800326C4:
/* 032274 800326C4 006E7821 */  addu        $t7, $v1, $t6
/* 032278 800326C8 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 03227C 800326CC 030E001A */  div         $zero, $t8, $t6
/* 032280 800326D0 0000C812 */  mflo        $t9
/* 032284 800326D4 01C03825 */  move        $a3, $t6
/* 032288 800326D8 3C09800A */  lui         $t1, %hi(D_8009A754)
/* 03228C 800326DC 03270019 */  multu       $t9, $a3
/* 032290 800326E0 2529A754 */  addiu       $t1, $t1, %lo(D_8009A754)
/* 032294 800326E4 14E00002 */  bne         $a3, $zero, .L800326F0
/* 032298 800326E8 00000000 */   nop
/* 03229C 800326EC 0007000D */  break       7
.L800326F0:
/* 0322A0 800326F0 2401FFFF */  addiu       $at, $zero, -0x1
/* 0322A4 800326F4 14E10004 */  bne         $a3, $at, .L80032708
/* 0322A8 800326F8 3C018000 */   lui        $at, 0x8000
/* 0322AC 800326FC 17010002 */  bne         $t8, $at, .L80032708
/* 0322B0 80032700 00000000 */   nop
/* 0322B4 80032704 0006000D */  break       6
.L80032708:
/* 0322B8 80032708 00001812 */  mflo        $v1
/* 0322BC 8003270C 00004025 */  move        $t0, $zero
/* 0322C0 80032710 00000000 */  nop
.L80032714:
/* 0322C4 80032714 8D2D0000 */  lw          $t5, 0x0($t1)
/* 0322C8 80032718 000870C0 */  sll         $t6, $t0, 3
/* 0322CC 8003271C 0008C8C0 */  sll         $t9, $t0, 3
/* 0322D0 80032720 148D000C */  bne         $a0, $t5, .L80032754
/* 0322D4 80032724 014E3821 */   addu       $a3, $t2, $t6
/* 0322D8 80032728 ACE20004 */  sw          $v0, 0x4($a3)
/* 0322DC 8003272C 00451021 */  addu        $v0, $v0, $a1
/* 0322E0 80032730 28410008 */  slti        $at, $v0, 0x8
/* 0322E4 80032734 14200007 */  bne         $at, $zero, .L80032754
/* 0322E8 80032738 ACE30000 */   sw         $v1, 0x0($a3)
/* 0322EC 8003273C 04410003 */  bgez        $v0, .L8003274C
/* 0322F0 80032740 000278C3 */   sra        $t7, $v0, 3
/* 0322F4 80032744 24410007 */  addiu       $at, $v0, 0x7
/* 0322F8 80032748 000178C3 */  sra         $t7, $at, 3
.L8003274C:
/* 0322FC 8003274C 006F1821 */  addu        $v1, $v1, $t7
/* 032300 80032750 00001025 */  move        $v0, $zero
.L80032754:
/* 032304 80032754 8D380004 */  lw          $t8, 0x4($t1)
/* 032308 80032758 01593821 */  addu        $a3, $t2, $t9
/* 03230C 8003275C 000878C0 */  sll         $t7, $t0, 3
/* 032310 80032760 5498000D */  bnel        $a0, $t8, .L80032798
/* 032314 80032764 8D2E0008 */   lw         $t6, 0x8($t1)
/* 032318 80032768 ACE2000C */  sw          $v0, 0xc($a3)
/* 03231C 8003276C 00451021 */  addu        $v0, $v0, $a1
/* 032320 80032770 28410008 */  slti        $at, $v0, 0x8
/* 032324 80032774 14200007 */  bne         $at, $zero, .L80032794
/* 032328 80032778 ACE30008 */   sw         $v1, 0x8($a3)
/* 03232C 8003277C 04410003 */  bgez        $v0, .L8003278C
/* 032330 80032780 000268C3 */   sra        $t5, $v0, 3
/* 032334 80032784 24410007 */  addiu       $at, $v0, 0x7
/* 032338 80032788 000168C3 */  sra         $t5, $at, 3
.L8003278C:
/* 03233C 8003278C 006D1821 */  addu        $v1, $v1, $t5
/* 032340 80032790 00001025 */  move        $v0, $zero
.L80032794:
/* 032344 80032794 8D2E0008 */  lw          $t6, 0x8($t1)
.L80032798:
/* 032348 80032798 014F3821 */  addu        $a3, $t2, $t7
/* 03234C 8003279C 548E000D */  bnel        $a0, $t6, .L800327D4
/* 032350 800327A0 8D39000C */   lw         $t9, 0xc($t1)
/* 032354 800327A4 ACE20014 */  sw          $v0, 0x14($a3)
/* 032358 800327A8 00451021 */  addu        $v0, $v0, $a1
/* 03235C 800327AC 28410008 */  slti        $at, $v0, 0x8
/* 032360 800327B0 14200007 */  bne         $at, $zero, .L800327D0
/* 032364 800327B4 ACE30010 */   sw         $v1, 0x10($a3)
/* 032368 800327B8 04410003 */  bgez        $v0, .L800327C8
/* 03236C 800327BC 0002C0C3 */   sra        $t8, $v0, 3
/* 032370 800327C0 24410007 */  addiu       $at, $v0, 0x7
/* 032374 800327C4 0001C0C3 */  sra         $t8, $at, 3
.L800327C8:
/* 032378 800327C8 00781821 */  addu        $v1, $v1, $t8
/* 03237C 800327CC 00001025 */  move        $v0, $zero
.L800327D0:
/* 032380 800327D0 8D39000C */  lw          $t9, 0xc($t1)
.L800327D4:
/* 032384 800327D4 5499000F */  bnel        $a0, $t9, .L80032814
/* 032388 800327D8 25080004 */   addiu      $t0, $t0, 0x4
/* 03238C 800327DC 000868C0 */  sll         $t5, $t0, 3
/* 032390 800327E0 014D3821 */  addu        $a3, $t2, $t5
/* 032394 800327E4 ACE2001C */  sw          $v0, 0x1c($a3)
/* 032398 800327E8 00451021 */  addu        $v0, $v0, $a1
/* 03239C 800327EC 28410008 */  slti        $at, $v0, 0x8
/* 0323A0 800327F0 14200007 */  bne         $at, $zero, .L80032810
/* 0323A4 800327F4 ACE30018 */   sw         $v1, 0x18($a3)
/* 0323A8 800327F8 04410003 */  bgez        $v0, .L80032808
/* 0323AC 800327FC 000270C3 */   sra        $t6, $v0, 3
/* 0323B0 80032800 24410007 */  addiu       $at, $v0, 0x7
/* 0323B4 80032804 000170C3 */  sra         $t6, $at, 3
.L80032808:
/* 0323B8 80032808 006E1821 */  addu        $v1, $v1, $t6
/* 0323BC 8003280C 00001025 */  move        $v0, $zero
.L80032810:
/* 0323C0 80032810 25080004 */  addiu       $t0, $t0, 0x4
.L80032814:
/* 0323C4 80032814 150BFFBF */  bne         $t0, $t3, .L80032714
/* 0323C8 80032818 25290010 */   addiu      $t1, $t1, 0x10
/* 0323CC 8003281C 24840001 */  addiu       $a0, $a0, 0x1
/* 0323D0 80032820 148CFF9F */  bne         $a0, $t4, .L800326A0
/* 0323D4 80032824 24C6000C */   addiu      $a2, $a2, 0xc
/* 0323D8 80032828 03E00008 */  jr          $ra
/* 0323DC 8003282C 00000000 */   nop

glabel func_80032830 # 55
/* 0323E0 80032830 00047080 */  sll         $t6, $a0, 2
/* 0323E4 80032834 3C05800A */  lui         $a1, %hi(D_8009A754)
/* 0323E8 80032838 00AE2821 */  addu        $a1, $a1, $t6
/* 0323EC 8003283C 8CA5A754 */  lw          $a1, %lo(D_8009A754)($a1)
/* 0323F0 80032840 00001025 */  move        $v0, $zero
/* 0323F4 80032844 2CA10008 */  sltiu       $at, $a1, 0x8
/* 0323F8 80032848 10200045 */  beq         $at, $zero, .L80032960
/* 0323FC 8003284C 00057880 */   sll        $t7, $a1, 2
/* 032400 80032850 3C01800A */  lui         $at, %hi(jtbl_800A60A4)
/* 032404 80032854 002F0821 */  addu        $at, $at, $t7
/* 032408 80032858 8C2F60A4 */  lw          $t7, %lo(jtbl_800A60A4)($at)
/* 03240C 8003285C 01E00008 */  jr          $t7
/* 032410 80032860 00000000 */   nop
glabel jmplabel_80032864
/* 032414 80032864 0004C0C0 */  sll         $t8, $a0, 3
/* 032418 80032868 3C19800F */  lui         $t9, %hi(D_800F1D30)
/* 03241C 8003286C 0338C821 */  addu        $t9, $t9, $t8
/* 032420 80032870 8F391D30 */  lw          $t9, %lo(D_800F1D30)($t9)
/* 032424 80032874 3C02800F */  lui         $v0, %hi(D_800F24D0)
/* 032428 80032878 00591021 */  addu        $v0, $v0, $t9
/* 03242C 8003287C 03E00008 */  jr          $ra
/* 032430 80032880 8C4224D0 */   lw         $v0, %lo(D_800F24D0)($v0)
glabel jmplabel_80032884
/* 032434 80032884 000440C0 */  sll         $t0, $a0, 3
/* 032438 80032888 3C09800F */  lui         $t1, %hi(D_800F1D30)
/* 03243C 8003288C 01284821 */  addu        $t1, $t1, $t0
/* 032440 80032890 8D291D30 */  lw          $t1, %lo(D_800F1D30)($t1)
/* 032444 80032894 3C02800F */  lui         $v0, %hi(D_800F24D0)
/* 032448 80032898 00491021 */  addu        $v0, $v0, $t1
/* 03244C 8003289C 03E00008 */  jr          $ra
/* 032450 800328A0 844224D0 */   lh         $v0, %lo(D_800F24D0)($v0)
glabel jmplabel_800328A4
/* 032454 800328A4 000450C0 */  sll         $t2, $a0, 3
/* 032458 800328A8 3C0B800F */  lui         $t3, %hi(D_800F1D30)
/* 03245C 800328AC 016A5821 */  addu        $t3, $t3, $t2
/* 032460 800328B0 8D6B1D30 */  lw          $t3, %lo(D_800F1D30)($t3)
/* 032464 800328B4 3C02800F */  lui         $v0, %hi(D_800F24D0)
/* 032468 800328B8 004B1021 */  addu        $v0, $v0, $t3
/* 03246C 800328BC 03E00008 */  jr          $ra
/* 032470 800328C0 944224D0 */   lhu        $v0, %lo(D_800F24D0)($v0)
glabel jmplabel_800328C4
/* 032474 800328C4 000460C0 */  sll         $t4, $a0, 3
/* 032478 800328C8 3C0D800F */  lui         $t5, %hi(D_800F1D30)
/* 03247C 800328CC 01AC6821 */  addu        $t5, $t5, $t4
/* 032480 800328D0 8DAD1D30 */  lw          $t5, %lo(D_800F1D30)($t5)
/* 032484 800328D4 3C02800F */  lui         $v0, %hi(D_800F24D0)
/* 032488 800328D8 004D1021 */  addu        $v0, $v0, $t5
/* 03248C 800328DC 03E00008 */  jr          $ra
/* 032490 800328E0 804224D0 */   lb         $v0, %lo(D_800F24D0)($v0)
glabel jmplabel_800328E4
/* 032494 800328E4 000470C0 */  sll         $t6, $a0, 3
/* 032498 800328E8 3C0F800F */  lui         $t7, %hi(D_800F1D30)
/* 03249C 800328EC 01EE7821 */  addu        $t7, $t7, $t6
/* 0324A0 800328F0 8DEF1D30 */  lw          $t7, %lo(D_800F1D30)($t7)
/* 0324A4 800328F4 3C02800F */  lui         $v0, %hi(D_800F24D0)
/* 0324A8 800328F8 004F1021 */  addu        $v0, $v0, $t7
/* 0324AC 800328FC 03E00008 */  jr          $ra
/* 0324B0 80032900 904224D0 */   lbu        $v0, %lo(D_800F24D0)($v0)
glabel jmplabel_80032904
/* 0324B4 80032904 3C19800F */  lui         $t9, %hi(D_800F1D30)
/* 0324B8 80032908 00055880 */  sll         $t3, $a1, 2
/* 0324BC 8003290C 27391D30 */  addiu       $t9, $t9, %lo(D_800F1D30)
/* 0324C0 80032910 0004C0C0 */  sll         $t8, $a0, 3
/* 0324C4 80032914 01655823 */  subu        $t3, $t3, $a1
/* 0324C8 80032918 03191821 */  addu        $v1, $t8, $t9
/* 0324CC 8003291C 000B5880 */  sll         $t3, $t3, 2
/* 0324D0 80032920 3C0C800A */  lui         $t4, %hi(D_8009A6F4)
/* 0324D4 80032924 8C680000 */  lw          $t0, 0x0($v1)
/* 0324D8 80032928 018B6021 */  addu        $t4, $t4, $t3
/* 0324DC 8003292C 8D8CA6F4 */  lw          $t4, %lo(D_8009A6F4)($t4)
/* 0324E0 80032930 3C09800F */  lui         $t1, %hi(D_800F24D0)
/* 0324E4 80032934 01284821 */  addu        $t1, $t1, $t0
/* 0324E8 80032938 912924D0 */  lbu         $t1, %lo(D_800F24D0)($t1)
/* 0324EC 8003293C 8C6A0004 */  lw          $t2, 0x4($v1)
/* 0324F0 80032940 240E0001 */  addiu       $t6, $zero, 0x1
/* 0324F4 80032944 258D001F */  addiu       $t5, $t4, 0x1f
/* 0324F8 80032948 01AE7804 */  sllv        $t7, $t5, $t6
/* 0324FC 8003294C 000FC040 */  sll         $t8, $t7, 1
/* 032500 80032950 2719FFFF */  addiu       $t9, $t8, -0x1
/* 032504 80032954 01493007 */  srav        $a2, $t2, $t1
/* 032508 80032958 03E00008 */  jr          $ra
/* 03250C 8003295C 00D91024 */   and        $v0, $a2, $t9
.L80032960:
/* 032510 80032960 03E00008 */  jr          $ra
/* 032514 80032964 00000000 */   nop

glabel func_80032968 # 56
/* 032518 80032968 00047080 */  sll         $t6, $a0, 2
/* 03251C 8003296C 3C03800A */  lui         $v1, %hi(D_8009A754)
/* 032520 80032970 006E1821 */  addu        $v1, $v1, $t6
/* 032524 80032974 8C63A754 */  lw          $v1, %lo(D_8009A754)($v1)
/* 032528 80032978 3C18800A */  lui         $t8, %hi(D_8009A6F4)
/* 03252C 8003297C 2718A6F4 */  addiu       $t8, $t8, %lo(D_8009A6F4)
/* 032530 80032980 00037880 */  sll         $t7, $v1, 2
/* 032534 80032984 01E37823 */  subu        $t7, $t7, $v1
/* 032538 80032988 000F7880 */  sll         $t7, $t7, 2
/* 03253C 8003298C 01F83021 */  addu        $a2, $t7, $t8
/* 032540 80032990 8CC70004 */  lw          $a3, 0x4($a2)
/* 032544 80032994 00C01025 */  move        $v0, $a2
/* 032548 80032998 0003C880 */  sll         $t9, $v1, 2
/* 03254C 8003299C 00A7082A */  slt         $at, $a1, $a3
/* 032550 800329A0 50200004 */  beql        $at, $zero, .L800329B4
/* 032554 800329A4 8C470008 */   lw         $a3, 0x8($v0)
/* 032558 800329A8 10000006 */  b           .L800329C4
/* 03255C 800329AC 00E02825 */   move       $a1, $a3
/* 032560 800329B0 8C470008 */  lw          $a3, 0x8($v0)
.L800329B4:
/* 032564 800329B4 00E5082A */  slt         $at, $a3, $a1
/* 032568 800329B8 50200003 */  beql        $at, $zero, .L800329C8
/* 03256C 800329BC 2C610008 */   sltiu      $at, $v1, 0x8
/* 032570 800329C0 00E02825 */  move        $a1, $a3
.L800329C4:
/* 032574 800329C4 2C610008 */  sltiu       $at, $v1, 0x8
.L800329C8:
/* 032578 800329C8 10200051 */  beq         $at, $zero, .L80032B10
/* 03257C 800329CC 3C01800A */   lui        $at, %hi(jtbl_800A60C4)
/* 032580 800329D0 00390821 */  addu        $at, $at, $t9
/* 032584 800329D4 8C3960C4 */  lw          $t9, %lo(jtbl_800A60C4)($at)
/* 032588 800329D8 03200008 */  jr          $t9
/* 03258C 800329DC 00000000 */   nop
glabel jmplabel_800329E0
/* 032590 800329E0 000458C0 */  sll         $t3, $a0, 3
/* 032594 800329E4 3C0C800F */  lui         $t4, %hi(D_800F1D30)
/* 032598 800329E8 018B6021 */  addu        $t4, $t4, $t3
/* 03259C 800329EC 8D8C1D30 */  lw          $t4, %lo(D_800F1D30)($t4)
/* 0325A0 800329F0 3C0A800F */  lui         $t2, %hi(D_800F24D0)
/* 0325A4 800329F4 254A24D0 */  addiu       $t2, $t2, %lo(D_800F24D0)
/* 0325A8 800329F8 014C6821 */  addu        $t5, $t2, $t4
/* 0325AC 800329FC ADA50000 */  sw          $a1, 0x0($t5)
/* 0325B0 80032A00 03E00008 */  jr          $ra
/* 0325B4 80032A04 00A01025 */   move       $v0, $a1
glabel jmplabel_80032A08
/* 0325B8 80032A08 000470C0 */  sll         $t6, $a0, 3
/* 0325BC 80032A0C 3C0F800F */  lui         $t7, %hi(D_800F1D30)
/* 0325C0 80032A10 01EE7821 */  addu        $t7, $t7, $t6
/* 0325C4 80032A14 8DEF1D30 */  lw          $t7, %lo(D_800F1D30)($t7)
/* 0325C8 80032A18 3C0A800F */  lui         $t2, %hi(D_800F24D0)
/* 0325CC 80032A1C 254A24D0 */  addiu       $t2, $t2, %lo(D_800F24D0)
/* 0325D0 80032A20 014FC021 */  addu        $t8, $t2, $t7
/* 0325D4 80032A24 A7050000 */  sh          $a1, 0x0($t8)
/* 0325D8 80032A28 03E00008 */  jr          $ra
/* 0325DC 80032A2C 00A01025 */   move       $v0, $a1
glabel jmplabel_80032A30
/* 0325E0 80032A30 0004C8C0 */  sll         $t9, $a0, 3
/* 0325E4 80032A34 3C0B800F */  lui         $t3, %hi(D_800F1D30)
/* 0325E8 80032A38 01795821 */  addu        $t3, $t3, $t9
/* 0325EC 80032A3C 8D6B1D30 */  lw          $t3, %lo(D_800F1D30)($t3)
/* 0325F0 80032A40 3C0A800F */  lui         $t2, %hi(D_800F24D0)
/* 0325F4 80032A44 254A24D0 */  addiu       $t2, $t2, %lo(D_800F24D0)
/* 0325F8 80032A48 014B6021 */  addu        $t4, $t2, $t3
/* 0325FC 80032A4C A5850000 */  sh          $a1, 0x0($t4)
/* 032600 80032A50 03E00008 */  jr          $ra
/* 032604 80032A54 00A01025 */   move       $v0, $a1
glabel jmplabel_80032A58
/* 032608 80032A58 000468C0 */  sll         $t5, $a0, 3
/* 03260C 80032A5C 3C0E800F */  lui         $t6, %hi(D_800F1D30)
/* 032610 80032A60 01CD7021 */  addu        $t6, $t6, $t5
/* 032614 80032A64 8DCE1D30 */  lw          $t6, %lo(D_800F1D30)($t6)
/* 032618 80032A68 3C0A800F */  lui         $t2, %hi(D_800F24D0)
/* 03261C 80032A6C 254A24D0 */  addiu       $t2, $t2, %lo(D_800F24D0)
/* 032620 80032A70 014E7821 */  addu        $t7, $t2, $t6
/* 032624 80032A74 A1E50000 */  sb          $a1, 0x0($t7)
/* 032628 80032A78 03E00008 */  jr          $ra
/* 03262C 80032A7C 00A01025 */   move       $v0, $a1
glabel jmplabel_80032A80
/* 032630 80032A80 0004C0C0 */  sll         $t8, $a0, 3
/* 032634 80032A84 3C19800F */  lui         $t9, %hi(D_800F1D30)
/* 032638 80032A88 0338C821 */  addu        $t9, $t9, $t8
/* 03263C 80032A8C 8F391D30 */  lw          $t9, %lo(D_800F1D30)($t9)
/* 032640 80032A90 3C0A800F */  lui         $t2, %hi(D_800F24D0)
/* 032644 80032A94 254A24D0 */  addiu       $t2, $t2, %lo(D_800F24D0)
/* 032648 80032A98 01595821 */  addu        $t3, $t2, $t9
/* 03264C 80032A9C A1650000 */  sb          $a1, 0x0($t3)
/* 032650 80032AA0 03E00008 */  jr          $ra
/* 032654 80032AA4 00A01025 */   move       $v0, $a1
glabel jmplabel_80032AA8
/* 032658 80032AA8 8CCE0000 */  lw          $t6, 0x0($a2)
/* 03265C 80032AAC 3C0D800F */  lui         $t5, %hi(D_800F1D30)
/* 032660 80032AB0 25AD1D30 */  addiu       $t5, $t5, %lo(D_800F1D30)
/* 032664 80032AB4 000460C0 */  sll         $t4, $a0, 3
/* 032668 80032AB8 24180001 */  addiu       $t8, $zero, 0x1
/* 03266C 80032ABC 25CF001F */  addiu       $t7, $t6, 0x1f
/* 032670 80032AC0 01F8C804 */  sllv        $t9, $t7, $t8
/* 032674 80032AC4 018D1021 */  addu        $v0, $t4, $t5
/* 032678 80032AC8 8C580000 */  lw          $t8, 0x0($v0)
/* 03267C 80032ACC 3C0A800F */  lui         $t2, %hi(D_800F24D0)
/* 032680 80032AD0 8C490004 */  lw          $t1, 0x4($v0)
/* 032684 80032AD4 254A24D0 */  addiu       $t2, $t2, %lo(D_800F24D0)
/* 032688 80032AD8 00195840 */  sll         $t3, $t9, 1
/* 03268C 80032ADC 01584021 */  addu        $t0, $t2, $t8
/* 032690 80032AE0 910F0000 */  lbu         $t7, 0x0($t0)
/* 032694 80032AE4 256CFFFF */  addiu       $t4, $t3, -0x1
/* 032698 80032AE8 012C6804 */  sllv        $t5, $t1, $t4
/* 03269C 80032AEC 01A0C827 */  nor         $t9, $t5, $zero
/* 0326A0 80032AF0 01F95824 */  and         $t3, $t7, $t9
/* 0326A4 80032AF4 A10B0000 */  sb          $t3, 0x0($t0)
/* 0326A8 80032AF8 8C4C0000 */  lw          $t4, 0x0($v0)
/* 0326AC 80032AFC 01257004 */  sllv        $t6, $t1, $a1
/* 0326B0 80032B00 014C4021 */  addu        $t0, $t2, $t4
/* 0326B4 80032B04 910D0000 */  lbu         $t5, 0x0($t0)
/* 0326B8 80032B08 01AE7025 */  or          $t6, $t5, $t6
/* 0326BC 80032B0C A10E0000 */  sb          $t6, 0x0($t0)
.L80032B10:
/* 0326C0 80032B10 03E00008 */  jr          $ra
/* 0326C4 80032B14 00A01025 */   move       $v0, $a1

glabel func_80032B18 # 57
/* 0326C8 80032B18 00047080 */  sll         $t6, $a0, 2
/* 0326CC 80032B1C 3C0F800A */  lui         $t7, %hi(D_8009A754)
/* 0326D0 80032B20 01EE7821 */  addu        $t7, $t7, $t6
/* 0326D4 80032B24 8DEFA754 */  lw          $t7, %lo(D_8009A754)($t7)
/* 0326D8 80032B28 3C19800A */  lui         $t9, %hi(D_8009A6F4)
/* 0326DC 80032B2C 2739A6F4 */  addiu       $t9, $t9, %lo(D_8009A6F4)
/* 0326E0 80032B30 000FC080 */  sll         $t8, $t7, 2
/* 0326E4 80032B34 030FC023 */  subu        $t8, $t8, $t7
/* 0326E8 80032B38 0018C080 */  sll         $t8, $t8, 2
/* 0326EC 80032B3C 03191821 */  addu        $v1, $t8, $t9
/* 0326F0 80032B40 03E00008 */  jr          $ra
/* 0326F4 80032B44 8C620004 */   lw         $v0, 0x4($v1)

glabel func_80032B48 # 58
/* 0326F8 80032B48 00047080 */  sll         $t6, $a0, 2
/* 0326FC 80032B4C 3C0F800A */  lui         $t7, %hi(D_8009A754)
/* 032700 80032B50 01EE7821 */  addu        $t7, $t7, $t6
/* 032704 80032B54 8DEFA754 */  lw          $t7, %lo(D_8009A754)($t7)
/* 032708 80032B58 3C19800A */  lui         $t9, %hi(D_8009A6F4)
/* 03270C 80032B5C 2739A6F4 */  addiu       $t9, $t9, %lo(D_8009A6F4)
/* 032710 80032B60 000FC080 */  sll         $t8, $t7, 2
/* 032714 80032B64 030FC023 */  subu        $t8, $t8, $t7
/* 032718 80032B68 0018C080 */  sll         $t8, $t8, 2
/* 03271C 80032B6C 03191821 */  addu        $v1, $t8, $t9
/* 032720 80032B70 03E00008 */  jr          $ra
/* 032724 80032B74 8C620008 */   lw         $v0, 0x8($v1)

glabel func_80032B78 # 59
/* 032728 80032B78 00047040 */  sll         $t6, $a0, 1
/* 03272C 80032B7C 05C1000F */  bgez        $t6, .L80032BBC
/* 032730 80032B80 00801025 */   move       $v0, $a0
/* 032734 80032B84 3C013FFF */  lui         $at, 0x3fff
/* 032738 80032B88 3421FFFF */  ori         $at, $at, 0xffff
/* 03273C 80032B8C 3C19800B */  lui         $t9, %hi(D_800AE4F8)
/* 032740 80032B90 8F39E4F8 */  lw          $t9, %lo(D_800AE4F8)($t9)
/* 032744 80032B94 00817824 */  and         $t7, $a0, $at
/* 032748 80032B98 000FC080 */  sll         $t8, $t7, 2
/* 03274C 80032B9C 030FC023 */  subu        $t8, $t8, $t7
/* 032750 80032BA0 0018C140 */  sll         $t8, $t8, 5
/* 032754 80032BA4 00194080 */  sll         $t0, $t9, 2
/* 032758 80032BA8 03084821 */  addu        $t1, $t8, $t0
/* 03275C 80032BAC 3C02800A */  lui         $v0, %hi(D_8009AB28)
/* 032760 80032BB0 00491021 */  addu        $v0, $v0, $t1
/* 032764 80032BB4 03E00008 */  jr          $ra
/* 032768 80032BB8 8C42AB28 */   lw         $v0, %lo(D_8009AB28)($v0)
.L80032BBC:
/* 03276C 80032BBC 03E00008 */  jr          $ra
/* 032770 80032BC0 00000000 */   nop

glabel func_80032BC4 # 60
/* 032774 80032BC4 03E00008 */  jr          $ra
/* 032778 80032BC8 00000000 */   nop

glabel func_80032BCC # 61
/* 03277C 80032BCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032780 80032BD0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 032784 80032BD4 0C00CADE */  jal         func_80032B78
/* 032788 80032BD8 00000000 */   nop
/* 03278C 80032BDC 0C00CAC6 */  jal         func_80032B18
/* 032790 80032BE0 00402025 */   move       $a0, $v0
/* 032794 80032BE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032798 80032BE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03279C 80032BEC 03E00008 */  jr          $ra
/* 0327A0 80032BF0 00000000 */   nop

glabel func_80032BF4 # 62
/* 0327A4 80032BF4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0327A8 80032BF8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0327AC 80032BFC 0C00CADE */  jal         func_80032B78
/* 0327B0 80032C00 00000000 */   nop
/* 0327B4 80032C04 0C00CAD2 */  jal         func_80032B48
/* 0327B8 80032C08 00402025 */   move       $a0, $v0
/* 0327BC 80032C0C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0327C0 80032C10 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0327C4 80032C14 03E00008 */  jr          $ra
/* 0327C8 80032C18 00000000 */   nop

glabel func_80032C1C # 63
/* 0327CC 80032C1C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0327D0 80032C20 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0327D4 80032C24 0C00CADE */  jal         func_80032B78
/* 0327D8 80032C28 00000000 */   nop
/* 0327DC 80032C2C 0C00CA0C */  jal         func_80032830
/* 0327E0 80032C30 00402025 */   move       $a0, $v0
/* 0327E4 80032C34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0327E8 80032C38 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0327EC 80032C3C 03E00008 */  jr          $ra
/* 0327F0 80032C40 00000000 */   nop

glabel func_80032C44 # 64
/* 0327F4 80032C44 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0327F8 80032C48 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0327FC 80032C4C 0C00CADE */  jal         func_80032B78
/* 032800 80032C50 AFA5001C */   sw         $a1, 0x1c($sp)
/* 032804 80032C54 00402025 */  move        $a0, $v0
/* 032808 80032C58 0C00CA5A */  jal         func_80032968
/* 03280C 80032C5C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 032810 80032C60 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032814 80032C64 27BD0018 */  addiu       $sp, $sp, 0x18
/* 032818 80032C68 03E00008 */  jr          $ra
/* 03281C 80032C6C 00000000 */   nop

glabel func_80032C70 # 65
/* 032820 80032C70 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032824 80032C74 AFBF0014 */  sw          $ra, 0x14($sp)
/* 032828 80032C78 AFA40018 */  sw          $a0, 0x18($sp)
/* 03282C 80032C7C 0C00CB07 */  jal         func_80032C1C
/* 032830 80032C80 AFA5001C */   sw         $a1, 0x1c($sp)
/* 032834 80032C84 8FAE001C */  lw          $t6, 0x1c($sp)
/* 032838 80032C88 8FA40018 */  lw          $a0, 0x18($sp)
/* 03283C 80032C8C 0C00CB11 */  jal         func_80032C44
/* 032840 80032C90 004E2821 */   addu       $a1, $v0, $t6
/* 032844 80032C94 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032848 80032C98 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03284C 80032C9C 03E00008 */  jr          $ra
/* 032850 80032CA0 00000000 */   nop

glabel func_80032CA4 # 66
/* 032854 80032CA4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032858 80032CA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03285C 80032CAC 0C00CADE */  jal         func_80032B78
/* 032860 80032CB0 00000000 */   nop
/* 032864 80032CB4 2401FFFF */  addiu       $at, $zero, -0x1
/* 032868 80032CB8 14410003 */  bne         $v0, $at, .L80032CC8
/* 03286C 80032CBC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 032870 80032CC0 10000002 */  b           .L80032CCC
/* 032874 80032CC4 00001025 */   move       $v0, $zero
.L80032CC8:
/* 032878 80032CC8 24020001 */  addiu       $v0, $zero, 0x1
.L80032CCC:
/* 03287C 80032CCC 03E00008 */  jr          $ra
/* 032880 80032CD0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_80032CD4 # 67
/* 032884 80032CD4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032888 80032CD8 3C02800F */  lui         $v0, %hi(D_800F2544)
/* 03288C 80032CDC 24422544 */  addiu       $v0, $v0, %lo(D_800F2544)
/* 032890 80032CE0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 032894 80032CE4 3C06800A */  lui         $a2, %hi(D_8009A6F0)
/* 032898 80032CE8 24C6A6F0 */  addiu       $a2, $a2, %lo(D_8009A6F0)
/* 03289C 80032CEC 90440000 */  lbu         $a0, 0x0($v0)
/* 0328A0 80032CF0 90450003 */  lbu         $a1, 0x3($v0)
/* 0328A4 80032CF4 0C001170 */  jal         func_800045C0
/* 0328A8 80032CF8 24070001 */   addiu      $a3, $zero, 0x1
/* 0328AC 80032CFC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0328B0 80032D00 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0328B4 80032D04 03E00008 */  jr          $ra
/* 0328B8 80032D08 00000000 */   nop

glabel func_80032D0C # 68
/* 0328BC 80032D0C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0328C0 80032D10 3C02800F */  lui         $v0, %hi(D_800F2544)
/* 0328C4 80032D14 24422544 */  addiu       $v0, $v0, %lo(D_800F2544)
/* 0328C8 80032D18 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0328CC 80032D1C 3C06800A */  lui         $a2, %hi(D_8009A6F0)
/* 0328D0 80032D20 24C6A6F0 */  addiu       $a2, $a2, %lo(D_8009A6F0)
/* 0328D4 80032D24 90440000 */  lbu         $a0, 0x0($v0)
/* 0328D8 80032D28 90450003 */  lbu         $a1, 0x3($v0)
/* 0328DC 80032D2C 0C001147 */  jal         func_8000451C
/* 0328E0 80032D30 24070001 */   addiu      $a3, $zero, 0x1
/* 0328E4 80032D34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0328E8 80032D38 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0328EC 80032D3C 03E00008 */  jr          $ra
/* 0328F0 80032D40 00000000 */   nop

glabel func_80032D44 # 69
/* 0328F4 80032D44 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0328F8 80032D48 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0328FC 80032D4C AFA40018 */  sw          $a0, 0x18($sp)
/* 032900 80032D50 3C05800F */  lui         $a1, %hi(D_800EF790)
/* 032904 80032D54 8CA5F790 */  lw          $a1, %lo(D_800EF790)($a1)
/* 032908 80032D58 0C00CB11 */  jal         func_80032C44
/* 03290C 80032D5C 24040001 */   addiu      $a0, $zero, 0x1
/* 032910 80032D60 3C05800F */  lui         $a1, %hi(D_800EF796)
/* 032914 80032D64 90A5F796 */  lbu         $a1, %lo(D_800EF796)($a1)
/* 032918 80032D68 0C00CB11 */  jal         func_80032C44
/* 03291C 80032D6C 24040002 */   addiu      $a0, $zero, 0x2
/* 032920 80032D70 3C05800F */  lui         $a1, %hi(D_800EF79C)
/* 032924 80032D74 8CA5F79C */  lw          $a1, %lo(D_800EF79C)($a1)
/* 032928 80032D78 0C00CB11 */  jal         func_80032C44
/* 03292C 80032D7C 24040003 */   addiu      $a0, $zero, 0x3
/* 032930 80032D80 0C00C986 */  jal         func_80032618
/* 032934 80032D84 8FA40018 */   lw         $a0, 0x18($sp)
/* 032938 80032D88 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03293C 80032D8C 3C03800F */  lui         $v1, %hi(D_800F2544)
/* 032940 80032D90 24632544 */  addiu       $v1, $v1, %lo(D_800F2544)
/* 032944 80032D94 0062C021 */  addu        $t8, $v1, $v0
/* 032948 80032D98 3C06800F */  lui         $a2, %hi(D_800F24D0)
/* 03294C 80032D9C 006E7821 */  addu        $t7, $v1, $t6
/* 032950 80032DA0 91E40000 */  lbu         $a0, 0x0($t7)
/* 032954 80032DA4 24C624D0 */  addiu       $a2, $a2, %lo(D_800F24D0)
/* 032958 80032DA8 93050000 */  lbu         $a1, 0x0($t8)
/* 03295C 80032DAC 0C001170 */  jal         func_800045C0
/* 032960 80032DB0 24070074 */   addiu      $a3, $zero, 0x74
/* 032964 80032DB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032968 80032DB8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03296C 80032DBC 03E00008 */  jr          $ra
/* 032970 80032DC0 00000000 */   nop

glabel func_80032DC4 # 70
/* 032974 80032DC4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032978 80032DC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03297C 80032DCC 0C00C986 */  jal         func_80032618
/* 032980 80032DD0 AFA40018 */   sw         $a0, 0x18($sp)
/* 032984 80032DD4 8FAE0018 */  lw          $t6, 0x18($sp)
/* 032988 80032DD8 3C03800F */  lui         $v1, %hi(D_800F2544)
/* 03298C 80032DDC 24632544 */  addiu       $v1, $v1, %lo(D_800F2544)
/* 032990 80032DE0 0062C021 */  addu        $t8, $v1, $v0
/* 032994 80032DE4 3C06800F */  lui         $a2, %hi(D_800F24D0)
/* 032998 80032DE8 006E7821 */  addu        $t7, $v1, $t6
/* 03299C 80032DEC 91E40000 */  lbu         $a0, 0x0($t7)
/* 0329A0 80032DF0 24C624D0 */  addiu       $a2, $a2, %lo(D_800F24D0)
/* 0329A4 80032DF4 93050000 */  lbu         $a1, 0x0($t8)
/* 0329A8 80032DF8 0C001147 */  jal         func_8000451C
/* 0329AC 80032DFC 24070074 */   addiu      $a3, $zero, 0x74
/* 0329B0 80032E00 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0329B4 80032E04 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0329B8 80032E08 03E00008 */  jr          $ra
/* 0329BC 80032E0C 00000000 */   nop

glabel func_80032E10 # 71
/* 0329C0 80032E10 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0329C4 80032E14 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0329C8 80032E18 0C00CB07 */  jal         func_80032C1C
/* 0329CC 80032E1C 2404000C */   addiu      $a0, $zero, 0xc
/* 0329D0 80032E20 0C0449F7 */  jal         func_801127DC
/* 0329D4 80032E24 00402025 */   move       $a0, $v0
/* 0329D8 80032E28 0C00CB07 */  jal         func_80032C1C
/* 0329DC 80032E2C 24040001 */   addiu      $a0, $zero, 0x1
/* 0329E0 80032E30 3C01800F */  lui         $at, %hi(D_800EF790)
/* 0329E4 80032E34 AC22F790 */  sw          $v0, %lo(D_800EF790)($at)
/* 0329E8 80032E38 0C00CB07 */  jal         func_80032C1C
/* 0329EC 80032E3C 24040002 */   addiu      $a0, $zero, 0x2
/* 0329F0 80032E40 3C01800F */  lui         $at, %hi(D_800EF796)
/* 0329F4 80032E44 A022F796 */  sb          $v0, %lo(D_800EF796)($at)
/* 0329F8 80032E48 0C00CB07 */  jal         func_80032C1C
/* 0329FC 80032E4C 24040003 */   addiu      $a0, $zero, 0x3
/* 032A00 80032E50 3C01800F */  lui         $at, %hi(D_800EF79C)
/* 032A04 80032E54 AC22F79C */  sw          $v0, %lo(D_800EF79C)($at)
/* 032A08 80032E58 0C00CB07 */  jal         func_80032C1C
/* 032A0C 80032E5C 24040009 */   addiu      $a0, $zero, 0x9
/* 032A10 80032E60 240E0002 */  addiu       $t6, $zero, 0x2
/* 032A14 80032E64 0C007E8A */  jal         func_8001FA28
/* 032A18 80032E68 01C22023 */   subu       $a0, $t6, $v0
/* 032A1C 80032E6C 3C013F80 */  lui         $at, 0x3f80
/* 032A20 80032E70 44816000 */  mtc1        $at, $f12
/* 032A24 80032E74 0C044A7A */  jal         func_801129E8
/* 032A28 80032E78 00000000 */   nop
/* 032A2C 80032E7C 3C013F80 */  lui         $at, 0x3f80
/* 032A30 80032E80 44816000 */  mtc1        $at, $f12
/* 032A34 80032E84 0C044AA6 */  jal         func_80112A98
/* 032A38 80032E88 00000000 */   nop
/* 032A3C 80032E8C 0C00CB07 */  jal         func_80032C1C
/* 032A40 80032E90 00002025 */   move       $a0, $zero
/* 032A44 80032E94 0C00AB41 */  jal         func_8002AD04
/* 032A48 80032E98 00402025 */   move       $a0, $v0
/* 032A4C 80032E9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032A50 80032EA0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 032A54 80032EA4 03E00008 */  jr          $ra
/* 032A58 80032EA8 00000000 */   nop

glabel func_80032EAC # 72
/* 032A5C 80032EAC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032A60 80032EB0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 032A64 80032EB4 3C04800F */  lui         $a0, %hi(D_800F24D0)
/* 032A68 80032EB8 248424D0 */  addiu       $a0, $a0, %lo(D_800F24D0)
/* 032A6C 80032EBC 0C014388 */  jal         bzero
/* 032A70 80032EC0 24050074 */   addiu      $a1, $zero, 0x74
/* 032A74 80032EC4 24040044 */  addiu       $a0, $zero, 0x44
/* 032A78 80032EC8 0C00CB11 */  jal         func_80032C44
/* 032A7C 80032ECC 24050001 */   addiu      $a1, $zero, 0x1
/* 032A80 80032ED0 2404003B */  addiu       $a0, $zero, 0x3b
/* 032A84 80032ED4 0C00CB11 */  jal         func_80032C44
/* 032A88 80032ED8 24050001 */   addiu      $a1, $zero, 0x1
/* 032A8C 80032EDC 24040056 */  addiu       $a0, $zero, 0x56
/* 032A90 80032EE0 0C00CB11 */  jal         func_80032C44
/* 032A94 80032EE4 24050001 */   addiu      $a1, $zero, 0x1
/* 032A98 80032EE8 0C00CAFD */  jal         func_80032BF4
/* 032A9C 80032EEC 2404000A */   addiu      $a0, $zero, 0xa
/* 032AA0 80032EF0 2404000A */  addiu       $a0, $zero, 0xa
/* 032AA4 80032EF4 0C00CB11 */  jal         func_80032C44
/* 032AA8 80032EF8 00402825 */   move       $a1, $v0
/* 032AAC 80032EFC 0C00CAFD */  jal         func_80032BF4
/* 032AB0 80032F00 2404000B */   addiu      $a0, $zero, 0xb
/* 032AB4 80032F04 2404000B */  addiu       $a0, $zero, 0xb
/* 032AB8 80032F08 04410003 */  bgez        $v0, .L80032F18
/* 032ABC 80032F0C 00022843 */   sra        $a1, $v0, 1
/* 032AC0 80032F10 24410001 */  addiu       $at, $v0, 0x1
/* 032AC4 80032F14 00012843 */  sra         $a1, $at, 1
.L80032F18:
/* 032AC8 80032F18 0C00CB11 */  jal         func_80032C44
/* 032ACC 80032F1C 00000000 */   nop
/* 032AD0 80032F20 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032AD4 80032F24 27BD0018 */  addiu       $sp, $sp, 0x18
/* 032AD8 80032F28 03E00008 */  jr          $ra
/* 032ADC 80032F2C 00000000 */   nop

glabel func_80032F30 # 73
/* 032AE0 80032F30 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 032AE4 80032F34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 032AE8 80032F38 3C04800F */  lui         $a0, %hi(D_800F24D0)
/* 032AEC 80032F3C 248424D0 */  addiu       $a0, $a0, %lo(D_800F24D0)
/* 032AF0 80032F40 0C014388 */  jal         bzero
/* 032AF4 80032F44 24050074 */   addiu      $a1, $zero, 0x74
/* 032AF8 80032F48 3C04800F */  lui         $a0, %hi(D_800F1D30)
/* 032AFC 80032F4C 24841D30 */  addiu       $a0, $a0, %lo(D_800F1D30)
/* 032B00 80032F50 0C014388 */  jal         bzero
/* 032B04 80032F54 240507A0 */   addiu      $a1, $zero, 0x7a0
/* 032B08 80032F58 0C00C99B */  jal         func_8003266C
/* 032B0C 80032F5C 00000000 */   nop
/* 032B10 80032F60 0C00CAF1 */  jal         func_80032BC4
/* 032B14 80032F64 00000000 */   nop
/* 032B18 80032F68 0C00C99F */  jal         func_8003267C
/* 032B1C 80032F6C 00000000 */   nop
/* 032B20 80032F70 0C00C99D */  jal         func_80032674
/* 032B24 80032F74 00000000 */   nop
/* 032B28 80032F78 0C00CBAB */  jal         func_80032EAC
/* 032B2C 80032F7C 00000000 */   nop
/* 032B30 80032F80 0C00C954 */  jal         func_80032550
/* 032B34 80032F84 00000000 */   nop
/* 032B38 80032F88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 032B3C 80032F8C 3C01800A */  lui         $at, %hi(D_8009A6F0)
/* 032B40 80032F90 A020A6F0 */  sb          $zero, %lo(D_8009A6F0)($at)
/* 032B44 80032F94 03E00008 */  jr          $ra
/* 032B48 80032F98 27BD0018 */   addiu      $sp, $sp, 0x18
/* 032B4C 80032F9C 00000000 */  nop
