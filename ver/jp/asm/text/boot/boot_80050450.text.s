.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050450 # 0
/* 050000 80050450 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 050004 80050454 44867000 */  mtc1        $a2, $f14
/* 050008 80050458 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05000C 8005045C AFA7003C */  sw          $a3, 0x3c($sp)
/* 050010 80050460 AFA40030 */  sw          $a0, 0x30($sp)
/* 050014 80050464 AFA50034 */  sw          $a1, 0x34($sp)
/* 050018 80050468 0C015D50 */  jal         func_80057540
/* 05001C 8005046C E7AE0038 */   swc1       $f14, 0x38($sp)
/* 050020 80050470 C7AE0038 */  lwc1        $f14, 0x38($sp)
/* 050024 80050474 3C01800B */  lui         $at, %hi(D_800AC930)
/* 050028 80050478 D426C930 */  ldc1        $f6, %lo(D_800AC930)($at)
/* 05002C 8005047C 46007121 */  cvt.d.s     $f4, $f14
/* 050030 80050480 3C014000 */  lui         $at, 0x4000
/* 050034 80050484 46262202 */  mul.d       $f8, $f4, $f6
/* 050038 80050488 44815000 */  mtc1        $at, $f10
/* 05003C 8005048C 462043A0 */  cvt.s.d     $f14, $f8
/* 050040 80050490 460A7303 */  div.s       $f12, $f14, $f10
/* 050044 80050494 0C014A40 */  jal         __cosf
/* 050048 80050498 E7AC001C */   swc1       $f12, 0x1c($sp)
/* 05004C 8005049C C7AC001C */  lwc1        $f12, 0x1c($sp)
/* 050050 800504A0 0C0149D0 */  jal         __sinf
/* 050054 800504A4 E7A00020 */   swc1       $f0, 0x20($sp)
/* 050058 800504A8 C7A40020 */  lwc1        $f4, 0x20($sp)
/* 05005C 800504AC C7A6003C */  lwc1        $f6, 0x3c($sp)
/* 050060 800504B0 C7AE0040 */  lwc1        $f14, 0x40($sp)
/* 050064 800504B4 46002083 */  div.s       $f2, $f4, $f0
/* 050068 800504B8 C7B00044 */  lwc1        $f16, 0x44($sp)
/* 05006C 800504BC 3C01BF80 */  lui         $at, 0xbf80
/* 050070 800504C0 44812000 */  mtc1        $at, $f4
/* 050074 800504C4 46107480 */  add.s       $f18, $f14, $f16
/* 050078 800504C8 8FA20030 */  lw          $v0, 0x30($sp)
/* 05007C 800504CC 3C014000 */  lui         $at, 0x4000
/* 050080 800504D0 46107301 */  sub.s       $f12, $f14, $f16
/* 050084 800504D4 8FA50034 */  lw          $a1, 0x34($sp)
/* 050088 800504D8 E444002C */  swc1        $f4, 0x2c($v0)
/* 05008C 800504DC 00001825 */  move        $v1, $zero
/* 050090 800504E0 24040004 */  addiu       $a0, $zero, 0x4
/* 050094 800504E4 460C9283 */  div.s       $f10, $f18, $f12
/* 050098 800504E8 E4420014 */  swc1        $f2, 0x14($v0)
/* 05009C 800504EC 46061203 */  div.s       $f8, $f2, $f6
/* 0500A0 800504F0 44813000 */  mtc1        $at, $f6
/* 0500A4 800504F4 E44A0028 */  swc1        $f10, 0x28($v0)
/* 0500A8 800504F8 E4480000 */  swc1        $f8, 0x0($v0)
/* 0500AC 800504FC 460E3202 */  mul.s       $f8, $f6, $f14
/* 0500B0 80050500 44803000 */  mtc1        $zero, $f6
/* 0500B4 80050504 00000000 */  nop
/* 0500B8 80050508 E446003C */  swc1        $f6, 0x3c($v0)
/* 0500BC 8005050C 46104282 */  mul.s       $f10, $f8, $f16
/* 0500C0 80050510 460C5103 */  div.s       $f4, $f10, $f12
/* 0500C4 80050514 E4440038 */  swc1        $f4, 0x38($v0)
/* 0500C8 80050518 C7A00048 */  lwc1        $f0, 0x48($sp)
/* 0500CC 8005051C C4460000 */  lwc1        $f6, 0x0($v0)
/* 0500D0 80050520 24630001 */  addiu       $v1, $v1, 0x1
/* 0500D4 80050524 C4500004 */  lwc1        $f16, 0x4($v0)
/* 0500D8 80050528 46003282 */  mul.s       $f10, $f6, $f0
/* 0500DC 8005052C C44C0008 */  lwc1        $f12, 0x8($v0)
/* 0500E0 80050530 10640010 */  beq         $v1, $a0, .L80050574
/* 0500E4 80050534 C44E000C */   lwc1       $f14, 0xc($v0)
.L80050538:
/* 0500E8 80050538 46008202 */  mul.s       $f8, $f16, $f0
/* 0500EC 8005053C C4460010 */  lwc1        $f6, 0x10($v0)
/* 0500F0 80050540 C4500014 */  lwc1        $f16, 0x14($v0)
/* 0500F4 80050544 46006102 */  mul.s       $f4, $f12, $f0
/* 0500F8 80050548 C44C0018 */  lwc1        $f12, 0x18($v0)
/* 0500FC 8005054C 24630001 */  addiu       $v1, $v1, 0x1
/* 050100 80050550 46007082 */  mul.s       $f2, $f14, $f0
/* 050104 80050554 C44E001C */  lwc1        $f14, 0x1c($v0)
/* 050108 80050558 E44A0000 */  swc1        $f10, 0x0($v0)
/* 05010C 8005055C 46003282 */  mul.s       $f10, $f6, $f0
/* 050110 80050560 E4480004 */  swc1        $f8, 0x4($v0)
/* 050114 80050564 E4440008 */  swc1        $f4, 0x8($v0)
/* 050118 80050568 24420010 */  addiu       $v0, $v0, 0x10
/* 05011C 8005056C 1464FFF2 */  bne         $v1, $a0, .L80050538
/* 050120 80050570 E442FFFC */   swc1       $f2, -0x4($v0)
.L80050574:
/* 050124 80050574 46008202 */  mul.s       $f8, $f16, $f0
/* 050128 80050578 24420010 */  addiu       $v0, $v0, 0x10
/* 05012C 8005057C E44AFFF0 */  swc1        $f10, -0x10($v0)
/* 050130 80050580 46006102 */  mul.s       $f4, $f12, $f0
/* 050134 80050584 00000000 */  nop
/* 050138 80050588 46007082 */  mul.s       $f2, $f14, $f0
/* 05013C 8005058C E448FFF4 */  swc1        $f8, -0xc($v0)
/* 050140 80050590 E444FFF8 */  swc1        $f4, -0x8($v0)
/* 050144 80050594 E442FFFC */  swc1        $f2, -0x4($v0)
/* 050148 80050598 10A00035 */  beqz        $a1, .L80050670
/* 05014C 8005059C 3C014000 */   lui        $at, 0x4000
/* 050150 800505A0 44814800 */  mtc1        $at, $f9
/* 050154 800505A4 44804000 */  mtc1        $zero, $f8
/* 050158 800505A8 46009021 */  cvt.d.s     $f0, $f18
/* 05015C 800505AC 340EFFFF */  ori         $t6, $zero, 0xffff
/* 050160 800505B0 4628003E */  c.le.d      $f0, $f8
/* 050164 800505B4 3C014100 */  lui         $at, 0x4100
/* 050168 800505B8 45020004 */  bc1fl       .L800505CC
/* 05016C 800505BC 44815800 */   mtc1       $at, $f11
/* 050170 800505C0 1000002B */  b           .L80050670
/* 050174 800505C4 A4AE0000 */   sh         $t6, 0x0($a1)
/* 050178 800505C8 44815800 */  mtc1        $at, $f11
.L800505CC:
/* 05017C 800505CC 44805000 */  mtc1        $zero, $f10
/* 050180 800505D0 24180001 */  addiu       $t8, $zero, 0x1
/* 050184 800505D4 3C0141E0 */  lui         $at, 0x41e0
/* 050188 800505D8 46205103 */  div.d       $f4, $f10, $f0
/* 05018C 800505DC 24080001 */  addiu       $t0, $zero, 0x1
/* 050190 800505E0 444FF800 */  cfc1        $t7, FpcCsr
/* 050194 800505E4 44D8F800 */  ctc1        $t8, FpcCsr
/* 050198 800505E8 00000000 */  nop
/* 05019C 800505EC 462021A4 */  cvt.w.d     $f6, $f4
/* 0501A0 800505F0 4458F800 */  cfc1        $t8, FpcCsr
/* 0501A4 800505F4 00000000 */  nop
/* 0501A8 800505F8 33180078 */  andi        $t8, $t8, 0x78
/* 0501AC 800505FC 53000014 */  beql        $t8, $zero, .L80050650
/* 0501B0 80050600 44183000 */   mfc1       $t8, $f6
/* 0501B4 80050604 44813800 */  mtc1        $at, $f7
/* 0501B8 80050608 44803000 */  mtc1        $zero, $f6
/* 0501BC 8005060C 24180001 */  addiu       $t8, $zero, 0x1
/* 0501C0 80050610 46262181 */  sub.d       $f6, $f4, $f6
/* 0501C4 80050614 44D8F800 */  ctc1        $t8, FpcCsr
/* 0501C8 80050618 00000000 */  nop
/* 0501CC 8005061C 462031A4 */  cvt.w.d     $f6, $f6
/* 0501D0 80050620 4458F800 */  cfc1        $t8, FpcCsr
/* 0501D4 80050624 00000000 */  nop
/* 0501D8 80050628 33180078 */  andi        $t8, $t8, 0x78
/* 0501DC 8005062C 17000005 */  bnez        $t8, .L80050644
/* 0501E0 80050630 00000000 */   nop
/* 0501E4 80050634 44183000 */  mfc1        $t8, $f6
/* 0501E8 80050638 3C018000 */  lui         $at, 0x8000
/* 0501EC 8005063C 10000007 */  b           .L8005065C
/* 0501F0 80050640 0301C025 */   or         $t8, $t8, $at
.L80050644:
/* 0501F4 80050644 10000005 */  b           .L8005065C
/* 0501F8 80050648 2418FFFF */   addiu      $t8, $zero, -0x1
/* 0501FC 8005064C 44183000 */  mfc1        $t8, $f6
.L80050650:
/* 050200 80050650 00000000 */  nop
/* 050204 80050654 0700FFFB */  bltz        $t8, .L80050644
/* 050208 80050658 00000000 */   nop
.L8005065C:
/* 05020C 8005065C 44CFF800 */  ctc1        $t7, FpcCsr
/* 050210 80050660 3319FFFF */  andi        $t9, $t8, 0xffff
/* 050214 80050664 1F200002 */  bgtz        $t9, .L80050670
/* 050218 80050668 A4B80000 */   sh         $t8, 0x0($a1)
/* 05021C 8005066C A4A80000 */  sh          $t0, 0x0($a1)
.L80050670:
/* 050220 80050670 8FBF0014 */  lw          $ra, 0x14($sp)
/* 050224 80050674 27BD0030 */  addiu       $sp, $sp, 0x30
/* 050228 80050678 03E00008 */  jr          $ra
/* 05022C 8005067C 00000000 */   nop

