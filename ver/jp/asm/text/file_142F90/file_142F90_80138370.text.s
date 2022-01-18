.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80138370_142F90 # 0
/* 000000 80138370 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 80138374 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 80138378 3C048015 */  lui         $a0, %hi(D_80150FEC)
/* 00000C 8013837C 3C058015 */  lui         $a1, %hi(D_80148B98)
/* 000010 80138380 24A58B98 */  addiu       $a1, $a1, %lo(D_80148B98)
/* 000014 80138384 0C0444F0 */  jal         func_801113C0
/* 000018 80138388 24840FEC */   addiu      $a0, $a0, %lo(D_80150FEC)
/* 00001C 8013838C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000020 80138390 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000024 80138394 03E00008 */  jr          $ra
/* 000028 80138398 00000000 */   nop

glabel func_8013839C_142F90 # 1
/* 00002C 8013839C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000030 801383A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000034 801383A4 3C048014 */  lui         $a0, %hi(D_801387C0)
/* 000038 801383A8 3C058015 */  lui         $a1, %hi(D_80149028)
/* 00003C 801383AC 3C068015 */  lui         $a2, %hi(D_80149130)
/* 000040 801383B0 24C69130 */  addiu       $a2, $a2, %lo(D_80149130)
/* 000044 801383B4 24A59028 */  addiu       $a1, $a1, %lo(D_80149028)
/* 000048 801383B8 248487C0 */  addiu       $a0, $a0, %lo(D_801387C0)
/* 00004C 801383BC 0C044538 */  jal         func_801114E0
/* 000050 801383C0 00003825 */   move       $a3, $zero
/* 000054 801383C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000058 801383C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00005C 801383CC 03E00008 */  jr          $ra
/* 000060 801383D0 00000000 */   nop

glabel func_801383D4_142F90 # 2
/* 000064 801383D4 3C014320 */  lui         $at, 0x4320
/* 000068 801383D8 44812000 */  mtc1        $at, $f4
/* 00006C 801383DC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000070 801383E0 3C0140F0 */  lui         $at, 0x40f0
/* 000074 801383E4 44813000 */  mtc1        $at, $f6
/* 000078 801383E8 3C014383 */  lui         $at, 0x4383
/* 00007C 801383EC 44814000 */  mtc1        $at, $f8
/* 000080 801383F0 3C0E8015 */  lui         $t6, %hi(D_80153018)
/* 000084 801383F4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000088 801383F8 25CE3018 */  addiu       $t6, $t6, %lo(D_80153018)
/* 00008C 801383FC AFAE0010 */  sw          $t6, 0x10($sp)
/* 000090 80138400 27A40024 */  addiu       $a0, $sp, 0x24
/* 000094 80138404 24050001 */  addiu       $a1, $zero, 0x1
/* 000098 80138408 24060004 */  addiu       $a2, $zero, 0x4
/* 00009C 8013840C 00003825 */  move        $a3, $zero
/* 0000A0 80138410 E7A40024 */  swc1        $f4, 0x24($sp)
/* 0000A4 80138414 E7A60028 */  swc1        $f6, 0x28($sp)
/* 0000A8 80138418 0C0457E0 */  jal         func_80115F80
/* 0000AC 8013841C E7A8002C */   swc1       $f8, 0x2c($sp)
/* 0000B0 80138420 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0000B4 80138424 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0000B8 80138428 03E00008 */  jr          $ra
/* 0000BC 8013842C 00000000 */   nop

