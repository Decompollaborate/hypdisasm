.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003F700 # 0
/* 03F2B0 8003F700 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F2B4 8003F704 AFA40018 */  sw          $a0, 0x18($sp)
/* 03F2B8 8003F708 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F2BC 8003F70C AFA60020 */  sw          $a2, 0x20($sp)
/* 03F2C0 8003F710 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03F2C4 8003F714 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03F2C8 8003F718 AFA70024 */  sw          $a3, 0x24($sp)
/* 03F2CC 8003F71C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03F2D0 8003F720 0C00E03D */  jal         func_800380F4
/* 03F2D4 8003F724 24060015 */   addiu      $a2, $zero, 0x15
/* 03F2D8 8003F728 8FA30018 */  lw          $v1, 0x18($sp)
/* 03F2DC 8003F72C 00402825 */  move        $a1, $v0
/* 03F2E0 8003F730 AC620000 */  sw          $v0, 0x0($v1)
/* 03F2E4 8003F734 8FA6001C */  lw          $a2, 0x1c($sp)
/* 03F2E8 8003F738 0C00DFC0 */  jal         func_80037F00
/* 03F2EC 8003F73C 24640004 */   addiu      $a0, $v1, 0x4
/* 03F2F0 8003F740 8FA40018 */  lw          $a0, 0x18($sp)
/* 03F2F4 8003F744 8FA50020 */  lw          $a1, 0x20($sp)
/* 03F2F8 8003F748 0C01059C */  jal         func_80041670
/* 03F2FC 8003F74C 24840014 */   addiu      $a0, $a0, 0x14
/* 03F300 8003F750 8FA40018 */  lw          $a0, 0x18($sp)
/* 03F304 8003F754 8FA50024 */  lw          $a1, 0x24($sp)
/* 03F308 8003F758 0C00DEFB */  jal         func_80037BEC
/* 03F30C 8003F75C 24840034 */   addiu      $a0, $a0, 0x34
/* 03F310 8003F760 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F314 8003F764 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F318 8003F768 03E00008 */  jr          $ra
/* 03F31C 8003F76C 00000000 */   nop

glabel func_8003F770 # 1
/* 03F320 8003F770 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F324 8003F774 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F328 8003F778 AFA40018 */  sw          $a0, 0x18($sp)
/* 03F32C 8003F77C 0C00DF1D */  jal         func_80037C74
/* 03F330 8003F780 24840034 */   addiu      $a0, $a0, 0x34
/* 03F334 8003F784 8FA40018 */  lw          $a0, 0x18($sp)
/* 03F338 8003F788 0C0105FB */  jal         func_800417EC
/* 03F33C 8003F78C 24840014 */   addiu      $a0, $a0, 0x14
/* 03F340 8003F790 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03F344 8003F794 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03F348 8003F798 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 03F34C 8003F79C 0C00E152 */  jal         func_80038548
/* 03F350 8003F7A0 8DC50000 */   lw         $a1, 0x0($t6)
/* 03F354 8003F7A4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F358 8003F7A8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F35C 8003F7AC 03E00008 */  jr          $ra
/* 03F360 8003F7B0 00000000 */   nop

