.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D200 # 0
/* 04CDB0 8004D200 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 04CDB4 8004D204 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04CDB8 8004D208 AFB20020 */  sw          $s2, 0x20($sp)
/* 04CDBC 8004D20C AFB00018 */  sw          $s0, 0x18($sp)
/* 04CDC0 8004D210 00808025 */  move        $s0, $a0
/* 04CDC4 8004D214 27B20033 */  addiu       $s2, $sp, 0x33
/* 04CDC8 8004D218 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04CDCC 8004D21C 8E050004 */  lw          $a1, 0x4($s0)
/* 04CDD0 8004D220 8C840000 */  lw          $a0, 0x0($a0)
/* 04CDD4 8004D224 0C0134B4 */  jal         func_8004D2D0
/* 04CDD8 8004D228 02403025 */   move       $a2, $s2
/* 04CDDC 8004D22C 10400003 */  beqz        $v0, .L8004D23C
/* 04CDE0 8004D230 93AE0033 */   lbu        $t6, 0x33($sp)
/* 04CDE4 8004D234 10000021 */  b           .L8004D2BC
/* 04CDE8 8004D238 8FBF0024 */   lw         $ra, 0x24($sp)
.L8004D23C:
/* 04CDEC 8004D23C 31CF0002 */  andi        $t7, $t6, 0x2
/* 04CDF0 8004D240 51E00004 */  beql        $t7, $zero, .L8004D254
/* 04CDF4 8004D244 8E180008 */   lw         $t8, 0x8($s0)
/* 04CDF8 8004D248 1000001B */  b           .L8004D2B8
/* 04CDFC 8004D24C 2402000F */   addiu      $v0, $zero, 0xf
/* 04CE00 8004D250 8E180008 */  lw          $t8, 0x8($s0)
.L8004D254:
/* 04CE04 8004D254 24190700 */  addiu       $t9, $zero, 0x700
/* 04CE08 8004D258 00003025 */  move        $a2, $zero
/* 04CE0C 8004D25C 17000003 */  bnez        $t8, .L8004D26C
/* 04CE10 8004D260 27A7002C */   addiu      $a3, $sp, 0x2c
/* 04CE14 8004D264 10000014 */  b           .L8004D2B8
/* 04CE18 8004D268 24020005 */   addiu      $v0, $zero, 0x5
.L8004D26C:
/* 04CE1C 8004D26C AFB9002C */  sw          $t9, 0x2c($sp)
/* 04CE20 8004D270 8E050004 */  lw          $a1, 0x4($s0)
/* 04CE24 8004D274 0C0135E8 */  jal         func_8004D7A0
/* 04CE28 8004D278 8E040000 */   lw         $a0, 0x0($s0)
/* 04CE2C 8004D27C 1440000D */  bnez        $v0, .L8004D2B4
/* 04CE30 8004D280 00401825 */   move       $v1, $v0
/* 04CE34 8004D284 2411000F */  addiu       $s1, $zero, 0xf
/* 04CE38 8004D288 02002025 */  move        $a0, $s0
.L8004D28C:
/* 04CE3C 8004D28C 0C013674 */  jal         func_8004D9D0
/* 04CE40 8004D290 02402825 */   move       $a1, $s2
/* 04CE44 8004D294 3048FF00 */  andi        $t0, $v0, 0xff00
/* 04CE48 8004D298 11000003 */  beqz        $t0, .L8004D2A8
/* 04CE4C 8004D29C 00401825 */   move       $v1, $v0
/* 04CE50 8004D2A0 10000002 */  b           .L8004D2AC
/* 04CE54 8004D2A4 24030005 */   addiu      $v1, $zero, 0x5
.L8004D2A8:
/* 04CE58 8004D2A8 AE000008 */  sw          $zero, 0x8($s0)
.L8004D2AC:
/* 04CE5C 8004D2AC 5071FFF7 */  beql        $v1, $s1, .L8004D28C
/* 04CE60 8004D2B0 02002025 */   move       $a0, $s0
.L8004D2B4:
/* 04CE64 8004D2B4 00601025 */  move        $v0, $v1
.L8004D2B8:
/* 04CE68 8004D2B8 8FBF0024 */  lw          $ra, 0x24($sp)
.L8004D2BC:
/* 04CE6C 8004D2BC 8FB00018 */  lw          $s0, 0x18($sp)
/* 04CE70 8004D2C0 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04CE74 8004D2C4 8FB20020 */  lw          $s2, 0x20($sp)
/* 04CE78 8004D2C8 03E00008 */  jr          $ra
/* 04CE7C 8004D2CC 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8004D2D0 # 1
/* 04CE80 8004D2D0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04CE84 8004D2D4 AFB30024 */  sw          $s3, 0x24($sp)
/* 04CE88 8004D2D8 3C138010 */  lui         $s3, %hi(D_80102340)
/* 04CE8C 8004D2DC 26732340 */  addiu       $s3, $s3, %lo(D_80102340)
/* 04CE90 8004D2E0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 04CE94 8004D2E4 AFBE0038 */  sw          $fp, 0x38($sp)
/* 04CE98 8004D2E8 AFB20020 */  sw          $s2, 0x20($sp)
/* 04CE9C 8004D2EC AFB1001C */  sw          $s1, 0x1c($sp)
/* 04CEA0 8004D2F0 AFB00018 */  sw          $s0, 0x18($sp)
/* 04CEA4 8004D2F4 00A08825 */  move        $s1, $a1
/* 04CEA8 8004D2F8 0080F025 */  move        $fp, $a0
/* 04CEAC 8004D2FC AFB70034 */  sw          $s7, 0x34($sp)
/* 04CEB0 8004D300 AFB60030 */  sw          $s6, 0x30($sp)
/* 04CEB4 8004D304 AFB5002C */  sw          $s5, 0x2c($sp)
/* 04CEB8 8004D308 AFB40028 */  sw          $s4, 0x28($sp)
/* 04CEBC 8004D30C AFA60070 */  sw          $a2, 0x70($sp)
/* 04CEC0 8004D310 02608025 */  move        $s0, $s3
/* 04CEC4 8004D314 24120002 */  addiu       $s2, $zero, 0x2
/* 04CEC8 8004D318 0C0150EC */  jal         func_800543B0
/* 04CECC 8004D31C AFA0005C */   sw         $zero, 0x5c($sp)
/* 04CED0 8004D320 8FA3005C */  lw          $v1, 0x5c($sp)
/* 04CED4 8004D324 0271B821 */  addu        $s7, $s3, $s1
/* 04CED8 8004D328 241600FE */  addiu       $s6, $zero, 0xfe
/* 04CEDC 8004D32C 24150001 */  addiu       $s5, $zero, 0x1
/* 04CEE0 8004D330 24140004 */  addiu       $s4, $zero, 0x4
.L8004D334:
/* 04CEE4 8004D334 10740021 */  beq         $v1, $s4, .L8004D3BC
/* 04CEE8 8004D338 00001025 */   move       $v0, $zero
/* 04CEEC 8004D33C 1A200010 */  blez        $s1, .L8004D380
/* 04CEF0 8004D340 AE75003C */   sw         $s5, 0x3c($s3)
/* 04CEF4 8004D344 32240003 */  andi        $a0, $s1, 0x3
/* 04CEF8 8004D348 10800006 */  beqz        $a0, .L8004D364
/* 04CEFC 8004D34C 00801825 */   move       $v1, $a0
.L8004D350:
/* 04CF00 8004D350 24420001 */  addiu       $v0, $v0, 0x1
/* 04CF04 8004D354 A2000000 */  sb          $zero, 0x0($s0)
/* 04CF08 8004D358 1462FFFD */  bne         $v1, $v0, .L8004D350
/* 04CF0C 8004D35C 26100001 */   addiu      $s0, $s0, 0x1
/* 04CF10 8004D360 10510007 */  beq         $v0, $s1, .L8004D380
.L8004D364:
/* 04CF14 8004D364 24420004 */   addiu      $v0, $v0, 0x4
/* 04CF18 8004D368 A2000000 */  sb          $zero, 0x0($s0)
/* 04CF1C 8004D36C A2000001 */  sb          $zero, 0x1($s0)
/* 04CF20 8004D370 A2000002 */  sb          $zero, 0x2($s0)
/* 04CF24 8004D374 A2000003 */  sb          $zero, 0x3($s0)
/* 04CF28 8004D378 1451FFFA */  bne         $v0, $s1, .L8004D364
/* 04CF2C 8004D37C 26100004 */   addiu      $s0, $s0, 0x4
.L8004D380:
/* 04CF30 8004D380 240E0003 */  addiu       $t6, $zero, 0x3
/* 04CF34 8004D384 A2150000 */  sb          $s5, 0x0($s0)
/* 04CF38 8004D388 A20E0001 */  sb          $t6, 0x1($s0)
/* 04CF3C 8004D38C A2000002 */  sb          $zero, 0x2($s0)
/* 04CF40 8004D390 A2160006 */  sb          $s6, 0x6($s0)
/* 04CF44 8004D394 3C018010 */  lui         $at, %hi(D_80102380)
/* 04CF48 8004D398 26100006 */  addiu       $s0, $s0, 0x6
/* 04CF4C 8004D39C A0362380 */  sb          $s6, %lo(D_80102380)($at)
/* 04CF50 8004D3A0 24040001 */  addiu       $a0, $zero, 0x1
/* 04CF54 8004D3A4 0C015108 */  jal         func_80054420
/* 04CF58 8004D3A8 02602825 */   move       $a1, $s3
/* 04CF5C 8004D3AC 03C02025 */  move        $a0, $fp
/* 04CF60 8004D3B0 00002825 */  move        $a1, $zero
/* 04CF64 8004D3B4 0C013A48 */  jal         func_8004E920
/* 04CF68 8004D3B8 24060001 */   addiu      $a2, $zero, 0x1
.L8004D3BC:
/* 04CF6C 8004D3BC 00002025 */  move        $a0, $zero
/* 04CF70 8004D3C0 02602825 */  move        $a1, $s3
/* 04CF74 8004D3C4 0C015108 */  jal         func_80054420
/* 04CF78 8004D3C8 02E08025 */   move       $s0, $s7
/* 04CF7C 8004D3CC 03C02025 */  move        $a0, $fp
/* 04CF80 8004D3D0 00002825 */  move        $a1, $zero
/* 04CF84 8004D3D4 0C013A48 */  jal         func_8004E920
/* 04CF88 8004D3D8 24060001 */   addiu      $a2, $zero, 0x1
/* 04CF8C 8004D3DC 8AE10000 */  lwl         $at, 0x0($s7)
/* 04CF90 8004D3E0 9AE10003 */  lwr         $at, 0x3($s7)
/* 04CF94 8004D3E4 27AF0060 */  addiu       $t7, $sp, 0x60
/* 04CF98 8004D3E8 2A420000 */  slti        $v0, $s2, 0x0
/* 04CF9C 8004D3EC ADE10000 */  sw          $at, 0x0($t7)
/* 04CFA0 8004D3F0 92E10004 */  lbu         $at, 0x4($s7)
/* 04CFA4 8004D3F4 A1E10004 */  sb          $at, 0x4($t7)
/* 04CFA8 8004D3F8 92E80005 */  lbu         $t0, 0x5($s7)
/* 04CFAC 8004D3FC A1E80005 */  sb          $t0, 0x5($t7)
/* 04CFB0 8004D400 93A30061 */  lbu         $v1, 0x61($sp)
/* 04CFB4 8004D404 8FAD0070 */  lw          $t5, 0x70($sp)
/* 04CFB8 8004D408 93AC0065 */  lbu         $t4, 0x65($sp)
/* 04CFBC 8004D40C 306900C0 */  andi        $t1, $v1, 0xc0
/* 04CFC0 8004D410 00095103 */  sra         $t2, $t1, 4
/* 04CFC4 8004D414 314300FF */  andi        $v1, $t2, 0xff
/* 04CFC8 8004D418 1460000E */  bnez        $v1, .L8004D454
/* 04CFCC 8004D41C A1AC0000 */   sb         $t4, 0x0($t5)
/* 04CFD0 8004D420 93AE0063 */  lbu         $t6, 0x63($sp)
/* 04CFD4 8004D424 93B90064 */  lbu         $t9, 0x64($sp)
/* 04CFD8 8004D428 24010001 */  addiu       $at, $zero, 0x1
/* 04CFDC 8004D42C 15C00007 */  bnez        $t6, .L8004D44C
/* 04CFE0 8004D430 00000000 */   nop
/* 04CFE4 8004D434 17210005 */  bne         $t9, $at, .L8004D44C
/* 04CFE8 8004D438 31980004 */   andi       $t8, $t4, 0x4
/* 04CFEC 8004D43C 1300000A */  beqz        $t8, .L8004D468
/* 04CFF0 8004D440 00000000 */   nop
/* 04CFF4 8004D444 10000008 */  b           .L8004D468
/* 04CFF8 8004D448 02801825 */   move       $v1, $s4
.L8004D44C:
/* 04CFFC 8004D44C 10000006 */  b           .L8004D468
/* 04D000 8004D450 2403000B */   addiu      $v1, $zero, 0xb
.L8004D454:
/* 04D004 8004D454 306F0008 */  andi        $t7, $v1, 0x8
/* 04D008 8004D458 11E00003 */  beqz        $t7, .L8004D468
/* 04D00C 8004D45C 02801825 */   move       $v1, $s4
/* 04D010 8004D460 10000001 */  b           .L8004D468
/* 04D014 8004D464 24030001 */   addiu      $v1, $zero, 0x1
.L8004D468:
/* 04D018 8004D468 14740003 */  bne         $v1, $s4, .L8004D478
/* 04D01C 8004D46C 00000000 */   nop
/* 04D020 8004D470 1040FFB0 */  beqz        $v0, .L8004D334
/* 04D024 8004D474 2652FFFF */   addiu      $s2, $s2, -0x1
.L8004D478:
/* 04D028 8004D478 0C0150FD */  jal         func_800543F4
/* 04D02C 8004D47C AFA3005C */   sw         $v1, 0x5c($sp)
/* 04D030 8004D480 8FBF003C */  lw          $ra, 0x3c($sp)
/* 04D034 8004D484 8FA2005C */  lw          $v0, 0x5c($sp)
/* 04D038 8004D488 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D03C 8004D48C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04D040 8004D490 8FB20020 */  lw          $s2, 0x20($sp)
/* 04D044 8004D494 8FB30024 */  lw          $s3, 0x24($sp)
/* 04D048 8004D498 8FB40028 */  lw          $s4, 0x28($sp)
/* 04D04C 8004D49C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04D050 8004D4A0 8FB60030 */  lw          $s6, 0x30($sp)
/* 04D054 8004D4A4 8FB70034 */  lw          $s7, 0x34($sp)
/* 04D058 8004D4A8 8FBE0038 */  lw          $fp, 0x38($sp)
/* 04D05C 8004D4AC 03E00008 */  jr          $ra
/* 04D060 8004D4B0 27BD0068 */   addiu      $sp, $sp, 0x68
/* 04D064 8004D4B4 00000000 */  nop
/* 04D068 8004D4B8 00000000 */  nop
/* 04D06C 8004D4BC 00000000 */  nop
