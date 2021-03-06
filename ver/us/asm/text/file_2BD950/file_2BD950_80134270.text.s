.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_2BD950 # 0
/* 000000 80134270 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80134274 00051080 */  sll         $v0, $a1, 2
/* 000008 80134278 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00000C 8013427C 3C058014 */  lui         $a1, %hi(D_8014162C)
/* 000010 80134280 3C068014 */  lui         $a2, %hi(D_80141638)
/* 000014 80134284 00C23021 */  addu        $a2, $a2, $v0
/* 000018 80134288 00A22821 */  addu        $a1, $a1, $v0
/* 00001C 8013428C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000020 80134290 8CA5162C */  lw          $a1, %lo(D_8014162C)($a1)
/* 000024 80134294 8CC61638 */  lw          $a2, %lo(D_80141638)($a2)
/* 000028 80134298 0C043722 */  jal         func_8010DC88
/* 00002C 8013429C 00003825 */   move       $a3, $zero
/* 000030 801342A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000034 801342A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000038 801342A8 03E00008 */  jr          $ra
/* 00003C 801342AC 00000000 */   nop

glabel func_801342B0_2BD950 # 1
/* 000040 801342B0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 000044 801342B4 E7B70020 */  swc1        $f23, 0x20($sp)
/* 000048 801342B8 3C013DF0 */  lui         $at, 0x3df0
/* 00004C 801342BC 4481B800 */  mtc1        $at, $f23
/* 000050 801342C0 3C018014 */  lui         $at, %hi(D_80142354)
/* 000054 801342C4 AFB30034 */  sw          $s3, 0x34($sp)
/* 000058 801342C8 AFB20030 */  sw          $s2, 0x30($sp)
/* 00005C 801342CC E7B60024 */  swc1        $f22, 0x24($sp)
/* 000060 801342D0 E7B50018 */  swc1        $f21, 0x18($sp)
/* 000064 801342D4 E7B4001C */  swc1        $f20, 0x1c($sp)
/* 000068 801342D8 AFB60040 */  sw          $s6, 0x40($sp)
/* 00006C 801342DC AFB5003C */  sw          $s5, 0x3c($sp)
/* 000070 801342E0 3C128014 */  lui         $s2, %hi(D_80141624)
/* 000074 801342E4 3C138013 */  lui         $s3, %hi(D_80134B70)
/* 000078 801342E8 C4342354 */  lwc1        $f20, %lo(D_80142354)($at)
/* 00007C 801342EC C4352350 */  lwc1        $f21, %lo(D_80142350)($at)
/* 000080 801342F0 4480B000 */  mtc1        $zero, $f22
/* 000084 801342F4 AFBF0044 */  sw          $ra, 0x44($sp)
/* 000088 801342F8 AFB40038 */  sw          $s4, 0x38($sp)
/* 00008C 801342FC AFB1002C */  sw          $s1, 0x2c($sp)
/* 000090 80134300 AFB00028 */  sw          $s0, 0x28($sp)
/* 000094 80134304 26734B70 */  addiu       $s3, $s3, %lo(D_80134B70)
/* 000098 80134308 26521624 */  addiu       $s2, $s2, %lo(D_80141624)
/* 00009C 8013430C 24150001 */  addiu       $s5, $zero, 0x1
/* 0000A0 80134310 24160003 */  addiu       $s6, $zero, 0x3
.L80134314:
/* 0000A4 80134314 8E4E0000 */  lw          $t6, 0x0($s2)
/* 0000A8 80134318 00008825 */  move        $s1, $zero
/* 0000AC 8013431C 000E78C0 */  sll         $t7, $t6, 3
/* 0000B0 80134320 026FC021 */  addu        $t8, $s3, $t7
/* 0000B4 80134324 8F140000 */  lw          $s4, 0x0($t8)
/* 0000B8 80134328 00008025 */  move        $s0, $zero
/* 0000BC 8013432C 1A800023 */  blez        $s4, .L801343BC
/* 0000C0 80134330 00000000 */   nop
.L80134334:
/* 0000C4 80134334 0C00EADA */  jal         func_8003AB68
/* 0000C8 80134338 00000000 */   nop
/* 0000CC 8013433C 44822000 */  mtc1        $v0, $f4
/* 0000D0 80134340 04410006 */  bgez        $v0, .L8013435C
/* 0000D4 80134344 468021A1 */   cvt.d.w    $f6, $f4
/* 0000D8 80134348 3C0141F0 */  lui         $at, 0x41f0
/* 0000DC 8013434C 44814800 */  mtc1        $at, $f9
/* 0000E0 80134350 44804000 */  mtc1        $zero, $f8
/* 0000E4 80134354 00000000 */  nop
/* 0000E8 80134358 46283180 */  add.d       $f6, $f6, $f8
.L8013435C:
/* 0000EC 8013435C 46363282 */  mul.d       $f10, $f6, $f22
/* 0000F0 80134360 462AA03C */  c.lt.d      $f20, $f10
/* 0000F4 80134364 00000000 */  nop
/* 0000F8 80134368 4500000A */  bc1f        .L80134394
/* 0000FC 8013436C 00000000 */   nop
/* 000100 80134370 8E590000 */  lw          $t9, 0x0($s2)
/* 000104 80134374 00002825 */  move        $a1, $zero
/* 000108 80134378 001940C0 */  sll         $t0, $t9, 3
/* 00010C 8013437C 02684821 */  addu        $t1, $s3, $t0
/* 000110 80134380 8D2A0004 */  lw          $t2, 0x4($t1)
/* 000114 80134384 0C04D09C */  jal         func_80134270_2BD950
/* 000118 80134388 01502021 */   addu       $a0, $t2, $s0
/* 00011C 8013438C 10000009 */  b           .L801343B4
/* 000120 80134390 26310001 */   addiu      $s1, $s1, 0x1
.L80134394:
/* 000124 80134394 8E4B0000 */  lw          $t3, 0x0($s2)
/* 000128 80134398 02A02825 */  move        $a1, $s5
/* 00012C 8013439C 000B60C0 */  sll         $t4, $t3, 3
/* 000130 801343A0 026C6821 */  addu        $t5, $s3, $t4
/* 000134 801343A4 8DAE0004 */  lw          $t6, 0x4($t5)
/* 000138 801343A8 0C04D09C */  jal         func_80134270_2BD950
/* 00013C 801343AC 01D02021 */   addu       $a0, $t6, $s0
/* 000140 801343B0 26310001 */  addiu       $s1, $s1, 0x1
.L801343B4:
/* 000144 801343B4 1634FFDF */  bne         $s1, $s4, .L80134334
/* 000148 801343B8 2610000C */   addiu      $s0, $s0, 0xc
.L801343BC:
/* 00014C 801343BC 26B50001 */  addiu       $s5, $s5, 0x1
/* 000150 801343C0 16B6FFD4 */  bne         $s5, $s6, .L80134314
/* 000154 801343C4 26520004 */   addiu      $s2, $s2, 0x4
/* 000158 801343C8 8FBF0044 */  lw          $ra, 0x44($sp)
/* 00015C 801343CC C7B50018 */  lwc1        $f21, 0x18($sp)
/* 000160 801343D0 C7B4001C */  lwc1        $f20, 0x1c($sp)
/* 000164 801343D4 C7B70020 */  lwc1        $f23, 0x20($sp)
/* 000168 801343D8 C7B60024 */  lwc1        $f22, 0x24($sp)
/* 00016C 801343DC 8FB00028 */  lw          $s0, 0x28($sp)
/* 000170 801343E0 8FB1002C */  lw          $s1, 0x2c($sp)
/* 000174 801343E4 8FB20030 */  lw          $s2, 0x30($sp)
/* 000178 801343E8 8FB30034 */  lw          $s3, 0x34($sp)
/* 00017C 801343EC 8FB40038 */  lw          $s4, 0x38($sp)
/* 000180 801343F0 8FB5003C */  lw          $s5, 0x3c($sp)
/* 000184 801343F4 8FB60040 */  lw          $s6, 0x40($sp)
/* 000188 801343F8 03E00008 */  jr          $ra
/* 00018C 801343FC 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80134400_2BD950 # 2
/* 000190 80134400 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 000194 80134404 AFBF0034 */  sw          $ra, 0x34($sp)
/* 000198 80134408 AFB60030 */  sw          $s6, 0x30($sp)
/* 00019C 8013440C AFB5002C */  sw          $s5, 0x2c($sp)
/* 0001A0 80134410 AFB40028 */  sw          $s4, 0x28($sp)
/* 0001A4 80134414 AFB30024 */  sw          $s3, 0x24($sp)
/* 0001A8 80134418 AFB20020 */  sw          $s2, 0x20($sp)
/* 0001AC 8013441C AFB1001C */  sw          $s1, 0x1c($sp)
/* 0001B0 80134420 AFB00018 */  sw          $s0, 0x18($sp)
/* 0001B4 80134424 0C00EAC8 */  jal         func_8003AB20
/* 0001B8 80134428 24040003 */   addiu      $a0, $zero, 0x3
/* 0001BC 8013442C 000270C0 */  sll         $t6, $v0, 3
/* 0001C0 80134430 01C27023 */  subu        $t6, $t6, $v0
/* 0001C4 80134434 3C0F8014 */  lui         $t7, %hi(D_80141578)
/* 0001C8 80134438 25EF1578 */  addiu       $t7, $t7, %lo(D_80141578)
/* 0001CC 8013443C 000E70C0 */  sll         $t6, $t6, 3
/* 0001D0 80134440 3C148014 */  lui         $s4, %hi(D_80141620)
/* 0001D4 80134444 3C138013 */  lui         $s3, %hi(D_80134B70)
/* 0001D8 80134448 26734B70 */  addiu       $s3, $s3, %lo(D_80134B70)
/* 0001DC 8013444C 26941620 */  addiu       $s4, $s4, %lo(D_80141620)
/* 0001E0 80134450 01CF8021 */  addu        $s0, $t6, $t7
/* 0001E4 80134454 00008825 */  move        $s1, $zero
/* 0001E8 80134458 27B60044 */  addiu       $s6, $sp, 0x44
/* 0001EC 8013445C 2415000C */  addiu       $s5, $zero, 0xc
/* 0001F0 80134460 24120038 */  addiu       $s2, $zero, 0x38
.L80134464:
/* 0001F4 80134464 8E050000 */  lw          $a1, 0x0($s0)
/* 0001F8 80134468 8E030004 */  lw          $v1, 0x4($s0)
/* 0001FC 8013446C 04A00014 */  bltz        $a1, .L801344C0
/* 000200 80134470 00000000 */   nop
/* 000204 80134474 00750019 */  multu       $v1, $s5
/* 000208 80134478 0005C080 */  sll         $t8, $a1, 2
/* 00020C 8013447C 0298C821 */  addu        $t9, $s4, $t8
/* 000210 80134480 8F280000 */  lw          $t0, 0x0($t9)
/* 000214 80134484 02C02025 */  move        $a0, $s6
/* 000218 80134488 000848C0 */  sll         $t1, $t0, 3
/* 00021C 8013448C 02695021 */  addu        $t2, $s3, $t1
/* 000220 80134490 8D4B0004 */  lw          $t3, 0x4($t2)
/* 000224 80134494 00006012 */  mflo        $t4
/* 000228 80134498 016C1021 */  addu        $v0, $t3, $t4
/* 00022C 8013449C C4440000 */  lwc1        $f4, 0x0($v0)
/* 000230 801344A0 00000000 */  nop
/* 000234 801344A4 E7A40044 */  swc1        $f4, 0x44($sp)
/* 000238 801344A8 C4460004 */  lwc1        $f6, 0x4($v0)
/* 00023C 801344AC 00000000 */  nop
/* 000240 801344B0 E7A60048 */  swc1        $f6, 0x48($sp)
/* 000244 801344B4 C4480008 */  lwc1        $f8, 0x8($v0)
/* 000248 801344B8 0C04D09C */  jal         func_80134270_2BD950
/* 00024C 801344BC E7A8004C */   swc1       $f8, 0x4c($sp)
.L801344C0:
/* 000250 801344C0 26310008 */  addiu       $s1, $s1, 0x8
/* 000254 801344C4 1632FFE7 */  bne         $s1, $s2, .L80134464
/* 000258 801344C8 26100008 */   addiu      $s0, $s0, 0x8
/* 00025C 801344CC 8FBF0034 */  lw          $ra, 0x34($sp)
/* 000260 801344D0 8FB00018 */  lw          $s0, 0x18($sp)
/* 000264 801344D4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000268 801344D8 8FB20020 */  lw          $s2, 0x20($sp)
/* 00026C 801344DC 8FB30024 */  lw          $s3, 0x24($sp)
/* 000270 801344E0 8FB40028 */  lw          $s4, 0x28($sp)
/* 000274 801344E4 8FB5002C */  lw          $s5, 0x2c($sp)
/* 000278 801344E8 8FB60030 */  lw          $s6, 0x30($sp)
/* 00027C 801344EC 03E00008 */  jr          $ra
/* 000280 801344F0 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_801344F4_2BD950 # 3
/* 000284 801344F4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000288 801344F8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00028C 801344FC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000290 80134500 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000294 80134504 44856000 */  mtc1        $a1, $f12
/* 000298 80134508 44802000 */  mtc1        $zero, $f4
/* 00029C 8013450C 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 0002A0 80134510 8DC50000 */  lw          $a1, 0x0($t6)
/* 0002A4 80134514 8DC70008 */  lw          $a3, 0x8($t6)
/* 0002A8 80134518 8DC60004 */  lw          $a2, 0x4($t6)
/* 0002AC 8013451C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 0002B0 80134520 E7AC0014 */  swc1        $f12, 0x14($sp)
/* 0002B4 80134524 E7A40010 */  swc1        $f4, 0x10($sp)
/* 0002B8 80134528 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 0002BC 8013452C 3C198014 */  lui         $t9, %hi(D_80141644)
/* 0002C0 80134530 8F391644 */  lw          $t9, %lo(D_80141644)($t9)
/* 0002C4 80134534 3C188014 */  lui         $t8, %hi(D_801404AC)
/* 0002C8 80134538 271804AC */  addiu       $t8, $t8, %lo(D_801404AC)
/* 0002CC 8013453C AFB8001C */  sw          $t8, 0x1c($sp)
/* 0002D0 80134540 2404000C */  addiu       $a0, $zero, 0xc
/* 0002D4 80134544 E7A60018 */  swc1        $f6, 0x18($sp)
/* 0002D8 80134548 0C007871 */  jal         func_8001E1C4
/* 0002DC 8013454C AFB90020 */   sw         $t9, 0x20($sp)
/* 0002E0 80134550 3C058014 */  lui         $a1, %hi(D_80141644)
/* 0002E4 80134554 8CA31644 */  lw          $v1, %lo(D_80141644)($a1)
/* 0002E8 80134558 00402025 */  move        $a0, $v0
/* 0002EC 8013455C 04610004 */  bgez        $v1, .L80134570
/* 0002F0 80134560 3C098014 */   lui        $t1, %hi(D_80141648)
.L80134564:
/* 0002F4 80134564 24630005 */  addiu       $v1, $v1, 0x5
/* 0002F8 80134568 0460FFFE */  bltz        $v1, .L80134564
/* 0002FC 8013456C 00000000 */   nop
.L80134570:
/* 000300 80134570 28610005 */  slti        $at, $v1, 0x5
/* 000304 80134574 14200005 */  bnez        $at, .L8013458C
/* 000308 80134578 25291648 */   addiu      $t1, $t1, %lo(D_80141648)
.L8013457C:
/* 00030C 8013457C 2463FFFB */  addiu       $v1, $v1, -0x5
/* 000310 80134580 28610005 */  slti        $at, $v1, 0x5
/* 000314 80134584 1020FFFD */  beqz        $at, .L8013457C
/* 000318 80134588 00000000 */   nop
.L8013458C:
/* 00031C 8013458C 00034080 */  sll         $t0, $v1, 2
/* 000320 80134590 01091021 */  addu        $v0, $t0, $t1
/* 000324 80134594 3C013F00 */  lui         $at, 0x3f00
/* 000328 80134598 44814000 */  mtc1        $at, $f8
/* 00032C 8013459C 904A0003 */  lbu         $t2, 0x3($v0)
/* 000330 801345A0 90450000 */  lbu         $a1, 0x0($v0)
/* 000334 801345A4 90460001 */  lbu         $a2, 0x1($v0)
/* 000338 801345A8 90470002 */  lbu         $a3, 0x2($v0)
/* 00033C 801345AC E7A80014 */  swc1        $f8, 0x14($sp)
/* 000340 801345B0 0C005562 */  jal         func_80015588
/* 000344 801345B4 AFAA0010 */   sw         $t2, 0x10($sp)
/* 000348 801345B8 3C058014 */  lui         $a1, %hi(D_80141644)
/* 00034C 801345BC 8CA51644 */  lw          $a1, %lo(D_80141644)($a1)
/* 000350 801345C0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000354 801345C4 3C018014 */  lui         $at, %hi(D_80141644)
/* 000358 801345C8 24A50001 */  addiu       $a1, $a1, 0x1
/* 00035C 801345CC AC251644 */  sw          $a1, %lo(D_80141644)($at)
/* 000360 801345D0 03E00008 */  jr          $ra
/* 000364 801345D4 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_801345D8_2BD950 # 4
/* 000368 801345D8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00036C 801345DC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000370 801345E0 0C00EADA */  jal         func_8003AB68
/* 000374 801345E4 AFA40018 */   sw         $a0, 0x18($sp)
/* 000378 801345E8 44822000 */  mtc1        $v0, $f4
/* 00037C 801345EC 8FA40018 */  lw          $a0, 0x18($sp)
/* 000380 801345F0 04410006 */  bgez        $v0, .L8013460C
/* 000384 801345F4 468021A1 */   cvt.d.w    $f6, $f4
/* 000388 801345F8 3C0141F0 */  lui         $at, 0x41f0
/* 00038C 801345FC 44814800 */  mtc1        $at, $f9
/* 000390 80134600 44804000 */  mtc1        $zero, $f8
/* 000394 80134604 00000000 */  nop
/* 000398 80134608 46283180 */  add.d       $f6, $f6, $f8
.L8013460C:
/* 00039C 8013460C 3C013DF0 */  lui         $at, 0x3df0
/* 0003A0 80134610 44815800 */  mtc1        $at, $f11
/* 0003A4 80134614 44805000 */  mtc1        $zero, $f10
/* 0003A8 80134618 3C018014 */  lui         $at, %hi(D_80142358)
/* 0003AC 8013461C 462A3402 */  mul.d       $f16, $f6, $f10
/* 0003B0 80134620 C4332358 */  lwc1        $f19, %lo(D_80142358)($at)
/* 0003B4 80134624 C432235C */  lwc1        $f18, %lo(D_8014235C)($at)
/* 0003B8 80134628 00000000 */  nop
/* 0003BC 8013462C 46328102 */  mul.d       $f4, $f16, $f18
/* 0003C0 80134630 46202220 */  cvt.s.d     $f8, $f4
/* 0003C4 80134634 44054000 */  mfc1        $a1, $f8
/* 0003C8 80134638 0C04D13D */  jal         func_801344F4_2BD950
/* 0003CC 8013463C 00000000 */   nop
/* 0003D0 80134640 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0003D4 80134644 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0003D8 80134648 03E00008 */  jr          $ra
/* 0003DC 8013464C 00000000 */   nop

