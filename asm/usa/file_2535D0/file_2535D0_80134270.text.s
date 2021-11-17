.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270 # 0
/* 000000 80134270 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 000004 80134274 AFB0002C */  sw          $s0, 0x2c($sp)
/* 000008 80134278 00808025 */  move        $s0, $a0
/* 00000C 8013427C AFBF0034 */  sw          $ra, 0x34($sp)
/* 000010 80134280 AFB10030 */  sw          $s1, 0x30($sp)
/* 000014 80134284 AFA5004C */  sw          $a1, 0x4c($sp)
/* 000018 80134288 0C00CB07 */  jal         func_80032C1C
/* 00001C 8013428C 24A40070 */   addiu      $a0, $a1, 0x70
/* 000020 80134290 24040012 */  addiu       $a0, $zero, 0x12
/* 000024 80134294 0C00CB07 */  jal         func_80032C1C
/* 000028 80134298 AFA20040 */   sw         $v0, 0x40($sp)
/* 00002C 8013429C 8FA60040 */  lw          $a2, 0x40($sp)
/* 000030 801342A0 14400004 */  bne         $v0, $zero, .L801342B4
/* 000034 801342A4 28C10002 */   slti       $at, $a2, 0x2
/* 000038 801342A8 3C118015 */  lui         $s1, %hi(D_8014DFD8)
/* 00003C 801342AC 10000003 */  b           .L801342BC
/* 000040 801342B0 2631DFD8 */   addiu      $s1, $s1, %lo(D_8014DFD8)
.L801342B4:
/* 000044 801342B4 3C118015 */  lui         $s1, %hi(D_80156C2C)
/* 000048 801342B8 26316C2C */  addiu       $s1, $s1, %lo(D_80156C2C)
.L801342BC:
/* 00004C 801342BC 1020002D */  beq         $at, $zero, .L80134374
/* 000050 801342C0 28C10004 */   slti       $at, $a2, 0x4
/* 000054 801342C4 0C00EADA */  jal         func_8003AB68
/* 000058 801342C8 AFA60040 */   sw         $a2, 0x40($sp)
/* 00005C 801342CC 3C018016 */  lui         $at, %hi(D_801594C4)
/* 000060 801342D0 C42C94C4 */  lwc1        $f12, %lo(D_801594C4)($at)
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
/* 0000B8 80134328 3C018016 */  lui         $at, %hi(D_801594CC)
/* 0000BC 8013432C 46304482 */  mul.d       $f18, $f8, $f16
/* 0000C0 80134330 C42594C8 */  lwc1        $f5, %lo(D_801594C8)($at)
/* 0000C4 80134334 C42494CC */  lwc1        $f4, %lo(D_801594CC)($at)
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
/* 000104 80134374 1020002D */  beq         $at, $zero, .L8013442C
/* 000108 80134378 00000000 */   nop
/* 00010C 8013437C 0C00EADA */  jal         func_8003AB68
/* 000110 80134380 AFA60040 */   sw         $a2, 0x40($sp)
/* 000114 80134384 8FA60040 */  lw          $a2, 0x40($sp)
/* 000118 80134388 3C018016 */  lui         $at, %hi(D_801594D0)
/* 00011C 8013438C C42C94D0 */  lwc1        $f12, %lo(D_801594D0)($at)
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
/* 000174 801343E4 3C018016 */  lui         $at, %hi(D_801594DC)
/* 000178 801343E8 46283402 */  mul.d       $f16, $f6, $f8
/* 00017C 801343EC C43394D8 */  lwc1        $f19, %lo(D_801594D8)($at)
/* 000180 801343F0 C43294DC */  lwc1        $f18, %lo(D_801594DC)($at)
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
/* 000208 80134478 3C018016 */  lui         $at, %hi(D_801594E4)
/* 00020C 8013447C 46262202 */  mul.d       $f8, $f4, $f6
/* 000210 80134480 C43194E0 */  lwc1        $f17, %lo(D_801594E0)($at)
/* 000214 80134484 C43094E4 */  lwc1        $f16, %lo(D_801594E4)($at)
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

glabel func_801344C8 # 1
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

