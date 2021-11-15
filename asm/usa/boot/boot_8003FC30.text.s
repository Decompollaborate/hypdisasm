.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003FC30 # 0
/* 03F7E0 8003FC30 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03F7E4 8003FC34 93AE004B */  lbu         $t6, 0x4b($sp)
/* 03F7E8 8003FC38 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03F7EC 8003FC3C AFB00020 */  sw          $s0, 0x20($sp)
/* 03F7F0 8003FC40 AFA5003C */  sw          $a1, 0x3c($sp)
/* 03F7F4 8003FC44 AFA60040 */  sw          $a2, 0x40($sp)
/* 03F7F8 8003FC48 AFA70044 */  sw          $a3, 0x44($sp)
/* 03F7FC 8003FC4C 3C0F800A */  lui         $t7, %hi(D_8009D524)
/* 03F800 8003FC50 AC8E0680 */  sw          $t6, 0x680($a0)
/* 03F804 8003FC54 00808025 */  move        $s0, $a0
/* 03F808 8003FC58 25EFD524 */  addiu       $t7, $t7, %lo(D_8009D524)
/* 03F80C 8003FC5C ADE00000 */  sw          $zero, 0x0($t7)
/* 03F810 8003FC60 24180001 */  addiu       $t8, $zero, 0x1
/* 03F814 8003FC64 24190001 */  addiu       $t9, $zero, 0x1
/* 03F818 8003FC68 24080003 */  addiu       $t0, $zero, 0x3
/* 03F81C 8003FC6C AE00066C */  sw          $zero, 0x66c($s0)
/* 03F820 8003FC70 AE000670 */  sw          $zero, 0x670($s0)
/* 03F824 8003FC74 AE000674 */  sw          $zero, 0x674($s0)
/* 03F828 8003FC78 AE000668 */  sw          $zero, 0x668($s0)
/* 03F82C 8003FC7C AE180678 */  sw          $t8, 0x678($s0)
/* 03F830 8003FC80 AE00067C */  sw          $zero, 0x67c($s0)
/* 03F834 8003FC84 A6190000 */  sh          $t9, 0x0($s0)
/* 03F838 8003FC88 A6080002 */  sh          $t0, 0x2($s0)
/* 03F83C 8003FC8C 26040074 */  addiu       $a0, $s0, 0x74
/* 03F840 8003FC90 AFA40034 */  sw          $a0, 0x34($sp)
/* 03F844 8003FC94 2605008C */  addiu       $a1, $s0, 0x8c
/* 03F848 8003FC98 0C0145B8 */  jal         osCreateMesgQueue
/* 03F84C 8003FC9C 24060008 */   addiu      $a2, $zero, 0x8
/* 03F850 8003FCA0 260400AC */  addiu       $a0, $s0, 0xac
/* 03F854 8003FCA4 AFA40030 */  sw          $a0, 0x30($sp)
/* 03F858 8003FCA8 260500C4 */  addiu       $a1, $s0, 0xc4
/* 03F85C 8003FCAC 0C0145B8 */  jal         osCreateMesgQueue
/* 03F860 8003FCB0 24060008 */   addiu      $a2, $zero, 0x8
/* 03F864 8003FCB4 260400E4 */  addiu       $a0, $s0, 0xe4
/* 03F868 8003FCB8 AFA4002C */  sw          $a0, 0x2c($sp)
/* 03F86C 8003FCBC 260500FC */  addiu       $a1, $s0, 0xfc
/* 03F870 8003FCC0 0C0145B8 */  jal         osCreateMesgQueue
/* 03F874 8003FCC4 24060008 */   addiu      $a2, $zero, 0x8
/* 03F878 8003FCC8 2604003C */  addiu       $a0, $s0, 0x3c
/* 03F87C 8003FCCC 26050054 */  addiu       $a1, $s0, 0x54
/* 03F880 8003FCD0 0C0145B8 */  jal         osCreateMesgQueue
/* 03F884 8003FCD4 24060008 */   addiu      $a2, $zero, 0x8
/* 03F888 8003FCD8 26040004 */  addiu       $a0, $s0, 0x4
/* 03F88C 8003FCDC 2605001C */  addiu       $a1, $s0, 0x1c
/* 03F890 8003FCE0 0C0145B8 */  jal         osCreateMesgQueue
/* 03F894 8003FCE4 24060008 */   addiu      $a2, $zero, 0x8
/* 03F898 8003FCE8 2604011C */  addiu       $a0, $s0, 0x11c
/* 03F89C 8003FCEC 26050134 */  addiu       $a1, $s0, 0x134
/* 03F8A0 8003FCF0 0C0145B8 */  jal         osCreateMesgQueue
/* 03F8A4 8003FCF4 24060008 */   addiu      $a2, $zero, 0x8
/* 03F8A8 8003FCF8 0C015100 */  jal         func_80054400
/* 03F8AC 8003FCFC 240400FE */   addiu      $a0, $zero, 0xfe
/* 03F8B0 8003FD00 93A90047 */  lbu         $t1, 0x47($sp)
/* 03F8B4 8003FD04 3C0B800A */  lui         $t3, %hi(D_8009DCB0)
/* 03F8B8 8003FD08 256BDCB0 */  addiu       $t3, $t3, %lo(D_8009DCB0)
/* 03F8BC 8003FD0C 00095080 */  sll         $t2, $t1, 2
/* 03F8C0 8003FD10 01495021 */  addu        $t2, $t2, $t1
/* 03F8C4 8003FD14 000A5100 */  sll         $t2, $t2, 4
/* 03F8C8 8003FD18 0C014D58 */  jal         osViSetMode
/* 03F8CC 8003FD1C 014B2021 */   addu       $a0, $t2, $t3
/* 03F8D0 8003FD20 0C014D70 */  jal         osViBlack
/* 03F8D4 8003FD24 24040001 */   addiu      $a0, $zero, 0x1
/* 03F8D8 8003FD28 8FA40034 */  lw          $a0, 0x34($sp)
/* 03F8DC 8003FD2C 2405029A */  addiu       $a1, $zero, 0x29a
/* 03F8E0 8003FD30 0C0151C4 */  jal         func_80054710
/* 03F8E4 8003FD34 93A6004B */   lbu        $a2, 0x4b($sp)
/* 03F8E8 8003FD38 24040004 */  addiu       $a0, $zero, 0x4
/* 03F8EC 8003FD3C 8FA50030 */  lw          $a1, 0x30($sp)
/* 03F8F0 8003FD40 0C0145C4 */  jal         func_80051710
/* 03F8F4 8003FD44 2406029B */   addiu      $a2, $zero, 0x29b
/* 03F8F8 8003FD48 24040009 */  addiu       $a0, $zero, 0x9
/* 03F8FC 8003FD4C 8FA5002C */  lw          $a1, 0x2c($sp)
/* 03F900 8003FD50 0C0145C4 */  jal         func_80051710
/* 03F904 8003FD54 2406029C */   addiu      $a2, $zero, 0x29c
/* 03F908 8003FD58 2404000E */  addiu       $a0, $zero, 0xe
/* 03F90C 8003FD5C 8FA50034 */  lw          $a1, 0x34($sp)
/* 03F910 8003FD60 0C0145C4 */  jal         func_80051710
/* 03F914 8003FD64 2406029D */   addiu      $a2, $zero, 0x29d
/* 03F918 8003FD68 8FAD0040 */  lw          $t5, 0x40($sp)
/* 03F91C 8003FD6C 8FA5003C */  lw          $a1, 0x3c($sp)
/* 03F920 8003FD70 3C0C800F */  lui         $t4, %hi(D_800F4AC0)
/* 03F924 8003FD74 258C4AC0 */  addiu       $t4, $t4, %lo(D_800F4AC0)
/* 03F928 8003FD78 26040158 */  addiu       $a0, $s0, 0x158
/* 03F92C 8003FD7C 3C068004 */  lui         $a2, %hi(func_8003FE44)
/* 03F930 8003FD80 25AE000A */  addiu       $t6, $t5, 0xa
/* 03F934 8003FD84 AFAE0014 */  sw          $t6, 0x14($sp)
/* 03F938 8003FD88 24C6FE44 */  addiu       $a2, $a2, %lo(func_8003FE44)
/* 03F93C 8003FD8C AFA40034 */  sw          $a0, 0x34($sp)
/* 03F940 8003FD90 AFAC0010 */  sw          $t4, 0x10($sp)
/* 03F944 8003FD94 02003825 */  move        $a3, $s0
/* 03F948 8003FD98 0C0142A8 */  jal         osCreateThread
/* 03F94C 8003FD9C 24A50002 */   addiu      $a1, $a1, 0x2
/* 03F950 8003FDA0 0C0142FC */  jal         osStartThread
/* 03F954 8003FDA4 8FA40034 */   lw         $a0, 0x34($sp)
/* 03F958 8003FDA8 8FB80040 */  lw          $t8, 0x40($sp)
/* 03F95C 8003FDAC 8FA5003C */  lw          $a1, 0x3c($sp)
/* 03F960 8003FDB0 3C0F800F */  lui         $t7, %hi(D_800F6AC0)
/* 03F964 8003FDB4 25EF6AC0 */  addiu       $t7, $t7, %lo(D_800F6AC0)
/* 03F968 8003FDB8 26040308 */  addiu       $a0, $s0, 0x308
/* 03F96C 8003FDBC 3C068004 */  lui         $a2, %hi(func_80040064)
/* 03F970 8003FDC0 27190005 */  addiu       $t9, $t8, 0x5
/* 03F974 8003FDC4 AFB90014 */  sw          $t9, 0x14($sp)
/* 03F978 8003FDC8 24C60064 */  addiu       $a2, $a2, %lo(func_80040064)
/* 03F97C 8003FDCC AFA40034 */  sw          $a0, 0x34($sp)
/* 03F980 8003FDD0 AFAF0010 */  sw          $t7, 0x10($sp)
/* 03F984 8003FDD4 02003825 */  move        $a3, $s0
/* 03F988 8003FDD8 0C0142A8 */  jal         osCreateThread
/* 03F98C 8003FDDC 24A50001 */   addiu      $a1, $a1, 0x1
/* 03F990 8003FDE0 0C0142FC */  jal         osStartThread
/* 03F994 8003FDE4 8FA40034 */   lw         $a0, 0x34($sp)
/* 03F998 8003FDE8 8FA90040 */  lw          $t1, 0x40($sp)
/* 03F99C 8003FDEC 3C088010 */  lui         $t0, %hi(D_800F8AC0)
/* 03F9A0 8003FDF0 25088AC0 */  addiu       $t0, $t0, %lo(D_800F8AC0)
/* 03F9A4 8003FDF4 260404B8 */  addiu       $a0, $s0, 0x4b8
/* 03F9A8 8003FDF8 3C068004 */  lui         $a2, %hi(func_80040200)
/* 03F9AC 8003FDFC 24C60200 */  addiu       $a2, $a2, %lo(func_80040200)
/* 03F9B0 8003FE00 AFA40034 */  sw          $a0, 0x34($sp)
/* 03F9B4 8003FE04 AFA80010 */  sw          $t0, 0x10($sp)
/* 03F9B8 8003FE08 8FA5003C */  lw          $a1, 0x3c($sp)
/* 03F9BC 8003FE0C 02003825 */  move        $a3, $s0
/* 03F9C0 8003FE10 0C0142A8 */  jal         osCreateThread
/* 03F9C4 8003FE14 AFA90014 */   sw         $t1, 0x14($sp)
/* 03F9C8 8003FE18 0C0142FC */  jal         osStartThread
/* 03F9CC 8003FE1C 8FA40034 */   lw         $a0, 0x34($sp)
/* 03F9D0 8003FE20 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03F9D4 8003FE24 8FB00020 */  lw          $s0, 0x20($sp)
/* 03F9D8 8003FE28 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03F9DC 8003FE2C 03E00008 */  jr          $ra
/* 03F9E0 8003FE30 00000000 */   nop

