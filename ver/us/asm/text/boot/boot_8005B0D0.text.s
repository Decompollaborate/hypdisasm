.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005B0D0 # 0
/* 05AC80 8005B0D0 27BDFF88 */  addiu       $sp, $sp, -0x78
/* 05AC84 8005B0D4 AFBF0044 */  sw          $ra, 0x44($sp)
/* 05AC88 8005B0D8 AFBE0040 */  sw          $fp, 0x40($sp)
/* 05AC8C 8005B0DC AFB7003C */  sw          $s7, 0x3c($sp)
/* 05AC90 8005B0E0 AFB60038 */  sw          $s6, 0x38($sp)
/* 05AC94 8005B0E4 AFB50034 */  sw          $s5, 0x34($sp)
/* 05AC98 8005B0E8 AFB40030 */  sw          $s4, 0x30($sp)
/* 05AC9C 8005B0EC AFB3002C */  sw          $s3, 0x2c($sp)
/* 05ACA0 8005B0F0 AFB20028 */  sw          $s2, 0x28($sp)
/* 05ACA4 8005B0F4 AFB10024 */  sw          $s1, 0x24($sp)
/* 05ACA8 8005B0F8 AFB00020 */  sw          $s0, 0x20($sp)
/* 05ACAC 8005B0FC 8CB70014 */  lw          $s7, 0x14($a1)
/* 05ACB0 8005B100 AC800000 */  sw          $zero, 0x0($a0)
/* 05ACB4 8005B104 8CAE0004 */  lw          $t6, 0x4($a1)
/* 05ACB8 8005B108 AC800020 */  sw          $zero, 0x20($a0)
/* 05ACBC 8005B10C AC80001C */  sw          $zero, 0x1c($a0)
/* 05ACC0 8005B110 AC8E003C */  sw          $t6, 0x3c($a0)
/* 05ACC4 8005B114 8CAF0018 */  lw          $t7, 0x18($a1)
/* 05ACC8 8005B118 241800A0 */  addiu       $t8, $zero, 0xa0
/* 05ACCC 8005B11C AC980048 */  sw          $t8, 0x48($a0)
/* 05ACD0 8005B120 AC8F0044 */  sw          $t7, 0x44($a0)
/* 05ACD4 8005B124 8CB90010 */  lw          $t9, 0x10($a1)
/* 05ACD8 8005B128 0080B025 */  move        $s6, $a0
/* 05ACDC 8005B12C 00A0F025 */  move        $fp, $a1
/* 05ACE0 8005B130 2408001C */  addiu       $t0, $zero, 0x1c
/* 05ACE4 8005B134 AC990024 */  sw          $t9, 0x24($a0)
/* 05ACE8 8005B138 AFA80010 */  sw          $t0, 0x10($sp)
/* 05ACEC 8005B13C 00002025 */  move        $a0, $zero
/* 05ACF0 8005B140 00002825 */  move        $a1, $zero
/* 05ACF4 8005B144 24070001 */  addiu       $a3, $zero, 0x1
/* 05ACF8 8005B148 0C014E68 */  jal         func_800539A0
/* 05ACFC 8005B14C 02E03025 */   move       $a2, $s7
/* 05AD00 8005B150 AFA2005C */  sw          $v0, 0x5c($sp)
/* 05AD04 8005B154 0C015A1C */  jal         func_80056870
/* 05AD08 8005B158 00402025 */   move       $a0, $v0
/* 05AD0C 8005B15C 8FA9005C */  lw          $t1, 0x5c($sp)
/* 05AD10 8005B160 240A004C */  addiu       $t2, $zero, 0x4c
/* 05AD14 8005B164 00002025 */  move        $a0, $zero
/* 05AD18 8005B168 AEC90038 */  sw          $t1, 0x38($s6)
/* 05AD1C 8005B16C AFAA0010 */  sw          $t2, 0x10($sp)
/* 05AD20 8005B170 00002825 */  move        $a1, $zero
/* 05AD24 8005B174 02E03025 */  move        $a2, $s7
/* 05AD28 8005B178 0C014E68 */  jal         func_800539A0
/* 05AD2C 8005B17C 24070001 */   addiu      $a3, $zero, 0x1
/* 05AD30 8005B180 240B0001 */  addiu       $t3, $zero, 0x1
/* 05AD34 8005B184 AEC20034 */  sw          $v0, 0x34($s6)
/* 05AD38 8005B188 AECB0040 */  sw          $t3, 0x40($s6)
/* 05AD3C 8005B18C 8FC70004 */  lw          $a3, 0x4($fp)
/* 05AD40 8005B190 240C0004 */  addiu       $t4, $zero, 0x4
/* 05AD44 8005B194 AFAC0010 */  sw          $t4, 0x10($sp)
/* 05AD48 8005B198 00002025 */  move        $a0, $zero
/* 05AD4C 8005B19C 00002825 */  move        $a1, $zero
/* 05AD50 8005B1A0 0C014E68 */  jal         func_800539A0
/* 05AD54 8005B1A4 02E03025 */   move       $a2, $s7
/* 05AD58 8005B1A8 8EC40034 */  lw          $a0, 0x34($s6)
/* 05AD5C 8005B1AC 00402825 */  move        $a1, $v0
/* 05AD60 8005B1B0 0C0159F2 */  jal         func_800567C8
/* 05AD64 8005B1B4 8FC60004 */   lw         $a2, 0x4($fp)
/* 05AD68 8005B1B8 240D0020 */  addiu       $t5, $zero, 0x20
/* 05AD6C 8005B1BC AFAD0010 */  sw          $t5, 0x10($sp)
/* 05AD70 8005B1C0 00002025 */  move        $a0, $zero
/* 05AD74 8005B1C4 00002825 */  move        $a1, $zero
/* 05AD78 8005B1C8 02E03025 */  move        $a2, $s7
/* 05AD7C 8005B1CC 0C014E68 */  jal         func_800539A0
/* 05AD80 8005B1D0 24070001 */   addiu      $a3, $zero, 0x1
/* 05AD84 8005B1D4 AEC20030 */  sw          $v0, 0x30($s6)
/* 05AD88 8005B1D8 8FC70004 */  lw          $a3, 0x4($fp)
/* 05AD8C 8005B1DC 240E0004 */  addiu       $t6, $zero, 0x4
/* 05AD90 8005B1E0 AFAE0010 */  sw          $t6, 0x10($sp)
/* 05AD94 8005B1E4 00002025 */  move        $a0, $zero
/* 05AD98 8005B1E8 00002825 */  move        $a1, $zero
/* 05AD9C 8005B1EC 0C014E68 */  jal         func_800539A0
/* 05ADA0 8005B1F0 02E03025 */   move       $a2, $s7
/* 05ADA4 8005B1F4 8EC40030 */  lw          $a0, 0x30($s6)
/* 05ADA8 8005B1F8 00402825 */  move        $a1, $v0
/* 05ADAC 8005B1FC 0C015A07 */  jal         func_8005681C
/* 05ADB0 8005B200 8FC60004 */   lw         $a2, 0x4($fp)
/* 05ADB4 8005B204 93CF001C */  lbu         $t7, 0x1c($fp)
/* 05ADB8 8005B208 02C02025 */  move        $a0, $s6
/* 05ADBC 8005B20C 03C03025 */  move        $a2, $fp
/* 05ADC0 8005B210 11E00006 */  beqz        $t7, .L8005B22C
/* 05ADC4 8005B214 24050002 */   addiu      $a1, $zero, 0x2
/* 05ADC8 8005B218 00002825 */  move        $a1, $zero
/* 05ADCC 8005B21C 0C017B0C */  jal         func_8005EC30
/* 05ADD0 8005B220 02E03825 */   move       $a3, $s7
/* 05ADD4 8005B224 10000005 */  b           .L8005B23C
/* 05ADD8 8005B228 AEC00004 */   sw         $zero, 0x4($s6)
.L8005B22C:
/* 05ADDC 8005B22C 8EC40030 */  lw          $a0, 0x30($s6)
/* 05ADE0 8005B230 0C017514 */  jal         func_8005D450
/* 05ADE4 8005B234 8EC60034 */   lw         $a2, 0x34($s6)
/* 05ADE8 8005B238 AEC00004 */  sw          $zero, 0x4($s6)
.L8005B23C:
/* 05ADEC 8005B23C AEC00008 */  sw          $zero, 0x8($s6)
/* 05ADF0 8005B240 AEC00014 */  sw          $zero, 0x14($s6)
/* 05ADF4 8005B244 AEC00018 */  sw          $zero, 0x18($s6)
/* 05ADF8 8005B248 AEC0000C */  sw          $zero, 0xc($s6)
/* 05ADFC 8005B24C AEC00010 */  sw          $zero, 0x10($s6)
/* 05AE00 8005B250 8FC70004 */  lw          $a3, 0x4($fp)
/* 05AE04 8005B254 241800DC */  addiu       $t8, $zero, 0xdc
/* 05AE08 8005B258 AFB80010 */  sw          $t8, 0x10($sp)
/* 05AE0C 8005B25C 00002025 */  move        $a0, $zero
/* 05AE10 8005B260 00002825 */  move        $a1, $zero
/* 05AE14 8005B264 0C014E68 */  jal         func_800539A0
/* 05AE18 8005B268 02E03025 */   move       $a2, $s7
/* 05AE1C 8005B26C 8FD90004 */  lw          $t9, 0x4($fp)
/* 05AE20 8005B270 0000A025 */  move        $s4, $zero
/* 05AE24 8005B274 00408025 */  move        $s0, $v0
/* 05AE28 8005B278 1B20002F */  blez        $t9, .L8005B338
/* 05AE2C 8005B27C 26C50004 */   addiu      $a1, $s6, 0x4
/* 05AE30 8005B280 2451008C */  addiu       $s1, $v0, 0x8c
/* 05AE34 8005B284 24520058 */  addiu       $s2, $v0, 0x58
/* 05AE38 8005B288 24530010 */  addiu       $s3, $v0, 0x10
/* 05AE3C 8005B28C AFA50048 */  sw          $a1, 0x48($sp)
.L8005B290:
/* 05AE40 8005B290 8FA50048 */  lw          $a1, 0x48($sp)
/* 05AE44 8005B294 0200A825 */  move        $s5, $s0
/* 05AE48 8005B298 0C01582F */  jal         func_800560BC
/* 05AE4C 8005B29C 02002025 */   move       $a0, $s0
/* 05AE50 8005B2A0 AE000008 */  sw          $zero, 0x8($s0)
/* 05AE54 8005B2A4 8EC50024 */  lw          $a1, 0x24($s6)
/* 05AE58 8005B2A8 02602025 */  move        $a0, $s3
/* 05AE5C 8005B2AC 0C0159A5 */  jal         func_80056694
/* 05AE60 8005B2B0 02E03025 */   move       $a2, $s7
/* 05AE64 8005B2B4 02602025 */  move        $a0, $s3
/* 05AE68 8005B2B8 24050001 */  addiu       $a1, $zero, 0x1
/* 05AE6C 8005B2BC 0C017301 */  jal         func_8005CC04
/* 05AE70 8005B2C0 00003025 */   move       $a2, $zero
/* 05AE74 8005B2C4 02402025 */  move        $a0, $s2
/* 05AE78 8005B2C8 0C0159CF */  jal         func_8005673C
/* 05AE7C 8005B2CC 02E02825 */   move       $a1, $s7
/* 05AE80 8005B2D0 02402025 */  move        $a0, $s2
/* 05AE84 8005B2D4 24050001 */  addiu       $a1, $zero, 0x1
/* 05AE88 8005B2D8 0C01744A */  jal         func_8005D128
/* 05AE8C 8005B2DC 02603025 */   move       $a2, $s3
/* 05AE90 8005B2E0 02202025 */  move        $a0, $s1
/* 05AE94 8005B2E4 0C01597B */  jal         func_800565EC
/* 05AE98 8005B2E8 02E02825 */   move       $a1, $s7
/* 05AE9C 8005B2EC 02202025 */  move        $a0, $s1
/* 05AEA0 8005B2F0 24050001 */  addiu       $a1, $zero, 0x1
/* 05AEA4 8005B2F4 0C016F22 */  jal         func_8005BC88
/* 05AEA8 8005B2F8 02403025 */   move       $a2, $s2
/* 05AEAC 8005B2FC 8EC40034 */  lw          $a0, 0x34($s6)
/* 05AEB0 8005B300 24050002 */  addiu       $a1, $zero, 0x2
/* 05AEB4 8005B304 0C0174BE */  jal         func_8005D2F8
/* 05AEB8 8005B308 02203025 */   move       $a2, $s1
/* 05AEBC 8005B30C 26A8008C */  addiu       $t0, $s5, 0x8c
/* 05AEC0 8005B310 AEA8000C */  sw          $t0, 0xc($s5)
/* 05AEC4 8005B314 8FC90004 */  lw          $t1, 0x4($fp)
/* 05AEC8 8005B318 26940001 */  addiu       $s4, $s4, 0x1
/* 05AECC 8005B31C 261000DC */  addiu       $s0, $s0, 0xdc
/* 05AED0 8005B320 0289082A */  slt         $at, $s4, $t1
/* 05AED4 8005B324 263100DC */  addiu       $s1, $s1, 0xdc
/* 05AED8 8005B328 265200DC */  addiu       $s2, $s2, 0xdc
/* 05AEDC 8005B32C 1420FFD8 */  bnez        $at, .L8005B290
/* 05AEE0 8005B330 267300DC */   addiu      $s3, $s3, 0xdc
/* 05AEE4 8005B334 0000A025 */  move        $s4, $zero
.L8005B338:
/* 05AEE8 8005B338 8FA4005C */  lw          $a0, 0x5c($sp)
/* 05AEEC 8005B33C 24050001 */  addiu       $a1, $zero, 0x1
/* 05AEF0 8005B340 0C017543 */  jal         func_8005D50C
/* 05AEF4 8005B344 8EC60030 */   lw         $a2, 0x30($s6)
/* 05AEF8 8005B348 8FC70008 */  lw          $a3, 0x8($fp)
/* 05AEFC 8005B34C 240A001C */  addiu       $t2, $zero, 0x1c
/* 05AF00 8005B350 AFAA0010 */  sw          $t2, 0x10($sp)
/* 05AF04 8005B354 00002025 */  move        $a0, $zero
/* 05AF08 8005B358 00002825 */  move        $a1, $zero
/* 05AF0C 8005B35C 0C014E68 */  jal         func_800539A0
/* 05AF10 8005B360 02E03025 */   move       $a2, $s7
/* 05AF14 8005B364 AEC0002C */  sw          $zero, 0x2c($s6)
/* 05AF18 8005B368 8FCB0008 */  lw          $t3, 0x8($fp)
/* 05AF1C 8005B36C 00401825 */  move        $v1, $v0
/* 05AF20 8005B370 5960000B */  blezl       $t3, .L8005B3A0
/* 05AF24 8005B374 AED70028 */   sw         $s7, 0x28($s6)
/* 05AF28 8005B378 8ECC002C */  lw          $t4, 0x2c($s6)
.L8005B37C:
/* 05AF2C 8005B37C 26940001 */  addiu       $s4, $s4, 0x1
/* 05AF30 8005B380 AC6C0000 */  sw          $t4, 0x0($v1)
/* 05AF34 8005B384 AEC3002C */  sw          $v1, 0x2c($s6)
/* 05AF38 8005B388 8FCD0008 */  lw          $t5, 0x8($fp)
/* 05AF3C 8005B38C 2463001C */  addiu       $v1, $v1, 0x1c
/* 05AF40 8005B390 028D082A */  slt         $at, $s4, $t5
/* 05AF44 8005B394 5420FFF9 */  bnel        $at, $zero, .L8005B37C
/* 05AF48 8005B398 8ECC002C */   lw         $t4, 0x2c($s6)
/* 05AF4C 8005B39C AED70028 */  sw          $s7, 0x28($s6)
.L8005B3A0:
/* 05AF50 8005B3A0 8FBF0044 */  lw          $ra, 0x44($sp)
/* 05AF54 8005B3A4 8FBE0040 */  lw          $fp, 0x40($sp)
/* 05AF58 8005B3A8 8FB7003C */  lw          $s7, 0x3c($sp)
/* 05AF5C 8005B3AC 8FB60038 */  lw          $s6, 0x38($sp)
/* 05AF60 8005B3B0 8FB50034 */  lw          $s5, 0x34($sp)
/* 05AF64 8005B3B4 8FB40030 */  lw          $s4, 0x30($sp)
/* 05AF68 8005B3B8 8FB3002C */  lw          $s3, 0x2c($sp)
/* 05AF6C 8005B3BC 8FB20028 */  lw          $s2, 0x28($sp)
/* 05AF70 8005B3C0 8FB10024 */  lw          $s1, 0x24($sp)
/* 05AF74 8005B3C4 8FB00020 */  lw          $s0, 0x20($sp)
/* 05AF78 8005B3C8 03E00008 */  jr          $ra
/* 05AF7C 8005B3CC 27BD0078 */   addiu      $sp, $sp, 0x78

