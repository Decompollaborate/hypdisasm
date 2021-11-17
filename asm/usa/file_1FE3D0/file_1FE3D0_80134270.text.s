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
/* 00001C 8013428C 24A4006A */   addiu      $a0, $a1, 0x6a
/* 000020 80134290 24040012 */  addiu       $a0, $zero, 0x12
/* 000024 80134294 0C00CB07 */  jal         func_80032C1C
/* 000028 80134298 AFA20040 */   sw         $v0, 0x40($sp)
/* 00002C 8013429C 8FA60040 */  lw          $a2, 0x40($sp)
/* 000030 801342A0 14400004 */  bne         $v0, $zero, .L801342B4
/* 000034 801342A4 28C10002 */   slti       $at, $a2, 0x2
/* 000038 801342A8 3C118015 */  lui         $s1, %hi(D_8014E254)
/* 00003C 801342AC 10000003 */  b           .L801342BC
/* 000040 801342B0 2631E254 */   addiu      $s1, $s1, %lo(D_8014E254)
.L801342B4:
/* 000044 801342B4 3C118015 */  lui         $s1, %hi(D_80157C20)
/* 000048 801342B8 26317C20 */  addiu       $s1, $s1, %lo(D_80157C20)
.L801342BC:
/* 00004C 801342BC 1020002D */  beq         $at, $zero, .L80134374
/* 000050 801342C0 28C10004 */   slti       $at, $a2, 0x4
/* 000054 801342C4 0C00EADA */  jal         func_8003AB68
/* 000058 801342C8 AFA60040 */   sw         $a2, 0x40($sp)
/* 00005C 801342CC 3C018016 */  lui         $at, %hi(D_80159454)
/* 000060 801342D0 C42C9454 */  lwc1        $f12, %lo(D_80159454)($at)
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
/* 0000B8 80134328 3C018016 */  lui         $at, %hi(D_8015945C)
/* 0000BC 8013432C 46304482 */  mul.d       $f18, $f8, $f16
/* 0000C0 80134330 C4259458 */  lwc1        $f5, %lo(D_80159458)($at)
/* 0000C4 80134334 C424945C */  lwc1        $f4, %lo(D_8015945C)($at)
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
/* 000118 80134388 3C018016 */  lui         $at, %hi(D_80159460)
/* 00011C 8013438C C42C9460 */  lwc1        $f12, %lo(D_80159460)($at)
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
/* 000174 801343E4 3C018016 */  lui         $at, %hi(D_8015946C)
/* 000178 801343E8 46283402 */  mul.d       $f16, $f6, $f8
/* 00017C 801343EC C4339468 */  lwc1        $f19, %lo(D_80159468)($at)
/* 000180 801343F0 C432946C */  lwc1        $f18, %lo(D_8015946C)($at)
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
/* 000208 80134478 3C018016 */  lui         $at, %hi(D_80159474)
/* 00020C 8013447C 46262202 */  mul.d       $f8, $f4, $f6
/* 000210 80134480 C4319470 */  lwc1        $f17, %lo(D_80159470)($at)
/* 000214 80134484 C4309474 */  lwc1        $f16, %lo(D_80159474)($at)
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
/* 00032C 8013459C 3C018016 */  lui         $at, %hi(D_8015947C)
/* 000330 801345A0 462A3402 */  mul.d       $f16, $f6, $f10
/* 000334 801345A4 C4339478 */  lwc1        $f19, %lo(D_80159478)($at)
/* 000338 801345A8 C432947C */  lwc1        $f18, %lo(D_8015947C)($at)
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
/* 000364 801345D4 03E00008 */  jr          $ra
/* 000368 801345D8 00000000 */   nop

