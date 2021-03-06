.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80134270_29CA40 # 0
/* 000000 80134270 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80134274 00051080 */  sll         $v0, $a1, 2
/* 000008 80134278 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00000C 8013427C 3C058014 */  lui         $a1, %hi(D_8014142C)
/* 000010 80134280 3C068014 */  lui         $a2, %hi(D_80141438)
/* 000014 80134284 00C23021 */  addu        $a2, $a2, $v0
/* 000018 80134288 00A22821 */  addu        $a1, $a1, $v0
/* 00001C 8013428C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000020 80134290 8CA5142C */  lw          $a1, %lo(D_8014142C)($a1)
/* 000024 80134294 8CC61438 */  lw          $a2, %lo(D_80141438)($a2)
/* 000028 80134298 0C043722 */  jal         func_8010DC88
/* 00002C 8013429C 00003825 */   move       $a3, $zero
/* 000030 801342A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000034 801342A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000038 801342A8 03E00008 */  jr          $ra
/* 00003C 801342AC 00000000 */   nop

glabel func_801342B0_29CA40 # 1
/* 000040 801342B0 03E00008 */  jr          $ra
/* 000044 801342B4 00000000 */   nop

glabel func_801342B8_29CA40 # 2
/* 000048 801342B8 03E00008 */  jr          $ra
/* 00004C 801342BC 00000000 */   nop

