.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005ED50 # 0
/* 05E900 8005ED50 00001825 */  move        $v1, $zero
/* 05E904 8005ED54 00801025 */  move        $v0, $a0
/* 05E908 8005ED58 18A00016 */  blez        $a1, .L8005EDB4
/* 05E90C 8005ED5C 00003025 */   move       $a2, $zero
/* 05E910 8005ED60 30A70003 */  andi        $a3, $a1, 0x3
/* 05E914 8005ED64 10E00008 */  beq         $a3, $zero, .L8005ED88
/* 05E918 8005ED68 00E02025 */   move       $a0, $a3
.L8005ED6C:
/* 05E91C 8005ED6C 904E0000 */  lbu         $t6, 0x0($v0)
/* 05E920 8005ED70 24C60001 */  addiu       $a2, $a2, 0x1
/* 05E924 8005ED74 24420001 */  addiu       $v0, $v0, 0x1
/* 05E928 8005ED78 1486FFFC */  bne         $a0, $a2, .L8005ED6C
/* 05E92C 8005ED7C 006E1821 */   addu       $v1, $v1, $t6
/* 05E930 8005ED80 50C5000D */  beql        $a2, $a1, .L8005EDB8
/* 05E934 8005ED84 00601025 */   move       $v0, $v1
.L8005ED88:
/* 05E938 8005ED88 904F0000 */  lbu         $t7, 0x0($v0)
/* 05E93C 8005ED8C 90580001 */  lbu         $t8, 0x1($v0)
/* 05E940 8005ED90 90590002 */  lbu         $t9, 0x2($v0)
/* 05E944 8005ED94 006F1821 */  addu        $v1, $v1, $t7
/* 05E948 8005ED98 90480003 */  lbu         $t0, 0x3($v0)
/* 05E94C 8005ED9C 00781821 */  addu        $v1, $v1, $t8
/* 05E950 8005EDA0 24C60004 */  addiu       $a2, $a2, 0x4
/* 05E954 8005EDA4 00791821 */  addu        $v1, $v1, $t9
/* 05E958 8005EDA8 24420004 */  addiu       $v0, $v0, 0x4
/* 05E95C 8005EDAC 14C5FFF6 */  bne         $a2, $a1, .L8005ED88
/* 05E960 8005EDB0 00681821 */   addu       $v1, $v1, $t0
.L8005EDB4:
/* 05E964 8005EDB4 00601025 */  move        $v0, $v1
.L8005EDB8:
/* 05E968 8005EDB8 3049FFFF */  andi        $t1, $v0, 0xffff
/* 05E96C 8005EDBC 03E00008 */  jr          $ra
/* 05E970 8005EDC0 01201025 */   move       $v0, $t1

glabel func_8005EDC4 # 1
/* 05E974 8005EDC4 A4C00000 */  sh          $zero, 0x0($a2)
/* 05E978 8005EDC8 A4A00000 */  sh          $zero, 0x0($a1)
/* 05E97C 8005EDCC 94820000 */  lhu         $v0, 0x0($a0)
/* 05E980 8005EDD0 24870004 */  addiu       $a3, $a0, 0x4
/* 05E984 8005EDD4 24E90002 */  addiu       $t1, $a3, 0x2
/* 05E988 8005EDD8 0002C021 */  addu        $t8, $zero, $v0
/* 05E98C 8005EDDC A4B80000 */  sh          $t8, 0x0($a1)
/* 05E990 8005EDE0 94D90000 */  lhu         $t9, 0x0($a2)
/* 05E994 8005EDE4 00406827 */  nor         $t5, $v0, $zero
/* 05E998 8005EDE8 24EA0004 */  addiu       $t2, $a3, 0x4
/* 05E99C 8005EDEC 032D7021 */  addu        $t6, $t9, $t5
/* 05E9A0 8005EDF0 A4CE0000 */  sh          $t6, 0x0($a2)
/* 05E9A4 8005EDF4 94AF0000 */  lhu         $t7, 0x0($a1)
/* 05E9A8 8005EDF8 94820002 */  lhu         $v0, 0x2($a0)
/* 05E9AC 8005EDFC 2404001C */  addiu       $a0, $zero, 0x1c
/* 05E9B0 8005EE00 24EB0006 */  addiu       $t3, $a3, 0x6
/* 05E9B4 8005EE04 01E2C021 */  addu        $t8, $t7, $v0
/* 05E9B8 8005EE08 A4B80000 */  sh          $t8, 0x0($a1)
/* 05E9BC 8005EE0C 94D90000 */  lhu         $t9, 0x0($a2)
/* 05E9C0 8005EE10 00406827 */  nor         $t5, $v0, $zero
/* 05E9C4 8005EE14 24030004 */  addiu       $v1, $zero, 0x4
/* 05E9C8 8005EE18 032D7021 */  addu        $t6, $t9, $t5
/* 05E9CC 8005EE1C A4CE0000 */  sh          $t6, 0x0($a2)
.L8005EE20:
/* 05E9D0 8005EE20 94E20000 */  lhu         $v0, 0x0($a3)
/* 05E9D4 8005EE24 94AF0000 */  lhu         $t7, 0x0($a1)
/* 05E9D8 8005EE28 24630008 */  addiu       $v1, $v1, 0x8
/* 05E9DC 8005EE2C 00406827 */  nor         $t5, $v0, $zero
/* 05E9E0 8005EE30 01E2C021 */  addu        $t8, $t7, $v0
/* 05E9E4 8005EE34 A4B80000 */  sh          $t8, 0x0($a1)
/* 05E9E8 8005EE38 94D90000 */  lhu         $t9, 0x0($a2)
/* 05E9EC 8005EE3C 24E70008 */  addiu       $a3, $a3, 0x8
/* 05E9F0 8005EE40 25290008 */  addiu       $t1, $t1, 0x8
/* 05E9F4 8005EE44 032D7021 */  addu        $t6, $t9, $t5
/* 05E9F8 8005EE48 A4CE0000 */  sh          $t6, 0x0($a2)
/* 05E9FC 8005EE4C 94AF0000 */  lhu         $t7, 0x0($a1)
/* 05EA00 8005EE50 9522FFF8 */  lhu         $v0, -0x8($t1)
/* 05EA04 8005EE54 254A0008 */  addiu       $t2, $t2, 0x8
/* 05EA08 8005EE58 256B0008 */  addiu       $t3, $t3, 0x8
/* 05EA0C 8005EE5C 01E2C021 */  addu        $t8, $t7, $v0
/* 05EA10 8005EE60 A4B80000 */  sh          $t8, 0x0($a1)
/* 05EA14 8005EE64 94D90000 */  lhu         $t9, 0x0($a2)
/* 05EA18 8005EE68 00406827 */  nor         $t5, $v0, $zero
/* 05EA1C 8005EE6C 032D7021 */  addu        $t6, $t9, $t5
/* 05EA20 8005EE70 A4CE0000 */  sh          $t6, 0x0($a2)
/* 05EA24 8005EE74 94AF0000 */  lhu         $t7, 0x0($a1)
/* 05EA28 8005EE78 9542FFF8 */  lhu         $v0, -0x8($t2)
/* 05EA2C 8005EE7C 01E2C021 */  addu        $t8, $t7, $v0
/* 05EA30 8005EE80 A4B80000 */  sh          $t8, 0x0($a1)
/* 05EA34 8005EE84 94D90000 */  lhu         $t9, 0x0($a2)
/* 05EA38 8005EE88 00406827 */  nor         $t5, $v0, $zero
/* 05EA3C 8005EE8C 032D7021 */  addu        $t6, $t9, $t5
/* 05EA40 8005EE90 A4CE0000 */  sh          $t6, 0x0($a2)
/* 05EA44 8005EE94 94AF0000 */  lhu         $t7, 0x0($a1)
/* 05EA48 8005EE98 9562FFF8 */  lhu         $v0, -0x8($t3)
/* 05EA4C 8005EE9C 01E2C021 */  addu        $t8, $t7, $v0
/* 05EA50 8005EEA0 A4B80000 */  sh          $t8, 0x0($a1)
/* 05EA54 8005EEA4 94D90000 */  lhu         $t9, 0x0($a2)
/* 05EA58 8005EEA8 00406827 */  nor         $t5, $v0, $zero
/* 05EA5C 8005EEAC 032D7021 */  addu        $t6, $t9, $t5
/* 05EA60 8005EEB0 1464FFDB */  bne         $v1, $a0, .L8005EE20
/* 05EA64 8005EEB4 A4CE0000 */   sh         $t6, 0x0($a2)
/* 05EA68 8005EEB8 03E00008 */  jr          $ra
/* 05EA6C 8005EEBC 00001025 */   move       $v0, $zero