glabel func_8003F7B4 # 2
/* 03F364 8003F7B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F368 8003F7B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F36C 8003F7BC AFA5001C */  sw          $a1, 0x1c($sp)
/* 03F370 8003F7C0 24A50010 */  addiu       $a1, $a1, 0x10
/* 03F374 8003F7C4 24840004 */  addiu       $a0, $a0, 0x4
/* 03F378 8003F7C8 0C00E03D */  jal         func_800380F4
/* 03F37C 8003F7CC 24060032 */   addiu      $a2, $zero, 0x32
/* 03F380 8003F7D0 14400003 */  bne         $v0, $zero, .L8003F7E0
/* 03F384 8003F7D4 00401825 */   move       $v1, $v0
/* 03F388 8003F7D8 10000008 */  b           .L8003F7FC
/* 03F38C 8003F7DC 00001025 */   move       $v0, $zero
.L8003F7E0:
/* 03F390 8003F7E0 AC600000 */  sw          $zero, 0x0($v1)
/* 03F394 8003F7E4 8FAE001C */  lw          $t6, 0x1c($sp)
/* 03F398 8003F7E8 246F0010 */  addiu       $t7, $v1, 0x10
/* 03F39C 8003F7EC AC600008 */  sw          $zero, 0x8($v1)
/* 03F3A0 8003F7F0 AC6F000C */  sw          $t7, 0xc($v1)
/* 03F3A4 8003F7F4 00601025 */  move        $v0, $v1
/* 03F3A8 8003F7F8 AC6E0004 */  sw          $t6, 0x4($v1)
.L8003F7FC:
/* 03F3AC 8003F7FC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F3B0 8003F800 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F3B4 8003F804 03E00008 */  jr          $ra
/* 03F3B8 8003F808 00000000 */   nop

glabel func_8003F80C # 3
/* 03F3BC 8003F80C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F3C0 8003F810 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F3C4 8003F814 AFA40018 */  sw          $a0, 0x18($sp)
/* 03F3C8 8003F818 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03F3CC 8003F81C 8CA50008 */  lw          $a1, 0x8($a1)
/* 03F3D0 8003F820 0C010785 */  jal         func_80041E14
/* 03F3D4 8003F824 24840014 */   addiu      $a0, $a0, 0x14
/* 03F3D8 8003F828 8FA40018 */  lw          $a0, 0x18($sp)
/* 03F3DC 8003F82C 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03F3E0 8003F830 0C00E152 */  jal         func_80038548
/* 03F3E4 8003F834 24840004 */   addiu      $a0, $a0, 0x4
/* 03F3E8 8003F838 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F3EC 8003F83C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F3F0 8003F840 03E00008 */  jr          $ra
/* 03F3F4 8003F844 00000000 */   nop