glabel func_801342C0_29CA40 # 3
/* 000050 801342C0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 000054 801342C4 AFB5002C */  sw          $s5, 0x2c($sp)
/* 000058 801342C8 AFB40028 */  sw          $s4, 0x28($sp)
/* 00005C 801342CC AFB60030 */  sw          $s6, 0x30($sp)
/* 000060 801342D0 AFB30024 */  sw          $s3, 0x24($sp)
/* 000064 801342D4 3C148014 */  lui         $s4, %hi(D_80141424)
/* 000068 801342D8 3C158013 */  lui         $s5, %hi(D_8013495C)
/* 00006C 801342DC AFBF0034 */  sw          $ra, 0x34($sp)
/* 000070 801342E0 AFB20020 */  sw          $s2, 0x20($sp)
/* 000074 801342E4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000078 801342E8 AFB00018 */  sw          $s0, 0x18($sp)
/* 00007C 801342EC 26B5495C */  addiu       $s5, $s5, %lo(D_8013495C)
/* 000080 801342F0 26941424 */  addiu       $s4, $s4, %lo(D_80141424)
/* 000084 801342F4 24130001 */  addiu       $s3, $zero, 0x1
/* 000088 801342F8 24160003 */  addiu       $s6, $zero, 0x3
.L801342FC:
/* 00008C 801342FC 8E8E0000 */  lw          $t6, 0x0($s4)
/* 000090 80134300 00008025 */  move        $s0, $zero
/* 000094 80134304 000E78C0 */  sll         $t7, $t6, 3
/* 000098 80134308 02AFC021 */  addu        $t8, $s5, $t7
/* 00009C 8013430C 8F120000 */  lw          $s2, 0x0($t8)
/* 0000A0 80134310 00008825 */  move        $s1, $zero
/* 0000A4 80134314 1A40000B */  blez        $s2, .L80134344
/* 0000A8 80134318 00000000 */   nop
.L8013431C:
/* 0000AC 8013431C 8E990000 */  lw          $t9, 0x0($s4)
/* 0000B0 80134320 02602825 */  move        $a1, $s3
/* 0000B4 80134324 001940C0 */  sll         $t0, $t9, 3
/* 0000B8 80134328 02A84821 */  addu        $t1, $s5, $t0
/* 0000BC 8013432C 8D2A0004 */  lw          $t2, 0x4($t1)
/* 0000C0 80134330 0C04D09C */  jal         func_80134270_29CA40
/* 0000C4 80134334 01512021 */   addu       $a0, $t2, $s1
/* 0000C8 80134338 26100001 */  addiu       $s0, $s0, 0x1
/* 0000CC 8013433C 1612FFF7 */  bne         $s0, $s2, .L8013431C
/* 0000D0 80134340 2631000C */   addiu      $s1, $s1, 0xc
.L80134344:
/* 0000D4 80134344 26730001 */  addiu       $s3, $s3, 0x1
/* 0000D8 80134348 1676FFEC */  bne         $s3, $s6, .L801342FC
/* 0000DC 8013434C 26940004 */   addiu      $s4, $s4, 0x4
/* 0000E0 80134350 8FBF0034 */  lw          $ra, 0x34($sp)
/* 0000E4 80134354 8FB00018 */  lw          $s0, 0x18($sp)
/* 0000E8 80134358 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0000EC 8013435C 8FB20020 */  lw          $s2, 0x20($sp)
/* 0000F0 80134360 8FB30024 */  lw          $s3, 0x24($sp)
/* 0000F4 80134364 8FB40028 */  lw          $s4, 0x28($sp)
/* 0000F8 80134368 8FB5002C */  lw          $s5, 0x2c($sp)
/* 0000FC 8013436C 8FB60030 */  lw          $s6, 0x30($sp)
/* 000100 80134370 03E00008 */  jr          $ra
/* 000104 80134374 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80134378_29CA40 # 4
/* 000108 80134378 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00010C 8013437C AFA40030 */  sw          $a0, 0x30($sp)
/* 000110 80134380 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000114 80134384 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000118 80134388 44856000 */  mtc1        $a1, $f12
/* 00011C 8013438C 44802000 */  mtc1        $zero, $f4
/* 000120 80134390 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 000124 80134394 8DC50000 */  lw          $a1, 0x0($t6)
/* 000128 80134398 8DC70008 */  lw          $a3, 0x8($t6)
/* 00012C 8013439C 8DC60004 */  lw          $a2, 0x4($t6)
/* 000130 801343A0 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 000134 801343A4 E7AC0014 */  swc1        $f12, 0x14($sp)
/* 000138 801343A8 E7A40010 */  swc1        $f4, 0x10($sp)
/* 00013C 801343AC C5E6000C */  lwc1        $f6, 0xc($t7)
/* 000140 801343B0 3C198014 */  lui         $t9, %hi(D_80141444)
/* 000144 801343B4 8F391444 */  lw          $t9, %lo(D_80141444)($t9)
/* 000148 801343B8 3C188014 */  lui         $t8, %hi(D_801402D0)
/* 00014C 801343BC 271802D0 */  addiu       $t8, $t8, %lo(D_801402D0)
/* 000150 801343C0 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000154 801343C4 2404000C */  addiu       $a0, $zero, 0xc
/* 000158 801343C8 E7A60018 */  swc1        $f6, 0x18($sp)
/* 00015C 801343CC 0C007871 */  jal         func_8001E1C4
/* 000160 801343D0 AFB90020 */   sw         $t9, 0x20($sp)
/* 000164 801343D4 3C058014 */  lui         $a1, %hi(D_80141444)
/* 000168 801343D8 8CA31444 */  lw          $v1, %lo(D_80141444)($a1)
/* 00016C 801343DC 00402025 */  move        $a0, $v0
/* 000170 801343E0 04610004 */  bgez        $v1, .L801343F4
/* 000174 801343E4 3C098014 */   lui        $t1, %hi(D_80141448)
.L801343E8:
/* 000178 801343E8 24630005 */  addiu       $v1, $v1, 0x5
/* 00017C 801343EC 0460FFFE */  bltz        $v1, .L801343E8
/* 000180 801343F0 00000000 */   nop
.L801343F4:
/* 000184 801343F4 28610005 */  slti        $at, $v1, 0x5
/* 000188 801343F8 14200005 */  bnez        $at, .L80134410
/* 00018C 801343FC 25291448 */   addiu      $t1, $t1, %lo(D_80141448)
.L80134400:
/* 000190 80134400 2463FFFB */  addiu       $v1, $v1, -0x5
/* 000194 80134404 28610005 */  slti        $at, $v1, 0x5
/* 000198 80134408 1020FFFD */  beqz        $at, .L80134400
/* 00019C 8013440C 00000000 */   nop
.L80134410:
/* 0001A0 80134410 00034080 */  sll         $t0, $v1, 2
/* 0001A4 80134414 01091021 */  addu        $v0, $t0, $t1
/* 0001A8 80134418 3C013F00 */  lui         $at, 0x3f00
/* 0001AC 8013441C 44814000 */  mtc1        $at, $f8
/* 0001B0 80134420 904A0003 */  lbu         $t2, 0x3($v0)
/* 0001B4 80134424 90450000 */  lbu         $a1, 0x0($v0)
/* 0001B8 80134428 90460001 */  lbu         $a2, 0x1($v0)
/* 0001BC 8013442C 90470002 */  lbu         $a3, 0x2($v0)
/* 0001C0 80134430 E7A80014 */  swc1        $f8, 0x14($sp)
/* 0001C4 80134434 0C005562 */  jal         func_80015588
/* 0001C8 80134438 AFAA0010 */   sw         $t2, 0x10($sp)
/* 0001CC 8013443C 3C058014 */  lui         $a1, %hi(D_80141444)
/* 0001D0 80134440 8CA51444 */  lw          $a1, %lo(D_80141444)($a1)
/* 0001D4 80134444 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0001D8 80134448 3C018014 */  lui         $at, %hi(D_80141444)
/* 0001DC 8013444C 24A50001 */  addiu       $a1, $a1, 0x1
/* 0001E0 80134450 AC251444 */  sw          $a1, %lo(D_80141444)($at)
/* 0001E4 80134454 03E00008 */  jr          $ra
/* 0001E8 80134458 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8013445C_29CA40 # 5
/* 0001EC 8013445C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0001F0 80134460 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0001F4 80134464 0C00EADA */  jal         func_8003AB68
/* 0001F8 80134468 AFA40018 */   sw         $a0, 0x18($sp)
/* 0001FC 8013446C 44822000 */  mtc1        $v0, $f4
/* 000200 80134470 8FA40018 */  lw          $a0, 0x18($sp)
/* 000204 80134474 04410006 */  bgez        $v0, .L80134490
/* 000208 80134478 468021A1 */   cvt.d.w    $f6, $f4
/* 00020C 8013447C 3C0141F0 */  lui         $at, 0x41f0
/* 000210 80134480 44814800 */  mtc1        $at, $f9
/* 000214 80134484 44804000 */  mtc1        $zero, $f8
/* 000218 80134488 00000000 */  nop
/* 00021C 8013448C 46283180 */  add.d       $f6, $f6, $f8
.L80134490:
/* 000220 80134490 3C013DF0 */  lui         $at, 0x3df0
/* 000224 80134494 44815800 */  mtc1        $at, $f11
/* 000228 80134498 44805000 */  mtc1        $zero, $f10
/* 00022C 8013449C 3C018014 */  lui         $at, %hi(D_801420E8)
/* 000230 801344A0 462A3402 */  mul.d       $f16, $f6, $f10
/* 000234 801344A4 C43320E8 */  lwc1        $f19, %lo(D_801420E8)($at)
/* 000238 801344A8 C43220EC */  lwc1        $f18, %lo(D_801420EC)($at)
/* 00023C 801344AC 00000000 */  nop
/* 000240 801344B0 46328102 */  mul.d       $f4, $f16, $f18
/* 000244 801344B4 46202220 */  cvt.s.d     $f8, $f4
/* 000248 801344B8 44054000 */  mfc1        $a1, $f8
/* 00024C 801344BC 0C04D0DE */  jal         func_80134378_29CA40
/* 000250 801344C0 00000000 */   nop
/* 000254 801344C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000258 801344C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00025C 801344CC 03E00008 */  jr          $ra
/* 000260 801344D0 00000000 */   nop

