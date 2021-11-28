.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel bcopy # 0
/* 04F5C0 8004FA10 10C0001A */  beqz        $a2, .L8004FA7C
/* 04F5C4 8004FA14 00A03825 */   move       $a3, $a1
/* 04F5C8 8004FA18 10850018 */  beq         $a0, $a1, .L8004FA7C
/* 04F5CC 8004FA1C 00A4082A */   slt        $at, $a1, $a0
/* 04F5D0 8004FA20 54200008 */  bnel        $at, $zero, .L8004FA44
/* 04F5D4 8004FA24 28C10010 */   slti       $at, $a2, 0x10
/* 04F5D8 8004FA28 00861020 */  add         $v0, $a0, $a2
/* 04F5DC 8004FA2C 00A2082A */  slt         $at, $a1, $v0
/* 04F5E0 8004FA30 50200004 */  beql        $at, $zero, .L8004FA44
/* 04F5E4 8004FA34 28C10010 */   slti       $at, $a2, 0x10
/* 04F5E8 8004FA38 1000005B */  b           .L8004FBA8
/* 04F5EC 8004FA3C 28C10010 */   slti       $at, $a2, 0x10
/* 04F5F0 8004FA40 28C10010 */  slti        $at, $a2, 0x10
.L8004FA44:
/* 04F5F4 8004FA44 14200005 */  bnez        $at, .L8004FA5C
/* 04F5F8 8004FA48 00000000 */   nop
/* 04F5FC 8004FA4C 30820003 */  andi        $v0, $a0, 0x3
/* 04F600 8004FA50 30A30003 */  andi        $v1, $a1, 0x3
/* 04F604 8004FA54 1043000B */  beq         $v0, $v1, .L8004FA84
/* 04F608 8004FA58 00000000 */   nop
.L8004FA5C:
/* 04F60C 8004FA5C 10C00007 */  beqz        $a2, .L8004FA7C
/* 04F610 8004FA60 00000000 */   nop
/* 04F614 8004FA64 00861821 */  addu        $v1, $a0, $a2
.L8004FA68:
/* 04F618 8004FA68 80820000 */  lb          $v0, 0x0($a0)
/* 04F61C 8004FA6C 24840001 */  addiu       $a0, $a0, 0x1
/* 04F620 8004FA70 24A50001 */  addiu       $a1, $a1, 0x1
/* 04F624 8004FA74 1483FFFC */  bne         $a0, $v1, .L8004FA68
/* 04F628 8004FA78 A0A2FFFF */   sb         $v0, -0x1($a1)
.L8004FA7C:
/* 04F62C 8004FA7C 03E00008 */  jr          $ra
/* 04F630 8004FA80 00E01025 */   move       $v0, $a3
.L8004FA84:
/* 04F634 8004FA84 10400018 */  beqz        $v0, .L8004FAE8
/* 04F638 8004FA88 24010001 */   addiu      $at, $zero, 0x1
/* 04F63C 8004FA8C 1041000F */  beq         $v0, $at, .L8004FACC
/* 04F640 8004FA90 24010002 */   addiu      $at, $zero, 0x2
/* 04F644 8004FA94 50410008 */  beql        $v0, $at, .L8004FAB8
/* 04F648 8004FA98 84820000 */   lh         $v0, 0x0($a0)
/* 04F64C 8004FA9C 80820000 */  lb          $v0, 0x0($a0)
/* 04F650 8004FAA0 24840001 */  addiu       $a0, $a0, 0x1
/* 04F654 8004FAA4 24A50001 */  addiu       $a1, $a1, 0x1
/* 04F658 8004FAA8 24C6FFFF */  addiu       $a2, $a2, -0x1
/* 04F65C 8004FAAC 1000000E */  b           .L8004FAE8
/* 04F660 8004FAB0 A0A2FFFF */   sb         $v0, -0x1($a1)
/* 04F664 8004FAB4 84820000 */  lh          $v0, 0x0($a0)
.L8004FAB8:
/* 04F668 8004FAB8 24840002 */  addiu       $a0, $a0, 0x2
/* 04F66C 8004FABC 24A50002 */  addiu       $a1, $a1, 0x2
/* 04F670 8004FAC0 24C6FFFE */  addiu       $a2, $a2, -0x2
/* 04F674 8004FAC4 10000008 */  b           .L8004FAE8
/* 04F678 8004FAC8 A4A2FFFE */   sh         $v0, -0x2($a1)
.L8004FACC:
/* 04F67C 8004FACC 80820000 */  lb          $v0, 0x0($a0)
/* 04F680 8004FAD0 84830001 */  lh          $v1, 0x1($a0)
/* 04F684 8004FAD4 24840003 */  addiu       $a0, $a0, 0x3
/* 04F688 8004FAD8 24A50003 */  addiu       $a1, $a1, 0x3
/* 04F68C 8004FADC 24C6FFFD */  addiu       $a2, $a2, -0x3
/* 04F690 8004FAE0 A0A2FFFD */  sb          $v0, -0x3($a1)
/* 04F694 8004FAE4 A4A3FFFE */  sh          $v1, -0x2($a1)
.L8004FAE8:
/* 04F698 8004FAE8 28C10020 */  slti        $at, $a2, 0x20
/* 04F69C 8004FAEC 54200016 */  bnel        $at, $zero, .L8004FB48
/* 04F6A0 8004FAF0 28C10010 */   slti       $at, $a2, 0x10
/* 04F6A4 8004FAF4 8C820000 */  lw          $v0, 0x0($a0)
/* 04F6A8 8004FAF8 8C830004 */  lw          $v1, 0x4($a0)
/* 04F6AC 8004FAFC 8C880008 */  lw          $t0, 0x8($a0)
/* 04F6B0 8004FB00 8C89000C */  lw          $t1, 0xc($a0)
/* 04F6B4 8004FB04 8C8A0010 */  lw          $t2, 0x10($a0)
/* 04F6B8 8004FB08 8C8B0014 */  lw          $t3, 0x14($a0)
/* 04F6BC 8004FB0C 8C8C0018 */  lw          $t4, 0x18($a0)
/* 04F6C0 8004FB10 8C8D001C */  lw          $t5, 0x1c($a0)
/* 04F6C4 8004FB14 24840020 */  addiu       $a0, $a0, 0x20
/* 04F6C8 8004FB18 24A50020 */  addiu       $a1, $a1, 0x20
/* 04F6CC 8004FB1C 24C6FFE0 */  addiu       $a2, $a2, -0x20
/* 04F6D0 8004FB20 ACA2FFE0 */  sw          $v0, -0x20($a1)
/* 04F6D4 8004FB24 ACA3FFE4 */  sw          $v1, -0x1c($a1)
/* 04F6D8 8004FB28 ACA8FFE8 */  sw          $t0, -0x18($a1)
/* 04F6DC 8004FB2C ACA9FFEC */  sw          $t1, -0x14($a1)
/* 04F6E0 8004FB30 ACAAFFF0 */  sw          $t2, -0x10($a1)
/* 04F6E4 8004FB34 ACABFFF4 */  sw          $t3, -0xc($a1)
/* 04F6E8 8004FB38 ACACFFF8 */  sw          $t4, -0x8($a1)
/* 04F6EC 8004FB3C 1000FFEA */  b           .L8004FAE8
/* 04F6F0 8004FB40 ACADFFFC */   sw         $t5, -0x4($a1)
.L8004FB44:
/* 04F6F4 8004FB44 28C10010 */  slti        $at, $a2, 0x10
.L8004FB48:
/* 04F6F8 8004FB48 5420000E */  bnel        $at, $zero, .L8004FB84
/* 04F6FC 8004FB4C 28C10004 */   slti       $at, $a2, 0x4
/* 04F700 8004FB50 8C820000 */  lw          $v0, 0x0($a0)
/* 04F704 8004FB54 8C830004 */  lw          $v1, 0x4($a0)
/* 04F708 8004FB58 8C880008 */  lw          $t0, 0x8($a0)
/* 04F70C 8004FB5C 8C89000C */  lw          $t1, 0xc($a0)
/* 04F710 8004FB60 24840010 */  addiu       $a0, $a0, 0x10
/* 04F714 8004FB64 24A50010 */  addiu       $a1, $a1, 0x10
/* 04F718 8004FB68 24C6FFF0 */  addiu       $a2, $a2, -0x10
/* 04F71C 8004FB6C ACA2FFF0 */  sw          $v0, -0x10($a1)
/* 04F720 8004FB70 ACA3FFF4 */  sw          $v1, -0xc($a1)
/* 04F724 8004FB74 ACA8FFF8 */  sw          $t0, -0x8($a1)
/* 04F728 8004FB78 1000FFF2 */  b           .L8004FB44
/* 04F72C 8004FB7C ACA9FFFC */   sw         $t1, -0x4($a1)
.L8004FB80:
/* 04F730 8004FB80 28C10004 */  slti        $at, $a2, 0x4
.L8004FB84:
/* 04F734 8004FB84 1420FFB5 */  bnez        $at, .L8004FA5C
/* 04F738 8004FB88 00000000 */   nop
/* 04F73C 8004FB8C 8C820000 */  lw          $v0, 0x0($a0)
/* 04F740 8004FB90 24840004 */  addiu       $a0, $a0, 0x4
/* 04F744 8004FB94 24A50004 */  addiu       $a1, $a1, 0x4
/* 04F748 8004FB98 24C6FFFC */  addiu       $a2, $a2, -0x4
/* 04F74C 8004FB9C 1000FFF8 */  b           .L8004FB80
/* 04F750 8004FBA0 ACA2FFFC */   sw         $v0, -0x4($a1)
/* 04F754 8004FBA4 28C10010 */  slti        $at, $a2, 0x10
.L8004FBA8:
/* 04F758 8004FBA8 00862020 */  add         $a0, $a0, $a2
/* 04F75C 8004FBAC 14200005 */  bnez        $at, .L8004FBC4
/* 04F760 8004FBB0 00A62820 */   add        $a1, $a1, $a2
/* 04F764 8004FBB4 30820003 */  andi        $v0, $a0, 0x3
/* 04F768 8004FBB8 30A30003 */  andi        $v1, $a1, 0x3
/* 04F76C 8004FBBC 1043000D */  beq         $v0, $v1, .L8004FBF4
/* 04F770 8004FBC0 00000000 */   nop
.L8004FBC4:
/* 04F774 8004FBC4 10C0FFAD */  beqz        $a2, .L8004FA7C
/* 04F778 8004FBC8 00000000 */   nop
/* 04F77C 8004FBCC 2484FFFF */  addiu       $a0, $a0, -0x1
/* 04F780 8004FBD0 24A5FFFF */  addiu       $a1, $a1, -0x1
/* 04F784 8004FBD4 00861823 */  subu        $v1, $a0, $a2
.L8004FBD8:
/* 04F788 8004FBD8 80820000 */  lb          $v0, 0x0($a0)
/* 04F78C 8004FBDC 2484FFFF */  addiu       $a0, $a0, -0x1
/* 04F790 8004FBE0 24A5FFFF */  addiu       $a1, $a1, -0x1
/* 04F794 8004FBE4 1483FFFC */  bne         $a0, $v1, .L8004FBD8
/* 04F798 8004FBE8 A0A20001 */   sb         $v0, 0x1($a1)
/* 04F79C 8004FBEC 03E00008 */  jr          $ra
/* 04F7A0 8004FBF0 00E01025 */   move       $v0, $a3
.L8004FBF4:
/* 04F7A4 8004FBF4 10400018 */  beqz        $v0, .L8004FC58
/* 04F7A8 8004FBF8 24010003 */   addiu      $at, $zero, 0x3
/* 04F7AC 8004FBFC 1041000F */  beq         $v0, $at, .L8004FC3C
/* 04F7B0 8004FC00 24010002 */   addiu      $at, $zero, 0x2
/* 04F7B4 8004FC04 50410008 */  beql        $v0, $at, .L8004FC28
/* 04F7B8 8004FC08 8482FFFE */   lh         $v0, -0x2($a0)
/* 04F7BC 8004FC0C 8082FFFF */  lb          $v0, -0x1($a0)
/* 04F7C0 8004FC10 2484FFFF */  addiu       $a0, $a0, -0x1
/* 04F7C4 8004FC14 24A5FFFF */  addiu       $a1, $a1, -0x1
/* 04F7C8 8004FC18 24C6FFFF */  addiu       $a2, $a2, -0x1
/* 04F7CC 8004FC1C 1000000E */  b           .L8004FC58
/* 04F7D0 8004FC20 A0A20000 */   sb         $v0, 0x0($a1)
/* 04F7D4 8004FC24 8482FFFE */  lh          $v0, -0x2($a0)
.L8004FC28:
/* 04F7D8 8004FC28 2484FFFE */  addiu       $a0, $a0, -0x2
/* 04F7DC 8004FC2C 24A5FFFE */  addiu       $a1, $a1, -0x2
/* 04F7E0 8004FC30 24C6FFFE */  addiu       $a2, $a2, -0x2
/* 04F7E4 8004FC34 10000008 */  b           .L8004FC58
/* 04F7E8 8004FC38 A4A20000 */   sh         $v0, 0x0($a1)
.L8004FC3C:
/* 04F7EC 8004FC3C 8082FFFF */  lb          $v0, -0x1($a0)
/* 04F7F0 8004FC40 8483FFFD */  lh          $v1, -0x3($a0)
/* 04F7F4 8004FC44 2484FFFD */  addiu       $a0, $a0, -0x3
/* 04F7F8 8004FC48 24A5FFFD */  addiu       $a1, $a1, -0x3
/* 04F7FC 8004FC4C 24C6FFFD */  addiu       $a2, $a2, -0x3
/* 04F800 8004FC50 A0A20002 */  sb          $v0, 0x2($a1)
/* 04F804 8004FC54 A4A30000 */  sh          $v1, 0x0($a1)
.L8004FC58:
/* 04F808 8004FC58 28C10020 */  slti        $at, $a2, 0x20
/* 04F80C 8004FC5C 54200016 */  bnel        $at, $zero, .L8004FCB8
/* 04F810 8004FC60 28C10010 */   slti       $at, $a2, 0x10
/* 04F814 8004FC64 8C82FFFC */  lw          $v0, -0x4($a0)
/* 04F818 8004FC68 8C83FFF8 */  lw          $v1, -0x8($a0)
/* 04F81C 8004FC6C 8C88FFF4 */  lw          $t0, -0xc($a0)
/* 04F820 8004FC70 8C89FFF0 */  lw          $t1, -0x10($a0)
/* 04F824 8004FC74 8C8AFFEC */  lw          $t2, -0x14($a0)
/* 04F828 8004FC78 8C8BFFE8 */  lw          $t3, -0x18($a0)
/* 04F82C 8004FC7C 8C8CFFE4 */  lw          $t4, -0x1c($a0)
/* 04F830 8004FC80 8C8DFFE0 */  lw          $t5, -0x20($a0)
/* 04F834 8004FC84 2484FFE0 */  addiu       $a0, $a0, -0x20
/* 04F838 8004FC88 24A5FFE0 */  addiu       $a1, $a1, -0x20
/* 04F83C 8004FC8C 24C6FFE0 */  addiu       $a2, $a2, -0x20
/* 04F840 8004FC90 ACA2001C */  sw          $v0, 0x1c($a1)
/* 04F844 8004FC94 ACA30018 */  sw          $v1, 0x18($a1)
/* 04F848 8004FC98 ACA80014 */  sw          $t0, 0x14($a1)
/* 04F84C 8004FC9C ACA90010 */  sw          $t1, 0x10($a1)
/* 04F850 8004FCA0 ACAA000C */  sw          $t2, 0xc($a1)
/* 04F854 8004FCA4 ACAB0008 */  sw          $t3, 0x8($a1)
/* 04F858 8004FCA8 ACAC0004 */  sw          $t4, 0x4($a1)
/* 04F85C 8004FCAC 1000FFEA */  b           .L8004FC58
/* 04F860 8004FCB0 ACAD0000 */   sw         $t5, 0x0($a1)
.L8004FCB4:
/* 04F864 8004FCB4 28C10010 */  slti        $at, $a2, 0x10
.L8004FCB8:
/* 04F868 8004FCB8 5420000E */  bnel        $at, $zero, .L8004FCF4
/* 04F86C 8004FCBC 28C10004 */   slti       $at, $a2, 0x4
/* 04F870 8004FCC0 8C82FFFC */  lw          $v0, -0x4($a0)
/* 04F874 8004FCC4 8C83FFF8 */  lw          $v1, -0x8($a0)
/* 04F878 8004FCC8 8C88FFF4 */  lw          $t0, -0xc($a0)
/* 04F87C 8004FCCC 8C89FFF0 */  lw          $t1, -0x10($a0)
/* 04F880 8004FCD0 2484FFF0 */  addiu       $a0, $a0, -0x10
/* 04F884 8004FCD4 24A5FFF0 */  addiu       $a1, $a1, -0x10
/* 04F888 8004FCD8 24C6FFF0 */  addiu       $a2, $a2, -0x10
/* 04F88C 8004FCDC ACA2000C */  sw          $v0, 0xc($a1)
/* 04F890 8004FCE0 ACA30008 */  sw          $v1, 0x8($a1)
/* 04F894 8004FCE4 ACA80004 */  sw          $t0, 0x4($a1)
/* 04F898 8004FCE8 1000FFF2 */  b           .L8004FCB4
/* 04F89C 8004FCEC ACA90000 */   sw         $t1, 0x0($a1)
.L8004FCF0:
/* 04F8A0 8004FCF0 28C10004 */  slti        $at, $a2, 0x4
.L8004FCF4:
/* 04F8A4 8004FCF4 1420FFB3 */  bnez        $at, .L8004FBC4
/* 04F8A8 8004FCF8 00000000 */   nop
/* 04F8AC 8004FCFC 8C82FFFC */  lw          $v0, -0x4($a0)
/* 04F8B0 8004FD00 2484FFFC */  addiu       $a0, $a0, -0x4
/* 04F8B4 8004FD04 24A5FFFC */  addiu       $a1, $a1, -0x4
/* 04F8B8 8004FD08 24C6FFFC */  addiu       $a2, $a2, -0x4
/* 04F8BC 8004FD0C 1000FFF8 */  b           .L8004FCF0
/* 04F8C0 8004FD10 ACA20000 */   sw         $v0, 0x0($a1)
/* 04F8C4 8004FD14 00000000 */  nop
/* 04F8C8 8004FD18 00000000 */  nop
/* 04F8CC 8004FD1C 00000000 */  nop

