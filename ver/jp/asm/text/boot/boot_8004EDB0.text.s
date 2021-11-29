.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EDB0 # 0
/* 04E960 8004EDB0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 04E964 8004EDB4 3C0E800A */  lui         $t6, %hi(D_800A3140)
/* 04E968 8004EDB8 8DCE3140 */  lw          $t6, %lo(D_800A3140)($t6)
/* 04E96C 8004EDBC AFBF0024 */  sw          $ra, 0x24($sp)
/* 04E970 8004EDC0 AFA40070 */  sw          $a0, 0x70($sp)
/* 04E974 8004EDC4 AFA50074 */  sw          $a1, 0x74($sp)
/* 04E978 8004EDC8 AFA60078 */  sw          $a2, 0x78($sp)
/* 04E97C 8004EDCC 11C00003 */  beqz        $t6, .L8004EDDC
/* 04E980 8004EDD0 AFA00068 */   sw         $zero, 0x68($sp)
/* 04E984 8004EDD4 1000004E */  b           .L8004EF10
/* 04E988 8004EDD8 00001025 */   move       $v0, $zero
.L8004EDDC:
/* 04E98C 8004EDDC 240F0001 */  addiu       $t7, $zero, 0x1
/* 04E990 8004EDE0 3C01800A */  lui         $at, %hi(D_800A3140)
/* 04E994 8004EDE4 0C0140D0 */  jal         func_80050340
/* 04E998 8004EDE8 AC2F3140 */   sw         $t7, %lo(D_800A3140)($at)
/* 04E99C 8004EDEC AFA20060 */  sw          $v0, 0x60($sp)
/* 04E9A0 8004EDF0 8FB80060 */  lw          $t8, 0x60($sp)
/* 04E9A4 8004EDF4 AFA30064 */  sw          $v1, 0x64($sp)
/* 04E9A8 8004EDF8 8FB90064 */  lw          $t9, 0x64($sp)
/* 04E9AC 8004EDFC 17000020 */  bnez        $t8, .L8004EE80
/* 04E9B0 8004EE00 3C010165 */   lui        $at, (0x165A0BC >> 16)
/* 04E9B4 8004EE04 3421A0BC */  ori         $at, $at, (0x165A0BC & 0xFFFF)
/* 04E9B8 8004EE08 0321082B */  sltu        $at, $t9, $at
/* 04E9BC 8004EE0C 1020001C */  beqz        $at, .L8004EE80
/* 04E9C0 8004EE10 00000000 */   nop
/* 04E9C4 8004EE14 27A40028 */  addiu       $a0, $sp, 0x28
/* 04E9C8 8004EE18 27A5006C */  addiu       $a1, $sp, 0x6c
/* 04E9CC 8004EE1C 0C013AEC */  jal         func_8004EBB0
/* 04E9D0 8004EE20 24060001 */   addiu      $a2, $zero, 0x1
/* 04E9D4 8004EE24 8FA80060 */  lw          $t0, 0x60($sp)
/* 04E9D8 8004EE28 8FA90064 */  lw          $t1, 0x64($sp)
/* 04E9DC 8004EE2C 3C0B0165 */  lui         $t3, (0x165A0BC >> 16)
/* 04E9E0 8004EE30 356BA0BC */  ori         $t3, $t3, (0x165A0BC & 0xFFFF)
/* 04E9E4 8004EE34 240A0000 */  addiu       $t2, $zero, 0x0
/* 04E9E8 8004EE38 240C0000 */  addiu       $t4, $zero, 0x0
/* 04E9EC 8004EE3C 240D0000 */  addiu       $t5, $zero, 0x0
/* 04E9F0 8004EE40 27AE0028 */  addiu       $t6, $sp, 0x28
/* 04E9F4 8004EE44 27AF006C */  addiu       $t7, $sp, 0x6c
/* 04E9F8 8004EE48 01483023 */  subu        $a2, $t2, $t0
/* 04E9FC 8004EE4C 0169082B */  sltu        $at, $t3, $t1
/* 04EA00 8004EE50 00C13023 */  subu        $a2, $a2, $at
/* 04EA04 8004EE54 AFAF001C */  sw          $t7, 0x1c($sp)
/* 04EA08 8004EE58 AFAE0018 */  sw          $t6, 0x18($sp)
/* 04EA0C 8004EE5C AFAD0014 */  sw          $t5, 0x14($sp)
/* 04EA10 8004EE60 AFAC0010 */  sw          $t4, 0x10($sp)
/* 04EA14 8004EE64 27A40040 */  addiu       $a0, $sp, 0x40
/* 04EA18 8004EE68 0C0155B4 */  jal         func_800556D0
/* 04EA1C 8004EE6C 01693823 */   subu       $a3, $t3, $t1
/* 04EA20 8004EE70 27A40028 */  addiu       $a0, $sp, 0x28
/* 04EA24 8004EE74 27A5006C */  addiu       $a1, $sp, 0x6c
/* 04EA28 8004EE78 0C013A48 */  jal         func_8004E920
/* 04EA2C 8004EE7C 24060001 */   addiu      $a2, $zero, 0x1
.L8004EE80:
/* 04EA30 8004EE80 24180004 */  addiu       $t8, $zero, 0x4
/* 04EA34 8004EE84 3C018010 */  lui         $at, %hi(D_80102380 + 0x1)
/* 04EA38 8004EE88 A0382381 */  sb          $t8, %lo(D_80102380 + 0x1)($at)
/* 04EA3C 8004EE8C 0C013BFC */  jal         func_8004EFF0
/* 04EA40 8004EE90 00002025 */   move       $a0, $zero
/* 04EA44 8004EE94 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04EA48 8004EE98 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04EA4C 8004EE9C 0C015108 */  jal         func_80054420
/* 04EA50 8004EEA0 24040001 */   addiu      $a0, $zero, 0x1
/* 04EA54 8004EEA4 AFA20068 */  sw          $v0, 0x68($sp)
/* 04EA58 8004EEA8 8FA40070 */  lw          $a0, 0x70($sp)
/* 04EA5C 8004EEAC 27A5006C */  addiu       $a1, $sp, 0x6c
/* 04EA60 8004EEB0 0C013A48 */  jal         func_8004E920
/* 04EA64 8004EEB4 24060001 */   addiu      $a2, $zero, 0x1
/* 04EA68 8004EEB8 3C058010 */  lui         $a1, %hi(D_80102340)
/* 04EA6C 8004EEBC 24A52340 */  addiu       $a1, $a1, %lo(D_80102340)
/* 04EA70 8004EEC0 0C015108 */  jal         func_80054420
/* 04EA74 8004EEC4 00002025 */   move       $a0, $zero
/* 04EA78 8004EEC8 AFA20068 */  sw          $v0, 0x68($sp)
/* 04EA7C 8004EECC 8FA40070 */  lw          $a0, 0x70($sp)
/* 04EA80 8004EED0 27A5006C */  addiu       $a1, $sp, 0x6c
/* 04EA84 8004EED4 0C013A48 */  jal         func_8004E920
/* 04EA88 8004EED8 24060001 */   addiu      $a2, $zero, 0x1
/* 04EA8C 8004EEDC 8FA40074 */  lw          $a0, 0x74($sp)
/* 04EA90 8004EEE0 0C013BC8 */  jal         func_8004EF20
/* 04EA94 8004EEE4 8FA50078 */   lw         $a1, 0x78($sp)
/* 04EA98 8004EEE8 3C018010 */  lui         $at, %hi(D_80102380)
/* 04EA9C 8004EEEC 0C0150D8 */  jal         func_80054360
/* 04EAA0 8004EEF0 A0202380 */   sb         $zero, %lo(D_80102380)($at)
/* 04EAA4 8004EEF4 3C048010 */  lui         $a0, %hi(D_801023A8)
/* 04EAA8 8004EEF8 3C058010 */  lui         $a1, %hi(D_801023C0)
/* 04EAAC 8004EEFC 24A523C0 */  addiu       $a1, $a1, %lo(D_801023C0)
/* 04EAB0 8004EF00 248423A8 */  addiu       $a0, $a0, %lo(D_801023A8)
/* 04EAB4 8004EF04 0C013AEC */  jal         func_8004EBB0
/* 04EAB8 8004EF08 24060001 */   addiu      $a2, $zero, 0x1
/* 04EABC 8004EF0C 8FA20068 */  lw          $v0, 0x68($sp)
.L8004EF10:
/* 04EAC0 8004EF10 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04EAC4 8004EF14 27BD0070 */  addiu       $sp, $sp, 0x70
/* 04EAC8 8004EF18 03E00008 */  jr          $ra
/* 04EACC 8004EF1C 00000000 */   nop

