.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osCreateViManager # 0
/* 053FB0 80054400 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 053FB4 80054404 AFB00020 */  sw          $s0, 0x20($sp)
/* 053FB8 80054408 3C10800A */  lui         $s0, %hi(__osViDevMgr)
/* 053FBC 8005440C 2610F670 */  addiu       $s0, $s0, %lo(__osViDevMgr)
/* 053FC0 80054410 8E0E0000 */  lw          $t6, 0x0($s0)
/* 053FC4 80054414 AFBF0024 */  sw          $ra, 0x24($sp)
/* 053FC8 80054418 AFA40030 */  sw          $a0, 0x30($sp)
/* 053FCC 8005441C 55C00054 */  bnel        $t6, $zero, .L80054570
/* 053FD0 80054420 8FBF0024 */   lw         $ra, 0x24($sp)
/* 053FD4 80054424 0C0162B0 */  jal         __osTimerServicesInit
/* 053FD8 80054428 00000000 */   nop
/* 053FDC 8005442C 3C01800A */  lui         $at, %hi(__additional_scanline)
/* 053FE0 80054430 3C048010 */  lui         $a0, %hi(viEventQueue)
/* 053FE4 80054434 3C058010 */  lui         $a1, %hi(viEventBuf)
/* 053FE8 80054438 AC20F68C */  sw          $zero, %lo(__additional_scanline)($at)
/* 053FEC 8005443C 24A50268 */  addiu       $a1, $a1, %lo(viEventBuf)
/* 053FF0 80054440 24840250 */  addiu       $a0, $a0, %lo(viEventQueue)
/* 053FF4 80054444 0C0145B8 */  jal         osCreateMesgQueue
/* 053FF8 80054448 24060005 */   addiu      $a2, $zero, 0x5
/* 053FFC 8005444C 3C068010 */  lui         $a2, %hi(viRetraceMsg)
/* 054000 80054450 3C078010 */  lui         $a3, %hi(viCounterMsg)
/* 054004 80054454 24E70298 */  addiu       $a3, $a3, %lo(viCounterMsg)
/* 054008 80054458 24C60280 */  addiu       $a2, $a2, %lo(viRetraceMsg)
/* 05400C 8005445C 240F000D */  addiu       $t7, $zero, 0xd
/* 054010 80054460 2418000E */  addiu       $t8, $zero, 0xe
/* 054014 80054464 3C058010 */  lui         $a1, %hi(viEventQueue)
/* 054018 80054468 A4CF0000 */  sh          $t7, 0x0($a2)
/* 05401C 8005446C A0C00002 */  sb          $zero, 0x2($a2)
/* 054020 80054470 ACC00004 */  sw          $zero, 0x4($a2)
/* 054024 80054474 A4F80000 */  sh          $t8, 0x0($a3)
/* 054028 80054478 A0E00002 */  sb          $zero, 0x2($a3)
/* 05402C 8005447C ACE00004 */  sw          $zero, 0x4($a3)
/* 054030 80054480 24A50250 */  addiu       $a1, $a1, %lo(viEventQueue)
/* 054034 80054484 0C0145C4 */  jal         osSetEventMesg
/* 054038 80054488 24040007 */   addiu      $a0, $zero, 0x7
/* 05403C 8005448C 3C078010 */  lui         $a3, %hi(viCounterMsg)
/* 054040 80054490 3C058010 */  lui         $a1, %hi(viEventQueue)
/* 054044 80054494 24E60298 */  addiu       $a2, $a3, %lo(viCounterMsg)
/* 054048 80054498 24A50250 */  addiu       $a1, $a1, %lo(viEventQueue)
/* 05404C 8005449C 0C0145C4 */  jal         osSetEventMesg
/* 054050 800544A0 24040003 */   addiu      $a0, $zero, 0x3
/* 054054 800544A4 2419FFFF */  addiu       $t9, $zero, -0x1
/* 054058 800544A8 AFB90028 */  sw          $t9, 0x28($sp)
/* 05405C 800544AC 0C016804 */  jal         osGetThreadPri
/* 054060 800544B0 00002025 */   move       $a0, $zero
/* 054064 800544B4 8FA80030 */  lw          $t0, 0x30($sp)
/* 054068 800544B8 00002025 */  move        $a0, $zero
/* 05406C 800544BC 0048082A */  slt         $at, $v0, $t0
/* 054070 800544C0 10200003 */  beqz        $at, .L800544D0
/* 054074 800544C4 01002825 */   move       $a1, $t0
/* 054078 800544C8 0C014350 */  jal         osSetThreadPri
/* 05407C 800544CC AFA20028 */   sw         $v0, 0x28($sp)
.L800544D0:
/* 054080 800544D0 0C015FFC */  jal         __osDisableInt
/* 054084 800544D4 00000000 */   nop
/* 054088 800544D8 8FAB0030 */  lw          $t3, 0x30($sp)
/* 05408C 800544DC 3C038010 */  lui         $v1, %hi(viEventQueue)
/* 054090 800544E0 3C048010 */  lui         $a0, %hi(viThread)
/* 054094 800544E4 3C0A8010 */  lui         $t2, %hi(viEventQueue)
/* 054098 800544E8 2484F0A0 */  addiu       $a0, $a0, %lo(viThread)
/* 05409C 800544EC 24630250 */  addiu       $v1, $v1, %lo(viEventQueue)
/* 0540A0 800544F0 24090001 */  addiu       $t1, $zero, 0x1
/* 0540A4 800544F4 254A0250 */  addiu       $t2, $t2, %lo(viEventQueue)
/* 0540A8 800544F8 3C068005 */  lui         $a2, %hi(viMgrMain)
/* 0540AC 800544FC AFA2002C */  sw          $v0, 0x2c($sp)
/* 0540B0 80054500 AE090000 */  sw          $t1, 0x0($s0)
/* 0540B4 80054504 AE040004 */  sw          $a0, 0x4($s0)
/* 0540B8 80054508 AE030008 */  sw          $v1, 0x8($s0)
/* 0540BC 8005450C AE03000C */  sw          $v1, 0xc($s0)
/* 0540C0 80054510 AE000010 */  sw          $zero, 0x10($s0)
/* 0540C4 80054514 AE000014 */  sw          $zero, 0x14($s0)
/* 0540C8 80054518 AE000018 */  sw          $zero, 0x18($s0)
/* 0540CC 8005451C 24C64580 */  addiu       $a2, $a2, %lo(viMgrMain)
/* 0540D0 80054520 AFAA0010 */  sw          $t2, 0x10($sp)
/* 0540D4 80054524 00002825 */  move        $a1, $zero
/* 0540D8 80054528 02003825 */  move        $a3, $s0
/* 0540DC 8005452C 0C0142A8 */  jal         osCreateThread
/* 0540E0 80054530 AFAB0014 */   sw         $t3, 0x14($sp)
/* 0540E4 80054534 0C016460 */  jal         __osViInit
/* 0540E8 80054538 00000000 */   nop
/* 0540EC 8005453C 3C048010 */  lui         $a0, %hi(viThread)
/* 0540F0 80054540 0C0142FC */  jal         osStartThread
/* 0540F4 80054544 2484F0A0 */   addiu      $a0, $a0, %lo(viThread)
/* 0540F8 80054548 0C016018 */  jal         __osRestoreInt
/* 0540FC 8005454C 8FA4002C */   lw         $a0, 0x2c($sp)
/* 054100 80054550 8FAC0028 */  lw          $t4, 0x28($sp)
/* 054104 80054554 2401FFFF */  addiu       $at, $zero, -0x1
/* 054108 80054558 00002025 */  move        $a0, $zero
/* 05410C 8005455C 51810004 */  beql        $t4, $at, .L80054570
/* 054110 80054560 8FBF0024 */   lw         $ra, 0x24($sp)
/* 054114 80054564 0C014350 */  jal         osSetThreadPri
/* 054118 80054568 01802825 */   move       $a1, $t4
/* 05411C 8005456C 8FBF0024 */  lw          $ra, 0x24($sp)
.L80054570:
/* 054120 80054570 8FB00020 */  lw          $s0, 0x20($sp)
/* 054124 80054574 27BD0030 */  addiu       $sp, $sp, 0x30
/* 054128 80054578 03E00008 */  jr          $ra
/* 05412C 8005457C 00000000 */   nop

