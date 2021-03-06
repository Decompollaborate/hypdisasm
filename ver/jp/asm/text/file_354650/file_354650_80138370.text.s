.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_354650 # 0
/* 000000 80138370 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000004 80138374 3C013F80 */  lui         $at, 0x3f80
/* 000008 80138378 44812000 */  mtc1        $at, $f4
/* 00000C 8013837C 3C048015 */  lui         $a0, %hi(D_8014E3BC)
/* 000010 80138380 2484E3BC */  addiu       $a0, $a0, %lo(D_8014E3BC)
/* 000014 80138384 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000018 80138388 3C06461C */  lui         $a2, (0x461C4000 >> 16)
/* 00001C 8013838C 240E0088 */  addiu       $t6, $zero, 0x88
/* 000020 80138390 240F0088 */  addiu       $t7, $zero, 0x88
/* 000024 80138394 24180002 */  addiu       $t8, $zero, 0x2
/* 000028 80138398 AFB8001C */  sw          $t8, 0x1c($sp)
/* 00002C 8013839C AFAF0014 */  sw          $t7, 0x14($sp)
/* 000030 801383A0 AFAE0010 */  sw          $t6, 0x10($sp)
/* 000034 801383A4 34C64000 */  ori         $a2, $a2, (0x461C4000 & 0xFFFF)
/* 000038 801383A8 AFA40020 */  sw          $a0, 0x20($sp)
/* 00003C 801383AC 00002825 */  move        $a1, $zero
/* 000040 801383B0 24070000 */  addiu       $a3, $zero, 0x0
/* 000044 801383B4 0C00C669 */  jal         func_800319A4
/* 000048 801383B8 E7A40018 */   swc1       $f4, 0x18($sp)
/* 00004C 801383BC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000050 801383C0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000054 801383C4 03E00008 */  jr          $ra
/* 000058 801383C8 00000000 */   nop

glabel func_801383CC_354650 # 1
/* 00005C 801383CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000060 801383D0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000064 801383D4 0C00694C */  jal         func_8001A530
/* 000068 801383D8 00000000 */   nop
/* 00006C 801383DC 3C048014 */  lui         $a0, %hi(D_80138D80)
/* 000070 801383E0 240E0003 */  addiu       $t6, $zero, 0x3
/* 000074 801383E4 AFAE0010 */  sw          $t6, 0x10($sp)
/* 000078 801383E8 24848D80 */  addiu       $a0, $a0, %lo(D_80138D80)
/* 00007C 801383EC 24050001 */  addiu       $a1, $zero, 0x1
/* 000080 801383F0 2406000F */  addiu       $a2, $zero, 0xf
/* 000084 801383F4 0C00695C */  jal         func_8001A570
/* 000088 801383F8 24070001 */   addiu      $a3, $zero, 0x1
/* 00008C 801383FC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000090 80138400 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000094 80138404 03E00008 */  jr          $ra
/* 000098 80138408 00000000 */   nop

