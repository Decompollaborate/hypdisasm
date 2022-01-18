.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel __d_to_ll # 0
/* 0508A0 80050CF0 46206109 */  trunc.l.d   $f4, $f12
/* 0508A4 80050CF4 44222000 */  dmfc1       $v0, $f4
/* 0508A8 80050CF8 00000000 */  nop
/* 0508AC 80050CFC 0002183C */  dsll32      $v1, $v0, 0
/* 0508B0 80050D00 0003183F */  dsra32      $v1, $v1, 0
/* 0508B4 80050D04 03E00008 */  jr          $ra
/* 0508B8 80050D08 0002103F */   dsra32     $v0, $v0, 0

glabel __f_to_ll # 1
/* 0508BC 80050D0C 46006109 */  trunc.l.s   $f4, $f12
/* 0508C0 80050D10 44222000 */  dmfc1       $v0, $f4
/* 0508C4 80050D14 00000000 */  nop
/* 0508C8 80050D18 0002183C */  dsll32      $v1, $v0, 0
/* 0508CC 80050D1C 0003183F */  dsra32      $v1, $v1, 0
/* 0508D0 80050D20 03E00008 */  jr          $ra
/* 0508D4 80050D24 0002103F */   dsra32     $v0, $v0, 0

glabel __d_to_ull # 2
/* 0508D8 80050D28 444EF800 */  cfc1        $t6, FpcCsr
/* 0508DC 80050D2C 24020001 */  addiu       $v0, $zero, 0x1
/* 0508E0 80050D30 44C2F800 */  ctc1        $v0, FpcCsr
/* 0508E4 80050D34 00000000 */  nop
/* 0508E8 80050D38 46206125 */  cvt.l.d     $f4, $f12
/* 0508EC 80050D3C 4442F800 */  cfc1        $v0, FpcCsr
/* 0508F0 80050D40 00000000 */  nop
/* 0508F4 80050D44 30410004 */  andi        $at, $v0, 0x4
/* 0508F8 80050D48 30420078 */  andi        $v0, $v0, 0x78
/* 0508FC 80050D4C 10400015 */  beqz        $v0, .L80050DA4
/* 050900 80050D50 3C0143E0 */   lui        $at, 0x43e0
/* 050904 80050D54 44812800 */  mtc1        $at, $f5
/* 050908 80050D58 44802000 */  mtc1        $zero, $f4
/* 05090C 80050D5C 24020001 */  addiu       $v0, $zero, 0x1
/* 050910 80050D60 46246101 */  sub.d       $f4, $f12, $f4
/* 050914 80050D64 44C2F800 */  ctc1        $v0, FpcCsr
/* 050918 80050D68 00000000 */  nop
/* 05091C 80050D6C 46202125 */  cvt.l.d     $f4, $f4
/* 050920 80050D70 4442F800 */  cfc1        $v0, FpcCsr
/* 050924 80050D74 00000000 */  nop
/* 050928 80050D78 30410004 */  andi        $at, $v0, 0x4
/* 05092C 80050D7C 30420078 */  andi        $v0, $v0, 0x78
/* 050930 80050D80 14400006 */  bnez        $v0, .L80050D9C
/* 050934 80050D84 00000000 */   nop
/* 050938 80050D88 3C0F800B */  lui         $t7, %hi(D_800AC950)
/* 05093C 80050D8C DDEFC950 */  ld          $t7, %lo(D_800AC950)($t7)
/* 050940 80050D90 44222000 */  dmfc1       $v0, $f4
/* 050944 80050D94 10000007 */  b           .L80050DB4
/* 050948 80050D98 004F1025 */   or         $v0, $v0, $t7
.L80050D9C:
/* 05094C 80050D9C 10000005 */  b           .L80050DB4
/* 050950 80050DA0 2402FFFF */   addiu      $v0, $zero, -0x1
.L80050DA4:
/* 050954 80050DA4 44222000 */  dmfc1       $v0, $f4
/* 050958 80050DA8 00000000 */  nop
/* 05095C 80050DAC 0440FFFB */  bltz        $v0, .L80050D9C
/* 050960 80050DB0 00000000 */   nop
.L80050DB4:
/* 050964 80050DB4 44CEF800 */  ctc1        $t6, FpcCsr
/* 050968 80050DB8 0002183C */  dsll32      $v1, $v0, 0
/* 05096C 80050DBC 0003183F */  dsra32      $v1, $v1, 0
/* 050970 80050DC0 03E00008 */  jr          $ra
/* 050974 80050DC4 0002103F */   dsra32     $v0, $v0, 0

