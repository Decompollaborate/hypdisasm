.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8000F7B0 # 0
/* 00F360 8000F7B0 AFA40000 */  sw          $a0, 0x0($sp)
/* 00F364 8000F7B4 03E00008 */  jr          $ra
/* 00F368 8000F7B8 24020001 */   addiu      $v0, $zero, 0x1

glabel func_8000F7BC # 1
/* 00F36C 8000F7BC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F370 8000F7C0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F374 8000F7C4 8C820054 */  lw          $v0, 0x54($a0)
/* 00F378 8000F7C8 3C01800A */  lui         $at, %hi(D_800A25B4)
/* 00F37C 8000F7CC C42425B4 */  lwc1        $f4, %lo(D_800A25B4)($at)
/* 00F380 8000F7D0 C4400138 */  lwc1        $f0, 0x138($v0)
/* 00F384 8000F7D4 3C01800A */  lui         $at, %hi(D_800A25B8)
/* 00F388 8000F7D8 4604003C */  c.lt.s      $f0, $f4
/* 00F38C 8000F7DC 00000000 */  nop
/* 00F390 8000F7E0 45020023 */  bc1fl       .L8000F870
/* 00F394 8000F7E4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F398 8000F7E8 C42625B8 */  lwc1        $f6, %lo(D_800A25B8)($at)
/* 00F39C 8000F7EC 3C01800A */  lui         $at, %hi(D_800A25BC)
/* 00F3A0 8000F7F0 4600303C */  c.lt.s      $f6, $f0
/* 00F3A4 8000F7F4 00000000 */  nop
/* 00F3A8 8000F7F8 4502001D */  bc1fl       .L8000F870
/* 00F3AC 8000F7FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F3B0 8000F800 C42825BC */  lwc1        $f8, %lo(D_800A25BC)($at)
/* 00F3B4 8000F804 3C01800A */  lui         $at, %hi(D_800A25C0)
/* 00F3B8 8000F808 4608003C */  c.lt.s      $f0, $f8
/* 00F3BC 8000F80C 00000000 */  nop
/* 00F3C0 8000F810 4502000D */  bc1fl       .L8000F848
/* 00F3C4 8000F814 AC4001BC */   sw         $zero, 0x1bc($v0)
/* 00F3C8 8000F818 C42A25C0 */  lwc1        $f10, %lo(D_800A25C0)($at)
/* 00F3CC 8000F81C 3C014120 */  lui         $at, 0x4120
/* 00F3D0 8000F820 4600503C */  c.lt.s      $f10, $f0
/* 00F3D4 8000F824 00000000 */  nop
/* 00F3D8 8000F828 45020007 */  bc1fl       .L8000F848
/* 00F3DC 8000F82C AC4001BC */   sw         $zero, 0x1bc($v0)
/* 00F3E0 8000F830 44818000 */  mtc1        $at, $f16
/* 00F3E4 8000F834 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00F3E8 8000F838 C432E4E4 */  lwc1        $f18, %lo(D_800AE4E4)($at)
/* 00F3EC 8000F83C 46128102 */  mul.s       $f4, $f16, $f18
/* 00F3F0 8000F840 E44401DC */  swc1        $f4, 0x1dc($v0)
/* 00F3F4 8000F844 AC4001BC */  sw          $zero, 0x1bc($v0)
.L8000F848:
/* 00F3F8 8000F848 3C01800A */  lui         $at, %hi(D_800A25C4)
/* 00F3FC 8000F84C C42625C4 */  lwc1        $f6, %lo(D_800A25C4)($at)
/* 00F400 8000F850 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00F404 8000F854 C428E4E4 */  lwc1        $f8, %lo(D_800AE4E4)($at)
/* 00F408 8000F858 24060001 */  addiu       $a2, $zero, 0x1
/* 00F40C 8000F85C 46083282 */  mul.s       $f10, $f6, $f8
/* 00F410 8000F860 44055000 */  mfc1        $a1, $f10
/* 00F414 8000F864 0C0057E5 */  jal         func_80015F94
/* 00F418 8000F868 00000000 */   nop
/* 00F41C 8000F86C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000F870:
/* 00F420 8000F870 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F424 8000F874 00001025 */  move        $v0, $zero
/* 00F428 8000F878 03E00008 */  jr          $ra
/* 00F42C 8000F87C 00000000 */   nop

glabel func_8000F880 # 2
/* 00F430 8000F880 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F434 8000F884 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F438 8000F888 3C0540DE */  lui         $a1, 0x40de
/* 00F43C 8000F88C 0C003E4D */  jal         func_8000F934
/* 00F440 8000F890 34A588CE */   ori        $a1, $a1, 0x88ce
/* 00F444 8000F894 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F448 8000F898 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F44C 8000F89C 03E00008 */  jr          $ra
/* 00F450 8000F8A0 00000000 */   nop

glabel func_8000F8A4 # 3
/* 00F454 8000F8A4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F458 8000F8A8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F45C 8000F8AC 3C054109 */  lui         $a1, 0x4109
/* 00F460 8000F8B0 0C003E4D */  jal         func_8000F934
/* 00F464 8000F8B4 34A5EA4B */   ori        $a1, $a1, 0xea4b
/* 00F468 8000F8B8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F46C 8000F8BC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F470 8000F8C0 03E00008 */  jr          $ra
/* 00F474 8000F8C4 00000000 */   nop

glabel func_8000F8C8 # 4
/* 00F478 8000F8C8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F47C 8000F8CC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F480 8000F8D0 3C053FB4 */  lui         $a1, 0x3fb4
/* 00F484 8000F8D4 0C003E4D */  jal         func_8000F934
/* 00F488 8000F8D8 34A59EED */   ori        $a1, $a1, 0x9eed
/* 00F48C 8000F8DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F490 8000F8E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F494 8000F8E4 03E00008 */  jr          $ra
/* 00F498 8000F8E8 00000000 */   nop

glabel func_8000F8EC # 5
/* 00F49C 8000F8EC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F4A0 8000F8F0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F4A4 8000F8F4 3C05405A */  lui         $a1, 0x405a
/* 00F4A8 8000F8F8 0C003E4D */  jal         func_8000F934
/* 00F4AC 8000F8FC 34A5A305 */   ori        $a1, $a1, 0xa305
/* 00F4B0 8000F900 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F4B4 8000F904 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F4B8 8000F908 03E00008 */  jr          $ra
/* 00F4BC 8000F90C 00000000 */   nop

glabel func_8000F910 # 6
/* 00F4C0 8000F910 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F4C4 8000F914 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F4C8 8000F918 3C053FA2 */  lui         $a1, 0x3fa2
/* 00F4CC 8000F91C 0C003E4D */  jal         func_8000F934
/* 00F4D0 8000F920 34A58F5C */   ori        $a1, $a1, 0x8f5c
/* 00F4D4 8000F924 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F4D8 8000F928 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F4DC 8000F92C 03E00008 */  jr          $ra
/* 00F4E0 8000F930 00000000 */   nop

glabel func_8000F934 # 7
/* 00F4E4 8000F934 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00F4E8 8000F938 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00F4EC 8000F93C AFB10018 */  sw          $s1, 0x18($sp)
/* 00F4F0 8000F940 AFB00014 */  sw          $s0, 0x14($sp)
/* 00F4F4 8000F944 AFA50044 */  sw          $a1, 0x44($sp)
/* 00F4F8 8000F948 00808825 */  move        $s1, $a0
/* 00F4FC 8000F94C 8C900054 */  lw          $s0, 0x54($a0)
/* 00F500 8000F950 0C0058FF */  jal         func_800163FC
/* 00F504 8000F954 2405003E */   addiu      $a1, $zero, 0x3e
/* 00F508 8000F958 C4440044 */  lwc1        $f4, 0x44($v0)
/* 00F50C 8000F95C 3C013F80 */  lui         $at, 0x3f80
/* 00F510 8000F960 44815000 */  mtc1        $at, $f10
/* 00F514 8000F964 E7A40028 */  swc1        $f4, 0x28($sp)
/* 00F518 8000F968 C4460048 */  lwc1        $f6, 0x48($v0)
/* 00F51C 8000F96C 44808000 */  mtc1        $zero, $f16
/* 00F520 8000F970 2404003C */  addiu       $a0, $zero, 0x3c
/* 00F524 8000F974 E7A6002C */  swc1        $f6, 0x2c($sp)
/* 00F528 8000F978 C448004C */  lwc1        $f8, 0x4c($v0)
/* 00F52C 8000F97C E7A80030 */  swc1        $f8, 0x30($sp)
/* 00F530 8000F980 E60A01F8 */  swc1        $f10, 0x1f8($s0)
/* 00F534 8000F984 C7A40030 */  lwc1        $f4, 0x30($sp)
/* 00F538 8000F988 C61201F4 */  lwc1        $f18, 0x1f4($s0)
/* 00F53C 8000F98C C7A80028 */  lwc1        $f8, 0x28($sp)
/* 00F540 8000F990 C60601EC */  lwc1        $f6, 0x1ec($s0)
/* 00F544 8000F994 46049081 */  sub.s       $f2, $f18, $f4
/* 00F548 8000F998 46083301 */  sub.s       $f12, $f6, $f8
/* 00F54C 8000F99C 46021282 */  mul.s       $f10, $f2, $f2
/* 00F550 8000F9A0 C60601A4 */  lwc1        $f6, 0x1a4($s0)
/* 00F554 8000F9A4 460C6482 */  mul.s       $f18, $f12, $f12
/* 00F558 8000F9A8 46003221 */  cvt.d.s     $f8, $f6
/* 00F55C 8000F9AC 46125100 */  add.s       $f4, $f10, $f18
/* 00F560 8000F9B0 46002021 */  cvt.d.s     $f0, $f4
/* 00F564 8000F9B4 46200004 */  sqrt.d      $f0, $f0
/* 00F568 8000F9B8 46280281 */  sub.d       $f10, $f0, $f8
/* 00F56C 8000F9BC 462053A0 */  cvt.s.d     $f14, $f10
/* 00F570 8000F9C0 4610703C */  c.lt.s      $f14, $f16
/* 00F574 8000F9C4 00000000 */  nop
/* 00F578 8000F9C8 45000002 */  bc1f        .L8000F9D4
/* 00F57C 8000F9CC 00000000 */   nop
/* 00F580 8000F9D0 46008386 */  mov.s       $f14, $f16
.L8000F9D4:
/* 00F584 8000F9D4 0C00EAC8 */  jal         func_8003AB20
/* 00F588 8000F9D8 E7AE0038 */   swc1       $f14, 0x38($sp)
/* 00F58C 8000F9DC C7A20044 */  lwc1        $f2, 0x44($sp)
/* 00F590 8000F9E0 C7AE0038 */  lwc1        $f14, 0x38($sp)
/* 00F594 8000F9E4 244EFFF1 */  addiu       $t6, $v0, -0xf
/* 00F598 8000F9E8 448E9000 */  mtc1        $t6, $f18
/* 00F59C 8000F9EC 46027003 */  div.s       $f0, $f14, $f2
/* 00F5A0 8000F9F0 3C013FC0 */  lui         $at, 0x3fc0
/* 00F5A4 8000F9F4 44813000 */  mtc1        $at, $f6
/* 00F5A8 8000F9F8 3C01800A */  lui         $at, %hi(D_800A25C8)
/* 00F5AC 8000F9FC 46809120 */  cvt.s.w     $f4, $f18
/* 00F5B0 8000FA00 E60401A0 */  swc1        $f4, 0x1a0($s0)
/* 00F5B4 8000FA04 4606003C */  c.lt.s      $f0, $f6
/* 00F5B8 8000FA08 00000000 */  nop
/* 00F5BC 8000FA0C 45020018 */  bc1fl       .L8000FA70
/* 00F5C0 8000FA10 00001025 */   move       $v0, $zero
/* 00F5C4 8000FA14 C42825C8 */  lwc1        $f8, %lo(D_800A25C8)($at)
/* 00F5C8 8000FA18 240500C6 */  addiu       $a1, $zero, 0xc6
/* 00F5CC 8000FA1C 02202025 */  move        $a0, $s1
/* 00F5D0 8000FA20 46081032 */  c.eq.s      $f2, $f8
/* 00F5D4 8000FA24 00000000 */  nop
/* 00F5D8 8000FA28 45000005 */  bc1f        .L8000FA40
/* 00F5DC 8000FA2C 00000000 */   nop
/* 00F5E0 8000FA30 0C003DB3 */  jal         func_8000F6CC
/* 00F5E4 8000FA34 02202025 */   move       $a0, $s1
/* 00F5E8 8000FA38 1000000D */  b           .L8000FA70
/* 00F5EC 8000FA3C 24020001 */   addiu      $v0, $zero, 0x1
.L8000FA40:
/* 00F5F0 8000FA40 0C04637C */  jal         func_80118DF0
/* 00F5F4 8000FA44 E7A00020 */   swc1       $f0, 0x20($sp)
/* 00F5F8 8000FA48 02202025 */  move        $a0, $s1
/* 00F5FC 8000FA4C 0C0462E6 */  jal         func_80118B98
/* 00F600 8000FA50 3C054396 */   lui        $a1, 0x4396
/* 00F604 8000FA54 0C003DC5 */  jal         func_8000F714
/* 00F608 8000FA58 02202025 */   move       $a0, $s1
/* 00F60C 8000FA5C 0C003D31 */  jal         func_8000F4C4
/* 00F610 8000FA60 02202025 */   move       $a0, $s1
/* 00F614 8000FA64 C7AA0020 */  lwc1        $f10, 0x20($sp)
/* 00F618 8000FA68 E60A01F8 */  swc1        $f10, 0x1f8($s0)
/* 00F61C 8000FA6C 00001025 */  move        $v0, $zero
.L8000FA70:
/* 00F620 8000FA70 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00F624 8000FA74 8FB00014 */  lw          $s0, 0x14($sp)
/* 00F628 8000FA78 8FB10018 */  lw          $s1, 0x18($sp)
/* 00F62C 8000FA7C 03E00008 */  jr          $ra
/* 00F630 8000FA80 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8000FA84 # 8
/* 00F634 8000FA84 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00F638 8000FA88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F63C 8000FA8C 8C820054 */  lw          $v0, 0x54($a0)
/* 00F640 8000FA90 AFA40028 */  sw          $a0, 0x28($sp)
/* 00F644 8000FA94 0C04637C */  jal         func_80118DF0
/* 00F648 8000FA98 AFA20024 */   sw         $v0, 0x24($sp)
/* 00F64C 8000FA9C 8FA40028 */  lw          $a0, 0x28($sp)
/* 00F650 8000FAA0 0C0462E6 */  jal         func_80118B98
/* 00F654 8000FAA4 3C054396 */   lui        $a1, 0x4396
/* 00F658 8000FAA8 8FA20024 */  lw          $v0, 0x24($sp)
/* 00F65C 8000FAAC 3C013F80 */  lui         $at, 0x3f80
/* 00F660 8000FAB0 44812000 */  mtc1        $at, $f4
/* 00F664 8000FAB4 C44601F8 */  lwc1        $f6, 0x1f8($v0)
/* 00F668 8000FAB8 27A40018 */  addiu       $a0, $sp, 0x18
/* 00F66C 8000FABC 46062032 */  c.eq.s      $f4, $f6
/* 00F670 8000FAC0 00000000 */  nop
/* 00F674 8000FAC4 45030013 */  bc1tl       .L8000FB14
/* 00F678 8000FAC8 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F67C 8000FACC 0C002018 */  jal         func_80008060
/* 00F680 8000FAD0 AFA20024 */   sw         $v0, 0x24($sp)
/* 00F684 8000FAD4 8FA20024 */  lw          $v0, 0x24($sp)
/* 00F688 8000FAD8 C7A80018 */  lwc1        $f8, 0x18($sp)
/* 00F68C 8000FADC C7B2001C */  lwc1        $f18, 0x1c($sp)
/* 00F690 8000FAE0 C44A01F8 */  lwc1        $f10, 0x1f8($v0)
/* 00F694 8000FAE4 27A40018 */  addiu       $a0, $sp, 0x18
/* 00F698 8000FAE8 460A4402 */  mul.s       $f16, $f8, $f10
/* 00F69C 8000FAEC C7A80020 */  lwc1        $f8, 0x20($sp)
/* 00F6A0 8000FAF0 E7B00018 */  swc1        $f16, 0x18($sp)
/* 00F6A4 8000FAF4 C44401F8 */  lwc1        $f4, 0x1f8($v0)
/* 00F6A8 8000FAF8 46049182 */  mul.s       $f6, $f18, $f4
/* 00F6AC 8000FAFC E7A6001C */  swc1        $f6, 0x1c($sp)
/* 00F6B0 8000FB00 C44A01F8 */  lwc1        $f10, 0x1f8($v0)
/* 00F6B4 8000FB04 460A4402 */  mul.s       $f16, $f8, $f10
/* 00F6B8 8000FB08 0C002021 */  jal         func_80008084
/* 00F6BC 8000FB0C E7B00020 */   swc1       $f16, 0x20($sp)
/* 00F6C0 8000FB10 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000FB14:
/* 00F6C4 8000FB14 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00F6C8 8000FB18 00001025 */  move        $v0, $zero
/* 00F6CC 8000FB1C 03E00008 */  jr          $ra
/* 00F6D0 8000FB20 00000000 */   nop

glabel func_8000FB24 # 9
/* 00F6D4 8000FB24 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00F6D8 8000FB28 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F6DC 8000FB2C 8C820054 */  lw          $v0, 0x54($a0)
/* 00F6E0 8000FB30 27A40018 */  addiu       $a0, $sp, 0x18
/* 00F6E4 8000FB34 0C002018 */  jal         func_80008060
/* 00F6E8 8000FB38 AFA20024 */   sw         $v0, 0x24($sp)
/* 00F6EC 8000FB3C 8FA20024 */  lw          $v0, 0x24($sp)
/* 00F6F0 8000FB40 C7A40018 */  lwc1        $f4, 0x18($sp)
/* 00F6F4 8000FB44 C7AA001C */  lwc1        $f10, 0x1c($sp)
/* 00F6F8 8000FB48 C44601F8 */  lwc1        $f6, 0x1f8($v0)
/* 00F6FC 8000FB4C 27A40018 */  addiu       $a0, $sp, 0x18
/* 00F700 8000FB50 46062202 */  mul.s       $f8, $f4, $f6
/* 00F704 8000FB54 C7A40020 */  lwc1        $f4, 0x20($sp)
/* 00F708 8000FB58 E7A80018 */  swc1        $f8, 0x18($sp)
/* 00F70C 8000FB5C C45001F8 */  lwc1        $f16, 0x1f8($v0)
/* 00F710 8000FB60 46105482 */  mul.s       $f18, $f10, $f16
/* 00F714 8000FB64 E7B2001C */  swc1        $f18, 0x1c($sp)
/* 00F718 8000FB68 C44601F8 */  lwc1        $f6, 0x1f8($v0)
/* 00F71C 8000FB6C 46062202 */  mul.s       $f8, $f4, $f6
/* 00F720 8000FB70 0C002021 */  jal         func_80008084
/* 00F724 8000FB74 E7A80020 */   swc1       $f8, 0x20($sp)
/* 00F728 8000FB78 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F72C 8000FB7C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00F730 8000FB80 00001025 */  move        $v0, $zero
/* 00F734 8000FB84 03E00008 */  jr          $ra
/* 00F738 8000FB88 00000000 */   nop

glabel func_8000FB8C # 10
/* 00F73C 8000FB8C 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00F740 8000FB90 44856000 */  mtc1        $a1, $f12
/* 00F744 8000FB94 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 00F748 8000FB98 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00F74C 8000FB9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F750 8000FBA0 460C2182 */  mul.s       $f6, $f4, $f12
/* 00F754 8000FBA4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00F758 8000FBA8 AFA40030 */  sw          $a0, 0x30($sp)
/* 00F75C 8000FBAC AFAE002C */  sw          $t6, 0x2c($sp)
/* 00F760 8000FBB0 0C04637C */  jal         func_80118DF0
/* 00F764 8000FBB4 E7A60028 */   swc1       $f6, 0x28($sp)
/* 00F768 8000FBB8 8FA40030 */  lw          $a0, 0x30($sp)
/* 00F76C 8000FBBC 0C0462E6 */  jal         func_80118B98
/* 00F770 8000FBC0 3C054396 */   lui        $a1, 0x4396
/* 00F774 8000FBC4 3C188013 */  lui         $t8, %hi(D_80133DE4)
/* 00F778 8000FBC8 8F183DE4 */  lw          $t8, %lo(D_80133DE4)($t8)
/* 00F77C 8000FBCC 8FAF0030 */  lw          $t7, 0x30($sp)
/* 00F780 8000FBD0 3C013F80 */  lui         $at, 0x3f80
/* 00F784 8000FBD4 C70A000C */  lwc1        $f10, 0xc($t8)
/* 00F788 8000FBD8 C5E80000 */  lwc1        $f8, 0x0($t7)
/* 00F78C 8000FBDC 44819000 */  mtc1        $at, $f18
/* 00F790 8000FBE0 3C013F00 */  lui         $at, 0x3f00
/* 00F794 8000FBE4 460A4403 */  div.s       $f16, $f8, $f10
/* 00F798 8000FBE8 44813000 */  mtc1        $at, $f6
/* 00F79C 8000FBEC 3C013FF0 */  lui         $at, 0x3ff0
/* 00F7A0 8000FBF0 44818800 */  mtc1        $at, $f17
/* 00F7A4 8000FBF4 2404000A */  addiu       $a0, $zero, 0xa
/* 00F7A8 8000FBF8 46128101 */  sub.s       $f4, $f16, $f18
/* 00F7AC 8000FBFC 44808000 */  mtc1        $zero, $f16
/* 00F7B0 8000FC00 46062202 */  mul.s       $f8, $f4, $f6
/* 00F7B4 8000FC04 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 00F7B8 8000FC08 460021A1 */  cvt.d.s     $f6, $f4
/* 00F7BC 8000FC0C 460042A1 */  cvt.d.s     $f10, $f8
/* 00F7C0 8000FC10 462A8480 */  add.d       $f18, $f16, $f10
/* 00F7C4 8000FC14 46323202 */  mul.d       $f8, $f6, $f18
/* 00F7C8 8000FC18 46204420 */  cvt.s.d     $f16, $f8
/* 00F7CC 8000FC1C 0C00EAC8 */  jal         func_8003AB20
/* 00F7D0 8000FC20 E7B00028 */   swc1       $f16, 0x28($sp)
/* 00F7D4 8000FC24 2459FFFC */  addiu       $t9, $v0, -0x4
/* 00F7D8 8000FC28 44995000 */  mtc1        $t9, $f10
/* 00F7DC 8000FC2C C7B20028 */  lwc1        $f18, 0x28($sp)
/* 00F7E0 8000FC30 44803000 */  mtc1        $zero, $f6
/* 00F7E4 8000FC34 46805120 */  cvt.s.w     $f4, $f10
/* 00F7E8 8000FC38 27A4001C */  addiu       $a0, $sp, 0x1c
/* 00F7EC 8000FC3C E7A60020 */  swc1        $f6, 0x20($sp)
/* 00F7F0 8000FC40 46009207 */  neg.s       $f8, $f18
/* 00F7F4 8000FC44 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 00F7F8 8000FC48 0C002021 */  jal         func_80008084
/* 00F7FC 8000FC4C E7A80024 */   swc1       $f8, 0x24($sp)
/* 00F800 8000FC50 8FA8002C */  lw          $t0, 0x2c($sp)
/* 00F804 8000FC54 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F808 8000FC58 00001025 */  move        $v0, $zero
/* 00F80C 8000FC5C 950901EA */  lhu         $t1, 0x1ea($t0)
/* 00F810 8000FC60 11200003 */  beqz        $t1, .L8000FC70
/* 00F814 8000FC64 00000000 */   nop
/* 00F818 8000FC68 10000001 */  b           .L8000FC70
/* 00F81C 8000FC6C 24020001 */   addiu      $v0, $zero, 0x1
.L8000FC70:
/* 00F820 8000FC70 03E00008 */  jr          $ra
/* 00F824 8000FC74 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8000FC78 # 11
/* 00F828 8000FC78 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F82C 8000FC7C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F830 8000FC80 0C003EE3 */  jal         func_8000FB8C
/* 00F834 8000FC84 3C054248 */   lui        $a1, 0x4248
/* 00F838 8000FC88 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F83C 8000FC8C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F840 8000FC90 03E00008 */  jr          $ra
/* 00F844 8000FC94 00000000 */   nop

