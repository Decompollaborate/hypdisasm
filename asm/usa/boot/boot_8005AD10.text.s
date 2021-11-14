.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AD10 # 0
/* 05A8C0 8005AD10 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 05A8C4 8005AD14 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05A8C8 8005AD18 AFB5002C */  sw          $s5, 0x2c($sp)
/* 05A8CC 8005AD1C AFB20020 */  sw          $s2, 0x20($sp)
/* 05A8D0 8005AD20 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05A8D4 8005AD24 00809025 */  move        $s2, $a0
/* 05A8D8 8005AD28 AFBE0038 */  sw          $fp, 0x38($sp)
/* 05A8DC 8005AD2C AFB70034 */  sw          $s7, 0x34($sp)
/* 05A8E0 8005AD30 AFB60030 */  sw          $s6, 0x30($sp)
/* 05A8E4 8005AD34 AFB40028 */  sw          $s4, 0x28($sp)
/* 05A8E8 8005AD38 AFB30024 */  sw          $s3, 0x24($sp)
/* 05A8EC 8005AD3C AFB00018 */  sw          $s0, 0x18($sp)
/* 05A8F0 8005AD40 AFA50074 */  sw          $a1, 0x74($sp)
/* 05A8F4 8005AD44 0000A825 */  move        $s5, $zero
/* 05A8F8 8005AD48 0C0160FC */  jal         func_800583F0
/* 05A8FC 8005AD4C 24110003 */   addiu      $s1, $zero, 0x3
/* 05A900 8005AD50 3C1E8010 */  lui         $fp, %hi(D_800FDC51)
/* 05A904 8005AD54 3C138010 */  lui         $s3, %hi(D_80100390)
/* 05A908 8005AD58 26730390 */  addiu       $s3, $s3, %lo(D_80100390)
/* 05A90C 8005AD5C 27DEDC51 */  addiu       $fp, $fp, %lo(D_800FDC51)
/* 05A910 8005AD60 00008025 */  move        $s0, $zero
/* 05A914 8005AD64 27B70054 */  addiu       $s7, $sp, 0x54
/* 05A918 8005AD68 27B60067 */  addiu       $s6, $sp, 0x67
/* 05A91C 8005AD6C 27B40068 */  addiu       $s4, $sp, 0x68
.L8005AD70:
/* 05A920 8005AD70 0C016BA7 */  jal         func_8005AE9C
/* 05A924 8005AD74 00002025 */   move       $a0, $zero
/* 05A928 8005AD78 24040001 */  addiu       $a0, $zero, 0x1
/* 05A92C 8005AD7C 0C016118 */  jal         func_80058460
/* 05A930 8005AD80 02602825 */   move       $a1, $s3
/* 05A934 8005AD84 02402025 */  move        $a0, $s2
/* 05A938 8005AD88 02802825 */  move        $a1, $s4
/* 05A93C 8005AD8C 0C014554 */  jal         osRecvMesg
/* 05A940 8005AD90 24060001 */   addiu      $a2, $zero, 0x1
/* 05A944 8005AD94 00002025 */  move        $a0, $zero
/* 05A948 8005AD98 0C016118 */  jal         func_80058460
/* 05A94C 8005AD9C 02602825 */   move       $a1, $s3
/* 05A950 8005ADA0 AFA2006C */  sw          $v0, 0x6c($sp)
/* 05A954 8005ADA4 02402025 */  move        $a0, $s2
/* 05A958 8005ADA8 02802825 */  move        $a1, $s4
/* 05A95C 8005ADAC 0C014554 */  jal         osRecvMesg
/* 05A960 8005ADB0 24060001 */   addiu      $a2, $zero, 0x1
/* 05A964 8005ADB4 02C02025 */  move        $a0, $s6
/* 05A968 8005ADB8 0C016BD4 */  jal         func_8005AF50
/* 05A96C 8005ADBC 02E02825 */   move       $a1, $s7
/* 05A970 8005ADC0 93C30000 */  lbu         $v1, 0x0($fp)
/* 05A974 8005ADC4 27A20054 */  addiu       $v0, $sp, 0x54
/* 05A978 8005ADC8 5860000C */  blezl       $v1, .L8005ADFC
/* 05A97C 8005ADCC 02031026 */   xor        $v0, $s0, $v1
.L8005ADD0:
/* 05A980 8005ADD0 904E0002 */  lbu         $t6, 0x2($v0)
/* 05A984 8005ADD4 31CF0004 */  andi        $t7, $t6, 0x4
/* 05A988 8005ADD8 55E00004 */  bnel        $t7, $zero, .L8005ADEC
/* 05A98C 8005ADDC 26100001 */   addiu      $s0, $s0, 0x1
/* 05A990 8005ADE0 10000005 */  b           .L8005ADF8
/* 05A994 8005ADE4 2631FFFF */   addiu      $s1, $s1, -0x1
/* 05A998 8005ADE8 26100001 */  addiu       $s0, $s0, 0x1
.L8005ADEC:
/* 05A99C 8005ADEC 0203082A */  slt         $at, $s0, $v1
/* 05A9A0 8005ADF0 1420FFF7 */  bne         $at, $zero, .L8005ADD0
/* 05A9A4 8005ADF4 24420004 */   addiu      $v0, $v0, 0x4
.L8005ADF8:
/* 05A9A8 8005ADF8 02031026 */  xor         $v0, $s0, $v1
.L8005ADFC:
/* 05A9AC 8005ADFC 14400002 */  bne         $v0, $zero, .L8005AE08
/* 05A9B0 8005AE00 00008025 */   move       $s0, $zero
/* 05A9B4 8005AE04 00008825 */  move        $s1, $zero
.L8005AE08:
/* 05A9B8 8005AE08 1E20FFD9 */  bgtz        $s1, .L8005AD70
/* 05A9BC 8005AE0C 00000000 */   nop
/* 05A9C0 8005AE10 18600011 */  blez        $v1, .L8005AE58
/* 05A9C4 8005AE14 27A20054 */   addiu      $v0, $sp, 0x54
.L8005AE18:
/* 05A9C8 8005AE18 90580003 */  lbu         $t8, 0x3($v0)
/* 05A9CC 8005AE1C 5700000B */  bnel        $t8, $zero, .L8005AE4C
/* 05A9D0 8005AE20 26100001 */   addiu      $s0, $s0, 0x1
/* 05A9D4 8005AE24 90590002 */  lbu         $t9, 0x2($v0)
/* 05A9D8 8005AE28 24090001 */  addiu       $t1, $zero, 0x1
/* 05A9DC 8005AE2C 02095004 */  sllv        $t2, $s0, $t1
/* 05A9E0 8005AE30 33280001 */  andi        $t0, $t9, 0x1
/* 05A9E4 8005AE34 51000005 */  beql        $t0, $zero, .L8005AE4C
/* 05A9E8 8005AE38 26100001 */   addiu      $s0, $s0, 0x1
/* 05A9EC 8005AE3C 02AAA825 */  or          $s5, $s5, $t2
/* 05A9F0 8005AE40 32AB00FF */  andi        $t3, $s5, 0xff
/* 05A9F4 8005AE44 0160A825 */  move        $s5, $t3
/* 05A9F8 8005AE48 26100001 */  addiu       $s0, $s0, 0x1
.L8005AE4C:
/* 05A9FC 8005AE4C 0203082A */  slt         $at, $s0, $v1
/* 05AA00 8005AE50 1420FFF1 */  bne         $at, $zero, .L8005AE18
/* 05AA04 8005AE54 24420004 */   addiu      $v0, $v0, 0x4
.L8005AE58:
/* 05AA08 8005AE58 0C01610D */  jal         func_80058434
/* 05AA0C 8005AE5C 00000000 */   nop
/* 05AA10 8005AE60 8FAC0074 */  lw          $t4, 0x74($sp)
/* 05AA14 8005AE64 A1950000 */  sb          $s5, 0x0($t4)
/* 05AA18 8005AE68 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05AA1C 8005AE6C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 05AA20 8005AE70 8FB70034 */  lw          $s7, 0x34($sp)
/* 05AA24 8005AE74 8FB60030 */  lw          $s6, 0x30($sp)
/* 05AA28 8005AE78 8FB5002C */  lw          $s5, 0x2c($sp)
/* 05AA2C 8005AE7C 8FB40028 */  lw          $s4, 0x28($sp)
/* 05AA30 8005AE80 8FB30024 */  lw          $s3, 0x24($sp)
/* 05AA34 8005AE84 8FB20020 */  lw          $s2, 0x20($sp)
/* 05AA38 8005AE88 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05AA3C 8005AE8C 8FB00018 */  lw          $s0, 0x18($sp)
/* 05AA40 8005AE90 8FA2006C */  lw          $v0, 0x6c($sp)
/* 05AA44 8005AE94 03E00008 */  jr          $ra
/* 05AA48 8005AE98 27BD0070 */   addiu      $sp, $sp, 0x70

