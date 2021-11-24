.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270 # 0
/* 000000 80134270 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000004 80134274 3C013F80 */  lui         $at, 0x3f80
/* 000008 80134278 44812000 */  mtc1        $at, $f4
/* 00000C 8013427C 3C048015 */  lui         $a0, %hi(D_8014A188)
/* 000010 80134280 2484A188 */  addiu       $a0, $a0, %lo(D_8014A188)
/* 000014 80134284 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000018 80134288 3C06461C */  lui         $a2, 0x461c
/* 00001C 8013428C 240E0088 */  addiu       $t6, $zero, 0x88
/* 000020 80134290 240F0088 */  addiu       $t7, $zero, 0x88
/* 000024 80134294 24180002 */  addiu       $t8, $zero, 0x2
/* 000028 80134298 AFB8001C */  sw          $t8, 0x1c($sp)
/* 00002C 8013429C AFAF0014 */  sw          $t7, 0x14($sp)
/* 000030 801342A0 AFAE0010 */  sw          $t6, 0x10($sp)
/* 000034 801342A4 34C64000 */  ori         $a2, $a2, 0x4000
/* 000038 801342A8 AFA40020 */  sw          $a0, 0x20($sp)
/* 00003C 801342AC 00002825 */  move        $a1, $zero
/* 000040 801342B0 24070000 */  addiu       $a3, $zero, 0x0
/* 000044 801342B4 0C00D025 */  jal         func_80034094
/* 000048 801342B8 E7A40018 */   swc1       $f4, 0x18($sp)
/* 00004C 801342BC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000050 801342C0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000054 801342C4 03E00008 */  jr          $ra
/* 000058 801342C8 00000000 */   nop

glabel func_801342CC # 1
/* 00005C 801342CC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000060 801342D0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000064 801342D4 0C007044 */  jal         func_8001C110
/* 000068 801342D8 00000000 */   nop
/* 00006C 801342DC 3C048013 */  lui         $a0, %hi(D_80134C80)
/* 000070 801342E0 240E0003 */  addiu       $t6, $zero, 0x3
/* 000074 801342E4 AFAE0010 */  sw          $t6, 0x10($sp)
/* 000078 801342E8 24844C80 */  addiu       $a0, $a0, %lo(D_80134C80)
/* 00007C 801342EC 24050001 */  addiu       $a1, $zero, 0x1
/* 000080 801342F0 2406000F */  addiu       $a2, $zero, 0xf
/* 000084 801342F4 0C007054 */  jal         func_8001C150
/* 000088 801342F8 24070001 */   addiu      $a3, $zero, 0x1
/* 00008C 801342FC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000090 80134300 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000094 80134304 03E00008 */  jr          $ra
/* 000098 80134308 00000000 */   nop

