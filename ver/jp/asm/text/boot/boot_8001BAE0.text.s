.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001BAE0 # 0
/* 01B690 8001BAE0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01B694 8001BAE4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01B698 8001BAE8 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 01B69C 8001BAEC 3C048007 */  lui         $a0, %hi(D_800753A0)
/* 01B6A0 8001BAF0 46007506 */  mov.s       $f20, $f14
/* 01B6A4 8001BAF4 E7AC0028 */  swc1        $f12, 0x28($sp)
/* 01B6A8 8001BAF8 AFA60030 */  sw          $a2, 0x30($sp)
/* 01B6AC 8001BAFC 0C001B92 */  jal         func_80006E48
/* 01B6B0 8001BB00 248453A0 */   addiu      $a0, $a0, %lo(D_800753A0)
/* 01B6B4 8001BB04 44802000 */  mtc1        $zero, $f4
/* 01B6B8 8001BB08 00402025 */  move        $a0, $v0
/* 01B6BC 8001BB0C C7AC0028 */  lwc1        $f12, 0x28($sp)
/* 01B6C0 8001BB10 4604A03C */  c.lt.s      $f20, $f4
/* 01B6C4 8001BB14 8FA60030 */  lw          $a2, 0x30($sp)
/* 01B6C8 8001BB18 00003825 */  move        $a3, $zero
/* 01B6CC 8001BB1C 45020009 */  bc1fl       .L8001BB44
/* 01B6D0 8001BB20 C7A80028 */   lwc1       $f8, 0x28($sp)
/* 01B6D4 8001BB24 4600A387 */  neg.s       $f14, $f20
/* 01B6D8 8001BB28 0C043D2C */  jal         func_8010F4B0
/* 01B6DC 8001BB2C AFA20024 */   sw         $v0, 0x24($sp)
/* 01B6E0 8001BB30 3C013F80 */  lui         $at, 0x3f80
/* 01B6E4 8001BB34 44813000 */  mtc1        $at, $f6
/* 01B6E8 8001BB38 8FA40024 */  lw          $a0, 0x24($sp)
/* 01B6EC 8001BB3C 46060500 */  add.s       $f20, $f0, $f6
/* 01B6F0 8001BB40 C7A80028 */  lwc1        $f8, 0x28($sp)
.L8001BB44:
/* 01B6F4 8001BB44 3C01800B */  lui         $at, %hi(D_800A8A58)
/* 01B6F8 8001BB48 C4208A58 */  lwc1        $f0, %lo(D_800A8A58)($at)
/* 01B6FC 8001BB4C E494001C */  swc1        $f20, 0x1c($a0)
/* 01B700 8001BB50 E4880018 */  swc1        $f8, 0x18($a0)
/* 01B704 8001BB54 C7AA0030 */  lwc1        $f10, 0x30($sp)
/* 01B708 8001BB58 3C014040 */  lui         $at, 0x4040
/* 01B70C 8001BB5C 44812000 */  mtc1        $at, $f4
/* 01B710 8001BB60 E48A0020 */  swc1        $f10, 0x20($a0)
/* 01B714 8001BB64 C7B00028 */  lwc1        $f16, 0x28($sp)
/* 01B718 8001BB68 E4940048 */  swc1        $f20, 0x48($a0)
/* 01B71C 8001BB6C E4900044 */  swc1        $f16, 0x44($a0)
/* 01B720 8001BB70 C7B20030 */  lwc1        $f18, 0x30($sp)
/* 01B724 8001BB74 E4800008 */  swc1        $f0, 0x8($a0)
/* 01B728 8001BB78 E4800004 */  swc1        $f0, 0x4($a0)
/* 01B72C 8001BB7C E4800000 */  swc1        $f0, 0x0($a0)
/* 01B730 8001BB80 E4840024 */  swc1        $f4, 0x24($a0)
/* 01B734 8001BB84 E492004C */  swc1        $f18, 0x4c($a0)
/* 01B738 8001BB88 0C001C1B */  jal         func_8000706C
/* 01B73C 8001BB8C AFA40024 */   sw         $a0, 0x24($sp)
/* 01B740 8001BB90 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01B744 8001BB94 8FA20024 */  lw          $v0, 0x24($sp)
/* 01B748 8001BB98 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 01B74C 8001BB9C 03E00008 */  jr          $ra
/* 01B750 8001BBA0 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001BBA4 # 1
/* 01B754 8001BBA4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01B758 8001BBA8 AFA40020 */  sw          $a0, 0x20($sp)
/* 01B75C 8001BBAC AFBF0014 */  sw          $ra, 0x14($sp)
/* 01B760 8001BBB0 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01B764 8001BBB4 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01B768 8001BBB8 24050010 */  addiu       $a1, $zero, 0x10
/* 01B76C 8001BBBC 0C00DA76 */  jal         func_800369D8
/* 01B770 8001BBC0 24060046 */   addiu      $a2, $zero, 0x46
/* 01B774 8001BBC4 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01B778 8001BBC8 AC400000 */  sw          $zero, 0x0($v0)
/* 01B77C 8001BBCC 3C058007 */  lui         $a1, %hi(D_80069130)
/* 01B780 8001BBD0 8CA59130 */  lw          $a1, %lo(D_80069130)($a1)
/* 01B784 8001BBD4 0C0023F3 */  jal         func_80008FCC
/* 01B788 8001BBD8 24440004 */   addiu      $a0, $v0, 0x4
/* 01B78C 8001BBDC 8FAE001C */  lw          $t6, 0x1c($sp)
/* 01B790 8001BBE0 8FAF0020 */  lw          $t7, 0x20($sp)
/* 01B794 8001BBE4 ADEE0054 */  sw          $t6, 0x54($t7)
/* 01B798 8001BBE8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01B79C 8001BBEC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01B7A0 8001BBF0 03E00008 */  jr          $ra
/* 01B7A4 8001BBF4 00000000 */   nop