glabel func_80138430_142F90 # 3
/* 0000C0 80138430 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0000C4 80138434 E7B4001C */  swc1        $f20, 0x1c($sp)
/* 0000C8 80138438 4480A000 */  mtc1        $zero, $f20
/* 0000CC 8013843C AFBF0024 */  sw          $ra, 0x24($sp)
/* 0000D0 80138440 240E0001 */  addiu       $t6, $zero, 0x1
/* 0000D4 80138444 4406A000 */  mfc1        $a2, $f20
/* 0000D8 80138448 4407A000 */  mfc1        $a3, $f20
/* 0000DC 8013844C E7B50018 */  swc1        $f21, 0x18($sp)
/* 0000E0 80138450 AFAE0014 */  sw          $t6, 0x14($sp)
/* 0000E4 80138454 4600A306 */  mov.s       $f12, $f20
/* 0000E8 80138458 4600A386 */  mov.s       $f14, $f20
/* 0000EC 8013845C 0C045BDD */  jal         func_80116F74
/* 0000F0 80138460 E7B40010 */   swc1       $f20, 0x10($sp)
/* 0000F4 80138464 00402025 */  move        $a0, $v0
/* 0000F8 80138468 0C00B312 */  jal         func_8002CC48
/* 0000FC 8013846C 00002825 */   move       $a1, $zero
/* 000100 80138470 4406A000 */  mfc1        $a2, $f20
/* 000104 80138474 4407A000 */  mfc1        $a3, $f20
/* 000108 80138478 240F0005 */  addiu       $t7, $zero, 0x5
/* 00010C 8013847C AFAF0014 */  sw          $t7, 0x14($sp)
/* 000110 80138480 4600A306 */  mov.s       $f12, $f20
/* 000114 80138484 4600A386 */  mov.s       $f14, $f20
/* 000118 80138488 0C045BDD */  jal         func_80116F74
/* 00011C 8013848C E7B40010 */   swc1       $f20, 0x10($sp)
/* 000120 80138490 00402025 */  move        $a0, $v0
/* 000124 80138494 0C00B312 */  jal         func_8002CC48
/* 000128 80138498 00002825 */   move       $a1, $zero
/* 00012C 8013849C 4406A000 */  mfc1        $a2, $f20
/* 000130 801384A0 4407A000 */  mfc1        $a3, $f20
/* 000134 801384A4 24180006 */  addiu       $t8, $zero, 0x6
/* 000138 801384A8 AFB80014 */  sw          $t8, 0x14($sp)
/* 00013C 801384AC 4600A306 */  mov.s       $f12, $f20
/* 000140 801384B0 4600A386 */  mov.s       $f14, $f20
/* 000144 801384B4 0C045BDD */  jal         func_80116F74
/* 000148 801384B8 E7B40010 */   swc1       $f20, 0x10($sp)
/* 00014C 801384BC 00402025 */  move        $a0, $v0
/* 000150 801384C0 0C00B312 */  jal         func_8002CC48
/* 000154 801384C4 00002825 */   move       $a1, $zero
/* 000158 801384C8 4406A000 */  mfc1        $a2, $f20
/* 00015C 801384CC 4407A000 */  mfc1        $a3, $f20
/* 000160 801384D0 24190007 */  addiu       $t9, $zero, 0x7
/* 000164 801384D4 AFB90014 */  sw          $t9, 0x14($sp)
/* 000168 801384D8 4600A306 */  mov.s       $f12, $f20
/* 00016C 801384DC 4600A386 */  mov.s       $f14, $f20
/* 000170 801384E0 0C045BDD */  jal         func_80116F74
/* 000174 801384E4 E7B40010 */   swc1       $f20, 0x10($sp)
/* 000178 801384E8 00402025 */  move        $a0, $v0
/* 00017C 801384EC 0C00B312 */  jal         func_8002CC48
/* 000180 801384F0 00002825 */   move       $a1, $zero
/* 000184 801384F4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 000188 801384F8 C7B50018 */  lwc1        $f21, 0x18($sp)
/* 00018C 801384FC C7B4001C */  lwc1        $f20, 0x1c($sp)
/* 000190 80138500 03E00008 */  jr          $ra
/* 000194 80138504 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_80138508_142F90 # 4
/* 000198 80138508 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00019C 8013850C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0001A0 80138510 0C04E0DC */  jal         func_80138370_142F90
/* 0001A4 80138514 00000000 */   nop
/* 0001A8 80138518 0C04E0E7 */  jal         func_8013839C_142F90
/* 0001AC 8013851C 00000000 */   nop
/* 0001B0 80138520 0C00A217 */  jal         func_8002885C
/* 0001B4 80138524 00000000 */   nop
/* 0001B8 80138528 24010004 */  addiu       $at, $zero, 0x4
/* 0001BC 8013852C 14410003 */  bne         $v0, $at, .L8013853C
/* 0001C0 80138530 00000000 */   nop
/* 0001C4 80138534 0C04E10C */  jal         func_80138430_142F90
/* 0001C8 80138538 00000000 */   nop
.L8013853C:
/* 0001CC 8013853C 0C04E0F5 */  jal         func_801383D4_142F90
/* 0001D0 80138540 00000000 */   nop
/* 0001D4 80138544 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0001D8 80138548 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0001DC 8013854C 03E00008 */  jr          $ra
/* 0001E0 80138550 00000000 */   nop