glabel func_801344D4_29CA40 # 6
/* 000264 801344D4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000268 801344D8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00026C 801344DC 8FAE0030 */  lw          $t6, 0x30($sp)
/* 000270 801344E0 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000274 801344E4 44856000 */  mtc1        $a1, $f12
/* 000278 801344E8 44802000 */  mtc1        $zero, $f4
/* 00027C 801344EC 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 000280 801344F0 8DC50000 */  lw          $a1, 0x0($t6)
/* 000284 801344F4 8DC70008 */  lw          $a3, 0x8($t6)
/* 000288 801344F8 8DC60004 */  lw          $a2, 0x4($t6)
/* 00028C 801344FC 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 000290 80134500 E7AC0014 */  swc1        $f12, 0x14($sp)
/* 000294 80134504 E7A40010 */  swc1        $f4, 0x10($sp)
/* 000298 80134508 C5E6000C */  lwc1        $f6, 0xc($t7)
/* 00029C 8013450C 3C188014 */  lui         $t8, %hi(D_8014069C)
/* 0002A0 80134510 2718069C */  addiu       $t8, $t8, %lo(D_8014069C)
/* 0002A4 80134514 AFB8001C */  sw          $t8, 0x1c($sp)
/* 0002A8 80134518 AFA00020 */  sw          $zero, 0x20($sp)
/* 0002AC 8013451C 24040003 */  addiu       $a0, $zero, 0x3
/* 0002B0 80134520 0C007871 */  jal         func_8001E1C4
/* 0002B4 80134524 E7A60018 */   swc1       $f6, 0x18($sp)
/* 0002B8 80134528 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0002BC 8013452C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0002C0 80134530 03E00008 */  jr          $ra
/* 0002C4 80134534 00000000 */   nop