glabel func_8000FC98 # 12
/* 00F848 8000FC98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F84C 8000FC9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F850 8000FCA0 0C003EE3 */  jal         func_8000FB8C
/* 00F854 8000FCA4 3C0543C8 */   lui        $a1, 0x43c8
/* 00F858 8000FCA8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F85C 8000FCAC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F860 8000FCB0 03E00008 */  jr          $ra
/* 00F864 8000FCB4 00000000 */   nop

glabel func_8000FCB8 # 13
/* 00F868 8000FCB8 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00F86C 8000FCBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F870 8000FCC0 8C820054 */  lw          $v0, 0x54($a0)
/* 00F874 8000FCC4 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00F878 8000FCC8 44805000 */  mtc1        $zero, $f10
/* 00F87C 8000FCCC C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00F880 8000FCD0 00802825 */  move        $a1, $a0
/* 00F884 8000FCD4 E7AA002C */  swc1        $f10, 0x2c($sp)
/* 00F888 8000FCD8 46062201 */  sub.s       $f8, $f4, $f6
/* 00F88C 8000FCDC E7A80028 */  swc1        $f8, 0x28($sp)
/* 00F890 8000FCE0 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00F894 8000FCE4 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00F898 8000FCE8 AFA50038 */  sw          $a1, 0x38($sp)
/* 00F89C 8000FCEC 27A40028 */  addiu       $a0, $sp, 0x28
/* 00F8A0 8000FCF0 46128101 */  sub.s       $f4, $f16, $f18
/* 00F8A4 8000FCF4 AFA20034 */  sw          $v0, 0x34($sp)
/* 00F8A8 8000FCF8 0C0032A9 */  jal         func_8000CAA4
/* 00F8AC 8000FCFC E7A40030 */   swc1       $f4, 0x30($sp)
/* 00F8B0 8000FD00 8FA20034 */  lw          $v0, 0x34($sp)
/* 00F8B4 8000FD04 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00F8B8 8000FD08 0C00EDB5 */  jal         func_8003B6D4
/* 00F8BC 8000FD0C 46060301 */   sub.s      $f12, $f0, $f6
/* 00F8C0 8000FD10 3C014120 */  lui         $at, 0x4120
/* 00F8C4 8000FD14 44814000 */  mtc1        $at, $f8
/* 00F8C8 8000FD18 46000005 */  abs.s       $f0, $f0
/* 00F8CC 8000FD1C 00001025 */  move        $v0, $zero
/* 00F8D0 8000FD20 4608003C */  c.lt.s      $f0, $f8
/* 00F8D4 8000FD24 00000000 */  nop
/* 00F8D8 8000FD28 4500001D */  bc1f        .L8000FDA0
/* 00F8DC 8000FD2C 00000000 */   nop
/* 00F8E0 8000FD30 0C00EADA */  jal         func_8003AB68
/* 00F8E4 8000FD34 00000000 */   nop
/* 00F8E8 8000FD38 44828000 */  mtc1        $v0, $f16
/* 00F8EC 8000FD3C 3C013FE0 */  lui         $at, 0x3fe0
/* 00F8F0 8000FD40 44815800 */  mtc1        $at, $f11
/* 00F8F4 8000FD44 44805000 */  mtc1        $zero, $f10
/* 00F8F8 8000FD48 04410006 */  bgez        $v0, .L8000FD64
/* 00F8FC 8000FD4C 468084A1 */   cvt.d.w    $f18, $f16
/* 00F900 8000FD50 3C0141F0 */  lui         $at, 0x41f0
/* 00F904 8000FD54 44812800 */  mtc1        $at, $f5
/* 00F908 8000FD58 44802000 */  mtc1        $zero, $f4
/* 00F90C 8000FD5C 00000000 */  nop
/* 00F910 8000FD60 46249480 */  add.d       $f18, $f18, $f4
.L8000FD64:
/* 00F914 8000FD64 3C013DF0 */  lui         $at, 0x3df0
/* 00F918 8000FD68 44813800 */  mtc1        $at, $f7
/* 00F91C 8000FD6C 44803000 */  mtc1        $zero, $f6
/* 00F920 8000FD70 240500C0 */  addiu       $a1, $zero, 0xc0
/* 00F924 8000FD74 46269202 */  mul.d       $f8, $f18, $f6
/* 00F928 8000FD78 4628503C */  c.lt.d      $f10, $f8
/* 00F92C 8000FD7C 00000000 */  nop
/* 00F930 8000FD80 45000003 */  bc1f        .L8000FD90
/* 00F934 8000FD84 00000000 */   nop
/* 00F938 8000FD88 10000001 */  b           .L8000FD90
/* 00F93C 8000FD8C 240500BF */   addiu      $a1, $zero, 0xbf
.L8000FD90:
/* 00F940 8000FD90 0C003DB3 */  jal         func_8000F6CC
/* 00F944 8000FD94 8FA40038 */   lw         $a0, 0x38($sp)
/* 00F948 8000FD98 10000001 */  b           .L8000FDA0
/* 00F94C 8000FD9C 24020001 */   addiu      $v0, $zero, 0x1
.L8000FDA0:
/* 00F950 8000FDA0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00F954 8000FDA4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00F958 8000FDA8 03E00008 */  jr          $ra
/* 00F95C 8000FDAC 00000000 */   nop

glabel func_8000FDB0 # 14
/* 00F960 8000FDB0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F964 8000FDB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F968 8000FDB8 0C04637C */  jal         func_80118DF0
/* 00F96C 8000FDBC AFA40018 */   sw         $a0, 0x18($sp)
/* 00F970 8000FDC0 8FA40018 */  lw          $a0, 0x18($sp)
/* 00F974 8000FDC4 0C0462E6 */  jal         func_80118B98
/* 00F978 8000FDC8 3C0542C8 */   lui        $a1, 0x42c8
/* 00F97C 8000FDCC 50400004 */  beql        $v0, $zero, .L8000FDE0
/* 00F980 8000FDD0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F984 8000FDD4 0C003D31 */  jal         func_8000F4C4
/* 00F988 8000FDD8 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F98C 8000FDDC 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000FDE0:
/* 00F990 8000FDE0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F994 8000FDE4 00001025 */  move        $v0, $zero
/* 00F998 8000FDE8 03E00008 */  jr          $ra
/* 00F99C 8000FDEC 00000000 */   nop

glabel func_8000FDF0 # 15
/* 00F9A0 8000FDF0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00F9A4 8000FDF4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F9A8 8000FDF8 AFA40018 */  sw          $a0, 0x18($sp)
/* 00F9AC 8000FDFC 0C046320 */  jal         func_80118C80
/* 00F9B0 8000FE00 3C0542C8 */   lui        $a1, 0x42c8
/* 00F9B4 8000FE04 50400004 */  beql        $v0, $zero, .L8000FE18
/* 00F9B8 8000FE08 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00F9BC 8000FE0C 0C003D31 */  jal         func_8000F4C4
/* 00F9C0 8000FE10 8FA40018 */   lw         $a0, 0x18($sp)
/* 00F9C4 8000FE14 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000FE18:
/* 00F9C8 8000FE18 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00F9CC 8000FE1C 00001025 */  move        $v0, $zero
/* 00F9D0 8000FE20 03E00008 */  jr          $ra
/* 00F9D4 8000FE24 00000000 */   nop

glabel func_8000FE28 # 16
/* 00F9D8 8000FE28 03E00008 */  jr          $ra
/* 00F9DC 8000FE2C 00000000 */   nop

glabel func_8000FE30 # 17
/* 00F9E0 8000FE30 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00F9E4 8000FE34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00F9E8 8000FE38 8C820054 */  lw          $v0, 0x54($a0)
/* 00F9EC 8000FE3C C4860044 */  lwc1        $f6, 0x44($a0)
/* 00F9F0 8000FE40 44805000 */  mtc1        $zero, $f10
/* 00F9F4 8000FE44 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00F9F8 8000FE48 00803025 */  move        $a2, $a0
/* 00F9FC 8000FE4C E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00FA00 8000FE50 46062201 */  sub.s       $f8, $f4, $f6
/* 00FA04 8000FE54 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00FA08 8000FE58 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00FA0C 8000FE5C C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00FA10 8000FE60 AFA60030 */  sw          $a2, 0x30($sp)
/* 00FA14 8000FE64 27A40020 */  addiu       $a0, $sp, 0x20
/* 00FA18 8000FE68 46128101 */  sub.s       $f4, $f16, $f18
/* 00FA1C 8000FE6C AFA2002C */  sw          $v0, 0x2c($sp)
/* 00FA20 8000FE70 0C0032A9 */  jal         func_8000CAA4
/* 00FA24 8000FE74 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00FA28 8000FE78 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00FA2C 8000FE7C C4460010 */  lwc1        $f6, 0x10($v0)
/* 00FA30 8000FE80 0C00EDB5 */  jal         func_8003B6D4
/* 00FA34 8000FE84 46060301 */   sub.s      $f12, $f0, $f6
/* 00FA38 8000FE88 44804000 */  mtc1        $zero, $f8
/* 00FA3C 8000FE8C 8FA60030 */  lw          $a2, 0x30($sp)
/* 00FA40 8000FE90 00001025 */  move        $v0, $zero
/* 00FA44 8000FE94 4608003C */  c.lt.s      $f0, $f8
/* 00FA48 8000FE98 00C02025 */  move        $a0, $a2
/* 00FA4C 8000FE9C 45000005 */  bc1f        .L8000FEB4
/* 00FA50 8000FEA0 00000000 */   nop
/* 00FA54 8000FEA4 0C003DB3 */  jal         func_8000F6CC
/* 00FA58 8000FEA8 24050022 */   addiu      $a1, $zero, 0x22
/* 00FA5C 8000FEAC 10000001 */  b           .L8000FEB4
/* 00FA60 8000FEB0 24020001 */   addiu      $v0, $zero, 0x1
.L8000FEB4:
/* 00FA64 8000FEB4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FA68 8000FEB8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00FA6C 8000FEBC 03E00008 */  jr          $ra
/* 00FA70 8000FEC0 00000000 */   nop

glabel func_8000FEC4 # 18
/* 00FA74 8000FEC4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00FA78 8000FEC8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FA7C 8000FECC 8C820054 */  lw          $v0, 0x54($a0)
/* 00FA80 8000FED0 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00FA84 8000FED4 44805000 */  mtc1        $zero, $f10
/* 00FA88 8000FED8 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00FA8C 8000FEDC 00803025 */  move        $a2, $a0
/* 00FA90 8000FEE0 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00FA94 8000FEE4 46062201 */  sub.s       $f8, $f4, $f6
/* 00FA98 8000FEE8 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00FA9C 8000FEEC C492004C */  lwc1        $f18, 0x4c($a0)
/* 00FAA0 8000FEF0 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00FAA4 8000FEF4 AFA60030 */  sw          $a2, 0x30($sp)
/* 00FAA8 8000FEF8 27A40020 */  addiu       $a0, $sp, 0x20
/* 00FAAC 8000FEFC 46128101 */  sub.s       $f4, $f16, $f18
/* 00FAB0 8000FF00 AFA2002C */  sw          $v0, 0x2c($sp)
/* 00FAB4 8000FF04 0C0032A9 */  jal         func_8000CAA4
/* 00FAB8 8000FF08 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00FABC 8000FF0C 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00FAC0 8000FF10 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00FAC4 8000FF14 0C00EDB5 */  jal         func_8003B6D4
/* 00FAC8 8000FF18 46060301 */   sub.s      $f12, $f0, $f6
/* 00FACC 8000FF1C 3C0141A0 */  lui         $at, 0x41a0
/* 00FAD0 8000FF20 44814000 */  mtc1        $at, $f8
/* 00FAD4 8000FF24 46000086 */  mov.s       $f2, $f0
/* 00FAD8 8000FF28 46000005 */  abs.s       $f0, $f0
/* 00FADC 8000FF2C 8FA60030 */  lw          $a2, 0x30($sp)
/* 00FAE0 8000FF30 4608003C */  c.lt.s      $f0, $f8
/* 00FAE4 8000FF34 00C02025 */  move        $a0, $a2
/* 00FAE8 8000FF38 45020006 */  bc1fl       .L8000FF54
/* 00FAEC 8000FF3C 44805000 */   mtc1       $zero, $f10
/* 00FAF0 8000FF40 0C003DB3 */  jal         func_8000F6CC
/* 00FAF4 8000FF44 240500BE */   addiu      $a1, $zero, 0xbe
/* 00FAF8 8000FF48 1000000C */  b           .L8000FF7C
/* 00FAFC 8000FF4C 24020001 */   addiu      $v0, $zero, 0x1
/* 00FB00 8000FF50 44805000 */  mtc1        $zero, $f10
.L8000FF54:
/* 00FB04 8000FF54 00C02025 */  move        $a0, $a2
/* 00FB08 8000FF58 00001025 */  move        $v0, $zero
/* 00FB0C 8000FF5C 460A103C */  c.lt.s      $f2, $f10
/* 00FB10 8000FF60 00000000 */  nop
/* 00FB14 8000FF64 45000005 */  bc1f        .L8000FF7C
/* 00FB18 8000FF68 00000000 */   nop
/* 00FB1C 8000FF6C 0C003DB3 */  jal         func_8000F6CC
/* 00FB20 8000FF70 240500C4 */   addiu      $a1, $zero, 0xc4
/* 00FB24 8000FF74 10000001 */  b           .L8000FF7C
/* 00FB28 8000FF78 24020001 */   addiu      $v0, $zero, 0x1
.L8000FF7C:
/* 00FB2C 8000FF7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FB30 8000FF80 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00FB34 8000FF84 03E00008 */  jr          $ra
/* 00FB38 8000FF88 00000000 */   nop

glabel func_8000FF8C # 19
/* 00FB3C 8000FF8C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00FB40 8000FF90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FB44 8000FF94 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00FB48 8000FF98 AFA40020 */  sw          $a0, 0x20($sp)
/* 00FB4C 8000FF9C 0C04637C */  jal         func_80118DF0
/* 00FB50 8000FFA0 AFAE001C */   sw         $t6, 0x1c($sp)
/* 00FB54 8000FFA4 8FAF001C */  lw          $t7, 0x1c($sp)
/* 00FB58 8000FFA8 8FA40020 */  lw          $a0, 0x20($sp)
/* 00FB5C 8000FFAC 8DF801BC */  lw          $t8, 0x1bc($t7)
/* 00FB60 8000FFB0 13000005 */  beqz        $t8, .L8000FFC8
/* 00FB64 8000FFB4 00000000 */   nop
/* 00FB68 8000FFB8 0C0462E6 */  jal         func_80118B98
/* 00FB6C 8000FFBC 3C054434 */   lui        $a1, 0x4434
/* 00FB70 8000FFC0 10000004 */  b           .L8000FFD4
/* 00FB74 8000FFC4 8FBF0014 */   lw         $ra, 0x14($sp)
.L8000FFC8:
/* 00FB78 8000FFC8 0C0462E6 */  jal         func_80118B98
/* 00FB7C 8000FFCC 3C054370 */   lui        $a1, 0x4370
/* 00FB80 8000FFD0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8000FFD4:
/* 00FB84 8000FFD4 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00FB88 8000FFD8 00001025 */  move        $v0, $zero
/* 00FB8C 8000FFDC 03E00008 */  jr          $ra
/* 00FB90 8000FFE0 00000000 */   nop

glabel func_8000FFE4 # 20
/* 00FB94 8000FFE4 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00FB98 8000FFE8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FB9C 8000FFEC 8C820054 */  lw          $v0, 0x54($a0)
/* 00FBA0 8000FFF0 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00FBA4 8000FFF4 44805000 */  mtc1        $zero, $f10
/* 00FBA8 8000FFF8 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00FBAC 8000FFFC 00803025 */  move        $a2, $a0
/* 00FBB0 80010000 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 00FBB4 80010004 46062201 */  sub.s       $f8, $f4, $f6
/* 00FBB8 80010008 E7A80020 */  swc1        $f8, 0x20($sp)
/* 00FBBC 8001000C C492004C */  lwc1        $f18, 0x4c($a0)
/* 00FBC0 80010010 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00FBC4 80010014 AFA60030 */  sw          $a2, 0x30($sp)
/* 00FBC8 80010018 27A40020 */  addiu       $a0, $sp, 0x20
/* 00FBCC 8001001C 46128101 */  sub.s       $f4, $f16, $f18
/* 00FBD0 80010020 AFA2002C */  sw          $v0, 0x2c($sp)
/* 00FBD4 80010024 0C0032A9 */  jal         func_8000CAA4
/* 00FBD8 80010028 E7A40028 */   swc1       $f4, 0x28($sp)
/* 00FBDC 8001002C 8FA2002C */  lw          $v0, 0x2c($sp)
/* 00FBE0 80010030 C4460010 */  lwc1        $f6, 0x10($v0)
/* 00FBE4 80010034 0C00EDB5 */  jal         func_8003B6D4
/* 00FBE8 80010038 46060301 */   sub.s      $f12, $f0, $f6
/* 00FBEC 8001003C 3C0141A0 */  lui         $at, 0x41a0
/* 00FBF0 80010040 44814000 */  mtc1        $at, $f8
/* 00FBF4 80010044 46000086 */  mov.s       $f2, $f0
/* 00FBF8 80010048 46000005 */  abs.s       $f0, $f0
/* 00FBFC 8001004C 8FA60030 */  lw          $a2, 0x30($sp)
/* 00FC00 80010050 4608003C */  c.lt.s      $f0, $f8
/* 00FC04 80010054 00C02025 */  move        $a0, $a2
/* 00FC08 80010058 45020006 */  bc1fl       .L80010074
/* 00FC0C 8001005C 44805000 */   mtc1       $zero, $f10
/* 00FC10 80010060 0C003DB3 */  jal         func_8000F6CC
/* 00FC14 80010064 240500C1 */   addiu      $a1, $zero, 0xc1
/* 00FC18 80010068 1000000C */  b           .L8001009C
/* 00FC1C 8001006C 24020001 */   addiu      $v0, $zero, 0x1
/* 00FC20 80010070 44805000 */  mtc1        $zero, $f10
.L80010074:
/* 00FC24 80010074 00C02025 */  move        $a0, $a2
/* 00FC28 80010078 00001025 */  move        $v0, $zero
/* 00FC2C 8001007C 460A103C */  c.lt.s      $f2, $f10
/* 00FC30 80010080 00000000 */  nop
/* 00FC34 80010084 45000005 */  bc1f        .L8001009C
/* 00FC38 80010088 00000000 */   nop
/* 00FC3C 8001008C 0C003DB3 */  jal         func_8000F6CC
/* 00FC40 80010090 240500C5 */   addiu      $a1, $zero, 0xc5
/* 00FC44 80010094 10000001 */  b           .L8001009C
/* 00FC48 80010098 24020001 */   addiu      $v0, $zero, 0x1
.L8001009C:
/* 00FC4C 8001009C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FC50 800100A0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00FC54 800100A4 03E00008 */  jr          $ra
/* 00FC58 800100A8 00000000 */   nop

glabel func_800100AC # 21
/* 00FC5C 800100AC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FC60 800100B0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FC64 800100B4 8C820054 */  lw          $v0, 0x54($a0)
/* 00FC68 800100B8 8C4E01BC */  lw          $t6, 0x1bc($v0)
/* 00FC6C 800100BC 11C00005 */  beqz        $t6, .L800100D4
/* 00FC70 800100C0 00000000 */   nop
/* 00FC74 800100C4 0C046320 */  jal         func_80118C80
/* 00FC78 800100C8 3C054434 */   lui        $a1, 0x4434
/* 00FC7C 800100CC 10000004 */  b           .L800100E0
/* 00FC80 800100D0 8FBF0014 */   lw         $ra, 0x14($sp)
.L800100D4:
/* 00FC84 800100D4 0C046320 */  jal         func_80118C80
/* 00FC88 800100D8 3C054370 */   lui        $a1, 0x4370
/* 00FC8C 800100DC 8FBF0014 */  lw          $ra, 0x14($sp)
.L800100E0:
/* 00FC90 800100E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FC94 800100E4 00001025 */  move        $v0, $zero
/* 00FC98 800100E8 03E00008 */  jr          $ra
/* 00FC9C 800100EC 00000000 */   nop

