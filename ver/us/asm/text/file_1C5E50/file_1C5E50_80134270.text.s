.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_1C5E50 # 0
/* 000000 80134270 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 000004 80134274 AFB0002C */  sw          $s0, 0x2c($sp)
/* 000008 80134278 00808025 */  move        $s0, $a0
/* 00000C 8013427C AFBF0034 */  sw          $ra, 0x34($sp)
/* 000010 80134280 AFB10030 */  sw          $s1, 0x30($sp)
/* 000014 80134284 AFA5004C */  sw          $a1, 0x4c($sp)
/* 000018 80134288 0C00CB07 */  jal         func_80032C1C
/* 00001C 8013428C 24A40065 */   addiu      $a0, $a1, 0x65
/* 000020 80134290 24040012 */  addiu       $a0, $zero, 0x12
/* 000024 80134294 0C00CB07 */  jal         func_80032C1C
/* 000028 80134298 AFA20040 */   sw         $v0, 0x40($sp)
/* 00002C 8013429C 8FA60040 */  lw          $a2, 0x40($sp)
/* 000030 801342A0 14400004 */  bnez        $v0, .L801342B4
/* 000034 801342A4 28C10002 */   slti       $at, $a2, 0x2
/* 000038 801342A8 3C118015 */  lui         $s1, %hi(D_8014DF74)
/* 00003C 801342AC 10000003 */  b           .L801342BC
/* 000040 801342B0 2631DF74 */   addiu      $s1, $s1, %lo(D_8014DF74)
.L801342B4:
/* 000044 801342B4 3C118015 */  lui         $s1, %hi(D_80156F04)
/* 000048 801342B8 26316F04 */  addiu       $s1, $s1, %lo(D_80156F04)
.L801342BC:
/* 00004C 801342BC 1020002D */  beqz        $at, .L80134374
/* 000050 801342C0 28C10004 */   slti       $at, $a2, 0x4
/* 000054 801342C4 0C00EADA */  jal         func_8003AB68
/* 000058 801342C8 AFA60040 */   sw         $a2, 0x40($sp)
/* 00005C 801342CC 3C018016 */  lui         $at, %hi(D_80158E30)
/* 000060 801342D0 C42C8E30 */  lwc1        $f12, %lo(D_80158E30)($at)
/* 000064 801342D4 8FA50040 */  lw          $a1, 0x40($sp)
/* 000068 801342D8 0C003750 */  jal         func_8000DD40
/* 00006C 801342DC AFA20038 */   sw         $v0, 0x38($sp)
/* 000070 801342E0 8FAE0038 */  lw          $t6, 0x38($sp)
/* 000074 801342E4 44802000 */  mtc1        $zero, $f4
/* 000078 801342E8 448E3000 */  mtc1        $t6, $f6
/* 00007C 801342EC 8E050000 */  lw          $a1, 0x0($s0)
/* 000080 801342F0 8E060004 */  lw          $a2, 0x4($s0)
/* 000084 801342F4 8E070008 */  lw          $a3, 0x8($s0)
/* 000088 801342F8 24040005 */  addiu       $a0, $zero, 0x5
/* 00008C 801342FC E7A40010 */  swc1        $f4, 0x10($sp)
/* 000090 80134300 05C10006 */  bgez        $t6, .L8013431C
/* 000094 80134304 46803221 */   cvt.d.w    $f8, $f6
/* 000098 80134308 3C0141F0 */  lui         $at, 0x41f0
/* 00009C 8013430C 44815800 */  mtc1        $at, $f11
/* 0000A0 80134310 44805000 */  mtc1        $zero, $f10
/* 0000A4 80134314 00000000 */  nop
/* 0000A8 80134318 462A4200 */  add.d       $f8, $f8, $f10
.L8013431C:
/* 0000AC 8013431C 3C013DF0 */  lui         $at, 0x3df0
/* 0000B0 80134320 44818800 */  mtc1        $at, $f17
/* 0000B4 80134324 44808000 */  mtc1        $zero, $f16
/* 0000B8 80134328 3C018016 */  lui         $at, %hi(D_80158E38)
/* 0000BC 8013432C 46304482 */  mul.d       $f18, $f8, $f16
/* 0000C0 80134330 C4258E38 */  lwc1        $f5, %lo(D_80158E38)($at)
/* 0000C4 80134334 C4248E3C */  lwc1        $f4, %lo(D_80158E3C)($at)
/* 0000C8 80134338 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 0000CC 8013433C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 0000D0 80134340 46249182 */  mul.d       $f6, $f18, $f4
/* 0000D4 80134344 8FB8004C */  lw          $t8, 0x4c($sp)
/* 0000D8 80134348 462032A0 */  cvt.s.d     $f10, $f6
/* 0000DC 8013434C E7AA0014 */  swc1        $f10, 0x14($sp)
/* 0000E0 80134350 C5E8000C */  lwc1        $f8, 0xc($t7)
/* 0000E4 80134354 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0000E8 80134358 46080402 */  mul.s       $f16, $f0, $f8
/* 0000EC 8013435C AFB80020 */  sw          $t8, 0x20($sp)
/* 0000F0 80134360 0C007871 */  jal         func_8001E1C4
/* 0000F4 80134364 E7B00018 */   swc1       $f16, 0x18($sp)
/* 0000F8 80134368 10000053 */  b           .L801344B8
/* 0000FC 8013436C 8FBF0034 */   lw         $ra, 0x34($sp)
/* 000100 80134370 28C10004 */  slti        $at, $a2, 0x4
.L80134374:
/* 000104 80134374 1020002D */  beqz        $at, .L8013442C
/* 000108 80134378 00000000 */   nop
/* 00010C 8013437C 0C00EADA */  jal         func_8003AB68
/* 000110 80134380 AFA60040 */   sw         $a2, 0x40($sp)
/* 000114 80134384 8FA60040 */  lw          $a2, 0x40($sp)
/* 000118 80134388 3C018016 */  lui         $at, %hi(D_80158E40)
/* 00011C 8013438C C42C8E40 */  lwc1        $f12, %lo(D_80158E40)($at)
/* 000120 80134390 AFA20038 */  sw          $v0, 0x38($sp)
/* 000124 80134394 0C003750 */  jal         func_8000DD40
/* 000128 80134398 24C5FFFE */   addiu      $a1, $a2, -0x2
/* 00012C 8013439C 8FB90038 */  lw          $t9, 0x38($sp)
/* 000130 801343A0 44809000 */  mtc1        $zero, $f18
/* 000134 801343A4 44992000 */  mtc1        $t9, $f4
/* 000138 801343A8 8E050000 */  lw          $a1, 0x0($s0)
/* 00013C 801343AC 8E060004 */  lw          $a2, 0x4($s0)
/* 000140 801343B0 8E070008 */  lw          $a3, 0x8($s0)
/* 000144 801343B4 24040006 */  addiu       $a0, $zero, 0x6
/* 000148 801343B8 E7B20010 */  swc1        $f18, 0x10($sp)
/* 00014C 801343BC 07210006 */  bgez        $t9, .L801343D8
/* 000150 801343C0 468021A1 */   cvt.d.w    $f6, $f4
/* 000154 801343C4 3C0141F0 */  lui         $at, 0x41f0
/* 000158 801343C8 44815800 */  mtc1        $at, $f11
/* 00015C 801343CC 44805000 */  mtc1        $zero, $f10
/* 000160 801343D0 00000000 */  nop
/* 000164 801343D4 462A3180 */  add.d       $f6, $f6, $f10
.L801343D8:
/* 000168 801343D8 3C013DF0 */  lui         $at, 0x3df0
/* 00016C 801343DC 44814800 */  mtc1        $at, $f9
/* 000170 801343E0 44804000 */  mtc1        $zero, $f8
/* 000174 801343E4 3C018016 */  lui         $at, %hi(D_80158E48)
/* 000178 801343E8 46283402 */  mul.d       $f16, $f6, $f8
/* 00017C 801343EC C4338E48 */  lwc1        $f19, %lo(D_80158E48)($at)
/* 000180 801343F0 C4328E4C */  lwc1        $f18, %lo(D_80158E4C)($at)
/* 000184 801343F4 3C088013 */  lui         $t0, %hi(D_80133DE4)
/* 000188 801343F8 8D083DE4 */  lw          $t0, %lo(D_80133DE4)($t0)
/* 00018C 801343FC 46328102 */  mul.d       $f4, $f16, $f18
/* 000190 80134400 8FA9004C */  lw          $t1, 0x4c($sp)
/* 000194 80134404 462022A0 */  cvt.s.d     $f10, $f4
/* 000198 80134408 E7AA0014 */  swc1        $f10, 0x14($sp)
/* 00019C 8013440C C506000C */  lwc1        $f6, 0xc($t0)
/* 0001A0 80134410 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0001A4 80134414 46060202 */  mul.s       $f8, $f0, $f6
/* 0001A8 80134418 AFA90020 */  sw          $t1, 0x20($sp)
/* 0001AC 8013441C 0C007871 */  jal         func_8001E1C4
/* 0001B0 80134420 E7A80018 */   swc1       $f8, 0x18($sp)
/* 0001B4 80134424 10000024 */  b           .L801344B8
/* 0001B8 80134428 8FBF0034 */   lw         $ra, 0x34($sp)
.L8013442C:
/* 0001BC 8013442C 0C00EADA */  jal         func_8003AB68
/* 0001C0 80134430 00000000 */   nop
/* 0001C4 80134434 44808000 */  mtc1        $zero, $f16
/* 0001C8 80134438 44829000 */  mtc1        $v0, $f18
/* 0001CC 8013443C 8E050000 */  lw          $a1, 0x0($s0)
/* 0001D0 80134440 8E060004 */  lw          $a2, 0x4($s0)
/* 0001D4 80134444 8E070008 */  lw          $a3, 0x8($s0)
/* 0001D8 80134448 24040007 */  addiu       $a0, $zero, 0x7
/* 0001DC 8013444C E7B00010 */  swc1        $f16, 0x10($sp)
/* 0001E0 80134450 04410006 */  bgez        $v0, .L8013446C
/* 0001E4 80134454 46809121 */   cvt.d.w    $f4, $f18
/* 0001E8 80134458 3C0141F0 */  lui         $at, 0x41f0
/* 0001EC 8013445C 44815800 */  mtc1        $at, $f11
/* 0001F0 80134460 44805000 */  mtc1        $zero, $f10
/* 0001F4 80134464 00000000 */  nop
/* 0001F8 80134468 462A2100 */  add.d       $f4, $f4, $f10
.L8013446C:
/* 0001FC 8013446C 3C013DF0 */  lui         $at, 0x3df0
/* 000200 80134470 44813800 */  mtc1        $at, $f7
/* 000204 80134474 44803000 */  mtc1        $zero, $f6
/* 000208 80134478 3C018016 */  lui         $at, %hi(D_80158E50)
/* 00020C 8013447C 46262202 */  mul.d       $f8, $f4, $f6
/* 000210 80134480 C4318E50 */  lwc1        $f17, %lo(D_80158E50)($at)
/* 000214 80134484 C4308E54 */  lwc1        $f16, %lo(D_80158E54)($at)
/* 000218 80134488 3C0A8013 */  lui         $t2, %hi(D_80133DE4)
/* 00021C 8013448C 8D4A3DE4 */  lw          $t2, %lo(D_80133DE4)($t2)
/* 000220 80134490 46304482 */  mul.d       $f18, $f8, $f16
/* 000224 80134494 8FAB004C */  lw          $t3, 0x4c($sp)
/* 000228 80134498 462092A0 */  cvt.s.d     $f10, $f18
/* 00022C 8013449C E7AA0014 */  swc1        $f10, 0x14($sp)
/* 000230 801344A0 C544000C */  lwc1        $f4, 0xc($t2)
/* 000234 801344A4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000238 801344A8 AFAB0020 */  sw          $t3, 0x20($sp)
/* 00023C 801344AC 0C007871 */  jal         func_8001E1C4
/* 000240 801344B0 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000244 801344B4 8FBF0034 */  lw          $ra, 0x34($sp)
.L801344B8:
/* 000248 801344B8 8FB0002C */  lw          $s0, 0x2c($sp)
/* 00024C 801344BC 8FB10030 */  lw          $s1, 0x30($sp)
/* 000250 801344C0 03E00008 */  jr          $ra
/* 000254 801344C4 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_801344C8_1C5E50 # 1
/* 000258 801344C8 44800000 */  mtc1        $zero, $f0
/* 00025C 801344CC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000260 801344D0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000264 801344D4 44050000 */  mfc1        $a1, $f0
/* 000268 801344D8 44060000 */  mfc1        $a2, $f0
/* 00026C 801344DC 44070000 */  mfc1        $a3, $f0
/* 000270 801344E0 AFA0001C */  sw          $zero, 0x1c($sp)
/* 000274 801344E4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000278 801344E8 24040006 */  addiu       $a0, $zero, 0x6
/* 00027C 801344EC E7A00010 */  swc1        $f0, 0x10($sp)
/* 000280 801344F0 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000284 801344F4 0C007871 */  jal         func_8001E1C4
/* 000288 801344F8 E7A00018 */   swc1       $f0, 0x18($sp)
/* 00028C 801344FC 0C0021EF */  jal         func_800087BC
/* 000290 80134500 00402025 */   move       $a0, $v0
/* 000294 80134504 44800000 */  mtc1        $zero, $f0
/* 000298 80134508 24040007 */  addiu       $a0, $zero, 0x7
/* 00029C 8013450C 44050000 */  mfc1        $a1, $f0
/* 0002A0 80134510 44060000 */  mfc1        $a2, $f0
/* 0002A4 80134514 44070000 */  mfc1        $a3, $f0
/* 0002A8 80134518 AFA0001C */  sw          $zero, 0x1c($sp)
/* 0002AC 8013451C AFA00020 */  sw          $zero, 0x20($sp)
/* 0002B0 80134520 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0002B4 80134524 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0002B8 80134528 0C007871 */  jal         func_8001E1C4
/* 0002BC 8013452C E7A00018 */   swc1       $f0, 0x18($sp)
/* 0002C0 80134530 0C0021EF */  jal         func_800087BC
/* 0002C4 80134534 00402025 */   move       $a0, $v0
/* 0002C8 80134538 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0002CC 8013453C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0002D0 80134540 03E00008 */  jr          $ra
/* 0002D4 80134544 00000000 */   nop