glabel func_80134548 # 2
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
/* 00032C 8013459C 3C018016 */  lui         $at, %hi(D_801594EC)
/* 000330 801345A0 462A3402 */  mul.d       $f16, $f6, $f10
/* 000334 801345A4 C43394E8 */  lwc1        $f19, %lo(D_801594E8)($at)
/* 000338 801345A8 C43294EC */  lwc1        $f18, %lo(D_801594EC)($at)
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

glabel func_801345D4 # 3
/* 000364 801345D4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000368 801345D8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00036C 801345DC 0C007044 */  jal         func_8001C110
/* 000370 801345E0 00000000 */   nop
/* 000374 801345E4 3C048013 */  lui         $a0, %hi(D_80134D24)
/* 000378 801345E8 240E0003 */  addiu       $t6, $zero, 0x3
/* 00037C 801345EC AFAE0010 */  sw          $t6, 0x10($sp)
/* 000380 801345F0 24844D24 */  addiu       $a0, $a0, %lo(D_80134D24)
/* 000384 801345F4 24050001 */  addiu       $a1, $zero, 0x1
/* 000388 801345F8 2406000F */  addiu       $a2, $zero, 0xf
/* 00038C 801345FC 0C007054 */  jal         func_8001C150
/* 000390 80134600 24070001 */   addiu      $a3, $zero, 0x1
/* 000394 80134604 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000398 80134608 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00039C 8013460C 03E00008 */  jr          $ra
/* 0003A0 80134610 00000000 */   nop