glabel func_8004FD20 # 1
/* 04F8D0 8004FD20 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 04F8D4 8004FD24 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04F8D8 8004FD28 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04F8DC 8004FD2C AFB20020 */  sw          $s2, 0x20($sp)
/* 04F8E0 8004FD30 AFB00018 */  sw          $s0, 0x18($sp)
/* 04F8E4 8004FD34 3C118010 */  lui         $s1, %hi(D_801024D0)
/* 04F8E8 8004FD38 00C08025 */  move        $s0, $a2
/* 04F8EC 8004FD3C 00809025 */  move        $s2, $a0
/* 04F8F0 8004FD40 AFA50054 */  sw          $a1, 0x54($sp)
/* 04F8F4 8004FD44 0C0150EC */  jal         func_800543B0
/* 04F8F8 8004FD48 263124D0 */   addiu      $s1, $s1, %lo(D_801024D0)
/* 04F8FC 8004FD4C 02402025 */  move        $a0, $s2
/* 04F900 8004FD50 0C014065 */  jal         func_80050194
/* 04F904 8004FD54 27A5003C */   addiu      $a1, $sp, 0x3c
/* 04F908 8004FD58 14400015 */  bnez        $v0, .L8004FDB0
/* 04F90C 8004FD5C 00402025 */   move       $a0, $v0
/* 04F910 8004FD60 97AE003C */  lhu         $t6, 0x3c($sp)
/* 04F914 8004FD64 34018000 */  ori         $at, $zero, 0x8000
/* 04F918 8004FD68 93B80057 */  lbu         $t8, 0x57($sp)
/* 04F91C 8004FD6C 31CFC000 */  andi        $t7, $t6, 0xc000
/* 04F920 8004FD70 11E10005 */  beq         $t7, $at, .L8004FD88
/* 04F924 8004FD74 3401C000 */   ori        $at, $zero, 0xc000
/* 04F928 8004FD78 11E10008 */  beq         $t7, $at, .L8004FD9C
/* 04F92C 8004FD7C 93B90057 */   lbu        $t9, 0x57($sp)
/* 04F930 8004FD80 1000000B */  b           .L8004FDB0
/* 04F934 8004FD84 24040008 */   addiu      $a0, $zero, 0x8
.L8004FD88:
/* 04F938 8004FD88 2B010040 */  slti        $at, $t8, 0x40
/* 04F93C 8004FD8C 14200008 */  bnez        $at, .L8004FDB0
/* 04F940 8004FD90 00000000 */   nop
/* 04F944 8004FD94 10000006 */  b           .L8004FDB0
/* 04F948 8004FD98 2404FFFF */   addiu      $a0, $zero, -0x1
.L8004FD9C:
/* 04F94C 8004FD9C 2B210100 */  slti        $at, $t9, 0x100
/* 04F950 8004FDA0 14200003 */  bnez        $at, .L8004FDB0
/* 04F954 8004FDA4 00000000 */   nop
/* 04F958 8004FDA8 10000001 */  b           .L8004FDB0
/* 04F95C 8004FDAC 2404FFFF */   addiu      $a0, $zero, -0x1
.L8004FDB0:
/* 04F960 8004FDB0 10800005 */  beqz        $a0, .L8004FDC8
/* 04F964 8004FDB4 93A8003E */   lbu        $t0, 0x3e($sp)
/* 04F968 8004FDB8 0C0150FD */  jal         func_800543F4
/* 04F96C 8004FDBC AFA4004C */   sw         $a0, 0x4c($sp)
/* 04F970 8004FDC0 10000042 */  b           .L8004FECC
/* 04F974 8004FDC4 8FA2004C */   lw         $v0, 0x4c($sp)
.L8004FDC8:
/* 04F978 8004FDC8 31090080 */  andi        $t1, $t0, 0x80
/* 04F97C 8004FDCC 11200007 */  beqz        $t1, .L8004FDEC
/* 04F980 8004FDD0 02402025 */   move       $a0, $s2
.L8004FDD4:
/* 04F984 8004FDD4 0C014065 */  jal         func_80050194
/* 04F988 8004FDD8 27A5003C */   addiu      $a1, $sp, 0x3c
/* 04F98C 8004FDDC 93AA003E */  lbu         $t2, 0x3e($sp)
/* 04F990 8004FDE0 314B0080 */  andi        $t3, $t2, 0x80
/* 04F994 8004FDE4 5560FFFB */  bnel        $t3, $zero, .L8004FDD4
/* 04F998 8004FDE8 02402025 */   move       $a0, $s2
.L8004FDEC:
/* 04F99C 8004FDEC 0C013FB9 */  jal         func_8004FEE4
/* 04F9A0 8004FDF0 93A40057 */   lbu        $a0, 0x57($sp)
/* 04F9A4 8004FDF4 3C058010 */  lui         $a1, %hi(D_801024D0)
/* 04F9A8 8004FDF8 24A524D0 */  addiu       $a1, $a1, %lo(D_801024D0)
/* 04F9AC 8004FDFC 0C015108 */  jal         func_80054420
/* 04F9B0 8004FE00 24040001 */   addiu      $a0, $zero, 0x1
/* 04F9B4 8004FE04 02402025 */  move        $a0, $s2
/* 04F9B8 8004FE08 00002825 */  move        $a1, $zero
/* 04F9BC 8004FE0C 0C013A48 */  jal         func_8004E920
/* 04F9C0 8004FE10 24060001 */   addiu      $a2, $zero, 0x1
/* 04F9C4 8004FE14 3C058010 */  lui         $a1, %hi(D_801024D0)
/* 04F9C8 8004FE18 24A524D0 */  addiu       $a1, $a1, %lo(D_801024D0)
/* 04F9CC 8004FE1C 0C015108 */  jal         func_80054420
/* 04F9D0 8004FE20 00002025 */   move       $a0, $zero
/* 04F9D4 8004FE24 240C0004 */  addiu       $t4, $zero, 0x4
/* 04F9D8 8004FE28 3C018010 */  lui         $at, %hi(D_80102380)
/* 04F9DC 8004FE2C A02C2380 */  sb          $t4, %lo(D_80102380)($at)
/* 04F9E0 8004FE30 02402025 */  move        $a0, $s2
/* 04F9E4 8004FE34 00002825 */  move        $a1, $zero
/* 04F9E8 8004FE38 0C013A48 */  jal         func_8004E920
/* 04F9EC 8004FE3C 24060001 */   addiu      $a2, $zero, 0x1
/* 04F9F0 8004FE40 00001825 */  move        $v1, $zero
.L8004FE44:
/* 04F9F4 8004FE44 24630001 */  addiu       $v1, $v1, 0x1
/* 04F9F8 8004FE48 28610004 */  slti        $at, $v1, 0x4
/* 04F9FC 8004FE4C 1420FFFD */  bnez        $at, .L8004FE44
/* 04FA00 8004FE50 26310001 */   addiu      $s1, $s1, 0x1
/* 04FA04 8004FE54 8A210000 */  lwl         $at, 0x0($s1)
/* 04FA08 8004FE58 9A210003 */  lwr         $at, 0x3($s1)
/* 04FA0C 8004FE5C 27AD0030 */  addiu       $t5, $sp, 0x30
/* 04FA10 8004FE60 27A30038 */  addiu       $v1, $sp, 0x38
/* 04FA14 8004FE64 ADA10000 */  sw          $at, 0x0($t5)
/* 04FA18 8004FE68 8A2F0004 */  lwl         $t7, 0x4($s1)
/* 04FA1C 8004FE6C 9A2F0007 */  lwr         $t7, 0x7($s1)
/* 04FA20 8004FE70 ADAF0004 */  sw          $t7, 0x4($t5)
/* 04FA24 8004FE74 8A210008 */  lwl         $at, 0x8($s1)
/* 04FA28 8004FE78 9A21000B */  lwr         $at, 0xb($s1)
/* 04FA2C 8004FE7C ADA10008 */  sw          $at, 0x8($t5)
/* 04FA30 8004FE80 93A20031 */  lbu         $v0, 0x31($sp)
/* 04FA34 8004FE84 305800C0 */  andi        $t8, $v0, 0xc0
/* 04FA38 8004FE88 00182103 */  sra         $a0, $t8, 4
/* 04FA3C 8004FE8C 1480000C */  bnez        $a0, .L8004FEC0
/* 04FA40 8004FE90 27A20030 */   addiu      $v0, $sp, 0x30
.L8004FE94:
/* 04FA44 8004FE94 90480004 */  lbu         $t0, 0x4($v0)
/* 04FA48 8004FE98 24420004 */  addiu       $v0, $v0, 0x4
/* 04FA4C 8004FE9C 26100004 */  addiu       $s0, $s0, 0x4
/* 04FA50 8004FEA0 A208FFFC */  sb          $t0, -0x4($s0)
/* 04FA54 8004FEA4 90490001 */  lbu         $t1, 0x1($v0)
/* 04FA58 8004FEA8 A209FFFD */  sb          $t1, -0x3($s0)
/* 04FA5C 8004FEAC 904A0002 */  lbu         $t2, 0x2($v0)
/* 04FA60 8004FEB0 A20AFFFE */  sb          $t2, -0x2($s0)
/* 04FA64 8004FEB4 904B0003 */  lbu         $t3, 0x3($v0)
/* 04FA68 8004FEB8 1443FFF6 */  bne         $v0, $v1, .L8004FE94
/* 04FA6C 8004FEBC A20BFFFF */   sb         $t3, -0x1($s0)
.L8004FEC0:
/* 04FA70 8004FEC0 0C0150FD */  jal         func_800543F4
/* 04FA74 8004FEC4 AFA4004C */   sw         $a0, 0x4c($sp)
/* 04FA78 8004FEC8 8FA2004C */  lw          $v0, 0x4c($sp)
.L8004FECC:
/* 04FA7C 8004FECC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04FA80 8004FED0 8FB00018 */  lw          $s0, 0x18($sp)
/* 04FA84 8004FED4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04FA88 8004FED8 8FB20020 */  lw          $s2, 0x20($sp)
/* 04FA8C 8004FEDC 03E00008 */  jr          $ra
/* 04FA90 8004FEE0 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8004FEE4 # 2
/* 04FA94 8004FEE4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04FA98 8004FEE8 3C038010 */  lui         $v1, %hi(D_801024D0)
/* 04FA9C 8004FEEC 246324D0 */  addiu       $v1, $v1, %lo(D_801024D0)
/* 04FAA0 8004FEF0 240F0001 */  addiu       $t7, $zero, 0x1
/* 04FAA4 8004FEF4 AC6F003C */  sw          $t7, 0x3c($v1)
/* 04FAA8 8004FEF8 24180002 */  addiu       $t8, $zero, 0x2
/* 04FAAC 8004FEFC 24190008 */  addiu       $t9, $zero, 0x8
/* 04FAB0 8004FF00 24080004 */  addiu       $t0, $zero, 0x4
/* 04FAB4 8004FF04 3C018010 */  lui         $at, %hi(D_801024D0)
/* 04FAB8 8004FF08 3C028010 */  lui         $v0, %hi(D_801024D0 + 0x1)
/* 04FABC 8004FF0C AFA40018 */  sw          $a0, 0x18($sp)
/* 04FAC0 8004FF10 A3B80008 */  sb          $t8, 0x8($sp)
/* 04FAC4 8004FF14 A3B90009 */  sb          $t9, 0x9($sp)
/* 04FAC8 8004FF18 A3A8000A */  sb          $t0, 0xa($sp)
/* 04FACC 8004FF1C A3A4000B */  sb          $a0, 0xb($sp)
/* 04FAD0 8004FF20 244224D1 */  addiu       $v0, $v0, %lo(D_801024D0 + 0x1)
/* 04FAD4 8004FF24 A02024D0 */  sb          $zero, %lo(D_801024D0)($at)
/* 04FAD8 8004FF28 A0400002 */  sb          $zero, 0x2($v0)
/* 04FADC 8004FF2C A0400001 */  sb          $zero, 0x1($v0)
/* 04FAE0 8004FF30 A0400000 */  sb          $zero, 0x0($v0)
/* 04FAE4 8004FF34 27A90008 */  addiu       $t1, $sp, 0x8
/* 04FAE8 8004FF38 8D210000 */  lw          $at, 0x0($t1)
/* 04FAEC 8004FF3C 240C00FE */  addiu       $t4, $zero, 0xfe
/* 04FAF0 8004FF40 2442000F */  addiu       $v0, $v0, 0xf
/* 04FAF4 8004FF44 A841FFF4 */  swl         $at, -0xc($v0)
/* 04FAF8 8004FF48 B841FFF7 */  swr         $at, -0x9($v0)
/* 04FAFC 8004FF4C 8D2B0004 */  lw          $t3, 0x4($t1)
/* 04FB00 8004FF50 A84BFFF8 */  swl         $t3, -0x8($v0)
/* 04FB04 8004FF54 B84BFFFB */  swr         $t3, -0x5($v0)
/* 04FB08 8004FF58 8D210008 */  lw          $at, 0x8($t1)
/* 04FB0C 8004FF5C A04C0000 */  sb          $t4, 0x0($v0)
/* 04FB10 8004FF60 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04FB14 8004FF64 A841FFFC */  swl         $at, -0x4($v0)
/* 04FB18 8004FF68 03E00008 */  jr          $ra
/* 04FB1C 8004FF6C B841FFFF */   swr        $at, -0x1($v0)