glabel func_80134538_29CA40 # 7
/* 0002C8 80134538 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0002CC 8013453C AFA40030 */  sw          $a0, 0x30($sp)
/* 0002D0 80134540 8FAE0030 */  lw          $t6, 0x30($sp)
/* 0002D4 80134544 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0002D8 80134548 44800000 */  mtc1        $zero, $f0
/* 0002DC 8013454C 3C0F8013 */  lui         $t7, %hi(D_80133DE4)
/* 0002E0 80134550 8DC70008 */  lw          $a3, 0x8($t6)
/* 0002E4 80134554 8DC60004 */  lw          $a2, 0x4($t6)
/* 0002E8 80134558 8DC50000 */  lw          $a1, 0x0($t6)
/* 0002EC 8013455C 8DEF3DE4 */  lw          $t7, %lo(D_80133DE4)($t7)
/* 0002F0 80134560 E7A00014 */  swc1        $f0, 0x14($sp)
/* 0002F4 80134564 E7A00010 */  swc1        $f0, 0x10($sp)
/* 0002F8 80134568 C5E4000C */  lwc1        $f4, 0xc($t7)
/* 0002FC 8013456C 3C188014 */  lui         $t8, %hi(D_801410FC)
/* 000300 80134570 271810FC */  addiu       $t8, $t8, %lo(D_801410FC)
/* 000304 80134574 AFB8001C */  sw          $t8, 0x1c($sp)
/* 000308 80134578 AFA00020 */  sw          $zero, 0x20($sp)
/* 00030C 8013457C 24040011 */  addiu       $a0, $zero, 0x11
/* 000310 80134580 0C007871 */  jal         func_8001E1C4
/* 000314 80134584 E7A40018 */   swc1       $f4, 0x18($sp)
/* 000318 80134588 8FBF002C */  lw          $ra, 0x2c($sp)
/* 00031C 8013458C 27BD0030 */  addiu       $sp, $sp, 0x30
/* 000320 80134590 03E00008 */  jr          $ra
/* 000324 80134594 00000000 */   nop