glabel func_80134614 # 4
/* 0003A4 80134614 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0003A8 80134618 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0003AC 8013461C AFB00018 */  sw          $s0, 0x18($sp)
/* 0003B0 80134620 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0003B4 80134624 AFB20020 */  sw          $s2, 0x20($sp)
/* 0003B8 80134628 00008825 */  move        $s1, $zero
/* 0003BC 8013462C 00008025 */  move        $s0, $zero
.L80134630:
/* 0003C0 80134630 0C00CB07 */  jal         func_80032C1C
/* 0003C4 80134634 26040070 */   addiu      $a0, $s0, 0x70
/* 0003C8 80134638 28410004 */  slti        $at, $v0, 0x4
/* 0003CC 8013463C 14200002 */  bne         $at, $zero, .L80134648
/* 0003D0 80134640 26100001 */   addiu      $s0, $s0, 0x1
/* 0003D4 80134644 26310001 */  addiu       $s1, $s1, 0x1
.L80134648:
/* 0003D8 80134648 2A010005 */  slti        $at, $s0, 0x5
/* 0003DC 8013464C 1420FFF8 */  bne         $at, $zero, .L80134630
/* 0003E0 80134650 00000000 */   nop
/* 0003E4 80134654 3C0E800B */  lui         $t6, %hi(D_800AE4F4)
/* 0003E8 80134658 8DCEE4F4 */  lw          $t6, %lo(D_800AE4F4)($t6)
/* 0003EC 8013465C 24010002 */  addiu       $at, $zero, 0x2
/* 0003F0 80134660 11C10009 */  beq         $t6, $at, .L80134688
/* 0003F4 80134664 24120005 */   addiu      $s2, $zero, 0x5
/* 0003F8 80134668 16320007 */  bne         $s1, $s2, .L80134688
/* 0003FC 8013466C 00008025 */   move       $s0, $zero
/* 000400 80134670 26040070 */  addiu       $a0, $s0, 0x70
.L80134674:
/* 000404 80134674 0C00CB11 */  jal         func_80032C44
/* 000408 80134678 00002825 */   move       $a1, $zero
/* 00040C 8013467C 26100001 */  addiu       $s0, $s0, 0x1
/* 000410 80134680 1612FFFC */  bne         $s0, $s2, .L80134674
/* 000414 80134684 26040070 */   addiu      $a0, $s0, 0x70
.L80134688:
/* 000418 80134688 8FBF0024 */  lw          $ra, 0x24($sp)
/* 00041C 8013468C 8FB00018 */  lw          $s0, 0x18($sp)
/* 000420 80134690 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000424 80134694 8FB20020 */  lw          $s2, 0x20($sp)
/* 000428 80134698 03E00008 */  jr          $ra
/* 00042C 8013469C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_801346A0 # 5
/* 000430 801346A0 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 000434 801346A4 AFB3003C */  sw          $s3, 0x3c($sp)
/* 000438 801346A8 3C0E8015 */  lui         $t6, %hi(D_80157F70)
/* 00043C 801346AC 27B30060 */  addiu       $s3, $sp, 0x60
/* 000440 801346B0 25CE7F70 */  addiu       $t6, $t6, %lo(D_80157F70)
/* 000444 801346B4 AFBF004C */  sw          $ra, 0x4c($sp)
/* 000448 801346B8 AFB60048 */  sw          $s6, 0x48($sp)
/* 00044C 801346BC AFB50044 */  sw          $s5, 0x44($sp)
/* 000450 801346C0 AFB40040 */  sw          $s4, 0x40($sp)
/* 000454 801346C4 AFB20038 */  sw          $s2, 0x38($sp)
/* 000458 801346C8 AFB10034 */  sw          $s1, 0x34($sp)
/* 00045C 801346CC AFB00030 */  sw          $s0, 0x30($sp)
/* 000460 801346D0 25D9006C */  addiu       $t9, $t6, 0x6c
/* 000464 801346D4 02604025 */  move        $t0, $s3
.L801346D8:
/* 000468 801346D8 8DC10000 */  lw          $at, 0x0($t6)
/* 00046C 801346DC 25CE000C */  addiu       $t6, $t6, 0xc
/* 000470 801346E0 AD010000 */  sw          $at, 0x0($t0)
/* 000474 801346E4 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 000478 801346E8 2508000C */  addiu       $t0, $t0, 0xc
/* 00047C 801346EC AD01FFF8 */  sw          $at, -0x8($t0)
/* 000480 801346F0 8DC1FFFC */  lw          $at, -0x4($t6)
/* 000484 801346F4 15D9FFF8 */  bne         $t6, $t9, .L801346D8
/* 000488 801346F8 AD01FFFC */   sw         $at, -0x4($t0)
/* 00048C 801346FC 0C00CB07 */  jal         func_80032C1C
/* 000490 80134700 24040012 */   addiu      $a0, $zero, 0x12
/* 000494 80134704 10400014 */  beq         $v0, $zero, .L80134758
/* 000498 80134708 00000000 */   nop
/* 00049C 8013470C 44800000 */  mtc1        $zero, $f0
/* 0004A0 80134710 3C108013 */  lui         $s0, %hi(D_80133DE4)
/* 0004A4 80134714 26103DE4 */  addiu       $s0, $s0, %lo(D_80133DE4)
/* 0004A8 80134718 8E090000 */  lw          $t1, 0x0($s0)
/* 0004AC 8013471C E7A00010 */  swc1        $f0, 0x10($sp)
/* 0004B0 80134720 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0004B4 80134724 C524000C */  lwc1        $f4, 0xc($t1)
/* 0004B8 80134728 3C0A8015 */  lui         $t2, %hi(D_801571E4)
/* 0004BC 8013472C 254A71E4 */  addiu       $t2, $t2, %lo(D_801571E4)
/* 0004C0 80134730 3C05434B */  lui         $a1, 0x434b
/* 0004C4 80134734 3C07420F */  lui         $a3, 0x420f
/* 0004C8 80134738 34E7E148 */  ori         $a3, $a3, 0xe148
/* 0004CC 8013473C 34A57333 */  ori         $a1, $a1, 0x7333
/* 0004D0 80134740 AFAA001C */  sw          $t2, 0x1c($sp)
/* 0004D4 80134744 AFA00020 */  sw          $zero, 0x20($sp)
/* 0004D8 80134748 24040003 */  addiu       $a0, $zero, 0x3
/* 0004DC 8013474C 3C063F00 */  lui         $a2, 0x3f00
/* 0004E0 80134750 0C007871 */  jal         func_8001E1C4
/* 0004E4 80134754 E7A40018 */   swc1       $f4, 0x18($sp)
.L80134758:
/* 0004E8 80134758 3C108013 */  lui         $s0, %hi(D_80133DE4)
/* 0004EC 8013475C 0C00AB39 */  jal         func_8002ACE4
/* 0004F0 80134760 26103DE4 */   addiu      $s0, $s0, %lo(D_80133DE4)
/* 0004F4 80134764 24010008 */  addiu       $at, $zero, 0x8
/* 0004F8 80134768 14410011 */  bne         $v0, $at, .L801347B0
/* 0004FC 8013476C 00000000 */   nop
/* 000500 80134770 44801000 */  mtc1        $zero, $f2
/* 000504 80134774 44800000 */  mtc1        $zero, $f0
/* 000508 80134778 8E0B0000 */  lw          $t3, 0x0($s0)
/* 00050C 8013477C E7A20010 */  swc1        $f2, 0x10($sp)
/* 000510 80134780 E7A20014 */  swc1        $f2, 0x14($sp)
/* 000514 80134784 C566000C */  lwc1        $f6, 0xc($t3)
/* 000518 80134788 3C0C8015 */  lui         $t4, %hi(D_80157B58)
/* 00051C 8013478C 258C7B58 */  addiu       $t4, $t4, %lo(D_80157B58)
/* 000520 80134790 44050000 */  mfc1        $a1, $f0
/* 000524 80134794 44060000 */  mfc1        $a2, $f0
/* 000528 80134798 44070000 */  mfc1        $a3, $f0
/* 00052C 8013479C AFAC001C */  sw          $t4, 0x1c($sp)
/* 000530 801347A0 AFA00020 */  sw          $zero, 0x20($sp)
/* 000534 801347A4 24040011 */  addiu       $a0, $zero, 0x11
/* 000538 801347A8 0C007871 */  jal         func_8001E1C4
/* 00053C 801347AC E7A60018 */   swc1       $f6, 0x18($sp)
.L801347B0:
/* 000540 801347B0 0C00CB07 */  jal         func_80032C1C
/* 000544 801347B4 24040076 */   addiu      $a0, $zero, 0x76
/* 000548 801347B8 28410003 */  slti        $at, $v0, 0x3
/* 00054C 801347BC 14200010 */  bne         $at, $zero, .L80134800
/* 000550 801347C0 00000000 */   nop
/* 000554 801347C4 44800000 */  mtc1        $zero, $f0
/* 000558 801347C8 8E0D0000 */  lw          $t5, 0x0($s0)
/* 00055C 801347CC E7A00010 */  swc1        $f0, 0x10($sp)
/* 000560 801347D0 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000564 801347D4 C5A8000C */  lwc1        $f8, 0xc($t5)
/* 000568 801347D8 3C188015 */  lui         $t8, %hi(D_80157C78)
/* 00056C 801347DC 27187C78 */  addiu       $t8, $t8, %lo(D_80157C78)
/* 000570 801347E0 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000574 801347E4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000578 801347E8 2404000E */  addiu       $a0, $zero, 0xe
/* 00057C 801347EC 3C054302 */  lui         $a1, 0x4302
/* 000580 801347F0 3C064180 */  lui         $a2, 0x4180
/* 000584 801347F4 3C074316 */  lui         $a3, 0x4316
/* 000588 801347F8 0C007871 */  jal         func_8001E1C4
/* 00058C 801347FC E7A80018 */   swc1       $f8, 0x18($sp)
.L80134800:
/* 000590 80134800 44800000 */  mtc1        $zero, $f0
/* 000594 80134804 8E0F0000 */  lw          $t7, 0x0($s0)
/* 000598 80134808 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00059C 8013480C E7A00014 */  swc1        $f0, 0x14($sp)
/* 0005A0 80134810 C5EA000C */  lwc1        $f10, 0xc($t7)
/* 0005A4 80134814 3C198015 */  lui         $t9, %hi(D_8014E354)
/* 0005A8 80134818 2739E354 */  addiu       $t9, $t9, %lo(D_8014E354)
/* 0005AC 8013481C 44050000 */  mfc1        $a1, $f0
/* 0005B0 80134820 44060000 */  mfc1        $a2, $f0
/* 0005B4 80134824 44070000 */  mfc1        $a3, $f0
/* 0005B8 80134828 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0005BC 8013482C AFA00020 */  sw          $zero, 0x20($sp)
/* 0005C0 80134830 2404000A */  addiu       $a0, $zero, 0xa
/* 0005C4 80134834 0C007871 */  jal         func_8001E1C4
/* 0005C8 80134838 E7AA0018 */   swc1       $f10, 0x18($sp)
/* 0005CC 8013483C 3C048016 */  lui         $a0, %hi(D_80159474)
/* 0005D0 80134840 24849474 */  addiu       $a0, $a0, %lo(D_80159474)
/* 0005D4 80134844 0C002ED2 */  jal         func_8000BB48
/* 0005D8 80134848 24050001 */   addiu      $a1, $zero, 0x1
/* 0005DC 8013484C 0C04D132 */  jal         func_801344C8
/* 0005E0 80134850 00000000 */   nop
/* 0005E4 80134854 0C04D185 */  jal         func_80134614
/* 0005E8 80134858 00000000 */   nop
/* 0005EC 8013485C 0C00CB07 */  jal         func_80032C1C
/* 0005F0 80134860 2404004F */   addiu      $a0, $zero, 0x4f
/* 0005F4 80134864 1440000F */  bne         $v0, $zero, .L801348A4
/* 0005F8 80134868 00008825 */   move       $s1, $zero
/* 0005FC 8013486C 3C014290 */  lui         $at, 0x4290
/* 000600 80134870 44818000 */  mtc1        $at, $f16
/* 000604 80134874 3C018016 */  lui         $at, %hi(D_801594F0)
/* 000608 80134878 C43294F0 */  lwc1        $f18, %lo(D_801594F0)($at)
/* 00060C 8013487C 3C01426C */  lui         $at, 0x426c
/* 000610 80134880 44812000 */  mtc1        $at, $f4
/* 000614 80134884 27A40054 */  addiu       $a0, $sp, 0x54
/* 000618 80134888 00002825 */  move        $a1, $zero
/* 00061C 8013488C E7B00054 */  swc1        $f16, 0x54($sp)
/* 000620 80134890 E7B20058 */  swc1        $f18, 0x58($sp)
/* 000624 80134894 0C04D09C */  jal         func_80134270
/* 000628 80134898 E7A4005C */   swc1       $f4, 0x5c($sp)
/* 00062C 8013489C 10000001 */  b           .L801348A4
/* 000630 801348A0 24110001 */   addiu      $s1, $zero, 0x1
.L801348A4:
/* 000634 801348A4 2A210005 */  slti        $at, $s1, 0x5
/* 000638 801348A8 10200019 */  beq         $at, $zero, .L80134910
/* 00063C 801348AC 24160001 */   addiu      $s6, $zero, 0x1
/* 000640 801348B0 3C148013 */  lui         $s4, %hi(D_80134BE0)
/* 000644 801348B4 26944BE0 */  addiu       $s4, $s4, %lo(D_80134BE0)
/* 000648 801348B8 2415000C */  addiu       $s5, $zero, 0xc
.L801348BC:
/* 00064C 801348BC 0C00EAC8 */  jal         func_8003AB20
/* 000650 801348C0 2404001B */   addiu      $a0, $zero, 0x1b
/* 000654 801348C4 00027080 */  sll         $t6, $v0, 2
/* 000658 801348C8 026E4021 */  addu        $t0, $s3, $t6
/* 00065C 801348CC 8D090000 */  lw          $t1, 0x0($t0)
/* 000660 801348D0 00408025 */  move        $s0, $v0
/* 000664 801348D4 1520000C */  bne         $t1, $zero, .L80134908
/* 000668 801348D8 2A210005 */   slti       $at, $s1, 0x5
/* 00066C 801348DC 00550019 */  multu       $v0, $s5
/* 000670 801348E0 02202825 */  move        $a1, $s1
/* 000674 801348E4 00005012 */  mflo        $t2
/* 000678 801348E8 028A2021 */  addu        $a0, $s4, $t2
/* 00067C 801348EC 0C04D09C */  jal         func_80134270
/* 000680 801348F0 00000000 */   nop
/* 000684 801348F4 00105880 */  sll         $t3, $s0, 2
/* 000688 801348F8 026B6021 */  addu        $t4, $s3, $t3
/* 00068C 801348FC AD960000 */  sw          $s6, 0x0($t4)
/* 000690 80134900 26310001 */  addiu       $s1, $s1, 0x1
/* 000694 80134904 2A210005 */  slti        $at, $s1, 0x5
.L80134908:
/* 000698 80134908 1420FFEC */  bne         $at, $zero, .L801348BC
/* 00069C 8013490C 00000000 */   nop
.L80134910:
/* 0006A0 80134910 3C148013 */  lui         $s4, %hi(D_80134BE0)
/* 0006A4 80134914 26944BE0 */  addiu       $s4, $s4, %lo(D_80134BE0)
/* 0006A8 80134918 2415000C */  addiu       $s5, $zero, 0xc
/* 0006AC 8013491C 24160001 */  addiu       $s6, $zero, 0x1
/* 0006B0 80134920 00008825 */  move        $s1, $zero
/* 0006B4 80134924 00009025 */  move        $s2, $zero
.L80134928:
/* 0006B8 80134928 0C00CB07 */  jal         func_80032C1C
/* 0006BC 8013492C 26240070 */   addiu      $a0, $s1, 0x70
/* 0006C0 80134930 28410002 */  slti        $at, $v0, 0x2
/* 0006C4 80134934 14200002 */  bne         $at, $zero, .L80134940
/* 0006C8 80134938 26310001 */   addiu      $s1, $s1, 0x1
/* 0006CC 8013493C 26520001 */  addiu       $s2, $s2, 0x1
.L80134940:
/* 0006D0 80134940 2A210005 */  slti        $at, $s1, 0x5
/* 0006D4 80134944 1420FFF8 */  bne         $at, $zero, .L80134928
/* 0006D8 80134948 00000000 */   nop
/* 0006DC 8013494C 00008825 */  move        $s1, $zero
.L80134950:
/* 0006E0 80134950 0C00EAC8 */  jal         func_8003AB20
/* 0006E4 80134954 2404001B */   addiu      $a0, $zero, 0x1b
/* 0006E8 80134958 00026880 */  sll         $t5, $v0, 2
/* 0006EC 8013495C 026DC021 */  addu        $t8, $s3, $t5
/* 0006F0 80134960 8F0F0000 */  lw          $t7, 0x0($t8)
/* 0006F4 80134964 00408025 */  move        $s0, $v0
/* 0006F8 80134968 15E0000D */  bne         $t7, $zero, .L801349A0
/* 0006FC 8013496C 0232082A */   slt        $at, $s1, $s2
/* 000700 80134970 10200002 */  beq         $at, $zero, .L8013497C
/* 000704 80134974 2405007A */   addiu      $a1, $zero, 0x7a
/* 000708 80134978 2405007B */  addiu       $a1, $zero, 0x7b
.L8013497C:
/* 00070C 8013497C 02150019 */  multu       $s0, $s5
/* 000710 80134980 0000C812 */  mflo        $t9
/* 000714 80134984 02992021 */  addu        $a0, $s4, $t9
/* 000718 80134988 0C04D152 */  jal         func_80134548
/* 00071C 8013498C 00000000 */   nop
/* 000720 80134990 00107080 */  sll         $t6, $s0, 2
/* 000724 80134994 026E4021 */  addu        $t0, $s3, $t6
/* 000728 80134998 AD160000 */  sw          $s6, 0x0($t0)
/* 00072C 8013499C 26310001 */  addiu       $s1, $s1, 0x1
.L801349A0:
/* 000730 801349A0 2A210007 */  slti        $at, $s1, 0x7
/* 000734 801349A4 1420FFEA */  bne         $at, $zero, .L80134950
/* 000738 801349A8 00000000 */   nop
/* 00073C 801349AC 3C048015 */  lui         $a0, %hi(D_80157CF4)
/* 000740 801349B0 3C068015 */  lui         $a2, %hi(D_80157CEC)
/* 000744 801349B4 3C073F33 */  lui         $a3, 0x3f33
/* 000748 801349B8 34E73333 */  ori         $a3, $a3, 0x3333
/* 00074C 801349BC 24C67CEC */  addiu       $a2, $a2, %lo(D_80157CEC)
/* 000750 801349C0 24847CF4 */  addiu       $a0, $a0, %lo(D_80157CF4)
/* 000754 801349C4 0C0439DA */  jal         func_8010E768
/* 000758 801349C8 24050035 */   addiu      $a1, $zero, 0x35
/* 00075C 801349CC 0C00CB07 */  jal         func_80032C1C
/* 000760 801349D0 24040012 */   addiu      $a0, $zero, 0x12
/* 000764 801349D4 14400011 */  bne         $v0, $zero, .L80134A1C
/* 000768 801349D8 3C018016 */   lui        $at, %hi(D_801594F4)
/* 00076C 801349DC C42C94F4 */  lwc1        $f12, %lo(D_801594F4)($at)
/* 000770 801349E0 3C014128 */  lui         $at, 0x4128
/* 000774 801349E4 44817000 */  mtc1        $at, $f14
/* 000778 801349E8 3C06420F */  lui         $a2, 0x420f
/* 00077C 801349EC 34C6E148 */  ori         $a2, $a2, 0xe148
/* 000780 801349F0 0C007C44 */  jal         func_8001F110
/* 000784 801349F4 24070090 */   addiu      $a3, $zero, 0x90
/* 000788 801349F8 3C018016 */  lui         $at, %hi(D_801594F8)
/* 00078C 801349FC C42C94F8 */  lwc1        $f12, %lo(D_801594F8)($at)
/* 000790 80134A00 3C018016 */  lui         $at, %hi(D_801594FC)
/* 000794 80134A04 C42E94FC */  lwc1        $f14, %lo(D_801594FC)($at)
/* 000798 80134A08 3C0642B6 */  lui         $a2, 0x42b6
/* 00079C 80134A0C 0C007C44 */  jal         func_8001F110
/* 0007A0 80134A10 2407008E */   addiu      $a3, $zero, 0x8e
/* 0007A4 80134A14 0C04D175 */  jal         func_801345D4
/* 0007A8 80134A18 00000000 */   nop
.L80134A1C:
/* 0007AC 80134A1C 8FBF004C */  lw          $ra, 0x4c($sp)
/* 0007B0 80134A20 8FB00030 */  lw          $s0, 0x30($sp)
/* 0007B4 80134A24 8FB10034 */  lw          $s1, 0x34($sp)
/* 0007B8 80134A28 8FB20038 */  lw          $s2, 0x38($sp)
/* 0007BC 80134A2C 8FB3003C */  lw          $s3, 0x3c($sp)
/* 0007C0 80134A30 8FB40040 */  lw          $s4, 0x40($sp)
/* 0007C4 80134A34 8FB50044 */  lw          $s5, 0x44($sp)
/* 0007C8 80134A38 8FB60048 */  lw          $s6, 0x48($sp)
/* 0007CC 80134A3C 03E00008 */  jr          $ra
/* 0007D0 80134A40 27BD00D8 */   addiu      $sp, $sp, 0xd8