glabel func_80134548_1C5E50 # 2
/* 0002D8 80134548 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0002DC 8013454C AFBF001C */  sw          $ra, 0x1c($sp)
/* 0002E0 80134550 AFA50024 */  sw          $a1, 0x24($sp)
/* 0002E4 80134554 0C00EADA */  jal         func_8003AB68
/* 0002E8 80134558 AFA40020 */   sw         $a0, 0x20($sp)
/* 0002EC 8013455C 8FA40020 */  lw          $a0, 0x20($sp)
/* 0002F0 80134560 44822000 */  mtc1        $v0, $f4
/* 0002F4 80134564 C48C0000 */  lwc1        $f12, 0x0($a0)
/* 0002F8 80134568 C48E0004 */  lwc1        $f14, 0x4($a0)
/* 0002FC 8013456C 8C860008 */  lw          $a2, 0x8($a0)
/* 000300 80134570 24070000 */  addiu       $a3, $zero, 0x0
/* 000304 80134574 04410006 */  bgez        $v0, .L80134590
/* 000308 80134578 468021A1 */   cvt.d.w    $f6, $f4
/* 00030C 8013457C 3C0141F0 */  lui         $at, 0x41f0
/* 000310 80134580 44814800 */  mtc1        $at, $f9
/* 000314 80134584 44804000 */  mtc1        $zero, $f8
/* 000318 80134588 00000000 */  nop
/* 00031C 8013458C 46283180 */  add.d       $f6, $f6, $f8
.L80134590:
/* 000320 80134590 3C013DF0 */  lui         $at, 0x3df0
/* 000324 80134594 44815800 */  mtc1        $at, $f11
/* 000328 80134598 44805000 */  mtc1        $zero, $f10
/* 00032C 8013459C 3C018016 */  lui         $at, %hi(D_80158E58)
/* 000330 801345A0 462A3402 */  mul.d       $f16, $f6, $f10
/* 000334 801345A4 C4338E58 */  lwc1        $f19, %lo(D_80158E58)($at)
/* 000338 801345A8 C4328E5C */  lwc1        $f18, %lo(D_80158E5C)($at)
/* 00033C 801345AC 8FAE0024 */  lw          $t6, 0x24($sp)
/* 000340 801345B0 46328102 */  mul.d       $f4, $f16, $f18
/* 000344 801345B4 AFAE0014 */  sw          $t6, 0x14($sp)
/* 000348 801345B8 46202220 */  cvt.s.d     $f8, $f4
/* 00034C 801345BC 0C044E51 */  jal         func_80113944
/* 000350 801345C0 E7A80010 */   swc1       $f8, 0x10($sp)
/* 000354 801345C4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000358 801345C8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00035C 801345CC 03E00008 */  jr          $ra
/* 000360 801345D0 00000000 */   nop

