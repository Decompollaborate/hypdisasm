.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001EAD0 # 0
/* 01E680 8001EAD0 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 01E684 8001EAD4 AFB1002C */  sw          $s1, 0x2c($sp)
/* 01E688 8001EAD8 00808825 */  move        $s1, $a0
/* 01E68C 8001EADC AFBF0034 */  sw          $ra, 0x34($sp)
/* 01E690 8001EAE0 AFB20030 */  sw          $s2, 0x30($sp)
/* 01E694 8001EAE4 00803025 */  move        $a2, $a0
/* 01E698 8001EAE8 00A09025 */  move        $s2, $a1
/* 01E69C 8001EAEC AFB00028 */  sw          $s0, 0x28($sp)
/* 01E6A0 8001EAF0 AFA00074 */  sw          $zero, 0x74($sp)
/* 01E6A4 8001EAF4 AFA60078 */  sw          $a2, 0x78($sp)
/* 01E6A8 8001EAF8 0C0145C8 */  jal         func_80051720
/* 01E6AC 8001EAFC 24040001 */   addiu      $a0, $zero, 0x1
/* 01E6B0 8001EB00 AFA20070 */  sw          $v0, 0x70($sp)
/* 01E6B4 8001EB04 8E2E0018 */  lw          $t6, 0x18($s1)
/* 01E6B8 8001EB08 8FA60078 */  lw          $a2, 0x78($sp)
/* 01E6BC 8001EB0C 00002025 */  move        $a0, $zero
/* 01E6C0 8001EB10 19C000E2 */  blez        $t6, .L8001EE9C
/* 01E6C4 8001EB14 00008025 */   move       $s0, $zero
/* 01E6C8 8001EB18 8E280024 */  lw          $t0, 0x24($s1)
.L8001EB1C:
/* 01E6CC 8001EB1C 8D0F0000 */  lw          $t7, 0x0($t0)
/* 01E6D0 8001EB20 55E000D9 */  bnel        $t7, $zero, .L8001EE88
/* 01E6D4 8001EB24 8CD90018 */   lw         $t9, 0x18($a2)
/* 01E6D8 8001EB28 AD120004 */  sw          $s2, 0x4($t0)
/* 01E6DC 8001EB2C 2418000A */  addiu       $t8, $zero, 0xa
/* 01E6E0 8001EB30 A7B80068 */  sh          $t8, 0x68($sp)
/* 01E6E4 8001EB34 A7A0006A */  sh          $zero, 0x6a($sp)
/* 01E6E8 8001EB38 A3A0006C */  sb          $zero, 0x6c($sp)
/* 01E6EC 8001EB3C 8E390024 */  lw          $t9, 0x24($s1)
/* 01E6F0 8001EB40 240A0000 */  addiu       $t2, $zero, 0x0
/* 01E6F4 8001EB44 240B0000 */  addiu       $t3, $zero, 0x0
/* 01E6F8 8001EB48 03304821 */  addu        $t1, $t9, $s0
/* 01E6FC 8001EB4C AD2A0028 */  sw          $t2, 0x28($t1)
/* 01E700 8001EB50 AD2B002C */  sw          $t3, 0x2c($t1)
/* 01E704 8001EB54 924C000F */  lbu         $t4, 0xf($s2)
/* 01E708 8001EB58 29810002 */  slti        $at, $t4, 0x2
/* 01E70C 8001EB5C 5420000F */  bnel        $at, $zero, .L8001EB9C
/* 01E710 8001EB60 00003025 */   move       $a2, $zero
/* 01E714 8001EB64 0C0142B4 */  jal         func_80050AD0
/* 01E718 8001EB68 00000000 */   nop
/* 01E71C 8001EB6C 9244000F */  lbu         $a0, 0xf($s2)
/* 01E720 8001EB70 00046840 */  sll         $t5, $a0, 1
/* 01E724 8001EB74 25AE0001 */  addiu       $t6, $t5, 0x1
/* 01E728 8001EB78 004E001B */  divu        $zero, $v0, $t6
/* 01E72C 8001EB7C 00007810 */  mfhi        $t7
/* 01E730 8001EB80 01E43023 */  subu        $a2, $t7, $a0
/* 01E734 8001EB84 15C00002 */  bnez        $t6, .L8001EB90
/* 01E738 8001EB88 00000000 */   nop
/* 01E73C 8001EB8C 0007000D */  break       7
.L8001EB90:
/* 01E740 8001EB90 10000003 */  b           .L8001EBA0
/* 01E744 8001EB94 9258000D */   lbu        $t8, 0xd($s2)
/* 01E748 8001EB98 00003025 */  move        $a2, $zero
.L8001EB9C:
/* 01E74C 8001EB9C 9258000D */  lbu         $t8, 0xd($s2)
.L8001EBA0:
/* 01E750 8001EBA0 240A0000 */  addiu       $t2, $zero, 0x0
/* 01E754 8001EBA4 AFAA0058 */  sw          $t2, 0x58($sp)
/* 01E758 8001EBA8 00D8C821 */  addu        $t9, $a2, $t8
/* 01E75C 8001EBAC 1D400008 */  bgtz        $t2, .L8001EBD0
/* 01E760 8001EBB0 AFB9005C */   sw         $t9, 0x5c($sp)
/* 01E764 8001EBB4 05400003 */  bltz        $t2, .L8001EBC4
/* 01E768 8001EBB8 240C0000 */   addiu      $t4, $zero, 0x0
/* 01E76C 8001EBBC 10000005 */  b           .L8001EBD4
/* 01E770 8001EBC0 8FAE0058 */   lw         $t6, 0x58($sp)
.L8001EBC4:
/* 01E774 8001EBC4 240D0000 */  addiu       $t5, $zero, 0x0
/* 01E778 8001EBC8 AFAD005C */  sw          $t5, 0x5c($sp)
/* 01E77C 8001EBCC AFAC0058 */  sw          $t4, 0x58($sp)
.L8001EBD0:
/* 01E780 8001EBD0 8FAE0058 */  lw          $t6, 0x58($sp)
.L8001EBD4:
/* 01E784 8001EBD4 8FAF005C */  lw          $t7, 0x5c($sp)
/* 01E788 8001EBD8 05C20009 */  bltzl       $t6, .L8001EC00
/* 01E78C 8001EBDC 8E2C0024 */   lw         $t4, 0x24($s1)
/* 01E790 8001EBE0 1DC00002 */  bgtz        $t6, .L8001EBEC
/* 01E794 8001EBE4 2DE10100 */   sltiu      $at, $t7, 0x100
/* 01E798 8001EBE8 14200004 */  bnez        $at, .L8001EBFC
.L8001EBEC:
/* 01E79C 8001EBEC 24180000 */   addiu      $t8, $zero, 0x0
/* 01E7A0 8001EBF0 241900FF */  addiu       $t9, $zero, 0xff
/* 01E7A4 8001EBF4 AFB9005C */  sw          $t9, 0x5c($sp)
/* 01E7A8 8001EBF8 AFB80058 */  sw          $t8, 0x58($sp)
.L8001EBFC:
/* 01E7AC 8001EBFC 8E2C0024 */  lw          $t4, 0x24($s1)
.L8001EC00:
/* 01E7B0 8001EC00 8FAB005C */  lw          $t3, 0x5c($sp)
/* 01E7B4 8001EC04 01906821 */  addu        $t5, $t4, $s0
/* 01E7B8 8001EC08 ADAB0030 */  sw          $t3, 0x30($t5)
/* 01E7BC 8001EC0C 8E420004 */  lw          $v0, 0x4($s2)
/* 01E7C0 8001EC10 904E0004 */  lbu         $t6, 0x4($v0)
/* 01E7C4 8001EC14 904A0002 */  lbu         $t2, 0x2($v0)
/* 01E7C8 8001EC18 80580005 */  lb          $t8, 0x5($v0)
/* 01E7CC 8001EC1C 000E0823 */  negu        $at, $t6
/* 01E7D0 8001EC20 00017880 */  sll         $t7, $at, 2
/* 01E7D4 8001EC24 01E17823 */  subu        $t7, $t7, $at
/* 01E7D8 8001EC28 000A5880 */  sll         $t3, $t2, 2
/* 01E7DC 8001EC2C 000F78C0 */  sll         $t7, $t7, 3
/* 01E7E0 8001EC30 016A5823 */  subu        $t3, $t3, $t2
/* 01E7E4 8001EC34 000B58C0 */  sll         $t3, $t3, 3
/* 01E7E8 8001EC38 01E17821 */  addu        $t7, $t7, $at
/* 01E7EC 8001EC3C 000F7880 */  sll         $t7, $t7, 2
/* 01E7F0 8001EC40 016A5821 */  addu        $t3, $t3, $t2
/* 01E7F4 8001EC44 000B5880 */  sll         $t3, $t3, 2
/* 01E7F8 8001EC48 01F8C823 */  subu        $t9, $t7, $t8
/* 01E7FC 8001EC4C 0C0142B8 */  jal         func_80050AE0
/* 01E800 8001EC50 032B2021 */   addu       $a0, $t9, $t3
/* 01E804 8001EC54 8E2C0024 */  lw          $t4, 0x24($s1)
/* 01E808 8001EC58 240100FF */  addiu       $at, $zero, 0xff
/* 01E80C 8001EC5C 00003025 */  move        $a2, $zero
/* 01E810 8001EC60 01904821 */  addu        $t1, $t4, $s0
/* 01E814 8001EC64 E5200038 */  swc1        $f0, 0x38($t1)
/* 01E818 8001EC68 924D000E */  lbu         $t5, 0xe($s2)
/* 01E81C 8001EC6C 000D7080 */  sll         $t6, $t5, 2
/* 01E820 8001EC70 01CD7021 */  addu        $t6, $t6, $t5
/* 01E824 8001EC74 000E7080 */  sll         $t6, $t6, 2
/* 01E828 8001EC78 01CD7023 */  subu        $t6, $t6, $t5
/* 01E82C 8001EC7C 000E7080 */  sll         $t6, $t6, 2
/* 01E830 8001EC80 01CD7023 */  subu        $t6, $t6, $t5
/* 01E834 8001EC84 000E7100 */  sll         $t6, $t6, 4
/* 01E838 8001EC88 01C1001A */  div         $zero, $t6, $at
/* 01E83C 8001EC8C 00007812 */  mflo        $t7
/* 01E840 8001EC90 29E10002 */  slti        $at, $t7, 0x2
/* 01E844 8001EC94 14200019 */  bnez        $at, .L8001ECFC
/* 01E848 8001EC98 00000000 */   nop
/* 01E84C 8001EC9C 0C0142B4 */  jal         func_80050AD0
/* 01E850 8001ECA0 00000000 */   nop
/* 01E854 8001ECA4 9244000E */  lbu         $a0, 0xe($s2)
/* 01E858 8001ECA8 240100FF */  addiu       $at, $zero, 0xff
/* 01E85C 8001ECAC 0004C080 */  sll         $t8, $a0, 2
/* 01E860 8001ECB0 0304C021 */  addu        $t8, $t8, $a0
/* 01E864 8001ECB4 0018C080 */  sll         $t8, $t8, 2
/* 01E868 8001ECB8 0304C023 */  subu        $t8, $t8, $a0
/* 01E86C 8001ECBC 0018C080 */  sll         $t8, $t8, 2
/* 01E870 8001ECC0 0304C023 */  subu        $t8, $t8, $a0
/* 01E874 8001ECC4 0018C100 */  sll         $t8, $t8, 4
/* 01E878 8001ECC8 0301001A */  div         $zero, $t8, $at
/* 01E87C 8001ECCC 00005012 */  mflo        $t2
/* 01E880 8001ECD0 000AC840 */  sll         $t9, $t2, 1
/* 01E884 8001ECD4 272B0001 */  addiu       $t3, $t9, 0x1
/* 01E888 8001ECD8 004B001B */  divu        $zero, $v0, $t3
/* 01E88C 8001ECDC 00006010 */  mfhi        $t4
/* 01E890 8001ECE0 01402025 */  move        $a0, $t2
/* 01E894 8001ECE4 15600002 */  bnez        $t3, .L8001ECF0
/* 01E898 8001ECE8 00000000 */   nop
/* 01E89C 8001ECEC 0007000D */  break       7
.L8001ECF0:
/* 01E8A0 8001ECF0 01843023 */  subu        $a2, $t4, $a0
/* 01E8A4 8001ECF4 10000001 */  b           .L8001ECFC
/* 01E8A8 8001ECF8 00000000 */   nop
.L8001ECFC:
/* 01E8AC 8001ECFC 0C0142B8 */  jal         func_80050AE0
/* 01E8B0 8001ED00 00C02025 */   move       $a0, $a2
/* 01E8B4 8001ED04 8E290024 */  lw          $t1, 0x24($s1)
/* 01E8B8 8001ED08 240E0080 */  addiu       $t6, $zero, 0x80
/* 01E8BC 8001ED0C 3C013F80 */  lui         $at, 0x3f80
/* 01E8C0 8001ED10 01306821 */  addu        $t5, $t1, $s0
/* 01E8C4 8001ED14 E5A00040 */  swc1        $f0, 0x40($t5)
/* 01E8C8 8001ED18 8E2F0024 */  lw          $t7, 0x24($s1)
/* 01E8CC 8001ED1C 44812000 */  mtc1        $at, $f4
/* 01E8D0 8001ED20 3C028009 */  lui         $v0, %hi(D_8008E434)
/* 01E8D4 8001ED24 01F0C021 */  addu        $t8, $t7, $s0
/* 01E8D8 8001ED28 AF0E0034 */  sw          $t6, 0x34($t8)
/* 01E8DC 8001ED2C 8E2A0024 */  lw          $t2, 0x24($s1)
/* 01E8E0 8001ED30 2442E434 */  addiu       $v0, $v0, %lo(D_8008E434)
/* 01E8E4 8001ED34 27A50068 */  addiu       $a1, $sp, 0x68
/* 01E8E8 8001ED38 0150C821 */  addu        $t9, $t2, $s0
/* 01E8EC 8001ED3C E724003C */  swc1        $f4, 0x3c($t9)
/* 01E8F0 8001ED40 8E2C0024 */  lw          $t4, 0x24($s1)
/* 01E8F4 8001ED44 924B000C */  lbu         $t3, 0xc($s2)
/* 01E8F8 8001ED48 01904821 */  addu        $t1, $t4, $s0
/* 01E8FC 8001ED4C AD2B0048 */  sw          $t3, 0x48($t1)
/* 01E900 8001ED50 8E2D0024 */  lw          $t5, 0x24($s1)
/* 01E904 8001ED54 240C0000 */  addiu       $t4, $zero, 0x0
/* 01E908 8001ED58 01B07821 */  addu        $t7, $t5, $s0
/* 01E90C 8001ED5C ADE00044 */  sw          $zero, 0x44($t7)
/* 01E910 8001ED60 8E2E0024 */  lw          $t6, 0x24($s1)
/* 01E914 8001ED64 8C460000 */  lw          $a2, 0x0($v0)
/* 01E918 8001ED68 240D0000 */  addiu       $t5, $zero, 0x0
/* 01E91C 8001ED6C 01D0C021 */  addu        $t8, $t6, $s0
/* 01E920 8001ED70 AF060000 */  sw          $a2, 0x0($t8)
/* 01E924 8001ED74 8C4A0000 */  lw          $t2, 0x0($v0)
/* 01E928 8001ED78 AFA60074 */  sw          $a2, 0x74($sp)
/* 01E92C 8001ED7C 25590001 */  addiu       $t9, $t2, 0x1
/* 01E930 8001ED80 AC590000 */  sw          $t9, 0x0($v0)
/* 01E934 8001ED84 8E2B0024 */  lw          $t3, 0x24($s1)
/* 01E938 8001ED88 01704821 */  addu        $t1, $t3, $s0
/* 01E93C 8001ED8C AD2C0028 */  sw          $t4, 0x28($t1)
/* 01E940 8001ED90 AD2D002C */  sw          $t5, 0x2c($t1)
/* 01E944 8001ED94 8E2F0024 */  lw          $t7, 0x24($s1)
/* 01E948 8001ED98 01F02021 */  addu        $a0, $t7, $s0
/* 01E94C 8001ED9C 0C0125BE */  jal         func_800496F8
/* 01E950 8001EDA0 24840008 */   addiu      $a0, $a0, 0x8
/* 01E954 8001EDA4 8E2E0024 */  lw          $t6, 0x24($s1)
/* 01E958 8001EDA8 01D04021 */  addu        $t0, $t6, $s0
/* 01E95C 8001EDAC 8D050030 */  lw          $a1, 0x30($t0)
/* 01E960 8001EDB0 8D070034 */  lw          $a3, 0x34($t0)
/* 01E964 8001EDB4 000527C3 */  sra         $a0, $a1, 31
/* 01E968 8001EDB8 0C0144B6 */  jal         __ll_mul
/* 01E96C 8001EDBC 000737C3 */   sra        $a2, $a3, 31
/* 01E970 8001EDC0 8E270020 */  lw          $a3, 0x20($s1)
/* 01E974 8001EDC4 00402025 */  move        $a0, $v0
/* 01E978 8001EDC8 00602825 */  move        $a1, $v1
/* 01E97C 8001EDCC 0C0144B6 */  jal         __ll_mul
/* 01E980 8001EDD0 000737C3 */   sra        $a2, $a3, 31
/* 01E984 8001EDD4 00402025 */  move        $a0, $v0
/* 01E988 8001EDD8 00602825 */  move        $a1, $v1
/* 01E98C 8001EDDC 24060000 */  addiu       $a2, $zero, 0x0
/* 01E990 8001EDE0 0C014501 */  jal         __ll_rshift
/* 01E994 8001EDE4 2407000F */   addiu      $a3, $zero, 0xf
/* 01E998 8001EDE8 AFA20058 */  sw          $v0, 0x58($sp)
/* 01E99C 8001EDEC 04400009 */  bltz        $v0, .L8001EE14
/* 01E9A0 8001EDF0 AFA3005C */   sw         $v1, 0x5c($sp)
/* 01E9A4 8001EDF4 1C400003 */  bgtz        $v0, .L8001EE04
/* 01E9A8 8001EDF8 34018000 */   ori        $at, $zero, 0x8000
/* 01E9AC 8001EDFC 0061082B */  sltu        $at, $v1, $at
/* 01E9B0 8001EE00 14200004 */  bnez        $at, .L8001EE14
.L8001EE04:
/* 01E9B4 8001EE04 240C0000 */   addiu      $t4, $zero, 0x0
/* 01E9B8 8001EE08 240D7FFF */  addiu       $t5, $zero, 0x7fff
/* 01E9BC 8001EE0C AFAD005C */  sw          $t5, 0x5c($sp)
/* 01E9C0 8001EE10 AFAC0058 */  sw          $t4, 0x58($sp)
.L8001EE14:
/* 01E9C4 8001EE14 8E2B001C */  lw          $t3, 0x1c($s1)
/* 01E9C8 8001EE18 24010002 */  addiu       $at, $zero, 0x2
/* 01E9CC 8001EE1C 8FAF005C */  lw          $t7, 0x5c($sp)
/* 01E9D0 8001EE20 55610006 */  bnel        $t3, $at, .L8001EE3C
/* 01E9D4 8001EE24 8E220024 */   lw         $v0, 0x24($s1)
/* 01E9D8 8001EE28 8E220024 */  lw          $v0, 0x24($s1)
/* 01E9DC 8001EE2C 00504021 */  addu        $t0, $v0, $s0
/* 01E9E0 8001EE30 10000004 */  b           .L8001EE44
/* 01E9E4 8001EE34 8D030048 */   lw         $v1, 0x48($t0)
/* 01E9E8 8001EE38 8E220024 */  lw          $v0, 0x24($s1)
.L8001EE3C:
/* 01E9EC 8001EE3C 24030040 */  addiu       $v1, $zero, 0x40
/* 01E9F0 8001EE40 00504021 */  addu        $t0, $v0, $s0
.L8001EE44:
/* 01E9F4 8001EE44 C5060040 */  lwc1        $f6, 0x40($t0)
/* 01E9F8 8001EE48 C5080038 */  lwc1        $f8, 0x38($t0)
/* 01E9FC 8001EE4C 8E450008 */  lw          $a1, 0x8($s2)
/* 01EA00 8001EE50 AFA30010 */  sw          $v1, 0x10($sp)
/* 01EA04 8001EE54 46083282 */  mul.s       $f10, $f6, $f8
/* 01EA08 8001EE58 8D0A0044 */  lw          $t2, 0x44($t0)
/* 01EA0C 8001EE5C 00502021 */  addu        $a0, $v0, $s0
/* 01EA10 8001EE60 000F4C00 */  sll         $t1, $t7, 16
/* 01EA14 8001EE64 00093C03 */  sra         $a3, $t1, 16
/* 01EA18 8001EE68 24840008 */  addiu       $a0, $a0, 0x8
/* 01EA1C 8001EE6C AFA00018 */  sw          $zero, 0x18($sp)
/* 01EA20 8001EE70 44065000 */  mfc1        $a2, $f10
/* 01EA24 8001EE74 0C012640 */  jal         func_80049900
/* 01EA28 8001EE78 AFAA0014 */   sw         $t2, 0x14($sp)
/* 01EA2C 8001EE7C 10000007 */  b           .L8001EE9C
/* 01EA30 8001EE80 00000000 */   nop
/* 01EA34 8001EE84 8CD90018 */  lw          $t9, 0x18($a2)
.L8001EE88:
/* 01EA38 8001EE88 24840001 */  addiu       $a0, $a0, 0x1
/* 01EA3C 8001EE8C 26100050 */  addiu       $s0, $s0, 0x50
/* 01EA40 8001EE90 0099082A */  slt         $at, $a0, $t9
/* 01EA44 8001EE94 1420FF21 */  bnez        $at, .L8001EB1C
/* 01EA48 8001EE98 25080050 */   addiu      $t0, $t0, 0x50
.L8001EE9C:
/* 01EA4C 8001EE9C 0C0145C8 */  jal         func_80051720
/* 01EA50 8001EEA0 8FA40070 */   lw         $a0, 0x70($sp)
/* 01EA54 8001EEA4 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01EA58 8001EEA8 8FA20074 */  lw          $v0, 0x74($sp)
/* 01EA5C 8001EEAC 8FB00028 */  lw          $s0, 0x28($sp)
/* 01EA60 8001EEB0 8FB1002C */  lw          $s1, 0x2c($sp)
/* 01EA64 8001EEB4 8FB20030 */  lw          $s2, 0x30($sp)
/* 01EA68 8001EEB8 03E00008 */  jr          $ra
/* 01EA6C 8001EEBC 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_8001EEC0 # 1
/* 01EA70 8001EEC0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01EA74 8001EEC4 AFB40028 */  sw          $s4, 0x28($sp)
/* 01EA78 8001EEC8 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01EA7C 8001EECC 00808825 */  move        $s1, $a0
/* 01EA80 8001EED0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01EA84 8001EED4 AFB30024 */  sw          $s3, 0x24($sp)
/* 01EA88 8001EED8 0080A025 */  move        $s4, $a0
/* 01EA8C 8001EEDC AFB20020 */  sw          $s2, 0x20($sp)
/* 01EA90 8001EEE0 AFB00018 */  sw          $s0, 0x18($sp)
/* 01EA94 8001EEE4 00009825 */  move        $s3, $zero
/* 01EA98 8001EEE8 0C0145C8 */  jal         func_80051720
/* 01EA9C 8001EEEC 24040001 */   addiu      $a0, $zero, 0x1
/* 01EAA0 8001EEF0 AFA20030 */  sw          $v0, 0x30($sp)
/* 01EAA4 8001EEF4 8E2E0018 */  lw          $t6, 0x18($s1)
/* 01EAA8 8001EEF8 00009025 */  move        $s2, $zero
/* 01EAAC 8001EEFC 00008025 */  move        $s0, $zero
/* 01EAB0 8001EF00 19C00016 */  blez        $t6, .L8001EF5C
/* 01EAB4 8001EF04 00000000 */   nop
/* 01EAB8 8001EF08 8E2F0024 */  lw          $t7, 0x24($s1)
.L8001EF0C:
/* 01EABC 8001EF0C 01F01021 */  addu        $v0, $t7, $s0
/* 01EAC0 8001EF10 8C580000 */  lw          $t8, 0x0($v0)
/* 01EAC4 8001EF14 5300000C */  beql        $t8, $zero, .L8001EF48
/* 01EAC8 8001EF18 8E890018 */   lw         $t1, 0x18($s4)
/* 01EACC 8001EF1C AC400000 */  sw          $zero, 0x0($v0)
/* 01EAD0 8001EF20 8E390024 */  lw          $t9, 0x24($s1)
/* 01EAD4 8001EF24 03302021 */  addu        $a0, $t9, $s0
/* 01EAD8 8001EF28 0C01250C */  jal         func_80049430
/* 01EADC 8001EF2C 24840008 */   addiu      $a0, $a0, 0x8
/* 01EAE0 8001EF30 8E280024 */  lw          $t0, 0x24($s1)
/* 01EAE4 8001EF34 01102021 */  addu        $a0, $t0, $s0
/* 01EAE8 8001EF38 0C012528 */  jal         func_800494A0
/* 01EAEC 8001EF3C 24840008 */   addiu      $a0, $a0, 0x8
/* 01EAF0 8001EF40 26730001 */  addiu       $s3, $s3, 0x1
/* 01EAF4 8001EF44 8E890018 */  lw          $t1, 0x18($s4)
.L8001EF48:
/* 01EAF8 8001EF48 26520001 */  addiu       $s2, $s2, 0x1
/* 01EAFC 8001EF4C 26100050 */  addiu       $s0, $s0, 0x50
/* 01EB00 8001EF50 0249082A */  slt         $at, $s2, $t1
/* 01EB04 8001EF54 5420FFED */  bnel        $at, $zero, .L8001EF0C
/* 01EB08 8001EF58 8E2F0024 */   lw         $t7, 0x24($s1)
.L8001EF5C:
/* 01EB0C 8001EF5C 0C0145C8 */  jal         func_80051720
/* 01EB10 8001EF60 8FA40030 */   lw         $a0, 0x30($sp)
/* 01EB14 8001EF64 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01EB18 8001EF68 02601025 */  move        $v0, $s3
/* 01EB1C 8001EF6C 8FB30024 */  lw          $s3, 0x24($sp)
/* 01EB20 8001EF70 8FB00018 */  lw          $s0, 0x18($sp)
/* 01EB24 8001EF74 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01EB28 8001EF78 8FB20020 */  lw          $s2, 0x20($sp)
/* 01EB2C 8001EF7C 8FB40028 */  lw          $s4, 0x28($sp)
/* 01EB30 8001EF80 03E00008 */  jr          $ra
/* 01EB34 8001EF84 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001EF88 # 2
/* 01EB38 8001EF88 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01EB3C 8001EF8C AFB40024 */  sw          $s4, 0x24($sp)
/* 01EB40 8001EF90 AFB30020 */  sw          $s3, 0x20($sp)
/* 01EB44 8001EF94 AFB10018 */  sw          $s1, 0x18($sp)
/* 01EB48 8001EF98 00808825 */  move        $s1, $a0
/* 01EB4C 8001EF9C 00A0A025 */  move        $s4, $a1
/* 01EB50 8001EFA0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01EB54 8001EFA4 AFB50028 */  sw          $s5, 0x28($sp)
/* 01EB58 8001EFA8 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01EB5C 8001EFAC AFB00014 */  sw          $s0, 0x14($sp)
/* 01EB60 8001EFB0 14A00003 */  bnez        $a1, .L8001EFC0
/* 01EB64 8001EFB4 00009825 */   move       $s3, $zero
/* 01EB68 8001EFB8 10000022 */  b           .L8001F044
/* 01EB6C 8001EFBC 00001025 */   move       $v0, $zero
.L8001EFC0:
/* 01EB70 8001EFC0 0220A825 */  move        $s5, $s1
/* 01EB74 8001EFC4 0C0145C8 */  jal         func_80051720
/* 01EB78 8001EFC8 24040001 */   addiu      $a0, $zero, 0x1
/* 01EB7C 8001EFCC AFA20030 */  sw          $v0, 0x30($sp)
/* 01EB80 8001EFD0 8E2E0018 */  lw          $t6, 0x18($s1)
/* 01EB84 8001EFD4 00009025 */  move        $s2, $zero
/* 01EB88 8001EFD8 00008025 */  move        $s0, $zero
/* 01EB8C 8001EFDC 19C00016 */  blez        $t6, .L8001F038
/* 01EB90 8001EFE0 00000000 */   nop
/* 01EB94 8001EFE4 8E2F0024 */  lw          $t7, 0x24($s1)
.L8001EFE8:
/* 01EB98 8001EFE8 01F01021 */  addu        $v0, $t7, $s0
/* 01EB9C 8001EFEC 8C580000 */  lw          $t8, 0x0($v0)
/* 01EBA0 8001EFF0 5698000C */  bnel        $s4, $t8, .L8001F024
/* 01EBA4 8001EFF4 8EA90018 */   lw         $t1, 0x18($s5)
/* 01EBA8 8001EFF8 AC400000 */  sw          $zero, 0x0($v0)
/* 01EBAC 8001EFFC 8E390024 */  lw          $t9, 0x24($s1)
/* 01EBB0 8001F000 03302021 */  addu        $a0, $t9, $s0
/* 01EBB4 8001F004 0C01250C */  jal         func_80049430
/* 01EBB8 8001F008 24840008 */   addiu      $a0, $a0, 0x8
/* 01EBBC 8001F00C 8E280024 */  lw          $t0, 0x24($s1)
/* 01EBC0 8001F010 01102021 */  addu        $a0, $t0, $s0
/* 01EBC4 8001F014 0C012528 */  jal         func_800494A0
/* 01EBC8 8001F018 24840008 */   addiu      $a0, $a0, 0x8
/* 01EBCC 8001F01C 26730001 */  addiu       $s3, $s3, 0x1
/* 01EBD0 8001F020 8EA90018 */  lw          $t1, 0x18($s5)
.L8001F024:
/* 01EBD4 8001F024 26520001 */  addiu       $s2, $s2, 0x1
/* 01EBD8 8001F028 26100050 */  addiu       $s0, $s0, 0x50
/* 01EBDC 8001F02C 0249082A */  slt         $at, $s2, $t1
/* 01EBE0 8001F030 5420FFED */  bnel        $at, $zero, .L8001EFE8
/* 01EBE4 8001F034 8E2F0024 */   lw         $t7, 0x24($s1)
.L8001F038:
/* 01EBE8 8001F038 0C0145C8 */  jal         func_80051720
/* 01EBEC 8001F03C 8FA40030 */   lw         $a0, 0x30($sp)
/* 01EBF0 8001F040 02601025 */  move        $v0, $s3
.L8001F044:
/* 01EBF4 8001F044 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01EBF8 8001F048 8FB00014 */  lw          $s0, 0x14($sp)
/* 01EBFC 8001F04C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01EC00 8001F050 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01EC04 8001F054 8FB30020 */  lw          $s3, 0x20($sp)
/* 01EC08 8001F058 8FB40024 */  lw          $s4, 0x24($sp)
/* 01EC0C 8001F05C 8FB50028 */  lw          $s5, 0x28($sp)
/* 01EC10 8001F060 03E00008 */  jr          $ra
/* 01EC14 8001F064 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001F068 # 3
/* 01EC18 8001F068 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01EC1C 8001F06C AFB70030 */  sw          $s7, 0x30($sp)
/* 01EC20 8001F070 AFB6002C */  sw          $s6, 0x2c($sp)
/* 01EC24 8001F074 AFB30020 */  sw          $s3, 0x20($sp)
/* 01EC28 8001F078 AFB10018 */  sw          $s1, 0x18($sp)
/* 01EC2C 8001F07C 00808825 */  move        $s1, $a0
/* 01EC30 8001F080 00A0B025 */  move        $s6, $a1
/* 01EC34 8001F084 00C0B825 */  move        $s7, $a2
/* 01EC38 8001F088 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01EC3C 8001F08C AFB50028 */  sw          $s5, 0x28($sp)
/* 01EC40 8001F090 AFB40024 */  sw          $s4, 0x24($sp)
/* 01EC44 8001F094 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01EC48 8001F098 AFB00014 */  sw          $s0, 0x14($sp)
/* 01EC4C 8001F09C 14A00003 */  bnez        $a1, .L8001F0AC
/* 01EC50 8001F0A0 00009825 */   move       $s3, $zero
/* 01EC54 8001F0A4 10000023 */  b           .L8001F134
/* 01EC58 8001F0A8 00001025 */   move       $v0, $zero
.L8001F0AC:
/* 01EC5C 8001F0AC 0220A025 */  move        $s4, $s1
/* 01EC60 8001F0B0 0C0145C8 */  jal         func_80051720
/* 01EC64 8001F0B4 24040001 */   addiu      $a0, $zero, 0x1
/* 01EC68 8001F0B8 AFA20038 */  sw          $v0, 0x38($sp)
/* 01EC6C 8001F0BC 8E2E0018 */  lw          $t6, 0x18($s1)
/* 01EC70 8001F0C0 00009025 */  move        $s2, $zero
/* 01EC74 8001F0C4 00008025 */  move        $s0, $zero
/* 01EC78 8001F0C8 19C00017 */  blez        $t6, .L8001F128
/* 01EC7C 8001F0CC 24150002 */   addiu      $s5, $zero, 0x2
/* 01EC80 8001F0D0 8E2F0024 */  lw          $t7, 0x24($s1)
.L8001F0D4:
/* 01EC84 8001F0D4 01F01021 */  addu        $v0, $t7, $s0
/* 01EC88 8001F0D8 8C580000 */  lw          $t8, 0x0($v0)
/* 01EC8C 8001F0DC 56D8000D */  bnel        $s6, $t8, .L8001F114
/* 01EC90 8001F0E0 8E890018 */   lw         $t1, 0x18($s4)
/* 01EC94 8001F0E4 AC570048 */  sw          $s7, 0x48($v0)
/* 01EC98 8001F0E8 8E39001C */  lw          $t9, 0x1c($s1)
/* 01EC9C 8001F0EC 56B90008 */  bnel        $s5, $t9, .L8001F110
/* 01ECA0 8001F0F0 26730001 */   addiu      $s3, $s3, 0x1
/* 01ECA4 8001F0F4 8E220024 */  lw          $v0, 0x24($s1)
/* 01ECA8 8001F0F8 00502021 */  addu        $a0, $v0, $s0
/* 01ECAC 8001F0FC 00504021 */  addu        $t0, $v0, $s0
/* 01ECB0 8001F100 9105004B */  lbu         $a1, 0x4b($t0)
/* 01ECB4 8001F104 0C012578 */  jal         func_800495E0
/* 01ECB8 8001F108 24840008 */   addiu      $a0, $a0, 0x8
/* 01ECBC 8001F10C 26730001 */  addiu       $s3, $s3, 0x1
.L8001F110:
/* 01ECC0 8001F110 8E890018 */  lw          $t1, 0x18($s4)
.L8001F114:
/* 01ECC4 8001F114 26520001 */  addiu       $s2, $s2, 0x1
/* 01ECC8 8001F118 26100050 */  addiu       $s0, $s0, 0x50
/* 01ECCC 8001F11C 0249082A */  slt         $at, $s2, $t1
/* 01ECD0 8001F120 5420FFEC */  bnel        $at, $zero, .L8001F0D4
/* 01ECD4 8001F124 8E2F0024 */   lw         $t7, 0x24($s1)
.L8001F128:
/* 01ECD8 8001F128 0C0145C8 */  jal         func_80051720
/* 01ECDC 8001F12C 8FA40038 */   lw         $a0, 0x38($sp)
/* 01ECE0 8001F130 02601025 */  move        $v0, $s3
.L8001F134:
/* 01ECE4 8001F134 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01ECE8 8001F138 8FB00014 */  lw          $s0, 0x14($sp)
/* 01ECEC 8001F13C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01ECF0 8001F140 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01ECF4 8001F144 8FB30020 */  lw          $s3, 0x20($sp)
/* 01ECF8 8001F148 8FB40024 */  lw          $s4, 0x24($sp)
/* 01ECFC 8001F14C 8FB50028 */  lw          $s5, 0x28($sp)
/* 01ED00 8001F150 8FB6002C */  lw          $s6, 0x2c($sp)
/* 01ED04 8001F154 8FB70030 */  lw          $s7, 0x30($sp)
/* 01ED08 8001F158 03E00008 */  jr          $ra
/* 01ED0C 8001F15C 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8001F160 # 4
/* 01ED10 8001F160 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01ED14 8001F164 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 01ED18 8001F168 4487A000 */  mtc1        $a3, $f20
/* 01ED1C 8001F16C 4486A800 */  mtc1        $a2, $f21
/* 01ED20 8001F170 AFB4002C */  sw          $s4, 0x2c($sp)
/* 01ED24 8001F174 AFB30028 */  sw          $s3, 0x28($sp)
/* 01ED28 8001F178 AFB10020 */  sw          $s1, 0x20($sp)
/* 01ED2C 8001F17C 00808825 */  move        $s1, $a0
/* 01ED30 8001F180 00A0A025 */  move        $s4, $a1
/* 01ED34 8001F184 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01ED38 8001F188 AFB50030 */  sw          $s5, 0x30($sp)
/* 01ED3C 8001F18C AFB20024 */  sw          $s2, 0x24($sp)
/* 01ED40 8001F190 AFB0001C */  sw          $s0, 0x1c($sp)
/* 01ED44 8001F194 14A00003 */  bnez        $a1, .L8001F1A4
/* 01ED48 8001F198 00009825 */   move       $s3, $zero
/* 01ED4C 8001F19C 10000027 */  b           .L8001F23C
/* 01ED50 8001F1A0 00001025 */   move       $v0, $zero
.L8001F1A4:
/* 01ED54 8001F1A4 0220A825 */  move        $s5, $s1
/* 01ED58 8001F1A8 0C0145C8 */  jal         func_80051720
/* 01ED5C 8001F1AC 24040001 */   addiu      $a0, $zero, 0x1
/* 01ED60 8001F1B0 AFA20038 */  sw          $v0, 0x38($sp)
/* 01ED64 8001F1B4 8E2E0018 */  lw          $t6, 0x18($s1)
/* 01ED68 8001F1B8 00009025 */  move        $s2, $zero
/* 01ED6C 8001F1BC 00008025 */  move        $s0, $zero
/* 01ED70 8001F1C0 19C0001B */  blez        $t6, .L8001F230
/* 01ED74 8001F1C4 00000000 */   nop
/* 01ED78 8001F1C8 8E2F0024 */  lw          $t7, 0x24($s1)
.L8001F1CC:
/* 01ED7C 8001F1CC 01F01021 */  addu        $v0, $t7, $s0
/* 01ED80 8001F1D0 8C580000 */  lw          $t8, 0x0($v0)
/* 01ED84 8001F1D4 56980011 */  bnel        $s4, $t8, .L8001F21C
/* 01ED88 8001F1D8 8EB90018 */   lw         $t9, 0x18($s5)
/* 01ED8C 8001F1DC 4620A120 */  cvt.s.d     $f4, $f20
/* 01ED90 8001F1E0 E444003C */  swc1        $f4, 0x3c($v0)
/* 01ED94 8001F1E4 8E230024 */  lw          $v1, 0x24($s1)
/* 01ED98 8001F1E8 00701021 */  addu        $v0, $v1, $s0
/* 01ED9C 8001F1EC C4460038 */  lwc1        $f6, 0x38($v0)
/* 01EDA0 8001F1F0 C4480040 */  lwc1        $f8, 0x40($v0)
/* 01EDA4 8001F1F4 C450003C */  lwc1        $f16, 0x3c($v0)
/* 01EDA8 8001F1F8 00702021 */  addu        $a0, $v1, $s0
/* 01EDAC 8001F1FC 46083282 */  mul.s       $f10, $f6, $f8
/* 01EDB0 8001F200 24840008 */  addiu       $a0, $a0, 0x8
/* 01EDB4 8001F204 460A8482 */  mul.s       $f18, $f16, $f10
/* 01EDB8 8001F208 44059000 */  mfc1        $a1, $f18
/* 01EDBC 8001F20C 0C012678 */  jal         func_800499E0
/* 01EDC0 8001F210 00000000 */   nop
/* 01EDC4 8001F214 26730001 */  addiu       $s3, $s3, 0x1
/* 01EDC8 8001F218 8EB90018 */  lw          $t9, 0x18($s5)
.L8001F21C:
/* 01EDCC 8001F21C 26520001 */  addiu       $s2, $s2, 0x1
/* 01EDD0 8001F220 26100050 */  addiu       $s0, $s0, 0x50
/* 01EDD4 8001F224 0259082A */  slt         $at, $s2, $t9
/* 01EDD8 8001F228 5420FFE8 */  bnel        $at, $zero, .L8001F1CC
/* 01EDDC 8001F22C 8E2F0024 */   lw         $t7, 0x24($s1)
.L8001F230:
/* 01EDE0 8001F230 0C0145C8 */  jal         func_80051720
/* 01EDE4 8001F234 8FA40038 */   lw         $a0, 0x38($sp)
/* 01EDE8 8001F238 02601025 */  move        $v0, $s3
.L8001F23C:
/* 01EDEC 8001F23C 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01EDF0 8001F240 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 01EDF4 8001F244 8FB0001C */  lw          $s0, 0x1c($sp)
/* 01EDF8 8001F248 8FB10020 */  lw          $s1, 0x20($sp)
/* 01EDFC 8001F24C 8FB20024 */  lw          $s2, 0x24($sp)
/* 01EE00 8001F250 8FB30028 */  lw          $s3, 0x28($sp)
/* 01EE04 8001F254 8FB4002C */  lw          $s4, 0x2c($sp)
/* 01EE08 8001F258 8FB50030 */  lw          $s5, 0x30($sp)
/* 01EE0C 8001F25C 03E00008 */  jr          $ra
/* 01EE10 8001F260 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8001F264 # 5
/* 01EE14 8001F264 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 01EE18 8001F268 AFB70030 */  sw          $s7, 0x30($sp)
/* 01EE1C 8001F26C AFB50028 */  sw          $s5, 0x28($sp)
/* 01EE20 8001F270 AFB40024 */  sw          $s4, 0x24($sp)
/* 01EE24 8001F274 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01EE28 8001F278 AFB00014 */  sw          $s0, 0x14($sp)
/* 01EE2C 8001F27C 00808025 */  move        $s0, $a0
/* 01EE30 8001F280 00E09025 */  move        $s2, $a3
/* 01EE34 8001F284 00A0A825 */  move        $s5, $a1
/* 01EE38 8001F288 00C0B825 */  move        $s7, $a2
/* 01EE3C 8001F28C AFBF0034 */  sw          $ra, 0x34($sp)
/* 01EE40 8001F290 AFB6002C */  sw          $s6, 0x2c($sp)
/* 01EE44 8001F294 AFB30020 */  sw          $s3, 0x20($sp)
/* 01EE48 8001F298 AFB10018 */  sw          $s1, 0x18($sp)
/* 01EE4C 8001F29C 14A00003 */  bnez        $a1, .L8001F2AC
/* 01EE50 8001F2A0 0000A025 */   move       $s4, $zero
/* 01EE54 8001F2A4 10000049 */  b           .L8001F3CC
/* 01EE58 8001F2A8 00001025 */   move       $v0, $zero
.L8001F2AC:
/* 01EE5C 8001F2AC 0200B025 */  move        $s6, $s0
/* 01EE60 8001F2B0 0C0145C8 */  jal         func_80051720
/* 01EE64 8001F2B4 24040001 */   addiu      $a0, $zero, 0x1
/* 01EE68 8001F2B8 AFA20040 */  sw          $v0, 0x40($sp)
/* 01EE6C 8001F2BC 8E0E0018 */  lw          $t6, 0x18($s0)
/* 01EE70 8001F2C0 00009825 */  move        $s3, $zero
/* 01EE74 8001F2C4 00008825 */  move        $s1, $zero
/* 01EE78 8001F2C8 19C0003D */  blez        $t6, .L8001F3C0
/* 01EE7C 8001F2CC 00000000 */   nop
/* 01EE80 8001F2D0 8E0F0024 */  lw          $t7, 0x24($s0)
.L8001F2D4:
/* 01EE84 8001F2D4 01F11021 */  addu        $v0, $t7, $s1
/* 01EE88 8001F2D8 8C580000 */  lw          $t8, 0x0($v0)
/* 01EE8C 8001F2DC 56B80033 */  bnel        $s5, $t8, .L8001F3AC
/* 01EE90 8001F2E0 8ECA0018 */   lw         $t2, 0x18($s6)
/* 01EE94 8001F2E4 0643000B */  bgezl       $s2, .L8001F314
/* 01EE98 8001F2E8 AC570034 */   sw         $s7, 0x34($v0)
/* 01EE9C 8001F2EC 8C480028 */  lw          $t0, 0x28($v0)
/* 01EEA0 8001F2F0 8C49002C */  lw          $t1, 0x2c($v0)
/* 01EEA4 8001F2F4 24122710 */  addiu       $s2, $zero, 0x2710
/* 01EEA8 8001F2F8 15000005 */  bnez        $t0, .L8001F310
/* 01EEAC 8001F2FC 00000000 */   nop
/* 01EEB0 8001F300 15200003 */  bnez        $t1, .L8001F310
/* 01EEB4 8001F304 00000000 */   nop
/* 01EEB8 8001F308 10000001 */  b           .L8001F310
/* 01EEBC 8001F30C 00009025 */   move       $s2, $zero
.L8001F310:
/* 01EEC0 8001F310 AC570034 */  sw          $s7, 0x34($v0)
.L8001F314:
/* 01EEC4 8001F314 8E190024 */  lw          $t9, 0x24($s0)
/* 01EEC8 8001F318 03311021 */  addu        $v0, $t9, $s1
/* 01EECC 8001F31C 8C450030 */  lw          $a1, 0x30($v0)
/* 01EED0 8001F320 8C470034 */  lw          $a3, 0x34($v0)
/* 01EED4 8001F324 000527C3 */  sra         $a0, $a1, 31
/* 01EED8 8001F328 0C0144B6 */  jal         __ll_mul
/* 01EEDC 8001F32C 000737C3 */   sra        $a2, $a3, 31
/* 01EEE0 8001F330 8E070020 */  lw          $a3, 0x20($s0)
/* 01EEE4 8001F334 00402025 */  move        $a0, $v0
/* 01EEE8 8001F338 00602825 */  move        $a1, $v1
/* 01EEEC 8001F33C 0C0144B6 */  jal         __ll_mul
/* 01EEF0 8001F340 000737C3 */   sra        $a2, $a3, 31
/* 01EEF4 8001F344 00402025 */  move        $a0, $v0
/* 01EEF8 8001F348 00602825 */  move        $a1, $v1
/* 01EEFC 8001F34C 24060000 */  addiu       $a2, $zero, 0x0
/* 01EF00 8001F350 0C014501 */  jal         __ll_rshift
/* 01EF04 8001F354 2407000F */   addiu      $a3, $zero, 0xf
/* 01EF08 8001F358 AFA20038 */  sw          $v0, 0x38($sp)
/* 01EF0C 8001F35C 04400009 */  bltz        $v0, .L8001F384
/* 01EF10 8001F360 AFA3003C */   sw         $v1, 0x3c($sp)
/* 01EF14 8001F364 1C400003 */  bgtz        $v0, .L8001F374
/* 01EF18 8001F368 34018000 */   ori        $at, $zero, 0x8000
/* 01EF1C 8001F36C 0061082B */  sltu        $at, $v1, $at
/* 01EF20 8001F370 14200004 */  bnez        $at, .L8001F384
.L8001F374:
/* 01EF24 8001F374 240E0000 */   addiu      $t6, $zero, 0x0
/* 01EF28 8001F378 240F7FFF */  addiu       $t7, $zero, 0x7fff
/* 01EF2C 8001F37C AFAF003C */  sw          $t7, 0x3c($sp)
/* 01EF30 8001F380 AFAE0038 */  sw          $t6, 0x38($sp)
.L8001F384:
/* 01EF34 8001F384 8E0D0024 */  lw          $t5, 0x24($s0)
/* 01EF38 8001F388 8FB9003C */  lw          $t9, 0x3c($sp)
/* 01EF3C 8001F38C 02403025 */  move        $a2, $s2
/* 01EF40 8001F390 01B12021 */  addu        $a0, $t5, $s1
/* 01EF44 8001F394 00194400 */  sll         $t0, $t9, 16
/* 01EF48 8001F398 00082C03 */  sra         $a1, $t0, 16
/* 01EF4C 8001F39C 0C012550 */  jal         func_80049540
/* 01EF50 8001F3A0 24840008 */   addiu      $a0, $a0, 0x8
/* 01EF54 8001F3A4 26940001 */  addiu       $s4, $s4, 0x1
/* 01EF58 8001F3A8 8ECA0018 */  lw          $t2, 0x18($s6)
.L8001F3AC:
/* 01EF5C 8001F3AC 26730001 */  addiu       $s3, $s3, 0x1
/* 01EF60 8001F3B0 26310050 */  addiu       $s1, $s1, 0x50
/* 01EF64 8001F3B4 026A082A */  slt         $at, $s3, $t2
/* 01EF68 8001F3B8 5420FFC6 */  bnel        $at, $zero, .L8001F2D4
/* 01EF6C 8001F3BC 8E0F0024 */   lw         $t7, 0x24($s0)
.L8001F3C0:
/* 01EF70 8001F3C0 0C0145C8 */  jal         func_80051720
/* 01EF74 8001F3C4 8FA40040 */   lw         $a0, 0x40($sp)
/* 01EF78 8001F3C8 02801025 */  move        $v0, $s4
.L8001F3CC:
/* 01EF7C 8001F3CC 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01EF80 8001F3D0 8FB00014 */  lw          $s0, 0x14($sp)
/* 01EF84 8001F3D4 8FB10018 */  lw          $s1, 0x18($sp)
/* 01EF88 8001F3D8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01EF8C 8001F3DC 8FB30020 */  lw          $s3, 0x20($sp)
/* 01EF90 8001F3E0 8FB40024 */  lw          $s4, 0x24($sp)
/* 01EF94 8001F3E4 8FB50028 */  lw          $s5, 0x28($sp)
/* 01EF98 8001F3E8 8FB6002C */  lw          $s6, 0x2c($sp)
/* 01EF9C 8001F3EC 8FB70030 */  lw          $s7, 0x30($sp)
/* 01EFA0 8001F3F0 03E00008 */  jr          $ra
/* 01EFA4 8001F3F4 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8001F3F8 # 6
/* 01EFA8 8001F3F8 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 01EFAC 8001F3FC AFB60030 */  sw          $s6, 0x30($sp)
/* 01EFB0 8001F400 AFB40028 */  sw          $s4, 0x28($sp)
/* 01EFB4 8001F404 AFB30024 */  sw          $s3, 0x24($sp)
/* 01EFB8 8001F408 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01EFBC 8001F40C 00808825 */  move        $s1, $a0
/* 01EFC0 8001F410 00A0A025 */  move        $s4, $a1
/* 01EFC4 8001F414 00C0B025 */  move        $s6, $a2
/* 01EFC8 8001F418 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01EFCC 8001F41C AFB5002C */  sw          $s5, 0x2c($sp)
/* 01EFD0 8001F420 AFB20020 */  sw          $s2, 0x20($sp)
/* 01EFD4 8001F424 AFB00018 */  sw          $s0, 0x18($sp)
/* 01EFD8 8001F428 14A00003 */  bnez        $a1, .L8001F438
/* 01EFDC 8001F42C 00009825 */   move       $s3, $zero
/* 01EFE0 8001F430 10000020 */  b           .L8001F4B4
/* 01EFE4 8001F434 00001025 */   move       $v0, $zero
.L8001F438:
/* 01EFE8 8001F438 0220A825 */  move        $s5, $s1
/* 01EFEC 8001F43C 0C0145C8 */  jal         func_80051720
/* 01EFF0 8001F440 24040001 */   addiu      $a0, $zero, 0x1
/* 01EFF4 8001F444 AFA20038 */  sw          $v0, 0x38($sp)
/* 01EFF8 8001F448 8E2E0018 */  lw          $t6, 0x18($s1)
/* 01EFFC 8001F44C 00009025 */  move        $s2, $zero
/* 01F000 8001F450 00008025 */  move        $s0, $zero
/* 01F004 8001F454 19C00014 */  blez        $t6, .L8001F4A8
/* 01F008 8001F458 00000000 */   nop
/* 01F00C 8001F45C 8E2F0024 */  lw          $t7, 0x24($s1)
.L8001F460:
/* 01F010 8001F460 01F01821 */  addu        $v1, $t7, $s0
/* 01F014 8001F464 8C780000 */  lw          $t8, 0x0($v1)
/* 01F018 8001F468 5698000A */  bnel        $s4, $t8, .L8001F494
/* 01F01C 8001F46C 8EA80018 */   lw         $t0, 0x18($s5)
/* 01F020 8001F470 AC760044 */  sw          $s6, 0x44($v1)
/* 01F024 8001F474 8E220024 */  lw          $v0, 0x24($s1)
/* 01F028 8001F478 00502021 */  addu        $a0, $v0, $s0
/* 01F02C 8001F47C 0050C821 */  addu        $t9, $v0, $s0
/* 01F030 8001F480 93250047 */  lbu         $a1, 0x47($t9)
/* 01F034 8001F484 0C012598 */  jal         func_80049660
/* 01F038 8001F488 24840008 */   addiu      $a0, $a0, 0x8
/* 01F03C 8001F48C 26730001 */  addiu       $s3, $s3, 0x1
/* 01F040 8001F490 8EA80018 */  lw          $t0, 0x18($s5)
.L8001F494:
/* 01F044 8001F494 26520001 */  addiu       $s2, $s2, 0x1
/* 01F048 8001F498 26100050 */  addiu       $s0, $s0, 0x50
/* 01F04C 8001F49C 0248082A */  slt         $at, $s2, $t0
/* 01F050 8001F4A0 5420FFEF */  bnel        $at, $zero, .L8001F460
/* 01F054 8001F4A4 8E2F0024 */   lw         $t7, 0x24($s1)
.L8001F4A8:
/* 01F058 8001F4A8 0C0145C8 */  jal         func_80051720
/* 01F05C 8001F4AC 8FA40038 */   lw         $a0, 0x38($sp)
/* 01F060 8001F4B0 02601025 */  move        $v0, $s3
.L8001F4B4:
/* 01F064 8001F4B4 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01F068 8001F4B8 8FB00018 */  lw          $s0, 0x18($sp)
/* 01F06C 8001F4BC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01F070 8001F4C0 8FB20020 */  lw          $s2, 0x20($sp)
/* 01F074 8001F4C4 8FB30024 */  lw          $s3, 0x24($sp)
/* 01F078 8001F4C8 8FB40028 */  lw          $s4, 0x28($sp)
/* 01F07C 8001F4CC 8FB5002C */  lw          $s5, 0x2c($sp)
/* 01F080 8001F4D0 8FB60030 */  lw          $s6, 0x30($sp)
/* 01F084 8001F4D4 03E00008 */  jr          $ra
/* 01F088 8001F4D8 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8001F4DC # 7
/* 01F08C 8001F4DC 8C8E0018 */  lw          $t6, 0x18($a0)
/* 01F090 8001F4E0 00001825 */  move        $v1, $zero
/* 01F094 8001F4E4 19C0000F */  blez        $t6, .L8001F524
/* 01F098 8001F4E8 00000000 */   nop
/* 01F09C 8001F4EC 8C860018 */  lw          $a2, 0x18($a0)
/* 01F0A0 8001F4F0 00002825 */  move        $a1, $zero
/* 01F0A4 8001F4F4 8C880024 */  lw          $t0, 0x24($a0)
/* 01F0A8 8001F4F8 00063880 */  sll         $a3, $a2, 2
/* 01F0AC 8001F4FC 00E63821 */  addu        $a3, $a3, $a2
/* 01F0B0 8001F500 00073900 */  sll         $a3, $a3, 4
.L8001F504:
/* 01F0B4 8001F504 8D0F0000 */  lw          $t7, 0x0($t0)
/* 01F0B8 8001F508 24A50050 */  addiu       $a1, $a1, 0x50
/* 01F0BC 8001F50C 00A7082A */  slt         $at, $a1, $a3
/* 01F0C0 8001F510 11E00002 */  beqz        $t7, .L8001F51C
/* 01F0C4 8001F514 00000000 */   nop
/* 01F0C8 8001F518 24630001 */  addiu       $v1, $v1, 0x1
.L8001F51C:
/* 01F0CC 8001F51C 1420FFF9 */  bnez        $at, .L8001F504
/* 01F0D0 8001F520 25080050 */   addiu      $t0, $t0, 0x50
.L8001F524:
/* 01F0D4 8001F524 03E00008 */  jr          $ra
/* 01F0D8 8001F528 00601025 */   move       $v0, $v1