glabel func_8013840C_354650 # 2
/* 00009C 8013840C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0000A0 80138410 AFB30020 */  sw          $s3, 0x20($sp)
/* 0000A4 80138414 AFB2001C */  sw          $s2, 0x1c($sp)
/* 0000A8 80138418 AFB10018 */  sw          $s1, 0x18($sp)
/* 0000AC 8013841C AFB00014 */  sw          $s0, 0x14($sp)
/* 0000B0 80138420 3C108014 */  lui         $s0, %hi(D_80138D98)
/* 0000B4 80138424 3C118015 */  lui         $s1, %hi(D_8014BA04)
/* 0000B8 80138428 3C128015 */  lui         $s2, %hi(D_8014BB50)
/* 0000BC 8013842C 3C138014 */  lui         $s3, %hi(D_80138DBC)
/* 0000C0 80138430 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0000C4 80138434 26738DBC */  addiu       $s3, $s3, %lo(D_80138DBC)
/* 0000C8 80138438 2652BB50 */  addiu       $s2, $s2, %lo(D_8014BB50)
/* 0000CC 8013843C 2631BA04 */  addiu       $s1, $s1, %lo(D_8014BA04)
/* 0000D0 80138440 26108D98 */  addiu       $s0, $s0, %lo(D_80138D98)
/* 0000D4 80138444 02002025 */  move        $a0, $s0
.L80138448:
/* 0000D8 80138448 02202825 */  move        $a1, $s1
/* 0000DC 8013844C 02403025 */  move        $a2, $s2
/* 0000E0 80138450 0C044538 */  jal         func_801114E0
/* 0000E4 80138454 00003825 */   move       $a3, $zero
/* 0000E8 80138458 2610000C */  addiu       $s0, $s0, 0xc
/* 0000EC 8013845C 1613FFFA */  bne         $s0, $s3, .L80138448
/* 0000F0 80138460 02002025 */   move       $a0, $s0
/* 0000F4 80138464 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0000F8 80138468 8FB00014 */  lw          $s0, 0x14($sp)
/* 0000FC 8013846C 8FB10018 */  lw          $s1, 0x18($sp)
/* 000100 80138470 8FB2001C */  lw          $s2, 0x1c($sp)
/* 000104 80138474 8FB30020 */  lw          $s3, 0x20($sp)
/* 000108 80138478 03E00008 */  jr          $ra
/* 00010C 8013847C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80138480_354650 # 3
/* 000110 80138480 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000114 80138484 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000118 80138488 3C048014 */  lui         $a0, %hi(D_80138DBC)
/* 00011C 8013848C 3C058015 */  lui         $a1, %hi(D_8014BB60)
/* 000120 80138490 3C068015 */  lui         $a2, %hi(D_8014BF88)
/* 000124 80138494 24C6BF88 */  addiu       $a2, $a2, %lo(D_8014BF88)
/* 000128 80138498 24A5BB60 */  addiu       $a1, $a1, %lo(D_8014BB60)
/* 00012C 8013849C 24848DBC */  addiu       $a0, $a0, %lo(D_80138DBC)
/* 000130 801384A0 0C044538 */  jal         func_801114E0
/* 000134 801384A4 24070001 */   addiu      $a3, $zero, 0x1
/* 000138 801384A8 3C048014 */  lui         $a0, %hi(D_80138DC8)
/* 00013C 801384AC 3C058015 */  lui         $a1, %hi(D_8014BF98)
/* 000140 801384B0 3C068015 */  lui         $a2, %hi(D_8014CED0)
/* 000144 801384B4 24C6CED0 */  addiu       $a2, $a2, %lo(D_8014CED0)
/* 000148 801384B8 24A5BF98 */  addiu       $a1, $a1, %lo(D_8014BF98)
/* 00014C 801384BC 24848DC8 */  addiu       $a0, $a0, %lo(D_80138DC8)
/* 000150 801384C0 0C044538 */  jal         func_801114E0
/* 000154 801384C4 24070001 */   addiu      $a3, $zero, 0x1
/* 000158 801384C8 3C048014 */  lui         $a0, %hi(D_80138DD4)
/* 00015C 801384CC 3C058015 */  lui         $a1, %hi(D_8014CEE0)
/* 000160 801384D0 3C068015 */  lui         $a2, %hi(D_8014DD60)
/* 000164 801384D4 24C6DD60 */  addiu       $a2, $a2, %lo(D_8014DD60)
/* 000168 801384D8 24A5CEE0 */  addiu       $a1, $a1, %lo(D_8014CEE0)
/* 00016C 801384DC 24848DD4 */  addiu       $a0, $a0, %lo(D_80138DD4)
/* 000170 801384E0 0C044538 */  jal         func_801114E0
/* 000174 801384E4 24070001 */   addiu      $a3, $zero, 0x1
/* 000178 801384E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00017C 801384EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000180 801384F0 03E00008 */  jr          $ra
/* 000184 801384F4 00000000 */   nop

glabel func_801384F8_354650 # 4
/* 000188 801384F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00018C 801384FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000190 80138500 3C048014 */  lui         $a0, %hi(D_80138DBC)
/* 000194 80138504 3C058015 */  lui         $a1, %hi(D_8014DD70)
/* 000198 80138508 3C068015 */  lui         $a2, %hi(D_8014DE1C)
/* 00019C 8013850C 24C6DE1C */  addiu       $a2, $a2, %lo(D_8014DE1C)
/* 0001A0 80138510 24A5DD70 */  addiu       $a1, $a1, %lo(D_8014DD70)
/* 0001A4 80138514 24848DBC */  addiu       $a0, $a0, %lo(D_80138DBC)
/* 0001A8 80138518 0C044538 */  jal         func_801114E0
/* 0001AC 8013851C 24070001 */   addiu      $a3, $zero, 0x1
/* 0001B0 80138520 3C048014 */  lui         $a0, %hi(D_80138DC8)
/* 0001B4 80138524 3C058015 */  lui         $a1, %hi(D_8014DE2C)
/* 0001B8 80138528 3C068015 */  lui         $a2, %hi(D_8014E254)
/* 0001BC 8013852C 24C6E254 */  addiu       $a2, $a2, %lo(D_8014E254)
/* 0001C0 80138530 24A5DE2C */  addiu       $a1, $a1, %lo(D_8014DE2C)
/* 0001C4 80138534 24848DC8 */  addiu       $a0, $a0, %lo(D_80138DC8)
/* 0001C8 80138538 0C044538 */  jal         func_801114E0
/* 0001CC 8013853C 24070001 */   addiu      $a3, $zero, 0x1
/* 0001D0 80138540 3C048014 */  lui         $a0, %hi(D_80138DD4)
/* 0001D4 80138544 3C058015 */  lui         $a1, %hi(D_8014E264)
/* 0001D8 80138548 3C068015 */  lui         $a2, %hi(D_8014E310)
/* 0001DC 8013854C 24C6E310 */  addiu       $a2, $a2, %lo(D_8014E310)
/* 0001E0 80138550 24A5E264 */  addiu       $a1, $a1, %lo(D_8014E264)
/* 0001E4 80138554 24848DD4 */  addiu       $a0, $a0, %lo(D_80138DD4)
/* 0001E8 80138558 0C044538 */  jal         func_801114E0
/* 0001EC 8013855C 24070001 */   addiu      $a3, $zero, 0x1
/* 0001F0 80138560 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0001F4 80138564 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0001F8 80138568 03E00008 */  jr          $ra
/* 0001FC 8013856C 00000000 */   nop