glabel func_801345D4_1C5E50 # 3
/* 000364 801345D4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000368 801345D8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 00036C 801345DC 0C00CB07 */  jal         func_80032C1C
/* 000370 801345E0 24040012 */   addiu      $a0, $zero, 0x12
/* 000374 801345E4 14400014 */  bnez        $v0, .L80134638
/* 000378 801345E8 24040004 */   addiu      $a0, $zero, 0x4
/* 00037C 801345EC 44800000 */  mtc1        $zero, $f0
/* 000380 801345F0 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000384 801345F4 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000388 801345F8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00038C 801345FC E7A00014 */  swc1        $f0, 0x14($sp)
/* 000390 80134600 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000394 80134604 3C0F8015 */  lui         $t7, %hi(D_8014E2B0)
/* 000398 80134608 25EFE2B0 */  addiu       $t7, $t7, %lo(D_8014E2B0)
/* 00039C 8013460C 3C054325 */  lui         $a1, (0x43258000 >> 16)
/* 0003A0 80134610 34A58000 */  ori         $a1, $a1, (0x43258000 & 0xFFFF)
/* 0003A4 80134614 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0003A8 80134618 AFA00020 */  sw          $zero, 0x20($sp)
/* 0003AC 8013461C 24040004 */  addiu       $a0, $zero, 0x4
/* 0003B0 80134620 3C064218 */  lui         $a2, 0x4218
/* 0003B4 80134624 3C074361 */  lui         $a3, 0x4361
/* 0003B8 80134628 0C007871 */  jal         func_8001E1C4
/* 0003BC 8013462C E7A40018 */   swc1       $f4, 0x18($sp)
/* 0003C0 80134630 10000012 */  b           .L8013467C
/* 0003C4 80134634 8FBF002C */   lw         $ra, 0x2c($sp)
.L80134638:
/* 0003C8 80134638 44800000 */  mtc1        $zero, $f0
/* 0003CC 8013463C 3C188013 */  lui         $t8, %hi(D_80133DE4)
/* 0003D0 80134640 8F183DE4 */  lw          $t8, %lo(D_80133DE4)($t8)
/* 0003D4 80134644 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0003D8 80134648 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0003DC 8013464C C706000C */  lwc1        $f6, 0xc($t8)
/* 0003E0 80134650 3C198015 */  lui         $t9, %hi(D_801573B8)
/* 0003E4 80134654 273973B8 */  addiu       $t9, $t9, %lo(D_801573B8)
/* 0003E8 80134658 3C054300 */  lui         $a1, (0x43008000 >> 16)
/* 0003EC 8013465C 34A58000 */  ori         $a1, $a1, (0x43008000 & 0xFFFF)
/* 0003F0 80134660 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0003F4 80134664 AFA00020 */  sw          $zero, 0x20($sp)
/* 0003F8 80134668 3C064218 */  lui         $a2, 0x4218
/* 0003FC 8013466C 3C074348 */  lui         $a3, 0x4348
/* 000400 80134670 0C007871 */  jal         func_8001E1C4
/* 000404 80134674 E7A60018 */   swc1       $f6, 0x18($sp)
/* 000408 80134678 8FBF002C */  lw          $ra, 0x2c($sp)
.L8013467C:
/* 00040C 8013467C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000410 80134680 03E00008 */  jr          $ra
/* 000414 80134684 00000000 */   nop