glabel func_8005B3D0 # 1
/* 05AF80 8005B3D0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 05AF84 8005B3D4 AFB20024 */  sw          $s2, 0x24($sp)
/* 05AF88 8005B3D8 3C12800A */  lui         $s2, %hi(D_8009F6A0)
/* 05AF8C 8005B3DC 8E52F6A0 */  lw          $s2, %lo(D_8009F6A0)($s2)
/* 05AF90 8005B3E0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05AF94 8005B3E4 AFB70038 */  sw          $s7, 0x38($sp)
/* 05AF98 8005B3E8 AFB60034 */  sw          $s6, 0x34($sp)
/* 05AF9C 8005B3EC AFB50030 */  sw          $s5, 0x30($sp)
/* 05AFA0 8005B3F0 AFB4002C */  sw          $s4, 0x2c($sp)
/* 05AFA4 8005B3F4 AFB30028 */  sw          $s3, 0x28($sp)
/* 05AFA8 8005B3F8 AFB10020 */  sw          $s1, 0x20($sp)
/* 05AFAC 8005B3FC AFB0001C */  sw          $s0, 0x1c($sp)
/* 05AFB0 8005B400 AFA50074 */  sw          $a1, 0x74($sp)
/* 05AFB4 8005B404 A7A00062 */  sh          $zero, 0x62($sp)
/* 05AFB8 8005B408 8E4E0000 */  lw          $t6, 0x0($s2)
/* 05AFBC 8005B40C 00808825 */  move        $s1, $a0
/* 05AFC0 8005B410 00E09825 */  move        $s3, $a3
/* 05AFC4 8005B414 0080A025 */  move        $s4, $a0
/* 05AFC8 8005B418 15C00004 */  bnez        $t6, .L8005B42C
/* 05AFCC 8005B41C 00C0A825 */   move       $s5, $a2
/* 05AFD0 8005B420 ACA00000 */  sw          $zero, 0x0($a1)
/* 05AFD4 8005B424 10000053 */  b           .L8005B574
/* 05AFD8 8005B428 00801025 */   move       $v0, $a0
.L8005B42C:
/* 05AFDC 8005B42C 27B0006C */  addiu       $s0, $sp, 0x6c
/* 05AFE0 8005B430 02002825 */  move        $a1, $s0
/* 05AFE4 8005B434 02402025 */  move        $a0, $s2
/* 05AFE8 8005B438 0C016DBD */  jal         func_8005B6F4
/* 05AFEC 8005B43C AFB10070 */   sw         $s1, 0x70($sp)
/* 05AFF0 8005B440 8E580020 */  lw          $t8, 0x20($s2)
/* 05AFF4 8005B444 AE42001C */  sw          $v0, 0x1c($s2)
/* 05AFF8 8005B448 2411FFF0 */  addiu       $s1, $zero, -0x10
/* 05AFFC 8005B44C 0058C823 */  subu        $t9, $v0, $t8
/* 05B000 8005B450 0333082A */  slt         $at, $t9, $s3
/* 05B004 8005B454 50200019 */  beql        $at, $zero, .L8005B4BC
/* 05B008 8005B458 8E58001C */   lw         $t8, 0x1c($s2)
/* 05B00C 8005B45C 8E48001C */  lw          $t0, 0x1c($s2)
.L8005B460:
/* 05B010 8005B460 01114824 */  and         $t1, $t0, $s1
/* 05B014 8005B464 AE49001C */  sw          $t1, 0x1c($s2)
/* 05B018 8005B468 8FA4006C */  lw          $a0, 0x6c($sp)
/* 05B01C 8005B46C 8C990008 */  lw          $t9, 0x8($a0)
/* 05B020 8005B470 0320F809 */  jalr        $t9
/* 05B024 8005B474 00000000 */   nop
/* 05B028 8005B478 02402025 */  move        $a0, $s2
/* 05B02C 8005B47C 0C016DA0 */  jal         func_8005B680
/* 05B030 8005B480 00402825 */   move       $a1, $v0
/* 05B034 8005B484 8FAB006C */  lw          $t3, 0x6c($sp)
/* 05B038 8005B488 02402025 */  move        $a0, $s2
/* 05B03C 8005B48C 02002825 */  move        $a1, $s0
/* 05B040 8005B490 8D6C0010 */  lw          $t4, 0x10($t3)
/* 05B044 8005B494 01826821 */  addu        $t5, $t4, $v0
/* 05B048 8005B498 0C016DBD */  jal         func_8005B6F4
/* 05B04C 8005B49C AD6D0010 */   sw         $t5, 0x10($t3)
/* 05B050 8005B4A0 8E4E0020 */  lw          $t6, 0x20($s2)
/* 05B054 8005B4A4 AE42001C */  sw          $v0, 0x1c($s2)
/* 05B058 8005B4A8 004E7823 */  subu        $t7, $v0, $t6
/* 05B05C 8005B4AC 01F3082A */  slt         $at, $t7, $s3
/* 05B060 8005B4B0 5420FFEB */  bnel        $at, $zero, .L8005B460
/* 05B064 8005B4B4 8E48001C */   lw         $t0, 0x1c($s2)
/* 05B068 8005B4B8 8E58001C */  lw          $t8, 0x1c($s2)
.L8005B4BC:
/* 05B06C 8005B4BC 2411FFF0 */  addiu       $s1, $zero, -0x10
/* 05B070 8005B4C0 27B70062 */  addiu       $s7, $sp, 0x62
/* 05B074 8005B4C4 03114024 */  and         $t0, $t8, $s1
/* 05B078 8005B4C8 1A600022 */  blez        $s3, .L8005B554
/* 05B07C 8005B4CC AE48001C */   sw         $t0, 0x1c($s2)
/* 05B080 8005B4D0 3C160700 */  lui         $s6, 0x700
.L8005B4D4:
/* 05B084 8005B4D4 8E420048 */  lw          $v0, 0x48($s2)
/* 05B088 8005B4D8 02608025 */  move        $s0, $s3
/* 05B08C 8005B4DC 0053082A */  slt         $at, $v0, $s3
/* 05B090 8005B4E0 10200003 */  beqz        $at, .L8005B4F0
/* 05B094 8005B4E4 00000000 */   nop
/* 05B098 8005B4E8 10000001 */  b           .L8005B4F0
/* 05B09C 8005B4EC 00408025 */   move       $s0, $v0
.L8005B4F0:
/* 05B0A0 8005B4F0 AE960000 */  sw          $s6, 0x0($s4)
/* 05B0A4 8005B4F4 AE800004 */  sw          $zero, 0x4($s4)
/* 05B0A8 8005B4F8 8E510038 */  lw          $s1, 0x38($s2)
/* 05B0AC 8005B4FC 24050006 */  addiu       $a1, $zero, 0x6
/* 05B0B0 8005B500 02A03025 */  move        $a2, $s5
/* 05B0B4 8005B504 8E390008 */  lw          $t9, 0x8($s1)
/* 05B0B8 8005B508 02202025 */  move        $a0, $s1
/* 05B0BC 8005B50C 0320F809 */  jalr        $t9
/* 05B0C0 8005B510 00000000 */   nop
/* 05B0C4 8005B514 8E470020 */  lw          $a3, 0x20($s2)
/* 05B0C8 8005B518 26890008 */  addiu       $t1, $s4, 0x8
/* 05B0CC 8005B51C AFA90010 */  sw          $t1, 0x10($sp)
/* 05B0D0 8005B520 8E390004 */  lw          $t9, 0x4($s1)
/* 05B0D4 8005B524 02202025 */  move        $a0, $s1
/* 05B0D8 8005B528 02E02825 */  move        $a1, $s7
/* 05B0DC 8005B52C 0320F809 */  jalr        $t9
/* 05B0E0 8005B530 02003025 */   move       $a2, $s0
/* 05B0E4 8005B534 8E4D0020 */  lw          $t5, 0x20($s2)
/* 05B0E8 8005B538 02709823 */  subu        $s3, $s3, $s0
/* 05B0EC 8005B53C 00106080 */  sll         $t4, $s0, 2
/* 05B0F0 8005B540 01B05821 */  addu        $t3, $t5, $s0
/* 05B0F4 8005B544 0040A025 */  move        $s4, $v0
/* 05B0F8 8005B548 02ACA821 */  addu        $s5, $s5, $t4
/* 05B0FC 8005B54C 1E60FFE1 */  bgtz        $s3, .L8005B4D4
/* 05B100 8005B550 AE4B0020 */   sw         $t3, 0x20($s2)
.L8005B554:
/* 05B104 8005B554 8FAE0070 */  lw          $t6, 0x70($sp)
/* 05B108 8005B558 8FA80074 */  lw          $t0, 0x74($sp)
/* 05B10C 8005B55C 02402025 */  move        $a0, $s2
/* 05B110 8005B560 028E7823 */  subu        $t7, $s4, $t6
/* 05B114 8005B564 000FC0C3 */  sra         $t8, $t7, 3
/* 05B118 8005B568 0C016D7A */  jal         func_8005B5E8
/* 05B11C 8005B56C AD180000 */   sw         $t8, 0x0($t0)
/* 05B120 8005B570 02801025 */  move        $v0, $s4
.L8005B574:
/* 05B124 8005B574 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05B128 8005B578 8FB0001C */  lw          $s0, 0x1c($sp)
/* 05B12C 8005B57C 8FB10020 */  lw          $s1, 0x20($sp)
/* 05B130 8005B580 8FB20024 */  lw          $s2, 0x24($sp)
/* 05B134 8005B584 8FB30028 */  lw          $s3, 0x28($sp)
/* 05B138 8005B588 8FB4002C */  lw          $s4, 0x2c($sp)
/* 05B13C 8005B58C 8FB50030 */  lw          $s5, 0x30($sp)
/* 05B140 8005B590 8FB60034 */  lw          $s6, 0x34($sp)
/* 05B144 8005B594 8FB70038 */  lw          $s7, 0x38($sp)
/* 05B148 8005B598 03E00008 */  jr          $ra
/* 05B14C 8005B59C 27BD0070 */   addiu      $sp, $sp, 0x70