glabel func_8005AE9C # 1
/* 05AA4C 8005AE9C 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 05AA50 8005AEA0 3C058010 */  lui         $a1, %hi(D_80100390)
/* 05AA54 8005AEA4 3C018010 */  lui         $at, %hi(D_800FDC50)
/* 05AA58 8005AEA8 24A20390 */  addiu       $v0, $a1, %lo(D_80100390)
/* 05AA5C 8005AEAC AFA40010 */  sw          $a0, 0x10($sp)
/* 05AA60 8005AEB0 A024DC50 */  sb          $a0, %lo(D_800FDC50)($at)
/* 05AA64 8005AEB4 240F0001 */  addiu       $t7, $zero, 0x1
/* 05AA68 8005AEB8 AC4F003C */  sw          $t7, 0x3c($v0)
/* 05AA6C 8005AEBC 3C068010 */  lui         $a2, %hi(D_800FDC51)
/* 05AA70 8005AEC0 24C6DC51 */  addiu       $a2, $a2, %lo(D_800FDC51)
/* 05AA74 8005AEC4 90CD0000 */  lbu         $t5, 0x0($a2)
/* 05AA78 8005AEC8 241800FF */  addiu       $t8, $zero, 0xff
/* 05AA7C 8005AECC 24190001 */  addiu       $t9, $zero, 0x1
/* 05AA80 8005AED0 24080003 */  addiu       $t0, $zero, 0x3
/* 05AA84 8005AED4 240900FF */  addiu       $t1, $zero, 0xff
/* 05AA88 8005AED8 240A00FF */  addiu       $t2, $zero, 0xff
/* 05AA8C 8005AEDC 240B00FF */  addiu       $t3, $zero, 0xff
/* 05AA90 8005AEE0 240C00FF */  addiu       $t4, $zero, 0xff
/* 05AA94 8005AEE4 A3B80004 */  sb          $t8, 0x4($sp)
/* 05AA98 8005AEE8 A3B90005 */  sb          $t9, 0x5($sp)
/* 05AA9C 8005AEEC A3A80006 */  sb          $t0, 0x6($sp)
/* 05AAA0 8005AEF0 A3A40007 */  sb          $a0, 0x7($sp)
/* 05AAA4 8005AEF4 A3A90008 */  sb          $t1, 0x8($sp)
/* 05AAA8 8005AEF8 A3AA0009 */  sb          $t2, 0x9($sp)
/* 05AAAC 8005AEFC A3AB000A */  sb          $t3, 0xa($sp)
/* 05AAB0 8005AF00 A3AC000B */  sb          $t4, 0xb($sp)
/* 05AAB4 8005AF04 19A0000E */  blez        $t5, .L8005AF40
/* 05AAB8 8005AF08 00001825 */   move       $v1, $zero
/* 05AABC 8005AF0C 27A40004 */  addiu       $a0, $sp, 0x4
/* 05AAC0 8005AF10 8C810000 */  lw          $at, 0x0($a0)
.L8005AF14:
/* 05AAC4 8005AF14 24630001 */  addiu       $v1, $v1, 0x1
/* 05AAC8 8005AF18 24420008 */  addiu       $v0, $v0, 0x8
/* 05AACC 8005AF1C A841FFF8 */  swl         $at, -0x8($v0)
/* 05AAD0 8005AF20 B841FFFB */  swr         $at, -0x5($v0)
/* 05AAD4 8005AF24 8C8F0004 */  lw          $t7, 0x4($a0)
/* 05AAD8 8005AF28 A84FFFFC */  swl         $t7, -0x4($v0)
/* 05AADC 8005AF2C B84FFFFF */  swr         $t7, -0x1($v0)
/* 05AAE0 8005AF30 90D80000 */  lbu         $t8, 0x0($a2)
/* 05AAE4 8005AF34 0078082A */  slt         $at, $v1, $t8
/* 05AAE8 8005AF38 5420FFF6 */  bnel        $at, $zero, .L8005AF14
/* 05AAEC 8005AF3C 8C810000 */   lw         $at, 0x0($a0)
.L8005AF40:
/* 05AAF0 8005AF40 241900FE */  addiu       $t9, $zero, 0xfe
/* 05AAF4 8005AF44 A0590000 */  sb          $t9, 0x0($v0)
/* 05AAF8 8005AF48 03E00008 */  jr          $ra
/* 05AAFC 8005AF4C 27BD0010 */   addiu      $sp, $sp, 0x10