glabel func_80134598_29CA40 # 8
/* 000328 80134598 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 00032C 8013459C AFBF002C */  sw          $ra, 0x2c($sp)
/* 000330 801345A0 AFB40028 */  sw          $s4, 0x28($sp)
/* 000334 801345A4 AFB30024 */  sw          $s3, 0x24($sp)
/* 000338 801345A8 AFB20020 */  sw          $s2, 0x20($sp)
/* 00033C 801345AC AFB1001C */  sw          $s1, 0x1c($sp)
/* 000340 801345B0 AFB00018 */  sw          $s0, 0x18($sp)
/* 000344 801345B4 27A20038 */  addiu       $v0, $sp, 0x38
/* 000348 801345B8 27A30078 */  addiu       $v1, $sp, 0x78
.L801345BC:
/* 00034C 801345BC 24420004 */  addiu       $v0, $v0, 0x4
/* 000350 801345C0 0043082B */  sltu        $at, $v0, $v1
/* 000354 801345C4 1420FFFD */  bnez        $at, .L801345BC
/* 000358 801345C8 AC40FFFC */   sw         $zero, -0x4($v0)
/* 00035C 801345CC 3C128013 */  lui         $s2, %hi(D_8013489C)
/* 000360 801345D0 2652489C */  addiu       $s2, $s2, %lo(D_8013489C)
/* 000364 801345D4 00008025 */  move        $s0, $zero
/* 000368 801345D8 24140004 */  addiu       $s4, $zero, 0x4
/* 00036C 801345DC 2413000C */  addiu       $s3, $zero, 0xc
/* 000370 801345E0 27B10038 */  addiu       $s1, $sp, 0x38
.L801345E4:
/* 000374 801345E4 0C00EAC8 */  jal         func_8003AB20
/* 000378 801345E8 24040010 */   addiu      $a0, $zero, 0x10
/* 00037C 801345EC 00027080 */  sll         $t6, $v0, 2
/* 000380 801345F0 022E7821 */  addu        $t7, $s1, $t6
/* 000384 801345F4 8DF80000 */  lw          $t8, 0x0($t7)
/* 000388 801345F8 00401825 */  move        $v1, $v0
/* 00038C 801345FC 13000013 */  beqz        $t8, .L8013464C
/* 000390 80134600 0002C880 */   sll        $t9, $v0, 2
/* 000394 80134604 02391021 */  addu        $v0, $s1, $t9
.L80134608:
/* 000398 80134608 24630001 */  addiu       $v1, $v1, 0x1
/* 00039C 8013460C 04610004 */  bgez        $v1, .L80134620
/* 0003A0 80134610 24420004 */   addiu      $v0, $v0, 0x4
.L80134614:
/* 0003A4 80134614 24630010 */  addiu       $v1, $v1, 0x10
/* 0003A8 80134618 0460FFFE */  bltz        $v1, .L80134614
/* 0003AC 8013461C 24420040 */   addiu      $v0, $v0, 0x40
.L80134620:
/* 0003B0 80134620 28610010 */  slti        $at, $v1, 0x10
/* 0003B4 80134624 14200005 */  bnez        $at, .L8013463C
/* 0003B8 80134628 00000000 */   nop
.L8013462C:
/* 0003BC 8013462C 2463FFF0 */  addiu       $v1, $v1, -0x10
/* 0003C0 80134630 28610010 */  slti        $at, $v1, 0x10
/* 0003C4 80134634 1020FFFD */  beqz        $at, .L8013462C
/* 0003C8 80134638 2442FFC0 */   addiu      $v0, $v0, -0x40
.L8013463C:
/* 0003CC 8013463C 8C480000 */  lw          $t0, 0x0($v0)
/* 0003D0 80134640 00000000 */  nop
/* 0003D4 80134644 1500FFF0 */  bnez        $t0, .L80134608
/* 0003D8 80134648 00000000 */   nop
.L8013464C:
/* 0003DC 8013464C 00730019 */  multu       $v1, $s3
/* 0003E0 80134650 00004812 */  mflo        $t1
/* 0003E4 80134654 02492021 */  addu        $a0, $s2, $t1
/* 0003E8 80134658 0C04D117 */  jal         func_8013445C_29CA40
/* 0003EC 8013465C 00000000 */   nop
/* 0003F0 80134660 26100001 */  addiu       $s0, $s0, 0x1
/* 0003F4 80134664 1614FFDF */  bne         $s0, $s4, .L801345E4
/* 0003F8 80134668 00000000 */   nop
/* 0003FC 8013466C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000400 80134670 8FB00018 */  lw          $s0, 0x18($sp)
/* 000404 80134674 8FB1001C */  lw          $s1, 0x1c($sp)
/* 000408 80134678 8FB20020 */  lw          $s2, 0x20($sp)
/* 00040C 8013467C 8FB30024 */  lw          $s3, 0x24($sp)
/* 000410 80134680 8FB40028 */  lw          $s4, 0x28($sp)
/* 000414 80134684 03E00008 */  jr          $ra
/* 000418 80134688 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_8013468C_29CA40 # 9
/* 00041C 8013468C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000420 80134690 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000424 80134694 0C007044 */  jal         func_8001C110
/* 000428 80134698 00000000 */   nop
/* 00042C 8013469C 0C04D0B0 */  jal         func_801342C0_29CA40
/* 000430 801346A0 00000000 */   nop
/* 000434 801346A4 3C048014 */  lui         $a0, %hi(D_801420A4)
/* 000438 801346A8 248420A4 */  addiu       $a0, $a0, %lo(D_801420A4)
/* 00043C 801346AC 0C002ED2 */  jal         func_8000BB48
/* 000440 801346B0 24050001 */   addiu      $a1, $zero, 0x1
/* 000444 801346B4 3C048014 */  lui         $a0, %hi(D_8014145C)
/* 000448 801346B8 2484145C */  addiu       $a0, $a0, %lo(D_8014145C)
/* 00044C 801346BC 0C04D135 */  jal         func_801344D4_29CA40
/* 000450 801346C0 3C05439B */   lui        $a1, 0x439b
/* 000454 801346C4 0C04D166 */  jal         func_80134598_29CA40
/* 000458 801346C8 00000000 */   nop
/* 00045C 801346CC 3C048014 */  lui         $a0, %hi(D_80141474)
/* 000460 801346D0 0C04D14E */  jal         func_80134538_29CA40
/* 000464 801346D4 24841474 */   addiu      $a0, $a0, %lo(D_80141474)
/* 000468 801346D8 3C048014 */  lui         $a0, %hi(D_80141468)
/* 00046C 801346DC 24841468 */  addiu       $a0, $a0, %lo(D_80141468)
/* 000470 801346E0 0C04D0DE */  jal         func_80134378_29CA40
/* 000474 801346E4 3C054120 */   lui        $a1, 0x4120
/* 000478 801346E8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00047C 801346EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000480 801346F0 03E00008 */  jr          $ra
/* 000484 801346F4 00000000 */   nop