glabel func_8001BBF8 # 2
/* 01B7A8 8001BBF8 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 01B7AC 8001BBFC AFBF0044 */  sw          $ra, 0x44($sp)
/* 01B7B0 8001BC00 AFB10040 */  sw          $s1, 0x40($sp)
/* 01B7B4 8001BC04 AFB0003C */  sw          $s0, 0x3c($sp)
/* 01B7B8 8001BC08 8C910054 */  lw          $s1, 0x54($a0)
/* 01B7BC 8001BC0C 00808025 */  move        $s0, $a0
/* 01B7C0 8001BC10 3C028007 */  lui         $v0, %hi(D_80071E88)
/* 01B7C4 8001BC14 8E2E0000 */  lw          $t6, 0x0($s1)
/* 01B7C8 8001BC18 15C0001F */  bnez        $t6, .L8001BC98
/* 01B7CC 8001BC1C 00000000 */   nop
/* 01B7D0 8001BC20 8C421E88 */  lw          $v0, %lo(D_80071E88)($v0)
/* 01B7D4 8001BC24 C4860044 */  lwc1        $f6, 0x44($a0)
/* 01B7D8 8001BC28 C4440044 */  lwc1        $f4, 0x44($v0)
/* 01B7DC 8001BC2C 46062201 */  sub.s       $f8, $f4, $f6
/* 01B7E0 8001BC30 E7A80058 */  swc1        $f8, 0x58($sp)
/* 01B7E4 8001BC34 C4900048 */  lwc1        $f16, 0x48($a0)
/* 01B7E8 8001BC38 C44A0048 */  lwc1        $f10, 0x48($v0)
/* 01B7EC 8001BC3C 46105481 */  sub.s       $f18, $f10, $f16
/* 01B7F0 8001BC40 E7B2005C */  swc1        $f18, 0x5c($sp)
/* 01B7F4 8001BC44 C486004C */  lwc1        $f6, 0x4c($a0)
/* 01B7F8 8001BC48 C444004C */  lwc1        $f4, 0x4c($v0)
/* 01B7FC 8001BC4C 27A40058 */  addiu       $a0, $sp, 0x58
/* 01B800 8001BC50 46062201 */  sub.s       $f8, $f4, $f6
/* 01B804 8001BC54 0C00E3AC */  jal         func_80038EB0
/* 01B808 8001BC58 E7A80060 */   swc1       $f8, 0x60($sp)
/* 01B80C 8001BC5C 3C0F8007 */  lui         $t7, %hi(D_80071E88)
/* 01B810 8001BC60 8DEF1E88 */  lw          $t7, %lo(D_80071E88)($t7)
/* 01B814 8001BC64 C60A0024 */  lwc1        $f10, 0x24($s0)
/* 01B818 8001BC68 24180001 */  addiu       $t8, $zero, 0x1
/* 01B81C 8001BC6C C5F00024 */  lwc1        $f16, 0x24($t7)
/* 01B820 8001BC70 26240004 */  addiu       $a0, $s1, 0x4
/* 01B824 8001BC74 3C058007 */  lui         $a1, %hi(D_80069134)
/* 01B828 8001BC78 46105480 */  add.s       $f18, $f10, $f16
/* 01B82C 8001BC7C 4612003C */  c.lt.s      $f0, $f18
/* 01B830 8001BC80 00000000 */  nop
/* 01B834 8001BC84 45000004 */  bc1f        .L8001BC98
/* 01B838 8001BC88 00000000 */   nop
/* 01B83C 8001BC8C AE380000 */  sw          $t8, 0x0($s1)
/* 01B840 8001BC90 0C0023F3 */  jal         func_80008FCC
/* 01B844 8001BC94 8CA59134 */   lw         $a1, %lo(D_80069134)($a1)
.L8001BC98:
/* 01B848 8001BC98 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01B84C 8001BC9C 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01B850 8001BCA0 26240004 */  addiu       $a0, $s1, 0x4
/* 01B854 8001BCA4 0C002400 */  jal         func_80009000
/* 01B858 8001BCA8 27A50054 */   addiu      $a1, $sp, 0x54
/* 01B85C 8001BCAC 8E390000 */  lw          $t9, 0x0($s1)
/* 01B860 8001BCB0 24010001 */  addiu       $at, $zero, 0x1
/* 01B864 8001BCB4 1320002E */  beqz        $t9, .L8001BD70
/* 01B868 8001BCB8 00000000 */   nop
/* 01B86C 8001BCBC 54410006 */  bnel        $v0, $at, .L8001BCD8
/* 01B870 8001BCC0 24010002 */   addiu      $at, $zero, 0x2
/* 01B874 8001BCC4 0C001C6D */  jal         func_800071B4
/* 01B878 8001BCC8 02002025 */   move       $a0, $s0
/* 01B87C 8001BCCC 10000028 */  b           .L8001BD70
/* 01B880 8001BCD0 00000000 */   nop
/* 01B884 8001BCD4 24010002 */  addiu       $at, $zero, 0x2
.L8001BCD8:
/* 01B888 8001BCD8 14410025 */  bne         $v0, $at, .L8001BD70
/* 01B88C 8001BCDC 02002025 */   move       $a0, $s0
/* 01B890 8001BCE0 24050097 */  addiu       $a1, $zero, 0x97
/* 01B894 8001BCE4 3C0641A0 */  lui         $a2, 0x41a0
/* 01B898 8001BCE8 0C00216C */  jal         func_800085B0
/* 01B89C 8001BCEC 3C0742C8 */   lui        $a3, 0x42c8
/* 01B8A0 8001BCF0 3C048007 */  lui         $a0, %hi(D_80071E88)
/* 01B8A4 8001BCF4 8C841E88 */  lw          $a0, %lo(D_80071E88)($a0)
/* 01B8A8 8001BCF8 0C0052E8 */  jal         func_80014BA0
/* 01B8AC 8001BCFC 24050079 */   addiu      $a1, $zero, 0x79
/* 01B8B0 8001BD00 3C01800B */  lui         $at, %hi(D_800A8A5C)
/* 01B8B4 8001BD04 C4208A5C */  lwc1        $f0, %lo(D_800A8A5C)($at)
/* 01B8B8 8001BD08 3C01800B */  lui         $at, %hi(D_800A8A60)
/* 01B8BC 8001BD0C 8E050044 */  lw          $a1, 0x44($s0)
/* 01B8C0 8001BD10 8E060048 */  lw          $a2, 0x48($s0)
/* 01B8C4 8001BD14 8E07004C */  lw          $a3, 0x4c($s0)
/* 01B8C8 8001BD18 C4248A60 */  lwc1        $f4, %lo(D_800A8A60)($at)
/* 01B8CC 8001BD1C 3C013F80 */  lui         $at, 0x3f80
/* 01B8D0 8001BD20 44813000 */  mtc1        $at, $f6
/* 01B8D4 8001BD24 3C01800B */  lui         $at, %hi(D_800A8A64)
/* 01B8D8 8001BD28 C4288A64 */  lwc1        $f8, %lo(D_800A8A64)($at)
/* 01B8DC 8001BD2C 3C014000 */  lui         $at, 0x4000
/* 01B8E0 8001BD30 44815000 */  mtc1        $at, $f10
/* 01B8E4 8001BD34 240800C2 */  addiu       $t0, $zero, 0xc2
/* 01B8E8 8001BD38 24090001 */  addiu       $t1, $zero, 0x1
/* 01B8EC 8001BD3C 240A0008 */  addiu       $t2, $zero, 0x8
/* 01B8F0 8001BD40 AFAA0034 */  sw          $t2, 0x34($sp)
/* 01B8F4 8001BD44 AFA90030 */  sw          $t1, 0x30($sp)
/* 01B8F8 8001BD48 AFA8002C */  sw          $t0, 0x2c($sp)
/* 01B8FC 8001BD4C AFA20014 */  sw          $v0, 0x14($sp)
/* 01B900 8001BD50 24040002 */  addiu       $a0, $zero, 0x2
/* 01B904 8001BD54 E7A00028 */  swc1        $f0, 0x28($sp)
/* 01B908 8001BD58 E7A00024 */  swc1        $f0, 0x24($sp)
/* 01B90C 8001BD5C E7A40010 */  swc1        $f4, 0x10($sp)
/* 01B910 8001BD60 E7A60018 */  swc1        $f6, 0x18($sp)
/* 01B914 8001BD64 E7A8001C */  swc1        $f8, 0x1c($sp)
/* 01B918 8001BD68 0C006DF6 */  jal         func_8001B7D8
/* 01B91C 8001BD6C E7AA0020 */   swc1       $f10, 0x20($sp)
.L8001BD70:
/* 01B920 8001BD70 0C00212C */  jal         func_800084B0
/* 01B924 8001BD74 02002025 */   move       $a0, $s0
/* 01B928 8001BD78 8FBF0044 */  lw          $ra, 0x44($sp)
/* 01B92C 8001BD7C 8FB0003C */  lw          $s0, 0x3c($sp)
/* 01B930 8001BD80 8FB10040 */  lw          $s1, 0x40($sp)
/* 01B934 8001BD84 03E00008 */  jr          $ra
/* 01B938 8001BD88 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8001BD8C # 3
/* 01B93C 8001BD8C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01B940 8001BD90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01B944 8001BD94 AFA40018 */  sw          $a0, 0x18($sp)
/* 01B948 8001BD98 8C820054 */  lw          $v0, 0x54($a0)
/* 01B94C 8001BD9C 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 01B950 8001BDA0 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 01B954 8001BDA4 24050005 */  addiu       $a1, $zero, 0x5
/* 01B958 8001BDA8 0C002AAB */  jal         func_8000AAAC
/* 01B95C 8001BDAC 8446000C */   lh         $a2, 0xc($v0)
/* 01B960 8001BDB0 8FAF0018 */  lw          $t7, 0x18($sp)
/* 01B964 8001BDB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01B968 8001BDB8 8DE20030 */  lw          $v0, 0x30($t7)
/* 01B96C 8001BDBC 03E00008 */  jr          $ra
/* 01B970 8001BDC0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001BDC4 # 4
/* 01B974 8001BDC4 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01B978 8001BDC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01B97C 8001BDCC 8C830054 */  lw          $v1, 0x54($a0)
/* 01B980 8001BDD0 8C6E0000 */  lw          $t6, 0x0($v1)
/* 01B984 8001BDD4 55C0000F */  bnel        $t6, $zero, .L8001BE14
/* 01B988 8001BDD8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01B98C 8001BDDC 8CA40000 */  lw          $a0, 0x0($a1)
/* 01B990 8001BDE0 0C001A23 */  jal         func_8000688C
/* 01B994 8001BDE4 AFA3001C */   sw         $v1, 0x1c($sp)
/* 01B998 8001BDE8 3C0F8007 */  lui         $t7, %hi(D_80071E88)
/* 01B99C 8001BDEC 8DEF1E88 */  lw          $t7, %lo(D_80071E88)($t7)
/* 01B9A0 8001BDF0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01B9A4 8001BDF4 24180001 */  addiu       $t8, $zero, 0x1
/* 01B9A8 8001BDF8 144F0005 */  bne         $v0, $t7, .L8001BE10
/* 01B9AC 8001BDFC 24640004 */   addiu      $a0, $v1, 0x4
/* 01B9B0 8001BE00 AC780000 */  sw          $t8, 0x0($v1)
/* 01B9B4 8001BE04 3C058007 */  lui         $a1, %hi(D_80069134)
/* 01B9B8 8001BE08 0C0023F3 */  jal         func_80008FCC
/* 01B9BC 8001BE0C 8CA59134 */   lw         $a1, %lo(D_80069134)($a1)
.L8001BE10:
/* 01B9C0 8001BE10 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001BE14:
/* 01B9C4 8001BE14 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01B9C8 8001BE18 03E00008 */  jr          $ra
/* 01B9CC 8001BE1C 00000000 */   nop

glabel func_8001BE20 # 5
/* 01B9D0 8001BE20 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01B9D4 8001BE24 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01B9D8 8001BE28 0C004DD0 */  jal         func_80013740
/* 01B9DC 8001BE2C AFA40018 */   sw         $a0, 0x18($sp)
/* 01B9E0 8001BE30 0C005444 */  jal         func_80015110
/* 01B9E4 8001BE34 8FA40018 */   lw         $a0, 0x18($sp)
/* 01B9E8 8001BE38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01B9EC 8001BE3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01B9F0 8001BE40 03E00008 */  jr          $ra
/* 01B9F4 8001BE44 00000000 */   nop

glabel func_8001BE48 # 6
/* 01B9F8 8001BE48 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01B9FC 8001BE4C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BA00 8001BE50 0C046702 */  jal         func_80119C08
/* 01BA04 8001BE54 AFA40018 */   sw         $a0, 0x18($sp)
/* 01BA08 8001BE58 0C004EF8 */  jal         func_80013BE0
/* 01BA0C 8001BE5C 8FA40018 */   lw         $a0, 0x18($sp)
/* 01BA10 8001BE60 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BA14 8001BE64 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BA18 8001BE68 03E00008 */  jr          $ra
/* 01BA1C 8001BE6C 00000000 */   nop

glabel func_8001BE70 # 7
/* 01BA20 8001BE70 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01BA24 8001BE74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01BA28 8001BE78 AFB00018 */  sw          $s0, 0x18($sp)
/* 01BA2C 8001BE7C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01BA30 8001BE80 00808025 */  move        $s0, $a0
/* 01BA34 8001BE84 0C046702 */  jal         func_80119C08
/* 01BA38 8001BE88 AFAE0024 */   sw         $t6, 0x24($sp)
/* 01BA3C 8001BE8C 0C004EF8 */  jal         func_80013BE0
/* 01BA40 8001BE90 02002025 */   move       $a0, $s0
/* 01BA44 8001BE94 0C047038 */  jal         func_8011C0E0
/* 01BA48 8001BE98 02002025 */   move       $a0, $s0
/* 01BA4C 8001BE9C 50400013 */  beql        $v0, $zero, .L8001BEEC
/* 01BA50 8001BEA0 8FBF001C */   lw         $ra, 0x1c($sp)
/* 01BA54 8001BEA4 8FA20024 */  lw          $v0, 0x24($sp)
/* 01BA58 8001BEA8 C6100024 */  lwc1        $f16, 0x24($s0)
/* 01BA5C 8001BEAC C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 01BA60 8001BEB0 E6040018 */  swc1        $f4, 0x18($s0)
/* 01BA64 8001BEB4 C44601F0 */  lwc1        $f6, 0x1f0($v0)
/* 01BA68 8001BEB8 C6040018 */  lwc1        $f4, 0x18($s0)
/* 01BA6C 8001BEBC E606001C */  swc1        $f6, 0x1c($s0)
/* 01BA70 8001BEC0 C60A001C */  lwc1        $f10, 0x1c($s0)
/* 01BA74 8001BEC4 C44801F4 */  lwc1        $f8, 0x1f4($v0)
/* 01BA78 8001BEC8 E6040044 */  swc1        $f4, 0x44($s0)
/* 01BA7C 8001BECC 46105480 */  add.s       $f18, $f10, $f16
/* 01BA80 8001BED0 E6080020 */  swc1        $f8, 0x20($s0)
/* 01BA84 8001BED4 C6080020 */  lwc1        $f8, 0x20($s0)
/* 01BA88 8001BED8 E612001C */  swc1        $f18, 0x1c($s0)
/* 01BA8C 8001BEDC C606001C */  lwc1        $f6, 0x1c($s0)
/* 01BA90 8001BEE0 E608004C */  swc1        $f8, 0x4c($s0)
/* 01BA94 8001BEE4 E6060048 */  swc1        $f6, 0x48($s0)
/* 01BA98 8001BEE8 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001BEEC:
/* 01BA9C 8001BEEC 8FB00018 */  lw          $s0, 0x18($sp)
/* 01BAA0 8001BEF0 27BD0028 */  addiu       $sp, $sp, 0x28
/* 01BAA4 8001BEF4 03E00008 */  jr          $ra
/* 01BAA8 8001BEF8 00000000 */   nop

glabel func_8001BEFC # 8
/* 01BAAC 8001BEFC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01BAB0 8001BF00 AFA40020 */  sw          $a0, 0x20($sp)
/* 01BAB4 8001BF04 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BAB8 8001BF08 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01BABC 8001BF0C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01BAC0 8001BF10 24050008 */  addiu       $a1, $zero, 0x8
/* 01BAC4 8001BF14 0C00DA76 */  jal         func_800369D8
/* 01BAC8 8001BF18 24060061 */   addiu      $a2, $zero, 0x61
/* 01BACC 8001BF1C 00402025 */  move        $a0, $v0
/* 01BAD0 8001BF20 24050008 */  addiu       $a1, $zero, 0x8
/* 01BAD4 8001BF24 0C013C58 */  jal         func_8004F160
/* 01BAD8 8001BF28 AFA2001C */   sw         $v0, 0x1c($sp)
/* 01BADC 8001BF2C 8FA20020 */  lw          $v0, 0x20($sp)
/* 01BAE0 8001BF30 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01BAE4 8001BF34 C4440014 */  lwc1        $f4, 0x14($v0)
/* 01BAE8 8001BF38 E4640000 */  swc1        $f4, 0x0($v1)
/* 01BAEC 8001BF3C AC430054 */  sw          $v1, 0x54($v0)
/* 01BAF0 8001BF40 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BAF4 8001BF44 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01BAF8 8001BF48 03E00008 */  jr          $ra
/* 01BAFC 8001BF4C 00000000 */   nop