glabel func_8003F848 # 4
/* 03F3F8 8003F848 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03F3FC 8003F84C AFA40028 */  sw          $a0, 0x28($sp)
/* 03F400 8003F850 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03F404 8003F854 24840014 */  addiu       $a0, $a0, 0x14
/* 03F408 8003F858 AFB00018 */  sw          $s0, 0x18($sp)
/* 03F40C 8003F85C AFA5002C */  sw          $a1, 0x2c($sp)
/* 03F410 8003F860 AFA60030 */  sw          $a2, 0x30($sp)
/* 03F414 8003F864 AFA70034 */  sw          $a3, 0x34($sp)
/* 03F418 8003F868 0C0107EC */  jal         func_80041FB0
/* 03F41C 8003F86C AFA40020 */   sw         $a0, 0x20($sp)
/* 03F420 8003F870 10400017 */  beq         $v0, $zero, .L8003F8D0
/* 03F424 8003F874 00408025 */   move       $s0, $v0
/* 03F428 8003F878 8C4E0004 */  lw          $t6, 0x4($v0)
/* 03F42C 8003F87C 8FAF0030 */  lw          $t7, 0x30($sp)
/* 03F430 8003F880 8FA40028 */  lw          $a0, 0x28($sp)
/* 03F434 8003F884 01CF082B */  sltu        $at, $t6, $t7
/* 03F438 8003F888 1420000F */  bne         $at, $zero, .L8003F8C8
/* 03F43C 8003F88C 00000000 */   nop
/* 03F440 8003F890 8C580000 */  lw          $t8, 0x0($v0)
/* 03F444 8003F894 8C48000C */  lw          $t0, 0xc($v0)
/* 03F448 8003F898 37190001 */  ori         $t9, $t8, 0x1
/* 03F44C 8003F89C AC590000 */  sw          $t9, 0x0($v0)
/* 03F450 8003F8A0 8FA90034 */  lw          $t1, 0x34($sp)
/* 03F454 8003F8A4 AD280000 */  sw          $t0, 0x0($t1)
/* 03F458 8003F8A8 8C4A0000 */  lw          $t2, 0x0($v0)
/* 03F45C 8003F8AC 314B0002 */  andi        $t3, $t2, 0x2
/* 03F460 8003F8B0 11600003 */  beq         $t3, $zero, .L8003F8C0
/* 03F464 8003F8B4 00000000 */   nop
/* 03F468 8003F8B8 10000020 */  b           .L8003F93C
/* 03F46C 8003F8BC 24020004 */   addiu      $v0, $zero, 0x4
.L8003F8C0:
/* 03F470 8003F8C0 1000001E */  b           .L8003F93C
/* 03F474 8003F8C4 24020003 */   addiu      $v0, $zero, 0x3
.L8003F8C8:
/* 03F478 8003F8C8 0C00FE03 */  jal         func_8003F80C
/* 03F47C 8003F8CC 02002825 */   move       $a1, $s0
.L8003F8D0:
/* 03F480 8003F8D0 8FA40028 */  lw          $a0, 0x28($sp)
/* 03F484 8003F8D4 0C00FE8F */  jal         func_8003FA3C
/* 03F488 8003F8D8 8FA50030 */   lw         $a1, 0x30($sp)
/* 03F48C 8003F8DC 14400003 */  bne         $v0, $zero, .L8003F8EC
/* 03F490 8003F8E0 00408025 */   move       $s0, $v0
/* 03F494 8003F8E4 0C010701 */  jal         func_80041C04
/* 03F498 8003F8E8 8FA40020 */   lw         $a0, 0x20($sp)
.L8003F8EC:
/* 03F49C 8003F8EC 8FA5002C */  lw          $a1, 0x2c($sp)
/* 03F4A0 8003F8F0 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03F4A4 8003F8F4 8E06000C */  lw          $a2, 0xc($s0)
/* 03F4A8 8003F8F8 AE050008 */  sw          $a1, 0x8($s0)
/* 03F4AC 8003F8FC AE0C0004 */  sw          $t4, 0x4($s0)
/* 03F4B0 8003F900 8FA40028 */  lw          $a0, 0x28($sp)
/* 03F4B4 8003F904 8FA70030 */  lw          $a3, 0x30($sp)
/* 03F4B8 8003F908 0C00DF85 */  jal         func_80037E14
/* 03F4BC 8003F90C 24840034 */   addiu      $a0, $a0, 0x34
/* 03F4C0 8003F910 8FA40020 */  lw          $a0, 0x20($sp)
/* 03F4C4 8003F914 02002825 */  move        $a1, $s0
/* 03F4C8 8003F918 0C010695 */  jal         func_80041A54
/* 03F4CC 8003F91C 8FA6002C */   lw         $a2, 0x2c($sp)
/* 03F4D0 8003F920 8E0D0000 */  lw          $t5, 0x0($s0)
/* 03F4D4 8003F924 8E0F000C */  lw          $t7, 0xc($s0)
/* 03F4D8 8003F928 24020004 */  addiu       $v0, $zero, 0x4
/* 03F4DC 8003F92C 35AE0003 */  ori         $t6, $t5, 0x3
/* 03F4E0 8003F930 AE0E0000 */  sw          $t6, 0x0($s0)
/* 03F4E4 8003F934 8FB80034 */  lw          $t8, 0x34($sp)
/* 03F4E8 8003F938 AF0F0000 */  sw          $t7, 0x0($t8)
.L8003F93C:
/* 03F4EC 8003F93C 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03F4F0 8003F940 8FB00018 */  lw          $s0, 0x18($sp)
/* 03F4F4 8003F944 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03F4F8 8003F948 03E00008 */  jr          $ra
/* 03F4FC 8003F94C 00000000 */   nop

