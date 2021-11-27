.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8001E760 # 0
/* 01E310 8001E760 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01E314 8001E764 AFA50034 */  sw          $a1, 0x34($sp)
/* 01E318 8001E768 AFA60038 */  sw          $a2, 0x38($sp)
/* 01E31C 8001E76C 8FAE0038 */  lw          $t6, 0x38($sp)
/* 01E320 8001E770 8FAF0034 */  lw          $t7, 0x34($sp)
/* 01E324 8001E774 00803025 */  move        $a2, $a0
/* 01E328 8001E778 AFBF001C */  sw          $ra, 0x1c($sp)
/* 01E32C 8001E77C AFA40030 */  sw          $a0, 0x30($sp)
/* 01E330 8001E780 AFA7003C */  sw          $a3, 0x3c($sp)
/* 01E334 8001E784 01CF1023 */  subu        $v0, $t6, $t7
/* 01E338 8001E788 AFA20010 */  sw          $v0, 0x10($sp)
/* 01E33C 8001E78C AFA20024 */  sw          $v0, 0x24($sp)
/* 01E340 8001E790 24070001 */  addiu       $a3, $zero, 0x1
/* 01E344 8001E794 00002025 */  move        $a0, $zero
/* 01E348 8001E798 0C0145B0 */  jal         func_800516C0
/* 01E34C 8001E79C 00002825 */   move       $a1, $zero
/* 01E350 8001E7A0 AFA20028 */  sw          $v0, 0x28($sp)
/* 01E354 8001E7A4 8FA40034 */  lw          $a0, 0x34($sp)
/* 01E358 8001E7A8 00402825 */  move        $a1, $v0
/* 01E35C 8001E7AC 0C00D4A3 */  jal         func_8003528C
/* 01E360 8001E7B0 8FA60024 */   lw         $a2, 0x24($sp)
/* 01E364 8001E7B4 8FA40028 */  lw          $a0, 0x28($sp)
/* 01E368 8001E7B8 0C007A05 */  jal         func_8001E814
/* 01E36C 8001E7BC 8FA5003C */   lw         $a1, 0x3c($sp)
/* 01E370 8001E7C0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 01E374 8001E7C4 8FA20028 */  lw          $v0, 0x28($sp)
/* 01E378 8001E7C8 27BD0030 */  addiu       $sp, $sp, 0x30
/* 01E37C 8001E7CC 03E00008 */  jr          $ra
/* 01E380 8001E7D0 00000000 */   nop

glabel func_8001E7D4 # 1
/* 01E384 8001E7D4 848E0002 */  lh          $t6, 0x2($a0)
/* 01E388 8001E7D8 00001025 */  move        $v0, $zero
/* 01E38C 8001E7DC 00801825 */  move        $v1, $a0
/* 01E390 8001E7E0 19C0000A */  blez        $t6, .L8001E80C
/* 01E394 8001E7E4 00000000 */   nop
/* 01E398 8001E7E8 8C6F0004 */  lw          $t7, 0x4($v1)
.L8001E7EC:
/* 01E39C 8001E7EC 24420001 */  addiu       $v0, $v0, 0x1
/* 01E3A0 8001E7F0 24630008 */  addiu       $v1, $v1, 0x8
/* 01E3A4 8001E7F4 01E5C021 */  addu        $t8, $t7, $a1
/* 01E3A8 8001E7F8 AC78FFFC */  sw          $t8, -0x4($v1)
/* 01E3AC 8001E7FC 84990002 */  lh          $t9, 0x2($a0)
/* 01E3B0 8001E800 0059082A */  slt         $at, $v0, $t9
/* 01E3B4 8001E804 5420FFF9 */  bnel        $at, $zero, .L8001E7EC
/* 01E3B8 8001E808 8C6F0004 */   lw         $t7, 0x4($v1)
.L8001E80C:
/* 01E3BC 8001E80C 03E00008 */  jr          $ra
/* 01E3C0 8001E810 00000000 */   nop