glabel func_8001F52C # 8
/* 01F0DC 8001F52C 14A00003 */  bnez        $a1, .L8001F53C
/* 01F0E0 8001F530 00001825 */   move       $v1, $zero
/* 01F0E4 8001F534 03E00008 */  jr          $ra
/* 01F0E8 8001F538 00001025 */   move       $v0, $zero
.L8001F53C:
/* 01F0EC 8001F53C 8C8E0018 */  lw          $t6, 0x18($a0)
/* 01F0F0 8001F540 59C00010 */  blezl       $t6, .L8001F584
/* 01F0F4 8001F544 00601025 */   move       $v0, $v1
/* 01F0F8 8001F548 8C870018 */  lw          $a3, 0x18($a0)
/* 01F0FC 8001F54C 00003025 */  move        $a2, $zero
/* 01F100 8001F550 8C890024 */  lw          $t1, 0x24($a0)
/* 01F104 8001F554 00074080 */  sll         $t0, $a3, 2
/* 01F108 8001F558 01074021 */  addu        $t0, $t0, $a3
/* 01F10C 8001F55C 00084100 */  sll         $t0, $t0, 4
.L8001F560:
/* 01F110 8001F560 8D2F0000 */  lw          $t7, 0x0($t1)
/* 01F114 8001F564 24C60050 */  addiu       $a2, $a2, 0x50
/* 01F118 8001F568 00C8082A */  slt         $at, $a2, $t0
/* 01F11C 8001F56C 14AF0002 */  bne         $a1, $t7, .L8001F578
/* 01F120 8001F570 00000000 */   nop
/* 01F124 8001F574 24630001 */  addiu       $v1, $v1, 0x1
.L8001F578:
/* 01F128 8001F578 1420FFF9 */  bnez        $at, .L8001F560
/* 01F12C 8001F57C 25290050 */   addiu      $t1, $t1, 0x50
/* 01F130 8001F580 00601025 */  move        $v0, $v1
.L8001F584:
/* 01F134 8001F584 03E00008 */  jr          $ra
/* 01F138 8001F588 00000000 */   nop