glabel func_8003F950 # 5
/* 03F500 8003F950 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03F504 8003F954 AFA40028 */  sw          $a0, 0x28($sp)
/* 03F508 8003F958 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F50C 8003F95C 24840014 */  addiu       $a0, $a0, 0x14
/* 03F510 8003F960 AFA5002C */  sw          $a1, 0x2c($sp)
/* 03F514 8003F964 AFA60030 */  sw          $a2, 0x30($sp)
/* 03F518 8003F968 AFA70034 */  sw          $a3, 0x34($sp)
/* 03F51C 8003F96C 0C0107EC */  jal         func_80041FB0
/* 03F520 8003F970 AFA4001C */   sw         $a0, 0x1c($sp)
/* 03F524 8003F974 10400014 */  beq         $v0, $zero, .L8003F9C8
/* 03F528 8003F978 00402825 */   move       $a1, $v0
/* 03F52C 8003F97C 8C4E0000 */  lw          $t6, 0x0($v0)
/* 03F530 8003F980 24180002 */  addiu       $t8, $zero, 0x2
/* 03F534 8003F984 24190001 */  addiu       $t9, $zero, 0x1
/* 03F538 8003F988 31CF0001 */  andi        $t7, $t6, 0x1
/* 03F53C 8003F98C 51E00004 */  beql        $t7, $zero, .L8003F9A0
/* 03F540 8003F990 AFB90020 */   sw         $t9, 0x20($sp)
/* 03F544 8003F994 10000002 */  b           .L8003F9A0
/* 03F548 8003F998 AFB80020 */   sw         $t8, 0x20($sp)
/* 03F54C 8003F99C AFB90020 */  sw          $t9, 0x20($sp)
.L8003F9A0:
/* 03F550 8003F9A0 8FA80030 */  lw          $t0, 0x30($sp)
/* 03F554 8003F9A4 8C490004 */  lw          $t1, 0x4($v0)
/* 03F558 8003F9A8 8FAA002C */  lw          $t2, 0x2c($sp)
/* 03F55C 8003F9AC 55090019 */  bnel        $t0, $t1, .L8003FA14
/* 03F560 8003F9B0 8CAD0000 */   lw         $t5, 0x0($a1)
/* 03F564 8003F9B4 8C4B0008 */  lw          $t3, 0x8($v0)
/* 03F568 8003F9B8 514B0016 */  beql        $t2, $t3, .L8003FA14
/* 03F56C 8003F9BC 8CAD0000 */   lw         $t5, 0x0($a1)
/* 03F570 8003F9C0 10000014 */  b           .L8003FA14
/* 03F574 8003F9C4 8CAD0000 */   lw         $t5, 0x0($a1)
.L8003F9C8:
/* 03F578 8003F9C8 AFA00020 */  sw          $zero, 0x20($sp)
/* 03F57C 8003F9CC 8FA40028 */  lw          $a0, 0x28($sp)
/* 03F580 8003F9D0 0C00FE8F */  jal         func_8003FA3C
/* 03F584 8003F9D4 8FA50030 */   lw         $a1, 0x30($sp)
/* 03F588 8003F9D8 14400005 */  bne         $v0, $zero, .L8003F9F0
/* 03F58C 8003F9DC 00402825 */   move       $a1, $v0
/* 03F590 8003F9E0 8FA4001C */  lw          $a0, 0x1c($sp)
/* 03F594 8003F9E4 0C010701 */  jal         func_80041C04
/* 03F598 8003F9E8 AFA20024 */   sw         $v0, 0x24($sp)
/* 03F59C 8003F9EC 8FA50024 */  lw          $a1, 0x24($sp)
.L8003F9F0:
/* 03F5A0 8003F9F0 8FA6002C */  lw          $a2, 0x2c($sp)
/* 03F5A4 8003F9F4 8FAC0030 */  lw          $t4, 0x30($sp)
/* 03F5A8 8003F9F8 ACA60008 */  sw          $a2, 0x8($a1)
/* 03F5AC 8003F9FC ACAC0004 */  sw          $t4, 0x4($a1)
/* 03F5B0 8003FA00 AFA50024 */  sw          $a1, 0x24($sp)
/* 03F5B4 8003FA04 0C010695 */  jal         func_80041A54
/* 03F5B8 8003FA08 8FA4001C */   lw         $a0, 0x1c($sp)
/* 03F5BC 8003FA0C 8FA50024 */  lw          $a1, 0x24($sp)
/* 03F5C0 8003FA10 8CAD0000 */  lw          $t5, 0x0($a1)
.L8003FA14:
/* 03F5C4 8003FA14 8CAF000C */  lw          $t7, 0xc($a1)
/* 03F5C8 8003FA18 35AE0001 */  ori         $t6, $t5, 0x1
/* 03F5CC 8003FA1C ACAE0000 */  sw          $t6, 0x0($a1)
/* 03F5D0 8003FA20 8FB80034 */  lw          $t8, 0x34($sp)
/* 03F5D4 8003FA24 AF0F0000 */  sw          $t7, 0x0($t8)
/* 03F5D8 8003FA28 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F5DC 8003FA2C 8FA20020 */  lw          $v0, 0x20($sp)
/* 03F5E0 8003FA30 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03F5E4 8003FA34 03E00008 */  jr          $ra
/* 03F5E8 8003FA38 00000000 */   nop

