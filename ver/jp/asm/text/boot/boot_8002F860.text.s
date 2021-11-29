.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8002F860 # 0
/* 02F410 8002F860 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F414 8002F864 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F418 8002F868 AFA60030 */  sw          $a2, 0x30($sp)
/* 02F41C 8002F86C AFA70034 */  sw          $a3, 0x34($sp)
/* 02F420 8002F870 0C002DB7 */  jal         func_8000B6DC
/* 02F424 8002F874 27A6001C */   addiu      $a2, $sp, 0x1c
/* 02F428 8002F878 8FAF0034 */  lw          $t7, 0x34($sp)
/* 02F42C 8002F87C 8FAE0030 */  lw          $t6, 0x30($sp)
/* 02F430 8002F880 27A4001C */  addiu       $a0, $sp, 0x1c
/* 02F434 8002F884 000FC100 */  sll         $t8, $t7, 4
/* 02F438 8002F888 01D82821 */  addu        $a1, $t6, $t8
/* 02F43C 8002F88C 0C00E371 */  jal         func_80038DC4
/* 02F440 8002F890 24A50010 */   addiu      $a1, $a1, 0x10
/* 02F444 8002F894 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F448 8002F898 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02F44C 8002F89C 03E00008 */  jr          $ra
/* 02F450 8002F8A0 00000000 */   nop

glabel func_8002F8A4 # 1
/* 02F454 8002F8A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F458 8002F8A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F45C 8002F8AC 94820072 */  lhu         $v0, 0x72($a0)
/* 02F460 8002F8B0 44856000 */  mtc1        $a1, $f12
/* 02F464 8002F8B4 44867000 */  mtc1        $a2, $f14
/* 02F468 8002F8B8 384E0001 */  xori        $t6, $v0, 0x1
/* 02F46C 8002F8BC 000E7880 */  sll         $t7, $t6, 2
/* 02F470 8002F8C0 01EE7821 */  addu        $t7, $t7, $t6
/* 02F474 8002F8C4 000F78C0 */  sll         $t7, $t7, 3
/* 02F478 8002F8C8 0C00BE18 */  jal         func_8002F860
/* 02F47C 8002F8CC 008F3021 */   addu       $a2, $a0, $t7
/* 02F480 8002F8D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F484 8002F8D4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F488 8002F8D8 03E00008 */  jr          $ra
/* 02F48C 8002F8DC 00000000 */   nop

glabel func_8002F8E0 # 2
/* 02F490 8002F8E0 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 02F494 8002F8E4 00057080 */  sll         $t6, $a1, 2
/* 02F498 8002F8E8 AFB20030 */  sw          $s2, 0x30($sp)
/* 02F49C 8002F8EC F7B60020 */  sdc1        $f22, 0x20($sp)
/* 02F4A0 8002F8F0 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 02F4A4 8002F8F4 01C57021 */  addu        $t6, $t6, $a1
/* 02F4A8 8002F8F8 3C0143B4 */  lui         $at, 0x43b4
/* 02F4AC 8002F8FC AFB40038 */  sw          $s4, 0x38($sp)
/* 02F4B0 8002F900 AFB30034 */  sw          $s3, 0x34($sp)
/* 02F4B4 8002F904 AFB1002C */  sw          $s1, 0x2c($sp)
/* 02F4B8 8002F908 AFB00028 */  sw          $s0, 0x28($sp)
/* 02F4BC 8002F90C 000E70C0 */  sll         $t6, $t6, 3
/* 02F4C0 8002F910 3C12800B */  lui         $s2, %hi(D_800B2C64)
/* 02F4C4 8002F914 4481A000 */  mtc1        $at, $f20
/* 02F4C8 8002F918 4480B000 */  mtc1        $zero, $f22
/* 02F4CC 8002F91C AFBF003C */  sw          $ra, 0x3c($sp)
/* 02F4D0 8002F920 26522C64 */  addiu       $s2, $s2, %lo(D_800B2C64)
/* 02F4D4 8002F924 008E9821 */  addu        $s3, $a0, $t6
/* 02F4D8 8002F928 24900050 */  addiu       $s0, $a0, 0x50
/* 02F4DC 8002F92C 00008825 */  move        $s1, $zero
/* 02F4E0 8002F930 24140002 */  addiu       $s4, $zero, 0x2
.L8002F934:
/* 02F4E4 8002F934 C6040008 */  lwc1        $f4, 0x8($s0)
/* 02F4E8 8002F938 C6460000 */  lwc1        $f6, 0x0($s2)
/* 02F4EC 8002F93C C60A0000 */  lwc1        $f10, 0x0($s0)
/* 02F4F0 8002F940 C612000C */  lwc1        $f18, 0xc($s0)
/* 02F4F4 8002F944 46062202 */  mul.s       $f8, $f4, $f6
/* 02F4F8 8002F948 02603025 */  move        $a2, $s3
/* 02F4FC 8002F94C 02203825 */  move        $a3, $s1
/* 02F500 8002F950 46085400 */  add.s       $f16, $f10, $f8
/* 02F504 8002F954 C60A0004 */  lwc1        $f10, 0x4($s0)
/* 02F508 8002F958 E6100000 */  swc1        $f16, 0x0($s0)
/* 02F50C 8002F95C C6440000 */  lwc1        $f4, 0x0($s2)
/* 02F510 8002F960 C6000000 */  lwc1        $f0, 0x0($s0)
/* 02F514 8002F964 46049182 */  mul.s       $f6, $f18, $f4
/* 02F518 8002F968 4616003C */  c.lt.s      $f0, $f22
/* 02F51C 8002F96C 46065200 */  add.s       $f8, $f10, $f6
/* 02F520 8002F970 45000008 */  bc1f        .L8002F994
/* 02F524 8002F974 E6080004 */   swc1       $f8, 0x4($s0)
/* 02F528 8002F978 46140400 */  add.s       $f16, $f0, $f20
.L8002F97C:
/* 02F52C 8002F97C E6100000 */  swc1        $f16, 0x0($s0)
/* 02F530 8002F980 C6000000 */  lwc1        $f0, 0x0($s0)
/* 02F534 8002F984 4616003C */  c.lt.s      $f0, $f22
/* 02F538 8002F988 00000000 */  nop
/* 02F53C 8002F98C 4503FFFB */  bc1tl       .L8002F97C
/* 02F540 8002F990 46140400 */   add.s      $f16, $f0, $f20
.L8002F994:
/* 02F544 8002F994 4600A03E */  c.le.s      $f20, $f0
/* 02F548 8002F998 00000000 */  nop
/* 02F54C 8002F99C 45020009 */  bc1fl       .L8002F9C4
/* 02F550 8002F9A0 C60E0004 */   lwc1       $f14, 0x4($s0)
/* 02F554 8002F9A4 46140481 */  sub.s       $f18, $f0, $f20
.L8002F9A8:
/* 02F558 8002F9A8 E6120000 */  swc1        $f18, 0x0($s0)
/* 02F55C 8002F9AC C6000000 */  lwc1        $f0, 0x0($s0)
/* 02F560 8002F9B0 4600A03E */  c.le.s      $f20, $f0
/* 02F564 8002F9B4 00000000 */  nop
/* 02F568 8002F9B8 4503FFFB */  bc1tl       .L8002F9A8
/* 02F56C 8002F9BC 46140481 */   sub.s      $f18, $f0, $f20
/* 02F570 8002F9C0 C60E0004 */  lwc1        $f14, 0x4($s0)
.L8002F9C4:
/* 02F574 8002F9C4 4616703C */  c.lt.s      $f14, $f22
/* 02F578 8002F9C8 00000000 */  nop
/* 02F57C 8002F9CC 45020009 */  bc1fl       .L8002F9F4
/* 02F580 8002F9D0 460EA03E */   c.le.s     $f20, $f14
/* 02F584 8002F9D4 46147100 */  add.s       $f4, $f14, $f20
.L8002F9D8:
/* 02F588 8002F9D8 E6040004 */  swc1        $f4, 0x4($s0)
/* 02F58C 8002F9DC C60E0004 */  lwc1        $f14, 0x4($s0)
/* 02F590 8002F9E0 4616703C */  c.lt.s      $f14, $f22
/* 02F594 8002F9E4 00000000 */  nop
/* 02F598 8002F9E8 4503FFFB */  bc1tl       .L8002F9D8
/* 02F59C 8002F9EC 46147100 */   add.s      $f4, $f14, $f20
/* 02F5A0 8002F9F0 460EA03E */  c.le.s      $f20, $f14
.L8002F9F4:
/* 02F5A4 8002F9F4 00000000 */  nop
/* 02F5A8 8002F9F8 45000008 */  bc1f        .L8002FA1C
/* 02F5AC 8002F9FC 00000000 */   nop
/* 02F5B0 8002FA00 46147281 */  sub.s       $f10, $f14, $f20
.L8002FA04:
/* 02F5B4 8002FA04 E60A0004 */  swc1        $f10, 0x4($s0)
/* 02F5B8 8002FA08 C60E0004 */  lwc1        $f14, 0x4($s0)
/* 02F5BC 8002FA0C 460EA03E */  c.le.s      $f20, $f14
/* 02F5C0 8002FA10 00000000 */  nop
/* 02F5C4 8002FA14 4503FFFB */  bc1tl       .L8002FA04
/* 02F5C8 8002FA18 46147281 */   sub.s      $f10, $f14, $f20
.L8002FA1C:
/* 02F5CC 8002FA1C 0C00BE18 */  jal         func_8002F860
/* 02F5D0 8002FA20 C60C0000 */   lwc1       $f12, 0x0($s0)
/* 02F5D4 8002FA24 26310001 */  addiu       $s1, $s1, 0x1
/* 02F5D8 8002FA28 1634FFC2 */  bne         $s1, $s4, .L8002F934
/* 02F5DC 8002FA2C 26100010 */   addiu      $s0, $s0, 0x10
/* 02F5E0 8002FA30 8FBF003C */  lw          $ra, 0x3c($sp)
/* 02F5E4 8002FA34 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 02F5E8 8002FA38 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 02F5EC 8002FA3C 8FB00028 */  lw          $s0, 0x28($sp)
/* 02F5F0 8002FA40 8FB1002C */  lw          $s1, 0x2c($sp)
/* 02F5F4 8002FA44 8FB20030 */  lw          $s2, 0x30($sp)
/* 02F5F8 8002FA48 8FB30034 */  lw          $s3, 0x34($sp)
/* 02F5FC 8002FA4C 8FB40038 */  lw          $s4, 0x38($sp)
/* 02F600 8002FA50 03E00008 */  jr          $ra
/* 02F604 8002FA54 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8002FA58 # 3
/* 02F608 8002FA58 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 02F60C 8002FA5C AFBF0034 */  sw          $ra, 0x34($sp)
/* 02F610 8002FA60 AFB50030 */  sw          $s5, 0x30($sp)
/* 02F614 8002FA64 AFB4002C */  sw          $s4, 0x2c($sp)
/* 02F618 8002FA68 AFB30028 */  sw          $s3, 0x28($sp)
/* 02F61C 8002FA6C AFB20024 */  sw          $s2, 0x24($sp)
/* 02F620 8002FA70 AFB10020 */  sw          $s1, 0x20($sp)
/* 02F624 8002FA74 AFB0001C */  sw          $s0, 0x1c($sp)
/* 02F628 8002FA78 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 02F62C 8002FA7C 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 02F630 8002FA80 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 02F634 8002FA84 C4840078 */  lwc1        $f4, 0x78($a0)
/* 02F638 8002FA88 44808000 */  mtc1        $zero, $f16
/* 02F63C 8002FA8C 3C11800A */  lui         $s1, %hi(D_8009FB10)
/* 02F640 8002FA90 46062201 */  sub.s       $f8, $f4, $f6
/* 02F644 8002FA94 3C15800A */  lui         $s5, %hi(D_8009FB30)
/* 02F648 8002FA98 240E0002 */  addiu       $t6, $zero, 0x2
/* 02F64C 8002FA9C 3C013F00 */  lui         $at, 0x3f00
/* 02F650 8002FAA0 E4880078 */  swc1        $f8, 0x78($a0)
/* 02F654 8002FAA4 C48A0078 */  lwc1        $f10, 0x78($a0)
/* 02F658 8002FAA8 26B5FB30 */  addiu       $s5, $s5, %lo(D_8009FB30)
/* 02F65C 8002FAAC 2631FB10 */  addiu       $s1, $s1, %lo(D_8009FB10)
/* 02F660 8002FAB0 4610503C */  c.lt.s      $f10, $f16
/* 02F664 8002FAB4 24900050 */  addiu       $s0, $a0, 0x50
/* 02F668 8002FAB8 27B20044 */  addiu       $s2, $sp, 0x44
/* 02F66C 8002FABC 27B30040 */  addiu       $s3, $sp, 0x40
/* 02F670 8002FAC0 4500001E */  bc1f        .L8002FB3C
/* 02F674 8002FAC4 27B4003C */   addiu      $s4, $sp, 0x3c
/* 02F678 8002FAC8 44819000 */  mtc1        $at, $f18
/* 02F67C 8002FACC 3C014000 */  lui         $at, 0x4000
/* 02F680 8002FAD0 4481A000 */  mtc1        $at, $f20
/* 02F684 8002FAD4 A48E0070 */  sh          $t6, 0x70($a0)
/* 02F688 8002FAD8 E4920078 */  swc1        $f18, 0x78($a0)
.L8002FADC:
/* 02F68C 8002FADC 02202025 */  move        $a0, $s1
/* 02F690 8002FAE0 0C00E38F */  jal         func_80038E3C
/* 02F694 8002FAE4 02402825 */   move       $a1, $s2
/* 02F698 8002FAE8 02402025 */  move        $a0, $s2
/* 02F69C 8002FAEC 02602825 */  move        $a1, $s3
/* 02F6A0 8002FAF0 0C002CA8 */  jal         func_8000B2A0
/* 02F6A4 8002FAF4 02803025 */   move       $a2, $s4
/* 02F6A8 8002FAF8 C7A40040 */  lwc1        $f4, 0x40($sp)
/* 02F6AC 8002FAFC C6060000 */  lwc1        $f6, 0x0($s0)
/* 02F6B0 8002FB00 0C00E7ED */  jal         func_80039FB4
/* 02F6B4 8002FB04 46062301 */   sub.s      $f12, $f4, $f6
/* 02F6B8 8002FB08 46140202 */  mul.s       $f8, $f0, $f20
/* 02F6BC 8002FB0C C6100004 */  lwc1        $f16, 0x4($s0)
/* 02F6C0 8002FB10 E6080008 */  swc1        $f8, 0x8($s0)
/* 02F6C4 8002FB14 C7AA003C */  lwc1        $f10, 0x3c($sp)
/* 02F6C8 8002FB18 0C00E7ED */  jal         func_80039FB4
/* 02F6CC 8002FB1C 46105301 */   sub.s      $f12, $f10, $f16
/* 02F6D0 8002FB20 46140482 */  mul.s       $f18, $f0, $f20
/* 02F6D4 8002FB24 26310010 */  addiu       $s1, $s1, 0x10
/* 02F6D8 8002FB28 26100010 */  addiu       $s0, $s0, 0x10
/* 02F6DC 8002FB2C 1635FFEB */  bne         $s1, $s5, .L8002FADC
/* 02F6E0 8002FB30 E612FFFC */   swc1       $f18, -0x4($s0)
/* 02F6E4 8002FB34 10000004 */  b           .L8002FB48
/* 02F6E8 8002FB38 8FBF0034 */   lw         $ra, 0x34($sp)
.L8002FB3C:
/* 02F6EC 8002FB3C 0C00BE38 */  jal         func_8002F8E0
/* 02F6F0 8002FB40 00000000 */   nop
/* 02F6F4 8002FB44 8FBF0034 */  lw          $ra, 0x34($sp)
.L8002FB48:
/* 02F6F8 8002FB48 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 02F6FC 8002FB4C 8FB0001C */  lw          $s0, 0x1c($sp)
/* 02F700 8002FB50 8FB10020 */  lw          $s1, 0x20($sp)
/* 02F704 8002FB54 8FB20024 */  lw          $s2, 0x24($sp)
/* 02F708 8002FB58 8FB30028 */  lw          $s3, 0x28($sp)
/* 02F70C 8002FB5C 8FB4002C */  lw          $s4, 0x2c($sp)
/* 02F710 8002FB60 8FB50030 */  lw          $s5, 0x30($sp)
/* 02F714 8002FB64 03E00008 */  jr          $ra
/* 02F718 8002FB68 27BD0058 */   addiu      $sp, $sp, 0x58