glabel func_8005EEC0 # 2
/* 05EA70 8005EEC0 27BDFF60 */  addiu       $sp, $sp, -0xa0
/* 05EA74 8005EEC4 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05EA78 8005EEC8 AFB60038 */  sw          $s6, 0x38($sp)
/* 05EA7C 8005EECC AFB50034 */  sw          $s5, 0x34($sp)
/* 05EA80 8005EED0 AFB40030 */  sw          $s4, 0x30($sp)
/* 05EA84 8005EED4 AFB3002C */  sw          $s3, 0x2c($sp)
/* 05EA88 8005EED8 AFB20028 */  sw          $s2, 0x28($sp)
/* 05EA8C 8005EEDC AFB10024 */  sw          $s1, 0x24($sp)
/* 05EA90 8005EEE0 AFB00020 */  sw          $s0, 0x20($sp)
/* 05EA94 8005EEE4 240EFFFF */  addiu       $t6, $zero, -0x1
/* 05EA98 8005EEE8 00809025 */  move        $s2, $a0
/* 05EA9C 8005EEEC 00C0A025 */  move        $s4, $a2
/* 05EAA0 8005EEF0 00A0B025 */  move        $s6, $a1
/* 05EAA4 8005EEF4 00009825 */  move        $s3, $zero
/* 05EAA8 8005EEF8 0C014CB8 */  jal         func_800532E0
/* 05EAAC 8005EEFC ACCE0000 */   sw         $t6, 0x0($a2)
/* 05EAB0 8005EF00 AE820004 */  sw          $v0, 0x4($s4)
/* 05EAB4 8005EF04 8ED9000C */  lw          $t9, 0xc($s6)
/* 05EAB8 8005EF08 8ED80008 */  lw          $t8, 0x8($s6)
/* 05EABC 8005EF0C 02402025 */  move        $a0, $s2
/* 05EAC0 8005EF10 AE99000C */  sw          $t9, 0xc($s4)
/* 05EAC4 8005EF14 AE980008 */  sw          $t8, 0x8($s4)
/* 05EAC8 8005EF18 8EC90014 */  lw          $t1, 0x14($s6)
/* 05EACC 8005EF1C 8EC80010 */  lw          $t0, 0x10($s6)
/* 05EAD0 8005EF20 AE890014 */  sw          $t1, 0x14($s4)
/* 05EAD4 8005EF24 AE880010 */  sw          $t0, 0x10($s4)
/* 05EAD8 8005EF28 924F0065 */  lbu         $t7, 0x65($s2)
/* 05EADC 8005EF2C 51E00008 */  beql        $t7, $zero, .L8005EF50
/* 05EAE0 8005EF30 27B1007C */   addiu      $s1, $sp, 0x7c
/* 05EAE4 8005EF34 0C016204 */  jal         func_80058810
/* 05EAE8 8005EF38 00002825 */   move       $a1, $zero
/* 05EAEC 8005EF3C 50400004 */  beql        $v0, $zero, .L8005EF50
/* 05EAF0 8005EF40 27B1007C */   addiu      $s1, $sp, 0x7c
/* 05EAF4 8005EF44 100000A9 */  b           .L8005F1EC
/* 05EAF8 8005EF48 8FBF003C */   lw         $ra, 0x3c($sp)
/* 05EAFC 8005EF4C 27B1007C */  addiu       $s1, $sp, 0x7c
.L8005EF50:
/* 05EB00 8005EF50 0220A825 */  move        $s5, $s1
/* 05EB04 8005EF54 27B0009C */  addiu       $s0, $sp, 0x9c
/* 05EB08 8005EF58 02402025 */  move        $a0, $s2
.L8005EF5C:
/* 05EB0C 8005EF5C 0C016204 */  jal         func_80058810
/* 05EB10 8005EF60 326500FF */   andi       $a1, $s3, 0xff
/* 05EB14 8005EF64 10400003 */  beq         $v0, $zero, .L8005EF74
/* 05EB18 8005EF68 00003025 */   move       $a2, $zero
/* 05EB1C 8005EF6C 1000009F */  b           .L8005F1EC
/* 05EB20 8005EF70 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005EF74:
/* 05EB24 8005EF74 8E440004 */  lw          $a0, 0x4($s2)
/* 05EB28 8005EF78 8E450008 */  lw          $a1, 0x8($s2)
/* 05EB2C 8005EF7C 0C016224 */  jal         func_80058890
/* 05EB30 8005EF80 02A03825 */   move       $a3, $s5
/* 05EB34 8005EF84 10400003 */  beq         $v0, $zero, .L8005EF94
/* 05EB38 8005EF88 366B0080 */   ori        $t3, $s3, 0x80
/* 05EB3C 8005EF8C 10000097 */  b           .L8005F1EC
/* 05EB40 8005EF90 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005EF94:
/* 05EB44 8005EF94 A3AB007C */  sb          $t3, 0x7c($sp)
/* 05EB48 8005EF98 27A2007D */  addiu       $v0, $sp, 0x7d
.L8005EF9C:
/* 05EB4C 8005EF9C 904C0000 */  lbu         $t4, 0x0($v0)
/* 05EB50 8005EFA0 24420001 */  addiu       $v0, $v0, 0x1
/* 05EB54 8005EFA4 0050082B */  sltu        $at, $v0, $s0
/* 05EB58 8005EFA8 01806827 */  nor         $t5, $t4, $zero
/* 05EB5C 8005EFAC 1420FFFB */  bne         $at, $zero, .L8005EF9C
/* 05EB60 8005EFB0 A04DFFFF */   sb         $t5, -0x1($v0)
/* 05EB64 8005EFB4 8E440004 */  lw          $a0, 0x4($s2)
/* 05EB68 8005EFB8 8E450008 */  lw          $a1, 0x8($s2)
/* 05EB6C 8005EFBC AFA00010 */  sw          $zero, 0x10($sp)
/* 05EB70 8005EFC0 00003025 */  move        $a2, $zero
/* 05EB74 8005EFC4 0C0175A0 */  jal         func_8005D680
/* 05EB78 8005EFC8 02A03825 */   move       $a3, $s5
/* 05EB7C 8005EFCC 10400003 */  beq         $v0, $zero, .L8005EFDC
/* 05EB80 8005EFD0 00003025 */   move       $a2, $zero
/* 05EB84 8005EFD4 10000085 */  b           .L8005F1EC
/* 05EB88 8005EFD8 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005EFDC:
/* 05EB8C 8005EFDC 8E440004 */  lw          $a0, 0x4($s2)
/* 05EB90 8005EFE0 8E450008 */  lw          $a1, 0x8($s2)
/* 05EB94 8005EFE4 0C016224 */  jal         func_80058890
/* 05EB98 8005EFE8 27A7005C */   addiu      $a3, $sp, 0x5c
/* 05EB9C 8005EFEC 10400003 */  beq         $v0, $zero, .L8005EFFC
/* 05EBA0 8005EFF0 27A3005C */   addiu      $v1, $sp, 0x5c
/* 05EBA4 8005EFF4 1000007D */  b           .L8005F1EC
/* 05EBA8 8005EFF8 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005EFFC:
/* 05EBAC 8005EFFC 27A2007C */  addiu       $v0, $sp, 0x7c
.L8005F000:
/* 05EBB0 8005F000 906E0000 */  lbu         $t6, 0x0($v1)
/* 05EBB4 8005F004 90580000 */  lbu         $t8, 0x0($v0)
/* 05EBB8 8005F008 55D80006 */  bnel        $t6, $t8, .L8005F024
/* 05EBBC 8005F00C 27B9007C */   addiu      $t9, $sp, 0x7c
/* 05EBC0 8005F010 24630001 */  addiu       $v1, $v1, 0x1
/* 05EBC4 8005F014 0071082B */  sltu        $at, $v1, $s1
/* 05EBC8 8005F018 1420FFF9 */  bne         $at, $zero, .L8005F000
/* 05EBCC 8005F01C 24420001 */   addiu      $v0, $v0, 0x1
/* 05EBD0 8005F020 27B9007C */  addiu       $t9, $sp, 0x7c
.L8005F024:
/* 05EBD4 8005F024 14790018 */  bne         $v1, $t9, .L8005F088
/* 05EBD8 8005F028 02402025 */   move       $a0, $s2
/* 05EBDC 8005F02C 5A600013 */  blezl       $s3, .L8005F07C
/* 05EBE0 8005F030 26730001 */   addiu      $s3, $s3, 0x1
/* 05EBE4 8005F034 0C016204 */  jal         func_80058810
/* 05EBE8 8005F038 00002825 */   move       $a1, $zero
/* 05EBEC 8005F03C 10400003 */  beq         $v0, $zero, .L8005F04C
/* 05EBF0 8005F040 00003025 */   move       $a2, $zero
/* 05EBF4 8005F044 10000069 */  b           .L8005F1EC
/* 05EBF8 8005F048 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F04C:
/* 05EBFC 8005F04C 8E440004 */  lw          $a0, 0x4($s2)
/* 05EC00 8005F050 8E450008 */  lw          $a1, 0x8($s2)
/* 05EC04 8005F054 0C016224 */  jal         func_80058890
/* 05EC08 8005F058 02A03825 */   move       $a3, $s5
/* 05EC0C 8005F05C 10400003 */  beq         $v0, $zero, .L8005F06C
/* 05EC10 8005F060 93A8007C */   lbu        $t0, 0x7c($sp)
/* 05EC14 8005F064 10000061 */  b           .L8005F1EC
/* 05EC18 8005F068 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F06C:
/* 05EC1C 8005F06C 24010080 */  addiu       $at, $zero, 0x80
/* 05EC20 8005F070 55010006 */  bnel        $t0, $at, .L8005F08C
/* 05EC24 8005F074 92490065 */   lbu        $t1, 0x65($s2)
/* 05EC28 8005F078 26730001 */  addiu       $s3, $s3, 0x1
.L8005F07C:
/* 05EC2C 8005F07C 2A61003E */  slti        $at, $s3, 0x3e
/* 05EC30 8005F080 5420FFB6 */  bnel        $at, $zero, .L8005EF5C
/* 05EC34 8005F084 02402025 */   move       $a0, $s2
.L8005F088:
/* 05EC38 8005F088 92490065 */  lbu         $t1, 0x65($s2)
.L8005F08C:
/* 05EC3C 8005F08C 02402025 */  move        $a0, $s2
/* 05EC40 8005F090 11200007 */  beq         $t1, $zero, .L8005F0B0
/* 05EC44 8005F094 00000000 */   nop
/* 05EC48 8005F098 0C016204 */  jal         func_80058810
/* 05EC4C 8005F09C 00002825 */   move       $a1, $zero
/* 05EC50 8005F0A0 10400003 */  beq         $v0, $zero, .L8005F0B0
/* 05EC54 8005F0A4 00000000 */   nop
/* 05EC58 8005F0A8 10000050 */  b           .L8005F1EC
/* 05EC5C 8005F0AC 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F0B0:
/* 05EC60 8005F0B0 1A600003 */  blez        $s3, .L8005F0C0
/* 05EC64 8005F0B4 02802025 */   move       $a0, $s4
/* 05EC68 8005F0B8 10000002 */  b           .L8005F0C4
/* 05EC6C 8005F0BC 24020001 */   addiu      $v0, $zero, 0x1
.L8005F0C0:
/* 05EC70 8005F0C0 00001025 */  move        $v0, $zero
.L8005F0C4:
/* 05EC74 8005F0C4 96CF0018 */  lhu         $t7, 0x18($s6)
/* 05EC78 8005F0C8 A293001A */  sb          $s3, 0x1a($s4)
/* 05EC7C 8005F0CC 2685001C */  addiu       $a1, $s4, 0x1c
/* 05EC80 8005F0D0 31EAFFFE */  andi        $t2, $t7, 0xfffe
/* 05EC84 8005F0D4 01425825 */  or          $t3, $t2, $v0
/* 05EC88 8005F0D8 A68B0018 */  sh          $t3, 0x18($s4)
/* 05EC8C 8005F0DC 92CC001B */  lbu         $t4, 0x1b($s6)
/* 05EC90 8005F0E0 2686001E */  addiu       $a2, $s4, 0x1e
/* 05EC94 8005F0E4 0C017B71 */  jal         func_8005EDC4
/* 05EC98 8005F0E8 A28C001B */   sb         $t4, 0x1b($s4)
/* 05EC9C 8005F0EC 240D0001 */  addiu       $t5, $zero, 0x1
/* 05ECA0 8005F0F0 240E0003 */  addiu       $t6, $zero, 0x3
/* 05ECA4 8005F0F4 24180004 */  addiu       $t8, $zero, 0x4
/* 05ECA8 8005F0F8 24190006 */  addiu       $t9, $zero, 0x6
/* 05ECAC 8005F0FC A7AD0048 */  sh          $t5, 0x48($sp)
/* 05ECB0 8005F100 A7AE004A */  sh          $t6, 0x4a($sp)
/* 05ECB4 8005F104 A7B8004C */  sh          $t8, 0x4c($sp)
/* 05ECB8 8005F108 A7B9004E */  sh          $t9, 0x4e($sp)
/* 05ECBC 8005F10C 27B00048 */  addiu       $s0, $sp, 0x48
/* 05ECC0 8005F110 27B10050 */  addiu       $s1, $sp, 0x50
/* 05ECC4 8005F114 8E440004 */  lw          $a0, 0x4($s2)
.L8005F118:
/* 05ECC8 8005F118 8E450008 */  lw          $a1, 0x8($s2)
/* 05ECCC 8005F11C 96060000 */  lhu         $a2, 0x0($s0)
/* 05ECD0 8005F120 24080001 */  addiu       $t0, $zero, 0x1
/* 05ECD4 8005F124 AFA80010 */  sw          $t0, 0x10($sp)
/* 05ECD8 8005F128 0C0175A0 */  jal         func_8005D680
/* 05ECDC 8005F12C 02803825 */   move       $a3, $s4
/* 05ECE0 8005F130 10400003 */  beq         $v0, $zero, .L8005F140
/* 05ECE4 8005F134 26100002 */   addiu      $s0, $s0, 0x2
/* 05ECE8 8005F138 1000002C */  b           .L8005F1EC
/* 05ECEC 8005F13C 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F140:
/* 05ECF0 8005F140 0211082B */  sltu        $at, $s0, $s1
/* 05ECF4 8005F144 5420FFF4 */  bnel        $at, $zero, .L8005F118
/* 05ECF8 8005F148 8E440004 */   lw         $a0, 0x4($s2)
/* 05ECFC 8005F14C 8E440004 */  lw          $a0, 0x4($s2)
/* 05ED00 8005F150 8E450008 */  lw          $a1, 0x8($s2)
/* 05ED04 8005F154 24060001 */  addiu       $a2, $zero, 0x1
/* 05ED08 8005F158 0C016224 */  jal         func_80058890
/* 05ED0C 8005F15C 02A03825 */   move       $a3, $s5
/* 05ED10 8005F160 10400003 */  beq         $v0, $zero, .L8005F170
/* 05ED14 8005F164 02801825 */   move       $v1, $s4
/* 05ED18 8005F168 10000020 */  b           .L8005F1EC
/* 05ED1C 8005F16C 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F170:
/* 05ED20 8005F170 27A2007C */  addiu       $v0, $sp, 0x7c
/* 05ED24 8005F174 27A4009C */  addiu       $a0, $sp, 0x9c
.L8005F178:
/* 05ED28 8005F178 90490000 */  lbu         $t1, 0x0($v0)
/* 05ED2C 8005F17C 906F0000 */  lbu         $t7, 0x0($v1)
/* 05ED30 8005F180 512F0004 */  beql        $t1, $t7, .L8005F194
/* 05ED34 8005F184 904A0001 */   lbu        $t2, 0x1($v0)
/* 05ED38 8005F188 10000017 */  b           .L8005F1E8
/* 05ED3C 8005F18C 2402000B */   addiu      $v0, $zero, 0xb
/* 05ED40 8005F190 904A0001 */  lbu         $t2, 0x1($v0)
.L8005F194:
/* 05ED44 8005F194 906B0001 */  lbu         $t3, 0x1($v1)
/* 05ED48 8005F198 514B0004 */  beql        $t2, $t3, .L8005F1AC
/* 05ED4C 8005F19C 904C0002 */   lbu        $t4, 0x2($v0)
/* 05ED50 8005F1A0 10000011 */  b           .L8005F1E8
/* 05ED54 8005F1A4 2402000B */   addiu      $v0, $zero, 0xb
/* 05ED58 8005F1A8 904C0002 */  lbu         $t4, 0x2($v0)
.L8005F1AC:
/* 05ED5C 8005F1AC 906D0002 */  lbu         $t5, 0x2($v1)
/* 05ED60 8005F1B0 518D0004 */  beql        $t4, $t5, .L8005F1C4
/* 05ED64 8005F1B4 904E0003 */   lbu        $t6, 0x3($v0)
/* 05ED68 8005F1B8 1000000B */  b           .L8005F1E8
/* 05ED6C 8005F1BC 2402000B */   addiu      $v0, $zero, 0xb
/* 05ED70 8005F1C0 904E0003 */  lbu         $t6, 0x3($v0)
.L8005F1C4:
/* 05ED74 8005F1C4 90780003 */  lbu         $t8, 0x3($v1)
/* 05ED78 8005F1C8 24420004 */  addiu       $v0, $v0, 0x4
/* 05ED7C 8005F1CC 11D80003 */  beq         $t6, $t8, .L8005F1DC
/* 05ED80 8005F1D0 00000000 */   nop
/* 05ED84 8005F1D4 10000004 */  b           .L8005F1E8
/* 05ED88 8005F1D8 2402000B */   addiu      $v0, $zero, 0xb
.L8005F1DC:
/* 05ED8C 8005F1DC 1444FFE6 */  bne         $v0, $a0, .L8005F178
/* 05ED90 8005F1E0 24630004 */   addiu      $v1, $v1, 0x4
/* 05ED94 8005F1E4 00001025 */  move        $v0, $zero
.L8005F1E8:
/* 05ED98 8005F1E8 8FBF003C */  lw          $ra, 0x3c($sp)
.L8005F1EC:
/* 05ED9C 8005F1EC 8FB00020 */  lw          $s0, 0x20($sp)
/* 05EDA0 8005F1F0 8FB10024 */  lw          $s1, 0x24($sp)
/* 05EDA4 8005F1F4 8FB20028 */  lw          $s2, 0x28($sp)
/* 05EDA8 8005F1F8 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05EDAC 8005F1FC 8FB40030 */  lw          $s4, 0x30($sp)
/* 05EDB0 8005F200 8FB50034 */  lw          $s5, 0x34($sp)
/* 05EDB4 8005F204 8FB60038 */  lw          $s6, 0x38($sp)
/* 05EDB8 8005F208 03E00008 */  jr          $ra
/* 05EDBC 8005F20C 27BD00A0 */   addiu      $sp, $sp, 0xa0

