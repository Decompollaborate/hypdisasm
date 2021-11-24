.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_3F6EF0 # 0
/* 000000 80134270 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 000004 80134274 AFBF0044 */  sw          $ra, 0x44($sp)
/* 000008 80134278 AFA40050 */  sw          $a0, 0x50($sp)
/* 00000C 8013427C AFB50040 */  sw          $s5, 0x40($sp)
/* 000010 80134280 AFB4003C */  sw          $s4, 0x3c($sp)
/* 000014 80134284 AFB30038 */  sw          $s3, 0x38($sp)
/* 000018 80134288 AFB20034 */  sw          $s2, 0x34($sp)
/* 00001C 8013428C AFB10030 */  sw          $s1, 0x30($sp)
/* 000020 80134290 AFB0002C */  sw          $s0, 0x2c($sp)
/* 000024 80134294 0C00CB07 */  jal         func_80032C1C
/* 000028 80134298 2404001F */   addiu      $a0, $zero, 0x1f
/* 00002C 8013429C 10400003 */  beqz        $v0, .L801342AC
/* 000030 801342A0 24100001 */   addiu      $s0, $zero, 0x1
/* 000034 801342A4 10000001 */  b           .L801342AC
/* 000038 801342A8 00008025 */   move       $s0, $zero
.L801342AC:
/* 00003C 801342AC 0C00EADA */  jal         func_8003AB68
/* 000040 801342B0 00000000 */   nop
/* 000044 801342B4 44822000 */  mtc1        $v0, $f4
/* 000048 801342B8 04410006 */  bgez        $v0, .L801342D4
/* 00004C 801342BC 468021A1 */   cvt.d.w    $f6, $f4
/* 000050 801342C0 3C0141F0 */  lui         $at, 0x41f0
/* 000054 801342C4 44814800 */  mtc1        $at, $f9
/* 000058 801342C8 44804000 */  mtc1        $zero, $f8
/* 00005C 801342CC 00000000 */  nop
/* 000060 801342D0 46283180 */  add.d       $f6, $f6, $f8
.L801342D4:
/* 000064 801342D4 3C013DF0 */  lui         $at, 0x3df0
/* 000068 801342D8 44815800 */  mtc1        $at, $f11
/* 00006C 801342DC 44805000 */  mtc1        $zero, $f10
/* 000070 801342E0 3C014059 */  lui         $at, 0x4059
/* 000074 801342E4 462A3402 */  mul.d       $f16, $f6, $f10
/* 000078 801342E8 44819800 */  mtc1        $at, $f19
/* 00007C 801342EC 44809000 */  mtc1        $zero, $f18
/* 000080 801342F0 240F0005 */  addiu       $t7, $zero, 0x5
/* 000084 801342F4 01F09023 */  subu        $s2, $t7, $s0
/* 000088 801342F8 46328102 */  mul.d       $f4, $f16, $f18
/* 00008C 801342FC 3C158014 */  lui         $s5, %hi(D_80145A30)
/* 000090 80134300 3C148014 */  lui         $s4, %hi(D_80145A08)
/* 000094 80134304 26945A08 */  addiu       $s4, $s4, %lo(D_80145A08)
/* 000098 80134308 26B55A30 */  addiu       $s5, $s5, %lo(D_80145A30)
/* 00009C 8013430C 444EF800 */  cfc1        $t6, $31
/* 0000A0 80134310 00008025 */  move        $s0, $zero
/* 0000A4 80134314 35C10003 */  ori         $at, $t6, 0x3
/* 0000A8 80134318 38210002 */  xori        $at, $at, 0x2
/* 0000AC 8013431C 44C1F800 */  ctc1        $at, $31
/* 0000B0 80134320 00008825 */  move        $s1, $zero
/* 0000B4 80134324 46202224 */  cvt.w.d     $f8, $f4
/* 0000B8 80134328 44134000 */  mfc1        $s3, $f8
/* 0000BC 8013432C 44CEF800 */  ctc1        $t6, $31
/* 0000C0 80134330 1A400014 */  blez        $s2, .L80134384
/* 0000C4 80134334 00000000 */   nop
.L80134338:
/* 0000C8 80134338 0C00CB07 */  jal         func_80032C1C
/* 0000CC 8013433C 2404001F */   addiu      $a0, $zero, 0x1f
/* 0000D0 80134340 10400005 */  beqz        $v0, .L80134358
/* 0000D4 80134344 02901021 */   addu       $v0, $s4, $s0
/* 0000D8 80134348 8C430004 */  lw          $v1, 0x4($v0)
/* 0000DC 8013434C 8C440000 */  lw          $a0, 0x0($v0)
/* 0000E0 80134350 10000006 */  b           .L8013436C
/* 0000E4 80134354 0073082A */   slt        $at, $v1, $s3
.L80134358:
/* 0000E8 80134358 02B01021 */  addu        $v0, $s5, $s0
/* 0000EC 8013435C 8C430004 */  lw          $v1, 0x4($v0)
/* 0000F0 80134360 8C440000 */  lw          $a0, 0x0($v0)
/* 0000F4 80134364 00000000 */  nop
/* 0000F8 80134368 0073082A */  slt         $at, $v1, $s3
.L8013436C:
/* 0000FC 8013436C 14200003 */  bnez        $at, .L8013437C
/* 000100 80134370 26310001 */   addiu      $s1, $s1, 0x1
/* 000104 80134374 10000003 */  b           .L80134384
/* 000108 80134378 AFA4004C */   sw         $a0, 0x4c($sp)
.L8013437C:
/* 00010C 8013437C 1632FFEE */  bne         $s1, $s2, .L80134338
/* 000110 80134380 26100008 */   addiu      $s0, $s0, 0x8
.L80134384:
/* 000114 80134384 8FB0004C */  lw          $s0, 0x4c($sp)
/* 000118 80134388 2401FFFF */  addiu       $at, $zero, -0x1
/* 00011C 8013438C 12010017 */  beq         $s0, $at, .L801343EC
/* 000120 80134390 8FBF0044 */   lw         $ra, 0x44($sp)
/* 000124 80134394 44800000 */  mtc1        $zero, $f0
/* 000128 80134398 3C188013 */  lui         $t8, %hi(D_80133DE4)
/* 00012C 8013439C 8F183DE4 */  lw          $t8, %lo(D_80133DE4)($t8)
/* 000130 801343A0 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000134 801343A4 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000138 801343A8 C706000C */  lwc1        $f6, 0xc($t8)
/* 00013C 801343AC 8FA80050 */  lw          $t0, 0x50($sp)
/* 000140 801343B0 3C198014 */  lui         $t9, %hi(D_801430E4)
/* 000144 801343B4 273930E4 */  addiu       $t9, $t9, %lo(D_801430E4)
/* 000148 801343B8 AFB9001C */  sw          $t9, 0x1c($sp)
/* 00014C 801343BC 02002025 */  move        $a0, $s0
/* 000150 801343C0 3C054258 */  lui         $a1, 0x4258
/* 000154 801343C4 3C064100 */  lui         $a2, 0x4100
/* 000158 801343C8 3C074290 */  lui         $a3, 0x4290
/* 00015C 801343CC E7A60018 */  swc1        $f6, 0x18($sp)
/* 000160 801343D0 0C007871 */  jal         func_8001E1C4
/* 000164 801343D4 AFA80020 */   sw         $t0, 0x20($sp)
/* 000168 801343D8 3C048015 */  lui         $a0, %hi(D_801480FC)
/* 00016C 801343DC 248480FC */  addiu       $a0, $a0, %lo(D_801480FC)
/* 000170 801343E0 0C002ED2 */  jal         func_8000BB48
/* 000174 801343E4 24050001 */   addiu      $a1, $zero, 0x1
/* 000178 801343E8 8FBF0044 */  lw          $ra, 0x44($sp)
.L801343EC:
/* 00017C 801343EC 8FB0002C */  lw          $s0, 0x2c($sp)
/* 000180 801343F0 8FB10030 */  lw          $s1, 0x30($sp)
/* 000184 801343F4 8FB20034 */  lw          $s2, 0x34($sp)
/* 000188 801343F8 8FB30038 */  lw          $s3, 0x38($sp)
/* 00018C 801343FC 8FB4003C */  lw          $s4, 0x3c($sp)
/* 000190 80134400 8FB50040 */  lw          $s5, 0x40($sp)
/* 000194 80134404 03E00008 */  jr          $ra
/* 000198 80134408 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8013440C_3F6EF0 # 1
/* 00019C 8013440C 44800000 */  mtc1        $zero, $f0
/* 0001A0 80134410 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0001A4 80134414 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 0001A8 80134418 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 0001AC 8013441C AFBF002C */  sw          $ra, 0x2c($sp)
/* 0001B0 80134420 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0001B4 80134424 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0001B8 80134428 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 0001BC 8013442C 3C0F8014 */  lui         $t7, %hi(D_80144EF4)
/* 0001C0 80134430 25EF4EF4 */  addiu       $t7, $t7, %lo(D_80144EF4)
/* 0001C4 80134434 24180063 */  addiu       $t8, $zero, 0x63
/* 0001C8 80134438 AFB80020 */  sw          $t8, 0x20($sp)
/* 0001CC 8013443C AFAF001C */  sw          $t7, 0x1c($sp)
/* 0001D0 80134440 24040009 */  addiu       $a0, $zero, 0x9
/* 0001D4 80134444 3C054258 */  lui         $a1, 0x4258
/* 0001D8 80134448 3C064100 */  lui         $a2, 0x4100
/* 0001DC 8013444C 3C074286 */  lui         $a3, 0x4286
/* 0001E0 80134450 0C007871 */  jal         func_8001E1C4
/* 0001E4 80134454 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0001E8 80134458 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001EC 8013445C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0001F0 80134460 03E00008 */  jr          $ra
/* 0001F4 80134464 00000000 */   nop