glabel func_8002FB6C # 4
/* 02F71C 8002FB6C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F720 8002FB70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F724 8002FB74 3C01800B */  lui         $at, %hi(D_800B2C64)
/* 02F728 8002FB78 C4262C64 */  lwc1        $f6, %lo(D_800B2C64)($at)
/* 02F72C 8002FB7C C4840078 */  lwc1        $f4, 0x78($a0)
/* 02F730 8002FB80 44808000 */  mtc1        $zero, $f16
/* 02F734 8002FB84 46062201 */  sub.s       $f8, $f4, $f6
/* 02F738 8002FB88 E4880078 */  swc1        $f8, 0x78($a0)
/* 02F73C 8002FB8C C48A0078 */  lwc1        $f10, 0x78($a0)
/* 02F740 8002FB90 4610503C */  c.lt.s      $f10, $f16
/* 02F744 8002FB94 00000000 */  nop
/* 02F748 8002FB98 45000005 */  bc1f        .L8002FBB0
/* 02F74C 8002FB9C 00000000 */   nop
/* 02F750 8002FBA0 0C00BEF2 */  jal         func_8002FBC8
/* 02F754 8002FBA4 00000000 */   nop
/* 02F758 8002FBA8 10000004 */  b           .L8002FBBC
/* 02F75C 8002FBAC 8FBF0014 */   lw         $ra, 0x14($sp)
.L8002FBB0:
/* 02F760 8002FBB0 0C00BE38 */  jal         func_8002F8E0
/* 02F764 8002FBB4 00000000 */   nop
/* 02F768 8002FBB8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8002FBBC:
/* 02F76C 8002FBBC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F770 8002FBC0 03E00008 */  jr          $ra
/* 02F774 8002FBC4 00000000 */   nop

glabel func_8002FBC8 # 5
/* 02F778 8002FBC8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F77C 8002FBCC 3C0E800A */  lui         $t6, %hi(D_8009FB00)
/* 02F780 8002FBD0 27A20000 */  addiu       $v0, $sp, 0x0
/* 02F784 8002FBD4 25CEFB00 */  addiu       $t6, $t6, %lo(D_8009FB00)
/* 02F788 8002FBD8 25D90024 */  addiu       $t9, $t6, 0x24
/* 02F78C 8002FBDC 00404025 */  move        $t0, $v0
.L8002FBE0:
/* 02F790 8002FBE0 8DC10000 */  lw          $at, 0x0($t6)
/* 02F794 8002FBE4 25CE000C */  addiu       $t6, $t6, 0xc
/* 02F798 8002FBE8 2508000C */  addiu       $t0, $t0, 0xc
/* 02F79C 8002FBEC AD01FFF4 */  sw          $at, -0xc($t0)
/* 02F7A0 8002FBF0 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 02F7A4 8002FBF4 AD01FFF8 */  sw          $at, -0x8($t0)
/* 02F7A8 8002FBF8 8DC1FFFC */  lw          $at, -0x4($t6)
/* 02F7AC 8002FBFC 15D9FFF8 */  bne         $t6, $t9, .L8002FBE0
/* 02F7B0 8002FC00 AD01FFFC */   sw         $at, -0x4($t0)
/* 02F7B4 8002FC04 8DC10000 */  lw          $at, 0x0($t6)
/* 02F7B8 8002FC08 00406025 */  move        $t4, $v0
/* 02F7BC 8002FC0C 00806825 */  move        $t5, $a0
/* 02F7C0 8002FC10 244B0024 */  addiu       $t3, $v0, 0x24
/* 02F7C4 8002FC14 AD010000 */  sw          $at, 0x0($t0)
.L8002FC18:
/* 02F7C8 8002FC18 8D810000 */  lw          $at, 0x0($t4)
/* 02F7CC 8002FC1C 258C000C */  addiu       $t4, $t4, 0xc
/* 02F7D0 8002FC20 25AD000C */  addiu       $t5, $t5, 0xc
/* 02F7D4 8002FC24 ADA1001C */  sw          $at, 0x1c($t5)
/* 02F7D8 8002FC28 8D81FFF8 */  lw          $at, -0x8($t4)
/* 02F7DC 8002FC2C ADA10020 */  sw          $at, 0x20($t5)
/* 02F7E0 8002FC30 8D81FFFC */  lw          $at, -0x4($t4)
/* 02F7E4 8002FC34 158BFFF8 */  bne         $t4, $t3, .L8002FC18
/* 02F7E8 8002FC38 ADA10024 */   sw         $at, 0x24($t5)
/* 02F7EC 8002FC3C 8D810000 */  lw          $at, 0x0($t4)
/* 02F7F0 8002FC40 00407025 */  move        $t6, $v0
/* 02F7F4 8002FC44 00804025 */  move        $t0, $a0
/* 02F7F8 8002FC48 24590024 */  addiu       $t9, $v0, 0x24
/* 02F7FC 8002FC4C ADA10028 */  sw          $at, 0x28($t5)
.L8002FC50:
/* 02F800 8002FC50 8DC10000 */  lw          $at, 0x0($t6)
/* 02F804 8002FC54 25CE000C */  addiu       $t6, $t6, 0xc
/* 02F808 8002FC58 2508000C */  addiu       $t0, $t0, 0xc
/* 02F80C 8002FC5C AD01FFF4 */  sw          $at, -0xc($t0)
/* 02F810 8002FC60 8DC1FFF8 */  lw          $at, -0x8($t6)
/* 02F814 8002FC64 AD01FFF8 */  sw          $at, -0x8($t0)
/* 02F818 8002FC68 8DC1FFFC */  lw          $at, -0x4($t6)
/* 02F81C 8002FC6C 15D9FFF8 */  bne         $t6, $t9, .L8002FC50
/* 02F820 8002FC70 AD01FFFC */   sw         $at, -0x4($t0)
/* 02F824 8002FC74 8DC10000 */  lw          $at, 0x0($t6)
/* 02F828 8002FC78 27BD0028 */  addiu       $sp, $sp, 0x28
/* 02F82C 8002FC7C AD010000 */  sw          $at, 0x0($t0)
/* 02F830 8002FC80 A4800070 */  sh          $zero, 0x70($a0)
/* 02F834 8002FC84 03E00008 */  jr          $ra
/* 02F838 8002FC88 A4800072 */   sh         $zero, 0x72($a0)

