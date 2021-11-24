.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_3728F0 # 0
/* 000000 80134270 03E00008 */  jr          $ra
/* 000004 80134274 00000000 */   nop

glabel func_80134278_3728F0 # 1
/* 000008 80134278 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00000C 8013427C AFBF001C */  sw          $ra, 0x1c($sp)
/* 000010 80134280 44801000 */  mtc1        $zero, $f2
/* 000014 80134284 C4800008 */  lwc1        $f0, 0x8($a0)
/* 000018 80134288 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 00001C 8013428C C48E0004 */  lwc1        $f14, 0x4($a0)
/* 000020 80134290 240E0008 */  addiu       $t6, $zero, 0x8
/* 000024 80134294 44071000 */  mfc1        $a3, $f2
/* 000028 80134298 44060000 */  mfc1        $a2, $f0
/* 00002C 8013429C AFAE0014 */  sw          $t6, 0x14($sp)
/* 000030 801342A0 0C044E51 */  jal         func_80113944
/* 000034 801342A4 E7A20010 */   swc1       $f2, 0x10($sp)
/* 000038 801342A8 00402025 */  move        $a0, $v0
/* 00003C 801342AC 0C04510F */  jal         func_8011443C
/* 000040 801342B0 24050002 */   addiu      $a1, $zero, 0x2
/* 000044 801342B4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000048 801342B8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00004C 801342BC 03E00008 */  jr          $ra
/* 000050 801342C0 00000000 */   nop

glabel func_801342C4_3728F0 # 2
/* 000054 801342C4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000058 801342C8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00005C 801342CC 0C00EADA */  jal         func_8003AB68
/* 000060 801342D0 AFA40030 */   sw         $a0, 0x30($sp)
/* 000064 801342D4 44800000 */  mtc1        $zero, $f0
/* 000068 801342D8 44802000 */  mtc1        $zero, $f4
/* 00006C 801342DC 44823000 */  mtc1        $v0, $f6
/* 000070 801342E0 44050000 */  mfc1        $a1, $f0
/* 000074 801342E4 44060000 */  mfc1        $a2, $f0
/* 000078 801342E8 44070000 */  mfc1        $a3, $f0
/* 00007C 801342EC 24040010 */  addiu       $a0, $zero, 0x10
/* 000080 801342F0 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000084 801342F4 04410006 */  bgez        $v0, .L80134310
/* 000088 801342F8 46803221 */   cvt.d.w    $f8, $f6
/* 00008C 801342FC 3C0141F0 */  lui         $at, 0x41f0
/* 000090 80134300 44815800 */  mtc1        $at, $f11
/* 000094 80134304 44805000 */  mtc1        $zero, $f10
/* 000098 80134308 00000000 */  nop
/* 00009C 8013430C 462A4200 */  add.d       $f8, $f8, $f10
.L80134310:
/* 0000A0 80134310 3C013DF0 */  lui         $at, 0x3df0
/* 0000A4 80134314 44818800 */  mtc1        $at, $f17
/* 0000A8 80134318 44808000 */  mtc1        $zero, $f16
/* 0000AC 8013431C 3C018015 */  lui         $at, %hi(D_80151E04)
/* 0000B0 80134320 46304482 */  mul.d       $f18, $f8, $f16
/* 0000B4 80134324 C4251E00 */  lwc1        $f5, %lo(D_80151E00)($at)
/* 0000B8 80134328 C4241E04 */  lwc1        $f4, %lo(D_80151E04)($at)
/* 0000BC 8013432C 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 0000C0 80134330 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 0000C4 80134334 46249182 */  mul.d       $f6, $f18, $f4
/* 0000C8 80134338 8FB80030 */  lw          $t8, 0x30($sp)
/* 0000CC 8013433C 3C0F8015 */  lui         $t7, %hi(D_8014D854)
/* 0000D0 80134340 25EFD854 */  addiu       $t7, $t7, %lo(D_8014D854)
/* 0000D4 80134344 462032A0 */  cvt.s.d     $f10, $f6
/* 0000D8 80134348 E7AA0014 */  swc1        $f10, 0x14($sp)
/* 0000DC 8013434C C5C8000C */  lwc1        $f8, 0xc($t6)
/* 0000E0 80134350 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0000E4 80134354 AFB80020 */  sw          $t8, 0x20($sp)
/* 0000E8 80134358 0C007871 */  jal         func_8001E1C4
/* 0000EC 8013435C E7A80018 */   swc1       $f8, 0x18($sp)
/* 0000F0 80134360 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0000F4 80134364 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0000F8 80134368 03E00008 */  jr          $ra
/* 0000FC 8013436C 00000000 */   nop