glabel func_80134468_3F6EF0 # 2
/* 0001F8 80134468 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0001FC 8013446C AFBF001C */  sw          $ra, 0x1c($sp)
/* 000200 80134470 0C00CB07 */  jal         func_80032C1C
/* 000204 80134474 2404001F */   addiu      $a0, $zero, 0x1f
/* 000208 80134478 1040000E */  beqz        $v0, .L801344B4
/* 00020C 8013447C 3C014258 */   lui        $at, 0x4258
/* 000210 80134480 3C014258 */  lui         $at, 0x4258
/* 000214 80134484 44800000 */  mtc1        $zero, $f0
/* 000218 80134488 44816000 */  mtc1        $at, $f12
/* 00021C 8013448C 3C014140 */  lui         $at, 0x4140
/* 000220 80134490 44817000 */  mtc1        $at, $f14
/* 000224 80134494 240E0053 */  addiu       $t6, $zero, 0x53
/* 000228 80134498 44070000 */  mfc1        $a3, $f0
/* 00022C 8013449C AFAE0014 */  sw          $t6, 0x14($sp)
/* 000230 801344A0 3C0642D0 */  lui         $a2, 0x42d0
/* 000234 801344A4 0C044E51 */  jal         func_80113944
/* 000238 801344A8 E7A00010 */   swc1       $f0, 0x10($sp)
/* 00023C 801344AC 1000000C */  b           .L801344E0
/* 000240 801344B0 8FBF001C */   lw         $ra, 0x1c($sp)
.L801344B4:
/* 000244 801344B4 44800000 */  mtc1        $zero, $f0
/* 000248 801344B8 44816000 */  mtc1        $at, $f12
/* 00024C 801344BC 3C014140 */  lui         $at, 0x4140
/* 000250 801344C0 44817000 */  mtc1        $at, $f14
/* 000254 801344C4 240F0052 */  addiu       $t7, $zero, 0x52
/* 000258 801344C8 44070000 */  mfc1        $a3, $f0
/* 00025C 801344CC AFAF0014 */  sw          $t7, 0x14($sp)
/* 000260 801344D0 3C0642D0 */  lui         $a2, 0x42d0
/* 000264 801344D4 0C044E51 */  jal         func_80113944
/* 000268 801344D8 E7A00010 */   swc1       $f0, 0x10($sp)
/* 00026C 801344DC 8FBF001C */  lw          $ra, 0x1c($sp)
.L801344E0:
/* 000270 801344E0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000274 801344E4 03E00008 */  jr          $ra
/* 000278 801344E8 00000000 */   nop