glabel func_8002FC8C # 6
/* 02F83C 8002FC8C 03E00008 */  jr          $ra
/* 02F840 8002FC90 A4800070 */   sh         $zero, 0x70($a0)

glabel func_8002FC94 # 7
/* 02F844 8002FC94 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 02F848 8002FC98 44856000 */  mtc1        $a1, $f12
/* 02F84C 8002FC9C AFB50028 */  sw          $s5, 0x28($sp)
/* 02F850 8002FCA0 AFB40024 */  sw          $s4, 0x24($sp)
/* 02F854 8002FCA4 AFB30020 */  sw          $s3, 0x20($sp)
/* 02F858 8002FCA8 AFB2001C */  sw          $s2, 0x1c($sp)
/* 02F85C 8002FCAC AFB10018 */  sw          $s1, 0x18($sp)
/* 02F860 8002FCB0 AFB00014 */  sw          $s0, 0x14($sp)
/* 02F864 8002FCB4 AFBF002C */  sw          $ra, 0x2c($sp)
/* 02F868 8002FCB8 240E0001 */  addiu       $t6, $zero, 0x1
/* 02F86C 8002FCBC 00809825 */  move        $s3, $a0
/* 02F870 8002FCC0 A48E0070 */  sh          $t6, 0x70($a0)
/* 02F874 8002FCC4 24900050 */  addiu       $s0, $a0, 0x50
/* 02F878 8002FCC8 00008825 */  move        $s1, $zero
/* 02F87C 8002FCCC 00C09025 */  move        $s2, $a2
/* 02F880 8002FCD0 27B4003C */  addiu       $s4, $sp, 0x3c
/* 02F884 8002FCD4 24150020 */  addiu       $s5, $zero, 0x20
/* 02F888 8002FCD8 E48C0074 */  swc1        $f12, 0x74($a0)
/* 02F88C 8002FCDC E48C0078 */  swc1        $f12, 0x78($a0)
.L8002FCE0:
/* 02F890 8002FCE0 966F0072 */  lhu         $t7, 0x72($s3)
/* 02F894 8002FCE4 02802825 */  move        $a1, $s4
/* 02F898 8002FCE8 000FC080 */  sll         $t8, $t7, 2
/* 02F89C 8002FCEC 030FC021 */  addu        $t8, $t8, $t7
/* 02F8A0 8002FCF0 0018C0C0 */  sll         $t8, $t8, 3
/* 02F8A4 8002FCF4 0278C821 */  addu        $t9, $s3, $t8
/* 02F8A8 8002FCF8 03312021 */  addu        $a0, $t9, $s1
/* 02F8AC 8002FCFC 0C00E38F */  jal         func_80038E3C
/* 02F8B0 8002FD00 24840010 */   addiu      $a0, $a0, 0x10
/* 02F8B4 8002FD04 02802025 */  move        $a0, $s4
/* 02F8B8 8002FD08 02002825 */  move        $a1, $s0
/* 02F8BC 8002FD0C 0C002CA8 */  jal         func_8000B2A0
/* 02F8C0 8002FD10 26060004 */   addiu      $a2, $s0, 0x4
/* 02F8C4 8002FD14 C6440000 */  lwc1        $f4, 0x0($s2)
/* 02F8C8 8002FD18 26310010 */  addiu       $s1, $s1, 0x10
/* 02F8CC 8002FD1C 26520008 */  addiu       $s2, $s2, 0x8
/* 02F8D0 8002FD20 E6040008 */  swc1        $f4, 0x8($s0)
/* 02F8D4 8002FD24 C646FFFC */  lwc1        $f6, -0x4($s2)
/* 02F8D8 8002FD28 26100010 */  addiu       $s0, $s0, 0x10
/* 02F8DC 8002FD2C 1635FFEC */  bne         $s1, $s5, .L8002FCE0
/* 02F8E0 8002FD30 E606FFFC */   swc1       $f6, -0x4($s0)
/* 02F8E4 8002FD34 8FBF002C */  lw          $ra, 0x2c($sp)
/* 02F8E8 8002FD38 8FB00014 */  lw          $s0, 0x14($sp)
/* 02F8EC 8002FD3C 8FB10018 */  lw          $s1, 0x18($sp)
/* 02F8F0 8002FD40 8FB2001C */  lw          $s2, 0x1c($sp)
/* 02F8F4 8002FD44 8FB30020 */  lw          $s3, 0x20($sp)
/* 02F8F8 8002FD48 8FB40024 */  lw          $s4, 0x24($sp)
/* 02F8FC 8002FD4C 8FB50028 */  lw          $s5, 0x28($sp)
/* 02F900 8002FD50 03E00008 */  jr          $ra
/* 02F904 8002FD54 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8002FD58 # 8
/* 02F908 8002FD58 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02F90C 8002FD5C AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F910 8002FD60 94820070 */  lhu         $v0, 0x70($a0)
/* 02F914 8002FD64 1040000A */  beqz        $v0, .L8002FD90
/* 02F918 8002FD68 0002C080 */   sll        $t8, $v0, 2
/* 02F91C 8002FD6C 948E0072 */  lhu         $t6, 0x72($a0)
/* 02F920 8002FD70 3C19800A */  lui         $t9, %hi(D_8009FB28)
/* 02F924 8002FD74 0338C821 */  addu        $t9, $t9, $t8
/* 02F928 8002FD78 39CF0001 */  xori        $t7, $t6, 0x1
/* 02F92C 8002FD7C A48F0072 */  sh          $t7, 0x72($a0)
/* 02F930 8002FD80 8F39FB28 */  lw          $t9, %lo(D_8009FB28)($t9)
/* 02F934 8002FD84 31E5FFFF */  andi        $a1, $t7, 0xffff
/* 02F938 8002FD88 0320F809 */  jalr        $t9
/* 02F93C 8002FD8C 00000000 */   nop
.L8002FD90:
/* 02F940 8002FD90 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F944 8002FD94 27BD0018 */  addiu       $sp, $sp, 0x18
/* 02F948 8002FD98 03E00008 */  jr          $ra
/* 02F94C 8002FD9C 00000000 */   nop

glabel func_8002FDA0 # 9
/* 02F950 8002FDA0 8C8E0004 */  lw          $t6, 0x4($a0)
/* 02F954 8002FDA4 00001025 */  move        $v0, $zero
/* 02F958 8002FDA8 15C0000D */  bnez        $t6, .L8002FDE0
/* 02F95C 8002FDAC 00000000 */   nop
/* 02F960 8002FDB0 8C830000 */  lw          $v1, 0x0($a0)
/* 02F964 8002FDB4 24630008 */  addiu       $v1, $v1, 0x8
.L8002FDB8:
/* 02F968 8002FDB8 8C6F0004 */  lw          $t7, 0x4($v1)
/* 02F96C 8002FDBC 8C78FFFC */  lw          $t8, -0x4($v1)
/* 02F970 8002FDC0 8C680000 */  lw          $t0, 0x0($v1)
/* 02F974 8002FDC4 24630008 */  addiu       $v1, $v1, 0x8
/* 02F978 8002FDC8 01F8C821 */  addu        $t9, $t7, $t8
/* 02F97C 8002FDCC 11000003 */  beqz        $t0, .L8002FDDC
/* 02F980 8002FDD0 AC79FFFC */   sw         $t9, -0x4($v1)
/* 02F984 8002FDD4 1000FFF8 */  b           .L8002FDB8
/* 02F988 8002FDD8 24420001 */   addiu      $v0, $v0, 0x1
.L8002FDDC:
/* 02F98C 8002FDDC AC820004 */  sw          $v0, 0x4($a0)
.L8002FDE0:
/* 02F990 8002FDE0 03E00008 */  jr          $ra
/* 02F994 8002FDE4 00000000 */   nop

