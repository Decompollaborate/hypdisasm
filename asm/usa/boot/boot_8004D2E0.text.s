.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D2E0 # 0
/* 04CE90 8004D2E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04CE94 8004D2E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04CE98 8004D2E8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 04CE9C 8004D2EC 8C8F0008 */  lw          $t7, 0x8($a0)
/* 04CEA0 8004D2F0 30AE00FF */  andi        $t6, $a1, 0xff
/* 04CEA4 8004D2F4 51E0001B */  beql        $t7, $zero, .L8004D364
/* 04CEA8 8004D2F8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04CEAC 8004D2FC A3AE001F */  sb          $t6, 0x1f($sp)
/* 04CEB0 8004D300 0C013763 */  jal         func_8004DD8C
/* 04CEB4 8004D304 AFA40018 */   sw         $a0, 0x18($sp)
/* 04CEB8 8004D308 93A5001F */  lbu         $a1, 0x1f($sp)
/* 04CEBC 8004D30C 8FA70018 */  lw          $a3, 0x18($sp)
/* 04CEC0 8004D310 10400013 */  beqz        $v0, .L8004D360
/* 04CEC4 8004D314 00403025 */   move       $a2, $v0
/* 04CEC8 8004D318 3C18800A */  lui         $t8, %hi(D_8009D9C4)
/* 04CECC 8004D31C 8F18D9C4 */  lw          $t8, %lo(D_8009D9C4)($t8)
/* 04CED0 8004D320 8CE80008 */  lw          $t0, 0x8($a3)
/* 04CED4 8004D324 240B0010 */  addiu       $t3, $zero, 0x10
/* 04CED8 8004D328 8F190028 */  lw          $t9, 0x28($t8)
/* 04CEDC 8004D32C 8D090088 */  lw          $t1, 0x88($t0)
/* 04CEE0 8004D330 28A10080 */  slti        $at, $a1, 0x80
/* 04CEE4 8004D334 A44B0008 */  sh          $t3, 0x8($v0)
/* 04CEE8 8004D338 03295021 */  addu        $t2, $t9, $t1
/* 04CEEC 8004D33C AC4A0004 */  sw          $t2, 0x4($v0)
/* 04CEF0 8004D340 14200002 */  bnez        $at, .L8004D34C
/* 04CEF4 8004D344 00A01825 */   move       $v1, $a1
/* 04CEF8 8004D348 2403007F */  addiu       $v1, $zero, 0x7f
.L8004D34C:
/* 04CEFC 8004D34C ACC3000C */  sw          $v1, 0xc($a2)
/* 04CF00 8004D350 ACC00000 */  sw          $zero, 0x0($a2)
/* 04CF04 8004D354 8CE40008 */  lw          $a0, 0x8($a3)
/* 04CF08 8004D358 0C013986 */  jal         func_8004E618
/* 04CF0C 8004D35C 24050003 */   addiu      $a1, $zero, 0x3
.L8004D360:
/* 04CF10 8004D360 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D364:
/* 04CF14 8004D364 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04CF18 8004D368 03E00008 */  jr          $ra
/* 04CF1C 8004D36C 00000000 */   nop