glabel func_8004FF70 # 3
/* 04FB20 8004FF70 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04FB24 8004FF74 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04FB28 8004FF78 AFB10018 */  sw          $s1, 0x18($sp)
/* 04FB2C 8004FF7C 00808825 */  move        $s1, $a0
/* 04FB30 8004FF80 AFB00014 */  sw          $s0, 0x14($sp)
/* 04FB34 8004FF84 AFA5004C */  sw          $a1, 0x4c($sp)
/* 04FB38 8004FF88 0C0150EC */  jal         func_800543B0
/* 04FB3C 8004FF8C AFA60050 */   sw         $a2, 0x50($sp)
/* 04FB40 8004FF90 27B0002C */  addiu       $s0, $sp, 0x2c
/* 04FB44 8004FF94 02002825 */  move        $a1, $s0
/* 04FB48 8004FF98 0C014065 */  jal         func_80050194
/* 04FB4C 8004FF9C 02202025 */   move       $a0, $s1
/* 04FB50 8004FFA0 14400015 */  bnez        $v0, .L8004FFF8
/* 04FB54 8004FFA4 00401825 */   move       $v1, $v0
/* 04FB58 8004FFA8 97AE002C */  lhu         $t6, 0x2c($sp)
/* 04FB5C 8004FFAC 34018000 */  ori         $at, $zero, 0x8000
/* 04FB60 8004FFB0 93B8004F */  lbu         $t8, 0x4f($sp)
/* 04FB64 8004FFB4 31CFC000 */  andi        $t7, $t6, 0xc000
/* 04FB68 8004FFB8 11E10005 */  beq         $t7, $at, .L8004FFD0
/* 04FB6C 8004FFBC 3401C000 */   ori        $at, $zero, 0xc000
/* 04FB70 8004FFC0 11E10008 */  beq         $t7, $at, .L8004FFE4
/* 04FB74 8004FFC4 93B9004F */   lbu        $t9, 0x4f($sp)
/* 04FB78 8004FFC8 1000000B */  b           .L8004FFF8
/* 04FB7C 8004FFCC 24030008 */   addiu      $v1, $zero, 0x8
.L8004FFD0:
/* 04FB80 8004FFD0 2B010040 */  slti        $at, $t8, 0x40
/* 04FB84 8004FFD4 14200008 */  bnez        $at, .L8004FFF8
/* 04FB88 8004FFD8 00000000 */   nop
/* 04FB8C 8004FFDC 10000006 */  b           .L8004FFF8
/* 04FB90 8004FFE0 2403FFFF */   addiu      $v1, $zero, -0x1
.L8004FFE4:
/* 04FB94 8004FFE4 2B210100 */  slti        $at, $t9, 0x100
/* 04FB98 8004FFE8 14200003 */  bnez        $at, .L8004FFF8
/* 04FB9C 8004FFEC 00000000 */   nop
/* 04FBA0 8004FFF0 10000001 */  b           .L8004FFF8
/* 04FBA4 8004FFF4 2403FFFF */   addiu      $v1, $zero, -0x1
.L8004FFF8:
/* 04FBA8 8004FFF8 10600005 */  beqz        $v1, .L80050010
/* 04FBAC 8004FFFC 93A8002E */   lbu        $t0, 0x2e($sp)
/* 04FBB0 80050000 0C0150FD */  jal         func_800543F4
/* 04FBB4 80050004 AFA30044 */   sw         $v1, 0x44($sp)
/* 04FBB8 80050008 10000032 */  b           .L800500D4
/* 04FBBC 8005000C 8FA20044 */   lw         $v0, 0x44($sp)
.L80050010:
/* 04FBC0 80050010 31090080 */  andi        $t1, $t0, 0x80
/* 04FBC4 80050014 11200007 */  beqz        $t1, .L80050034
/* 04FBC8 80050018 02202025 */   move       $a0, $s1
.L8005001C:
/* 04FBCC 8005001C 0C014065 */  jal         func_80050194
/* 04FBD0 80050020 02002825 */   move       $a1, $s0
/* 04FBD4 80050024 93AA002E */  lbu         $t2, 0x2e($sp)
/* 04FBD8 80050028 314B0080 */  andi        $t3, $t2, 0x80
/* 04FBDC 8005002C 5560FFFB */  bnel        $t3, $zero, .L8005001C
/* 04FBE0 80050030 02202025 */   move       $a0, $s1
.L80050034:
/* 04FBE4 80050034 93A4004F */  lbu         $a0, 0x4f($sp)
/* 04FBE8 80050038 0C01403A */  jal         func_800500E8
/* 04FBEC 8005003C 8FA50050 */   lw         $a1, 0x50($sp)
/* 04FBF0 80050040 3C058010 */  lui         $a1, %hi(D_801024D0)
/* 04FBF4 80050044 24A524D0 */  addiu       $a1, $a1, %lo(D_801024D0)
/* 04FBF8 80050048 0C015108 */  jal         func_80054420
/* 04FBFC 8005004C 24040001 */   addiu      $a0, $zero, 0x1
/* 04FC00 80050050 02202025 */  move        $a0, $s1
/* 04FC04 80050054 00002825 */  move        $a1, $zero
/* 04FC08 80050058 0C013A48 */  jal         func_8004E920
/* 04FC0C 8005005C 24060001 */   addiu      $a2, $zero, 0x1
/* 04FC10 80050060 3C058010 */  lui         $a1, %hi(D_801024D0)
/* 04FC14 80050064 24A524D0 */  addiu       $a1, $a1, %lo(D_801024D0)
/* 04FC18 80050068 0C015108 */  jal         func_80054420
/* 04FC1C 8005006C 00002025 */   move       $a0, $zero
/* 04FC20 80050070 240C0005 */  addiu       $t4, $zero, 0x5
/* 04FC24 80050074 3C018010 */  lui         $at, %hi(D_80102380)
/* 04FC28 80050078 A02C2380 */  sb          $t4, %lo(D_80102380)($at)
/* 04FC2C 8005007C 02202025 */  move        $a0, $s1
/* 04FC30 80050080 00002825 */  move        $a1, $zero
/* 04FC34 80050084 0C013A48 */  jal         func_8004E920
/* 04FC38 80050088 24060001 */   addiu      $a2, $zero, 0x1
/* 04FC3C 8005008C 3C078010 */  lui         $a3, %hi(D_801024D4)
/* 04FC40 80050090 24E724D4 */  addiu       $a3, $a3, %lo(D_801024D4)
/* 04FC44 80050094 88E10000 */  lwl         $at, 0x0($a3)
/* 04FC48 80050098 98E10003 */  lwr         $at, 0x3($a3)
/* 04FC4C 8005009C 27AD0030 */  addiu       $t5, $sp, 0x30
/* 04FC50 800500A0 ADA10000 */  sw          $at, 0x0($t5)
/* 04FC54 800500A4 88F80004 */  lwl         $t8, 0x4($a3)
/* 04FC58 800500A8 98F80007 */  lwr         $t8, 0x7($a3)
/* 04FC5C 800500AC ADB80004 */  sw          $t8, 0x4($t5)
/* 04FC60 800500B0 88E10008 */  lwl         $at, 0x8($a3)
/* 04FC64 800500B4 98E1000B */  lwr         $at, 0xb($a3)
/* 04FC68 800500B8 ADA10008 */  sw          $at, 0x8($t5)
/* 04FC6C 800500BC 93A30031 */  lbu         $v1, 0x31($sp)
/* 04FC70 800500C0 307900C0 */  andi        $t9, $v1, 0xc0
/* 04FC74 800500C4 00194103 */  sra         $t0, $t9, 4
/* 04FC78 800500C8 0C0150FD */  jal         func_800543F4
/* 04FC7C 800500CC AFA80044 */   sw         $t0, 0x44($sp)
/* 04FC80 800500D0 8FA20044 */  lw          $v0, 0x44($sp)
.L800500D4:
/* 04FC84 800500D4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04FC88 800500D8 8FB00014 */  lw          $s0, 0x14($sp)
/* 04FC8C 800500DC 8FB10018 */  lw          $s1, 0x18($sp)
/* 04FC90 800500E0 03E00008 */  jr          $ra
/* 04FC94 800500E4 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_800500E8 # 4
/* 04FC98 800500E8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04FC9C 800500EC 3C078010 */  lui         $a3, %hi(D_801024D0)
/* 04FCA0 800500F0 24E724D0 */  addiu       $a3, $a3, %lo(D_801024D0)
/* 04FCA4 800500F4 240F0001 */  addiu       $t7, $zero, 0x1
/* 04FCA8 800500F8 2418000A */  addiu       $t8, $zero, 0xa
/* 04FCAC 800500FC 24190001 */  addiu       $t9, $zero, 0x1
/* 04FCB0 80050100 24080005 */  addiu       $t0, $zero, 0x5
/* 04FCB4 80050104 AFA40018 */  sw          $a0, 0x18($sp)
/* 04FCB8 80050108 ACEF003C */  sw          $t7, 0x3c($a3)
/* 04FCBC 8005010C A3B80008 */  sb          $t8, 0x8($sp)
/* 04FCC0 80050110 A3B90009 */  sb          $t9, 0x9($sp)
/* 04FCC4 80050114 A3A8000A */  sb          $t0, 0xa($sp)
/* 04FCC8 80050118 A3A4000B */  sb          $a0, 0xb($sp)
/* 04FCCC 8005011C 27A60008 */  addiu       $a2, $sp, 0x8
/* 04FCD0 80050120 27A20010 */  addiu       $v0, $sp, 0x10
.L80050124:
/* 04FCD4 80050124 90A90000 */  lbu         $t1, 0x0($a1)
/* 04FCD8 80050128 24C60001 */  addiu       $a2, $a2, 0x1
/* 04FCDC 8005012C 00C2082B */  sltu        $at, $a2, $v0
/* 04FCE0 80050130 24A50001 */  addiu       $a1, $a1, 0x1
/* 04FCE4 80050134 1420FFFB */  bnez        $at, .L80050124
/* 04FCE8 80050138 A0C90003 */   sb         $t1, 0x3($a2)
/* 04FCEC 8005013C 3C018010 */  lui         $at, %hi(D_801024D0)
/* 04FCF0 80050140 3C028010 */  lui         $v0, %hi(D_801024D0 + 0x1)
/* 04FCF4 80050144 244224D1 */  addiu       $v0, $v0, %lo(D_801024D0 + 0x1)
/* 04FCF8 80050148 A02024D0 */  sb          $zero, %lo(D_801024D0)($at)
/* 04FCFC 8005014C A0400002 */  sb          $zero, 0x2($v0)
/* 04FD00 80050150 A0400001 */  sb          $zero, 0x1($v0)
/* 04FD04 80050154 A0400000 */  sb          $zero, 0x0($v0)
/* 04FD08 80050158 27AA0008 */  addiu       $t2, $sp, 0x8
/* 04FD0C 8005015C 8D410000 */  lw          $at, 0x0($t2)
/* 04FD10 80050160 240D00FE */  addiu       $t5, $zero, 0xfe
/* 04FD14 80050164 2442000F */  addiu       $v0, $v0, 0xf
/* 04FD18 80050168 A841FFF4 */  swl         $at, -0xc($v0)
/* 04FD1C 8005016C B841FFF7 */  swr         $at, -0x9($v0)
/* 04FD20 80050170 8D4C0004 */  lw          $t4, 0x4($t2)
/* 04FD24 80050174 A84CFFF8 */  swl         $t4, -0x8($v0)
/* 04FD28 80050178 B84CFFFB */  swr         $t4, -0x5($v0)
/* 04FD2C 8005017C 8D410008 */  lw          $at, 0x8($t2)
/* 04FD30 80050180 A04D0000 */  sb          $t5, 0x0($v0)
/* 04FD34 80050184 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04FD38 80050188 A841FFFC */  swl         $at, -0x4($v0)
/* 04FD3C 8005018C 03E00008 */  jr          $ra
/* 04FD40 80050190 B841FFFF */   swr        $at, -0x1($v0)