glabel func_8013430C # 2
/* 00009C 8013430C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0000A0 80134310 AFB30020 */  sw          $s3, 0x20($sp)
/* 0000A4 80134314 AFB2001C */  sw          $s2, 0x1c($sp)
/* 0000A8 80134318 AFB10018 */  sw          $s1, 0x18($sp)
/* 0000AC 8013431C AFB00014 */  sw          $s0, 0x14($sp)
/* 0000B0 80134320 3C108013 */  lui         $s0, %hi(D_80134C98)
/* 0000B4 80134324 3C118015 */  lui         $s1, %hi(D_80148084)
/* 0000B8 80134328 3C128015 */  lui         $s2, %hi(D_801481AC)
/* 0000BC 8013432C 3C138013 */  lui         $s3, %hi(D_80134CBC)
/* 0000C0 80134330 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0000C4 80134334 26734CBC */  addiu       $s3, $s3, %lo(D_80134CBC)
/* 0000C8 80134338 265281AC */  addiu       $s2, $s2, %lo(D_801481AC)
/* 0000CC 8013433C 26318084 */  addiu       $s1, $s1, %lo(D_80148084)
/* 0000D0 80134340 26104C98 */  addiu       $s0, $s0, %lo(D_80134C98)
/* 0000D4 80134344 02002025 */  move        $a0, $s0
.L80134348:
/* 0000D8 80134348 02202825 */  move        $a1, $s1
/* 0000DC 8013434C 02403025 */  move        $a2, $s2
/* 0000E0 80134350 0C043722 */  jal         func_8010DC88
/* 0000E4 80134354 00003825 */   move       $a3, $zero
/* 0000E8 80134358 2610000C */  addiu       $s0, $s0, 0xc
/* 0000EC 8013435C 1613FFFA */  bne         $s0, $s3, .L80134348
/* 0000F0 80134360 02002025 */   move       $a0, $s0
/* 0000F4 80134364 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0000F8 80134368 8FB00014 */  lw          $s0, 0x14($sp)
/* 0000FC 8013436C 8FB10018 */  lw          $s1, 0x18($sp)
/* 000100 80134370 8FB2001C */  lw          $s2, 0x1c($sp)
/* 000104 80134374 8FB30020 */  lw          $s3, 0x20($sp)
/* 000108 80134378 03E00008 */  jr          $ra
/* 00010C 8013437C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80134380 # 3
/* 000110 80134380 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000114 80134384 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000118 80134388 3C048013 */  lui         $a0, %hi(D_80134CBC)
/* 00011C 8013438C 3C058015 */  lui         $a1, %hi(D_801481BC)
/* 000120 80134390 3C068015 */  lui         $a2, %hi(D_8014859C)
/* 000124 80134394 24C6859C */  addiu       $a2, $a2, %lo(D_8014859C)
/* 000128 80134398 24A581BC */  addiu       $a1, $a1, %lo(D_801481BC)
/* 00012C 8013439C 24844CBC */  addiu       $a0, $a0, %lo(D_80134CBC)
/* 000130 801343A0 0C043722 */  jal         func_8010DC88
/* 000134 801343A4 24070001 */   addiu      $a3, $zero, 0x1
/* 000138 801343A8 3C048013 */  lui         $a0, %hi(D_80134CC8)
/* 00013C 801343AC 3C058015 */  lui         $a1, %hi(D_801485AC)
/* 000140 801343B0 3C068015 */  lui         $a2, %hi(D_801490E4)
/* 000144 801343B4 24C690E4 */  addiu       $a2, $a2, %lo(D_801490E4)
/* 000148 801343B8 24A585AC */  addiu       $a1, $a1, %lo(D_801485AC)
/* 00014C 801343BC 24844CC8 */  addiu       $a0, $a0, %lo(D_80134CC8)
/* 000150 801343C0 0C043722 */  jal         func_8010DC88
/* 000154 801343C4 24070001 */   addiu      $a3, $zero, 0x1
/* 000158 801343C8 3C048013 */  lui         $a0, %hi(D_80134CD4)
/* 00015C 801343CC 3C058015 */  lui         $a1, %hi(D_801490F4)
/* 000160 801343D0 3C068015 */  lui         $a2, %hi(D_80149BBC)
/* 000164 801343D4 24C69BBC */  addiu       $a2, $a2, %lo(D_80149BBC)
/* 000168 801343D8 24A590F4 */  addiu       $a1, $a1, %lo(D_801490F4)
/* 00016C 801343DC 24844CD4 */  addiu       $a0, $a0, %lo(D_80134CD4)
/* 000170 801343E0 0C043722 */  jal         func_8010DC88
/* 000174 801343E4 24070001 */   addiu      $a3, $zero, 0x1
/* 000178 801343E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00017C 801343EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000180 801343F0 03E00008 */  jr          $ra
/* 000184 801343F4 00000000 */   nop

glabel func_801343F8 # 4
/* 000188 801343F8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00018C 801343FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000190 80134400 3C048013 */  lui         $a0, %hi(D_80134CBC)
/* 000194 80134404 3C058015 */  lui         $a1, %hi(D_80149BCC)
/* 000198 80134408 3C068015 */  lui         $a2, %hi(D_80149C54)
/* 00019C 8013440C 24C69C54 */  addiu       $a2, $a2, %lo(D_80149C54)
/* 0001A0 80134410 24A59BCC */  addiu       $a1, $a1, %lo(D_80149BCC)
/* 0001A4 80134414 24844CBC */  addiu       $a0, $a0, %lo(D_80134CBC)
/* 0001A8 80134418 0C043722 */  jal         func_8010DC88
/* 0001AC 8013441C 24070001 */   addiu      $a3, $zero, 0x1
/* 0001B0 80134420 3C048013 */  lui         $a0, %hi(D_80134CC8)
/* 0001B4 80134424 3C058015 */  lui         $a1, %hi(D_80149C64)
/* 0001B8 80134428 3C068015 */  lui         $a2, %hi(D_8014A044)
/* 0001BC 8013442C 24C6A044 */  addiu       $a2, $a2, %lo(D_8014A044)
/* 0001C0 80134430 24A59C64 */  addiu       $a1, $a1, %lo(D_80149C64)
/* 0001C4 80134434 24844CC8 */  addiu       $a0, $a0, %lo(D_80134CC8)
/* 0001C8 80134438 0C043722 */  jal         func_8010DC88
/* 0001CC 8013443C 24070001 */   addiu      $a3, $zero, 0x1
/* 0001D0 80134440 3C048013 */  lui         $a0, %hi(D_80134CD4)
/* 0001D4 80134444 3C058015 */  lui         $a1, %hi(D_8014A054)
/* 0001D8 80134448 3C068015 */  lui         $a2, %hi(D_8014A0DC)
/* 0001DC 8013444C 24C6A0DC */  addiu       $a2, $a2, %lo(D_8014A0DC)
/* 0001E0 80134450 24A5A054 */  addiu       $a1, $a1, %lo(D_8014A054)
/* 0001E4 80134454 24844CD4 */  addiu       $a0, $a0, %lo(D_80134CD4)
/* 0001E8 80134458 0C043722 */  jal         func_8010DC88
/* 0001EC 8013445C 24070001 */   addiu      $a3, $zero, 0x1
/* 0001F0 80134460 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0001F4 80134464 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0001F8 80134468 03E00008 */  jr          $ra
/* 0001FC 8013446C 00000000 */   nop

