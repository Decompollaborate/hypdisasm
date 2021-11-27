.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80051BC0 # 0
/* 051770 80051BC0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 051774 80051BC4 AFB00020 */  sw          $s0, 0x20($sp)
/* 051778 80051BC8 3C10800A */  lui         $s0, %hi(D_800A31A0)
/* 05177C 80051BCC 261031A0 */  addiu       $s0, $s0, %lo(D_800A31A0)
/* 051780 80051BD0 8E0E0000 */  lw          $t6, 0x0($s0)
/* 051784 80051BD4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 051788 80051BD8 AFA40030 */  sw          $a0, 0x30($sp)
/* 05178C 80051BDC AFA50034 */  sw          $a1, 0x34($sp)
/* 051790 80051BE0 AFA60038 */  sw          $a2, 0x38($sp)
/* 051794 80051BE4 15C00050 */  bnez        $t6, .L80051D28
/* 051798 80051BE8 AFA7003C */   sw         $a3, 0x3c($sp)
/* 05179C 80051BEC 0C01474F */  jal         func_80051D3C
/* 0517A0 80051BF0 00000000 */   nop
/* 0517A4 80051BF4 8FA40034 */  lw          $a0, 0x34($sp)
/* 0517A8 80051BF8 8FA50038 */  lw          $a1, 0x38($sp)
/* 0517AC 80051BFC 0C013AEC */  jal         func_8004EBB0
/* 0517B0 80051C00 8FA6003C */   lw         $a2, 0x3c($sp)
/* 0517B4 80051C04 3C048010 */  lui         $a0, %hi(D_801037C0)
/* 0517B8 80051C08 3C058010 */  lui         $a1, %hi(D_801037D8)
/* 0517BC 80051C0C 24A537D8 */  addiu       $a1, $a1, %lo(D_801037D8)
/* 0517C0 80051C10 248437C0 */  addiu       $a0, $a0, %lo(D_801037C0)
/* 0517C4 80051C14 0C013AEC */  jal         func_8004EBB0
/* 0517C8 80051C18 24060001 */   addiu      $a2, $zero, 0x1
/* 0517CC 80051C1C 3C0F800A */  lui         $t7, %hi(D_800A4DA0)
/* 0517D0 80051C20 8DEF4DA0 */  lw          $t7, %lo(D_800A4DA0)($t7)
/* 0517D4 80051C24 15E00003 */  bnez        $t7, .L80051C34
/* 0517D8 80051C28 00000000 */   nop
/* 0517DC 80051C2C 0C015E90 */  jal         func_80057A40
/* 0517E0 80051C30 00000000 */   nop
.L80051C34:
/* 0517E4 80051C34 3C058010 */  lui         $a1, %hi(D_801037C0)
/* 0517E8 80051C38 3C062222 */  lui         $a2, 0x2222
/* 0517EC 80051C3C 34C62222 */  ori         $a2, $a2, 0x2222
/* 0517F0 80051C40 24A537C0 */  addiu       $a1, $a1, %lo(D_801037C0)
/* 0517F4 80051C44 0C013AF8 */  jal         func_8004EBE0
/* 0517F8 80051C48 24040008 */   addiu      $a0, $zero, 0x8
/* 0517FC 80051C4C 2418FFFF */  addiu       $t8, $zero, -0x1
/* 051800 80051C50 AFB80028 */  sw          $t8, 0x28($sp)
/* 051804 80051C54 0C016274 */  jal         func_800589D0
/* 051808 80051C58 00002025 */   move       $a0, $zero
/* 05180C 80051C5C 8FB90030 */  lw          $t9, 0x30($sp)
/* 051810 80051C60 00002025 */  move        $a0, $zero
/* 051814 80051C64 0059082A */  slt         $at, $v0, $t9
/* 051818 80051C68 10200003 */  beqz        $at, .L80051C78
/* 05181C 80051C6C 03202825 */   move       $a1, $t9
/* 051820 80051C70 0C013A10 */  jal         func_8004E840
/* 051824 80051C74 AFA20028 */   sw         $v0, 0x28($sp)
.L80051C78:
/* 051828 80051C78 0C015594 */  jal         func_80055650
/* 05182C 80051C7C 00000000 */   nop
/* 051830 80051C80 8FA90034 */  lw          $t1, 0x34($sp)
/* 051834 80051C84 8FAF0030 */  lw          $t7, 0x30($sp)
/* 051838 80051C88 3C048010 */  lui         $a0, %hi(D_80102610)
/* 05183C 80051C8C 3C0A8010 */  lui         $t2, %hi(D_801037C0)
/* 051840 80051C90 3C0B8010 */  lui         $t3, %hi(D_80104BE8)
/* 051844 80051C94 3C0C8006 */  lui         $t4, %hi(func_800589F0)
/* 051848 80051C98 3C0D8006 */  lui         $t5, %hi(func_80058AD0)
/* 05184C 80051C9C 3C0E8010 */  lui         $t6, %hi(D_801037C0)
/* 051850 80051CA0 24842610 */  addiu       $a0, $a0, %lo(D_80102610)
/* 051854 80051CA4 24080001 */  addiu       $t0, $zero, 0x1
/* 051858 80051CA8 254A37C0 */  addiu       $t2, $t2, %lo(D_801037C0)
/* 05185C 80051CAC 256B4BE8 */  addiu       $t3, $t3, %lo(D_80104BE8)
/* 051860 80051CB0 258C89F0 */  addiu       $t4, $t4, %lo(func_800589F0)
/* 051864 80051CB4 25AD8AD0 */  addiu       $t5, $t5, %lo(func_80058AD0)
/* 051868 80051CB8 25CE37C0 */  addiu       $t6, $t6, %lo(D_801037C0)
/* 05186C 80051CBC 3C068006 */  lui         $a2, %hi(func_80058D00)
/* 051870 80051CC0 AFA2002C */  sw          $v0, 0x2c($sp)
/* 051874 80051CC4 AE080000 */  sw          $t0, 0x0($s0)
/* 051878 80051CC8 AE040004 */  sw          $a0, 0x4($s0)
/* 05187C 80051CCC AE0A000C */  sw          $t2, 0xc($s0)
/* 051880 80051CD0 AE0B0010 */  sw          $t3, 0x10($s0)
/* 051884 80051CD4 AE0C0014 */  sw          $t4, 0x14($s0)
/* 051888 80051CD8 AE0D0018 */  sw          $t5, 0x18($s0)
/* 05188C 80051CDC 24C68D00 */  addiu       $a2, $a2, %lo(func_80058D00)
/* 051890 80051CE0 AFAE0010 */  sw          $t6, 0x10($sp)
/* 051894 80051CE4 00002825 */  move        $a1, $zero
/* 051898 80051CE8 02003825 */  move        $a3, $s0
/* 05189C 80051CEC AE090008 */  sw          $t1, 0x8($s0)
/* 0518A0 80051CF0 0C013968 */  jal         func_8004E5A0
/* 0518A4 80051CF4 AFAF0014 */   sw         $t7, 0x14($sp)
/* 0518A8 80051CF8 3C048010 */  lui         $a0, %hi(D_80102610)
/* 0518AC 80051CFC 0C0139BC */  jal         func_8004E6F0
/* 0518B0 80051D00 24842610 */   addiu      $a0, $a0, %lo(D_80102610)
/* 0518B4 80051D04 0C01559C */  jal         func_80055670
/* 0518B8 80051D08 8FA4002C */   lw         $a0, 0x2c($sp)
/* 0518BC 80051D0C 8FB80028 */  lw          $t8, 0x28($sp)
/* 0518C0 80051D10 2401FFFF */  addiu       $at, $zero, -0x1
/* 0518C4 80051D14 00002025 */  move        $a0, $zero
/* 0518C8 80051D18 53010004 */  beql        $t8, $at, .L80051D2C
/* 0518CC 80051D1C 8FBF0024 */   lw         $ra, 0x24($sp)
/* 0518D0 80051D20 0C013A10 */  jal         func_8004E840
/* 0518D4 80051D24 03002825 */   move       $a1, $t8
.L80051D28:
/* 0518D8 80051D28 8FBF0024 */  lw          $ra, 0x24($sp)
.L80051D2C:
/* 0518DC 80051D2C 8FB00020 */  lw          $s0, 0x20($sp)
/* 0518E0 80051D30 27BD0030 */  addiu       $sp, $sp, 0x30
/* 0518E4 80051D34 03E00008 */  jr          $ra
/* 0518E8 80051D38 00000000 */   nop