glabel func_80134370_3728F0 # 3
/* 000100 80134370 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000104 80134374 3C014334 */  lui         $at, 0x4334
/* 000108 80134378 44813000 */  mtc1        $at, $f6
/* 00010C 8013437C 44802000 */  mtc1        $zero, $f4
/* 000110 80134380 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000114 80134384 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000118 80134388 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00011C 8013438C E7A60014 */  swc1        $f6, 0x14($sp)
/* 000120 80134390 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000124 80134394 C5C8000C */  lwc1        $f8, 0xc($t6)
/* 000128 80134398 3C0F8015 */  lui         $t7, %hi(D_8014DCE8)
/* 00012C 8013439C 25EFDCE8 */  addiu       $t7, $t7, %lo(D_8014DCE8)
/* 000130 801343A0 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000134 801343A4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000138 801343A8 2404000B */  addiu       $a0, $zero, 0xb
/* 00013C 801343AC 3C054320 */  lui         $a1, 0x4320
/* 000140 801343B0 3C06BF80 */  lui         $a2, 0xbf80
/* 000144 801343B4 3C0743C8 */  lui         $a3, 0x43c8
/* 000148 801343B8 0C007871 */  jal         func_8001E1C4
/* 00014C 801343BC E7A80018 */   swc1       $f8, 0x18($sp)
/* 000150 801343C0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000154 801343C4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000158 801343C8 03E00008 */  jr          $ra
/* 00015C 801343CC 00000000 */   nop

glabel func_801343D0_3728F0 # 4
/* 000160 801343D0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000164 801343D4 3C018015 */  lui         $at, %hi(D_80151E08)
/* 000168 801343D8 C4261E08 */  lwc1        $f6, %lo(D_80151E08)($at)
/* 00016C 801343DC 44802000 */  mtc1        $zero, $f4
/* 000170 801343E0 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000174 801343E4 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000178 801343E8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00017C 801343EC E7A60014 */  swc1        $f6, 0x14($sp)
/* 000180 801343F0 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000184 801343F4 C5C8000C */  lwc1        $f8, 0xc($t6)
/* 000188 801343F8 3C0F8015 */  lui         $t7, %hi(D_8014E00C)
/* 00018C 801343FC 25EFE00C */  addiu       $t7, $t7, %lo(D_8014E00C)
/* 000190 80134400 3C054396 */  lui         $a1, 0x4396
/* 000194 80134404 3C0640D5 */  lui         $a2, 0x40d5
/* 000198 80134408 34C61EB8 */  ori         $a2, $a2, 0x1eb8
/* 00019C 8013440C 34A58000 */  ori         $a1, $a1, 0x8000
/* 0001A0 80134410 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0001A4 80134414 AFA00020 */  sw          $zero, 0x20($sp)
/* 0001A8 80134418 24040012 */  addiu       $a0, $zero, 0x12
/* 0001AC 8013441C 3C074274 */  lui         $a3, 0x4274
/* 0001B0 80134420 0C007871 */  jal         func_8001E1C4
/* 0001B4 80134424 E7A80018 */   swc1       $f8, 0x18($sp)
/* 0001B8 80134428 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001BC 8013442C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0001C0 80134430 03E00008 */  jr          $ra
/* 0001C4 80134434 00000000 */   nop