glabel func_8004EF20 # 1
/* 04EAD0 8004EF20 3C0F8010 */  lui         $t7, %hi(D_80102380 + 0x1)
/* 04EAD4 8004EF24 91EF2381 */  lbu         $t7, %lo(D_80102380 + 0x1)($t7)
/* 04EAD8 8004EF28 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04EADC 8004EF2C 3C0E8010 */  lui         $t6, %hi(D_80102340)
/* 04EAE0 8004EF30 25CE2340 */  addiu       $t6, $t6, %lo(D_80102340)
/* 04EAE4 8004EF34 A3A00007 */  sb          $zero, 0x7($sp)
/* 04EAE8 8004EF38 AFAE0014 */  sw          $t6, 0x14($sp)
/* 04EAEC 8004EF3C 19E00028 */  blez        $t7, .L8004EFE0
/* 04EAF0 8004EF40 AFA00008 */   sw         $zero, 0x8($sp)
.L8004EF44:
/* 04EAF4 8004EF44 8FB90014 */  lw          $t9, 0x14($sp)
/* 04EAF8 8004EF48 27B8000C */  addiu       $t8, $sp, 0xc
/* 04EAFC 8004EF4C 8B210000 */  lwl         $at, 0x0($t9)
/* 04EB00 8004EF50 9B210003 */  lwr         $at, 0x3($t9)
/* 04EB04 8004EF54 AF010000 */  sw          $at, 0x0($t8)
/* 04EB08 8004EF58 8B290004 */  lwl         $t1, 0x4($t9)
/* 04EB0C 8004EF5C 9B290007 */  lwr         $t1, 0x7($t9)
/* 04EB10 8004EF60 AF090004 */  sw          $t1, 0x4($t8)
/* 04EB14 8004EF64 93AA000E */  lbu         $t2, 0xe($sp)
/* 04EB18 8004EF68 314B00C0 */  andi        $t3, $t2, 0xc0
/* 04EB1C 8004EF6C 000B6103 */  sra         $t4, $t3, 4
/* 04EB20 8004EF70 A0AC0003 */  sb          $t4, 0x3($a1)
/* 04EB24 8004EF74 90AD0003 */  lbu         $t5, 0x3($a1)
/* 04EB28 8004EF78 15A0000E */  bnez        $t5, .L8004EFB4
/* 04EB2C 8004EF7C 00000000 */   nop
/* 04EB30 8004EF80 93AE0011 */  lbu         $t6, 0x11($sp)
/* 04EB34 8004EF84 93A80010 */  lbu         $t0, 0x10($sp)
/* 04EB38 8004EF88 240B0001 */  addiu       $t3, $zero, 0x1
/* 04EB3C 8004EF8C 000E7A00 */  sll         $t7, $t6, 8
/* 04EB40 8004EF90 01E8C025 */  or          $t8, $t7, $t0
/* 04EB44 8004EF94 A4B80000 */  sh          $t8, 0x0($a1)
/* 04EB48 8004EF98 93B90012 */  lbu         $t9, 0x12($sp)
/* 04EB4C 8004EF9C A0B90002 */  sb          $t9, 0x2($a1)
/* 04EB50 8004EFA0 8FAA0008 */  lw          $t2, 0x8($sp)
/* 04EB54 8004EFA4 93A90007 */  lbu         $t1, 0x7($sp)
/* 04EB58 8004EFA8 014B6004 */  sllv        $t4, $t3, $t2
/* 04EB5C 8004EFAC 012C6825 */  or          $t5, $t1, $t4
/* 04EB60 8004EFB0 A3AD0007 */  sb          $t5, 0x7($sp)
.L8004EFB4:
/* 04EB64 8004EFB4 8FAE0008 */  lw          $t6, 0x8($sp)
/* 04EB68 8004EFB8 3C198010 */  lui         $t9, %hi(D_80102380 + 0x1)
/* 04EB6C 8004EFBC 93392381 */  lbu         $t9, %lo(D_80102380 + 0x1)($t9)
/* 04EB70 8004EFC0 8FA80014 */  lw          $t0, 0x14($sp)
/* 04EB74 8004EFC4 25CF0001 */  addiu       $t7, $t6, 0x1
/* 04EB78 8004EFC8 01F9082A */  slt         $at, $t7, $t9
/* 04EB7C 8004EFCC 25180008 */  addiu       $t8, $t0, 0x8
/* 04EB80 8004EFD0 AFB80014 */  sw          $t8, 0x14($sp)
/* 04EB84 8004EFD4 AFAF0008 */  sw          $t7, 0x8($sp)
/* 04EB88 8004EFD8 1420FFDA */  bnez        $at, .L8004EF44
/* 04EB8C 8004EFDC 24A50004 */   addiu      $a1, $a1, 0x4
.L8004EFE0:
/* 04EB90 8004EFE0 93AB0007 */  lbu         $t3, 0x7($sp)
/* 04EB94 8004EFE4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04EB98 8004EFE8 03E00008 */  jr          $ra
/* 04EB9C 8004EFEC A08B0000 */   sb         $t3, 0x0($a0)