glabel func_800100F0 # 22
/* 00FCA0 800100F0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 00FCA4 800100F4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00FCA8 800100F8 AFA40048 */  sw          $a0, 0x48($sp)
/* 00FCAC 800100FC AFA5004C */  sw          $a1, 0x4c($sp)
/* 00FCB0 80010100 8C8E0054 */  lw          $t6, 0x54($a0)
/* 00FCB4 80010104 3C02800F */  lui         $v0, %hi(D_800EF6A0)
/* 00FCB8 80010108 2442F6A0 */  addiu       $v0, $v0, %lo(D_800EF6A0)
/* 00FCBC 8001010C AFAE0044 */  sw          $t6, 0x44($sp)
/* 00FCC0 80010110 C4840044 */  lwc1        $f4, 0x44($a0)
/* 00FCC4 80010114 C4460000 */  lwc1        $f6, 0x0($v0)
/* 00FCC8 80010118 44805000 */  mtc1        $zero, $f10
/* 00FCCC 8001011C C4520008 */  lwc1        $f18, 0x8($v0)
/* 00FCD0 80010120 46062201 */  sub.s       $f8, $f4, $f6
/* 00FCD4 80010124 E7AA003C */  swc1        $f10, 0x3c($sp)
/* 00FCD8 80010128 00802825 */  move        $a1, $a0
/* 00FCDC 8001012C E7A80038 */  swc1        $f8, 0x38($sp)
/* 00FCE0 80010130 C490004C */  lwc1        $f16, 0x4c($a0)
/* 00FCE4 80010134 AFA50048 */  sw          $a1, 0x48($sp)
/* 00FCE8 80010138 27A40038 */  addiu       $a0, $sp, 0x38
/* 00FCEC 8001013C 46128101 */  sub.s       $f4, $f16, $f18
/* 00FCF0 80010140 0C0032A9 */  jal         func_8000CAA4
/* 00FCF4 80010144 E7A40040 */   swc1       $f4, 0x40($sp)
/* 00FCF8 80010148 8FAF0044 */  lw          $t7, 0x44($sp)
/* 00FCFC 8001014C 46000386 */  mov.s       $f14, $f0
/* 00FD00 80010150 3C013FF0 */  lui         $at, 0x3ff0
/* 00FD04 80010154 C5EC0010 */  lwc1        $f12, 0x10($t7)
/* 00FD08 80010158 44814800 */  mtc1        $at, $f9
/* 00FD0C 8001015C 44804000 */  mtc1        $zero, $f8
/* 00FD10 80010160 460C0181 */  sub.s       $f6, $f0, $f12
/* 00FD14 80010164 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00FD18 80010168 C7AA004C */  lwc1        $f10, 0x4c($sp)
/* 00FD1C 8001016C 46003021 */  cvt.d.s     $f0, $f6
/* 00FD20 80010170 46200005 */  abs.d       $f0, $f0
/* 00FD24 80010174 4628003C */  c.lt.d      $f0, $f8
/* 00FD28 80010178 00000000 */  nop
/* 00FD2C 8001017C 45000003 */  bc1f        .L8001018C
/* 00FD30 80010180 00000000 */   nop
/* 00FD34 80010184 1000001E */  b           .L80010200
/* 00FD38 80010188 24020001 */   addiu      $v0, $zero, 0x1
.L8001018C:
/* 00FD3C 8001018C C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
/* 00FD40 80010190 3C063F80 */  lui         $a2, 0x3f80
/* 00FD44 80010194 3C0742B4 */  lui         $a3, 0x42b4
/* 00FD48 80010198 46105482 */  mul.s       $f18, $f10, $f16
/* 00FD4C 8001019C E7AE0034 */  swc1        $f14, 0x34($sp)
/* 00FD50 800101A0 0C00F097 */  jal         func_8003C25C
/* 00FD54 800101A4 E7B20010 */   swc1       $f18, 0x10($sp)
/* 00FD58 800101A8 8FB80044 */  lw          $t8, 0x44($sp)
/* 00FD5C 800101AC 8FA40048 */  lw          $a0, 0x48($sp)
/* 00FD60 800101B0 24060001 */  addiu       $a2, $zero, 0x1
/* 00FD64 800101B4 C7040010 */  lwc1        $f4, 0x10($t8)
/* 00FD68 800101B8 46040181 */  sub.s       $f6, $f0, $f4
/* 00FD6C 800101BC 44053000 */  mfc1        $a1, $f6
/* 00FD70 800101C0 0C0057E5 */  jal         func_80015F94
/* 00FD74 800101C4 00000000 */   nop
/* 00FD78 800101C8 8FB90044 */  lw          $t9, 0x44($sp)
/* 00FD7C 800101CC C7A80034 */  lwc1        $f8, 0x34($sp)
/* 00FD80 800101D0 3C013F80 */  lui         $at, 0x3f80
/* 00FD84 800101D4 C72A0010 */  lwc1        $f10, 0x10($t9)
/* 00FD88 800101D8 44818000 */  mtc1        $at, $f16
/* 00FD8C 800101DC 00001025 */  move        $v0, $zero
/* 00FD90 800101E0 460A4001 */  sub.s       $f0, $f8, $f10
/* 00FD94 800101E4 46000005 */  abs.s       $f0, $f0
/* 00FD98 800101E8 4610003C */  c.lt.s      $f0, $f16
/* 00FD9C 800101EC 00000000 */  nop
/* 00FDA0 800101F0 45000003 */  bc1f        .L80010200
/* 00FDA4 800101F4 00000000 */   nop
/* 00FDA8 800101F8 10000001 */  b           .L80010200
/* 00FDAC 800101FC 24020001 */   addiu      $v0, $zero, 0x1
.L80010200:
/* 00FDB0 80010200 8FBF001C */  lw          $ra, 0x1c($sp)
/* 00FDB4 80010204 27BD0048 */  addiu       $sp, $sp, 0x48
/* 00FDB8 80010208 03E00008 */  jr          $ra
/* 00FDBC 8001020C 00000000 */   nop

glabel func_80010210 # 23
/* 00FDC0 80010210 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FDC4 80010214 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FDC8 80010218 0C00403C */  jal         func_800100F0
/* 00FDCC 8001021C 3C054434 */   lui        $a1, 0x4434
/* 00FDD0 80010220 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FDD4 80010224 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FDD8 80010228 00001025 */  move        $v0, $zero
/* 00FDDC 8001022C 03E00008 */  jr          $ra
/* 00FDE0 80010230 00000000 */   nop

glabel func_80010234 # 24
/* 00FDE4 80010234 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FDE8 80010238 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FDEC 8001023C 8C820054 */  lw          $v0, 0x54($a0)
/* 00FDF0 80010240 944E01EA */  lhu         $t6, 0x1ea($v0)
/* 00FDF4 80010244 51C00006 */  beql        $t6, $zero, .L80010260
/* 00FDF8 80010248 8C4F01BC */   lw         $t7, 0x1bc($v0)
/* 00FDFC 8001024C 0C003DB3 */  jal         func_8000F6CC
/* 00FE00 80010250 2405003D */   addiu      $a1, $zero, 0x3d
/* 00FE04 80010254 10000007 */  b           .L80010274
/* 00FE08 80010258 24020001 */   addiu      $v0, $zero, 0x1
/* 00FE0C 8001025C 8C4F01BC */  lw          $t7, 0x1bc($v0)
.L80010260:
/* 00FE10 80010260 00001025 */  move        $v0, $zero
/* 00FE14 80010264 15E00003 */  bnez        $t7, .L80010274
/* 00FE18 80010268 00000000 */   nop
/* 00FE1C 8001026C 10000001 */  b           .L80010274
/* 00FE20 80010270 24020001 */   addiu      $v0, $zero, 0x1
.L80010274:
/* 00FE24 80010274 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FE28 80010278 27BD0018 */  addiu       $sp, $sp, 0x18
/* 00FE2C 8001027C 03E00008 */  jr          $ra
/* 00FE30 80010280 00000000 */   nop

glabel func_80010284 # 25
/* 00FE34 80010284 8C820054 */  lw          $v0, 0x54($a0)
/* 00FE38 80010288 8C4E01BC */  lw          $t6, 0x1bc($v0)
/* 00FE3C 8001028C 00001025 */  move        $v0, $zero
/* 00FE40 80010290 15C00003 */  bnez        $t6, .L800102A0
/* 00FE44 80010294 00000000 */   nop
/* 00FE48 80010298 03E00008 */  jr          $ra
/* 00FE4C 8001029C 24020001 */   addiu      $v0, $zero, 0x1
.L800102A0:
/* 00FE50 800102A0 03E00008 */  jr          $ra
/* 00FE54 800102A4 00000000 */   nop

glabel func_800102A8 # 26
/* 00FE58 800102A8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FE5C 800102AC AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FE60 800102B0 8C820054 */  lw          $v0, 0x54($a0)
/* 00FE64 800102B4 0C00EAC8 */  jal         func_8003AB20
/* 00FE68 800102B8 8444011C */   lh         $a0, 0x11c($v0)
/* 00FE6C 800102BC 28410004 */  slti        $at, $v0, 0x4
/* 00FE70 800102C0 14200003 */  bnez        $at, .L800102D0
/* 00FE74 800102C4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00FE78 800102C8 10000002 */  b           .L800102D4
/* 00FE7C 800102CC 24020001 */   addiu      $v0, $zero, 0x1
.L800102D0:
/* 00FE80 800102D0 00001025 */  move        $v0, $zero
.L800102D4:
/* 00FE84 800102D4 03E00008 */  jr          $ra
/* 00FE88 800102D8 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_800102DC # 27
/* 00FE8C 800102DC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FE90 800102E0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FE94 800102E4 0C04637C */  jal         func_80118DF0
/* 00FE98 800102E8 AFA40018 */   sw         $a0, 0x18($sp)
/* 00FE9C 800102EC 8FA40018 */  lw          $a0, 0x18($sp)
/* 00FEA0 800102F0 0C0462E6 */  jal         func_80118B98
/* 00FEA4 800102F4 3C0542F0 */   lui        $a1, 0x42f0
/* 00FEA8 800102F8 10400003 */  beqz        $v0, .L80010308
/* 00FEAC 800102FC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00FEB0 80010300 10000002 */  b           .L8001030C
/* 00FEB4 80010304 24020001 */   addiu      $v0, $zero, 0x1
.L80010308:
/* 00FEB8 80010308 00001025 */  move        $v0, $zero
.L8001030C:
/* 00FEBC 8001030C 03E00008 */  jr          $ra
/* 00FEC0 80010310 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_80010314 # 28
/* 00FEC4 80010314 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00FEC8 80010318 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FECC 8001031C 0C04637C */  jal         func_80118DF0
/* 00FED0 80010320 AFA40018 */   sw         $a0, 0x18($sp)
/* 00FED4 80010324 8FA40018 */  lw          $a0, 0x18($sp)
/* 00FED8 80010328 0C0462E6 */  jal         func_80118B98
/* 00FEDC 8001032C 3C0544B4 */   lui        $a1, 0x44b4
/* 00FEE0 80010330 10400003 */  beqz        $v0, .L80010340
/* 00FEE4 80010334 8FBF0014 */   lw         $ra, 0x14($sp)
/* 00FEE8 80010338 10000002 */  b           .L80010344
/* 00FEEC 8001033C 24020001 */   addiu      $v0, $zero, 0x1
.L80010340:
/* 00FEF0 80010340 00001025 */  move        $v0, $zero
.L80010344:
/* 00FEF4 80010344 03E00008 */  jr          $ra
/* 00FEF8 80010348 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8001034C # 29
/* 00FEFC 8001034C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00FF00 80010350 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00FF04 80010354 8C820054 */  lw          $v0, 0x54($a0)
/* 00FF08 80010358 C4860044 */  lwc1        $f6, 0x44($a0)
/* 00FF0C 8001035C 44805000 */  mtc1        $zero, $f10
/* 00FF10 80010360 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 00FF14 80010364 00803825 */  move        $a3, $a0
/* 00FF18 80010368 E7AA002C */  swc1        $f10, 0x2c($sp)
/* 00FF1C 8001036C 46062201 */  sub.s       $f8, $f4, $f6
/* 00FF20 80010370 E7A80028 */  swc1        $f8, 0x28($sp)
/* 00FF24 80010374 C492004C */  lwc1        $f18, 0x4c($a0)
/* 00FF28 80010378 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 00FF2C 8001037C AFA70038 */  sw          $a3, 0x38($sp)
/* 00FF30 80010380 27A40028 */  addiu       $a0, $sp, 0x28
/* 00FF34 80010384 46128101 */  sub.s       $f4, $f16, $f18
/* 00FF38 80010388 0C0032A9 */  jal         func_8000CAA4
/* 00FF3C 8001038C E7A40030 */   swc1       $f4, 0x30($sp)
/* 00FF40 80010390 44050000 */  mfc1        $a1, $f0
/* 00FF44 80010394 8FA40038 */  lw          $a0, 0x38($sp)
/* 00FF48 80010398 0C0057C7 */  jal         func_80015F1C
/* 00FF4C 8001039C 24060001 */   addiu      $a2, $zero, 0x1
/* 00FF50 800103A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00FF54 800103A4 27BD0038 */  addiu       $sp, $sp, 0x38
/* 00FF58 800103A8 24020001 */  addiu       $v0, $zero, 0x1
/* 00FF5C 800103AC 03E00008 */  jr          $ra
/* 00FF60 800103B0 00000000 */   nop

glabel func_800103B4 # 30
/* 00FF64 800103B4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 00FF68 800103B8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00FF6C 800103BC AFB00018 */  sw          $s0, 0x18($sp)
/* 00FF70 800103C0 8C900054 */  lw          $s0, 0x54($a0)
/* 00FF74 800103C4 0C04637C */  jal         func_80118DF0
/* 00FF78 800103C8 AFA40040 */   sw         $a0, 0x40($sp)
/* 00FF7C 800103CC 8FA40040 */  lw          $a0, 0x40($sp)
/* 00FF80 800103D0 0C0462E6 */  jal         func_80118B98
/* 00FF84 800103D4 3C054396 */   lui        $a1, 0x4396
/* 00FF88 800103D8 8FA60040 */  lw          $a2, 0x40($sp)
/* 00FF8C 800103DC C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 00FF90 800103E0 44805000 */  mtc1        $zero, $f10
/* 00FF94 800103E4 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 00FF98 800103E8 27A40024 */  addiu       $a0, $sp, 0x24
/* 00FF9C 800103EC E7AA0028 */  swc1        $f10, 0x28($sp)
/* 00FFA0 800103F0 46062201 */  sub.s       $f8, $f4, $f6
/* 00FFA4 800103F4 E7A80024 */  swc1        $f8, 0x24($sp)
/* 00FFA8 800103F8 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 00FFAC 800103FC C4D2004C */  lwc1        $f18, 0x4c($a2)
/* 00FFB0 80010400 46128101 */  sub.s       $f4, $f16, $f18
/* 00FFB4 80010404 0C00E974 */  jal         func_8003A5D0
/* 00FFB8 80010408 E7A4002C */   swc1       $f4, 0x2c($sp)
/* 00FFBC 8001040C C6060204 */  lwc1        $f6, 0x204($s0)
/* 00FFC0 80010410 C60801A4 */  lwc1        $f8, 0x1a4($s0)
/* 00FFC4 80010414 44801000 */  mtc1        $zero, $f2
/* 00FFC8 80010418 46083280 */  add.s       $f10, $f6, $f8
/* 00FFCC 8001041C 460A003C */  c.lt.s      $f0, $f10
/* 00FFD0 80010420 00000000 */  nop
/* 00FFD4 80010424 45010005 */  bc1t        .L8001043C
/* 00FFD8 80010428 00000000 */   nop
/* 00FFDC 8001042C 960E01EA */  lhu         $t6, 0x1ea($s0)
/* 00FFE0 80010430 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 00FFE4 80010434 11C00003 */  beqz        $t6, .L80010444
/* 00FFE8 80010438 00000000 */   nop
.L8001043C:
/* 00FFEC 8001043C 1000000B */  b           .L8001046C
/* 00FFF0 80010440 24020001 */   addiu      $v0, $zero, 0x1
.L80010444:
/* 00FFF4 80010444 C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
/* 00FFF8 80010448 3C01447A */  lui         $at, 0x447a
/* 00FFFC 8001044C 44819000 */  mtc1        $at, $f18
/* 010000 80010450 E7A20030 */  swc1        $f2, 0x30($sp)
/* 010004 80010454 E7A20034 */  swc1        $f2, 0x34($sp)
/* 010008 80010458 46128102 */  mul.s       $f4, $f16, $f18
/* 01000C 8001045C 27A40030 */  addiu       $a0, $sp, 0x30
/* 010010 80010460 0C00202A */  jal         func_800080A8
/* 010014 80010464 E7A40038 */   swc1       $f4, 0x38($sp)
/* 010018 80010468 00001025 */  move        $v0, $zero
.L8001046C:
/* 01001C 8001046C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010020 80010470 8FB00018 */  lw          $s0, 0x18($sp)
/* 010024 80010474 27BD0040 */  addiu       $sp, $sp, 0x40
/* 010028 80010478 03E00008 */  jr          $ra
/* 01002C 8001047C 00000000 */   nop

glabel func_80010480 # 31
/* 010030 80010480 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 010034 80010484 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 010038 80010488 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01003C 8001048C AFBF0014 */  sw          $ra, 0x14($sp)
/* 010040 80010490 C4880000 */  lwc1        $f8, 0x0($a0)
/* 010044 80010494 C5CA000C */  lwc1        $f10, 0xc($t6)
/* 010048 80010498 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 01004C 8001049C C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 010050 800104A0 460A4403 */  div.s       $f16, $f8, $f10
/* 010054 800104A4 3C0143C8 */  lui         $at, 0x43c8
/* 010058 800104A8 44813000 */  mtc1        $at, $f6
/* 01005C 800104AC 3C013F80 */  lui         $at, 0x3f80
/* 010060 800104B0 44819000 */  mtc1        $at, $f18
/* 010064 800104B4 46062002 */  mul.s       $f0, $f4, $f6
/* 010068 800104B8 3C013F00 */  lui         $at, 0x3f00
/* 01006C 800104BC 44813000 */  mtc1        $at, $f6
/* 010070 800104C0 3C013FF0 */  lui         $at, 0x3ff0
/* 010074 800104C4 44818800 */  mtc1        $at, $f17
/* 010078 800104C8 2404000A */  addiu       $a0, $zero, 0xa
/* 01007C 800104CC 46128101 */  sub.s       $f4, $f16, $f18
/* 010080 800104D0 44808000 */  mtc1        $zero, $f16
/* 010084 800104D4 46062202 */  mul.s       $f8, $f4, $f6
/* 010088 800104D8 46000121 */  cvt.d.s     $f4, $f0
/* 01008C 800104DC 460042A1 */  cvt.d.s     $f10, $f8
/* 010090 800104E0 462A8480 */  add.d       $f18, $f16, $f10
/* 010094 800104E4 46322182 */  mul.d       $f6, $f4, $f18
/* 010098 800104E8 46203020 */  cvt.s.d     $f0, $f6
/* 01009C 800104EC 0C00EAC8 */  jal         func_8003AB20
/* 0100A0 800104F0 E7A0001C */   swc1       $f0, 0x1c($sp)
/* 0100A4 800104F4 244FFFFC */  addiu       $t7, $v0, -0x4
/* 0100A8 800104F8 448F4000 */  mtc1        $t7, $f8
/* 0100AC 800104FC C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 0100B0 80010500 44805000 */  mtc1        $zero, $f10
/* 0100B4 80010504 46804420 */  cvt.s.w     $f16, $f8
/* 0100B8 80010508 27A40020 */  addiu       $a0, $sp, 0x20
/* 0100BC 8001050C E7A00028 */  swc1        $f0, 0x28($sp)
/* 0100C0 80010510 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 0100C4 80010514 0C00202A */  jal         func_800080A8
/* 0100C8 80010518 E7B00020 */   swc1       $f16, 0x20($sp)
/* 0100CC 8001051C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0100D0 80010520 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0100D4 80010524 00001025 */  move        $v0, $zero
/* 0100D8 80010528 03E00008 */  jr          $ra
/* 0100DC 8001052C 00000000 */   nop

glabel func_80010530 # 32
/* 0100E0 80010530 3C0E8013 */  lui         $t6, %hi(D_80133DE4)
/* 0100E4 80010534 8DCE3DE4 */  lw          $t6, %lo(D_80133DE4)($t6)
/* 0100E8 80010538 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0100EC 8001053C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0100F0 80010540 C4880000 */  lwc1        $f8, 0x0($a0)
/* 0100F4 80010544 C5CA000C */  lwc1        $f10, 0xc($t6)
/* 0100F8 80010548 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0100FC 8001054C C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 010100 80010550 460A4403 */  div.s       $f16, $f8, $f10
/* 010104 80010554 3C014416 */  lui         $at, 0x4416
/* 010108 80010558 44813000 */  mtc1        $at, $f6
/* 01010C 8001055C 3C013F80 */  lui         $at, 0x3f80
/* 010110 80010560 44819000 */  mtc1        $at, $f18
/* 010114 80010564 46062002 */  mul.s       $f0, $f4, $f6
/* 010118 80010568 3C013F00 */  lui         $at, 0x3f00
/* 01011C 8001056C 44813000 */  mtc1        $at, $f6
/* 010120 80010570 3C013FF0 */  lui         $at, 0x3ff0
/* 010124 80010574 44818800 */  mtc1        $at, $f17
/* 010128 80010578 2404000A */  addiu       $a0, $zero, 0xa
/* 01012C 8001057C 46128101 */  sub.s       $f4, $f16, $f18
/* 010130 80010580 44808000 */  mtc1        $zero, $f16
/* 010134 80010584 46062202 */  mul.s       $f8, $f4, $f6
/* 010138 80010588 46000121 */  cvt.d.s     $f4, $f0
/* 01013C 8001058C 460042A1 */  cvt.d.s     $f10, $f8
/* 010140 80010590 462A8480 */  add.d       $f18, $f16, $f10
/* 010144 80010594 46322182 */  mul.d       $f6, $f4, $f18
/* 010148 80010598 46203020 */  cvt.s.d     $f0, $f6
/* 01014C 8001059C 0C00EAC8 */  jal         func_8003AB20
/* 010150 800105A0 E7A0001C */   swc1       $f0, 0x1c($sp)
/* 010154 800105A4 244FFFFC */  addiu       $t7, $v0, -0x4
/* 010158 800105A8 448F4000 */  mtc1        $t7, $f8
/* 01015C 800105AC C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 010160 800105B0 44805000 */  mtc1        $zero, $f10
/* 010164 800105B4 46804420 */  cvt.s.w     $f16, $f8
/* 010168 800105B8 27A40020 */  addiu       $a0, $sp, 0x20
/* 01016C 800105BC E7A00028 */  swc1        $f0, 0x28($sp)
/* 010170 800105C0 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 010174 800105C4 0C00202A */  jal         func_800080A8
/* 010178 800105C8 E7B00020 */   swc1       $f16, 0x20($sp)
/* 01017C 800105CC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010180 800105D0 27BD0030 */  addiu       $sp, $sp, 0x30
/* 010184 800105D4 00001025 */  move        $v0, $zero
/* 010188 800105D8 03E00008 */  jr          $ra
/* 01018C 800105DC 00000000 */   nop