glabel func_801344EC_3F6EF0 # 3
/* 00027C 801344EC 44800000 */  mtc1        $zero, $f0
/* 000280 801344F0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000284 801344F4 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000288 801344F8 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 00028C 801344FC AFBF002C */  sw          $ra, 0x2c($sp)
/* 000290 80134500 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000294 80134504 E7A00014 */  swc1        $f0, 0x14($sp)
/* 000298 80134508 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 00029C 8013450C 3C0F8014 */  lui         $t7, %hi(D_801453E8)
/* 0002A0 80134510 25EF53E8 */  addiu       $t7, $t7, %lo(D_801453E8)
/* 0002A4 80134514 24180062 */  addiu       $t8, $zero, 0x62
/* 0002A8 80134518 44050000 */  mfc1        $a1, $f0
/* 0002AC 8013451C 44060000 */  mfc1        $a2, $f0
/* 0002B0 80134520 44070000 */  mfc1        $a3, $f0
/* 0002B4 80134524 AFB80020 */  sw          $t8, 0x20($sp)
/* 0002B8 80134528 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0002BC 8013452C 24040014 */  addiu       $a0, $zero, 0x14
/* 0002C0 80134530 0C007871 */  jal         func_8001E1C4
/* 0002C4 80134534 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0002C8 80134538 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0002CC 8013453C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0002D0 80134540 03E00008 */  jr          $ra
/* 0002D4 80134544 00000000 */   nop

