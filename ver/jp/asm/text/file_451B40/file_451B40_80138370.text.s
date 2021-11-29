.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_451B40 # 0
/* 000000 80138370 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 000004 80138374 AFBF0044 */  sw          $ra, 0x44($sp)
/* 000008 80138378 AFA40050 */  sw          $a0, 0x50($sp)
/* 00000C 8013837C AFB50040 */  sw          $s5, 0x40($sp)
/* 000010 80138380 AFB4003C */  sw          $s4, 0x3c($sp)
/* 000014 80138384 AFB30038 */  sw          $s3, 0x38($sp)
/* 000018 80138388 AFB20034 */  sw          $s2, 0x34($sp)
/* 00001C 8013838C AFB10030 */  sw          $s1, 0x30($sp)
/* 000020 80138390 AFB0002C */  sw          $s0, 0x2c($sp)
/* 000024 80138394 0C00C14B */  jal         func_8003052C
/* 000028 80138398 2404001F */   addiu      $a0, $zero, 0x1f
/* 00002C 8013839C 10400003 */  beqz        $v0, .L801383AC
/* 000030 801383A0 24100001 */   addiu      $s0, $zero, 0x1
/* 000034 801383A4 10000001 */  b           .L801383AC
/* 000038 801383A8 00008025 */   move       $s0, $zero
.L801383AC:
/* 00003C 801383AC 0C00E512 */  jal         func_80039448
/* 000040 801383B0 00000000 */   nop
/* 000044 801383B4 44822000 */  mtc1        $v0, $f4
/* 000048 801383B8 04410006 */  bgez        $v0, .L801383D4
/* 00004C 801383BC 468021A1 */   cvt.d.w    $f6, $f4
/* 000050 801383C0 3C0141F0 */  lui         $at, 0x41f0
/* 000054 801383C4 44814800 */  mtc1        $at, $f9
/* 000058 801383C8 44804000 */  mtc1        $zero, $f8
/* 00005C 801383CC 00000000 */  nop
/* 000060 801383D0 46283180 */  add.d       $f6, $f6, $f8
.L801383D4:
/* 000064 801383D4 3C013DF0 */  lui         $at, 0x3df0
/* 000068 801383D8 44815800 */  mtc1        $at, $f11
/* 00006C 801383DC 44805000 */  mtc1        $zero, $f10
/* 000070 801383E0 3C014059 */  lui         $at, 0x4059
/* 000074 801383E4 462A3402 */  mul.d       $f16, $f6, $f10
/* 000078 801383E8 44819800 */  mtc1        $at, $f19
/* 00007C 801383EC 44809000 */  mtc1        $zero, $f18
/* 000080 801383F0 240F0005 */  addiu       $t7, $zero, 0x5
/* 000084 801383F4 01F09023 */  subu        $s2, $t7, $s0
/* 000088 801383F8 46328102 */  mul.d       $f4, $f16, $f18
/* 00008C 801383FC 3C158015 */  lui         $s5, %hi(D_80149E00)
/* 000090 80138400 3C148015 */  lui         $s4, %hi(D_80149DD8)
/* 000094 80138404 26949DD8 */  addiu       $s4, $s4, %lo(D_80149DD8)
/* 000098 80138408 26B59E00 */  addiu       $s5, $s5, %lo(D_80149E00)
/* 00009C 8013840C 444EF800 */  cfc1        $t6, $31
/* 0000A0 80138410 00008025 */  move        $s0, $zero
/* 0000A4 80138414 35C10003 */  ori         $at, $t6, 0x3
/* 0000A8 80138418 38210002 */  xori        $at, $at, 0x2
/* 0000AC 8013841C 44C1F800 */  ctc1        $at, $31
/* 0000B0 80138420 00008825 */  move        $s1, $zero
/* 0000B4 80138424 46202224 */  cvt.w.d     $f8, $f4
/* 0000B8 80138428 44134000 */  mfc1        $s3, $f8
/* 0000BC 8013842C 44CEF800 */  ctc1        $t6, $31
/* 0000C0 80138430 1A400014 */  blez        $s2, .L80138484
/* 0000C4 80138434 00000000 */   nop
.L80138438:
/* 0000C8 80138438 0C00C14B */  jal         func_8003052C
/* 0000CC 8013843C 2404001F */   addiu      $a0, $zero, 0x1f
/* 0000D0 80138440 10400005 */  beqz        $v0, .L80138458
/* 0000D4 80138444 02901021 */   addu       $v0, $s4, $s0
/* 0000D8 80138448 8C430004 */  lw          $v1, 0x4($v0)
/* 0000DC 8013844C 8C440000 */  lw          $a0, 0x0($v0)
/* 0000E0 80138450 10000006 */  b           .L8013846C
/* 0000E4 80138454 0073082A */   slt        $at, $v1, $s3
.L80138458:
/* 0000E8 80138458 02B01021 */  addu        $v0, $s5, $s0
/* 0000EC 8013845C 8C430004 */  lw          $v1, 0x4($v0)
/* 0000F0 80138460 8C440000 */  lw          $a0, 0x0($v0)
/* 0000F4 80138464 00000000 */  nop
/* 0000F8 80138468 0073082A */  slt         $at, $v1, $s3
.L8013846C:
/* 0000FC 8013846C 14200003 */  bnez        $at, .L8013847C
/* 000100 80138470 26310001 */   addiu      $s1, $s1, 0x1
/* 000104 80138474 10000003 */  b           .L80138484
/* 000108 80138478 AFA4004C */   sw         $a0, 0x4c($sp)
.L8013847C:
/* 00010C 8013847C 1632FFEE */  bne         $s1, $s2, .L80138438
/* 000110 80138480 26100008 */   addiu      $s0, $s0, 0x8
.L80138484:
/* 000114 80138484 8FB0004C */  lw          $s0, 0x4c($sp)
/* 000118 80138488 2401FFFF */  addiu       $at, $zero, -0x1
/* 00011C 8013848C 12010013 */  beq         $s0, $at, .L801384DC
/* 000120 80138490 8FBF0044 */   lw         $ra, 0x44($sp)
/* 000124 80138494 44800000 */  mtc1        $zero, $f0
/* 000128 80138498 3C188013 */  lui         $t8, %hi(D_80137EE4)
/* 00012C 8013849C 8F187EE4 */  lw          $t8, %lo(D_80137EE4)($t8)
/* 000130 801384A0 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000134 801384A4 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000138 801384A8 C706000C */  lwc1        $f6, 0xc($t8)
/* 00013C 801384AC 8FA80050 */  lw          $t0, 0x50($sp)
/* 000140 801384B0 3C198014 */  lui         $t9, %hi(D_801474B0)
/* 000144 801384B4 273974B0 */  addiu       $t9, $t9, %lo(D_801474B0)
/* 000148 801384B8 AFB9001C */  sw          $t9, 0x1c($sp)
/* 00014C 801384BC 02002025 */  move        $a0, $s0
/* 000150 801384C0 3C054258 */  lui         $a1, 0x4258
/* 000154 801384C4 3C064100 */  lui         $a2, 0x4100
/* 000158 801384C8 3C074290 */  lui         $a3, 0x4290
/* 00015C 801384CC E7A60018 */  swc1        $f6, 0x18($sp)
/* 000160 801384D0 0C007179 */  jal         func_8001C5E4
/* 000164 801384D4 AFA80020 */   sw         $t0, 0x20($sp)
/* 000168 801384D8 8FBF0044 */  lw          $ra, 0x44($sp)
.L801384DC:
/* 00016C 801384DC 8FB0002C */  lw          $s0, 0x2c($sp)
/* 000170 801384E0 8FB10030 */  lw          $s1, 0x30($sp)
/* 000174 801384E4 8FB20034 */  lw          $s2, 0x34($sp)
/* 000178 801384E8 8FB30038 */  lw          $s3, 0x38($sp)
/* 00017C 801384EC 8FB4003C */  lw          $s4, 0x3c($sp)
/* 000180 801384F0 8FB50040 */  lw          $s5, 0x40($sp)
/* 000184 801384F4 03E00008 */  jr          $ra
/* 000188 801384F8 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_801384FC_451B40 # 1
/* 00018C 801384FC 44800000 */  mtc1        $zero, $f0
/* 000190 80138500 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000194 80138504 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 000198 80138508 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 00019C 8013850C AFBF002C */  sw          $ra, 0x2c($sp)
/* 0001A0 80138510 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0001A4 80138514 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0001A8 80138518 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 0001AC 8013851C 3C0F8015 */  lui         $t7, %hi(D_801492C4)
/* 0001B0 80138520 25EF92C4 */  addiu       $t7, $t7, %lo(D_801492C4)
/* 0001B4 80138524 24180063 */  addiu       $t8, $zero, 0x63
/* 0001B8 80138528 AFB80020 */  sw          $t8, 0x20($sp)
/* 0001BC 8013852C AFAF001C */  sw          $t7, 0x1c($sp)
/* 0001C0 80138530 24040009 */  addiu       $a0, $zero, 0x9
/* 0001C4 80138534 3C054258 */  lui         $a1, 0x4258
/* 0001C8 80138538 3C064100 */  lui         $a2, 0x4100
/* 0001CC 8013853C 3C074286 */  lui         $a3, 0x4286
/* 0001D0 80138540 0C007179 */  jal         func_8001C5E4
/* 0001D4 80138544 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0001D8 80138548 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001DC 8013854C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0001E0 80138550 03E00008 */  jr          $ra
/* 0001E4 80138554 00000000 */   nop