glabel func_8001E814 # 2
/* 01E3C4 8001E814 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 01E3C8 8001E818 AFBF0024 */  sw          $ra, 0x24($sp)
/* 01E3CC 8001E81C AFB30020 */  sw          $s3, 0x20($sp)
/* 01E3D0 8001E820 AFB2001C */  sw          $s2, 0x1c($sp)
/* 01E3D4 8001E824 AFB10018 */  sw          $s1, 0x18($sp)
/* 01E3D8 8001E828 AFB00014 */  sw          $s0, 0x14($sp)
/* 01E3DC 8001E82C 848E0002 */  lh          $t6, 0x2($a0)
/* 01E3E0 8001E830 00808825 */  move        $s1, $a0
/* 01E3E4 8001E834 00A09825 */  move        $s3, $a1
/* 01E3E8 8001E838 19C0000E */  blez        $t6, .L8001E874
/* 01E3EC 8001E83C 00009025 */   move       $s2, $zero
/* 01E3F0 8001E840 00808025 */  move        $s0, $a0
/* 01E3F4 8001E844 8E0F0004 */  lw          $t7, 0x4($s0)
.L8001E848:
/* 01E3F8 8001E848 02202825 */  move        $a1, $s1
/* 01E3FC 8001E84C 02603025 */  move        $a2, $s3
/* 01E400 8001E850 01F12021 */  addu        $a0, $t7, $s1
/* 01E404 8001E854 0C007A24 */  jal         func_8001E890
/* 01E408 8001E858 AE040004 */   sw         $a0, 0x4($s0)
/* 01E40C 8001E85C 86390002 */  lh          $t9, 0x2($s1)
/* 01E410 8001E860 26520001 */  addiu       $s2, $s2, 0x1
/* 01E414 8001E864 26100004 */  addiu       $s0, $s0, 0x4
/* 01E418 8001E868 0259082A */  slt         $at, $s2, $t9
/* 01E41C 8001E86C 5420FFF6 */  bnel        $at, $zero, .L8001E848
/* 01E420 8001E870 8E0F0004 */   lw         $t7, 0x4($s0)
.L8001E874:
/* 01E424 8001E874 8FBF0024 */  lw          $ra, 0x24($sp)
/* 01E428 8001E878 8FB00014 */  lw          $s0, 0x14($sp)
/* 01E42C 8001E87C 8FB10018 */  lw          $s1, 0x18($sp)
/* 01E430 8001E880 8FB2001C */  lw          $s2, 0x1c($sp)
/* 01E434 8001E884 8FB30020 */  lw          $s3, 0x20($sp)
/* 01E438 8001E888 03E00008 */  jr          $ra
/* 01E43C 8001E88C 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8001E890 # 3
/* 01E440 8001E890 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01E444 8001E894 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01E448 8001E898 AFB40028 */  sw          $s4, 0x28($sp)
/* 01E44C 8001E89C AFB30024 */  sw          $s3, 0x24($sp)
/* 01E450 8001E8A0 AFB20020 */  sw          $s2, 0x20($sp)
/* 01E454 8001E8A4 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01E458 8001E8A8 AFB00018 */  sw          $s0, 0x18($sp)
/* 01E45C 8001E8AC 8C820008 */  lw          $v0, 0x8($a0)
/* 01E460 8001E8B0 00A09025 */  move        $s2, $a1
/* 01E464 8001E8B4 00809825 */  move        $s3, $a0
/* 01E468 8001E8B8 10400004 */  beqz        $v0, .L8001E8CC
/* 01E46C 8001E8BC 00C0A025 */   move       $s4, $a2
/* 01E470 8001E8C0 00027000 */  sll         $t6, $v0, 0
/* 01E474 8001E8C4 05C2001F */  bltzl       $t6, .L8001E944
/* 01E478 8001E8C8 8FBF002C */   lw         $ra, 0x2c($sp)
.L8001E8CC:
/* 01E47C 8001E8CC 86630000 */  lh          $v1, 0x0($s3)
/* 01E480 8001E8D0 10600005 */  beqz        $v1, .L8001E8E8
/* 01E484 8001E8D4 00000000 */   nop
/* 01E488 8001E8D8 8E6F000C */  lw          $t7, 0xc($s3)
/* 01E48C 8001E8DC 000FC000 */  sll         $t8, $t7, 0
/* 01E490 8001E8E0 07020018 */  bltzl       $t8, .L8001E944
/* 01E494 8001E8E4 8FBF002C */   lw         $ra, 0x2c($sp)
.L8001E8E8:
/* 01E498 8001E8E8 10400006 */  beqz        $v0, .L8001E904
/* 01E49C 8001E8EC 00522021 */   addu       $a0, $v0, $s2
/* 01E4A0 8001E8F0 AE640008 */  sw          $a0, 0x8($s3)
/* 01E4A4 8001E8F4 02402825 */  move        $a1, $s2
/* 01E4A8 8001E8F8 0C007A58 */  jal         func_8001E960
/* 01E4AC 8001E8FC 02803025 */   move       $a2, $s4
/* 01E4B0 8001E900 86630000 */  lh          $v1, 0x0($s3)
.L8001E904:
/* 01E4B4 8001E904 1860000E */  blez        $v1, .L8001E940
/* 01E4B8 8001E908 00008825 */   move       $s1, $zero
/* 01E4BC 8001E90C 02608025 */  move        $s0, $s3
.L8001E910:
/* 01E4C0 8001E910 8E02000C */  lw          $v0, 0xc($s0)
/* 01E4C4 8001E914 02402825 */  move        $a1, $s2
/* 01E4C8 8001E918 02803025 */  move        $a2, $s4
/* 01E4CC 8001E91C 10400004 */  beqz        $v0, .L8001E930
/* 01E4D0 8001E920 00522021 */   addu       $a0, $v0, $s2
/* 01E4D4 8001E924 0C007A58 */  jal         func_8001E960
/* 01E4D8 8001E928 AE04000C */   sw         $a0, 0xc($s0)
/* 01E4DC 8001E92C 86630000 */  lh          $v1, 0x0($s3)
.L8001E930:
/* 01E4E0 8001E930 26310001 */  addiu       $s1, $s1, 0x1
/* 01E4E4 8001E934 0223082A */  slt         $at, $s1, $v1
/* 01E4E8 8001E938 1420FFF5 */  bnez        $at, .L8001E910
/* 01E4EC 8001E93C 26100004 */   addiu      $s0, $s0, 0x4
.L8001E940:
/* 01E4F0 8001E940 8FBF002C */  lw          $ra, 0x2c($sp)
.L8001E944:
/* 01E4F4 8001E944 8FB00018 */  lw          $s0, 0x18($sp)
/* 01E4F8 8001E948 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01E4FC 8001E94C 8FB20020 */  lw          $s2, 0x20($sp)
/* 01E500 8001E950 8FB30024 */  lw          $s3, 0x24($sp)
/* 01E504 8001E954 8FB40028 */  lw          $s4, 0x28($sp)
/* 01E508 8001E958 03E00008 */  jr          $ra
/* 01E50C 8001E95C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001E960 # 4
/* 01E510 8001E960 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 01E514 8001E964 AFBF002C */  sw          $ra, 0x2c($sp)
/* 01E518 8001E968 AFB40028 */  sw          $s4, 0x28($sp)
/* 01E51C 8001E96C AFB30024 */  sw          $s3, 0x24($sp)
/* 01E520 8001E970 AFB20020 */  sw          $s2, 0x20($sp)
/* 01E524 8001E974 AFB1001C */  sw          $s1, 0x1c($sp)
/* 01E528 8001E978 AFB00018 */  sw          $s0, 0x18($sp)
/* 01E52C 8001E97C 8482000E */  lh          $v0, 0xe($a0)
/* 01E530 8001E980 00A09025 */  move        $s2, $a1
/* 01E534 8001E984 00809825 */  move        $s3, $a0
/* 01E538 8001E988 10400005 */  beqz        $v0, .L8001E9A0
/* 01E53C 8001E98C 00C0A025 */   move       $s4, $a2
/* 01E540 8001E990 8C8E0010 */  lw          $t6, 0x10($a0)
/* 01E544 8001E994 000E7800 */  sll         $t7, $t6, 0
/* 01E548 8001E998 05E20011 */  bltzl       $t7, .L8001E9E0
/* 01E54C 8001E99C 8FBF002C */   lw         $ra, 0x2c($sp)
.L8001E9A0:
/* 01E550 8001E9A0 1840000E */  blez        $v0, .L8001E9DC
/* 01E554 8001E9A4 00008825 */   move       $s1, $zero
/* 01E558 8001E9A8 02608025 */  move        $s0, $s3
/* 01E55C 8001E9AC 8E180010 */  lw          $t8, 0x10($s0)
.L8001E9B0:
/* 01E560 8001E9B0 02402825 */  move        $a1, $s2
/* 01E564 8001E9B4 02803025 */  move        $a2, $s4
/* 01E568 8001E9B8 03122021 */  addu        $a0, $t8, $s2
/* 01E56C 8001E9BC 0C007A7F */  jal         func_8001E9FC
/* 01E570 8001E9C0 AE040010 */   sw         $a0, 0x10($s0)
/* 01E574 8001E9C4 8668000E */  lh          $t0, 0xe($s3)
/* 01E578 8001E9C8 26310001 */  addiu       $s1, $s1, 0x1
/* 01E57C 8001E9CC 26100004 */  addiu       $s0, $s0, 0x4
/* 01E580 8001E9D0 0228082A */  slt         $at, $s1, $t0
/* 01E584 8001E9D4 5420FFF6 */  bnel        $at, $zero, .L8001E9B0
/* 01E588 8001E9D8 8E180010 */   lw         $t8, 0x10($s0)
.L8001E9DC:
/* 01E58C 8001E9DC 8FBF002C */  lw          $ra, 0x2c($sp)
.L8001E9E0:
/* 01E590 8001E9E0 8FB00018 */  lw          $s0, 0x18($sp)
/* 01E594 8001E9E4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 01E598 8001E9E8 8FB20020 */  lw          $s2, 0x20($sp)
/* 01E59C 8001E9EC 8FB30024 */  lw          $s3, 0x24($sp)
/* 01E5A0 8001E9F0 8FB40028 */  lw          $s4, 0x28($sp)
/* 01E5A4 8001E9F4 03E00008 */  jr          $ra
/* 01E5A8 8001E9F8 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8001E9FC # 5
/* 01E5AC 8001E9FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 01E5B0 8001EA00 AFBF0014 */  sw          $ra, 0x14($sp)
/* 01E5B4 8001EA04 8C820000 */  lw          $v0, 0x0($a0)
/* 01E5B8 8001EA08 00027000 */  sll         $t6, $v0, 0
/* 01E5BC 8001EA0C 05C0000A */  bltz        $t6, .L8001EA38
/* 01E5C0 8001EA10 00457821 */   addu       $t7, $v0, $a1
/* 01E5C4 8001EA14 8C980004 */  lw          $t8, 0x4($a0)
/* 01E5C8 8001EA18 8C880008 */  lw          $t0, 0x8($a0)
/* 01E5CC 8001EA1C AC8F0000 */  sw          $t7, 0x0($a0)
/* 01E5D0 8001EA20 0305C821 */  addu        $t9, $t8, $a1
/* 01E5D4 8001EA24 01054821 */  addu        $t1, $t0, $a1
/* 01E5D8 8001EA28 AC990004 */  sw          $t9, 0x4($a0)
/* 01E5DC 8001EA2C AC890008 */  sw          $t1, 0x8($a0)
/* 01E5E0 8001EA30 0C007A92 */  jal         func_8001EA48
/* 01E5E4 8001EA34 01202025 */   move       $a0, $t1
.L8001EA38:
/* 01E5E8 8001EA38 8FBF0014 */  lw          $ra, 0x14($sp)
/* 01E5EC 8001EA3C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 01E5F0 8001EA40 03E00008 */  jr          $ra
/* 01E5F4 8001EA44 00000000 */   nop