glabel func_8004D370 # 1
/* 04CF20 8004D370 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04CF24 8004D374 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04CF28 8004D378 AFB00018 */  sw          $s0, 0x18($sp)
/* 04CF2C 8004D37C AFA0002C */  sw          $zero, 0x2c($sp)
/* 04CF30 8004D380 84AE0000 */  lh          $t6, 0x0($a1)
/* 04CF34 8004D384 00808025 */  move        $s0, $a0
/* 04CF38 8004D388 A48E0016 */  sh          $t6, 0x16($a0)
/* 04CF3C 8004D38C 90AF0004 */  lbu         $t7, 0x4($a1)
/* 04CF40 8004D390 AC80000C */  sw          $zero, 0xc($a0)
/* 04CF44 8004D394 A48F001A */  sh          $t7, 0x1a($a0)
/* 04CF48 8004D398 84B80002 */  lh          $t8, 0x2($a1)
/* 04CF4C 8004D39C A4800014 */  sh          $zero, 0x14($a0)
/* 04CF50 8004D3A0 AC800008 */  sw          $zero, 0x8($a0)
/* 04CF54 8004D3A4 AC800010 */  sw          $zero, 0x10($a0)
/* 04CF58 8004D3A8 A4980018 */  sh          $t8, 0x18($a0)
/* 04CF5C 8004D3AC 84A50000 */  lh          $a1, 0x0($a1)
/* 04CF60 8004D3B0 0C01352C */  jal         func_8004D4B0
/* 04CF64 8004D3B4 27A4002C */   addiu      $a0, $sp, 0x2c
/* 04CF68 8004D3B8 8FB9002C */  lw          $t9, 0x2c($sp)
/* 04CF6C 8004D3BC 53200036 */  beql        $t9, $zero, .L8004D498
/* 04CF70 8004D3C0 8FA2002C */   lw         $v0, 0x2c($sp)
/* 04CF74 8004D3C4 1040002C */  beqz        $v0, .L8004D478
/* 04CF78 8004D3C8 8FAD002C */   lw         $t5, 0x2c($sp)
/* 04CF7C 8004D3CC 24080228 */  addiu       $t0, $zero, 0x228
/* 04CF80 8004D3D0 AF280088 */  sw          $t0, 0x88($t9)
/* 04CF84 8004D3D4 8FA9002C */  lw          $t1, 0x2c($sp)
/* 04CF88 8004D3D8 8D2A0008 */  lw          $t2, 0x8($t1)
/* 04CF8C 8004D3DC AD400008 */  sw          $zero, 0x8($t2)
/* 04CF90 8004D3E0 8D2B0008 */  lw          $t3, 0x8($t1)
/* 04CF94 8004D3E4 AD600010 */  sw          $zero, 0x10($t3)
/* 04CF98 8004D3E8 AD300008 */  sw          $s0, 0x8($t1)
/* 04CF9C 8004D3EC 8FAC002C */  lw          $t4, 0x2c($sp)
/* 04CFA0 8004D3F0 0C013763 */  jal         func_8004DD8C
/* 04CFA4 8004D3F4 AE0C0008 */   sw         $t4, 0x8($s0)
/* 04CFA8 8004D3F8 3C0D800A */  lui         $t5, %hi(D_8009D9C4)
/* 04CFAC 8004D3FC 8DADD9C4 */  lw          $t5, %lo(D_8009D9C4)($t5)
/* 04CFB0 8004D400 240F000B */  addiu       $t7, $zero, 0xb
/* 04CFB4 8004D404 24180170 */  addiu       $t8, $zero, 0x170
/* 04CFB8 8004D408 8DAE0028 */  lw          $t6, 0x28($t5)
/* 04CFBC 8004D40C A44F0008 */  sh          $t7, 0x8($v0)
/* 04CFC0 8004D410 AC40000C */  sw          $zero, 0xc($v0)
/* 04CFC4 8004D414 AC580010 */  sw          $t8, 0x10($v0)
/* 04CFC8 8004D418 AC4E0004 */  sw          $t6, 0x4($v0)
/* 04CFCC 8004D41C 8E040008 */  lw          $a0, 0x8($s0)
/* 04CFD0 8004D420 24050003 */  addiu       $a1, $zero, 0x3
/* 04CFD4 8004D424 0C013986 */  jal         func_8004E618
/* 04CFD8 8004D428 00403025 */   move       $a2, $v0
/* 04CFDC 8004D42C 0C013763 */  jal         func_8004DD8C
/* 04CFE0 8004D430 00000000 */   nop
/* 04CFE4 8004D434 10400015 */  beqz        $v0, .L8004D48C
/* 04CFE8 8004D438 00403025 */   move       $a2, $v0
/* 04CFEC 8004D43C 3C08800A */  lui         $t0, %hi(D_8009D9C4)
/* 04CFF0 8004D440 8D08D9C4 */  lw          $t0, %lo(D_8009D9C4)($t0)
/* 04CFF4 8004D444 8FAA002C */  lw          $t2, 0x2c($sp)
/* 04CFF8 8004D448 240C000F */  addiu       $t4, $zero, 0xf
/* 04CFFC 8004D44C 8D190028 */  lw          $t9, 0x28($t0)
/* 04D000 8004D450 8D4B0088 */  lw          $t3, 0x88($t2)
/* 04D004 8004D454 A44C0008 */  sh          $t4, 0x8($v0)
/* 04D008 8004D458 AC400000 */  sw          $zero, 0x0($v0)
/* 04D00C 8004D45C 032B4821 */  addu        $t1, $t9, $t3
/* 04D010 8004D460 AC490004 */  sw          $t1, 0x4($v0)
/* 04D014 8004D464 8E040008 */  lw          $a0, 0x8($s0)
/* 04D018 8004D468 0C013986 */  jal         func_8004E618
/* 04D01C 8004D46C 24050003 */   addiu      $a1, $zero, 0x3
/* 04D020 8004D470 10000007 */  b           .L8004D490
/* 04D024 8004D474 24180001 */   addiu      $t8, $zero, 0x1
.L8004D478:
/* 04D028 8004D478 ADA00088 */  sw          $zero, 0x88($t5)
/* 04D02C 8004D47C 8FAE002C */  lw          $t6, 0x2c($sp)
/* 04D030 8004D480 ADD00008 */  sw          $s0, 0x8($t6)
/* 04D034 8004D484 8FAF002C */  lw          $t7, 0x2c($sp)
/* 04D038 8004D488 AE0F0008 */  sw          $t7, 0x8($s0)
.L8004D48C:
/* 04D03C 8004D48C 24180001 */  addiu       $t8, $zero, 0x1
.L8004D490:
/* 04D040 8004D490 AE180010 */  sw          $t8, 0x10($s0)
/* 04D044 8004D494 8FA2002C */  lw          $v0, 0x2c($sp)
.L8004D498:
/* 04D048 8004D498 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04D04C 8004D49C 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D050 8004D4A0 0002402B */  sltu        $t0, $zero, $v0
/* 04D054 8004D4A4 01001025 */  move        $v0, $t0
/* 04D058 8004D4A8 03E00008 */  jr          $ra
/* 04D05C 8004D4AC 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8004D4B0 # 2
/* 04D060 8004D4B0 3C02800A */  lui         $v0, %hi(D_8009D9C4)
/* 04D064 8004D4B4 8C42D9C4 */  lw          $v0, %lo(D_8009D9C4)($v0)
/* 04D068 8004D4B8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04D06C 8004D4BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D070 8004D4C0 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04D074 8004D4C4 8C460020 */  lw          $a2, 0x20($v0)
/* 04D078 8004D4C8 00057400 */  sll         $t6, $a1, 16
/* 04D07C 8004D4CC 000E2C03 */  sra         $a1, $t6, 16
/* 04D080 8004D4D0 00803825 */  move        $a3, $a0
/* 04D084 8004D4D4 10C0000D */  beqz        $a2, .L8004D50C
/* 04D088 8004D4D8 00001825 */   move       $v1, $zero
/* 04D08C 8004D4DC AC860000 */  sw          $a2, 0x0($a0)
/* 04D090 8004D4E0 AFA60024 */  sw          $a2, 0x24($sp)
/* 04D094 8004D4E4 AFA0001C */  sw          $zero, 0x1c($sp)
/* 04D098 8004D4E8 0C015838 */  jal         func_800560E0
/* 04D09C 8004D4EC 00C02025 */   move       $a0, $a2
/* 04D0A0 8004D4F0 3C05800A */  lui         $a1, %hi(D_8009D9C4)
/* 04D0A4 8004D4F4 8CA5D9C4 */  lw          $a1, %lo(D_8009D9C4)($a1)
/* 04D0A8 8004D4F8 8FA40024 */  lw          $a0, 0x24($sp)
/* 04D0AC 8004D4FC 0C01582F */  jal         func_800560BC
/* 04D0B0 8004D500 24A50018 */   addiu      $a1, $a1, 0x18
/* 04D0B4 8004D504 10000021 */  b           .L8004D58C
/* 04D0B8 8004D508 8FA3001C */   lw         $v1, 0x1c($sp)
.L8004D50C:
/* 04D0BC 8004D50C 8C460010 */  lw          $a2, 0x10($v0)
/* 04D0C0 8004D510 10C0000C */  beqz        $a2, .L8004D544
/* 04D0C4 8004D514 00C02025 */   move       $a0, $a2
/* 04D0C8 8004D518 ACE60000 */  sw          $a2, 0x0($a3)
/* 04D0CC 8004D51C AFA60024 */  sw          $a2, 0x24($sp)
/* 04D0D0 8004D520 0C015838 */  jal         func_800560E0
/* 04D0D4 8004D524 AFA3001C */   sw         $v1, 0x1c($sp)
/* 04D0D8 8004D528 3C05800A */  lui         $a1, %hi(D_8009D9C4)
/* 04D0DC 8004D52C 8CA5D9C4 */  lw          $a1, %lo(D_8009D9C4)($a1)
/* 04D0E0 8004D530 8FA40024 */  lw          $a0, 0x24($sp)
/* 04D0E4 8004D534 0C01582F */  jal         func_800560BC
/* 04D0E8 8004D538 24A50018 */   addiu      $a1, $a1, 0x18
/* 04D0EC 8004D53C 10000013 */  b           .L8004D58C
/* 04D0F0 8004D540 8FA3001C */   lw         $v1, 0x1c($sp)
.L8004D544:
/* 04D0F4 8004D544 8C460018 */  lw          $a2, 0x18($v0)
/* 04D0F8 8004D548 50C00011 */  beql        $a2, $zero, .L8004D590
/* 04D0FC 8004D54C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04D100 8004D550 8CD80008 */  lw          $t8, 0x8($a2)
.L8004D554:
/* 04D104 8004D554 87190016 */  lh          $t9, 0x16($t8)
/* 04D108 8004D558 00B9082A */  slt         $at, $a1, $t9
/* 04D10C 8004D55C 54200009 */  bnel        $at, $zero, .L8004D584
/* 04D110 8004D560 8CC60000 */   lw         $a2, 0x0($a2)
/* 04D114 8004D564 8CC80088 */  lw          $t0, 0x88($a2)
/* 04D118 8004D568 55000006 */  bnel        $t0, $zero, .L8004D584
/* 04D11C 8004D56C 8CC60000 */   lw         $a2, 0x0($a2)
/* 04D120 8004D570 ACE60000 */  sw          $a2, 0x0($a3)
/* 04D124 8004D574 8CC90008 */  lw          $t1, 0x8($a2)
/* 04D128 8004D578 24030001 */  addiu       $v1, $zero, 0x1
/* 04D12C 8004D57C 85250016 */  lh          $a1, 0x16($t1)
/* 04D130 8004D580 8CC60000 */  lw          $a2, 0x0($a2)
.L8004D584:
/* 04D134 8004D584 54C0FFF3 */  bnel        $a2, $zero, .L8004D554
/* 04D138 8004D588 8CD80008 */   lw         $t8, 0x8($a2)
.L8004D58C:
/* 04D13C 8004D58C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D590:
/* 04D140 8004D590 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04D144 8004D594 00601025 */  move        $v0, $v1
/* 04D148 8004D598 03E00008 */  jr          $ra
/* 04D14C 8004D59C 00000000 */   nop