glabel func_80138558_451B40 # 2
/* 0001E8 80138558 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0001EC 8013855C AFBF001C */  sw          $ra, 0x1c($sp)
/* 0001F0 80138560 0C00C14B */  jal         func_8003052C
/* 0001F4 80138564 2404001F */   addiu      $a0, $zero, 0x1f
/* 0001F8 80138568 1040000E */  beqz        $v0, .L801385A4
/* 0001FC 8013856C 3C014258 */   lui        $at, 0x4258
/* 000200 80138570 3C014258 */  lui         $at, 0x4258
/* 000204 80138574 44800000 */  mtc1        $zero, $f0
/* 000208 80138578 44816000 */  mtc1        $at, $f12
/* 00020C 8013857C 3C014140 */  lui         $at, 0x4140
/* 000210 80138580 44817000 */  mtc1        $at, $f14
/* 000214 80138584 240E0053 */  addiu       $t6, $zero, 0x53
/* 000218 80138588 44070000 */  mfc1        $a3, $f0
/* 00021C 8013858C AFAE0014 */  sw          $t6, 0x14($sp)
/* 000220 80138590 3C0642D0 */  lui         $a2, 0x42d0
/* 000224 80138594 0C045BDD */  jal         func_80116F74
/* 000228 80138598 E7A00010 */   swc1       $f0, 0x10($sp)
/* 00022C 8013859C 1000000C */  b           .L801385D0
/* 000230 801385A0 8FBF001C */   lw         $ra, 0x1c($sp)
.L801385A4:
/* 000234 801385A4 44800000 */  mtc1        $zero, $f0
/* 000238 801385A8 44816000 */  mtc1        $at, $f12
/* 00023C 801385AC 3C014140 */  lui         $at, 0x4140
/* 000240 801385B0 44817000 */  mtc1        $at, $f14
/* 000244 801385B4 240F0052 */  addiu       $t7, $zero, 0x52
/* 000248 801385B8 44070000 */  mfc1        $a3, $f0
/* 00024C 801385BC AFAF0014 */  sw          $t7, 0x14($sp)
/* 000250 801385C0 3C0642D0 */  lui         $a2, 0x42d0
/* 000254 801385C4 0C045BDD */  jal         func_80116F74
/* 000258 801385C8 E7A00010 */   swc1       $f0, 0x10($sp)
/* 00025C 801385CC 8FBF001C */  lw          $ra, 0x1c($sp)
.L801385D0:
/* 000260 801385D0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000264 801385D4 03E00008 */  jr          $ra
/* 000268 801385D8 00000000 */   nop