glabel func_8005F210 # 3
/* 05EDC0 8005F210 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 05EDC4 8005F214 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05EDC8 8005F218 AFB60038 */  sw          $s6, 0x38($sp)
/* 05EDCC 8005F21C AFB50034 */  sw          $s5, 0x34($sp)
/* 05EDD0 8005F220 AFB40030 */  sw          $s4, 0x30($sp)
/* 05EDD4 8005F224 AFB3002C */  sw          $s3, 0x2c($sp)
/* 05EDD8 8005F228 AFB20028 */  sw          $s2, 0x28($sp)
/* 05EDDC 8005F22C AFB10024 */  sw          $s1, 0x24($sp)
/* 05EDE0 8005F230 AFB00020 */  sw          $s0, 0x20($sp)
/* 05EDE4 8005F234 908E0065 */  lbu         $t6, 0x65($a0)
/* 05EDE8 8005F238 00A09025 */  move        $s2, $a1
/* 05EDEC 8005F23C 00809825 */  move        $s3, $a0
/* 05EDF0 8005F240 51C00008 */  beql        $t6, $zero, .L8005F264
/* 05EDF4 8005F244 240F0001 */   addiu      $t7, $zero, 0x1
/* 05EDF8 8005F248 0C016204 */  jal         func_80058810
/* 05EDFC 8005F24C 00002825 */   move       $a1, $zero
/* 05EE00 8005F250 50400004 */  beql        $v0, $zero, .L8005F264
/* 05EE04 8005F254 240F0001 */   addiu      $t7, $zero, 0x1
/* 05EE08 8005F258 1000003D */  b           .L8005F350
/* 05EE0C 8005F25C 8FBF003C */   lw         $ra, 0x3c($sp)
/* 05EE10 8005F260 240F0001 */  addiu       $t7, $zero, 0x1
.L8005F264:
/* 05EE14 8005F264 24180003 */  addiu       $t8, $zero, 0x3
/* 05EE18 8005F268 24190004 */  addiu       $t9, $zero, 0x4
/* 05EE1C 8005F26C 24080006 */  addiu       $t0, $zero, 0x6
/* 05EE20 8005F270 A7AF0058 */  sh          $t7, 0x58($sp)
/* 05EE24 8005F274 A7B8005A */  sh          $t8, 0x5a($sp)
/* 05EE28 8005F278 A7B9005C */  sh          $t9, 0x5c($sp)
/* 05EE2C 8005F27C A7A8005E */  sh          $t0, 0x5e($sp)
/* 05EE30 8005F280 24110001 */  addiu       $s1, $zero, 0x1
/* 05EE34 8005F284 27B0005A */  addiu       $s0, $sp, 0x5a
/* 05EE38 8005F288 27B60050 */  addiu       $s6, $sp, 0x50
/* 05EE3C 8005F28C 24150004 */  addiu       $s5, $zero, 0x4
/* 05EE40 8005F290 27B40052 */  addiu       $s4, $sp, 0x52
.L8005F294:
/* 05EE44 8005F294 8E640004 */  lw          $a0, 0x4($s3)
/* 05EE48 8005F298 8E650008 */  lw          $a1, 0x8($s3)
/* 05EE4C 8005F29C 96060000 */  lhu         $a2, 0x0($s0)
/* 05EE50 8005F2A0 0C016224 */  jal         func_80058890
/* 05EE54 8005F2A4 02403825 */   move       $a3, $s2
/* 05EE58 8005F2A8 10400003 */  beq         $v0, $zero, .L8005F2B8
/* 05EE5C 8005F2AC 02402025 */   move       $a0, $s2
/* 05EE60 8005F2B0 10000027 */  b           .L8005F350
/* 05EE64 8005F2B4 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F2B8:
/* 05EE68 8005F2B8 02802825 */  move        $a1, $s4
/* 05EE6C 8005F2BC 0C017B71 */  jal         func_8005EDC4
/* 05EE70 8005F2C0 02C03025 */   move       $a2, $s6
/* 05EE74 8005F2C4 97A90052 */  lhu         $t1, 0x52($sp)
/* 05EE78 8005F2C8 964A001C */  lhu         $t2, 0x1c($s2)
/* 05EE7C 8005F2CC 97AB0050 */  lhu         $t3, 0x50($sp)
/* 05EE80 8005F2D0 552A0005 */  bnel        $t1, $t2, .L8005F2E8
/* 05EE84 8005F2D4 26310001 */   addiu      $s1, $s1, 0x1
/* 05EE88 8005F2D8 964C001E */  lhu         $t4, 0x1e($s2)
/* 05EE8C 8005F2DC 116C0004 */  beq         $t3, $t4, .L8005F2F0
/* 05EE90 8005F2E0 00000000 */   nop
/* 05EE94 8005F2E4 26310001 */  addiu       $s1, $s1, 0x1
.L8005F2E8:
/* 05EE98 8005F2E8 1635FFEA */  bne         $s1, $s5, .L8005F294
/* 05EE9C 8005F2EC 26100002 */   addiu      $s0, $s0, 0x2
.L8005F2F0:
/* 05EEA0 8005F2F0 16350003 */  bne         $s1, $s5, .L8005F300
/* 05EEA4 8005F2F4 00008025 */   move       $s0, $zero
/* 05EEA8 8005F2F8 10000014 */  b           .L8005F34C
/* 05EEAC 8005F2FC 2402000A */   addiu      $v0, $zero, 0xa
.L8005F300:
/* 05EEB0 8005F300 27B40058 */  addiu       $s4, $sp, 0x58
.L8005F304:
/* 05EEB4 8005F304 1211000D */  beq         $s0, $s1, .L8005F33C
/* 05EEB8 8005F308 00106840 */   sll        $t5, $s0, 1
/* 05EEBC 8005F30C 028D7021 */  addu        $t6, $s4, $t5
/* 05EEC0 8005F310 95C60000 */  lhu         $a2, 0x0($t6)
/* 05EEC4 8005F314 8E640004 */  lw          $a0, 0x4($s3)
/* 05EEC8 8005F318 8E650008 */  lw          $a1, 0x8($s3)
/* 05EECC 8005F31C 240F0001 */  addiu       $t7, $zero, 0x1
/* 05EED0 8005F320 AFAF0010 */  sw          $t7, 0x10($sp)
/* 05EED4 8005F324 0C0175A0 */  jal         func_8005D680
/* 05EED8 8005F328 02403825 */   move       $a3, $s2
/* 05EEDC 8005F32C 50400004 */  beql        $v0, $zero, .L8005F340
/* 05EEE0 8005F330 26100001 */   addiu      $s0, $s0, 0x1
/* 05EEE4 8005F334 10000006 */  b           .L8005F350
/* 05EEE8 8005F338 8FBF003C */   lw         $ra, 0x3c($sp)
.L8005F33C:
/* 05EEEC 8005F33C 26100001 */  addiu       $s0, $s0, 0x1
.L8005F340:
/* 05EEF0 8005F340 1615FFF0 */  bne         $s0, $s5, .L8005F304
/* 05EEF4 8005F344 00000000 */   nop
/* 05EEF8 8005F348 00001025 */  move        $v0, $zero
.L8005F34C:
/* 05EEFC 8005F34C 8FBF003C */  lw          $ra, 0x3c($sp)
.L8005F350:
/* 05EF00 8005F350 8FB00020 */  lw          $s0, 0x20($sp)
/* 05EF04 8005F354 8FB10024 */  lw          $s1, 0x24($sp)
/* 05EF08 8005F358 8FB20028 */  lw          $s2, 0x28($sp)
/* 05EF0C 8005F35C 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05EF10 8005F360 8FB40030 */  lw          $s4, 0x30($sp)
/* 05EF14 8005F364 8FB50034 */  lw          $s5, 0x34($sp)
/* 05EF18 8005F368 8FB60038 */  lw          $s6, 0x38($sp)
/* 05EF1C 8005F36C 03E00008 */  jr          $ra
/* 05EF20 8005F370 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8005F374 # 4
/* 05EF24 8005F374 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 05EF28 8005F378 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05EF2C 8005F37C AFB10018 */  sw          $s1, 0x18($sp)
/* 05EF30 8005F380 AFB00014 */  sw          $s0, 0x14($sp)
/* 05EF34 8005F384 908E0065 */  lbu         $t6, 0x65($a0)
/* 05EF38 8005F388 00808025 */  move        $s0, $a0
/* 05EF3C 8005F38C 51C00008 */  beql        $t6, $zero, .L8005F3B0
/* 05EF40 8005F390 8E040004 */   lw         $a0, 0x4($s0)
/* 05EF44 8005F394 0C016204 */  jal         func_80058810
/* 05EF48 8005F398 00002825 */   move       $a1, $zero
/* 05EF4C 8005F39C 50400004 */  beql        $v0, $zero, .L8005F3B0
/* 05EF50 8005F3A0 8E040004 */   lw         $a0, 0x4($s0)
/* 05EF54 8005F3A4 1000005A */  b           .L8005F510
/* 05EF58 8005F3A8 8FBF001C */   lw         $ra, 0x1c($sp)
/* 05EF5C 8005F3AC 8E040004 */  lw          $a0, 0x4($s0)
.L8005F3B0:
/* 05EF60 8005F3B0 8E050008 */  lw          $a1, 0x8($s0)
/* 05EF64 8005F3B4 24060001 */  addiu       $a2, $zero, 0x1
/* 05EF68 8005F3B8 0C016224 */  jal         func_80058890
/* 05EF6C 8005F3BC 27A7004C */   addiu      $a3, $sp, 0x4c
/* 05EF70 8005F3C0 10400003 */  beq         $v0, $zero, .L8005F3D0
/* 05EF74 8005F3C4 27A4004C */   addiu      $a0, $sp, 0x4c
/* 05EF78 8005F3C8 10000051 */  b           .L8005F510
/* 05EF7C 8005F3CC 8FBF001C */   lw         $ra, 0x1c($sp)
.L8005F3D0:
/* 05EF80 8005F3D0 27A5006E */  addiu       $a1, $sp, 0x6e
/* 05EF84 8005F3D4 0C017B71 */  jal         func_8005EDC4
/* 05EF88 8005F3D8 27A6006C */   addiu      $a2, $sp, 0x6c
/* 05EF8C 8005F3DC 97AF006E */  lhu         $t7, 0x6e($sp)
/* 05EF90 8005F3E0 97B80068 */  lhu         $t8, 0x68($sp)
/* 05EF94 8005F3E4 27A5004C */  addiu       $a1, $sp, 0x4c
/* 05EF98 8005F3E8 00A08825 */  move        $s1, $a1
/* 05EF9C 8005F3EC 15F80004 */  bne         $t7, $t8, .L8005F400
/* 05EFA0 8005F3F0 97B9006C */   lhu        $t9, 0x6c($sp)
/* 05EFA4 8005F3F4 97A9006A */  lhu         $t1, 0x6a($sp)
/* 05EFA8 8005F3F8 53290015 */  beql        $t9, $t1, .L8005F450
/* 05EFAC 8005F3FC 962A0018 */   lhu        $t2, 0x18($s1)
.L8005F400:
/* 05EFB0 8005F400 0C017C84 */  jal         func_8005F210
/* 05EFB4 8005F404 02002025 */   move       $a0, $s0
/* 05EFB8 8005F408 2401000A */  addiu       $at, $zero, 0xa
/* 05EFBC 8005F40C 1441000B */  bne         $v0, $at, .L8005F43C
/* 05EFC0 8005F410 00401825 */   move       $v1, $v0
/* 05EFC4 8005F414 02002025 */  move        $a0, $s0
/* 05EFC8 8005F418 27A5004C */  addiu       $a1, $sp, 0x4c
/* 05EFCC 8005F41C 0C017BB0 */  jal         func_8005EEC0
/* 05EFD0 8005F420 27A60028 */   addiu      $a2, $sp, 0x28
/* 05EFD4 8005F424 10400003 */  beq         $v0, $zero, .L8005F434
/* 05EFD8 8005F428 00000000 */   nop
/* 05EFDC 8005F42C 10000038 */  b           .L8005F510
/* 05EFE0 8005F430 8FBF001C */   lw         $ra, 0x1c($sp)
.L8005F434:
/* 05EFE4 8005F434 10000005 */  b           .L8005F44C
/* 05EFE8 8005F438 27B10028 */   addiu      $s1, $sp, 0x28
.L8005F43C:
/* 05EFEC 8005F43C 50400004 */  beql        $v0, $zero, .L8005F450
/* 05EFF0 8005F440 962A0018 */   lhu        $t2, 0x18($s1)
/* 05EFF4 8005F444 10000031 */  b           .L8005F50C
/* 05EFF8 8005F448 00601025 */   move       $v0, $v1
.L8005F44C:
/* 05EFFC 8005F44C 962A0018 */  lhu         $t2, 0x18($s1)
.L8005F450:
/* 05F000 8005F450 02002025 */  move        $a0, $s0
/* 05F004 8005F454 02202825 */  move        $a1, $s1
/* 05F008 8005F458 314B0001 */  andi        $t3, $t2, 0x1
/* 05F00C 8005F45C 5560000D */  bnel        $t3, $zero, .L8005F494
/* 05F010 8005F460 02202025 */   move       $a0, $s1
/* 05F014 8005F464 0C017BB0 */  jal         func_8005EEC0
/* 05F018 8005F468 27A60028 */   addiu      $a2, $sp, 0x28
/* 05F01C 8005F46C 10400003 */  beq         $v0, $zero, .L8005F47C
/* 05F020 8005F470 97AC0040 */   lhu        $t4, 0x40($sp)
/* 05F024 8005F474 10000026 */  b           .L8005F510
/* 05F028 8005F478 8FBF001C */   lw         $ra, 0x1c($sp)
.L8005F47C:
/* 05F02C 8005F47C 318D0001 */  andi        $t5, $t4, 0x1
/* 05F030 8005F480 15A00003 */  bne         $t5, $zero, .L8005F490
/* 05F034 8005F484 27B10028 */   addiu      $s1, $sp, 0x28
/* 05F038 8005F488 10000020 */  b           .L8005F50C
/* 05F03C 8005F48C 2402000B */   addiu      $v0, $zero, 0xb
.L8005F490:
/* 05F040 8005F490 02202025 */  move        $a0, $s1
.L8005F494:
/* 05F044 8005F494 2605000C */  addiu       $a1, $s0, 0xc
/* 05F048 8005F498 0C014984 */  jal         func_80052610
/* 05F04C 8005F49C 24060020 */   addiu      $a2, $zero, 0x20
/* 05F050 8005F4A0 922E001B */  lbu         $t6, 0x1b($s1)
/* 05F054 8005F4A4 24090010 */  addiu       $t1, $zero, 0x10
/* 05F058 8005F4A8 240A0008 */  addiu       $t2, $zero, 0x8
/* 05F05C 8005F4AC AE0E004C */  sw          $t6, 0x4c($s0)
/* 05F060 8005F4B0 922F001A */  lbu         $t7, 0x1a($s1)
/* 05F064 8005F4B4 AE090050 */  sw          $t1, 0x50($s0)
/* 05F068 8005F4B8 AE0A0054 */  sw          $t2, 0x54($s0)
/* 05F06C 8005F4BC 31E200FF */  andi        $v0, $t7, 0xff
/* 05F070 8005F4C0 000218C0 */  sll         $v1, $v0, 3
/* 05F074 8005F4C4 0002C040 */  sll         $t8, $v0, 1
/* 05F078 8005F4C8 24680008 */  addiu       $t0, $v1, 0x8
/* 05F07C 8005F4CC 27190003 */  addiu       $t9, $t8, 0x3
/* 05F080 8005F4D0 01035821 */  addu        $t3, $t0, $v1
/* 05F084 8005F4D4 AE190060 */  sw          $t9, 0x60($s0)
/* 05F088 8005F4D8 AE080058 */  sw          $t0, 0x58($s0)
/* 05F08C 8005F4DC AE0B005C */  sw          $t3, 0x5c($s0)
/* 05F090 8005F4E0 8E040004 */  lw          $a0, 0x4($s0)
/* 05F094 8005F4E4 8E050008 */  lw          $a1, 0x8($s0)
/* 05F098 8005F4E8 24060007 */  addiu       $a2, $zero, 0x7
/* 05F09C 8005F4EC 2607002C */  addiu       $a3, $s0, 0x2c
/* 05F0A0 8005F4F0 0C016224 */  jal         func_80058890
/* 05F0A4 8005F4F4 A20F0064 */   sb         $t7, 0x64($s0)
/* 05F0A8 8005F4F8 50400004 */  beql        $v0, $zero, .L8005F50C
/* 05F0AC 8005F4FC 00001025 */   move       $v0, $zero
/* 05F0B0 8005F500 10000003 */  b           .L8005F510
/* 05F0B4 8005F504 8FBF001C */   lw         $ra, 0x1c($sp)
/* 05F0B8 8005F508 00001025 */  move        $v0, $zero
.L8005F50C:
/* 05F0BC 8005F50C 8FBF001C */  lw          $ra, 0x1c($sp)
.L8005F510:
/* 05F0C0 8005F510 8FB00014 */  lw          $s0, 0x14($sp)
/* 05F0C4 8005F514 8FB10018 */  lw          $s1, 0x18($sp)
/* 05F0C8 8005F518 03E00008 */  jr          $ra
/* 05F0CC 8005F51C 27BD0070 */   addiu      $sp, $sp, 0x70