glabel func_800105E0 # 33
/* 010190 800105E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010194 800105E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010198 800105E8 AFA40018 */  sw          $a0, 0x18($sp)
/* 01019C 800105EC 0C00EAC8 */  jal         func_8003AB20
/* 0101A0 800105F0 2404000A */   addiu      $a0, $zero, 0xa
/* 0101A4 800105F4 244EFFFB */  addiu       $t6, $v0, -0x5
/* 0101A8 800105F8 448E2000 */  mtc1        $t6, $f4
/* 0101AC 800105FC 8FA40018 */  lw          $a0, 0x18($sp)
/* 0101B0 80010600 24060001 */  addiu       $a2, $zero, 0x1
/* 0101B4 80010604 46802120 */  cvt.s.w     $f4, $f4
/* 0101B8 80010608 44052000 */  mfc1        $a1, $f4
/* 0101BC 8001060C 0C0057E5 */  jal         func_80015F94
/* 0101C0 80010610 00000000 */   nop
/* 0101C4 80010614 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0101C8 80010618 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0101CC 8001061C 00001025 */  move        $v0, $zero
/* 0101D0 80010620 03E00008 */  jr          $ra
/* 0101D4 80010624 00000000 */   nop

glabel func_80010628 # 34
/* 0101D8 80010628 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0101DC 8001062C C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 0101E0 80010630 3C01457A */  lui         $at, 0x457a
/* 0101E4 80010634 44813000 */  mtc1        $at, $f6
/* 0101E8 80010638 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0101EC 8001063C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0101F0 80010640 46062002 */  mul.s       $f0, $f4, $f6
/* 0101F4 80010644 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0101F8 80010648 AFA40030 */  sw          $a0, 0x30($sp)
/* 0101FC 8001064C 3C054234 */  lui         $a1, 0x4234
/* 010200 80010650 00003025 */  move        $a2, $zero
/* 010204 80010654 AFAE002C */  sw          $t6, 0x2c($sp)
/* 010208 80010658 0C0057E5 */  jal         func_80015F94
/* 01020C 8001065C E7A0001C */   swc1       $f0, 0x1c($sp)
/* 010210 80010660 8FAF002C */  lw          $t7, 0x2c($sp)
/* 010214 80010664 3C0142B4 */  lui         $at, 0x42b4
/* 010218 80010668 44814000 */  mtc1        $at, $f8
/* 01021C 8001066C C5E2000C */  lwc1        $f2, 0xc($t7)
/* 010220 80010670 8FA70030 */  lw          $a3, 0x30($sp)
/* 010224 80010674 C7A0001C */  lwc1        $f0, 0x1c($sp)
/* 010228 80010678 4602403C */  c.lt.s      $f8, $f2
/* 01022C 8001067C 3C014387 */  lui         $at, 0x4387
/* 010230 80010680 45020009 */  bc1fl       .L800106A8
/* 010234 80010684 3C013FC0 */   lui        $at, 0x3fc0
/* 010238 80010688 44815000 */  mtc1        $at, $f10
/* 01023C 8001068C 00000000 */  nop
/* 010240 80010690 460A103C */  c.lt.s      $f2, $f10
/* 010244 80010694 00000000 */  nop
/* 010248 80010698 45020003 */  bc1fl       .L800106A8
/* 01024C 8001069C 3C013FC0 */   lui        $at, 0x3fc0
/* 010250 800106A0 46000007 */  neg.s       $f0, $f0
/* 010254 800106A4 3C013FC0 */  lui         $at, 0x3fc0
.L800106A8:
/* 010258 800106A8 44819000 */  mtc1        $at, $f18
/* 01025C 800106AC C4F0001C */  lwc1        $f16, 0x1c($a3)
/* 010260 800106B0 44801000 */  mtc1        $zero, $f2
/* 010264 800106B4 27A40020 */  addiu       $a0, $sp, 0x20
/* 010268 800106B8 46128100 */  add.s       $f4, $f16, $f18
/* 01026C 800106BC E4E4001C */  swc1        $f4, 0x1c($a3)
/* 010270 800106C0 E7A00028 */  swc1        $f0, 0x28($sp)
/* 010274 800106C4 E7A20024 */  swc1        $f2, 0x24($sp)
/* 010278 800106C8 0C00202A */  jal         func_800080A8
/* 01027C 800106CC E7A20020 */   swc1       $f2, 0x20($sp)
/* 010280 800106D0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010284 800106D4 27BD0030 */  addiu       $sp, $sp, 0x30
/* 010288 800106D8 00001025 */  move        $v0, $zero
/* 01028C 800106DC 03E00008 */  jr          $ra
/* 010290 800106E0 00000000 */   nop

glabel func_800106E4 # 35
/* 010294 800106E4 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010298 800106E8 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 01029C 800106EC 3C01800A */  lui         $at, %hi(D_800A25CC)
/* 0102A0 800106F0 C42625CC */  lwc1        $f6, %lo(D_800A25CC)($at)
/* 0102A4 800106F4 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0102A8 800106F8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0102AC 800106FC 46062202 */  mul.s       $f8, $f4, $f6
/* 0102B0 80010700 AFB10018 */  sw          $s1, 0x18($sp)
/* 0102B4 80010704 AFB00014 */  sw          $s0, 0x14($sp)
/* 0102B8 80010708 8C910054 */  lw          $s1, 0x54($a0)
/* 0102BC 8001070C 00808025 */  move        $s0, $a0
/* 0102C0 80010710 0C04637C */  jal         func_80118DF0
/* 0102C4 80010714 E7A80028 */   swc1       $f8, 0x28($sp)
/* 0102C8 80010718 02002025 */  move        $a0, $s0
/* 0102CC 8001071C 0C0462E6 */  jal         func_80118B98
/* 0102D0 80010720 3C054396 */   lui        $a1, 0x4396
/* 0102D4 80010724 0C00EAC8 */  jal         func_8003AB20
/* 0102D8 80010728 2404000A */   addiu      $a0, $zero, 0xa
/* 0102DC 8001072C 244EFFFB */  addiu       $t6, $v0, -0x5
/* 0102E0 80010730 448E5000 */  mtc1        $t6, $f10
/* 0102E4 80010734 02002025 */  move        $a0, $s0
/* 0102E8 80010738 24060001 */  addiu       $a2, $zero, 0x1
/* 0102EC 8001073C 468052A0 */  cvt.s.w     $f10, $f10
/* 0102F0 80010740 44055000 */  mfc1        $a1, $f10
/* 0102F4 80010744 0C0057E5 */  jal         func_80015F94
/* 0102F8 80010748 00000000 */   nop
/* 0102FC 8001074C 02002025 */  move        $a0, $s0
/* 010300 80010750 3C054234 */  lui         $a1, 0x4234
/* 010304 80010754 0C0057E5 */  jal         func_80015F94
/* 010308 80010758 00003025 */   move       $a2, $zero
/* 01030C 8001075C 3C0142B4 */  lui         $at, 0x42b4
/* 010310 80010760 44818000 */  mtc1        $at, $f16
/* 010314 80010764 C620000C */  lwc1        $f0, 0xc($s1)
/* 010318 80010768 3C014387 */  lui         $at, 0x4387
/* 01031C 8001076C 4600803C */  c.lt.s      $f16, $f0
/* 010320 80010770 00000000 */  nop
/* 010324 80010774 4502000A */  bc1fl       .L800107A0
/* 010328 80010778 3C013FC0 */   lui        $at, 0x3fc0
/* 01032C 8001077C 44819000 */  mtc1        $at, $f18
/* 010330 80010780 C7A40028 */  lwc1        $f4, 0x28($sp)
/* 010334 80010784 4612003C */  c.lt.s      $f0, $f18
/* 010338 80010788 00000000 */  nop
/* 01033C 8001078C 45020004 */  bc1fl       .L800107A0
/* 010340 80010790 3C013FC0 */   lui        $at, 0x3fc0
/* 010344 80010794 46002187 */  neg.s       $f6, $f4
/* 010348 80010798 E7A60028 */  swc1        $f6, 0x28($sp)
/* 01034C 8001079C 3C013FC0 */  lui         $at, 0x3fc0
.L800107A0:
/* 010350 800107A0 44815000 */  mtc1        $at, $f10
/* 010354 800107A4 C608001C */  lwc1        $f8, 0x1c($s0)
/* 010358 800107A8 44800000 */  mtc1        $zero, $f0
/* 01035C 800107AC 27A40038 */  addiu       $a0, $sp, 0x38
/* 010360 800107B0 460A4400 */  add.s       $f16, $f8, $f10
/* 010364 800107B4 E610001C */  swc1        $f16, 0x1c($s0)
/* 010368 800107B8 C7B20028 */  lwc1        $f18, 0x28($sp)
/* 01036C 800107BC E7A0003C */  swc1        $f0, 0x3c($sp)
/* 010370 800107C0 E7A00038 */  swc1        $f0, 0x38($sp)
/* 010374 800107C4 0C00202A */  jal         func_800080A8
/* 010378 800107C8 E7B20040 */   swc1       $f18, 0x40($sp)
/* 01037C 800107CC C62401EC */  lwc1        $f4, 0x1ec($s1)
/* 010380 800107D0 C6060044 */  lwc1        $f6, 0x44($s0)
/* 010384 800107D4 44805000 */  mtc1        $zero, $f10
/* 010388 800107D8 27A4002C */  addiu       $a0, $sp, 0x2c
/* 01038C 800107DC 46062201 */  sub.s       $f8, $f4, $f6
/* 010390 800107E0 E7AA0030 */  swc1        $f10, 0x30($sp)
/* 010394 800107E4 E7A8002C */  swc1        $f8, 0x2c($sp)
/* 010398 800107E8 C612004C */  lwc1        $f18, 0x4c($s0)
/* 01039C 800107EC C63001F4 */  lwc1        $f16, 0x1f4($s1)
/* 0103A0 800107F0 46128101 */  sub.s       $f4, $f16, $f18
/* 0103A4 800107F4 0C00E974 */  jal         func_8003A5D0
/* 0103A8 800107F8 E7A40034 */   swc1       $f4, 0x34($sp)
/* 0103AC 800107FC C6260204 */  lwc1        $f6, 0x204($s1)
/* 0103B0 80010800 C62801A4 */  lwc1        $f8, 0x1a4($s1)
/* 0103B4 80010804 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0103B8 80010808 00001025 */  move        $v0, $zero
/* 0103BC 8001080C 46083280 */  add.s       $f10, $f6, $f8
/* 0103C0 80010810 460A003C */  c.lt.s      $f0, $f10
/* 0103C4 80010814 00000000 */  nop
/* 0103C8 80010818 45000003 */  bc1f        .L80010828
/* 0103CC 8001081C 00000000 */   nop
/* 0103D0 80010820 10000001 */  b           .L80010828
/* 0103D4 80010824 24020001 */   addiu      $v0, $zero, 0x1
.L80010828:
/* 0103D8 80010828 8FB00014 */  lw          $s0, 0x14($sp)
/* 0103DC 8001082C 8FB10018 */  lw          $s1, 0x18($sp)
/* 0103E0 80010830 03E00008 */  jr          $ra
/* 0103E4 80010834 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80010838 # 36
/* 0103E8 80010838 3C014000 */  lui         $at, 0x4000
/* 0103EC 8001083C 44813000 */  mtc1        $at, $f6
/* 0103F0 80010840 C484001C */  lwc1        $f4, 0x1c($a0)
/* 0103F4 80010844 00001025 */  move        $v0, $zero
/* 0103F8 80010848 46062200 */  add.s       $f8, $f4, $f6
/* 0103FC 8001084C 03E00008 */  jr          $ra
/* 010400 80010850 E488001C */   swc1       $f8, 0x1c($a0)

glabel func_80010854 # 37
/* 010404 80010854 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 010408 80010858 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01040C 8001085C 8C820054 */  lw          $v0, 0x54($a0)
/* 010410 80010860 3C01800A */  lui         $at, %hi(D_800A25D0)
/* 010414 80010864 8C4E01BC */  lw          $t6, 0x1bc($v0)
/* 010418 80010868 24020001 */  addiu       $v0, $zero, 0x1
/* 01041C 8001086C 11C0000A */  beqz        $t6, .L80010898
/* 010420 80010870 00000000 */   nop
/* 010424 80010874 44800000 */  mtc1        $zero, $f0
/* 010428 80010878 C42425D0 */  lwc1        $f4, %lo(D_800A25D0)($at)
/* 01042C 8001087C 27A40018 */  addiu       $a0, $sp, 0x18
/* 010430 80010880 E7A00018 */  swc1        $f0, 0x18($sp)
/* 010434 80010884 E7A4001C */  swc1        $f4, 0x1c($sp)
/* 010438 80010888 0C00202A */  jal         func_800080A8
/* 01043C 8001088C E7A00020 */   swc1       $f0, 0x20($sp)
/* 010440 80010890 10000001 */  b           .L80010898
/* 010444 80010894 00001025 */   move       $v0, $zero
.L80010898:
/* 010448 80010898 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01044C 8001089C 27BD0028 */  addiu       $sp, $sp, 0x28
/* 010450 800108A0 03E00008 */  jr          $ra
/* 010454 800108A4 00000000 */   nop

glabel func_800108A8 # 38
/* 010458 800108A8 3C013F00 */  lui         $at, 0x3f00
/* 01045C 800108AC 44813000 */  mtc1        $at, $f6
/* 010460 800108B0 C484001C */  lwc1        $f4, 0x1c($a0)
/* 010464 800108B4 00001025 */  move        $v0, $zero
/* 010468 800108B8 46062200 */  add.s       $f8, $f4, $f6
/* 01046C 800108BC 03E00008 */  jr          $ra
/* 010470 800108C0 E488001C */   swc1       $f8, 0x1c($a0)

glabel func_800108C4 # 39
/* 010474 800108C4 3C013F00 */  lui         $at, 0x3f00
/* 010478 800108C8 44813000 */  mtc1        $at, $f6
/* 01047C 800108CC C484001C */  lwc1        $f4, 0x1c($a0)
/* 010480 800108D0 00001025 */  move        $v0, $zero
/* 010484 800108D4 46062201 */  sub.s       $f8, $f4, $f6
/* 010488 800108D8 03E00008 */  jr          $ra
/* 01048C 800108DC E488001C */   swc1       $f8, 0x1c($a0)

glabel func_800108E0 # 40
/* 010490 800108E0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010494 800108E4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010498 800108E8 3C0541A0 */  lui         $a1, 0x41a0
/* 01049C 800108EC 0C0057E5 */  jal         func_80015F94
/* 0104A0 800108F0 24060001 */   addiu      $a2, $zero, 0x1
/* 0104A4 800108F4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0104A8 800108F8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0104AC 800108FC 00001025 */  move        $v0, $zero
/* 0104B0 80010900 03E00008 */  jr          $ra
/* 0104B4 80010904 00000000 */   nop

glabel func_80010908 # 41
/* 0104B8 80010908 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0104BC 8001090C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0104C0 80010910 8C820054 */  lw          $v0, 0x54($a0)
/* 0104C4 80010914 00003025 */  move        $a2, $zero
/* 0104C8 80010918 C444000C */  lwc1        $f4, 0xc($v0)
/* 0104CC 8001091C 46002187 */  neg.s       $f6, $f4
/* 0104D0 80010920 44053000 */  mfc1        $a1, $f6
/* 0104D4 80010924 0C0057E5 */  jal         func_80015F94
/* 0104D8 80010928 00000000 */   nop
/* 0104DC 8001092C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0104E0 80010930 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0104E4 80010934 00001025 */  move        $v0, $zero
/* 0104E8 80010938 03E00008 */  jr          $ra
/* 0104EC 8001093C 00000000 */   nop

glabel func_80010940 # 42
/* 0104F0 80010940 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0104F4 80010944 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0104F8 80010948 8C820054 */  lw          $v0, 0x54($a0)
/* 0104FC 8001094C C4860048 */  lwc1        $f6, 0x48($a0)
/* 010500 80010950 C48A0004 */  lwc1        $f10, 0x4($a0)
/* 010504 80010954 C44401F0 */  lwc1        $f4, 0x1f0($v0)
/* 010508 80010958 3C013F80 */  lui         $at, 0x3f80
/* 01050C 8001095C 44818000 */  mtc1        $at, $f16
/* 010510 80010960 46062201 */  sub.s       $f8, $f4, $f6
/* 010514 80010964 00803825 */  move        $a3, $a0
/* 010518 80010968 3C014396 */  lui         $at, 0x4396
/* 01051C 8001096C 460A4083 */  div.s       $f2, $f8, $f10
/* 010520 80010970 46001305 */  abs.s       $f12, $f2
/* 010524 80010974 4610603C */  c.lt.s      $f12, $f16
/* 010528 80010978 00000000 */  nop
/* 01052C 8001097C 45020004 */  bc1fl       .L80010990
/* 010530 80010980 44819000 */   mtc1       $at, $f18
/* 010534 80010984 1000002B */  b           .L80010A34
/* 010538 80010988 24020001 */   addiu      $v0, $zero, 0x1
/* 01053C 8001098C 44819000 */  mtc1        $at, $f18
.L80010990:
/* 010540 80010990 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010544 80010994 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 010548 80010998 44800000 */  mtc1        $zero, $f0
/* 01054C 8001099C 46049382 */  mul.s       $f14, $f18, $f4
/* 010550 800109A0 460E603C */  c.lt.s      $f12, $f14
/* 010554 800109A4 00000000 */  nop
/* 010558 800109A8 45020003 */  bc1fl       .L800109B8
/* 01055C 800109AC 4602003C */   c.lt.s     $f0, $f2
/* 010560 800109B0 46006386 */  mov.s       $f14, $f12
/* 010564 800109B4 4602003C */  c.lt.s      $f0, $f2
.L800109B8:
/* 010568 800109B8 E7A00030 */  swc1        $f0, 0x30($sp)
/* 01056C 800109BC 45020004 */  bc1fl       .L800109D0
/* 010570 800109C0 4600103C */   c.lt.s     $f2, $f0
/* 010574 800109C4 10000008 */  b           .L800109E8
/* 010578 800109C8 24020001 */   addiu      $v0, $zero, 0x1
/* 01057C 800109CC 4600103C */  c.lt.s      $f2, $f0
.L800109D0:
/* 010580 800109D0 00001825 */  move        $v1, $zero
/* 010584 800109D4 45000003 */  bc1f        .L800109E4
/* 010588 800109D8 00000000 */   nop
/* 01058C 800109DC 10000001 */  b           .L800109E4
/* 010590 800109E0 2403FFFF */   addiu      $v1, $zero, -0x1
.L800109E4:
/* 010594 800109E4 00601025 */  move        $v0, $v1
.L800109E8:
/* 010598 800109E8 44823000 */  mtc1        $v0, $f6
/* 01059C 800109EC E7A00038 */  swc1        $f0, 0x38($sp)
/* 0105A0 800109F0 27A40030 */  addiu       $a0, $sp, 0x30
/* 0105A4 800109F4 46803220 */  cvt.s.w     $f8, $f6
/* 0105A8 800109F8 AFA70040 */  sw          $a3, 0x40($sp)
/* 0105AC 800109FC 460E4282 */  mul.s       $f10, $f8, $f14
/* 0105B0 80010A00 0C00202A */  jal         func_800080A8
/* 0105B4 80010A04 E7AA0034 */   swc1       $f10, 0x34($sp)
/* 0105B8 80010A08 3C01800A */  lui         $at, %hi(D_800A25D4)
/* 0105BC 80010A0C C43025D4 */  lwc1        $f16, %lo(D_800A25D4)($at)
/* 0105C0 80010A10 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0105C4 80010A14 C432E4E4 */  lwc1        $f18, %lo(D_800AE4E4)($at)
/* 0105C8 80010A18 8FA40040 */  lw          $a0, 0x40($sp)
/* 0105CC 80010A1C 24060001 */  addiu       $a2, $zero, 0x1
/* 0105D0 80010A20 46128102 */  mul.s       $f4, $f16, $f18
/* 0105D4 80010A24 44052000 */  mfc1        $a1, $f4
/* 0105D8 80010A28 0C0057E5 */  jal         func_80015F94
/* 0105DC 80010A2C 00000000 */   nop
/* 0105E0 80010A30 00001025 */  move        $v0, $zero
.L80010A34:
/* 0105E4 80010A34 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0105E8 80010A38 27BD0040 */  addiu       $sp, $sp, 0x40
/* 0105EC 80010A3C 03E00008 */  jr          $ra
/* 0105F0 80010A40 00000000 */   nop

glabel func_80010A44 # 43
/* 0105F4 80010A44 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0105F8 80010A48 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0105FC 80010A4C 8C820054 */  lw          $v0, 0x54($a0)
/* 010600 80010A50 00003025 */  move        $a2, $zero
/* 010604 80010A54 C444000C */  lwc1        $f4, 0xc($v0)
/* 010608 80010A58 46002187 */  neg.s       $f6, $f4
/* 01060C 80010A5C 44053000 */  mfc1        $a1, $f6
/* 010610 80010A60 0C0057E5 */  jal         func_80015F94
/* 010614 80010A64 00000000 */   nop
/* 010618 80010A68 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01061C 80010A6C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010620 80010A70 00001025 */  move        $v0, $zero
/* 010624 80010A74 03E00008 */  jr          $ra
/* 010628 80010A78 00000000 */   nop