glabel func_801385DC_451B40 # 3
/* 00026C 801385DC 44800000 */  mtc1        $zero, $f0
/* 000270 801385E0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000274 801385E4 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 000278 801385E8 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 00027C 801385EC AFBF002C */  sw          $ra, 0x2c($sp)
/* 000280 801385F0 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000284 801385F4 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000288 801385F8 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 00028C 801385FC 3C0F8015 */  lui         $t7, %hi(D_801497B8)
/* 000290 80138600 25EF97B8 */  addiu       $t7, $t7, %lo(D_801497B8)
/* 000294 80138604 24180062 */  addiu       $t8, $zero, 0x62
/* 000298 80138608 44050000 */  mfc1        $a1, $f0
/* 00029C 8013860C 44060000 */  mfc1        $a2, $f0
/* 0002A0 80138610 44070000 */  mfc1        $a3, $f0
/* 0002A4 80138614 AFB80020 */  sw          $t8, 0x20($sp)
/* 0002A8 80138618 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0002AC 8013861C 24040014 */  addiu       $a0, $zero, 0x14
/* 0002B0 80138620 0C007179 */  jal         func_8001C5E4
/* 0002B4 80138624 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0002B8 80138628 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0002BC 8013862C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0002C0 80138630 03E00008 */  jr          $ra
/* 0002C4 80138634 00000000 */   nop