glabel func_80138554_142F90 # 5
/* 0001E4 80138554 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 0001E8 80138558 AFBF0064 */  sw          $ra, 0x64($sp)
/* 0001EC 8013855C AFB30060 */  sw          $s3, 0x60($sp)
/* 0001F0 80138560 AFB2005C */  sw          $s2, 0x5c($sp)
/* 0001F4 80138564 AFB10058 */  sw          $s1, 0x58($sp)
/* 0001F8 80138568 AFB00054 */  sw          $s0, 0x54($sp)
/* 0001FC 8013856C E7BD0048 */  swc1        $f29, 0x48($sp)
/* 000200 80138570 E7BC004C */  swc1        $f28, 0x4c($sp)
/* 000204 80138574 E7BB0040 */  swc1        $f27, 0x40($sp)
/* 000208 80138578 E7BA0044 */  swc1        $f26, 0x44($sp)
/* 00020C 8013857C E7B90038 */  swc1        $f25, 0x38($sp)
/* 000210 80138580 E7B8003C */  swc1        $f24, 0x3c($sp)
/* 000214 80138584 E7B70030 */  swc1        $f23, 0x30($sp)
/* 000218 80138588 E7B60034 */  swc1        $f22, 0x34($sp)
/* 00021C 8013858C E7B50028 */  swc1        $f21, 0x28($sp)
/* 000220 80138590 0C04E0E7 */  jal         func_8013839C_142F90
/* 000224 80138594 E7B4002C */   swc1       $f20, 0x2c($sp)
/* 000228 80138598 3C014357 */  lui         $at, 0x4357
/* 00022C 8013859C 4481C000 */  mtc1        $at, $f24
/* 000230 801385A0 3C013FC0 */  lui         $at, 0x3fc0
/* 000234 801385A4 4481B000 */  mtc1        $at, $f22
/* 000238 801385A8 3C014334 */  lui         $at, 0x4334
/* 00023C 801385AC 3C128015 */  lui         $s2, %hi(D_80150FD8)
/* 000240 801385B0 3C118013 */  lui         $s1, %hi(D_80137EE4)
/* 000244 801385B4 4481A000 */  mtc1        $at, $f20
/* 000248 801385B8 4480E000 */  mtc1        $zero, $f28
/* 00024C 801385BC 4480D000 */  mtc1        $zero, $f26
/* 000250 801385C0 26317EE4 */  addiu       $s1, $s1, %lo(D_80137EE4)
/* 000254 801385C4 26520FD8 */  addiu       $s2, $s2, %lo(D_80150FD8)
/* 000258 801385C8 00008025 */  move        $s0, $zero
/* 00025C 801385CC 24130006 */  addiu       $s3, $zero, 0x6
.L801385D0:
/* 000260 801385D0 8E2E0000 */  lw          $t6, 0x0($s1)
/* 000264 801385D4 E7BA0010 */  swc1        $f26, 0x10($sp)
/* 000268 801385D8 E7BC0014 */  swc1        $f28, 0x14($sp)
/* 00026C 801385DC C5C4000C */  lwc1        $f4, 0xc($t6)
/* 000270 801385E0 4405A000 */  mfc1        $a1, $f20
/* 000274 801385E4 4406B000 */  mfc1        $a2, $f22
/* 000278 801385E8 4407C000 */  mfc1        $a3, $f24
/* 00027C 801385EC AFB00020 */  sw          $s0, 0x20($sp)
/* 000280 801385F0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 000284 801385F4 24040024 */  addiu       $a0, $zero, 0x24
/* 000288 801385F8 0C007179 */  jal         func_8001C5E4
/* 00028C 801385FC E7A40018 */   swc1       $f4, 0x18($sp)
/* 000290 80138600 26100001 */  addiu       $s0, $s0, 0x1
/* 000294 80138604 1613FFF2 */  bne         $s0, $s3, .L801385D0
/* 000298 80138608 00000000 */   nop
/* 00029C 8013860C 8FBF0064 */  lw          $ra, 0x64($sp)
/* 0002A0 80138610 C7B50028 */  lwc1        $f21, 0x28($sp)
/* 0002A4 80138614 C7B4002C */  lwc1        $f20, 0x2c($sp)
/* 0002A8 80138618 C7B70030 */  lwc1        $f23, 0x30($sp)
/* 0002AC 8013861C C7B60034 */  lwc1        $f22, 0x34($sp)
/* 0002B0 80138620 C7B90038 */  lwc1        $f25, 0x38($sp)
/* 0002B4 80138624 C7B8003C */  lwc1        $f24, 0x3c($sp)
/* 0002B8 80138628 C7BB0040 */  lwc1        $f27, 0x40($sp)
/* 0002BC 8013862C C7BA0044 */  lwc1        $f26, 0x44($sp)
/* 0002C0 80138630 C7BD0048 */  lwc1        $f29, 0x48($sp)
/* 0002C4 80138634 C7BC004C */  lwc1        $f28, 0x4c($sp)
/* 0002C8 80138638 8FB00054 */  lw          $s0, 0x54($sp)
/* 0002CC 8013863C 8FB10058 */  lw          $s1, 0x58($sp)
/* 0002D0 80138640 8FB2005C */  lw          $s2, 0x5c($sp)
/* 0002D4 80138644 8FB30060 */  lw          $s3, 0x60($sp)
/* 0002D8 80138648 03E00008 */  jr          $ra
/* 0002DC 8013864C 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_80138650_142F90 # 6
/* 0002E0 80138650 3C0E800F */  lui         $t6, %hi(D_800F5290)
/* 0002E4 80138654 8DCE5290 */  lw          $t6, %lo(D_800F5290)($t6)
/* 0002E8 80138658 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0002EC 8013865C 24010002 */  addiu       $at, $zero, 0x2
/* 0002F0 80138660 15C10005 */  bne         $t6, $at, .L80138678
/* 0002F4 80138664 AFBF0014 */   sw         $ra, 0x14($sp)
/* 0002F8 80138668 0C04E155 */  jal         func_80138554_142F90
/* 0002FC 8013866C 00000000 */   nop
/* 000300 80138670 10000004 */  b           .L80138684
/* 000304 80138674 8FBF0014 */   lw         $ra, 0x14($sp)
.L80138678:
/* 000308 80138678 0C04E142 */  jal         func_80138508_142F90
/* 00030C 8013867C 00000000 */   nop
/* 000310 80138680 8FBF0014 */  lw          $ra, 0x14($sp)
.L80138684:
/* 000314 80138684 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000318 80138688 03E00008 */  jr          $ra
/* 00031C 8013868C 00000000 */   nop