glabel func_8001F58C # 9
/* 01F13C 8001F58C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01F140 8001F590 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01F144 8001F594 AFB30028 */  sw          $s3, 0x28($sp)
/* 01F148 8001F598 AFB20024 */  sw          $s2, 0x24($sp)
/* 01F14C 8001F59C AFB10020 */  sw          $s1, 0x20($sp)
/* 01F150 8001F5A0 AFB0001C */  sw          $s0, 0x1c($sp)
/* 01F154 8001F5A4 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 01F158 8001F5A8 8C910004 */  lw          $s1, 0x4($a0)
/* 01F15C 8001F5AC 00008025 */  move        $s0, $zero
/* 01F160 8001F5B0 00009825 */  move        $s3, $zero
/* 01F164 8001F5B4 8E250018 */  lw          $a1, 0x18($s1)
/* 01F168 8001F5B8 3C01800B */  lui         $at, %hi(D_800A98D0)
/* 01F16C 8001F5BC 58A00038 */  blezl       $a1, .L8001F6A0
/* 01F170 8001F5C0 8FBF002C */   lw         $ra, 0x2c($sp)
/* 01F174 8001F5C4 C43498D0 */  lwc1        $f20, %lo(D_800A98D0)($at)
.L8001F5C8:
/* 01F178 8001F5C8 8E230024 */  lw          $v1, 0x24($s1)
/* 01F17C 8001F5CC 00701021 */  addu        $v0, $v1, $s0
/* 01F180 8001F5D0 8C4E0000 */  lw          $t6, 0x0($v0)
/* 01F184 8001F5D4 51C0002E */  beql        $t6, $zero, .L8001F690
/* 01F188 8001F5D8 26730001 */   addiu      $s3, $s3, 0x1
/* 01F18C 8001F5DC 8C4F0004 */  lw          $t7, 0x4($v0)
/* 01F190 8001F5E0 8DF80000 */  lw          $t8, 0x0($t7)
/* 01F194 8001F5E4 8F040004 */  lw          $a0, 0x4($t8)
/* 01F198 8001F5E8 04820029 */  bltzl       $a0, .L8001F690
/* 01F19C 8001F5EC 26730001 */   addiu      $s3, $s3, 0x1
/* 01F1A0 8001F5F0 8C4A0028 */  lw          $t2, 0x28($v0)
/* 01F1A4 8001F5F4 24992710 */  addiu       $t9, $a0, 0x2710
/* 01F1A8 8001F5F8 001947C3 */  sra         $t0, $t9, 31
/* 01F1AC 8001F5FC 0148082A */  slt         $at, $t2, $t0
/* 01F1B0 8001F600 14200011 */  bnez        $at, .L8001F648
/* 01F1B4 8001F604 8C4B002C */   lw         $t3, 0x2c($v0)
/* 01F1B8 8001F608 010A082A */  slt         $at, $t0, $t2
/* 01F1BC 8001F60C 14200003 */  bnez        $at, .L8001F61C
/* 01F1C0 8001F610 032B082B */   sltu       $at, $t9, $t3
/* 01F1C4 8001F614 5020000D */  beql        $at, $zero, .L8001F64C
/* 01F1C8 8001F618 00709021 */   addu       $s2, $v1, $s0
.L8001F61C:
/* 01F1CC 8001F61C AC400000 */  sw          $zero, 0x0($v0)
/* 01F1D0 8001F620 8E2C0024 */  lw          $t4, 0x24($s1)
/* 01F1D4 8001F624 01902021 */  addu        $a0, $t4, $s0
/* 01F1D8 8001F628 0C01250C */  jal         func_80049430
/* 01F1DC 8001F62C 24840008 */   addiu      $a0, $a0, 0x8
/* 01F1E0 8001F630 8E2D0024 */  lw          $t5, 0x24($s1)
/* 01F1E4 8001F634 01B02021 */  addu        $a0, $t5, $s0
/* 01F1E8 8001F638 0C012528 */  jal         func_800494A0
/* 01F1EC 8001F63C 24840008 */   addiu      $a0, $a0, 0x8
/* 01F1F0 8001F640 10000012 */  b           .L8001F68C
/* 01F1F4 8001F644 8E250018 */   lw         $a1, 0x18($s1)
.L8001F648:
/* 01F1F8 8001F648 00709021 */  addu        $s2, $v1, $s0
.L8001F64C:
/* 01F1FC 8001F64C 26520028 */  addiu       $s2, $s2, 0x28
/* 01F200 8001F650 8E450004 */  lw          $a1, 0x4($s2)
/* 01F204 8001F654 0C01439F */  jal         func_80050E7C
/* 01F208 8001F658 8E440000 */   lw         $a0, 0x0($s2)
/* 01F20C 8001F65C 8E2E0024 */  lw          $t6, 0x24($s1)
/* 01F210 8001F660 01D01021 */  addu        $v0, $t6, $s0
/* 01F214 8001F664 C444003C */  lwc1        $f4, 0x3c($v0)
/* 01F218 8001F668 C4460040 */  lwc1        $f6, 0x40($v0)
/* 01F21C 8001F66C 46062202 */  mul.s       $f8, $f4, $f6
/* 01F220 8001F670 00000000 */  nop
/* 01F224 8001F674 46144282 */  mul.s       $f10, $f8, $f20
/* 01F228 8001F678 0C014343 */  jal         func_80050D0C
/* 01F22C 8001F67C 46005300 */   add.s      $f12, $f10, $f0
/* 01F230 8001F680 AE420000 */  sw          $v0, 0x0($s2)
/* 01F234 8001F684 AE430004 */  sw          $v1, 0x4($s2)
/* 01F238 8001F688 8E250018 */  lw          $a1, 0x18($s1)
.L8001F68C:
/* 01F23C 8001F68C 26730001 */  addiu       $s3, $s3, 0x1
.L8001F690:
/* 01F240 8001F690 0265082A */  slt         $at, $s3, $a1
/* 01F244 8001F694 1420FFCC */  bnez        $at, .L8001F5C8
/* 01F248 8001F698 26100050 */   addiu      $s0, $s0, 0x50
/* 01F24C 8001F69C 8FBF002C */  lw          $ra, 0x2c($sp)
.L8001F6A0:
/* 01F250 8001F6A0 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 01F254 8001F6A4 8FB0001C */  lw          $s0, 0x1c($sp)
/* 01F258 8001F6A8 8FB10020 */  lw          $s1, 0x20($sp)
/* 01F25C 8001F6AC 8FB20024 */  lw          $s2, 0x24($sp)
/* 01F260 8001F6B0 8FB30028 */  lw          $s3, 0x28($sp)
/* 01F264 8001F6B4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 01F268 8001F6B8 03E00008 */  jr          $ra
/* 01F26C 8001F6BC 24021676 */   addiu      $v0, $zero, 0x1676