glabel func_80134548_3F6EF0 # 4
/* 0002D8 80134548 44800000 */  mtc1        $zero, $f0
/* 0002DC 8013454C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0002E0 80134550 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 0002E4 80134554 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 0002E8 80134558 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0002EC 8013455C E7A00010 */  swc1        $f0, 0x10($sp)
/* 0002F0 80134560 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0002F4 80134564 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 0002F8 80134568 3C0F8014 */  lui         $t7, %hi(D_8014565C)
/* 0002FC 8013456C 25EF565C */  addiu       $t7, $t7, %lo(D_8014565C)
/* 000300 80134570 24180046 */  addiu       $t8, $zero, 0x46
/* 000304 80134574 AFB80020 */  sw          $t8, 0x20($sp)
/* 000308 80134578 AFAF001C */  sw          $t7, 0x1c($sp)
/* 00030C 8013457C 24040001 */  addiu       $a0, $zero, 0x1
/* 000310 80134580 3C054280 */  lui         $a1, 0x4280
/* 000314 80134584 3C064140 */  lui         $a2, 0x4140
/* 000318 80134588 3C074234 */  lui         $a3, 0x4234
/* 00031C 8013458C 0C007871 */  jal         func_8001E1C4
/* 000320 80134590 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000324 80134594 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000328 80134598 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00032C 8013459C 03E00008 */  jr          $ra
/* 000330 801345A0 00000000 */   nop

glabel func_801345A4_3F6EF0 # 5
/* 000334 801345A4 44800000 */  mtc1        $zero, $f0
/* 000338 801345A8 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00033C 801345AC 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000340 801345B0 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000344 801345B4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000348 801345B8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00034C 801345BC E7A00014 */  swc1        $f0, 0x14($sp)
/* 000350 801345C0 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000354 801345C4 3C0F8014 */  lui         $t7, %hi(D_801458F8)
/* 000358 801345C8 25EF58F8 */  addiu       $t7, $t7, %lo(D_801458F8)
/* 00035C 801345CC 24180046 */  addiu       $t8, $zero, 0x46
/* 000360 801345D0 AFB80020 */  sw          $t8, 0x20($sp)
/* 000364 801345D4 AFAF001C */  sw          $t7, 0x1c($sp)
/* 000368 801345D8 24040013 */  addiu       $a0, $zero, 0x13
/* 00036C 801345DC 3C0542D0 */  lui         $a1, 0x42d0
/* 000370 801345E0 3C0641C0 */  lui         $a2, 0x41c0
/* 000374 801345E4 3C074290 */  lui         $a3, 0x4290
/* 000378 801345E8 0C007871 */  jal         func_8001E1C4
/* 00037C 801345EC E7A40018 */   swc1       $f4, 0x18($sp)
/* 000380 801345F0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000384 801345F4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000388 801345F8 03E00008 */  jr          $ra
/* 00038C 801345FC 00000000 */   nop