glabel func_80138570_354650 # 5
/* 000200 80138570 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 000204 80138574 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000208 80138578 0C00C14B */  jal         func_8003052C
/* 00020C 8013857C 24040015 */   addiu      $a0, $zero, 0x15
/* 000210 80138580 14400050 */  bnez        $v0, .L801386C4
/* 000214 80138584 00001025 */   move       $v0, $zero
/* 000218 80138588 0C045799 */  jal         func_80115E64
/* 00021C 8013858C 00000000 */   nop
/* 000220 80138590 1840004B */  blez        $v0, .L801386C0
/* 000224 80138594 3C018015 */   lui        $at, %hi(D_8014F0FC)
/* 000228 80138598 44800000 */  mtc1        $zero, $f0
/* 00022C 8013859C C42CF0FC */  lwc1        $f12, %lo(D_8014F0FC)($at)
/* 000230 801385A0 3C01418E */  lui         $at, 0x418e
/* 000234 801385A4 44817000 */  mtc1        $at, $f14
/* 000238 801385A8 3C0641FF */  lui         $a2, (0x41FF5C29 >> 16)
/* 00023C 801385AC 240E008F */  addiu       $t6, $zero, 0x8f
/* 000240 801385B0 44070000 */  mfc1        $a3, $f0
/* 000244 801385B4 AFAE0014 */  sw          $t6, 0x14($sp)
/* 000248 801385B8 34C65C29 */  ori         $a2, $a2, (0x41FF5C29 & 0xFFFF)
/* 00024C 801385BC 0C045BDD */  jal         func_80116F74
/* 000250 801385C0 E7A00010 */   swc1       $f0, 0x10($sp)
/* 000254 801385C4 3C014234 */  lui         $at, 0x4234
/* 000258 801385C8 44800000 */  mtc1        $zero, $f0
/* 00025C 801385CC 44812000 */  mtc1        $at, $f4
/* 000260 801385D0 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 000264 801385D4 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 000268 801385D8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00026C 801385DC E7A40014 */  swc1        $f4, 0x14($sp)
/* 000270 801385E0 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 000274 801385E4 3C013FE0 */  lui         $at, 0x3fe0
/* 000278 801385E8 44815800 */  mtc1        $at, $f11
/* 00027C 801385EC 44805000 */  mtc1        $zero, $f10
/* 000280 801385F0 46003221 */  cvt.d.s     $f8, $f6
/* 000284 801385F4 462A4402 */  mul.d       $f16, $f8, $f10
/* 000288 801385F8 3C188015 */  lui         $t8, %hi(D_8014B340)
/* 00028C 801385FC 2718B340 */  addiu       $t8, $t8, %lo(D_8014B340)
/* 000290 80138600 44050000 */  mfc1        $a1, $f0
/* 000294 80138604 44060000 */  mfc1        $a2, $f0
/* 000298 80138608 462084A0 */  cvt.s.d     $f18, $f16
/* 00029C 8013860C 44070000 */  mfc1        $a3, $f0
/* 0002A0 80138610 E7B20018 */  swc1        $f18, 0x18($sp)
/* 0002A4 80138614 AFB8001C */  sw          $t8, 0x1c($sp)
/* 0002A8 80138618 AFA20034 */  sw          $v0, 0x34($sp)
/* 0002AC 8013861C AFA00020 */  sw          $zero, 0x20($sp)
/* 0002B0 80138620 0C007179 */  jal         func_8001C5E4
/* 0002B4 80138624 24040017 */   addiu      $a0, $zero, 0x17
/* 0002B8 80138628 8FA80034 */  lw          $t0, 0x34($sp)
/* 0002BC 8013862C 44800000 */  mtc1        $zero, $f0
/* 0002C0 80138630 8C430054 */  lw          $v1, 0x54($v0)
/* 0002C4 80138634 C5040044 */  lwc1        $f4, 0x44($t0)
/* 0002C8 80138638 E5000008 */  swc1        $f0, 0x8($t0)
/* 0002CC 8013863C E5000004 */  swc1        $f0, 0x4($t0)
/* 0002D0 80138640 E5000000 */  swc1        $f0, 0x0($t0)
/* 0002D4 80138644 E46401EC */  swc1        $f4, 0x1ec($v1)
/* 0002D8 80138648 C5060048 */  lwc1        $f6, 0x48($t0)
/* 0002DC 8013864C 24090001 */  addiu       $t1, $zero, 0x1
/* 0002E0 80138650 E46601F0 */  swc1        $f6, 0x1f0($v1)
/* 0002E4 80138654 C508004C */  lwc1        $f8, 0x4c($t0)
/* 0002E8 80138658 00000000 */  nop
/* 0002EC 8013865C E46801F4 */  swc1        $f8, 0x1f4($v1)
/* 0002F0 80138660 8D190038 */  lw          $t9, 0x38($t0)
/* 0002F4 80138664 AC690198 */  sw          $t1, 0x198($v1)
/* 0002F8 80138668 AC790194 */  sw          $t9, 0x194($v1)
/* 0002FC 8013866C 8D040038 */  lw          $a0, 0x38($t0)
/* 000300 80138670 0C04606E */  jal         func_801181B8
/* 000304 80138674 00000000 */   nop
/* 000308 80138678 44800000 */  mtc1        $zero, $f0
/* 00030C 8013867C 3C0A8013 */  lui         $t2, %hi(D_80137EE4)
/* 000310 80138680 8D4A7EE4 */  lw          $t2, %lo(D_80137EE4)($t2)
/* 000314 80138684 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000318 80138688 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00031C 8013868C C54A000C */  lwc1        $f10, 0xc($t2)
/* 000320 80138690 3C0B8015 */  lui         $t3, %hi(D_8014B258)
/* 000324 80138694 256BB258 */  addiu       $t3, $t3, %lo(D_8014B258)
/* 000328 80138698 44050000 */  mfc1        $a1, $f0
/* 00032C 8013869C 44060000 */  mfc1        $a2, $f0
/* 000330 801386A0 44070000 */  mfc1        $a3, $f0
/* 000334 801386A4 AFAB001C */  sw          $t3, 0x1c($sp)
/* 000338 801386A8 AFA00020 */  sw          $zero, 0x20($sp)
/* 00033C 801386AC 2404000F */  addiu       $a0, $zero, 0xf
/* 000340 801386B0 0C007179 */  jal         func_8001C5E4
/* 000344 801386B4 E7AA0018 */   swc1       $f10, 0x18($sp)
/* 000348 801386B8 10000002 */  b           .L801386C4
/* 00034C 801386BC 24020001 */   addiu      $v0, $zero, 0x1
.L801386C0:
/* 000350 801386C0 00001025 */  move        $v0, $zero
.L801386C4:
/* 000354 801386C4 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000358 801386C8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00035C 801386CC 03E00008 */  jr          $ra
/* 000360 801386D0 00000000 */   nop

