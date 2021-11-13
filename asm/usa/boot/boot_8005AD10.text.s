.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005AD10 # 0
/* 000000 8005AD10 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 000004 8005AD14 AFBF003C */  sw          $ra, 0x3c($sp)
/* 000008 8005AD18 AFB5002C */  sw          $s5, 0x2c($sp)
/* 00000C 8005AD1C AFB20020 */  sw          $s2, 0x20($sp)
/* 000010 8005AD20 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000014 8005AD24 00809025 */  move        $s2, $a0
/* 000018 8005AD28 AFBE0038 */  sw          $fp, 0x38($sp)
/* 00001C 8005AD2C AFB70034 */  sw          $s7, 0x34($sp)
/* 000020 8005AD30 AFB60030 */  sw          $s6, 0x30($sp)
/* 000024 8005AD34 AFB40028 */  sw          $s4, 0x28($sp)
/* 000028 8005AD38 AFB30024 */  sw          $s3, 0x24($sp)
/* 00002C 8005AD3C AFB00018 */  sw          $s0, 0x18($sp)
/* 000030 8005AD40 AFA50074 */  sw          $a1, 0x74($sp)
/* 000034 8005AD44 0000A825 */  move        $s5, $zero
/* 000038 8005AD48 0C0160FC */  jal         func_800583F0
/* 00003C 8005AD4C 24110003 */   addiu      $s1, $zero, 0x3
/* 000040 8005AD50 3C1E8010 */  lui         $fp, %hi(D_800FDC51)
/* 000044 8005AD54 3C138010 */  lui         $s3, %hi(D_80100390)
/* 000048 8005AD58 26730390 */  addiu       $s3, $s3, %lo(D_80100390)
/* 00004C 8005AD5C 27DEDC51 */  addiu       $fp, $fp, %lo(D_800FDC51)
/* 000050 8005AD60 00008025 */  move        $s0, $zero
/* 000054 8005AD64 27B70054 */  addiu       $s7, $sp, 0x54
/* 000058 8005AD68 27B60067 */  addiu       $s6, $sp, 0x67
/* 00005C 8005AD6C 27B40068 */  addiu       $s4, $sp, 0x68
.L8005AD70:
/* 000060 8005AD70 0C016BA7 */  jal         func_8005AE9C
/* 000064 8005AD74 00002025 */   move       $a0, $zero
/* 000068 8005AD78 24040001 */  addiu       $a0, $zero, 0x1
/* 00006C 8005AD7C 0C016118 */  jal         func_80058460
/* 000070 8005AD80 02602825 */   move       $a1, $s3
/* 000074 8005AD84 02402025 */  move        $a0, $s2
/* 000078 8005AD88 02802825 */  move        $a1, $s4
/* 00007C 8005AD8C 0C014554 */  jal         func_80051550
/* 000080 8005AD90 24060001 */   addiu      $a2, $zero, 0x1
/* 000084 8005AD94 00002025 */  move        $a0, $zero
/* 000088 8005AD98 0C016118 */  jal         func_80058460
/* 00008C 8005AD9C 02602825 */   move       $a1, $s3
/* 000090 8005ADA0 AFA2006C */  sw          $v0, 0x6c($sp)
/* 000094 8005ADA4 02402025 */  move        $a0, $s2
/* 000098 8005ADA8 02802825 */  move        $a1, $s4
/* 00009C 8005ADAC 0C014554 */  jal         func_80051550
/* 0000A0 8005ADB0 24060001 */   addiu      $a2, $zero, 0x1
/* 0000A4 8005ADB4 02C02025 */  move        $a0, $s6
/* 0000A8 8005ADB8 0C016BD4 */  jal         func_8005AF50
/* 0000AC 8005ADBC 02E02825 */   move       $a1, $s7
/* 0000B0 8005ADC0 93C30000 */  lbu         $v1, 0x0($fp)
/* 0000B4 8005ADC4 27A20054 */  addiu       $v0, $sp, 0x54
/* 0000B8 8005ADC8 5860000C */  blezl       $v1, .L8005ADFC
/* 0000BC 8005ADCC 02031026 */   xor        $v0, $s0, $v1
.L8005ADD0:
/* 0000C0 8005ADD0 904E0002 */  lbu         $t6, 0x2($v0)
/* 0000C4 8005ADD4 31CF0004 */  andi        $t7, $t6, 0x4
/* 0000C8 8005ADD8 55E00004 */  bnel        $t7, $zero, .L8005ADEC
/* 0000CC 8005ADDC 26100001 */   addiu      $s0, $s0, 0x1
/* 0000D0 8005ADE0 10000005 */  b           .L8005ADF8
/* 0000D4 8005ADE4 2631FFFF */   addiu      $s1, $s1, -0x1
/* 0000D8 8005ADE8 26100001 */  addiu       $s0, $s0, 0x1
.L8005ADEC:
/* 0000DC 8005ADEC 0203082A */  slt         $at, $s0, $v1
/* 0000E0 8005ADF0 1420FFF7 */  bne         $at, $zero, .L8005ADD0
/* 0000E4 8005ADF4 24420004 */   addiu      $v0, $v0, 0x4
.L8005ADF8:
/* 0000E8 8005ADF8 02031026 */  xor         $v0, $s0, $v1
.L8005ADFC:
/* 0000EC 8005ADFC 14400002 */  bne         $v0, $zero, .L8005AE08
/* 0000F0 8005AE00 00008025 */   move       $s0, $zero
/* 0000F4 8005AE04 00008825 */  move        $s1, $zero
.L8005AE08:
/* 0000F8 8005AE08 1E20FFD9 */  bgtz        $s1, .L8005AD70
/* 0000FC 8005AE0C 00000000 */   nop
/* 000100 8005AE10 18600011 */  blez        $v1, .L8005AE58
/* 000104 8005AE14 27A20054 */   addiu      $v0, $sp, 0x54
.L8005AE18:
/* 000108 8005AE18 90580003 */  lbu         $t8, 0x3($v0)
/* 00010C 8005AE1C 5700000B */  bnel        $t8, $zero, .L8005AE4C
/* 000110 8005AE20 26100001 */   addiu      $s0, $s0, 0x1
/* 000114 8005AE24 90590002 */  lbu         $t9, 0x2($v0)
/* 000118 8005AE28 24090001 */  addiu       $t1, $zero, 0x1
/* 00011C 8005AE2C 02095004 */  sllv        $t2, $s0, $t1
/* 000120 8005AE30 33280001 */  andi        $t0, $t9, 0x1
/* 000124 8005AE34 51000005 */  beql        $t0, $zero, .L8005AE4C
/* 000128 8005AE38 26100001 */   addiu      $s0, $s0, 0x1
/* 00012C 8005AE3C 02AAA825 */  or          $s5, $s5, $t2
/* 000130 8005AE40 32AB00FF */  andi        $t3, $s5, 0xff
/* 000134 8005AE44 0160A825 */  move        $s5, $t3
/* 000138 8005AE48 26100001 */  addiu       $s0, $s0, 0x1
.L8005AE4C:
/* 00013C 8005AE4C 0203082A */  slt         $at, $s0, $v1
/* 000140 8005AE50 1420FFF1 */  bne         $at, $zero, .L8005AE18
/* 000144 8005AE54 24420004 */   addiu      $v0, $v0, 0x4
.L8005AE58:
/* 000148 8005AE58 0C01610D */  jal         func_80058434
/* 00014C 8005AE5C 00000000 */   nop
/* 000150 8005AE60 8FAC0074 */  lw          $t4, 0x74($sp)
/* 000154 8005AE64 A1950000 */  sb          $s5, 0x0($t4)
/* 000158 8005AE68 8FBF003C */  lw          $ra, 0x3c($sp)
/* 00015C 8005AE6C 8FBE0038 */  lw          $fp, 0x38($sp)
/* 000160 8005AE70 8FB70034 */  lw          $s7, 0x34($sp)
/* 000164 8005AE74 8FB60030 */  lw          $s6, 0x30($sp)
/* 000168 8005AE78 8FB5002C */  lw          $s5, 0x2c($sp)
/* 00016C 8005AE7C 8FB40028 */  lw          $s4, 0x28($sp)
/* 000170 8005AE80 8FB30024 */  lw          $s3, 0x24($sp)
/* 000174 8005AE84 8FB20020 */  lw          $s2, 0x20($sp)
/* 000178 8005AE88 8FB1001C */  lw          $s1, 0x1c($sp)
/* 00017C 8005AE8C 8FB00018 */  lw          $s0, 0x18($sp)
/* 000180 8005AE90 8FA2006C */  lw          $v0, 0x6c($sp)
/* 000184 8005AE94 03E00008 */  jr          $ra
/* 000188 8005AE98 27BD0070 */   addiu      $sp, $sp, 0x70