glabel func_8005F520 # 5
/* 05F0D0 8005F520 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 05F0D4 8005F524 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05F0D8 8005F528 AFB00018 */  sw          $s0, 0x18($sp)
/* 05F0DC 8005F52C 908E0065 */  lbu         $t6, 0x65($a0)
/* 05F0E0 8005F530 00808025 */  move        $s0, $a0
/* 05F0E4 8005F534 51C0000F */  beql        $t6, $zero, .L8005F574
/* 05F0E8 8005F538 8E040004 */   lw         $a0, 0x4($s0)
/* 05F0EC 8005F53C 0C016204 */  jal         func_80058810
/* 05F0F0 8005F540 00002825 */   move       $a1, $zero
/* 05F0F4 8005F544 24010002 */  addiu       $at, $zero, 0x2
/* 05F0F8 8005F548 14410005 */  bne         $v0, $at, .L8005F560
/* 05F0FC 8005F54C 00401825 */   move       $v1, $v0
/* 05F100 8005F550 02002025 */  move        $a0, $s0
/* 05F104 8005F554 0C016204 */  jal         func_80058810
/* 05F108 8005F558 00002825 */   move       $a1, $zero
/* 05F10C 8005F55C 00401825 */  move        $v1, $v0
.L8005F560:
/* 05F110 8005F560 50400004 */  beql        $v0, $zero, .L8005F574
/* 05F114 8005F564 8E040004 */   lw         $a0, 0x4($s0)
/* 05F118 8005F568 1000001D */  b           .L8005F5E0
/* 05F11C 8005F56C 00601025 */   move       $v0, $v1
/* 05F120 8005F570 8E040004 */  lw          $a0, 0x4($s0)
.L8005F574:
/* 05F124 8005F574 8E050008 */  lw          $a1, 0x8($s0)
/* 05F128 8005F578 24060001 */  addiu       $a2, $zero, 0x1
/* 05F12C 8005F57C 0C016224 */  jal         func_80058890
/* 05F130 8005F580 27A70028 */   addiu      $a3, $sp, 0x28
/* 05F134 8005F584 1040000D */  beq         $v0, $zero, .L8005F5BC
/* 05F138 8005F588 24010002 */   addiu      $at, $zero, 0x2
/* 05F13C 8005F58C 10410003 */  beq         $v0, $at, .L8005F59C
/* 05F140 8005F590 24060001 */   addiu      $a2, $zero, 0x1
/* 05F144 8005F594 10000013 */  b           .L8005F5E4
/* 05F148 8005F598 8FBF001C */   lw         $ra, 0x1c($sp)
.L8005F59C:
/* 05F14C 8005F59C 8E040004 */  lw          $a0, 0x4($s0)
/* 05F150 8005F5A0 8E050008 */  lw          $a1, 0x8($s0)
/* 05F154 8005F5A4 0C016224 */  jal         func_80058890
/* 05F158 8005F5A8 27A70028 */   addiu      $a3, $sp, 0x28
/* 05F15C 8005F5AC 50400004 */  beql        $v0, $zero, .L8005F5C0
/* 05F160 8005F5B0 2604000C */   addiu      $a0, $s0, 0xc
/* 05F164 8005F5B4 1000000B */  b           .L8005F5E4
/* 05F168 8005F5B8 8FBF001C */   lw         $ra, 0x1c($sp)
.L8005F5BC:
/* 05F16C 8005F5BC 2604000C */  addiu       $a0, $s0, 0xc
.L8005F5C0:
/* 05F170 8005F5C0 27A50028 */  addiu       $a1, $sp, 0x28
/* 05F174 8005F5C4 0C015544 */  jal         func_80055510
/* 05F178 8005F5C8 24060020 */   addiu      $a2, $zero, 0x20
/* 05F17C 8005F5CC 50400004 */  beql        $v0, $zero, .L8005F5E0
/* 05F180 8005F5D0 00001025 */   move       $v0, $zero
/* 05F184 8005F5D4 10000002 */  b           .L8005F5E0
/* 05F188 8005F5D8 24020002 */   addiu      $v0, $zero, 0x2
/* 05F18C 8005F5DC 00001025 */  move        $v0, $zero
.L8005F5E0:
/* 05F190 8005F5E0 8FBF001C */  lw          $ra, 0x1c($sp)
.L8005F5E4:
/* 05F194 8005F5E4 8FB00018 */  lw          $s0, 0x18($sp)
/* 05F198 8005F5E8 27BD0048 */  addiu       $sp, $sp, 0x48
/* 05F19C 8005F5EC 03E00008 */  jr          $ra
/* 05F1A0 8005F5F0 00000000 */   nop