glabel func_801346F8_29CA40 # 10
/* 000488 801346F8 3C014014 */  lui         $at, 0x4014
/* 00048C 801346FC 44813800 */  mtc1        $at, $f7
/* 000490 80134700 44803000 */  mtc1        $zero, $f6
/* 000494 80134704 46007121 */  cvt.d.s     $f4, $f14
/* 000498 80134708 00000000 */  nop
/* 00049C 8013470C 46262203 */  div.d       $f8, $f4, $f6
/* 0004A0 80134710 AFA60008 */  sw          $a2, 0x8($sp)
/* 0004A4 80134714 444EF800 */  cfc1        $t6, FpcCsr
/* 0004A8 80134718 00000000 */  nop
/* 0004AC 8013471C 35C10003 */  ori         $at, $t6, 0x3
/* 0004B0 80134720 38210002 */  xori        $at, $at, 0x2
/* 0004B4 80134724 44C1F800 */  ctc1        $at, FpcCsr
/* 0004B8 80134728 00000000 */  nop
/* 0004BC 8013472C 462042A4 */  cvt.w.d     $f10, $f8
/* 0004C0 80134730 44025000 */  mfc1        $v0, $f10
/* 0004C4 80134734 44CEF800 */  ctc1        $t6, FpcCsr
/* 0004C8 80134738 04400027 */  bltz        $v0, .L801347D8
/* 0004CC 8013473C 28410020 */   slti       $at, $v0, 0x20
/* 0004D0 80134740 10200025 */  beqz        $at, .L801347D8
/* 0004D4 80134744 3C014024 */   lui        $at, 0x4024
/* 0004D8 80134748 44810800 */  mtc1        $at, $f1
/* 0004DC 8013474C 44800000 */  mtc1        $zero, $f0
/* 0004E0 80134750 46006421 */  cvt.d.s     $f16, $f12
/* 0004E4 80134754 00000000 */  nop
/* 0004E8 80134758 46208483 */  div.d       $f18, $f16, $f0
/* 0004EC 8013475C 444FF800 */  cfc1        $t7, FpcCsr
/* 0004F0 80134760 00000000 */  nop
/* 0004F4 80134764 35E10003 */  ori         $at, $t7, 0x3
/* 0004F8 80134768 38210002 */  xori        $at, $at, 0x2
/* 0004FC 8013476C 44C1F800 */  ctc1        $at, FpcCsr
/* 000500 80134770 00000000 */  nop
/* 000504 80134774 46209124 */  cvt.w.d     $f4, $f18
/* 000508 80134778 44032000 */  mfc1        $v1, $f4
/* 00050C 8013477C 44CFF800 */  ctc1        $t7, FpcCsr
/* 000510 80134780 04600015 */  bltz        $v1, .L801347D8
/* 000514 80134784 28610020 */   slti       $at, $v1, 0x20
/* 000518 80134788 10200013 */  beqz        $at, .L801347D8
/* 00051C 8013478C 00000000 */   nop
/* 000520 80134790 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 000524 80134794 00000000 */  nop
/* 000528 80134798 46003221 */  cvt.d.s     $f8, $f6
/* 00052C 8013479C 00000000 */  nop
/* 000530 801347A0 46204283 */  div.d       $f10, $f8, $f0
/* 000534 801347A4 4458F800 */  cfc1        $t8, FpcCsr
/* 000538 801347A8 00000000 */  nop
/* 00053C 801347AC 37010003 */  ori         $at, $t8, 0x3
/* 000540 801347B0 38210002 */  xori        $at, $at, 0x2
/* 000544 801347B4 44C1F800 */  ctc1        $at, FpcCsr
/* 000548 801347B8 00000000 */  nop
/* 00054C 801347BC 46205424 */  cvt.w.d     $f16, $f10
/* 000550 801347C0 44048000 */  mfc1        $a0, $f16
/* 000554 801347C4 44D8F800 */  ctc1        $t8, FpcCsr
/* 000558 801347C8 04800003 */  bltz        $a0, .L801347D8
/* 00055C 801347CC 28810020 */   slti       $at, $a0, 0x20
/* 000560 801347D0 14200003 */  bnez        $at, .L801347E0
/* 000564 801347D4 0002C880 */   sll        $t9, $v0, 2
.L801347D8:
/* 000568 801347D8 03E00008 */  jr          $ra
/* 00056C 801347DC 00001025 */   move       $v0, $zero
.L801347E0:
/* 000570 801347E0 3C058015 */  lui         $a1, %hi(D_801550F4)
/* 000574 801347E4 00B92821 */  addu        $a1, $a1, $t9
/* 000578 801347E8 8CA550F4 */  lw          $a1, %lo(D_801550F4)($a1)
/* 00057C 801347EC 000449C0 */  sll         $t1, $a0, 7
/* 000580 801347F0 14A00003 */  bnez        $a1, .L80134800
/* 000584 801347F4 00A95021 */   addu       $t2, $a1, $t1
/* 000588 801347F8 03E00008 */  jr          $ra
/* 00058C 801347FC 00001025 */   move       $v0, $zero
.L80134800:
/* 000590 80134800 00035880 */  sll         $t3, $v1, 2
/* 000594 80134804 014B6021 */  addu        $t4, $t2, $t3
/* 000598 80134808 8D820000 */  lw          $v0, 0x0($t4)
/* 00059C 8013480C 00000000 */  nop
/* 0005A0 80134810 03E00008 */  jr          $ra
/* 0005A4 80134814 00000000 */   nop
/* 0005A8 80134818 00000000 */  nop
/* 0005AC 8013481C 00000000 */  nop