glabel func_8001BF50 # 9
/* 01BB00 8001BF50 44801000 */  mtc1        $zero, $f2
/* 01BB04 8001BF54 3C013F80 */  lui         $at, 0x3f80
/* 01BB08 8001BF58 44812000 */  mtc1        $at, $f4
/* 01BB0C 8001BF5C 46001005 */  abs.s       $f0, $f2
/* 01BB10 8001BF60 8C820054 */  lw          $v0, 0x54($a0)
/* 01BB14 8001BF64 4604003C */  c.lt.s      $f0, $f4
/* 01BB18 8001BF68 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01BB1C 8001BF6C E4420004 */  swc1        $f2, 0x4($v0)
/* 01BB20 8001BF70 45020005 */  bc1fl       .L8001BF88
/* 01BB24 8001BF74 C4480004 */   lwc1       $f8, 0x4($v0)
/* 01BB28 8001BF78 44803000 */  mtc1        $zero, $f6
/* 01BB2C 8001BF7C 03E00008 */  jr          $ra
/* 01BB30 8001BF80 E4460004 */   swc1       $f6, 0x4($v0)
/* 01BB34 8001BF84 C4480004 */  lwc1        $f8, 0x4($v0)
.L8001BF88:
/* 01BB38 8001BF88 C42A2C64 */  lwc1        $f10, %lo(D_800B2C64)($at)
/* 01BB3C 8001BF8C C4920014 */  lwc1        $f18, 0x14($a0)
/* 01BB40 8001BF90 460A4402 */  mul.s       $f16, $f8, $f10
/* 01BB44 8001BF94 46109100 */  add.s       $f4, $f18, $f16
/* 01BB48 8001BF98 E4840014 */  swc1        $f4, 0x14($a0)
/* 01BB4C 8001BF9C 03E00008 */  jr          $ra
/* 01BB50 8001BFA0 00000000 */   nop

glabel func_8001BFA4 # 10
/* 01BB54 8001BFA4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BB58 8001BFA8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BB5C 8001BFAC 0C004F4E */  jal         func_80013D38
/* 01BB60 8001BFB0 AFA40018 */   sw         $a0, 0x18($sp)
/* 01BB64 8001BFB4 3C014370 */  lui         $at, 0x4370
/* 01BB68 8001BFB8 44812000 */  mtc1        $at, $f4
/* 01BB6C 8001BFBC 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01BB70 8001BFC0 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 01BB74 8001BFC4 8FA40018 */  lw          $a0, 0x18($sp)
/* 01BB78 8001BFC8 44806000 */  mtc1        $zero, $f12
/* 01BB7C 8001BFCC 46062202 */  mul.s       $f8, $f4, $f6
/* 01BB80 8001BFD0 C48A0010 */  lwc1        $f10, 0x10($a0)
/* 01BB84 8001BFD4 3C0143B4 */  lui         $at, 0x43b4
/* 01BB88 8001BFD8 46085401 */  sub.s       $f16, $f10, $f8
/* 01BB8C 8001BFDC E4900010 */  swc1        $f16, 0x10($a0)
/* 01BB90 8001BFE0 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01BB94 8001BFE4 460C003C */  c.lt.s      $f0, $f12
/* 01BB98 8001BFE8 00000000 */  nop
/* 01BB9C 8001BFEC 4502000B */  bc1fl       .L8001C01C
/* 01BBA0 8001BFF0 3C0143B4 */   lui        $at, 0x43b4
/* 01BBA4 8001BFF4 44811000 */  mtc1        $at, $f2
/* 01BBA8 8001BFF8 00000000 */  nop
/* 01BBAC 8001BFFC 46020480 */  add.s       $f18, $f0, $f2
.L8001C000:
/* 01BBB0 8001C000 E4920010 */  swc1        $f18, 0x10($a0)
/* 01BBB4 8001C004 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01BBB8 8001C008 460C003C */  c.lt.s      $f0, $f12
/* 01BBBC 8001C00C 00000000 */  nop
/* 01BBC0 8001C010 4503FFFB */  bc1tl       .L8001C000
/* 01BBC4 8001C014 46020480 */   add.s      $f18, $f0, $f2
/* 01BBC8 8001C018 3C0143B4 */  lui         $at, 0x43b4
.L8001C01C:
/* 01BBCC 8001C01C 44811000 */  mtc1        $at, $f2
/* 01BBD0 8001C020 00000000 */  nop
/* 01BBD4 8001C024 4600103E */  c.le.s      $f2, $f0
/* 01BBD8 8001C028 00000000 */  nop
/* 01BBDC 8001C02C 45020009 */  bc1fl       .L8001C054
/* 01BBE0 8001C030 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01BBE4 8001C034 46020101 */  sub.s       $f4, $f0, $f2
.L8001C038:
/* 01BBE8 8001C038 E4840010 */  swc1        $f4, 0x10($a0)
/* 01BBEC 8001C03C C4800010 */  lwc1        $f0, 0x10($a0)
/* 01BBF0 8001C040 4600103E */  c.le.s      $f2, $f0
/* 01BBF4 8001C044 00000000 */  nop
/* 01BBF8 8001C048 4503FFFB */  bc1tl       .L8001C038
/* 01BBFC 8001C04C 46020101 */   sub.s      $f4, $f0, $f2
/* 01BC00 8001C050 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001C054:
/* 01BC04 8001C054 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BC08 8001C058 03E00008 */  jr          $ra
/* 01BC0C 8001C05C 00000000 */   nop

glabel func_8001C060 # 11
/* 01BC10 8001C060 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BC14 8001C064 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BC18 8001C068 0C004F4E */  jal         func_80013D38
/* 01BC1C 8001C06C AFA40018 */   sw         $a0, 0x18($sp)
/* 01BC20 8001C070 3C014370 */  lui         $at, 0x4370
/* 01BC24 8001C074 44812000 */  mtc1        $at, $f4
/* 01BC28 8001C078 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 01BC2C 8001C07C C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 01BC30 8001C080 8FA40018 */  lw          $a0, 0x18($sp)
/* 01BC34 8001C084 44806000 */  mtc1        $zero, $f12
/* 01BC38 8001C088 46062202 */  mul.s       $f8, $f4, $f6
/* 01BC3C 8001C08C C48A0010 */  lwc1        $f10, 0x10($a0)
/* 01BC40 8001C090 3C0143B4 */  lui         $at, 0x43b4
/* 01BC44 8001C094 46085400 */  add.s       $f16, $f10, $f8
/* 01BC48 8001C098 E4900010 */  swc1        $f16, 0x10($a0)
/* 01BC4C 8001C09C C4800010 */  lwc1        $f0, 0x10($a0)
/* 01BC50 8001C0A0 460C003C */  c.lt.s      $f0, $f12
/* 01BC54 8001C0A4 00000000 */  nop
/* 01BC58 8001C0A8 4502000B */  bc1fl       .L8001C0D8
/* 01BC5C 8001C0AC 3C0143B4 */   lui        $at, 0x43b4
/* 01BC60 8001C0B0 44811000 */  mtc1        $at, $f2
/* 01BC64 8001C0B4 00000000 */  nop
/* 01BC68 8001C0B8 46020480 */  add.s       $f18, $f0, $f2
.L8001C0BC:
/* 01BC6C 8001C0BC E4920010 */  swc1        $f18, 0x10($a0)
/* 01BC70 8001C0C0 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01BC74 8001C0C4 460C003C */  c.lt.s      $f0, $f12
/* 01BC78 8001C0C8 00000000 */  nop
/* 01BC7C 8001C0CC 4503FFFB */  bc1tl       .L8001C0BC
/* 01BC80 8001C0D0 46020480 */   add.s      $f18, $f0, $f2
/* 01BC84 8001C0D4 3C0143B4 */  lui         $at, 0x43b4
.L8001C0D8:
/* 01BC88 8001C0D8 44811000 */  mtc1        $at, $f2
/* 01BC8C 8001C0DC 00000000 */  nop
/* 01BC90 8001C0E0 4600103E */  c.le.s      $f2, $f0
/* 01BC94 8001C0E4 00000000 */  nop
/* 01BC98 8001C0E8 45020009 */  bc1fl       .L8001C110
/* 01BC9C 8001C0EC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 01BCA0 8001C0F0 46020101 */  sub.s       $f4, $f0, $f2
.L8001C0F4:
/* 01BCA4 8001C0F4 E4840010 */  swc1        $f4, 0x10($a0)
/* 01BCA8 8001C0F8 C4800010 */  lwc1        $f0, 0x10($a0)
/* 01BCAC 8001C0FC 4600103E */  c.le.s      $f2, $f0
/* 01BCB0 8001C100 00000000 */  nop
/* 01BCB4 8001C104 4503FFFB */  bc1tl       .L8001C0F4
/* 01BCB8 8001C108 46020101 */   sub.s      $f4, $f0, $f2
/* 01BCBC 8001C10C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8001C110:
/* 01BCC0 8001C110 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BCC4 8001C114 03E00008 */  jr          $ra
/* 01BCC8 8001C118 00000000 */   nop

glabel func_8001C11C # 12
/* 01BCCC 8001C11C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01BCD0 8001C120 AFA40020 */  sw          $a0, 0x20($sp)
/* 01BCD4 8001C124 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BCD8 8001C128 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01BCDC 8001C12C 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01BCE0 8001C130 2405000C */  addiu       $a1, $zero, 0xc
/* 01BCE4 8001C134 0C00DA76 */  jal         func_800369D8
/* 01BCE8 8001C138 24060093 */   addiu      $a2, $zero, 0x93
/* 01BCEC 8001C13C 3C058007 */  lui         $a1, %hi(D_80069124)
/* 01BCF0 8001C140 AFA2001C */  sw          $v0, 0x1c($sp)
/* 01BCF4 8001C144 8CA59124 */  lw          $a1, %lo(D_80069124)($a1)
/* 01BCF8 8001C148 0C0023F3 */  jal         func_80008FCC
/* 01BCFC 8001C14C 00402025 */   move       $a0, $v0
/* 01BD00 8001C150 8FAE001C */  lw          $t6, 0x1c($sp)
/* 01BD04 8001C154 8FAF0020 */  lw          $t7, 0x20($sp)
/* 01BD08 8001C158 ADEE0054 */  sw          $t6, 0x54($t7)
/* 01BD0C 8001C15C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BD10 8001C160 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01BD14 8001C164 03E00008 */  jr          $ra
/* 01BD18 8001C168 00000000 */   nop

glabel func_8001C16C # 13
/* 01BD1C 8001C16C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BD20 8001C170 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BD24 8001C174 0C00214C */  jal         func_80008530
/* 01BD28 8001C178 AFA40018 */   sw         $a0, 0x18($sp)
/* 01BD2C 8001C17C 8FA40018 */  lw          $a0, 0x18($sp)
/* 01BD30 8001C180 948E0036 */  lhu         $t6, 0x36($a0)
/* 01BD34 8001C184 35CF1000 */  ori         $t7, $t6, 0x1000
/* 01BD38 8001C188 A48F0036 */  sh          $t7, 0x36($a0)
/* 01BD3C 8001C18C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BD40 8001C190 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BD44 8001C194 03E00008 */  jr          $ra
/* 01BD48 8001C198 00000000 */   nop

