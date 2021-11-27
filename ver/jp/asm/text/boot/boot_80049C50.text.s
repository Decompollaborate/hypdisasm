.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80049C50 # 0
/* 049800 80049C50 03E00008 */  jr          $ra
/* 049804 80049C54 00000000 */   nop

glabel func_80049C58 # 1
/* 049808 80049C58 3C0E800A */  lui         $t6, %hi(D_800A2E64)
/* 04980C 80049C5C 8DCE2E64 */  lw          $t6, %lo(D_800A2E64)($t6)
/* 049810 80049C60 44842000 */  mtc1        $a0, $f4
/* 049814 80049C64 3C01800B */  lui         $at, %hi(D_800AC870)
/* 049818 80049C68 8DCF004C */  lw          $t7, 0x4c($t6)
/* 04981C 80049C6C 468021A0 */  cvt.s.w     $f6, $f4
/* 049820 80049C70 D424C870 */  ldc1        $f4, %lo(D_800AC870)($at)
/* 049824 80049C74 448F4000 */  mtc1        $t7, $f8
/* 049828 80049C78 3C013FE0 */  lui         $at, 0x3fe0
/* 04982C 80049C7C 44813800 */  mtc1        $at, $f7
/* 049830 80049C80 468042A0 */  cvt.s.w     $f10, $f8
/* 049834 80049C84 2401FFF0 */  addiu       $at, $zero, -0x10
/* 049838 80049C88 460A3402 */  mul.s       $f16, $f6, $f10
/* 04983C 80049C8C 44803000 */  mtc1        $zero, $f6
/* 049840 80049C90 460084A1 */  cvt.d.s     $f18, $f16
/* 049844 80049C94 46249203 */  div.d       $f8, $f18, $f4
/* 049848 80049C98 46264280 */  add.d       $f10, $f8, $f6
/* 04984C 80049C9C 46205020 */  cvt.s.d     $f0, $f10
/* 049850 80049CA0 4600040D */  trunc.w.s   $f16, $f0
/* 049854 80049CA4 44028000 */  mfc1        $v0, $f16
/* 049858 80049CA8 00000000 */  nop
/* 04985C 80049CAC 0041C824 */  and         $t9, $v0, $at
/* 049860 80049CB0 03E00008 */  jr          $ra
/* 049864 80049CB4 03201025 */   move       $v0, $t9

glabel func_80049CB8 # 2
/* 049868 80049CB8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04986C 80049CBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 049870 80049CC0 0C014B8C */  jal         func_80052E30
/* 049874 80049CC4 AFA40018 */   sw         $a0, 0x18($sp)
/* 049878 80049CC8 3C05800A */  lui         $a1, %hi(D_800A2E64)
/* 04987C 80049CCC 8CA52E64 */  lw          $a1, %lo(D_800A2E64)($a1)
/* 049880 80049CD0 8FA40018 */  lw          $a0, 0x18($sp)
/* 049884 80049CD4 0C014B98 */  jal         func_80052E60
/* 049888 80049CD8 24A50020 */   addiu      $a1, $a1, 0x20
/* 04988C 80049CDC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 049890 80049CE0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 049894 80049CE4 03E00008 */  jr          $ra
/* 049898 80049CE8 00000000 */   nop

glabel func_80049CEC # 3
/* 04989C 80049CEC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0498A0 80049CF0 AFB10018 */  sw          $s1, 0x18($sp)
/* 0498A4 80049CF4 3C11800A */  lui         $s1, %hi(D_800A2E64)
/* 0498A8 80049CF8 26312E64 */  addiu       $s1, $s1, %lo(D_800A2E64)
/* 0498AC 80049CFC 8E2E0000 */  lw          $t6, 0x0($s1)
/* 0498B0 80049D00 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0498B4 80049D04 AFB00014 */  sw          $s0, 0x14($sp)
/* 0498B8 80049D08 8DD00020 */  lw          $s0, 0x20($t6)
/* 0498BC 80049D0C 5200000C */  beql        $s0, $zero, .L80049D40
/* 0498C0 80049D10 8FBF001C */   lw         $ra, 0x1c($sp)
.L80049D14:
/* 0498C4 80049D14 0C014B8C */  jal         func_80052E30
/* 0498C8 80049D18 02002025 */   move       $a0, $s0
/* 0498CC 80049D1C 8E250000 */  lw          $a1, 0x0($s1)
/* 0498D0 80049D20 02002025 */  move        $a0, $s0
/* 0498D4 80049D24 0C014B98 */  jal         func_80052E60
/* 0498D8 80049D28 24A50010 */   addiu      $a1, $a1, 0x10
/* 0498DC 80049D2C 8E2F0000 */  lw          $t7, 0x0($s1)
/* 0498E0 80049D30 8DF00020 */  lw          $s0, 0x20($t7)
/* 0498E4 80049D34 1600FFF7 */  bnez        $s0, .L80049D14
/* 0498E8 80049D38 00000000 */   nop
/* 0498EC 80049D3C 8FBF001C */  lw          $ra, 0x1c($sp)
.L80049D40:
/* 0498F0 80049D40 8FB00014 */  lw          $s0, 0x14($sp)
/* 0498F4 80049D44 8FB10018 */  lw          $s1, 0x18($sp)
/* 0498F8 80049D48 03E00008 */  jr          $ra
/* 0498FC 80049D4C 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80049D50 # 4
/* 049900 80049D50 3C02800A */  lui         $v0, %hi(D_800A2E64)
/* 049904 80049D54 24422E64 */  addiu       $v0, $v0, %lo(D_800A2E64)
/* 049908 80049D58 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04990C 80049D5C 8DCF0038 */  lw          $t7, 0x38($t6)
/* 049910 80049D60 AC8F0000 */  sw          $t7, 0x0($a0)
/* 049914 80049D64 8C580000 */  lw          $t8, 0x0($v0)
/* 049918 80049D68 03E00008 */  jr          $ra
/* 04991C 80049D6C AF040038 */   sw         $a0, 0x38($t8)