glabel func_80010A7C # 44
/* 01062C 80010A7C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 010630 80010A80 AFBF001C */  sw          $ra, 0x1c($sp)
/* 010634 80010A84 AFB00018 */  sw          $s0, 0x18($sp)
/* 010638 80010A88 8C820054 */  lw          $v0, 0x54($a0)
/* 01063C 80010A8C 00808025 */  move        $s0, $a0
/* 010640 80010A90 00003025 */  move        $a2, $zero
/* 010644 80010A94 C444000C */  lwc1        $f4, 0xc($v0)
/* 010648 80010A98 AFA20024 */  sw          $v0, 0x24($sp)
/* 01064C 80010A9C 46002187 */  neg.s       $f6, $f4
/* 010650 80010AA0 44053000 */  mfc1        $a1, $f6
/* 010654 80010AA4 0C0057E5 */  jal         func_80015F94
/* 010658 80010AA8 00000000 */   nop
/* 01065C 80010AAC 8FA20024 */  lw          $v0, 0x24($sp)
/* 010660 80010AB0 02002025 */  move        $a0, $s0
/* 010664 80010AB4 24060001 */  addiu       $a2, $zero, 0x1
/* 010668 80010AB8 C4480010 */  lwc1        $f8, 0x10($v0)
/* 01066C 80010ABC 46004287 */  neg.s       $f10, $f8
/* 010670 80010AC0 44055000 */  mfc1        $a1, $f10
/* 010674 80010AC4 0C0057E5 */  jal         func_80015F94
/* 010678 80010AC8 00000000 */   nop
/* 01067C 80010ACC 02002025 */  move        $a0, $s0
/* 010680 80010AD0 3C05C2B4 */  lui         $a1, 0xc2b4
/* 010684 80010AD4 0C0057E5 */  jal         func_80015F94
/* 010688 80010AD8 24060001 */   addiu      $a2, $zero, 0x1
/* 01068C 80010ADC 02002025 */  move        $a0, $s0
/* 010690 80010AE0 3C054120 */  lui         $a1, 0x4120
/* 010694 80010AE4 0C0057E5 */  jal         func_80015F94
/* 010698 80010AE8 00003025 */   move       $a2, $zero
/* 01069C 80010AEC 02002025 */  move        $a0, $s0
/* 0106A0 80010AF0 3C0542B4 */  lui         $a1, 0x42b4
/* 0106A4 80010AF4 0C0057E5 */  jal         func_80015F94
/* 0106A8 80010AF8 24060001 */   addiu      $a2, $zero, 0x1
/* 0106AC 80010AFC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0106B0 80010B00 8FB00018 */  lw          $s0, 0x18($sp)
/* 0106B4 80010B04 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0106B8 80010B08 03E00008 */  jr          $ra
/* 0106BC 80010B0C 00001025 */   move       $v0, $zero

glabel func_80010B10 # 45
/* 0106C0 80010B10 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0106C4 80010B14 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0106C8 80010B18 AFB00018 */  sw          $s0, 0x18($sp)
/* 0106CC 80010B1C 8C900054 */  lw          $s0, 0x54($a0)
/* 0106D0 80010B20 0C04637C */  jal         func_80118DF0
/* 0106D4 80010B24 AFA40030 */   sw         $a0, 0x30($sp)
/* 0106D8 80010B28 8FA40030 */  lw          $a0, 0x30($sp)
/* 0106DC 80010B2C 0C0462E6 */  jal         func_80118B98
/* 0106E0 80010B30 3C054396 */   lui        $a1, 0x4396
/* 0106E4 80010B34 8FA60030 */  lw          $a2, 0x30($sp)
/* 0106E8 80010B38 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 0106EC 80010B3C 44805000 */  mtc1        $zero, $f10
/* 0106F0 80010B40 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 0106F4 80010B44 27A40020 */  addiu       $a0, $sp, 0x20
/* 0106F8 80010B48 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 0106FC 80010B4C 46062201 */  sub.s       $f8, $f4, $f6
/* 010700 80010B50 E7A80020 */  swc1        $f8, 0x20($sp)
/* 010704 80010B54 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 010708 80010B58 C4D2004C */  lwc1        $f18, 0x4c($a2)
/* 01070C 80010B5C 46128101 */  sub.s       $f4, $f16, $f18
/* 010710 80010B60 0C00E974 */  jal         func_8003A5D0
/* 010714 80010B64 E7A40028 */   swc1       $f4, 0x28($sp)
/* 010718 80010B68 C6060204 */  lwc1        $f6, 0x204($s0)
/* 01071C 80010B6C C60801A4 */  lwc1        $f8, 0x1a4($s0)
/* 010720 80010B70 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010724 80010B74 00001025 */  move        $v0, $zero
/* 010728 80010B78 46083280 */  add.s       $f10, $f6, $f8
/* 01072C 80010B7C 460A003C */  c.lt.s      $f0, $f10
/* 010730 80010B80 00000000 */  nop
/* 010734 80010B84 45000003 */  bc1f        .L80010B94
/* 010738 80010B88 00000000 */   nop
/* 01073C 80010B8C 10000001 */  b           .L80010B94
/* 010740 80010B90 24020001 */   addiu      $v0, $zero, 0x1
.L80010B94:
/* 010744 80010B94 8FB00018 */  lw          $s0, 0x18($sp)
/* 010748 80010B98 03E00008 */  jr          $ra
/* 01074C 80010B9C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80010BA0 # 46
/* 010750 80010BA0 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 010754 80010BA4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 010758 80010BA8 8C8E0054 */  lw          $t6, 0x54($a0)
/* 01075C 80010BAC AFA40070 */  sw          $a0, 0x70($sp)
/* 010760 80010BB0 0C04637C */  jal         func_80118DF0
/* 010764 80010BB4 AFAE006C */   sw         $t6, 0x6c($sp)
/* 010768 80010BB8 8FA2006C */  lw          $v0, 0x6c($sp)
/* 01076C 80010BBC 8FA30070 */  lw          $v1, 0x70($sp)
/* 010770 80010BC0 27A40054 */  addiu       $a0, $sp, 0x54
/* 010774 80010BC4 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 010778 80010BC8 C4660044 */  lwc1        $f6, 0x44($v1)
/* 01077C 80010BCC 46062201 */  sub.s       $f8, $f4, $f6
/* 010780 80010BD0 E7A80054 */  swc1        $f8, 0x54($sp)
/* 010784 80010BD4 C44A01F0 */  lwc1        $f10, 0x1f0($v0)
/* 010788 80010BD8 C4640048 */  lwc1        $f4, 0x48($v1)
/* 01078C 80010BDC 46045181 */  sub.s       $f6, $f10, $f4
/* 010790 80010BE0 E7A60058 */  swc1        $f6, 0x58($sp)
/* 010794 80010BE4 C44801F4 */  lwc1        $f8, 0x1f4($v0)
/* 010798 80010BE8 C46A004C */  lwc1        $f10, 0x4c($v1)
/* 01079C 80010BEC 460A4101 */  sub.s       $f4, $f8, $f10
/* 0107A0 80010BF0 0C00E974 */  jal         func_8003A5D0
/* 0107A4 80010BF4 E7A4005C */   swc1       $f4, 0x5c($sp)
/* 0107A8 80010BF8 8FAF006C */  lw          $t7, 0x6c($sp)
/* 0107AC 80010BFC 3C013F80 */  lui         $at, 0x3f80
/* 0107B0 80010C00 44813000 */  mtc1        $at, $f6
/* 0107B4 80010C04 C5E801A4 */  lwc1        $f8, 0x1a4($t7)
/* 0107B8 80010C08 C7A40054 */  lwc1        $f4, 0x54($sp)
/* 0107BC 80010C0C 27A40060 */  addiu       $a0, $sp, 0x60
/* 0107C0 80010C10 46083280 */  add.s       $f10, $f6, $f8
/* 0107C4 80010C14 460A003C */  c.lt.s      $f0, $f10
/* 0107C8 80010C18 00000000 */  nop
/* 0107CC 80010C1C 45020004 */  bc1fl       .L80010C30
/* 0107D0 80010C20 44803000 */   mtc1       $zero, $f6
/* 0107D4 80010C24 100000BD */  b           .L80010F1C
/* 0107D8 80010C28 24020001 */   addiu      $v0, $zero, 0x1
/* 0107DC 80010C2C 44803000 */  mtc1        $zero, $f6
.L80010C30:
/* 0107E0 80010C30 C7A8005C */  lwc1        $f8, 0x5c($sp)
/* 0107E4 80010C34 E7A40060 */  swc1        $f4, 0x60($sp)
/* 0107E8 80010C38 E7A60064 */  swc1        $f6, 0x64($sp)
/* 0107EC 80010C3C 0C00E974 */  jal         func_8003A5D0
/* 0107F0 80010C40 E7A80068 */   swc1       $f8, 0x68($sp)
/* 0107F4 80010C44 3C014120 */  lui         $at, 0x4120
/* 0107F8 80010C48 44819000 */  mtc1        $at, $f18
/* 0107FC 80010C4C 3C013F00 */  lui         $at, 0x3f00
/* 010800 80010C50 44815000 */  mtc1        $at, $f10
/* 010804 80010C54 3C0142C8 */  lui         $at, 0x42c8
/* 010808 80010C58 44812000 */  mtc1        $at, $f4
/* 01080C 80010C5C 460A0382 */  mul.s       $f14, $f0, $f10
/* 010810 80010C60 E7A00048 */  swc1        $f0, 0x48($sp)
/* 010814 80010C64 460E903C */  c.lt.s      $f18, $f14
/* 010818 80010C68 00000000 */  nop
/* 01081C 80010C6C 45020004 */  bc1fl       .L80010C80
/* 010820 80010C70 46009086 */   mov.s      $f2, $f18
/* 010824 80010C74 10000002 */  b           .L80010C80
/* 010828 80010C78 46007086 */   mov.s      $f2, $f14
/* 01082C 80010C7C 46009086 */  mov.s       $f2, $f18
.L80010C80:
/* 010830 80010C80 4602203C */  c.lt.s      $f4, $f2
/* 010834 80010C84 3C0142C8 */  lui         $at, 0x42c8
/* 010838 80010C88 27A40054 */  addiu       $a0, $sp, 0x54
/* 01083C 80010C8C 45020005 */  bc1fl       .L80010CA4
/* 010840 80010C90 460E903C */   c.lt.s     $f18, $f14
/* 010844 80010C94 44811000 */  mtc1        $at, $f2
/* 010848 80010C98 10000009 */  b           .L80010CC0
/* 01084C 80010C9C 00000000 */   nop
/* 010850 80010CA0 460E903C */  c.lt.s      $f18, $f14
.L80010CA4:
/* 010854 80010CA4 00000000 */  nop
/* 010858 80010CA8 45020004 */  bc1fl       .L80010CBC
/* 01085C 80010CAC 46009306 */   mov.s      $f12, $f18
/* 010860 80010CB0 10000002 */  b           .L80010CBC
/* 010864 80010CB4 46007306 */   mov.s      $f12, $f14
/* 010868 80010CB8 46009306 */  mov.s       $f12, $f18
.L80010CBC:
/* 01086C 80010CBC 46006086 */  mov.s       $f2, $f12
.L80010CC0:
/* 010870 80010CC0 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010874 80010CC4 C426E4E4 */  lwc1        $f6, %lo(D_800AE4E4)($at)
/* 010878 80010CC8 46061302 */  mul.s       $f12, $f2, $f6
/* 01087C 80010CCC 460C003E */  c.le.s      $f0, $f12
/* 010880 80010CD0 00000000 */  nop
/* 010884 80010CD4 45000016 */  bc1f        .L80010D30
/* 010888 80010CD8 00000000 */   nop
/* 01088C 80010CDC 44804000 */  mtc1        $zero, $f8
/* 010890 80010CE0 8FA40070 */  lw          $a0, 0x70($sp)
/* 010894 80010CE4 4600403C */  c.lt.s      $f8, $f0
/* 010898 80010CE8 00000000 */  nop
/* 01089C 80010CEC 4502000C */  bc1fl       .L80010D20
/* 0108A0 80010CF0 C7A40048 */   lwc1       $f4, 0x48($sp)
/* 0108A4 80010CF4 0C0462E6 */  jal         func_80118B98
/* 0108A8 80010CF8 3C054434 */   lui        $a1, 0x4434
/* 0108AC 80010CFC 3C014120 */  lui         $at, 0x4120
/* 0108B0 80010D00 44819000 */  mtc1        $at, $f18
/* 0108B4 80010D04 14400005 */  bnez        $v0, .L80010D1C
/* 0108B8 80010D08 3C01800B */   lui        $at, %hi(D_800AE4E4)
/* 0108BC 80010D0C 44805000 */  mtc1        $zero, $f10
/* 0108C0 80010D10 C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
/* 0108C4 80010D14 10000030 */  b           .L80010DD8
/* 0108C8 80010D18 E7AA004C */   swc1       $f10, 0x4c($sp)
.L80010D1C:
/* 0108CC 80010D1C C7A40048 */  lwc1        $f4, 0x48($sp)
.L80010D20:
/* 0108D0 80010D20 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0108D4 80010D24 C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
/* 0108D8 80010D28 1000002B */  b           .L80010DD8
/* 0108DC 80010D2C E7A4004C */   swc1       $f4, 0x4c($sp)
.L80010D30:
/* 0108E0 80010D30 0C0032A9 */  jal         func_8000CAA4
/* 0108E4 80010D34 E7AC004C */   swc1       $f12, 0x4c($sp)
/* 0108E8 80010D38 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0108EC 80010D3C C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
/* 0108F0 80010D40 3C014396 */  lui         $at, 0x4396
/* 0108F4 80010D44 44813000 */  mtc1        $at, $f6
/* 0108F8 80010D48 3C0142C8 */  lui         $at, 0x42c8
/* 0108FC 80010D4C 44814000 */  mtc1        $at, $f8
/* 010900 80010D50 46103302 */  mul.s       $f12, $f6, $f16
/* 010904 80010D54 C7AA0048 */  lwc1        $f10, 0x48($sp)
/* 010908 80010D58 3C014333 */  lui         $at, 0x4333
/* 01090C 80010D5C E7A00044 */  swc1        $f0, 0x44($sp)
/* 010910 80010D60 460A4102 */  mul.s       $f4, $f8, $f10
/* 010914 80010D64 44814000 */  mtc1        $at, $f8
/* 010918 80010D68 8FB8006C */  lw          $t8, 0x6c($sp)
/* 01091C 80010D6C 3C0640A0 */  lui         $a2, 0x40a0
/* 010920 80010D70 3C074334 */  lui         $a3, 0x4334
/* 010924 80010D74 46102182 */  mul.s       $f6, $f4, $f16
/* 010928 80010D78 46064381 */  sub.s       $f14, $f8, $f6
/* 01092C 80010D7C 460E603C */  c.lt.s      $f12, $f14
/* 010930 80010D80 00000000 */  nop
/* 010934 80010D84 45020004 */  bc1fl       .L80010D98
/* 010938 80010D88 46006086 */   mov.s      $f2, $f12
/* 01093C 80010D8C 10000002 */  b           .L80010D98
/* 010940 80010D90 46007086 */   mov.s      $f2, $f14
/* 010944 80010D94 46006086 */  mov.s       $f2, $f12
.L80010D98:
/* 010948 80010D98 C70C0010 */  lwc1        $f12, 0x10($t8)
/* 01094C 80010D9C E7A20010 */  swc1        $f2, 0x10($sp)
/* 010950 80010DA0 0C00F097 */  jal         func_8003C25C
/* 010954 80010DA4 C7AE0044 */   lwc1       $f14, 0x44($sp)
/* 010958 80010DA8 8FB9006C */  lw          $t9, 0x6c($sp)
/* 01095C 80010DAC 8FA40070 */  lw          $a0, 0x70($sp)
/* 010960 80010DB0 24060001 */  addiu       $a2, $zero, 0x1
/* 010964 80010DB4 C72A0010 */  lwc1        $f10, 0x10($t9)
/* 010968 80010DB8 460A0101 */  sub.s       $f4, $f0, $f10
/* 01096C 80010DBC 44052000 */  mfc1        $a1, $f4
/* 010970 80010DC0 0C0057E5 */  jal         func_80015F94
/* 010974 80010DC4 00000000 */   nop
/* 010978 80010DC8 3C014120 */  lui         $at, 0x4120
/* 01097C 80010DCC 44819000 */  mtc1        $at, $f18
/* 010980 80010DD0 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010984 80010DD4 C430E4E4 */  lwc1        $f16, %lo(D_800AE4E4)($at)
.L80010DD8:
/* 010988 80010DD8 44804000 */  mtc1        $zero, $f8
/* 01098C 80010DDC C7A60058 */  lwc1        $f6, 0x58($sp)
/* 010990 80010DE0 3C013F00 */  lui         $at, 0x3f00
/* 010994 80010DE4 C7AE0058 */  lwc1        $f14, 0x58($sp)
/* 010998 80010DE8 4606403C */  c.lt.s      $f8, $f6
/* 01099C 80010DEC 44814000 */  mtc1        $at, $f8
/* 0109A0 80010DF0 3C013F00 */  lui         $at, 0x3f00
/* 0109A4 80010DF4 C7AA0058 */  lwc1        $f10, 0x58($sp)
/* 0109A8 80010DF8 45020004 */  bc1fl       .L80010E0C
/* 0109AC 80010DFC 44802000 */   mtc1       $zero, $f4
/* 0109B0 80010E00 1000000A */  b           .L80010E2C
/* 0109B4 80010E04 24030001 */   addiu      $v1, $zero, 0x1
/* 0109B8 80010E08 44802000 */  mtc1        $zero, $f4
.L80010E0C:
/* 0109BC 80010E0C 00001025 */  move        $v0, $zero
/* 0109C0 80010E10 4604503C */  c.lt.s      $f10, $f4
/* 0109C4 80010E14 00000000 */  nop
/* 0109C8 80010E18 45000003 */  bc1f        .L80010E28
/* 0109CC 80010E1C 00000000 */   nop
/* 0109D0 80010E20 10000001 */  b           .L80010E28
/* 0109D4 80010E24 2402FFFF */   addiu      $v0, $zero, -0x1
.L80010E28:
/* 0109D8 80010E28 00401825 */  move        $v1, $v0
.L80010E2C:
/* 0109DC 80010E2C 46007385 */  abs.s       $f14, $f14
/* 0109E0 80010E30 46087182 */  mul.s       $f6, $f14, $f8
/* 0109E4 80010E34 4606903C */  c.lt.s      $f18, $f6
/* 0109E8 80010E38 00000000 */  nop
/* 0109EC 80010E3C 45020007 */  bc1fl       .L80010E5C
/* 0109F0 80010E40 46009086 */   mov.s      $f2, $f18
/* 0109F4 80010E44 44815000 */  mtc1        $at, $f10
/* 0109F8 80010E48 00000000 */  nop
/* 0109FC 80010E4C 460A7082 */  mul.s       $f2, $f14, $f10
/* 010A00 80010E50 10000003 */  b           .L80010E60
/* 010A04 80010E54 3C0142C8 */   lui        $at, 0x42c8
/* 010A08 80010E58 46009086 */  mov.s       $f2, $f18
.L80010E5C:
/* 010A0C 80010E5C 3C0142C8 */  lui         $at, 0x42c8
.L80010E60:
/* 010A10 80010E60 44812000 */  mtc1        $at, $f4
/* 010A14 80010E64 3C013F00 */  lui         $at, 0x3f00
/* 010A18 80010E68 4602203C */  c.lt.s      $f4, $f2
/* 010A1C 80010E6C 44832000 */  mtc1        $v1, $f4
/* 010A20 80010E70 45020006 */  bc1fl       .L80010E8C
/* 010A24 80010E74 44814000 */   mtc1       $at, $f8
/* 010A28 80010E78 3C0142C8 */  lui         $at, 0x42c8
/* 010A2C 80010E7C 44811000 */  mtc1        $at, $f2
/* 010A30 80010E80 10000010 */  b           .L80010EC4
/* 010A34 80010E84 46802220 */   cvt.s.w    $f8, $f4
/* 010A38 80010E88 44814000 */  mtc1        $at, $f8
.L80010E8C:
/* 010A3C 80010E8C 3C013F00 */  lui         $at, 0x3f00
/* 010A40 80010E90 46087182 */  mul.s       $f6, $f14, $f8
/* 010A44 80010E94 4606903C */  c.lt.s      $f18, $f6
/* 010A48 80010E98 00000000 */  nop
/* 010A4C 80010E9C 45020007 */  bc1fl       .L80010EBC
/* 010A50 80010EA0 46009306 */   mov.s      $f12, $f18
/* 010A54 80010EA4 44815000 */  mtc1        $at, $f10
/* 010A58 80010EA8 00000000 */  nop
/* 010A5C 80010EAC 460A7302 */  mul.s       $f12, $f14, $f10
/* 010A60 80010EB0 10000003 */  b           .L80010EC0
/* 010A64 80010EB4 46006086 */   mov.s      $f2, $f12
/* 010A68 80010EB8 46009306 */  mov.s       $f12, $f18
.L80010EBC:
/* 010A6C 80010EBC 46006086 */  mov.s       $f2, $f12
.L80010EC0:
/* 010A70 80010EC0 46802220 */  cvt.s.w     $f8, $f4
.L80010EC4:
/* 010A74 80010EC4 44805000 */  mtc1        $zero, $f10
/* 010A78 80010EC8 46081182 */  mul.s       $f6, $f2, $f8
/* 010A7C 80010ECC 00000000 */  nop
/* 010A80 80010ED0 46103302 */  mul.s       $f12, $f6, $f16
/* 010A84 80010ED4 46006005 */  abs.s       $f0, $f12
/* 010A88 80010ED8 4600703E */  c.le.s      $f14, $f0
/* 010A8C 80010EDC 00000000 */  nop
/* 010A90 80010EE0 45000002 */  bc1f        .L80010EEC
/* 010A94 80010EE4 00000000 */   nop
/* 010A98 80010EE8 C7AC0058 */  lwc1        $f12, 0x58($sp)
.L80010EEC:
/* 010A9C 80010EEC 8FA20070 */  lw          $v0, 0x70($sp)
/* 010AA0 80010EF0 E7AA0060 */  swc1        $f10, 0x60($sp)
/* 010AA4 80010EF4 C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 010AA8 80010EF8 C4440004 */  lwc1        $f4, 0x4($v0)
/* 010AAC 80010EFC 27A40060 */  addiu       $a0, $sp, 0x60
/* 010AB0 80010F00 46046203 */  div.s       $f8, $f12, $f4
/* 010AB4 80010F04 E7A80064 */  swc1        $f8, 0x64($sp)
/* 010AB8 80010F08 C44A0008 */  lwc1        $f10, 0x8($v0)
/* 010ABC 80010F0C 460A3103 */  div.s       $f4, $f6, $f10
/* 010AC0 80010F10 0C00202A */  jal         func_800080A8
/* 010AC4 80010F14 E7A40068 */   swc1       $f4, 0x68($sp)
/* 010AC8 80010F18 00001025 */  move        $v0, $zero
.L80010F1C:
/* 010ACC 80010F1C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010AD0 80010F20 27BD0070 */  addiu       $sp, $sp, 0x70
/* 010AD4 80010F24 03E00008 */  jr          $ra
/* 010AD8 80010F28 00000000 */   nop