glabel func_8001C19C # 14
/* 01BD4C 8001C19C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01BD50 8001C1A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BD54 8001C1A4 AFA40030 */  sw          $a0, 0x30($sp)
/* 01BD58 8001C1A8 3C06800B */  lui         $a2, %hi(D_800B2C64)
/* 01BD5C 8001C1AC 8C840054 */  lw          $a0, 0x54($a0)
/* 01BD60 8001C1B0 8CC62C64 */  lw          $a2, %lo(D_800B2C64)($a2)
/* 01BD64 8001C1B4 0C002400 */  jal         func_80009000
/* 01BD68 8001C1B8 27A50028 */   addiu      $a1, $sp, 0x28
/* 01BD6C 8001C1BC 3C04800B */  lui         $a0, %hi(D_800B1A70)
/* 01BD70 8001C1C0 24841A70 */  addiu       $a0, $a0, %lo(D_800B1A70)
/* 01BD74 8001C1C4 8C820000 */  lw          $v0, 0x0($a0)
/* 01BD78 8001C1C8 3C18E700 */  lui         $t8, 0xe700
/* 01BD7C 8001C1CC 3C09E200 */  lui         $t1, 0xe200
/* 01BD80 8001C1D0 244F0008 */  addiu       $t7, $v0, 0x8
/* 01BD84 8001C1D4 AC8F0000 */  sw          $t7, 0x0($a0)
/* 01BD88 8001C1D8 AC400004 */  sw          $zero, 0x4($v0)
/* 01BD8C 8001C1DC AC580000 */  sw          $t8, 0x0($v0)
/* 01BD90 8001C1E0 8C820000 */  lw          $v0, 0x0($a0)
/* 01BD94 8001C1E4 3C0A0010 */  lui         $t2, 0x10
/* 01BD98 8001C1E8 354A49D8 */  ori         $t2, $t2, 0x49d8
/* 01BD9C 8001C1EC 24590008 */  addiu       $t9, $v0, 0x8
/* 01BDA0 8001C1F0 AC990000 */  sw          $t9, 0x0($a0)
/* 01BDA4 8001C1F4 3529001C */  ori         $t1, $t1, 0x1c
/* 01BDA8 8001C1F8 AC490000 */  sw          $t1, 0x0($v0)
/* 01BDAC 8001C1FC AC4A0004 */  sw          $t2, 0x4($v0)
/* 01BDB0 8001C200 8C820000 */  lw          $v0, 0x0($a0)
/* 01BDB4 8001C204 3C0CFCFF */  lui         $t4, 0xfcff
/* 01BDB8 8001C208 3C0DF0FC */  lui         $t5, 0xf0fc
/* 01BDBC 8001C20C 244B0008 */  addiu       $t3, $v0, 0x8
/* 01BDC0 8001C210 AC8B0000 */  sw          $t3, 0x0($a0)
/* 01BDC4 8001C214 35ADF238 */  ori         $t5, $t5, 0xf238
/* 01BDC8 8001C218 358CFEAC */  ori         $t4, $t4, 0xfeac
/* 01BDCC 8001C21C AC4C0000 */  sw          $t4, 0x0($v0)
/* 01BDD0 8001C220 AC4D0004 */  sw          $t5, 0x4($v0)
/* 01BDD4 8001C224 8FA60028 */  lw          $a2, 0x28($sp)
/* 01BDD8 8001C228 0C002AAB */  jal         func_8000AAAC
/* 01BDDC 8001C22C 24050005 */   addiu      $a1, $zero, 0x5
/* 01BDE0 8001C230 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01BDE4 8001C234 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BDE8 8001C238 8DC20030 */  lw          $v0, 0x30($t6)
/* 01BDEC 8001C23C 03E00008 */  jr          $ra
/* 01BDF0 8001C240 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001C244 # 15
/* 01BDF4 8001C244 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 01BDF8 8001C248 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01BDFC 8001C24C AFB00018 */  sw          $s0, 0x18($sp)
/* 01BE00 8001C250 0C004F4E */  jal         func_80013D38
/* 01BE04 8001C254 00808025 */   move       $s0, $a0
/* 01BE08 8001C258 8E02002C */  lw          $v0, 0x2c($s0)
/* 01BE0C 8001C25C C604000C */  lwc1        $f4, 0xc($s0)
/* 01BE10 8001C260 3C018009 */  lui         $at, %hi(D_8008E100)
/* 01BE14 8001C264 C42CE100 */  lwc1        $f12, %lo(D_8008E100)($at)
/* 01BE18 8001C268 E444000C */  swc1        $f4, 0xc($v0)
/* 01BE1C 8001C26C C6060010 */  lwc1        $f6, 0x10($s0)
/* 01BE20 8001C270 44801000 */  mtc1        $zero, $f2
/* 01BE24 8001C274 E4460010 */  swc1        $f6, 0x10($v0)
/* 01BE28 8001C278 C6080014 */  lwc1        $f8, 0x14($s0)
/* 01BE2C 8001C27C E4480014 */  swc1        $f8, 0x14($v0)
/* 01BE30 8001C280 0C00EB2F */  jal         func_8003ACBC
/* 01BE34 8001C284 E602000C */   swc1       $f2, 0xc($s0)
/* 01BE38 8001C288 3C018009 */  lui         $at, %hi(D_8008E104)
/* 01BE3C 8001C28C C42CE104 */  lwc1        $f12, %lo(D_8008E104)($at)
/* 01BE40 8001C290 3C0141A0 */  lui         $at, 0x41a0
/* 01BE44 8001C294 44815000 */  mtc1        $at, $f10
/* 01BE48 8001C298 00000000 */  nop
/* 01BE4C 8001C29C 460A0402 */  mul.s       $f16, $f0, $f10
/* 01BE50 8001C2A0 0C00EB2F */  jal         func_8003ACBC
/* 01BE54 8001C2A4 E6100010 */   swc1       $f16, 0x10($s0)
/* 01BE58 8001C2A8 3C018009 */  lui         $at, %hi(D_8008E100)
/* 01BE5C 8001C2AC C42CE100 */  lwc1        $f12, %lo(D_8008E100)($at)
/* 01BE60 8001C2B0 3C018009 */  lui         $at, %hi(D_8008E104)
/* 01BE64 8001C2B4 C42EE104 */  lwc1        $f14, %lo(D_8008E104)($at)
/* 01BE68 8001C2B8 3C0140A0 */  lui         $at, 0x40a0
/* 01BE6C 8001C2BC 44819000 */  mtc1        $at, $f18
/* 01BE70 8001C2C0 3C01800B */  lui         $at, %hi(D_800A97AC)
/* 01BE74 8001C2C4 44801000 */  mtc1        $zero, $f2
/* 01BE78 8001C2C8 46120102 */  mul.s       $f4, $f0, $f18
/* 01BE7C 8001C2CC E6040014 */  swc1        $f4, 0x14($s0)
/* 01BE80 8001C2D0 C42697AC */  lwc1        $f6, %lo(D_800A97AC)($at)
/* 01BE84 8001C2D4 3C01800B */  lui         $at, %hi(D_800A97B0)
/* 01BE88 8001C2D8 C42897B0 */  lwc1        $f8, %lo(D_800A97B0)($at)
/* 01BE8C 8001C2DC 46066300 */  add.s       $f12, $f12, $f6
/* 01BE90 8001C2E0 3C0143B4 */  lui         $at, 0x43b4
/* 01BE94 8001C2E4 46087380 */  add.s       $f14, $f14, $f8
/* 01BE98 8001C2E8 4602603C */  c.lt.s      $f12, $f2
/* 01BE9C 8001C2EC 00000000 */  nop
/* 01BEA0 8001C2F0 45020009 */  bc1fl       .L8001C318
/* 01BEA4 8001C2F4 3C0143B4 */   lui        $at, 0x43b4
/* 01BEA8 8001C2F8 44810000 */  mtc1        $at, $f0
/* 01BEAC 8001C2FC 00000000 */  nop
/* 01BEB0 8001C300 46006300 */  add.s       $f12, $f12, $f0
.L8001C304:
/* 01BEB4 8001C304 4602603C */  c.lt.s      $f12, $f2
/* 01BEB8 8001C308 00000000 */  nop
/* 01BEBC 8001C30C 4503FFFD */  bc1tl       .L8001C304
/* 01BEC0 8001C310 46006300 */   add.s      $f12, $f12, $f0
/* 01BEC4 8001C314 3C0143B4 */  lui         $at, 0x43b4
.L8001C318:
/* 01BEC8 8001C318 44810000 */  mtc1        $at, $f0
/* 01BECC 8001C31C 3C018009 */  lui         $at, %hi(D_8008E100)
/* 01BED0 8001C320 E42CE100 */  swc1        $f12, %lo(D_8008E100)($at)
/* 01BED4 8001C324 460C003E */  c.le.s      $f0, $f12
/* 01BED8 8001C328 3C018009 */  lui         $at, %hi(D_8008E100)
/* 01BEDC 8001C32C 45020008 */  bc1fl       .L8001C350
/* 01BEE0 8001C330 4602703C */   c.lt.s     $f14, $f2
/* 01BEE4 8001C334 46006301 */  sub.s       $f12, $f12, $f0
.L8001C338:
/* 01BEE8 8001C338 460C003E */  c.le.s      $f0, $f12
/* 01BEEC 8001C33C 00000000 */  nop
/* 01BEF0 8001C340 4503FFFD */  bc1tl       .L8001C338
/* 01BEF4 8001C344 46006301 */   sub.s      $f12, $f12, $f0
/* 01BEF8 8001C348 E42CE100 */  swc1        $f12, %lo(D_8008E100)($at)
/* 01BEFC 8001C34C 4602703C */  c.lt.s      $f14, $f2
.L8001C350:
/* 01BF00 8001C350 00000000 */  nop
/* 01BF04 8001C354 45020007 */  bc1fl       .L8001C374
/* 01BF08 8001C358 460E003E */   c.le.s     $f0, $f14
/* 01BF0C 8001C35C 46007380 */  add.s       $f14, $f14, $f0
.L8001C360:
/* 01BF10 8001C360 4602703C */  c.lt.s      $f14, $f2
/* 01BF14 8001C364 00000000 */  nop
/* 01BF18 8001C368 4503FFFD */  bc1tl       .L8001C360
/* 01BF1C 8001C36C 46007380 */   add.s      $f14, $f14, $f0
/* 01BF20 8001C370 460E003E */  c.le.s      $f0, $f14
.L8001C374:
/* 01BF24 8001C374 3C018009 */  lui         $at, %hi(D_8008E104)
/* 01BF28 8001C378 E42EE104 */  swc1        $f14, %lo(D_8008E104)($at)
/* 01BF2C 8001C37C 3C018009 */  lui         $at, %hi(D_8008E104)
/* 01BF30 8001C380 45020008 */  bc1fl       .L8001C3A4
/* 01BF34 8001C384 8FBF001C */   lw         $ra, 0x1c($sp)
/* 01BF38 8001C388 46007381 */  sub.s       $f14, $f14, $f0
.L8001C38C:
/* 01BF3C 8001C38C 460E003E */  c.le.s      $f0, $f14
/* 01BF40 8001C390 00000000 */  nop
/* 01BF44 8001C394 4503FFFD */  bc1tl       .L8001C38C
/* 01BF48 8001C398 46007381 */   sub.s      $f14, $f14, $f0
/* 01BF4C 8001C39C E42EE104 */  swc1        $f14, %lo(D_8008E104)($at)
/* 01BF50 8001C3A0 8FBF001C */  lw          $ra, 0x1c($sp)
.L8001C3A4:
/* 01BF54 8001C3A4 8FB00018 */  lw          $s0, 0x18($sp)
/* 01BF58 8001C3A8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01BF5C 8001C3AC 03E00008 */  jr          $ra
/* 01BF60 8001C3B0 00000000 */   nop