glabel func_8005AE9C # 1
/* 00018C 8005AE9C 27BDFFF0 */  addiu       $sp, $sp, -0x10
/* 000190 8005AEA0 3C058010 */  lui         $a1, %hi(D_80100390)
/* 000194 8005AEA4 3C018010 */  lui         $at, %hi(D_800FDC50)
/* 000198 8005AEA8 24A20390 */  addiu       $v0, $a1, %lo(D_80100390)
/* 00019C 8005AEAC AFA40010 */  sw          $a0, 0x10($sp)
/* 0001A0 8005AEB0 A024DC50 */  sb          $a0, %lo(D_800FDC50)($at)
/* 0001A4 8005AEB4 240F0001 */  addiu       $t7, $zero, 0x1
/* 0001A8 8005AEB8 AC4F003C */  sw          $t7, 0x3c($v0)
/* 0001AC 8005AEBC 3C068010 */  lui         $a2, %hi(D_800FDC51)
/* 0001B0 8005AEC0 24C6DC51 */  addiu       $a2, $a2, %lo(D_800FDC51)
/* 0001B4 8005AEC4 90CD0000 */  lbu         $t5, 0x0($a2)
/* 0001B8 8005AEC8 241800FF */  addiu       $t8, $zero, 0xff
/* 0001BC 8005AECC 24190001 */  addiu       $t9, $zero, 0x1
/* 0001C0 8005AED0 24080003 */  addiu       $t0, $zero, 0x3
/* 0001C4 8005AED4 240900FF */  addiu       $t1, $zero, 0xff
/* 0001C8 8005AED8 240A00FF */  addiu       $t2, $zero, 0xff
/* 0001CC 8005AEDC 240B00FF */  addiu       $t3, $zero, 0xff
/* 0001D0 8005AEE0 240C00FF */  addiu       $t4, $zero, 0xff
/* 0001D4 8005AEE4 A3B80004 */  sb          $t8, 0x4($sp)
/* 0001D8 8005AEE8 A3B90005 */  sb          $t9, 0x5($sp)
/* 0001DC 8005AEEC A3A80006 */  sb          $t0, 0x6($sp)
/* 0001E0 8005AEF0 A3A40007 */  sb          $a0, 0x7($sp)
/* 0001E4 8005AEF4 A3A90008 */  sb          $t1, 0x8($sp)
/* 0001E8 8005AEF8 A3AA0009 */  sb          $t2, 0x9($sp)
/* 0001EC 8005AEFC A3AB000A */  sb          $t3, 0xa($sp)
/* 0001F0 8005AF00 A3AC000B */  sb          $t4, 0xb($sp)
/* 0001F4 8005AF04 19A0000E */  blez        $t5, .L8005AF40
/* 0001F8 8005AF08 00001825 */   move       $v1, $zero
/* 0001FC 8005AF0C 27A40004 */  addiu       $a0, $sp, 0x4
/* 000200 8005AF10 8C810000 */  lw          $at, 0x0($a0)
.L8005AF14:
/* 000204 8005AF14 24630001 */  addiu       $v1, $v1, 0x1
/* 000208 8005AF18 24420008 */  addiu       $v0, $v0, 0x8
/* 00020C 8005AF1C A841FFF8 */  swl         $at, -0x8($v0)
/* 000210 8005AF20 B841FFFB */  swr         $at, -0x5($v0)
/* 000214 8005AF24 8C8F0004 */  lw          $t7, 0x4($a0)
/* 000218 8005AF28 A84FFFFC */  swl         $t7, -0x4($v0)
/* 00021C 8005AF2C B84FFFFF */  swr         $t7, -0x1($v0)
/* 000220 8005AF30 90D80000 */  lbu         $t8, 0x0($a2)
/* 000224 8005AF34 0078082A */  slt         $at, $v1, $t8
/* 000228 8005AF38 5420FFF6 */  bnel        $at, $zero, .L8005AF14
/* 00022C 8005AF3C 8C810000 */   lw         $at, 0x0($a0)
.L8005AF40:
/* 000230 8005AF40 241900FE */  addiu       $t9, $zero, 0xfe
/* 000234 8005AF44 A0590000 */  sb          $t9, 0x0($v0)
/* 000238 8005AF48 03E00008 */  jr          $ra
/* 00023C 8005AF4C 27BD0010 */   addiu      $sp, $sp, 0x10