glabel func_80010F2C # 47
/* 010ADC 80010F2C 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 010AE0 80010F30 AFBF001C */  sw          $ra, 0x1c($sp)
/* 010AE4 80010F34 8C830054 */  lw          $v1, 0x54($a0)
/* 010AE8 80010F38 AFA40068 */  sw          $a0, 0x68($sp)
/* 010AEC 80010F3C 0C04637C */  jal         func_80118DF0
/* 010AF0 80010F40 AFA30064 */   sw         $v1, 0x64($sp)
/* 010AF4 80010F44 3C048013 */  lui         $a0, %hi(D_80133DE0)
/* 010AF8 80010F48 24843DE0 */  addiu       $a0, $a0, %lo(D_80133DE0)
/* 010AFC 80010F4C 8FA30064 */  lw          $v1, 0x64($sp)
/* 010B00 80010F50 8C820000 */  lw          $v0, 0x0($a0)
/* 010B04 80010F54 C46201EC */  lwc1        $f2, 0x1ec($v1)
/* 010B08 80010F58 C4400008 */  lwc1        $f0, 0x8($v0)
/* 010B0C 80010F5C 4600103C */  c.lt.s      $f2, $f0
/* 010B10 80010F60 00000000 */  nop
/* 010B14 80010F64 45020004 */  bc1fl       .L80010F78
/* 010B18 80010F68 C4440014 */   lwc1       $f4, 0x14($v0)
/* 010B1C 80010F6C 10000008 */  b           .L80010F90
/* 010B20 80010F70 E46001EC */   swc1       $f0, 0x1ec($v1)
/* 010B24 80010F74 C4440014 */  lwc1        $f4, 0x14($v0)
.L80010F78:
/* 010B28 80010F78 46040300 */  add.s       $f12, $f0, $f4
/* 010B2C 80010F7C 4602603C */  c.lt.s      $f12, $f2
/* 010B30 80010F80 00000000 */  nop
/* 010B34 80010F84 45020003 */  bc1fl       .L80010F94
/* 010B38 80010F88 8FA50068 */   lw         $a1, 0x68($sp)
/* 010B3C 80010F8C E46C01EC */  swc1        $f12, 0x1ec($v1)
.L80010F90:
/* 010B40 80010F90 8FA50068 */  lw          $a1, 0x68($sp)
.L80010F94:
/* 010B44 80010F94 C46201F4 */  lwc1        $f2, 0x1f4($v1)
/* 010B48 80010F98 C4A60048 */  lwc1        $f6, 0x48($a1)
/* 010B4C 80010F9C E46601F0 */  swc1        $f6, 0x1f0($v1)
/* 010B50 80010FA0 8C820000 */  lw          $v0, 0x0($a0)
/* 010B54 80010FA4 C4400010 */  lwc1        $f0, 0x10($v0)
/* 010B58 80010FA8 4600103C */  c.lt.s      $f2, $f0
/* 010B5C 80010FAC 00000000 */  nop
/* 010B60 80010FB0 45020004 */  bc1fl       .L80010FC4
/* 010B64 80010FB4 C448001C */   lwc1       $f8, 0x1c($v0)
/* 010B68 80010FB8 10000008 */  b           .L80010FDC
/* 010B6C 80010FBC E46001F4 */   swc1       $f0, 0x1f4($v1)
/* 010B70 80010FC0 C448001C */  lwc1        $f8, 0x1c($v0)
.L80010FC4:
/* 010B74 80010FC4 46080300 */  add.s       $f12, $f0, $f8
/* 010B78 80010FC8 4602603C */  c.lt.s      $f12, $f2
/* 010B7C 80010FCC 00000000 */  nop
/* 010B80 80010FD0 45020003 */  bc1fl       .L80010FE0
/* 010B84 80010FD4 C46A01EC */   lwc1       $f10, 0x1ec($v1)
/* 010B88 80010FD8 E46C01F4 */  swc1        $f12, 0x1f4($v1)
.L80010FDC:
/* 010B8C 80010FDC C46A01EC */  lwc1        $f10, 0x1ec($v1)
.L80010FE0:
/* 010B90 80010FE0 C4A40044 */  lwc1        $f4, 0x44($a1)
/* 010B94 80010FE4 27A4004C */  addiu       $a0, $sp, 0x4c
/* 010B98 80010FE8 46045181 */  sub.s       $f6, $f10, $f4
/* 010B9C 80010FEC E7A6004C */  swc1        $f6, 0x4c($sp)
/* 010BA0 80010FF0 C4AA0048 */  lwc1        $f10, 0x48($a1)
/* 010BA4 80010FF4 C46801F0 */  lwc1        $f8, 0x1f0($v1)
/* 010BA8 80010FF8 460A4101 */  sub.s       $f4, $f8, $f10
/* 010BAC 80010FFC E7A40050 */  swc1        $f4, 0x50($sp)
/* 010BB0 80011000 C4A8004C */  lwc1        $f8, 0x4c($a1)
/* 010BB4 80011004 C46601F4 */  lwc1        $f6, 0x1f4($v1)
/* 010BB8 80011008 AFA30064 */  sw          $v1, 0x64($sp)
/* 010BBC 8001100C 46083281 */  sub.s       $f10, $f6, $f8
/* 010BC0 80011010 0C00E974 */  jal         func_8003A5D0
/* 010BC4 80011014 E7AA0054 */   swc1       $f10, 0x54($sp)
/* 010BC8 80011018 8FA30064 */  lw          $v1, 0x64($sp)
/* 010BCC 8001101C 3C013F80 */  lui         $at, 0x3f80
/* 010BD0 80011020 44812000 */  mtc1        $at, $f4
/* 010BD4 80011024 C46601A4 */  lwc1        $f6, 0x1a4($v1)
/* 010BD8 80011028 C7AA004C */  lwc1        $f10, 0x4c($sp)
/* 010BDC 8001102C 27A40058 */  addiu       $a0, $sp, 0x58
/* 010BE0 80011030 46062200 */  add.s       $f8, $f4, $f6
/* 010BE4 80011034 4608003C */  c.lt.s      $f0, $f8
/* 010BE8 80011038 00000000 */  nop
/* 010BEC 8001103C 45020004 */  bc1fl       .L80011050
/* 010BF0 80011040 44802000 */   mtc1       $zero, $f4
/* 010BF4 80011044 10000073 */  b           .L80011214
/* 010BF8 80011048 24020001 */   addiu      $v0, $zero, 0x1
/* 010BFC 8001104C 44802000 */  mtc1        $zero, $f4
.L80011050:
/* 010C00 80011050 C7A60054 */  lwc1        $f6, 0x54($sp)
/* 010C04 80011054 E7AA0058 */  swc1        $f10, 0x58($sp)
/* 010C08 80011058 AFA30064 */  sw          $v1, 0x64($sp)
/* 010C0C 8001105C E7A60060 */  swc1        $f6, 0x60($sp)
/* 010C10 80011060 0C00E974 */  jal         func_8003A5D0
/* 010C14 80011064 E7A4005C */   swc1       $f4, 0x5c($sp)
/* 010C18 80011068 3C014120 */  lui         $at, 0x4120
/* 010C1C 8001106C 44816000 */  mtc1        $at, $f12
/* 010C20 80011070 3C013F00 */  lui         $at, 0x3f00
/* 010C24 80011074 44814000 */  mtc1        $at, $f8
/* 010C28 80011078 8FA30064 */  lw          $v1, 0x64($sp)
/* 010C2C 8001107C 46000486 */  mov.s       $f18, $f0
/* 010C30 80011080 46080082 */  mul.s       $f2, $f0, $f8
/* 010C34 80011084 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010C38 80011088 27A4004C */  addiu       $a0, $sp, 0x4c
/* 010C3C 8001108C 4602603C */  c.lt.s      $f12, $f2
/* 010C40 80011090 00000000 */  nop
/* 010C44 80011094 45020004 */  bc1fl       .L800110A8
/* 010C48 80011098 46006386 */   mov.s      $f14, $f12
/* 010C4C 8001109C 10000002 */  b           .L800110A8
/* 010C50 800110A0 46001386 */   mov.s      $f14, $f2
/* 010C54 800110A4 46006386 */  mov.s       $f14, $f12
.L800110A8:
/* 010C58 800110A8 460E603C */  c.lt.s      $f12, $f14
/* 010C5C 800110AC 00000000 */  nop
/* 010C60 800110B0 45020004 */  bc1fl       .L800110C4
/* 010C64 800110B4 4602603C */   c.lt.s     $f12, $f2
/* 010C68 800110B8 10000009 */  b           .L800110E0
/* 010C6C 800110BC 46006086 */   mov.s      $f2, $f12
/* 010C70 800110C0 4602603C */  c.lt.s      $f12, $f2
.L800110C4:
/* 010C74 800110C4 00000000 */  nop
/* 010C78 800110C8 45020004 */  bc1fl       .L800110DC
/* 010C7C 800110CC 46006386 */   mov.s      $f14, $f12
/* 010C80 800110D0 10000002 */  b           .L800110DC
/* 010C84 800110D4 46001386 */   mov.s      $f14, $f2
/* 010C88 800110D8 46006386 */  mov.s       $f14, $f12
.L800110DC:
/* 010C8C 800110DC 46007086 */  mov.s       $f2, $f14
.L800110E0:
/* 010C90 800110E0 C42AE4E4 */  lwc1        $f10, %lo(D_800AE4E4)($at)
/* 010C94 800110E4 460A1402 */  mul.s       $f16, $f2, $f10
/* 010C98 800110E8 4610003E */  c.le.s      $f0, $f16
/* 010C9C 800110EC 00000000 */  nop
/* 010CA0 800110F0 45020012 */  bc1fl       .L8001113C
/* 010CA4 800110F4 AFA30064 */   sw         $v1, 0x64($sp)
/* 010CA8 800110F8 44802000 */  mtc1        $zero, $f4
/* 010CAC 800110FC 8FA40068 */  lw          $a0, 0x68($sp)
/* 010CB0 80011100 3C054434 */  lui         $a1, 0x4434
/* 010CB4 80011104 4600203C */  c.lt.s      $f4, $f0
/* 010CB8 80011108 00000000 */  nop
/* 010CBC 8001110C 45000008 */  bc1f        .L80011130
/* 010CC0 80011110 00000000 */   nop
/* 010CC4 80011114 0C0462E6 */  jal         func_80118B98
/* 010CC8 80011118 E7B20044 */   swc1       $f18, 0x44($sp)
/* 010CCC 8001111C 14400004 */  bnez        $v0, .L80011130
/* 010CD0 80011120 C7B20044 */   lwc1       $f18, 0x44($sp)
/* 010CD4 80011124 44808000 */  mtc1        $zero, $f16
/* 010CD8 80011128 10000030 */  b           .L800111EC
/* 010CDC 8001112C 44804000 */   mtc1       $zero, $f8
.L80011130:
/* 010CE0 80011130 1000002D */  b           .L800111E8
/* 010CE4 80011134 46009406 */   mov.s      $f16, $f18
/* 010CE8 80011138 AFA30064 */  sw          $v1, 0x64($sp)
.L8001113C:
/* 010CEC 8001113C E7B00048 */  swc1        $f16, 0x48($sp)
/* 010CF0 80011140 0C0032A9 */  jal         func_8000CAA4
/* 010CF4 80011144 E7B20044 */   swc1       $f18, 0x44($sp)
/* 010CF8 80011148 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010CFC 8001114C C422E4E4 */  lwc1        $f2, %lo(D_800AE4E4)($at)
/* 010D00 80011150 3C014396 */  lui         $at, 0x4396
/* 010D04 80011154 44813000 */  mtc1        $at, $f6
/* 010D08 80011158 3C014333 */  lui         $at, 0x4333
/* 010D0C 8001115C 44814000 */  mtc1        $at, $f8
/* 010D10 80011160 3C0142C8 */  lui         $at, 0x42c8
/* 010D14 80011164 46023302 */  mul.s       $f12, $f6, $f2
/* 010D18 80011168 C7B20044 */  lwc1        $f18, 0x44($sp)
/* 010D1C 8001116C 44815000 */  mtc1        $at, $f10
/* 010D20 80011170 8FA30064 */  lw          $v1, 0x64($sp)
/* 010D24 80011174 C7B00048 */  lwc1        $f16, 0x48($sp)
/* 010D28 80011178 46125102 */  mul.s       $f4, $f10, $f18
/* 010D2C 8001117C E7A00040 */  swc1        $f0, 0x40($sp)
/* 010D30 80011180 3C0640A0 */  lui         $a2, 0x40a0
/* 010D34 80011184 3C074334 */  lui         $a3, 0x4334
/* 010D38 80011188 46022182 */  mul.s       $f6, $f4, $f2
/* 010D3C 8001118C 46064381 */  sub.s       $f14, $f8, $f6
/* 010D40 80011190 460E603C */  c.lt.s      $f12, $f14
/* 010D44 80011194 00000000 */  nop
/* 010D48 80011198 45020004 */  bc1fl       .L800111AC
/* 010D4C 8001119C 46006086 */   mov.s      $f2, $f12
/* 010D50 800111A0 10000002 */  b           .L800111AC
/* 010D54 800111A4 46007086 */   mov.s      $f2, $f14
/* 010D58 800111A8 46006086 */  mov.s       $f2, $f12
.L800111AC:
/* 010D5C 800111AC C46C0010 */  lwc1        $f12, 0x10($v1)
/* 010D60 800111B0 E7B00048 */  swc1        $f16, 0x48($sp)
/* 010D64 800111B4 AFA30064 */  sw          $v1, 0x64($sp)
/* 010D68 800111B8 E7A20010 */  swc1        $f2, 0x10($sp)
/* 010D6C 800111BC 0C00F097 */  jal         func_8003C25C
/* 010D70 800111C0 C7AE0040 */   lwc1       $f14, 0x40($sp)
/* 010D74 800111C4 8FA30064 */  lw          $v1, 0x64($sp)
/* 010D78 800111C8 8FA40068 */  lw          $a0, 0x68($sp)
/* 010D7C 800111CC 24060001 */  addiu       $a2, $zero, 0x1
/* 010D80 800111D0 C46A0010 */  lwc1        $f10, 0x10($v1)
/* 010D84 800111D4 460A0101 */  sub.s       $f4, $f0, $f10
/* 010D88 800111D8 44052000 */  mfc1        $a1, $f4
/* 010D8C 800111DC 0C0057E5 */  jal         func_80015F94
/* 010D90 800111E0 00000000 */   nop
/* 010D94 800111E4 C7B00048 */  lwc1        $f16, 0x48($sp)
.L800111E8:
/* 010D98 800111E8 44804000 */  mtc1        $zero, $f8
.L800111EC:
/* 010D9C 800111EC 44803000 */  mtc1        $zero, $f6
/* 010DA0 800111F0 8FAE0068 */  lw          $t6, 0x68($sp)
/* 010DA4 800111F4 E7A80058 */  swc1        $f8, 0x58($sp)
/* 010DA8 800111F8 E7A6005C */  swc1        $f6, 0x5c($sp)
/* 010DAC 800111FC C5CA0008 */  lwc1        $f10, 0x8($t6)
/* 010DB0 80011200 27A40058 */  addiu       $a0, $sp, 0x58
/* 010DB4 80011204 460A8103 */  div.s       $f4, $f16, $f10
/* 010DB8 80011208 0C00202A */  jal         func_800080A8
/* 010DBC 8001120C E7A40060 */   swc1       $f4, 0x60($sp)
/* 010DC0 80011210 00001025 */  move        $v0, $zero
.L80011214:
/* 010DC4 80011214 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010DC8 80011218 27BD0068 */  addiu       $sp, $sp, 0x68
/* 010DCC 8001121C 03E00008 */  jr          $ra
/* 010DD0 80011220 00000000 */   nop

glabel func_80011224 # 48
/* 010DD4 80011224 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 010DD8 80011228 AFBF001C */  sw          $ra, 0x1c($sp)
/* 010DDC 8001122C AFB00018 */  sw          $s0, 0x18($sp)
/* 010DE0 80011230 8C900054 */  lw          $s0, 0x54($a0)
/* 010DE4 80011234 0C04637C */  jal         func_80118DF0
/* 010DE8 80011238 AFA40038 */   sw         $a0, 0x38($sp)
/* 010DEC 8001123C 8FA50038 */  lw          $a1, 0x38($sp)
/* 010DF0 80011240 00003825 */  move        $a3, $zero
/* 010DF4 80011244 C4AC0018 */  lwc1        $f12, 0x18($a1)
/* 010DF8 80011248 C4AE001C */  lwc1        $f14, 0x1c($a1)
/* 010DFC 8001124C 0C042F10 */  jal         func_8010BC40
/* 010E00 80011250 8CA60020 */   lw         $a2, 0x20($a1)
/* 010E04 80011254 8FA50038 */  lw          $a1, 0x38($sp)
/* 010E08 80011258 C4A20048 */  lwc1        $f2, 0x48($a1)
/* 010E0C 8001125C 4600103C */  c.lt.s      $f2, $f0
/* 010E10 80011260 00000000 */  nop
/* 010E14 80011264 45020005 */  bc1fl       .L8001127C
/* 010E18 80011268 46001181 */   sub.s      $f6, $f2, $f0
/* 010E1C 8001126C 44802000 */  mtc1        $zero, $f4
/* 010E20 80011270 10000003 */  b           .L80011280
/* 010E24 80011274 E60401F8 */   swc1       $f4, 0x1f8($s0)
/* 010E28 80011278 46001181 */  sub.s       $f6, $f2, $f0
.L8001127C:
/* 010E2C 8001127C E60601F8 */  swc1        $f6, 0x1f8($s0)
.L80011280:
/* 010E30 80011280 C60801EC */  lwc1        $f8, 0x1ec($s0)
/* 010E34 80011284 C4AA0044 */  lwc1        $f10, 0x44($a1)
/* 010E38 80011288 44809000 */  mtc1        $zero, $f18
/* 010E3C 8001128C 27A40028 */  addiu       $a0, $sp, 0x28
/* 010E40 80011290 460A4401 */  sub.s       $f16, $f8, $f10
/* 010E44 80011294 E7B2002C */  swc1        $f18, 0x2c($sp)
/* 010E48 80011298 E7B00028 */  swc1        $f16, 0x28($sp)
/* 010E4C 8001129C C4A6004C */  lwc1        $f6, 0x4c($a1)
/* 010E50 800112A0 C60401F4 */  lwc1        $f4, 0x1f4($s0)
/* 010E54 800112A4 46062201 */  sub.s       $f8, $f4, $f6
/* 010E58 800112A8 0C00E974 */  jal         func_8003A5D0
/* 010E5C 800112AC E7A80030 */   swc1       $f8, 0x30($sp)
/* 010E60 800112B0 C60A0204 */  lwc1        $f10, 0x204($s0)
/* 010E64 800112B4 C61001A4 */  lwc1        $f16, 0x1a4($s0)
/* 010E68 800112B8 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010E6C 800112BC 46105480 */  add.s       $f18, $f10, $f16
/* 010E70 800112C0 4612003C */  c.lt.s      $f0, $f18
/* 010E74 800112C4 00000000 */  nop
/* 010E78 800112C8 45020004 */  bc1fl       .L800112DC
/* 010E7C 800112CC 960E01EA */   lhu        $t6, 0x1ea($s0)
/* 010E80 800112D0 10000007 */  b           .L800112F0
/* 010E84 800112D4 24020001 */   addiu      $v0, $zero, 0x1
/* 010E88 800112D8 960E01EA */  lhu         $t6, 0x1ea($s0)
.L800112DC:
/* 010E8C 800112DC 00001025 */  move        $v0, $zero
/* 010E90 800112E0 11C00003 */  beqz        $t6, .L800112F0
/* 010E94 800112E4 00000000 */   nop
/* 010E98 800112E8 10000001 */  b           .L800112F0
/* 010E9C 800112EC 24020001 */   addiu      $v0, $zero, 0x1
.L800112F0:
/* 010EA0 800112F0 8FB00018 */  lw          $s0, 0x18($sp)
/* 010EA4 800112F4 03E00008 */  jr          $ra
/* 010EA8 800112F8 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_800112FC # 49
/* 010EAC 800112FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010EB0 80011300 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010EB4 80011304 0C0044CF */  jal         func_8001133C
/* 010EB8 80011308 3C0543FA */   lui        $a1, 0x43fa
/* 010EBC 8001130C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010EC0 80011310 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010EC4 80011314 03E00008 */  jr          $ra
/* 010EC8 80011318 00000000 */   nop

glabel func_8001131C # 50
/* 010ECC 8001131C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 010ED0 80011320 AFBF0014 */  sw          $ra, 0x14($sp)
/* 010ED4 80011324 0C0044CF */  jal         func_8001133C
/* 010ED8 80011328 3C054448 */   lui        $a1, 0x4448
/* 010EDC 8001132C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 010EE0 80011330 27BD0018 */  addiu       $sp, $sp, 0x18
/* 010EE4 80011334 03E00008 */  jr          $ra
/* 010EE8 80011338 00000000 */   nop

glabel func_8001133C # 51
/* 010EEC 8001133C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 010EF0 80011340 AFBF001C */  sw          $ra, 0x1c($sp)
/* 010EF4 80011344 AFB00018 */  sw          $s0, 0x18($sp)
/* 010EF8 80011348 00808025 */  move        $s0, $a0
/* 010EFC 8001134C 0C04637C */  jal         func_80118DF0
/* 010F00 80011350 AFA5003C */   sw         $a1, 0x3c($sp)
/* 010F04 80011354 02002025 */  move        $a0, $s0
/* 010F08 80011358 0C0462E6 */  jal         func_80118B98
/* 010F0C 8001135C 3C054396 */   lui        $a1, 0x4396
/* 010F10 80011360 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 010F14 80011364 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 010F18 80011368 C7A6003C */  lwc1        $f6, 0x3c($sp)
/* 010F1C 8001136C 44800000 */  mtc1        $zero, $f0
/* 010F20 80011370 27A40028 */  addiu       $a0, $sp, 0x28
/* 010F24 80011374 46062202 */  mul.s       $f8, $f4, $f6
/* 010F28 80011378 E7A00028 */  swc1        $f0, 0x28($sp)
/* 010F2C 8001137C E7A0002C */  swc1        $f0, 0x2c($sp)
/* 010F30 80011380 0C00202A */  jal         func_800080A8
/* 010F34 80011384 E7A80030 */   swc1       $f8, 0x30($sp)
/* 010F38 80011388 C60C0018 */  lwc1        $f12, 0x18($s0)
/* 010F3C 8001138C C60E001C */  lwc1        $f14, 0x1c($s0)
/* 010F40 80011390 8E060020 */  lw          $a2, 0x20($s0)
/* 010F44 80011394 0C042F10 */  jal         func_8010BC40
/* 010F48 80011398 00003825 */   move       $a3, $zero
/* 010F4C 8001139C C60A001C */  lwc1        $f10, 0x1c($s0)
/* 010F50 800113A0 3C014120 */  lui         $at, 0x4120
/* 010F54 800113A4 44811000 */  mtc1        $at, $f2
/* 010F58 800113A8 46005401 */  sub.s       $f16, $f10, $f0
/* 010F5C 800113AC 4602803C */  c.lt.s      $f16, $f2
/* 010F60 800113B0 00000000 */  nop
/* 010F64 800113B4 45020008 */  bc1fl       .L800113D8
/* 010F68 800113B8 8FBF001C */   lw         $ra, 0x1c($sp)
/* 010F6C 800113BC 46020100 */  add.s       $f4, $f0, $f2
/* 010F70 800113C0 C6120018 */  lwc1        $f18, 0x18($s0)
/* 010F74 800113C4 C6060020 */  lwc1        $f6, 0x20($s0)
/* 010F78 800113C8 E604001C */  swc1        $f4, 0x1c($s0)
/* 010F7C 800113CC E6120018 */  swc1        $f18, 0x18($s0)
/* 010F80 800113D0 E6060020 */  swc1        $f6, 0x20($s0)
/* 010F84 800113D4 8FBF001C */  lw          $ra, 0x1c($sp)
.L800113D8:
/* 010F88 800113D8 8FB00018 */  lw          $s0, 0x18($sp)
/* 010F8C 800113DC 27BD0038 */  addiu       $sp, $sp, 0x38
/* 010F90 800113E0 03E00008 */  jr          $ra
/* 010F94 800113E4 00001025 */   move       $v0, $zero

