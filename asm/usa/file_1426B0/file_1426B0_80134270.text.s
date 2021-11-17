.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270 # 0
/* 000000 80134270 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80134274 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 80134278 3C048015 */  lui         $a0, %hi(D_8014CF50)
/* 00000C 8013427C 3C058014 */  lui         $a1, %hi(D_80144BC4)
/* 000010 80134280 24A54BC4 */  addiu       $a1, $a1, %lo(D_80144BC4)
/* 000014 80134284 0C0436DA */  jal         func_8010DB68
/* 000018 80134288 2484CF50 */   addiu      $a0, $a0, %lo(D_8014CF50)
/* 00001C 8013428C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000020 80134290 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000024 80134294 03E00008 */  jr          $ra
/* 000028 80134298 00000000 */   nop

glabel func_8013429C # 1
/* 00002C 8013429C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000030 801342A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000034 801342A4 3C048013 */  lui         $a0, %hi(D_801346C0)
/* 000038 801342A8 3C058014 */  lui         $a1, %hi(D_80144F1C)
/* 00003C 801342AC 3C068014 */  lui         $a2, %hi(D_80144FDC)
/* 000040 801342B0 24C64FDC */  addiu       $a2, $a2, %lo(D_80144FDC)
/* 000044 801342B4 24A54F1C */  addiu       $a1, $a1, %lo(D_80144F1C)
/* 000048 801342B8 248446C0 */  addiu       $a0, $a0, %lo(D_801346C0)
/* 00004C 801342BC 0C043722 */  jal         func_8010DC88
/* 000050 801342C0 00003825 */   move       $a3, $zero
/* 000054 801342C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000058 801342C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00005C 801342CC 03E00008 */  jr          $ra
/* 000060 801342D0 00000000 */   nop

glabel func_801342D4 # 2
/* 000064 801342D4 3C014320 */  lui         $at, 0x4320
/* 000068 801342D8 44812000 */  mtc1        $at, $f4
/* 00006C 801342DC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000070 801342E0 3C0140F0 */  lui         $at, 0x40f0
/* 000074 801342E4 44813000 */  mtc1        $at, $f6
/* 000078 801342E8 3C014383 */  lui         $at, 0x4383
/* 00007C 801342EC 44814000 */  mtc1        $at, $f8
/* 000080 801342F0 3C0E8015 */  lui         $t6, %hi(D_8014E9F4)
/* 000084 801342F4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000088 801342F8 25CEE9F4 */  addiu       $t6, $t6, %lo(D_8014E9F4)
/* 00008C 801342FC AFAE0010 */  sw          $t6, 0x10($sp)
/* 000090 80134300 27A40024 */  addiu       $a0, $sp, 0x24
/* 000094 80134304 24050001 */  addiu       $a1, $zero, 0x1
/* 000098 80134308 24060004 */  addiu       $a2, $zero, 0x4
/* 00009C 8013430C 00003825 */  move        $a3, $zero
/* 0000A0 80134310 E7A40024 */  swc1        $f4, 0x24($sp)
/* 0000A4 80134314 E7A60028 */  swc1        $f6, 0x28($sp)
/* 0000A8 80134318 0C044A50 */  jal         func_80112940
/* 0000AC 8013431C E7A8002C */   swc1       $f8, 0x2c($sp)
/* 0000B0 80134320 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0000B4 80134324 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0000B8 80134328 03E00008 */  jr          $ra
/* 0000BC 8013432C 00000000 */   nop