glabel func_8003FE34 # 1
/* 03F9E4 8003FE34 03E00008 */  jr          $ra
/* 03F9E8 8003FE38 24820004 */   addiu      $v0, $a0, 0x4

glabel func_8003FE3C # 2
/* 03F9EC 8003FE3C 03E00008 */  jr          $ra
/* 03F9F0 8003FE40 2482003C */   addiu      $v0, $a0, 0x3c

glabel func_8003FE44 # 3
/* 03F9F4 8003FE44 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03F9F8 8003FE48 AFB50028 */  sw          $s5, 0x28($sp)
/* 03F9FC 8003FE4C AFB10018 */  sw          $s1, 0x18($sp)
/* 03FA00 8003FE50 AFB70030 */  sw          $s7, 0x30($sp)
/* 03FA04 8003FE54 AFB6002C */  sw          $s6, 0x2c($sp)
/* 03FA08 8003FE58 AFB40024 */  sw          $s4, 0x24($sp)
/* 03FA0C 8003FE5C AFB30020 */  sw          $s3, 0x20($sp)
/* 03FA10 8003FE60 AFB2001C */  sw          $s2, 0x1c($sp)
/* 03FA14 8003FE64 AFB00014 */  sw          $s0, 0x14($sp)
/* 03FA18 8003FE68 3C11800A */  lui         $s1, %hi(D_8009D520)
/* 03FA1C 8003FE6C 3C15800A */  lui         $s5, %hi(D_8009D524)
/* 03FA20 8003FE70 00808025 */  move        $s0, $a0
/* 03FA24 8003FE74 AFBF0034 */  sw          $ra, 0x34($sp)
/* 03FA28 8003FE78 AFA00044 */  sw          $zero, 0x44($sp)
/* 03FA2C 8003FE7C 26B5D524 */  addiu       $s5, $s5, %lo(D_8009D524)
/* 03FA30 8003FE80 2631D520 */  addiu       $s1, $s1, %lo(D_8009D520)
/* 03FA34 8003FE84 27B20044 */  addiu       $s2, $sp, 0x44
/* 03FA38 8003FE88 2413029A */  addiu       $s3, $zero, 0x29a
/* 03FA3C 8003FE8C 2414029D */  addiu       $s4, $zero, 0x29d
/* 03FA40 8003FE90 24160001 */  addiu       $s6, $zero, 0x1
/* 03FA44 8003FE94 24970074 */  addiu       $s7, $a0, 0x74
/* 03FA48 8003FE98 02E02025 */  move        $a0, $s7
.L8003FE9C:
/* 03FA4C 8003FE9C 02402825 */  move        $a1, $s2
/* 03FA50 8003FEA0 0C014554 */  jal         osRecvMesg
/* 03FA54 8003FEA4 02C03025 */   move       $a2, $s6
/* 03FA58 8003FEA8 8E2E0000 */  lw          $t6, 0x0($s1)
/* 03FA5C 8003FEAC 8FB80044 */  lw          $t8, 0x44($sp)
/* 03FA60 8003FEB0 02002025 */  move        $a0, $s0
/* 03FA64 8003FEB4 25CF0001 */  addiu       $t7, $t6, 0x1
/* 03FA68 8003FEB8 13130005 */  beq         $t8, $s3, .L8003FED0
/* 03FA6C 8003FEBC AE2F0000 */   sw         $t7, 0x0($s1)
/* 03FA70 8003FEC0 13140007 */  beq         $t8, $s4, .L8003FEE0
/* 03FA74 8003FEC4 02002025 */   move       $a0, $s0
/* 03FA78 8003FEC8 1000FFF4 */  b           .L8003FE9C
/* 03FA7C 8003FECC 02E02025 */   move       $a0, $s7
.L8003FED0:
/* 03FA80 8003FED0 0C010005 */  jal         func_80040014
/* 03FA84 8003FED4 02002825 */   move       $a1, $s0
/* 03FA88 8003FED8 1000FFF0 */  b           .L8003FE9C
/* 03FA8C 8003FEDC 02E02025 */   move       $a0, $s7
.L8003FEE0:
/* 03FA90 8003FEE0 AEB60000 */  sw          $s6, 0x0($s5)
/* 03FA94 8003FEE4 0C010005 */  jal         func_80040014
/* 03FA98 8003FEE8 26050002 */   addiu      $a1, $s0, 0x2
/* 03FA9C 8003FEEC 1000FFEB */  b           .L8003FE9C
/* 03FAA0 8003FEF0 02E02025 */   move       $a0, $s7
/* 03FAA4 8003FEF4 00000000 */  nop
/* 03FAA8 8003FEF8 00000000 */  nop
/* 03FAAC 8003FEFC 00000000 */  nop
/* 03FAB0 8003FF00 00000000 */  nop
/* 03FAB4 8003FF04 00000000 */  nop
/* 03FAB8 8003FF08 00000000 */  nop
/* 03FABC 8003FF0C 00000000 */  nop
/* 03FAC0 8003FF10 8FBF0034 */  lw          $ra, 0x34($sp)
/* 03FAC4 8003FF14 8FB00014 */  lw          $s0, 0x14($sp)
/* 03FAC8 8003FF18 8FB10018 */  lw          $s1, 0x18($sp)
/* 03FACC 8003FF1C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03FAD0 8003FF20 8FB30020 */  lw          $s3, 0x20($sp)
/* 03FAD4 8003FF24 8FB40024 */  lw          $s4, 0x24($sp)
/* 03FAD8 8003FF28 8FB50028 */  lw          $s5, 0x28($sp)
/* 03FADC 8003FF2C 8FB6002C */  lw          $s6, 0x2c($sp)
/* 03FAE0 8003FF30 8FB70030 */  lw          $s7, 0x30($sp)
/* 03FAE4 8003FF34 03E00008 */  jr          $ra
/* 03FAE8 8003FF38 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8003FF3C # 4
/* 03FAEC 8003FF3C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03FAF0 8003FF40 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03FAF4 8003FF44 AFA40018 */  sw          $a0, 0x18($sp)
/* 03FAF8 8003FF48 AFA60020 */  sw          $a2, 0x20($sp)
/* 03FAFC 8003FF4C 24040001 */  addiu       $a0, $zero, 0x1
/* 03FB00 8003FF50 0C014E80 */  jal         osSetIntMask
/* 03FB04 8003FF54 AFA5001C */   sw         $a1, 0x1c($sp)
/* 03FB08 8003FF58 8FA5001C */  lw          $a1, 0x1c($sp)
/* 03FB0C 8003FF5C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 03FB10 8003FF60 8FA30018 */  lw          $v1, 0x18($sp)
/* 03FB14 8003FF64 00402025 */  move        $a0, $v0
/* 03FB18 8003FF68 ACAE0004 */  sw          $t6, 0x4($a1)
/* 03FB1C 8003FF6C 8C6F0668 */  lw          $t7, 0x668($v1)
/* 03FB20 8003FF70 ACAF0000 */  sw          $t7, 0x0($a1)
/* 03FB24 8003FF74 0C014E80 */  jal         osSetIntMask
/* 03FB28 8003FF78 AC650668 */   sw         $a1, 0x668($v1)
/* 03FB2C 8003FF7C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03FB30 8003FF80 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03FB34 8003FF84 03E00008 */  jr          $ra
/* 03FB38 8003FF88 00000000 */   nop