glabel func_8005B5A0 # 2
/* 05B150 8005B5A0 3C02800A */  lui         $v0, %hi(D_8009F6A0)
/* 05B154 8005B5A4 8C42F6A0 */  lw          $v0, %lo(D_8009F6A0)($v0)
/* 05B158 8005B5A8 00001825 */  move        $v1, $zero
/* 05B15C 8005B5AC 8C44002C */  lw          $a0, 0x2c($v0)
/* 05B160 8005B5B0 10800005 */  beqz        $a0, .L8005B5C8
/* 05B164 8005B5B4 00000000 */   nop
/* 05B168 8005B5B8 8C8E0000 */  lw          $t6, 0x0($a0)
/* 05B16C 8005B5BC 00801825 */  move        $v1, $a0
/* 05B170 8005B5C0 AC4E002C */  sw          $t6, 0x2c($v0)
/* 05B174 8005B5C4 AC800000 */  sw          $zero, 0x0($a0)
.L8005B5C8:
/* 05B178 8005B5C8 03E00008 */  jr          $ra
/* 05B17C 8005B5CC 00601025 */   move       $v0, $v1

glabel func_8005B5D0 # 3
/* 05B180 8005B5D0 3C02800A */  lui         $v0, %hi(D_8009F6A0)
/* 05B184 8005B5D4 8C42F6A0 */  lw          $v0, %lo(D_8009F6A0)($v0)
/* 05B188 8005B5D8 8C4E002C */  lw          $t6, 0x2c($v0)
/* 05B18C 8005B5DC AC8E0000 */  sw          $t6, 0x0($a0)
/* 05B190 8005B5E0 03E00008 */  jr          $ra
/* 05B194 8005B5E4 AC44002C */   sw         $a0, 0x2c($v0)