glabel func_80134330 # 3
/* 0000C0 80134330 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0000C4 80134334 E7B4001C */  swc1        $f20, 0x1c($sp)
/* 0000C8 80134338 4480A000 */  mtc1        $zero, $f20
/* 0000CC 8013433C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0000D0 80134340 240E0001 */  addiu       $t6, $zero, 0x1
/* 0000D4 80134344 4406A000 */  mfc1        $a2, $f20
/* 0000D8 80134348 4407A000 */  mfc1        $a3, $f20
/* 0000DC 8013434C E7B50018 */  swc1        $f21, 0x18($sp)
/* 0000E0 80134350 AFAE0014 */  sw          $t6, 0x14($sp)
/* 0000E4 80134354 4600A306 */  mov.s       $f12, $f20
/* 0000E8 80134358 4600A386 */  mov.s       $f14, $f20
/* 0000EC 8013435C 0C044E51 */  jal         func_80113944
/* 0000F0 80134360 E7B40010 */   swc1       $f20, 0x10($sp)
/* 0000F4 80134364 00402025 */  move        $a0, $v0
/* 0000F8 80134368 0C00BC9F */  jal         func_8002F27C
/* 0000FC 8013436C 00002825 */   move       $a1, $zero
/* 000100 80134370 4406A000 */  mfc1        $a2, $f20
/* 000104 80134374 4407A000 */  mfc1        $a3, $f20
/* 000108 80134378 240F0005 */  addiu       $t7, $zero, 0x5
/* 00010C 8013437C AFAF0014 */  sw          $t7, 0x14($sp)
/* 000110 80134380 4600A306 */  mov.s       $f12, $f20
/* 000114 80134384 4600A386 */  mov.s       $f14, $f20
/* 000118 80134388 0C044E51 */  jal         func_80113944
/* 00011C 8013438C E7B40010 */   swc1       $f20, 0x10($sp)
/* 000120 80134390 00402025 */  move        $a0, $v0
/* 000124 80134394 0C00BC9F */  jal         func_8002F27C
/* 000128 80134398 00002825 */   move       $a1, $zero
/* 00012C 8013439C 4406A000 */  mfc1        $a2, $f20
/* 000130 801343A0 4407A000 */  mfc1        $a3, $f20
/* 000134 801343A4 24180006 */  addiu       $t8, $zero, 0x6
/* 000138 801343A8 AFB80014 */  sw          $t8, 0x14($sp)
/* 00013C 801343AC 4600A306 */  mov.s       $f12, $f20
/* 000140 801343B0 4600A386 */  mov.s       $f14, $f20
/* 000144 801343B4 0C044E51 */  jal         func_80113944
/* 000148 801343B8 E7B40010 */   swc1       $f20, 0x10($sp)
/* 00014C 801343BC 00402025 */  move        $a0, $v0
/* 000150 801343C0 0C00BC9F */  jal         func_8002F27C
/* 000154 801343C4 00002825 */   move       $a1, $zero
/* 000158 801343C8 4406A000 */  mfc1        $a2, $f20
/* 00015C 801343CC 4407A000 */  mfc1        $a3, $f20
/* 000160 801343D0 24190007 */  addiu       $t9, $zero, 0x7
/* 000164 801343D4 AFB90014 */  sw          $t9, 0x14($sp)
/* 000168 801343D8 4600A306 */  mov.s       $f12, $f20
/* 00016C 801343DC 4600A386 */  mov.s       $f14, $f20
/* 000170 801343E0 0C044E51 */  jal         func_80113944
/* 000174 801343E4 E7B40010 */   swc1       $f20, 0x10($sp)
/* 000178 801343E8 00402025 */  move        $a0, $v0
/* 00017C 801343EC 0C00BC9F */  jal         func_8002F27C
/* 000180 801343F0 00002825 */   move       $a1, $zero
/* 000184 801343F4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000188 801343F8 C7B50018 */  lwc1        $f21, 0x18($sp)
/* 00018C 801343FC C7B4001C */  lwc1        $f20, 0x1c($sp)
/* 000190 80134400 03E00008 */  jr          $ra
/* 000194 80134404 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80134408 # 4
/* 000198 80134408 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00019C 8013440C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0001A0 80134410 0C04D09C */  jal         func_80134270
/* 0001A4 80134414 00000000 */   nop
/* 0001A8 80134418 0C04D0A7 */  jal         func_8013429C
/* 0001AC 8013441C 00000000 */   nop
/* 0001B0 80134420 0C00AB39 */  jal         func_8002ACE4
/* 0001B4 80134424 00000000 */   nop
/* 0001B8 80134428 24010004 */  addiu       $at, $zero, 0x4
/* 0001BC 8013442C 14410003 */  bne         $v0, $at, .L8013443C
/* 0001C0 80134430 00000000 */   nop
/* 0001C4 80134434 0C04D0CC */  jal         func_80134330
/* 0001C8 80134438 00000000 */   nop
.L8013443C:
/* 0001CC 8013443C 0C04D0B5 */  jal         func_801342D4
/* 0001D0 80134440 00000000 */   nop
/* 0001D4 80134444 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0001D8 80134448 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0001DC 8013444C 03E00008 */  jr          $ra
/* 0001E0 80134450 00000000 */   nop