glabel func_80134600_3F6EF0 # 6
/* 000390 80134600 44800000 */  mtc1        $zero, $f0
/* 000394 80134604 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000398 80134608 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 00039C 8013460C 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 0003A0 80134610 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0003A4 80134614 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0003A8 80134618 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0003AC 8013461C C5C4000C */  lwc1        $f4, 0xc($t6)
/* 0003B0 80134620 3C0F8014 */  lui         $t7, %hi(D_801459F4)
/* 0003B4 80134624 25EF59F4 */  addiu       $t7, $t7, %lo(D_801459F4)
/* 0003B8 80134628 24180061 */  addiu       $t8, $zero, 0x61
/* 0003BC 8013462C AFB80020 */  sw          $t8, 0x20($sp)
/* 0003C0 80134630 AFAF001C */  sw          $t7, 0x1c($sp)
/* 0003C4 80134634 2404000A */  addiu       $a0, $zero, 0xa
/* 0003C8 80134638 3C054294 */  lui         $a1, 0x4294
/* 0003CC 8013463C 3C064140 */  lui         $a2, 0x4140
/* 0003D0 80134640 3C074228 */  lui         $a3, 0x4228
/* 0003D4 80134644 0C007871 */  jal         func_8001E1C4
/* 0003D8 80134648 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0003DC 8013464C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0003E0 80134650 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0003E4 80134654 03E00008 */  jr          $ra
/* 0003E8 80134658 00000000 */   nop

glabel func_8013465C_3F6EF0 # 7
/* 0003EC 8013465C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0003F0 80134660 3C013F80 */  lui         $at, 0x3f80
/* 0003F4 80134664 44812000 */  mtc1        $at, $f4
/* 0003F8 80134668 3C048014 */  lui         $a0, %hi(D_80145A50)
/* 0003FC 8013466C 24845A50 */  addiu       $a0, $a0, %lo(D_80145A50)
/* 000400 80134670 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000404 80134674 3C06461C */  lui         $a2, 0x461c
/* 000408 80134678 240E0088 */  addiu       $t6, $zero, 0x88
/* 00040C 8013467C 240F0088 */  addiu       $t7, $zero, 0x88
/* 000410 80134680 24180001 */  addiu       $t8, $zero, 0x1
/* 000414 80134684 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000418 80134688 AFAF0014 */  sw          $t7, 0x14($sp)
/* 00041C 8013468C AFAE0010 */  sw          $t6, 0x10($sp)
/* 000420 80134690 34C64000 */  ori         $a2, $a2, 0x4000
/* 000424 80134694 AFA40020 */  sw          $a0, 0x20($sp)
/* 000428 80134698 00002825 */  move        $a1, $zero
/* 00042C 8013469C 24070000 */  addiu       $a3, $zero, 0x0
/* 000430 801346A0 0C00D025 */  jal         func_80034094
/* 000434 801346A4 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000438 801346A8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00043C 801346AC 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000440 801346B0 03E00008 */  jr          $ra
/* 000444 801346B4 00000000 */   nop