glabel func_80134650_2BD950 # 5
/* 0003E0 80134650 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0003E4 80134654 AFA40030 */  sw          $a0, 0x30($sp)
/* 0003E8 80134658 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0003EC 8013465C AFBF002C */  sw          $ra, 0x2c($sp)
/* 0003F0 80134660 44856000 */  mtc1        $a1, $f12
/* 0003F4 80134664 44802000 */  mtc1        $zero, $f4
/* 0003F8 80134668 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 0003FC 8013466C 8DC50000 */  lw          $a1, 0x0($t6)
/* 000400 80134670 8DC70008 */  lw          $a3, 0x8($t6)
/* 000404 80134674 8DC60004 */  lw          $a2, 0x4($t6)
/* 000408 80134678 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 00040C 8013467C E7AC0014 */  swc1        $f12, 0x14($sp)
/* 000410 80134680 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000414 80134684 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 000418 80134688 3C188014 */  lui         $t8, %hi(D_80140854)
/* 00041C 8013468C 27180854 */  addiu       $t8, $t8, %lo(D_80140854)
/* 000420 80134690 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000424 80134694 AFA00020 */  sw          $zero, 0x20($sp)
/* 000428 80134698 2404000D */  addiu       $a0, $zero, 0xd
/* 00042C 8013469C 0C007871 */  jal         func_8001E1C4
/* 000430 801346A0 E7A60018 */   swc1       $f6, 0x18($sp)
/* 000434 801346A4 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000438 801346A8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00043C 801346AC 03E00008 */  jr          $ra
/* 000440 801346B0 00000000 */   nop