glabel func_8001C3B4 # 16
/* 01BF64 8001C3B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BF68 8001C3B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BF6C 8001C3BC 0C004F4E */  jal         func_80013D38
/* 01BF70 8001C3C0 AFA40018 */   sw         $a0, 0x18($sp)
/* 01BF74 8001C3C4 8FA40018 */  lw          $a0, 0x18($sp)
/* 01BF78 8001C3C8 8C82002C */  lw          $v0, 0x2c($a0)
/* 01BF7C 8001C3CC C484000C */  lwc1        $f4, 0xc($a0)
/* 01BF80 8001C3D0 E444000C */  swc1        $f4, 0xc($v0)
/* 01BF84 8001C3D4 C4860010 */  lwc1        $f6, 0x10($a0)
/* 01BF88 8001C3D8 E4460010 */  swc1        $f6, 0x10($v0)
/* 01BF8C 8001C3DC C4880014 */  lwc1        $f8, 0x14($a0)
/* 01BF90 8001C3E0 E4480014 */  swc1        $f8, 0x14($v0)
/* 01BF94 8001C3E4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BF98 8001C3E8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BF9C 8001C3EC 03E00008 */  jr          $ra
/* 01BFA0 8001C3F0 00000000 */   nop

glabel func_8001C3F4 # 17
/* 01BFA4 8001C3F4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BFA8 8001C3F8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01BFAC 8001C3FC 3C04800C */  lui         $a0, %hi(D_800BB338)
/* 01BFB0 8001C400 2484B338 */  addiu       $a0, $a0, %lo(D_800BB338)
/* 01BFB4 8001C404 0C013C58 */  jal         func_8004F160
/* 01BFB8 8001C408 24050090 */   addiu      $a1, $zero, 0x90
/* 01BFBC 8001C40C 3C04800C */  lui         $a0, %hi(D_800BB310)
/* 01BFC0 8001C410 2484B310 */  addiu       $a0, $a0, %lo(D_800BB310)
/* 01BFC4 8001C414 0C00D4D7 */  jal         func_8003535C
/* 01BFC8 8001C418 24050024 */   addiu      $a1, $zero, 0x24
/* 01BFCC 8001C41C 3C038007 */  lui         $v1, %hi(D_80075400)
/* 01BFD0 8001C420 24635400 */  addiu       $v1, $v1, %lo(D_80075400)
/* 01BFD4 8001C424 00001025 */  move        $v0, $zero
/* 01BFD8 8001C428 24040024 */  addiu       $a0, $zero, 0x24
.L8001C42C:
/* 01BFDC 8001C42C 24420004 */  addiu       $v0, $v0, 0x4
/* 01BFE0 8001C430 1444FFFE */  bne         $v0, $a0, .L8001C42C
/* 01BFE4 8001C434 24630090 */   addiu      $v1, $v1, 0x90
/* 01BFE8 8001C438 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01BFEC 8001C43C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01BFF0 8001C440 03E00008 */  jr          $ra
/* 01BFF4 8001C444 00000000 */   nop

glabel func_8001C448 # 18
/* 01BFF8 8001C448 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01BFFC 8001C44C AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C000 8001C450 3C04800C */  lui         $a0, %hi(D_800BB310)
/* 01C004 8001C454 0C00D4F9 */  jal         func_800353E4
/* 01C008 8001C458 2484B310 */   addiu      $a0, $a0, %lo(D_800BB310)
/* 01C00C 8001C45C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C010 8001C460 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C014 8001C464 03E00008 */  jr          $ra
/* 01C018 8001C468 00000000 */   nop

glabel func_8001C46C # 19
/* 01C01C 8001C46C 00047080 */  sll         $t6, $a0, 2
/* 01C020 8001C470 01C47021 */  addu        $t6, $t6, $a0
/* 01C024 8001C474 000E7080 */  sll         $t6, $t6, 2
/* 01C028 8001C478 01C47021 */  addu        $t6, $t6, $a0
/* 01C02C 8001C47C 000E7080 */  sll         $t6, $t6, 2
/* 01C030 8001C480 3C028009 */  lui         $v0, %hi(D_8008D4D8)
/* 01C034 8001C484 004E1021 */  addu        $v0, $v0, $t6
/* 01C038 8001C488 8C42D4D8 */  lw          $v0, %lo(D_8008D4D8)($v0)
/* 01C03C 8001C48C 3C18800C */  lui         $t8, %hi(D_800BB338)
/* 01C040 8001C490 2718B338 */  addiu       $t8, $t8, %lo(D_800BB338)
/* 01C044 8001C494 00027880 */  sll         $t7, $v0, 2
/* 01C048 8001C498 01F83821 */  addu        $a3, $t7, $t8
/* 01C04C 8001C49C 8CF90000 */  lw          $t9, 0x0($a3)
/* 01C050 8001C4A0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01C054 8001C4A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C058 8001C4A8 17200034 */  bnez        $t9, .L8001C57C
/* 01C05C 8001C4AC 000240C0 */   sll        $t0, $v0, 3
/* 01C060 8001C4B0 01024021 */  addu        $t0, $t0, $v0
/* 01C064 8001C4B4 3C098007 */  lui         $t1, %hi(D_80075400)
/* 01C068 8001C4B8 25295400 */  addiu       $t1, $t1, %lo(D_80075400)
/* 01C06C 8001C4BC 00084080 */  sll         $t0, $t0, 2
/* 01C070 8001C4C0 01091821 */  addu        $v1, $t0, $t1
/* 01C074 8001C4C4 8C6C0004 */  lw          $t4, 0x4($v1)
/* 01C078 8001C4C8 8C6A000C */  lw          $t2, 0xc($v1)
/* 01C07C 8001C4CC 8C6B0008 */  lw          $t3, 0x8($v1)
/* 01C080 8001C4D0 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C084 8001C4D4 1580000F */  bnez        $t4, .L8001C514
/* 01C088 8001C4D8 014B2823 */   subu       $a1, $t2, $t3
/* 01C08C 8001C4DC 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C090 8001C4E0 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01C094 8001C4E4 24060100 */  addiu       $a2, $zero, 0x100
/* 01C098 8001C4E8 AFA3001C */  sw          $v1, 0x1c($sp)
/* 01C09C 8001C4EC AFA50028 */  sw          $a1, 0x28($sp)
/* 01C0A0 8001C4F0 0C00DA76 */  jal         func_800369D8
/* 01C0A4 8001C4F4 AFA70020 */   sw         $a3, 0x20($sp)
/* 01C0A8 8001C4F8 8FA70020 */  lw          $a3, 0x20($sp)
/* 01C0AC 8001C4FC 3C01800C */  lui         $at, %hi(D_800BB3C8)
/* 01C0B0 8001C500 AC20B3C8 */  sw          $zero, %lo(D_800BB3C8)($at)
/* 01C0B4 8001C504 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01C0B8 8001C508 AFA20024 */  sw          $v0, 0x24($sp)
/* 01C0BC 8001C50C 10000015 */  b           .L8001C564
/* 01C0C0 8001C510 ACE20000 */   sw         $v0, 0x0($a3)
.L8001C514:
/* 01C0C4 8001C514 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01C0C8 8001C518 2406010D */  addiu       $a2, $zero, 0x10d
/* 01C0CC 8001C51C AFA3001C */  sw          $v1, 0x1c($sp)
/* 01C0D0 8001C520 AFA50028 */  sw          $a1, 0x28($sp)
/* 01C0D4 8001C524 0C00DAAE */  jal         func_80036AB8
/* 01C0D8 8001C528 AFA70020 */   sw         $a3, 0x20($sp)
/* 01C0DC 8001C52C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01C0E0 8001C530 3C01800C */  lui         $at, %hi(D_800BB3C8)
/* 01C0E4 8001C534 AC22B3C8 */  sw          $v0, %lo(D_800BB3C8)($at)
/* 01C0E8 8001C538 8C6E0010 */  lw          $t6, 0x10($v1)
/* 01C0EC 8001C53C 8C6D0014 */  lw          $t5, 0x14($v1)
/* 01C0F0 8001C540 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C0F4 8001C544 AFA20024 */  sw          $v0, 0x24($sp)
/* 01C0F8 8001C548 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01C0FC 8001C54C 24060113 */  addiu       $a2, $zero, 0x113
/* 01C100 8001C550 0C00DA76 */  jal         func_800369D8
/* 01C104 8001C554 01AE2823 */   subu       $a1, $t5, $t6
/* 01C108 8001C558 8FA70020 */  lw          $a3, 0x20($sp)
/* 01C10C 8001C55C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01C110 8001C560 ACE20000 */  sw          $v0, 0x0($a3)
.L8001C564:
/* 01C114 8001C564 3C04800C */  lui         $a0, %hi(D_800BB310)
/* 01C118 8001C568 2484B310 */  addiu       $a0, $a0, %lo(D_800BB310)
/* 01C11C 8001C56C 8C650008 */  lw          $a1, 0x8($v1)
/* 01C120 8001C570 8FA60024 */  lw          $a2, 0x24($sp)
/* 01C124 8001C574 0C00D561 */  jal         func_80035584
/* 01C128 8001C578 8FA70028 */   lw         $a3, 0x28($sp)
.L8001C57C:
/* 01C12C 8001C57C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C130 8001C580 27BD0030 */  addiu       $sp, $sp, 0x30
/* 01C134 8001C584 03E00008 */  jr          $ra
/* 01C138 8001C588 00000000 */   nop

glabel func_8001C58C # 20
/* 01C13C 8001C58C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01C140 8001C590 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01C144 8001C594 3C04800C */  lui         $a0, %hi(D_800BB310)
/* 01C148 8001C598 0C00D584 */  jal         func_80035610
/* 01C14C 8001C59C 2484B310 */   addiu      $a0, $a0, %lo(D_800BB310)
/* 01C150 8001C5A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01C154 8001C5A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01C158 8001C5A8 03E00008 */  jr          $ra
/* 01C15C 8001C5AC 00000000 */   nop

glabel func_8001C5B0 # 21
/* 01C160 8001C5B0 00047080 */  sll         $t6, $a0, 2
/* 01C164 8001C5B4 01C47021 */  addu        $t6, $t6, $a0
/* 01C168 8001C5B8 000E7080 */  sll         $t6, $t6, 2
/* 01C16C 8001C5BC 01C47021 */  addu        $t6, $t6, $a0
/* 01C170 8001C5C0 000E7080 */  sll         $t6, $t6, 2
/* 01C174 8001C5C4 3C028009 */  lui         $v0, %hi(D_8008D4D8)
/* 01C178 8001C5C8 004E1021 */  addu        $v0, $v0, $t6
/* 01C17C 8001C5CC 8C42D4D8 */  lw          $v0, %lo(D_8008D4D8)($v0)
/* 01C180 8001C5D0 3C03800C */  lui         $v1, %hi(D_800BB338)
/* 01C184 8001C5D4 00027880 */  sll         $t7, $v0, 2
/* 01C188 8001C5D8 006F1821 */  addu        $v1, $v1, $t7
/* 01C18C 8001C5DC 03E00008 */  jr          $ra
/* 01C190 8001C5E0 8C62B338 */   lw         $v0, %lo(D_800BB338)($v1)