glabel func_8005B5E8 # 4
/* 05B198 8005B5E8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 05B19C 8005B5EC AFBF0024 */  sw          $ra, 0x24($sp)
/* 05B1A0 8005B5F0 AFB20020 */  sw          $s2, 0x20($sp)
/* 05B1A4 8005B5F4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05B1A8 8005B5F8 AFB00018 */  sw          $s0, 0x18($sp)
/* 05B1AC 8005B5FC 8C900014 */  lw          $s0, 0x14($a0)
/* 05B1B0 8005B600 00808825 */  move        $s1, $a0
/* 05B1B4 8005B604 24920004 */  addiu       $s2, $a0, 0x4
/* 05B1B8 8005B608 5200000A */  beql        $s0, $zero, .L8005B634
/* 05B1BC 8005B60C 8FBF0024 */   lw         $ra, 0x24($sp)
.L8005B610:
/* 05B1C0 8005B610 0C015838 */  jal         func_800560E0
/* 05B1C4 8005B614 02002025 */   move       $a0, $s0
/* 05B1C8 8005B618 02002025 */  move        $a0, $s0
/* 05B1CC 8005B61C 0C01582F */  jal         func_800560BC
/* 05B1D0 8005B620 02402825 */   move       $a1, $s2
/* 05B1D4 8005B624 8E300014 */  lw          $s0, 0x14($s1)
/* 05B1D8 8005B628 1600FFF9 */  bnez        $s0, .L8005B610
/* 05B1DC 8005B62C 00000000 */   nop
/* 05B1E0 8005B630 8FBF0024 */  lw          $ra, 0x24($sp)
.L8005B634:
/* 05B1E4 8005B634 8FB00018 */  lw          $s0, 0x18($sp)
/* 05B1E8 8005B638 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05B1EC 8005B63C 8FB20020 */  lw          $s2, 0x20($sp)
/* 05B1F0 8005B640 03E00008 */  jr          $ra
/* 05B1F4 8005B644 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8005B648 # 5
/* 05B1F8 8005B648 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05B1FC 8005B64C AFBF0014 */  sw          $ra, 0x14($sp)
/* 05B200 8005B650 AFA40018 */  sw          $a0, 0x18($sp)
/* 05B204 8005B654 AFA5001C */  sw          $a1, 0x1c($sp)
/* 05B208 8005B658 0C015838 */  jal         func_800560E0
/* 05B20C 8005B65C 00A02025 */   move       $a0, $a1
/* 05B210 8005B660 8FA50018 */  lw          $a1, 0x18($sp)
/* 05B214 8005B664 8FA4001C */  lw          $a0, 0x1c($sp)
/* 05B218 8005B668 0C01582F */  jal         func_800560BC
/* 05B21C 8005B66C 24A50014 */   addiu      $a1, $a1, 0x14
/* 05B220 8005B670 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05B224 8005B674 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05B228 8005B678 03E00008 */  jr          $ra
/* 05B22C 8005B67C 00000000 */   nop