glabel func_8005AF50 # 2
/* 05AB00 8005AF50 3C078010 */  lui         $a3, %hi(D_800FDC51)
/* 05AB04 8005AF54 24E7DC51 */  addiu       $a3, $a3, %lo(D_800FDC51)
/* 05AB08 8005AF58 90EE0000 */  lbu         $t6, 0x0($a3)
/* 05AB0C 8005AF5C 3C038010 */  lui         $v1, %hi(D_80100390)
/* 05AB10 8005AF60 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05AB14 8005AF64 00001025 */  move        $v0, $zero
/* 05AB18 8005AF68 24630390 */  addiu       $v1, $v1, %lo(D_80100390)
/* 05AB1C 8005AF6C 19C00020 */  blez        $t6, .L8005AFF0
/* 05AB20 8005AF70 00003025 */   move       $a2, $zero
/* 05AB24 8005AF74 27A8000C */  addiu       $t0, $sp, 0xc
.L8005AF78:
/* 05AB28 8005AF78 88610000 */  lwl         $at, 0x0($v1)
/* 05AB2C 8005AF7C 98610003 */  lwr         $at, 0x3($v1)
/* 05AB30 8005AF80 AD010000 */  sw          $at, 0x0($t0)
/* 05AB34 8005AF84 88780004 */  lwl         $t8, 0x4($v1)
/* 05AB38 8005AF88 98780007 */  lwr         $t8, 0x7($v1)
/* 05AB3C 8005AF8C AD180004 */  sw          $t8, 0x4($t0)
/* 05AB40 8005AF90 93B9000E */  lbu         $t9, 0xe($sp)
/* 05AB44 8005AF94 332900C0 */  andi        $t1, $t9, 0xc0
/* 05AB48 8005AF98 00095103 */  sra         $t2, $t1, 4
/* 05AB4C 8005AF9C 314B00FF */  andi        $t3, $t2, 0xff
/* 05AB50 8005AFA0 1560000D */  bne         $t3, $zero, .L8005AFD8
/* 05AB54 8005AFA4 A0AA0003 */   sb         $t2, 0x3($a1)
/* 05AB58 8005AFA8 93AC0011 */  lbu         $t4, 0x11($sp)
/* 05AB5C 8005AFAC 93AE0010 */  lbu         $t6, 0x10($sp)
/* 05AB60 8005AFB0 24190001 */  addiu       $t9, $zero, 0x1
/* 05AB64 8005AFB4 000C6A00 */  sll         $t5, $t4, 8
/* 05AB68 8005AFB8 01AE7825 */  or          $t7, $t5, $t6
/* 05AB6C 8005AFBC A4AF0000 */  sh          $t7, 0x0($a1)
/* 05AB70 8005AFC0 93B80012 */  lbu         $t8, 0x12($sp)
/* 05AB74 8005AFC4 00D94804 */  sllv        $t1, $a2, $t9
/* 05AB78 8005AFC8 00491025 */  or          $v0, $v0, $t1
/* 05AB7C 8005AFCC 304A00FF */  andi        $t2, $v0, 0xff
/* 05AB80 8005AFD0 01401025 */  move        $v0, $t2
/* 05AB84 8005AFD4 A0B80002 */  sb          $t8, 0x2($a1)
.L8005AFD8:
/* 05AB88 8005AFD8 90EB0000 */  lbu         $t3, 0x0($a3)
/* 05AB8C 8005AFDC 24C60001 */  addiu       $a2, $a2, 0x1
/* 05AB90 8005AFE0 24630008 */  addiu       $v1, $v1, 0x8
/* 05AB94 8005AFE4 00CB082A */  slt         $at, $a2, $t3
/* 05AB98 8005AFE8 1420FFE3 */  bne         $at, $zero, .L8005AF78
/* 05AB9C 8005AFEC 24A50004 */   addiu      $a1, $a1, 0x4
.L8005AFF0:
/* 05ABA0 8005AFF0 A0820000 */  sb          $v0, 0x0($a0)
/* 05ABA4 8005AFF4 03E00008 */  jr          $ra
/* 05ABA8 8005AFF8 27BD0018 */   addiu      $sp, $sp, 0x18
/* 05ABAC 8005AFFC 00000000 */  nop