glabel func_80138638_451B40 # 4
/* 0002C8 80138638 44800000 */  mtc1        $zero, $f0
/* 0002CC 8013863C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0002D0 80138640 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 0002D4 80138644 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 0002D8 80138648 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0002DC 8013864C E7A00010 */  swc1        $f0, 0x10($sp)
/* 0002E0 80138650 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0002E4 80138654 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 0002E8 80138658 3C0F8015 */  lui         $t7, %hi(D_80149A2C)
/* 0002EC 8013865C 25EF9A2C */  addiu       $t7, $t7, %lo(D_80149A2C)
/* 0002F0 80138660 24180046 */  addiu       $t8, $zero, 0x46
/* 0002F4 80138664 AFB80020 */  sw          $t8, 0x20($sp)
/* 0002F8 80138668 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0002FC 8013866C 24040001 */  addiu       $a0, $zero, 0x1
/* 000300 80138670 3C054280 */  lui         $a1, 0x4280
/* 000304 80138674 3C064140 */  lui         $a2, 0x4140
/* 000308 80138678 3C074234 */  lui         $a3, 0x4234
/* 00030C 8013867C 0C007179 */  jal         func_8001C5E4
/* 000310 80138680 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000314 80138684 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000318 80138688 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00031C 8013868C 03E00008 */  jr          $ra
/* 000320 80138690 00000000 */   nop

glabel func_80138694_451B40 # 5
/* 000324 80138694 44800000 */  mtc1        $zero, $f0
/* 000328 80138698 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00032C 8013869C 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 000330 801386A0 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 000334 801386A4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000338 801386A8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00033C 801386AC E7A00014 */  swc1        $f0, 0x14($sp)
/* 000340 801386B0 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000344 801386B4 3C0F8015 */  lui         $t7, %hi(D_80149CC8)
/* 000348 801386B8 25EF9CC8 */  addiu       $t7, $t7, %lo(D_80149CC8)
/* 00034C 801386BC 24180046 */  addiu       $t8, $zero, 0x46
/* 000350 801386C0 AFB80020 */  sw          $t8, 0x20($sp)
/* 000354 801386C4 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000358 801386C8 24040013 */  addiu       $a0, $zero, 0x13
/* 00035C 801386CC 3C0542D0 */  lui         $a1, 0x42d0
/* 000360 801386D0 3C0641C0 */  lui         $a2, 0x41c0
/* 000364 801386D4 3C074290 */  lui         $a3, 0x4290
/* 000368 801386D8 0C007179 */  jal         func_8001C5E4
/* 00036C 801386DC E7A40018 */   swc1       $f4, 0x18($sp)
/* 000370 801386E0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000374 801386E4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000378 801386E8 03E00008 */  jr          $ra
/* 00037C 801386EC 00000000 */   nop