glabel func_80138690_142F90 # 7
/* 000320 80138690 3C014014 */  lui         $at, 0x4014
/* 000324 80138694 44813800 */  mtc1        $at, $f7
/* 000328 80138698 44803000 */  mtc1        $zero, $f6
/* 00032C 8013869C 46007121 */  cvt.d.s     $f4, $f14
/* 000330 801386A0 00000000 */  nop
/* 000334 801386A4 46262203 */  div.d       $f8, $f4, $f6
/* 000338 801386A8 AFA60008 */  sw          $a2, 0x8($sp)
/* 00033C 801386AC 444EF800 */  cfc1        $t6, FpcCsr
/* 000340 801386B0 00000000 */  nop
/* 000344 801386B4 35C10003 */  ori         $at, $t6, 0x3
/* 000348 801386B8 38210002 */  xori        $at, $at, 0x2
/* 00034C 801386BC 44C1F800 */  ctc1        $at, FpcCsr
/* 000350 801386C0 00000000 */  nop
/* 000354 801386C4 462042A4 */  cvt.w.d     $f10, $f8
/* 000358 801386C8 44025000 */  mfc1        $v0, $f10
/* 00035C 801386CC 44CEF800 */  ctc1        $t6, FpcCsr
/* 000360 801386D0 04400027 */  bltz        $v0, .L80138770
/* 000364 801386D4 28410020 */   slti       $at, $v0, 0x20
/* 000368 801386D8 10200025 */  beqz        $at, .L80138770
/* 00036C 801386DC 3C014024 */   lui        $at, 0x4024
/* 000370 801386E0 44810800 */  mtc1        $at, $f1
/* 000374 801386E4 44800000 */  mtc1        $zero, $f0
/* 000378 801386E8 46006421 */  cvt.d.s     $f16, $f12
/* 00037C 801386EC 00000000 */  nop
/* 000380 801386F0 46208483 */  div.d       $f18, $f16, $f0
/* 000384 801386F4 444FF800 */  cfc1        $t7, FpcCsr
/* 000388 801386F8 00000000 */  nop
/* 00038C 801386FC 35E10003 */  ori         $at, $t7, 0x3
/* 000390 80138700 38210002 */  xori        $at, $at, 0x2
/* 000394 80138704 44C1F800 */  ctc1        $at, FpcCsr
/* 000398 80138708 00000000 */  nop
/* 00039C 8013870C 46209124 */  cvt.w.d     $f4, $f18
/* 0003A0 80138710 44032000 */  mfc1        $v1, $f4
/* 0003A4 80138714 44CFF800 */  ctc1        $t7, FpcCsr
/* 0003A8 80138718 04600015 */  bltz        $v1, .L80138770
/* 0003AC 8013871C 28610020 */   slti       $at, $v1, 0x20
/* 0003B0 80138720 10200013 */  beqz        $at, .L80138770
/* 0003B4 80138724 00000000 */   nop
/* 0003B8 80138728 C7A60008 */  lwc1        $f6, 0x8($sp)
/* 0003BC 8013872C 00000000 */  nop
/* 0003C0 80138730 46003221 */  cvt.d.s     $f8, $f6
/* 0003C4 80138734 00000000 */  nop
/* 0003C8 80138738 46204283 */  div.d       $f10, $f8, $f0
/* 0003CC 8013873C 4458F800 */  cfc1        $t8, FpcCsr
/* 0003D0 80138740 00000000 */  nop
/* 0003D4 80138744 37010003 */  ori         $at, $t8, 0x3
/* 0003D8 80138748 38210002 */  xori        $at, $at, 0x2
/* 0003DC 8013874C 44C1F800 */  ctc1        $at, FpcCsr
/* 0003E0 80138750 00000000 */  nop
/* 0003E4 80138754 46205424 */  cvt.w.d     $f16, $f10
/* 0003E8 80138758 44048000 */  mfc1        $a0, $f16
/* 0003EC 8013875C 44D8F800 */  ctc1        $t8, FpcCsr
/* 0003F0 80138760 04800003 */  bltz        $a0, .L80138770
/* 0003F4 80138764 28810020 */   slti       $at, $a0, 0x20
/* 0003F8 80138768 14200003 */  bnez        $at, .L80138778
/* 0003FC 8013876C 0002C880 */   sll        $t9, $v0, 2
.L80138770:
/* 000400 80138770 03E00008 */  jr          $ra
/* 000404 80138774 00001025 */   move       $v0, $zero
.L80138778:
/* 000408 80138778 3C058018 */  lui         $a1, %hi(D_801844E0)
/* 00040C 8013877C 00B92821 */  addu        $a1, $a1, $t9
/* 000410 80138780 8CA544E0 */  lw          $a1, %lo(D_801844E0)($a1)
/* 000414 80138784 000449C0 */  sll         $t1, $a0, 7
/* 000418 80138788 14A00003 */  bnez        $a1, .L80138798
/* 00041C 8013878C 00A95021 */   addu       $t2, $a1, $t1
/* 000420 80138790 03E00008 */  jr          $ra
/* 000424 80138794 00001025 */   move       $v0, $zero
.L80138798:
/* 000428 80138798 00035880 */  sll         $t3, $v1, 2
/* 00042C 8013879C 014B6021 */  addu        $t4, $t2, $t3
/* 000430 801387A0 8D820000 */  lw          $v0, 0x0($t4)
/* 000434 801387A4 00000000 */  nop
/* 000438 801387A8 03E00008 */  jr          $ra
/* 00043C 801387AC 00000000 */   nop