glabel func_8003FA3C # 6
/* 03F5EC 8003FA3C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03F5F0 8003FA40 AFB2001C */  sw          $s2, 0x1c($sp)
/* 03F5F4 8003FA44 AFB10018 */  sw          $s1, 0x18($sp)
/* 03F5F8 8003FA48 00809025 */  move        $s2, $a0
/* 03F5FC 8003FA4C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03F600 8003FA50 AFB30020 */  sw          $s3, 0x20($sp)
/* 03F604 8003FA54 24910014 */  addiu       $s1, $a0, 0x14
/* 03F608 8003FA58 00A09825 */  move        $s3, $a1
/* 03F60C 8003FA5C AFB00014 */  sw          $s0, 0x14($sp)
/* 03F610 8003FA60 0C010801 */  jal         func_80042004
/* 03F614 8003FA64 02202025 */   move       $a0, $s1
/* 03F618 8003FA68 00408025 */  move        $s0, $v0
.L8003FA6C:
/* 03F61C 8003FA6C 0C010701 */  jal         func_80041C04
/* 03F620 8003FA70 02202025 */   move       $a0, $s1
/* 03F624 8003FA74 10400007 */  beq         $v0, $zero, .L8003FA94
/* 03F628 8003FA78 02402025 */   move       $a0, $s2
/* 03F62C 8003FA7C 0C00FDED */  jal         func_8003F7B4
/* 03F630 8003FA80 02602825 */   move       $a1, $s3
/* 03F634 8003FA84 10400003 */  beq         $v0, $zero, .L8003FA94
/* 03F638 8003FA88 00000000 */   nop
/* 03F63C 8003FA8C 10000010 */  b           .L8003FAD0
/* 03F640 8003FA90 8FBF0024 */   lw         $ra, 0x24($sp)
.L8003FA94:
/* 03F644 8003FA94 12000005 */  beq         $s0, $zero, .L8003FAAC
/* 03F648 8003FA98 02402025 */   move       $a0, $s2
/* 03F64C 8003FA9C 8E0E0000 */  lw          $t6, 0x0($s0)
/* 03F650 8003FAA0 31CF0003 */  andi        $t7, $t6, 0x3
/* 03F654 8003FAA4 11E00003 */  beq         $t7, $zero, .L8003FAB4
/* 03F658 8003FAA8 00000000 */   nop
.L8003FAAC:
/* 03F65C 8003FAAC 10000007 */  b           .L8003FACC
/* 03F660 8003FAB0 00001025 */   move       $v0, $zero
.L8003FAB4:
/* 03F664 8003FAB4 0C00FE03 */  jal         func_8003F80C
/* 03F668 8003FAB8 02002825 */   move       $a1, $s0
/* 03F66C 8003FABC 0C01080A */  jal         func_80042028
/* 03F670 8003FAC0 02202025 */   move       $a0, $s1
/* 03F674 8003FAC4 1000FFE9 */  b           .L8003FA6C
/* 03F678 8003FAC8 00408025 */   move       $s0, $v0
.L8003FACC:
/* 03F67C 8003FACC 8FBF0024 */  lw          $ra, 0x24($sp)
.L8003FAD0:
/* 03F680 8003FAD0 8FB00014 */  lw          $s0, 0x14($sp)
/* 03F684 8003FAD4 8FB10018 */  lw          $s1, 0x18($sp)
/* 03F688 8003FAD8 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03F68C 8003FADC 8FB30020 */  lw          $s3, 0x20($sp)
/* 03F690 8003FAE0 03E00008 */  jr          $ra
/* 03F694 8003FAE4 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8003FAE8 # 7
/* 03F698 8003FAE8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F69C 8003FAEC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F6A0 8003FAF0 AFA40018 */  sw          $a0, 0x18($sp)
/* 03F6A4 8003FAF4 24840034 */  addiu       $a0, $a0, 0x34
/* 03F6A8 8003FAF8 0C00DFA8 */  jal         func_80037EA0
/* 03F6AC 8003FAFC AFA5001C */   sw         $a1, 0x1c($sp)
/* 03F6B0 8003FB00 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03F6B4 8003FB04 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03F6B8 8003FB08 8DC20020 */  lw          $v0, 0x20($t6)
/* 03F6BC 8003FB0C 5040000C */  beql        $v0, $zero, .L8003FB40
/* 03F6C0 8003FB10 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03F6C4 8003FB14 8C430004 */  lw          $v1, 0x4($v0)
.L8003FB18:
/* 03F6C8 8003FB18 00A0C027 */  nor         $t8, $a1, $zero
/* 03F6CC 8003FB1C 8C640000 */  lw          $a0, 0x0($v1)
/* 03F6D0 8003FB20 00857824 */  and         $t7, $a0, $a1
/* 03F6D4 8003FB24 11E00005 */  beq         $t7, $zero, .L8003FB3C
/* 03F6D8 8003FB28 0098C824 */   and        $t9, $a0, $t8
/* 03F6DC 8003FB2C AC790000 */  sw          $t9, 0x0($v1)
/* 03F6E0 8003FB30 8C420008 */  lw          $v0, 0x8($v0)
/* 03F6E4 8003FB34 5440FFF8 */  bnel        $v0, $zero, .L8003FB18
/* 03F6E8 8003FB38 8C430004 */   lw         $v1, 0x4($v0)
.L8003FB3C:
/* 03F6EC 8003FB3C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003FB40:
/* 03F6F0 8003FB40 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F6F4 8003FB44 03E00008 */  jr          $ra
/* 03F6F8 8003FB48 00000000 */   nop

glabel func_8003FB4C # 8
/* 03F6FC 8003FB4C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F700 8003FB50 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F704 8003FB54 0C00FEBA */  jal         func_8003FAE8
/* 03F708 8003FB58 24050002 */   addiu      $a1, $zero, 0x2
/* 03F70C 8003FB5C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F710 8003FB60 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F714 8003FB64 03E00008 */  jr          $ra
/* 03F718 8003FB68 00000000 */   nop

glabel func_8003FB6C # 9
/* 03F71C 8003FB6C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03F720 8003FB70 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03F724 8003FB74 0C00FEBA */  jal         func_8003FAE8
/* 03F728 8003FB78 24050003 */   addiu      $a1, $zero, 0x3
/* 03F72C 8003FB7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03F730 8003FB80 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03F734 8003FB84 03E00008 */  jr          $ra
/* 03F738 8003FB88 00000000 */   nop
/* 03F73C 8003FB8C 00000000 */  nop