glabel func_801346B4_2BD950 # 6
/* 000444 801346B4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000448 801346B8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00044C 801346BC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000450 801346C0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000454 801346C4 44800000 */  mtc1        $zero, $f0
/* 000458 801346C8 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 00045C 801346CC 8DC70008 */  lw          $a3, 0x8($t6)
/* 000460 801346D0 8DC60004 */  lw          $a2, 0x4($t6)
/* 000464 801346D4 8DC50000 */  lw          $a1, 0x0($t6)
/* 000468 801346D8 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 00046C 801346DC E7A00014 */  swc1        $f0, 0x14($sp)
/* 000470 801346E0 E7A00010 */  swc1        $f0, 0x10($sp)
/* 000474 801346E4 C5E4000C */  lwc1        $f4, 0xc($t7)
/* 000478 801346E8 3C188014 */  lui         $t8, %hi(D_801412B4)
/* 00047C 801346EC 271812B4 */  addiu       $t8, $t8, %lo(D_801412B4)
/* 000480 801346F0 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000484 801346F4 AFA00020 */  sw          $zero, 0x20($sp)
/* 000488 801346F8 24040011 */  addiu       $a0, $zero, 0x11
/* 00048C 801346FC 0C007871 */  jal         func_8001E1C4
/* 000490 80134700 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000494 80134704 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000498 80134708 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00049C 8013470C 03E00008 */  jr          $ra
/* 0004A0 80134710 00000000 */   nop

