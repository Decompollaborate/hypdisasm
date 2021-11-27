.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004CE30 # 0
/* 04C9E0 8004CE30 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04C9E4 8004CE34 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04C9E8 8004CE38 AFB20020 */  sw          $s2, 0x20($sp)
/* 04C9EC 8004CE3C AFB1001C */  sw          $s1, 0x1c($sp)
/* 04C9F0 8004CE40 AFB00018 */  sw          $s0, 0x18($sp)
/* 04C9F4 8004CE44 8C820008 */  lw          $v0, 0x8($a0)
/* 04C9F8 8004CE48 24010001 */  addiu       $at, $zero, 0x1
/* 04C9FC 8004CE4C 00A08825 */  move        $s1, $a1
/* 04CA00 8004CE50 1041000A */  beq         $v0, $at, .L8004CE7C
/* 04CA04 8004CE54 00809025 */   move       $s2, $a0
/* 04CA08 8004CE58 24010002 */  addiu       $at, $zero, 0x2
/* 04CA0C 8004CE5C 10410026 */  beq         $v0, $at, .L8004CEF8
/* 04CA10 8004CE60 24010003 */   addiu      $at, $zero, 0x3
/* 04CA14 8004CE64 1041003E */  beq         $v0, $at, .L8004CF60
/* 04CA18 8004CE68 24010004 */   addiu      $at, $zero, 0x4
/* 04CA1C 8004CE6C 504100B8 */  beql        $v0, $at, .L8004D150
/* 04CA20 8004CE70 240D0004 */   addiu      $t5, $zero, 0x4
/* 04CA24 8004CE74 100000DA */  b           .L8004D1E0
/* 04CA28 8004CE78 24020005 */   addiu      $v0, $zero, 0x5
.L8004CE7C:
/* 04CA2C 8004CE7C 8E440000 */  lw          $a0, 0x0($s2)
/* 04CA30 8004CE80 8E450004 */  lw          $a1, 0x4($s2)
/* 04CA34 8004CE84 0C0134B4 */  jal         func_8004D2D0
/* 04CA38 8004CE88 27A6005F */   addiu      $a2, $sp, 0x5f
/* 04CA3C 8004CE8C 10400003 */  beqz        $v0, .L8004CE9C
/* 04CA40 8004CE90 93AE005F */   lbu        $t6, 0x5f($sp)
/* 04CA44 8004CE94 100000D3 */  b           .L8004D1E4
/* 04CA48 8004CE98 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CE9C:
/* 04CA4C 8004CE9C 31CF0001 */  andi        $t7, $t6, 0x1
/* 04CA50 8004CEA0 11E00003 */  beqz        $t7, .L8004CEB0
/* 04CA54 8004CEA4 27A70038 */   addiu      $a3, $sp, 0x38
/* 04CA58 8004CEA8 100000CD */  b           .L8004D1E0
/* 04CA5C 8004CEAC 2402000C */   addiu      $v0, $zero, 0xc
.L8004CEB0:
/* 04CA60 8004CEB0 8E440000 */  lw          $a0, 0x0($s2)
/* 04CA64 8004CEB4 8E450004 */  lw          $a1, 0x4($s2)
/* 04CA68 8004CEB8 0C01372C */  jal         func_8004DCB0
/* 04CA6C 8004CEBC 00003025 */   move       $a2, $zero
/* 04CA70 8004CEC0 10400003 */  beqz        $v0, .L8004CED0
/* 04CA74 8004CEC4 93B80038 */   lbu        $t8, 0x38($sp)
/* 04CA78 8004CEC8 100000C6 */  b           .L8004D1E4
/* 04CA7C 8004CECC 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CED0:
/* 04CA80 8004CED0 33190007 */  andi        $t9, $t8, 0x7
/* 04CA84 8004CED4 A259000C */  sb          $t9, 0xc($s2)
/* 04CA88 8004CED8 3C018010 */  lui         $at, %hi(D_801022A0)
/* 04CA8C 8004CEDC 13200006 */  beqz        $t9, .L8004CEF8
/* 04CA90 8004CEE0 A03922A0 */   sb         $t9, %lo(D_801022A0)($at)
/* 04CA94 8004CEE4 24010007 */  addiu       $at, $zero, 0x7
/* 04CA98 8004CEE8 53210004 */  beql        $t9, $at, .L8004CEFC
/* 04CA9C 8004CEEC 24090002 */   addiu      $t1, $zero, 0x2
/* 04CAA0 8004CEF0 100000BB */  b           .L8004D1E0
/* 04CAA4 8004CEF4 2402000C */   addiu      $v0, $zero, 0xc
.L8004CEF8:
/* 04CAA8 8004CEF8 24090002 */  addiu       $t1, $zero, 0x2
.L8004CEFC:
/* 04CAAC 8004CEFC 27B00038 */  addiu       $s0, $sp, 0x38
/* 04CAB0 8004CF00 AE490008 */  sw          $t1, 0x8($s2)
/* 04CAB4 8004CF04 8E440000 */  lw          $a0, 0x0($s2)
/* 04CAB8 8004CF08 8E450004 */  lw          $a1, 0x4($s2)
/* 04CABC 8004CF0C 0C0134B4 */  jal         func_8004D2D0
/* 04CAC0 8004CF10 27A6005F */   addiu      $a2, $sp, 0x5f
/* 04CAC4 8004CF14 10400003 */  beqz        $v0, .L8004CF24
/* 04CAC8 8004CF18 93AA005F */   lbu        $t2, 0x5f($sp)
/* 04CACC 8004CF1C 100000B1 */  b           .L8004D1E4
/* 04CAD0 8004CF20 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CF24:
/* 04CAD4 8004CF24 314B0002 */  andi        $t3, $t2, 0x2
/* 04CAD8 8004CF28 11600003 */  beqz        $t3, .L8004CF38
/* 04CADC 8004CF2C 240C0600 */   addiu      $t4, $zero, 0x600
/* 04CAE0 8004CF30 100000AB */  b           .L8004D1E0
/* 04CAE4 8004CF34 2402000F */   addiu      $v0, $zero, 0xf
.L8004CF38:
/* 04CAE8 8004CF38 AE0C0000 */  sw          $t4, 0x0($s0)
/* 04CAEC 8004CF3C 8E450004 */  lw          $a1, 0x4($s2)
/* 04CAF0 8004CF40 8E440000 */  lw          $a0, 0x0($s2)
/* 04CAF4 8004CF44 00003025 */  move        $a2, $zero
/* 04CAF8 8004CF48 0C0135E8 */  jal         func_8004D7A0
/* 04CAFC 8004CF4C 02003825 */   move       $a3, $s0
/* 04CB00 8004CF50 50400004 */  beql        $v0, $zero, .L8004CF64
/* 04CB04 8004CF54 240D0003 */   addiu      $t5, $zero, 0x3
/* 04CB08 8004CF58 100000A2 */  b           .L8004D1E4
/* 04CB0C 8004CF5C 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CF60:
/* 04CB10 8004CF60 240D0003 */  addiu       $t5, $zero, 0x3
.L8004CF64:
/* 04CB14 8004CF64 27B00038 */  addiu       $s0, $sp, 0x38
/* 04CB18 8004CF68 AE4D0008 */  sw          $t5, 0x8($s2)
/* 04CB1C 8004CF6C 8E440000 */  lw          $a0, 0x0($s2)
/* 04CB20 8004CF70 8E450004 */  lw          $a1, 0x4($s2)
/* 04CB24 8004CF74 0C0134B4 */  jal         func_8004D2D0
/* 04CB28 8004CF78 27A6005F */   addiu      $a2, $sp, 0x5f
/* 04CB2C 8004CF7C 10400003 */  beqz        $v0, .L8004CF8C
/* 04CB30 8004CF80 93AE005F */   lbu        $t6, 0x5f($sp)
/* 04CB34 8004CF84 10000097 */  b           .L8004D1E4
/* 04CB38 8004CF88 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CF8C:
/* 04CB3C 8004CF8C 31CF0001 */  andi        $t7, $t6, 0x1
/* 04CB40 8004CF90 11E00003 */  beqz        $t7, .L8004CFA0
/* 04CB44 8004CF94 00003025 */   move       $a2, $zero
/* 04CB48 8004CF98 10000091 */  b           .L8004D1E0
/* 04CB4C 8004CF9C 2402000F */   addiu      $v0, $zero, 0xf
.L8004CFA0:
/* 04CB50 8004CFA0 8E440000 */  lw          $a0, 0x0($s2)
/* 04CB54 8004CFA4 8E450004 */  lw          $a1, 0x4($s2)
/* 04CB58 8004CFA8 0C0137B8 */  jal         func_8004DEE0
/* 04CB5C 8004CFAC 02003825 */   move       $a3, $s0
/* 04CB60 8004CFB0 10400003 */  beqz        $v0, .L8004CFC0
/* 04CB64 8004CFB4 00404025 */   move       $t0, $v0
/* 04CB68 8004CFB8 1000008A */  b           .L8004D1E4
/* 04CB6C 8004CFBC 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004CFC0:
/* 04CB70 8004CFC0 93B8003D */  lbu         $t8, 0x3d($sp)
/* 04CB74 8004CFC4 93A9003C */  lbu         $t1, 0x3c($sp)
/* 04CB78 8004CFC8 24070001 */  addiu       $a3, $zero, 0x1
/* 04CB7C 8004CFCC 0018CA00 */  sll         $t9, $t8, 8
/* 04CB80 8004CFD0 03295021 */  addu        $t2, $t9, $t1
/* 04CB84 8004CFD4 A62A0000 */  sh          $t2, 0x0($s1)
/* 04CB88 8004CFD8 93AB003E */  lbu         $t3, 0x3e($sp)
/* 04CB8C 8004CFDC 24017FFF */  addiu       $at, $zero, 0x7fff
/* 04CB90 8004CFE0 A62B0002 */  sh          $t3, 0x2($s1)
/* 04CB94 8004CFE4 93AC0041 */  lbu         $t4, 0x41($sp)
/* 04CB98 8004CFE8 93AE0040 */  lbu         $t6, 0x40($sp)
/* 04CB9C 8004CFEC 000C6A00 */  sll         $t5, $t4, 8
/* 04CBA0 8004CFF0 01AE7821 */  addu        $t7, $t5, $t6
/* 04CBA4 8004CFF4 A62F0004 */  sh          $t7, 0x4($s1)
/* 04CBA8 8004CFF8 93B80043 */  lbu         $t8, 0x43($sp)
/* 04CBAC 8004CFFC 93A90042 */  lbu         $t1, 0x42($sp)
/* 04CBB0 8004D000 0018CA00 */  sll         $t9, $t8, 8
/* 04CBB4 8004D004 03295021 */  addu        $t2, $t9, $t1
/* 04CBB8 8004D008 A62A0006 */  sh          $t2, 0x6($s1)
/* 04CBBC 8004D00C 93AB0045 */  lbu         $t3, 0x45($sp)
/* 04CBC0 8004D010 93AD0044 */  lbu         $t5, 0x44($sp)
/* 04CBC4 8004D014 000B6200 */  sll         $t4, $t3, 8
/* 04CBC8 8004D018 018D7021 */  addu        $t6, $t4, $t5
/* 04CBCC 8004D01C A62E0008 */  sh          $t6, 0x8($s1)
/* 04CBD0 8004D020 93AF0047 */  lbu         $t7, 0x47($sp)
/* 04CBD4 8004D024 93B90046 */  lbu         $t9, 0x46($sp)
/* 04CBD8 8004D028 00077040 */  sll         $t6, $a3, 1
/* 04CBDC 8004D02C 000FC200 */  sll         $t8, $t7, 8
/* 04CBE0 8004D030 03194821 */  addu        $t1, $t8, $t9
/* 04CBE4 8004D034 A629000A */  sh          $t1, 0xa($s1)
/* 04CBE8 8004D038 93AA0049 */  lbu         $t2, 0x49($sp)
/* 04CBEC 8004D03C 93AC0048 */  lbu         $t4, 0x48($sp)
/* 04CBF0 8004D040 00077880 */  sll         $t7, $a3, 2
/* 04CBF4 8004D044 000A5A00 */  sll         $t3, $t2, 8
/* 04CBF8 8004D048 016C6821 */  addu        $t5, $t3, $t4
/* 04CBFC 8004D04C A62D0014 */  sh          $t5, 0x14($s1)
/* 04CC00 8004D050 020F1821 */  addu        $v1, $s0, $t7
/* 04CC04 8004D054 9078000F */  lbu         $t8, 0xf($v1)
/* 04CC08 8004D058 9069000E */  lbu         $t1, 0xe($v1)
/* 04CC0C 8004D05C 022E1021 */  addu        $v0, $s1, $t6
/* 04CC10 8004D060 0018CA00 */  sll         $t9, $t8, 8
/* 04CC14 8004D064 03295021 */  addu        $t2, $t9, $t1
/* 04CC18 8004D068 A44A000A */  sh          $t2, 0xa($v0)
/* 04CC1C 8004D06C 906B0011 */  lbu         $t3, 0x11($v1)
/* 04CC20 8004D070 906D0010 */  lbu         $t5, 0x10($v1)
/* 04CC24 8004D074 24EF0001 */  addiu       $t7, $a3, 0x1
/* 04CC28 8004D078 000B6200 */  sll         $t4, $t3, 8
/* 04CC2C 8004D07C 000FC080 */  sll         $t8, $t7, 2
/* 04CC30 8004D080 018D7021 */  addu        $t6, $t4, $t5
/* 04CC34 8004D084 02182021 */  addu        $a0, $s0, $t8
/* 04CC38 8004D088 A44E0014 */  sh          $t6, 0x14($v0)
/* 04CC3C 8004D08C 9099000F */  lbu         $t9, 0xf($a0)
/* 04CC40 8004D090 908A000E */  lbu         $t2, 0xe($a0)
/* 04CC44 8004D094 24F80002 */  addiu       $t8, $a3, 0x2
/* 04CC48 8004D098 00194A00 */  sll         $t1, $t9, 8
/* 04CC4C 8004D09C 012A5821 */  addu        $t3, $t1, $t2
/* 04CC50 8004D0A0 A44B000C */  sh          $t3, 0xc($v0)
/* 04CC54 8004D0A4 908C0011 */  lbu         $t4, 0x11($a0)
/* 04CC58 8004D0A8 908E0010 */  lbu         $t6, 0x10($a0)
/* 04CC5C 8004D0AC 0018C880 */  sll         $t9, $t8, 2
/* 04CC60 8004D0B0 000C6A00 */  sll         $t5, $t4, 8
/* 04CC64 8004D0B4 01AE7821 */  addu        $t7, $t5, $t6
/* 04CC68 8004D0B8 A44F0016 */  sh          $t7, 0x16($v0)
/* 04CC6C 8004D0BC 02192821 */  addu        $a1, $s0, $t9
/* 04CC70 8004D0C0 90A9000F */  lbu         $t1, 0xf($a1)
/* 04CC74 8004D0C4 90AB000E */  lbu         $t3, 0xe($a1)
/* 04CC78 8004D0C8 24F90003 */  addiu       $t9, $a3, 0x3
/* 04CC7C 8004D0CC 00095200 */  sll         $t2, $t1, 8
/* 04CC80 8004D0D0 014B6021 */  addu        $t4, $t2, $t3
/* 04CC84 8004D0D4 A44C000E */  sh          $t4, 0xe($v0)
/* 04CC88 8004D0D8 90AD0011 */  lbu         $t5, 0x11($a1)
/* 04CC8C 8004D0DC 90AF0010 */  lbu         $t7, 0x10($a1)
/* 04CC90 8004D0E0 00194880 */  sll         $t1, $t9, 2
/* 04CC94 8004D0E4 000D7200 */  sll         $t6, $t5, 8
/* 04CC98 8004D0E8 01CFC021 */  addu        $t8, $t6, $t7
/* 04CC9C 8004D0EC A4580018 */  sh          $t8, 0x18($v0)
/* 04CCA0 8004D0F0 02093021 */  addu        $a2, $s0, $t1
/* 04CCA4 8004D0F4 90CA000F */  lbu         $t2, 0xf($a2)
/* 04CCA8 8004D0F8 90CC000E */  lbu         $t4, 0xe($a2)
/* 04CCAC 8004D0FC 3C038010 */  lui         $v1, %hi(D_801022A0)
/* 04CCB0 8004D100 000A5A00 */  sll         $t3, $t2, 8
/* 04CCB4 8004D104 016C6821 */  addu        $t5, $t3, $t4
/* 04CCB8 8004D108 A44D0010 */  sh          $t5, 0x10($v0)
/* 04CCBC 8004D10C 90CE0011 */  lbu         $t6, 0x11($a2)
/* 04CCC0 8004D110 90D80010 */  lbu         $t8, 0x10($a2)
/* 04CCC4 8004D114 000E7A00 */  sll         $t7, $t6, 8
/* 04CCC8 8004D118 01F8C821 */  addu        $t9, $t7, $t8
/* 04CCCC 8004D11C A459001A */  sh          $t9, 0x1a($v0)
/* 04CCD0 8004D120 9629000A */  lhu         $t1, 0xa($s1)
/* 04CCD4 8004D124 55210003 */  bnel        $t1, $at, .L8004D134
/* 04CCD8 8004D128 93AA005A */   lbu        $t2, 0x5a($sp)
/* 04CCDC 8004D12C A6200002 */  sh          $zero, 0x2($s1)
/* 04CCE0 8004D130 93AA005A */  lbu         $t2, 0x5a($sp)
.L8004D134:
/* 04CCE4 8004D134 906322A0 */  lbu         $v1, %lo(D_801022A0)($v1)
/* 04CCE8 8004D138 314B0007 */  andi        $t3, $t2, 0x7
/* 04CCEC 8004D13C 10600026 */  beqz        $v1, .L8004D1D8
/* 04CCF0 8004D140 A24B000C */   sb         $t3, 0xc($s2)
/* 04CCF4 8004D144 316C00FF */  andi        $t4, $t3, 0xff
/* 04CCF8 8004D148 11800023 */  beqz        $t4, .L8004D1D8
/* 04CCFC 8004D14C 240D0004 */   addiu      $t5, $zero, 0x4
.L8004D150:
/* 04CD00 8004D150 27B00038 */  addiu       $s0, $sp, 0x38
/* 04CD04 8004D154 AE4D0008 */  sw          $t5, 0x8($s2)
/* 04CD08 8004D158 8E440000 */  lw          $a0, 0x0($s2)
/* 04CD0C 8004D15C 8E450004 */  lw          $a1, 0x4($s2)
/* 04CD10 8004D160 0C0134B4 */  jal         func_8004D2D0
/* 04CD14 8004D164 27A6005F */   addiu      $a2, $sp, 0x5f
/* 04CD18 8004D168 10400003 */  beqz        $v0, .L8004D178
/* 04CD1C 8004D16C 93AE005F */   lbu        $t6, 0x5f($sp)
/* 04CD20 8004D170 1000001C */  b           .L8004D1E4
/* 04CD24 8004D174 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004D178:
/* 04CD28 8004D178 31CF0001 */  andi        $t7, $t6, 0x1
/* 04CD2C 8004D17C 11E00003 */  beqz        $t7, .L8004D18C
/* 04CD30 8004D180 00003025 */   move       $a2, $zero
/* 04CD34 8004D184 10000016 */  b           .L8004D1E0
/* 04CD38 8004D188 2402000F */   addiu      $v0, $zero, 0xf
.L8004D18C:
/* 04CD3C 8004D18C 8E440000 */  lw          $a0, 0x0($s2)
/* 04CD40 8004D190 8E450004 */  lw          $a1, 0x4($s2)
/* 04CD44 8004D194 0C01372C */  jal         func_8004DCB0
/* 04CD48 8004D198 02003825 */   move       $a3, $s0
/* 04CD4C 8004D19C 10400003 */  beqz        $v0, .L8004D1AC
/* 04CD50 8004D1A0 00404025 */   move       $t0, $v0
/* 04CD54 8004D1A4 1000000F */  b           .L8004D1E4
/* 04CD58 8004D1A8 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004D1AC:
/* 04CD5C 8004D1AC 92180000 */  lbu         $t8, 0x0($s0)
/* 04CD60 8004D1B0 33190007 */  andi        $t9, $t8, 0x7
/* 04CD64 8004D1B4 A259000C */  sb          $t9, 0xc($s2)
/* 04CD68 8004D1B8 92090000 */  lbu         $t1, 0x0($s0)
/* 04CD6C 8004D1BC 312A0007 */  andi        $t2, $t1, 0x7
/* 04CD70 8004D1C0 51400006 */  beql        $t2, $zero, .L8004D1DC
/* 04CD74 8004D1C4 AE400008 */   sw         $zero, 0x8($s2)
/* 04CD78 8004D1C8 10000005 */  b           .L8004D1E0
/* 04CD7C 8004D1CC 2402000F */   addiu      $v0, $zero, 0xf
/* 04CD80 8004D1D0 10000003 */  b           .L8004D1E0
/* 04CD84 8004D1D4 24020005 */   addiu      $v0, $zero, 0x5
.L8004D1D8:
/* 04CD88 8004D1D8 AE400008 */  sw          $zero, 0x8($s2)
.L8004D1DC:
/* 04CD8C 8004D1DC 01001025 */  move        $v0, $t0
.L8004D1E0:
/* 04CD90 8004D1E0 8FBF0024 */  lw          $ra, 0x24($sp)
.L8004D1E4:
/* 04CD94 8004D1E4 8FB00018 */  lw          $s0, 0x18($sp)
/* 04CD98 8004D1E8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04CD9C 8004D1EC 8FB20020 */  lw          $s2, 0x20($sp)
/* 04CDA0 8004D1F0 03E00008 */  jr          $ra
/* 04CDA4 8004D1F4 27BD0068 */   addiu      $sp, $sp, 0x68
/* 04CDA8 8004D1F8 00000000 */  nop
/* 04CDAC 8004D1FC 00000000 */  nop