glabel func_8002FDE8 # 10
/* 02F998 8002FDE8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 02F99C 8002FDEC AFBF0014 */  sw          $ra, 0x14($sp)
/* 02F9A0 8002FDF0 0C00BF68 */  jal         func_8002FDA0
/* 02F9A4 8002FDF4 AFA40028 */   sw         $a0, 0x28($sp)
/* 02F9A8 8002FDF8 8FA50028 */  lw          $a1, 0x28($sp)
/* 02F9AC 8002FDFC 8CAE0004 */  lw          $t6, 0x4($a1)
/* 02F9B0 8002FE00 8CA30000 */  lw          $v1, 0x0($a1)
/* 02F9B4 8002FE04 000E78C0 */  sll         $t7, $t6, 3
/* 02F9B8 8002FE08 006FC021 */  addu        $t8, $v1, $t7
/* 02F9BC 8002FE0C 8F040004 */  lw          $a0, 0x4($t8)
/* 02F9C0 8002FE10 0C00E500 */  jal         func_80039400
/* 02F9C4 8002FE14 AFA3001C */   sw         $v1, 0x1c($sp)
/* 02F9C8 8002FE18 8FA3001C */  lw          $v1, 0x1c($sp)
/* 02F9CC 8002FE1C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 02F9D0 8002FE20 8C640000 */  lw          $a0, 0x0($v1)
/* 02F9D4 8002FE24 5080000C */  beql        $a0, $zero, .L8002FE58
/* 02F9D8 8002FE28 00001025 */   move       $v0, $zero
/* 02F9DC 8002FE2C 8C790004 */  lw          $t9, 0x4($v1)
.L8002FE30:
/* 02F9E0 8002FE30 0322082A */  slt         $at, $t9, $v0
/* 02F9E4 8002FE34 54200004 */  bnel        $at, $zero, .L8002FE48
/* 02F9E8 8002FE38 8C640008 */   lw         $a0, 0x8($v1)
/* 02F9EC 8002FE3C 10000006 */  b           .L8002FE58
/* 02F9F0 8002FE40 00801025 */   move       $v0, $a0
/* 02F9F4 8002FE44 8C640008 */  lw          $a0, 0x8($v1)
.L8002FE48:
/* 02F9F8 8002FE48 24630008 */  addiu       $v1, $v1, 0x8
/* 02F9FC 8002FE4C 5480FFF8 */  bnel        $a0, $zero, .L8002FE30
/* 02FA00 8002FE50 8C790004 */   lw         $t9, 0x4($v1)
/* 02FA04 8002FE54 00001025 */  move        $v0, $zero
.L8002FE58:
/* 02FA08 8002FE58 03E00008 */  jr          $ra
/* 02FA0C 8002FE5C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8002FE60 # 11
/* 02FA10 8002FE60 3C0E800A */  lui         $t6, %hi(D_800A0214)
/* 02FA14 8002FE64 25CE0214 */  addiu       $t6, $t6, %lo(D_800A0214)
/* 02FA18 8002FE68 8DC10000 */  lw          $at, 0x0($t6)
/* 02FA1C 8002FE6C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 02FA20 8002FE70 27A60008 */  addiu       $a2, $sp, 0x8
/* 02FA24 8002FE74 ACC10000 */  sw          $at, 0x0($a2)
/* 02FA28 8002FE78 8DD90004 */  lw          $t9, 0x4($t6)
/* 02FA2C 8002FE7C 24030002 */  addiu       $v1, $zero, 0x2
/* 02FA30 8002FE80 00036880 */  sll         $t5, $v1, 2
/* 02FA34 8002FE84 ACD90004 */  sw          $t9, 0x4($a2)
/* 02FA38 8002FE88 8DC10008 */  lw          $at, 0x8($t6)
/* 02FA3C 8002FE8C 00CD2821 */  addu        $a1, $a2, $t5
/* 02FA40 8002FE90 3C0C800F */  lui         $t4, %hi(D_800F6C74)
/* 02FA44 8002FE94 ACC10008 */  sw          $at, 0x8($a2)
/* 02FA48 8002FE98 8DD9000C */  lw          $t9, 0xc($t6)
/* 02FA4C 8002FE9C 258C6C74 */  addiu       $t4, $t4, %lo(D_800F6C74)
/* 02FA50 8002FEA0 006C2021 */  addu        $a0, $v1, $t4
/* 02FA54 8002FEA4 ACD9000C */  sw          $t9, 0xc($a2)
/* 02FA58 8002FEA8 8DC10010 */  lw          $at, 0x10($t6)
/* 02FA5C 8002FEAC ACC10010 */  sw          $at, 0x10($a2)
/* 02FA60 8002FEB0 8DD90014 */  lw          $t9, 0x14($t6)
/* 02FA64 8002FEB4 3C01800F */  lui         $at, %hi(D_800F6C74)
/* 02FA68 8002FEB8 ACD90014 */  sw          $t9, 0x14($a2)
/* 02FA6C 8002FEBC 8FA20008 */  lw          $v0, 0x8($sp)
/* 02FA70 8002FEC0 8FA9000C */  lw          $t1, 0xc($sp)
/* 02FA74 8002FEC4 A0206C74 */  sb          $zero, %lo(D_800F6C74)($at)
/* 02FA78 8002FEC8 2442000B */  addiu       $v0, $v0, 0xb
/* 02FA7C 8002FECC 000240C2 */  srl         $t0, $v0, 3
/* 02FA80 8002FED0 A0286C75 */  sb          $t0, %lo(D_800F6C74 + 0x1)($at)
/* 02FA84 8002FED4 8CB80000 */  lw          $t8, 0x0($a1)
/* 02FA88 8002FED8 252A000B */  addiu       $t2, $t1, 0xb
/* 02FA8C 8002FEDC 000A58C2 */  srl         $t3, $t2, 3
/* 02FA90 8002FEE0 8CB90004 */  lw          $t9, 0x4($a1)
/* 02FA94 8002FEE4 010B1021 */  addu        $v0, $t0, $t3
/* 02FA98 8002FEE8 270F000B */  addiu       $t7, $t8, 0xb
/* 02FA9C 8002FEEC 8CAA0008 */  lw          $t2, 0x8($a1)
/* 02FAA0 8002FEF0 A0820000 */  sb          $v0, 0x0($a0)
/* 02FAA4 8002FEF4 000F70C2 */  srl         $t6, $t7, 3
/* 02FAA8 8002FEF8 004E1021 */  addu        $v0, $v0, $t6
/* 02FAAC 8002FEFC 2728000B */  addiu       $t0, $t9, 0xb
/* 02FAB0 8002FF00 000848C2 */  srl         $t1, $t0, 3
/* 02FAB4 8002FF04 A0820001 */  sb          $v0, 0x1($a0)
/* 02FAB8 8002FF08 00491021 */  addu        $v0, $v0, $t1
/* 02FABC 8002FF0C 254B000B */  addiu       $t3, $t2, 0xb
/* 02FAC0 8002FF10 000B60C2 */  srl         $t4, $t3, 3
/* 02FAC4 8002FF14 A0820002 */  sb          $v0, 0x2($a0)
/* 02FAC8 8002FF18 004C1021 */  addu        $v0, $v0, $t4
/* 02FACC 8002FF1C A0820003 */  sb          $v0, 0x3($a0)
/* 02FAD0 8002FF20 03E00008 */  jr          $ra
/* 02FAD4 8002FF24 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8002FF28 # 12
/* 02FAD8 8002FF28 3C0E800A */  lui         $t6, %hi(D_800A022C)
/* 02FADC 8002FF2C 25CE022C */  addiu       $t6, $t6, %lo(D_800A022C)
/* 02FAE0 8002FF30 8DC10000 */  lw          $at, 0x0($t6)
/* 02FAE4 8002FF34 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 02FAE8 8002FF38 27A30000 */  addiu       $v1, $sp, 0x0
/* 02FAEC 8002FF3C AC610000 */  sw          $at, 0x0($v1)
/* 02FAF0 8002FF40 8DD90004 */  lw          $t9, 0x4($t6)
/* 02FAF4 8002FF44 00044080 */  sll         $t0, $a0, 2
/* 02FAF8 8002FF48 00684821 */  addu        $t1, $v1, $t0
/* 02FAFC 8002FF4C AC790004 */  sw          $t9, 0x4($v1)
/* 02FB00 8002FF50 8DC10008 */  lw          $at, 0x8($t6)
/* 02FB04 8002FF54 AC610008 */  sw          $at, 0x8($v1)
/* 02FB08 8002FF58 8DD9000C */  lw          $t9, 0xc($t6)
/* 02FB0C 8002FF5C AC79000C */  sw          $t9, 0xc($v1)
/* 02FB10 8002FF60 8DC10010 */  lw          $at, 0x10($t6)
/* 02FB14 8002FF64 AC610010 */  sw          $at, 0x10($v1)
/* 02FB18 8002FF68 8DD90014 */  lw          $t9, 0x14($t6)
/* 02FB1C 8002FF6C AC790014 */  sw          $t9, 0x14($v1)
/* 02FB20 8002FF70 8D220000 */  lw          $v0, 0x0($t1)
/* 02FB24 8002FF74 03E00008 */  jr          $ra
/* 02FB28 8002FF78 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8002FF7C # 13
/* 02FB2C 8002FF7C 03E00008 */  jr          $ra
/* 02FB30 8002FF80 00000000 */   nop

glabel func_8002FF84 # 14
/* 02FB34 8002FF84 03E00008 */  jr          $ra
/* 02FB38 8002FF88 00000000 */   nop