glabel func_80134714_2BD950 # 7
/* 0004A4 80134714 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 0004A8 80134718 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0004AC 8013471C AFB40028 */  sw          $s4, 0x28($sp)
/* 0004B0 80134720 AFB30024 */  sw          $s3, 0x24($sp)
/* 0004B4 80134724 AFB20020 */  sw          $s2, 0x20($sp)
/* 0004B8 80134728 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0004BC 8013472C AFB00018 */  sw          $s0, 0x18($sp)
/* 0004C0 80134730 27A2003C */  addiu       $v0, $sp, 0x3c
/* 0004C4 80134734 27A30078 */  addiu       $v1, $sp, 0x78
.L80134738:
/* 0004C8 80134738 24420004 */  addiu       $v0, $v0, 0x4
/* 0004CC 8013473C 0043082B */  sltu        $at, $v0, $v1
/* 0004D0 80134740 1420FFFD */  bnez        $at, .L80134738
/* 0004D4 80134744 AC40FFFC */   sw         $zero, -0x4($v0)
/* 0004D8 80134748 3C128013 */  lui         $s2, %hi(D_80134ABC)
/* 0004DC 8013474C 26524ABC */  addiu       $s2, $s2, %lo(D_80134ABC)
/* 0004E0 80134750 00008025 */  move        $s0, $zero
/* 0004E4 80134754 24140005 */  addiu       $s4, $zero, 0x5
/* 0004E8 80134758 2413000C */  addiu       $s3, $zero, 0xc
/* 0004EC 8013475C 27B1003C */  addiu       $s1, $sp, 0x3c
.L80134760:
/* 0004F0 80134760 0C00EAC8 */  jal         func_8003AB20
/* 0004F4 80134764 2404000F */   addiu      $a0, $zero, 0xf
/* 0004F8 80134768 00027080 */  sll         $t6, $v0, 2
/* 0004FC 8013476C 022E7821 */  addu        $t7, $s1, $t6
/* 000500 80134770 8DF80000 */  lw          $t8, 0x0($t7)
/* 000504 80134774 00401825 */  move        $v1, $v0
/* 000508 80134778 13000013 */  beqz        $t8, .L801347C8
/* 00050C 8013477C 0002C880 */   sll        $t9, $v0, 2
/* 000510 80134780 02391021 */  addu        $v0, $s1, $t9
.L80134784:
/* 000514 80134784 24630001 */  addiu       $v1, $v1, 0x1
/* 000518 80134788 04610004 */  bgez        $v1, .L8013479C
/* 00051C 8013478C 24420004 */   addiu      $v0, $v0, 0x4
.L80134790:
/* 000520 80134790 2463000F */  addiu       $v1, $v1, 0xf
/* 000524 80134794 0460FFFE */  bltz        $v1, .L80134790
/* 000528 80134798 2442003C */   addiu      $v0, $v0, 0x3c
.L8013479C:
/* 00052C 8013479C 2861000F */  slti        $at, $v1, 0xf
/* 000530 801347A0 14200005 */  bnez        $at, .L801347B8
/* 000534 801347A4 00000000 */   nop
.L801347A8:
/* 000538 801347A8 2463FFF1 */  addiu       $v1, $v1, -0xf
/* 00053C 801347AC 2861000F */  slti        $at, $v1, 0xf
/* 000540 801347B0 1020FFFD */  beqz        $at, .L801347A8
/* 000544 801347B4 2442FFC4 */   addiu      $v0, $v0, -0x3c
.L801347B8:
/* 000548 801347B8 8C480000 */  lw          $t0, 0x0($v0)
/* 00054C 801347BC 00000000 */  nop
/* 000550 801347C0 1500FFF0 */  bnez        $t0, .L80134784
/* 000554 801347C4 00000000 */   nop
.L801347C8:
/* 000558 801347C8 00730019 */  multu       $v1, $s3
/* 00055C 801347CC 00004812 */  mflo        $t1
/* 000560 801347D0 02492021 */  addu        $a0, $s2, $t1
/* 000564 801347D4 0C04D176 */  jal         func_801345D8_2BD950
/* 000568 801347D8 00000000 */   nop
/* 00056C 801347DC 26100001 */  addiu       $s0, $s0, 0x1
/* 000570 801347E0 1614FFDF */  bne         $s0, $s4, .L80134760
/* 000574 801347E4 00000000 */   nop
/* 000578 801347E8 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00057C 801347EC 8FB00018 */  lw          $s0, 0x18($sp)
/* 000580 801347F0 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000584 801347F4 8FB20020 */  lw          $s2, 0x20($sp)
/* 000588 801347F8 8FB30024 */  lw          $s3, 0x24($sp)
/* 00058C 801347FC 8FB40028 */  lw          $s4, 0x28($sp)
/* 000590 80134800 03E00008 */  jr          $ra
/* 000594 80134804 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_80134808_2BD950 # 8
/* 000598 80134808 03E00008 */  jr          $ra
/* 00059C 8013480C 00000000 */   nop