glabel func_8005F5F4 # 6
/* 05F1A4 8005F5F4 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 05F1A8 8005F5F8 AFB40030 */  sw          $s4, 0x30($sp)
/* 05F1AC 8005F5FC 30D400FF */  andi        $s4, $a2, 0xff
/* 05F1B0 8005F600 AFB20028 */  sw          $s2, 0x28($sp)
/* 05F1B4 8005F604 00809025 */  move        $s2, $a0
/* 05F1B8 8005F608 AFBF0034 */  sw          $ra, 0x34($sp)
/* 05F1BC 8005F60C AFB3002C */  sw          $s3, 0x2c($sp)
/* 05F1C0 8005F610 AFB10024 */  sw          $s1, 0x24($sp)
/* 05F1C4 8005F614 AFB00020 */  sw          $s0, 0x20($sp)
/* 05F1C8 8005F618 AFA5005C */  sw          $a1, 0x5c($sp)
/* 05F1CC 8005F61C AFA60060 */  sw          $a2, 0x60($sp)
/* 05F1D0 8005F620 16800011 */  bne         $s4, $zero, .L8005F668
/* 05F1D4 8005F624 AFA70064 */   sw         $a3, 0x64($sp)
/* 05F1D8 8005F628 3C0F800A */  lui         $t7, %hi(D_8009FC14)
/* 05F1DC 8005F62C 91EFFC14 */  lbu         $t7, %lo(D_8009FC14)($t7)
/* 05F1E0 8005F630 93B80067 */  lbu         $t8, 0x67($sp)
/* 05F1E4 8005F634 3C19800A */  lui         $t9, %hi(D_8009FC10)
/* 05F1E8 8005F638 55F8000C */  bnel        $t7, $t8, .L8005F66C
/* 05F1EC 8005F63C 92490065 */   lbu        $t1, 0x65($s2)
/* 05F1F0 8005F640 8F39FC10 */  lw          $t9, %lo(D_8009FC10)($t9)
/* 05F1F4 8005F644 8C880008 */  lw          $t0, 0x8($a0)
/* 05F1F8 8005F648 3C048010 */  lui         $a0, %hi(D_80100580)
/* 05F1FC 8005F64C 24840580 */  addiu       $a0, $a0, %lo(D_80100580)
/* 05F200 8005F650 57280006 */  bnel        $t9, $t0, .L8005F66C
/* 05F204 8005F654 92490065 */   lbu        $t1, 0x65($s2)
/* 05F208 8005F658 0C014984 */  jal         func_80052610
/* 05F20C 8005F65C 24060100 */   addiu      $a2, $zero, 0x100
/* 05F210 8005F660 10000091 */  b           .L8005F8A8
/* 05F214 8005F664 00001025 */   move       $v0, $zero
.L8005F668:
/* 05F218 8005F668 92490065 */  lbu         $t1, 0x65($s2)
.L8005F66C:
/* 05F21C 8005F66C 02402025 */  move        $a0, $s2
/* 05F220 8005F670 51200008 */  beql        $t1, $zero, .L8005F694
/* 05F224 8005F674 93A30067 */   lbu        $v1, 0x67($sp)
/* 05F228 8005F678 0C016204 */  jal         func_80058810
/* 05F22C 8005F67C 00002825 */   move       $a1, $zero
/* 05F230 8005F680 50400004 */  beql        $v0, $zero, .L8005F694
/* 05F234 8005F684 93A30067 */   lbu        $v1, 0x67($sp)
/* 05F238 8005F688 10000088 */  b           .L8005F8AC
/* 05F23C 8005F68C 8FBF0034 */   lw         $ra, 0x34($sp)
/* 05F240 8005F690 93A30067 */  lbu         $v1, 0x67($sp)
.L8005F694:
/* 05F244 8005F694 24020001 */  addiu       $v0, $zero, 0x1
/* 05F248 8005F698 240A0001 */  addiu       $t2, $zero, 0x1
/* 05F24C 8005F69C 58600004 */  blezl       $v1, .L8005F6B0
/* 05F250 8005F6A0 8E4B0060 */   lw         $t3, 0x60($s2)
/* 05F254 8005F6A4 10000003 */  b           .L8005F6B4
/* 05F258 8005F6A8 AFAA0048 */   sw         $t2, 0x48($sp)
/* 05F25C 8005F6AC 8E4B0060 */  lw          $t3, 0x60($s2)
.L8005F6B0:
/* 05F260 8005F6B0 AFAB0048 */  sw          $t3, 0x48($sp)
.L8005F6B4:
/* 05F264 8005F6B4 1454000C */  bne         $v0, $s4, .L8005F6E8
/* 05F268 8005F6B8 8FAD0048 */   lw         $t5, 0x48($sp)
/* 05F26C 8005F6BC 8FAC005C */  lw          $t4, 0x5c($sp)
/* 05F270 8005F6C0 000D2823 */  subu        $a1, $zero, $t5
/* 05F274 8005F6C4 00057840 */  sll         $t7, $a1, 1
/* 05F278 8005F6C8 000D7040 */  sll         $t6, $t5, 1
/* 05F27C 8005F6CC 25E50100 */  addiu       $a1, $t7, 0x100
/* 05F280 8005F6D0 AFA3003C */  sw          $v1, 0x3c($sp)
/* 05F284 8005F6D4 0C017B54 */  jal         func_8005ED50
/* 05F288 8005F6D8 018E2021 */   addu       $a0, $t4, $t6
/* 05F28C 8005F6DC 8FB8005C */  lw          $t8, 0x5c($sp)
/* 05F290 8005F6E0 8FA3003C */  lw          $v1, 0x3c($sp)
/* 05F294 8005F6E4 A3020001 */  sb          $v0, 0x1($t8)
.L8005F6E8:
/* 05F298 8005F6E8 00008025 */  move        $s0, $zero
/* 05F29C 8005F6EC 8FB1005C */  lw          $s1, 0x5c($sp)
/* 05F2A0 8005F6F0 000398C0 */  sll         $s3, $v1, 3
.L8005F6F4:
/* 05F2A4 8005F6F4 24020001 */  addiu       $v0, $zero, 0x1
/* 05F2A8 8005F6F8 14540016 */  bne         $v0, $s4, .L8005F754
/* 05F2AC 8005F6FC 8E450008 */   lw         $a1, 0x8($s2)
/* 05F2B0 8005F700 8E590054 */  lw          $t9, 0x54($s2)
/* 05F2B4 8005F704 8E440004 */  lw          $a0, 0x4($s2)
/* 05F2B8 8005F708 AFA00010 */  sw          $zero, 0x10($sp)
/* 05F2BC 8005F70C 03334021 */  addu        $t0, $t9, $s3
/* 05F2C0 8005F710 01103021 */  addu        $a2, $t0, $s0
/* 05F2C4 8005F714 30C9FFFF */  andi        $t1, $a2, 0xffff
/* 05F2C8 8005F718 01203025 */  move        $a2, $t1
/* 05F2CC 8005F71C 0C0175A0 */  jal         func_8005D680
/* 05F2D0 8005F720 02203825 */   move       $a3, $s1
/* 05F2D4 8005F724 8E4A0058 */  lw          $t2, 0x58($s2)
/* 05F2D8 8005F728 8E440004 */  lw          $a0, 0x4($s2)
/* 05F2DC 8005F72C 8E450008 */  lw          $a1, 0x8($s2)
/* 05F2E0 8005F730 01535821 */  addu        $t3, $t2, $s3
/* 05F2E4 8005F734 01703021 */  addu        $a2, $t3, $s0
/* 05F2E8 8005F738 30CCFFFF */  andi        $t4, $a2, 0xffff
/* 05F2EC 8005F73C 01803025 */  move        $a2, $t4
/* 05F2F0 8005F740 AFA00010 */  sw          $zero, 0x10($sp)
/* 05F2F4 8005F744 0C0175A0 */  jal         func_8005D680
/* 05F2F8 8005F748 02203825 */   move       $a3, $s1
/* 05F2FC 8005F74C 1000000A */  b           .L8005F778
/* 05F300 8005F750 00401825 */   move       $v1, $v0
.L8005F754:
/* 05F304 8005F754 8E4E0054 */  lw          $t6, 0x54($s2)
/* 05F308 8005F758 8E440004 */  lw          $a0, 0x4($s2)
/* 05F30C 8005F75C 02203825 */  move        $a3, $s1
/* 05F310 8005F760 01D36821 */  addu        $t5, $t6, $s3
/* 05F314 8005F764 01B03021 */  addu        $a2, $t5, $s0
/* 05F318 8005F768 30CFFFFF */  andi        $t7, $a2, 0xffff
/* 05F31C 8005F76C 0C016224 */  jal         func_80058890
/* 05F320 8005F770 01E03025 */   move       $a2, $t7
/* 05F324 8005F774 00401825 */  move        $v1, $v0
.L8005F778:
/* 05F328 8005F778 10400003 */  beq         $v0, $zero, .L8005F788
/* 05F32C 8005F77C 26100001 */   addiu      $s0, $s0, 0x1
/* 05F330 8005F780 10000049 */  b           .L8005F8A8
/* 05F334 8005F784 00601025 */   move       $v0, $v1
.L8005F788:
/* 05F338 8005F788 2A010008 */  slti        $at, $s0, 0x8
/* 05F33C 8005F78C 1420FFD9 */  bne         $at, $zero, .L8005F6F4
/* 05F340 8005F790 26310020 */   addiu      $s1, $s1, 0x20
/* 05F344 8005F794 16800038 */  bne         $s4, $zero, .L8005F878
/* 05F348 8005F798 8FB90048 */   lw         $t9, 0x48($sp)
/* 05F34C 8005F79C 8FB8005C */  lw          $t8, 0x5c($sp)
/* 05F350 8005F7A0 00192823 */  subu        $a1, $zero, $t9
/* 05F354 8005F7A4 00054840 */  sll         $t1, $a1, 1
/* 05F358 8005F7A8 00194040 */  sll         $t0, $t9, 1
/* 05F35C 8005F7AC 25250100 */  addiu       $a1, $t1, 0x100
/* 05F360 8005F7B0 0308A021 */  addu        $s4, $t8, $t0
/* 05F364 8005F7B4 02802025 */  move        $a0, $s4
/* 05F368 8005F7B8 0C017B54 */  jal         func_8005ED50
/* 05F36C 8005F7BC AFA5003C */   sw         $a1, 0x3c($sp)
/* 05F370 8005F7C0 8FAB005C */  lw          $t3, 0x5c($sp)
/* 05F374 8005F7C4 304A00FF */  andi        $t2, $v0, 0xff
/* 05F378 8005F7C8 00008025 */  move        $s0, $zero
/* 05F37C 8005F7CC 916C0001 */  lbu         $t4, 0x1($t3)
/* 05F380 8005F7D0 01608825 */  move        $s1, $t3
/* 05F384 8005F7D4 514C0029 */  beql        $t2, $t4, .L8005F87C
/* 05F388 8005F7D8 93AB0067 */   lbu        $t3, 0x67($sp)
.L8005F7DC:
/* 05F38C 8005F7DC 8E4E0058 */  lw          $t6, 0x58($s2)
/* 05F390 8005F7E0 8E440004 */  lw          $a0, 0x4($s2)
/* 05F394 8005F7E4 8E450008 */  lw          $a1, 0x8($s2)
/* 05F398 8005F7E8 01D36821 */  addu        $t5, $t6, $s3
/* 05F39C 8005F7EC 01B03021 */  addu        $a2, $t5, $s0
/* 05F3A0 8005F7F0 30CFFFFF */  andi        $t7, $a2, 0xffff
/* 05F3A4 8005F7F4 01E03025 */  move        $a2, $t7
/* 05F3A8 8005F7F8 0C016224 */  jal         func_80058890
/* 05F3AC 8005F7FC 02203825 */   move       $a3, $s1
/* 05F3B0 8005F800 26100001 */  addiu       $s0, $s0, 0x1
/* 05F3B4 8005F804 2A010008 */  slti        $at, $s0, 0x8
/* 05F3B8 8005F808 1420FFF4 */  bne         $at, $zero, .L8005F7DC
/* 05F3BC 8005F80C 26310020 */   addiu      $s1, $s1, 0x20
/* 05F3C0 8005F810 02802025 */  move        $a0, $s4
/* 05F3C4 8005F814 0C017B54 */  jal         func_8005ED50
/* 05F3C8 8005F818 8FA5003C */   lw         $a1, 0x3c($sp)
/* 05F3CC 8005F81C 8FA8005C */  lw          $t0, 0x5c($sp)
/* 05F3D0 8005F820 305800FF */  andi        $t8, $v0, 0xff
/* 05F3D4 8005F824 00008025 */  move        $s0, $zero
/* 05F3D8 8005F828 91190001 */  lbu         $t9, 0x1($t0)
/* 05F3DC 8005F82C 8FB1005C */  lw          $s1, 0x5c($sp)
/* 05F3E0 8005F830 13190003 */  beq         $t8, $t9, .L8005F840
/* 05F3E4 8005F834 00000000 */   nop
/* 05F3E8 8005F838 1000001B */  b           .L8005F8A8
/* 05F3EC 8005F83C 24020003 */   addiu      $v0, $zero, 0x3
.L8005F840:
/* 05F3F0 8005F840 8E490054 */  lw          $t1, 0x54($s2)
/* 05F3F4 8005F844 8E440004 */  lw          $a0, 0x4($s2)
/* 05F3F8 8005F848 8E450008 */  lw          $a1, 0x8($s2)
/* 05F3FC 8005F84C 01335021 */  addu        $t2, $t1, $s3
/* 05F400 8005F850 01503021 */  addu        $a2, $t2, $s0
/* 05F404 8005F854 30CCFFFF */  andi        $t4, $a2, 0xffff
/* 05F408 8005F858 01803025 */  move        $a2, $t4
/* 05F40C 8005F85C AFA00010 */  sw          $zero, 0x10($sp)
/* 05F410 8005F860 0C0175A0 */  jal         func_8005D680
/* 05F414 8005F864 02203825 */   move       $a3, $s1
/* 05F418 8005F868 26100001 */  addiu       $s0, $s0, 0x1
/* 05F41C 8005F86C 24010008 */  addiu       $at, $zero, 0x8
/* 05F420 8005F870 1601FFF3 */  bne         $s0, $at, .L8005F840
/* 05F424 8005F874 26310020 */   addiu      $s1, $s1, 0x20
.L8005F878:
/* 05F428 8005F878 93AB0067 */  lbu         $t3, 0x67($sp)
.L8005F87C:
/* 05F42C 8005F87C 3C01800A */  lui         $at, %hi(D_8009FC14)
/* 05F430 8005F880 3C058010 */  lui         $a1, %hi(D_80100580)
/* 05F434 8005F884 24A50580 */  addiu       $a1, $a1, %lo(D_80100580)
/* 05F438 8005F888 8FA4005C */  lw          $a0, 0x5c($sp)
/* 05F43C 8005F88C 24060100 */  addiu       $a2, $zero, 0x100
/* 05F440 8005F890 0C014984 */  jal         func_80052610
/* 05F444 8005F894 A02BFC14 */   sb         $t3, %lo(D_8009FC14)($at)
/* 05F448 8005F898 8E4E0008 */  lw          $t6, 0x8($s2)
/* 05F44C 8005F89C 3C01800A */  lui         $at, %hi(D_8009FC10)
/* 05F450 8005F8A0 00001025 */  move        $v0, $zero
/* 05F454 8005F8A4 AC2EFC10 */  sw          $t6, %lo(D_8009FC10)($at)
.L8005F8A8:
/* 05F458 8005F8A8 8FBF0034 */  lw          $ra, 0x34($sp)
.L8005F8AC:
/* 05F45C 8005F8AC 8FB00020 */  lw          $s0, 0x20($sp)
/* 05F460 8005F8B0 8FB10024 */  lw          $s1, 0x24($sp)
/* 05F464 8005F8B4 8FB20028 */  lw          $s2, 0x28($sp)
/* 05F468 8005F8B8 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05F46C 8005F8BC 8FB40030 */  lw          $s4, 0x30($sp)
/* 05F470 8005F8C0 03E00008 */  jr          $ra
/* 05F474 8005F8C4 27BD0058 */   addiu      $sp, $sp, 0x58
/* 05F478 8005F8C8 00000000 */  nop
/* 05F47C 8005F8CC 00000000 */  nop