glabel func_8001F6C0 # 10
/* 01F270 8001F6C0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01F274 8001F6C4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01F278 8001F6C8 AFB50028 */  sw          $s5, 0x28($sp)
/* 01F27C 8001F6CC AFB40024 */  sw          $s4, 0x24($sp)
/* 01F280 8001F6D0 AFB30020 */  sw          $s3, 0x20($sp)
/* 01F284 8001F6D4 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01F288 8001F6D8 AFB10018 */  sw          $s1, 0x18($sp)
/* 01F28C 8001F6DC AFB00014 */  sw          $s0, 0x14($sp)
/* 01F290 8001F6E0 8C8E001C */  lw          $t6, 0x1c($a0)
/* 01F294 8001F6E4 00808825 */  move        $s1, $a0
/* 01F298 8001F6E8 00009825 */  move        $s3, $zero
/* 01F29C 8001F6EC 10AE0022 */  beq         $a1, $t6, .L8001F778
/* 01F2A0 8001F6F0 0080A825 */   move       $s5, $a0
/* 01F2A4 8001F6F4 AC85001C */  sw          $a1, 0x1c($a0)
/* 01F2A8 8001F6F8 0C0145C8 */  jal         func_80051720
/* 01F2AC 8001F6FC 24040001 */   addiu      $a0, $zero, 0x1
/* 01F2B0 8001F700 AFA20030 */  sw          $v0, 0x30($sp)
/* 01F2B4 8001F704 8E2F0018 */  lw          $t7, 0x18($s1)
/* 01F2B8 8001F708 00009025 */  move        $s2, $zero
/* 01F2BC 8001F70C 00008025 */  move        $s0, $zero
/* 01F2C0 8001F710 19E00017 */  blez        $t7, .L8001F770
/* 01F2C4 8001F714 24140002 */   addiu      $s4, $zero, 0x2
/* 01F2C8 8001F718 8E230024 */  lw          $v1, 0x24($s1)
.L8001F71C:
/* 01F2CC 8001F71C 00702021 */  addu        $a0, $v1, $s0
/* 01F2D0 8001F720 8C980000 */  lw          $t8, 0x0($a0)
/* 01F2D4 8001F724 5300000D */  beql        $t8, $zero, .L8001F75C
/* 01F2D8 8001F728 8EA80018 */   lw         $t0, 0x18($s5)
/* 01F2DC 8001F72C 8E39001C */  lw          $t9, 0x1c($s1)
/* 01F2E0 8001F730 24020040 */  addiu       $v0, $zero, 0x40
/* 01F2E4 8001F734 16990003 */  bne         $s4, $t9, .L8001F744
/* 01F2E8 8001F738 00000000 */   nop
/* 01F2EC 8001F73C 10000001 */  b           .L8001F744
/* 01F2F0 8001F740 8C820048 */   lw         $v0, 0x48($a0)
.L8001F744:
/* 01F2F4 8001F744 00702021 */  addu        $a0, $v1, $s0
/* 01F2F8 8001F748 24840008 */  addiu       $a0, $a0, 0x8
/* 01F2FC 8001F74C 0C012578 */  jal         func_800495E0
/* 01F300 8001F750 304500FF */   andi       $a1, $v0, 0xff
/* 01F304 8001F754 26730001 */  addiu       $s3, $s3, 0x1
/* 01F308 8001F758 8EA80018 */  lw          $t0, 0x18($s5)
.L8001F75C:
/* 01F30C 8001F75C 26520001 */  addiu       $s2, $s2, 0x1
/* 01F310 8001F760 26100050 */  addiu       $s0, $s0, 0x50
/* 01F314 8001F764 0248082A */  slt         $at, $s2, $t0
/* 01F318 8001F768 5420FFEC */  bnel        $at, $zero, .L8001F71C
/* 01F31C 8001F76C 8E230024 */   lw         $v1, 0x24($s1)
.L8001F770:
/* 01F320 8001F770 0C0145C8 */  jal         func_80051720
/* 01F324 8001F774 8FA40030 */   lw         $a0, 0x30($sp)
.L8001F778:
/* 01F328 8001F778 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01F32C 8001F77C 02601025 */  move        $v0, $s3
/* 01F330 8001F780 8FB30020 */  lw          $s3, 0x20($sp)
/* 01F334 8001F784 8FB00014 */  lw          $s0, 0x14($sp)
/* 01F338 8001F788 8FB10018 */  lw          $s1, 0x18($sp)
/* 01F33C 8001F78C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01F340 8001F790 8FB40024 */  lw          $s4, 0x24($sp)
/* 01F344 8001F794 8FB50028 */  lw          $s5, 0x28($sp)
/* 01F348 8001F798 03E00008 */  jr          $ra
/* 01F34C 8001F79C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001F7A0 # 11
/* 01F350 8001F7A0 AC850020 */  sw          $a1, 0x20($a0)
/* 01F354 8001F7A4 03E00008 */  jr          $ra
/* 01F358 8001F7A8 24020001 */   addiu      $v0, $zero, 0x1