glabel func_80049D70 # 5
/* 049920 80049D70 3C02800A */  lui         $v0, %hi(D_800A2E64)
/* 049924 80049D74 8C422E64 */  lw          $v0, %lo(D_800A2E64)($v0)
/* 049928 80049D78 00001825 */  move        $v1, $zero
/* 04992C 80049D7C 8C440038 */  lw          $a0, 0x38($v0)
/* 049930 80049D80 10800005 */  beqz        $a0, .L80049D98
/* 049934 80049D84 00000000 */   nop
/* 049938 80049D88 8C8E0000 */  lw          $t6, 0x0($a0)
/* 04993C 80049D8C 00801825 */  move        $v1, $a0
/* 049940 80049D90 AC4E0038 */  sw          $t6, 0x38($v0)
/* 049944 80049D94 AC800000 */  sw          $zero, 0x0($a0)
.L80049D98:
/* 049948 80049D98 03E00008 */  jr          $ra
/* 04994C 80049D9C 00601025 */   move       $v0, $v1

glabel func_80049DA0 # 6
/* 049950 80049DA0 03E00008 */  jr          $ra
/* 049954 80049DA4 00000000 */   nop

glabel func_80049DA8 # 7
/* 049958 80049DA8 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 04995C 80049DAC AFB20030 */  sw          $s2, 0x30($sp)
/* 049960 80049DB0 3C12800A */  lui         $s2, %hi(D_800A2E64)
/* 049964 80049DB4 26522E64 */  addiu       $s2, $s2, %lo(D_800A2E64)
/* 049968 80049DB8 AFB1002C */  sw          $s1, 0x2c($sp)
/* 04996C 80049DBC 8E510000 */  lw          $s1, 0x0($s2)
/* 049970 80049DC0 AFBF0044 */  sw          $ra, 0x44($sp)
/* 049974 80049DC4 AFB60040 */  sw          $s6, 0x40($sp)
/* 049978 80049DC8 AFB5003C */  sw          $s5, 0x3c($sp)
/* 04997C 80049DCC AFB40038 */  sw          $s4, 0x38($sp)
/* 049980 80049DD0 AFB30034 */  sw          $s3, 0x34($sp)
/* 049984 80049DD4 AFB00028 */  sw          $s0, 0x28($sp)
/* 049988 80049DD8 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 04998C 80049DDC F7B40018 */  sdc1        $f20, 0x18($sp)
/* 049990 80049DE0 AFA40050 */  sw          $a0, 0x50($sp)
/* 049994 80049DE4 AFA50054 */  sw          $a1, 0x54($sp)
/* 049998 80049DE8 8E2F0000 */  lw          $t7, 0x0($s1)
/* 04999C 80049DEC 00E09825 */  move        $s3, $a3
/* 0499A0 80049DF0 0080A825 */  move        $s5, $a0
/* 0499A4 80049DF4 15E00004 */  bnez        $t7, .L80049E08
/* 0499A8 80049DF8 00C0A025 */   move       $s4, $a2
/* 0499AC 80049DFC ACA00000 */  sw          $zero, 0x0($a1)
/* 0499B0 80049E00 10000084 */  b           .L8004A014
/* 0499B4 80049E04 00801025 */   move       $v0, $a0
.L80049E08:
/* 0499B8 80049E08 AFA0004C */  sw          $zero, 0x4c($sp)
/* 0499BC 80049E0C 8E220000 */  lw          $v0, 0x0($s1)
/* 0499C0 80049E10 3C047FFF */  lui         $a0, 0x7fff
/* 0499C4 80049E14 3484FFFF */  ori         $a0, $a0, 0xffff
/* 0499C8 80049E18 1040000F */  beqz        $v0, .L80049E58
/* 0499CC 80049E1C 2416FFF0 */   addiu      $s6, $zero, -0x10
/* 0499D0 80049E20 8E23002C */  lw          $v1, 0x2c($s1)
/* 0499D4 80049E24 8C590010 */  lw          $t9, 0x10($v0)
.L80049E28:
/* 0499D8 80049E28 03234023 */  subu        $t0, $t9, $v1
/* 0499DC 80049E2C 0104082A */  slt         $at, $t0, $a0
/* 0499E0 80049E30 50200007 */  beql        $at, $zero, .L80049E50
/* 0499E4 80049E34 8C420000 */   lw         $v0, 0x0($v0)
/* 0499E8 80049E38 8E510000 */  lw          $s1, 0x0($s2)
/* 0499EC 80049E3C AFA2004C */  sw          $v0, 0x4c($sp)
/* 0499F0 80049E40 8C490010 */  lw          $t1, 0x10($v0)
/* 0499F4 80049E44 8E23002C */  lw          $v1, 0x2c($s1)
/* 0499F8 80049E48 01232023 */  subu        $a0, $t1, $v1
/* 0499FC 80049E4C 8C420000 */  lw          $v0, 0x0($v0)
.L80049E50:
/* 049A00 80049E50 5440FFF5 */  bnel        $v0, $zero, .L80049E28
/* 049A04 80049E54 8C590010 */   lw         $t9, 0x10($v0)
.L80049E58:
/* 049A08 80049E58 8FAA004C */  lw          $t2, 0x4c($sp)
/* 049A0C 80049E5C 8D420010 */  lw          $v0, 0x10($t2)
/* 049A10 80049E60 AE220028 */  sw          $v0, 0x28($s1)
/* 049A14 80049E64 8E510000 */  lw          $s1, 0x0($s2)
/* 049A18 80049E68 8E230028 */  lw          $v1, 0x28($s1)
/* 049A1C 80049E6C 8E2B002C */  lw          $t3, 0x2c($s1)
/* 049A20 80049E70 006B6023 */  subu        $t4, $v1, $t3
/* 049A24 80049E74 0193082A */  slt         $at, $t4, $s3
/* 049A28 80049E78 10200045 */  beqz        $at, .L80049F90
/* 049A2C 80049E7C 3C013FE0 */   lui        $at, 0x3fe0
/* 049A30 80049E80 4481B800 */  mtc1        $at, $f23
/* 049A34 80049E84 3C01800B */  lui         $at, %hi(D_800AC878)
/* 049A38 80049E88 4480B000 */  mtc1        $zero, $f22
/* 049A3C 80049E8C D434C878 */  ldc1        $f20, %lo(D_800AC878)($at)
/* 049A40 80049E90 00766824 */  and         $t5, $v1, $s6
.L80049E94:
/* 049A44 80049E94 AE2D0028 */  sw          $t5, 0x28($s1)
/* 049A48 80049E98 8FA4004C */  lw          $a0, 0x4c($sp)
/* 049A4C 80049E9C 3C107FFF */  lui         $s0, 0x7fff
/* 049A50 80049EA0 3610FFFF */  ori         $s0, $s0, 0xffff
/* 049A54 80049EA4 8C990008 */  lw          $t9, 0x8($a0)
/* 049A58 80049EA8 0320F809 */  jalr        $t9
/* 049A5C 80049EAC 00000000 */   nop
/* 049A60 80049EB0 04400015 */  bltz        $v0, .L80049F08
/* 049A64 80049EB4 00401825 */   move       $v1, $v0
/* 049A68 80049EB8 8E580000 */  lw          $t8, 0x0($s2)
/* 049A6C 80049EBC 44832000 */  mtc1        $v1, $f4
/* 049A70 80049EC0 8FA9004C */  lw          $t1, 0x4c($sp)
/* 049A74 80049EC4 8F0E004C */  lw          $t6, 0x4c($t8)
/* 049A78 80049EC8 468021A0 */  cvt.s.w     $f6, $f4
/* 049A7C 80049ECC 8D2A0010 */  lw          $t2, 0x10($t1)
/* 049A80 80049ED0 448E4000 */  mtc1        $t6, $f8
/* 049A84 80049ED4 00000000 */  nop
/* 049A88 80049ED8 468042A0 */  cvt.s.w     $f10, $f8
/* 049A8C 80049EDC 460A3402 */  mul.s       $f16, $f6, $f10
/* 049A90 80049EE0 460084A1 */  cvt.d.s     $f18, $f16
/* 049A94 80049EE4 46349103 */  div.d       $f4, $f18, $f20
/* 049A98 80049EE8 46362200 */  add.d       $f8, $f4, $f22
/* 049A9C 80049EEC 46204020 */  cvt.s.d     $f0, $f8
/* 049AA0 80049EF0 4600018D */  trunc.w.s   $f6, $f0
/* 049AA4 80049EF4 44023000 */  mfc1        $v0, $f6
/* 049AA8 80049EF8 00000000 */  nop
/* 049AAC 80049EFC 01425821 */  addu        $t3, $t2, $v0
/* 049AB0 80049F00 10000006 */  b           .L80049F1C
/* 049AB4 80049F04 AD2B0010 */   sw         $t3, 0x10($t1)
.L80049F08:
/* 049AB8 80049F08 8E4C0000 */  lw          $t4, 0x0($s2)
/* 049ABC 80049F0C 8FB9004C */  lw          $t9, 0x4c($sp)
/* 049AC0 80049F10 8D8D002C */  lw          $t5, 0x2c($t4)
/* 049AC4 80049F14 01B37821 */  addu        $t7, $t5, $s3
/* 049AC8 80049F18 AF2F0010 */  sw          $t7, 0x10($t9)
.L80049F1C:
/* 049ACC 80049F1C 8E510000 */  lw          $s1, 0x0($s2)
/* 049AD0 80049F20 AFA0004C */  sw          $zero, 0x4c($sp)
/* 049AD4 80049F24 8E220000 */  lw          $v0, 0x0($s1)
/* 049AD8 80049F28 50400010 */  beql        $v0, $zero, .L80049F6C
/* 049ADC 80049F2C 8FAA004C */   lw         $t2, 0x4c($sp)
/* 049AE0 80049F30 8E23002C */  lw          $v1, 0x2c($s1)
/* 049AE4 80049F34 8C580010 */  lw          $t8, 0x10($v0)
.L80049F38:
/* 049AE8 80049F38 03037023 */  subu        $t6, $t8, $v1
/* 049AEC 80049F3C 01D0082A */  slt         $at, $t6, $s0
/* 049AF0 80049F40 50200007 */  beql        $at, $zero, .L80049F60
/* 049AF4 80049F44 8C420000 */   lw         $v0, 0x0($v0)
/* 049AF8 80049F48 8E510000 */  lw          $s1, 0x0($s2)
/* 049AFC 80049F4C AFA2004C */  sw          $v0, 0x4c($sp)
/* 049B00 80049F50 8C480010 */  lw          $t0, 0x10($v0)
/* 049B04 80049F54 8E23002C */  lw          $v1, 0x2c($s1)
/* 049B08 80049F58 01038023 */  subu        $s0, $t0, $v1
/* 049B0C 80049F5C 8C420000 */  lw          $v0, 0x0($v0)
.L80049F60:
/* 049B10 80049F60 5440FFF5 */  bnel        $v0, $zero, .L80049F38
/* 049B14 80049F64 8C580010 */   lw         $t8, 0x10($v0)
/* 049B18 80049F68 8FAA004C */  lw          $t2, 0x4c($sp)
.L80049F6C:
/* 049B1C 80049F6C 8D420010 */  lw          $v0, 0x10($t2)
/* 049B20 80049F70 AE220028 */  sw          $v0, 0x28($s1)
/* 049B24 80049F74 8E510000 */  lw          $s1, 0x0($s2)
/* 049B28 80049F78 8E230028 */  lw          $v1, 0x28($s1)
/* 049B2C 80049F7C 8E2B002C */  lw          $t3, 0x2c($s1)
/* 049B30 80049F80 006B4823 */  subu        $t1, $v1, $t3
/* 049B34 80049F84 0133082A */  slt         $at, $t1, $s3
/* 049B38 80049F88 5420FFC2 */  bnel        $at, $zero, .L80049E94
/* 049B3C 80049F8C 00766824 */   and        $t5, $v1, $s6
.L80049F90:
/* 049B40 80049F90 2416FFF0 */  addiu       $s6, $zero, -0x10
/* 049B44 80049F94 00766024 */  and         $t4, $v1, $s6
/* 049B48 80049F98 1A600017 */  blez        $s3, .L80049FF8
/* 049B4C 80049F9C AE2C0028 */   sw         $t4, 0x28($s1)
.L80049FA0:
/* 049B50 80049FA0 8E510000 */  lw          $s1, 0x0($s2)
/* 049B54 80049FA4 02608025 */  move        $s0, $s3
/* 049B58 80049FA8 8E220050 */  lw          $v0, 0x50($s1)
/* 049B5C 80049FAC 0053082A */  slt         $at, $v0, $s3
/* 049B60 80049FB0 10200003 */  beqz        $at, .L80049FC0
/* 049B64 80049FB4 00000000 */   nop
/* 049B68 80049FB8 10000001 */  b           .L80049FC0
/* 049B6C 80049FBC 00408025 */   move       $s0, $v0
.L80049FC0:
/* 049B70 80049FC0 AE340054 */  sw          $s4, 0x54($s1)
/* 049B74 80049FC4 8E4D0000 */  lw          $t5, 0x0($s2)
/* 049B78 80049FC8 02A02825 */  move        $a1, $s5
/* 049B7C 80049FCC 0C012FEC */  jal         func_8004BFB0
/* 049B80 80049FD0 8DA4002C */   lw         $a0, 0x2c($t5)
/* 049B84 80049FD4 8E510000 */  lw          $s1, 0x0($s2)
/* 049B88 80049FD8 02709823 */  subu        $s3, $s3, $s0
/* 049B8C 80049FDC 0010C880 */  sll         $t9, $s0, 2
/* 049B90 80049FE0 8E38002C */  lw          $t8, 0x2c($s1)
/* 049B94 80049FE4 0040A825 */  move        $s5, $v0
/* 049B98 80049FE8 0299A021 */  addu        $s4, $s4, $t9
/* 049B9C 80049FEC 03107021 */  addu        $t6, $t8, $s0
/* 049BA0 80049FF0 1E60FFEB */  bgtz        $s3, .L80049FA0
/* 049BA4 80049FF4 AE2E002C */   sw         $t6, 0x2c($s1)
.L80049FF8:
/* 049BA8 80049FF8 8FA80050 */  lw          $t0, 0x50($sp)
/* 049BAC 80049FFC 8FA90054 */  lw          $t1, 0x54($sp)
/* 049BB0 8004A000 02A85023 */  subu        $t2, $s5, $t0
/* 049BB4 8004A004 000A58C3 */  sra         $t3, $t2, 3
/* 049BB8 8004A008 0C01273B */  jal         func_80049CEC
/* 049BBC 8004A00C AD2B0000 */   sw         $t3, 0x0($t1)
/* 049BC0 8004A010 02A01025 */  move        $v0, $s5
.L8004A014:
/* 049BC4 8004A014 8FBF0044 */  lw          $ra, 0x44($sp)
/* 049BC8 8004A018 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 049BCC 8004A01C D7B60020 */  ldc1        $f22, 0x20($sp)
/* 049BD0 8004A020 8FB00028 */  lw          $s0, 0x28($sp)
/* 049BD4 8004A024 8FB1002C */  lw          $s1, 0x2c($sp)
/* 049BD8 8004A028 8FB20030 */  lw          $s2, 0x30($sp)
/* 049BDC 8004A02C 8FB30034 */  lw          $s3, 0x34($sp)
/* 049BE0 8004A030 8FB40038 */  lw          $s4, 0x38($sp)
/* 049BE4 8004A034 8FB5003C */  lw          $s5, 0x3c($sp)
/* 049BE8 8004A038 8FB60040 */  lw          $s6, 0x40($sp)
/* 049BEC 8004A03C 03E00008 */  jr          $ra
/* 049BF0 8004A040 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8004A044 # 8
/* 049BF4 8004A044 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 049BF8 8004A048 AFB20024 */  sw          $s2, 0x24($sp)
/* 049BFC 8004A04C 3C12800A */  lui         $s2, %hi(D_800A2E64)
/* 049C00 8004A050 26522E64 */  addiu       $s2, $s2, %lo(D_800A2E64)
/* 049C04 8004A054 8E4E0000 */  lw          $t6, 0x0($s2)
/* 049C08 8004A058 AFBF0034 */  sw          $ra, 0x34($sp)
/* 049C0C 8004A05C AFB50030 */  sw          $s5, 0x30($sp)
/* 049C10 8004A060 AFB4002C */  sw          $s4, 0x2c($sp)
/* 049C14 8004A064 AFB30028 */  sw          $s3, 0x28($sp)
/* 049C18 8004A068 AFB10020 */  sw          $s1, 0x20($sp)
/* 049C1C 8004A06C AFB0001C */  sw          $s0, 0x1c($sp)
/* 049C20 8004A070 8C950014 */  lw          $s5, 0x14($a0)
/* 049C24 8004A074 ADC00000 */  sw          $zero, 0x0($t6)
/* 049C28 8004A078 8E4F0000 */  lw          $t7, 0x0($s2)
/* 049C2C 8004A07C 240E00B8 */  addiu       $t6, $zero, 0xb8
/* 049C30 8004A080 0080A025 */  move        $s4, $a0
/* 049C34 8004A084 ADE00004 */  sw          $zero, 0x4($t7)
/* 049C38 8004A088 8E580000 */  lw          $t8, 0x0($s2)
/* 049C3C 8004A08C 00002825 */  move        $a1, $zero
/* 049C40 8004A090 24070001 */  addiu       $a3, $zero, 0x1
/* 049C44 8004A094 AF000008 */  sw          $zero, 0x8($t8)
/* 049C48 8004A098 8E590000 */  lw          $t9, 0x0($s2)
/* 049C4C 8004A09C 02A03025 */  move        $a2, $s5
/* 049C50 8004A0A0 AF20000C */  sw          $zero, 0xc($t9)
/* 049C54 8004A0A4 8E490000 */  lw          $t1, 0x0($s2)
/* 049C58 8004A0A8 8C880004 */  lw          $t0, 0x4($a0)
/* 049C5C 8004A0AC AD280044 */  sw          $t0, 0x44($t1)
/* 049C60 8004A0B0 8E4A0000 */  lw          $t2, 0x0($s2)
/* 049C64 8004A0B4 24090001 */  addiu       $t1, $zero, 0x1
/* 049C68 8004A0B8 AD40002C */  sw          $zero, 0x2c($t2)
/* 049C6C 8004A0BC 8E4B0000 */  lw          $t3, 0x0($s2)
/* 049C70 8004A0C0 AD600028 */  sw          $zero, 0x28($t3)
/* 049C74 8004A0C4 8E4D0000 */  lw          $t5, 0x0($s2)
/* 049C78 8004A0C8 8C8C0018 */  lw          $t4, 0x18($a0)
/* 049C7C 8004A0CC 240B0044 */  addiu       $t3, $zero, 0x44
/* 049C80 8004A0D0 ADAC004C */  sw          $t4, 0x4c($t5)
/* 049C84 8004A0D4 8E4F0000 */  lw          $t7, 0x0($s2)
/* 049C88 8004A0D8 ADEE0050 */  sw          $t6, 0x50($t7)
/* 049C8C 8004A0DC 8E590000 */  lw          $t9, 0x0($s2)
/* 049C90 8004A0E0 8C980010 */  lw          $t8, 0x10($a0)
/* 049C94 8004A0E4 00002025 */  move        $a0, $zero
/* 049C98 8004A0E8 AF380030 */  sw          $t8, 0x30($t9)
/* 049C9C 8004A0EC 8E480000 */  lw          $t0, 0x0($s2)
/* 049CA0 8004A0F0 AD000054 */  sw          $zero, 0x54($t0)
/* 049CA4 8004A0F4 8E4A0000 */  lw          $t2, 0x0($s2)
/* 049CA8 8004A0F8 AD490058 */  sw          $t1, 0x58($t2)
/* 049CAC 8004A0FC 0C0145B0 */  jal         func_800516C0
/* 049CB0 8004A100 AFAB0010 */   sw         $t3, 0x10($sp)
/* 049CB4 8004A104 8E4C0000 */  lw          $t4, 0x0($s2)
/* 049CB8 8004A108 24080004 */  addiu       $t0, $zero, 0x4
/* 049CBC 8004A10C 00002025 */  move        $a0, $zero
/* 049CC0 8004A110 AD820040 */  sw          $v0, 0x40($t4)
/* 049CC4 8004A114 8E4D0000 */  lw          $t5, 0x0($s2)
/* 049CC8 8004A118 00002825 */  move        $a1, $zero
/* 049CCC 8004A11C 02A03025 */  move        $a2, $s5
/* 049CD0 8004A120 8DAE0040 */  lw          $t6, 0x40($t5)
/* 049CD4 8004A124 ADC00014 */  sw          $zero, 0x14($t6)
/* 049CD8 8004A128 8E580000 */  lw          $t8, 0x0($s2)
/* 049CDC 8004A12C 8E8F0004 */  lw          $t7, 0x4($s4)
/* 049CE0 8004A130 8F190040 */  lw          $t9, 0x40($t8)
/* 049CE4 8004A134 AF2F0018 */  sw          $t7, 0x18($t9)
/* 049CE8 8004A138 8E870004 */  lw          $a3, 0x4($s4)
/* 049CEC 8004A13C 0C0145B0 */  jal         func_800516C0
/* 049CF0 8004A140 AFA80010 */   sw         $t0, 0x10($sp)
/* 049CF4 8004A144 8E490000 */  lw          $t1, 0x0($s2)
/* 049CF8 8004A148 240B0014 */  addiu       $t3, $zero, 0x14
/* 049CFC 8004A14C 00002025 */  move        $a0, $zero
/* 049D00 8004A150 8D2A0040 */  lw          $t2, 0x40($t1)
/* 049D04 8004A154 00002825 */  move        $a1, $zero
/* 049D08 8004A158 02A03025 */  move        $a2, $s5
/* 049D0C 8004A15C AD42001C */  sw          $v0, 0x1c($t2)
/* 049D10 8004A160 AFAB0010 */  sw          $t3, 0x10($sp)
/* 049D14 8004A164 0C0145B0 */  jal         func_800516C0
/* 049D18 8004A168 24070001 */   addiu      $a3, $zero, 0x1
/* 049D1C 8004A16C 8E4C0000 */  lw          $t4, 0x0($s2)
/* 049D20 8004A170 00002025 */  move        $a0, $zero
/* 049D24 8004A174 02802825 */  move        $a1, $s4
/* 049D28 8004A178 AD82003C */  sw          $v0, 0x3c($t4)
/* 049D2C 8004A17C 928D001C */  lbu         $t5, 0x1c($s4)
/* 049D30 8004A180 51A0000D */  beql        $t5, $zero, .L8004A1B8
/* 049D34 8004A184 8E4A0000 */   lw         $t2, 0x0($s2)
/* 049D38 8004A188 0C012BAC */  jal         func_8004AEB0
/* 049D3C 8004A18C 02A03025 */   move       $a2, $s5
/* 049D40 8004A190 8E4E0000 */  lw          $t6, 0x0($s2)
/* 049D44 8004A194 3C0F8005 */  lui         $t7, %hi(func_8004B6AC)
/* 049D48 8004A198 25EFB6AC */  addiu       $t7, $t7, %lo(func_8004B6AC)
/* 049D4C 8004A19C 8DD80040 */  lw          $t8, 0x40($t6)
/* 049D50 8004A1A0 AF020020 */  sw          $v0, 0x20($t8)
/* 049D54 8004A1A4 8E590000 */  lw          $t9, 0x0($s2)
/* 049D58 8004A1A8 8F28003C */  lw          $t0, 0x3c($t9)
/* 049D5C 8004A1AC 10000006 */  b           .L8004A1C8
/* 049D60 8004A1B0 AD0F0004 */   sw         $t7, 0x4($t0)
/* 049D64 8004A1B4 8E4A0000 */  lw          $t2, 0x0($s2)
.L8004A1B8:
/* 049D68 8004A1B8 3C098005 */  lui         $t1, %hi(func_8004B9A0)
/* 049D6C 8004A1BC 2529B9A0 */  addiu       $t1, $t1, %lo(func_8004B9A0)
/* 049D70 8004A1C0 8D4B003C */  lw          $t3, 0x3c($t2)
/* 049D74 8004A1C4 AD690004 */  sw          $t1, 0x4($t3)
.L8004A1C8:
/* 049D78 8004A1C8 8E4C0000 */  lw          $t4, 0x0($s2)
/* 049D7C 8004A1CC 2408008C */  addiu       $t0, $zero, 0x8c
/* 049D80 8004A1D0 00002025 */  move        $a0, $zero
/* 049D84 8004A1D4 AD800010 */  sw          $zero, 0x10($t4)
/* 049D88 8004A1D8 8E4D0000 */  lw          $t5, 0x0($s2)
/* 049D8C 8004A1DC 00002825 */  move        $a1, $zero
/* 049D90 8004A1E0 02A03025 */  move        $a2, $s5
/* 049D94 8004A1E4 ADA00014 */  sw          $zero, 0x14($t5)
/* 049D98 8004A1E8 8E4E0000 */  lw          $t6, 0x0($s2)
/* 049D9C 8004A1EC ADC00020 */  sw          $zero, 0x20($t6)
/* 049DA0 8004A1F0 8E580000 */  lw          $t8, 0x0($s2)
/* 049DA4 8004A1F4 AF000024 */  sw          $zero, 0x24($t8)
/* 049DA8 8004A1F8 8E590000 */  lw          $t9, 0x0($s2)
/* 049DAC 8004A1FC AF200018 */  sw          $zero, 0x18($t9)
/* 049DB0 8004A200 8E4F0000 */  lw          $t7, 0x0($s2)
/* 049DB4 8004A204 ADE0001C */  sw          $zero, 0x1c($t7)
/* 049DB8 8004A208 8E870004 */  lw          $a3, 0x4($s4)
/* 049DBC 8004A20C 0C0145B0 */  jal         func_800516C0
/* 049DC0 8004A210 AFA80010 */   sw         $t0, 0x10($sp)
/* 049DC4 8004A214 8E8A0004 */  lw          $t2, 0x4($s4)
/* 049DC8 8004A218 00008825 */  move        $s1, $zero
/* 049DCC 8004A21C 00408025 */  move        $s0, $v0
/* 049DD0 8004A220 59400020 */  blezl       $t2, .L8004A2A4
/* 049DD4 8004A224 8E870008 */   lw         $a3, 0x8($s4)
/* 049DD8 8004A228 8E450000 */  lw          $a1, 0x0($s2)
.L8004A22C:
/* 049DDC 8004A22C 02009825 */  move        $s3, $s0
/* 049DE0 8004A230 02002025 */  move        $a0, $s0
/* 049DE4 8004A234 0C014B98 */  jal         func_80052E60
/* 049DE8 8004A238 24A50010 */   addiu      $a1, $a1, 0x10
/* 049DEC 8004A23C AE000008 */  sw          $zero, 0x8($s0)
/* 049DF0 8004A240 8E490000 */  lw          $t1, 0x0($s2)
/* 049DF4 8004A244 02002025 */  move        $a0, $s0
/* 049DF8 8004A248 02A03025 */  move        $a2, $s5
/* 049DFC 8004A24C 0C012E94 */  jal         func_8004BA50
/* 049E00 8004A250 8D250030 */   lw         $a1, 0x30($t1)
/* 049E04 8004A254 8E4B0000 */  lw          $t3, 0x0($s2)
/* 049E08 8004A258 26310001 */  addiu       $s1, $s1, 0x1
/* 049E0C 8004A25C 2610008C */  addiu       $s0, $s0, 0x8c
/* 049E10 8004A260 8D620040 */  lw          $v0, 0x40($t3)
/* 049E14 8004A264 8C4D0014 */  lw          $t5, 0x14($v0)
/* 049E18 8004A268 8C4C001C */  lw          $t4, 0x1c($v0)
/* 049E1C 8004A26C 000D7080 */  sll         $t6, $t5, 2
/* 049E20 8004A270 018EC021 */  addu        $t8, $t4, $t6
/* 049E24 8004A274 AF130000 */  sw          $s3, 0x0($t8)
/* 049E28 8004A278 8E590000 */  lw          $t9, 0x0($s2)
/* 049E2C 8004A27C 8F220040 */  lw          $v0, 0x40($t9)
/* 049E30 8004A280 8C4F0014 */  lw          $t7, 0x14($v0)
/* 049E34 8004A284 25E80001 */  addiu       $t0, $t7, 0x1
/* 049E38 8004A288 AC480014 */  sw          $t0, 0x14($v0)
/* 049E3C 8004A28C 8E8A0004 */  lw          $t2, 0x4($s4)
/* 049E40 8004A290 022A082A */  slt         $at, $s1, $t2
/* 049E44 8004A294 5420FFE5 */  bnel        $at, $zero, .L8004A22C
/* 049E48 8004A298 8E450000 */   lw         $a1, 0x0($s2)
/* 049E4C 8004A29C 00008825 */  move        $s1, $zero
/* 049E50 8004A2A0 8E870008 */  lw          $a3, 0x8($s4)
.L8004A2A4:
/* 049E54 8004A2A4 2409001C */  addiu       $t1, $zero, 0x1c
/* 049E58 8004A2A8 AFA90010 */  sw          $t1, 0x10($sp)
/* 049E5C 8004A2AC 00002025 */  move        $a0, $zero
/* 049E60 8004A2B0 00002825 */  move        $a1, $zero
/* 049E64 8004A2B4 0C0145B0 */  jal         func_800516C0
/* 049E68 8004A2B8 02A03025 */   move       $a2, $s5
/* 049E6C 8004A2BC 8E4B0000 */  lw          $t3, 0x0($s2)
/* 049E70 8004A2C0 00401825 */  move        $v1, $v0
/* 049E74 8004A2C4 AD600038 */  sw          $zero, 0x38($t3)
/* 049E78 8004A2C8 8E8D0008 */  lw          $t5, 0x8($s4)
/* 049E7C 8004A2CC 59A0000D */  blezl       $t5, .L8004A304
/* 049E80 8004A2D0 8E4F0000 */   lw         $t7, 0x0($s2)
/* 049E84 8004A2D4 8E4C0000 */  lw          $t4, 0x0($s2)
.L8004A2D8:
/* 049E88 8004A2D8 26310001 */  addiu       $s1, $s1, 0x1
/* 049E8C 8004A2DC 8D8E0038 */  lw          $t6, 0x38($t4)
/* 049E90 8004A2E0 AC6E0000 */  sw          $t6, 0x0($v1)
/* 049E94 8004A2E4 8E580000 */  lw          $t8, 0x0($s2)
/* 049E98 8004A2E8 AF030038 */  sw          $v1, 0x38($t8)
/* 049E9C 8004A2EC 8E990008 */  lw          $t9, 0x8($s4)
/* 049EA0 8004A2F0 2463001C */  addiu       $v1, $v1, 0x1c
/* 049EA4 8004A2F4 0239082A */  slt         $at, $s1, $t9
/* 049EA8 8004A2F8 5420FFF7 */  bnel        $at, $zero, .L8004A2D8
/* 049EAC 8004A2FC 8E4C0000 */   lw         $t4, 0x0($s2)
/* 049EB0 8004A300 8E4F0000 */  lw          $t7, 0x0($s2)
.L8004A304:
/* 049EB4 8004A304 ADF50034 */  sw          $s5, 0x34($t7)
/* 049EB8 8004A308 8FBF0034 */  lw          $ra, 0x34($sp)
/* 049EBC 8004A30C 8FB50030 */  lw          $s5, 0x30($sp)
/* 049EC0 8004A310 8FB4002C */  lw          $s4, 0x2c($sp)
/* 049EC4 8004A314 8FB30028 */  lw          $s3, 0x28($sp)
/* 049EC8 8004A318 8FB20024 */  lw          $s2, 0x24($sp)
/* 049ECC 8004A31C 8FB10020 */  lw          $s1, 0x20($sp)
/* 049ED0 8004A320 8FB0001C */  lw          $s0, 0x1c($sp)
/* 049ED4 8004A324 03E00008 */  jr          $ra
/* 049ED8 8004A328 27BD0038 */   addiu      $sp, $sp, 0x38
/* 049EDC 8004A32C 00000000 */  nop