glabel func_8002FF8C # 15
/* 02FB3C 8002FF8C 3C06800A */  lui         $a2, %hi(D_8009FB44)
/* 02FB40 8002FF90 3C0A800F */  lui         $t2, %hi(D_800F6460)
/* 02FB44 8002FF94 00001025 */  move        $v0, $zero
/* 02FB48 8002FF98 00001825 */  move        $v1, $zero
/* 02FB4C 8002FF9C 254A6460 */  addiu       $t2, $t2, %lo(D_800F6460)
/* 02FB50 8002FFA0 24C6FB44 */  addiu       $a2, $a2, %lo(D_8009FB44)
/* 02FB54 8002FFA4 00002025 */  move        $a0, $zero
/* 02FB58 8002FFA8 240C0008 */  addiu       $t4, $zero, 0x8
/* 02FB5C 8002FFAC 240B00F4 */  addiu       $t3, $zero, 0xf4
.L8002FFB0:
/* 02FB60 8002FFB0 10400003 */  beqz        $v0, .L8002FFC0
/* 02FB64 8002FFB4 8CC50000 */   lw         $a1, 0x0($a2)
/* 02FB68 8002FFB8 00001025 */  move        $v0, $zero
/* 02FB6C 8002FFBC 24630001 */  addiu       $v1, $v1, 0x1
.L8002FFC0:
/* 02FB70 8002FFC0 24A70007 */  addiu       $a3, $a1, 0x7
/* 02FB74 8002FFC4 04E10003 */  bgez        $a3, .L8002FFD4
/* 02FB78 8002FFC8 000770C3 */   sra        $t6, $a3, 3
/* 02FB7C 8002FFCC 24E10007 */  addiu       $at, $a3, 0x7
/* 02FB80 8002FFD0 000170C3 */  sra         $t6, $at, 3
.L8002FFD4:
/* 02FB84 8002FFD4 006E7821 */  addu        $t7, $v1, $t6
/* 02FB88 8002FFD8 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 02FB8C 8002FFDC 030E001A */  div         $zero, $t8, $t6
/* 02FB90 8002FFE0 0000C812 */  mflo        $t9
/* 02FB94 8002FFE4 01C03825 */  move        $a3, $t6
/* 02FB98 8002FFE8 3C09800A */  lui         $t1, %hi(D_8009FBA4)
/* 02FB9C 8002FFEC 03270019 */  multu       $t9, $a3
/* 02FBA0 8002FFF0 2529FBA4 */  addiu       $t1, $t1, %lo(D_8009FBA4)
/* 02FBA4 8002FFF4 14E00002 */  bnez        $a3, .L80030000
/* 02FBA8 8002FFF8 00000000 */   nop
/* 02FBAC 8002FFFC 0007000D */  break       7
.L80030000:
/* 02FBB0 80030000 2401FFFF */  addiu       $at, $zero, -0x1
/* 02FBB4 80030004 14E10004 */  bne         $a3, $at, .L80030018
/* 02FBB8 80030008 3C018000 */   lui        $at, 0x8000
/* 02FBBC 8003000C 17010002 */  bne         $t8, $at, .L80030018
/* 02FBC0 80030010 00000000 */   nop
/* 02FBC4 80030014 0006000D */  break       6
.L80030018:
/* 02FBC8 80030018 00001812 */  mflo        $v1
/* 02FBCC 8003001C 00004025 */  move        $t0, $zero
/* 02FBD0 80030020 00000000 */  nop
.L80030024:
/* 02FBD4 80030024 8D2D0000 */  lw          $t5, 0x0($t1)
/* 02FBD8 80030028 000870C0 */  sll         $t6, $t0, 3
/* 02FBDC 8003002C 0008C8C0 */  sll         $t9, $t0, 3
/* 02FBE0 80030030 148D000C */  bne         $a0, $t5, .L80030064
/* 02FBE4 80030034 014E3821 */   addu       $a3, $t2, $t6
/* 02FBE8 80030038 ACE20004 */  sw          $v0, 0x4($a3)
/* 02FBEC 8003003C 00451021 */  addu        $v0, $v0, $a1
/* 02FBF0 80030040 28410008 */  slti        $at, $v0, 0x8
/* 02FBF4 80030044 14200007 */  bnez        $at, .L80030064
/* 02FBF8 80030048 ACE30000 */   sw         $v1, 0x0($a3)
/* 02FBFC 8003004C 04410003 */  bgez        $v0, .L8003005C
/* 02FC00 80030050 000278C3 */   sra        $t7, $v0, 3
/* 02FC04 80030054 24410007 */  addiu       $at, $v0, 0x7
/* 02FC08 80030058 000178C3 */  sra         $t7, $at, 3
.L8003005C:
/* 02FC0C 8003005C 006F1821 */  addu        $v1, $v1, $t7
/* 02FC10 80030060 00001025 */  move        $v0, $zero
.L80030064:
/* 02FC14 80030064 8D380004 */  lw          $t8, 0x4($t1)
/* 02FC18 80030068 01593821 */  addu        $a3, $t2, $t9
/* 02FC1C 8003006C 000878C0 */  sll         $t7, $t0, 3
/* 02FC20 80030070 5498000D */  bnel        $a0, $t8, .L800300A8
/* 02FC24 80030074 8D2E0008 */   lw         $t6, 0x8($t1)
/* 02FC28 80030078 ACE2000C */  sw          $v0, 0xc($a3)
/* 02FC2C 8003007C 00451021 */  addu        $v0, $v0, $a1
/* 02FC30 80030080 28410008 */  slti        $at, $v0, 0x8
/* 02FC34 80030084 14200007 */  bnez        $at, .L800300A4
/* 02FC38 80030088 ACE30008 */   sw         $v1, 0x8($a3)
/* 02FC3C 8003008C 04410003 */  bgez        $v0, .L8003009C
/* 02FC40 80030090 000268C3 */   sra        $t5, $v0, 3
/* 02FC44 80030094 24410007 */  addiu       $at, $v0, 0x7
/* 02FC48 80030098 000168C3 */  sra         $t5, $at, 3
.L8003009C:
/* 02FC4C 8003009C 006D1821 */  addu        $v1, $v1, $t5
/* 02FC50 800300A0 00001025 */  move        $v0, $zero
.L800300A4:
/* 02FC54 800300A4 8D2E0008 */  lw          $t6, 0x8($t1)
.L800300A8:
/* 02FC58 800300A8 014F3821 */  addu        $a3, $t2, $t7
/* 02FC5C 800300AC 548E000D */  bnel        $a0, $t6, .L800300E4
/* 02FC60 800300B0 8D39000C */   lw         $t9, 0xc($t1)
/* 02FC64 800300B4 ACE20014 */  sw          $v0, 0x14($a3)
/* 02FC68 800300B8 00451021 */  addu        $v0, $v0, $a1
/* 02FC6C 800300BC 28410008 */  slti        $at, $v0, 0x8
/* 02FC70 800300C0 14200007 */  bnez        $at, .L800300E0
/* 02FC74 800300C4 ACE30010 */   sw         $v1, 0x10($a3)
/* 02FC78 800300C8 04410003 */  bgez        $v0, .L800300D8
/* 02FC7C 800300CC 0002C0C3 */   sra        $t8, $v0, 3
/* 02FC80 800300D0 24410007 */  addiu       $at, $v0, 0x7
/* 02FC84 800300D4 0001C0C3 */  sra         $t8, $at, 3
.L800300D8:
/* 02FC88 800300D8 00781821 */  addu        $v1, $v1, $t8
/* 02FC8C 800300DC 00001025 */  move        $v0, $zero
.L800300E0:
/* 02FC90 800300E0 8D39000C */  lw          $t9, 0xc($t1)
.L800300E4:
/* 02FC94 800300E4 5499000F */  bnel        $a0, $t9, .L80030124
/* 02FC98 800300E8 25080004 */   addiu      $t0, $t0, 0x4
/* 02FC9C 800300EC 000868C0 */  sll         $t5, $t0, 3
/* 02FCA0 800300F0 014D3821 */  addu        $a3, $t2, $t5
/* 02FCA4 800300F4 ACE2001C */  sw          $v0, 0x1c($a3)
/* 02FCA8 800300F8 00451021 */  addu        $v0, $v0, $a1
/* 02FCAC 800300FC 28410008 */  slti        $at, $v0, 0x8
/* 02FCB0 80030100 14200007 */  bnez        $at, .L80030120
/* 02FCB4 80030104 ACE30018 */   sw         $v1, 0x18($a3)
/* 02FCB8 80030108 04410003 */  bgez        $v0, .L80030118
/* 02FCBC 8003010C 000270C3 */   sra        $t6, $v0, 3
/* 02FCC0 80030110 24410007 */  addiu       $at, $v0, 0x7
/* 02FCC4 80030114 000170C3 */  sra         $t6, $at, 3
.L80030118:
/* 02FCC8 80030118 006E1821 */  addu        $v1, $v1, $t6
/* 02FCCC 8003011C 00001025 */  move        $v0, $zero
.L80030120:
/* 02FCD0 80030120 25080004 */  addiu       $t0, $t0, 0x4
.L80030124:
/* 02FCD4 80030124 150BFFBF */  bne         $t0, $t3, .L80030024
/* 02FCD8 80030128 25290010 */   addiu      $t1, $t1, 0x10
/* 02FCDC 8003012C 24840001 */  addiu       $a0, $a0, 0x1
/* 02FCE0 80030130 148CFF9F */  bne         $a0, $t4, .L8002FFB0
/* 02FCE4 80030134 24C6000C */   addiu      $a2, $a2, 0xc
/* 02FCE8 80030138 03E00008 */  jr          $ra
/* 02FCEC 8003013C 00000000 */   nop

glabel func_80030140 # 16
/* 02FCF0 80030140 00047080 */  sll         $t6, $a0, 2
/* 02FCF4 80030144 3C05800A */  lui         $a1, %hi(D_8009FBA4)
/* 02FCF8 80030148 00AE2821 */  addu        $a1, $a1, $t6
/* 02FCFC 8003014C 8CA5FBA4 */  lw          $a1, %lo(D_8009FBA4)($a1)
/* 02FD00 80030150 00001025 */  move        $v0, $zero
/* 02FD04 80030154 2CA10008 */  sltiu       $at, $a1, 0x8
/* 02FD08 80030158 10200045 */  beqz        $at, .L80030270
/* 02FD0C 8003015C 00057880 */   sll        $t7, $a1, 2
/* 02FD10 80030160 3C01800B */  lui         $at, %hi(jtbl_800AB0D4)
/* 02FD14 80030164 002F0821 */  addu        $at, $at, $t7
/* 02FD18 80030168 8C2FB0D4 */  lw          $t7, %lo(jtbl_800AB0D4)($at)
/* 02FD1C 8003016C 01E00008 */  jr          $t7
/* 02FD20 80030170 00000000 */   nop
glabel L80030174
/* 02FD24 80030174 0004C0C0 */  sll         $t8, $a0, 3
/* 02FD28 80030178 3C19800F */  lui         $t9, %hi(D_800F6460)
/* 02FD2C 8003017C 0338C821 */  addu        $t9, $t9, $t8
/* 02FD30 80030180 8F396460 */  lw          $t9, %lo(D_800F6460)($t9)
/* 02FD34 80030184 3C02800F */  lui         $v0, %hi(D_800F6C00)
/* 02FD38 80030188 00591021 */  addu        $v0, $v0, $t9
/* 02FD3C 8003018C 03E00008 */  jr          $ra
/* 02FD40 80030190 8C426C00 */   lw         $v0, %lo(D_800F6C00)($v0)
glabel L80030194
/* 02FD44 80030194 000440C0 */  sll         $t0, $a0, 3
/* 02FD48 80030198 3C09800F */  lui         $t1, %hi(D_800F6460)
/* 02FD4C 8003019C 01284821 */  addu        $t1, $t1, $t0
/* 02FD50 800301A0 8D296460 */  lw          $t1, %lo(D_800F6460)($t1)
/* 02FD54 800301A4 3C02800F */  lui         $v0, %hi(D_800F6C00)
/* 02FD58 800301A8 00491021 */  addu        $v0, $v0, $t1
/* 02FD5C 800301AC 03E00008 */  jr          $ra
/* 02FD60 800301B0 84426C00 */   lh         $v0, %lo(D_800F6C00)($v0)
glabel L800301B4
/* 02FD64 800301B4 000450C0 */  sll         $t2, $a0, 3
/* 02FD68 800301B8 3C0B800F */  lui         $t3, %hi(D_800F6460)
/* 02FD6C 800301BC 016A5821 */  addu        $t3, $t3, $t2
/* 02FD70 800301C0 8D6B6460 */  lw          $t3, %lo(D_800F6460)($t3)
/* 02FD74 800301C4 3C02800F */  lui         $v0, %hi(D_800F6C00)
/* 02FD78 800301C8 004B1021 */  addu        $v0, $v0, $t3
/* 02FD7C 800301CC 03E00008 */  jr          $ra
/* 02FD80 800301D0 94426C00 */   lhu        $v0, %lo(D_800F6C00)($v0)
glabel L800301D4
/* 02FD84 800301D4 000460C0 */  sll         $t4, $a0, 3
/* 02FD88 800301D8 3C0D800F */  lui         $t5, %hi(D_800F6460)
/* 02FD8C 800301DC 01AC6821 */  addu        $t5, $t5, $t4
/* 02FD90 800301E0 8DAD6460 */  lw          $t5, %lo(D_800F6460)($t5)
/* 02FD94 800301E4 3C02800F */  lui         $v0, %hi(D_800F6C00)
/* 02FD98 800301E8 004D1021 */  addu        $v0, $v0, $t5
/* 02FD9C 800301EC 03E00008 */  jr          $ra
/* 02FDA0 800301F0 80426C00 */   lb         $v0, %lo(D_800F6C00)($v0)
glabel L800301F4
/* 02FDA4 800301F4 000470C0 */  sll         $t6, $a0, 3
/* 02FDA8 800301F8 3C0F800F */  lui         $t7, %hi(D_800F6460)
/* 02FDAC 800301FC 01EE7821 */  addu        $t7, $t7, $t6
/* 02FDB0 80030200 8DEF6460 */  lw          $t7, %lo(D_800F6460)($t7)
/* 02FDB4 80030204 3C02800F */  lui         $v0, %hi(D_800F6C00)
/* 02FDB8 80030208 004F1021 */  addu        $v0, $v0, $t7
/* 02FDBC 8003020C 03E00008 */  jr          $ra
/* 02FDC0 80030210 90426C00 */   lbu        $v0, %lo(D_800F6C00)($v0)
glabel L80030214
/* 02FDC4 80030214 3C19800F */  lui         $t9, %hi(D_800F6460)
/* 02FDC8 80030218 00055880 */  sll         $t3, $a1, 2
/* 02FDCC 8003021C 27396460 */  addiu       $t9, $t9, %lo(D_800F6460)
/* 02FDD0 80030220 0004C0C0 */  sll         $t8, $a0, 3
/* 02FDD4 80030224 01655823 */  subu        $t3, $t3, $a1
/* 02FDD8 80030228 03191821 */  addu        $v1, $t8, $t9
/* 02FDDC 8003022C 000B5880 */  sll         $t3, $t3, 2
/* 02FDE0 80030230 3C0C800A */  lui         $t4, %hi(D_8009FB44)
/* 02FDE4 80030234 8C680000 */  lw          $t0, 0x0($v1)
/* 02FDE8 80030238 018B6021 */  addu        $t4, $t4, $t3
/* 02FDEC 8003023C 8D8CFB44 */  lw          $t4, %lo(D_8009FB44)($t4)
/* 02FDF0 80030240 3C09800F */  lui         $t1, %hi(D_800F6C00)
/* 02FDF4 80030244 01284821 */  addu        $t1, $t1, $t0
/* 02FDF8 80030248 91296C00 */  lbu         $t1, %lo(D_800F6C00)($t1)
/* 02FDFC 8003024C 8C6A0004 */  lw          $t2, 0x4($v1)
/* 02FE00 80030250 240E0001 */  addiu       $t6, $zero, 0x1
/* 02FE04 80030254 258D001F */  addiu       $t5, $t4, 0x1f
/* 02FE08 80030258 01AE7804 */  sllv        $t7, $t6, $t5
/* 02FE0C 8003025C 000FC040 */  sll         $t8, $t7, 1
/* 02FE10 80030260 2719FFFF */  addiu       $t9, $t8, -0x1
/* 02FE14 80030264 01493007 */  srav        $a2, $t1, $t2
/* 02FE18 80030268 03E00008 */  jr          $ra
/* 02FE1C 8003026C 00D91024 */   and        $v0, $a2, $t9
.L80030270:
/* 02FE20 80030270 03E00008 */  jr          $ra
/* 02FE24 80030274 00000000 */   nop