glabel func_800113E8 # 52
/* 010F98 800113E8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 010F9C 800113EC AFBF001C */  sw          $ra, 0x1c($sp)
/* 010FA0 800113F0 AFB00018 */  sw          $s0, 0x18($sp)
/* 010FA4 800113F4 0C04637C */  jal         func_80118DF0
/* 010FA8 800113F8 00808025 */   move       $s0, $a0
/* 010FAC 800113FC 02002025 */  move        $a0, $s0
/* 010FB0 80011400 0C0462E6 */  jal         func_80118B98
/* 010FB4 80011404 3C054396 */   lui        $a1, 0x4396
/* 010FB8 80011408 C60C0018 */  lwc1        $f12, 0x18($s0)
/* 010FBC 8001140C C60E001C */  lwc1        $f14, 0x1c($s0)
/* 010FC0 80011410 8E060020 */  lw          $a2, 0x20($s0)
/* 010FC4 80011414 0C042F10 */  jal         func_8010BC40
/* 010FC8 80011418 00003825 */   move       $a3, $zero
/* 010FCC 8001141C 3C014138 */  lui         $at, 0x4138
/* 010FD0 80011420 44813000 */  mtc1        $at, $f6
/* 010FD4 80011424 C6040018 */  lwc1        $f4, 0x18($s0)
/* 010FD8 80011428 C60A0020 */  lwc1        $f10, 0x20($s0)
/* 010FDC 8001142C 46060200 */  add.s       $f8, $f0, $f6
/* 010FE0 80011430 E6040018 */  swc1        $f4, 0x18($s0)
/* 010FE4 80011434 E60A0020 */  swc1        $f10, 0x20($s0)
/* 010FE8 80011438 00001025 */  move        $v0, $zero
/* 010FEC 8001143C E608001C */  swc1        $f8, 0x1c($s0)
/* 010FF0 80011440 8FBF001C */  lw          $ra, 0x1c($sp)
/* 010FF4 80011444 8FB00018 */  lw          $s0, 0x18($sp)
/* 010FF8 80011448 27BD0020 */  addiu       $sp, $sp, 0x20
/* 010FFC 8001144C 03E00008 */  jr          $ra
/* 011000 80011450 00000000 */   nop

glabel func_80011454 # 53
/* 011004 80011454 8C830054 */  lw          $v1, 0x54($a0)
/* 011008 80011458 44802000 */  mtc1        $zero, $f4
/* 01100C 8001145C 00001025 */  move        $v0, $zero
/* 011010 80011460 E46401F8 */  swc1        $f4, 0x1f8($v1)
/* 011014 80011464 C4860000 */  lwc1        $f6, 0x0($a0)
/* 011018 80011468 03E00008 */  jr          $ra
/* 01101C 8001146C E4860004 */   swc1       $f6, 0x4($a0)

glabel func_80011470 # 54
/* 011020 80011470 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 011024 80011474 AFBF0014 */  sw          $ra, 0x14($sp)
/* 011028 80011478 8C830054 */  lw          $v1, 0x54($a0)
/* 01102C 8001147C 3C0143B4 */  lui         $at, 0x43b4
/* 011030 80011480 44812000 */  mtc1        $at, $f4
/* 011034 80011484 C46201F8 */  lwc1        $f2, 0x1f8($v1)
/* 011038 80011488 3C014352 */  lui         $at, 0x4352
/* 01103C 8001148C 4602203E */  c.le.s      $f4, $f2
/* 011040 80011490 00000000 */  nop
/* 011044 80011494 45020008 */  bc1fl       .L800114B8
/* 011048 80011498 44815000 */   mtc1       $at, $f10
/* 01104C 8001149C C4860000 */  lwc1        $f6, 0x0($a0)
/* 011050 800114A0 44804000 */  mtc1        $zero, $f8
/* 011054 800114A4 24020001 */  addiu       $v0, $zero, 0x1
/* 011058 800114A8 E4860004 */  swc1        $f6, 0x4($a0)
/* 01105C 800114AC 1000001A */  b           .L80011518
/* 011060 800114B0 E46801F8 */   swc1       $f8, 0x1f8($v1)
/* 011064 800114B4 44815000 */  mtc1        $at, $f10
.L800114B8:
/* 011068 800114B8 AFA3001C */  sw          $v1, 0x1c($sp)
/* 01106C 800114BC AFA40020 */  sw          $a0, 0x20($sp)
/* 011070 800114C0 0C00F0F7 */  jal         func_8003C3DC
/* 011074 800114C4 460A1300 */   add.s      $f12, $f2, $f10
/* 011078 800114C8 3C01800A */  lui         $at, %hi(D_800A25D8)
/* 01107C 800114CC C43025D8 */  lwc1        $f16, %lo(D_800A25D8)($at)
/* 011080 800114D0 3C01BF00 */  lui         $at, 0xbf00
/* 011084 800114D4 44819000 */  mtc1        $at, $f18
/* 011088 800114D8 3C013F80 */  lui         $at, 0x3f80
/* 01108C 800114DC 44814000 */  mtc1        $at, $f8
/* 011090 800114E0 46120101 */  sub.s       $f4, $f0, $f18
/* 011094 800114E4 8FA40020 */  lw          $a0, 0x20($sp)
/* 011098 800114E8 8FA3001C */  lw          $v1, 0x1c($sp)
/* 01109C 800114EC 3C014220 */  lui         $at, 0x4220
/* 0110A0 800114F0 46048182 */  mul.s       $f6, $f16, $f4
/* 0110A4 800114F4 C4920000 */  lwc1        $f18, 0x0($a0)
/* 0110A8 800114F8 00001025 */  move        $v0, $zero
/* 0110AC 800114FC 46064280 */  add.s       $f10, $f8, $f6
/* 0110B0 80011500 44814000 */  mtc1        $at, $f8
/* 0110B4 80011504 460A9402 */  mul.s       $f16, $f18, $f10
/* 0110B8 80011508 E4900004 */  swc1        $f16, 0x4($a0)
/* 0110BC 8001150C C46401F8 */  lwc1        $f4, 0x1f8($v1)
/* 0110C0 80011510 46082180 */  add.s       $f6, $f4, $f8
/* 0110C4 80011514 E46601F8 */  swc1        $f6, 0x1f8($v1)
.L80011518:
/* 0110C8 80011518 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0110CC 8001151C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0110D0 80011520 03E00008 */  jr          $ra
/* 0110D4 80011524 00000000 */   nop

glabel func_80011528 # 55
/* 0110D8 80011528 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0110DC 8001152C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0110E0 80011530 8C830054 */  lw          $v1, 0x54($a0)
/* 0110E4 80011534 3C01800A */  lui         $at, %hi(D_800A25DC)
/* 0110E8 80011538 C43025DC */  lwc1        $f16, %lo(D_800A25DC)($at)
/* 0110EC 8001153C 3C014487 */  lui         $at, 0x4487
/* 0110F0 80011540 44812000 */  mtc1        $at, $f4
/* 0110F4 80011544 C46201F8 */  lwc1        $f2, 0x1f8($v1)
/* 0110F8 80011548 3C01800A */  lui         $at, %hi(D_800A25E0)
/* 0110FC 8001154C 4602203E */  c.le.s      $f4, $f2
/* 011100 80011550 00000000 */  nop
/* 011104 80011554 45000007 */  bc1f        .L80011574
/* 011108 80011558 00000000 */   nop
/* 01110C 8001155C C4860000 */  lwc1        $f6, 0x0($a0)
/* 011110 80011560 44804000 */  mtc1        $zero, $f8
/* 011114 80011564 24020001 */  addiu       $v0, $zero, 0x1
/* 011118 80011568 E4860004 */  swc1        $f6, 0x4($a0)
/* 01111C 8001156C 1000002B */  b           .L8001161C
/* 011120 80011570 E46801F8 */   swc1       $f8, 0x1f8($v1)
.L80011574:
/* 011124 80011574 D42A25E0 */  ldc1        $f10, %lo(D_800A25E0)($at)
/* 011128 80011578 46001021 */  cvt.d.s     $f0, $f2
/* 01112C 8001157C 46001386 */  mov.s       $f14, $f2
/* 011130 80011580 4620503E */  c.le.d      $f10, $f0
/* 011134 80011584 3C01800A */  lui         $at, %hi(D_800A25E8)
/* 011138 80011588 45000002 */  bc1f        .L80011594
/* 01113C 8001158C 00000000 */   nop
/* 011140 80011590 C43025E8 */  lwc1        $f16, %lo(D_800A25E8)($at)
.L80011594:
/* 011144 80011594 3C01800A */  lui         $at, %hi(D_800A25F0)
/* 011148 80011598 D43225F0 */  ldc1        $f18, %lo(D_800A25F0)($at)
/* 01114C 8001159C 3C01800A */  lui         $at, 0x800a
/* 011150 800115A0 4620903C */  c.lt.d      $f18, $f0
/* 011154 800115A4 00000000 */  nop
/* 011158 800115A8 45020003 */  bc1fl       .L800115B8
/* 01115C 800115AC 3C014352 */   lui        $at, %hi(D_435225F8)
/* 011160 800115B0 C43025F8 */  lwc1        $f16, %lo(D_435225F8)($at)
/* 011164 800115B4 3C014352 */  lui         $at, 0x4352
.L800115B8:
/* 011168 800115B8 44812000 */  mtc1        $at, $f4
/* 01116C 800115BC AFA30024 */  sw          $v1, 0x24($sp)
/* 011170 800115C0 AFA40028 */  sw          $a0, 0x28($sp)
/* 011174 800115C4 E7B00018 */  swc1        $f16, 0x18($sp)
/* 011178 800115C8 0C00F0F7 */  jal         func_8003C3DC
/* 01117C 800115CC 46047300 */   add.s      $f12, $f14, $f4
/* 011180 800115D0 3C013F80 */  lui         $at, 0x3f80
/* 011184 800115D4 44813000 */  mtc1        $at, $f6
/* 011188 800115D8 3C01BF00 */  lui         $at, 0xbf00
/* 01118C 800115DC 44814000 */  mtc1        $at, $f8
/* 011190 800115E0 C7B00018 */  lwc1        $f16, 0x18($sp)
/* 011194 800115E4 8FA40028 */  lw          $a0, 0x28($sp)
/* 011198 800115E8 46080281 */  sub.s       $f10, $f0, $f8
/* 01119C 800115EC 8FA30024 */  lw          $v1, 0x24($sp)
/* 0111A0 800115F0 C4880000 */  lwc1        $f8, 0x0($a0)
/* 0111A4 800115F4 3C014220 */  lui         $at, 0x4220
/* 0111A8 800115F8 460A8482 */  mul.s       $f18, $f16, $f10
/* 0111AC 800115FC 00001025 */  move        $v0, $zero
/* 0111B0 80011600 46123100 */  add.s       $f4, $f6, $f18
/* 0111B4 80011604 44819000 */  mtc1        $at, $f18
/* 0111B8 80011608 46044282 */  mul.s       $f10, $f8, $f4
/* 0111BC 8001160C E48A0004 */  swc1        $f10, 0x4($a0)
/* 0111C0 80011610 C46601F8 */  lwc1        $f6, 0x1f8($v1)
/* 0111C4 80011614 46123200 */  add.s       $f8, $f6, $f18
/* 0111C8 80011618 E46801F8 */  swc1        $f8, 0x1f8($v1)
.L8001161C:
/* 0111CC 8001161C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0111D0 80011620 27BD0028 */  addiu       $sp, $sp, 0x28
/* 0111D4 80011624 03E00008 */  jr          $ra
/* 0111D8 80011628 00000000 */   nop

glabel func_8001162C # 56
/* 0111DC 8001162C 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 0111E0 80011630 AFA5004C */  sw          $a1, 0x4c($sp)
/* 0111E4 80011634 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0111E8 80011638 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 0111EC 8001163C C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 0111F0 80011640 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0111F4 80011644 AFA40048 */  sw          $a0, 0x48($sp)
/* 0111F8 80011648 46062202 */  mul.s       $f8, $f4, $f6
/* 0111FC 8001164C 0C002C3F */  jal         func_8000B0FC
/* 011200 80011650 E7A80034 */   swc1       $f8, 0x34($sp)
/* 011204 80011654 00402025 */  move        $a0, $v0
/* 011208 80011658 0C0148C6 */  jal         __ull_to_f
/* 01120C 8001165C 00602825 */   move       $a1, $v1
/* 011210 80011660 3C0143B4 */  lui         $at, 0x43b4
/* 011214 80011664 44811000 */  mtc1        $at, $f2
/* 011218 80011668 3C01800A */  lui         $at, %hi(D_800A25FC)
/* 01121C 8001166C C43225FC */  lwc1        $f18, %lo(D_800A25FC)($at)
/* 011220 80011670 46020282 */  mul.s       $f10, $f0, $f2
/* 011224 80011674 3C01800A */  lui         $at, %hi(D_800A2600)
/* 011228 80011678 C4282600 */  lwc1        $f8, %lo(D_800A2600)($at)
/* 01122C 8001167C C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 011230 80011680 44808000 */  mtc1        $zero, $f16
/* 011234 80011684 46125102 */  mul.s       $f4, $f10, $f18
/* 011238 80011688 00000000 */  nop
/* 01123C 8001168C 46083282 */  mul.s       $f10, $f6, $f8
/* 011240 80011690 00000000 */  nop
/* 011244 80011694 460A2302 */  mul.s       $f12, $f4, $f10
/* 011248 80011698 4610603C */  c.lt.s      $f12, $f16
/* 01124C 8001169C 00000000 */  nop
/* 011250 800116A0 45000006 */  bc1f        .L800116BC
/* 011254 800116A4 00000000 */   nop
/* 011258 800116A8 46026300 */  add.s       $f12, $f12, $f2
.L800116AC:
/* 01125C 800116AC 4610603C */  c.lt.s      $f12, $f16
/* 011260 800116B0 00000000 */  nop
/* 011264 800116B4 4503FFFD */  bc1tl       .L800116AC
/* 011268 800116B8 46026300 */   add.s      $f12, $f12, $f2
.L800116BC:
/* 01126C 800116BC 460C103E */  c.le.s      $f2, $f12
/* 011270 800116C0 00000000 */  nop
/* 011274 800116C4 45000006 */  bc1f        .L800116E0
/* 011278 800116C8 00000000 */   nop
/* 01127C 800116CC 46026301 */  sub.s       $f12, $f12, $f2
.L800116D0:
/* 011280 800116D0 460C103E */  c.le.s      $f2, $f12
/* 011284 800116D4 00000000 */  nop
/* 011288 800116D8 4503FFFD */  bc1tl       .L800116D0
/* 01128C 800116DC 46026301 */   sub.s      $f12, $f12, $f2
.L800116E0:
/* 011290 800116E0 0C00F0F7 */  jal         func_8003C3DC
/* 011294 800116E4 E7AC0030 */   swc1       $f12, 0x30($sp)
/* 011298 800116E8 3C01800A */  lui         $at, %hi(D_800A2608)
/* 01129C 800116EC D4322608 */  ldc1        $f18, %lo(D_800A2608)($at)
/* 0112A0 800116F0 460001A1 */  cvt.d.s     $f6, $f0
/* 0112A4 800116F4 8FA20048 */  lw          $v0, 0x48($sp)
/* 0112A8 800116F8 46269202 */  mul.d       $f8, $f18, $f6
/* 0112AC 800116FC 3C013FF0 */  lui         $at, 0x3ff0
/* 0112B0 80011700 44812800 */  mtc1        $at, $f5
/* 0112B4 80011704 44802000 */  mtc1        $zero, $f4
/* 0112B8 80011708 C4520000 */  lwc1        $f18, 0x0($v0)
/* 0112BC 8001170C C7AC0030 */  lwc1        $f12, 0x30($sp)
/* 0112C0 80011710 460091A1 */  cvt.d.s     $f6, $f18
/* 0112C4 80011714 46282280 */  add.d       $f10, $f4, $f8
/* 0112C8 80011718 462A3102 */  mul.d       $f4, $f6, $f10
/* 0112CC 8001171C 46202220 */  cvt.s.d     $f8, $f4
/* 0112D0 80011720 0C00F0F7 */  jal         func_8003C3DC
/* 0112D4 80011724 E4480004 */   swc1       $f8, 0x4($v0)
/* 0112D8 80011728 3C01800A */  lui         $at, %hi(D_800A2610)
/* 0112DC 8001172C D4322610 */  ldc1        $f18, %lo(D_800A2610)($at)
/* 0112E0 80011730 460001A1 */  cvt.d.s     $f6, $f0
/* 0112E4 80011734 8FAE0048 */  lw          $t6, 0x48($sp)
/* 0112E8 80011738 46269282 */  mul.d       $f10, $f18, $f6
/* 0112EC 8001173C 3C013FF0 */  lui         $at, 0x3ff0
/* 0112F0 80011740 44812800 */  mtc1        $at, $f5
/* 0112F4 80011744 44802000 */  mtc1        $zero, $f4
/* 0112F8 80011748 C5C20000 */  lwc1        $f2, 0x0($t6)
/* 0112FC 8001174C 2404000A */  addiu       $a0, $zero, 0xa
/* 011300 80011750 460014A1 */  cvt.d.s     $f18, $f2
/* 011304 80011754 462A2200 */  add.d       $f8, $f4, $f10
/* 011308 80011758 46289182 */  mul.d       $f6, $f18, $f8
/* 01130C 8001175C 46203320 */  cvt.s.d     $f12, $f6
/* 011310 80011760 46026283 */  div.s       $f10, $f12, $f2
/* 011314 80011764 E5CC0008 */  swc1        $f12, 0x8($t6)
/* 011318 80011768 C7A40034 */  lwc1        $f4, 0x34($sp)
/* 01131C 8001176C 460A2482 */  mul.s       $f18, $f4, $f10
/* 011320 80011770 0C00EAC8 */  jal         func_8003AB20
/* 011324 80011774 E7B20034 */   swc1       $f18, 0x34($sp)
/* 011328 80011778 244FFFFC */  addiu       $t7, $v0, -0x4
/* 01132C 8001177C 448F4000 */  mtc1        $t7, $f8
/* 011330 80011780 44808000 */  mtc1        $zero, $f16
/* 011334 80011784 C7A40034 */  lwc1        $f4, 0x34($sp)
/* 011338 80011788 468041A0 */  cvt.s.w     $f6, $f8
/* 01133C 8001178C 27A40038 */  addiu       $a0, $sp, 0x38
/* 011340 80011790 E7A40040 */  swc1        $f4, 0x40($sp)
/* 011344 80011794 E7B0003C */  swc1        $f16, 0x3c($sp)
/* 011348 80011798 0C00202A */  jal         func_800080A8
/* 01134C 8001179C E7A60038 */   swc1       $f6, 0x38($sp)
/* 011350 800117A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011354 800117A4 27BD0048 */  addiu       $sp, $sp, 0x48
/* 011358 800117A8 00001025 */  move        $v0, $zero
/* 01135C 800117AC 03E00008 */  jr          $ra
/* 011360 800117B0 00000000 */   nop

glabel func_800117B4 # 57
/* 011364 800117B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 011368 800117B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01136C 800117BC 0C00458B */  jal         func_8001162C
/* 011370 800117C0 3C054316 */   lui        $a1, 0x4316
/* 011374 800117C4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011378 800117C8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01137C 800117CC 03E00008 */  jr          $ra
/* 011380 800117D0 00000000 */   nop

glabel func_800117D4 # 58
/* 011384 800117D4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 011388 800117D8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01138C 800117DC AFB10018 */  sw          $s1, 0x18($sp)
/* 011390 800117E0 AFB00014 */  sw          $s0, 0x14($sp)
/* 011394 800117E4 00808825 */  move        $s1, $a0
/* 011398 800117E8 0C04637C */  jal         func_80118DF0
/* 01139C 800117EC 8C900054 */   lw         $s0, 0x54($a0)
/* 0113A0 800117F0 02202025 */  move        $a0, $s1
/* 0113A4 800117F4 0C0462E6 */  jal         func_80118B98
/* 0113A8 800117F8 3C054396 */   lui        $a1, 0x4396
/* 0113AC 800117FC C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 0113B0 80011800 C6260044 */  lwc1        $f6, 0x44($s1)
/* 0113B4 80011804 44805000 */  mtc1        $zero, $f10
/* 0113B8 80011808 27A40024 */  addiu       $a0, $sp, 0x24
/* 0113BC 8001180C 46062201 */  sub.s       $f8, $f4, $f6
/* 0113C0 80011810 E7AA0028 */  swc1        $f10, 0x28($sp)
/* 0113C4 80011814 E7A80024 */  swc1        $f8, 0x24($sp)
/* 0113C8 80011818 C632004C */  lwc1        $f18, 0x4c($s1)
/* 0113CC 8001181C C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 0113D0 80011820 46128101 */  sub.s       $f4, $f16, $f18
/* 0113D4 80011824 0C00E974 */  jal         func_8003A5D0
/* 0113D8 80011828 E7A4002C */   swc1       $f4, 0x2c($sp)
/* 0113DC 8001182C C6060204 */  lwc1        $f6, 0x204($s0)
/* 0113E0 80011830 C60801A4 */  lwc1        $f8, 0x1a4($s0)
/* 0113E4 80011834 46083280 */  add.s       $f10, $f6, $f8
/* 0113E8 80011838 460A003C */  c.lt.s      $f0, $f10
/* 0113EC 8001183C 00000000 */  nop
/* 0113F0 80011840 45010004 */  bc1t        .L80011854
/* 0113F4 80011844 00000000 */   nop
/* 0113F8 80011848 960E01EA */  lhu         $t6, 0x1ea($s0)
/* 0113FC 8001184C 11C00003 */  beqz        $t6, .L8001185C
/* 011400 80011850 00000000 */   nop
.L80011854:
/* 011404 80011854 10000003 */  b           .L80011864
/* 011408 80011858 24020001 */   addiu      $v0, $zero, 0x1
.L8001185C:
/* 01140C 8001185C 0C0045ED */  jal         func_800117B4
/* 011410 80011860 02202025 */   move       $a0, $s1
.L80011864:
/* 011414 80011864 8FBF001C */  lw          $ra, 0x1c($sp)
/* 011418 80011868 8FB00014 */  lw          $s0, 0x14($sp)
/* 01141C 8001186C 8FB10018 */  lw          $s1, 0x18($sp)
/* 011420 80011870 03E00008 */  jr          $ra
/* 011424 80011874 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_80011878 # 59
/* 011428 80011878 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01142C 8001187C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011430 80011880 0C00458B */  jal         func_8001162C
/* 011434 80011884 3C054396 */   lui        $a1, 0x4396
/* 011438 80011888 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01143C 8001188C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 011440 80011890 03E00008 */  jr          $ra
/* 011444 80011894 00000000 */   nop