glabel func_801386F0_451B40 # 6
/* 000380 801386F0 44800000 */  mtc1        $zero, $f0
/* 000384 801386F4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000388 801386F8 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 00038C 801386FC 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 000390 80138700 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000394 80138704 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000398 80138708 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00039C 8013870C C5C4000C */  lwc1        $f4, 0xc($t6)
/* 0003A0 80138710 3C0F8015 */  lui         $t7, %hi(D_80149DC4)
/* 0003A4 80138714 25EF9DC4 */  addiu       $t7, $t7, %lo(D_80149DC4)
/* 0003A8 80138718 24180061 */  addiu       $t8, $zero, 0x61
/* 0003AC 8013871C AFB80020 */  sw          $t8, 0x20($sp)
/* 0003B0 80138720 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0003B4 80138724 2404000A */  addiu       $a0, $zero, 0xa
/* 0003B8 80138728 3C054294 */  lui         $a1, 0x4294
/* 0003BC 8013872C 3C064140 */  lui         $a2, 0x4140
/* 0003C0 80138730 3C074228 */  lui         $a3, 0x4228
/* 0003C4 80138734 0C007179 */  jal         func_8001C5E4
/* 0003C8 80138738 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0003CC 8013873C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0003D0 80138740 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0003D4 80138744 03E00008 */  jr          $ra
/* 0003D8 80138748 00000000 */   nop

glabel func_8013874C_451B40 # 7
/* 0003DC 8013874C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0003E0 80138750 3C013F80 */  lui         $at, 0x3f80
/* 0003E4 80138754 44812000 */  mtc1        $at, $f4
/* 0003E8 80138758 3C048015 */  lui         $a0, %hi(D_80149E20)
/* 0003EC 8013875C 24849E20 */  addiu       $a0, $a0, %lo(D_80149E20)
/* 0003F0 80138760 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0003F4 80138764 3C06461C */  lui         $a2, (0x461C4000 >> 16)
/* 0003F8 80138768 240E0088 */  addiu       $t6, $zero, 0x88
/* 0003FC 8013876C 240F0088 */  addiu       $t7, $zero, 0x88
/* 000400 80138770 24180001 */  addiu       $t8, $zero, 0x1
/* 000404 80138774 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000408 80138778 AFAF0014 */  sw          $t7, 0x14($sp)
/* 00040C 8013877C AFAE0010 */  sw          $t6, 0x10($sp)
/* 000410 80138780 34C64000 */  ori         $a2, $a2, (0x461C4000 & 0xFFFF)
/* 000414 80138784 AFA40020 */  sw          $a0, 0x20($sp)
/* 000418 80138788 00002825 */  move        $a1, $zero
/* 00041C 8013878C 24070000 */  addiu       $a3, $zero, 0x0
/* 000420 80138790 0C00C669 */  jal         func_800319A4
/* 000424 80138794 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000428 80138798 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00042C 8013879C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000430 801387A0 03E00008 */  jr          $ra
/* 000434 801387A4 00000000 */   nop