glabel func_80134470 # 5
/* 000200 80134470 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 000204 80134474 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000208 80134478 0C00CB07 */  jal         func_80032C1C
/* 00020C 8013447C 24040015 */   addiu      $a0, $zero, 0x15
/* 000210 80134480 14400050 */  bnez        $v0, .L801345C4
/* 000214 80134484 00001025 */   move       $v0, $zero
/* 000218 80134488 0C044A09 */  jal         func_80112824
/* 00021C 8013448C 00000000 */   nop
/* 000220 80134490 1840004B */  blez        $v0, .L801345C0
/* 000224 80134494 3C018015 */   lui        $at, %hi(D_8014AB90)
/* 000228 80134498 44800000 */  mtc1        $zero, $f0
/* 00022C 8013449C C42CAB90 */  lwc1        $f12, %lo(D_8014AB90)($at)
/* 000230 801344A0 3C01418E */  lui         $at, 0x418e
/* 000234 801344A4 44817000 */  mtc1        $at, $f14
/* 000238 801344A8 3C0641FF */  lui         $a2, 0x41ff
/* 00023C 801344AC 240E008F */  addiu       $t6, $zero, 0x8f
/* 000240 801344B0 44070000 */  mfc1        $a3, $f0
/* 000244 801344B4 AFAE0014 */  sw          $t6, 0x14($sp)
/* 000248 801344B8 34C65C29 */  ori         $a2, $a2, 0x5c29
/* 00024C 801344BC 0C044E51 */  jal         func_80113944
/* 000250 801344C0 E7A00010 */   swc1       $f0, 0x10($sp)
/* 000254 801344C4 3C014234 */  lui         $at, 0x4234
/* 000258 801344C8 44800000 */  mtc1        $zero, $f0
/* 00025C 801344CC 44812000 */  mtc1        $at, $f4
/* 000260 801344D0 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 000264 801344D4 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 000268 801344D8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00026C 801344DC E7A40014 */  swc1        $f4, 0x14($sp)
/* 000270 801344E0 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 000274 801344E4 3C013FE0 */  lui         $at, 0x3fe0
/* 000278 801344E8 44815800 */  mtc1        $at, $f11
/* 00027C 801344EC 44805000 */  mtc1        $zero, $f10
/* 000280 801344F0 46003221 */  cvt.d.s     $f8, $f6
/* 000284 801344F4 462A4402 */  mul.d       $f16, $f8, $f10
/* 000288 801344F8 3C188014 */  lui         $t8, %hi(D_801479C0)
/* 00028C 801344FC 271879C0 */  addiu       $t8, $t8, %lo(D_801479C0)
/* 000290 80134500 44050000 */  mfc1        $a1, $f0
/* 000294 80134504 44060000 */  mfc1        $a2, $f0
/* 000298 80134508 462084A0 */  cvt.s.d     $f18, $f16
/* 00029C 8013450C 44070000 */  mfc1        $a3, $f0
/* 0002A0 80134510 E7B20018 */  swc1        $f18, 0x18($sp)
/* 0002A4 80134514 AFB8001C */  sw          $t8, 0x1c($sp)
/* 0002A8 80134518 AFA20034 */  sw          $v0, 0x34($sp)
/* 0002AC 8013451C AFA00020 */  sw          $zero, 0x20($sp)
/* 0002B0 80134520 0C007871 */  jal         func_8001E1C4
/* 0002B4 80134524 24040017 */   addiu      $a0, $zero, 0x17
/* 0002B8 80134528 8FA80034 */  lw          $t0, 0x34($sp)
/* 0002BC 8013452C 44800000 */  mtc1        $zero, $f0
/* 0002C0 80134530 8C430054 */  lw          $v1, 0x54($v0)
/* 0002C4 80134534 C5040044 */  lwc1        $f4, 0x44($t0)
/* 0002C8 80134538 E5000008 */  swc1        $f0, 0x8($t0)
/* 0002CC 8013453C E5000004 */  swc1        $f0, 0x4($t0)
/* 0002D0 80134540 E5000000 */  swc1        $f0, 0x0($t0)
/* 0002D4 80134544 E46401EC */  swc1        $f4, 0x1ec($v1)
/* 0002D8 80134548 C5060048 */  lwc1        $f6, 0x48($t0)
/* 0002DC 8013454C 24090001 */  addiu       $t1, $zero, 0x1
/* 0002E0 80134550 E46601F0 */  swc1        $f6, 0x1f0($v1)
/* 0002E4 80134554 C508004C */  lwc1        $f8, 0x4c($t0)
/* 0002E8 80134558 00000000 */  nop
/* 0002EC 8013455C E46801F4 */  swc1        $f8, 0x1f4($v1)
/* 0002F0 80134560 8D190038 */  lw          $t9, 0x38($t0)
/* 0002F4 80134564 AC69019C */  sw          $t1, 0x19c($v1)
/* 0002F8 80134568 AC790198 */  sw          $t9, 0x198($v1)
/* 0002FC 8013456C 8D040038 */  lw          $a0, 0x38($t0)
/* 000300 80134570 0C045300 */  jal         func_80114C00
/* 000304 80134574 00000000 */   nop
/* 000308 80134578 44800000 */  mtc1        $zero, $f0
/* 00030C 8013457C 3C0A8013 */  lui         $t2, %hi(D_80133DE4)
/* 000310 80134580 8D4A3DE4 */  lw          $t2, %lo(D_80133DE4)($t2)
/* 000314 80134584 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000318 80134588 E7A00014 */  swc1        $f0, 0x14($sp)
/* 00031C 8013458C C54A000C */  lwc1        $f10, 0xc($t2)
/* 000320 80134590 3C0B8014 */  lui         $t3, %hi(D_801478D8)
/* 000324 80134594 256B78D8 */  addiu       $t3, $t3, %lo(D_801478D8)
/* 000328 80134598 44050000 */  mfc1        $a1, $f0
/* 00032C 8013459C 44060000 */  mfc1        $a2, $f0
/* 000330 801345A0 44070000 */  mfc1        $a3, $f0
/* 000334 801345A4 AFAB001C */  sw          $t3, 0x1c($sp)
/* 000338 801345A8 AFA00020 */  sw          $zero, 0x20($sp)
/* 00033C 801345AC 2404000F */  addiu       $a0, $zero, 0xf
/* 000340 801345B0 0C007871 */  jal         func_8001E1C4
/* 000344 801345B4 E7AA0018 */   swc1       $f10, 0x18($sp)
/* 000348 801345B8 10000002 */  b           .L801345C4
/* 00034C 801345BC 24020001 */   addiu      $v0, $zero, 0x1
.L801345C0:
/* 000350 801345C0 00001025 */  move        $v0, $zero
.L801345C4:
/* 000354 801345C4 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000358 801345C8 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00035C 801345CC 03E00008 */  jr          $ra
/* 000360 801345D0 00000000 */   nop