glabel func_801345DC # 4
/* 00036C 801345DC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000370 801345E0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000374 801345E4 AFB00018 */  sw          $s0, 0x18($sp)
/* 000378 801345E8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 00037C 801345EC AFB20020 */  sw          $s2, 0x20($sp)
/* 000380 801345F0 00008825 */  move        $s1, $zero
/* 000384 801345F4 00008025 */  move        $s0, $zero
.L801345F8:
/* 000388 801345F8 0C00CB07 */  jal         func_80032C1C
/* 00038C 801345FC 2604006A */   addiu      $a0, $s0, 0x6a
/* 000390 80134600 28410004 */  slti        $at, $v0, 0x4
/* 000394 80134604 14200002 */  bne         $at, $zero, .L80134610
/* 000398 80134608 26100001 */   addiu      $s0, $s0, 0x1
/* 00039C 8013460C 26310001 */  addiu       $s1, $s1, 0x1
.L80134610:
/* 0003A0 80134610 2A010005 */  slti        $at, $s0, 0x5
/* 0003A4 80134614 1420FFF8 */  bne         $at, $zero, .L801345F8
/* 0003A8 80134618 00000000 */   nop
/* 0003AC 8013461C 24120005 */  addiu       $s2, $zero, 0x5
/* 0003B0 80134620 16320007 */  bne         $s1, $s2, .L80134640
/* 0003B4 80134624 00008025 */   move       $s0, $zero
/* 0003B8 80134628 2604006A */  addiu       $a0, $s0, 0x6a
.L8013462C:
/* 0003BC 8013462C 0C00CB11 */  jal         func_80032C44
/* 0003C0 80134630 00002825 */   move       $a1, $zero
/* 0003C4 80134634 26100001 */  addiu       $s0, $s0, 0x1
/* 0003C8 80134638 1612FFFC */  bne         $s0, $s2, .L8013462C
/* 0003CC 8013463C 2604006A */   addiu      $a0, $s0, 0x6a
.L80134640:
/* 0003D0 80134640 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0003D4 80134644 8FB00018 */  lw          $s0, 0x18($sp)
/* 0003D8 80134648 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0003DC 8013464C 8FB20020 */  lw          $s2, 0x20($sp)
/* 0003E0 80134650 03E00008 */  jr          $ra
/* 0003E4 80134654 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80134658 # 5
/* 0003E8 80134658 27BDFEF0 */  addiu       $sp, $sp, -0x110
/* 0003EC 8013465C AFB3003C */  sw          $s3, 0x3c($sp)
/* 0003F0 80134660 3C0E8015 */  lui         $t6, %hi(D_80157F0C)
/* 0003F4 80134664 27B30064 */  addiu       $s3, $sp, 0x64
/* 0003F8 80134668 25CE7F0C */  addiu       $t6, $t6, %lo(D_80157F0C)
/* 0003FC 8013466C AFBF004C */  sw          $ra, 0x4c($sp)
/* 000400 80134670 AFB60048 */  sw          $s6, 0x48($sp)
/* 000404 80134674 AFB50044 */  sw          $s5, 0x44($sp)
/* 000408 80134678 AFB40040 */  sw          $s4, 0x40($sp)
/* 00040C 8013467C AFB20038 */  sw          $s2, 0x38($sp)
/* 000410 80134680 AFB10034 */  sw          $s1, 0x34($sp)
/* 000414 80134684 AFB00030 */  sw          $s0, 0x30($sp)
/* 000418 80134688 25D9009C */  addiu       $t9, $t6, 0x9c
/* 00041C 8013468C 02604025 */  move        $t0, $s3
.L80134690:
/* 000420 80134690 8DC10000 */  lw          $at, 0x0($t6)
/* 000424 80134694 25CE000C */  addiu       $t6, $t6, 0xc
/* 000428 80134698 AD010000 */  sw          $at, 0x0($t0)
/* 00042C 8013469C 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 000430 801346A0 2508000C */  addiu       $t0, $t0, 0xc
/* 000434 801346A4 AD01FFF8 */  sw          $at, -0x8($t0)
/* 000438 801346A8 8DC1FFFC */  lw          $at, -0x4($t6)
/* 00043C 801346AC 15D9FFF8 */  bne         $t6, $t9, .L80134690
/* 000440 801346B0 AD01FFFC */   sw         $at, -0x4($t0)
/* 000444 801346B4 8DC10000 */  lw          $at, 0x0($t6)
/* 000448 801346B8 24040076 */  addiu       $a0, $zero, 0x76
/* 00044C 801346BC 0C00CB07 */  jal         func_80032C1C
/* 000450 801346C0 AD010000 */   sw         $at, 0x0($t0)
/* 000454 801346C4 28410005 */  slti        $at, $v0, 0x5
/* 000458 801346C8 14200011 */  bne         $at, $zero, .L80134710
/* 00045C 801346CC 00000000 */   nop
/* 000460 801346D0 44800000 */  mtc1        $zero, $f0
/* 000464 801346D4 3C098013 */  lui         $t1, %hi(D_80133DE4)
/* 000468 801346D8 8D293DE4 */  lw          $t1, %lo(D_80133DE4)($t1)
/* 00046C 801346DC E7A00010 */  swc1        $f0, 0x10($sp)
/* 000470 801346E0 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000474 801346E4 C524000C */  lwc1        $f4, 0xc($t1)
/* 000478 801346E8 3C0A8015 */  lui         $t2, %hi(D_80157D40)
/* 00047C 801346EC 254A7D40 */  addiu       $t2, $t2, %lo(D_80157D40)
/* 000480 801346F0 AFAA001C */  sw          $t2, 0x1c($sp)
/* 000484 801346F4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000488 801346F8 2404000E */  addiu       $a0, $zero, 0xe
/* 00048C 801346FC 3C054320 */  lui         $a1, 0x4320
/* 000490 80134700 3C0640C0 */  lui         $a2, 0x40c0
/* 000494 80134704 3C07428A */  lui         $a3, 0x428a
/* 000498 80134708 0C007871 */  jal         func_8001E1C4
/* 00049C 8013470C E7A40018 */   swc1       $f4, 0x18($sp)
.L80134710:
/* 0004A0 80134710 0C00AB39 */  jal         func_8002ACE4
/* 0004A4 80134714 00000000 */   nop
/* 0004A8 80134718 24010008 */  addiu       $at, $zero, 0x8
/* 0004AC 8013471C 14410012 */  bne         $v0, $at, .L80134768
/* 0004B0 80134720 3C0141A0 */   lui        $at, 0x41a0
/* 0004B4 80134724 44814000 */  mtc1        $at, $f8
/* 0004B8 80134728 44803000 */  mtc1        $zero, $f6
/* 0004BC 8013472C 3C0B8013 */  lui         $t3, %hi(D_80133DE4)
/* 0004C0 80134730 8D6B3DE4 */  lw          $t3, %lo(D_80133DE4)($t3)
/* 0004C4 80134734 E7A80014 */  swc1        $f8, 0x14($sp)
/* 0004C8 80134738 E7A60010 */  swc1        $f6, 0x10($sp)
/* 0004CC 8013473C C56A000C */  lwc1        $f10, 0xc($t3)
/* 0004D0 80134740 3C0C8015 */  lui         $t4, %hi(D_8014F0BC)
/* 0004D4 80134744 258CF0BC */  addiu       $t4, $t4, %lo(D_8014F0BC)
/* 0004D8 80134748 AFAC001C */  sw          $t4, 0x1c($sp)
/* 0004DC 8013474C AFA00020 */  sw          $zero, 0x20($sp)
/* 0004E0 80134750 24040001 */  addiu       $a0, $zero, 0x1
/* 0004E4 80134754 3C05433C */  lui         $a1, 0x433c
/* 0004E8 80134758 3C064108 */  lui         $a2, 0x4108
/* 0004EC 8013475C 3C074282 */  lui         $a3, 0x4282
/* 0004F0 80134760 0C007871 */  jal         func_8001E1C4
/* 0004F4 80134764 E7AA0018 */   swc1       $f10, 0x18($sp)
.L80134768:
/* 0004F8 80134768 44800000 */  mtc1        $zero, $f0
/* 0004FC 8013476C 3C0D8013 */  lui         $t5, %hi(D_80133DE4)
/* 000500 80134770 8DAD3DE4 */  lw          $t5, %lo(D_80133DE4)($t5)
/* 000504 80134774 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000508 80134778 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00050C 8013477C C5B0000C */  lwc1        $f16, 0xc($t5)
/* 000510 80134780 3C188015 */  lui         $t8, %hi(D_8014E5D0)
/* 000514 80134784 2718E5D0 */  addiu       $t8, $t8, %lo(D_8014E5D0)
/* 000518 80134788 44050000 */  mfc1        $a1, $f0
/* 00051C 8013478C 44060000 */  mfc1        $a2, $f0
/* 000520 80134790 44070000 */  mfc1        $a3, $f0
/* 000524 80134794 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000528 80134798 AFA00020 */  sw          $zero, 0x20($sp)
/* 00052C 8013479C 2404000A */  addiu       $a0, $zero, 0xa
/* 000530 801347A0 0C007871 */  jal         func_8001E1C4
/* 000534 801347A4 E7B00018 */   swc1       $f16, 0x18($sp)
/* 000538 801347A8 0C00CB07 */  jal         func_80032C1C
/* 00053C 801347AC 24040012 */   addiu      $a0, $zero, 0x12
/* 000540 801347B0 14400003 */  bne         $v0, $zero, .L801347C0
/* 000544 801347B4 3C108015 */   lui        $s0, %hi(D_8014EEA0)
/* 000548 801347B8 10000003 */  b           .L801347C8
/* 00054C 801347BC 2610EEA0 */   addiu      $s0, $s0, %lo(D_8014EEA0)
.L801347C0:
/* 000550 801347C0 3C108015 */  lui         $s0, %hi(D_80157C20)
/* 000554 801347C4 26107C20 */  addiu       $s0, $s0, %lo(D_80157C20)
.L801347C8:
/* 000558 801347C8 0C00EAC8 */  jal         func_8003AB20
/* 00055C 801347CC 24040028 */   addiu      $a0, $zero, 0x28
/* 000560 801347D0 00027880 */  sll         $t7, $v0, 2
/* 000564 801347D4 24160001 */  addiu       $s6, $zero, 0x1
/* 000568 801347D8 026FC821 */  addu        $t9, $s3, $t7
/* 00056C 801347DC 00408825 */  move        $s1, $v0
/* 000570 801347E0 0C00EADA */  jal         func_8003AB68
/* 000574 801347E4 AF360000 */   sw         $s6, 0x0($t9)
/* 000578 801347E8 00409025 */  move        $s2, $v0
/* 00057C 801347EC 0C00CB07 */  jal         func_80032C1C
/* 000580 801347F0 2404006F */   addiu      $a0, $zero, 0x6f
/* 000584 801347F4 2415000C */  addiu       $s5, $zero, 0xc
/* 000588 801347F8 02350019 */  multu       $s1, $s5
/* 00058C 801347FC 3C148013 */  lui         $s4, %hi(D_80134DC0)
/* 000590 80134800 26944DC0 */  addiu       $s4, $s4, %lo(D_80134DC0)
/* 000594 80134804 44809000 */  mtc1        $zero, $f18
/* 000598 80134808 44922000 */  mtc1        $s2, $f4
/* 00059C 8013480C 44805000 */  mtc1        $zero, $f10
/* 0005A0 80134810 24040005 */  addiu       $a0, $zero, 0x5
/* 0005A4 80134814 E7B20010 */  swc1        $f18, 0x10($sp)
/* 0005A8 80134818 468021A1 */  cvt.d.w     $f6, $f4
/* 0005AC 8013481C 00007012 */  mflo        $t6
/* 0005B0 80134820 028E1821 */  addu        $v1, $s4, $t6
/* 0005B4 80134824 8C650000 */  lw          $a1, 0x0($v1)
/* 0005B8 80134828 8C660004 */  lw          $a2, 0x4($v1)
/* 0005BC 8013482C 8C670008 */  lw          $a3, 0x8($v1)
/* 0005C0 80134830 06410005 */  bgez        $s2, .L80134848
/* 0005C4 80134834 3C0141F0 */   lui        $at, 0x41f0
/* 0005C8 80134838 44814800 */  mtc1        $at, $f9
/* 0005CC 8013483C 44804000 */  mtc1        $zero, $f8
/* 0005D0 80134840 00000000 */  nop
/* 0005D4 80134844 46283180 */  add.d       $f6, $f6, $f8
.L80134848:
/* 0005D8 80134848 3C013DF0 */  lui         $at, 0x3df0
/* 0005DC 8013484C 44815800 */  mtc1        $at, $f11
/* 0005E0 80134850 3C018016 */  lui         $at, %hi(D_80159484)
/* 0005E4 80134854 462A3402 */  mul.d       $f16, $f6, $f10
/* 0005E8 80134858 44823000 */  mtc1        $v0, $f6
/* 0005EC 8013485C C4339480 */  lwc1        $f19, %lo(D_80159480)($at)
/* 0005F0 80134860 C4329484 */  lwc1        $f18, %lo(D_80159484)($at)
/* 0005F4 80134864 3C0140A0 */  lui         $at, 0x40a0
/* 0005F8 80134868 46328102 */  mul.d       $f4, $f16, $f18
/* 0005FC 8013486C 468032A0 */  cvt.s.w     $f10, $f6
/* 000600 80134870 44818000 */  mtc1        $at, $f16
/* 000604 80134874 3C088013 */  lui         $t0, %hi(D_80133DE4)
/* 000608 80134878 8D083DE4 */  lw          $t0, %lo(D_80133DE4)($t0)
/* 00060C 8013487C 46105483 */  div.s       $f18, $f10, $f16
/* 000610 80134880 46202220 */  cvt.s.d     $f8, $f4
/* 000614 80134884 3C013FF0 */  lui         $at, 0x3ff0
/* 000618 80134888 E7A80014 */  swc1        $f8, 0x14($sp)
/* 00061C 8013488C 44804000 */  mtc1        $zero, $f8
/* 000620 80134890 44814800 */  mtc1        $at, $f9
/* 000624 80134894 C50A000C */  lwc1        $f10, 0xc($t0)
/* 000628 80134898 24090005 */  addiu       $t1, $zero, 0x5
/* 00062C 8013489C 46005421 */  cvt.d.s     $f16, $f10
/* 000630 801348A0 AFA90020 */  sw          $t1, 0x20($sp)
/* 000634 801348A4 AFB0001C */  sw          $s0, 0x1c($sp)
/* 000638 801348A8 46009121 */  cvt.d.s     $f4, $f18
/* 00063C 801348AC 46282180 */  add.d       $f6, $f4, $f8
/* 000640 801348B0 46303482 */  mul.d       $f18, $f6, $f16
/* 000644 801348B4 46209120 */  cvt.s.d     $f4, $f18
/* 000648 801348B8 0C007871 */  jal         func_8001E1C4
/* 00064C 801348BC E7A40018 */   swc1       $f4, 0x18($sp)
/* 000650 801348C0 3C048016 */  lui         $a0, %hi(D_80159404)
/* 000654 801348C4 24849404 */  addiu       $a0, $a0, %lo(D_80159404)
/* 000658 801348C8 0C002ED2 */  jal         func_8000BB48
/* 00065C 801348CC 02C02825 */   move       $a1, $s6
/* 000660 801348D0 0C04D132 */  jal         func_801344C8
/* 000664 801348D4 00000000 */   nop
/* 000668 801348D8 0C04D177 */  jal         func_801345DC
/* 00066C 801348DC 00000000 */   nop
/* 000670 801348E0 00008025 */  move        $s0, $zero
.L801348E4:
/* 000674 801348E4 0C00EAC8 */  jal         func_8003AB20
/* 000678 801348E8 24040028 */   addiu      $a0, $zero, 0x28
/* 00067C 801348EC 00025080 */  sll         $t2, $v0, 2
/* 000680 801348F0 026A5821 */  addu        $t3, $s3, $t2
/* 000684 801348F4 8D6C0000 */  lw          $t4, 0x0($t3)
/* 000688 801348F8 00408825 */  move        $s1, $v0
/* 00068C 801348FC 1580000C */  bne         $t4, $zero, .L80134930
/* 000690 80134900 2A010005 */   slti       $at, $s0, 0x5
/* 000694 80134904 00550019 */  multu       $v0, $s5
/* 000698 80134908 02002825 */  move        $a1, $s0
/* 00069C 8013490C 00006812 */  mflo        $t5
/* 0006A0 80134910 028D2021 */  addu        $a0, $s4, $t5
/* 0006A4 80134914 0C04D09C */  jal         func_80134270
/* 0006A8 80134918 00000000 */   nop
/* 0006AC 8013491C 0011C080 */  sll         $t8, $s1, 2
/* 0006B0 80134920 02787821 */  addu        $t7, $s3, $t8
/* 0006B4 80134924 ADF60000 */  sw          $s6, 0x0($t7)
/* 0006B8 80134928 26100001 */  addiu       $s0, $s0, 0x1
/* 0006BC 8013492C 2A010005 */  slti        $at, $s0, 0x5
.L80134930:
/* 0006C0 80134930 1420FFEC */  bne         $at, $zero, .L801348E4
/* 0006C4 80134934 00000000 */   nop
/* 0006C8 80134938 00008025 */  move        $s0, $zero
/* 0006CC 8013493C 00009025 */  move        $s2, $zero
.L80134940:
/* 0006D0 80134940 0C00CB07 */  jal         func_80032C1C
/* 0006D4 80134944 2604006A */   addiu      $a0, $s0, 0x6a
/* 0006D8 80134948 28410002 */  slti        $at, $v0, 0x2
/* 0006DC 8013494C 14200002 */  bne         $at, $zero, .L80134958
/* 0006E0 80134950 26100001 */   addiu      $s0, $s0, 0x1
/* 0006E4 80134954 26520001 */  addiu       $s2, $s2, 0x1
.L80134958:
/* 0006E8 80134958 2A010005 */  slti        $at, $s0, 0x5
/* 0006EC 8013495C 1420FFF8 */  bne         $at, $zero, .L80134940
/* 0006F0 80134960 00000000 */   nop
/* 0006F4 80134964 00008025 */  move        $s0, $zero
.L80134968:
/* 0006F8 80134968 0C00EAC8 */  jal         func_8003AB20
/* 0006FC 8013496C 24040028 */   addiu      $a0, $zero, 0x28
/* 000700 80134970 0002C880 */  sll         $t9, $v0, 2
/* 000704 80134974 02797021 */  addu        $t6, $s3, $t9
/* 000708 80134978 8DC80000 */  lw          $t0, 0x0($t6)
/* 00070C 8013497C 00408825 */  move        $s1, $v0
/* 000710 80134980 1500000D */  bne         $t0, $zero, .L801349B8
/* 000714 80134984 0212082A */   slt        $at, $s0, $s2
/* 000718 80134988 10200002 */  beq         $at, $zero, .L80134994
/* 00071C 8013498C 2405007A */   addiu      $a1, $zero, 0x7a
/* 000720 80134990 2405007B */  addiu       $a1, $zero, 0x7b
.L80134994:
/* 000724 80134994 02350019 */  multu       $s1, $s5
/* 000728 80134998 00004812 */  mflo        $t1
/* 00072C 8013499C 02892021 */  addu        $a0, $s4, $t1
/* 000730 801349A0 0C04D152 */  jal         func_80134548
/* 000734 801349A4 00000000 */   nop
/* 000738 801349A8 00115080 */  sll         $t2, $s1, 2
/* 00073C 801349AC 026A5821 */  addu        $t3, $s3, $t2
/* 000740 801349B0 AD760000 */  sw          $s6, 0x0($t3)
/* 000744 801349B4 26100001 */  addiu       $s0, $s0, 0x1
.L801349B8:
/* 000748 801349B8 2A01000A */  slti        $at, $s0, 0xa
/* 00074C 801349BC 1420FFEA */  bne         $at, $zero, .L80134968
/* 000750 801349C0 00000000 */   nop
/* 000754 801349C4 0C00AB39 */  jal         func_8002ACE4
/* 000758 801349C8 00000000 */   nop
/* 00075C 801349CC 24010008 */  addiu       $at, $zero, 0x8
/* 000760 801349D0 1041000B */  beq         $v0, $at, .L80134A00
/* 000764 801349D4 3C048015 */   lui        $a0, 0x8015
/* 000768 801349D8 3C048015 */  lui         $a0, %hi(D_80157DBC)
/* 00076C 801349DC 3C068015 */  lui         $a2, %hi(D_80157DB4)
/* 000770 801349E0 3C073F33 */  lui         $a3, 0x3f33
/* 000774 801349E4 34E73333 */  ori         $a3, $a3, 0x3333
/* 000778 801349E8 24C67DB4 */  addiu       $a2, $a2, %lo(D_80157DB4)
/* 00077C 801349EC 24847DBC */  addiu       $a0, $a0, %lo(D_80157DBC)
/* 000780 801349F0 0C0439DA */  jal         func_8010E768
/* 000784 801349F4 2405001C */   addiu      $a1, $zero, 0x1c
/* 000788 801349F8 10000008 */  b           .L80134A1C
/* 00078C 801349FC 00000000 */   nop
.L80134A00:
/* 000790 80134A00 3C068015 */  lui         $a2, %hi(D_80157DB4)
/* 000794 80134A04 3C073E99 */  lui         $a3, 0x3e99
/* 000798 80134A08 34E7999A */  ori         $a3, $a3, 0x999a
/* 00079C 80134A0C 24C67DB4 */  addiu       $a2, $a2, %lo(D_80157DB4)
/* 0007A0 80134A10 24847DBC */  addiu       $a0, $a0, 0x7dbc
/* 0007A4 80134A14 0C0439DA */  jal         func_8010E768
/* 0007A8 80134A18 2405001C */   addiu      $a1, $zero, 0x1c
.L80134A1C:
/* 0007AC 80134A1C 0C00CB07 */  jal         func_80032C1C
/* 0007B0 80134A20 24040012 */   addiu      $a0, $zero, 0x12
/* 0007B4 80134A24 1440000F */  bne         $v0, $zero, .L80134A64
/* 0007B8 80134A28 3C018016 */   lui        $at, %hi(D_80159488)
/* 0007BC 80134A2C C42C9488 */  lwc1        $f12, %lo(D_80159488)($at)
/* 0007C0 80134A30 3C014100 */  lui         $at, 0x4100
/* 0007C4 80134A34 44817000 */  mtc1        $at, $f14
/* 0007C8 80134A38 3C064309 */  lui         $a2, 0x4309
/* 0007CC 80134A3C 34C67852 */  ori         $a2, $a2, 0x7852
/* 0007D0 80134A40 0C007C44 */  jal         func_8001F110
/* 0007D4 80134A44 24070090 */   addiu      $a3, $zero, 0x90
/* 0007D8 80134A48 3C018016 */  lui         $at, %hi(D_8015948C)
/* 0007DC 80134A4C C42C948C */  lwc1        $f12, %lo(D_8015948C)($at)
/* 0007E0 80134A50 3C018016 */  lui         $at, %hi(D_80159490)
/* 0007E4 80134A54 C42E9490 */  lwc1        $f14, %lo(D_80159490)($at)
/* 0007E8 80134A58 3C064379 */  lui         $a2, 0x4379
/* 0007EC 80134A5C 0C007C44 */  jal         func_8001F110
/* 0007F0 80134A60 2407008E */   addiu      $a3, $zero, 0x8e
.L80134A64:
/* 0007F4 80134A64 8FBF004C */  lw          $ra, 0x4c($sp)
/* 0007F8 80134A68 8FB00030 */  lw          $s0, 0x30($sp)
/* 0007FC 80134A6C 8FB10034 */  lw          $s1, 0x34($sp)
/* 000800 80134A70 8FB20038 */  lw          $s2, 0x38($sp)
/* 000804 80134A74 8FB3003C */  lw          $s3, 0x3c($sp)
/* 000808 80134A78 8FB40040 */  lw          $s4, 0x40($sp)
/* 00080C 80134A7C 8FB50044 */  lw          $s5, 0x44($sp)
/* 000810 80134A80 8FB60048 */  lw          $s6, 0x48($sp)
/* 000814 80134A84 03E00008 */  jr          $ra
/* 000818 80134A88 27BD0110 */   addiu      $sp, $sp, 0x110