glabel func_80030278 # 17
/* 02FE28 80030278 00047080 */  sll         $t6, $a0, 2
/* 02FE2C 8003027C 3C03800A */  lui         $v1, %hi(D_8009FBA4)
/* 02FE30 80030280 006E1821 */  addu        $v1, $v1, $t6
/* 02FE34 80030284 8C63FBA4 */  lw          $v1, %lo(D_8009FBA4)($v1)
/* 02FE38 80030288 3C18800A */  lui         $t8, %hi(D_8009FB44)
/* 02FE3C 8003028C 2718FB44 */  addiu       $t8, $t8, %lo(D_8009FB44)
/* 02FE40 80030290 00037880 */  sll         $t7, $v1, 2
/* 02FE44 80030294 01E37823 */  subu        $t7, $t7, $v1
/* 02FE48 80030298 000F7880 */  sll         $t7, $t7, 2
/* 02FE4C 8003029C 01F83021 */  addu        $a2, $t7, $t8
/* 02FE50 800302A0 8CC70004 */  lw          $a3, 0x4($a2)
/* 02FE54 800302A4 00C01025 */  move        $v0, $a2
/* 02FE58 800302A8 0003C880 */  sll         $t9, $v1, 2
/* 02FE5C 800302AC 00A7082A */  slt         $at, $a1, $a3
/* 02FE60 800302B0 50200004 */  beql        $at, $zero, .L800302C4
/* 02FE64 800302B4 8C470008 */   lw         $a3, 0x8($v0)
/* 02FE68 800302B8 10000006 */  b           .L800302D4
/* 02FE6C 800302BC 00E02825 */   move       $a1, $a3
/* 02FE70 800302C0 8C470008 */  lw          $a3, 0x8($v0)
.L800302C4:
/* 02FE74 800302C4 00E5082A */  slt         $at, $a3, $a1
/* 02FE78 800302C8 50200003 */  beql        $at, $zero, .L800302D8
/* 02FE7C 800302CC 2C610008 */   sltiu      $at, $v1, 0x8
/* 02FE80 800302D0 00E02825 */  move        $a1, $a3
.L800302D4:
/* 02FE84 800302D4 2C610008 */  sltiu       $at, $v1, 0x8
.L800302D8:
/* 02FE88 800302D8 10200051 */  beqz        $at, .L80030420
/* 02FE8C 800302DC 3C01800B */   lui        $at, %hi(jtbl_800AB0F4)
/* 02FE90 800302E0 00390821 */  addu        $at, $at, $t9
/* 02FE94 800302E4 8C39B0F4 */  lw          $t9, %lo(jtbl_800AB0F4)($at)
/* 02FE98 800302E8 03200008 */  jr          $t9
/* 02FE9C 800302EC 00000000 */   nop
glabel L800302F0
/* 02FEA0 800302F0 000458C0 */  sll         $t3, $a0, 3
/* 02FEA4 800302F4 3C0C800F */  lui         $t4, %hi(D_800F6460)
/* 02FEA8 800302F8 018B6021 */  addu        $t4, $t4, $t3
/* 02FEAC 800302FC 8D8C6460 */  lw          $t4, %lo(D_800F6460)($t4)
/* 02FEB0 80030300 3C0A800F */  lui         $t2, %hi(D_800F6C00)
/* 02FEB4 80030304 254A6C00 */  addiu       $t2, $t2, %lo(D_800F6C00)
/* 02FEB8 80030308 014C6821 */  addu        $t5, $t2, $t4
/* 02FEBC 8003030C ADA50000 */  sw          $a1, 0x0($t5)
/* 02FEC0 80030310 03E00008 */  jr          $ra
/* 02FEC4 80030314 00A01025 */   move       $v0, $a1
glabel L80030318
/* 02FEC8 80030318 000470C0 */  sll         $t6, $a0, 3
/* 02FECC 8003031C 3C0F800F */  lui         $t7, %hi(D_800F6460)
/* 02FED0 80030320 01EE7821 */  addu        $t7, $t7, $t6
/* 02FED4 80030324 8DEF6460 */  lw          $t7, %lo(D_800F6460)($t7)
/* 02FED8 80030328 3C0A800F */  lui         $t2, %hi(D_800F6C00)
/* 02FEDC 8003032C 254A6C00 */  addiu       $t2, $t2, %lo(D_800F6C00)
/* 02FEE0 80030330 014FC021 */  addu        $t8, $t2, $t7
/* 02FEE4 80030334 A7050000 */  sh          $a1, 0x0($t8)
/* 02FEE8 80030338 03E00008 */  jr          $ra
/* 02FEEC 8003033C 00A01025 */   move       $v0, $a1
glabel L80030340
/* 02FEF0 80030340 0004C8C0 */  sll         $t9, $a0, 3
/* 02FEF4 80030344 3C0B800F */  lui         $t3, %hi(D_800F6460)
/* 02FEF8 80030348 01795821 */  addu        $t3, $t3, $t9
/* 02FEFC 8003034C 8D6B6460 */  lw          $t3, %lo(D_800F6460)($t3)
/* 02FF00 80030350 3C0A800F */  lui         $t2, %hi(D_800F6C00)
/* 02FF04 80030354 254A6C00 */  addiu       $t2, $t2, %lo(D_800F6C00)
/* 02FF08 80030358 014B6021 */  addu        $t4, $t2, $t3
/* 02FF0C 8003035C A5850000 */  sh          $a1, 0x0($t4)
/* 02FF10 80030360 03E00008 */  jr          $ra
/* 02FF14 80030364 00A01025 */   move       $v0, $a1
glabel L80030368
/* 02FF18 80030368 000468C0 */  sll         $t5, $a0, 3
/* 02FF1C 8003036C 3C0E800F */  lui         $t6, %hi(D_800F6460)
/* 02FF20 80030370 01CD7021 */  addu        $t6, $t6, $t5
/* 02FF24 80030374 8DCE6460 */  lw          $t6, %lo(D_800F6460)($t6)
/* 02FF28 80030378 3C0A800F */  lui         $t2, %hi(D_800F6C00)
/* 02FF2C 8003037C 254A6C00 */  addiu       $t2, $t2, %lo(D_800F6C00)
/* 02FF30 80030380 014E7821 */  addu        $t7, $t2, $t6
/* 02FF34 80030384 A1E50000 */  sb          $a1, 0x0($t7)
/* 02FF38 80030388 03E00008 */  jr          $ra
/* 02FF3C 8003038C 00A01025 */   move       $v0, $a1
glabel L80030390
/* 02FF40 80030390 0004C0C0 */  sll         $t8, $a0, 3
/* 02FF44 80030394 3C19800F */  lui         $t9, %hi(D_800F6460)
/* 02FF48 80030398 0338C821 */  addu        $t9, $t9, $t8
/* 02FF4C 8003039C 8F396460 */  lw          $t9, %lo(D_800F6460)($t9)
/* 02FF50 800303A0 3C0A800F */  lui         $t2, %hi(D_800F6C00)
/* 02FF54 800303A4 254A6C00 */  addiu       $t2, $t2, %lo(D_800F6C00)
/* 02FF58 800303A8 01595821 */  addu        $t3, $t2, $t9
/* 02FF5C 800303AC A1650000 */  sb          $a1, 0x0($t3)
/* 02FF60 800303B0 03E00008 */  jr          $ra
/* 02FF64 800303B4 00A01025 */   move       $v0, $a1
glabel L800303B8
/* 02FF68 800303B8 8CCE0000 */  lw          $t6, 0x0($a2)
/* 02FF6C 800303BC 3C0D800F */  lui         $t5, %hi(D_800F6460)
/* 02FF70 800303C0 25AD6460 */  addiu       $t5, $t5, %lo(D_800F6460)
/* 02FF74 800303C4 000460C0 */  sll         $t4, $a0, 3
/* 02FF78 800303C8 24180001 */  addiu       $t8, $zero, 0x1
/* 02FF7C 800303CC 25CF001F */  addiu       $t7, $t6, 0x1f
/* 02FF80 800303D0 01F8C804 */  sllv        $t9, $t8, $t7
/* 02FF84 800303D4 018D1021 */  addu        $v0, $t4, $t5
/* 02FF88 800303D8 8C580000 */  lw          $t8, 0x0($v0)
/* 02FF8C 800303DC 3C0A800F */  lui         $t2, %hi(D_800F6C00)
/* 02FF90 800303E0 8C490004 */  lw          $t1, 0x4($v0)
/* 02FF94 800303E4 254A6C00 */  addiu       $t2, $t2, %lo(D_800F6C00)
/* 02FF98 800303E8 00195840 */  sll         $t3, $t9, 1
/* 02FF9C 800303EC 01584021 */  addu        $t0, $t2, $t8
/* 02FFA0 800303F0 910F0000 */  lbu         $t7, 0x0($t0)
/* 02FFA4 800303F4 256CFFFF */  addiu       $t4, $t3, -0x1
/* 02FFA8 800303F8 012C6804 */  sllv        $t5, $t4, $t1
/* 02FFAC 800303FC 01A0C827 */  not         $t9, $t5
/* 02FFB0 80030400 01F95824 */  and         $t3, $t7, $t9
/* 02FFB4 80030404 A10B0000 */  sb          $t3, 0x0($t0)
/* 02FFB8 80030408 8C4C0000 */  lw          $t4, 0x0($v0)
/* 02FFBC 8003040C 01257004 */  sllv        $t6, $a1, $t1
/* 02FFC0 80030410 014C4021 */  addu        $t0, $t2, $t4
/* 02FFC4 80030414 910D0000 */  lbu         $t5, 0x0($t0)
/* 02FFC8 80030418 01AE7025 */  or          $t6, $t5, $t6
/* 02FFCC 8003041C A10E0000 */  sb          $t6, 0x0($t0)
.L80030420:
/* 02FFD0 80030420 03E00008 */  jr          $ra
/* 02FFD4 80030424 00A01025 */   move       $v0, $a1