glabel func_8004EFF0 # 2
/* 04EBA0 8004EFF0 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 04EBA4 8004EFF4 308400FF */  andi        $a0, $a0, 0xff
/* 04EBA8 8004EFF8 AFA00000 */  sw          $zero, 0x0($sp)
.L8004EFFC:
/* 04EBAC 8004EFFC 8FAE0000 */  lw          $t6, 0x0($sp)
/* 04EBB0 8004F000 8FB80000 */  lw          $t8, 0x0($sp)
/* 04EBB4 8004F004 3C018010 */  lui         $at, %hi(D_80102340)
/* 04EBB8 8004F008 000E7880 */  sll         $t7, $t6, 2
/* 04EBBC 8004F00C 002F0821 */  addu        $at, $at, $t7
/* 04EBC0 8004F010 AC202340 */  sw          $zero, %lo(D_80102340)($at)
/* 04EBC4 8004F014 27190001 */  addiu       $t9, $t8, 0x1
/* 04EBC8 8004F018 2B21000F */  slti        $at, $t9, 0xf
/* 04EBCC 8004F01C 1420FFF7 */  bnez        $at, .L8004EFFC
/* 04EBD0 8004F020 AFB90000 */   sw         $t9, 0x0($sp)
/* 04EBD4 8004F024 3C198010 */  lui         $t9, %hi(D_80102380 + 0x1)
/* 04EBD8 8004F028 93392381 */  lbu         $t9, %lo(D_80102380 + 0x1)($t9)
/* 04EBDC 8004F02C 3C098010 */  lui         $t1, %hi(D_80102340)
/* 04EBE0 8004F030 24080001 */  addiu       $t0, $zero, 0x1
/* 04EBE4 8004F034 3C018010 */  lui         $at, %hi(D_8010237C)
/* 04EBE8 8004F038 25292340 */  addiu       $t1, $t1, %lo(D_80102340)
/* 04EBEC 8004F03C 240A00FF */  addiu       $t2, $zero, 0xff
/* 04EBF0 8004F040 240B0001 */  addiu       $t3, $zero, 0x1
/* 04EBF4 8004F044 240C0003 */  addiu       $t4, $zero, 0x3
/* 04EBF8 8004F048 240D00FF */  addiu       $t5, $zero, 0xff
/* 04EBFC 8004F04C 240E00FF */  addiu       $t6, $zero, 0xff
/* 04EC00 8004F050 240F00FF */  addiu       $t7, $zero, 0xff
/* 04EC04 8004F054 241800FF */  addiu       $t8, $zero, 0xff
/* 04EC08 8004F058 AC28237C */  sw          $t0, %lo(D_8010237C)($at)
/* 04EC0C 8004F05C AFA9000C */  sw          $t1, 0xc($sp)
/* 04EC10 8004F060 A3AA0004 */  sb          $t2, 0x4($sp)
/* 04EC14 8004F064 A3AB0005 */  sb          $t3, 0x5($sp)
/* 04EC18 8004F068 A3AC0006 */  sb          $t4, 0x6($sp)
/* 04EC1C 8004F06C A3A40007 */  sb          $a0, 0x7($sp)
/* 04EC20 8004F070 A3AD0008 */  sb          $t5, 0x8($sp)
/* 04EC24 8004F074 A3AE0009 */  sb          $t6, 0x9($sp)
/* 04EC28 8004F078 A3AF000A */  sb          $t7, 0xa($sp)
/* 04EC2C 8004F07C A3B8000B */  sb          $t8, 0xb($sp)
/* 04EC30 8004F080 1B200013 */  blez        $t9, .L8004F0D0
/* 04EC34 8004F084 AFA00000 */   sw         $zero, 0x0($sp)
.L8004F088:
/* 04EC38 8004F088 27A90004 */  addiu       $t1, $sp, 0x4
/* 04EC3C 8004F08C 8D210000 */  lw          $at, 0x0($t1)
/* 04EC40 8004F090 8FA8000C */  lw          $t0, 0xc($sp)
/* 04EC44 8004F094 3C188010 */  lui         $t8, %hi(D_80102380 + 0x1)
/* 04EC48 8004F098 A9010000 */  swl         $at, 0x0($t0)
/* 04EC4C 8004F09C B9010003 */  swr         $at, 0x3($t0)
/* 04EC50 8004F0A0 8D2B0004 */  lw          $t3, 0x4($t1)
/* 04EC54 8004F0A4 A90B0004 */  swl         $t3, 0x4($t0)
/* 04EC58 8004F0A8 B90B0007 */  swr         $t3, 0x7($t0)
/* 04EC5C 8004F0AC 8FAE0000 */  lw          $t6, 0x0($sp)
/* 04EC60 8004F0B0 93182381 */  lbu         $t8, %lo(D_80102380 + 0x1)($t8)
/* 04EC64 8004F0B4 8FAC000C */  lw          $t4, 0xc($sp)
/* 04EC68 8004F0B8 25CF0001 */  addiu       $t7, $t6, 0x1
/* 04EC6C 8004F0BC 01F8082A */  slt         $at, $t7, $t8
/* 04EC70 8004F0C0 258D0008 */  addiu       $t5, $t4, 0x8
/* 04EC74 8004F0C4 AFAF0000 */  sw          $t7, 0x0($sp)
/* 04EC78 8004F0C8 1420FFEF */  bnez        $at, .L8004F088
/* 04EC7C 8004F0CC AFAD000C */   sw         $t5, 0xc($sp)
.L8004F0D0:
/* 04EC80 8004F0D0 8FAA000C */  lw          $t2, 0xc($sp)
/* 04EC84 8004F0D4 241900FE */  addiu       $t9, $zero, 0xfe
/* 04EC88 8004F0D8 27BD0010 */  addiu       $sp, $sp, 0x10
/* 04EC8C 8004F0DC 03E00008 */  jr          $ra
/* 04EC90 8004F0E0 A1590000 */   sb         $t9, 0x0($t2)
/* 04EC94 8004F0E4 00000000 */  nop
/* 04EC98 8004F0E8 00000000 */  nop
/* 04EC9C 8004F0EC 00000000 */  nop