glabel func_80134438_3728F0 # 5
/* 0001C8 80134438 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0001CC 8013443C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0001D0 80134440 0C044A09 */  jal         func_80112824
/* 0001D4 80134444 00000000 */   nop
/* 0001D8 80134448 28410002 */  slti        $at, $v0, 0x2
/* 0001DC 8013444C 10200013 */  beqz        $at, .L8013449C
/* 0001E0 80134450 3C048013 */   lui        $a0, 0x8013
/* 0001E4 80134454 3C048013 */  lui         $a0, %hi(D_80134A1C)
/* 0001E8 80134458 3C058015 */  lui         $a1, %hi(D_8014E140)
/* 0001EC 8013445C 3C068015 */  lui         $a2, %hi(D_8014EC40)
/* 0001F0 80134460 24C6EC40 */  addiu       $a2, $a2, %lo(D_8014EC40)
/* 0001F4 80134464 24A5E140 */  addiu       $a1, $a1, %lo(D_8014E140)
/* 0001F8 80134468 24844A1C */  addiu       $a0, $a0, %lo(D_80134A1C)
/* 0001FC 8013446C 0C043722 */  jal         func_8010DC88
/* 000200 80134470 00003825 */   move       $a3, $zero
/* 000204 80134474 3C048013 */  lui         $a0, %hi(D_80134A28)
/* 000208 80134478 3C058015 */  lui         $a1, %hi(D_8014EC50)
/* 00020C 8013447C 3C068015 */  lui         $a2, %hi(D_8014F750)
/* 000210 80134480 24C6F750 */  addiu       $a2, $a2, %lo(D_8014F750)
/* 000214 80134484 24A5EC50 */  addiu       $a1, $a1, %lo(D_8014EC50)
/* 000218 80134488 24844A28 */  addiu       $a0, $a0, %lo(D_80134A28)
/* 00021C 8013448C 0C043722 */  jal         func_8010DC88
/* 000220 80134490 00003825 */   move       $a3, $zero
/* 000224 80134494 10000011 */  b           .L801344DC
/* 000228 80134498 8FBF0014 */   lw         $ra, 0x14($sp)
.L8013449C:
/* 00022C 8013449C 3C058015 */  lui         $a1, %hi(D_8014F760)
/* 000230 801344A0 3C068015 */  lui         $a2, %hi(D_80150260)
/* 000234 801344A4 24C60260 */  addiu       $a2, $a2, %lo(D_80150260)
/* 000238 801344A8 24A5F760 */  addiu       $a1, $a1, %lo(D_8014F760)
/* 00023C 801344AC 24844A1C */  addiu       $a0, $a0, 0x4a1c
/* 000240 801344B0 0C043722 */  jal         func_8010DC88
/* 000244 801344B4 00003825 */   move       $a3, $zero
/* 000248 801344B8 3C048013 */  lui         $a0, %hi(D_80134A28)
/* 00024C 801344BC 3C058015 */  lui         $a1, %hi(D_80150270)
/* 000250 801344C0 3C068015 */  lui         $a2, %hi(D_80150D70)
/* 000254 801344C4 24C60D70 */  addiu       $a2, $a2, %lo(D_80150D70)
/* 000258 801344C8 24A50270 */  addiu       $a1, $a1, %lo(D_80150270)
/* 00025C 801344CC 24844A28 */  addiu       $a0, $a0, %lo(D_80134A28)
/* 000260 801344D0 0C043722 */  jal         func_8010DC88
/* 000264 801344D4 00003825 */   move       $a3, $zero
/* 000268 801344D8 8FBF0014 */  lw          $ra, 0x14($sp)
.L801344DC:
/* 00026C 801344DC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000270 801344E0 03E00008 */  jr          $ra
/* 000274 801344E4 00000000 */   nop

glabel func_801344E8_3728F0 # 6
/* 000278 801344E8 3C014080 */  lui         $at, 0x4080
/* 00027C 801344EC 44810000 */  mtc1        $at, $f0
/* 000280 801344F0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000284 801344F4 3C013F80 */  lui         $at, 0x3f80
/* 000288 801344F8 44812000 */  mtc1        $at, $f4
/* 00028C 801344FC 3C048015 */  lui         $a0, %hi(D_80150D80)
/* 000290 80134500 24840D80 */  addiu       $a0, $a0, %lo(D_80150D80)
/* 000294 80134504 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000298 80134508 240E002B */  addiu       $t6, $zero, 0x2b
/* 00029C 8013450C 240F002B */  addiu       $t7, $zero, 0x2b
/* 0002A0 80134510 24180003 */  addiu       $t8, $zero, 0x3
/* 0002A4 80134514 44060000 */  mfc1        $a2, $f0
/* 0002A8 80134518 44070000 */  mfc1        $a3, $f0
/* 0002AC 8013451C AFB8001C */  sw          $t8, 0x1c($sp)
/* 0002B0 80134520 AFAF0014 */  sw          $t7, 0x14($sp)
/* 0002B4 80134524 AFAE0010 */  sw          $t6, 0x10($sp)
/* 0002B8 80134528 AFA40020 */  sw          $a0, 0x20($sp)
/* 0002BC 8013452C 24050001 */  addiu       $a1, $zero, 0x1
/* 0002C0 80134530 0C00D025 */  jal         func_80034094
/* 0002C4 80134534 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0002C8 80134538 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0002CC 8013453C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0002D0 80134540 03E00008 */  jr          $ra
/* 0002D4 80134544 00000000 */   nop