glabel func_80134454 # 5
/* 0001E4 80134454 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0001E8 80134458 AFBF0064 */  sw          $ra, 0x64($sp)
/* 0001EC 8013445C AFB30060 */  sw          $s3, 0x60($sp)
/* 0001F0 80134460 AFB2005C */  sw          $s2, 0x5c($sp)
/* 0001F4 80134464 AFB10058 */  sw          $s1, 0x58($sp)
/* 0001F8 80134468 AFB00054 */  sw          $s0, 0x54($sp)
/* 0001FC 8013446C E7BD0048 */  swc1        $f29, 0x48($sp)
/* 000200 80134470 E7BC004C */  swc1        $f28, 0x4c($sp)
/* 000204 80134474 E7BB0040 */  swc1        $f27, 0x40($sp)
/* 000208 80134478 E7BA0044 */  swc1        $f26, 0x44($sp)
/* 00020C 8013447C E7B90038 */  swc1        $f25, 0x38($sp)
/* 000210 80134480 E7B8003C */  swc1        $f24, 0x3c($sp)
/* 000214 80134484 E7B70030 */  swc1        $f23, 0x30($sp)
/* 000218 80134488 E7B60034 */  swc1        $f22, 0x34($sp)
/* 00021C 8013448C E7B50028 */  swc1        $f21, 0x28($sp)
/* 000220 80134490 0C04D0A7 */  jal         func_8013429C
/* 000224 80134494 E7B4002C */   swc1       $f20, 0x2c($sp)
/* 000228 80134498 3C014357 */  lui         $at, 0x4357
/* 00022C 8013449C 4481C000 */  mtc1        $at, $f24
/* 000230 801344A0 3C013FC0 */  lui         $at, 0x3fc0
/* 000234 801344A4 4481B000 */  mtc1        $at, $f22
/* 000238 801344A8 3C014334 */  lui         $at, 0x4334
/* 00023C 801344AC 3C128015 */  lui         $s2, %hi(D_8014CF3C)
/* 000240 801344B0 3C118013 */  lui         $s1, %hi(D_80133DE4)
/* 000244 801344B4 4481A000 */  mtc1        $at, $f20
/* 000248 801344B8 4480E000 */  mtc1        $zero, $f28
/* 00024C 801344BC 4480D000 */  mtc1        $zero, $f26
/* 000250 801344C0 26313DE4 */  addiu       $s1, $s1, %lo(D_80133DE4)
/* 000254 801344C4 2652CF3C */  addiu       $s2, $s2, %lo(D_8014CF3C)
/* 000258 801344C8 00008025 */  move        $s0, $zero
/* 00025C 801344CC 24130006 */  addiu       $s3, $zero, 0x6
.L801344D0:
/* 000260 801344D0 8E2E0000 */  lw          $t6, 0x0($s1)
/* 000264 801344D4 E7BA0010 */  swc1        $f26, 0x10($sp)
/* 000268 801344D8 E7BC0014 */  swc1        $f28, 0x14($sp)
/* 00026C 801344DC C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000270 801344E0 4405A000 */  mfc1        $a1, $f20
/* 000274 801344E4 4406B000 */  mfc1        $a2, $f22
/* 000278 801344E8 4407C000 */  mfc1        $a3, $f24
/* 00027C 801344EC AFB00020 */  sw          $s0, 0x20($sp)
/* 000280 801344F0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 000284 801344F4 24040024 */  addiu       $a0, $zero, 0x24
/* 000288 801344F8 0C007871 */  jal         func_8001E1C4
/* 00028C 801344FC E7A40018 */   swc1       $f4, 0x18($sp)
/* 000290 80134500 26100001 */  addiu       $s0, $s0, 0x1
/* 000294 80134504 1613FFF2 */  bne         $s0, $s3, .L801344D0
/* 000298 80134508 00000000 */   nop
/* 00029C 8013450C 8FBF0064 */  lw          $ra, 0x64($sp)
/* 0002A0 80134510 C7B50028 */  lwc1        $f21, 0x28($sp)
/* 0002A4 80134514 C7B4002C */  lwc1        $f20, 0x2c($sp)
/* 0002A8 80134518 C7B70030 */  lwc1        $f23, 0x30($sp)
/* 0002AC 8013451C C7B60034 */  lwc1        $f22, 0x34($sp)
/* 0002B0 80134520 C7B90038 */  lwc1        $f25, 0x38($sp)
/* 0002B4 80134524 C7B8003C */  lwc1        $f24, 0x3c($sp)
/* 0002B8 80134528 C7BB0040 */  lwc1        $f27, 0x40($sp)
/* 0002BC 8013452C C7BA0044 */  lwc1        $f26, 0x44($sp)
/* 0002C0 80134530 C7BD0048 */  lwc1        $f29, 0x48($sp)
/* 0002C4 80134534 C7BC004C */  lwc1        $f28, 0x4c($sp)
/* 0002C8 80134538 8FB00054 */  lw          $s0, 0x54($sp)
/* 0002CC 8013453C 8FB10058 */  lw          $s1, 0x58($sp)
/* 0002D0 80134540 8FB2005C */  lw          $s2, 0x5c($sp)
/* 0002D4 80134544 8FB30060 */  lw          $s3, 0x60($sp)
/* 0002D8 80134548 03E00008 */  jr          $ra
/* 0002DC 8013454C 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_80134550 # 6
/* 0002E0 80134550 3C0E800F */  lui         $t6, %hi(D_800F0B70)
/* 0002E4 80134554 8DCE0B70 */  lw          $t6, %lo(D_800F0B70)($t6)
/* 0002E8 80134558 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0002EC 8013455C 24010002 */  addiu       $at, $zero, 0x2
/* 0002F0 80134560 15C10005 */  bne         $t6, $at, .L80134578
/* 0002F4 80134564 AFBF0014 */   sw         $ra, 0x14($sp)
/* 0002F8 80134568 0C04D115 */  jal         func_80134454
/* 0002FC 8013456C 00000000 */   nop
/* 000300 80134570 10000004 */  b           .L80134584
/* 000304 80134574 8FBF0014 */   lw         $ra, 0x14($sp)
.L80134578:
/* 000308 80134578 0C04D102 */  jal         func_80134408
/* 00030C 8013457C 00000000 */   nop
/* 000310 80134580 8FBF0014 */  lw          $ra, 0x14($sp)
.L80134584:
/* 000314 80134584 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000318 80134588 03E00008 */  jr          $ra
/* 00031C 8013458C 00000000 */   nop