glabel func_8005AF50 # 2
/* 000240 8005AF50 3C078010 */  lui         $a3, %hi(D_800FDC51)
/* 000244 8005AF54 24E7DC51 */  addiu       $a3, $a3, %lo(D_800FDC51)
/* 000248 8005AF58 90EE0000 */  lbu         $t6, 0x0($a3)
/* 00024C 8005AF5C 3C038010 */  lui         $v1, %hi(D_80100390)
/* 000250 8005AF60 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000254 8005AF64 00001025 */  move        $v0, $zero
/* 000258 8005AF68 24630390 */  addiu       $v1, $v1, %lo(D_80100390)
/* 00025C 8005AF6C 19C00020 */  blez        $t6, .L8005AFF0
/* 000260 8005AF70 00003025 */   move       $a2, $zero
/* 000264 8005AF74 27A8000C */  addiu       $t0, $sp, 0xc
.L8005AF78:
/* 000268 8005AF78 88610000 */  lwl         $at, 0x0($v1)
/* 00026C 8005AF7C 98610003 */  lwr         $at, 0x3($v1)
/* 000270 8005AF80 AD010000 */  sw          $at, 0x0($t0)
/* 000274 8005AF84 88780004 */  lwl         $t8, 0x4($v1)
/* 000278 8005AF88 98780007 */  lwr         $t8, 0x7($v1)
/* 00027C 8005AF8C AD180004 */  sw          $t8, 0x4($t0)
/* 000280 8005AF90 93B9000E */  lbu         $t9, 0xe($sp)
/* 000284 8005AF94 332900C0 */  andi        $t1, $t9, 0xc0
/* 000288 8005AF98 00095103 */  sra         $t2, $t1, 4
/* 00028C 8005AF9C 314B00FF */  andi        $t3, $t2, 0xff
/* 000290 8005AFA0 1560000D */  bne         $t3, $zero, .L8005AFD8
/* 000294 8005AFA4 A0AA0003 */   sb         $t2, 0x3($a1)
/* 000298 8005AFA8 93AC0011 */  lbu         $t4, 0x11($sp)
/* 00029C 8005AFAC 93AE0010 */  lbu         $t6, 0x10($sp)
/* 0002A0 8005AFB0 24190001 */  addiu       $t9, $zero, 0x1
/* 0002A4 8005AFB4 000C6A00 */  sll         $t5, $t4, 8
/* 0002A8 8005AFB8 01AE7825 */  or          $t7, $t5, $t6
/* 0002AC 8005AFBC A4AF0000 */  sh          $t7, 0x0($a1)
/* 0002B0 8005AFC0 93B80012 */  lbu         $t8, 0x12($sp)
/* 0002B4 8005AFC4 00D94804 */  sllv        $t1, $a2, $t9
/* 0002B8 8005AFC8 00491025 */  or          $v0, $v0, $t1
/* 0002BC 8005AFCC 304A00FF */  andi        $t2, $v0, 0xff
/* 0002C0 8005AFD0 01401025 */  move        $v0, $t2
/* 0002C4 8005AFD4 A0B80002 */  sb          $t8, 0x2($a1)
.L8005AFD8:
/* 0002C8 8005AFD8 90EB0000 */  lbu         $t3, 0x0($a3)
/* 0002CC 8005AFDC 24C60001 */  addiu       $a2, $a2, 0x1
/* 0002D0 8005AFE0 24630008 */  addiu       $v1, $v1, 0x8
/* 0002D4 8005AFE4 00CB082A */  slt         $at, $a2, $t3
/* 0002D8 8005AFE8 1420FFE3 */  bne         $at, $zero, .L8005AF78
/* 0002DC 8005AFEC 24A50004 */   addiu      $a1, $a1, 0x4
.L8005AFF0:
/* 0002E0 8005AFF0 A0820000 */  sb          $v0, 0x0($a0)
/* 0002E4 8005AFF4 03E00008 */  jr          $ra
/* 0002E8 8005AFF8 27BD0018 */   addiu      $sp, $sp, 0x18
/* 0002EC 8005AFFC 00000000 */  nop