glabel viMgrMain # 1
/* 054130 80054580 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 054134 80054584 AFBF0034 */  sw          $ra, 0x34($sp)
/* 054138 80054588 AFB70030 */  sw          $s7, 0x30($sp)
/* 05413C 8005458C 0080B825 */  move        $s7, $a0
/* 054140 80054590 AFB6002C */  sw          $s6, 0x2c($sp)
/* 054144 80054594 AFB50028 */  sw          $s5, 0x28($sp)
/* 054148 80054598 AFB40024 */  sw          $s4, 0x24($sp)
/* 05414C 8005459C AFB30020 */  sw          $s3, 0x20($sp)
/* 054150 800545A0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 054154 800545A4 AFB10018 */  sw          $s1, 0x18($sp)
/* 054158 800545A8 AFB00014 */  sw          $s0, 0x14($sp)
/* 05415C 800545AC 0C0169BC */  jal         __osViGetCurrentContext
/* 054160 800545B0 AFA00044 */   sw         $zero, 0x44($sp)
/* 054164 800545B4 94430002 */  lhu         $v1, 0x2($v0)
/* 054168 800545B8 3C018010 */  lui         $at, %hi(viCounterMsg + 0x18)
/* 05416C 800545BC 2416000E */  addiu       $s6, $zero, 0xe
/* 054170 800545C0 14600004 */  bnez        $v1, .L800545D4
/* 054174 800545C4 A42302B0 */   sh         $v1, %lo(viCounterMsg + 0x18)($at)
/* 054178 800545C8 24030001 */  addiu       $v1, $zero, 0x1
/* 05417C 800545CC 3C018010 */  lui         $at, %hi(viCounterMsg + 0x18)
/* 054180 800545D0 A42302B0 */  sh          $v1, %lo(viCounterMsg + 0x18)($at)
.L800545D4:
/* 054184 800545D4 3C138010 */  lui         $s3, %hi(__osViIntrCount)
/* 054188 800545D8 3C128010 */  lui         $s2, %hi(__osBaseCounter)
/* 05418C 800545DC 3C118010 */  lui         $s1, %hi(__osCurrentTime)
/* 054190 800545E0 26310350 */  addiu       $s1, $s1, %lo(__osCurrentTime)
/* 054194 800545E4 26520358 */  addiu       $s2, $s2, %lo(__osBaseCounter)
/* 054198 800545E8 2673035C */  addiu       $s3, $s3, %lo(__osViIntrCount)
/* 05419C 800545EC 2415000D */  addiu       $s5, $zero, 0xd
/* 0541A0 800545F0 27B40044 */  addiu       $s4, $sp, 0x44
.L800545F4:
/* 0541A4 800545F4 8EE4000C */  lw          $a0, 0xc($s7)
.L800545F8:
/* 0541A8 800545F8 02802825 */  move        $a1, $s4
/* 0541AC 800545FC 0C014554 */  jal         osRecvMesg
/* 0541B0 80054600 24060001 */   addiu      $a2, $zero, 0x1
/* 0541B4 80054604 8FAE0044 */  lw          $t6, 0x44($sp)
/* 0541B8 80054608 95C30000 */  lhu         $v1, 0x0($t6)
/* 0541BC 8005460C 10750005 */  beq         $v1, $s5, .L80054624
/* 0541C0 80054610 00000000 */   nop
/* 0541C4 80054614 1076002A */  beq         $v1, $s6, .L800546C0
/* 0541C8 80054618 00000000 */   nop
/* 0541CC 8005461C 1000FFF6 */  b           .L800545F8
/* 0541D0 80054620 8EE4000C */   lw         $a0, 0xc($s7)
.L80054624:
/* 0541D4 80054624 0C0169C0 */  jal         __osViSwapContext
/* 0541D8 80054628 00000000 */   nop
/* 0541DC 8005462C 3C038010 */  lui         $v1, %hi(viCounterMsg + 0x18)
/* 0541E0 80054630 946302B0 */  lhu         $v1, %lo(viCounterMsg + 0x18)($v1)
/* 0541E4 80054634 3C018010 */  lui         $at, %hi(viCounterMsg + 0x18)
/* 0541E8 80054638 2463FFFF */  addiu       $v1, $v1, -0x1
/* 0541EC 8005463C 306FFFFF */  andi        $t7, $v1, 0xffff
/* 0541F0 80054640 15E0000E */  bnez        $t7, .L8005467C
/* 0541F4 80054644 A42F02B0 */   sh         $t7, %lo(viCounterMsg + 0x18)($at)
/* 0541F8 80054648 0C0169BC */  jal         __osViGetCurrentContext
/* 0541FC 8005464C 00000000 */   nop
/* 054200 80054650 8C580010 */  lw          $t8, 0x10($v0)
/* 054204 80054654 00408025 */  move        $s0, $v0
/* 054208 80054658 00003025 */  move        $a2, $zero
/* 05420C 8005465C 53000005 */  beql        $t8, $zero, .L80054674
/* 054210 80054660 96030002 */   lhu        $v1, 0x2($s0)
/* 054214 80054664 8C440010 */  lw          $a0, 0x10($v0)
/* 054218 80054668 0C014C64 */  jal         osSendMesg
/* 05421C 8005466C 8C450014 */   lw         $a1, 0x14($v0)
/* 054220 80054670 96030002 */  lhu         $v1, 0x2($s0)
.L80054674:
/* 054224 80054674 3C018010 */  lui         $at, %hi(viCounterMsg + 0x18)
/* 054228 80054678 A42302B0 */  sh          $v1, %lo(viCounterMsg + 0x18)($at)
.L8005467C:
/* 05422C 8005467C 8E790000 */  lw          $t9, 0x0($s3)
/* 054230 80054680 8E500000 */  lw          $s0, 0x0($s2)
/* 054234 80054684 27280001 */  addiu       $t0, $t9, 0x1
/* 054238 80054688 0C014CB8 */  jal         osGetCount
/* 05423C 8005468C AE680000 */   sw         $t0, 0x0($s3)
/* 054240 80054690 8E2D0004 */  lw          $t5, 0x4($s1)
/* 054244 80054694 00508023 */  subu        $s0, $v0, $s0
/* 054248 80054698 8E2C0000 */  lw          $t4, 0x0($s1)
/* 05424C 8005469C 020D7821 */  addu        $t7, $s0, $t5
/* 054250 800546A0 240A0000 */  addiu       $t2, $zero, 0x0
/* 054254 800546A4 01ED082B */  sltu        $at, $t7, $t5
/* 054258 800546A8 002A7021 */  addu        $t6, $at, $t2
/* 05425C 800546AC 01CC7021 */  addu        $t6, $t6, $t4
/* 054260 800546B0 AE420000 */  sw          $v0, 0x0($s2)
/* 054264 800546B4 AE2E0000 */  sw          $t6, 0x0($s1)
/* 054268 800546B8 1000FFCE */  b           .L800545F4
/* 05426C 800546BC AE2F0004 */   sw         $t7, 0x4($s1)
.L800546C0:
/* 054270 800546C0 0C0162D3 */  jal         __osTimerInterrupt
/* 054274 800546C4 00000000 */   nop
/* 054278 800546C8 1000FFCB */  b           .L800545F8
/* 05427C 800546CC 8EE4000C */   lw         $a0, 0xc($s7)
/* 054280 800546D0 00000000 */  nop
/* 054284 800546D4 00000000 */  nop
/* 054288 800546D8 00000000 */  nop
/* 05428C 800546DC 00000000 */  nop
/* 054290 800546E0 8FBF0034 */  lw          $ra, 0x34($sp)
/* 054294 800546E4 8FB00014 */  lw          $s0, 0x14($sp)
/* 054298 800546E8 8FB10018 */  lw          $s1, 0x18($sp)
/* 05429C 800546EC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 0542A0 800546F0 8FB30020 */  lw          $s3, 0x20($sp)
/* 0542A4 800546F4 8FB40024 */  lw          $s4, 0x24($sp)
/* 0542A8 800546F8 8FB50028 */  lw          $s5, 0x28($sp)
/* 0542AC 800546FC 8FB6002C */  lw          $s6, 0x2c($sp)
/* 0542B0 80054700 8FB70030 */  lw          $s7, 0x30($sp)
/* 0542B4 80054704 03E00008 */  jr          $ra
/* 0542B8 80054708 27BD0050 */   addiu      $sp, $sp, 0x50
/* 0542BC 8005470C 00000000 */  nop