glabel func_801387A8_451B40 # 8
/* 000438 801387A8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00043C 801387AC AFB10018 */  sw          $s1, 0x18($sp)
/* 000440 801387B0 AFB00014 */  sw          $s0, 0x14($sp)
/* 000444 801387B4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000448 801387B8 00008025 */  move        $s0, $zero
/* 00044C 801387BC 2411000A */  addiu       $s1, $zero, 0xa
.L801387C0:
/* 000450 801387C0 0C04E0DC */  jal         func_80138370_451B40
/* 000454 801387C4 02002025 */   move       $a0, $s0
/* 000458 801387C8 26100001 */  addiu       $s0, $s0, 0x1
/* 00045C 801387CC 1611FFFC */  bne         $s0, $s1, .L801387C0
/* 000460 801387D0 00000000 */   nop
/* 000464 801387D4 0C04E13F */  jal         func_801384FC_451B40
/* 000468 801387D8 00000000 */   nop
/* 00046C 801387DC 0C04E156 */  jal         func_80138558_451B40
/* 000470 801387E0 00000000 */   nop
/* 000474 801387E4 0C04E177 */  jal         func_801385DC_451B40
/* 000478 801387E8 00000000 */   nop
/* 00047C 801387EC 0C00E512 */  jal         func_80039448
/* 000480 801387F0 00000000 */   nop
/* 000484 801387F4 44822000 */  mtc1        $v0, $f4
/* 000488 801387F8 04410006 */  bgez        $v0, .L80138814
/* 00048C 801387FC 468021A1 */   cvt.d.w    $f6, $f4
/* 000490 80138800 3C0141F0 */  lui         $at, 0x41f0
/* 000494 80138804 44814800 */  mtc1        $at, $f9
/* 000498 80138808 44804000 */  mtc1        $zero, $f8
/* 00049C 8013880C 00000000 */  nop
/* 0004A0 80138810 46283180 */  add.d       $f6, $f6, $f8
.L80138814:
/* 0004A4 80138814 3C013DF0 */  lui         $at, 0x3df0
/* 0004A8 80138818 44815800 */  mtc1        $at, $f11
/* 0004AC 8013881C 44805000 */  mtc1        $zero, $f10
/* 0004B0 80138820 3C013FE0 */  lui         $at, 0x3fe0
/* 0004B4 80138824 462A3402 */  mul.d       $f16, $f6, $f10
/* 0004B8 80138828 44819800 */  mtc1        $at, $f19
/* 0004BC 8013882C 44809000 */  mtc1        $zero, $f18
/* 0004C0 80138830 00000000 */  nop
/* 0004C4 80138834 4632803C */  c.lt.d      $f16, $f18
/* 0004C8 80138838 00000000 */  nop
/* 0004CC 8013883C 45000003 */  bc1f        .L8013884C
/* 0004D0 80138840 00000000 */   nop
/* 0004D4 80138844 0C04E18E */  jal         func_80138638_451B40
/* 0004D8 80138848 00000000 */   nop
.L8013884C:
/* 0004DC 8013884C 0C04E1A5 */  jal         func_80138694_451B40
/* 0004E0 80138850 00000000 */   nop
/* 0004E4 80138854 0C04E1BC */  jal         func_801386F0_451B40
/* 0004E8 80138858 00000000 */   nop
/* 0004EC 8013885C 0C04E1D3 */  jal         func_8013874C_451B40
/* 0004F0 80138860 00000000 */   nop
/* 0004F4 80138864 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0004F8 80138868 8FB00014 */  lw          $s0, 0x14($sp)
/* 0004FC 8013886C 8FB10018 */  lw          $s1, 0x18($sp)
/* 000500 80138870 03E00008 */  jr          $ra
/* 000504 80138874 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80138878_451B40 # 9
/* 000508 80138878 03E00008 */  jr          $ra
/* 00050C 8013887C 00000000 */   nop