glabel func_8005B680 # 6
/* 05B230 8005B680 8C8E0044 */  lw          $t6, 0x44($a0)
/* 05B234 8005B684 44852000 */  mtc1        $a1, $f4
/* 05B238 8005B688 3C01800B */  lui         $at, %hi(D_800A8030)
/* 05B23C 8005B68C 448E4000 */  mtc1        $t6, $f8
/* 05B240 8005B690 468021A0 */  cvt.s.w     $f6, $f4
/* 05B244 8005B694 D4248030 */  ldc1        $f4, %lo(D_800A8030)($at)
/* 05B248 8005B698 3C013FE0 */  lui         $at, 0x3fe0
/* 05B24C 8005B69C 44813800 */  mtc1        $at, $f7
/* 05B250 8005B6A0 468042A0 */  cvt.s.w     $f10, $f8
/* 05B254 8005B6A4 460A3402 */  mul.s       $f16, $f6, $f10
/* 05B258 8005B6A8 44803000 */  mtc1        $zero, $f6
/* 05B25C 8005B6AC 460084A1 */  cvt.d.s     $f18, $f16
/* 05B260 8005B6B0 46249203 */  div.d       $f8, $f18, $f4
/* 05B264 8005B6B4 46264280 */  add.d       $f10, $f8, $f6
/* 05B268 8005B6B8 46205020 */  cvt.s.d     $f0, $f10
/* 05B26C 8005B6BC 4600040D */  trunc.w.s   $f16, $f0
/* 05B270 8005B6C0 44028000 */  mfc1        $v0, $f16
/* 05B274 8005B6C4 03E00008 */  jr          $ra
/* 05B278 8005B6C8 00000000 */   nop