glabel func_80050194 # 5
/* 04FD44 80050194 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04FD48 80050198 3C028010 */  lui         $v0, %hi(D_801024D0)
/* 04FD4C 8005019C 3C038010 */  lui         $v1, %hi(D_80102510)
/* 04FD50 800501A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04FD54 800501A4 AFA40030 */  sw          $a0, 0x30($sp)
/* 04FD58 800501A8 AFA50034 */  sw          $a1, 0x34($sp)
/* 04FD5C 800501AC 24632510 */  addiu       $v1, $v1, %lo(D_80102510)
/* 04FD60 800501B0 244224D0 */  addiu       $v0, $v0, %lo(D_801024D0)
.L800501B4:
/* 04FD64 800501B4 24420004 */  addiu       $v0, $v0, 0x4
/* 04FD68 800501B8 0043082B */  sltu        $at, $v0, $v1
/* 04FD6C 800501BC 1420FFFD */  bnez        $at, .L800501B4
/* 04FD70 800501C0 AC40FFFC */   sw         $zero, -0x4($v0)
/* 04FD74 800501C4 3C058010 */  lui         $a1, %hi(D_801024D0)
/* 04FD78 800501C8 24A524D0 */  addiu       $a1, $a1, %lo(D_801024D0)
/* 04FD7C 800501CC 240E0001 */  addiu       $t6, $zero, 0x1
/* 04FD80 800501D0 ACAE003C */  sw          $t6, 0x3c($a1)
/* 04FD84 800501D4 00A01025 */  move        $v0, $a1
/* 04FD88 800501D8 00001825 */  move        $v1, $zero
.L800501DC:
/* 04FD8C 800501DC 24630001 */  addiu       $v1, $v1, 0x1
/* 04FD90 800501E0 28610004 */  slti        $at, $v1, 0x4
/* 04FD94 800501E4 A0400000 */  sb          $zero, 0x0($v0)
/* 04FD98 800501E8 1420FFFC */  bnez        $at, .L800501DC
/* 04FD9C 800501EC 24420001 */   addiu      $v0, $v0, 0x1
/* 04FDA0 800501F0 240F00FF */  addiu       $t7, $zero, 0xff
/* 04FDA4 800501F4 24180001 */  addiu       $t8, $zero, 0x1
/* 04FDA8 800501F8 24190003 */  addiu       $t9, $zero, 0x3
/* 04FDAC 800501FC 240800FF */  addiu       $t0, $zero, 0xff
/* 04FDB0 80050200 240900FF */  addiu       $t1, $zero, 0xff
/* 04FDB4 80050204 240A00FF */  addiu       $t2, $zero, 0xff
/* 04FDB8 80050208 240B00FF */  addiu       $t3, $zero, 0xff
/* 04FDBC 8005020C A3AF001C */  sb          $t7, 0x1c($sp)
/* 04FDC0 80050210 A3B8001D */  sb          $t8, 0x1d($sp)
/* 04FDC4 80050214 A3B9001E */  sb          $t9, 0x1e($sp)
/* 04FDC8 80050218 A3A0001F */  sb          $zero, 0x1f($sp)
/* 04FDCC 8005021C A3A80020 */  sb          $t0, 0x20($sp)
/* 04FDD0 80050220 A3A90021 */  sb          $t1, 0x21($sp)
/* 04FDD4 80050224 A3AA0022 */  sb          $t2, 0x22($sp)
/* 04FDD8 80050228 A3AB0023 */  sb          $t3, 0x23($sp)
/* 04FDDC 8005022C 27AC001C */  addiu       $t4, $sp, 0x1c
/* 04FDE0 80050230 8D810000 */  lw          $at, 0x0($t4)
/* 04FDE4 80050234 241800FE */  addiu       $t8, $zero, 0xfe
/* 04FDE8 80050238 24420008 */  addiu       $v0, $v0, 0x8
/* 04FDEC 8005023C A841FFF8 */  swl         $at, -0x8($v0)
/* 04FDF0 80050240 B841FFFB */  swr         $at, -0x5($v0)
/* 04FDF4 80050244 8D8F0004 */  lw          $t7, 0x4($t4)
/* 04FDF8 80050248 A0580000 */  sb          $t8, 0x0($v0)
/* 04FDFC 8005024C 24040001 */  addiu       $a0, $zero, 0x1
/* 04FE00 80050250 A84FFFFC */  swl         $t7, -0x4($v0)
/* 04FE04 80050254 0C015108 */  jal         func_80054420
/* 04FE08 80050258 B84FFFFF */   swr        $t7, -0x1($v0)
/* 04FE0C 8005025C 8FA40030 */  lw          $a0, 0x30($sp)
/* 04FE10 80050260 00002825 */  move        $a1, $zero
/* 04FE14 80050264 0C013A48 */  jal         func_8004E920
/* 04FE18 80050268 24060001 */   addiu      $a2, $zero, 0x1
/* 04FE1C 8005026C 241900FE */  addiu       $t9, $zero, 0xfe
/* 04FE20 80050270 3C018010 */  lui         $at, %hi(D_80102380)
/* 04FE24 80050274 3C058010 */  lui         $a1, %hi(D_801024D0)
/* 04FE28 80050278 A0392380 */  sb          $t9, %lo(D_80102380)($at)
/* 04FE2C 8005027C 24A524D0 */  addiu       $a1, $a1, %lo(D_801024D0)
/* 04FE30 80050280 0C015108 */  jal         func_80054420
/* 04FE34 80050284 00002025 */   move       $a0, $zero
/* 04FE38 80050288 8FA40030 */  lw          $a0, 0x30($sp)
/* 04FE3C 8005028C 00002825 */  move        $a1, $zero
/* 04FE40 80050290 24060001 */  addiu       $a2, $zero, 0x1
/* 04FE44 80050294 0C013A48 */  jal         func_8004E920
/* 04FE48 80050298 AFA2002C */   sw         $v0, 0x2c($sp)
/* 04FE4C 8005029C 8FA3002C */  lw          $v1, 0x2c($sp)
/* 04FE50 800502A0 3C028010 */  lui         $v0, %hi(D_801024D0 + 0x1)
/* 04FE54 800502A4 244224D1 */  addiu       $v0, $v0, %lo(D_801024D0 + 0x1)
/* 04FE58 800502A8 10600003 */  beqz        $v1, .L800502B8
/* 04FE5C 800502AC 3C018010 */   lui        $at, %hi(D_801024D0)
/* 04FE60 800502B0 1000001E */  b           .L8005032C
/* 04FE64 800502B4 00601025 */   move       $v0, $v1
.L800502B8:
/* 04FE68 800502B8 A02024D0 */  sb          $zero, %lo(D_801024D0)($at)
/* 04FE6C 800502BC 88410003 */  lwl         $at, 0x3($v0)
/* 04FE70 800502C0 98410006 */  lwr         $at, 0x6($v0)
/* 04FE74 800502C4 A0400002 */  sb          $zero, 0x2($v0)
/* 04FE78 800502C8 A0400001 */  sb          $zero, 0x1($v0)
/* 04FE7C 800502CC A0400000 */  sb          $zero, 0x0($v0)
/* 04FE80 800502D0 8FA40034 */  lw          $a0, 0x34($sp)
/* 04FE84 800502D4 27A8001C */  addiu       $t0, $sp, 0x1c
/* 04FE88 800502D8 AD010000 */  sw          $at, 0x0($t0)
/* 04FE8C 800502DC 884A0007 */  lwl         $t2, 0x7($v0)
/* 04FE90 800502E0 984A000A */  lwr         $t2, 0xa($v0)
/* 04FE94 800502E4 24420003 */  addiu       $v0, $v0, 0x3
/* 04FE98 800502E8 00001025 */  move        $v0, $zero
/* 04FE9C 800502EC AD0A0004 */  sw          $t2, 0x4($t0)
/* 04FEA0 800502F0 93AB001E */  lbu         $t3, 0x1e($sp)
/* 04FEA4 800502F4 316E00C0 */  andi        $t6, $t3, 0xc0
/* 04FEA8 800502F8 000E6903 */  sra         $t5, $t6, 4
/* 04FEAC 800502FC A08D0003 */  sb          $t5, 0x3($a0)
/* 04FEB0 80050300 93AC0021 */  lbu         $t4, 0x21($sp)
/* 04FEB4 80050304 93B80020 */  lbu         $t8, 0x20($sp)
/* 04FEB8 80050308 31A300FF */  andi        $v1, $t5, 0xff
/* 04FEBC 8005030C 000C7A00 */  sll         $t7, $t4, 8
/* 04FEC0 80050310 01F8C825 */  or          $t9, $t7, $t8
/* 04FEC4 80050314 A4990000 */  sh          $t9, 0x0($a0)
/* 04FEC8 80050318 93A90022 */  lbu         $t1, 0x22($sp)
/* 04FECC 8005031C 10600003 */  beqz        $v1, .L8005032C
/* 04FED0 80050320 A0890002 */   sb         $t1, 0x2($a0)
/* 04FED4 80050324 10000001 */  b           .L8005032C
/* 04FED8 80050328 00601025 */   move       $v0, $v1
.L8005032C:
/* 04FEDC 8005032C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04FEE0 80050330 27BD0030 */  addiu       $sp, $sp, 0x30
/* 04FEE4 80050334 03E00008 */  jr          $ra
/* 04FEE8 80050338 00000000 */   nop
/* 04FEEC 8005033C 00000000 */  nop