glabel func_80134810_2BD950 # 9
/* 0005A0 80134810 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0005A4 80134814 3C0F8014 */  lui         $t7, %hi(D_8014166C)
/* 0005A8 80134818 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0005AC 8013481C 25EF166C */  addiu       $t7, $t7, %lo(D_8014166C)
/* 0005B0 80134820 8DE10000 */  lw          $at, 0x0($t7)
/* 0005B4 80134824 27AE0024 */  addiu       $t6, $sp, 0x24
/* 0005B8 80134828 ADC10000 */  sw          $at, 0x0($t6)
/* 0005BC 8013482C 8DE10008 */  lw          $at, 0x8($t7)
/* 0005C0 80134830 8DE80004 */  lw          $t0, 0x4($t7)
/* 0005C4 80134834 3C0A8014 */  lui         $t2, %hi(D_80141678)
/* 0005C8 80134838 254A1678 */  addiu       $t2, $t2, %lo(D_80141678)
/* 0005CC 8013483C ADC10008 */  sw          $at, 0x8($t6)
/* 0005D0 80134840 ADC80004 */  sw          $t0, 0x4($t6)
/* 0005D4 80134844 8D410000 */  lw          $at, 0x0($t2)
/* 0005D8 80134848 27A90018 */  addiu       $t1, $sp, 0x18
/* 0005DC 8013484C AD210000 */  sw          $at, 0x0($t1)
/* 0005E0 80134850 8D410008 */  lw          $at, 0x8($t2)
/* 0005E4 80134854 8D4D0004 */  lw          $t5, 0x4($t2)
/* 0005E8 80134858 AD210008 */  sw          $at, 0x8($t1)
/* 0005EC 8013485C 0C007044 */  jal         func_8001C110
/* 0005F0 80134860 AD2D0004 */   sw         $t5, 0x4($t1)
/* 0005F4 80134864 0C04D0AC */  jal         func_801342B0_2BD950
/* 0005F8 80134868 00000000 */   nop
/* 0005FC 8013486C 0C04D100 */  jal         func_80134400_2BD950
/* 000600 80134870 00000000 */   nop
/* 000604 80134874 3C048014 */  lui         $a0, %hi(D_80142304)
/* 000608 80134878 24842304 */  addiu       $a0, $a0, %lo(D_80142304)
/* 00060C 8013487C 0C002ED2 */  jal         func_8000BB48
/* 000610 80134880 24050001 */   addiu      $a1, $zero, 0x1
/* 000614 80134884 27A40024 */  addiu       $a0, $sp, 0x24
/* 000618 80134888 0C04D194 */  jal         func_80134650_2BD950
/* 00061C 8013488C 3C054363 */   lui        $a1, 0x4363
/* 000620 80134890 0C04D1AD */  jal         func_801346B4_2BD950
/* 000624 80134894 27A40018 */   addiu      $a0, $sp, 0x18
/* 000628 80134898 0C04D1C5 */  jal         func_80134714_2BD950
/* 00062C 8013489C 00000000 */   nop
/* 000630 801348A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000634 801348A4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000638 801348A8 03E00008 */  jr          $ra
/* 00063C 801348AC 00000000 */   nop