glabel func_80051D3C # 1
/* 0518EC 80051D3C 3C0EA460 */  lui         $t6, %hi(D_A4600014)
/* 0518F0 80051D40 8DCF0014 */  lw          $t7, %lo(D_A4600014)($t6)
/* 0518F4 80051D44 3C028010 */  lui         $v0, %hi(D_80102520)
/* 0518F8 80051D48 24422520 */  addiu       $v0, $v0, %lo(D_80102520)
/* 0518FC 80051D4C 3C18A460 */  lui         $t8, %hi(D_A4600018)
/* 051900 80051D50 A04F0005 */  sb          $t7, 0x5($v0)
/* 051904 80051D54 8F190018 */  lw          $t9, %lo(D_A4600018)($t8)
/* 051908 80051D58 3C08A460 */  lui         $t0, %hi(D_A460001C)
/* 05190C 80051D5C 3C0AA460 */  lui         $t2, %hi(D_A4600020)
/* 051910 80051D60 A0590008 */  sb          $t9, 0x8($v0)
/* 051914 80051D64 8D09001C */  lw          $t1, %lo(D_A460001C)($t0)
/* 051918 80051D68 3C0CA460 */  lui         $t4, %hi(D_A4600024)
/* 05191C 80051D6C 3C038010 */  lui         $v1, %hi(D_80102598)
/* 051920 80051D70 A0490006 */  sb          $t1, 0x6($v0)
/* 051924 80051D74 8D4B0020 */  lw          $t3, %lo(D_A4600020)($t2)
/* 051928 80051D78 A0400009 */  sb          $zero, 0x9($v0)
/* 05192C 80051D7C 24632598 */  addiu       $v1, $v1, %lo(D_80102598)
/* 051930 80051D80 A04B0007 */  sb          $t3, 0x7($v0)
/* 051934 80051D84 8D8D0024 */  lw          $t5, %lo(D_A4600024)($t4)
/* 051938 80051D88 240A0001 */  addiu       $t2, $zero, 0x1
/* 05193C 80051D8C A06D0005 */  sb          $t5, 0x5($v1)
/* 051940 80051D90 8DCF0028 */  lw          $t7, %lo(D_A4600028)($t6)
/* 051944 80051D94 A06F0008 */  sb          $t7, 0x8($v1)
/* 051948 80051D98 8F19002C */  lw          $t9, %lo(D_A460002C)($t8)
/* 05194C 80051D9C A0790006 */  sb          $t9, 0x6($v1)
/* 051950 80051DA0 8D090030 */  lw          $t1, %lo(D_A4600030)($t0)
/* 051954 80051DA4 A06A0009 */  sb          $t2, 0x9($v1)
/* 051958 80051DA8 03E00008 */  jr          $ra
/* 05195C 80051DAC A0690007 */   sb         $t1, 0x7($v1)

