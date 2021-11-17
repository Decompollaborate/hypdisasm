.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004F6A0 # 0
/* 04F250 8004F6A0 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04F254 8004F6A4 AFB00040 */  sw          $s0, 0x40($sp)
/* 04F258 8004F6A8 00808025 */  move        $s0, $a0
/* 04F25C 8004F6AC AFBF0064 */  sw          $ra, 0x64($sp)
/* 04F260 8004F6B0 AFB60058 */  sw          $s6, 0x58($sp)
/* 04F264 8004F6B4 AFA5006C */  sw          $a1, 0x6c($sp)
/* 04F268 8004F6B8 240E002C */  addiu       $t6, $zero, 0x2c
/* 04F26C 8004F6BC 00C0B025 */  move        $s6, $a2
/* 04F270 8004F6C0 AFBE0060 */  sw          $fp, 0x60($sp)
/* 04F274 8004F6C4 AFB7005C */  sw          $s7, 0x5c($sp)
/* 04F278 8004F6C8 AFB50054 */  sw          $s5, 0x54($sp)
/* 04F27C 8004F6CC AFB40050 */  sw          $s4, 0x50($sp)
/* 04F280 8004F6D0 AFB3004C */  sw          $s3, 0x4c($sp)
/* 04F284 8004F6D4 AFB20048 */  sw          $s2, 0x48($sp)
/* 04F288 8004F6D8 AFB10044 */  sw          $s1, 0x44($sp)
/* 04F28C 8004F6DC F7BA0038 */  sdc1        $f26, 0x38($sp)
/* 04F290 8004F6E0 F7B80030 */  sdc1        $f24, 0x30($sp)
/* 04F294 8004F6E4 F7B60028 */  sdc1        $f22, 0x28($sp)
/* 04F298 8004F6E8 F7B40020 */  sdc1        $f20, 0x20($sp)
/* 04F29C 8004F6EC AFAE0010 */  sw          $t6, 0x10($sp)
/* 04F2A0 8004F6F0 00002825 */  move        $a1, $zero
/* 04F2A4 8004F6F4 00002025 */  move        $a0, $zero
/* 04F2A8 8004F6F8 0C014E68 */  jal         func_800539A0
/* 04F2AC 8004F6FC 24070001 */   addiu      $a3, $zero, 0x1
/* 04F2B0 8004F700 8FA3006C */  lw          $v1, 0x6c($sp)
/* 04F2B4 8004F704 AE020000 */  sw          $v0, 0x0($s0)
/* 04F2B8 8004F708 3C13800A */  lui         $s3, %hi(D_8009DC48)
/* 04F2BC 8004F70C 906F001C */  lbu         $t7, 0x1c($v1)
/* 04F2C0 8004F710 0040A825 */  move        $s5, $v0
/* 04F2C4 8004F714 2673DC48 */  addiu       $s3, $s3, %lo(D_8009DC48)
/* 04F2C8 8004F718 25F8FFFF */  addiu       $t8, $t7, -0x1
/* 04F2CC 8004F71C 2F010006 */  sltiu       $at, $t8, 0x6
/* 04F2D0 8004F720 10200017 */  beq         $at, $zero, .L8004F780
/* 04F2D4 8004F724 0018C080 */   sll        $t8, $t8, 2
/* 04F2D8 8004F728 3C01800A */  lui         $at, %hi(jtbl_800A7CE0)
/* 04F2DC 8004F72C 00380821 */  addu        $at, $at, $t8
/* 04F2E0 8004F730 8C387CE0 */  lw          $t8, %lo(jtbl_800A7CE0)($at)
/* 04F2E4 8004F734 03000008 */  jr          $t8
/* 04F2E8 8004F738 00000000 */   nop
glabel L8004F73C
/* 04F2EC 8004F73C 3C13800A */  lui         $s3, %hi(D_8009DAE0)
/* 04F2F0 8004F740 1000000F */  b           .L8004F780
/* 04F2F4 8004F744 2673DAE0 */   addiu      $s3, $s3, %lo(D_8009DAE0)
glabel L8004F748
/* 04F2F8 8004F748 3C13800A */  lui         $s3, %hi(D_8009DB48)
/* 04F2FC 8004F74C 1000000C */  b           .L8004F780
/* 04F300 8004F750 2673DB48 */   addiu      $s3, $s3, %lo(D_8009DB48)
glabel L8004F754
/* 04F304 8004F754 3C13800A */  lui         $s3, %hi(D_8009DBD0)
/* 04F308 8004F758 10000009 */  b           .L8004F780
/* 04F30C 8004F75C 2673DBD0 */   addiu      $s3, $s3, %lo(D_8009DBD0)
glabel L8004F760
/* 04F310 8004F760 3C13800A */  lui         $s3, %hi(D_8009DBF8)
/* 04F314 8004F764 10000006 */  b           .L8004F780
/* 04F318 8004F768 2673DBF8 */   addiu      $s3, $s3, %lo(D_8009DBF8)
glabel L8004F76C
/* 04F31C 8004F76C 3C13800A */  lui         $s3, %hi(D_8009DC20)
/* 04F320 8004F770 10000003 */  b           .L8004F780
/* 04F324 8004F774 2673DC20 */   addiu      $s3, $s3, %lo(D_8009DC20)
glabel L8004F778
/* 04F328 8004F778 10000001 */  b           .L8004F780
/* 04F32C 8004F77C 8C730020 */   lw         $s3, 0x20($v1)
.L8004F780:
/* 04F330 8004F780 8E790000 */  lw          $t9, 0x0($s3)
/* 04F334 8004F784 24090028 */  addiu       $t1, $zero, 0x28
/* 04F338 8004F788 24110002 */  addiu       $s1, $zero, 0x2
/* 04F33C 8004F78C A2B90024 */  sb          $t9, 0x24($s5)
/* 04F340 8004F790 8E680004 */  lw          $t0, 0x4($s3)
/* 04F344 8004F794 00002025 */  move        $a0, $zero
/* 04F348 8004F798 00002825 */  move        $a1, $zero
/* 04F34C 8004F79C AEA8001C */  sw          $t0, 0x1c($s5)
/* 04F350 8004F7A0 AFA90010 */  sw          $t1, 0x10($sp)
/* 04F354 8004F7A4 02C03025 */  move        $a2, $s6
/* 04F358 8004F7A8 0C014E68 */  jal         func_800539A0
/* 04F35C 8004F7AC 332700FF */   andi       $a3, $t9, 0xff
/* 04F360 8004F7B0 AEA20020 */  sw          $v0, 0x20($s5)
/* 04F364 8004F7B4 8EA7001C */  lw          $a3, 0x1c($s5)
/* 04F368 8004F7B8 240A0002 */  addiu       $t2, $zero, 0x2
/* 04F36C 8004F7BC AFAA0010 */  sw          $t2, 0x10($sp)
/* 04F370 8004F7C0 00002025 */  move        $a0, $zero
/* 04F374 8004F7C4 00002825 */  move        $a1, $zero
/* 04F378 8004F7C8 0C014E68 */  jal         func_800539A0
/* 04F37C 8004F7CC 02C03025 */   move       $a2, $s6
/* 04F380 8004F7D0 8EAB001C */  lw          $t3, 0x1c($s5)
/* 04F384 8004F7D4 AEA20014 */  sw          $v0, 0x14($s5)
/* 04F388 8004F7D8 AEA20018 */  sw          $v0, 0x18($s5)
/* 04F38C 8004F7DC 1160000C */  beq         $t3, $zero, .L8004F810
/* 04F390 8004F7E0 00001825 */   move       $v1, $zero
/* 04F394 8004F7E4 8EAC0014 */  lw          $t4, 0x14($s5)
.L8004F7E8:
/* 04F398 8004F7E8 00036840 */  sll         $t5, $v1, 1
/* 04F39C 8004F7EC 24630001 */  addiu       $v1, $v1, 0x1
/* 04F3A0 8004F7F0 018D7021 */  addu        $t6, $t4, $t5
/* 04F3A4 8004F7F4 A5C00000 */  sh          $zero, 0x0($t6)
/* 04F3A8 8004F7F8 8EB8001C */  lw          $t8, 0x1c($s5)
/* 04F3AC 8004F7FC 306FFFFF */  andi        $t7, $v1, 0xffff
/* 04F3B0 8004F800 01E01825 */  move        $v1, $t7
/* 04F3B4 8004F804 01F8082B */  sltu        $at, $t7, $t8
/* 04F3B8 8004F808 5420FFF7 */  bnel        $at, $zero, .L8004F7E8
/* 04F3BC 8004F80C 8EAC0014 */   lw         $t4, 0x14($s5)
.L8004F810:
/* 04F3C0 8004F810 92B90024 */  lbu         $t9, 0x24($s5)
/* 04F3C4 8004F814 0000A025 */  move        $s4, $zero
/* 04F3C8 8004F818 3C013F80 */  lui         $at, 0x3f80
/* 04F3CC 8004F81C 1B20009C */  blez        $t9, .L8004FA90
/* 04F3D0 8004F820 241E0001 */   addiu      $fp, $zero, 0x1
/* 04F3D4 8004F824 4481C000 */  mtc1        $at, $f24
/* 04F3D8 8004F828 3C01447A */  lui         $at, 0x447a
/* 04F3DC 8004F82C 4481B000 */  mtc1        $at, $f22
/* 04F3E0 8004F830 3C01800A */  lui         $at, %hi(D_800A7CF8)
/* 04F3E4 8004F834 4480D000 */  mtc1        $zero, $f26
/* 04F3E8 8004F838 D4347CF8 */  ldc1        $f20, %lo(D_800A7CF8)($at)
/* 04F3EC 8004F83C 24170028 */  addiu       $s7, $zero, 0x28
.L8004F840:
/* 04F3F0 8004F840 02970019 */  multu       $s4, $s7
/* 04F3F4 8004F844 00115080 */  sll         $t2, $s1, 2
/* 04F3F8 8004F848 8EA80020 */  lw          $t0, 0x20($s5)
/* 04F3FC 8004F84C 026A5821 */  addu        $t3, $s3, $t2
/* 04F400 8004F850 8D6C0000 */  lw          $t4, 0x0($t3)
/* 04F404 8004F854 26310001 */  addiu       $s1, $s1, 0x1
/* 04F408 8004F858 322DFFFF */  andi        $t5, $s1, 0xffff
/* 04F40C 8004F85C 000D7080 */  sll         $t6, $t5, 2
/* 04F410 8004F860 026E7821 */  addu        $t7, $s3, $t6
/* 04F414 8004F864 25B10001 */  addiu       $s1, $t5, 0x1
/* 04F418 8004F868 00004812 */  mflo        $t1
/* 04F41C 8004F86C 01098021 */  addu        $s0, $t0, $t1
/* 04F420 8004F870 AE0C0000 */  sw          $t4, 0x0($s0)
/* 04F424 8004F874 8DF80000 */  lw          $t8, 0x0($t7)
/* 04F428 8004F878 3239FFFF */  andi        $t9, $s1, 0xffff
/* 04F42C 8004F87C 00194080 */  sll         $t0, $t9, 2
/* 04F430 8004F880 02684821 */  addu        $t1, $s3, $t0
/* 04F434 8004F884 AE180004 */  sw          $t8, 0x4($s0)
/* 04F438 8004F888 8D2A0000 */  lw          $t2, 0x0($t1)
/* 04F43C 8004F88C 27310001 */  addiu       $s1, $t9, 0x1
/* 04F440 8004F890 322BFFFF */  andi        $t3, $s1, 0xffff
/* 04F444 8004F894 000B6080 */  sll         $t4, $t3, 2
/* 04F448 8004F898 026C6821 */  addu        $t5, $s3, $t4
/* 04F44C 8004F89C A60A000A */  sh          $t2, 0xa($s0)
/* 04F450 8004F8A0 8DAE0000 */  lw          $t6, 0x0($t5)
/* 04F454 8004F8A4 25710001 */  addiu       $s1, $t3, 0x1
/* 04F458 8004F8A8 322FFFFF */  andi        $t7, $s1, 0xffff
/* 04F45C 8004F8AC 000FC080 */  sll         $t8, $t7, 2
/* 04F460 8004F8B0 0278C821 */  addu        $t9, $s3, $t8
/* 04F464 8004F8B4 A60E0008 */  sh          $t6, 0x8($s0)
/* 04F468 8004F8B8 8F280000 */  lw          $t0, 0x0($t9)
/* 04F46C 8004F8BC 25F10001 */  addiu       $s1, $t7, 0x1
/* 04F470 8004F8C0 3229FFFF */  andi        $t1, $s1, 0xffff
/* 04F474 8004F8C4 00095080 */  sll         $t2, $t1, 2
/* 04F478 8004F8C8 026A5821 */  addu        $t3, $s3, $t2
/* 04F47C 8004F8CC A608000C */  sh          $t0, 0xc($s0)
/* 04F480 8004F8D0 8D620000 */  lw          $v0, 0x0($t3)
/* 04F484 8004F8D4 01208825 */  move        $s1, $t1
/* 04F488 8004F8D8 0220C825 */  move        $t9, $s1
/* 04F48C 8004F8DC 10400040 */  beq         $v0, $zero, .L8004F9E0
/* 04F490 8004F8E0 27310002 */   addiu      $s1, $t9, 0x2
/* 04F494 8004F8E4 44822000 */  mtc1        $v0, $f4
/* 04F498 8004F8E8 8FAC006C */  lw          $t4, 0x6c($sp)
/* 04F49C 8004F8EC 8E0F0004 */  lw          $t7, 0x4($s0)
/* 04F4A0 8004F8F0 468021A0 */  cvt.s.w     $f6, $f4
/* 04F4A4 8004F8F4 8D8D0018 */  lw          $t5, 0x18($t4)
/* 04F4A8 8004F8F8 8E180000 */  lw          $t8, 0x0($s0)
/* 04F4AC 8004F8FC 25310001 */  addiu       $s1, $t1, 0x1
/* 04F4B0 8004F900 448D8000 */  mtc1        $t5, $f16
/* 04F4B4 8004F904 322EFFFF */  andi        $t6, $s1, 0xffff
/* 04F4B8 8004F908 46163203 */  div.s       $f8, $f6, $f22
/* 04F4BC 8004F90C 01F8C823 */  subu        $t9, $t7, $t8
/* 04F4C0 8004F910 01C08825 */  move        $s1, $t6
/* 04F4C4 8004F914 00114080 */  sll         $t0, $s1, 2
/* 04F4C8 8004F918 468084A1 */  cvt.d.w     $f18, $f16
/* 04F4CC 8004F91C 02684821 */  addu        $t1, $s3, $t0
/* 04F4D0 8004F920 3C0141F0 */  lui         $at, 0x41f0
/* 04F4D4 8004F924 46004021 */  cvt.d.s     $f0, $f8
/* 04F4D8 8004F928 44994000 */  mtc1        $t9, $f8
/* 04F4DC 8004F92C 46200280 */  add.d       $f10, $f0, $f0
/* 04F4E0 8004F930 46804421 */  cvt.d.w     $f16, $f8
/* 04F4E4 8004F934 46325103 */  div.d       $f4, $f10, $f18
/* 04F4E8 8004F938 462021A0 */  cvt.s.d     $f6, $f4
/* 04F4EC 8004F93C 07210005 */  bgez        $t9, .L8004F954
/* 04F4F0 8004F940 E6060010 */   swc1       $f6, 0x10($s0)
/* 04F4F4 8004F944 44815800 */  mtc1        $at, $f11
/* 04F4F8 8004F948 44805000 */  mtc1        $zero, $f10
/* 04F4FC 8004F94C 00000000 */  nop
/* 04F500 8004F950 462A8400 */  add.d       $f16, $f16, $f10
.L8004F954:
/* 04F504 8004F954 8D2A0000 */  lw          $t2, 0x0($t1)
/* 04F508 8004F958 26310001 */  addiu       $s1, $s1, 0x1
/* 04F50C 8004F95C 322BFFFF */  andi        $t3, $s1, 0xffff
/* 04F510 8004F960 448A9000 */  mtc1        $t2, $f18
/* 04F514 8004F964 E6180014 */  swc1        $f24, 0x14($s0)
/* 04F518 8004F968 AE000018 */  sw          $zero, 0x18($s0)
/* 04F51C 8004F96C 46809120 */  cvt.s.w     $f4, $f18
/* 04F520 8004F970 240C0034 */  addiu       $t4, $zero, 0x34
/* 04F524 8004F974 01608825 */  move        $s1, $t3
/* 04F528 8004F978 00002025 */  move        $a0, $zero
/* 04F52C 8004F97C 00002825 */  move        $a1, $zero
/* 04F530 8004F980 02C03025 */  move        $a2, $s6
/* 04F534 8004F984 460021A1 */  cvt.d.s     $f6, $f4
/* 04F538 8004F988 03C03825 */  move        $a3, $fp
/* 04F53C 8004F98C 46343203 */  div.d       $f8, $f6, $f20
/* 04F540 8004F990 46304282 */  mul.d       $f10, $f8, $f16
/* 04F544 8004F994 462054A0 */  cvt.s.d     $f18, $f10
/* 04F548 8004F998 E612001C */  swc1        $f18, 0x1c($s0)
/* 04F54C 8004F99C 0C014E68 */  jal         func_800539A0
/* 04F550 8004F9A0 AFAC0010 */   sw         $t4, 0x10($sp)
/* 04F554 8004F9A4 AE020024 */  sw          $v0, 0x24($s0)
/* 04F558 8004F9A8 240D0020 */  addiu       $t5, $zero, 0x20
/* 04F55C 8004F9AC AFAD0010 */  sw          $t5, 0x10($sp)
/* 04F560 8004F9B0 00002025 */  move        $a0, $zero
/* 04F564 8004F9B4 00002825 */  move        $a1, $zero
/* 04F568 8004F9B8 02C03025 */  move        $a2, $s6
/* 04F56C 8004F9BC 0C014E68 */  jal         func_800539A0
/* 04F570 8004F9C0 03C03825 */   move       $a3, $fp
/* 04F574 8004F9C4 8E0E0024 */  lw          $t6, 0x24($s0)
/* 04F578 8004F9C8 ADC20014 */  sw          $v0, 0x14($t6)
/* 04F57C 8004F9CC 8E0F0024 */  lw          $t7, 0x24($s0)
/* 04F580 8004F9D0 E5FA0020 */  swc1        $f26, 0x20($t7)
/* 04F584 8004F9D4 8E180024 */  lw          $t8, 0x24($s0)
/* 04F588 8004F9D8 10000004 */  b           .L8004F9EC
/* 04F58C 8004F9DC AF1E0024 */   sw         $fp, 0x24($t8)
.L8004F9E0:
/* 04F590 8004F9E0 3228FFFF */  andi        $t0, $s1, 0xffff
/* 04F594 8004F9E4 AE000024 */  sw          $zero, 0x24($s0)
/* 04F598 8004F9E8 01008825 */  move        $s1, $t0
.L8004F9EC:
/* 04F59C 8004F9EC 00114880 */  sll         $t1, $s1, 2
/* 04F5A0 8004F9F0 02699021 */  addu        $s2, $s3, $t1
/* 04F5A4 8004F9F4 8E4A0000 */  lw          $t2, 0x0($s2)
/* 04F5A8 8004F9F8 00002025 */  move        $a0, $zero
/* 04F5AC 8004F9FC 00002825 */  move        $a1, $zero
/* 04F5B0 8004FA00 11400019 */  beq         $t2, $zero, .L8004FA68
/* 04F5B4 8004FA04 02C03025 */   move       $a2, $s6
/* 04F5B8 8004FA08 240B0030 */  addiu       $t3, $zero, 0x30
/* 04F5BC 8004FA0C AFAB0010 */  sw          $t3, 0x10($sp)
/* 04F5C0 8004FA10 0C014E68 */  jal         func_800539A0
/* 04F5C4 8004FA14 03C03825 */   move       $a3, $fp
/* 04F5C8 8004FA18 AE020020 */  sw          $v0, 0x20($s0)
/* 04F5CC 8004FA1C 240C0008 */  addiu       $t4, $zero, 0x8
/* 04F5D0 8004FA20 AFAC0010 */  sw          $t4, 0x10($sp)
/* 04F5D4 8004FA24 00002025 */  move        $a0, $zero
/* 04F5D8 8004FA28 00002825 */  move        $a1, $zero
/* 04F5DC 8004FA2C 02C03025 */  move        $a2, $s6
/* 04F5E0 8004FA30 0C014E68 */  jal         func_800539A0
/* 04F5E4 8004FA34 03C03825 */   move       $a3, $fp
/* 04F5E8 8004FA38 8E0D0020 */  lw          $t5, 0x20($s0)
/* 04F5EC 8004FA3C 26310001 */  addiu       $s1, $s1, 0x1
/* 04F5F0 8004FA40 3238FFFF */  andi        $t8, $s1, 0xffff
/* 04F5F4 8004FA44 ADA20028 */  sw          $v0, 0x28($t5)
/* 04F5F8 8004FA48 8E0F0020 */  lw          $t7, 0x20($s0)
/* 04F5FC 8004FA4C 8E4E0000 */  lw          $t6, 0x0($s2)
/* 04F600 8004FA50 03008825 */  move        $s1, $t8
/* 04F604 8004FA54 A5EE0000 */  sh          $t6, 0x0($t7)
/* 04F608 8004FA58 0C015844 */  jal         func_80056110
/* 04F60C 8004FA5C 8E040020 */   lw         $a0, 0x20($s0)
/* 04F610 8004FA60 10000006 */  b           .L8004FA7C
/* 04F614 8004FA64 92A90024 */   lbu        $t1, 0x24($s5)
.L8004FA68:
/* 04F618 8004FA68 26310001 */  addiu       $s1, $s1, 0x1
/* 04F61C 8004FA6C 3239FFFF */  andi        $t9, $s1, 0xffff
/* 04F620 8004FA70 AE000020 */  sw          $zero, 0x20($s0)
/* 04F624 8004FA74 03208825 */  move        $s1, $t9
/* 04F628 8004FA78 92A90024 */  lbu         $t1, 0x24($s5)
.L8004FA7C:
/* 04F62C 8004FA7C 26940001 */  addiu       $s4, $s4, 0x1
/* 04F630 8004FA80 3288FFFF */  andi        $t0, $s4, 0xffff
/* 04F634 8004FA84 0109082A */  slt         $at, $t0, $t1
/* 04F638 8004FA88 1420FF6D */  bne         $at, $zero, .L8004F840
/* 04F63C 8004FA8C 0100A025 */   move       $s4, $t0
.L8004FA90:
/* 04F640 8004FA90 8FBF0064 */  lw          $ra, 0x64($sp)
/* 04F644 8004FA94 D7B40020 */  ldc1        $f20, 0x20($sp)
/* 04F648 8004FA98 D7B60028 */  ldc1        $f22, 0x28($sp)
/* 04F64C 8004FA9C D7B80030 */  ldc1        $f24, 0x30($sp)
/* 04F650 8004FAA0 D7BA0038 */  ldc1        $f26, 0x38($sp)
/* 04F654 8004FAA4 8FB00040 */  lw          $s0, 0x40($sp)
/* 04F658 8004FAA8 8FB10044 */  lw          $s1, 0x44($sp)
/* 04F65C 8004FAAC 8FB20048 */  lw          $s2, 0x48($sp)
/* 04F660 8004FAB0 8FB3004C */  lw          $s3, 0x4c($sp)
/* 04F664 8004FAB4 8FB40050 */  lw          $s4, 0x50($sp)
/* 04F668 8004FAB8 8FB50054 */  lw          $s5, 0x54($sp)
/* 04F66C 8004FABC 8FB60058 */  lw          $s6, 0x58($sp)
/* 04F670 8004FAC0 8FB7005C */  lw          $s7, 0x5c($sp)
/* 04F674 8004FAC4 8FBE0060 */  lw          $fp, 0x60($sp)
/* 04F678 8004FAC8 03E00008 */  jr          $ra
/* 04F67C 8004FACC 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8004FAD0 # 1
/* 04F680 8004FAD0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04F684 8004FAD4 AFB00020 */  sw          $s0, 0x20($sp)
/* 04F688 8004FAD8 00808025 */  move        $s0, $a0
/* 04F68C 8004FADC AFBF0024 */  sw          $ra, 0x24($sp)
/* 04F690 8004FAE0 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04F694 8004FAE4 240E0020 */  addiu       $t6, $zero, 0x20
/* 04F698 8004FAE8 AFA60030 */  sw          $a2, 0x30($sp)
/* 04F69C 8004FAEC AFAE0010 */  sw          $t6, 0x10($sp)
/* 04F6A0 8004FAF0 00002825 */  move        $a1, $zero
/* 04F6A4 8004FAF4 00002025 */  move        $a0, $zero
/* 04F6A8 8004FAF8 0C014E68 */  jal         func_800539A0
/* 04F6AC 8004FAFC 24070001 */   addiu      $a3, $zero, 0x1
/* 04F6B0 8004FB00 AE02000C */  sw          $v0, 0xc($s0)
/* 04F6B4 8004FB04 240F0020 */  addiu       $t7, $zero, 0x20
/* 04F6B8 8004FB08 AFAF0010 */  sw          $t7, 0x10($sp)
/* 04F6BC 8004FB0C 8FA60030 */  lw          $a2, 0x30($sp)
/* 04F6C0 8004FB10 00002025 */  move        $a0, $zero
/* 04F6C4 8004FB14 00002825 */  move        $a1, $zero
/* 04F6C8 8004FB18 0C014E68 */  jal         func_800539A0
/* 04F6CC 8004FB1C 24070001 */   addiu      $a3, $zero, 0x1
/* 04F6D0 8004FB20 AE020010 */  sw          $v0, 0x10($s0)
/* 04F6D4 8004FB24 8FB9002C */  lw          $t9, 0x2c($sp)
/* 04F6D8 8004FB28 2604002C */  addiu       $a0, $s0, 0x2c
/* 04F6DC 8004FB2C 0320F809 */  jalr        $t9
/* 04F6E0 8004FB30 00000000 */   nop
/* 04F6E4 8004FB34 24070001 */  addiu       $a3, $zero, 0x1
/* 04F6E8 8004FB38 AE020028 */  sw          $v0, 0x28($s0)
/* 04F6EC 8004FB3C AE000034 */  sw          $zero, 0x34($s0)
/* 04F6F0 8004FB40 AE070038 */  sw          $a3, 0x38($s0)
/* 04F6F4 8004FB44 AE00003C */  sw          $zero, 0x3c($s0)
/* 04F6F8 8004FB48 24180020 */  addiu       $t8, $zero, 0x20
/* 04F6FC 8004FB4C AFB80010 */  sw          $t8, 0x10($sp)
/* 04F700 8004FB50 8FA60030 */  lw          $a2, 0x30($sp)
/* 04F704 8004FB54 00002025 */  move        $a0, $zero
/* 04F708 8004FB58 0C014E68 */  jal         func_800539A0
/* 04F70C 8004FB5C 00002825 */   move       $a1, $zero
/* 04F710 8004FB60 3C013F80 */  lui         $at, 0x3f80
/* 04F714 8004FB64 44802000 */  mtc1        $zero, $f4
/* 04F718 8004FB68 44813000 */  mtc1        $at, $f6
/* 04F71C 8004FB6C 24070001 */  addiu       $a3, $zero, 0x1
/* 04F720 8004FB70 AE020040 */  sw          $v0, 0x40($s0)
/* 04F724 8004FB74 AE070050 */  sw          $a3, 0x50($s0)
/* 04F728 8004FB78 AE000048 */  sw          $zero, 0x48($s0)
/* 04F72C 8004FB7C 24080050 */  addiu       $t0, $zero, 0x50
/* 04F730 8004FB80 E604004C */  swc1        $f4, 0x4c($s0)
/* 04F734 8004FB84 E6060044 */  swc1        $f6, 0x44($s0)
/* 04F738 8004FB88 AFA80010 */  sw          $t0, 0x10($sp)
/* 04F73C 8004FB8C 8FA60030 */  lw          $a2, 0x30($sp)
/* 04F740 8004FB90 00002025 */  move        $a0, $zero
/* 04F744 8004FB94 0C014E68 */  jal         func_800539A0
/* 04F748 8004FB98 00002825 */   move       $a1, $zero
/* 04F74C 8004FB9C 24030001 */  addiu       $v1, $zero, 0x1
/* 04F750 8004FBA0 AE020054 */  sw          $v0, 0x54($s0)
/* 04F754 8004FBA4 AE030078 */  sw          $v1, 0x78($s0)
/* 04F758 8004FBA8 AE000084 */  sw          $zero, 0x84($s0)
/* 04F75C 8004FBAC A603005A */  sh          $v1, 0x5a($s0)
/* 04F760 8004FBB0 A6030068 */  sh          $v1, 0x68($s0)
/* 04F764 8004FBB4 A603006E */  sh          $v1, 0x6e($s0)
/* 04F768 8004FBB8 A603005C */  sh          $v1, 0x5c($s0)
/* 04F76C 8004FBBC A603005E */  sh          $v1, 0x5e($s0)
/* 04F770 8004FBC0 A6000060 */  sh          $zero, 0x60($s0)
/* 04F774 8004FBC4 A6000062 */  sh          $zero, 0x62($s0)
/* 04F778 8004FBC8 A6030066 */  sh          $v1, 0x66($s0)
/* 04F77C 8004FBCC A6000064 */  sh          $zero, 0x64($s0)
/* 04F780 8004FBD0 AE000070 */  sw          $zero, 0x70($s0)
/* 04F784 8004FBD4 AE000074 */  sw          $zero, 0x74($s0)
/* 04F788 8004FBD8 A6000058 */  sh          $zero, 0x58($s0)
/* 04F78C 8004FBDC AE00007C */  sw          $zero, 0x7c($s0)
/* 04F790 8004FBE0 AE000080 */  sw          $zero, 0x80($s0)
/* 04F794 8004FBE4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04F798 8004FBE8 8FB00020 */  lw          $s0, 0x20($sp)
/* 04F79C 8004FBEC 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04F7A0 8004FBF0 03E00008 */  jr          $ra
/* 04F7A4 8004FBF4 00000000 */   nop
/* 04F7A8 8004FBF8 00000000 */  nop
/* 04F7AC 8004FBFC 00000000 */  nop