glabel func_80134548_3728F0 # 7
/* 0002D8 80134548 27BDFF58 */  addiu       $sp, $sp, -0xa8
/* 0002DC 8013454C 3C0F8015 */  lui         $t7, %hi(D_80150DA4)
/* 0002E0 80134550 25EF0DA4 */  addiu       $t7, $t7, %lo(D_80150DA4)
/* 0002E4 80134554 AFBF0034 */  sw          $ra, 0x34($sp)
/* 0002E8 80134558 AFB10030 */  sw          $s1, 0x30($sp)
/* 0002EC 8013455C AFB0002C */  sw          $s0, 0x2c($sp)
/* 0002F0 80134560 25E80060 */  addiu       $t0, $t7, 0x60
/* 0002F4 80134564 27AE0040 */  addiu       $t6, $sp, 0x40
.L80134568:
/* 0002F8 80134568 8DE10000 */  lw          $at, 0x0($t7)
/* 0002FC 8013456C 25EF000C */  addiu       $t7, $t7, 0xc
/* 000300 80134570 ADC10000 */  sw          $at, 0x0($t6)
/* 000304 80134574 8DE1FFF8 */  lw          $at, -0x8($t7)
/* 000308 80134578 25CE000C */  addiu       $t6, $t6, 0xc
/* 00030C 8013457C ADC1FFF8 */  sw          $at, -0x8($t6)
/* 000310 80134580 8DE1FFFC */  lw          $at, -0x4($t7)
/* 000314 80134584 15E8FFF8 */  bne         $t7, $t0, .L80134568
/* 000318 80134588 ADC1FFFC */   sw         $at, -0x4($t6)
/* 00031C 8013458C 3C118013 */  lui         $s1, %hi(D_80134A34)
/* 000320 80134590 3C108013 */  lui         $s0, %hi(D_80134A64)
/* 000324 80134594 26104A64 */  addiu       $s0, $s0, %lo(D_80134A64)
/* 000328 80134598 26314A34 */  addiu       $s1, $s1, %lo(D_80134A34)
.L8013459C:
/* 00032C 8013459C 0C04D09E */  jal         func_80134278_3728F0
/* 000330 801345A0 02202025 */   move       $a0, $s1
/* 000334 801345A4 2631000C */  addiu       $s1, $s1, 0xc
/* 000338 801345A8 0230082B */  sltu        $at, $s1, $s0
/* 00033C 801345AC 1420FFFB */  bnez        $at, .L8013459C
/* 000340 801345B0 00000000 */   nop
/* 000344 801345B4 0C04D13A */  jal         func_801344E8_3728F0
/* 000348 801345B8 00000000 */   nop
/* 00034C 801345BC 0C04D0DC */  jal         func_80134370_3728F0
/* 000350 801345C0 00000000 */   nop
/* 000354 801345C4 0C04D0F4 */  jal         func_801343D0_3728F0
/* 000358 801345C8 00000000 */   nop
/* 00035C 801345CC 00008025 */  move        $s0, $zero
/* 000360 801345D0 2411000A */  addiu       $s1, $zero, 0xa
.L801345D4:
/* 000364 801345D4 0C04D0B1 */  jal         func_801342C4_3728F0
/* 000368 801345D8 02002025 */   move       $a0, $s0
/* 00036C 801345DC 26100001 */  addiu       $s0, $s0, 0x1
/* 000370 801345E0 1611FFFC */  bne         $s0, $s1, .L801345D4
/* 000374 801345E4 00000000 */   nop
/* 000378 801345E8 0C00CB07 */  jal         func_80032C1C
/* 00037C 801345EC 24040076 */   addiu      $a0, $zero, 0x76
/* 000380 801345F0 28410004 */  slti        $at, $v0, 0x4
/* 000384 801345F4 14200010 */  bnez        $at, .L80134638
/* 000388 801345F8 2404000E */   addiu      $a0, $zero, 0xe
/* 00038C 801345FC 44800000 */  mtc1        $zero, $f0
/* 000390 80134600 3C098013 */  lui         $t1, %hi(D_80133DE4)
/* 000394 80134604 8D293DE4 */  lw          $t1, %lo(D_80133DE4)($t1)
/* 000398 80134608 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00039C 8013460C E7A00014 */  swc1        $f0, 0x14($sp)
/* 0003A0 80134610 C524000C */  lwc1        $f4, 0xc($t1)
/* 0003A4 80134614 3C0A8015 */  lui         $t2, %hi(D_8014E12C)
/* 0003A8 80134618 254AE12C */  addiu       $t2, $t2, %lo(D_8014E12C)
/* 0003AC 8013461C AFAA001C */  sw          $t2, 0x1c($sp)
/* 0003B0 80134620 AFA00020 */  sw          $zero, 0x20($sp)
/* 0003B4 80134624 3C05435C */  lui         $a1, 0x435c
/* 0003B8 80134628 3C064224 */  lui         $a2, 0x4224
/* 0003BC 8013462C 3C0742DE */  lui         $a3, 0x42de
/* 0003C0 80134630 0C007871 */  jal         func_8001E1C4
/* 0003C4 80134634 E7A40018 */   swc1       $f4, 0x18($sp)
.L80134638:
/* 0003C8 80134638 0C04D10E */  jal         func_80134438_3728F0
/* 0003CC 8013463C 00000000 */   nop
/* 0003D0 80134640 3C01435C */  lui         $at, 0x435c
/* 0003D4 80134644 44816000 */  mtc1        $at, $f12
/* 0003D8 80134648 3C0141F8 */  lui         $at, 0x41f8
/* 0003DC 8013464C 44817000 */  mtc1        $at, $f14
/* 0003E0 80134650 3C0642DE */  lui         $a2, 0x42de
/* 0003E4 80134654 0C007C44 */  jal         func_8001F110
/* 0003E8 80134658 2407008F */   addiu      $a3, $zero, 0x8f
/* 0003EC 8013465C 8FBF0034 */  lw          $ra, 0x34($sp)
/* 0003F0 80134660 8FB0002C */  lw          $s0, 0x2c($sp)
/* 0003F4 80134664 8FB10030 */  lw          $s1, 0x30($sp)
/* 0003F8 80134668 03E00008 */  jr          $ra
/* 0003FC 8013466C 27BD00A8 */   addiu      $sp, $sp, 0xa8