glabel func_8001C5E4 # 22
/* 01C194 8001C5E4 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 01C198 8001C5E8 AFB00020 */  sw          $s0, 0x20($sp)
/* 01C19C 8001C5EC 00808025 */  move        $s0, $a0
/* 01C1A0 8001C5F0 AFA50064 */  sw          $a1, 0x64($sp)
/* 01C1A4 8001C5F4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01C1A8 8001C5F8 3C05800B */  lui         $a1, %hi(D_800A9694)
/* 01C1AC 8001C5FC 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C1B0 8001C600 AFB20028 */  sw          $s2, 0x28($sp)
/* 01C1B4 8001C604 AFB10024 */  sw          $s1, 0x24($sp)
/* 01C1B8 8001C608 AFA60068 */  sw          $a2, 0x68($sp)
/* 01C1BC 8001C60C AFA7006C */  sw          $a3, 0x6c($sp)
/* 01C1C0 8001C610 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01C1C4 8001C614 0C00DBDD */  jal         func_80036F74
/* 01C1C8 8001C618 24A59694 */   addiu      $a1, $a1, %lo(D_800A9694)
/* 01C1CC 8001C61C 0C00711B */  jal         func_8001C46C
/* 01C1D0 8001C620 02002025 */   move       $a0, $s0
/* 01C1D4 8001C624 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C1D8 8001C628 3C05800B */  lui         $a1, %hi(D_800A9708)
/* 01C1DC 8001C62C 24A59708 */  addiu       $a1, $a1, %lo(D_800A9708)
/* 01C1E0 8001C630 0C00DBDD */  jal         func_80036F74
/* 01C1E4 8001C634 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01C1E8 8001C638 00107080 */  sll         $t6, $s0, 2
/* 01C1EC 8001C63C 01D07021 */  addu        $t6, $t6, $s0
/* 01C1F0 8001C640 000E7080 */  sll         $t6, $t6, 2
/* 01C1F4 8001C644 01D07021 */  addu        $t6, $t6, $s0
/* 01C1F8 8001C648 3C0F8009 */  lui         $t7, %hi(D_8008D4DC)
/* 01C1FC 8001C64C 25EFD4DC */  addiu       $t7, $t7, %lo(D_8008D4DC)
/* 01C200 8001C650 000E7080 */  sll         $t6, $t6, 2
/* 01C204 8001C654 01CF1021 */  addu        $v0, $t6, $t7
/* 01C208 8001C658 8C44FFC4 */  lw          $a0, -0x3c($v0)
/* 01C20C 8001C65C AFA20034 */  sw          $v0, 0x34($sp)
/* 01C210 8001C660 0C001B6E */  jal         func_80006DB8
/* 01C214 8001C664 00002825 */   move       $a1, $zero
/* 01C218 8001C668 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C21C 8001C66C 3C05800B */  lui         $a1, %hi(D_800A9720)
/* 01C220 8001C670 00408025 */  move        $s0, $v0
/* 01C224 8001C674 8C520054 */  lw          $s2, 0x54($v0)
/* 01C228 8001C678 24A59720 */  addiu       $a1, $a1, %lo(D_800A9720)
/* 01C22C 8001C67C 0C00DBDD */  jal         func_80036F74
/* 01C230 8001C680 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01C234 8001C684 8FB10034 */  lw          $s1, 0x34($sp)
/* 01C238 8001C688 8E38FFF8 */  lw          $t8, -0x8($s1)
/* 01C23C 8001C68C 2631FFAC */  addiu       $s1, $s1, -0x54
/* 01C240 8001C690 AE580190 */  sw          $t8, 0x190($s2)
/* 01C244 8001C694 8FB90080 */  lw          $t9, 0x80($sp)
/* 01C248 8001C698 0C001B0D */  jal         func_80006C34
/* 01C24C 8001C69C AE590238 */   sw         $t9, 0x238($s2)
/* 01C250 8001C6A0 AC500050 */  sw          $s0, 0x50($v0)
/* 01C254 8001C6A4 AFA20050 */  sw          $v0, 0x50($sp)
/* 01C258 8001C6A8 0C001AB9 */  jal         func_80006AE4
/* 01C25C 8001C6AC 02002025 */   move       $a0, $s0
/* 01C260 8001C6B0 8FA30050 */  lw          $v1, 0x50($sp)
/* 01C264 8001C6B4 AC430028 */  sw          $v1, 0x28($v0)
/* 01C268 8001C6B8 AE430000 */  sw          $v1, 0x0($s2)
/* 01C26C 8001C6BC 8E2A003C */  lw          $t2, 0x3c($s1)
/* 01C270 8001C6C0 19400012 */  blez        $t2, .L8001C70C
/* 01C274 8001C6C4 00000000 */   nop
/* 01C278 8001C6C8 0C001AB9 */  jal         func_80006AE4
/* 01C27C 8001C6CC 02002025 */   move       $a0, $s0
/* 01C280 8001C6D0 AFA20048 */  sw          $v0, 0x48($sp)
/* 01C284 8001C6D4 8E24003C */  lw          $a0, 0x3c($s1)
/* 01C288 8001C6D8 C6240024 */  lwc1        $f4, 0x24($s1)
/* 01C28C 8001C6DC 3C01800B */  lui         $at, %hi(D_800A97B4)
/* 01C290 8001C6E0 44843000 */  mtc1        $a0, $f6
/* 01C294 8001C6E4 C43097B4 */  lwc1        $f16, %lo(D_800A97B4)($at)
/* 01C298 8001C6E8 46803220 */  cvt.s.w     $f8, $f6
/* 01C29C 8001C6EC 46082283 */  div.s       $f10, $f4, $f8
/* 01C2A0 8001C6F0 46105482 */  mul.s       $f18, $f10, $f16
/* 01C2A4 8001C6F4 44059000 */  mfc1        $a1, $f18
/* 01C2A8 8001C6F8 0C00D051 */  jal         func_80034144
/* 01C2AC 8001C6FC 00000000 */   nop
/* 01C2B0 8001C700 AC500050 */  sw          $s0, 0x50($v0)
/* 01C2B4 8001C704 8FAB0048 */  lw          $t3, 0x48($sp)
/* 01C2B8 8001C708 AD620028 */  sw          $v0, 0x28($t3)
.L8001C70C:
/* 01C2BC 8001C70C 0C001B4C */  jal         func_80006D30
/* 01C2C0 8001C710 02002025 */   move       $a0, $s0
/* 01C2C4 8001C714 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C2C8 8001C718 3C05800B */  lui         $a1, %hi(D_800A9730)
/* 01C2CC 8001C71C 24A59730 */  addiu       $a1, $a1, %lo(D_800A9730)
/* 01C2D0 8001C720 0C00DBDD */  jal         func_80036F74
/* 01C2D4 8001C724 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01C2D8 8001C728 02002025 */  move        $a0, $s0
/* 01C2DC 8001C72C 0C00545D */  jal         func_80015174
/* 01C2E0 8001C730 02002825 */   move       $a1, $s0
/* 01C2E4 8001C734 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C2E8 8001C738 3C05800B */  lui         $a1, %hi(D_800A9744)
/* 01C2EC 8001C73C 24A59744 */  addiu       $a1, $a1, %lo(D_800A9744)
/* 01C2F0 8001C740 0C00DBDD */  jal         func_80036F74
/* 01C2F4 8001C744 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01C2F8 8001C748 C7A60064 */  lwc1        $f6, 0x64($sp)
/* 01C2FC 8001C74C C7A00078 */  lwc1        $f0, 0x78($sp)
/* 01C300 8001C750 02002025 */  move        $a0, $s0
/* 01C304 8001C754 E6060018 */  swc1        $f6, 0x18($s0)
/* 01C308 8001C758 C7A40068 */  lwc1        $f4, 0x68($sp)
/* 01C30C 8001C75C 00003025 */  move        $a2, $zero
/* 01C310 8001C760 E604001C */  swc1        $f4, 0x1c($s0)
/* 01C314 8001C764 C7A8006C */  lwc1        $f8, 0x6c($sp)
/* 01C318 8001C768 E6000008 */  swc1        $f0, 0x8($s0)
/* 01C31C 8001C76C E6000004 */  swc1        $f0, 0x4($s0)
/* 01C320 8001C770 E6000000 */  swc1        $f0, 0x0($s0)
/* 01C324 8001C774 E6080020 */  swc1        $f8, 0x20($s0)
/* 01C328 8001C778 0C0051BB */  jal         func_800146EC
/* 01C32C 8001C77C 8FA50070 */   lw         $a1, 0x70($sp)
/* 01C330 8001C780 02002025 */  move        $a0, $s0
/* 01C334 8001C784 8FA50074 */  lw          $a1, 0x74($sp)
/* 01C338 8001C788 0C0051BB */  jal         func_800146EC
/* 01C33C 8001C78C 24060001 */   addiu      $a2, $zero, 0x1
/* 01C340 8001C790 C62A0024 */  lwc1        $f10, 0x24($s1)
/* 01C344 8001C794 3C0C8009 */  lui         $t4, %hi(D_8008E0AC)
/* 01C348 8001C798 C7A00078 */  lwc1        $f0, 0x78($sp)
/* 01C34C 8001C79C 258CE0AC */  addiu       $t4, $t4, %lo(D_8008E0AC)
/* 01C350 8001C7A0 162C0012 */  bne         $s1, $t4, .L8001C7EC
/* 01C354 8001C7A4 E60A0024 */   swc1       $f10, 0x24($s0)
/* 01C358 8001C7A8 02002025 */  move        $a0, $s0
/* 01C35C 8001C7AC 0C0052D5 */  jal         func_80014B54
/* 01C360 8001C7B0 2405002F */   addiu      $a1, $zero, 0x2f
/* 01C364 8001C7B4 10400005 */  beqz        $v0, .L8001C7CC
/* 01C368 8001C7B8 02002025 */   move       $a0, $s0
/* 01C36C 8001C7BC 3C0142A0 */  lui         $at, 0x42a0
/* 01C370 8001C7C0 44818000 */  mtc1        $at, $f16
/* 01C374 8001C7C4 00000000 */  nop
/* 01C378 8001C7C8 E4500024 */  swc1        $f16, 0x24($v0)
.L8001C7CC:
/* 01C37C 8001C7CC 0C0052D5 */  jal         func_80014B54
/* 01C380 8001C7D0 2405002D */   addiu      $a1, $zero, 0x2d
/* 01C384 8001C7D4 10400005 */  beqz        $v0, .L8001C7EC
/* 01C388 8001C7D8 C7A00078 */   lwc1       $f0, 0x78($sp)
/* 01C38C 8001C7DC 3C0142A0 */  lui         $at, 0x42a0
/* 01C390 8001C7E0 44819000 */  mtc1        $at, $f18
/* 01C394 8001C7E4 00000000 */  nop
/* 01C398 8001C7E8 E4520024 */  swc1        $f18, 0x24($v0)
.L8001C7EC:
/* 01C39C 8001C7EC C6260028 */  lwc1        $f6, 0x28($s1)
/* 01C3A0 8001C7F0 02002025 */  move        $a0, $s0
/* 01C3A4 8001C7F4 3C053F80 */  lui         $a1, 0x3f80
/* 01C3A8 8001C7F8 46003102 */  mul.s       $f4, $f6, $f0
/* 01C3AC 8001C7FC E64401FC */  swc1        $f4, 0x1fc($s2)
/* 01C3B0 8001C800 C628002C */  lwc1        $f8, 0x2c($s1)
/* 01C3B4 8001C804 46004282 */  mul.s       $f10, $f8, $f0
/* 01C3B8 8001C808 E64A0200 */  swc1        $f10, 0x200($s2)
/* 01C3BC 8001C80C C6300030 */  lwc1        $f16, 0x30($s1)
/* 01C3C0 8001C810 46008482 */  mul.s       $f18, $f16, $f0
/* 01C3C4 8001C814 E6520204 */  swc1        $f18, 0x204($s2)
/* 01C3C8 8001C818 C6260034 */  lwc1        $f6, 0x34($s1)
/* 01C3CC 8001C81C 46003102 */  mul.s       $f4, $f6, $f0
/* 01C3D0 8001C820 E6440208 */  swc1        $f4, 0x208($s2)
/* 01C3D4 8001C824 C6280038 */  lwc1        $f8, 0x38($s1)
/* 01C3D8 8001C828 46004282 */  mul.s       $f10, $f8, $f0
/* 01C3DC 8001C82C 0C001BC6 */  jal         func_80006F18
/* 01C3E0 8001C830 E64A020C */   swc1       $f10, 0x20c($s2)
/* 01C3E4 8001C834 0C001E69 */  jal         func_800079A4
/* 01C3E8 8001C838 02002025 */   move       $a0, $s0
/* 01C3EC 8001C83C 8E250020 */  lw          $a1, 0x20($s1)
/* 01C3F0 8001C840 10A00003 */  beqz        $a1, .L8001C850
/* 01C3F4 8001C844 00000000 */   nop
/* 01C3F8 8001C848 0C0053F7 */  jal         func_80014FDC
/* 01C3FC 8001C84C 02002025 */   move       $a0, $s0
.L8001C850:
/* 01C400 8001C850 0C001C1B */  jal         func_8000706C
/* 01C404 8001C854 02002025 */   move       $a0, $s0
/* 01C408 8001C858 24040064 */  addiu       $a0, $zero, 0x64
/* 01C40C 8001C85C 0C0019F2 */  jal         func_800067C8
/* 01C410 8001C860 24050004 */   addiu      $a1, $zero, 0x4
/* 01C414 8001C864 02002025 */  move        $a0, $s0
/* 01C418 8001C868 8E450204 */  lw          $a1, 0x204($s2)
/* 01C41C 8001C86C 8E4601FC */  lw          $a2, 0x1fc($s2)
/* 01C420 8001C870 0C0093D7 */  jal         func_80024F5C
/* 01C424 8001C874 8E470200 */   lw         $a3, 0x200($s2)
/* 01C428 8001C878 8FA4007C */  lw          $a0, 0x7c($sp)
/* 01C42C 8001C87C 8C4D0038 */  lw          $t5, 0x38($v0)
/* 01C430 8001C880 10800005 */  beqz        $a0, .L8001C898
/* 01C434 8001C884 AE4D0234 */   sw         $t5, 0x234($s2)
/* 01C438 8001C888 0C0461D8 */  jal         func_80118760
/* 01C43C 8001C88C 00000000 */   nop
/* 01C440 8001C890 AE4201B8 */  sw          $v0, 0x1b8($s2)
/* 01C444 8001C894 AC400000 */  sw          $zero, 0x0($v0)
.L8001C898:
/* 01C448 8001C898 0C007163 */  jal         func_8001C58C
/* 01C44C 8001C89C 00000000 */   nop
/* 01C450 8001C8A0 3C12800C */  lui         $s2, %hi(D_800BB3C8)
/* 01C454 8001C8A4 2652B3C8 */  addiu       $s2, $s2, %lo(D_800BB3C8)
/* 01C458 8001C8A8 8E450000 */  lw          $a1, 0x0($s2)
/* 01C45C 8001C8AC 10A0002A */  beqz        $a1, .L8001C958
/* 01C460 8001C8B0 00000000 */   nop
/* 01C464 8001C8B4 8E280050 */  lw          $t0, 0x50($s1)
/* 01C468 8001C8B8 3C0F8007 */  lui         $t7, %hi(D_80075400)
/* 01C46C 8001C8BC 25EF5400 */  addiu       $t7, $t7, %lo(D_80075400)
/* 01C470 8001C8C0 000870C0 */  sll         $t6, $t0, 3
/* 01C474 8001C8C4 01C87021 */  addu        $t6, $t6, $t0
/* 01C478 8001C8C8 000E7080 */  sll         $t6, $t6, 2
/* 01C47C 8001C8CC 01CF4821 */  addu        $t1, $t6, $t7
/* 01C480 8001C8D0 8D380004 */  lw          $t8, 0x4($t1)
/* 01C484 8001C8D4 24010001 */  addiu       $at, $zero, 0x1
/* 01C488 8001C8D8 3C04800C */  lui         $a0, %hi(D_800BB338)
/* 01C48C 8001C8DC 1701001E */  bne         $t8, $at, .L8001C958
/* 01C490 8001C8E0 0008C880 */   sll        $t9, $t0, 2
/* 01C494 8001C8E4 8D230010 */  lw          $v1, 0x10($t1)
/* 01C498 8001C8E8 8D2C001C */  lw          $t4, 0x1c($t1)
/* 01C49C 8001C8EC 8D2E0020 */  lw          $t6, 0x20($t1)
/* 01C4A0 8001C8F0 8D2A0018 */  lw          $t2, 0x18($t1)
/* 01C4A4 8001C8F4 8D2B0014 */  lw          $t3, 0x14($t1)
/* 01C4A8 8001C8F8 00992021 */  addu        $a0, $a0, $t9
/* 01C4AC 8001C8FC 01836823 */  subu        $t5, $t4, $v1
/* 01C4B0 8001C900 01C37823 */  subu        $t7, $t6, $v1
/* 01C4B4 8001C904 AFAF0014 */  sw          $t7, 0x14($sp)
/* 01C4B8 8001C908 AFAD0010 */  sw          $t5, 0x10($sp)
/* 01C4BC 8001C90C 8C84B338 */  lw          $a0, %lo(D_800BB338)($a0)
/* 01C4C0 8001C910 01433023 */  subu        $a2, $t2, $v1
/* 01C4C4 8001C914 0C00AA98 */  jal         func_8002AA60
/* 01C4C8 8001C918 01633823 */   subu       $a3, $t3, $v1
/* 01C4CC 8001C91C 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C4D0 8001C920 3C05800B */  lui         $a1, %hi(D_800A977C)
/* 01C4D4 8001C924 24A5977C */  addiu       $a1, $a1, %lo(D_800A977C)
/* 01C4D8 8001C928 0C00DBDD */  jal         func_80036F74
/* 01C4DC 8001C92C 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01C4E0 8001C930 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C4E4 8001C934 2484D0E0 */  addiu       $a0, $a0, %lo(D_800FD0E0)
/* 01C4E8 8001C938 0C00DB8B */  jal         func_80036E2C
/* 01C4EC 8001C93C 8E450000 */   lw         $a1, 0x0($s2)
/* 01C4F0 8001C940 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C4F4 8001C944 3C05800B */  lui         $a1, %hi(D_800A978C)
/* 01C4F8 8001C948 AE400000 */  sw          $zero, 0x0($s2)
/* 01C4FC 8001C94C 24A5978C */  addiu       $a1, $a1, %lo(D_800A978C)
/* 01C500 8001C950 0C00DBDD */  jal         func_80036F74
/* 01C504 8001C954 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
.L8001C958:
/* 01C508 8001C958 3C048010 */  lui         $a0, %hi(D_800FD0E0)
/* 01C50C 8001C95C 3C05800B */  lui         $a1, %hi(D_800A979C)
/* 01C510 8001C960 24A5979C */  addiu       $a1, $a1, %lo(D_800A979C)
/* 01C514 8001C964 0C00DBDD */  jal         func_80036F74
/* 01C518 8001C968 2484D0E0 */   addiu      $a0, $a0, %lo(D_800FD0E0)
/* 01C51C 8001C96C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01C520 8001C970 02001025 */  move        $v0, $s0
/* 01C524 8001C974 8FB00020 */  lw          $s0, 0x20($sp)
/* 01C528 8001C978 8FB10024 */  lw          $s1, 0x24($sp)
/* 01C52C 8001C97C 8FB20028 */  lw          $s2, 0x28($sp)
/* 01C530 8001C980 03E00008 */  jr          $ra
/* 01C534 8001C984 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8001C988 # 23
/* 01C538 8001C988 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01C53C 8001C98C AFB00030 */  sw          $s0, 0x30($sp)
/* 01C540 8001C990 00808025 */  move        $s0, $a0
/* 01C544 8001C994 AFBF0034 */  sw          $ra, 0x34($sp)
/* 01C548 8001C998 AFA50044 */  sw          $a1, 0x44($sp)
/* 01C54C 8001C99C C604000C */  lwc1        $f4, 0xc($s0)
/* 01C550 8001C9A0 00A02025 */  move        $a0, $a1
/* 01C554 8001C9A4 8E050044 */  lw          $a1, 0x44($s0)
/* 01C558 8001C9A8 8E07004C */  lw          $a3, 0x4c($s0)
/* 01C55C 8001C9AC 8E060048 */  lw          $a2, 0x48($s0)
/* 01C560 8001C9B0 E7A40010 */  swc1        $f4, 0x10($sp)
/* 01C564 8001C9B4 C6060010 */  lwc1        $f6, 0x10($s0)
/* 01C568 8001C9B8 E7A60014 */  swc1        $f6, 0x14($sp)
/* 01C56C 8001C9BC C6080000 */  lwc1        $f8, 0x0($s0)
/* 01C570 8001C9C0 AFA0001C */  sw          $zero, 0x1c($sp)
/* 01C574 8001C9C4 E7A80018 */  swc1        $f8, 0x18($sp)
/* 01C578 8001C9C8 8E0E0054 */  lw          $t6, 0x54($s0)
/* 01C57C 8001C9CC 8DCF0238 */  lw          $t7, 0x238($t6)
/* 01C580 8001C9D0 0C007179 */  jal         func_8001C5E4
/* 01C584 8001C9D4 AFAF0020 */   sw         $t7, 0x20($sp)
/* 01C588 8001C9D8 AFA2003C */  sw          $v0, 0x3c($sp)
/* 01C58C 8001C9DC 8E180054 */  lw          $t8, 0x54($s0)
/* 01C590 8001C9E0 8C480054 */  lw          $t0, 0x54($v0)
/* 01C594 8001C9E4 02002025 */  move        $a0, $s0
/* 01C598 8001C9E8 8F1901B8 */  lw          $t9, 0x1b8($t8)
/* 01C59C 8001C9EC AD1901B8 */  sw          $t9, 0x1b8($t0)
/* 01C5A0 8001C9F0 8E090054 */  lw          $t1, 0x54($s0)
/* 01C5A4 8001C9F4 0C001C6D */  jal         func_800071B4
/* 01C5A8 8001C9F8 AD2001B8 */   sw         $zero, 0x1b8($t1)
/* 01C5AC 8001C9FC 8FBF0034 */  lw          $ra, 0x34($sp)
/* 01C5B0 8001CA00 8FA2003C */  lw          $v0, 0x3c($sp)
/* 01C5B4 8001CA04 8FB00030 */  lw          $s0, 0x30($sp)
/* 01C5B8 8001CA08 03E00008 */  jr          $ra
/* 01C5BC 8001CA0C 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8001CA10 # 24
/* 01C5C0 8001CA10 00047080 */  sll         $t6, $a0, 2
/* 01C5C4 8001CA14 01C47021 */  addu        $t6, $t6, $a0
/* 01C5C8 8001CA18 000E7080 */  sll         $t6, $t6, 2
/* 01C5CC 8001CA1C 01C47021 */  addu        $t6, $t6, $a0
/* 01C5D0 8001CA20 000E7080 */  sll         $t6, $t6, 2
/* 01C5D4 8001CA24 3C028009 */  lui         $v0, %hi(D_8008D4A4)
/* 01C5D8 8001CA28 004E1021 */  addu        $v0, $v0, $t6
/* 01C5DC 8001CA2C 03E00008 */  jr          $ra
/* 01C5E0 8001CA30 8C42D4A4 */   lw         $v0, %lo(D_8008D4A4)($v0)