glabel func_801346B8_3F6EF0 # 8
/* 000448 801346B8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00044C 801346BC AFB10018 */  sw          $s1, 0x18($sp)
/* 000450 801346C0 AFB00014 */  sw          $s0, 0x14($sp)
/* 000454 801346C4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000458 801346C8 00008025 */  move        $s0, $zero
/* 00045C 801346CC 2411000A */  addiu       $s1, $zero, 0xa
.L801346D0:
/* 000460 801346D0 0C04D09C */  jal         func_80134270_3F6EF0
/* 000464 801346D4 02002025 */   move       $a0, $s0
/* 000468 801346D8 26100001 */  addiu       $s0, $s0, 0x1
/* 00046C 801346DC 1611FFFC */  bne         $s0, $s1, .L801346D0
/* 000470 801346E0 00000000 */   nop
/* 000474 801346E4 0C04D103 */  jal         func_8013440C_3F6EF0
/* 000478 801346E8 00000000 */   nop
/* 00047C 801346EC 0C04D11A */  jal         func_80134468_3F6EF0
/* 000480 801346F0 00000000 */   nop
/* 000484 801346F4 0C04D13B */  jal         func_801344EC_3F6EF0
/* 000488 801346F8 00000000 */   nop
/* 00048C 801346FC 0C00EADA */  jal         func_8003AB68
/* 000490 80134700 00000000 */   nop
/* 000494 80134704 44822000 */  mtc1        $v0, $f4
/* 000498 80134708 04410006 */  bgez        $v0, .L80134724
/* 00049C 8013470C 468021A1 */   cvt.d.w    $f6, $f4
/* 0004A0 80134710 3C0141F0 */  lui         $at, 0x41f0
/* 0004A4 80134714 44814800 */  mtc1        $at, $f9
/* 0004A8 80134718 44804000 */  mtc1        $zero, $f8
/* 0004AC 8013471C 00000000 */  nop
/* 0004B0 80134720 46283180 */  add.d       $f6, $f6, $f8
.L80134724:
/* 0004B4 80134724 3C013DF0 */  lui         $at, 0x3df0
/* 0004B8 80134728 44815800 */  mtc1        $at, $f11
/* 0004BC 8013472C 44805000 */  mtc1        $zero, $f10
/* 0004C0 80134730 3C013FE0 */  lui         $at, 0x3fe0
/* 0004C4 80134734 462A3402 */  mul.d       $f16, $f6, $f10
/* 0004C8 80134738 44819800 */  mtc1        $at, $f19
/* 0004CC 8013473C 44809000 */  mtc1        $zero, $f18
/* 0004D0 80134740 00000000 */  nop
/* 0004D4 80134744 4632803C */  c.lt.d      $f16, $f18
/* 0004D8 80134748 00000000 */  nop
/* 0004DC 8013474C 45000003 */  bc1f        .L8013475C
/* 0004E0 80134750 00000000 */   nop
/* 0004E4 80134754 0C04D152 */  jal         func_80134548_3F6EF0
/* 0004E8 80134758 00000000 */   nop
.L8013475C:
/* 0004EC 8013475C 0C04D169 */  jal         func_801345A4_3F6EF0
/* 0004F0 80134760 00000000 */   nop
/* 0004F4 80134764 0C04D180 */  jal         func_80134600_3F6EF0
/* 0004F8 80134768 00000000 */   nop
/* 0004FC 8013476C 0C04D197 */  jal         func_8013465C_3F6EF0
/* 000500 80134770 00000000 */   nop
/* 000504 80134774 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000508 80134778 8FB00014 */  lw          $s0, 0x14($sp)
/* 00050C 8013477C 8FB10018 */  lw          $s1, 0x18($sp)
/* 000510 80134780 03E00008 */  jr          $ra
/* 000514 80134784 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80134788_3F6EF0 # 9
/* 000518 80134788 03E00008 */  jr          $ra
/* 00051C 8013478C 00000000 */   nop