glabel func_80134A8C # 6
/* 00081C 80134A8C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 000820 80134A90 AFB2003C */  sw          $s2, 0x3c($sp)
/* 000824 80134A94 AFB10038 */  sw          $s1, 0x38($sp)
/* 000828 80134A98 E7B4002C */  swc1        $f20, 0x2c($sp)
/* 00082C 80134A9C AFB30040 */  sw          $s3, 0x40($sp)
/* 000830 80134AA0 AFB00034 */  sw          $s0, 0x34($sp)
/* 000834 80134AA4 3C118013 */  lui         $s1, %hi(D_80133DE4)
/* 000838 80134AA8 3C128015 */  lui         $s2, %hi(D_8014F348)
/* 00083C 80134AAC 4480A000 */  mtc1        $zero, $f20
/* 000840 80134AB0 AFBF0044 */  sw          $ra, 0x44($sp)
/* 000844 80134AB4 E7B50028 */  swc1        $f21, 0x28($sp)
/* 000848 80134AB8 2652F348 */  addiu       $s2, $s2, %lo(D_8014F348)
/* 00084C 80134ABC 26313DE4 */  addiu       $s1, $s1, %lo(D_80133DE4)
/* 000850 80134AC0 00008025 */  move        $s0, $zero
/* 000854 80134AC4 24130005 */  addiu       $s3, $zero, 0x5
.L80134AC8:
/* 000858 80134AC8 8E2E0000 */  lw          $t6, 0x0($s1)
/* 00085C 80134ACC E7B40010 */  swc1        $f20, 0x10($sp)
/* 000860 80134AD0 E7B40014 */  swc1        $f20, 0x14($sp)
/* 000864 80134AD4 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000868 80134AD8 4405A000 */  mfc1        $a1, $f20
/* 00086C 80134ADC 4406A000 */  mfc1        $a2, $f20
/* 000870 80134AE0 4407A000 */  mfc1        $a3, $f20
/* 000874 80134AE4 AFB00020 */  sw          $s0, 0x20($sp)
/* 000878 80134AE8 AFB2001C */  sw          $s2, 0x1c($sp)
/* 00087C 80134AEC 24040007 */  addiu       $a0, $zero, 0x7
/* 000880 80134AF0 0C007871 */  jal         func_8001E1C4
/* 000884 80134AF4 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000888 80134AF8 26100001 */  addiu       $s0, $s0, 0x1
/* 00088C 80134AFC 1613FFF2 */  bne         $s0, $s3, .L80134AC8
/* 000890 80134B00 00000000 */   nop
/* 000894 80134B04 8FBF0044 */  lw          $ra, 0x44($sp)
/* 000898 80134B08 C7B50028 */  lwc1        $f21, 0x28($sp)
/* 00089C 80134B0C C7B4002C */  lwc1        $f20, 0x2c($sp)
/* 0008A0 80134B10 8FB00034 */  lw          $s0, 0x34($sp)
/* 0008A4 80134B14 8FB10038 */  lw          $s1, 0x38($sp)
/* 0008A8 80134B18 8FB2003C */  lw          $s2, 0x3c($sp)
/* 0008AC 80134B1C 8FB30040 */  lw          $s3, 0x40($sp)
/* 0008B0 80134B20 03E00008 */  jr          $ra
/* 0008B4 80134B24 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80134B28 # 7
/* 0008B8 80134B28 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0008BC 80134B2C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0008C0 80134B30 0C00CB07 */  jal         func_80032C1C
/* 0008C4 80134B34 24040064 */   addiu      $a0, $zero, 0x64
/* 0008C8 80134B38 10400005 */  beq         $v0, $zero, .L80134B50
/* 0008CC 80134B3C 00000000 */   nop
/* 0008D0 80134B40 0C04D2A3 */  jal         func_80134A8C
/* 0008D4 80134B44 00000000 */   nop
/* 0008D8 80134B48 10000004 */  b           .L80134B5C
/* 0008DC 80134B4C 8FBF0014 */   lw         $ra, 0x14($sp)
.L80134B50:
/* 0008E0 80134B50 0C04D196 */  jal         func_80134658
/* 0008E4 80134B54 00000000 */   nop
/* 0008E8 80134B58 8FBF0014 */  lw          $ra, 0x14($sp)
.L80134B5C:
/* 0008EC 80134B5C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0008F0 80134B60 03E00008 */  jr          $ra
/* 0008F4 80134B64 00000000 */   nop