glabel func_80138880_451B40 # 10
/* 000510 80138880 3C014034 */  lui         $at, 0x4034
/* 000514 80138884 44810800 */  mtc1        $at, $f1
/* 000518 80138888 44800000 */  mtc1        $zero, $f0
/* 00051C 8013888C 46007121 */  cvt.d.s     $f4, $f14
/* 000520 80138890 00000000 */  nop
/* 000524 80138894 46202183 */  div.d       $f6, $f4, $f0
/* 000528 80138898 AFA60008 */  sw          $a2, 0x8($sp)
/* 00052C 8013889C 444EF800 */  cfc1        $t6, $31
/* 000530 801388A0 00000000 */  nop
/* 000534 801388A4 35C10003 */  ori         $at, $t6, 0x3
/* 000538 801388A8 38210002 */  xori        $at, $at, 0x2
/* 00053C 801388AC 44C1F800 */  ctc1        $at, $31
/* 000540 801388B0 00000000 */  nop
/* 000544 801388B4 46203224 */  cvt.w.d     $f8, $f6
/* 000548 801388B8 44024000 */  mfc1        $v0, $f8
/* 00054C 801388BC 44CEF800 */  ctc1        $t6, $31
/* 000550 801388C0 04400025 */  bltz        $v0, .L80138958
/* 000554 801388C4 28410008 */   slti       $at, $v0, 0x8
/* 000558 801388C8 10200023 */  beqz        $at, .L80138958
/* 00055C 801388CC 00000000 */   nop
/* 000560 801388D0 460062A1 */  cvt.d.s     $f10, $f12
/* 000564 801388D4 00000000 */  nop
/* 000568 801388D8 46205403 */  div.d       $f16, $f10, $f0
/* 00056C 801388DC 444FF800 */  cfc1        $t7, $31
/* 000570 801388E0 00000000 */  nop
/* 000574 801388E4 35E10003 */  ori         $at, $t7, 0x3
/* 000578 801388E8 38210002 */  xori        $at, $at, 0x2
/* 00057C 801388EC 44C1F800 */  ctc1        $at, $31
/* 000580 801388F0 00000000 */  nop
/* 000584 801388F4 462084A4 */  cvt.w.d     $f18, $f16
/* 000588 801388F8 44039000 */  mfc1        $v1, $f18
/* 00058C 801388FC 44CFF800 */  ctc1        $t7, $31
/* 000590 80138900 04600015 */  bltz        $v1, .L80138958
/* 000594 80138904 28610008 */   slti       $at, $v1, 0x8
/* 000598 80138908 10200013 */  beqz        $at, .L80138958
/* 00059C 8013890C 00000000 */   nop
/* 0005A0 80138910 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 0005A4 80138914 00000000 */  nop
/* 0005A8 80138918 460021A1 */  cvt.d.s     $f6, $f4
/* 0005AC 8013891C 00000000 */  nop
/* 0005B0 80138920 46203203 */  div.d       $f8, $f6, $f0
/* 0005B4 80138924 4458F800 */  cfc1        $t8, $31
/* 0005B8 80138928 00000000 */  nop
/* 0005BC 8013892C 37010003 */  ori         $at, $t8, 0x3
/* 0005C0 80138930 38210002 */  xori        $at, $at, 0x2
/* 0005C4 80138934 44C1F800 */  ctc1        $at, $31
/* 0005C8 80138938 00000000 */  nop
/* 0005CC 8013893C 462042A4 */  cvt.w.d     $f10, $f8
/* 0005D0 80138940 44045000 */  mfc1        $a0, $f10
/* 0005D4 80138944 44D8F800 */  ctc1        $t8, $31
/* 0005D8 80138948 04800003 */  bltz        $a0, .L80138958
/* 0005DC 8013894C 28810008 */   slti       $at, $a0, 0x8
/* 0005E0 80138950 14200003 */  bnez        $at, .L80138960
/* 0005E4 80138954 0002C880 */   sll        $t9, $v0, 2
.L80138958:
/* 0005E8 80138958 03E00008 */  jr          $ra
/* 0005EC 8013895C 00001025 */   move       $v0, $zero
.L80138960:
/* 0005F0 80138960 3C058016 */  lui         $a1, %hi(D_8015DE20)
/* 0005F4 80138964 00B92821 */  addu        $a1, $a1, $t9
/* 0005F8 80138968 8CA5DE20 */  lw          $a1, %lo(D_8015DE20)($a1)
/* 0005FC 8013896C 00044940 */  sll         $t1, $a0, 5
/* 000600 80138970 14A00003 */  bnez        $a1, .L80138980
/* 000604 80138974 00A95021 */   addu       $t2, $a1, $t1
/* 000608 80138978 03E00008 */  jr          $ra
/* 00060C 8013897C 00001025 */   move       $v0, $zero
.L80138980:
/* 000610 80138980 00035880 */  sll         $t3, $v1, 2
/* 000614 80138984 014B6021 */  addu        $t4, $t2, $t3
/* 000618 80138988 8D820000 */  lw          $v0, 0x0($t4)
/* 00061C 8013898C 00000000 */  nop
/* 000620 80138990 03E00008 */  jr          $ra
/* 000624 80138994 00000000 */   nop
/* 000628 80138998 00000000 */  nop
/* 00062C 8013899C 00000000 */  nop