glabel func_80134790_3F6EF0 # 10
/* 000520 80134790 3C014034 */  lui         $at, 0x4034
/* 000524 80134794 44810800 */  mtc1        $at, $f1
/* 000528 80134798 44800000 */  mtc1        $zero, $f0
/* 00052C 8013479C 46007121 */  cvt.d.s     $f4, $f14
/* 000530 801347A0 00000000 */  nop
/* 000534 801347A4 46202183 */  div.d       $f6, $f4, $f0
/* 000538 801347A8 AFA60008 */  sw          $a2, 0x8($sp)
/* 00053C 801347AC 444EF800 */  cfc1        $t6, $31
/* 000540 801347B0 00000000 */  nop
/* 000544 801347B4 35C10003 */  ori         $at, $t6, 0x3
/* 000548 801347B8 38210002 */  xori        $at, $at, 0x2
/* 00054C 801347BC 44C1F800 */  ctc1        $at, $31
/* 000550 801347C0 00000000 */  nop
/* 000554 801347C4 46203224 */  cvt.w.d     $f8, $f6
/* 000558 801347C8 44024000 */  mfc1        $v0, $f8
/* 00055C 801347CC 44CEF800 */  ctc1        $t6, $31
/* 000560 801347D0 04400025 */  bltz        $v0, .L80134868
/* 000564 801347D4 28410008 */   slti       $at, $v0, 0x8
/* 000568 801347D8 10200023 */  beqz        $at, .L80134868
/* 00056C 801347DC 00000000 */   nop
/* 000570 801347E0 460062A1 */  cvt.d.s     $f10, $f12
/* 000574 801347E4 00000000 */  nop
/* 000578 801347E8 46205403 */  div.d       $f16, $f10, $f0
/* 00057C 801347EC 444FF800 */  cfc1        $t7, $31
/* 000580 801347F0 00000000 */  nop
/* 000584 801347F4 35E10003 */  ori         $at, $t7, 0x3
/* 000588 801347F8 38210002 */  xori        $at, $at, 0x2
/* 00058C 801347FC 44C1F800 */  ctc1        $at, $31
/* 000590 80134800 00000000 */  nop
/* 000594 80134804 462084A4 */  cvt.w.d     $f18, $f16
/* 000598 80134808 44039000 */  mfc1        $v1, $f18
/* 00059C 8013480C 44CFF800 */  ctc1        $t7, $31
/* 0005A0 80134810 04600015 */  bltz        $v1, .L80134868
/* 0005A4 80134814 28610008 */   slti       $at, $v1, 0x8
/* 0005A8 80134818 10200013 */  beqz        $at, .L80134868
/* 0005AC 8013481C 00000000 */   nop
/* 0005B0 80134820 C7A40008 */  lwc1        $f4, 0x8($sp)
/* 0005B4 80134824 00000000 */  nop
/* 0005B8 80134828 460021A1 */  cvt.d.s     $f6, $f4
/* 0005BC 8013482C 00000000 */  nop
/* 0005C0 80134830 46203203 */  div.d       $f8, $f6, $f0
/* 0005C4 80134834 4458F800 */  cfc1        $t8, $31
/* 0005C8 80134838 00000000 */  nop
/* 0005CC 8013483C 37010003 */  ori         $at, $t8, 0x3
/* 0005D0 80134840 38210002 */  xori        $at, $at, 0x2
/* 0005D4 80134844 44C1F800 */  ctc1        $at, $31
/* 0005D8 80134848 00000000 */  nop
/* 0005DC 8013484C 462042A4 */  cvt.w.d     $f10, $f8
/* 0005E0 80134850 44045000 */  mfc1        $a0, $f10
/* 0005E4 80134854 44D8F800 */  ctc1        $t8, $31
/* 0005E8 80134858 04800003 */  bltz        $a0, .L80134868
/* 0005EC 8013485C 28810008 */   slti       $at, $a0, 0x8
/* 0005F0 80134860 14200003 */  bnez        $at, .L80134870
/* 0005F4 80134864 0002C880 */   sll        $t9, $v0, 2
.L80134868:
/* 0005F8 80134868 03E00008 */  jr          $ra
/* 0005FC 8013486C 00001025 */   move       $v0, $zero
.L80134870:
/* 000600 80134870 3C058015 */  lui         $a1, %hi(D_801551B0)
/* 000604 80134874 00B92821 */  addu        $a1, $a1, $t9
/* 000608 80134878 8CA551B0 */  lw          $a1, %lo(D_801551B0)($a1)
/* 00060C 8013487C 00044940 */  sll         $t1, $a0, 5
/* 000610 80134880 14A00003 */  bnez        $a1, .L80134890
/* 000614 80134884 00A95021 */   addu       $t2, $a1, $t1
/* 000618 80134888 03E00008 */  jr          $ra
/* 00061C 8013488C 00001025 */   move       $v0, $zero
.L80134890:
/* 000620 80134890 00035880 */  sll         $t3, $v1, 2
/* 000624 80134894 014B6021 */  addu        $t4, $t2, $t3
/* 000628 80134898 8D820000 */  lw          $v0, 0x0($t4)
/* 00062C 8013489C 00000000 */  nop
/* 000630 801348A0 03E00008 */  jr          $ra
/* 000634 801348A4 00000000 */   nop
/* 000638 801348A8 00000000 */  nop
/* 00063C 801348AC 00000000 */  nop