glabel func_80134670_3728F0 # 8
/* 000400 80134670 03E00008 */  jr          $ra
/* 000404 80134674 00000000 */   nop

glabel func_80134678_3728F0 # 9
/* 000408 80134678 3C01402E */  lui         $at, 0x402e
/* 00040C 8013467C 44813800 */  mtc1        $at, $f7
/* 000410 80134680 44803000 */  mtc1        $zero, $f6
/* 000414 80134684 46007121 */  cvt.d.s     $f4, $f14
/* 000418 80134688 00000000 */  nop
/* 00041C 8013468C 46262203 */  div.d       $f8, $f4, $f6
/* 000420 80134690 AFA60008 */  sw          $a2, 0x8($sp)
/* 000424 80134694 444EF800 */  cfc1        $t6, $31
/* 000428 80134698 00000000 */  nop
/* 00042C 8013469C 35C10003 */  ori         $at, $t6, 0x3
/* 000430 801346A0 38210002 */  xori        $at, $at, 0x2
/* 000434 801346A4 44C1F800 */  ctc1        $at, $31
/* 000438 801346A8 00000000 */  nop
/* 00043C 801346AC 462042A4 */  cvt.w.d     $f10, $f8
/* 000440 801346B0 44025000 */  mfc1        $v0, $f10
/* 000444 801346B4 44CEF800 */  ctc1        $t6, $31
/* 000448 801346B8 04400027 */  bltz        $v0, .L80134758
/* 00044C 801346BC 28410010 */   slti       $at, $v0, 0x10
/* 000450 801346C0 10200025 */  beqz        $at, .L80134758
/* 000454 801346C4 3C014034 */   lui        $at, 0x4034
/* 000458 801346C8 44810800 */  mtc1        $at, $f1
/* 00045C 801346CC 44800000 */  mtc1        $zero, $f0
/* 000460 801346D0 46006421 */  cvt.d.s     $f16, $f12
/* 000464 801346D4 00000000 */  nop
/* 000468 801346D8 46208483 */  div.d       $f18, $f16, $f0
/* 00046C 801346DC 444FF800 */  cfc1        $t7, $31
/* 000470 801346E0 00000000 */  nop
/* 000474 801346E4 35E10003 */  ori         $at, $t7, 0x3
/* 000478 801346E8 38210002 */  xori        $at, $at, 0x2
/* 00047C 801346EC 44C1F800 */  ctc1        $at, $31
/* 000480 801346F0 00000000 */  nop
/* 000484 801346F4 46209124 */  cvt.w.d     $f4, $f18
/* 000488 801346F8 44032000 */  mfc1        $v1, $f4
/* 00048C 801346FC 44CFF800 */  ctc1        $t7, $31
/* 000490 80134700 04600015 */  bltz        $v1, .L80134758
/* 000494 80134704 28610010 */   slti       $at, $v1, 0x10
/* 000498 80134708 10200013 */  beqz        $at, .L80134758
/* 00049C 8013470C 00000000 */   nop
/* 0004A0 80134710 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 0004A4 80134714 00000000 */  nop
/* 0004A8 80134718 46003221 */  cvt.d.s     $f8, $f6
/* 0004AC 8013471C 00000000 */  nop
/* 0004B0 80134720 46204283 */  div.d       $f10, $f8, $f0
/* 0004B4 80134724 4458F800 */  cfc1        $t8, $31
/* 0004B8 80134728 00000000 */  nop
/* 0004BC 8013472C 37010003 */  ori         $at, $t8, 0x3
/* 0004C0 80134730 38210002 */  xori        $at, $at, 0x2
/* 0004C4 80134734 44C1F800 */  ctc1        $at, $31
/* 0004C8 80134738 00000000 */  nop
/* 0004CC 8013473C 46205424 */  cvt.w.d     $f16, $f10
/* 0004D0 80134740 44048000 */  mfc1        $a0, $f16
/* 0004D4 80134744 44D8F800 */  ctc1        $t8, $31
/* 0004D8 80134748 04800003 */  bltz        $a0, .L80134758
/* 0004DC 8013474C 28810010 */   slti       $at, $a0, 0x10
/* 0004E0 80134750 14200003 */  bnez        $at, .L80134760
/* 0004E4 80134754 0002C880 */   sll        $t9, $v0, 2
.L80134758:
/* 0004E8 80134758 03E00008 */  jr          $ra
/* 0004EC 8013475C 00001025 */   move       $v0, $zero
.L80134760:
/* 0004F0 80134760 3C058019 */  lui         $a1, %hi(D_8018A28C)
/* 0004F4 80134764 00B92821 */  addu        $a1, $a1, $t9
/* 0004F8 80134768 8CA5A28C */  lw          $a1, %lo(D_8018A28C)($a1)
/* 0004FC 8013476C 00044980 */  sll         $t1, $a0, 6
/* 000500 80134770 14A00003 */  bnez        $a1, .L80134780
/* 000504 80134774 00A95021 */   addu       $t2, $a1, $t1
/* 000508 80134778 03E00008 */  jr          $ra
/* 00050C 8013477C 00001025 */   move       $v0, $zero
.L80134780:
/* 000510 80134780 00035880 */  sll         $t3, $v1, 2
/* 000514 80134784 014B6021 */  addu        $t4, $t2, $t3
/* 000518 80134788 8D820000 */  lw          $v0, 0x0($t4)
/* 00051C 8013478C 00000000 */  nop
/* 000520 80134790 03E00008 */  jr          $ra
/* 000524 80134794 00000000 */   nop
/* 000528 80134798 00000000 */  nop
/* 00052C 8013479C 00000000 */  nop