glabel func_80134B68 # 8
/* 0008F8 80134B68 3C014024 */  lui         $at, 0x4024
/* 0008FC 80134B6C 44813800 */  mtc1        $at, $f7
/* 000900 80134B70 44803000 */  mtc1        $zero, $f6
/* 000904 80134B74 46007121 */  cvt.d.s     $f4, $f14
/* 000908 80134B78 00000000 */  nop
/* 00090C 80134B7C 46262203 */  div.d       $f8, $f4, $f6
/* 000910 80134B80 AFA60008 */  sw          $a2, 0x8($sp)
/* 000914 80134B84 444EF800 */  cfc1        $t6, $31
/* 000918 80134B88 00000000 */  nop
/* 00091C 80134B8C 35C10003 */  ori         $at, $t6, 0x3
/* 000920 80134B90 38210002 */  xori        $at, $at, 0x2
/* 000924 80134B94 44C1F800 */  ctc1        $at, $31
/* 000928 80134B98 00000000 */  nop
/* 00092C 80134B9C 462042A4 */  cvt.w.d     $f10, $f8
/* 000930 80134BA0 44025000 */  mfc1        $v0, $f10
/* 000934 80134BA4 44CEF800 */  ctc1        $t6, $31
/* 000938 80134BA8 04400027 */  bltz        $v0, .L80134C48
/* 00093C 80134BAC 28410010 */   slti       $at, $v0, 0x10
/* 000940 80134BB0 10200025 */  beq         $at, $zero, .L80134C48
/* 000944 80134BB4 3C014034 */   lui        $at, 0x4034
/* 000948 80134BB8 44810800 */  mtc1        $at, $f1
/* 00094C 80134BBC 44800000 */  mtc1        $zero, $f0
/* 000950 80134BC0 46006421 */  cvt.d.s     $f16, $f12
/* 000954 80134BC4 00000000 */  nop
/* 000958 80134BC8 46208483 */  div.d       $f18, $f16, $f0
/* 00095C 80134BCC 444FF800 */  cfc1        $t7, $31
/* 000960 80134BD0 00000000 */  nop
/* 000964 80134BD4 35E10003 */  ori         $at, $t7, 0x3
/* 000968 80134BD8 38210002 */  xori        $at, $at, 0x2
/* 00096C 80134BDC 44C1F800 */  ctc1        $at, $31
/* 000970 80134BE0 00000000 */  nop
/* 000974 80134BE4 46209124 */  cvt.w.d     $f4, $f18
/* 000978 80134BE8 44032000 */  mfc1        $v1, $f4
/* 00097C 80134BEC 44CFF800 */  ctc1        $t7, $31
/* 000980 80134BF0 04600015 */  bltz        $v1, .L80134C48
/* 000984 80134BF4 28610010 */   slti       $at, $v1, 0x10
/* 000988 80134BF8 10200013 */  beq         $at, $zero, .L80134C48
/* 00098C 80134BFC 00000000 */   nop
/* 000990 80134C00 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000994 80134C04 00000000 */  nop
/* 000998 80134C08 46003221 */  cvt.d.s     $f8, $f6
/* 00099C 80134C0C 00000000 */  nop
/* 0009A0 80134C10 46204283 */  div.d       $f10, $f8, $f0
/* 0009A4 80134C14 4458F800 */  cfc1        $t8, $31
/* 0009A8 80134C18 00000000 */  nop
/* 0009AC 80134C1C 37010003 */  ori         $at, $t8, 0x3
/* 0009B0 80134C20 38210002 */  xori        $at, $at, 0x2
/* 0009B4 80134C24 44C1F800 */  ctc1        $at, $31
/* 0009B8 80134C28 00000000 */  nop
/* 0009BC 80134C2C 46205424 */  cvt.w.d     $f16, $f10
/* 0009C0 80134C30 44048000 */  mfc1        $a0, $f16
/* 0009C4 80134C34 44D8F800 */  ctc1        $t8, $31
/* 0009C8 80134C38 04800003 */  bltz        $a0, .L80134C48
/* 0009CC 80134C3C 28810010 */   slti       $at, $a0, 0x10
/* 0009D0 80134C40 14200003 */  bne         $at, $zero, .L80134C50
/* 0009D4 80134C44 0002C880 */   sll        $t9, $v0, 2
.L80134C48:
/* 0009D8 80134C48 03E00008 */  jr          $ra
/* 0009DC 80134C4C 00001025 */   move       $v0, $zero
.L80134C50:
/* 0009E0 80134C50 3C058019 */  lui         $a1, %hi(D_80189430)
/* 0009E4 80134C54 00B92821 */  addu        $a1, $a1, $t9
/* 0009E8 80134C58 8CA59430 */  lw          $a1, %lo(D_80189430)($a1)
/* 0009EC 80134C5C 00044980 */  sll         $t1, $a0, 6
/* 0009F0 80134C60 14A00003 */  bne         $a1, $zero, .L80134C70
/* 0009F4 80134C64 00A95021 */   addu       $t2, $a1, $t1
/* 0009F8 80134C68 03E00008 */  jr          $ra
/* 0009FC 80134C6C 00001025 */   move       $v0, $zero
.L80134C70:
/* 000A00 80134C70 00035880 */  sll         $t3, $v1, 2
/* 000A04 80134C74 014B6021 */  addu        $t4, $t2, $t3
/* 000A08 80134C78 8D820000 */  lw          $v0, 0x0($t4)
/* 000A0C 80134C7C 00000000 */  nop
/* 000A10 80134C80 03E00008 */  jr          $ra
/* 000A14 80134C84 00000000 */   nop
/* 000A18 80134C88 00000000 */  nop
/* 000A1C 80134C8C 00000000 */  nop