glabel func_801348B0_2BD950 # 10
/* 000640 801348B0 3C014014 */  lui         $at, 0x4014
/* 000644 801348B4 44813800 */  mtc1        $at, $f7
/* 000648 801348B8 44803000 */  mtc1        $zero, $f6
/* 00064C 801348BC 46007121 */  cvt.d.s     $f4, $f14
/* 000650 801348C0 00000000 */  nop
/* 000654 801348C4 46262203 */  div.d       $f8, $f4, $f6
/* 000658 801348C8 AFA60008 */  sw          $a2, 0x8($sp)
/* 00065C 801348CC 444EF800 */  cfc1        $t6, FpcCsr
/* 000660 801348D0 00000000 */  nop
/* 000664 801348D4 35C10003 */  ori         $at, $t6, 0x3
/* 000668 801348D8 38210002 */  xori        $at, $at, 0x2
/* 00066C 801348DC 44C1F800 */  ctc1        $at, FpcCsr
/* 000670 801348E0 00000000 */  nop
/* 000674 801348E4 462042A4 */  cvt.w.d     $f10, $f8
/* 000678 801348E8 44025000 */  mfc1        $v0, $f10
/* 00067C 801348EC 44CEF800 */  ctc1        $t6, FpcCsr
/* 000680 801348F0 04400027 */  bltz        $v0, .L80134990
/* 000684 801348F4 28410020 */   slti       $at, $v0, 0x20
/* 000688 801348F8 10200025 */  beqz        $at, .L80134990
/* 00068C 801348FC 3C014024 */   lui        $at, 0x4024
/* 000690 80134900 44810800 */  mtc1        $at, $f1
/* 000694 80134904 44800000 */  mtc1        $zero, $f0
/* 000698 80134908 46006421 */  cvt.d.s     $f16, $f12
/* 00069C 8013490C 00000000 */  nop
/* 0006A0 80134910 46208483 */  div.d       $f18, $f16, $f0
/* 0006A4 80134914 444FF800 */  cfc1        $t7, FpcCsr
/* 0006A8 80134918 00000000 */  nop
/* 0006AC 8013491C 35E10003 */  ori         $at, $t7, 0x3
/* 0006B0 80134920 38210002 */  xori        $at, $at, 0x2
/* 0006B4 80134924 44C1F800 */  ctc1        $at, FpcCsr
/* 0006B8 80134928 00000000 */  nop
/* 0006BC 8013492C 46209124 */  cvt.w.d     $f4, $f18
/* 0006C0 80134930 44032000 */  mfc1        $v1, $f4
/* 0006C4 80134934 44CFF800 */  ctc1        $t7, FpcCsr
/* 0006C8 80134938 04600015 */  bltz        $v1, .L80134990
/* 0006CC 8013493C 28610020 */   slti       $at, $v1, 0x20
/* 0006D0 80134940 10200013 */  beqz        $at, .L80134990
/* 0006D4 80134944 00000000 */   nop
/* 0006D8 80134948 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 0006DC 8013494C 00000000 */  nop
/* 0006E0 80134950 46003221 */  cvt.d.s     $f8, $f6
/* 0006E4 80134954 00000000 */  nop
/* 0006E8 80134958 46204283 */  div.d       $f10, $f8, $f0
/* 0006EC 8013495C 4458F800 */  cfc1        $t8, FpcCsr
/* 0006F0 80134960 00000000 */  nop
/* 0006F4 80134964 37010003 */  ori         $at, $t8, 0x3
/* 0006F8 80134968 38210002 */  xori        $at, $at, 0x2
/* 0006FC 8013496C 44C1F800 */  ctc1        $at, FpcCsr
/* 000700 80134970 00000000 */  nop
/* 000704 80134974 46205424 */  cvt.w.d     $f16, $f10
/* 000708 80134978 44048000 */  mfc1        $a0, $f16
/* 00070C 8013497C 44D8F800 */  ctc1        $t8, FpcCsr
/* 000710 80134980 04800003 */  bltz        $a0, .L80134990
/* 000714 80134984 28810020 */   slti       $at, $a0, 0x20
/* 000718 80134988 14200003 */  bnez        $at, .L80134998
/* 00071C 8013498C 0002C880 */   sll        $t9, $v0, 2
.L80134990:
/* 000720 80134990 03E00008 */  jr          $ra
/* 000724 80134994 00001025 */   move       $v0, $zero
.L80134998:
/* 000728 80134998 3C058015 */  lui         $a1, %hi(D_80150ED4)
/* 00072C 8013499C 00B92821 */  addu        $a1, $a1, $t9
/* 000730 801349A0 8CA50ED4 */  lw          $a1, %lo(D_80150ED4)($a1)
/* 000734 801349A4 000449C0 */  sll         $t1, $a0, 7
/* 000738 801349A8 14A00003 */  bnez        $a1, .L801349B8
/* 00073C 801349AC 00A95021 */   addu       $t2, $a1, $t1
/* 000740 801349B0 03E00008 */  jr          $ra
/* 000744 801349B4 00001025 */   move       $v0, $zero
.L801349B8:
/* 000748 801349B8 00035880 */  sll         $t3, $v1, 2
/* 00074C 801349BC 014B6021 */  addu        $t4, $t2, $t3
/* 000750 801349C0 8D820000 */  lw          $v0, 0x0($t4)
/* 000754 801349C4 00000000 */  nop
/* 000758 801349C8 03E00008 */  jr          $ra
/* 00075C 801349CC 00000000 */   nop