glabel __f_to_ull # 3
/* 050978 80050DC8 444EF800 */  cfc1        $t6, FpcCsr
/* 05097C 80050DCC 24020001 */  addiu       $v0, $zero, 0x1
/* 050980 80050DD0 44C2F800 */  ctc1        $v0, FpcCsr
/* 050984 80050DD4 00000000 */  nop
/* 050988 80050DD8 46006125 */  cvt.l.s     $f4, $f12
/* 05098C 80050DDC 4442F800 */  cfc1        $v0, FpcCsr
/* 050990 80050DE0 00000000 */  nop
/* 050994 80050DE4 30410004 */  andi        $at, $v0, 0x4
/* 050998 80050DE8 30420078 */  andi        $v0, $v0, 0x78
/* 05099C 80050DEC 10400014 */  beqz        $v0, .L80050E40
/* 0509A0 80050DF0 3C015F00 */   lui        $at, 0x5f00
/* 0509A4 80050DF4 44812000 */  mtc1        $at, $f4
/* 0509A8 80050DF8 24020001 */  addiu       $v0, $zero, 0x1
/* 0509AC 80050DFC 46046101 */  sub.s       $f4, $f12, $f4
/* 0509B0 80050E00 44C2F800 */  ctc1        $v0, FpcCsr
/* 0509B4 80050E04 00000000 */  nop
/* 0509B8 80050E08 46002125 */  cvt.l.s     $f4, $f4
/* 0509BC 80050E0C 4442F800 */  cfc1        $v0, FpcCsr
/* 0509C0 80050E10 00000000 */  nop
/* 0509C4 80050E14 30410004 */  andi        $at, $v0, 0x4
/* 0509C8 80050E18 30420078 */  andi        $v0, $v0, 0x78
/* 0509CC 80050E1C 14400006 */  bnez        $v0, .L80050E38
/* 0509D0 80050E20 00000000 */   nop
/* 0509D4 80050E24 3C0F800B */  lui         $t7, %hi(D_800AC958)
/* 0509D8 80050E28 DDEFC958 */  ld          $t7, %lo(D_800AC958)($t7)
/* 0509DC 80050E2C 44222000 */  dmfc1       $v0, $f4
/* 0509E0 80050E30 10000007 */  b           .L80050E50
/* 0509E4 80050E34 004F1025 */   or         $v0, $v0, $t7
.L80050E38:
/* 0509E8 80050E38 10000005 */  b           .L80050E50
/* 0509EC 80050E3C 2402FFFF */   addiu      $v0, $zero, -0x1
.L80050E40:
/* 0509F0 80050E40 44222000 */  dmfc1       $v0, $f4
/* 0509F4 80050E44 00000000 */  nop
/* 0509F8 80050E48 0440FFFB */  bltz        $v0, .L80050E38
/* 0509FC 80050E4C 00000000 */   nop
.L80050E50:
/* 050A00 80050E50 44CEF800 */  ctc1        $t6, FpcCsr
/* 050A04 80050E54 0002183C */  dsll32      $v1, $v0, 0
/* 050A08 80050E58 0003183F */  dsra32      $v1, $v1, 0
/* 050A0C 80050E5C 03E00008 */  jr          $ra
/* 050A10 80050E60 0002103F */   dsra32     $v0, $v0, 0

glabel __ll_to_d # 4
/* 050A14 80050E64 AFA40000 */  sw          $a0, 0x0($sp)
/* 050A18 80050E68 AFA50004 */  sw          $a1, 0x4($sp)
/* 050A1C 80050E6C DFAE0000 */  ld          $t6, 0x0($sp)
/* 050A20 80050E70 44AE2000 */  dmtc1       $t6, $f4
/* 050A24 80050E74 03E00008 */  jr          $ra
/* 050A28 80050E78 46A02021 */   cvt.d.l    $f0, $f4

glabel __ll_to_f # 5
/* 050A2C 80050E7C AFA40000 */  sw          $a0, 0x0($sp)
/* 050A30 80050E80 AFA50004 */  sw          $a1, 0x4($sp)
/* 050A34 80050E84 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050A38 80050E88 44AE2000 */  dmtc1       $t6, $f4
/* 050A3C 80050E8C 03E00008 */  jr          $ra
/* 050A40 80050E90 46A02020 */   cvt.s.l    $f0, $f4

glabel __ull_to_d # 6
/* 050A44 80050E94 AFA40000 */  sw          $a0, 0x0($sp)
/* 050A48 80050E98 AFA50004 */  sw          $a1, 0x4($sp)
/* 050A4C 80050E9C DFAE0000 */  ld          $t6, 0x0($sp)
/* 050A50 80050EA0 44AE2000 */  dmtc1       $t6, $f4
/* 050A54 80050EA4 05C10006 */  bgez        $t6, .L80050EC0
/* 050A58 80050EA8 46A02021 */   cvt.d.l    $f0, $f4
/* 050A5C 80050EAC 3C0141F0 */  lui         $at, 0x41f0
/* 050A60 80050EB0 44813800 */  mtc1        $at, $f7
/* 050A64 80050EB4 44803000 */  mtc1        $zero, $f6
/* 050A68 80050EB8 00000000 */  nop
/* 050A6C 80050EBC 46260000 */  add.d       $f0, $f0, $f6
.L80050EC0:
/* 050A70 80050EC0 03E00008 */  jr          $ra
/* 050A74 80050EC4 00000000 */   nop

glabel __ull_to_f # 7
/* 050A78 80050EC8 AFA40000 */  sw          $a0, 0x0($sp)
/* 050A7C 80050ECC AFA50004 */  sw          $a1, 0x4($sp)
/* 050A80 80050ED0 DFAE0000 */  ld          $t6, 0x0($sp)
/* 050A84 80050ED4 44AE2000 */  dmtc1       $t6, $f4
/* 050A88 80050ED8 05C10005 */  bgez        $t6, .L80050EF0
/* 050A8C 80050EDC 46A02020 */   cvt.s.l    $f0, $f4
/* 050A90 80050EE0 3C014F80 */  lui         $at, 0x4f80
/* 050A94 80050EE4 44813000 */  mtc1        $at, $f6
/* 050A98 80050EE8 00000000 */  nop
/* 050A9C 80050EEC 46060000 */  add.s       $f0, $f0, $f6
.L80050EF0:
/* 050AA0 80050EF0 03E00008 */  jr          $ra
/* 050AA4 80050EF4 00000000 */   nop
/* 050AA8 80050EF8 00000000 */  nop
/* 050AAC 80050EFC 00000000 */  nop
