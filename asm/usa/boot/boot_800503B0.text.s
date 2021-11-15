.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800503B0 # 0
/* 04FF60 800503B0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04FF64 800503B4 240E0170 */  addiu       $t6, $zero, 0x170
/* 04FF68 800503B8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04FF6C 800503BC AFB00018 */  sw          $s0, 0x18($sp)
/* 04FF70 800503C0 AFA5004C */  sw          $a1, 0x4c($sp)
/* 04FF74 800503C4 A7AE0042 */  sh          $t6, 0x42($sp)
/* 04FF78 800503C8 8C8F0048 */  lw          $t7, 0x48($a0)
/* 04FF7C 800503CC 00808025 */  move        $s0, $a0
/* 04FF80 800503D0 00C03825 */  move        $a3, $a2
/* 04FF84 800503D4 11E00011 */  beq         $t7, $zero, .L8005041C
/* 04FF88 800503D8 27A50042 */   addiu      $a1, $sp, 0x42
/* 04FF8C 800503DC 0C013F14 */  jal         func_8004FC50
/* 04FF90 800503E0 240600B8 */   addiu      $a2, $zero, 0xb8
/* 04FF94 800503E4 87B80042 */  lh          $t8, 0x42($sp)
/* 04FF98 800503E8 3C0100FF */  lui         $at, 0xff
/* 04FF9C 800503EC 3421FFFF */  ori         $at, $at, 0xffff
/* 04FFA0 800503F0 0301C824 */  and         $t9, $t8, $at
/* 04FFA4 800503F4 3C010A00 */  lui         $at, 0xa00
/* 04FFA8 800503F8 03214025 */  or          $t0, $t9, $at
/* 04FFAC 800503FC AC480000 */  sw          $t0, 0x0($v0)
/* 04FFB0 80050400 8FA9004C */  lw          $t1, 0x4c($sp)
/* 04FFB4 80050404 24430008 */  addiu       $v1, $v0, 0x8
/* 04FFB8 80050408 852B0000 */  lh          $t3, 0x0($t1)
/* 04FFBC 8005040C 000B6400 */  sll         $t4, $t3, 16
/* 04FFC0 80050410 358D0170 */  ori         $t5, $t4, 0x170
/* 04FFC4 80050414 1000004B */  b           .L80050544
/* 04FFC8 80050418 AC4D0004 */   sw         $t5, 0x4($v0)
.L8005041C:
/* 04FFCC 8005041C C6020044 */  lwc1        $f2, 0x44($s0)
/* 04FFD0 80050420 3C01800A */  lui         $at, %hi(D_800A7D00)
/* 04FFD4 80050424 D4247D00 */  ldc1        $f4, %lo(D_800A7D00)($at)
/* 04FFD8 80050428 460011A1 */  cvt.d.s     $f6, $f2
/* 04FFDC 8005042C 3C01800A */  lui         $at, 0x800a
/* 04FFE0 80050430 4626203C */  c.lt.d      $f4, $f6
/* 04FFE4 80050434 00000000 */  nop
/* 04FFE8 80050438 45020005 */  bc1fl       .L80050450
/* 04FFEC 8005043C 3C014700 */   lui        $at, %hi(D_47007D08)
/* 04FFF0 80050440 C4287D08 */  lwc1        $f8, %lo(D_47007D08)($at)
/* 04FFF4 80050444 E6080044 */  swc1        $f8, 0x44($s0)
/* 04FFF8 80050448 C6020044 */  lwc1        $f2, 0x44($s0)
/* 04FFFC 8005044C 3C014700 */  lui         $at, 0x4700
.L80050450:
/* 050000 80050450 44816000 */  mtc1        $at, $f12
/* 050004 80050454 3C014338 */  lui         $at, 0x4338
/* 050008 80050458 02002025 */  move        $a0, $s0
/* 05000C 8005045C 460C1282 */  mul.s       $f10, $f2, $f12
/* 050010 80050460 27A50042 */  addiu       $a1, $sp, 0x42
/* 050014 80050464 4600540D */  trunc.w.s   $f16, $f10
/* 050018 80050468 440F8000 */  mfc1        $t7, $f16
/* 05001C 8005046C 44818000 */  mtc1        $at, $f16
/* 050020 80050470 448F9000 */  mtc1        $t7, $f18
/* 050024 80050474 00000000 */  nop
/* 050028 80050478 46809120 */  cvt.s.w     $f4, $f18
/* 05002C 8005047C E6040044 */  swc1        $f4, 0x44($s0)
/* 050030 80050480 C6060044 */  lwc1        $f6, 0x44($s0)
/* 050034 80050484 C604004C */  lwc1        $f4, 0x4c($s0)
/* 050038 80050488 460C3203 */  div.s       $f8, $f6, $f12
/* 05003C 8005048C E6080044 */  swc1        $f8, 0x44($s0)
/* 050040 80050490 C60A0044 */  lwc1        $f10, 0x44($s0)
/* 050044 80050494 46105482 */  mul.s       $f18, $f10, $f16
/* 050048 80050498 46122000 */  add.s       $f0, $f4, $f18
/* 05004C 8005049C 4600018D */  trunc.w.s   $f6, $f0
/* 050050 800504A0 44063000 */  mfc1        $a2, $f6
/* 050054 800504A4 00000000 */  nop
/* 050058 800504A8 44864000 */  mtc1        $a2, $f8
/* 05005C 800504AC 00000000 */  nop
/* 050060 800504B0 468042A0 */  cvt.s.w     $f10, $f8
/* 050064 800504B4 460A0401 */  sub.s       $f16, $f0, $f10
/* 050068 800504B8 0C013F14 */  jal         func_8004FC50
/* 05006C 800504BC E610004C */   swc1       $f16, 0x4c($s0)
/* 050070 800504C0 3C014700 */  lui         $at, 0x4700
/* 050074 800504C4 44819000 */  mtc1        $at, $f18
/* 050078 800504C8 C6040044 */  lwc1        $f4, 0x44($s0)
/* 05007C 800504CC 24430008 */  addiu       $v1, $v0, 0x8
/* 050080 800504D0 46122182 */  mul.s       $f6, $f4, $f18
/* 050084 800504D4 4600320D */  trunc.w.s   $f8, $f6
/* 050088 800504D8 44084000 */  mfc1        $t0, $f8
/* 05008C 800504DC 00000000 */  nop
/* 050090 800504E0 AFA80038 */  sw          $t0, 0x38($sp)
/* 050094 800504E4 8E040040 */  lw          $a0, 0x40($s0)
/* 050098 800504E8 AFA2002C */  sw          $v0, 0x2c($sp)
/* 05009C 800504EC 0C0143B0 */  jal         osVirtualToPhysical
/* 0500A0 800504F0 AFA30044 */   sw         $v1, 0x44($sp)
/* 0500A4 800504F4 3C0100FF */  lui         $at, 0xff
/* 0500A8 800504F8 3421FFFF */  ori         $at, $at, 0xffff
/* 0500AC 800504FC 8FA5002C */  lw          $a1, 0x2c($sp)
/* 0500B0 80050500 00414824 */  and         $t1, $v0, $at
/* 0500B4 80050504 3C010500 */  lui         $at, 0x500
/* 0500B8 80050508 01215025 */  or          $t2, $t1, $at
/* 0500BC 8005050C 8FA30044 */  lw          $v1, 0x44($sp)
/* 0500C0 80050510 ACAA0000 */  sw          $t2, 0x0($a1)
/* 0500C4 80050514 8FAE0038 */  lw          $t6, 0x38($sp)
/* 0500C8 80050518 8E0C0050 */  lw          $t4, 0x50($s0)
/* 0500CC 8005051C 87A80042 */  lh          $t0, 0x42($sp)
/* 0500D0 80050520 31CFFFFF */  andi        $t7, $t6, 0xffff
/* 0500D4 80050524 000FC380 */  sll         $t8, $t7, 14
/* 0500D8 80050528 000C6F80 */  sll         $t5, $t4, 30
/* 0500DC 8005052C 31090FFF */  andi        $t1, $t0, 0xfff
/* 0500E0 80050530 00095080 */  sll         $t2, $t1, 2
/* 0500E4 80050534 01B8C825 */  or          $t9, $t5, $t8
/* 0500E8 80050538 032A5825 */  or          $t3, $t9, $t2
/* 0500EC 8005053C ACAB0004 */  sw          $t3, 0x4($a1)
/* 0500F0 80050540 AE000050 */  sw          $zero, 0x50($s0)
.L80050544:
/* 0500F4 80050544 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0500F8 80050548 8FB00018 */  lw          $s0, 0x18($sp)
/* 0500FC 8005054C 27BD0048 */  addiu       $sp, $sp, 0x48
/* 050100 80050550 03E00008 */  jr          $ra
/* 050104 80050554 00601025 */   move       $v0, $v1

glabel func_80050558 # 1
/* 050108 80050558 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05010C 8005055C AFBF0014 */  sw          $ra, 0x14($sp)
/* 050110 80050560 0C01402C */  jal         func_800500B0
/* 050114 80050564 00000000 */   nop
/* 050118 80050568 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05011C 8005056C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 050120 80050570 00001025 */  move        $v0, $zero
/* 050124 80050574 03E00008 */  jr          $ra
/* 050128 80050578 00000000 */   nop
/* 05012C 8005057C 00000000 */  nop