glabel func_8001F7AC # 12
/* 01F35C 8001F7AC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01F360 8001F7B0 AFB00020 */  sw          $s0, 0x20($sp)
/* 01F364 8001F7B4 00C08025 */  move        $s0, $a2
/* 01F368 8001F7B8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01F36C 8001F7BC AFA40030 */  sw          $a0, 0x30($sp)
/* 01F370 8001F7C0 AFA50034 */  sw          $a1, 0x34($sp)
/* 01F374 8001F7C4 240E0028 */  addiu       $t6, $zero, 0x28
/* 01F378 8001F7C8 AFAE0010 */  sw          $t6, 0x10($sp)
/* 01F37C 8001F7CC 8FA60034 */  lw          $a2, 0x34($sp)
/* 01F380 8001F7D0 00002825 */  move        $a1, $zero
/* 01F384 8001F7D4 00002025 */  move        $a0, $zero
/* 01F388 8001F7D8 0C0145B0 */  jal         func_800516C0
/* 01F38C 8001F7DC 24070001 */   addiu      $a3, $zero, 0x1
/* 01F390 8001F7E0 8FAF0030 */  lw          $t7, 0x30($sp)
/* 01F394 8001F7E4 24187FFF */  addiu       $t8, $zero, 0x7fff
/* 01F398 8001F7E8 24190002 */  addiu       $t9, $zero, 0x2
/* 01F39C 8001F7EC AC500018 */  sw          $s0, 0x18($v0)
/* 01F3A0 8001F7F0 AC580020 */  sw          $t8, 0x20($v0)
/* 01F3A4 8001F7F4 AC59001C */  sw          $t9, 0x1c($v0)
/* 01F3A8 8001F7F8 AC4F0000 */  sw          $t7, 0x0($v0)
/* 01F3AC 8001F7FC 24080050 */  addiu       $t0, $zero, 0x50
/* 01F3B0 8001F800 AFA80010 */  sw          $t0, 0x10($sp)
/* 01F3B4 8001F804 AFA2002C */  sw          $v0, 0x2c($sp)
/* 01F3B8 8001F808 8FA60034 */  lw          $a2, 0x34($sp)
/* 01F3BC 8001F80C 00002025 */  move        $a0, $zero
/* 01F3C0 8001F810 00002825 */  move        $a1, $zero
/* 01F3C4 8001F814 0C0145B0 */  jal         func_800516C0
/* 01F3C8 8001F818 02003825 */   move       $a3, $s0
/* 01F3CC 8001F81C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 01F3D0 8001F820 00002025 */  move        $a0, $zero
/* 01F3D4 8001F824 1A000021 */  blez        $s0, .L8001F8AC
/* 01F3D8 8001F828 AC620024 */   sw         $v0, 0x24($v1)
/* 01F3DC 8001F82C 32060003 */  andi        $a2, $s0, 0x3
/* 01F3E0 8001F830 10C0000A */  beqz        $a2, .L8001F85C
/* 01F3E4 8001F834 00C02825 */   move       $a1, $a2
/* 01F3E8 8001F838 00001025 */  move        $v0, $zero
/* 01F3EC 8001F83C 00021180 */  sll         $v0, $v0, 6
.L8001F840:
/* 01F3F0 8001F840 8C690024 */  lw          $t1, 0x24($v1)
/* 01F3F4 8001F844 24840001 */  addiu       $a0, $a0, 0x1
/* 01F3F8 8001F848 01225021 */  addu        $t2, $t1, $v0
/* 01F3FC 8001F84C AD400000 */  sw          $zero, 0x0($t2)
/* 01F400 8001F850 14A4FFFB */  bne         $a1, $a0, .L8001F840
/* 01F404 8001F854 24420050 */   addiu      $v0, $v0, 0x50
/* 01F408 8001F858 10900014 */  beq         $a0, $s0, .L8001F8AC
.L8001F85C:
/* 01F40C 8001F85C 00041080 */   sll        $v0, $a0, 2
/* 01F410 8001F860 00102880 */  sll         $a1, $s0, 2
/* 01F414 8001F864 00B02821 */  addu        $a1, $a1, $s0
/* 01F418 8001F868 00441021 */  addu        $v0, $v0, $a0
/* 01F41C 8001F86C 00021100 */  sll         $v0, $v0, 4
/* 01F420 8001F870 00052900 */  sll         $a1, $a1, 4
.L8001F874:
/* 01F424 8001F874 8C6B0024 */  lw          $t3, 0x24($v1)
/* 01F428 8001F878 01626021 */  addu        $t4, $t3, $v0
/* 01F42C 8001F87C AD800000 */  sw          $zero, 0x0($t4)
/* 01F430 8001F880 8C6D0024 */  lw          $t5, 0x24($v1)
/* 01F434 8001F884 01A27021 */  addu        $t6, $t5, $v0
/* 01F438 8001F888 ADC00050 */  sw          $zero, 0x50($t6)
/* 01F43C 8001F88C 8C6F0024 */  lw          $t7, 0x24($v1)
/* 01F440 8001F890 01E2C021 */  addu        $t8, $t7, $v0
/* 01F444 8001F894 AF0000A0 */  sw          $zero, 0xa0($t8)
/* 01F448 8001F898 8C790024 */  lw          $t9, 0x24($v1)
/* 01F44C 8001F89C 03224021 */  addu        $t0, $t9, $v0
/* 01F450 8001F8A0 24420140 */  addiu       $v0, $v0, 0x140
/* 01F454 8001F8A4 1445FFF3 */  bne         $v0, $a1, .L8001F874
/* 01F458 8001F8A8 AD0000F0 */   sw         $zero, 0xf0($t0)
.L8001F8AC:
/* 01F45C 8001F8AC 3C098002 */  lui         $t1, %hi(func_8001F58C)
/* 01F460 8001F8B0 2529F58C */  addiu       $t1, $t1, %lo(func_8001F58C)
/* 01F464 8001F8B4 AC630008 */  sw          $v1, 0x8($v1)
/* 01F468 8001F8B8 AC69000C */  sw          $t1, 0xc($v1)
/* 01F46C 8001F8BC AFA3002C */  sw          $v1, 0x2c($sp)
/* 01F470 8001F8C0 0C0126D7 */  jal         func_80049B5C
/* 01F474 8001F8C4 24640004 */   addiu      $a0, $v1, 0x4
/* 01F478 8001F8C8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01F47C 8001F8CC 8FA2002C */  lw          $v0, 0x2c($sp)
/* 01F480 8001F8D0 8FB00020 */  lw          $s0, 0x20($sp)
/* 01F484 8001F8D4 03E00008 */  jr          $ra
/* 01F488 8001F8D8 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001F8DC # 13
/* 01F48C 8001F8DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01F490 8001F8E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01F494 8001F8E4 0C0128CC */  jal         func_8004A330
/* 01F498 8001F8E8 24840004 */   addiu      $a0, $a0, 0x4
/* 01F49C 8001F8EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01F4A0 8001F8F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01F4A4 8001F8F4 00001025 */  move        $v0, $zero
/* 01F4A8 8001F8F8 03E00008 */  jr          $ra
/* 01F4AC 8001F8FC 00000000 */   nop

