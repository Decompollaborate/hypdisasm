.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004C790 # 0
/* 04C340 8004C790 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04C344 8004C794 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04C348 8004C798 0C013000 */  jal         func_8004C000
/* 04C34C 8004C79C 00000000 */   nop
/* 04C350 8004C7A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04C354 8004C7A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04C358 8004C7A8 00001025 */  move        $v0, $zero
/* 04C35C 8004C7AC 03E00008 */  jr          $ra
/* 04C360 8004C7B0 00000000 */   nop

glabel func_8004C7B4 # 1
/* 04C364 8004C7B4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 04C368 8004C7B8 240E0170 */  addiu       $t6, $zero, 0x170
/* 04C36C 8004C7BC AFBF0014 */  sw          $ra, 0x14($sp)
/* 04C370 8004C7C0 AFA50044 */  sw          $a1, 0x44($sp)
/* 04C374 8004C7C4 A7AE003A */  sh          $t6, 0x3a($sp)
/* 04C378 8004C7C8 8C8F0048 */  lw          $t7, 0x48($a0)
/* 04C37C 8004C7CC 00804025 */  move        $t0, $a0
/* 04C380 8004C7D0 00C03825 */  move        $a3, $a2
/* 04C384 8004C7D4 11E00011 */  beqz        $t7, .L8004C81C
/* 04C388 8004C7D8 27A5003A */   addiu      $a1, $sp, 0x3a
/* 04C38C 8004C7DC 0C0130B7 */  jal         func_8004C2DC
/* 04C390 8004C7E0 240600B8 */   addiu      $a2, $zero, 0xb8
/* 04C394 8004C7E4 87B8003A */  lh          $t8, 0x3a($sp)
/* 04C398 8004C7E8 3C0100FF */  lui         $at, 0xff
/* 04C39C 8004C7EC 3421FFFF */  ori         $at, $at, 0xffff
/* 04C3A0 8004C7F0 0301C824 */  and         $t9, $t8, $at
/* 04C3A4 8004C7F4 3C010A00 */  lui         $at, 0xa00
/* 04C3A8 8004C7F8 03214825 */  or          $t1, $t9, $at
/* 04C3AC 8004C7FC AC490000 */  sw          $t1, 0x0($v0)
/* 04C3B0 8004C800 8FAA0044 */  lw          $t2, 0x44($sp)
/* 04C3B4 8004C804 24430008 */  addiu       $v1, $v0, 0x8
/* 04C3B8 8004C808 854C0000 */  lh          $t4, 0x0($t2)
/* 04C3BC 8004C80C 000C6C00 */  sll         $t5, $t4, 16
/* 04C3C0 8004C810 35AE0170 */  ori         $t6, $t5, 0x170
/* 04C3C4 8004C814 1000004E */  b           .L8004C950
/* 04C3C8 8004C818 AC4E0004 */   sw         $t6, 0x4($v0)
.L8004C81C:
/* 04C3CC 8004C81C C5020044 */  lwc1        $f2, 0x44($t0)
/* 04C3D0 8004C820 3C01800B */  lui         $at, %hi(D_800AC920)
/* 04C3D4 8004C824 D424C920 */  ldc1        $f4, %lo(D_800AC920)($at)
/* 04C3D8 8004C828 460011A1 */  cvt.d.s     $f6, $f2
/* 04C3DC 8004C82C 3C01800B */  lui         $at, %hi(D_800AC928)
/* 04C3E0 8004C830 4626203C */  c.lt.d      $f4, $f6
/* 04C3E4 8004C834 00000000 */  nop
/* 04C3E8 8004C838 45020005 */  bc1fl       .L8004C850
/* 04C3EC 8004C83C 3C014700 */   lui        $at, 0x4700
/* 04C3F0 8004C840 C428C928 */  lwc1        $f8, %lo(D_800AC928)($at)
/* 04C3F4 8004C844 E5080044 */  swc1        $f8, 0x44($t0)
/* 04C3F8 8004C848 C5020044 */  lwc1        $f2, 0x44($t0)
/* 04C3FC 8004C84C 3C014700 */  lui         $at, 0x4700
.L8004C850:
/* 04C400 8004C850 44816000 */  mtc1        $at, $f12
/* 04C404 8004C854 3C014338 */  lui         $at, 0x4338
/* 04C408 8004C858 01002025 */  move        $a0, $t0
/* 04C40C 8004C85C 460C1282 */  mul.s       $f10, $f2, $f12
/* 04C410 8004C860 27A5003A */  addiu       $a1, $sp, 0x3a
/* 04C414 8004C864 4600540D */  trunc.w.s   $f16, $f10
/* 04C418 8004C868 44188000 */  mfc1        $t8, $f16
/* 04C41C 8004C86C 44818000 */  mtc1        $at, $f16
/* 04C420 8004C870 44989000 */  mtc1        $t8, $f18
/* 04C424 8004C874 00000000 */  nop
/* 04C428 8004C878 46809120 */  cvt.s.w     $f4, $f18
/* 04C42C 8004C87C E5040044 */  swc1        $f4, 0x44($t0)
/* 04C430 8004C880 C5060044 */  lwc1        $f6, 0x44($t0)
/* 04C434 8004C884 C504004C */  lwc1        $f4, 0x4c($t0)
/* 04C438 8004C888 460C3203 */  div.s       $f8, $f6, $f12
/* 04C43C 8004C88C E5080044 */  swc1        $f8, 0x44($t0)
/* 04C440 8004C890 C50A0044 */  lwc1        $f10, 0x44($t0)
/* 04C444 8004C894 46105482 */  mul.s       $f18, $f10, $f16
/* 04C448 8004C898 46122000 */  add.s       $f0, $f4, $f18
/* 04C44C 8004C89C 4600018D */  trunc.w.s   $f6, $f0
/* 04C450 8004C8A0 44063000 */  mfc1        $a2, $f6
/* 04C454 8004C8A4 00000000 */  nop
/* 04C458 8004C8A8 44864000 */  mtc1        $a2, $f8
/* 04C45C 8004C8AC 00000000 */  nop
/* 04C460 8004C8B0 468042A0 */  cvt.s.w     $f10, $f8
/* 04C464 8004C8B4 460A0401 */  sub.s       $f16, $f0, $f10
/* 04C468 8004C8B8 E510004C */  swc1        $f16, 0x4c($t0)
/* 04C46C 8004C8BC 0C0130B7 */  jal         func_8004C2DC
/* 04C470 8004C8C0 AFA80040 */   sw         $t0, 0x40($sp)
/* 04C474 8004C8C4 8FA80040 */  lw          $t0, 0x40($sp)
/* 04C478 8004C8C8 3C014700 */  lui         $at, 0x4700
/* 04C47C 8004C8CC 44819000 */  mtc1        $at, $f18
/* 04C480 8004C8D0 C5040044 */  lwc1        $f4, 0x44($t0)
/* 04C484 8004C8D4 24430008 */  addiu       $v1, $v0, 0x8
/* 04C488 8004C8D8 46122182 */  mul.s       $f6, $f4, $f18
/* 04C48C 8004C8DC 4600320D */  trunc.w.s   $f8, $f6
/* 04C490 8004C8E0 440A4000 */  mfc1        $t2, $f8
/* 04C494 8004C8E4 00000000 */  nop
/* 04C498 8004C8E8 AFAA0030 */  sw          $t2, 0x30($sp)
/* 04C49C 8004C8EC 8D040040 */  lw          $a0, 0x40($t0)
/* 04C4A0 8004C8F0 AFA20024 */  sw          $v0, 0x24($sp)
/* 04C4A4 8004C8F4 0C0140F4 */  jal         func_800503D0
/* 04C4A8 8004C8F8 AFA3003C */   sw         $v1, 0x3c($sp)
/* 04C4AC 8004C8FC 3C0100FF */  lui         $at, 0xff
/* 04C4B0 8004C900 3421FFFF */  ori         $at, $at, 0xffff
/* 04C4B4 8004C904 8FA50024 */  lw          $a1, 0x24($sp)
/* 04C4B8 8004C908 00415824 */  and         $t3, $v0, $at
/* 04C4BC 8004C90C 3C010500 */  lui         $at, 0x500
/* 04C4C0 8004C910 8FA80040 */  lw          $t0, 0x40($sp)
/* 04C4C4 8004C914 01616025 */  or          $t4, $t3, $at
/* 04C4C8 8004C918 8FA3003C */  lw          $v1, 0x3c($sp)
/* 04C4CC 8004C91C ACAC0000 */  sw          $t4, 0x0($a1)
/* 04C4D0 8004C920 8FB80030 */  lw          $t8, 0x30($sp)
/* 04C4D4 8004C924 87AB003A */  lh          $t3, 0x3a($sp)
/* 04C4D8 8004C928 8D0E0050 */  lw          $t6, 0x50($t0)
/* 04C4DC 8004C92C 3319FFFF */  andi        $t9, $t8, 0xffff
/* 04C4E0 8004C930 00194B80 */  sll         $t1, $t9, 14
/* 04C4E4 8004C934 316C0FFF */  andi        $t4, $t3, 0xfff
/* 04C4E8 8004C938 000E7F80 */  sll         $t7, $t6, 30
/* 04C4EC 8004C93C 01E95025 */  or          $t2, $t7, $t1
/* 04C4F0 8004C940 000C6880 */  sll         $t5, $t4, 2
/* 04C4F4 8004C944 014D7025 */  or          $t6, $t2, $t5
/* 04C4F8 8004C948 ACAE0004 */  sw          $t6, 0x4($a1)
/* 04C4FC 8004C94C AD000050 */  sw          $zero, 0x50($t0)
.L8004C950:
/* 04C500 8004C950 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04C504 8004C954 27BD0040 */  addiu       $sp, $sp, 0x40
/* 04C508 8004C958 00601025 */  move        $v0, $v1
/* 04C50C 8004C95C 03E00008 */  jr          $ra
/* 04C510 8004C960 00000000 */   nop
/* 04C514 8004C964 00000000 */  nop
/* 04C518 8004C968 00000000 */  nop
/* 04C51C 8004C96C 00000000 */  nop