glabel func_80134590 # 7
/* 000320 80134590 3C014014 */  lui         $at, 0x4014
/* 000324 80134594 44813800 */  mtc1        $at, $f7
/* 000328 80134598 44803000 */  mtc1        $zero, $f6
/* 00032C 8013459C 46007121 */  cvt.d.s     $f4, $f14
/* 000330 801345A0 00000000 */  nop
/* 000334 801345A4 46262203 */  div.d       $f8, $f4, $f6
/* 000338 801345A8 AFA60008 */  sw          $a2, 0x8($sp)
/* 00033C 801345AC 444EF800 */  cfc1        $t6, $31
/* 000340 801345B0 00000000 */  nop
/* 000344 801345B4 35C10003 */  ori         $at, $t6, 0x3
/* 000348 801345B8 38210002 */  xori        $at, $at, 0x2
/* 00034C 801345BC 44C1F800 */  ctc1        $at, $31
/* 000350 801345C0 00000000 */  nop
/* 000354 801345C4 462042A4 */  cvt.w.d     $f10, $f8
/* 000358 801345C8 44025000 */  mfc1        $v0, $f10
/* 00035C 801345CC 44CEF800 */  ctc1        $t6, $31
/* 000360 801345D0 04400027 */  bltz        $v0, .L80134670
/* 000364 801345D4 28410020 */   slti       $at, $v0, 0x20
/* 000368 801345D8 10200025 */  beq         $at, $zero, .L80134670
/* 00036C 801345DC 3C014024 */   lui        $at, 0x4024
/* 000370 801345E0 44810800 */  mtc1        $at, $f1
/* 000374 801345E4 44800000 */  mtc1        $zero, $f0
/* 000378 801345E8 46006421 */  cvt.d.s     $f16, $f12
/* 00037C 801345EC 00000000 */  nop
/* 000380 801345F0 46208483 */  div.d       $f18, $f16, $f0
/* 000384 801345F4 444FF800 */  cfc1        $t7, $31
/* 000388 801345F8 00000000 */  nop
/* 00038C 801345FC 35E10003 */  ori         $at, $t7, 0x3
/* 000390 80134600 38210002 */  xori        $at, $at, 0x2
/* 000394 80134604 44C1F800 */  ctc1        $at, $31
/* 000398 80134608 00000000 */  nop
/* 00039C 8013460C 46209124 */  cvt.w.d     $f4, $f18
/* 0003A0 80134610 44032000 */  mfc1        $v1, $f4
/* 0003A4 80134614 44CFF800 */  ctc1        $t7, $31
/* 0003A8 80134618 04600015 */  bltz        $v1, .L80134670
/* 0003AC 8013461C 28610020 */   slti       $at, $v1, 0x20
/* 0003B0 80134620 10200013 */  beq         $at, $zero, .L80134670
/* 0003B4 80134624 00000000 */   nop
/* 0003B8 80134628 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 0003BC 8013462C 00000000 */  nop
/* 0003C0 80134630 46003221 */  cvt.d.s     $f8, $f6
/* 0003C4 80134634 00000000 */  nop
/* 0003C8 80134638 46204283 */  div.d       $f10, $f8, $f0
/* 0003CC 8013463C 4458F800 */  cfc1        $t8, $31
/* 0003D0 80134640 00000000 */  nop
/* 0003D4 80134644 37010003 */  ori         $at, $t8, 0x3
/* 0003D8 80134648 38210002 */  xori        $at, $at, 0x2
/* 0003DC 8013464C 44C1F800 */  ctc1        $at, $31
/* 0003E0 80134650 00000000 */  nop
/* 0003E4 80134654 46205424 */  cvt.w.d     $f16, $f10
/* 0003E8 80134658 44048000 */  mfc1        $a0, $f16
/* 0003EC 8013465C 44D8F800 */  ctc1        $t8, $31
/* 0003F0 80134660 04800003 */  bltz        $a0, .L80134670
/* 0003F4 80134664 28810020 */   slti       $at, $a0, 0x20
/* 0003F8 80134668 14200003 */  bne         $at, $zero, .L80134678
/* 0003FC 8013466C 0002C880 */   sll        $t9, $v0, 2
.L80134670:
/* 000400 80134670 03E00008 */  jr          $ra
/* 000404 80134674 00001025 */   move       $v0, $zero
.L80134678:
/* 000408 80134678 3C058017 */  lui         $a1, %hi(D_8017467C)
/* 00040C 8013467C 00B92821 */  addu        $a1, $a1, $t9
/* 000410 80134680 8CA5467C */  lw          $a1, %lo(D_8017467C)($a1)
/* 000414 80134684 000449C0 */  sll         $t1, $a0, 7
/* 000418 80134688 14A00003 */  bne         $a1, $zero, .L80134698
/* 00041C 8013468C 00A95021 */   addu       $t2, $a1, $t1
/* 000420 80134690 03E00008 */  jr          $ra
/* 000424 80134694 00001025 */   move       $v0, $zero
.L80134698:
/* 000428 80134698 00035880 */  sll         $t3, $v1, 2
/* 00042C 8013469C 014B6021 */  addu        $t4, $t2, $t3
/* 000430 801346A0 8D820000 */  lw          $v0, 0x0($t4)
/* 000434 801346A4 00000000 */  nop
/* 000438 801346A8 03E00008 */  jr          $ra
/* 00043C 801346AC 00000000 */   nop