glabel func_80030428 # 18
/* 02FFD8 80030428 00047080 */  sll         $t6, $a0, 2
/* 02FFDC 8003042C 3C0F800A */  lui         $t7, %hi(D_8009FBA4)
/* 02FFE0 80030430 01EE7821 */  addu        $t7, $t7, $t6
/* 02FFE4 80030434 8DEFFBA4 */  lw          $t7, %lo(D_8009FBA4)($t7)
/* 02FFE8 80030438 3C19800A */  lui         $t9, %hi(D_8009FB44)
/* 02FFEC 8003043C 2739FB44 */  addiu       $t9, $t9, %lo(D_8009FB44)
/* 02FFF0 80030440 000FC080 */  sll         $t8, $t7, 2
/* 02FFF4 80030444 030FC023 */  subu        $t8, $t8, $t7
/* 02FFF8 80030448 0018C080 */  sll         $t8, $t8, 2
/* 02FFFC 8003044C 03191821 */  addu        $v1, $t8, $t9
/* 030000 80030450 03E00008 */  jr          $ra
/* 030004 80030454 8C620004 */   lw         $v0, 0x4($v1)

glabel func_80030458 # 19
/* 030008 80030458 00047080 */  sll         $t6, $a0, 2
/* 03000C 8003045C 3C0F800A */  lui         $t7, %hi(D_8009FBA4)
/* 030010 80030460 01EE7821 */  addu        $t7, $t7, $t6
/* 030014 80030464 8DEFFBA4 */  lw          $t7, %lo(D_8009FBA4)($t7)
/* 030018 80030468 3C19800A */  lui         $t9, %hi(D_8009FB44)
/* 03001C 8003046C 2739FB44 */  addiu       $t9, $t9, %lo(D_8009FB44)
/* 030020 80030470 000FC080 */  sll         $t8, $t7, 2
/* 030024 80030474 030FC023 */  subu        $t8, $t8, $t7
/* 030028 80030478 0018C080 */  sll         $t8, $t8, 2
/* 03002C 8003047C 03191821 */  addu        $v1, $t8, $t9
/* 030030 80030480 03E00008 */  jr          $ra
/* 030034 80030484 8C620008 */   lw         $v0, 0x8($v1)

glabel func_80030488 # 20
/* 030038 80030488 00047040 */  sll         $t6, $a0, 1
/* 03003C 8003048C 05C1000F */  bgez        $t6, .L800304CC
/* 030040 80030490 00801025 */   move       $v0, $a0
/* 030044 80030494 3C013FFF */  lui         $at, (0x3FFFFFFF >> 16)
/* 030048 80030498 3421FFFF */  ori         $at, $at, (0x3FFFFFFF & 0xFFFF)
/* 03004C 8003049C 3C19800B */  lui         $t9, %hi(D_800B2C78)
/* 030050 800304A0 8F392C78 */  lw          $t9, %lo(D_800B2C78)($t9)
/* 030054 800304A4 00817824 */  and         $t7, $a0, $at
/* 030058 800304A8 000FC080 */  sll         $t8, $t7, 2
/* 03005C 800304AC 030FC023 */  subu        $t8, $t8, $t7
/* 030060 800304B0 0018C140 */  sll         $t8, $t8, 5
/* 030064 800304B4 00194080 */  sll         $t0, $t9, 2
/* 030068 800304B8 03084821 */  addu        $t1, $t8, $t0
/* 03006C 800304BC 3C02800A */  lui         $v0, %hi(D_8009FF78)
/* 030070 800304C0 00491021 */  addu        $v0, $v0, $t1
/* 030074 800304C4 03E00008 */  jr          $ra
/* 030078 800304C8 8C42FF78 */   lw         $v0, %lo(D_8009FF78)($v0)
.L800304CC:
/* 03007C 800304CC 03E00008 */  jr          $ra
/* 030080 800304D0 00000000 */   nop

glabel func_800304D4 # 21
/* 030084 800304D4 03E00008 */  jr          $ra
/* 030088 800304D8 00000000 */   nop

glabel func_800304DC # 22
/* 03008C 800304DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030090 800304E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 030094 800304E4 0C00C122 */  jal         func_80030488
/* 030098 800304E8 00000000 */   nop
/* 03009C 800304EC 0C00C10A */  jal         func_80030428
/* 0300A0 800304F0 00402025 */   move       $a0, $v0
/* 0300A4 800304F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0300A8 800304F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0300AC 800304FC 03E00008 */  jr          $ra
/* 0300B0 80030500 00000000 */   nop

glabel func_80030504 # 23
/* 0300B4 80030504 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0300B8 80030508 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0300BC 8003050C 0C00C122 */  jal         func_80030488
/* 0300C0 80030510 00000000 */   nop
/* 0300C4 80030514 0C00C116 */  jal         func_80030458
/* 0300C8 80030518 00402025 */   move       $a0, $v0
/* 0300CC 8003051C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0300D0 80030520 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0300D4 80030524 03E00008 */  jr          $ra
/* 0300D8 80030528 00000000 */   nop

glabel func_8003052C # 24
/* 0300DC 8003052C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0300E0 80030530 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0300E4 80030534 0C00C122 */  jal         func_80030488
/* 0300E8 80030538 00000000 */   nop
/* 0300EC 8003053C 0C00C050 */  jal         func_80030140
/* 0300F0 80030540 00402025 */   move       $a0, $v0
/* 0300F4 80030544 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0300F8 80030548 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0300FC 8003054C 03E00008 */  jr          $ra
/* 030100 80030550 00000000 */   nop

glabel func_80030554 # 25
/* 030104 80030554 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030108 80030558 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03010C 8003055C 0C00C122 */  jal         func_80030488
/* 030110 80030560 AFA5001C */   sw         $a1, 0x1c($sp)
/* 030114 80030564 00402025 */  move        $a0, $v0
/* 030118 80030568 0C00C09E */  jal         func_80030278
/* 03011C 8003056C 8FA5001C */   lw         $a1, 0x1c($sp)
/* 030120 80030570 8FBF0014 */  lw          $ra, 0x14($sp)
/* 030124 80030574 27BD0018 */  addiu       $sp, $sp, 0x18
/* 030128 80030578 03E00008 */  jr          $ra
/* 03012C 8003057C 00000000 */   nop

glabel func_80030580 # 26
/* 030130 80030580 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030134 80030584 AFBF0014 */  sw          $ra, 0x14($sp)
/* 030138 80030588 AFA40018 */  sw          $a0, 0x18($sp)
/* 03013C 8003058C 0C00C14B */  jal         func_8003052C
/* 030140 80030590 AFA5001C */   sw         $a1, 0x1c($sp)
/* 030144 80030594 8FAE001C */  lw          $t6, 0x1c($sp)
/* 030148 80030598 8FA40018 */  lw          $a0, 0x18($sp)
/* 03014C 8003059C 0C00C155 */  jal         func_80030554
/* 030150 800305A0 004E2821 */   addu       $a1, $v0, $t6
/* 030154 800305A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 030158 800305A8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03015C 800305AC 03E00008 */  jr          $ra
/* 030160 800305B0 00000000 */   nop

glabel func_800305B4 # 27
/* 030164 800305B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030168 800305B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03016C 800305BC 0C00C122 */  jal         func_80030488
/* 030170 800305C0 00000000 */   nop
/* 030174 800305C4 2401FFFF */  addiu       $at, $zero, -0x1
/* 030178 800305C8 14410003 */  bne         $v0, $at, .L800305D8
/* 03017C 800305CC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 030180 800305D0 10000002 */  b           .L800305DC
/* 030184 800305D4 00001025 */   move       $v0, $zero
.L800305D8:
/* 030188 800305D8 24020001 */  addiu       $v0, $zero, 0x1
.L800305DC:
/* 03018C 800305DC 03E00008 */  jr          $ra
/* 030190 800305E0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_800305E4 # 28
/* 030194 800305E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030198 800305E8 3C02800F */  lui         $v0, %hi(D_800F6C74)
/* 03019C 800305EC 24426C74 */  addiu       $v0, $v0, %lo(D_800F6C74)
/* 0301A0 800305F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0301A4 800305F4 3C06800A */  lui         $a2, %hi(D_8009FB40)
/* 0301A8 800305F8 24C6FB40 */  addiu       $a2, $a2, %lo(D_8009FB40)
/* 0301AC 800305FC 90440000 */  lbu         $a0, 0x0($v0)
/* 0301B0 80030600 90450003 */  lbu         $a1, 0x3($v0)
/* 0301B4 80030604 0C00064B */  jal         func_8000192C
/* 0301B8 80030608 24070001 */   addiu      $a3, $zero, 0x1
/* 0301BC 8003060C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0301C0 80030610 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0301C4 80030614 03E00008 */  jr          $ra
/* 0301C8 80030618 00000000 */   nop

glabel func_8003061C # 29
/* 0301CC 8003061C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0301D0 80030620 3C02800F */  lui         $v0, %hi(D_800F6C74)
/* 0301D4 80030624 24426C74 */  addiu       $v0, $v0, %lo(D_800F6C74)
/* 0301D8 80030628 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0301DC 8003062C 3C06800A */  lui         $a2, %hi(D_8009FB40)
/* 0301E0 80030630 24C6FB40 */  addiu       $a2, $a2, %lo(D_8009FB40)
/* 0301E4 80030634 90440000 */  lbu         $a0, 0x0($v0)
/* 0301E8 80030638 90450003 */  lbu         $a1, 0x3($v0)
/* 0301EC 8003063C 0C00062A */  jal         func_800018A8
/* 0301F0 80030640 24070001 */   addiu      $a3, $zero, 0x1
/* 0301F4 80030644 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0301F8 80030648 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0301FC 8003064C 03E00008 */  jr          $ra
/* 030200 80030650 00000000 */   nop