glabel func_80134A44 # 6
/* 0007D4 80134A44 3C014014 */  lui         $at, 0x4014
/* 0007D8 80134A48 44813800 */  mtc1        $at, $f7
/* 0007DC 80134A4C 44803000 */  mtc1        $zero, $f6
/* 0007E0 80134A50 46007121 */  cvt.d.s     $f4, $f14
/* 0007E4 80134A54 00000000 */  nop
/* 0007E8 80134A58 46262203 */  div.d       $f8, $f4, $f6
/* 0007EC 80134A5C AFA60008 */  sw          $a2, 0x8($sp)
/* 0007F0 80134A60 444EF800 */  cfc1        $t6, $31
/* 0007F4 80134A64 00000000 */  nop
/* 0007F8 80134A68 35C10003 */  ori         $at, $t6, 0x3
/* 0007FC 80134A6C 38210002 */  xori        $at, $at, 0x2
/* 000800 80134A70 44C1F800 */  ctc1        $at, $31
/* 000804 80134A74 00000000 */  nop
/* 000808 80134A78 462042A4 */  cvt.w.d     $f10, $f8
/* 00080C 80134A7C 44025000 */  mfc1        $v0, $f10
/* 000810 80134A80 44CEF800 */  ctc1        $t6, $31
/* 000814 80134A84 04400027 */  bltz        $v0, .L80134B24
/* 000818 80134A88 28410020 */   slti       $at, $v0, 0x20
/* 00081C 80134A8C 10200025 */  beq         $at, $zero, .L80134B24
/* 000820 80134A90 3C014024 */   lui        $at, 0x4024
/* 000824 80134A94 44810800 */  mtc1        $at, $f1
/* 000828 80134A98 44800000 */  mtc1        $zero, $f0
/* 00082C 80134A9C 46006421 */  cvt.d.s     $f16, $f12
/* 000830 80134AA0 00000000 */  nop
/* 000834 80134AA4 46208483 */  div.d       $f18, $f16, $f0
/* 000838 80134AA8 444FF800 */  cfc1        $t7, $31
/* 00083C 80134AAC 00000000 */  nop
/* 000840 80134AB0 35E10003 */  ori         $at, $t7, 0x3
/* 000844 80134AB4 38210002 */  xori        $at, $at, 0x2
/* 000848 80134AB8 44C1F800 */  ctc1        $at, $31
/* 00084C 80134ABC 00000000 */  nop
/* 000850 80134AC0 46209124 */  cvt.w.d     $f4, $f18
/* 000854 80134AC4 44032000 */  mfc1        $v1, $f4
/* 000858 80134AC8 44CFF800 */  ctc1        $t7, $31
/* 00085C 80134ACC 04600015 */  bltz        $v1, .L80134B24
/* 000860 80134AD0 28610020 */   slti       $at, $v1, 0x20
/* 000864 80134AD4 10200013 */  beq         $at, $zero, .L80134B24
/* 000868 80134AD8 00000000 */   nop
/* 00086C 80134ADC C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000870 80134AE0 00000000 */  nop
/* 000874 80134AE4 46003221 */  cvt.d.s     $f8, $f6
/* 000878 80134AE8 00000000 */  nop
/* 00087C 80134AEC 46204283 */  div.d       $f10, $f8, $f0
/* 000880 80134AF0 4458F800 */  cfc1        $t8, $31
/* 000884 80134AF4 00000000 */  nop
/* 000888 80134AF8 37010003 */  ori         $at, $t8, 0x3
/* 00088C 80134AFC 38210002 */  xori        $at, $at, 0x2
/* 000890 80134B00 44C1F800 */  ctc1        $at, $31
/* 000894 80134B04 00000000 */  nop
/* 000898 80134B08 46205424 */  cvt.w.d     $f16, $f10
/* 00089C 80134B0C 44048000 */  mfc1        $a0, $f16
/* 0008A0 80134B10 44D8F800 */  ctc1        $t8, $31
/* 0008A4 80134B14 04800003 */  bltz        $a0, .L80134B24
/* 0008A8 80134B18 28810020 */   slti       $at, $a0, 0x20
/* 0008AC 80134B1C 14200003 */  bne         $at, $zero, .L80134B2C
/* 0008B0 80134B20 0002C880 */   sll        $t9, $v0, 2
.L80134B24:
/* 0008B4 80134B24 03E00008 */  jr          $ra
/* 0008B8 80134B28 00001025 */   move       $v0, $zero
.L80134B2C:
/* 0008BC 80134B2C 3C058018 */  lui         $a1, %hi(D_8017D658)
/* 0008C0 80134B30 00B92821 */  addu        $a1, $a1, $t9
/* 0008C4 80134B34 8CA5D658 */  lw          $a1, %lo(D_8017D658)($a1)
/* 0008C8 80134B38 000449C0 */  sll         $t1, $a0, 7
/* 0008CC 80134B3C 14A00003 */  bne         $a1, $zero, .L80134B4C
/* 0008D0 80134B40 00A95021 */   addu       $t2, $a1, $t1
/* 0008D4 80134B44 03E00008 */  jr          $ra
/* 0008D8 80134B48 00001025 */   move       $v0, $zero
.L80134B4C:
/* 0008DC 80134B4C 00035880 */  sll         $t3, $v1, 2
/* 0008E0 80134B50 014B6021 */  addu        $t4, $t2, $t3
/* 0008E4 80134B54 8D820000 */  lw          $v0, 0x0($t4)
/* 0008E8 80134B58 00000000 */  nop
/* 0008EC 80134B5C 03E00008 */  jr          $ra
/* 0008F0 80134B60 00000000 */   nop
/* 0008F4 80134B64 00000000 */  nop
/* 0008F8 80134B68 00000000 */  nop
/* 0008FC 80134B6C 00000000 */  nop