glabel func_8003FF8C # 5
/* 03FB3C 8003FF8C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03FB40 8003FF90 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03FB44 8003FF94 AFA40020 */  sw          $a0, 0x20($sp)
/* 03FB48 8003FF98 8C830668 */  lw          $v1, 0x668($a0)
/* 03FB4C 8003FF9C AFA00018 */  sw          $zero, 0x18($sp)
/* 03FB50 8003FFA0 AFA50024 */  sw          $a1, 0x24($sp)
/* 03FB54 8003FFA4 24040001 */  addiu       $a0, $zero, 0x1
/* 03FB58 8003FFA8 0C014E80 */  jal         osSetIntMask
/* 03FB5C 8003FFAC AFA3001C */   sw         $v1, 0x1c($sp)
/* 03FB60 8003FFB0 8FA3001C */  lw          $v1, 0x1c($sp)
/* 03FB64 8003FFB4 8FA50024 */  lw          $a1, 0x24($sp)
/* 03FB68 8003FFB8 8FA60018 */  lw          $a2, 0x18($sp)
/* 03FB6C 8003FFBC 1060000F */  beq         $v1, $zero, .L8003FFFC
/* 03FB70 8003FFC0 00402025 */   move       $a0, $v0
.L8003FFC4:
/* 03FB74 8003FFC4 5465000A */  bnel        $v1, $a1, .L8003FFF0
/* 03FB78 8003FFC8 00603025 */   move       $a2, $v1
/* 03FB7C 8003FFCC 10C00004 */  beq         $a2, $zero, .L8003FFE0
/* 03FB80 8003FFD0 8FB90020 */   lw         $t9, 0x20($sp)
/* 03FB84 8003FFD4 8CAF0000 */  lw          $t7, 0x0($a1)
/* 03FB88 8003FFD8 10000008 */  b           .L8003FFFC
/* 03FB8C 8003FFDC ACCF0000 */   sw         $t7, 0x0($a2)
.L8003FFE0:
/* 03FB90 8003FFE0 8CB80000 */  lw          $t8, 0x0($a1)
/* 03FB94 8003FFE4 10000005 */  b           .L8003FFFC
/* 03FB98 8003FFE8 AF380668 */   sw         $t8, 0x668($t9)
/* 03FB9C 8003FFEC 00603025 */  move        $a2, $v1
.L8003FFF0:
/* 03FBA0 8003FFF0 8C630000 */  lw          $v1, 0x0($v1)
/* 03FBA4 8003FFF4 1460FFF3 */  bne         $v1, $zero, .L8003FFC4
/* 03FBA8 8003FFF8 00000000 */   nop
.L8003FFFC:
/* 03FBAC 8003FFFC 0C014E80 */  jal         osSetIntMask
/* 03FBB0 80040000 00000000 */   nop
/* 03FBB4 80040004 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03FBB8 80040008 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03FBBC 8004000C 03E00008 */  jr          $ra
/* 03FBC0 80040010 00000000 */   nop