glabel func_80134688_1C5E50 # 4
/* 000418 80134688 03E00008 */  jr          $ra
/* 00041C 8013468C 00000000 */   nop

glabel func_80134690_1C5E50 # 5
/* 000420 80134690 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000424 80134694 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000428 80134698 AFB00018 */  sw          $s0, 0x18($sp)
/* 00042C 8013469C AFBF0024 */  sw          $ra, 0x24($sp)
/* 000430 801346A0 AFB20020 */  sw          $s2, 0x20($sp)
/* 000434 801346A4 00008825 */  move        $s1, $zero
/* 000438 801346A8 00008025 */  move        $s0, $zero
.L801346AC:
/* 00043C 801346AC 0C00CB07 */  jal         func_80032C1C
/* 000440 801346B0 26040065 */   addiu      $a0, $s0, 0x65
/* 000444 801346B4 28410004 */  slti        $at, $v0, 0x4
/* 000448 801346B8 14200002 */  bnez        $at, .L801346C4
/* 00044C 801346BC 26100001 */   addiu      $s0, $s0, 0x1
/* 000450 801346C0 26310001 */  addiu       $s1, $s1, 0x1
.L801346C4:
/* 000454 801346C4 2A010005 */  slti        $at, $s0, 0x5
/* 000458 801346C8 1420FFF8 */  bnez        $at, .L801346AC
/* 00045C 801346CC 00000000 */   nop
/* 000460 801346D0 24120005 */  addiu       $s2, $zero, 0x5
/* 000464 801346D4 16320007 */  bne         $s1, $s2, .L801346F4
/* 000468 801346D8 00008025 */   move       $s0, $zero
/* 00046C 801346DC 26040065 */  addiu       $a0, $s0, 0x65
.L801346E0:
/* 000470 801346E0 0C00CB11 */  jal         func_80032C44
/* 000474 801346E4 00002825 */   move       $a1, $zero
/* 000478 801346E8 26100001 */  addiu       $s0, $s0, 0x1
/* 00047C 801346EC 1612FFFC */  bne         $s0, $s2, .L801346E0
/* 000480 801346F0 26040065 */   addiu      $a0, $s0, 0x65
.L801346F4:
/* 000484 801346F4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000488 801346F8 8FB00018 */  lw          $s0, 0x18($sp)
/* 00048C 801346FC 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000490 80134700 8FB20020 */  lw          $s2, 0x20($sp)
/* 000494 80134704 03E00008 */  jr          $ra
/* 000498 80134708 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8013470C_1C5E50 # 6
/* 00049C 8013470C 27BDFF48 */  addiu       $sp, $sp, -0xb8
/* 0004A0 80134710 AFB3003C */  sw          $s3, 0x3c($sp)
/* 0004A4 80134714 3C0E8015 */  lui         $t6, %hi(D_80157938)
/* 0004A8 80134718 27B30054 */  addiu       $s3, $sp, 0x54
/* 0004AC 8013471C 25CE7938 */  addiu       $t6, $t6, %lo(D_80157938)
/* 0004B0 80134720 AFBF004C */  sw          $ra, 0x4c($sp)
/* 0004B4 80134724 AFB60048 */  sw          $s6, 0x48($sp)
/* 0004B8 80134728 AFB50044 */  sw          $s5, 0x44($sp)
/* 0004BC 8013472C AFB40040 */  sw          $s4, 0x40($sp)
/* 0004C0 80134730 AFB20038 */  sw          $s2, 0x38($sp)
/* 0004C4 80134734 AFB10034 */  sw          $s1, 0x34($sp)
/* 0004C8 80134738 AFB00030 */  sw          $s0, 0x30($sp)
/* 0004CC 8013473C 25D90054 */  addiu       $t9, $t6, 0x54
/* 0004D0 80134740 02604025 */  move        $t0, $s3
.L80134744:
/* 0004D4 80134744 8DC10000 */  lw          $at, 0x0($t6)
/* 0004D8 80134748 25CE000C */  addiu       $t6, $t6, 0xc
/* 0004DC 8013474C AD010000 */  sw          $at, 0x0($t0)
/* 0004E0 80134750 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 0004E4 80134754 2508000C */  addiu       $t0, $t0, 0xc
/* 0004E8 80134758 AD01FFF8 */  sw          $at, -0x8($t0)
/* 0004EC 8013475C 8DC1FFFC */  lw          $at, -0x4($t6)
/* 0004F0 80134760 15D9FFF8 */  bne         $t6, $t9, .L80134744
/* 0004F4 80134764 AD01FFFC */   sw         $at, -0x4($t0)
/* 0004F8 80134768 8DC10000 */  lw          $at, 0x0($t6)
/* 0004FC 8013476C 24040076 */  addiu       $a0, $zero, 0x76
/* 000500 80134770 0C00CB07 */  jal         func_80032C1C
/* 000504 80134774 AD010000 */   sw         $at, 0x0($t0)
/* 000508 80134778 18400014 */  blez        $v0, .L801347CC
/* 00050C 8013477C 00000000 */   nop
/* 000510 80134780 44800000 */  mtc1        $zero, $f0
/* 000514 80134784 3C108013 */  lui         $s0, %hi(D_80133DE4)
/* 000518 80134788 26103DE4 */  addiu       $s0, $s0, %lo(D_80133DE4)
/* 00051C 8013478C 8E090000 */  lw          $t1, 0x0($s0)
/* 000520 80134790 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000524 80134794 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000528 80134798 C524000C */  lwc1        $f4, 0xc($t1)
/* 00052C 8013479C 3C0A8015 */  lui         $t2, %hi(D_801575EC)
/* 000530 801347A0 254A75EC */  addiu       $t2, $t2, %lo(D_801575EC)
/* 000534 801347A4 3C064181 */  lui         $a2, (0x4181999A >> 16)
/* 000538 801347A8 3C074385 */  lui         $a3, (0x43858000 >> 16)
/* 00053C 801347AC 34E78000 */  ori         $a3, $a3, (0x43858000 & 0xFFFF)
/* 000540 801347B0 34C6999A */  ori         $a2, $a2, (0x4181999A & 0xFFFF)
/* 000544 801347B4 AFAA001C */  sw          $t2, 0x1c($sp)
/* 000548 801347B8 AFA00020 */  sw          $zero, 0x20($sp)
/* 00054C 801347BC 2404000E */  addiu       $a0, $zero, 0xe
/* 000550 801347C0 3C0542FA */  lui         $a1, 0x42fa
/* 000554 801347C4 0C007871 */  jal         func_8001E1C4
/* 000558 801347C8 E7A40018 */   swc1       $f4, 0x18($sp)
.L801347CC:
/* 00055C 801347CC 3C108013 */  lui         $s0, %hi(D_80133DE4)
/* 000560 801347D0 0C04D175 */  jal         func_801345D4_1C5E50
/* 000564 801347D4 26103DE4 */   addiu      $s0, $s0, %lo(D_80133DE4)
/* 000568 801347D8 0C00AB39 */  jal         func_8002ACE4
/* 00056C 801347DC 00000000 */   nop
/* 000570 801347E0 24010008 */  addiu       $at, $zero, 0x8
/* 000574 801347E4 14410012 */  bne         $v0, $at, .L80134830
/* 000578 801347E8 00000000 */   nop
/* 00057C 801347EC 44800000 */  mtc1        $zero, $f0
/* 000580 801347F0 8E0B0000 */  lw          $t3, 0x0($s0)
/* 000584 801347F4 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000588 801347F8 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00058C 801347FC C566000C */  lwc1        $f6, 0xc($t3)
/* 000590 80134800 3C0C8015 */  lui         $t4, %hi(D_801574CC)
/* 000594 80134804 258C74CC */  addiu       $t4, $t4, %lo(D_801574CC)
/* 000598 80134808 3C05434F */  lui         $a1, (0x434FB0A4 >> 16)
/* 00059C 8013480C 3C07436F */  lui         $a3, (0x436F8F5C >> 16)
/* 0005A0 80134810 34E78F5C */  ori         $a3, $a3, (0x436F8F5C & 0xFFFF)
/* 0005A4 80134814 34A5B0A4 */  ori         $a1, $a1, (0x434FB0A4 & 0xFFFF)
/* 0005A8 80134818 AFAC001C */  sw          $t4, 0x1c($sp)
/* 0005AC 8013481C AFA00020 */  sw          $zero, 0x20($sp)
/* 0005B0 80134820 2404000C */  addiu       $a0, $zero, 0xc
/* 0005B4 80134824 3C064128 */  lui         $a2, 0x4128
/* 0005B8 80134828 0C007871 */  jal         func_8001E1C4
/* 0005BC 8013482C E7A60018 */   swc1       $f6, 0x18($sp)
.L80134830:
/* 0005C0 80134830 44800000 */  mtc1        $zero, $f0
/* 0005C4 80134834 8E0D0000 */  lw          $t5, 0x0($s0)
/* 0005C8 80134838 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0005CC 8013483C E7A00014 */  swc1        $f0, 0x14($sp)
/* 0005D0 80134840 C5A8000C */  lwc1        $f8, 0xc($t5)
/* 0005D4 80134844 3C188015 */  lui         $t8, %hi(D_8014E62C)
/* 0005D8 80134848 2718E62C */  addiu       $t8, $t8, %lo(D_8014E62C)
/* 0005DC 8013484C 44050000 */  mfc1        $a1, $f0
/* 0005E0 80134850 44060000 */  mfc1        $a2, $f0
/* 0005E4 80134854 44070000 */  mfc1        $a3, $f0
/* 0005E8 80134858 AFB8001C */  sw          $t8, 0x1c($sp)
/* 0005EC 8013485C AFA00020 */  sw          $zero, 0x20($sp)
/* 0005F0 80134860 2404000A */  addiu       $a0, $zero, 0xa
/* 0005F4 80134864 0C007871 */  jal         func_8001E1C4
/* 0005F8 80134868 E7A80018 */   swc1       $f8, 0x18($sp)
/* 0005FC 8013486C 3C048016 */  lui         $a0, %hi(D_80158DE4)
/* 000600 80134870 24848DE4 */  addiu       $a0, $a0, %lo(D_80158DE4)
/* 000604 80134874 0C002ED2 */  jal         func_8000BB48
/* 000608 80134878 24050001 */   addiu      $a1, $zero, 0x1
/* 00060C 8013487C 0C04D132 */  jal         func_801344C8_1C5E50
/* 000610 80134880 00000000 */   nop
/* 000614 80134884 0C04D1A4 */  jal         func_80134690_1C5E50
/* 000618 80134888 00000000 */   nop
/* 00061C 8013488C 3C148013 */  lui         $s4, %hi(D_80134BB0)
/* 000620 80134890 00008025 */  move        $s0, $zero
/* 000624 80134894 26944BB0 */  addiu       $s4, $s4, %lo(D_80134BB0)
/* 000628 80134898 24160001 */  addiu       $s6, $zero, 0x1
/* 00062C 8013489C 2415000C */  addiu       $s5, $zero, 0xc
.L801348A0:
/* 000630 801348A0 0C00EAC8 */  jal         func_8003AB20
/* 000634 801348A4 24040016 */   addiu      $a0, $zero, 0x16
/* 000638 801348A8 00027880 */  sll         $t7, $v0, 2
/* 00063C 801348AC 026FC821 */  addu        $t9, $s3, $t7
/* 000640 801348B0 8F2E0000 */  lw          $t6, 0x0($t9)
/* 000644 801348B4 00408825 */  move        $s1, $v0
/* 000648 801348B8 15C0000C */  bnez        $t6, .L801348EC
/* 00064C 801348BC 2A010005 */   slti       $at, $s0, 0x5
/* 000650 801348C0 00550019 */  multu       $v0, $s5
/* 000654 801348C4 02002825 */  move        $a1, $s0
/* 000658 801348C8 00004012 */  mflo        $t0
/* 00065C 801348CC 02882021 */  addu        $a0, $s4, $t0
/* 000660 801348D0 0C04D09C */  jal         func_80134270_1C5E50
/* 000664 801348D4 00000000 */   nop
/* 000668 801348D8 00114880 */  sll         $t1, $s1, 2
/* 00066C 801348DC 02695021 */  addu        $t2, $s3, $t1
/* 000670 801348E0 AD560000 */  sw          $s6, 0x0($t2)
/* 000674 801348E4 26100001 */  addiu       $s0, $s0, 0x1
/* 000678 801348E8 2A010005 */  slti        $at, $s0, 0x5
.L801348EC:
/* 00067C 801348EC 1420FFEC */  bnez        $at, .L801348A0
/* 000680 801348F0 00000000 */   nop
/* 000684 801348F4 00008025 */  move        $s0, $zero
/* 000688 801348F8 00009025 */  move        $s2, $zero
.L801348FC:
/* 00068C 801348FC 0C00CB07 */  jal         func_80032C1C
/* 000690 80134900 26040065 */   addiu      $a0, $s0, 0x65
/* 000694 80134904 28410002 */  slti        $at, $v0, 0x2
/* 000698 80134908 14200002 */  bnez        $at, .L80134914
/* 00069C 8013490C 26100001 */   addiu      $s0, $s0, 0x1
/* 0006A0 80134910 26520001 */  addiu       $s2, $s2, 0x1
.L80134914:
/* 0006A4 80134914 2A010005 */  slti        $at, $s0, 0x5
/* 0006A8 80134918 1420FFF8 */  bnez        $at, .L801348FC
/* 0006AC 8013491C 00000000 */   nop
/* 0006B0 80134920 00008025 */  move        $s0, $zero
.L80134924:
/* 0006B4 80134924 0C00EAC8 */  jal         func_8003AB20
/* 0006B8 80134928 24040016 */   addiu      $a0, $zero, 0x16
/* 0006BC 8013492C 00025880 */  sll         $t3, $v0, 2
/* 0006C0 80134930 026B6021 */  addu        $t4, $s3, $t3
/* 0006C4 80134934 8D8D0000 */  lw          $t5, 0x0($t4)
/* 0006C8 80134938 00408825 */  move        $s1, $v0
/* 0006CC 8013493C 15A0000D */  bnez        $t5, .L80134974
/* 0006D0 80134940 0212082A */   slt        $at, $s0, $s2
/* 0006D4 80134944 10200002 */  beqz        $at, .L80134950
/* 0006D8 80134948 2405007A */   addiu      $a1, $zero, 0x7a
/* 0006DC 8013494C 2405007B */  addiu       $a1, $zero, 0x7b
.L80134950:
/* 0006E0 80134950 02350019 */  multu       $s1, $s5
/* 0006E4 80134954 0000C012 */  mflo        $t8
/* 0006E8 80134958 02982021 */  addu        $a0, $s4, $t8
/* 0006EC 8013495C 0C04D152 */  jal         func_80134548_1C5E50
/* 0006F0 80134960 00000000 */   nop
/* 0006F4 80134964 00117880 */  sll         $t7, $s1, 2
/* 0006F8 80134968 026FC821 */  addu        $t9, $s3, $t7
/* 0006FC 8013496C AF360000 */  sw          $s6, 0x0($t9)
/* 000700 80134970 26100001 */  addiu       $s0, $s0, 0x1
.L80134974:
/* 000704 80134974 2A010005 */  slti        $at, $s0, 0x5
/* 000708 80134978 1420FFEA */  bnez        $at, .L80134924
/* 00070C 8013497C 00000000 */   nop
/* 000710 80134980 3C048015 */  lui         $a0, %hi(D_80157668)
/* 000714 80134984 3C068015 */  lui         $a2, %hi(D_80157660_1C5E50)
/* 000718 80134988 3C073F33 */  lui         $a3, (0x3F333333 >> 16)
/* 00071C 8013498C 34E73333 */  ori         $a3, $a3, (0x3F333333 & 0xFFFF)
/* 000720 80134990 24C67660 */  addiu       $a2, $a2, %lo(D_80157660_1C5E50)
/* 000724 80134994 24847668 */  addiu       $a0, $a0, %lo(D_80157668)
/* 000728 80134998 0C0439DA */  jal         func_8010E768
/* 00072C 8013499C 2405003C */   addiu      $a1, $zero, 0x3c
/* 000730 801349A0 0C00CB07 */  jal         func_80032C1C
/* 000734 801349A4 24040012 */   addiu      $a0, $zero, 0x12
/* 000738 801349A8 14400010 */  bnez        $v0, .L801349EC
/* 00073C 801349AC 3C018016 */   lui        $at, %hi(D_80158E60)
/* 000740 801349B0 C42C8E60 */  lwc1        $f12, %lo(D_80158E60)($at)
/* 000744 801349B4 3C014128 */  lui         $at, 0x4128
/* 000748 801349B8 44817000 */  mtc1        $at, $f14
/* 00074C 801349BC 3C06436F */  lui         $a2, (0x436F8F5C >> 16)
/* 000750 801349C0 34C68F5C */  ori         $a2, $a2, (0x436F8F5C & 0xFFFF)
/* 000754 801349C4 0C007C44 */  jal         func_8001F110
/* 000758 801349C8 24070090 */   addiu      $a3, $zero, 0x90
/* 00075C 801349CC 3C0142E6 */  lui         $at, 0x42e6
/* 000760 801349D0 44816000 */  mtc1        $at, $f12
/* 000764 801349D4 3C018016 */  lui         $at, %hi(D_80158E64)
/* 000768 801349D8 C42E8E64 */  lwc1        $f14, %lo(D_80158E64)($at)
/* 00076C 801349DC 3C064385 */  lui         $a2, (0x43858000 >> 16)
/* 000770 801349E0 34C68000 */  ori         $a2, $a2, (0x43858000 & 0xFFFF)
/* 000774 801349E4 0C007C44 */  jal         func_8001F110
/* 000778 801349E8 2407008E */   addiu      $a3, $zero, 0x8e
.L801349EC:
/* 00077C 801349EC 8FBF004C */  lw          $ra, 0x4c($sp)
/* 000780 801349F0 8FB00030 */  lw          $s0, 0x30($sp)
/* 000784 801349F4 8FB10034 */  lw          $s1, 0x34($sp)
/* 000788 801349F8 8FB20038 */  lw          $s2, 0x38($sp)
/* 00078C 801349FC 8FB3003C */  lw          $s3, 0x3c($sp)
/* 000790 80134A00 8FB40040 */  lw          $s4, 0x40($sp)
/* 000794 80134A04 8FB50044 */  lw          $s5, 0x44($sp)
/* 000798 80134A08 8FB60048 */  lw          $s6, 0x48($sp)
/* 00079C 80134A0C 03E00008 */  jr          $ra
/* 0007A0 80134A10 27BD00B8 */   addiu      $sp, $sp, 0xb8