glabel func_8001EA48 # 6
/* 01E5F8 8001EA48 90820008 */  lbu         $v0, 0x8($a0)
/* 01E5FC 8001EA4C 24010001 */  addiu       $at, $zero, 0x1
/* 01E600 8001EA50 1440000E */  bnez        $v0, .L8001EA8C
/* 01E604 8001EA54 00000000 */   nop
/* 01E608 8001EA58 8C820010 */  lw          $v0, 0x10($a0)
/* 01E60C 8001EA5C 00027000 */  sll         $t6, $v0, 0
/* 01E610 8001EA60 05C00016 */  bltz        $t6, .L8001EABC
/* 01E614 8001EA64 0045C821 */   addu       $t9, $v0, $a1
/* 01E618 8001EA68 8C8F0000 */  lw          $t7, 0x0($a0)
/* 01E61C 8001EA6C 8C83000C */  lw          $v1, 0xc($a0)
/* 01E620 8001EA70 AC990010 */  sw          $t9, 0x10($a0)
/* 01E624 8001EA74 01E6C021 */  addu        $t8, $t7, $a2
/* 01E628 8001EA78 10600010 */  beqz        $v1, .L8001EABC
/* 01E62C 8001EA7C AC980000 */   sw         $t8, 0x0($a0)
/* 01E630 8001EA80 00654021 */  addu        $t0, $v1, $a1
/* 01E634 8001EA84 03E00008 */  jr          $ra
/* 01E638 8001EA88 AC88000C */   sw         $t0, 0xc($a0)
.L8001EA8C:
/* 01E63C 8001EA8C 1441000B */  bne         $v0, $at, .L8001EABC
/* 01E640 8001EA90 00000000 */   nop
/* 01E644 8001EA94 8C83000C */  lw          $v1, 0xc($a0)
/* 01E648 8001EA98 00034800 */  sll         $t1, $v1, 0
/* 01E64C 8001EA9C 05200007 */  bltz        $t1, .L8001EABC
/* 01E650 8001EAA0 00000000 */   nop
/* 01E654 8001EAA4 8C8A0000 */  lw          $t2, 0x0($a0)
/* 01E658 8001EAA8 00656021 */  addu        $t4, $v1, $a1
/* 01E65C 8001EAAC 01465821 */  addu        $t3, $t2, $a2
/* 01E660 8001EAB0 10600002 */  beqz        $v1, .L8001EABC
/* 01E664 8001EAB4 AC8B0000 */   sw         $t3, 0x0($a0)
/* 01E668 8001EAB8 AC8C000C */  sw          $t4, 0xc($a0)
.L8001EABC:
/* 01E66C 8001EABC 03E00008 */  jr          $ra
/* 01E670 8001EAC0 00000000 */   nop
/* 01E674 8001EAC4 00000000 */  nop
/* 01E678 8001EAC8 00000000 */  nop
/* 01E67C 8001EACC 00000000 */  nop