glabel func_801386D4_354650 # 6
/* 000364 801386D4 44800000 */  mtc1        $zero, $f0
/* 000368 801386D8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00036C 801386DC 3C0E8013 */  lui         $t6, %hi(D_80137EE4)
/* 000370 801386E0 8DCE7EE4 */  lw          $t6, %lo(D_80137EE4)($t6)
/* 000374 801386E4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000378 801386E8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00037C 801386EC E7A00014 */  swc1        $f0, 0x14($sp)
/* 000380 801386F0 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000384 801386F4 3C0F8015 */  lui         $t7, %hi(D_8014AF48)
/* 000388 801386F8 25EFAF48 */  addiu       $t7, $t7, %lo(D_8014AF48)
/* 00038C 801386FC 44050000 */  mfc1        $a1, $f0
/* 000390 80138700 44060000 */  mfc1        $a2, $f0
/* 000394 80138704 44070000 */  mfc1        $a3, $f0
/* 000398 80138708 AFAF001C */  sw          $t7, 0x1c($sp)
/* 00039C 8013870C AFA00020 */  sw          $zero, 0x20($sp)
/* 0003A0 80138710 24040013 */  addiu       $a0, $zero, 0x13
/* 0003A4 80138714 0C007179 */  jal         func_8001C5E4
/* 0003A8 80138718 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0003AC 8013871C 0C04E15C */  jal         func_80138570_354650
/* 0003B0 80138720 00000000 */   nop
/* 0003B4 80138724 14400016 */  bnez        $v0, .L80138780
/* 0003B8 80138728 00000000 */   nop
/* 0003BC 8013872C 0C00C14B */  jal         func_8003052C
/* 0003C0 80138730 24040076 */   addiu      $a0, $zero, 0x76
/* 0003C4 80138734 28410002 */  slti        $at, $v0, 0x2
/* 0003C8 80138738 14200011 */  bnez        $at, .L80138780
/* 0003CC 8013873C 2404000E */   addiu      $a0, $zero, 0xe
/* 0003D0 80138740 44800000 */  mtc1        $zero, $f0
/* 0003D4 80138744 3C188013 */  lui         $t8, %hi(D_80137EE4)
/* 0003D8 80138748 8F187EE4 */  lw          $t8, %lo(D_80137EE4)($t8)
/* 0003DC 8013874C E7A00010 */  swc1        $f0, 0x10($sp)
/* 0003E0 80138750 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0003E4 80138754 C706000C */  lwc1        $f6, 0xc($t8)
/* 0003E8 80138758 3C198015 */  lui         $t9, %hi(D_8014B460)
/* 0003EC 8013875C 2739B460 */  addiu       $t9, $t9, %lo(D_8014B460)
/* 0003F0 80138760 3C0641A6 */  lui         $a2, (0x41A66666 >> 16)
/* 0003F4 80138764 34C66666 */  ori         $a2, $a2, (0x41A66666 & 0xFFFF)
/* 0003F8 80138768 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0003FC 8013876C AFA00020 */  sw          $zero, 0x20($sp)
/* 000400 80138770 3C0542A7 */  lui         $a1, 0x42a7
/* 000404 80138774 3C074250 */  lui         $a3, 0x4250
/* 000408 80138778 0C007179 */  jal         func_8001C5E4
/* 00040C 8013877C E7A60018 */   swc1       $f6, 0x18($sp)
.L80138780:
/* 000410 80138780 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 000414 80138784 3C058015 */  lui         $a1, %hi(D_8014F0B0)
/* 000418 80138788 24A5F0B0 */  addiu       $a1, $a1, %lo(D_8014F0B0)
/* 00041C 8013878C 0C00DBDD */  jal         func_80036F74
/* 000420 80138790 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 000424 80138794 0C045799 */  jal         func_80115E64
/* 000428 80138798 00000000 */   nop
/* 00042C 8013879C 1440000A */  bnez        $v0, .L801387C8
/* 000430 801387A0 3C048015 */   lui        $a0, %hi(D_8014B474)
/* 000434 801387A4 3C068015 */  lui         $a2, %hi(D_8014B9FC)
/* 000438 801387A8 3C073F33 */  lui         $a3, (0x3F333333 >> 16)
/* 00043C 801387AC 34E73333 */  ori         $a3, $a3, (0x3F333333 & 0xFFFF)
/* 000440 801387B0 24C6B9FC */  addiu       $a2, $a2, %lo(D_8014B9FC)
/* 000444 801387B4 2484B474 */  addiu       $a0, $a0, %lo(D_8014B474)
/* 000448 801387B8 0C0447E0 */  jal         func_80111F80
/* 00044C 801387BC 24050022 */   addiu      $a1, $zero, 0x22
/* 000450 801387C0 10000032 */  b           .L8013888C
/* 000454 801387C4 00000000 */   nop
.L801387C8:
/* 000458 801387C8 0C045799 */  jal         func_80115E64
/* 00045C 801387CC 00000000 */   nop
/* 000460 801387D0 24010001 */  addiu       $at, $zero, 0x1
/* 000464 801387D4 14410012 */  bne         $v0, $at, .L80138820
/* 000468 801387D8 3C048015 */   lui        $a0, %hi(D_8014B474)
/* 00046C 801387DC 3C068015 */  lui         $a2, %hi(D_8014B9FC)
/* 000470 801387E0 3C073ECC */  lui         $a3, (0x3ECCCCCD >> 16)
/* 000474 801387E4 34E7CCCD */  ori         $a3, $a3, (0x3ECCCCCD & 0xFFFF)
/* 000478 801387E8 24C6B9FC */  addiu       $a2, $a2, %lo(D_8014B9FC)
/* 00047C 801387EC 2484B474 */  addiu       $a0, $a0, %lo(D_8014B474)
/* 000480 801387F0 0C0447E0 */  jal         func_80111F80
/* 000484 801387F4 24050022 */   addiu      $a1, $zero, 0x22
/* 000488 801387F8 3C048015 */  lui         $a0, %hi(D_8014B60C)
/* 00048C 801387FC 3C068015 */  lui         $a2, %hi(D_8014B9FC)
/* 000490 80138800 3C073F33 */  lui         $a3, (0x3F333333 >> 16)
/* 000494 80138804 34E73333 */  ori         $a3, $a3, (0x3F333333 & 0xFFFF)
/* 000498 80138808 24C6B9FC */  addiu       $a2, $a2, %lo(D_8014B9FC)
/* 00049C 8013880C 2484B60C */  addiu       $a0, $a0, %lo(D_8014B60C)
/* 0004A0 80138810 0C0447E0 */  jal         func_80111F80
/* 0004A4 80138814 24050024 */   addiu      $a1, $zero, 0x24
/* 0004A8 80138818 1000001C */  b           .L8013888C
/* 0004AC 8013881C 00000000 */   nop
.L80138820:
/* 0004B0 80138820 0C045799 */  jal         func_80115E64
/* 0004B4 80138824 00000000 */   nop
/* 0004B8 80138828 24010002 */  addiu       $at, $zero, 0x2
/* 0004BC 8013882C 14410017 */  bne         $v0, $at, .L8013888C
/* 0004C0 80138830 3C048015 */   lui        $a0, %hi(D_8014B474)
/* 0004C4 80138834 3C068015 */  lui         $a2, %hi(D_8014B9FC)
/* 0004C8 80138838 3C073E4C */  lui         $a3, (0x3E4CCCCD >> 16)
/* 0004CC 8013883C 34E7CCCD */  ori         $a3, $a3, (0x3E4CCCCD & 0xFFFF)
/* 0004D0 80138840 24C6B9FC */  addiu       $a2, $a2, %lo(D_8014B9FC)
/* 0004D4 80138844 2484B474 */  addiu       $a0, $a0, %lo(D_8014B474)
/* 0004D8 80138848 0C0447E0 */  jal         func_80111F80
/* 0004DC 8013884C 24050022 */   addiu      $a1, $zero, 0x22
/* 0004E0 80138850 3C048015 */  lui         $a0, %hi(D_8014B60C)
/* 0004E4 80138854 3C068015 */  lui         $a2, %hi(D_8014B9FC)
/* 0004E8 80138858 3C073E99 */  lui         $a3, (0x3E99999A >> 16)
/* 0004EC 8013885C 34E7999A */  ori         $a3, $a3, (0x3E99999A & 0xFFFF)
/* 0004F0 80138860 24C6B9FC */  addiu       $a2, $a2, %lo(D_8014B9FC)
/* 0004F4 80138864 2484B60C */  addiu       $a0, $a0, %lo(D_8014B60C)
/* 0004F8 80138868 0C0447E0 */  jal         func_80111F80
/* 0004FC 8013886C 24050024 */   addiu      $a1, $zero, 0x24
/* 000500 80138870 3C048015 */  lui         $a0, %hi(D_8014B7BC)
/* 000504 80138874 3C068015 */  lui         $a2, %hi(D_8014B9FC)
/* 000508 80138878 24C6B9FC */  addiu       $a2, $a2, %lo(D_8014B9FC)
/* 00050C 8013887C 2484B7BC */  addiu       $a0, $a0, %lo(D_8014B7BC)
/* 000510 80138880 24050022 */  addiu       $a1, $zero, 0x22
/* 000514 80138884 0C0447E0 */  jal         func_80111F80
/* 000518 80138888 3C073F00 */   lui        $a3, 0x3f00
.L8013888C:
/* 00051C 8013888C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 000520 80138890 3C058015 */  lui         $a1, %hi(D_8014F0BC)
/* 000524 80138894 24A5F0BC */  addiu       $a1, $a1, %lo(D_8014F0BC)
/* 000528 80138898 0C00DBDD */  jal         func_80036F74
/* 00052C 8013889C 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 000530 801388A0 3C014110 */  lui         $at, 0x4110
/* 000534 801388A4 44810000 */  mtc1        $at, $f0
/* 000538 801388A8 3C014302 */  lui         $at, 0x4302
/* 00053C 801388AC 44814000 */  mtc1        $at, $f8
/* 000540 801388B0 3C018015 */  lui         $at, %hi(D_8014F100)
/* 000544 801388B4 C42AF100 */  lwc1        $f10, %lo(D_8014F100)($at)
/* 000548 801388B8 3C018015 */  lui         $at, %hi(D_8014F104)
/* 00054C 801388BC C430F104 */  lwc1        $f16, %lo(D_8014F104)($at)
/* 000550 801388C0 3C078015 */  lui         $a3, %hi(D_8014E320)
/* 000554 801388C4 44050000 */  mfc1        $a1, $f0
/* 000558 801388C8 44060000 */  mfc1        $a2, $f0
/* 00055C 801388CC 24E7E320 */  addiu       $a3, $a3, %lo(D_8014E320)
/* 000560 801388D0 27A40034 */  addiu       $a0, $sp, 0x34
/* 000564 801388D4 E7A80034 */  swc1        $f8, 0x34($sp)
/* 000568 801388D8 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 00056C 801388DC 0C007584 */  jal         func_8001D610
/* 000570 801388E0 E7B0003C */   swc1       $f16, 0x3c($sp)
/* 000574 801388E4 3C014359 */  lui         $at, 0x4359
/* 000578 801388E8 44819000 */  mtc1        $at, $f18
/* 00057C 801388EC 3C018015 */  lui         $at, %hi(D_8014F108)
/* 000580 801388F0 C424F108 */  lwc1        $f4, %lo(D_8014F108)($at)
/* 000584 801388F4 3C014317 */  lui         $at, 0x4317
/* 000588 801388F8 44813000 */  mtc1        $at, $f6
/* 00058C 801388FC 3C078015 */  lui         $a3, %hi(D_8014E344)
/* 000590 80138900 24E7E344 */  addiu       $a3, $a3, %lo(D_8014E344)
/* 000594 80138904 27A40034 */  addiu       $a0, $sp, 0x34
/* 000598 80138908 3C054224 */  lui         $a1, 0x4224
/* 00059C 8013890C 3C064218 */  lui         $a2, 0x4218
/* 0005A0 80138910 E7B20034 */  swc1        $f18, 0x34($sp)
/* 0005A4 80138914 E7A40038 */  swc1        $f4, 0x38($sp)
/* 0005A8 80138918 0C007584 */  jal         func_8001D610
/* 0005AC 8013891C E7A6003C */   swc1       $f6, 0x3c($sp)
/* 0005B0 80138920 3C014294 */  lui         $at, 0x4294
/* 0005B4 80138924 44814000 */  mtc1        $at, $f8
/* 0005B8 80138928 3C018015 */  lui         $at, %hi(D_8014F10C)
/* 0005BC 8013892C C42AF10C */  lwc1        $f10, %lo(D_8014F10C)($at)
/* 0005C0 80138930 3C014361 */  lui         $at, 0x4361
/* 0005C4 80138934 44818000 */  mtc1        $at, $f16
/* 0005C8 80138938 3C078015 */  lui         $a3, %hi(D_8014E368)
/* 0005CC 8013893C 24E7E368 */  addiu       $a3, $a3, %lo(D_8014E368)
/* 0005D0 80138940 27A40034 */  addiu       $a0, $sp, 0x34
/* 0005D4 80138944 3C0541C8 */  lui         $a1, 0x41c8
/* 0005D8 80138948 3C064150 */  lui         $a2, 0x4150
/* 0005DC 8013894C E7A80034 */  swc1        $f8, 0x34($sp)
/* 0005E0 80138950 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 0005E4 80138954 0C007584 */  jal         func_8001D610
/* 0005E8 80138958 E7B0003C */   swc1       $f16, 0x3c($sp)
/* 0005EC 8013895C 3C0142A7 */  lui         $at, 0x42a7
/* 0005F0 80138960 44819000 */  mtc1        $at, $f18
/* 0005F4 80138964 3C018015 */  lui         $at, %hi(D_8014F110)
/* 0005F8 80138968 C424F110 */  lwc1        $f4, %lo(D_8014F110)($at)
/* 0005FC 8013896C 3C014250 */  lui         $at, 0x4250
/* 000600 80138970 44813000 */  mtc1        $at, $f6
/* 000604 80138974 3C078015 */  lui         $a3, %hi(D_8014E398)
/* 000608 80138978 24E7E398 */  addiu       $a3, $a3, %lo(D_8014E398)
/* 00060C 8013897C 27A40034 */  addiu       $a0, $sp, 0x34
/* 000610 80138980 3C054276 */  lui         $a1, 0x4276
/* 000614 80138984 3C064218 */  lui         $a2, 0x4218
/* 000618 80138988 E7B20034 */  swc1        $f18, 0x34($sp)
/* 00061C 8013898C E7A40038 */  swc1        $f4, 0x38($sp)
/* 000620 80138990 0C007584 */  jal         func_8001D610
/* 000624 80138994 E7A6003C */   swc1       $f6, 0x3c($sp)
/* 000628 80138998 0C045799 */  jal         func_80115E64
/* 00062C 8013899C 00000000 */   nop
/* 000630 801389A0 24010002 */  addiu       $at, $zero, 0x2
/* 000634 801389A4 14410003 */  bne         $v0, $at, .L801389B4
/* 000638 801389A8 00000000 */   nop
/* 00063C 801389AC 0C04E103 */  jal         func_8013840C_354650
/* 000640 801389B0 00000000 */   nop
.L801389B4:
/* 000644 801389B4 0C045799 */  jal         func_80115E64
/* 000648 801389B8 00000000 */   nop
/* 00064C 801389BC 14400005 */  bnez        $v0, .L801389D4
/* 000650 801389C0 00000000 */   nop
/* 000654 801389C4 0C04E120 */  jal         func_80138480_354650
/* 000658 801389C8 00000000 */   nop
/* 00065C 801389CC 10000003 */  b           .L801389DC
/* 000660 801389D0 00000000 */   nop
.L801389D4:
/* 000664 801389D4 0C04E13E */  jal         func_801384F8_354650
/* 000668 801389D8 00000000 */   nop
.L801389DC:
/* 00066C 801389DC 0C04E0DC */  jal         func_80138370_354650
/* 000670 801389E0 00000000 */   nop
/* 000674 801389E4 0C04E0F3 */  jal         func_801383CC_354650
/* 000678 801389E8 00000000 */   nop
/* 00067C 801389EC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000680 801389F0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 000684 801389F4 03E00008 */  jr          $ra
/* 000688 801389F8 00000000 */   nop