glabel func_8001CA34 # 25
/* 01C5E4 8001CA34 00047080 */  sll         $t6, $a0, 2
/* 01C5E8 8001CA38 01C47021 */  addu        $t6, $t6, $a0
/* 01C5EC 8001CA3C 000E7080 */  sll         $t6, $t6, 2
/* 01C5F0 8001CA40 01C47021 */  addu        $t6, $t6, $a0
/* 01C5F4 8001CA44 000E7080 */  sll         $t6, $t6, 2
/* 01C5F8 8001CA48 3C028009 */  lui         $v0, %hi(D_8008D4CC)
/* 01C5FC 8001CA4C 004E1021 */  addu        $v0, $v0, $t6
/* 01C600 8001CA50 03E00008 */  jr          $ra
/* 01C604 8001CA54 8C42D4CC */   lw         $v0, %lo(D_8008D4CC)($v0)

glabel func_8001CA58 # 26
/* 01C608 8001CA58 00047080 */  sll         $t6, $a0, 2
/* 01C60C 8001CA5C 01C47021 */  addu        $t6, $t6, $a0
/* 01C610 8001CA60 000E7080 */  sll         $t6, $t6, 2
/* 01C614 8001CA64 01C47021 */  addu        $t6, $t6, $a0
/* 01C618 8001CA68 000E7080 */  sll         $t6, $t6, 2
/* 01C61C 8001CA6C 3C028009 */  lui         $v0, %hi(D_8008D4D0)
/* 01C620 8001CA70 004E1021 */  addu        $v0, $v0, $t6
/* 01C624 8001CA74 03E00008 */  jr          $ra
/* 01C628 8001CA78 8C42D4D0 */   lw         $v0, %lo(D_8008D4D0)($v0)