glabel func_8004D5A0 # 3
/* 04D150 8004D5A0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04D154 8004D5A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D158 8004D5A8 AFA40020 */  sw          $a0, 0x20($sp)
/* 04D15C 8004D5AC AFA50024 */  sw          $a1, 0x24($sp)
/* 04D160 8004D5B0 AFA60028 */  sw          $a2, 0x28($sp)
/* 04D164 8004D5B4 AFA7002C */  sw          $a3, 0x2c($sp)
/* 04D168 8004D5B8 8C8F0008 */  lw          $t7, 0x8($a0)
/* 04D16C 8004D5BC 51E0002A */  beql        $t7, $zero, .L8004D668
/* 04D170 8004D5C0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04D174 8004D5C4 0C013763 */  jal         func_8004DD8C
/* 04D178 8004D5C8 00000000 */   nop
/* 04D17C 8004D5CC 10400025 */  beqz        $v0, .L8004D664
/* 04D180 8004D5D0 00403025 */   move       $a2, $v0
/* 04D184 8004D5D4 93A20037 */  lbu         $v0, 0x37($sp)
/* 04D188 8004D5D8 8FA30020 */  lw          $v1, 0x20($sp)
/* 04D18C 8004D5DC 3C18800A */  lui         $t8, %hi(D_8009D9C4)
/* 04D190 8004D5E0 28410080 */  slti        $at, $v0, 0x80
/* 04D194 8004D5E4 14200002 */  bnez        $at, .L8004D5F0
/* 04D198 8004D5E8 00000000 */   nop
/* 04D19C 8004D5EC 2402007F */  addiu       $v0, $zero, 0x7f
.L8004D5F0:
/* 04D1A0 8004D5F0 8F18D9C4 */  lw          $t8, %lo(D_8009D9C4)($t8)
/* 04D1A4 8004D5F4 8C680008 */  lw          $t0, 0x8($v1)
/* 04D1A8 8004D5F8 240B000D */  addiu       $t3, $zero, 0xd
/* 04D1AC 8004D5FC 8F190028 */  lw          $t9, 0x28($t8)
/* 04D1B0 8004D600 8D090088 */  lw          $t1, 0x88($t0)
/* 04D1B4 8004D604 ACC00000 */  sw          $zero, 0x0($a2)
/* 04D1B8 8004D608 A4CB0008 */  sh          $t3, 0x8($a2)
/* 04D1BC 8004D60C 03295021 */  addu        $t2, $t9, $t1
/* 04D1C0 8004D610 ACCA0004 */  sw          $t2, 0x4($a2)
/* 04D1C4 8004D614 846C001A */  lh          $t4, 0x1a($v1)
/* 04D1C8 8004D618 A4CC000A */  sh          $t4, 0xa($a2)
/* 04D1CC 8004D61C 93AD0033 */  lbu         $t5, 0x33($sp)
/* 04D1D0 8004D620 A0CD0012 */  sb          $t5, 0x12($a2)
/* 04D1D4 8004D624 87AE002E */  lh          $t6, 0x2e($sp)
/* 04D1D8 8004D628 A0C20013 */  sb          $v0, 0x13($a2)
/* 04D1DC 8004D62C A4CE0010 */  sh          $t6, 0x10($a2)
/* 04D1E0 8004D630 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 04D1E4 8004D634 E4C4000C */  swc1        $f4, 0xc($a2)
/* 04D1E8 8004D638 AFA6001C */  sw          $a2, 0x1c($sp)
/* 04D1EC 8004D63C 0C0137B2 */  jal         func_8004DEC8
/* 04D1F0 8004D640 8FA40038 */   lw         $a0, 0x38($sp)
/* 04D1F4 8004D644 8FA6001C */  lw          $a2, 0x1c($sp)
/* 04D1F8 8004D648 24050003 */  addiu       $a1, $zero, 0x3
/* 04D1FC 8004D64C ACC20014 */  sw          $v0, 0x14($a2)
/* 04D200 8004D650 8FAF0024 */  lw          $t7, 0x24($sp)
/* 04D204 8004D654 ACCF0018 */  sw          $t7, 0x18($a2)
/* 04D208 8004D658 8FB80020 */  lw          $t8, 0x20($sp)
/* 04D20C 8004D65C 0C013986 */  jal         func_8004E618
/* 04D210 8004D660 8F040008 */   lw         $a0, 0x8($t8)
.L8004D664:
/* 04D214 8004D664 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D668:
/* 04D218 8004D668 27BD0020 */  addiu       $sp, $sp, 0x20
/* 04D21C 8004D66C 03E00008 */  jr          $ra
/* 04D220 8004D670 00000000 */   nop
/* 04D224 8004D674 00000000 */  nop
/* 04D228 8004D678 00000000 */  nop
/* 04D22C 8004D67C 00000000 */  nop