glabel func_80134A14_1C5E50 # 7
/* 0007A4 80134A14 3C014014 */  lui         $at, 0x4014
/* 0007A8 80134A18 44813800 */  mtc1        $at, $f7
/* 0007AC 80134A1C 44803000 */  mtc1        $zero, $f6
/* 0007B0 80134A20 46007121 */  cvt.d.s     $f4, $f14
/* 0007B4 80134A24 00000000 */  nop
/* 0007B8 80134A28 46262203 */  div.d       $f8, $f4, $f6
/* 0007BC 80134A2C AFA60008 */  sw          $a2, 0x8($sp)
/* 0007C0 80134A30 444EF800 */  cfc1        $t6, FpcCsr
/* 0007C4 80134A34 00000000 */  nop
/* 0007C8 80134A38 35C10003 */  ori         $at, $t6, 0x3
/* 0007CC 80134A3C 38210002 */  xori        $at, $at, 0x2
/* 0007D0 80134A40 44C1F800 */  ctc1        $at, FpcCsr
/* 0007D4 80134A44 00000000 */  nop
/* 0007D8 80134A48 462042A4 */  cvt.w.d     $f10, $f8
/* 0007DC 80134A4C 44025000 */  mfc1        $v0, $f10
/* 0007E0 80134A50 44CEF800 */  ctc1        $t6, FpcCsr
/* 0007E4 80134A54 04400027 */  bltz        $v0, .L80134AF4
/* 0007E8 80134A58 28410020 */   slti       $at, $v0, 0x20
/* 0007EC 80134A5C 10200025 */  beqz        $at, .L80134AF4
/* 0007F0 80134A60 3C014024 */   lui        $at, 0x4024
/* 0007F4 80134A64 44810800 */  mtc1        $at, $f1
/* 0007F8 80134A68 44800000 */  mtc1        $zero, $f0
/* 0007FC 80134A6C 46006421 */  cvt.d.s     $f16, $f12
/* 000800 80134A70 00000000 */  nop
/* 000804 80134A74 46208483 */  div.d       $f18, $f16, $f0
/* 000808 80134A78 444FF800 */  cfc1        $t7, FpcCsr
/* 00080C 80134A7C 00000000 */  nop
/* 000810 80134A80 35E10003 */  ori         $at, $t7, 0x3
/* 000814 80134A84 38210002 */  xori        $at, $at, 0x2
/* 000818 80134A88 44C1F800 */  ctc1        $at, FpcCsr
/* 00081C 80134A8C 00000000 */  nop
/* 000820 80134A90 46209124 */  cvt.w.d     $f4, $f18
/* 000824 80134A94 44032000 */  mfc1        $v1, $f4
/* 000828 80134A98 44CFF800 */  ctc1        $t7, FpcCsr
/* 00082C 80134A9C 04600015 */  bltz        $v1, .L80134AF4
/* 000830 80134AA0 28610020 */   slti       $at, $v1, 0x20
/* 000834 80134AA4 10200013 */  beqz        $at, .L80134AF4
/* 000838 80134AA8 00000000 */   nop
/* 00083C 80134AAC C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000840 80134AB0 00000000 */  nop
/* 000844 80134AB4 46003221 */  cvt.d.s     $f8, $f6
/* 000848 80134AB8 00000000 */  nop
/* 00084C 80134ABC 46204283 */  div.d       $f10, $f8, $f0
/* 000850 80134AC0 4458F800 */  cfc1        $t8, FpcCsr
/* 000854 80134AC4 00000000 */  nop
/* 000858 80134AC8 37010003 */  ori         $at, $t8, 0x3
/* 00085C 80134ACC 38210002 */  xori        $at, $at, 0x2
/* 000860 80134AD0 44C1F800 */  ctc1        $at, FpcCsr
/* 000864 80134AD4 00000000 */  nop
/* 000868 80134AD8 46205424 */  cvt.w.d     $f16, $f10
/* 00086C 80134ADC 44048000 */  mfc1        $a0, $f16
/* 000870 80134AE0 44D8F800 */  ctc1        $t8, FpcCsr
/* 000874 80134AE4 04800003 */  bltz        $a0, .L80134AF4
/* 000878 80134AE8 28810020 */   slti       $at, $a0, 0x20
/* 00087C 80134AEC 14200003 */  bnez        $at, .L80134AFC
/* 000880 80134AF0 0002C880 */   sll        $t9, $v0, 2
.L80134AF4:
/* 000884 80134AF4 03E00008 */  jr          $ra
/* 000888 80134AF8 00001025 */   move       $v0, $zero
.L80134AFC:
/* 00088C 80134AFC 3C058017 */  lui         $a1, %hi(D_8016C76C)
/* 000890 80134B00 00B92821 */  addu        $a1, $a1, $t9
/* 000894 80134B04 8CA5C76C */  lw          $a1, %lo(D_8016C76C)($a1)
/* 000898 80134B08 000449C0 */  sll         $t1, $a0, 7
/* 00089C 80134B0C 14A00003 */  bnez        $a1, .L80134B1C
/* 0008A0 80134B10 00A95021 */   addu       $t2, $a1, $t1
/* 0008A4 80134B14 03E00008 */  jr          $ra
/* 0008A8 80134B18 00001025 */   move       $v0, $zero
.L80134B1C:
/* 0008AC 80134B1C 00035880 */  sll         $t3, $v1, 2
/* 0008B0 80134B20 014B6021 */  addu        $t4, $t2, $t3
/* 0008B4 80134B24 8D820000 */  lw          $v0, 0x0($t4)
/* 0008B8 80134B28 00000000 */  nop
/* 0008BC 80134B2C 03E00008 */  jr          $ra
/* 0008C0 80134B30 00000000 */   nop
/* 0008C4 80134B34 00000000 */  nop
/* 0008C8 80134B38 00000000 */  nop
/* 0008CC 80134B3C 00000000 */  nop