glabel func_801345D4 # 6
/* 000364 801345D4 44800000 */  mtc1        $zero, $f0
/* 000368 801345D8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00036C 801345DC 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 000370 801345E0 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 000374 801345E4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000378 801345E8 E7A00010 */  swc1        $f0, 0x10($sp)
/* 00037C 801345EC E7A00014 */  swc1        $f0, 0x14($sp)
/* 000380 801345F0 C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000384 801345F4 3C0F8014 */  lui         $t7, %hi(D_801475C8)
/* 000388 801345F8 25EF75C8 */  addiu       $t7, $t7, %lo(D_801475C8)
/* 00038C 801345FC 44050000 */  mfc1        $a1, $f0
/* 000390 80134600 44060000 */  mfc1        $a2, $f0
/* 000394 80134604 44070000 */  mfc1        $a3, $f0
/* 000398 80134608 AFAF001C */  sw          $t7, 0x1c($sp)
/* 00039C 8013460C AFA00020 */  sw          $zero, 0x20($sp)
/* 0003A0 80134610 24040013 */  addiu       $a0, $zero, 0x13
/* 0003A4 80134614 0C007871 */  jal         func_8001E1C4
/* 0003A8 80134618 E7A40018 */   swc1       $f4, 0x18($sp)
/* 0003AC 8013461C 0C04D11C */  jal         func_80134470
/* 0003B0 80134620 00000000 */   nop
/* 0003B4 80134624 14400016 */  bnez        $v0, .L80134680
/* 0003B8 80134628 00000000 */   nop
/* 0003BC 8013462C 0C00CB07 */  jal         func_80032C1C
/* 0003C0 80134630 24040076 */   addiu      $a0, $zero, 0x76
/* 0003C4 80134634 28410002 */  slti        $at, $v0, 0x2
/* 0003C8 80134638 14200011 */  bnez        $at, .L80134680
/* 0003CC 8013463C 2404000E */   addiu      $a0, $zero, 0xe
/* 0003D0 80134640 44800000 */  mtc1        $zero, $f0
/* 0003D4 80134644 3C188013 */  lui         $t8, %hi(D_80133DE4)
/* 0003D8 80134648 8F183DE4 */  lw          $t8, %lo(D_80133DE4)($t8)
/* 0003DC 8013464C E7A00010 */  swc1        $f0, 0x10($sp)
/* 0003E0 80134650 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0003E4 80134654 C706000C */  lwc1        $f6, 0xc($t8)
/* 0003E8 80134658 3C198014 */  lui         $t9, %hi(D_80147AE0)
/* 0003EC 8013465C 27397AE0 */  addiu       $t9, $t9, %lo(D_80147AE0)
/* 0003F0 80134660 3C0641A6 */  lui         $a2, 0x41a6
/* 0003F4 80134664 34C66666 */  ori         $a2, $a2, 0x6666
/* 0003F8 80134668 AFB9001C */  sw          $t9, 0x1c($sp)
/* 0003FC 8013466C AFA00020 */  sw          $zero, 0x20($sp)
/* 000400 80134670 3C0542A7 */  lui         $a1, 0x42a7
/* 000404 80134674 3C074250 */  lui         $a3, 0x4250
/* 000408 80134678 0C007871 */  jal         func_8001E1C4
/* 00040C 8013467C E7A60018 */   swc1       $f6, 0x18($sp)
.L80134680:
/* 000410 80134680 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 000414 80134684 3C058015 */  lui         $a1, %hi(D_8014AB48)
/* 000418 80134688 24A5AB48 */  addiu       $a1, $a1, %lo(D_8014AB48)
/* 00041C 8013468C 0C00E1A4 */  jal         func_80038690
/* 000420 80134690 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 000424 80134694 0C044A09 */  jal         func_80112824
/* 000428 80134698 00000000 */   nop
/* 00042C 8013469C 1440000A */  bnez        $v0, .L801346C8
/* 000430 801346A0 3C048014 */   lui        $a0, %hi(D_80147AF4)
/* 000434 801346A4 3C068015 */  lui         $a2, %hi(D_8014807C)
/* 000438 801346A8 3C073F33 */  lui         $a3, 0x3f33
/* 00043C 801346AC 34E73333 */  ori         $a3, $a3, 0x3333
/* 000440 801346B0 24C6807C */  addiu       $a2, $a2, %lo(D_8014807C)
/* 000444 801346B4 24847AF4 */  addiu       $a0, $a0, %lo(D_80147AF4)
/* 000448 801346B8 0C0439DA */  jal         func_8010E768
/* 00044C 801346BC 24050022 */   addiu      $a1, $zero, 0x22
/* 000450 801346C0 10000032 */  b           .L8013478C
/* 000454 801346C4 00000000 */   nop
.L801346C8:
/* 000458 801346C8 0C044A09 */  jal         func_80112824
/* 00045C 801346CC 00000000 */   nop
/* 000460 801346D0 24010001 */  addiu       $at, $zero, 0x1
/* 000464 801346D4 14410012 */  bne         $v0, $at, .L80134720
/* 000468 801346D8 3C048014 */   lui        $a0, %hi(D_80147AF4)
/* 00046C 801346DC 3C068015 */  lui         $a2, %hi(D_8014807C)
/* 000470 801346E0 3C073ECC */  lui         $a3, 0x3ecc
/* 000474 801346E4 34E7CCCD */  ori         $a3, $a3, 0xcccd
/* 000478 801346E8 24C6807C */  addiu       $a2, $a2, %lo(D_8014807C)
/* 00047C 801346EC 24847AF4 */  addiu       $a0, $a0, %lo(D_80147AF4)
/* 000480 801346F0 0C0439DA */  jal         func_8010E768
/* 000484 801346F4 24050022 */   addiu      $a1, $zero, 0x22
/* 000488 801346F8 3C048014 */  lui         $a0, %hi(D_80147C8C)
/* 00048C 801346FC 3C068015 */  lui         $a2, %hi(D_8014807C)
/* 000490 80134700 3C073F33 */  lui         $a3, 0x3f33
/* 000494 80134704 34E73333 */  ori         $a3, $a3, 0x3333
/* 000498 80134708 24C6807C */  addiu       $a2, $a2, %lo(D_8014807C)
/* 00049C 8013470C 24847C8C */  addiu       $a0, $a0, %lo(D_80147C8C)
/* 0004A0 80134710 0C0439DA */  jal         func_8010E768
/* 0004A4 80134714 24050024 */   addiu      $a1, $zero, 0x24
/* 0004A8 80134718 1000001C */  b           .L8013478C
/* 0004AC 8013471C 00000000 */   nop
.L80134720:
/* 0004B0 80134720 0C044A09 */  jal         func_80112824
/* 0004B4 80134724 00000000 */   nop
/* 0004B8 80134728 24010002 */  addiu       $at, $zero, 0x2
/* 0004BC 8013472C 14410017 */  bne         $v0, $at, .L8013478C
/* 0004C0 80134730 3C048014 */   lui        $a0, %hi(D_80147AF4)
/* 0004C4 80134734 3C068015 */  lui         $a2, %hi(D_8014807C)
/* 0004C8 80134738 3C073E4C */  lui         $a3, 0x3e4c
/* 0004CC 8013473C 34E7CCCD */  ori         $a3, $a3, 0xcccd
/* 0004D0 80134740 24C6807C */  addiu       $a2, $a2, %lo(D_8014807C)
/* 0004D4 80134744 24847AF4 */  addiu       $a0, $a0, %lo(D_80147AF4)
/* 0004D8 80134748 0C0439DA */  jal         func_8010E768
/* 0004DC 8013474C 24050022 */   addiu      $a1, $zero, 0x22
/* 0004E0 80134750 3C048014 */  lui         $a0, %hi(D_80147C8C)
/* 0004E4 80134754 3C068015 */  lui         $a2, %hi(D_8014807C)
/* 0004E8 80134758 3C073E99 */  lui         $a3, 0x3e99
/* 0004EC 8013475C 34E7999A */  ori         $a3, $a3, 0x999a
/* 0004F0 80134760 24C6807C */  addiu       $a2, $a2, %lo(D_8014807C)
/* 0004F4 80134764 24847C8C */  addiu       $a0, $a0, %lo(D_80147C8C)
/* 0004F8 80134768 0C0439DA */  jal         func_8010E768
/* 0004FC 8013476C 24050024 */   addiu      $a1, $zero, 0x24
/* 000500 80134770 3C048014 */  lui         $a0, %hi(D_80147E3C)
/* 000504 80134774 3C068015 */  lui         $a2, %hi(D_8014807C)
/* 000508 80134778 24C6807C */  addiu       $a2, $a2, %lo(D_8014807C)
/* 00050C 8013477C 24847E3C */  addiu       $a0, $a0, %lo(D_80147E3C)
/* 000510 80134780 24050022 */  addiu       $a1, $zero, 0x22
/* 000514 80134784 0C0439DA */  jal         func_8010E768
/* 000518 80134788 3C073F00 */   lui        $a3, 0x3f00
.L8013478C:
/* 00051C 8013478C 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 000520 80134790 3C058015 */  lui         $a1, %hi(D_8014AB54)
/* 000524 80134794 24A5AB54 */  addiu       $a1, $a1, %lo(D_8014AB54)
/* 000528 80134798 0C00E1A4 */  jal         func_80038690
/* 00052C 8013479C 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 000530 801347A0 3C014110 */  lui         $at, 0x4110
/* 000534 801347A4 44810000 */  mtc1        $at, $f0
/* 000538 801347A8 3C014302 */  lui         $at, 0x4302
/* 00053C 801347AC 44814000 */  mtc1        $at, $f8
/* 000540 801347B0 3C018015 */  lui         $at, %hi(D_8014AB94)
/* 000544 801347B4 C42AAB94 */  lwc1        $f10, %lo(D_8014AB94)($at)
/* 000548 801347B8 3C018015 */  lui         $at, %hi(D_8014AB98)
/* 00054C 801347BC C430AB98 */  lwc1        $f16, %lo(D_8014AB98)($at)
/* 000550 801347C0 3C078015 */  lui         $a3, %hi(D_8014A0EC)
/* 000554 801347C4 44050000 */  mfc1        $a1, $f0
/* 000558 801347C8 44060000 */  mfc1        $a2, $f0
/* 00055C 801347CC 24E7A0EC */  addiu       $a3, $a3, %lo(D_8014A0EC)
/* 000560 801347D0 27A40034 */  addiu       $a0, $sp, 0x34
/* 000564 801347D4 E7A80034 */  swc1        $f8, 0x34($sp)
/* 000568 801347D8 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 00056C 801347DC 0C007C7C */  jal         func_8001F1F0
/* 000570 801347E0 E7B0003C */   swc1       $f16, 0x3c($sp)
/* 000574 801347E4 3C014359 */  lui         $at, 0x4359
/* 000578 801347E8 44819000 */  mtc1        $at, $f18
/* 00057C 801347EC 3C018015 */  lui         $at, %hi(D_8014AB9C)
/* 000580 801347F0 C424AB9C */  lwc1        $f4, %lo(D_8014AB9C)($at)
/* 000584 801347F4 3C014317 */  lui         $at, 0x4317
/* 000588 801347F8 44813000 */  mtc1        $at, $f6
/* 00058C 801347FC 3C078015 */  lui         $a3, %hi(D_8014A110)
/* 000590 80134800 24E7A110 */  addiu       $a3, $a3, %lo(D_8014A110)
/* 000594 80134804 27A40034 */  addiu       $a0, $sp, 0x34
/* 000598 80134808 3C054224 */  lui         $a1, 0x4224
/* 00059C 8013480C 3C064218 */  lui         $a2, 0x4218
/* 0005A0 80134810 E7B20034 */  swc1        $f18, 0x34($sp)
/* 0005A4 80134814 E7A40038 */  swc1        $f4, 0x38($sp)
/* 0005A8 80134818 0C007C7C */  jal         func_8001F1F0
/* 0005AC 8013481C E7A6003C */   swc1       $f6, 0x3c($sp)
/* 0005B0 80134820 3C014294 */  lui         $at, 0x4294
/* 0005B4 80134824 44814000 */  mtc1        $at, $f8
/* 0005B8 80134828 3C018015 */  lui         $at, %hi(D_8014ABA0)
/* 0005BC 8013482C C42AABA0 */  lwc1        $f10, %lo(D_8014ABA0)($at)
/* 0005C0 80134830 3C014361 */  lui         $at, 0x4361
/* 0005C4 80134834 44818000 */  mtc1        $at, $f16
/* 0005C8 80134838 3C078015 */  lui         $a3, %hi(D_8014A134)
/* 0005CC 8013483C 24E7A134 */  addiu       $a3, $a3, %lo(D_8014A134)
/* 0005D0 80134840 27A40034 */  addiu       $a0, $sp, 0x34
/* 0005D4 80134844 3C0541C8 */  lui         $a1, 0x41c8
/* 0005D8 80134848 3C064150 */  lui         $a2, 0x4150
/* 0005DC 8013484C E7A80034 */  swc1        $f8, 0x34($sp)
/* 0005E0 80134850 E7AA0038 */  swc1        $f10, 0x38($sp)
/* 0005E4 80134854 0C007C7C */  jal         func_8001F1F0
/* 0005E8 80134858 E7B0003C */   swc1       $f16, 0x3c($sp)
/* 0005EC 8013485C 3C0142A7 */  lui         $at, 0x42a7
/* 0005F0 80134860 44819000 */  mtc1        $at, $f18
/* 0005F4 80134864 3C018015 */  lui         $at, %hi(D_8014ABA4)
/* 0005F8 80134868 C424ABA4 */  lwc1        $f4, %lo(D_8014ABA4)($at)
/* 0005FC 8013486C 3C014250 */  lui         $at, 0x4250
/* 000600 80134870 44813000 */  mtc1        $at, $f6
/* 000604 80134874 3C078015 */  lui         $a3, %hi(D_8014A164)
/* 000608 80134878 24E7A164 */  addiu       $a3, $a3, %lo(D_8014A164)
/* 00060C 8013487C 27A40034 */  addiu       $a0, $sp, 0x34
/* 000610 80134880 3C054276 */  lui         $a1, 0x4276
/* 000614 80134884 3C064218 */  lui         $a2, 0x4218
/* 000618 80134888 E7B20034 */  swc1        $f18, 0x34($sp)
/* 00061C 8013488C E7A40038 */  swc1        $f4, 0x38($sp)
/* 000620 80134890 0C007C7C */  jal         func_8001F1F0
/* 000624 80134894 E7A6003C */   swc1       $f6, 0x3c($sp)
/* 000628 80134898 0C044A09 */  jal         func_80112824
/* 00062C 8013489C 00000000 */   nop
/* 000630 801348A0 24010002 */  addiu       $at, $zero, 0x2
/* 000634 801348A4 14410003 */  bne         $v0, $at, .L801348B4
/* 000638 801348A8 00000000 */   nop
/* 00063C 801348AC 0C04D0C3 */  jal         func_8013430C
/* 000640 801348B0 00000000 */   nop
.L801348B4:
/* 000644 801348B4 0C044A09 */  jal         func_80112824
/* 000648 801348B8 00000000 */   nop
/* 00064C 801348BC 14400005 */  bnez        $v0, .L801348D4
/* 000650 801348C0 00000000 */   nop
/* 000654 801348C4 0C04D0E0 */  jal         func_80134380
/* 000658 801348C8 00000000 */   nop
/* 00065C 801348CC 10000003 */  b           .L801348DC
/* 000660 801348D0 00000000 */   nop
.L801348D4:
/* 000664 801348D4 0C04D0FE */  jal         func_801343F8
/* 000668 801348D8 00000000 */   nop
.L801348DC:
/* 00066C 801348DC 0C04D09C */  jal         func_80134270
/* 000670 801348E0 00000000 */   nop
/* 000674 801348E4 0C04D0B3 */  jal         func_801342CC
/* 000678 801348E8 00000000 */   nop
/* 00067C 801348EC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000680 801348F0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 000684 801348F4 03E00008 */  jr          $ra
/* 000688 801348F8 00000000 */   nop