glabel func_80051DB0 # 2
/* 051960 80051DB0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 051964 80051DB4 AFB00020 */  sw          $s0, 0x20($sp)
/* 051968 80051DB8 3C10800A */  lui         $s0, %hi(D_800A31D0)
/* 05196C 80051DBC 261031D0 */  addiu       $s0, $s0, %lo(D_800A31D0)
/* 051970 80051DC0 8E0E0000 */  lw          $t6, 0x0($s0)
/* 051974 80051DC4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 051978 80051DC8 AFA40030 */  sw          $a0, 0x30($sp)
/* 05197C 80051DCC 55C00054 */  bnel        $t6, $zero, .L80051F20
/* 051980 80051DD0 8FBF0024 */   lw         $ra, 0x24($sp)
/* 051984 80051DD4 0C015BE0 */  jal         func_80056F80
/* 051988 80051DD8 00000000 */   nop
/* 05198C 80051DDC 3C01800A */  lui         $at, %hi(D_800A31EC)
/* 051990 80051DE0 3C048010 */  lui         $a0, %hi(D_80104990)
/* 051994 80051DE4 3C058010 */  lui         $a1, %hi(D_801049A8)
/* 051998 80051DE8 AC2031EC */  sw          $zero, %lo(D_800A31EC)($at)
/* 05199C 80051DEC 24A549A8 */  addiu       $a1, $a1, %lo(D_801049A8)
/* 0519A0 80051DF0 24844990 */  addiu       $a0, $a0, %lo(D_80104990)
/* 0519A4 80051DF4 0C013AEC */  jal         func_8004EBB0
/* 0519A8 80051DF8 24060005 */   addiu      $a2, $zero, 0x5
/* 0519AC 80051DFC 3C068010 */  lui         $a2, %hi(D_801049C0)
/* 0519B0 80051E00 3C078010 */  lui         $a3, %hi(D_801049D8)
/* 0519B4 80051E04 24E749D8 */  addiu       $a3, $a3, %lo(D_801049D8)
/* 0519B8 80051E08 24C649C0 */  addiu       $a2, $a2, %lo(D_801049C0)
/* 0519BC 80051E0C 240F000D */  addiu       $t7, $zero, 0xd
/* 0519C0 80051E10 2418000E */  addiu       $t8, $zero, 0xe
/* 0519C4 80051E14 3C058010 */  lui         $a1, %hi(D_80104990)
/* 0519C8 80051E18 A4CF0000 */  sh          $t7, 0x0($a2)
/* 0519CC 80051E1C A0C00002 */  sb          $zero, 0x2($a2)
/* 0519D0 80051E20 ACC00004 */  sw          $zero, 0x4($a2)
/* 0519D4 80051E24 A4F80000 */  sh          $t8, 0x0($a3)
/* 0519D8 80051E28 A0E00002 */  sb          $zero, 0x2($a3)
/* 0519DC 80051E2C ACE00004 */  sw          $zero, 0x4($a3)
/* 0519E0 80051E30 24A54990 */  addiu       $a1, $a1, %lo(D_80104990)
/* 0519E4 80051E34 0C013AF8 */  jal         func_8004EBE0
/* 0519E8 80051E38 24040007 */   addiu      $a0, $zero, 0x7
/* 0519EC 80051E3C 3C078010 */  lui         $a3, %hi(D_801049D8)
/* 0519F0 80051E40 3C058010 */  lui         $a1, %hi(D_80104990)
/* 0519F4 80051E44 24E649D8 */  addiu       $a2, $a3, %lo(D_801049D8)
/* 0519F8 80051E48 24A54990 */  addiu       $a1, $a1, %lo(D_80104990)
/* 0519FC 80051E4C 0C013AF8 */  jal         func_8004EBE0
/* 051A00 80051E50 24040003 */   addiu      $a0, $zero, 0x3
/* 051A04 80051E54 2419FFFF */  addiu       $t9, $zero, -0x1
/* 051A08 80051E58 AFB90028 */  sw          $t9, 0x28($sp)
/* 051A0C 80051E5C 0C016274 */  jal         func_800589D0
/* 051A10 80051E60 00002025 */   move       $a0, $zero
/* 051A14 80051E64 8FA80030 */  lw          $t0, 0x30($sp)
/* 051A18 80051E68 00002025 */  move        $a0, $zero
/* 051A1C 80051E6C 0048082A */  slt         $at, $v0, $t0
/* 051A20 80051E70 10200003 */  beqz        $at, .L80051E80
/* 051A24 80051E74 01002825 */   move       $a1, $t0
/* 051A28 80051E78 0C013A10 */  jal         func_8004E840
/* 051A2C 80051E7C AFA20028 */   sw         $v0, 0x28($sp)
.L80051E80:
/* 051A30 80051E80 0C015594 */  jal         func_80055650
/* 051A34 80051E84 00000000 */   nop
/* 051A38 80051E88 8FAB0030 */  lw          $t3, 0x30($sp)
/* 051A3C 80051E8C 3C038010 */  lui         $v1, %hi(D_80104990)
/* 051A40 80051E90 3C048010 */  lui         $a0, %hi(D_801037E0)
/* 051A44 80051E94 3C0A8010 */  lui         $t2, %hi(D_80104990)
/* 051A48 80051E98 248437E0 */  addiu       $a0, $a0, %lo(D_801037E0)
/* 051A4C 80051E9C 24634990 */  addiu       $v1, $v1, %lo(D_80104990)
/* 051A50 80051EA0 24090001 */  addiu       $t1, $zero, 0x1
/* 051A54 80051EA4 254A4990 */  addiu       $t2, $t2, %lo(D_80104990)
/* 051A58 80051EA8 3C068005 */  lui         $a2, %hi(func_80051F30)
/* 051A5C 80051EAC AFA2002C */  sw          $v0, 0x2c($sp)
/* 051A60 80051EB0 AE090000 */  sw          $t1, 0x0($s0)
/* 051A64 80051EB4 AE040004 */  sw          $a0, 0x4($s0)
/* 051A68 80051EB8 AE030008 */  sw          $v1, 0x8($s0)
/* 051A6C 80051EBC AE03000C */  sw          $v1, 0xc($s0)
/* 051A70 80051EC0 AE000010 */  sw          $zero, 0x10($s0)
/* 051A74 80051EC4 AE000014 */  sw          $zero, 0x14($s0)
/* 051A78 80051EC8 AE000018 */  sw          $zero, 0x18($s0)
/* 051A7C 80051ECC 24C61F30 */  addiu       $a2, $a2, %lo(func_80051F30)
/* 051A80 80051ED0 AFAA0010 */  sw          $t2, 0x10($sp)
/* 051A84 80051ED4 00002825 */  move        $a1, $zero
/* 051A88 80051ED8 02003825 */  move        $a3, $s0
/* 051A8C 80051EDC 0C013968 */  jal         func_8004E5A0
/* 051A90 80051EE0 AFAB0014 */   sw         $t3, 0x14($sp)
/* 051A94 80051EE4 0C015EC0 */  jal         func_80057B00
/* 051A98 80051EE8 00000000 */   nop
/* 051A9C 80051EEC 3C048010 */  lui         $a0, %hi(D_801037E0)
/* 051AA0 80051EF0 0C0139BC */  jal         func_8004E6F0
/* 051AA4 80051EF4 248437E0 */   addiu      $a0, $a0, %lo(D_801037E0)
/* 051AA8 80051EF8 0C01559C */  jal         func_80055670
/* 051AAC 80051EFC 8FA4002C */   lw         $a0, 0x2c($sp)
/* 051AB0 80051F00 8FAC0028 */  lw          $t4, 0x28($sp)
/* 051AB4 80051F04 2401FFFF */  addiu       $at, $zero, -0x1
/* 051AB8 80051F08 00002025 */  move        $a0, $zero
/* 051ABC 80051F0C 51810004 */  beql        $t4, $at, .L80051F20
/* 051AC0 80051F10 8FBF0024 */   lw         $ra, 0x24($sp)
/* 051AC4 80051F14 0C013A10 */  jal         func_8004E840
/* 051AC8 80051F18 01802825 */   move       $a1, $t4
/* 051ACC 80051F1C 8FBF0024 */  lw          $ra, 0x24($sp)
.L80051F20:
/* 051AD0 80051F20 8FB00020 */  lw          $s0, 0x20($sp)
/* 051AD4 80051F24 27BD0030 */  addiu       $sp, $sp, 0x30
/* 051AD8 80051F28 03E00008 */  jr          $ra
/* 051ADC 80051F2C 00000000 */   nop