glabel func_801389FC_354650 # 7
/* 00068C 801389FC 3C014024 */  lui         $at, 0x4024
/* 000690 80138A00 44810800 */  mtc1        $at, $f1
/* 000694 80138A04 44800000 */  mtc1        $zero, $f0
/* 000698 80138A08 46007121 */  cvt.d.s     $f4, $f14
/* 00069C 80138A0C 00000000 */  nop
/* 0006A0 80138A10 46202183 */  div.d       $f6, $f4, $f0
/* 0006A4 80138A14 AFA60008 */  sw          $a2, 0x8($sp)
/* 0006A8 80138A18 444EF800 */  cfc1        $t6, FpcCsr
/* 0006AC 80138A1C 00000000 */  nop
/* 0006B0 80138A20 35C10003 */  ori         $at, $t6, 0x3
/* 0006B4 80138A24 38210002 */  xori        $at, $at, 0x2
/* 0006B8 80138A28 44C1F800 */  ctc1        $at, FpcCsr
/* 0006BC 80138A2C 00000000 */  nop
/* 0006C0 80138A30 46203224 */  cvt.w.d     $f8, $f6
/* 0006C4 80138A34 44024000 */  mfc1        $v0, $f8
/* 0006C8 80138A38 44CEF800 */  ctc1        $t6, FpcCsr
/* 0006CC 80138A3C 04400025 */  bltz        $v0, .L80138AD4
/* 0006D0 80138A40 28410020 */   slti       $at, $v0, 0x20
/* 0006D4 80138A44 10200023 */  beqz        $at, .L80138AD4
/* 0006D8 80138A48 00000000 */   nop
/* 0006DC 80138A4C 460062A1 */  cvt.d.s     $f10, $f12
/* 0006E0 80138A50 00000000 */  nop
/* 0006E4 80138A54 46205403 */  div.d       $f16, $f10, $f0
/* 0006E8 80138A58 444FF800 */  cfc1        $t7, FpcCsr
/* 0006EC 80138A5C 00000000 */  nop
/* 0006F0 80138A60 35E10003 */  ori         $at, $t7, 0x3
/* 0006F4 80138A64 38210002 */  xori        $at, $at, 0x2
/* 0006F8 80138A68 44C1F800 */  ctc1        $at, FpcCsr
/* 0006FC 80138A6C 00000000 */  nop
/* 000700 80138A70 462084A4 */  cvt.w.d     $f18, $f16
/* 000704 80138A74 44039000 */  mfc1        $v1, $f18
/* 000708 80138A78 44CFF800 */  ctc1        $t7, FpcCsr
/* 00070C 80138A7C 04600015 */  bltz        $v1, .L80138AD4
/* 000710 80138A80 28610020 */   slti       $at, $v1, 0x20
/* 000714 80138A84 10200013 */  beqz        $at, .L80138AD4
/* 000718 80138A88 00000000 */   nop
/* 00071C 80138A8C C7A40008 */  lwc1        $f4, 0x8($sp)
/* 000720 80138A90 00000000 */  nop
/* 000724 80138A94 460021A1 */  cvt.d.s     $f6, $f4
/* 000728 80138A98 00000000 */  nop
/* 00072C 80138A9C 46203203 */  div.d       $f8, $f6, $f0
/* 000730 80138AA0 4458F800 */  cfc1        $t8, FpcCsr
/* 000734 80138AA4 00000000 */  nop
/* 000738 80138AA8 37010003 */  ori         $at, $t8, 0x3
/* 00073C 80138AAC 38210002 */  xori        $at, $at, 0x2
/* 000740 80138AB0 44C1F800 */  ctc1        $at, FpcCsr
/* 000744 80138AB4 00000000 */  nop
/* 000748 80138AB8 462042A4 */  cvt.w.d     $f10, $f8
/* 00074C 80138ABC 44045000 */  mfc1        $a0, $f10
/* 000750 80138AC0 44D8F800 */  ctc1        $t8, FpcCsr
/* 000754 80138AC4 04800003 */  bltz        $a0, .L80138AD4
/* 000758 80138AC8 28810020 */   slti       $at, $a0, 0x20
/* 00075C 80138ACC 14200003 */  bnez        $at, .L80138ADC
/* 000760 80138AD0 0002C880 */   sll        $t9, $v0, 2
.L80138AD4:
/* 000764 80138AD4 03E00008 */  jr          $ra
/* 000768 80138AD8 00001025 */   move       $v0, $zero
.L80138ADC:
/* 00076C 80138ADC 3C05801A */  lui         $a1, %hi(D_8019F8DC)
/* 000770 80138AE0 00B92821 */  addu        $a1, $a1, $t9
/* 000774 80138AE4 8CA5F8DC */  lw          $a1, %lo(D_8019F8DC)($a1)
/* 000778 80138AE8 000449C0 */  sll         $t1, $a0, 7
/* 00077C 80138AEC 14A00003 */  bnez        $a1, .L80138AFC
/* 000780 80138AF0 00A95021 */   addu       $t2, $a1, $t1
/* 000784 80138AF4 03E00008 */  jr          $ra
/* 000788 80138AF8 00001025 */   move       $v0, $zero
.L80138AFC:
/* 00078C 80138AFC 00035880 */  sll         $t3, $v1, 2
/* 000790 80138B00 014B6021 */  addu        $t4, $t2, $t3
/* 000794 80138B04 8D820000 */  lw          $v0, 0x0($t4)
/* 000798 80138B08 00000000 */  nop
/* 00079C 80138B0C 03E00008 */  jr          $ra
/* 0007A0 80138B10 00000000 */   nop
/* 0007A4 80138B14 00000000 */  nop
/* 0007A8 80138B18 00000000 */  nop
/* 0007AC 80138B1C 00000000 */  nop