glabel func_801348FC # 7
/* 00068C 801348FC 3C014024 */  lui         $at, 0x4024
/* 000690 80134900 44810800 */  mtc1        $at, $f1
/* 000694 80134904 44800000 */  mtc1        $zero, $f0
/* 000698 80134908 46007121 */  cvt.d.s     $f4, $f14
/* 00069C 8013490C 00000000 */  nop
/* 0006A0 80134910 46202183 */  div.d       $f6, $f4, $f0
/* 0006A4 80134914 AFA60008 */  sw          $a2, 0x8($sp)
/* 0006A8 80134918 444EF800 */  cfc1        $t6, $31
/* 0006AC 8013491C 00000000 */  nop
/* 0006B0 80134920 35C10003 */  ori         $at, $t6, 0x3
/* 0006B4 80134924 38210002 */  xori        $at, $at, 0x2
/* 0006B8 80134928 44C1F800 */  ctc1        $at, $31
/* 0006BC 8013492C 00000000 */  nop
/* 0006C0 80134930 46203224 */  cvt.w.d     $f8, $f6
/* 0006C4 80134934 44024000 */  mfc1        $v0, $f8
/* 0006C8 80134938 44CEF800 */  ctc1        $t6, $31
/* 0006CC 8013493C 04400025 */  bltz        $v0, .L801349D4
/* 0006D0 80134940 28410020 */   slti       $at, $v0, 0x20
/* 0006D4 80134944 10200023 */  beqz        $at, .L801349D4
/* 0006D8 80134948 00000000 */   nop
/* 0006DC 8013494C 460062A1 */  cvt.d.s     $f10, $f12
/* 0006E0 80134950 00000000 */  nop
/* 0006E4 80134954 46205403 */  div.d       $f16, $f10, $f0
/* 0006E8 80134958 444FF800 */  cfc1        $t7, $31
/* 0006EC 8013495C 00000000 */  nop
/* 0006F0 80134960 35E10003 */  ori         $at, $t7, 0x3
/* 0006F4 80134964 38210002 */  xori        $at, $at, 0x2
/* 0006F8 80134968 44C1F800 */  ctc1        $at, $31
/* 0006FC 8013496C 00000000 */  nop
/* 000700 80134970 462084A4 */  cvt.w.d     $f18, $f16
/* 000704 80134974 44039000 */  mfc1        $v1, $f18
/* 000708 80134978 44CFF800 */  ctc1        $t7, $31
/* 00070C 8013497C 04600015 */  bltz        $v1, .L801349D4
/* 000710 80134980 28610020 */   slti       $at, $v1, 0x20
/* 000714 80134984 10200013 */  beqz        $at, .L801349D4
/* 000718 80134988 00000000 */   nop
/* 00071C 8013498C C7A40008 */  lwc1        $f4, 0x8($sp)
/* 000720 80134990 00000000 */  nop
/* 000724 80134994 460021A1 */  cvt.d.s     $f6, $f4
/* 000728 80134998 00000000 */  nop
/* 00072C 8013499C 46203203 */  div.d       $f8, $f6, $f0
/* 000730 801349A0 4458F800 */  cfc1        $t8, $31
/* 000734 801349A4 00000000 */  nop
/* 000738 801349A8 37010003 */  ori         $at, $t8, 0x3
/* 00073C 801349AC 38210002 */  xori        $at, $at, 0x2
/* 000740 801349B0 44C1F800 */  ctc1        $at, $31
/* 000744 801349B4 00000000 */  nop
/* 000748 801349B8 462042A4 */  cvt.w.d     $f10, $f8
/* 00074C 801349BC 44045000 */  mfc1        $a0, $f10
/* 000750 801349C0 44D8F800 */  ctc1        $t8, $31
/* 000754 801349C4 04800003 */  bltz        $a0, .L801349D4
/* 000758 801349C8 28810020 */   slti       $at, $a0, 0x20
/* 00075C 801349CC 14200003 */  bnez        $at, .L801349DC
/* 000760 801349D0 0002C880 */   sll        $t9, $v0, 2
.L801349D4:
/* 000764 801349D4 03E00008 */  jr          $ra
/* 000768 801349D8 00001025 */   move       $v0, $zero
.L801349DC:
/* 00076C 801349DC 3C058019 */  lui         $a1, %hi(D_8018C048)
/* 000770 801349E0 00B92821 */  addu        $a1, $a1, $t9
/* 000774 801349E4 8CA5C048 */  lw          $a1, %lo(D_8018C048)($a1)
/* 000778 801349E8 000449C0 */  sll         $t1, $a0, 7
/* 00077C 801349EC 14A00003 */  bnez        $a1, .L801349FC
/* 000780 801349F0 00A95021 */   addu       $t2, $a1, $t1
/* 000784 801349F4 03E00008 */  jr          $ra
/* 000788 801349F8 00001025 */   move       $v0, $zero
.L801349FC:
/* 00078C 801349FC 00035880 */  sll         $t3, $v1, 2
/* 000790 80134A00 014B6021 */  addu        $t4, $t2, $t3
/* 000794 80134A04 8D820000 */  lw          $v0, 0x0($t4)
/* 000798 80134A08 00000000 */  nop
/* 00079C 80134A0C 03E00008 */  jr          $ra
/* 0007A0 80134A10 00000000 */   nop
/* 0007A4 80134A14 00000000 */  nop
/* 0007A8 80134A18 00000000 */  nop
/* 0007AC 80134A1C 00000000 */  nop