glabel func_80050680 # 1
/* 050230 80050680 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 050234 80050684 44866000 */  mtc1        $a2, $f12
/* 050238 80050688 44877000 */  mtc1        $a3, $f14
/* 05023C 8005068C C7A40078 */  lwc1        $f4, 0x78($sp)
/* 050240 80050690 C7A6007C */  lwc1        $f6, 0x7c($sp)
/* 050244 80050694 C7A80080 */  lwc1        $f8, 0x80($sp)
/* 050248 80050698 AFBF0024 */  sw          $ra, 0x24($sp)
/* 05024C 8005069C AFA40068 */  sw          $a0, 0x68($sp)
/* 050250 800506A0 44066000 */  mfc1        $a2, $f12
/* 050254 800506A4 44077000 */  mfc1        $a3, $f14
/* 050258 800506A8 27A40028 */  addiu       $a0, $sp, 0x28
/* 05025C 800506AC E7A40010 */  swc1        $f4, 0x10($sp)
/* 050260 800506B0 E7A60014 */  swc1        $f6, 0x14($sp)
/* 050264 800506B4 0C014114 */  jal         func_80050450
/* 050268 800506B8 E7A80018 */   swc1       $f8, 0x18($sp)
/* 05026C 800506BC 27A40028 */  addiu       $a0, $sp, 0x28
/* 050270 800506C0 0C015D10 */  jal         func_80057440
/* 050274 800506C4 8FA50068 */   lw         $a1, 0x68($sp)
/* 050278 800506C8 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05027C 800506CC 27BD0068 */  addiu       $sp, $sp, 0x68
/* 050280 800506D0 03E00008 */  jr          $ra
/* 050284 800506D4 00000000 */   nop
/* 050288 800506D8 00000000 */  nop
/* 05028C 800506DC 00000000 */  nop