glabel func_80030654 # 30
/* 030204 80030654 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030208 80030658 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03020C 8003065C AFA40018 */  sw          $a0, 0x18($sp)
/* 030210 80030660 3C05800F */  lui         $a1, %hi(D_800F3F10)
/* 030214 80030664 8CA53F10 */  lw          $a1, %lo(D_800F3F10)($a1)
/* 030218 80030668 0C00C155 */  jal         func_80030554
/* 03021C 8003066C 24040001 */   addiu      $a0, $zero, 0x1
/* 030220 80030670 3C05800F */  lui         $a1, %hi(D_800F3F16)
/* 030224 80030674 90A53F16 */  lbu         $a1, %lo(D_800F3F16)($a1)
/* 030228 80030678 0C00C155 */  jal         func_80030554
/* 03022C 8003067C 24040002 */   addiu      $a0, $zero, 0x2
/* 030230 80030680 3C05800F */  lui         $a1, %hi(D_800F3F1C)
/* 030234 80030684 8CA53F1C */  lw          $a1, %lo(D_800F3F1C)($a1)
/* 030238 80030688 0C00C155 */  jal         func_80030554
/* 03023C 8003068C 24040003 */   addiu      $a0, $zero, 0x3
/* 030240 80030690 0C00BFCA */  jal         func_8002FF28
/* 030244 80030694 8FA40018 */   lw         $a0, 0x18($sp)
/* 030248 80030698 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03024C 8003069C 3C03800F */  lui         $v1, %hi(D_800F6C74)
/* 030250 800306A0 24636C74 */  addiu       $v1, $v1, %lo(D_800F6C74)
/* 030254 800306A4 0062C021 */  addu        $t8, $v1, $v0
/* 030258 800306A8 3C06800F */  lui         $a2, %hi(D_800F6C00)
/* 03025C 800306AC 006E7821 */  addu        $t7, $v1, $t6
/* 030260 800306B0 91E40000 */  lbu         $a0, 0x0($t7)
/* 030264 800306B4 24C66C00 */  addiu       $a2, $a2, %lo(D_800F6C00)
/* 030268 800306B8 93050000 */  lbu         $a1, 0x0($t8)
/* 03026C 800306BC 0C00064B */  jal         func_8000192C
/* 030270 800306C0 24070074 */   addiu      $a3, $zero, 0x74
/* 030274 800306C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 030278 800306C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03027C 800306CC 03E00008 */  jr          $ra
/* 030280 800306D0 00000000 */   nop

glabel func_800306D4 # 31
/* 030284 800306D4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030288 800306D8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03028C 800306DC 0C00BFCA */  jal         func_8002FF28
/* 030290 800306E0 AFA40018 */   sw         $a0, 0x18($sp)
/* 030294 800306E4 8FAE0018 */  lw          $t6, 0x18($sp)
/* 030298 800306E8 3C03800F */  lui         $v1, %hi(D_800F6C74)
/* 03029C 800306EC 24636C74 */  addiu       $v1, $v1, %lo(D_800F6C74)
/* 0302A0 800306F0 0062C021 */  addu        $t8, $v1, $v0
/* 0302A4 800306F4 3C06800F */  lui         $a2, %hi(D_800F6C00)
/* 0302A8 800306F8 006E7821 */  addu        $t7, $v1, $t6
/* 0302AC 800306FC 91E40000 */  lbu         $a0, 0x0($t7)
/* 0302B0 80030700 24C66C00 */  addiu       $a2, $a2, %lo(D_800F6C00)
/* 0302B4 80030704 93050000 */  lbu         $a1, 0x0($t8)
/* 0302B8 80030708 0C00062A */  jal         func_800018A8
/* 0302BC 8003070C 24070074 */   addiu      $a3, $zero, 0x74
/* 0302C0 80030710 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0302C4 80030714 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0302C8 80030718 03E00008 */  jr          $ra
/* 0302CC 8003071C 00000000 */   nop

glabel func_80030720 # 32
/* 0302D0 80030720 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0302D4 80030724 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0302D8 80030728 0C00C14B */  jal         func_8003052C
/* 0302DC 8003072C 2404000C */   addiu      $a0, $zero, 0xc
/* 0302E0 80030730 0C045787 */  jal         func_80115E1C
/* 0302E4 80030734 00402025 */   move       $a0, $v0
/* 0302E8 80030738 0C00C14B */  jal         func_8003052C
/* 0302EC 8003073C 24040001 */   addiu      $a0, $zero, 0x1
/* 0302F0 80030740 3C01800F */  lui         $at, %hi(D_800F3F10)
/* 0302F4 80030744 AC223F10 */  sw          $v0, %lo(D_800F3F10)($at)
/* 0302F8 80030748 0C00C14B */  jal         func_8003052C
/* 0302FC 8003074C 24040002 */   addiu      $a0, $zero, 0x2
/* 030300 80030750 3C01800F */  lui         $at, %hi(D_800F3F16)
/* 030304 80030754 A0223F16 */  sb          $v0, %lo(D_800F3F16)($at)
/* 030308 80030758 0C00C14B */  jal         func_8003052C
/* 03030C 8003075C 24040003 */   addiu      $a0, $zero, 0x3
/* 030310 80030760 3C01800F */  lui         $at, %hi(D_800F3F1C)
/* 030314 80030764 AC223F1C */  sw          $v0, %lo(D_800F3F1C)($at)
/* 030318 80030768 0C00C14B */  jal         func_8003052C
/* 03031C 8003076C 24040009 */   addiu      $a0, $zero, 0x9
/* 030320 80030770 240E0002 */  addiu       $t6, $zero, 0x2
/* 030324 80030774 0C007792 */  jal         func_8001DE48
/* 030328 80030778 01C22023 */   subu       $a0, $t6, $v0
/* 03032C 8003077C 3C013F80 */  lui         $at, 0x3f80
/* 030330 80030780 44816000 */  mtc1        $at, $f12
/* 030334 80030784 0C04580A */  jal         func_80116028
/* 030338 80030788 00000000 */   nop
/* 03033C 8003078C 3C013F80 */  lui         $at, 0x3f80
/* 030340 80030790 44816000 */  mtc1        $at, $f12
/* 030344 80030794 0C045836 */  jal         func_801160D8
/* 030348 80030798 00000000 */   nop
/* 03034C 8003079C 0C00C14B */  jal         func_8003052C
/* 030350 800307A0 00002025 */   move       $a0, $zero
/* 030354 800307A4 0C00A21F */  jal         func_8002887C
/* 030358 800307A8 00402025 */   move       $a0, $v0
/* 03035C 800307AC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 030360 800307B0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 030364 800307B4 03E00008 */  jr          $ra
/* 030368 800307B8 00000000 */   nop

glabel func_800307BC # 33
/* 03036C 800307BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 030370 800307C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 030374 800307C4 3C04800F */  lui         $a0, %hi(D_800F6C00)
/* 030378 800307C8 24846C00 */  addiu       $a0, $a0, %lo(D_800F6C00)
/* 03037C 800307CC 0C013C58 */  jal         func_8004F160
/* 030380 800307D0 24050074 */   addiu      $a1, $zero, 0x74
/* 030384 800307D4 24040044 */  addiu       $a0, $zero, 0x44
/* 030388 800307D8 0C00C155 */  jal         func_80030554
/* 03038C 800307DC 24050001 */   addiu      $a1, $zero, 0x1
/* 030390 800307E0 2404003B */  addiu       $a0, $zero, 0x3b
/* 030394 800307E4 0C00C155 */  jal         func_80030554
/* 030398 800307E8 24050001 */   addiu      $a1, $zero, 0x1
/* 03039C 800307EC 24040056 */  addiu       $a0, $zero, 0x56
/* 0303A0 800307F0 0C00C155 */  jal         func_80030554
/* 0303A4 800307F4 24050001 */   addiu      $a1, $zero, 0x1
/* 0303A8 800307F8 0C00C141 */  jal         func_80030504
/* 0303AC 800307FC 2404000A */   addiu      $a0, $zero, 0xa
/* 0303B0 80030800 2404000A */  addiu       $a0, $zero, 0xa
/* 0303B4 80030804 0C00C155 */  jal         func_80030554
/* 0303B8 80030808 00402825 */   move       $a1, $v0
/* 0303BC 8003080C 0C00C141 */  jal         func_80030504
/* 0303C0 80030810 2404000B */   addiu      $a0, $zero, 0xb
/* 0303C4 80030814 2404000B */  addiu       $a0, $zero, 0xb
/* 0303C8 80030818 04410003 */  bgez        $v0, .L80030828
/* 0303CC 8003081C 00022843 */   sra        $a1, $v0, 1
/* 0303D0 80030820 24410001 */  addiu       $at, $v0, 0x1
/* 0303D4 80030824 00012843 */  sra         $a1, $at, 1
.L80030828:
/* 0303D8 80030828 0C00C155 */  jal         func_80030554
/* 0303DC 8003082C 00000000 */   nop
/* 0303E0 80030830 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0303E4 80030834 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0303E8 80030838 03E00008 */  jr          $ra
/* 0303EC 8003083C 00000000 */   nop

glabel func_80030840 # 34
/* 0303F0 80030840 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0303F4 80030844 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0303F8 80030848 3C04800F */  lui         $a0, %hi(D_800F6C00)
/* 0303FC 8003084C 24846C00 */  addiu       $a0, $a0, %lo(D_800F6C00)
/* 030400 80030850 0C013C58 */  jal         func_8004F160
/* 030404 80030854 24050074 */   addiu      $a1, $zero, 0x74
/* 030408 80030858 3C04800F */  lui         $a0, %hi(D_800F6460)
/* 03040C 8003085C 24846460 */  addiu       $a0, $a0, %lo(D_800F6460)
/* 030410 80030860 0C013C58 */  jal         func_8004F160
/* 030414 80030864 240507A0 */   addiu      $a1, $zero, 0x7a0
/* 030418 80030868 0C00BFDF */  jal         func_8002FF7C
/* 03041C 8003086C 00000000 */   nop
/* 030420 80030870 0C00C135 */  jal         func_800304D4
/* 030424 80030874 00000000 */   nop
/* 030428 80030878 0C00BFE3 */  jal         func_8002FF8C
/* 03042C 8003087C 00000000 */   nop
/* 030430 80030880 0C00BFE1 */  jal         func_8002FF84
/* 030434 80030884 00000000 */   nop
/* 030438 80030888 0C00C1EF */  jal         func_800307BC
/* 03043C 8003088C 00000000 */   nop
/* 030440 80030890 0C00BF98 */  jal         func_8002FE60
/* 030444 80030894 00000000 */   nop
/* 030448 80030898 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03044C 8003089C 3C01800A */  lui         $at, %hi(D_8009FB40)
/* 030450 800308A0 A020FB40 */  sb          $zero, %lo(D_8009FB40)($at)
/* 030454 800308A4 03E00008 */  jr          $ra
/* 030458 800308A8 27BD0018 */   addiu      $sp, $sp, 0x18
/* 03045C 800308AC 00000000 */  nop