glabel func_80011898 # 60
/* 011448 80011898 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01144C 8001189C AFBF001C */  sw          $ra, 0x1c($sp)
/* 011450 800118A0 AFB10018 */  sw          $s1, 0x18($sp)
/* 011454 800118A4 AFB00014 */  sw          $s0, 0x14($sp)
/* 011458 800118A8 00808825 */  move        $s1, $a0
/* 01145C 800118AC 0C04637C */  jal         func_80118DF0
/* 011460 800118B0 8C900054 */   lw         $s0, 0x54($a0)
/* 011464 800118B4 02202025 */  move        $a0, $s1
/* 011468 800118B8 0C0462E6 */  jal         func_80118B98
/* 01146C 800118BC 3C054396 */   lui        $a1, 0x4396
/* 011470 800118C0 C60401EC */  lwc1        $f4, 0x1ec($s0)
/* 011474 800118C4 C6260044 */  lwc1        $f6, 0x44($s1)
/* 011478 800118C8 44805000 */  mtc1        $zero, $f10
/* 01147C 800118CC 27A40024 */  addiu       $a0, $sp, 0x24
/* 011480 800118D0 46062201 */  sub.s       $f8, $f4, $f6
/* 011484 800118D4 E7AA0028 */  swc1        $f10, 0x28($sp)
/* 011488 800118D8 E7A80024 */  swc1        $f8, 0x24($sp)
/* 01148C 800118DC C632004C */  lwc1        $f18, 0x4c($s1)
/* 011490 800118E0 C61001F4 */  lwc1        $f16, 0x1f4($s0)
/* 011494 800118E4 46128101 */  sub.s       $f4, $f16, $f18
/* 011498 800118E8 0C00E974 */  jal         func_8003A5D0
/* 01149C 800118EC E7A4002C */   swc1       $f4, 0x2c($sp)
/* 0114A0 800118F0 C6060204 */  lwc1        $f6, 0x204($s0)
/* 0114A4 800118F4 4606003C */  c.lt.s      $f0, $f6
/* 0114A8 800118F8 00000000 */  nop
/* 0114AC 800118FC 45010004 */  bc1t        .L80011910
/* 0114B0 80011900 00000000 */   nop
/* 0114B4 80011904 960E01EA */  lhu         $t6, 0x1ea($s0)
/* 0114B8 80011908 11C00003 */  beqz        $t6, .L80011918
/* 0114BC 8001190C 00000000 */   nop
.L80011910:
/* 0114C0 80011910 10000003 */  b           .L80011920
/* 0114C4 80011914 24020001 */   addiu      $v0, $zero, 0x1
.L80011918:
/* 0114C8 80011918 0C00461E */  jal         func_80011878
/* 0114CC 8001191C 02202025 */   move       $a0, $s1
.L80011920:
/* 0114D0 80011920 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0114D4 80011924 8FB00014 */  lw          $s0, 0x14($sp)
/* 0114D8 80011928 8FB10018 */  lw          $s1, 0x18($sp)
/* 0114DC 8001192C 03E00008 */  jr          $ra
/* 0114E0 80011930 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_80011934 # 61
/* 0114E4 80011934 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0114E8 80011938 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0114EC 8001193C 0C00458B */  jal         func_8001162C
/* 0114F0 80011940 3C054461 */   lui        $a1, 0x4461
/* 0114F4 80011944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0114F8 80011948 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0114FC 8001194C 03E00008 */  jr          $ra
/* 011500 80011950 00000000 */   nop

glabel func_80011954 # 62
/* 011504 80011954 C4800000 */  lwc1        $f0, 0x0($a0)
/* 011508 80011958 00001025 */  move        $v0, $zero
/* 01150C 8001195C E4800004 */  swc1        $f0, 0x4($a0)
/* 011510 80011960 03E00008 */  jr          $ra
/* 011514 80011964 E4800008 */   swc1       $f0, 0x8($a0)

glabel func_80011968 # 63
/* 011518 80011968 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01151C 8001196C AFBF0014 */  sw          $ra, 0x14($sp)
/* 011520 80011970 8C820054 */  lw          $v0, 0x54($a0)
/* 011524 80011974 AFA40030 */  sw          $a0, 0x30($sp)
/* 011528 80011978 0C04637C */  jal         func_80118DF0
/* 01152C 8001197C AFA2002C */   sw         $v0, 0x2c($sp)
/* 011530 80011980 8FA2002C */  lw          $v0, 0x2c($sp)
/* 011534 80011984 8FA50030 */  lw          $a1, 0x30($sp)
/* 011538 80011988 44805000 */  mtc1        $zero, $f10
/* 01153C 8001198C C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 011540 80011990 C4A60044 */  lwc1        $f6, 0x44($a1)
/* 011544 80011994 E7AA0024 */  swc1        $f10, 0x24($sp)
/* 011548 80011998 27A40020 */  addiu       $a0, $sp, 0x20
/* 01154C 8001199C 46062201 */  sub.s       $f8, $f4, $f6
/* 011550 800119A0 E7A80020 */  swc1        $f8, 0x20($sp)
/* 011554 800119A4 C45001F4 */  lwc1        $f16, 0x1f4($v0)
/* 011558 800119A8 C4B2004C */  lwc1        $f18, 0x4c($a1)
/* 01155C 800119AC 46128101 */  sub.s       $f4, $f16, $f18
/* 011560 800119B0 0C00E974 */  jal         func_8003A5D0
/* 011564 800119B4 E7A40028 */   swc1       $f4, 0x28($sp)
/* 011568 800119B8 8FA2002C */  lw          $v0, 0x2c($sp)
/* 01156C 800119BC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011570 800119C0 C4460204 */  lwc1        $f6, 0x204($v0)
/* 011574 800119C4 C44801A4 */  lwc1        $f8, 0x1a4($v0)
/* 011578 800119C8 46083280 */  add.s       $f10, $f6, $f8
/* 01157C 800119CC 460A003C */  c.lt.s      $f0, $f10
/* 011580 800119D0 00000000 */  nop
/* 011584 800119D4 45020004 */  bc1fl       .L800119E8
/* 011588 800119D8 944E01EA */   lhu        $t6, 0x1ea($v0)
/* 01158C 800119DC 10000007 */  b           .L800119FC
/* 011590 800119E0 24020001 */   addiu      $v0, $zero, 0x1
/* 011594 800119E4 944E01EA */  lhu         $t6, 0x1ea($v0)
.L800119E8:
/* 011598 800119E8 00001025 */  move        $v0, $zero
/* 01159C 800119EC 11C00003 */  beqz        $t6, .L800119FC
/* 0115A0 800119F0 00000000 */   nop
/* 0115A4 800119F4 10000001 */  b           .L800119FC
/* 0115A8 800119F8 24020001 */   addiu      $v0, $zero, 0x1
.L800119FC:
/* 0115AC 800119FC 03E00008 */  jr          $ra
/* 0115B0 80011A00 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80011A04 # 64
/* 0115B4 80011A04 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0115B8 80011A08 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0115BC 80011A0C 8C8E0054 */  lw          $t6, 0x54($a0)
/* 0115C0 80011A10 AFA40038 */  sw          $a0, 0x38($sp)
/* 0115C4 80011A14 0C04637C */  jal         func_80118DF0
/* 0115C8 80011A18 AFAE0034 */   sw         $t6, 0x34($sp)
/* 0115CC 80011A1C 8FA40038 */  lw          $a0, 0x38($sp)
/* 0115D0 80011A20 0C0462E6 */  jal         func_80118B98
/* 0115D4 80011A24 3C054396 */   lui        $a1, 0x4396
/* 0115D8 80011A28 8FA20034 */  lw          $v0, 0x34($sp)
/* 0115DC 80011A2C 8FA60038 */  lw          $a2, 0x38($sp)
/* 0115E0 80011A30 3C01800B */  lui         $at, %hi(D_800AE4E4)
/* 0115E4 80011A34 C44401EC */  lwc1        $f4, 0x1ec($v0)
/* 0115E8 80011A38 C4C60044 */  lwc1        $f6, 0x44($a2)
/* 0115EC 80011A3C 44800000 */  mtc1        $zero, $f0
/* 0115F0 80011A40 27A40028 */  addiu       $a0, $sp, 0x28
/* 0115F4 80011A44 46062201 */  sub.s       $f8, $f4, $f6
/* 0115F8 80011A48 C424E4E4 */  lwc1        $f4, %lo(D_800AE4E4)($at)
/* 0115FC 80011A4C 3C0143FA */  lui         $at, 0x43fa
/* 011600 80011A50 44813000 */  mtc1        $at, $f6
/* 011604 80011A54 E7A8001C */  swc1        $f8, 0x1c($sp)
/* 011608 80011A58 E7A00020 */  swc1        $f0, 0x20($sp)
/* 01160C 80011A5C 46062202 */  mul.s       $f8, $f4, $f6
/* 011610 80011A60 C44A01F4 */  lwc1        $f10, 0x1f4($v0)
/* 011614 80011A64 C4D0004C */  lwc1        $f16, 0x4c($a2)
/* 011618 80011A68 E7A0002C */  swc1        $f0, 0x2c($sp)
/* 01161C 80011A6C E7A00028 */  swc1        $f0, 0x28($sp)
/* 011620 80011A70 46105481 */  sub.s       $f18, $f10, $f16
/* 011624 80011A74 E7A80030 */  swc1        $f8, 0x30($sp)
/* 011628 80011A78 0C00202A */  jal         func_800080A8
/* 01162C 80011A7C E7B20024 */   swc1       $f18, 0x24($sp)
/* 011630 80011A80 8FBF0014 */  lw          $ra, 0x14($sp)
/* 011634 80011A84 27BD0038 */  addiu       $sp, $sp, 0x38
/* 011638 80011A88 00001025 */  move        $v0, $zero
/* 01163C 80011A8C 03E00008 */  jr          $ra
/* 011640 80011A90 00000000 */   nop

glabel func_80011A94 # 65
/* 011644 80011A94 27BDFF30 */  addiu       $sp, $sp, -0xd0
/* 011648 80011A98 AFBF005C */  sw          $ra, 0x5c($sp)
/* 01164C 80011A9C AFB00058 */  sw          $s0, 0x58($sp)
/* 011650 80011AA0 F7B40050 */  sdc1        $f20, 0x50($sp)
/* 011654 80011AA4 8C8E0054 */  lw          $t6, 0x54($a0)
/* 011658 80011AA8 00808025 */  move        $s0, $a0
/* 01165C 80011AAC 3C048007 */  lui         $a0, %hi(D_800760A8)
/* 011660 80011AB0 8C8460A8 */  lw          $a0, %lo(D_800760A8)($a0)
/* 011664 80011AB4 24050035 */  addiu       $a1, $zero, 0x35
/* 011668 80011AB8 0C0058FF */  jal         func_800163FC
/* 01166C 80011ABC AFAE00CC */   sw         $t6, 0xcc($sp)
/* 011670 80011AC0 C4440044 */  lwc1        $f4, 0x44($v0)
/* 011674 80011AC4 00401825 */  move        $v1, $v0
/* 011678 80011AC8 E6040018 */  swc1        $f4, 0x18($s0)
/* 01167C 80011ACC C4460048 */  lwc1        $f6, 0x48($v0)
/* 011680 80011AD0 E606001C */  swc1        $f6, 0x1c($s0)
/* 011684 80011AD4 C448004C */  lwc1        $f8, 0x4c($v0)
/* 011688 80011AD8 E6080020 */  swc1        $f8, 0x20($s0)
/* 01168C 80011ADC 944F0036 */  lhu         $t7, 0x36($v0)
/* 011690 80011AE0 00001025 */  move        $v0, $zero
/* 011694 80011AE4 31F88000 */  andi        $t8, $t7, 0x8000
/* 011698 80011AE8 13000003 */  beqz        $t8, .L80011AF8
/* 01169C 80011AEC 00000000 */   nop
/* 0116A0 80011AF0 10000001 */  b           .L80011AF8
/* 0116A4 80011AF4 24020001 */   addiu      $v0, $zero, 0x1
.L80011AF8:
/* 0116A8 80011AF8 38590001 */  xori        $t9, $v0, 0x1
/* 0116AC 80011AFC 00194880 */  sll         $t1, $t9, 2
/* 0116B0 80011B00 00695021 */  addu        $t2, $v1, $t1
/* 0116B4 80011B04 8D4B003C */  lw          $t3, 0x3c($t2)
/* 0116B8 80011B08 03A07025 */  move        $t6, $sp
/* 0116BC 80011B0C 256D003C */  addiu       $t5, $t3, 0x3c
.L80011B10:
/* 0116C0 80011B10 8D610000 */  lw          $at, 0x0($t3)
/* 0116C4 80011B14 256B000C */  addiu       $t3, $t3, 0xc
/* 0116C8 80011B18 25CE000C */  addiu       $t6, $t6, 0xc
/* 0116CC 80011B1C ADC1FFF4 */  sw          $at, -0xc($t6)
/* 0116D0 80011B20 8D61FFF8 */  lw          $at, -0x8($t3)
/* 0116D4 80011B24 ADC1FFF8 */  sw          $at, -0x8($t6)
/* 0116D8 80011B28 8D61FFFC */  lw          $at, -0x4($t3)
/* 0116DC 80011B2C 156DFFF8 */  bne         $t3, $t5, .L80011B10
/* 0116E0 80011B30 ADC1FFFC */   sw         $at, -0x4($t6)
/* 0116E4 80011B34 8D610000 */  lw          $at, 0x0($t3)
/* 0116E8 80011B38 27AF0094 */  addiu       $t7, $sp, 0x94
/* 0116EC 80011B3C ADC10000 */  sw          $at, 0x0($t6)
/* 0116F0 80011B40 8FA7000C */  lw          $a3, 0xc($sp)
/* 0116F4 80011B44 8FA60008 */  lw          $a2, 0x8($sp)
/* 0116F8 80011B48 8FA50004 */  lw          $a1, 0x4($sp)
/* 0116FC 80011B4C 8FA40000 */  lw          $a0, 0x0($sp)
/* 011700 80011B50 0C00E749 */  jal         func_80039D24
/* 011704 80011B54 AFAF0040 */   sw         $t7, 0x40($sp)
/* 011708 80011B58 4480A000 */  mtc1        $zero, $f20
/* 01170C 80011B5C 3C01C2C8 */  lui         $at, 0xc2c8
/* 011710 80011B60 44815000 */  mtc1        $at, $f10
/* 011714 80011B64 27A50088 */  addiu       $a1, $sp, 0x88
/* 011718 80011B68 00A03025 */  move        $a2, $a1
/* 01171C 80011B6C 27A40094 */  addiu       $a0, $sp, 0x94
/* 011720 80011B70 E7B40088 */  swc1        $f20, 0x88($sp)
/* 011724 80011B74 E7B4008C */  swc1        $f20, 0x8c($sp)
/* 011728 80011B78 0C00E578 */  jal         func_800395E0
/* 01172C 80011B7C E7AA0090 */   swc1       $f10, 0x90($sp)
/* 011730 80011B80 27A40088 */  addiu       $a0, $sp, 0x88
/* 011734 80011B84 27A50084 */  addiu       $a1, $sp, 0x84
/* 011738 80011B88 0C00EFE8 */  jal         func_8003BFA0
/* 01173C 80011B8C 27A60080 */   addiu      $a2, $sp, 0x80
/* 011740 80011B90 8FB800CC */  lw          $t8, 0xcc($sp)
/* 011744 80011B94 C7B00084 */  lwc1        $f16, 0x84($sp)
/* 011748 80011B98 02002025 */  move        $a0, $s0
/* 01174C 80011B9C C712000C */  lwc1        $f18, 0xc($t8)
/* 011750 80011BA0 00003025 */  move        $a2, $zero
/* 011754 80011BA4 46128101 */  sub.s       $f4, $f16, $f18
/* 011758 80011BA8 44052000 */  mfc1        $a1, $f4
/* 01175C 80011BAC 0C0057E5 */  jal         func_80015F94
/* 011760 80011BB0 00000000 */   nop
/* 011764 80011BB4 8FB900CC */  lw          $t9, 0xcc($sp)
/* 011768 80011BB8 C7A60080 */  lwc1        $f6, 0x80($sp)
/* 01176C 80011BBC 3C0142B4 */  lui         $at, 0x42b4
/* 011770 80011BC0 C7280010 */  lwc1        $f8, 0x10($t9)
/* 011774 80011BC4 44818000 */  mtc1        $at, $f16
/* 011778 80011BC8 02002025 */  move        $a0, $s0
/* 01177C 80011BCC 46083281 */  sub.s       $f10, $f6, $f8
/* 011780 80011BD0 24060001 */  addiu       $a2, $zero, 0x1
/* 011784 80011BD4 46105480 */  add.s       $f18, $f10, $f16
/* 011788 80011BD8 44059000 */  mfc1        $a1, $f18
/* 01178C 80011BDC 0C0057E5 */  jal         func_80015F94
/* 011790 80011BE0 00000000 */   nop
/* 011794 80011BE4 0C0462CC */  jal         func_80118B30
/* 011798 80011BE8 02002025 */   move       $a0, $s0
/* 01179C 80011BEC 10400028 */  beqz        $v0, .L80011C90
/* 0117A0 80011BF0 02002025 */   move       $a0, $s0
/* 0117A4 80011BF4 24050073 */  addiu       $a1, $zero, 0x73
/* 0117A8 80011BF8 0C0058FF */  jal         func_800163FC
/* 0117AC 80011BFC AFA200C4 */   sw         $v0, 0xc4($sp)
/* 0117B0 80011C00 8E09002C */  lw          $t1, 0x2c($s0)
/* 0117B4 80011C04 8FA700C4 */  lw          $a3, 0xc4($sp)
/* 0117B8 80011C08 00404025 */  move        $t0, $v0
/* 0117BC 80011C0C 8D25002C */  lw          $a1, 0x2c($t1)
/* 0117C0 80011C10 50A2000E */  beql        $a1, $v0, .L80011C4C
/* 0117C4 80011C14 C4F20048 */   lwc1       $f18, 0x48($a3)
.L80011C18:
/* 0117C8 80011C18 8CA3002C */  lw          $v1, 0x2c($a1)
/* 0117CC 80011C1C 8CA40054 */  lw          $a0, 0x54($a1)
/* 0117D0 80011C20 8C660054 */  lw          $a2, 0x54($v1)
/* 0117D4 80011C24 E4940004 */  swc1        $f20, 0x4($a0)
/* 0117D8 80011C28 C4640014 */  lwc1        $f4, 0x14($v1)
/* 0117DC 80011C2C C4860000 */  lwc1        $f6, 0x0($a0)
/* 0117E0 80011C30 C4CA0000 */  lwc1        $f10, 0x0($a2)
/* 0117E4 80011C34 46062200 */  add.s       $f8, $f4, $f6
/* 0117E8 80011C38 460A4401 */  sub.s       $f16, $f8, $f10
/* 0117EC 80011C3C E4B00014 */  swc1        $f16, 0x14($a1)
/* 0117F0 80011C40 1468FFF5 */  bne         $v1, $t0, .L80011C18
/* 0117F4 80011C44 00602825 */   move       $a1, $v1
/* 0117F8 80011C48 C4F20048 */  lwc1        $f18, 0x48($a3)
.L80011C4C:
/* 0117FC 80011C4C C4440048 */  lwc1        $f4, 0x48($v0)
/* 011800 80011C50 8FAA00CC */  lw          $t2, 0xcc($sp)
/* 011804 80011C54 3C07C2B4 */  lui         $a3, 0xc2b4
/* 011808 80011C58 46049001 */  sub.s       $f0, $f18, $f4
/* 01180C 80011C5C C54C01A4 */  lwc1        $f12, 0x1a4($t2)
/* 011810 80011C60 3C0641A0 */  lui         $a2, 0x41a0
/* 011814 80011C64 46000085 */  abs.s       $f2, $f0
/* 011818 80011C68 4602603C */  c.lt.s      $f12, $f2
/* 01181C 80011C6C 00000000 */  nop
/* 011820 80011C70 45020008 */  bc1fl       .L80011C94
/* 011824 80011C74 8FBF005C */   lw         $ra, 0x5c($sp)
/* 011828 80011C78 44807000 */  mtc1        $zero, $f14
/* 01182C 80011C7C E7A20010 */  swc1        $f2, 0x10($sp)
/* 011830 80011C80 0C00EA85 */  jal         func_8003AA14
/* 011834 80011C84 AFA8007C */   sw         $t0, 0x7c($sp)
/* 011838 80011C88 8FA8007C */  lw          $t0, 0x7c($sp)
/* 01183C 80011C8C E5000014 */  swc1        $f0, 0x14($t0)
.L80011C90:
/* 011840 80011C90 8FBF005C */  lw          $ra, 0x5c($sp)
.L80011C94:
/* 011844 80011C94 D7B40050 */  ldc1        $f20, 0x50($sp)
/* 011848 80011C98 8FB00058 */  lw          $s0, 0x58($sp)
/* 01184C 80011C9C 27BD00D0 */  addiu       $sp, $sp, 0xd0
/* 011850 80011CA0 03E00008 */  jr          $ra
/* 011854 80011CA4 00001025 */   move       $v0, $zero
/* 011858 80011CA8 00000000 */  nop
/* 01185C 80011CAC 00000000 */  nop