glabel func_8001CA7C # 27
/* 01C62C 8001CA7C 00047080 */  sll         $t6, $a0, 2
/* 01C630 8001CA80 01C47021 */  addu        $t6, $t6, $a0
/* 01C634 8001CA84 000E7080 */  sll         $t6, $t6, 2
/* 01C638 8001CA88 01C47021 */  addu        $t6, $t6, $a0
/* 01C63C 8001CA8C 000E7080 */  sll         $t6, $t6, 2
/* 01C640 8001CA90 3C028009 */  lui         $v0, %hi(D_8008D4C8)
/* 01C644 8001CA94 004E1021 */  addu        $v0, $v0, $t6
/* 01C648 8001CA98 03E00008 */  jr          $ra
/* 01C64C 8001CA9C 8C42D4C8 */   lw         $v0, %lo(D_8008D4C8)($v0)

glabel func_8001CAA0 # 28
/* 01C650 8001CAA0 14A0000A */  bnez        $a1, .L8001CACC
/* 01C654 8001CAA4 00047080 */   sll        $t6, $a0, 2
/* 01C658 8001CAA8 01C47021 */  addu        $t6, $t6, $a0
/* 01C65C 8001CAAC 000E7080 */  sll         $t6, $t6, 2
/* 01C660 8001CAB0 01C47021 */  addu        $t6, $t6, $a0
/* 01C664 8001CAB4 000E7080 */  sll         $t6, $t6, 2
/* 01C668 8001CAB8 3C038009 */  lui         $v1, %hi(D_8008D488)
/* 01C66C 8001CABC 006E1821 */  addu        $v1, $v1, $t6
/* 01C670 8001CAC0 8C63D488 */  lw          $v1, %lo(D_8008D488)($v1)
/* 01C674 8001CAC4 1460000A */  bnez        $v1, .L8001CAF0
/* 01C678 8001CAC8 00601025 */   move       $v0, $v1
.L8001CACC:
/* 01C67C 8001CACC 00047880 */  sll         $t7, $a0, 2
/* 01C680 8001CAD0 01E47821 */  addu        $t7, $t7, $a0
/* 01C684 8001CAD4 000F7880 */  sll         $t7, $t7, 2
/* 01C688 8001CAD8 01E47821 */  addu        $t7, $t7, $a0
/* 01C68C 8001CADC 000F7880 */  sll         $t7, $t7, 2
/* 01C690 8001CAE0 3C028009 */  lui         $v0, %hi(D_8008D490)
/* 01C694 8001CAE4 004F1021 */  addu        $v0, $v0, $t7
/* 01C698 8001CAE8 03E00008 */  jr          $ra
/* 01C69C 8001CAEC 8C42D490 */   lw         $v0, %lo(D_8008D490)($v0)
.L8001CAF0:
/* 01C6A0 8001CAF0 03E00008 */  jr          $ra
/* 01C6A4 8001CAF4 00000000 */   nop

glabel func_8001CAF8 # 29
/* 01C6A8 8001CAF8 14A0000A */  bnez        $a1, .L8001CB24
/* 01C6AC 8001CAFC 00047080 */   sll        $t6, $a0, 2
/* 01C6B0 8001CB00 01C47021 */  addu        $t6, $t6, $a0
/* 01C6B4 8001CB04 000E7080 */  sll         $t6, $t6, 2
/* 01C6B8 8001CB08 01C47021 */  addu        $t6, $t6, $a0
/* 01C6BC 8001CB0C 000E7080 */  sll         $t6, $t6, 2
/* 01C6C0 8001CB10 3C038009 */  lui         $v1, %hi(D_8008D48C)
/* 01C6C4 8001CB14 006E1821 */  addu        $v1, $v1, $t6
/* 01C6C8 8001CB18 8C63D48C */  lw          $v1, %lo(D_8008D48C)($v1)
/* 01C6CC 8001CB1C 1460000A */  bnez        $v1, .L8001CB48
/* 01C6D0 8001CB20 00601025 */   move       $v0, $v1
.L8001CB24:
/* 01C6D4 8001CB24 00047880 */  sll         $t7, $a0, 2
/* 01C6D8 8001CB28 01E47821 */  addu        $t7, $t7, $a0
/* 01C6DC 8001CB2C 000F7880 */  sll         $t7, $t7, 2
/* 01C6E0 8001CB30 01E47821 */  addu        $t7, $t7, $a0
/* 01C6E4 8001CB34 000F7880 */  sll         $t7, $t7, 2
/* 01C6E8 8001CB38 3C028009 */  lui         $v0, %hi(D_8008D494)
/* 01C6EC 8001CB3C 004F1021 */  addu        $v0, $v0, $t7
/* 01C6F0 8001CB40 03E00008 */  jr          $ra
/* 01C6F4 8001CB44 8C42D494 */   lw         $v0, %lo(D_8008D494)($v0)
.L8001CB48:
/* 01C6F8 8001CB48 03E00008 */  jr          $ra
/* 01C6FC 8001CB4C 00000000 */   nop

glabel func_8001CB50 # 30
/* 01C700 8001CB50 00047080 */  sll         $t6, $a0, 2
/* 01C704 8001CB54 01C47021 */  addu        $t6, $t6, $a0
/* 01C708 8001CB58 44802000 */  mtc1        $zero, $f4
/* 01C70C 8001CB5C 000E7080 */  sll         $t6, $t6, 2
/* 01C710 8001CB60 01C47021 */  addu        $t6, $t6, $a0
/* 01C714 8001CB64 3C0F8009 */  lui         $t7, %hi(D_8008D4DC)
/* 01C718 8001CB68 25EFD4DC */  addiu       $t7, $t7, %lo(D_8008D4DC)
/* 01C71C 8001CB6C 000E7080 */  sll         $t6, $t6, 2
/* 01C720 8001CB70 01CF1021 */  addu        $v0, $t6, $t7
/* 01C724 8001CB74 E4A40000 */  swc1        $f4, 0x0($a1)
/* 01C728 8001CB78 C446FFC0 */  lwc1        $f6, -0x40($v0)
/* 01C72C 8001CB7C E4A60004 */  swc1        $f6, 0x4($a1)
/* 01C730 8001CB80 C448FFBC */  lwc1        $f8, -0x44($v0)
/* 01C734 8001CB84 03E00008 */  jr          $ra
/* 01C738 8001CB88 E4A80008 */   swc1       $f8, 0x8($a1)

glabel func_8001CB8C # 31
/* 01C73C 8001CB8C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01C740 8001CB90 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01C744 8001CB94 E7AC0038 */  swc1        $f12, 0x38($sp)
/* 01C748 8001CB98 E7AE003C */  swc1        $f14, 0x3c($sp)
/* 01C74C 8001CB9C AFA60040 */  sw          $a2, 0x40($sp)
/* 01C750 8001CBA0 AFA70044 */  sw          $a3, 0x44($sp)
/* 01C754 8001CBA4 0C00C14B */  jal         func_8003052C
/* 01C758 8001CBA8 24040018 */   addiu      $a0, $zero, 0x18
/* 01C75C 8001CBAC AFA20030 */  sw          $v0, 0x30($sp)
/* 01C760 8001CBB0 0C00C141 */  jal         func_80030504
/* 01C764 8001CBB4 24040018 */   addiu      $a0, $zero, 0x18
/* 01C768 8001CBB8 8FAE0030 */  lw          $t6, 0x30($sp)
/* 01C76C 8001CBBC 44828000 */  mtc1        $v0, $f16
/* 01C770 8001CBC0 C7A40044 */  lwc1        $f4, 0x44($sp)
/* 01C774 8001CBC4 448E4000 */  mtc1        $t6, $f8
/* 01C778 8001CBC8 468084A0 */  cvt.s.w     $f18, $f16
/* 01C77C 8001CBCC E7A40010 */  swc1        $f4, 0x10($sp)
/* 01C780 8001CBD0 C7A60048 */  lwc1        $f6, 0x48($sp)
/* 01C784 8001CBD4 3C013F80 */  lui         $at, 0x3f80
/* 01C788 8001CBD8 3C0F8013 */  lui         $t7, %hi(D_80137EE4)
/* 01C78C 8001CBDC 468042A0 */  cvt.s.w     $f10, $f8
/* 01C790 8001CBE0 E7A60014 */  swc1        $f6, 0x14($sp)
/* 01C794 8001CBE4 44813000 */  mtc1        $at, $f6
/* 01C798 8001CBE8 3C013F00 */  lui         $at, 0x3f00
/* 01C79C 8001CBEC 44818000 */  mtc1        $at, $f16
/* 01C7A0 8001CBF0 8DEF7EE4 */  lw          $t7, %lo(D_80137EE4)($t7)
/* 01C7A4 8001CBF4 46125103 */  div.s       $f4, $f10, $f18
/* 01C7A8 8001CBF8 8FB8004C */  lw          $t8, 0x4c($sp)
/* 01C7AC 8001CBFC C5F2000C */  lwc1        $f18, 0xc($t7)
/* 01C7B0 8001CC00 8FB90050 */  lw          $t9, 0x50($sp)
/* 01C7B4 8001CC04 24040016 */  addiu       $a0, $zero, 0x16
/* 01C7B8 8001CC08 8FA50038 */  lw          $a1, 0x38($sp)
/* 01C7BC 8001CC0C 8FA6003C */  lw          $a2, 0x3c($sp)
/* 01C7C0 8001CC10 8FA70040 */  lw          $a3, 0x40($sp)
/* 01C7C4 8001CC14 AFB8001C */  sw          $t8, 0x1c($sp)
/* 01C7C8 8001CC18 AFB90020 */  sw          $t9, 0x20($sp)
/* 01C7CC 8001CC1C 46062200 */  add.s       $f8, $f4, $f6
/* 01C7D0 8001CC20 46104282 */  mul.s       $f10, $f8, $f16
/* 01C7D4 8001CC24 00000000 */  nop
/* 01C7D8 8001CC28 460A9102 */  mul.s       $f4, $f18, $f10
/* 01C7DC 8001CC2C 0C007179 */  jal         func_8001C5E4
/* 01C7E0 8001CC30 E7A40018 */   swc1       $f4, 0x18($sp)
/* 01C7E4 8001CC34 8FBF002C */  lw          $ra, 0x2c($sp)
/* 01C7E8 8001CC38 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01C7EC 8001CC3C 03E00008 */  jr          $ra
/* 01C7F0 8001CC40 00000000 */   nop
/* 01C7F4 8001CC44 00000000 */  nop
/* 01C7F8 8001CC48 00000000 */  nop
/* 01C7FC 8001CC4C 00000000 */  nop