glabel func_8001F900 # 14
/* 01F4B0 8001F900 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01F4B4 8001F904 AFB00018 */  sw          $s0, 0x18($sp)
/* 01F4B8 8001F908 3C10800F */  lui         $s0, %hi(D_800F3E20)
/* 01F4BC 8001F90C 26103E20 */  addiu       $s0, $s0, %lo(D_800F3E20)
/* 01F4C0 8001F910 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01F4C4 8001F914 02002025 */  move        $a0, $s0
/* 01F4C8 8001F918 0C013C58 */  jal         func_8004F160
/* 01F4CC 8001F91C 24050100 */   addiu      $a1, $zero, 0x100
/* 01F4D0 8001F920 3C04800F */  lui         $a0, %hi(D_800F3F20)
/* 01F4D4 8001F924 24843F20 */  addiu       $a0, $a0, %lo(D_800F3F20)
/* 01F4D8 8001F928 0C013C58 */  jal         func_8004F160
/* 01F4DC 8001F92C 240509C4 */   addiu      $a1, $zero, 0x9c4
/* 01F4E0 8001F930 3C04800F */  lui         $a0, %hi(D_800F48E8)
/* 01F4E4 8001F934 248448E8 */  addiu       $a0, $a0, %lo(D_800F48E8)
/* 01F4E8 8001F938 0C013C58 */  jal         func_8004F160
/* 01F4EC 8001F93C 24050053 */   addiu      $a1, $zero, 0x53
/* 01F4F0 8001F940 0C00C210 */  jal         func_80030840
/* 01F4F4 8001F944 00000000 */   nop
/* 01F4F8 8001F948 3C04800F */  lui         $a0, %hi(D_800F3F00)
/* 01F4FC 8001F94C 3C05800B */  lui         $a1, %hi(D_800A98E0)
/* 01F500 8001F950 24A598E0 */  addiu       $a1, $a1, %lo(D_800A98E0)
/* 01F504 8001F954 0C0118FE */  jal         func_800463F8
/* 01F508 8001F958 24843F00 */   addiu      $a0, $a0, %lo(D_800F3F00)
/* 01F50C 8001F95C 240E012C */  addiu       $t6, $zero, 0x12c
/* 01F510 8001F960 240F0006 */  addiu       $t7, $zero, 0x6
/* 01F514 8001F964 24180008 */  addiu       $t8, $zero, 0x8
/* 01F518 8001F968 2419FFFF */  addiu       $t9, $zero, -0x1
/* 01F51C 8001F96C AE0E00F0 */  sw          $t6, 0xf0($s0)
/* 01F520 8001F970 A20F00F4 */  sb          $t7, 0xf4($s0)
/* 01F524 8001F974 A21800F5 */  sb          $t8, 0xf5($s0)
/* 01F528 8001F978 A20000F6 */  sb          $zero, 0xf6($s0)
/* 01F52C 8001F97C AE0000FC */  sw          $zero, 0xfc($s0)
/* 01F530 8001F980 AE1900F8 */  sw          $t9, 0xf8($s0)
/* 01F534 8001F984 A20000F7 */  sb          $zero, 0xf7($s0)
/* 01F538 8001F988 3C08800B */  lui         $t0, %hi(D_800B2C84)
/* 01F53C 8001F98C 8D082C84 */  lw          $t0, %lo(D_800B2C84)($t0)
/* 01F540 8001F990 24010012 */  addiu       $at, $zero, 0x12
/* 01F544 8001F994 55010004 */  bnel        $t0, $at, .L8001F9A8
/* 01F548 8001F998 8FBF001C */   lw         $ra, 0x1c($sp)
/* 01F54C 8001F99C 0C00A21F */  jal         func_8002887C
/* 01F550 8001F9A0 00002025 */   move       $a0, $zero
/* 01F554 8001F9A4 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001F9A8:
/* 01F558 8001F9A8 8FB00018 */  lw          $s0, 0x18($sp)
/* 01F55C 8001F9AC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01F560 8001F9B0 03E00008 */  jr          $ra
/* 01F564 8001F9B4 00000000 */   nop
/* 01F568 8001F9B8 00000000 */  nop
/* 01F56C 8001F9BC 00000000 */  nop