glabel func_80040014 # 6
/* 03FBC4 80040014 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03FBC8 80040018 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03FBCC 8004001C AFB10018 */  sw          $s1, 0x18($sp)
/* 03FBD0 80040020 AFB00014 */  sw          $s0, 0x14($sp)
/* 03FBD4 80040024 8C900668 */  lw          $s0, 0x668($a0)
/* 03FBD8 80040028 00A08825 */  move        $s1, $a1
/* 03FBDC 8004002C 52000009 */  beql        $s0, $zero, .L80040054
/* 03FBE0 80040030 8FBF001C */   lw         $ra, 0x1c($sp)
/* 03FBE4 80040034 8E040004 */  lw          $a0, 0x4($s0)
.L80040038:
/* 03FBE8 80040038 02202825 */  move        $a1, $s1
/* 03FBEC 8004003C 0C014C64 */  jal         func_80053190
/* 03FBF0 80040040 00003025 */   move       $a2, $zero
/* 03FBF4 80040044 8E100000 */  lw          $s0, 0x0($s0)
/* 03FBF8 80040048 5600FFFB */  bnel        $s0, $zero, .L80040038
/* 03FBFC 8004004C 8E040004 */   lw         $a0, 0x4($s0)
/* 03FC00 80040050 8FBF001C */  lw          $ra, 0x1c($sp)
.L80040054:
/* 03FC04 80040054 8FB00014 */  lw          $s0, 0x14($sp)
/* 03FC08 80040058 8FB10018 */  lw          $s1, 0x18($sp)
/* 03FC0C 8004005C 03E00008 */  jr          $ra
/* 03FC10 80040060 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80040064 # 7
/* 03FC14 80040064 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 03FC18 80040068 AFBE0038 */  sw          $fp, 0x38($sp)
/* 03FC1C 8004006C AFB70034 */  sw          $s7, 0x34($sp)
/* 03FC20 80040070 AFB60030 */  sw          $s6, 0x30($sp)
/* 03FC24 80040074 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03FC28 80040078 AFB40028 */  sw          $s4, 0x28($sp)
/* 03FC2C 8004007C AFB20020 */  sw          $s2, 0x20($sp)
/* 03FC30 80040080 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03FC34 80040084 00809025 */  move        $s2, $a0
/* 03FC38 80040088 AFBF003C */  sw          $ra, 0x3c($sp)
/* 03FC3C 8004008C AFB30024 */  sw          $s3, 0x24($sp)
/* 03FC40 80040090 AFB00018 */  sw          $s0, 0x18($sp)
/* 03FC44 80040094 AFA0005C */  sw          $zero, 0x5c($sp)
/* 03FC48 80040098 AFA00058 */  sw          $zero, 0x58($sp)
/* 03FC4C 8004009C 00008825 */  move        $s1, $zero
/* 03FC50 800400A0 27B4005C */  addiu       $s4, $sp, 0x5c
/* 03FC54 800400A4 24950004 */  addiu       $s5, $a0, 0x4
/* 03FC58 800400A8 27B60058 */  addiu       $s6, $sp, 0x58
/* 03FC5C 800400AC 24170001 */  addiu       $s7, $zero, 0x1
/* 03FC60 800400B0 241E0002 */  addiu       $fp, $zero, 0x2
/* 03FC64 800400B4 02A02025 */  move        $a0, $s5
.L800400B8:
/* 03FC68 800400B8 02C02825 */  move        $a1, $s6
/* 03FC6C 800400BC 0C014554 */  jal         osRecvMesg
/* 03FC70 800400C0 24060001 */   addiu      $a2, $zero, 0x1
/* 03FC74 800400C4 8FAE0058 */  lw          $t6, 0x58($sp)
/* 03FC78 800400C8 8DC40040 */  lw          $a0, 0x40($t6)
/* 03FC7C 800400CC 0C0151DC */  jal         osWriteBackDCache
/* 03FC80 800400D0 8DC50044 */   lw         $a1, 0x44($t6)
/* 03FC84 800400D4 8E53066C */  lw          $s3, 0x66c($s2)
/* 03FC88 800400D8 5260000E */  beql        $s3, $zero, .L80040114
/* 03FC8C 800400DC 8FAF0058 */   lw         $t7, 0x58($sp)
/* 03FC90 800400E0 0C0151FC */  jal         func_800547F0
/* 03FC94 800400E4 265000AC */   addiu      $s0, $s2, 0xac
/* 03FC98 800400E8 02002025 */  move        $a0, $s0
/* 03FC9C 800400EC 02802825 */  move        $a1, $s4
/* 03FCA0 800400F0 0C014554 */  jal         osRecvMesg
/* 03FCA4 800400F4 24060001 */   addiu      $a2, $zero, 0x1
/* 03FCA8 800400F8 0C015204 */  jal         func_80054810
/* 03FCAC 800400FC 26640010 */   addiu      $a0, $s3, 0x10
/* 03FCB0 80040100 10400003 */  beq         $v0, $zero, .L80040110
/* 03FCB4 80040104 03C08825 */   move       $s1, $fp
/* 03FCB8 80040108 10000001 */  b           .L80040110
/* 03FCBC 8004010C 02E08825 */   move       $s1, $s7
.L80040110:
/* 03FCC0 80040110 8FAF0058 */  lw          $t7, 0x58($sp)
.L80040114:
/* 03FCC4 80040114 265000AC */  addiu       $s0, $s2, 0xac
/* 03FCC8 80040118 AE4F0670 */  sw          $t7, 0x670($s2)
/* 03FCCC 8004011C 8FA40058 */  lw          $a0, 0x58($sp)
/* 03FCD0 80040120 0C01525F */  jal         func_8005497C
/* 03FCD4 80040124 24840010 */   addiu      $a0, $a0, 0x10
/* 03FCD8 80040128 8FA40058 */  lw          $a0, 0x58($sp)
/* 03FCDC 8004012C 0C0152B9 */  jal         func_80054AE4
/* 03FCE0 80040130 24840010 */   addiu      $a0, $a0, 0x10
/* 03FCE4 80040134 02002025 */  move        $a0, $s0
/* 03FCE8 80040138 02802825 */  move        $a1, $s4
/* 03FCEC 8004013C 0C014554 */  jal         osRecvMesg
/* 03FCF0 80040140 24060001 */   addiu      $a2, $zero, 0x1
/* 03FCF4 80040144 8E580674 */  lw          $t8, 0x674($s2)
/* 03FCF8 80040148 AE400670 */  sw          $zero, 0x670($s2)
/* 03FCFC 8004014C 2644011C */  addiu       $a0, $s2, 0x11c
/* 03FD00 80040150 13000003 */  beq         $t8, $zero, .L80040160
/* 03FD04 80040154 02802825 */   move       $a1, $s4
/* 03FD08 80040158 0C014C64 */  jal         func_80053190
/* 03FD0C 8004015C 24060001 */   addiu      $a2, $zero, 0x1
.L80040160:
/* 03FD10 80040160 16370008 */  bne         $s1, $s7, .L80040184
/* 03FD14 80040164 00000000 */   nop
/* 03FD18 80040168 26700010 */  addiu       $s0, $s3, 0x10
/* 03FD1C 8004016C 0C01525F */  jal         func_8005497C
/* 03FD20 80040170 02002025 */   move       $a0, $s0
/* 03FD24 80040174 0C0152B9 */  jal         func_80054AE4
/* 03FD28 80040178 02002025 */   move       $a0, $s0
/* 03FD2C 8004017C 10000007 */  b           .L8004019C
/* 03FD30 80040180 8FB90058 */   lw         $t9, 0x58($sp)
.L80040184:
/* 03FD34 80040184 163E0004 */  bne         $s1, $fp, .L80040198
/* 03FD38 80040188 02002025 */   move       $a0, $s0
/* 03FD3C 8004018C 02802825 */  move        $a1, $s4
/* 03FD40 80040190 0C014C64 */  jal         func_80053190
/* 03FD44 80040194 24060001 */   addiu      $a2, $zero, 0x1
.L80040198:
/* 03FD48 80040198 8FB90058 */  lw          $t9, 0x58($sp)
.L8004019C:
/* 03FD4C 8004019C 24060001 */  addiu       $a2, $zero, 0x1
/* 03FD50 800401A0 00008825 */  move        $s1, $zero
/* 03FD54 800401A4 8F240050 */  lw          $a0, 0x50($t9)
/* 03FD58 800401A8 0C014C64 */  jal         func_80053190
/* 03FD5C 800401AC 8F250054 */   lw         $a1, 0x54($t9)
/* 03FD60 800401B0 1000FFC1 */  b           .L800400B8
/* 03FD64 800401B4 02A02025 */   move       $a0, $s5
/* 03FD68 800401B8 00000000 */  nop
/* 03FD6C 800401BC 00000000 */  nop
/* 03FD70 800401C0 00000000 */  nop
/* 03FD74 800401C4 00000000 */  nop
/* 03FD78 800401C8 00000000 */  nop
/* 03FD7C 800401CC 00000000 */  nop
/* 03FD80 800401D0 8FBF003C */  lw          $ra, 0x3c($sp)
/* 03FD84 800401D4 8FB00018 */  lw          $s0, 0x18($sp)
/* 03FD88 800401D8 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03FD8C 800401DC 8FB20020 */  lw          $s2, 0x20($sp)
/* 03FD90 800401E0 8FB30024 */  lw          $s3, 0x24($sp)
/* 03FD94 800401E4 8FB40028 */  lw          $s4, 0x28($sp)
/* 03FD98 800401E8 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03FD9C 800401EC 8FB60030 */  lw          $s6, 0x30($sp)
/* 03FDA0 800401F0 8FB70034 */  lw          $s7, 0x34($sp)
/* 03FDA4 800401F4 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03FDA8 800401F8 03E00008 */  jr          $ra
/* 03FDAC 800401FC 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_80040200 # 8
/* 03FDB0 80040200 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03FDB4 80040204 AFB50028 */  sw          $s5, 0x28($sp)
/* 03FDB8 80040208 AFB40024 */  sw          $s4, 0x24($sp)
/* 03FDBC 8004020C AFB30020 */  sw          $s3, 0x20($sp)
/* 03FDC0 80040210 AFB00014 */  sw          $s0, 0x14($sp)
/* 03FDC4 80040214 00808025 */  move        $s0, $a0
/* 03FDC8 80040218 AFBF002C */  sw          $ra, 0x2c($sp)
/* 03FDCC 8004021C AFB2001C */  sw          $s2, 0x1c($sp)
/* 03FDD0 80040220 AFB10018 */  sw          $s1, 0x18($sp)
/* 03FDD4 80040224 AFA00044 */  sw          $zero, 0x44($sp)
/* 03FDD8 80040228 AFA00040 */  sw          $zero, 0x40($sp)
/* 03FDDC 8004022C 27B30044 */  addiu       $s3, $sp, 0x44
/* 03FDE0 80040230 27B40040 */  addiu       $s4, $sp, 0x40
/* 03FDE4 80040234 2495003C */  addiu       $s5, $a0, 0x3c
/* 03FDE8 80040238 02A02025 */  move        $a0, $s5
.L8004023C:
/* 03FDEC 8004023C 02802825 */  move        $a1, $s4
/* 03FDF0 80040240 0C014554 */  jal         osRecvMesg
/* 03FDF4 80040244 24060001 */   addiu      $a2, $zero, 0x1
/* 03FDF8 80040248 02002025 */  move        $a0, $s0
/* 03FDFC 8004024C 0C0100DD */  jal         func_80040374
/* 03FE00 80040250 8FA50040 */   lw         $a1, 0x40($sp)
/* 03FE04 80040254 8E0E0670 */  lw          $t6, 0x670($s0)
/* 03FE08 80040258 8FAF0040 */  lw          $t7, 0x40($sp)
/* 03FE0C 8004025C 2604011C */  addiu       $a0, $s0, 0x11c
/* 03FE10 80040260 11C00005 */  beq         $t6, $zero, .L80040278
/* 03FE14 80040264 02602825 */   move       $a1, $s3
/* 03FE18 80040268 AE0F0674 */  sw          $t7, 0x674($s0)
/* 03FE1C 8004026C 0C014554 */  jal         osRecvMesg
/* 03FE20 80040270 24060001 */   addiu      $a2, $zero, 0x1
/* 03FE24 80040274 AE000674 */  sw          $zero, 0x674($s0)
.L80040278:
/* 03FE28 80040278 8FB80040 */  lw          $t8, 0x40($sp)
/* 03FE2C 8004027C 261100AC */  addiu       $s1, $s0, 0xac
/* 03FE30 80040280 261200E4 */  addiu       $s2, $s0, 0xe4
/* 03FE34 80040284 AE18066C */  sw          $t8, 0x66c($s0)
/* 03FE38 80040288 8FA40040 */  lw          $a0, 0x40($sp)
/* 03FE3C 8004028C 0C01525F */  jal         func_8005497C
/* 03FE40 80040290 24840010 */   addiu      $a0, $a0, 0x10
/* 03FE44 80040294 8FA40040 */  lw          $a0, 0x40($sp)
/* 03FE48 80040298 0C0152B9 */  jal         func_80054AE4
/* 03FE4C 8004029C 24840010 */   addiu      $a0, $a0, 0x10
/* 03FE50 800402A0 02202025 */  move        $a0, $s1
/* 03FE54 800402A4 02602825 */  move        $a1, $s3
/* 03FE58 800402A8 0C014554 */  jal         osRecvMesg
/* 03FE5C 800402AC 24060001 */   addiu      $a2, $zero, 0x1
/* 03FE60 800402B0 AE00066C */  sw          $zero, 0x66c($s0)
/* 03FE64 800402B4 02402025 */  move        $a0, $s2
/* 03FE68 800402B8 02602825 */  move        $a1, $s3
/* 03FE6C 800402BC 0C014554 */  jal         osRecvMesg
/* 03FE70 800402C0 24060001 */   addiu      $a2, $zero, 0x1
/* 03FE74 800402C4 8FB90040 */  lw          $t9, 0x40($sp)
/* 03FE78 800402C8 8F280008 */  lw          $t0, 0x8($t9)
/* 03FE7C 800402CC 31090040 */  andi        $t1, $t0, 0x40
/* 03FE80 800402D0 51200012 */  beql        $t1, $zero, .L8004031C
/* 03FE84 800402D4 8FAF0040 */   lw         $t7, 0x40($sp)
/* 03FE88 800402D8 8E0A067C */  lw          $t2, 0x67c($s0)
/* 03FE8C 800402DC 254B0001 */  addiu       $t3, $t2, 0x1
/* 03FE90 800402E0 AE0B067C */  sw          $t3, 0x67c($s0)
/* 03FE94 800402E4 8FAC0040 */  lw          $t4, 0x40($sp)
/* 03FE98 800402E8 0C014E00 */  jal         func_80053800
/* 03FE9C 800402EC 8D84000C */   lw         $a0, 0xc($t4)
/* 03FEA0 800402F0 8E0D0678 */  lw          $t5, 0x678($s0)
/* 03FEA4 800402F4 51A00009 */  beql        $t5, $zero, .L8004031C
/* 03FEA8 800402F8 8FAF0040 */   lw         $t7, 0x40($sp)
/* 03FEAC 800402FC 8E0E067C */  lw          $t6, 0x67c($s0)
/* 03FEB0 80040300 2DC10015 */  sltiu       $at, $t6, 0x15
/* 03FEB4 80040304 54200005 */  bnel        $at, $zero, .L8004031C
/* 03FEB8 80040308 8FAF0040 */   lw         $t7, 0x40($sp)
/* 03FEBC 8004030C 0C014D70 */  jal         osViBlack
/* 03FEC0 80040310 00002025 */   move       $a0, $zero
/* 03FEC4 80040314 AE000678 */  sw          $zero, 0x678($s0)
/* 03FEC8 80040318 8FAF0040 */  lw          $t7, 0x40($sp)
.L8004031C:
/* 03FECC 8004031C 24060001 */  addiu       $a2, $zero, 0x1
/* 03FED0 80040320 8DE40050 */  lw          $a0, 0x50($t7)
/* 03FED4 80040324 0C014C64 */  jal         func_80053190
/* 03FED8 80040328 8DE50054 */   lw         $a1, 0x54($t7)
/* 03FEDC 8004032C 1000FFC3 */  b           .L8004023C
/* 03FEE0 80040330 02A02025 */   move       $a0, $s5
/* 03FEE4 80040334 00000000 */  nop
/* 03FEE8 80040338 00000000 */  nop
/* 03FEEC 8004033C 00000000 */  nop
/* 03FEF0 80040340 00000000 */  nop
/* 03FEF4 80040344 00000000 */  nop
/* 03FEF8 80040348 00000000 */  nop
/* 03FEFC 8004034C 00000000 */  nop
/* 03FF00 80040350 8FBF002C */  lw          $ra, 0x2c($sp)
/* 03FF04 80040354 8FB00014 */  lw          $s0, 0x14($sp)
/* 03FF08 80040358 8FB10018 */  lw          $s1, 0x18($sp)
/* 03FF0C 8004035C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03FF10 80040360 8FB30020 */  lw          $s3, 0x20($sp)
/* 03FF14 80040364 8FB40024 */  lw          $s4, 0x24($sp)
/* 03FF18 80040368 8FB50028 */  lw          $s5, 0x28($sp)
/* 03FF1C 8004036C 03E00008 */  jr          $ra
/* 03FF20 80040370 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_80040374 # 9
/* 03FF24 80040374 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 03FF28 80040378 AFBF002C */  sw          $ra, 0x2c($sp)
/* 03FF2C 8004037C AFB40028 */  sw          $s4, 0x28($sp)
/* 03FF30 80040380 AFB30024 */  sw          $s3, 0x24($sp)
/* 03FF34 80040384 AFB20020 */  sw          $s2, 0x20($sp)
/* 03FF38 80040388 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03FF3C 8004038C AFB00018 */  sw          $s0, 0x18($sp)
/* 03FF40 80040390 AFA00044 */  sw          $zero, 0x44($sp)
/* 03FF44 80040394 00808825 */  move        $s1, $a0
/* 03FF48 80040398 0C0152CC */  jal         func_80054B30
/* 03FF4C 8004039C 8CB3000C */   lw         $s3, 0xc($a1)
/* 03FF50 800403A0 50530005 */  beql        $v0, $s3, .L800403B8
/* 03FF54 800403A4 27B2003C */   addiu      $s2, $sp, 0x3c
/* 03FF58 800403A8 0C0152DC */  jal         osViGetNextFramebuffer
/* 03FF5C 800403AC 00000000 */   nop
/* 03FF60 800403B0 14530016 */  bne         $v0, $s3, .L8004040C
/* 03FF64 800403B4 27B2003C */   addiu      $s2, $sp, 0x3c
.L800403B8:
/* 03FF68 800403B8 2630011C */  addiu       $s0, $s1, 0x11c
/* 03FF6C 800403BC 27B40044 */  addiu       $s4, $sp, 0x44
/* 03FF70 800403C0 02003025 */  move        $a2, $s0
/* 03FF74 800403C4 02402825 */  move        $a1, $s2
/* 03FF78 800403C8 0C00FFCF */  jal         func_8003FF3C
/* 03FF7C 800403CC 02202025 */   move       $a0, $s1
/* 03FF80 800403D0 02002025 */  move        $a0, $s0
/* 03FF84 800403D4 02802825 */  move        $a1, $s4
/* 03FF88 800403D8 0C014554 */  jal         osRecvMesg
/* 03FF8C 800403DC 24060001 */   addiu      $a2, $zero, 0x1
/* 03FF90 800403E0 02202025 */  move        $a0, $s1
/* 03FF94 800403E4 0C00FFE3 */  jal         func_8003FF8C
/* 03FF98 800403E8 02402825 */   move       $a1, $s2
/* 03FF9C 800403EC 0C0152CC */  jal         func_80054B30
/* 03FFA0 800403F0 00000000 */   nop
/* 03FFA4 800403F4 5053FFF0 */  beql        $v0, $s3, .L800403B8
/* 03FFA8 800403F8 27B2003C */   addiu      $s2, $sp, 0x3c
/* 03FFAC 800403FC 0C0152DC */  jal         osViGetNextFramebuffer
/* 03FFB0 80040400 00000000 */   nop
/* 03FFB4 80040404 5053FFEC */  beql        $v0, $s3, .L800403B8
/* 03FFB8 80040408 27B2003C */   addiu      $s2, $sp, 0x3c
.L8004040C:
/* 03FFBC 8004040C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 03FFC0 80040410 8FB00018 */  lw          $s0, 0x18($sp)
/* 03FFC4 80040414 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03FFC8 80040418 8FB20020 */  lw          $s2, 0x20($sp)
/* 03FFCC 8004041C 8FB30024 */  lw          $s3, 0x24($sp)
/* 03FFD0 80040420 8FB40028 */  lw          $s4, 0x28($sp)
/* 03FFD4 80040424 03E00008 */  jr          $ra
/* 03FFD8 80040428 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004042C # 10
/* 03FFDC 8004042C 3C0E800A */  lui         $t6, %hi(D_8009D524)
/* 03FFE0 80040430 25CED524 */  addiu       $t6, $t6, %lo(D_8009D524)
/* 03FFE4 80040434 03E00008 */  jr          $ra
/* 03FFE8 80040438 8DC20000 */   lw         $v0, 0x0($t6)
/* 03FFEC 8004043C 00000000 */  nop