glabel func_80051F30 # 3
/* 051AE0 80051F30 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 051AE4 80051F34 AFBF0034 */  sw          $ra, 0x34($sp)
/* 051AE8 80051F38 AFB70030 */  sw          $s7, 0x30($sp)
/* 051AEC 80051F3C 0080B825 */  move        $s7, $a0
/* 051AF0 80051F40 AFB6002C */  sw          $s6, 0x2c($sp)
/* 051AF4 80051F44 AFB50028 */  sw          $s5, 0x28($sp)
/* 051AF8 80051F48 AFB40024 */  sw          $s4, 0x24($sp)
/* 051AFC 80051F4C AFB30020 */  sw          $s3, 0x20($sp)
/* 051B00 80051F50 AFB2001C */  sw          $s2, 0x1c($sp)
/* 051B04 80051F54 AFB10018 */  sw          $s1, 0x18($sp)
/* 051B08 80051F58 AFB00014 */  sw          $s0, 0x14($sp)
/* 051B0C 80051F5C 0C016464 */  jal         func_80059190
/* 051B10 80051F60 AFA00044 */   sw         $zero, 0x44($sp)
/* 051B14 80051F64 94430002 */  lhu         $v1, 0x2($v0)
/* 051B18 80051F68 3C018010 */  lui         $at, %hi(D_801049F0)
/* 051B1C 80051F6C 2416000E */  addiu       $s6, $zero, 0xe
/* 051B20 80051F70 14600004 */  bnez        $v1, .L80051F84
/* 051B24 80051F74 A42349F0 */   sh         $v1, %lo(D_801049F0)($at)
/* 051B28 80051F78 24030001 */  addiu       $v1, $zero, 0x1
/* 051B2C 80051F7C 3C018010 */  lui         $at, %hi(D_801049F0)
/* 051B30 80051F80 A42349F0 */  sh          $v1, %lo(D_801049F0)($at)
.L80051F84:
/* 051B34 80051F84 3C138010 */  lui         $s3, %hi(D_80104BCC)
/* 051B38 80051F88 3C128010 */  lui         $s2, %hi(D_80104BC8)
/* 051B3C 80051F8C 3C118010 */  lui         $s1, %hi(D_80104BC0)
/* 051B40 80051F90 26314BC0 */  addiu       $s1, $s1, %lo(D_80104BC0)
/* 051B44 80051F94 26524BC8 */  addiu       $s2, $s2, %lo(D_80104BC8)
/* 051B48 80051F98 26734BCC */  addiu       $s3, $s3, %lo(D_80104BCC)
/* 051B4C 80051F9C 2415000D */  addiu       $s5, $zero, 0xd
/* 051B50 80051FA0 27B40044 */  addiu       $s4, $sp, 0x44
.L80051FA4:
/* 051B54 80051FA4 8EE4000C */  lw          $a0, 0xc($s7)
.L80051FA8:
/* 051B58 80051FA8 02802825 */  move        $a1, $s4
/* 051B5C 80051FAC 0C013A48 */  jal         func_8004E920
/* 051B60 80051FB0 24060001 */   addiu      $a2, $zero, 0x1
/* 051B64 80051FB4 8FAE0044 */  lw          $t6, 0x44($sp)
/* 051B68 80051FB8 95C30000 */  lhu         $v1, 0x0($t6)
/* 051B6C 80051FBC 10750005 */  beq         $v1, $s5, .L80051FD4
/* 051B70 80051FC0 00000000 */   nop
/* 051B74 80051FC4 1076002A */  beq         $v1, $s6, .L80052070
/* 051B78 80051FC8 00000000 */   nop
/* 051B7C 80051FCC 1000FFF6 */  b           .L80051FA8
/* 051B80 80051FD0 8EE4000C */   lw         $a0, 0xc($s7)
.L80051FD4:
/* 051B84 80051FD4 0C016468 */  jal         func_800591A0
/* 051B88 80051FD8 00000000 */   nop
/* 051B8C 80051FDC 3C038010 */  lui         $v1, %hi(D_801049F0)
/* 051B90 80051FE0 946349F0 */  lhu         $v1, %lo(D_801049F0)($v1)
/* 051B94 80051FE4 3C018010 */  lui         $at, %hi(D_801049F0)
/* 051B98 80051FE8 2463FFFF */  addiu       $v1, $v1, -0x1
/* 051B9C 80051FEC 306FFFFF */  andi        $t7, $v1, 0xffff
/* 051BA0 80051FF0 15E0000E */  bnez        $t7, .L8005202C
/* 051BA4 80051FF4 A42F49F0 */   sh         $t7, %lo(D_801049F0)($at)
/* 051BA8 80051FF8 0C016464 */  jal         func_80059190
/* 051BAC 80051FFC 00000000 */   nop
/* 051BB0 80052000 8C580010 */  lw          $t8, 0x10($v0)
/* 051BB4 80052004 00408025 */  move        $s0, $v0
/* 051BB8 80052008 00003025 */  move        $a2, $zero
/* 051BBC 8005200C 53000005 */  beql        $t8, $zero, .L80052024
/* 051BC0 80052010 96030002 */   lhu        $v1, 0x2($s0)
/* 051BC4 80052014 8C440010 */  lw          $a0, 0x10($v0)
/* 051BC8 80052018 0C013A98 */  jal         func_8004EA60
/* 051BCC 8005201C 8C450014 */   lw         $a1, 0x14($v0)
/* 051BD0 80052020 96030002 */  lhu         $v1, 0x2($s0)
.L80052024:
/* 051BD4 80052024 3C018010 */  lui         $at, %hi(D_801049F0)
/* 051BD8 80052028 A42349F0 */  sh          $v1, %lo(D_801049F0)($at)
.L8005202C:
/* 051BDC 8005202C 8E790000 */  lw          $t9, 0x0($s3)
/* 051BE0 80052030 8E500000 */  lw          $s0, 0x0($s2)
/* 051BE4 80052034 27280001 */  addiu       $t0, $t9, 0x1
/* 051BE8 80052038 0C0142B4 */  jal         func_80050AD0
/* 051BEC 8005203C AE680000 */   sw         $t0, 0x0($s3)
/* 051BF0 80052040 8E2D0004 */  lw          $t5, 0x4($s1)
/* 051BF4 80052044 00508023 */  subu        $s0, $v0, $s0
/* 051BF8 80052048 8E2C0000 */  lw          $t4, 0x0($s1)
/* 051BFC 8005204C 020D7821 */  addu        $t7, $s0, $t5
/* 051C00 80052050 240A0000 */  addiu       $t2, $zero, 0x0
/* 051C04 80052054 01ED082B */  sltu        $at, $t7, $t5
/* 051C08 80052058 002A7021 */  addu        $t6, $at, $t2
/* 051C0C 8005205C 01CC7021 */  addu        $t6, $t6, $t4
/* 051C10 80052060 AE420000 */  sw          $v0, 0x0($s2)
/* 051C14 80052064 AE2E0000 */  sw          $t6, 0x0($s1)
/* 051C18 80052068 1000FFCE */  b           .L80051FA4
/* 051C1C 8005206C AE2F0004 */   sw         $t7, 0x4($s1)
.L80052070:
/* 051C20 80052070 0C015C03 */  jal         func_8005700C
/* 051C24 80052074 00000000 */   nop
/* 051C28 80052078 1000FFCB */  b           .L80051FA8
/* 051C2C 8005207C 8EE4000C */   lw         $a0, 0xc($s7)
/* 051C30 80052080 00000000 */  nop
/* 051C34 80052084 00000000 */  nop
/* 051C38 80052088 00000000 */  nop
/* 051C3C 8005208C 00000000 */  nop
/* 051C40 80052090 8FBF0034 */  lw          $ra, 0x34($sp)
/* 051C44 80052094 8FB00014 */  lw          $s0, 0x14($sp)
/* 051C48 80052098 8FB10018 */  lw          $s1, 0x18($sp)
/* 051C4C 8005209C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 051C50 800520A0 8FB30020 */  lw          $s3, 0x20($sp)
/* 051C54 800520A4 8FB40024 */  lw          $s4, 0x24($sp)
/* 051C58 800520A8 8FB50028 */  lw          $s5, 0x28($sp)
/* 051C5C 800520AC 8FB6002C */  lw          $s6, 0x2c($sp)
/* 051C60 800520B0 8FB70030 */  lw          $s7, 0x30($sp)
/* 051C64 800520B4 03E00008 */  jr          $ra
/* 051C68 800520B8 27BD0050 */   addiu      $sp, $sp, 0x50
/* 051C6C 800520BC 00000000 */  nop