glabel func_8005B6CC # 7
/* 05B27C 8005B6CC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05B280 8005B6D0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05B284 8005B6D4 0C016DA0 */  jal         func_8005B680
/* 05B288 8005B6D8 00000000 */   nop
/* 05B28C 8005B6DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05B290 8005B6E0 2401FFF0 */  addiu       $at, $zero, -0x10
/* 05B294 8005B6E4 00417024 */  and         $t6, $v0, $at
/* 05B298 8005B6E8 01C01025 */  move        $v0, $t6
/* 05B29C 8005B6EC 03E00008 */  jr          $ra
/* 05B2A0 8005B6F0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8005B6F4 # 8
/* 05B2A4 8005B6F4 ACA00000 */  sw          $zero, 0x0($a1)
/* 05B2A8 8005B6F8 8C830000 */  lw          $v1, 0x0($a0)
/* 05B2AC 8005B6FC 3C027FFF */  lui         $v0, (0x7FFFFFFF >> 16)
/* 05B2B0 8005B700 3442FFFF */  ori         $v0, $v0, (0x7FFFFFFF & 0xFFFF)
/* 05B2B4 8005B704 5060000F */  beql        $v1, $zero, .L8005B744
/* 05B2B8 8005B708 8CB90000 */   lw         $t9, 0x0($a1)
/* 05B2BC 8005B70C 8C860020 */  lw          $a2, 0x20($a0)
/* 05B2C0 8005B710 8C6E0010 */  lw          $t6, 0x10($v1)
.L8005B714:
/* 05B2C4 8005B714 01C67823 */  subu        $t7, $t6, $a2
/* 05B2C8 8005B718 01E2082A */  slt         $at, $t7, $v0
/* 05B2CC 8005B71C 50200006 */  beql        $at, $zero, .L8005B738
/* 05B2D0 8005B720 8C630000 */   lw         $v1, 0x0($v1)
/* 05B2D4 8005B724 ACA30000 */  sw          $v1, 0x0($a1)
/* 05B2D8 8005B728 8C780010 */  lw          $t8, 0x10($v1)
/* 05B2DC 8005B72C 8C860020 */  lw          $a2, 0x20($a0)
/* 05B2E0 8005B730 03061023 */  subu        $v0, $t8, $a2
/* 05B2E4 8005B734 8C630000 */  lw          $v1, 0x0($v1)
.L8005B738:
/* 05B2E8 8005B738 5460FFF6 */  bnel        $v1, $zero, .L8005B714
/* 05B2EC 8005B73C 8C6E0010 */   lw         $t6, 0x10($v1)
/* 05B2F0 8005B740 8CB90000 */  lw          $t9, 0x0($a1)
.L8005B744:
/* 05B2F4 8005B744 03E00008 */  jr          $ra
/* 05B2F8 8005B748 8F220010 */   lw         $v0, 0x10($t9)
/* 05B2FC 8005B74C 00000000 */  nop
