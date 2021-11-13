.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005FA60 # 0
/* 05F610 8005FA60 00C01025 */  move        $v0, $a2
/* 05F614 8005FA64 10C0000A */  beq         $a2, $zero, .L8005FA90
/* 05F618 8005FA68 24C6FFFF */   addiu      $a2, $a2, -0x1
.L8005FA6C:
/* 05F61C 8005FA6C 90AE0000 */  lbu         $t6, 0x0($a1)
/* 05F620 8005FA70 90830000 */  lbu         $v1, 0x0($a0)
/* 05F624 8005FA74 00C01025 */  move        $v0, $a2
/* 05F628 8005FA78 A08E0000 */  sb          $t6, 0x0($a0)
/* 05F62C 8005FA7C 24840001 */  addiu       $a0, $a0, 0x1
/* 05F630 8005FA80 24A50001 */  addiu       $a1, $a1, 0x1
/* 05F634 8005FA84 A0A3FFFF */  sb          $v1, -0x1($a1)
/* 05F638 8005FA88 14C0FFF8 */  bne         $a2, $zero, .L8005FA6C
/* 05F63C 8005FA8C 24C6FFFF */   addiu      $a2, $a2, -0x1
.L8005FA90:
/* 05F640 8005FA90 03E00008 */  jr          $ra
/* 05F644 8005FA94 00000000 */   nop

glabel func_8005FA98 # 1
/* 05F648 8005FA98 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05F64C 8005FA9C AFB30020 */  sw          $s3, 0x20($sp)
/* 05F650 8005FAA0 3C13800A */  lui         $s3, %hi(D_8009FC20)
/* 05F654 8005FAA4 2673FC20 */  addiu       $s3, $s3, %lo(D_8009FC20)
/* 05F658 8005FAA8 8E6E0000 */  lw          $t6, 0x0($s3)
/* 05F65C 8005FAAC AFB50028 */  sw          $s5, 0x28($sp)
/* 05F660 8005FAB0 AFB2001C */  sw          $s2, 0x1c($sp)
/* 05F664 8005FAB4 AFB10018 */  sw          $s1, 0x18($sp)
/* 05F668 8005FAB8 AFB00014 */  sw          $s0, 0x14($sp)
/* 05F66C 8005FABC 0085082B */  sltu        $at, $a0, $a1
/* 05F670 8005FAC0 00809025 */  move        $s2, $a0
/* 05F674 8005FAC4 00A0A825 */  move        $s5, $a1
/* 05F678 8005FAC8 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05F67C 8005FACC AFB40024 */  sw          $s4, 0x24($sp)
/* 05F680 8005FAD0 00808025 */  move        $s0, $a0
/* 05F684 8005FAD4 1020003E */  beq         $at, $zero, .L8005FBD0
/* 05F688 8005FAD8 00AE8821 */   addu       $s1, $a1, $t6
/* 05F68C 8005FADC 3C14800A */  lui         $s4, %hi(D_8009FC24)
/* 05F690 8005FAE0 2694FC24 */  addiu       $s4, $s4, %lo(D_8009FC24)
/* 05F694 8005FAE4 8E6F0000 */  lw          $t7, 0x0($s3)
.L8005FAE8:
/* 05F698 8005FAE8 020F8021 */  addu        $s0, $s0, $t7
/* 05F69C 8005FAEC 0215082B */  sltu        $at, $s0, $s5
/* 05F6A0 8005FAF0 50200009 */  beql        $at, $zero, .L8005FB18
/* 05F6A4 8005FAF4 8E660000 */   lw         $a2, 0x0($s3)
/* 05F6A8 8005FAF8 8E990000 */  lw          $t9, 0x0($s4)
/* 05F6AC 8005FAFC 02002025 */  move        $a0, $s0
/* 05F6B0 8005FB00 02402825 */  move        $a1, $s2
/* 05F6B4 8005FB04 0320F809 */  jalr        $t9
/* 05F6B8 8005FB08 00000000 */   nop
/* 05F6BC 8005FB0C 5840FFF6 */  blezl       $v0, .L8005FAE8
/* 05F6C0 8005FB10 8E6F0000 */   lw         $t7, 0x0($s3)
/* 05F6C4 8005FB14 8E660000 */  lw          $a2, 0x0($s3)
.L8005FB18:
/* 05F6C8 8005FB18 02268823 */  subu        $s1, $s1, $a2
/* 05F6CC 8005FB1C 0251082B */  sltu        $at, $s2, $s1
/* 05F6D0 8005FB20 5020000A */  beql        $at, $zero, .L8005FB4C
/* 05F6D4 8005FB24 0211082B */   sltu       $at, $s0, $s1
/* 05F6D8 8005FB28 8E990000 */  lw          $t9, 0x0($s4)
/* 05F6DC 8005FB2C 02202025 */  move        $a0, $s1
/* 05F6E0 8005FB30 02402825 */  move        $a1, $s2
/* 05F6E4 8005FB34 0320F809 */  jalr        $t9
/* 05F6E8 8005FB38 00000000 */   nop
/* 05F6EC 8005FB3C 0443FFF6 */  bgezl       $v0, .L8005FB18
/* 05F6F0 8005FB40 8E660000 */   lw         $a2, 0x0($s3)
/* 05F6F4 8005FB44 8E660000 */  lw          $a2, 0x0($s3)
/* 05F6F8 8005FB48 0211082B */  sltu        $at, $s0, $s1
.L8005FB4C:
/* 05F6FC 8005FB4C 10200006 */  beq         $at, $zero, .L8005FB68
/* 05F700 8005FB50 02402025 */   move       $a0, $s2
/* 05F704 8005FB54 02002025 */  move        $a0, $s0
/* 05F708 8005FB58 0C017E98 */  jal         func_8005FA60
/* 05F70C 8005FB5C 02202825 */   move       $a1, $s1
/* 05F710 8005FB60 1000FFE1 */  b           .L8005FAE8
/* 05F714 8005FB64 8E6F0000 */   lw         $t7, 0x0($s3)
.L8005FB68:
/* 05F718 8005FB68 0C017E98 */  jal         func_8005FA60
/* 05F71C 8005FB6C 02202825 */   move       $a1, $s1
/* 05F720 8005FB70 0232C023 */  subu        $t8, $s1, $s2
/* 05F724 8005FB74 02B14023 */  subu        $t0, $s5, $s1
/* 05F728 8005FB78 0308082A */  slt         $at, $t8, $t0
/* 05F72C 8005FB7C 5420000A */  bnel        $at, $zero, .L8005FBA8
/* 05F730 8005FB80 8E6B0000 */   lw         $t3, 0x0($s3)
/* 05F734 8005FB84 8E690000 */  lw          $t1, 0x0($s3)
/* 05F738 8005FB88 02A02825 */  move        $a1, $s5
/* 05F73C 8005FB8C 0C017EA6 */  jal         func_8005FA98
/* 05F740 8005FB90 02292021 */   addu       $a0, $s1, $t1
/* 05F744 8005FB94 8E6A0000 */  lw          $t2, 0x0($s3)
/* 05F748 8005FB98 02408025 */  move        $s0, $s2
/* 05F74C 8005FB9C 10000009 */  b           .L8005FBC4
/* 05F750 8005FBA0 022AA823 */   subu       $s5, $s1, $t2
/* 05F754 8005FBA4 8E6B0000 */  lw          $t3, 0x0($s3)
.L8005FBA8:
/* 05F758 8005FBA8 02402025 */  move        $a0, $s2
/* 05F75C 8005FBAC 0C017EA6 */  jal         func_8005FA98
/* 05F760 8005FBB0 022B2823 */   subu       $a1, $s1, $t3
/* 05F764 8005FBB4 8E660000 */  lw          $a2, 0x0($s3)
/* 05F768 8005FBB8 02269021 */  addu        $s2, $s1, $a2
/* 05F76C 8005FBBC 02408025 */  move        $s0, $s2
/* 05F770 8005FBC0 02A68821 */  addu        $s1, $s5, $a2
.L8005FBC4:
/* 05F774 8005FBC4 0255082B */  sltu        $at, $s2, $s5
/* 05F778 8005FBC8 5420FFC7 */  bnel        $at, $zero, .L8005FAE8
/* 05F77C 8005FBCC 8E6F0000 */   lw         $t7, 0x0($s3)
.L8005FBD0:
/* 05F780 8005FBD0 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05F784 8005FBD4 8FB00014 */  lw          $s0, 0x14($sp)
/* 05F788 8005FBD8 8FB10018 */  lw          $s1, 0x18($sp)
/* 05F78C 8005FBDC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 05F790 8005FBE0 8FB30020 */  lw          $s3, 0x20($sp)
/* 05F794 8005FBE4 8FB40024 */  lw          $s4, 0x24($sp)
/* 05F798 8005FBE8 8FB50028 */  lw          $s5, 0x28($sp)
/* 05F79C 8005FBEC 03E00008 */  jr          $ra
/* 05F7A0 8005FBF0 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8005FBF4 # 2
/* 05F7A4 8005FBF4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 05F7A8 8005FBF8 AFB40028 */  sw          $s4, 0x28($sp)
/* 05F7AC 8005FBFC AFB30024 */  sw          $s3, 0x24($sp)
/* 05F7B0 8005FC00 AFB20020 */  sw          $s2, 0x20($sp)
/* 05F7B4 8005FC04 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05F7B8 8005FC08 00C09825 */  move        $s3, $a2
/* 05F7BC 8005FC0C 00E0A025 */  move        $s4, $a3
/* 05F7C0 8005FC10 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05F7C4 8005FC14 AFB00018 */  sw          $s0, 0x18($sp)
/* 05F7C8 8005FC18 AFA40040 */  sw          $a0, 0x40($sp)
/* 05F7CC 8005FC1C AFA50044 */  sw          $a1, 0x44($sp)
/* 05F7D0 8005FC20 00809025 */  move        $s2, $a0
/* 05F7D4 8005FC24 00868821 */  addu        $s1, $a0, $a2
/* 05F7D8 8005FC28 10A00010 */  beq         $a1, $zero, .L8005FC6C
/* 05F7DC 8005FC2C AFA00030 */   sw         $zero, 0x30($sp)
/* 05F7E0 8005FC30 24A3FFFF */  addiu       $v1, $a1, -0x1
/* 05F7E4 8005FC34 1060000D */  beq         $v1, $zero, .L8005FC6C
/* 05F7E8 8005FC38 2470FFFF */   addiu      $s0, $v1, -0x1
.L8005FC3C:
/* 05F7EC 8005FC3C 02402025 */  move        $a0, $s2
/* 05F7F0 8005FC40 0280F809 */  jalr        $s4
/* 05F7F4 8005FC44 02202825 */   move       $a1, $s1
/* 05F7F8 8005FC48 18400004 */  blez        $v0, .L8005FC5C
/* 05F7FC 8005FC4C 02209025 */   move       $s2, $s1
/* 05F800 8005FC50 24180001 */  addiu       $t8, $zero, 0x1
/* 05F804 8005FC54 10000005 */  b           .L8005FC6C
/* 05F808 8005FC58 AFB80030 */   sw         $t8, 0x30($sp)
.L8005FC5C:
/* 05F80C 8005FC5C 02001025 */  move        $v0, $s0
/* 05F810 8005FC60 02338821 */  addu        $s1, $s1, $s3
/* 05F814 8005FC64 1600FFF5 */  bne         $s0, $zero, .L8005FC3C
/* 05F818 8005FC68 2610FFFF */   addiu      $s0, $s0, -0x1
.L8005FC6C:
/* 05F81C 8005FC6C 8FB90030 */  lw          $t9, 0x30($sp)
/* 05F820 8005FC70 3C02800A */  lui         $v0, %hi(D_8009FC20)
/* 05F824 8005FC74 2442FC20 */  addiu       $v0, $v0, %lo(D_8009FC20)
/* 05F828 8005FC78 1320000C */  beq         $t9, $zero, .L8005FCAC
/* 05F82C 8005FC7C 3C01800A */   lui        $at, %hi(D_8009FC24)
/* 05F830 8005FC80 AC530000 */  sw          $s3, 0x0($v0)
/* 05F834 8005FC84 8FA90044 */  lw          $t1, 0x44($sp)
/* 05F838 8005FC88 AC34FC24 */  sw          $s4, %lo(D_8009FC24)($at)
/* 05F83C 8005FC8C 8C4B0000 */  lw          $t3, 0x0($v0)
/* 05F840 8005FC90 252AFFFF */  addiu       $t2, $t1, -0x1
/* 05F844 8005FC94 8FA40040 */  lw          $a0, 0x40($sp)
/* 05F848 8005FC98 014B0019 */  multu       $t2, $t3
/* 05F84C 8005FC9C 00006012 */  mflo        $t4
/* 05F850 8005FCA0 01842821 */  addu        $a1, $t4, $a0
/* 05F854 8005FCA4 0C017EA6 */  jal         func_8005FA98
/* 05F858 8005FCA8 00000000 */   nop
.L8005FCAC:
/* 05F85C 8005FCAC 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05F860 8005FCB0 8FB00018 */  lw          $s0, 0x18($sp)
/* 05F864 8005FCB4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05F868 8005FCB8 8FB20020 */  lw          $s2, 0x20($sp)
/* 05F86C 8005FCBC 8FB30024 */  lw          $s3, 0x24($sp)
/* 05F870 8005FCC0 8FB40028 */  lw          $s4, 0x28($sp)
/* 05F874 8005FCC4 03E00008 */  jr          $ra
/* 05F878 8005FCC8 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8005FCCC # 3
/* 05F87C 8005FCCC 24CEFFFF */  addiu       $t6, $a2, -0x1
/* 05F880 8005FCD0 01C70019 */  multu       $t6, $a3
/* 05F884 8005FCD4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 05F888 8005FCD8 AFB60030 */  sw          $s6, 0x30($sp)
/* 05F88C 8005FCDC AFBE0038 */  sw          $fp, 0x38($sp)
/* 05F890 8005FCE0 AFB5002C */  sw          $s5, 0x2c($sp)
/* 05F894 8005FCE4 AFB40028 */  sw          $s4, 0x28($sp)
/* 05F898 8005FCE8 00E0A025 */  move        $s4, $a3
/* 05F89C 8005FCEC 0080F025 */  move        $fp, $a0
/* 05F8A0 8005FCF0 AFBF003C */  sw          $ra, 0x3c($sp)
/* 05F8A4 8005FCF4 AFB70034 */  sw          $s7, 0x34($sp)
/* 05F8A8 8005FCF8 00007812 */  mflo        $t7
/* 05F8AC 8005FCFC 00AFB021 */  addu        $s6, $a1, $t7
/* 05F8B0 8005FD00 02C5082B */  sltu        $at, $s6, $a1
/* 05F8B4 8005FD04 AFB30024 */  sw          $s3, 0x24($sp)
/* 05F8B8 8005FD08 AFB20020 */  sw          $s2, 0x20($sp)
/* 05F8BC 8005FD0C AFB1001C */  sw          $s1, 0x1c($sp)
/* 05F8C0 8005FD10 AFB00018 */  sw          $s0, 0x18($sp)
/* 05F8C4 8005FD14 1420002C */  bne         $at, $zero, .L8005FDC8
/* 05F8C8 8005FD18 00A0A825 */   move       $s5, $a1
/* 05F8CC 8005FD1C 8FB70050 */  lw          $s7, 0x50($sp)
/* 05F8D0 8005FD20 00061042 */  srl         $v0, $a2, 1
.L8005FD24:
/* 05F8D4 8005FD24 1040001B */  beq         $v0, $zero, .L8005FD94
/* 05F8D8 8005FD28 00408825 */   move       $s1, $v0
/* 05F8DC 8005FD2C 30D20001 */  andi        $s2, $a2, 0x1
/* 05F8E0 8005FD30 12400003 */  beq         $s2, $zero, .L8005FD40
/* 05F8E4 8005FD34 2443FFFF */   addiu      $v1, $v0, -0x1
/* 05F8E8 8005FD38 10000001 */  b           .L8005FD40
/* 05F8EC 8005FD3C 00401825 */   move       $v1, $v0
.L8005FD40:
/* 05F8F0 8005FD40 00740019 */  multu       $v1, $s4
/* 05F8F4 8005FD44 03C02025 */  move        $a0, $fp
/* 05F8F8 8005FD48 0000C012 */  mflo        $t8
/* 05F8FC 8005FD4C 03158021 */  addu        $s0, $t8, $s5
/* 05F900 8005FD50 02009825 */  move        $s3, $s0
/* 05F904 8005FD54 02E0F809 */  jalr        $s7
/* 05F908 8005FD58 02002825 */   move       $a1, $s0
/* 05F90C 8005FD5C 14400003 */  bne         $v0, $zero, .L8005FD6C
/* 05F910 8005FD60 02203025 */   move       $a2, $s1
/* 05F914 8005FD64 10000019 */  b           .L8005FDCC
/* 05F918 8005FD68 02001025 */   move       $v0, $s0
.L8005FD6C:
/* 05F91C 8005FD6C 04410007 */  bgez        $v0, .L8005FD8C
/* 05F920 8005FD70 00000000 */   nop
/* 05F924 8005FD74 12400003 */  beq         $s2, $zero, .L8005FD84
/* 05F928 8005FD78 0214B023 */   subu       $s6, $s0, $s4
/* 05F92C 8005FD7C 1000000F */  b           .L8005FDBC
/* 05F930 8005FD80 02203025 */   move       $a2, $s1
.L8005FD84:
/* 05F934 8005FD84 1000000D */  b           .L8005FDBC
/* 05F938 8005FD88 2626FFFF */   addiu      $a2, $s1, -0x1
.L8005FD8C:
/* 05F93C 8005FD8C 1000000B */  b           .L8005FDBC
/* 05F940 8005FD90 0274A821 */   addu       $s5, $s3, $s4
.L8005FD94:
/* 05F944 8005FD94 10C0000C */  beq         $a2, $zero, .L8005FDC8
/* 05F948 8005FD98 03C02025 */   move       $a0, $fp
/* 05F94C 8005FD9C 02E0F809 */  jalr        $s7
/* 05F950 8005FDA0 02A02825 */   move       $a1, $s5
/* 05F954 8005FDA4 10400003 */  beq         $v0, $zero, .L8005FDB4
/* 05F958 8005FDA8 02A01825 */   move       $v1, $s5
/* 05F95C 8005FDAC 10000007 */  b           .L8005FDCC
/* 05F960 8005FDB0 00001025 */   move       $v0, $zero
.L8005FDB4:
/* 05F964 8005FDB4 10000005 */  b           .L8005FDCC
/* 05F968 8005FDB8 00601025 */   move       $v0, $v1
.L8005FDBC:
/* 05F96C 8005FDBC 02D5082B */  sltu        $at, $s6, $s5
/* 05F970 8005FDC0 5020FFD8 */  beql        $at, $zero, .L8005FD24
/* 05F974 8005FDC4 00061042 */   srl        $v0, $a2, 1
.L8005FDC8:
/* 05F978 8005FDC8 00001025 */  move        $v0, $zero
.L8005FDCC:
/* 05F97C 8005FDCC 8FBF003C */  lw          $ra, 0x3c($sp)
/* 05F980 8005FDD0 8FB00018 */  lw          $s0, 0x18($sp)
/* 05F984 8005FDD4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05F988 8005FDD8 8FB20020 */  lw          $s2, 0x20($sp)
/* 05F98C 8005FDDC 8FB30024 */  lw          $s3, 0x24($sp)
/* 05F990 8005FDE0 8FB40028 */  lw          $s4, 0x28($sp)
/* 05F994 8005FDE4 8FB5002C */  lw          $s5, 0x2c($sp)
/* 05F998 8005FDE8 8FB60030 */  lw          $s6, 0x30($sp)
/* 05F99C 8005FDEC 8FB70034 */  lw          $s7, 0x34($sp)
/* 05F9A0 8005FDF0 8FBE0038 */  lw          $fp, 0x38($sp)
/* 05F9A4 8005FDF4 03E00008 */  jr          $ra
/* 05F9A8 8005FDF8 27BD0040 */   addiu      $sp, $sp, 0x40

glabel func_8005FDFC # 4
/* 05F9AC 8005FDFC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 05F9B0 8005FE00 AFBF002C */  sw          $ra, 0x2c($sp)
/* 05F9B4 8005FE04 AFB50028 */  sw          $s5, 0x28($sp)
/* 05F9B8 8005FE08 AFB40024 */  sw          $s4, 0x24($sp)
/* 05F9BC 8005FE0C AFB30020 */  sw          $s3, 0x20($sp)
/* 05F9C0 8005FE10 AFB2001C */  sw          $s2, 0x1c($sp)
/* 05F9C4 8005FE14 AFB10018 */  sw          $s1, 0x18($sp)
/* 05F9C8 8005FE18 AFB00014 */  sw          $s0, 0x14($sp)
/* 05F9CC 8005FE1C 8CCE0000 */  lw          $t6, 0x0($a2)
/* 05F9D0 8005FE20 00A08825 */  move        $s1, $a1
/* 05F9D4 8005FE24 00C09825 */  move        $s3, $a2
/* 05F9D8 8005FE28 0080A025 */  move        $s4, $a0
/* 05F9DC 8005FE2C 00E0A825 */  move        $s5, $a3
/* 05F9E0 8005FE30 11C0000F */  beq         $t6, $zero, .L8005FE70
/* 05F9E4 8005FE34 00008025 */   move       $s0, $zero
/* 05F9E8 8005FE38 8FB20040 */  lw          $s2, 0x40($sp)
/* 05F9EC 8005FE3C 02802025 */  move        $a0, $s4
.L8005FE40:
/* 05F9F0 8005FE40 0240F809 */  jalr        $s2
/* 05F9F4 8005FE44 02202825 */   move       $a1, $s1
/* 05F9F8 8005FE48 54400004 */  bnel        $v0, $zero, .L8005FE5C
/* 05F9FC 8005FE4C 8E6F0000 */   lw         $t7, 0x0($s3)
/* 05FA00 8005FE50 1000000F */  b           .L8005FE90
/* 05FA04 8005FE54 02201025 */   move       $v0, $s1
/* 05FA08 8005FE58 8E6F0000 */  lw          $t7, 0x0($s3)
.L8005FE5C:
/* 05FA0C 8005FE5C 26100001 */  addiu       $s0, $s0, 0x1
/* 05FA10 8005FE60 02358821 */  addu        $s1, $s1, $s5
/* 05FA14 8005FE64 020F082B */  sltu        $at, $s0, $t7
/* 05FA18 8005FE68 5420FFF5 */  bnel        $at, $zero, .L8005FE40
/* 05FA1C 8005FE6C 02802025 */   move       $a0, $s4
.L8005FE70:
/* 05FA20 8005FE70 02802025 */  move        $a0, $s4
/* 05FA24 8005FE74 02202825 */  move        $a1, $s1
/* 05FA28 8005FE78 0C01267C */  jal         func_800499F0
/* 05FA2C 8005FE7C 02A03025 */   move       $a2, $s5
/* 05FA30 8005FE80 8E780000 */  lw          $t8, 0x0($s3)
/* 05FA34 8005FE84 02201025 */  move        $v0, $s1
/* 05FA38 8005FE88 27190001 */  addiu       $t9, $t8, 0x1
/* 05FA3C 8005FE8C AE790000 */  sw          $t9, 0x0($s3)
.L8005FE90:
/* 05FA40 8005FE90 8FBF002C */  lw          $ra, 0x2c($sp)
/* 05FA44 8005FE94 8FB00014 */  lw          $s0, 0x14($sp)
/* 05FA48 8005FE98 8FB10018 */  lw          $s1, 0x18($sp)
/* 05FA4C 8005FE9C 8FB2001C */  lw          $s2, 0x1c($sp)
/* 05FA50 8005FEA0 8FB30020 */  lw          $s3, 0x20($sp)
/* 05FA54 8005FEA4 8FB40024 */  lw          $s4, 0x24($sp)
/* 05FA58 8005FEA8 8FB50028 */  lw          $s5, 0x28($sp)
/* 05FA5C 8005FEAC 03E00008 */  jr          $ra
/* 05FA60 8005FEB0 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_8005FEB4 # 5
/* 05FA64 8005FEB4 3C03800A */  lui         $v1, %hi(D_8009FC28)
/* 05FA68 8005FEB8 2463FC28 */  addiu       $v1, $v1, %lo(D_8009FC28)
/* 05FA6C 8005FEBC 8C6E0000 */  lw          $t6, 0x0($v1)
/* 05FA70 8005FEC0 3C0141C6 */  lui         $at, 0x41c6
/* 05FA74 8005FEC4 34214E6D */  ori         $at, $at, 0x4e6d
/* 05FA78 8005FEC8 01C10019 */  multu       $t6, $at
/* 05FA7C 8005FECC 3C018000 */  lui         $at, 0x8000
/* 05FA80 8005FED0 00007812 */  mflo        $t7
/* 05FA84 8005FED4 25F83039 */  addiu       $t8, $t7, 0x3039
/* 05FA88 8005FED8 AC780000 */  sw          $t8, 0x0($v1)
/* 05FA8C 8005FEDC 0301001B */  divu        $zero, $t8, $at
/* 05FA90 8005FEE0 00001010 */  mfhi        $v0
/* 05FA94 8005FEE4 03E00008 */  jr          $ra
/* 05FA98 8005FEE8 00000000 */   nop

glabel func_8005FEEC # 6
/* 05FA9C 8005FEEC 3C01800A */  lui         $at, %hi(D_8009FC28)
/* 05FAA0 8005FEF0 03E00008 */  jr          $ra
/* 05FAA4 8005FEF4 AC24FC28 */   sw         $a0, %lo(D_8009FC28)($at)

glabel func_8005FEF8 # 7
/* 05FAA8 8005FEF8 04810003 */  bgez        $a0, .L8005FF08
/* 05FAAC 8005FEFC 00801825 */   move       $v1, $a0
/* 05FAB0 8005FF00 03E00008 */  jr          $ra
/* 05FAB4 8005FF04 00041023 */   subu       $v0, $zero, $a0
.L8005FF08:
/* 05FAB8 8005FF08 03E00008 */  jr          $ra
/* 05FABC 8005FF0C 00601025 */   move       $v0, $v1

glabel func_8005FF10 # 8
/* 05FAC0 8005FF10 04810003 */  bgez        $a0, .L8005FF20
/* 05FAC4 8005FF14 00801825 */   move       $v1, $a0
/* 05FAC8 8005FF18 03E00008 */  jr          $ra
/* 05FACC 8005FF1C 00041023 */   subu       $v0, $zero, $a0
.L8005FF20:
/* 05FAD0 8005FF20 03E00008 */  jr          $ra
/* 05FAD4 8005FF24 00601025 */   move       $v0, $v1

glabel func_8005FF28 # 9
/* 05FAD8 8005FF28 54800004 */  bnel        $a0, $zero, .L8005FF3C
/* 05FADC 8005FF2C 90820000 */   lbu        $v0, 0x0($a0)
/* 05FAE0 8005FF30 03E00008 */  jr          $ra
/* 05FAE4 8005FF34 00001025 */   move       $v0, $zero
/* 05FAE8 8005FF38 90820000 */  lbu         $v0, 0x0($a0)
.L8005FF3C:
/* 05FAEC 8005FF3C 24030020 */  addiu       $v1, $zero, 0x20
/* 05FAF0 8005FF40 24050009 */  addiu       $a1, $zero, 0x9
/* 05FAF4 8005FF44 50620004 */  beql        $v1, $v0, .L8005FF58
/* 05FAF8 8005FF48 90820001 */   lbu        $v0, 0x1($a0)
/* 05FAFC 8005FF4C 54A20009 */  bnel        $a1, $v0, .L8005FF74
/* 05FB00 8005FF50 00801025 */   move       $v0, $a0
/* 05FB04 8005FF54 90820001 */  lbu         $v0, 0x1($a0)
.L8005FF58:
/* 05FB08 8005FF58 24050009 */  addiu       $a1, $zero, 0x9
/* 05FB0C 8005FF5C 24840001 */  addiu       $a0, $a0, 0x1
/* 05FB10 8005FF60 5062FFFD */  beql        $v1, $v0, .L8005FF58
/* 05FB14 8005FF64 90820001 */   lbu        $v0, 0x1($a0)
/* 05FB18 8005FF68 50A2FFFB */  beql        $a1, $v0, .L8005FF58
/* 05FB1C 8005FF6C 90820001 */   lbu        $v0, 0x1($a0)
/* 05FB20 8005FF70 00801025 */  move        $v0, $a0
.L8005FF74:
/* 05FB24 8005FF74 03E00008 */  jr          $ra
/* 05FB28 8005FF78 00000000 */   nop

glabel func_8005FF7C # 10
/* 05FB2C 8005FF7C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05FB30 8005FF80 14800003 */  bne         $a0, $zero, .L8005FF90
/* 05FB34 8005FF84 AFBF0014 */   sw         $ra, 0x14($sp)
/* 05FB38 8005FF88 10000018 */  b           .L8005FFEC
/* 05FB3C 8005FF8C 00001025 */   move       $v0, $zero
.L8005FF90:
/* 05FB40 8005FF90 0C017FCA */  jal         func_8005FF28
/* 05FB44 8005FF94 00000000 */   nop
/* 05FB48 8005FF98 90450000 */  lbu         $a1, 0x0($v0)
/* 05FB4C 8005FF9C 00402025 */  move        $a0, $v0
/* 05FB50 8005FFA0 00001825 */  move        $v1, $zero
/* 05FB54 8005FFA4 28A10030 */  slti        $at, $a1, 0x30
/* 05FB58 8005FFA8 1420000F */  bne         $at, $zero, .L8005FFE8
/* 05FB5C 8005FFAC 28A1003A */   slti       $at, $a1, 0x3a
/* 05FB60 8005FFB0 1020000D */  beq         $at, $zero, .L8005FFE8
/* 05FB64 8005FFB4 2405000A */   addiu      $a1, $zero, 0xa
/* 05FB68 8005FFB8 90420000 */  lbu         $v0, 0x0($v0)
.L8005FFBC:
/* 05FB6C 8005FFBC 00650019 */  multu       $v1, $a1
/* 05FB70 8005FFC0 24840001 */  addiu       $a0, $a0, 0x1
/* 05FB74 8005FFC4 00007012 */  mflo        $t6
/* 05FB78 8005FFC8 004E1821 */  addu        $v1, $v0, $t6
/* 05FB7C 8005FFCC 90820000 */  lbu         $v0, 0x0($a0)
/* 05FB80 8005FFD0 2463FFD0 */  addiu       $v1, $v1, -0x30
/* 05FB84 8005FFD4 28410030 */  slti        $at, $v0, 0x30
/* 05FB88 8005FFD8 14200003 */  bne         $at, $zero, .L8005FFE8
/* 05FB8C 8005FFDC 2841003A */   slti       $at, $v0, 0x3a
/* 05FB90 8005FFE0 1420FFF6 */  bne         $at, $zero, .L8005FFBC
/* 05FB94 8005FFE4 00000000 */   nop
.L8005FFE8:
/* 05FB98 8005FFE8 00601025 */  move        $v0, $v1
.L8005FFEC:
/* 05FB9C 8005FFEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05FBA0 8005FFF0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05FBA4 8005FFF4 03E00008 */  jr          $ra
/* 05FBA8 8005FFF8 00000000 */   nop

glabel func_8005FFFC # 11
/* 05FBAC 8005FFFC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05FBB0 80060000 00802825 */  move        $a1, $a0
/* 05FBB4 80060004 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 05FBB8 80060008 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05FBBC 8006000C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 05FBC0 80060010 0C00E03D */  jal         func_800380F4
/* 05FBC4 80060014 240600B1 */   addiu      $a2, $zero, 0xb1
/* 05FBC8 80060018 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05FBCC 8006001C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05FBD0 80060020 03E00008 */  jr          $ra
/* 05FBD4 80060024 00000000 */   nop

glabel func_80060028 # 12
/* 05FBD8 80060028 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05FBDC 8006002C 00802825 */  move        $a1, $a0
/* 05FBE0 80060030 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 05FBE4 80060034 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05FBE8 80060038 0C00E152 */  jal         func_80038548
/* 05FBEC 8006003C 24842960 */   addiu      $a0, $a0, %lo(D_800F2960)
/* 05FBF0 80060040 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05FBF4 80060044 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05FBF8 80060048 03E00008 */  jr          $ra
/* 05FBFC 8006004C 00000000 */   nop

glabel func_80060050 # 13
/* 05FC00 80060050 09000419 */  j           fakefunc_84001064
/* 05FC04 80060054 20010FC0 */   addi       $at, $zero, 0xfc0
/* 05FC08 80060058 8C220010 */  lw          $v0, 0x10($at)
/* 05FC0C 8006005C 20030F7F */  addi        $v1, $zero, 0xf7f
/* 05FC10 80060060 20071080 */  addi        $a3, $zero, 0x1080
/* 05FC14 80060064 40870000 */  cop0        0x0870000
/* 05FC18 80060068 40820800 */  cop0        0x0820800
/* 05FC1C 8006006C 40831000 */  cop0        0x0831000
.L80060070:
/* 05FC20 80060070 40043000 */  cop0        0x0043000
/* 05FC24 80060074 1480FFFE */  bne         $a0, $zero, .L80060070
/* 05FC28 80060078 00000000 */   nop
/* 05FC2C 8006007C 0D00040F */  jal         func_8400103C
/* 05FC30 80060080 00000000 */   nop
/* 05FC34 80060084 00E00008 */  jr          $a3
/* 05FC38 80060088 40803800 */   cop0       0x0803800
.L8006008C:
/* 05FC3C 8006008C 40082000 */  cop0        0x0082000
/* 05FC40 80060090 31080080 */  andi        $t0, $t0, 0x80
/* 05FC44 80060094 15000002 */  bne         $t0, $zero, .L800600A0
/* 05FC48 80060098 00000000 */   nop
/* 05FC4C 8006009C 03E00008 */  jr          $ra
.L800600A0:
/* 05FC50 800600A0 40803800 */   cop0       0x0803800
/* 05FC54 800600A4 34085200 */  ori         $t0, $zero, 0x5200
/* 05FC58 800600A8 40882000 */  cop0        0x0882000
/* 05FC5C 800600AC 0000000D */  break       0
/* 05FC60 800600B0 00000000 */  nop
/* 05FC64 800600B4 8C220004 */  lw          $v0, 0x4($at)
/* 05FC68 800600B8 30420002 */  andi        $v0, $v0, 0x2
/* 05FC6C 800600BC 10400007 */  beq         $v0, $zero, .L800600DC
/* 05FC70 800600C0 00000000 */   nop
/* 05FC74 800600C4 0D00040F */  jal         func_8400103C
/* 05FC78 800600C8 00000000 */   nop
/* 05FC7C 800600CC 40025800 */  cop0        0x0025800
/* 05FC80 800600D0 30420100 */  andi        $v0, $v0, 0x100
/* 05FC84 800600D4 1C40FFED */  bgtz        $v0, .L8006008C
/* 05FC88 800600D8 00000000 */   nop
.L800600DC:
/* 05FC8C 800600DC 8C220018 */  lw          $v0, 0x18($at)
/* 05FC90 800600E0 8C23001C */  lw          $v1, 0x1c($at)
/* 05FC94 800600E4 2063FFFF */  addi        $v1, $v1, -0x1
.L800600E8:
/* 05FC98 800600E8 401E2800 */  cop0        0x01E2800
/* 05FC9C 800600EC 17C0FFFE */  bne         $fp, $zero, .L800600E8
/* 05FCA0 800600F0 00000000 */   nop
/* 05FCA4 800600F4 40800000 */  cop0        0x0800000
/* 05FCA8 800600F8 40820800 */  cop0        0x0820800
/* 05FCAC 800600FC 40831000 */  cop0        0x0831000
.L80060100:
/* 05FCB0 80060100 40043000 */  cop0        0x0043000
/* 05FCB4 80060104 1480FFFE */  bne         $a0, $zero, .L80060100
/* 05FCB8 80060108 00000000 */   nop
/* 05FCBC 8006010C 0D00040F */  jal         func_8400103C
/* 05FCC0 80060110 00000000 */   nop
/* 05FCC4 80060114 09000402 */  j           fakefunc_84001008
/* 05FCC8 80060118 00000000 */   nop
/* 05FCCC 8006011C 00000000 */  nop
/* 05FCD0 80060120 40055800 */  cop0        0x0055800
/* 05FCD4 80060124 8C3C0030 */  lw          $gp, 0x30($at)
/* 05FCD8 80060128 8C3B0034 */  lw          $k1, 0x34($at)
/* 05FCDC 8006012C 30A40001 */  andi        $a0, $a1, 0x1
/* 05FCE0 80060130 10800006 */  beq         $a0, $zero, .L8006014C
/* 05FCE4 80060134 30A40100 */   andi       $a0, $a1, 0x100
/* 05FCE8 80060138 10800004 */  beq         $a0, $zero, .L8006014C
/* 05FCEC 8006013C 40045800 */   cop0       0x0045800
.L80060140:
/* 05FCF0 80060140 30840100 */  andi        $a0, $a0, 0x100
/* 05FCF4 80060144 1C80FFFE */  bgtz        $a0, .L80060140
/* 05FCF8 80060148 40045800 */   cop0       0x0045800
.L8006014C:
/* 05FCFC 8006014C 20180FA0 */  addi        $t8, $zero, 0xfa0
/* 05FD00 80060150 0D000448 */  jal         func_84001120
/* 05FD04 80060154 001C1020 */   add        $v0, $zero, $gp
/* 05FD08 80060158 40023000 */  cop0        0x0023000
.L8006015C:
/* 05FD0C 8006015C 1440FFFF */  bne         $v0, $zero, .L8006015C
/* 05FD10 80060160 40023000 */   cop0       0x0023000
/* 05FD14 80060164 40803800 */  cop0        0x0803800
.L80060168:
/* 05FD18 80060168 8FBA0000 */  lw          $k0, 0x0($sp)
/* 05FD1C 8006016C 8FB90004 */  lw          $t9, 0x4($sp)
/* 05FD20 80060170 239C0008 */  addi        $gp, $gp, 0x8
/* 05FD24 80060174 001A0DC2 */  srl         $at, $k0, 23
/* 05FD28 80060178 302100FE */  andi        $at, $at, 0xfe
/* 05FD2C 8006017C 84210000 */  lh          $at, 0x0($at)
/* 05FD30 80060180 00200008 */  jr          $at
/* 05FD34 80060184 237BFFF8 */   addi       $k1, $k1, -0x8
/* 05FD38 80060188 0000000D */  break       0
.L8006018C:
/* 05FD3C 8006018C 1FC0FFF6 */  bgtz        $fp, .L80060168
/* 05FD40 80060190 23BD0008 */   addi       $sp, $sp, 0x8
/* 05FD44 80060194 1B600005 */  blez        $k1, .L800601AC
/* 05FD48 80060198 34014000 */   ori        $at, $zero, 0x4000
/* 05FD4C 8006019C 0D000448 */  jal         func_84001120
/* 05FD50 800601A0 001C1020 */   add        $v0, $zero, $gp
/* 05FD54 800601A4 0900042F */  j           fakefunc_840010BC
/* 05FD58 800601A8 40023000 */   cop0       0x0023000
.L800601AC:
/* 05FD5C 800601AC 40812000 */  cop0        0x0812000
/* 05FD60 800601B0 0000000D */  break       0
/* 05FD64 800601B4 00000000 */  nop
.L800601B8:
/* 05FD68 800601B8 1000FFFF */  b           .L800601B8
/* 05FD6C 800601BC 00000000 */   nop
/* 05FD70 800601C0 23E50000 */  addi        $a1, $ra, 0x0
/* 05FD74 800601C4 23630000 */  addi        $v1, $k1, 0x0
/* 05FD78 800601C8 2064FEC0 */  addi        $a0, $v1, -0x140
/* 05FD7C 800601CC 18800002 */  blez        $a0, .L800601D8
/* 05FD80 800601D0 200102B0 */   addi       $at, $zero, 0x2b0
/* 05FD84 800601D4 20030140 */  addi        $v1, $zero, 0x140
.L800601D8:
/* 05FD88 800601D8 207E0000 */  addi        $fp, $v1, 0x0
/* 05FD8C 800601DC 0D000453 */  jal         func_8400114C
/* 05FD90 800601E0 2063FFFF */   addi       $v1, $v1, -0x1
/* 05FD94 800601E4 00A00008 */  jr          $a1
/* 05FD98 800601E8 201D02B0 */   addi       $sp, $zero, 0x2b0
/* 05FD9C 800601EC 40043800 */  cop0        0x0043800
.L800601F0:
/* 05FDA0 800601F0 1480FFFF */  bne         $a0, $zero, .L800601F0
/* 05FDA4 800601F4 40043800 */   cop0       0x0043800
/* 05FDA8 800601F8 40042800 */  cop0        0x0042800
.L800601FC:
/* 05FDAC 800601FC 1480FFFF */  bne         $a0, $zero, .L800601FC
/* 05FDB0 80060200 40042800 */   cop0       0x0042800
/* 05FDB4 80060204 40810000 */  cop0        0x0810000
/* 05FDB8 80060208 40820800 */  cop0        0x0820800
/* 05FDBC 8006020C 03E00008 */  jr          $ra
/* 05FDC0 80060210 40831000 */   cop0       0x0831000
/* 05FDC4 80060214 40043800 */  cop0        0x0043800
.L80060218:
/* 05FDC8 80060218 1480FFFF */  bne         $a0, $zero, .L80060218
/* 05FDCC 8006021C 40043800 */   cop0       0x0043800
/* 05FDD0 80060220 40042800 */  cop0        0x0042800
.L80060224:
/* 05FDD4 80060224 1480FFFF */  bne         $a0, $zero, .L80060224
/* 05FDD8 80060228 40042800 */   cop0       0x0042800
/* 05FDDC 8006022C 40810000 */  cop0        0x0810000
/* 05FDE0 80060230 40820800 */  cop0        0x0820800
/* 05FDE4 80060234 03E00008 */  jr          $ra
/* 05FDE8 80060238 40831800 */   cop0       0x0831800
/* 05FDEC 8006023C 3322FFFF */  andi        $v0, $t9, 0xffff
/* 05FDF0 80060240 4A01086C */  cop2        0x201086C
/* 05FDF4 80060244 3341FFFF */  andi        $at, $k0, 0xffff
/* 05FDF8 80060248 202104F0 */  addi        $at, $at, 0x4f0
.L8006024C:
/* 05FDFC 8006024C E8211800 */  swc2        $at, 0x1800($at)
/* 05FE00 80060250 E8211801 */  swc2        $at, 0x1801($at)
/* 05FE04 80060254 2042FFF0 */  addi        $v0, $v0, -0x10
/* 05FE08 80060258 1C40FFFC */  bgtz        $v0, .L8006024C
/* 05FE0C 8006025C 20210010 */   addi       $at, $at, 0x10
/* 05FE10 80060260 0900043B */  j           fakefunc_840010EC
/* 05FE14 80060264 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FE18 80060268 001A1A00 */  sll         $v1, $k0, 8
/* 05FE1C 8006026C 00031D02 */  srl         $v1, $v1, 20
/* 05FE20 80060270 1060FFC6 */  beq         $v1, $zero, .L8006018C
/* 05FE24 80060274 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FE28 80060278 33410FFF */  andi        $at, $k0, 0xfff
/* 05FE2C 8006027C 202104F0 */  addi        $at, $at, 0x4f0
/* 05FE30 80060280 00191200 */  sll         $v0, $t9, 8
/* 05FE34 80060284 00021202 */  srl         $v0, $v0, 8
/* 05FE38 80060288 2063FFFF */  addi        $v1, $v1, -0x1
/* 05FE3C 8006028C 0D000453 */  jal         func_8400114C
/* 05FE40 80060290 20420000 */   addi       $v0, $v0, 0x0
/* 05FE44 80060294 40013000 */  cop0        0x0013000
.L80060298:
/* 05FE48 80060298 1420FFFF */  bne         $at, $zero, .L80060298
/* 05FE4C 8006029C 40013000 */   cop0       0x0013000
/* 05FE50 800602A0 0900043B */  j           fakefunc_840010EC
/* 05FE54 800602A4 40803800 */   cop0       0x0803800
/* 05FE58 800602A8 001A1A00 */  sll         $v1, $k0, 8
/* 05FE5C 800602AC 00031D02 */  srl         $v1, $v1, 20
/* 05FE60 800602B0 1060FFB6 */  beq         $v1, $zero, .L8006018C
/* 05FE64 800602B4 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FE68 800602B8 33410FFF */  andi        $at, $k0, 0xfff
/* 05FE6C 800602BC 202104F0 */  addi        $at, $at, 0x4f0
/* 05FE70 800602C0 00191200 */  sll         $v0, $t9, 8
/* 05FE74 800602C4 00021202 */  srl         $v0, $v0, 8
/* 05FE78 800602C8 2063FFFF */  addi        $v1, $v1, -0x1
/* 05FE7C 800602CC 0D00045D */  jal         func_84001174
/* 05FE80 800602D0 20420000 */   addi       $v0, $v0, 0x0
/* 05FE84 800602D4 40013000 */  cop0        0x0013000
.L800602D8:
/* 05FE88 800602D8 1420FFFF */  bne         $at, $zero, .L800602D8
/* 05FE8C 800602DC 40013000 */   cop0       0x0013000
/* 05FE90 800602E0 0900043B */  j           fakefunc_840010EC
/* 05FE94 800602E4 40803800 */   cop0       0x0803800
/* 05FE98 800602E8 00191200 */  sll         $v0, $t9, 8
/* 05FE9C 800602EC 00021202 */  srl         $v0, $v0, 8
/* 05FEA0 800602F0 20420000 */  addi        $v0, $v0, 0x0
/* 05FEA4 800602F4 200103F0 */  addi        $at, $zero, 0x3f0
/* 05FEA8 800602F8 3343FFFF */  andi        $v1, $k0, 0xffff
/* 05FEAC 800602FC 0D000453 */  jal         func_8400114C
/* 05FEB0 80060300 2063FFFF */   addi       $v1, $v1, -0x1
/* 05FEB4 80060304 40013000 */  cop0        0x0013000
.L80060308:
/* 05FEB8 80060308 1420FFFF */  bne         $at, $zero, .L80060308
/* 05FEBC 8006030C 40013000 */   cop0       0x0013000
/* 05FEC0 80060310 40803800 */  cop0        0x0803800
/* 05FEC4 80060314 0900043B */  j           fakefunc_840010EC
/* 05FEC8 80060318 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FECC 8006031C 001A1C02 */  srl         $v1, $k0, 16
/* 05FED0 80060320 30610004 */  andi        $at, $v1, 0x4
/* 05FED4 80060324 1020000D */  beq         $at, $zero, .L8006035C
/* 05FED8 80060328 30610002 */   andi       $at, $v1, 0x2
/* 05FEDC 8006032C 10200006 */  beq         $at, $zero, .L80060348
/* 05FEE0 80060330 00191402 */   srl        $v0, $t9, 16
/* 05FEE4 80060334 A71A0050 */  sh          $k0, 0x50($t8)
/* 05FEE8 80060338 A702004C */  sh          $v0, 0x4c($t8)
/* 05FEEC 8006033C A719004E */  sh          $t9, 0x4e($t8)
/* 05FEF0 80060340 0900043B */  j           fakefunc_840010EC
/* 05FEF4 80060344 23DEFFF8 */   addi       $fp, $fp, -0x8
.L80060348:
/* 05FEF8 80060348 A71A0046 */  sh          $k0, 0x46($t8)
/* 05FEFC 8006034C A7020048 */  sh          $v0, 0x48($t8)
/* 05FF00 80060350 A719004A */  sh          $t9, 0x4a($t8)
/* 05FF04 80060354 0900043B */  j           fakefunc_840010EC
/* 05FF08 80060358 23DEFFF8 */   addi       $fp, $fp, -0x8
.L8006035C:
/* 05FF0C 8006035C 00191402 */  srl         $v0, $t9, 16
/* 05FF10 80060360 A71A0040 */  sh          $k0, 0x40($t8)
/* 05FF14 80060364 A7020042 */  sh          $v0, 0x42($t8)
/* 05FF18 80060368 A7190044 */  sh          $t9, 0x44($t8)
/* 05FF1C 8006036C 0900043B */  j           fakefunc_840010EC
/* 05FF20 80060370 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FF24 80060374 20010170 */  addi        $at, $zero, 0x170
/* 05FF28 80060378 200404F0 */  addi        $a0, $zero, 0x4f0
/* 05FF2C 8006037C 200209D0 */  addi        $v0, $zero, 0x9d0
/* 05FF30 80060380 20030B40 */  addi        $v1, $zero, 0xb40
.L80060384:
/* 05FF34 80060384 C8412000 */  lwc2        $at, 0x2000($v0)
/* 05FF38 80060388 C8622000 */  lwc2        $v0, 0x2000($v1)
/* 05FF3C 8006038C 2021FFF0 */  addi        $at, $at, -0x10
/* 05FF40 80060390 20420010 */  addi        $v0, $v0, 0x10
/* 05FF44 80060394 20630010 */  addi        $v1, $v1, 0x10
/* 05FF48 80060398 E8810800 */  swc2        $at, 0x800($a0)
/* 05FF4C 8006039C E8820801 */  swc2        $v0, 0x801($a0)
/* 05FF50 800603A0 E8810902 */  swc2        $at, 0x902($a0)
/* 05FF54 800603A4 E8820903 */  swc2        $v0, 0x903($a0)
/* 05FF58 800603A8 E8810A04 */  swc2        $at, 0xa04($a0)
/* 05FF5C 800603AC E8820A05 */  swc2        $v0, 0xa05($a0)
/* 05FF60 800603B0 E8810B06 */  swc2        $at, 0xb06($a0)
/* 05FF64 800603B4 E8820B07 */  swc2        $v0, 0xb07($a0)
/* 05FF68 800603B8 E8810C08 */  swc2        $at, 0xc08($a0)
/* 05FF6C 800603BC E8820C09 */  swc2        $v0, 0xc09($a0)
/* 05FF70 800603C0 E8810D0A */  swc2        $at, 0xd0a($a0)
/* 05FF74 800603C4 E8820D0B */  swc2        $v0, 0xd0b($a0)
/* 05FF78 800603C8 E8810E0C */  swc2        $at, 0xe0c($a0)
/* 05FF7C 800603CC E8820E0D */  swc2        $v0, 0xe0d($a0)
/* 05FF80 800603D0 E8810F0E */  swc2        $at, 0xf0e($a0)
/* 05FF84 800603D4 E8820F0F */  swc2        $v0, 0xf0f($a0)
/* 05FF88 800603D8 1C20FFEA */  bgtz        $at, .L80060384
/* 05FF8C 800603DC 20840020 */   addi       $a0, $a0, 0x20
/* 05FF90 800603E0 0900043B */  j           fakefunc_840010EC
/* 05FF94 800603E4 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FF98 800603E8 3321FFFF */  andi        $at, $t9, 0xffff
/* 05FF9C 800603EC 3342FFFF */  andi        $v0, $k0, 0xffff
/* 05FFA0 800603F0 204204F0 */  addi        $v0, $v0, 0x4f0
/* 05FFA4 800603F4 00191C02 */  srl         $v1, $t9, 16
/* 05FFA8 800603F8 206304F0 */  addi        $v1, $v1, 0x4f0
.L800603FC:
/* 05FFAC 800603FC C8411800 */  lwc2        $at, 0x1800($v0)
/* 05FFB0 80060400 C8421801 */  lwc2        $v0, 0x1801($v0)
/* 05FFB4 80060404 2021FFF0 */  addi        $at, $at, -0x10
/* 05FFB8 80060408 20420010 */  addi        $v0, $v0, 0x10
/* 05FFBC 8006040C E8611800 */  swc2        $at, 0x1800($v1)
/* 05FFC0 80060410 E8621801 */  swc2        $v0, 0x1801($v1)
/* 05FFC4 80060414 1C20FFF9 */  bgtz        $at, .L800603FC
/* 05FFC8 80060418 20630010 */   addi       $v1, $v1, 0x10
/* 05FFCC 8006041C 0900043B */  j           fakefunc_840010EC
/* 05FFD0 80060420 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FFD4 80060424 00190A00 */  sll         $at, $t9, 8
/* 05FFD8 80060428 00010A02 */  srl         $at, $at, 8
/* 05FFDC 8006042C 20210000 */  addi        $at, $at, 0x0
/* 05FFE0 80060430 AC01000E */  sw          $at, 0xe($zero)
/* 05FFE4 80060434 0900043B */  j           fakefunc_840010EC
/* 05FFE8 80060438 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 05FFEC 8006043C C81F2005 */  lwc2        $ra, 0x2005($zero)
/* 05FFF0 80060440 0019BB02 */  srl         $s7, $t9, 12
/* 05FFF4 80060444 4A19CE6C */  cop2        0x219CE6C
/* 05FFF8 80060448 32F7000F */  andi        $s7, $s7, 0xf
/* 05FFFC 8006044C 4A18C62C */  cop2        0x218C62C
/* 060000 80060450 22F704F0 */  addi        $s7, $s7, 0x4f0
/* 060004 80060454 4A0D6B6C */  cop2        0x20D6B6C
/* 060008 80060458 33210FFF */  andi        $at, $t9, 0xfff
/* 06000C 8006045C 4A0E73AC */  cop2        0x20E73AC
/* 060010 80060460 202104F0 */  addi        $at, $at, 0x4f0
/* 060014 80060464 4A0F7BEC */  cop2        0x20F7BEC
/* 060018 80060468 0019AC02 */  srl         $s5, $t9, 16
/* 06001C 8006046C 4A10842C */  cop2        0x210842C
/* 060020 80060470 32B50FFF */  andi        $s5, $s5, 0xfff
/* 060024 80060474 4A118C6C */  cop2        0x2118C6C
/* 060028 80060478 001AA200 */  sll         $s4, $k0, 8
/* 06002C 8006047C 4A1294AC */  cop2        0x21294AC
/* 060030 80060480 0014A202 */  srl         $s4, $s4, 8
/* 060034 80060484 4A139CEC */  cop2        0x2139CEC
/* 060038 80060488 2003001F */  addi        $v1, $zero, 0x1f
/* 06003C 8006048C 00196F02 */  srl         $t5, $t9, 28
/* 060040 80060490 31A20001 */  andi        $v0, $t5, 0x1
/* 060044 80060494 1C40001A */  bgtz        $v0, .L80060500
/* 060048 80060498 22F60001 */   addi       $s6, $s7, 0x1
/* 06004C 8006049C 31A20002 */  andi        $v0, $t5, 0x2
/* 060050 800604A0 10400002 */  beq         $v0, $zero, .L800604AC
/* 060054 800604A4 22820000 */   addi       $v0, $s4, 0x0
/* 060058 800604A8 8C02000E */  lw          $v0, 0xe($zero)
.L800604AC:
/* 06005C 800604AC 400D3800 */  cop0        0x00D3800
.L800604B0:
/* 060060 800604B0 15A0FFFF */  bne         $t5, $zero, .L800604B0
/* 060064 800604B4 400D3800 */   cop0       0x00D3800
/* 060068 800604B8 400D2800 */  cop0        0x00D2800
.L800604BC:
/* 06006C 800604BC 15A0FFFF */  bne         $t5, $zero, .L800604BC
/* 060070 800604C0 400D2800 */   cop0       0x00D2800
/* 060074 800604C4 40810000 */  cop0        0x0810000
/* 060078 800604C8 40820800 */  cop0        0x0820800
/* 06007C 800604CC 40831000 */  cop0        0x0831000
/* 060080 800604D0 20130020 */  addi        $s3, $zero, 0x20
/* 060084 800604D4 201203F0 */  addi        $s2, $zero, 0x3f0
/* 060088 800604D8 CA791800 */  lwc2        $t9, 0x1800($s3)
/* 06008C 800604DC CA781C00 */  lwc2        $t8, 0x1c00($s3)
/* 060090 800604E0 CA771801 */  lwc2        $s7, 0x1801($s3)
/* 060094 800604E4 CA771C01 */  lwc2        $s7, 0x1c01($s3)
/* 060098 800604E8 40053000 */  cop0        0x0053000
.L800604EC:
/* 06009C 800604EC 14A0FFFF */  bne         $a1, $zero, .L800604EC
/* 0600A0 800604F0 40053000 */   cop0       0x0053000
/* 0600A4 800604F4 40803800 */  cop0        0x0803800
/* 0600A8 800604F8 09000521 */  j           fakefunc_84001484
/* 0600AC 800604FC C83B2001 */   lwc2       $k1, 0x2001($at)
.L80060500:
/* 0600B0 80060500 20130020 */  addi        $s3, $zero, 0x20
/* 0600B4 80060504 4A1BDEEC */  cop2        0x21BDEEC
/* 0600B8 80060508 201203F0 */  addi        $s2, $zero, 0x3f0
/* 0600BC 8006050C CA791800 */  lwc2        $t9, 0x1800($s3)
/* 0600C0 80060510 CA781C00 */  lwc2        $t8, 0x1c00($s3)
/* 0600C4 80060514 CA771801 */  lwc2        $s7, 0x1801($s3)
/* 0600C8 80060518 CA771C01 */  lwc2        $s7, 0x1c01($s3)
/* 0600CC 8006051C E83B2000 */  swc2        $k1, 0x2000($at)
/* 0600D0 80060520 E83B2001 */  swc2        $k1, 0x2001($at)
/* 0600D4 80060524 12A0006B */  beq         $s5, $zero, .L800606D4
/* 0600D8 80060528 20210020 */   addi       $at, $at, 0x20
/* 0600DC 8006052C CACC1800 */  lwc2        $t4, 0x1800($s6)
/* 0600E0 80060530 92EA0000 */  lbu         $t2, 0x0($s7)
/* 0600E4 80060534 200D000C */  addi        $t5, $zero, 0xc
/* 0600E8 80060538 200C0001 */  addi        $t4, $zero, 0x1
/* 0600EC 8006053C 314E000F */  andi        $t6, $t2, 0xf
/* 0600F0 80060540 000E7140 */  sll         $t6, $t6, 5
/* 0600F4 80060544 4B0CCAA8 */  cop2        0x30CCAA8
/* 0600F8 80060548 01D28020 */  add         $s0, $t6, $s2
/* 0600FC 8006054C 4B2CC268 */  cop2        0x32CC268
/* 060100 80060550 000A8902 */  srl         $s1, $t2, 4
/* 060104 80060554 4B4CCA28 */  cop2        0x34CCA28
/* 060108 80060558 01B18822 */  sub         $s1, $t5, $s1
/* 06010C 8006055C 4B6CC1E8 */  cop2        0x36CC1E8
/* 060110 80060560 222DFFFF */  addi        $t5, $s1, -0x1
/* 060114 80060564 000C63C0 */  sll         $t4, $t4, 15
/* 060118 80060568 01AC5806 */  srlv        $t3, $t5, $t4
/* 06011C 8006056C 488BB000 */  cop2        0x08BB000
/* 060120 80060570 CA152000 */  lwc2        $s5, 0x2000($s0)
/* 060124 80060574 CA142001 */  lwc2        $s4, 0x2001($s0)
/* 060128 80060578 2210FFFE */  addi        $s0, $s0, -0x2
/* 06012C 8006057C CA132802 */  lwc2        $s3, 0x2802($s0)
/* 060130 80060580 2210FFFE */  addi        $s0, $s0, -0x2
/* 060134 80060584 CA122802 */  lwc2        $s2, 0x2802($s0)
/* 060138 80060588 2210FFFE */  addi        $s0, $s0, -0x2
/* 06013C 8006058C CA112802 */  lwc2        $s1, 0x2802($s0)
/* 060140 80060590 2210FFFE */  addi        $s0, $s0, -0x2
/* 060144 80060594 CA102802 */  lwc2        $s0, 0x2802($s0)
/* 060148 80060598 2210FFFE */  addi        $s0, $s0, -0x2
/* 06014C 8006059C CA0F2802 */  lwc2        $t7, 0x2802($s0)
/* 060150 800605A0 2210FFFE */  addi        $s0, $s0, -0x2
/* 060154 800605A4 CA0E2802 */  lwc2        $t6, 0x2802($s0)
/* 060158 800605A8 2210FFFE */  addi        $s0, $s0, -0x2
/* 06015C 800605AC CA0D2802 */  lwc2        $t5, 0x2802($s0)
.L800605B0:
/* 060160 800605B0 22D60009 */  addi        $s6, $s6, 0x9
/* 060164 800605B4 4A175786 */  cop2        0x2175786
/* 060168 800605B8 22F70009 */  addi        $s7, $s7, 0x9
/* 06016C 800605BC 4A174F8E */  cop2        0x2174F8E
/* 060170 800605C0 92EA0000 */  lbu         $t2, 0x0($s7)
/* 060174 800605C4 4A174746 */  cop2        0x2174746
/* 060178 800605C8 CACC1800 */  lwc2        $t4, 0x1800($s6)
/* 06017C 800605CC 4A173F4E */  cop2        0x2173F4E
/* 060180 800605D0 200D000C */  addi        $t5, $zero, 0xc
/* 060184 800605D4 1A200003 */  blez        $s1, .L800605E4
/* 060188 800605D8 314E000F */   andi       $t6, $t2, 0xf
/* 06018C 800605DC 4B16F785 */  cop2        0x316F785
/* 060190 800605E0 4B16EF45 */  cop2        0x316EF45
.L800605E4:
/* 060194 800605E4 000E7140 */  sll         $t6, $t6, 5
/* 060198 800605E8 4BDBAAC7 */  cop2        0x3DBAAC7
/* 06019C 800605EC 01D28020 */  add         $s0, $t6, $s2
/* 0601A0 800605F0 4BFBA2CF */  cop2        0x3FBA2CF
/* 0601A4 800605F4 4B1E9ACF */  cop2        0x31E9ACF
/* 0601A8 800605F8 4B3E92CF */  cop2        0x33E92CF
/* 0601AC 800605FC 000A8902 */  srl         $s1, $t2, 4
/* 0601B0 80060600 4B5E8ACF */  cop2        0x35E8ACF
/* 0601B4 80060604 4B7E82CF */  cop2        0x37E82CF
/* 0601B8 80060608 01B18822 */  sub         $s1, $t5, $s1
/* 0601BC 8006060C 4B9E7F0F */  cop2        0x39E7F0F
/* 0601C0 80060610 222DFFFF */  addi        $t5, $s1, -0x1
/* 0601C4 80060614 4BBE72CF */  cop2        0x3BE72CF
/* 0601C8 80060618 4BDE6ACF */  cop2        0x3DE6ACF
/* 0601CC 8006061C 4B7FF2CF */  cop2        0x37FF2CF
/* 0601D0 80060620 01AC5806 */  srlv        $t3, $t5, $t4
/* 0601D4 80060624 4B3C369D */  cop2        0x33C369D
/* 0601D8 80060628 488BB000 */  cop2        0x08BB000
/* 0601DC 8006062C 4B1C371D */  cop2        0x31C371D
/* 0601E0 80060630 4B0CCAA8 */  cop2        0x30CCAA8
/* 0601E4 80060634 4B2CC268 */  cop2        0x32CC268
/* 0601E8 80060638 4B4CCA28 */  cop2        0x34CCA28
/* 0601EC 8006063C 4B6CC1E8 */  cop2        0x36CC1E8
/* 0601F0 80060640 4B3FD2C6 */  cop2        0x33FD2C6
/* 0601F4 80060644 4B3FE70F */  cop2        0x33FE70F
/* 0601F8 80060648 4B1D9AC7 */  cop2        0x31D9AC7
/* 0601FC 8006064C 220FFFFE */  addi        $t7, $s0, -0x2
/* 060200 80060650 4B3D92CF */  cop2        0x33D92CF
/* 060204 80060654 C9F32802 */  lwc2        $s3, 0x2802($t7)
/* 060208 80060658 4B5D8ACF */  cop2        0x35D8ACF
/* 06020C 8006065C 21EFFFFE */  addi        $t7, $t7, -0x2
/* 060210 80060660 4B7D82CF */  cop2        0x37D82CF
/* 060214 80060664 C9F22802 */  lwc2        $s2, 0x2802($t7)
/* 060218 80060668 4B9D7ACF */  cop2        0x39D7ACF
/* 06021C 8006066C 21EFFFFE */  addi        $t7, $t7, -0x2
/* 060220 80060670 4BBD72CF */  cop2        0x3BD72CF
/* 060224 80060674 C9F12802 */  lwc2        $s1, 0x2802($t7)
/* 060228 80060678 4BDD6ACF */  cop2        0x3DD6ACF
/* 06022C 8006067C 21EFFFFE */  addi        $t7, $t7, -0x2
/* 060230 80060680 4B7FEACF */  cop2        0x37FEACF
/* 060234 80060684 C9F02802 */  lwc2        $s0, 0x2802($t7)
/* 060238 80060688 4BDCAACF */  cop2        0x3DCAACF
/* 06023C 8006068C 21EFFFFE */  addi        $t7, $t7, -0x2
/* 060240 80060690 4BFCA2CF */  cop2        0x3FCA2CF
/* 060244 80060694 C9EF2802 */  lwc2        $t7, 0x2802($t7)
/* 060248 80060698 4B3B369D */  cop2        0x33B369D
/* 06024C 8006069C 21EFFFFE */  addi        $t7, $t7, -0x2
/* 060250 800606A0 4B1B36DD */  cop2        0x31B36DD
/* 060254 800606A4 C9EE2802 */  lwc2        $t6, 0x2802($t7)
/* 060258 800606A8 21EFFFFE */  addi        $t7, $t7, -0x2
/* 06025C 800606AC C9ED2802 */  lwc2        $t5, 0x2802($t7)
/* 060260 800606B0 CA152000 */  lwc2        $s5, 0x2000($s0)
/* 060264 800606B4 4B3FD2C6 */  cop2        0x33FD2C6
/* 060268 800606B8 CA142001 */  lwc2        $s4, 0x2001($s0)
/* 06026C 800606BC 4B3FDECF */  cop2        0x33FDECF
/* 060270 800606C0 22B5FFE0 */  addi        $s5, $s5, -0x20
/* 060274 800606C4 E83C2000 */  swc2        $gp, 0x2000($at)
/* 060278 800606C8 20210020 */  addi        $at, $at, 0x20
/* 06027C 800606CC 1EA0FFB8 */  bgtz        $s5, .L800605B0
/* 060280 800606D0 E83B207F */   swc2       $k1, 0x207f($at)
.L800606D4:
/* 060284 800606D4 2021FFE0 */  addi        $at, $at, -0x20
/* 060288 800606D8 0D00045D */  jal         func_84001174
/* 06028C 800606DC 22820000 */   addi       $v0, $s4, 0x0
/* 060290 800606E0 23DEFFF8 */  addi        $fp, $fp, -0x8
/* 060294 800606E4 40053000 */  cop0        0x0053000
.L800606E8:
/* 060298 800606E8 14A0FFFF */  bne         $a1, $zero, .L800606E8
/* 06029C 800606EC 40053000 */   cop0       0x0053000
/* 0602A0 800606F0 0900043B */  j           fakefunc_840010EC
/* 0602A4 800606F4 40803800 */   cop0       0x0803800
/* 0602A8 800606F8 00199E02 */  srl         $s3, $t9, 24
/* 0602AC 800606FC 201403F0 */  addi        $s4, $zero, 0x3f0
/* 0602B0 80060700 4A15AD6C */  cop2        0x215AD6C
/* 0602B4 80060704 12600002 */  beq         $s3, $zero, .L80060710
/* 0602B8 80060708 201704F0 */   addi       $s7, $zero, 0x4f0
/* 0602BC 8006070C 20170660 */  addi        $s7, $zero, 0x660
.L80060710:
/* 0602C0 80060710 CA9C2001 */  lwc2        $gp, 0x2001($s4)
/* 0602C4 80060714 4A16B5AC */  cop2        0x216B5AC
/* 0602C8 80060718 489A9500 */  cop2        0x09A9500
/* 0602CC 8006071C 4A17BDEC */  cop2        0x217BDEC
/* 0602D0 80060720 001AD080 */  sll         $k0, $k0, 2
/* 0602D4 80060724 4A18C62C */  cop2        0x218C62C
/* 0602D8 80060728 489AA000 */  cop2        0x09AA000
/* 0602DC 8006072C 4A19CE6C */  cop2        0x219CE6C
/* 0602E0 80060730 00191200 */  sll         $v0, $t9, 8
/* 0602E4 80060734 4A1AD6AC */  cop2        0x21AD6AC
/* 0602E8 80060738 00021202 */  srl         $v0, $v0, 8
/* 0602EC 8006073C 4A1BDEEC */  cop2        0x21BDEEC
/* 0602F0 80060740 20420000 */  addi        $v0, $v0, 0x0
/* 0602F4 80060744 20030007 */  addi        $v1, $zero, 0x7
/* 0602F8 80060748 20130004 */  addi        $s3, $zero, 0x4
/* 0602FC 8006074C 48939000 */  cop2        0x0939000
/* 060300 80060750 20160170 */  addi        $s6, $zero, 0x170
/* 060304 80060754 4B14E505 */  cop2        0x314E505
/* 060308 80060758 001A9C82 */  srl         $s3, $k0, 18
/* 06030C 8006075C 32730001 */  andi        $s3, $s3, 0x1
/* 060310 80060760 1E60001F */  bgtz        $s3, .L800607E0
/* 060314 80060764 EA942001 */   swc2       $s4, 0x2001($s4)
/* 060318 80060768 23010000 */  addi        $at, $t8, 0x0
/* 06031C 8006076C 40133800 */  cop0        0x0133800
.L80060770:
/* 060320 80060770 1660FFFF */  bne         $s3, $zero, .L80060770
/* 060324 80060774 40133800 */   cop0       0x0133800
/* 060328 80060778 40132800 */  cop0        0x0132800
.L8006077C:
/* 06032C 8006077C 1660FFFF */  bne         $s3, $zero, .L8006077C
/* 060330 80060780 40132800 */   cop0       0x0132800
/* 060334 80060784 40810000 */  cop0        0x0810000
/* 060338 80060788 40820800 */  cop0        0x0820800
/* 06033C 8006078C 40831000 */  cop0        0x0831000
/* 060340 80060790 2294FFFE */  addi        $s4, $s4, -0x2
/* 060344 80060794 CA9B2802 */  lwc2        $k1, 0x2802($s4)
/* 060348 80060798 2294FFFE */  addi        $s4, $s4, -0x2
/* 06034C 8006079C CA9A2802 */  lwc2        $k0, 0x2802($s4)
/* 060350 800607A0 2294FFFE */  addi        $s4, $s4, -0x2
/* 060354 800607A4 CA992802 */  lwc2        $t9, 0x2802($s4)
/* 060358 800607A8 2294FFFE */  addi        $s4, $s4, -0x2
/* 06035C 800607AC CA982802 */  lwc2        $t8, 0x2802($s4)
/* 060360 800607B0 2294FFFE */  addi        $s4, $s4, -0x2
/* 060364 800607B4 CA972802 */  lwc2        $s7, 0x2802($s4)
/* 060368 800607B8 2294FFFE */  addi        $s4, $s4, -0x2
/* 06036C 800607BC CA962802 */  lwc2        $s6, 0x2802($s4)
/* 060370 800607C0 2294FFFE */  addi        $s4, $s4, -0x2
/* 060374 800607C4 CA952802 */  lwc2        $s5, 0x2802($s4)
/* 060378 800607C8 40053000 */  cop0        0x0053000
.L800607CC:
/* 06037C 800607CC 14A0FFFF */  bne         $a1, $zero, .L800607CC
/* 060380 800607D0 40053000 */   cop0       0x0053000
/* 060384 800607D4 40803800 */  cop0        0x0803800
/* 060388 800607D8 090005DF */  j           fakefunc_8400177C
/* 06038C 800607DC C83E1C00 */   lwc2       $fp, 0x1c00($at)
.L800607E0:
/* 060390 800607E0 2294FFFE */  addi        $s4, $s4, -0x2
/* 060394 800607E4 4A1EF7AC */  cop2        0x21EF7AC
/* 060398 800607E8 CA9B2802 */  lwc2        $k1, 0x2802($s4)
/* 06039C 800607EC 2294FFFE */  addi        $s4, $s4, -0x2
/* 0603A0 800607F0 CA9A2802 */  lwc2        $k0, 0x2802($s4)
/* 0603A4 800607F4 2294FFFE */  addi        $s4, $s4, -0x2
/* 0603A8 800607F8 CA992802 */  lwc2        $t9, 0x2802($s4)
/* 0603AC 800607FC 2294FFFE */  addi        $s4, $s4, -0x2
/* 0603B0 80060800 CA982802 */  lwc2        $t8, 0x2802($s4)
/* 0603B4 80060804 2294FFFE */  addi        $s4, $s4, -0x2
/* 0603B8 80060808 CA972802 */  lwc2        $s7, 0x2802($s4)
/* 0603BC 8006080C 2294FFFE */  addi        $s4, $s4, -0x2
/* 0603C0 80060810 CA962802 */  lwc2        $s6, 0x2802($s4)
/* 0603C4 80060814 2294FFFE */  addi        $s4, $s4, -0x2
/* 0603C8 80060818 CA952802 */  lwc2        $s5, 0x2802($s4)
/* 0603CC 8006081C CAFF2000 */  lwc2        $ra, 0x2000($s7)
.L80060820:
/* 0603D0 80060820 4BFEE507 */  cop2        0x3FEE507
/* 0603D4 80060824 4B1FDD0F */  cop2        0x31FDD0F
/* 0603D8 80060828 22D6FFF0 */  addi        $s6, $s6, -0x10
/* 0603DC 8006082C 4B3FD50F */  cop2        0x33FD50F
/* 0603E0 80060830 4B5FCD0F */  cop2        0x35FCD0F
/* 0603E4 80060834 EAFE207F */  swc2        $fp, 0x207f($s7)
/* 0603E8 80060838 4B7FC50F */  cop2        0x37FC50F
/* 0603EC 8006083C 4B9FBF8F */  cop2        0x39FBF8F
/* 0603F0 80060840 4BBFB50F */  cop2        0x3BFB50F
/* 0603F4 80060844 4BDFAD0F */  cop2        0x3DFAD0F
/* 0603F8 80060848 4BB2FD0F */  cop2        0x3B2FD0F
/* 0603FC 8006084C CAFF2001 */  lwc2        $ra, 0x2001($s7)
/* 060400 80060850 4B3E9F5D */  cop2        0x33E9F5D
/* 060404 80060854 4B1E9F9D */  cop2        0x31E9F9D
/* 060408 80060858 4B12ED06 */  cop2        0x312ED06
/* 06040C 8006085C 4B12F78F */  cop2        0x312F78F
/* 060410 80060860 1EC0FFEF */  bgtz        $s6, .L80060820
/* 060414 80060864 22F70010 */   addi       $s7, $s7, 0x10
/* 060418 80060868 22E1FFF8 */  addi        $at, $s7, -0x8
/* 06041C 8006086C 0D00045D */  jal         func_84001174
/* 060420 80060870 EAFE207F */   swc2       $fp, 0x207f($s7)
/* 060424 80060874 23DEFFF8 */  addi        $fp, $fp, -0x8
/* 060428 80060878 40053000 */  cop0        0x0053000
.L8006087C:
/* 06042C 8006087C 14A0FFFF */  bne         $a1, $zero, .L8006087C
/* 060430 80060880 40053000 */   cop0       0x0053000
/* 060434 80060884 0900043B */  j           fakefunc_840010EC
/* 060438 80060888 40803800 */   cop0       0x0803800
/* 06043C 8006088C 001A1200 */  sll         $v0, $k0, 8
/* 060440 80060890 4A17BDEC */  cop2        0x217BDEC
/* 060444 80060894 00021202 */  srl         $v0, $v0, 8
/* 060448 80060898 20420000 */  addi        $v0, $v0, 0x0
/* 06044C 8006089C 2003000F */  addi        $v1, $zero, 0xf
/* 060450 800608A0 0019AF82 */  srl         $s5, $t9, 30
/* 060454 800608A4 1EA00016 */  bgtz        $s5, .L80060900
/* 060458 800608A8 23010000 */   addi       $at, $t8, 0x0
/* 06045C 800608AC 40043800 */  cop0        0x0043800
.L800608B0:
/* 060460 800608B0 1480FFFF */  bne         $a0, $zero, .L800608B0
/* 060464 800608B4 40043800 */   cop0       0x0043800
/* 060468 800608B8 40042800 */  cop0        0x0042800
.L800608BC:
/* 06046C 800608BC 1480FFFF */  bne         $a0, $zero, .L800608BC
/* 060470 800608C0 40042800 */   cop0       0x0042800
/* 060474 800608C4 40810000 */  cop0        0x0810000
/* 060478 800608C8 40820800 */  cop0        0x0820800
/* 06047C 800608CC 40831000 */  cop0        0x0831000
/* 060480 800608D0 0019A082 */  srl         $s4, $t9, 2
/* 060484 800608D4 32940FFF */  andi        $s4, $s4, 0xfff
/* 060488 800608D8 229404E8 */  addi        $s4, $s4, 0x4e8
/* 06048C 800608DC C81F2004 */  lwc2        $ra, 0x2004($zero)
/* 060490 800608E0 C8192003 */  lwc2        $t9, 0x2003($zero)
/* 060494 800608E4 40053000 */  cop0        0x0053000
.L800608E8:
/* 060498 800608E8 14A0FFFF */  bne         $a1, $zero, .L800608E8
/* 06049C 800608EC 40053000 */   cop0       0x0053000
/* 0604A0 800608F0 40803800 */  cop0        0x0803800
/* 0604A4 800608F4 CB131800 */  lwc2        $s3, 0x1800($t8)
/* 0604A8 800608F8 0900061F */  j           fakefunc_8400187C
/* 0604AC 800608FC CB180F04 */   lwc2       $t8, 0xf04($t8)
.L80060900:
/* 0604B0 80060900 0019A082 */  srl         $s4, $t9, 2
/* 0604B4 80060904 32940FFF */  andi        $s4, $s4, 0xfff
/* 0604B8 80060908 229404E8 */  addi        $s4, $s4, 0x4e8
/* 0604BC 8006090C C81F2004 */  lwc2        $ra, 0x2004($zero)
/* 0604C0 80060910 4A139CEC */  cop2        0x2139CEC
/* 0604C4 80060914 C8192003 */  lwc2        $t9, 0x2003($zero)
/* 0604C8 80060918 4A18C62C */  cop2        0x218C62C
/* 0604CC 8006091C 4894AA00 */  cop2        0x094AA00
/* 0604D0 80060920 200400B0 */  addi        $a0, $zero, 0xb0
/* 0604D4 80060924 4884AB00 */  cop2        0x084AB00
/* 0604D8 80060928 4A1FCE51 */  cop2        0x21FCE51
/* 0604DC 8006092C 00192382 */  srl         $a0, $t9, 14
/* 0604E0 80060930 4884AC00 */  cop2        0x084AC00
/* 0604E4 80060934 20040040 */  addi        $a0, $zero, 0x40
/* 0604E8 80060938 4884AD00 */  cop2        0x084AD00
/* 0604EC 8006093C 4A1FCE51 */  cop2        0x21FCE51
/* 0604F0 80060940 C81E2005 */  lwc2        $fp, 0x2005($zero)
/* 0604F4 80060944 C81D2006 */  lwc2        $sp, 0x2006($zero)
/* 0604F8 80060948 C81C2007 */  lwc2        $gp, 0x2007($zero)
/* 0604FC 8006094C 4BF8FE05 */  cop2        0x3F8FE05
/* 060500 80060950 C81B2008 */  lwc2        $k1, 0x2008($zero)
/* 060504 80060954 4B95CDCD */  cop2        0x395CDCD
/* 060508 80060958 C81A2009 */  lwc2        $k0, 0x2009($zero)
/* 06050C 8006095C 4B1EFE0E */  cop2        0x31EFE0E
/* 060510 80060960 EA931800 */  swc2        $s3, 0x1800($s4)
/* 060514 80060964 C8192003 */  lwc2        $t9, 0x2003($zero)
/* 060518 80060968 4B55FD86 */  cop2        0x355FD86
/* 06051C 8006096C 20160170 */  addi        $s6, $zero, 0x170
/* 060520 80060970 4B5EBD8E */  cop2        0x35EBD8E
/* 060524 80060974 33240003 */  andi        $a0, $t9, 0x3
/* 060528 80060978 4BB5C504 */  cop2        0x3B5C504
/* 06052C 8006097C 10800002 */  beq         $a0, $zero, .L80060988
/* 060530 80060980 201704F0 */   addi       $s7, $zero, 0x4f0
/* 060534 80060984 20170660 */  addi        $s7, $zero, 0x660
.L80060988:
/* 060538 80060988 EB180B84 */  swc2        $t8, 0xb84($t8)
/* 06053C 8006098C 4B9EA506 */  cop2        0x39EA506
/* 060540 80060990 E816207B */  swc2        $s6, 0x207b($zero)
/* 060544 80060994 4B75FD0E */  cop2        0x375FD0E
/* 060548 80060998 E814207C */  swc2        $s4, 0x207c($zero)
/* 06054C 8006099C 84150FB0 */  lh          $s5, 0xfb0($zero)
/* 060550 800609A0 840D0FC0 */  lh          $t5, 0xfc0($zero)
/* 060554 800609A4 84110FB8 */  lh          $s1, 0xfb8($zero)
/* 060558 800609A8 84090FC8 */  lh          $t1, 0xfc8($zero)
/* 06055C 800609AC 84140FB2 */  lh          $s4, 0xfb2($zero)
/* 060560 800609B0 840C0FC2 */  lh          $t4, 0xfc2($zero)
/* 060564 800609B4 84100FBA */  lh          $s0, 0xfba($zero)
/* 060568 800609B8 84080FCA */  lh          $t0, 0xfca($zero)
/* 06056C 800609BC 84130FB4 */  lh          $s3, 0xfb4($zero)
/* 060570 800609C0 840B0FC4 */  lh          $t3, 0xfc4($zero)
/* 060574 800609C4 840F0FBC */  lh          $t7, 0xfbc($zero)
/* 060578 800609C8 84070FCC */  lh          $a3, 0xfcc($zero)
/* 06057C 800609CC 84120FB6 */  lh          $s2, 0xfb6($zero)
/* 060580 800609D0 840A0FC6 */  lh          $t2, 0xfc6($zero)
/* 060584 800609D4 840E0FBE */  lh          $t6, 0xfbe($zero)
/* 060588 800609D8 84060FCE */  lh          $a2, 0xfce($zero)
/* 06058C 800609DC CAB31800 */  lwc2        $s3, 0x1800($s5)
/* 060590 800609E0 4BF8FE05 */  cop2        0x3F8FE05
/* 060594 800609E4 C9B21800 */  lwc2        $s2, 0x1800($t5)
/* 060598 800609E8 4BF7FE0F */  cop2        0x3F7FE0F
/* 06059C 800609EC CA331C00 */  lwc2        $s3, 0x1c00($s1)
/* 0605A0 800609F0 4B95CDCD */  cop2        0x395CDCD
/* 0605A4 800609F4 C9321C00 */  lwc2        $s2, 0x1c00($t1)
/* 0605A8 800609F8 4B1EFE0E */  cop2        0x31EFE0E
/* 0605AC 800609FC CA911800 */  lwc2        $s1, 0x1800($s4)
/* 0605B0 80060A00 4B55FD86 */  cop2        0x355FD86
/* 0605B4 80060A04 C9901800 */  lwc2        $s0, 0x1800($t4)
/* 0605B8 80060A08 CA111C00 */  lwc2        $s1, 0x1c00($s0)
/* 0605BC 80060A0C 4B5EBD8E */  cop2        0x35EBD8E
/* 0605C0 80060A10 C9101C00 */  lwc2        $s0, 0x1c00($t0)
/* 0605C4 80060A14 4BB5C504 */  cop2        0x3B5C504
/* 0605C8 80060A18 CA6F1800 */  lwc2        $t7, 0x1800($s3)
/* 0605CC 80060A1C C96E1800 */  lwc2        $t6, 0x1800($t3)
/* 0605D0 80060A20 C9EF1C00 */  lwc2        $t7, 0x1c00($t7)
/* 0605D4 80060A24 C8EE1C00 */  lwc2        $t6, 0x1c00($a3)
/* 0605D8 80060A28 4B9EA506 */  cop2        0x39EA506
/* 0605DC 80060A2C CA4D1800 */  lwc2        $t5, 0x1800($s2)
/* 0605E0 80060A30 4B75FD0E */  cop2        0x375FD0E
/* 0605E4 80060A34 C94C1800 */  lwc2        $t4, 0x1800($t2)
/* 0605E8 80060A38 C9CD1C00 */  lwc2        $t5, 0x1c00($t6)
/* 0605EC 80060A3C 4A129AC0 */  cop2        0x2129AC0
/* 0605F0 80060A40 C8CC1C00 */  lwc2        $t4, 0x1c00($a2)
/* 0605F4 80060A44 4A108A80 */  cop2        0x2108A80
/* 0605F8 80060A48 E816207B */  swc2        $s6, 0x207b($zero)
/* 0605FC 80060A4C 4A0E7A40 */  cop2        0x20E7A40
/* 060600 80060A50 E814207C */  swc2        $s4, 0x207c($zero)
/* 060604 80060A54 84150FB0 */  lh          $s5, 0xfb0($zero)
/* 060608 80060A58 840D0FC0 */  lh          $t5, 0xfc0($zero)
/* 06060C 80060A5C 4A0C6A00 */  cop2        0x20C6A00
/* 060610 80060A60 84110FB8 */  lh          $s1, 0xfb8($zero)
/* 060614 80060A64 4A6B5AD0 */  cop2        0x26B5AD0
/* 060618 80060A68 84090FC8 */  lh          $t1, 0xfc8($zero)
/* 06061C 80060A6C 4A6A5290 */  cop2        0x26A5290
/* 060620 80060A70 84140FB2 */  lh          $s4, 0xfb2($zero)
/* 060624 80060A74 4A694A50 */  cop2        0x2694A50
/* 060628 80060A78 840C0FC2 */  lh          $t4, 0xfc2($zero)
/* 06062C 80060A7C 4A684210 */  cop2        0x2684210
/* 060630 80060A80 84100FBA */  lh          $s0, 0xfba($zero)
/* 060634 80060A84 4ACB5AD0 */  cop2        0x2CB5AD0
/* 060638 80060A88 84080FCA */  lh          $t0, 0xfca($zero)
/* 06063C 80060A8C 4ACA5290 */  cop2        0x2CA5290
/* 060640 80060A90 84130FB4 */  lh          $s3, 0xfb4($zero)
/* 060644 80060A94 4AC94A50 */  cop2        0x2C94A50
/* 060648 80060A98 840B0FC4 */  lh          $t3, 0xfc4($zero)
/* 06064C 80060A9C 4AC84210 */  cop2        0x2C84210
/* 060650 80060AA0 840F0FBC */  lh          $t7, 0xfbc($zero)
/* 060654 80060AA4 4A8BE9C6 */  cop2        0x28BE9C6
/* 060658 80060AA8 84070FCC */  lh          $a3, 0xfcc($zero)
/* 06065C 80060AAC 4A8AE1CE */  cop2        0x28AE1CE
/* 060660 80060AB0 84120FB6 */  lh          $s2, 0xfb6($zero)
/* 060664 80060AB4 4A89D9CE */  cop2        0x289D9CE
/* 060668 80060AB8 840A0FC6 */  lh          $t2, 0xfc6($zero)
/* 06066C 80060ABC 4A88D1CE */  cop2        0x288D1CE
/* 060670 80060AC0 840E0FBE */  lh          $t6, 0xfbe($zero)
/* 060674 80060AC4 84060FCE */  lh          $a2, 0xfce($zero)
/* 060678 80060AC8 22D6FFF0 */  addi        $s6, $s6, -0x10
/* 06067C 80060ACC 1AC00003 */  blez        $s6, .L80060ADC
/* 060680 80060AD0 EAE72000 */   swc2       $a3, 0x2000($s7)
/* 060684 80060AD4 0900064F */  j           fakefunc_8400193C
/* 060688 80060AD8 22F70010 */   addi       $s7, $s7, 0x10
.L80060ADC:
/* 06068C 80060ADC CAB31800 */  lwc2        $s3, 0x1800($s5)
/* 060690 80060AE0 EB180804 */  swc2        $t8, 0x804($t8)
/* 060694 80060AE4 0D00045D */  jal         func_84001174
/* 060698 80060AE8 EB131800 */   swc2       $s3, 0x1800($t8)
/* 06069C 80060AEC 23DEFFF8 */  addi        $fp, $fp, -0x8
/* 0606A0 80060AF0 40053000 */  cop0        0x0053000
.L80060AF4:
/* 0606A4 80060AF4 14A0FFFF */  bne         $a1, $zero, .L80060AF4
/* 0606A8 80060AF8 40053000 */   cop0       0x0053000
/* 0606AC 80060AFC 0900043B */  j           fakefunc_840010EC
/* 0606B0 80060B00 40803800 */   cop0       0x0803800
/* 0606B4 80060B04 00191200 */  sll         $v0, $t9, 8
/* 0606B8 80060B08 00021202 */  srl         $v0, $v0, 8
/* 0606BC 80060B0C 20420000 */  addi        $v0, $v0, 0x0
/* 0606C0 80060B10 C81F2004 */  lwc2        $ra, 0x2004($zero)
/* 0606C4 80060B14 C80A2005 */  lwc2        $t2, 0x2005($zero)
/* 0606C8 80060B18 C81E200A */  lwc2        $fp, 0x200a($zero)
/* 0606CC 80060B1C 4A00002C */  cop2        0x200002C
/* 0606D0 80060B20 001A7402 */  srl         $t6, $k0, 16
/* 0606D4 80060B24 31CF0001 */  andi        $t7, $t6, 0x1
/* 0606D8 80060B28 1DE0000B */  bgtz        $t7, .L80060B58
/* 0606DC 80060B2C 23010000 */   addi       $at, $t8, 0x0
/* 0606E0 80060B30 0D000453 */  jal         func_8400114C
/* 0606E4 80060B34 2003004F */   addi       $v1, $zero, 0x4f
/* 0606E8 80060B38 40053000 */  cop0        0x0053000
.L80060B3C:
/* 0606EC 80060B3C 14A0FFFF */  bne         $a1, $zero, .L80060B3C
/* 0606F0 80060B40 40053000 */   cop0       0x0053000
/* 0606F4 80060B44 40803800 */  cop0        0x0803800
/* 0606F8 80060B48 CB142000 */  lwc2        $s4, 0x2000($t8)
/* 0606FC 80060B4C CB152001 */  lwc2        $s5, 0x2001($t8)
/* 060700 80060B50 CB122002 */  lwc2        $s2, 0x2002($t8)
/* 060704 80060B54 CB132003 */  lwc2        $s3, 0x2003($t8)
.L80060B58:
/* 060708 80060B58 CB182004 */  lwc2        $t8, 0x2004($t8)
/* 06070C 80060B5C 201004F0 */  addi        $s0, $zero, 0x4f0
/* 060710 80060B60 201509D0 */  addi        $s5, $zero, 0x9d0
/* 060714 80060B64 20140B40 */  addi        $s4, $zero, 0xb40
/* 060718 80060B68 20130CB0 */  addi        $s3, $zero, 0xcb0
/* 06071C 80060B6C 20120E20 */  addi        $s2, $zero, 0xe20
/* 060720 80060B70 20110170 */  addi        $s1, $zero, 0x170
/* 060724 80060B74 4816C400 */  cop2        0x016C400
/* 060728 80060B78 11E00033 */  beq         $t7, $zero, .L80060C48
/* 06072C 80060B7C 4817C100 */   cop2       0x017C100
/* 060730 80060B80 2003004F */  addi        $v1, $zero, 0x4f
/* 060734 80060B84 4A14A52C */  cop2        0x214A52C
/* 060738 80060B88 CB140F28 */  lwc2        $s4, 0xf28($t8)
/* 06073C 80060B8C 4A15AD6C */  cop2        0x215AD6C
/* 060740 80060B90 CA112000 */  lwc2        $s1, 0x2000($s0)
/* 060744 80060B94 4A1294AC */  cop2        0x21294AC
/* 060748 80060B98 489A9700 */  cop2        0x09A9700
/* 06074C 80060B9C 4B58F5C4 */  cop2        0x358F5C4
/* 060750 80060BA0 CABD2000 */  lwc2        $sp, 0x2000($s5)
/* 060754 80060BA4 4B38F5CE */  cop2        0x338F5CE
/* 060758 80060BA8 CA7B2000 */  lwc2        $k1, 0x2000($s3)
/* 06075C 80060BAC 4BF4FD0F */  cop2        0x3F4FD0F
/* 060760 80060BB0 CA9C2000 */  lwc2        $gp, 0x2000($s4)
/* 060764 80060BB4 4B00FD4E */  cop2        0x300FD4E
/* 060768 80060BB8 06E10003 */  bgez        $s7, .L80060BC8
/* 06076C 80060BBC 4A139CEC */   cop2       0x2139CEC
/* 060770 80060BC0 090006CB */  j           fakefunc_84001B2C
/* 060774 80060BC4 4B18A523 */   cop2       0x318A523
.L80060BC8:
/* 060778 80060BC8 4B18A520 */  cop2        0x318A520
/* 06077C 80060BCC 4BB8F5C4 */  cop2        0x3B8F5C4
/* 060780 80060BD0 CA5A2000 */  lwc2        $k0, 0x2000($s2)
/* 060784 80060BD4 4B98F5CE */  cop2        0x398F5CE
/* 060788 80060BD8 2231FFF0 */  addi        $s1, $s1, -0x10
/* 06078C 80060BDC 4BF2FC8F */  cop2        0x3F2FC8F
/* 060790 80060BE0 22100010 */  addi        $s0, $s0, 0x10
/* 060794 80060BE4 4B00FCCE */  cop2        0x300FCCE
/* 060798 80060BE8 4BD8A400 */  cop2        0x3D8A400
/* 06079C 80060BEC 06C10003 */  bgez        $s6, .L80060BFC
/* 0607A0 80060BF0 4BF8A3C0 */   cop2       0x3F8A3C0
/* 0607A4 80060BF4 090006D8 */  j           fakefunc_84001B60
/* 0607A8 80060BF8 4B7894A3 */   cop2       0x37894A3
.L80060BFC:
/* 0607AC 80060BFC 4B7894A0 */  cop2        0x37894A0
/* 0607B0 80060C00 4BAAEF40 */  cop2        0x3AAEF40
/* 0607B4 80060C04 4A108F48 */  cop2        0x2108F48
/* 0607B8 80060C08 4BAADEC0 */  cop2        0x3AADEC0
/* 0607BC 80060C0C 4A0F8EC8 */  cop2        0x20F8EC8
/* 0607C0 80060C10 4BD89400 */  cop2        0x3D89400
/* 0607C4 80060C14 4BF893C0 */  cop2        0x3F893C0
/* 0607C8 80060C18 EABD2000 */  swc2        $sp, 0x2000($s5)
/* 0607CC 80060C1C 4BAAE700 */  cop2        0x3AAE700
/* 0607D0 80060C20 22B50010 */  addi        $s5, $s5, 0x10
/* 0607D4 80060C24 4A108F08 */  cop2        0x2108F08
/* 0607D8 80060C28 EA7B2000 */  swc2        $k1, 0x2000($s3)
/* 0607DC 80060C2C 4BAAD680 */  cop2        0x3AAD680
/* 0607E0 80060C30 22730010 */  addi        $s3, $s3, 0x10
/* 0607E4 80060C34 4A0F8E88 */  cop2        0x20F8E88
/* 0607E8 80060C38 EA9C2000 */  swc2        $gp, 0x2000($s4)
/* 0607EC 80060C3C 22940010 */  addi        $s4, $s4, 0x10
/* 0607F0 80060C40 EA5A2000 */  swc2        $k0, 0x2000($s2)
/* 0607F4 80060C44 22520010 */  addi        $s2, $s2, 0x10
.L80060C48:
/* 0607F8 80060C48 4B58AD54 */  cop2        0x358AD54
/* 0607FC 80060C4C 4B38A510 */  cop2        0x338A510
/* 060800 80060C50 CABD2000 */  lwc2        $sp, 0x2000($s5)
/* 060804 80060C54 4BB89CD4 */  cop2        0x3B89CD4
/* 060808 80060C58 CA112000 */  lwc2        $s1, 0x2000($s0)
/* 06080C 80060C5C 06E10003 */  bgez        $s7, .L80060C6C
/* 060810 80060C60 4B989490 */   cop2       0x3989490
/* 060814 80060C64 090006F4 */  j           fakefunc_84001BD0
/* 060818 80060C68 4B18A523 */   cop2       0x318A523
.L80060C6C:
/* 06081C 80060C6C 4B18A520 */  cop2        0x318A520
/* 060820 80060C70 06C10003 */  bgez        $s6, .L80060C80
/* 060824 80060C74 CA7B2000 */   lwc2       $k1, 0x2000($s3)
/* 060828 80060C78 090006F9 */  j           fakefunc_84001BE4
/* 06082C 80060C7C 4B7894A3 */   cop2       0x37894A3
.L80060C80:
/* 060830 80060C80 4B7894A0 */  cop2        0x37894A0
/* 060834 80060C84 4BD8A400 */  cop2        0x3D8A400
/* 060838 80060C88 EB142000 */  swc2        $s4, 0x2000($t8)
/* 06083C 80060C8C 4BF8A3C0 */  cop2        0x3F8A3C0
/* 060840 80060C90 EB152001 */  swc2        $s5, 0x2001($t8)
/* 060844 80060C94 4BAAEF40 */  cop2        0x3AAEF40
/* 060848 80060C98 4A108F48 */  cop2        0x2108F48
/* 06084C 80060C9C CA9C2000 */  lwc2        $gp, 0x2000($s4)
/* 060850 80060CA0 4BAADEC0 */  cop2        0x3AADEC0
/* 060854 80060CA4 CA5A2000 */  lwc2        $k0, 0x2000($s2)
/* 060858 80060CA8 4A0F8EC8 */  cop2        0x20F8EC8
/* 06085C 80060CAC 2231FFF0 */  addi        $s1, $s1, -0x10
/* 060860 80060CB0 4B58AD54 */  cop2        0x358AD54
/* 060864 80060CB4 22100010 */  addi        $s0, $s0, 0x10
/* 060868 80060CB8 4B38A510 */  cop2        0x338A510
/* 06086C 80060CBC EABD2000 */  swc2        $sp, 0x2000($s5)
/* 060870 80060CC0 4BD89400 */  cop2        0x3D89400
/* 060874 80060CC4 22B50010 */  addi        $s5, $s5, 0x10
/* 060878 80060CC8 4BF893C0 */  cop2        0x3F893C0
/* 06087C 80060CCC EA7B2000 */  swc2        $k1, 0x2000($s3)
/* 060880 80060CD0 4BAAE700 */  cop2        0x3AAE700
/* 060884 80060CD4 22730010 */  addi        $s3, $s3, 0x10
/* 060888 80060CD8 4A108F08 */  cop2        0x2108F08
/* 06088C 80060CDC 4BAAD680 */  cop2        0x3AAD680
/* 060890 80060CE0 4A0F8E88 */  cop2        0x20F8E88
/* 060894 80060CE4 EA9C2000 */  swc2        $gp, 0x2000($s4)
/* 060898 80060CE8 22940010 */  addi        $s4, $s4, 0x10
/* 06089C 80060CEC 1A200003 */  blez        $s1, .L80060CFC
/* 0608A0 80060CF0 EA5A2000 */   swc2       $k0, 0x2000($s2)
/* 0608A4 80060CF4 090006EC */  j           fakefunc_84001BB0
/* 0608A8 80060CF8 22520010 */   addi       $s2, $s2, 0x10
.L80060CFC:
/* 0608AC 80060CFC EB122002 */  swc2        $s2, 0x2002($t8)
/* 0608B0 80060D00 EB132003 */  swc2        $s3, 0x2003($t8)
/* 0608B4 80060D04 0D00045D */  jal         func_84001174
/* 0608B8 80060D08 EB182004 */   swc2       $t8, 0x2004($t8)
/* 0608BC 80060D0C 40053000 */  cop0        0x0053000
.L80060D10:
/* 0608C0 80060D10 14A0FFFF */  bne         $a1, $zero, .L80060D10
/* 0608C4 80060D14 40053000 */   cop0       0x0053000
/* 0608C8 80060D18 40803800 */  cop0        0x0803800
/* 0608CC 80060D1C 0900043B */  j           fakefunc_840010EC
/* 0608D0 80060D20 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 0608D4 80060D24 C81F2005 */  lwc2        $ra, 0x2005($zero)
/* 0608D8 80060D28 3336FFFF */  andi        $s6, $t9, 0xffff
/* 0608DC 80060D2C 22D604F0 */  addi        $s6, $s6, 0x4f0
/* 0608E0 80060D30 CADC2000 */  lwc2        $gp, 0x2000($s6)
/* 0608E4 80060D34 0019BC02 */  srl         $s7, $t9, 16
/* 0608E8 80060D38 22F704F0 */  addi        $s7, $s7, 0x4f0
/* 0608EC 80060D3C CAFD2000 */  lwc2        $sp, 0x2000($s7)
/* 0608F0 80060D40 489AF000 */  cop2        0x09AF000
/* 0608F4 80060D44 20150170 */  addi        $s5, $zero, 0x170
.L80060D48:
/* 0608F8 80060D48 4BBFE6C0 */  cop2        0x3BFE6C0
/* 0608FC 80060D4C 22B5FFF0 */  addi        $s5, $s5, -0x10
/* 060900 80060D50 22F70010 */  addi        $s7, $s7, 0x10
/* 060904 80060D54 22D60010 */  addi        $s6, $s6, 0x10
/* 060908 80060D58 4B1EEEC8 */  cop2        0x31EEEC8
/* 06090C 80060D5C CADC2000 */  lwc2        $gp, 0x2000($s6)
/* 060910 80060D60 CAFD2000 */  lwc2        $sp, 0x2000($s7)
/* 060914 80060D64 1EA0FFF8 */  bgtz        $s5, .L80060D48
/* 060918 80060D68 EADB207F */   swc2       $k1, 0x207f($s6)
/* 06091C 80060D6C 0900043B */  j           fakefunc_840010EC
/* 060920 80060D70 23DEFFF8 */   addi       $fp, $fp, -0x8
/* 060924 80060D74 00000000 */  nop
/* 060928 80060D78 00000000 */  nop
/* 06092C 80060D7C 00000000 */  nop
/* 060930 80060D80 4A00002C */  cop2        0x200002C
/* 060934 80060D84 C81F201B */  lwc2        $ra, 0x201b($zero)
/* 060938 80060D88 C81E201C */  lwc2        $fp, 0x201c($zero)
/* 06093C 80060D8C 20170BB0 */  addi        $s7, $zero, 0xbb0
/* 060940 80060D90 20160D08 */  addi        $s6, $zero, 0xd08
/* 060944 80060D94 4B1F0051 */  cop2        0x31F0051
/* 060948 80060D98 8C0B00F0 */  lw          $t3, 0xf0($zero)
/* 06094C 80060D9C 8C0C0FC4 */  lw          $t4, 0xfc4($zero)
/* 060950 80060DA0 20012800 */  addi        $at, $zero, 0x2800
/* 060954 80060DA4 11600006 */  beq         $t3, $zero, .L80060DC0
/* 060958 80060DA8 40812000 */   cop0       0x0812000
/* 06095C 80060DAC 318C0001 */  andi        $t4, $t4, 0x1
/* 060960 80060DB0 1180001E */  beq         $t4, $zero, .L80060E2C
/* 060964 80060DB4 AC000FC4 */   sw         $zero, 0xfc4($zero)
/* 060968 80060DB8 08000459 */  j           fakefunc_80001164
/* 06096C 80060DBC 8C1A0BF8 */   lw         $k0, 0xbf8($zero)
.L80060DC0:
/* 060970 80060DC0 400B5800 */  cop0        0x00B5800
/* 060974 80060DC4 316B0001 */  andi        $t3, $t3, 0x1
/* 060978 80060DC8 1560000B */  bne         $t3, $zero, .L80060DF8
/* 06097C 80060DCC 40024800 */   cop0       0x0024800
/* 060980 80060DD0 8C030FE8 */  lw          $v1, 0xfe8($zero)
/* 060984 80060DD4 00625822 */  sub         $t3, $v1, $v0
/* 060988 80060DD8 1D600007 */  bgtz        $t3, .L80060DF8
/* 06098C 80060DDC 40015000 */   cop0       0x0015000
/* 060990 80060DE0 8C040FEC */  lw          $a0, 0xfec($zero)
/* 060994 80060DE4 10200004 */  beq         $at, $zero, .L80060DF8
/* 060998 80060DE8 00245822 */   sub        $t3, $at, $a0
/* 06099C 80060DEC 05610002 */  bgez        $t3, .L80060DF8
/* 0609A0 80060DF0 00000000 */   nop
/* 0609A4 80060DF4 14220008 */  bne         $at, $v0, .L80060E18
.L80060DF8:
/* 0609A8 80060DF8 400B5800 */   cop0       0x00B5800
/* 0609AC 80060DFC 316B0400 */  andi        $t3, $t3, 0x400
/* 0609B0 80060E00 1560FFFD */  bne         $t3, $zero, .L80060DF8
/* 0609B4 80060E04 200B0001 */   addi       $t3, $zero, 0x1
/* 0609B8 80060E08 408B5800 */  cop0        0x08B5800
/* 0609BC 80060E0C 8C020FEC */  lw          $v0, 0xfec($zero)
/* 0609C0 80060E10 40824000 */  cop0        0x0824000
/* 0609C4 80060E14 40824800 */  cop0        0x0824800
.L80060E18:
/* 0609C8 80060E18 AC0200F0 */  sw          $v0, 0xf0($zero)
/* 0609CC 80060E1C 8C0B00F4 */  lw          $t3, 0xf4($zero)
/* 0609D0 80060E20 15600002 */  bne         $t3, $zero, .L80060E2C
/* 0609D4 80060E24 8C0B0FE0 */   lw         $t3, 0xfe0($zero)
/* 0609D8 80060E28 AC0B00F4 */  sw          $t3, 0xf4($zero)
.L80060E2C:
/* 0609DC 80060E2C 8C010FD0 */  lw          $at, 0xfd0($zero)
/* 0609E0 80060E30 8C0202E8 */  lw          $v0, 0x2e8($zero)
/* 0609E4 80060E34 8C0302F0 */  lw          $v1, 0x2f0($zero)
/* 0609E8 80060E38 8C040418 */  lw          $a0, 0x418($zero)
/* 0609EC 80060E3C 8C050420 */  lw          $a1, 0x420($zero)
/* 0609F0 80060E40 00411020 */  add         $v0, $v0, $at
/* 0609F4 80060E44 00611820 */  add         $v1, $v1, $at
/* 0609F8 80060E48 AC0202E8 */  sw          $v0, 0x2e8($zero)
/* 0609FC 80060E4C AC0302F0 */  sw          $v1, 0x2f0($zero)
/* 060A00 80060E50 00812020 */  add         $a0, $a0, $at
/* 060A04 80060E54 00A12820 */  add         $a1, $a1, $at
/* 060A08 80060E58 AC040418 */  sw          $a0, 0x418($zero)
/* 060A0C 80060E5C AC050420 */  sw          $a1, 0x420($zero)
/* 060A10 80060E60 8C1A0FF0 */  lw          $k0, 0xff0($zero)
/* 060A14 80060E64 200B02F0 */  addi        $t3, $zero, 0x2f0
/* 060A18 80060E68 0C0007ED */  jal         func_80001FB4
/* 060A1C 80060E6C 37EC0000 */   ori        $t4, $ra, 0x0
.L80060E70:
/* 060A20 80060E70 201300A7 */  addi        $s3, $zero, 0xa7
/* 060A24 80060E74 37580000 */  ori         $t8, $k0, 0x0
/* 060A28 80060E78 0C0007F6 */  jal         func_80001FD8
/* 060A2C 80060E7C 24140928 */   addiu      $s4, $zero, 0x928
/* 060A30 80060E80 275A00A8 */  addiu       $k0, $k0, 0xa8
/* 060A34 80060E84 201BFF58 */  addi        $k1, $zero, -0xa8
/* 060A38 80060E88 0C0007F2 */  jal         func_80001FC8
.L80060E8C:
/* 060A3C 80060E8C 40012000 */   cop0       0x0012000
/* 060A40 80060E90 8F7909D0 */  lw          $t9, 0x9d0($k1)
/* 060A44 80060E94 1360FFF6 */  beq         $k1, $zero, .L80060E70
/* 060A48 80060E98 30210080 */   andi       $at, $at, 0x80
/* 060A4C 80060E9C 00196603 */  sra         $t4, $t9, 24
/* 060A50 80060EA0 000C5840 */  sll         $t3, $t4, 1
/* 060A54 80060EA4 956B0376 */  lhu         $t3, 0x376($t3)
/* 060A58 80060EA8 14200380 */  bne         $at, $zero, .L80061CAC
/* 060A5C 80060EAC 8F7809D4 */   lw         $t8, 0x9d4($k1)
/* 060A60 80060EB0 01600008 */  jr          $t3
/* 060A64 80060EB4 277B0008 */   addiu      $k1, $k1, 0x8
/* 060A68 80060EB8 0C000487 */  jal         func_8000121C
/* 060A6C 80060EBC 877409C9 */   lh         $s4, 0x9c9($k1)
/* 060A70 80060EC0 33330FF8 */  andi        $s3, $t9, 0xff8
/* 060A74 80060EC4 0014A083 */  sra         $s4, $s4, 2
/* 060A78 80060EC8 080007F6 */  j           func_80001FD8
/* 060A7C 80060ECC 201F1188 */   addi       $ra, $zero, 0x1188
/* 060A80 80060ED0 8C0B01F4 */  lw          $t3, 0x1f4($zero)
/* 060A84 80060ED4 01795824 */  and         $t3, $t3, $t9
/* 060A88 80060ED8 01785825 */  or          $t3, $t3, $t8
/* 060A8C 80060EDC 08000463 */  j           fakefunc_8000118C
/* 060A90 80060EE0 AC0B01F4 */   sw         $t3, 0x1f4($zero)
/* 060A94 80060EE4 900100DE */  lbu         $at, 0xde($zero)
/* 060A98 80060EE8 10200370 */  beq         $at, $zero, .L80061CAC
/* 060A9C 80060EEC 2021FFFC */   addi       $at, $at, -0x4
/* 060AA0 80060EF0 08000408 */  j           .L80001020
/* 060AA4 80060EF4 8C3A0138 */   lw         $k0, 0x138($at)
/* 060AA8 80060EF8 C81D181A */  lwc2        $sp, 0x181a($zero)
/* 060AAC 80060EFC 8C1900D8 */  lw          $t9, 0xd8($zero)
/* 060AB0 80060F00 22F70008 */  addi        $s7, $s7, 0x8
/* 060AB4 80060F04 EAFD187F */  swc2        $sp, 0x187f($s7)
/* 060AB8 80060F08 AEF80004 */  sw          $t8, 0x4($s7)
/* 060ABC 80060F0C AEF90000 */  sw          $t9, 0x0($s7)
/* 060AC0 80060F10 08000494 */  j           fakefunc_80001250
/* 060AC4 80060F14 22F70008 */   addi       $s7, $s7, 0x8
/* 060AC8 80060F18 201F1208 */  addi        $ra, $zero, 0x1208
/* 060ACC 80060F1C 00185D82 */  srl         $t3, $t8, 22
/* 060AD0 80060F20 316B003C */  andi        $t3, $t3, 0x3c
/* 060AD4 80060F24 8D6B00F8 */  lw          $t3, 0xf8($t3)
/* 060AD8 80060F28 0018C200 */  sll         $t8, $t8, 8
/* 060ADC 80060F2C 0018C202 */  srl         $t8, $t8, 8
/* 060AE0 80060F30 03E00008 */  jr          $ra
/* 060AE4 80060F34 030BC020 */   add        $t8, $t8, $t3
/* 060AE8 80060F38 AC1900C8 */  sw          $t9, 0xc8($zero)
/* 060AEC 80060F3C 08000482 */  j           fakefunc_80001208
/* 060AF0 80060F40 AC1800CC */   sw         $t8, 0xcc($zero)
/* 060AF4 80060F44 AC1900C0 */  sw          $t9, 0xc0($zero)
/* 060AF8 80060F48 08000482 */  j           fakefunc_80001208
/* 060AFC 80060F4C AC1800C4 */   sw         $t8, 0xc4($zero)
/* 060B00 80060F50 201F118C */  addi        $ra, $zero, 0x118c
/* 060B04 80060F54 02F65822 */  sub         $t3, $s7, $s6
/* 060B08 80060F58 1960035E */  blez        $t3, .L80061CD4
.L80060F5C:
/* 060B0C 80060F5C 400C3000 */   cop0       0x00C3000
/* 060B10 80060F60 8C1800F0 */  lw          $t8, 0xf0($zero)
/* 060B14 80060F64 25730158 */  addiu       $s3, $t3, 0x158
/* 060B18 80060F68 1580FFFC */  bne         $t4, $zero, .L80060F5C
/* 060B1C 80060F6C 8C0C0FEC */   lw         $t4, 0xfec($zero)
/* 060B20 80060F70 40984800 */  cop0        0x0984800
/* 060B24 80060F74 03135820 */  add         $t3, $t8, $s3
/* 060B28 80060F78 018B6022 */  sub         $t4, $t4, $t3
/* 060B2C 80060F7C 05810008 */  bgez        $t4, .L80060FA0
.L80060F80:
/* 060B30 80060F80 400B5800 */   cop0       0x00B5800
/* 060B34 80060F84 316B0400 */  andi        $t3, $t3, 0x400
/* 060B38 80060F88 1560FFFD */  bne         $t3, $zero, .L80060F80
/* 060B3C 80060F8C 8C180FE8 */   lw         $t8, 0xfe8($zero)
.L80060F90:
/* 060B40 80060F90 400B5000 */  cop0        0x00B5000
/* 060B44 80060F94 1178FFFE */  beq         $t3, $t8, .L80060F90
/* 060B48 80060F98 00000000 */   nop
/* 060B4C 80060F9C 40984000 */  cop0        0x0984000
.L80060FA0:
/* 060B50 80060FA0 400B5000 */  cop0        0x00B5000
/* 060B54 80060FA4 01785822 */  sub         $t3, $t3, $t8
/* 060B58 80060FA8 19600002 */  blez        $t3, .L80060FB4
/* 060B5C 80060FAC 01735822 */   sub        $t3, $t3, $s3
/* 060B60 80060FB0 1960FFFB */  blez        $t3, .L80060FA0
.L80060FB4:
/* 060B64 80060FB4 03135820 */   add        $t3, $t8, $s3
/* 060B68 80060FB8 AC0B00F0 */  sw          $t3, 0xf0($zero)
/* 060B6C 80060FBC 2273FFFF */  addi        $s3, $s3, -0x1
/* 060B70 80060FC0 22D4DEA8 */  addi        $s4, $s6, -0x2158
/* 060B74 80060FC4 3AD60218 */  xori        $s6, $s6, 0x218
/* 060B78 80060FC8 080007F6 */  j           func_80001FD8
/* 060B7C 80060FCC 22D7FEA8 */   addi       $s7, $s6, -0x158
.L80060FD0:
/* 060B80 80060FD0 200B0418 */  addi        $t3, $zero, 0x418
/* 060B84 80060FD4 080007ED */  j           func_80001FB4
/* 060B88 80060FD8 200C12D0 */   addi       $t4, $zero, 0x12d0
.L80060FDC:
/* 060B8C 80060FDC 37FE0000 */  ori         $fp, $ra, 0x0
/* 060B90 80060FE0 24050014 */  addiu       $a1, $zero, 0x14
/* 060B94 80060FE4 24120006 */  addiu       $s2, $zero, 0x6
/* 060B98 80060FE8 240F09D0 */  addiu       $t7, $zero, 0x9d0
/* 060B9C 80060FEC A64103D2 */  sh          $at, 0x3d2($s2)
/* 060BA0 80060FF0 A64203D4 */  sh          $v0, 0x3d4($s2)
/* 060BA4 80060FF4 A64303D6 */  sh          $v1, 0x3d6($s2)
/* 060BA8 80060FF8 A64003D8 */  sh          $zero, 0x3d8($s2)
/* 060BAC 80060FFC 8C1D03D4 */  lw          $sp, 0x3d4($zero)
.L80061000:
/* 060BB0 80061000 8CA90400 */  lw          $t1, 0x400($a1)
/* 060BB4 80061004 8C700024 */  lw          $s0, 0x24($v1)
/* 060BB8 80061008 02098024 */  and         $s0, $s0, $t1
/* 060BBC 8006100C 2251FFFA */  addi        $s1, $s2, -0x6
/* 060BC0 80061010 3A52001C */  xori        $s2, $s2, 0x1c
/* 060BC4 80061014 2255FFFA */  addi        $s5, $s2, -0x6
.L80061018:
/* 060BC8 80061018 962203D8 */  lhu         $v0, 0x3d8($s1)
/* 060BCC 8006101C 22310002 */  addi        $s1, $s1, 0x2
/* 060BD0 80061020 1040005E */  beq         $v0, $zero, .L8006119C
/* 060BD4 80061024 8C4B0024 */   lw         $t3, 0x24($v0)
/* 060BD8 80061028 01695824 */  and         $t3, $t3, $t1
/* 060BDC 8006102C 11700056 */  beq         $t3, $s0, .L80061188
/* 060BE0 80061030 35700000 */   ori        $s0, $t3, 0x0
/* 060BE4 80061034 12000003 */  beq         $s0, $zero, .L80061044
/* 060BE8 80061038 34530000 */   ori        $s3, $v0, 0x0
/* 060BEC 8006103C 34730000 */  ori         $s3, $v1, 0x0
/* 060BF0 80061040 34430000 */  ori         $v1, $v0, 0x0
.L80061044:
/* 060BF4 80061044 00055840 */  sll         $t3, $a1, 1
/* 060BF8 80061048 C9621830 */  lwc2        $v0, 0x1830($t3)
/* 060BFC 8006104C CA641801 */  lwc2        $a0, 0x1801($s3)
/* 060C00 80061050 CA651800 */  lwc2        $a1, 0x1800($s3)
/* 060C04 80061054 C8661801 */  lwc2        $a2, 0x1801($v1)
/* 060C08 80061058 C8671800 */  lwc2        $a3, 0x1800($v1)
/* 060C0C 8006105C 4B1F10C7 */  cop2        0x31F10C7
/* 060C10 80061060 4A022206 */  cop2        0x2022206
/* 060C14 80061064 4A022A4F */  cop2        0x2022A4F
/* 060C18 80061068 4A03328E */  cop2        0x203328E
/* 060C1C 8006106C 4A033ACF */  cop2        0x2033ACF
/* 060C20 80061070 4A484214 */  cop2        0x2484214
/* 060C24 80061074 C819201D */  lwc2        $t9, 0x201d($zero)
/* 060C28 80061078 4A494A50 */  cop2        0x2494A50
/* 060C2C 8006107C 4A4A5294 */  cop2        0x24A5294
/* 060C30 80061080 4A4B5AD0 */  cop2        0x24B5AD0
/* 060C34 80061084 4AA84214 */  cop2        0x2A84214
/* 060C38 80061088 4AA94A50 */  cop2        0x2A94A50
/* 060C3C 8006108C 4AAA5294 */  cop2        0x2AA5294
/* 060C40 80061090 4AAB5AD0 */  cop2        0x2AB5AD0
/* 060C44 80061094 4B6B4772 */  cop2        0x36B4772
/* 060C48 80061098 4B6A58B1 */  cop2        0x36A58B1
/* 060C4C 8006109C 4B0058F2 */  cop2        0x30058F2
/* 060C50 800610A0 4B795F53 */  cop2        0x3795F53
/* 060C54 800610A4 4B7D1086 */  cop2        0x37D1086
/* 060C58 800610A8 4B7D18CF */  cop2        0x37D18CF
/* 060C5C 800610AC 4B0018E1 */  cop2        0x30018E1
/* 060C60 800610B0 4B1F10A7 */  cop2        0x31F10A7
/* 060C64 800610B4 4B625744 */  cop2        0x3625744
/* 060C68 800610B8 4B625ACD */  cop2        0x3625ACD
/* 060C6C 800610BC 4B00028E */  cop2        0x300028E
/* 060C70 800610C0 4B6B5B72 */  cop2        0x36B5B72
/* 060C74 800610C4 4B6A5B31 */  cop2        0x36A5B31
/* 060C78 800610C8 4B005B72 */  cop2        0x3005B72
/* 060C7C 800610CC 4A0A6744 */  cop2        0x20A6744
.L800610D0:
/* 060C80 800610D0 4A0A6F4D */  cop2        0x20A6F4D
/* 060C84 800610D4 4A0B628E */  cop2        0x20B628E
/* 060C88 800610D8 4A0B6ACF */  cop2        0x20B6ACF
/* 060C8C 800610DC 4B3F0F47 */  cop2        0x33F0F47
/* 060C90 800610E0 4B9F528E */  cop2        0x39F528E
/* 060C94 800610E4 4B9F5ACF */  cop2        0x39F5ACF
/* 060C98 800610E8 4A0A6744 */  cop2        0x20A6744
/* 060C9C 800610EC 4A0A6F4D */  cop2        0x20A6F4D
/* 060CA0 800610F0 4A0B630E */  cop2        0x20B630E
/* 060CA4 800610F4 4A0B6B4F */  cop2        0x20B6B4F
/* 060CA8 800610F8 4A0C4744 */  cop2        0x20C4744
/* 060CAC 800610FC C87A3802 */  lwc2        $k0, 0x3802($v1)
/* 060CB0 80061100 4A0C4F4D */  cop2        0x20C4F4D
/* 060CB4 80061104 C87A1405 */  lwc2        $k0, 0x1405($v1)
/* 060CB8 80061108 4A0D428E */  cop2        0x20D428E
/* 060CBC 8006110C CA793802 */  lwc2        $t9, 0x3802($s3)
/* 060CC0 80061110 4A0D4ACF */  cop2        0x20D4ACF
/* 060CC4 80061114 CA791405 */  lwc2        $t9, 0x1405($s3)
/* 060CC8 80061118 4B625744 */  cop2        0x3625744
/* 060CCC 8006111C 4B625ACD */  cop2        0x3625ACD
/* 060CD0 80061120 4B00528E */  cop2        0x300528E
/* 060CD4 80061124 4B015AE0 */  cop2        0x3015AE0
/* 060CD8 80061128 4B1F52A7 */  cop2        0x31F52A7
/* 060CDC 8006112C 4B015755 */  cop2        0x3015755
/* 060CE0 80061130 4B005AE3 */  cop2        0x3005AE3
/* 060CE4 80061134 4B0152A7 */  cop2        0x30152A7
/* 060CE8 80061138 4B1F5086 */  cop2        0x31F5086
/* 060CEC 8006113C 4B6A3744 */  cop2        0x36A3744
/* 060CF0 80061140 4B6A3F4D */  cop2        0x36A3F4D
/* 060CF4 80061144 4B62274C */  cop2        0x362274C
/* 060CF8 80061148 4B622E0D */  cop2        0x3622E0D
/* 060CFC 8006114C 4B0005CE */  cop2        0x30005CE
/* 060D00 80061150 4B6AD745 */  cop2        0x36AD745
/* 060D04 80061154 4B62CD8D */  cop2        0x362CD8D
/* 060D08 80061158 20070000 */  addi        $a3, $zero, 0x0
/* 060D0C 8006115C 20010002 */  addi        $at, $zero, 0x2
/* 060D10 80061160 A6AF03D8 */  sh          $t7, 0x3d8($s5)
/* 060D14 80061164 080005EE */  j           func_800017B8
/* 060D18 80061168 201F95E4 */   addi       $ra, $zero, -0x6a1c
.L8006116C:
/* 060D1C 8006116C E9F91072 */  swc2        $t9, 0x1072($t7)
/* 060D20 80061170 E9FA0A67 */  swc2        $k0, 0xa67($t7)
/* 060D24 80061174 E9F63878 */  swc2        $s6, 0x3878($t7)
/* 060D28 80061178 E9F61471 */  swc2        $s6, 0x1471($t7)
/* 060D2C 8006117C E9E30A66 */  swc2        $v1, 0xa66($t7)
/* 060D30 80061180 21EFFFD8 */  addi        $t7, $t7, -0x28
/* 060D34 80061184 22B50002 */  addi        $s5, $s5, 0x2
.L80061188:
/* 060D38 80061188 1600FFA3 */  bne         $s0, $zero, .L80061018
/* 060D3C 8006118C 34430000 */   ori        $v1, $v0, 0x0
/* 060D40 80061190 A6A303D8 */  sh          $v1, 0x3d8($s5)
/* 060D44 80061194 080004C6 */  j           fakefunc_80001318
/* 060D48 80061198 22B50002 */   addi       $s5, $s5, 0x2
.L8006119C:
/* 060D4C 8006119C 02B25822 */  sub         $t3, $s5, $s2
/* 060D50 800611A0 0560000F */  bltz        $t3, .L800611E0
/* 060D54 800611A4 A6A003D8 */   sh         $zero, 0x3d8($s5)
/* 060D58 800611A8 96A303D6 */  lhu         $v1, 0x3d6($s5)
/* 060D5C 800611AC 14A0FF94 */  bne         $a1, $zero, .L80061000
/* 060D60 800611B0 20A5FFFC */   addi       $a1, $a1, -0x4
/* 060D64 800611B4 AC0003D4 */  sw          $zero, 0x3d4($zero)
.L800611B8:
/* 060D68 800611B8 964103D2 */  lhu         $at, 0x3d2($s2)
/* 060D6C 800611BC 964203D4 */  lhu         $v0, 0x3d4($s2)
/* 060D70 800611C0 96A303D6 */  lhu         $v1, 0x3d6($s5)
/* 060D74 800611C4 48811500 */  cop2        0x0811500
/* 060D78 800611C8 4BBF00EA */  cop2        0x3BF00EA
/* 060D7C 800611CC 48822600 */  cop2        0x0822600
/* 060D80 800611D0 0C000611 */  jal         func_80001844
/* 060D84 800611D4 48831700 */   cop2       0x0831700
/* 060D88 800611D8 16B2FFF7 */  bne         $s5, $s2, .L800611B8
/* 060D8C 800611DC 22520002 */   addi       $s2, $s2, 0x2
.L800611E0:
/* 060D90 800611E0 03C00008 */  jr          $fp
/* 060D94 800611E4 AC1D03D4 */   sw         $sp, 0x3d4($zero)
/* 060D98 800611E8 97340388 */  lhu         $s4, 0x388($t9)
/* 060D9C 800611EC 0C000487 */  jal         func_8000121C
/* 060DA0 800611F0 976109C9 */   lhu        $at, 0x9c9($k1)
/* 060DA4 800611F4 0281A022 */  sub         $s4, $s4, $at
/* 060DA8 800611F8 0C0007F6 */  jal         func_80001FD8
/* 060DAC 800611FC 2033FFFF */   addi       $s3, $at, -0x1
/* 060DB0 80061200 8C0501F4 */  lw          $a1, 0x1f4($zero)
/* 060DB4 80061204 00052B42 */  srl         $a1, $a1, 13
/* 060DB8 80061208 000108C2 */  srl         $at, $at, 3
/* 060DBC 8006120C 03217822 */  sub         $t7, $t9, $at
/* 060DC0 80061210 95EF0388 */  lhu         $t7, 0x388($t7)
/* 060DC4 80061214 368E0000 */  ori         $t6, $s4, 0x0
/* 060DC8 80061218 900801D9 */  lbu         $t0, 0x1d9($zero)
/* 060DCC 8006121C 30A60010 */  andi        $a2, $a1, 0x10
/* 060DD0 80061220 14C0FF6B */  bne         $a2, $zero, .L80060FD0
/* 060DD4 80061224 30A70009 */   andi       $a3, $a1, 0x9
/* 060DD8 80061228 15000006 */  bne         $t0, $zero, .L80061244
/* 060DDC 8006122C 20E7FFF8 */   addi       $a3, $a3, -0x8
/* 060DE0 80061230 A01901D9 */  sb          $t9, 0x1d9($zero)
/* 060DE4 80061234 20150040 */  addi        $s5, $zero, 0x40
/* 060DE8 80061238 20140000 */  addi        $s4, $zero, 0x0
/* 060DEC 8006123C 0C000422 */  jal         func_80001088
/* 060DF0 80061240 20130080 */   addi       $s3, $zero, 0x80
.L80061244:
/* 060DF4 80061244 C8082008 */  lwc2        $t0, 0x2008($zero)
/* 060DF8 80061248 C80A2009 */  lwc2        $t2, 0x2009($zero)
/* 060DFC 8006124C C80C200A */  lwc2        $t4, 0x200a($zero)
/* 060E00 80061250 C80E200B */  lwc2        $t6, 0x200b($zero)
/* 060E04 80061254 4B004250 */  cop2        0x3004250
/* 060E08 80061258 C8091811 */  lwc2        $t1, 0x1811($zero)
/* 060E0C 8006125C 4B0052D0 */  cop2        0x30052D0
/* 060E10 80061260 C80B1813 */  lwc2        $t3, 0x1813($zero)
/* 060E14 80061264 4B006350 */  cop2        0x3006350
/* 060E18 80061268 C80D1815 */  lwc2        $t5, 0x1815($zero)
/* 060E1C 8006126C 4B0073D0 */  cop2        0x30073D0
/* 060E20 80061270 C80F1817 */  lwc2        $t7, 0x1817($zero)
/* 060E24 80061274 C8081C10 */  lwc2        $t0, 0x1c10($zero)
/* 060E28 80061278 C80A1C12 */  lwc2        $t2, 0x1c12($zero)
/* 060E2C 8006127C 0C0005EE */  jal         func_800017B8
/* 060E30 80061280 C80C1C14 */   lwc2       $t4, 0x1c14($zero)
/* 060E34 80061284 0C0007F2 */  jal         func_80001FC8
/* 060E38 80061288 C80E1C16 */   lwc2       $t6, 0x1c16($zero)
/* 060E3C 8006128C C9D41800 */  lwc2        $s4, 0x1800($t6)
/* 060E40 80061290 4B356C33 */  cop2        0x3356C33
/* 060E44 80061294 C9D41C02 */  lwc2        $s4, 0x1c02($t6)
.L80061298:
/* 060E48 80061298 4B017F46 */  cop2        0x3017F46
/* 060E4C 8006129C 8DCB001C */  lw          $t3, 0x1c($t6)
/* 060E50 800612A0 4B015F4F */  cop2        0x3015F4F
/* 060E54 800612A4 C9D61602 */  lwc2        $s6, 0x1602($t6)
/* 060E58 800612A8 C9D61202 */  lwc2        $s6, 0x1202($t6)
/* 060E5C 800612AC 4A94674E */  cop2        0x294674E
/* 060E60 800612B0 34C90000 */  ori         $t1, $a2, 0x0
/* 060E64 800612B4 4A94474F */  cop2        0x294474F
/* 060E68 800612B8 C9223017 */  lwc2        $v0, 0x3017($t1)
/* 060E6C 800612BC 4AB46F4E */  cop2        0x2B46F4E
/* 060E70 800612C0 ADCB0008 */  sw          $t3, 0x8($t6)
/* 060E74 800612C4 4AB44F4F */  cop2        0x2B44F4F
/* 060E78 800612C8 C9C73001 */  lwc2        $a3, 0x3001($t6)
/* 060E7C 800612CC 4AD475CE */  cop2        0x2D475CE
/* 060E80 800612D0 14C0FF7F */  bne         $a2, $zero, .L800610D0
/* 060E84 800612D4 4AD4560F */   cop2       0x2D4560F
/* 060E88 800612D8 4B7FCEE3 */  cop2        0x37FCEE3
/* 060E8C 800612DC C9D61406 */  lwc2        $s6, 0x1406($t6)
/* 060E90 800612E0 C9D61006 */  lwc2        $s6, 0x1006($t6)
/* 060E94 800612E4 4B00C8E3 */  cop2        0x300C8E3
/* 060E98 800612E8 2021FFFC */  addi        $at, $at, -0x4
/* 060E9C 800612EC 4B92BF44 */  cop2        0x392BF44
/* 060EA0 800612F0 01075822 */  sub         $t3, $t0, $a3
/* 060EA4 800612F4 4B92C08D */  cop2        0x392C08D
/* 060EA8 800612F8 18E00005 */  blez        $a3, .L80061310
/* 060EAC 800612FC E97B07EB */   swc2       $k1, 0x7eb($t3)
/* 060EB0 80061300 E91B07E9 */  swc2        $k1, 0x7e9($t0)
/* 060EB4 80061304 E91B07E8 */  swc2        $k1, 0x7e8($t0)
/* 060EB8 80061308 E91B03C1 */  swc2        $k1, 0x3c1($t0)
/* 060EBC 8006130C E91B03C0 */  swc2        $k1, 0x3c0($t0)
.L80061310:
/* 060EC0 80061310 4B00054E */  cop2        0x300054E
/* 060EC4 80061314 E97B03C3 */  swc2        $k1, 0x3c3($t3)
/* 060EC8 80061318 4B434EB3 */  cop2        0x3434EB3
/* 060ECC 8006131C E9030E7A */  swc2        $v1, 0xe7a($t0)
/* 060ED0 80061320 4BB2B9C6 */  cop2        0x3B2B9C6
/* 060ED4 80061324 E919147C */  swc2        $t9, 0x147c($t0)
/* 060ED8 80061328 4BB2C18F */  cop2        0x3B2C18F
/* 060EDC 8006132C E9191879 */  swc2        $t9, 0x1879($t0)
/* 060EE0 80061330 4B624772 */  cop2        0x3624772
/* 060EE4 80061334 E91A0E7B */  swc2        $k0, 0xe7b($t0)
/* 060EE8 80061338 4B755971 */  cop2        0x3755971
/* 060EEC 8006133C E91A1173 */  swc2        $k0, 0x1173($t0)
/* 060EF0 80061340 4BE25932 */  cop2        0x3E25932
/* 060EF4 80061344 C9C31801 */  lwc2        $v1, 0x1801($t6)
/* 060EF8 80061348 4BF57971 */  cop2        0x3F57971
/* 060EFC 8006134C 00015FC3 */  sra         $t3, $at, 31
/* 060F00 80061350 4B007932 */  cop2        0x3007932
/* 060F04 80061354 316B0028 */  andi        $t3, $t3, 0x28
/* 060F08 80061358 4AF8C765 */  cop2        0x2F8C765
/* 060F0C 8006135C 21EF0050 */  addi        $t7, $t7, 0x50
/* 060F10 80061360 4AF7BF64 */  cop2        0x2F7BF64
/* 060F14 80061364 01EB4022 */  sub         $t0, $t7, $t3
/* 060F18 80061368 4A05AF44 */  cop2        0x205AF44
/* 060F1C 8006136C 484A0800 */  cop2        0x04A0800
/* 060F20 80061370 4A05174D */  cop2        0x205174D
/* 060F24 80061374 E9171C7C */  swc2        $s7, 0x1c7c($t0)
/* 060F28 80061378 4A04AD4E */  cop2        0x204AD4E
/* 060F2C 8006137C C9D41804 */  lwc2        $s4, 0x1804($t6)
/* 060F30 80061380 4A04108F */  cop2        0x204108F
/* 060F34 80061384 E9F71877 */  swc2        $s7, 0x1877($t7)
/* 060F38 80061388 4B00C763 */  cop2        0x300C763
/* 060F3C 8006138C C9170F72 */  lwc2        $s7, 0xf72($t0)
/* 060F40 80061390 4B3F0F47 */  cop2        0x33F0F47
/* 060F44 80061394 E9181C7B */  swc2        $t8, 0x1c7b($t0)
/* 060F48 80061398 4B9FAE8E */  cop2        0x39FAE8E
/* 060F4C 8006139C C9F70B5E */  lwc2        $s7, 0xb5e($t7)
/* 060F50 800613A0 4B9F164F */  cop2        0x39F164F
/* 060F54 800613A4 E9F81876 */  swc2        $t8, 0x1876($t7)
/* 060F58 800613A8 4BFF00A7 */  cop2        0x3FF00A7
/* 060F5C 800613AC C9D41C06 */  lwc2        $s4, 0x1c06($t6)
/* 060F60 800613B0 4AE6C765 */  cop2        0x2E6C765
/* 060F64 800613B4 E903107A */  swc2        $v1, 0x107a($t0)
/* 060F68 800613B8 4A05D744 */  cop2        0x205D744
/* 060F6C 800613BC C9180F6E */  lwc2        $t8, 0xf6e($t0)
/* 060F70 800613C0 4A05CF4D */  cop2        0x205CF4D
/* 060F74 800613C4 E9E31270 */  swc2        $v1, 0x1270($t7)
/* 060F78 800613C8 4A04D14E */  cop2        0x204D14E
/* 060F7C 800613CC C9F80B5A */  lwc2        $t8, 0xb5a($t7)
/* 060F80 800613D0 4A04C90F */  cop2        0x204C90F
/* 060F84 800613D4 A50AFFFE */  sh          $t2, -0x2($t0)
/* 060F88 800613D8 4BFF108F */  cop2        0x3FF108F
/* 060F8C 800613DC 000A5900 */  sll         $t3, $t2, 4
/* 060F90 800613E0 4AE7BF64 */  cop2        0x2E7BF64
/* 060F94 800613E4 484A0800 */  cop2        0x04A0800
/* 060F98 800613E8 4AE5BF44 */  cop2        0x2E5BF44
/* 060F9C 800613EC E9050F7D */  swc2        $a1, 0xf7d($t0)
/* 060FA0 800613F0 4AE5C74D */  cop2        0x2E5C74D
/* 060FA4 800613F4 21CE0020 */  addi        $t6, $t6, 0x20
/* 060FA8 800613F8 4AE2BE8E */  cop2        0x2E2BE8E
/* 060FAC 800613FC A50AFFFC */  sh          $t2, -0x4($t0)
/* 060FB0 80061400 4AE2C64F */  cop2        0x2E2C64F
/* 060FB4 80061404 000A5100 */  sll         $t2, $t2, 4
/* 060FB8 80061408 4AF200D0 */  cop2        0x2F200D0
/* 060FBC 8006140C 4A7618C0 */  cop2        0x27618C0
/* 060FC0 80061410 4AD2B0C8 */  cop2        0x2D2B0C8
/* 060FC4 80061414 4B124773 */  cop2        0x3124773
/* 060FC8 80061418 4B326773 */  cop2        0x3326773
/* 060FCC 8006141C 4A9D18D0 */  cop2        0x29D18D0
/* 060FD0 80061420 A5EBFFD6 */  sh          $t3, -0x2a($t7)
/* 060FD4 80061424 A5EAFFD4 */  sh          $t2, -0x2c($t7)
/* 060FD8 80061428 4B92D744 */  cop2        0x392D744
/* 060FDC 8006142C E9E50B69 */  swc2        $a1, 0xb69($t7)
/* 060FE0 80061430 4B92CE4D */  cop2        0x392CE4D
/* 060FE4 80061434 E9040F7C */  swc2        $a0, 0xf7c($t0)
/* 060FE8 80061438 4B00068E */  cop2        0x300068E
/* 060FEC 8006143C E9E40B68 */  swc2        $a0, 0xb68($t7)
/* 060FF0 80061440 E9030876 */  swc2        $v1, 0x876($t0)
/* 060FF4 80061444 4B018F47 */  cop2        0x3018F47
/* 060FF8 80061448 E9030C77 */  swc2        $v1, 0xc77($t0)
/* 060FFC 8006144C E9E30A62 */  swc2        $v1, 0xa62($t7)
/* 061000 80061450 4B7F9F4F */  cop2        0x37F9F4F
/* 061004 80061454 E9E30E63 */  swc2        $v1, 0xe63($t7)
/* 061008 80061458 4A10D68E */  cop2        0x210D68E
/* 06100C 8006145C 1C20FF8E */  bgtz        $at, .L80061298
/* 061010 80061460 4A10CE4F */   cop2       0x210CE4F
/* 061014 80061464 07E0FF41 */  bltz        $ra, .L8006116C
/* 061018 80061468 4B00C8E3 */   cop2       0x300C8E3
/* 06101C 8006146C E919147C */  swc2        $t9, 0x147c($t0)
/* 061020 80061470 E9F91072 */  swc2        $t9, 0x1072($t7)
/* 061024 80061474 E91A0E7B */  swc2        $k0, 0xe7b($t0)
/* 061028 80061478 E9FA0A67 */  swc2        $k0, 0xa67($t7)
/* 06102C 8006147C E9030E7A */  swc2        $v1, 0xe7a($t0)
/* 061030 80061480 04E0FE82 */  bltz        $a3, .L80060E8C
/* 061034 80061484 E9E30A66 */   swc2       $v1, 0xa66($t7)
/* 061038 80061488 1CE00004 */  bgtz        $a3, .L8006149C
/* 06103C 8006148C 4B7FCEE3 */   cop2       0x37FCEE3
/* 061040 80061490 E91B07EB */  swc2        $k1, 0x7eb($t0)
/* 061044 80061494 08000463 */  j           fakefunc_8000118C
/* 061048 80061498 E9FB03C3 */   swc2       $k1, 0x3c3($t7)
.L8006149C:
/* 06104C 8006149C E91B07EA */  swc2        $k1, 0x7ea($t0)
/* 061050 800614A0 E91B07E9 */  swc2        $k1, 0x7e9($t0)
/* 061054 800614A4 E91B07E8 */  swc2        $k1, 0x7e8($t0)
/* 061058 800614A8 E9FB03C2 */  swc2        $k1, 0x3c2($t7)
/* 06105C 800614AC E9FB03C1 */  swc2        $k1, 0x3c1($t7)
/* 061060 800614B0 08000463 */  j           fakefunc_8000118C
/* 061064 800614B4 E9FB03C0 */   swc2       $k1, 0x3c0($t7)
/* 061068 800614B8 200D0180 */  addi        $t5, $zero, 0x180
/* 06106C 800614BC C810181C */  lwc2        $s0, 0x181c($zero)
/* 061070 800614C0 C8101C1C */  lwc2        $s0, 0x1c1c($zero)
/* 061074 800614C4 C9BD1018 */  lwc2        $sp, 0x1018($t5)
/* 061078 800614C8 C811181D */  lwc2        $s1, 0x181d($zero)
/* 06107C 800614CC C8111C1D */  lwc2        $s1, 0x1c1d($zero)
/* 061080 800614D0 4B7FFCE0 */  cop2        0x37FFCE0
/* 061084 800614D4 4A100551 */  cop2        0x2100551
/* 061088 800614D8 C9B2121A */  lwc2        $s2, 0x121a($t5)
/* 06108C 800614DC 4B1D8427 */  cop2        0x31D8427
/* 061090 800614E0 C9B2161C */  lwc2        $s2, 0x161c($t5)
/* 061094 800614E4 C9B2101B */  lwc2        $s2, 0x101b($t5)
/* 061098 800614E8 4B0104E7 */  cop2        0x30104E7
/* 06109C 800614EC C8121437 */  lwc2        $s2, 0x1437($zero)
/* 0610A0 800614F0 4B3D8C67 */  cop2        0x33D8C67
/* 0610A4 800614F4 C9B20D03 */  lwc2        $s2, 0xd03($t5)
/* 0610A8 800614F8 4B354C33 */  cop2        0x3354C33
/* 0610AC 800614FC 03E00008 */  jr          $ra
/* 0610B0 80061500 22E80050 */   addi       $t0, $s7, 0x50
/* 0610B4 80061504 0C000605 */  jal         func_80001814
/* 0610B8 80061508 AEF80004 */   sw         $t8, 0x4($s7)
/* 0610BC 8006150C 201F118C */  addi        $ra, $zero, 0x118c
/* 0610C0 80061510 AEF90004 */  sw          $t9, 0x4($s7)
/* 0610C4 80061514 CAE23000 */  lwc2        $v0, 0x3000($s7)
/* 0610C8 80061518 92E10005 */  lbu         $at, 0x5($s7)
/* 0610CC 8006151C 92E20006 */  lbu         $v0, 0x6($s7)
/* 0610D0 80061520 92E30007 */  lbu         $v1, 0x7($s7)
/* 0610D4 80061524 4BBF00EA */  cop2        0x3BF00EA
/* 0610D8 80061528 94210388 */  lhu         $at, 0x388($at)
/* 0610DC 8006152C 4BDF0906 */  cop2        0x3DF0906
/* 0610E0 80061530 94420388 */  lhu         $v0, 0x388($v0)
/* 0610E4 80061534 4B3E108C */  cop2        0x33E108C
/* 0610E8 80061538 94630388 */  lhu         $v1, 0x388($v1)
/* 0610EC 8006153C 4B00010E */  cop2        0x300010E
/* 0610F0 80061540 34240000 */  ori         $a0, $at, 0x0
/* 0610F4 80061544 4BFF016D */  cop2        0x3FF016D
/* 0610F8 80061548 C8261006 */  lwc2        $a2, 0x1006($at)
/* 0610FC 8006154C 4BFF01ED */  cop2        0x3FF01ED
/* 061100 80061550 C8441006 */  lwc2        $a0, 0x1006($v0)
/* 061104 80061554 4BA271B3 */  cop2        0x3A271B3
/* 061108 80061558 C8681006 */  lwc2        $t0, 0x1006($v1)
/* 06110C 8006155C 4BFF026D */  cop2        0x3FF026D
/* 061110 80061560 8C250024 */  lw          $a1, 0x24($at)
/* 061114 80061564 4BE27233 */  cop2        0x3E27233
/* 061118 80061568 8C460024 */  lw          $a2, 0x24($v0)
/* 06111C 8006156C 4B260090 */  cop2        0x3260090
/* 061120 80061570 8C670024 */  lw          $a3, 0x24($v1)
/* 061124 80061574 4A043291 */  cop2        0x2043291
/* 061128 80061578 30AB7070 */  andi        $t3, $a1, 0x7070
/* 06112C 8006157C 4A0622D1 */  cop2        0x20622D1
/* 061130 80061580 00CB5824 */  and         $t3, $a2, $t3
/* 061134 80061584 4A083311 */  cop2        0x2083311
/* 061138 80061588 00EB5824 */  and         $t3, $a3, $t3
/* 06113C 8006158C 4B241360 */  cop2        0x3241360
/* 061140 80061590 4A0433A7 */  cop2        0x20433A7
/* 061144 80061594 156001CF */  bne         $t3, $zero, .L80061CD4
/* 061148 80061598 900B01F6 */   lbu        $t3, 0x1f6($zero)
/* 06114C 8006159C 316B0006 */  andi        $t3, $t3, 0x6
/* 061150 800615A0 4B2C5747 */  cop2        0x32C5747
/* 061154 800615A4 8C0C03D4 */  lw          $t4, 0x3d4($zero)
/* 061158 800615A8 4B2B674F */  cop2        0x32B674F
/* 06115C 800615AC 00A62825 */  or          $a1, $a1, $a2
/* 061160 800615B0 4B2410A3 */  cop2        0x32410A3
/* 061164 800615B4 00A72825 */  or          $a1, $a1, $a3
/* 061168 800615B8 4A0432A7 */  cop2        0x20432A7
/* 06116C 800615BC 8D6B03CA */  lw          $t3, 0x3ca($t3)
/* 061170 800615C0 4B2869A3 */  cop2        0x32869A3
/* 061174 800615C4 4806E800 */  cop2        0x006E800
/* 061178 800615C8 4A087127 */  cop2        0x2087127
/* 06117C 800615CC 00AC2824 */  and         $a1, $a1, $t4
/* 061180 800615D0 4A0E43A7 */  cop2        0x20E43A7
/* 061184 800615D4 14A0FE81 */  bne         $a1, $zero, .L80060FDC
/* 061188 800615D8 00CB5820 */   add        $t3, $a2, $t3
/* 06118C 800615DC 4A0231A0 */  cop2        0x20231A0
/* 061190 800615E0 056101BC */  bgez        $t3, .L80061CD4
/* 061194 800615E4 4A0A20A7 */   cop2       0x20A20A7
/* 061198 800615E8 4A0452A7 */  cop2        0x20452A7
/* 06119C 800615EC 48017600 */  cop2        0x0017600
/* 0611A0 800615F0 4BBF7106 */  cop2        0x3BF7106
/* 0611A4 800615F4 10C001B7 */  beq         $a2, $zero, .L80061CD4
/* 0611A8 800615F8 4A0E1191 */   cop2       0x20E1191
/* 0611AC 800615FC 48021600 */  cop2        0x0021600
/* 0611B0 80061600 4A0E5211 */  cop2        0x20E5211
/* 0611B4 80061604 48035600 */  cop2        0x0035600
/* 0611B8 80061608 4A0272D1 */  cop2        0x20272D1
/* 0611BC 8006160C 8C0601F4 */  lw          $a2, 0x1f4($zero)
/* 0611C0 80061610 4A0A7311 */  cop2        0x20A7311
/* 0611C4 80061614 C82D1008 */  lwc2        $t5, 0x1008($at)
/* 0611C8 80061618 4A0253D1 */  cop2        0x20253D1
/* 0611CC 8006161C C84D1408 */  lwc2        $t5, 0x1408($v0)
/* 0611D0 80061620 4B083407 */  cop2        0x3083407
/* 0611D4 80061624 C86D1608 */  lwc2        $t5, 0x1608($v1)
/* 0611D8 80061628 4B0B440F */  cop2        0x30B440F
/* 0611DC 8006162C 00065A80 */  sll         $t3, $a2, 10
/* 0611E0 80061630 4B118C5D */  cop2        0x3118C5D
/* 0611E4 80061634 0561000A */  bgez        $t3, .L80061660
/* 0611E8 80061638 4B30841D */   cop2       0x330841D
/* 0611EC 8006163C C8323002 */  lwc2        $s2, 0x3002($at)
/* 0611F0 80061640 4B0653F3 */  cop2        0x30653F3
/* 0611F4 80061644 C8533002 */  lwc2        $s3, 0x3002($v0)
/* 0611F8 80061648 4B2F4530 */  cop2        0x32F4530
/* 0611FC 8006164C C8753002 */  lwc2        $s5, 0x3002($v1)
/* 061200 80061650 4B3145B2 */  cop2        0x33145B2
/* 061204 80061654 4B304DF1 */  cop2        0x3304DF1
/* 061208 80061658 08000663 */  j           fakefunc_8000198C
/* 06120C 8006165C 4B004E32 */   cop2       0x3004E32
.L80061660:
/* 061210 80061660 C8923002 */  lwc2        $s2, 0x3002($a0)
/* 061214 80061664 4B2F4530 */  cop2        0x32F4530
/* 061218 80061668 C8320313 */  lwc2        $s2, 0x313($at)
/* 06121C 8006166C 4B3145B2 */  cop2        0x33145B2
/* 061220 80061670 C8933002 */  lwc2        $s3, 0x3002($a0)
/* 061224 80061674 4B304DF1 */  cop2        0x3304DF1
/* 061228 80061678 C8530313 */  lwc2        $s3, 0x313($v0)
/* 06122C 8006167C 4B004E32 */  cop2        0x3004E32
/* 061230 80061680 C8953002 */  lwc2        $s5, 0x3002($a0)
/* 061234 80061684 4B0653F3 */  cop2        0x30653F3
/* 061238 80061688 C8750313 */  lwc2        $s5, 0x313($v1)
/* 06123C 8006168C 4B265530 */  cop2        0x3265530
/* 061240 80061690 4B2655B2 */  cop2        0x32655B2
/* 061244 80061694 8C250020 */  lw          $a1, 0x20($at)
/* 061248 80061698 4B285D30 */  cop2        0x3285D30
/* 06124C 8006169C 8C470020 */  lw          $a3, 0x20($v0)
/* 061250 800616A0 4B285DB2 */  cop2        0x3285DB2
/* 061254 800616A4 8C680020 */  lw          $t0, 0x20($v1)
/* 061258 800616A8 4BFE9484 */  cop2        0x3FE9484
/* 06125C 800616AC 900901E7 */  lbu         $t1, 0x1e7($zero)
/* 061260 800616B0 4BFE9CC4 */  cop2        0x3FE9CC4
/* 061264 800616B4 00A75822 */  sub         $t3, $a1, $a3
/* 061268 800616B8 4BFEAD44 */  cop2        0x3FEAD44
/* 06126C 800616BC 000B67C3 */  sra         $t4, $t3, 31
/* 061270 800616C0 4B085BF3 */  cop2        0x3085BF3
/* 061274 800616C4 016C5824 */  and         $t3, $t3, $t4
/* 061278 800616C8 4B5FA744 */  cop2        0x35FA744
/* 06127C 800616CC 00AB2822 */  sub         $a1, $a1, $t3
/* 061280 800616D0 4B5FB58D */  cop2        0x35FB58D
/* 061284 800616D4 00A85822 */  sub         $t3, $a1, $t0
/* 061288 800616D8 4B00050E */  cop2        0x300050E
/* 06128C 800616DC 000B67C3 */  sra         $t4, $t3, 31
/* 061290 800616E0 4BBF7E45 */  cop2        0x3BF7E45
/* 061294 800616E4 016C5824 */  and         $t3, $t3, $t4
/* 061298 800616E8 4B0003CE */  cop2        0x30003CE
/* 06129C 800616EC 00AB2822 */  sub         $a1, $a1, $t3
/* 0612A0 800616F0 4A040115 */  cop2        0x2040115
/* 0612A4 800616F4 AEE50010 */  sw          $a1, 0x10($s7)
/* 0612A8 800616F8 4A000691 */  cop2        0x2000691
/* 0612AC 800616FC CAFB1004 */  lwc2        $k1, 0x1004($s7)
/* 0612B0 80061700 4A14CF45 */  cop2        0x214CF45
/* 0612B4 80061704 48058880 */  cop2        0x0058880
/* 0612B8 80061708 4A147F4C */  cop2        0x2147F4C
/* 0612BC 8006170C 900701E6 */  lbu         $a3, 0x1e6($zero)
/* 0612C0 80061710 4A167D0E */  cop2        0x2167D0E
/* 0612C4 80061714 C8530F0E */  lwc2        $s3, 0xf0e($v0)
/* 0612C8 80061718 4A16CBCF */  cop2        0x216CBCF
/* 0612CC 8006171C C8750F0E */  lwc2        $s5, 0xf0e($v1)
/* 0612D0 80061720 4A10BF44 */  cop2        0x210BF44
/* 0612D4 80061724 C8470F0F */  lwc2        $a3, 0xf0f($v0)
/* 0612D8 80061728 4A10C74D */  cop2        0x210C74D
/* 0612DC 8006172C C8690F0F */  lwc2        $t1, 0xf0f($v1)
/* 0612E0 80061730 4A11BC0E */  cop2        0x211BC0E
/* 0612E4 80061734 34CB00C8 */  ori         $t3, $a2, 0xc8
/* 0612E8 80061738 4A11C44F */  cop2        0x211C44F
/* 0612EC 8006173C 01695825 */  or          $t3, $t3, $t1
/* 0612F0 80061740 4B5E7BE6 */  cop2        0x35E7BE6
/* 0612F4 80061744 A2EB0000 */  sb          $t3, 0x0($s7)
/* 0612F8 80061748 4BBE0F47 */  cop2        0x3BE0F47
/* 0612FC 8006174C EAEA0901 */  swc2        $t2, 0x901($s7)
/* 061300 80061750 4B9E840E */  cop2        0x39E840E
/* 061304 80061754 EAE20902 */  swc2        $v0, 0x902($s7)
/* 061308 80061758 4B9E8C4F */  cop2        0x39E8C4F
/* 06130C 8006175C EAEE0903 */  swc2        $t6, 0x903($s7)
/* 061310 80061760 4B0E1F46 */  cop2        0x30E1F46
/* 061314 80061764 30AC0080 */  andi        $t4, $a1, 0x80
/* 061318 80061768 4B24A74C */  cop2        0x324A74C
/* 06131C 8006176C 01876025 */  or          $t4, $t4, $a3
/* 061320 80061770 4B247F4D */  cop2        0x3247F4D
/* 061324 80061774 A2EC0001 */  sb          $t4, 0x1($s7)
/* 061328 80061778 4B3AA08E */  cop2        0x33AA08E
/* 06132C 8006177C 1120001D */  beq         $t1, $zero, .L800617F4
/* 061330 80061780 4B3A78CF */   cop2       0x33A78CF
/* 061334 80061784 4B1B4772 */  cop2        0x31B4772
/* 061338 80061788 4B3B42B1 */  cop2        0x33B42B1
/* 06133C 8006178C 4A6D0390 */  cop2        0x26D0390
/* 061340 80061790 4B0046F2 */  cop2        0x30046F2
/* 061344 80061794 4BFF05AA */  cop2        0x3FF05AA
/* 061348 80061798 4B0A6F45 */  cop2        0x30A6F45
/* 06134C 8006179C 4B0A774C */  cop2        0x30A774C
/* 061350 800617A0 C8361005 */  lwc2        $s6, 0x1005($at)
/* 061354 800617A4 4B1B738E */  cop2        0x31B738E
/* 061358 800617A8 C8561405 */  lwc2        $s6, 0x1405($v0)
/* 06135C 800617AC 4B1B6B4F */  cop2        0x31B6B4F
/* 061360 800617B0 4BFF02AA */  cop2        0x3FF02AA
/* 061364 800617B4 4BFEF763 */  cop2        0x3FEF763
/* 061368 800617B8 C86A1405 */  lwc2        $t2, 0x1405($v1)
/* 06136C 800617BC 4A8EB745 */  cop2        0x28EB745
/* 061370 800617C0 4A8DB58F */  cop2        0x28DB58F
/* 061374 800617C4 4B00064E */  cop2        0x300064E
/* 061378 800617C8 4BCE5745 */  cop2        0x3CE5745
/* 06137C 800617CC 4BCD528F */  cop2        0x3CD528F
/* 061380 800617D0 4B00034E */  cop2        0x300034E
/* 061384 800617D4 EAF61804 */  swc2        $s6, 0x1804($s7)
/* 061388 800617D8 4A169CE7 */  cop2        0x2169CE7
/* 06138C 800617DC EAF91805 */  swc2        $t9, 0x1805($s7)
/* 061390 800617E0 4A1939E7 */  cop2        0x21939E7
/* 061394 800617E4 CAF21C04 */  lwc2        $s2, 0x1c04($s7)
/* 061398 800617E8 4A0AAD67 */  cop2        0x20AAD67
/* 06139C 800617EC CAE51C05 */  lwc2        $a1, 0x1c05($s7)
/* 0613A0 800617F0 4A0D4A67 */  cop2        0x20D4A67
.L800617F4:
/* 0613A4 800617F4 4A178744 */  cop2        0x2178744
/* 0613A8 800617F8 C8250F0F */  lwc2        $a1, 0xf0f($at)
/* 0613AC 800617FC 4A178F4D */  cop2        0x2178F4D
/* 0613B0 80061800 C8320F0E */  lwc2        $s2, 0xf0e($at)
/* 0613B4 80061804 4A1885CE */  cop2        0x21885CE
/* 0613B8 80061808 84410018 */  lh          $at, 0x18($v0)
/* 0613BC 8006180C 4A188E0F */  cop2        0x2188E0F
/* 0613C0 80061810 26E20020 */  addiu       $v0, $s7, 0x20
/* 0613C4 80061814 4A054A95 */  cop2        0x2054A95
/* 0613C8 80061818 30C30004 */  andi        $v1, $a2, 0x4
/* 0613CC 8006181C 4A12AA51 */  cop2        0x212AA51
/* 0613D0 80061820 00010B80 */  sll         $at, $at, 14
/* 0613D4 80061824 4A053B55 */  cop2        0x2053B55
/* 0613D8 80061828 AEE10008 */  sw          $at, 0x8($s7)
/* 0613DC 8006182C 4A1299D1 */  cop2        0x21299D1
/* 0613E0 80061830 EAE30B08 */  swc2        $v1, 0xb08($s7)
/* 0613E4 80061834 4B265746 */  cop2        0x3265746
/* 0613E8 80061838 EAE20B09 */  swc2        $v0, 0xb09($s7)
/* 0613EC 8006183C 4B264F4F */  cop2        0x3264F4F
/* 0613F0 80061840 EAE30A0C */  swc2        $v1, 0xa0c($s7)
/* 0613F4 80061844 4B2C6F4E */  cop2        0x32C6F4E
/* 0613F8 80061848 EAE20A0D */  swc2        $v0, 0xa0d($s7)
/* 0613FC 8006184C 4B2C3F4F */  cop2        0x32C3F4F
/* 061400 80061850 EAEF0806 */  swc2        $t7, 0x806($s7)
/* 061404 80061854 4B22109D */  cop2        0x322109D
/* 061408 80061858 EAF40807 */  swc2        $s4, 0x807($s7)
/* 06140C 8006185C 4B0318DD */  cop2        0x30318DD
/* 061410 80061860 EAEF0B0A */  swc2        $t7, 0xb0a($s7)
/* 061414 80061864 4B086F46 */  cop2        0x3086F46
/* 061418 80061868 EAF40B0B */  swc2        $s4, 0xb0b($s7)
/* 06141C 8006186C 4B083F4F */  cop2        0x3083F4F
/* 061420 80061870 EAEF0A0E */  swc2        $t7, 0xa0e($s7)
/* 061424 80061874 4B0B574E */  cop2        0x30B574E
/* 061428 80061878 EAF40A0F */  swc2        $s4, 0xa0f($s7)
/* 06142C 8006187C 4B0B4F4F */  cop2        0x30B4F4F
/* 061430 80061880 00035900 */  sll         $t3, $v1, 4
/* 061434 80061884 4B26319D */  cop2        0x326319D
/* 061438 80061888 004B0820 */  add         $at, $v0, $t3
/* 06143C 8006188C 4B0739DD */  cop2        0x30739DD
/* 061440 80061890 00095940 */  sll         $t3, $t1, 5
/* 061444 80061894 4B371744 */  cop2        0x3371744
/* 061448 80061898 002BB820 */  add         $s7, $at, $t3
/* 06144C 8006189C 4B371F4D */  cop2        0x3371F4D
/* 061450 800618A0 30C60001 */  andi        $a2, $a2, 0x1
/* 061454 800618A4 4B38108E */  cop2        0x338108E
/* 061458 800618A8 00065900 */  sll         $t3, $a2, 4
/* 06145C 800618AC 4B3818CF */  cop2        0x33818CF
/* 061460 800618B0 02EBB820 */  add         $s7, $s7, $t3
/* 061464 800618B4 4B373744 */  cop2        0x3373744
/* 061468 800618B8 4B373F4D */  cop2        0x3373F4D
/* 06146C 800618BC 4B38318E */  cop2        0x338318E
/* 061470 800618C0 E8421803 */  swc2        $v0, 0x1803($v0)
/* 061474 800618C4 4B3839CF */  cop2        0x33839CF
/* 061478 800618C8 E8431801 */  swc2        $v1, 0x1801($v0)
/* 06147C 800618CC 4B74174C */  cop2        0x374174C
/* 061480 800618D0 E8221C03 */  swc2        $v0, 0x1c03($at)
/* 061484 800618D4 4B741F4D */  cop2        0x3741F4D
/* 061488 800618D8 E8231C01 */  swc2        $v1, 0x1c01($at)
/* 06148C 800618DC 4B6F120E */  cop2        0x36F120E
/* 061490 800618E0 E8461807 */  swc2        $a2, 0x1807($v0)
/* 061494 800618E4 4B6F1A4F */  cop2        0x36F1A4F
/* 061498 800618E8 E8471805 */  swc2        $a3, 0x1805($v0)
/* 06149C 800618EC 4B012F46 */  cop2        0x3012F46
/* 0614A0 800618F0 E8261C07 */  swc2        $a2, 0x1c07($at)
/* 0614A4 800618F4 4B01974F */  cop2        0x301974F
/* 0614A8 800618F8 E8271C05 */  swc2        $a3, 0x1c05($at)
/* 0614AC 800618FC 4B24474C */  cop2        0x324474C
/* 0614B0 80061900 E8481806 */  swc2        $t0, 0x1806($v0)
/* 0614B4 80061904 4B244F4D */  cop2        0x3244F4D
/* 0614B8 80061908 E8491804 */  swc2        $t1, 0x1804($v0)
/* 0614BC 8006190C 4B3A414E */  cop2        0x33A414E
/* 0614C0 80061910 E8281C06 */  swc2        $t0, 0x1c06($at)
/* 0614C4 80061914 4B3A4C8F */  cop2        0x33A4C8F
/* 0614C8 80061918 E8291C04 */  swc2        $t1, 0x1c04($at)
/* 0614CC 8006191C 4B244286 */  cop2        0x3244286
/* 0614D0 80061920 10C00016 */  beq         $a2, $zero, .L8006197C
/* 0614D4 80061924 4BDE4206 */   cop2       0x3DE4206
/* 0614D8 80061928 4BDE4A4F */  cop2        0x3DE4A4F
/* 0614DC 8006192C E8451802 */  swc2        $a1, 0x1802($v0)
/* 0614E0 80061930 4BDE1086 */  cop2        0x3DE1086
/* 0614E4 80061934 E8521800 */  swc2        $s2, 0x1800($v0)
/* 0614E8 80061938 4BDE18CF */  cop2        0x3DE18CF
/* 0614EC 8006193C E8251C02 */  swc2        $a1, 0x1c02($at)
/* 0614F0 80061940 4BDE3186 */  cop2        0x3DE3186
/* 0614F4 80061944 E8321C00 */  swc2        $s2, 0x1c00($at)
/* 0614F8 80061948 4BDE39CF */  cop2        0x3DE39CF
/* 0614FC 8006194C EAE80F7D */  swc2        $t0, 0xf7d($s7)
/* 061500 80061950 4BDE5744 */  cop2        0x3DE5744
/* 061504 80061954 EAE90F7C */  swc2        $t1, 0xf7c($s7)
/* 061508 80061958 4BDE294E */  cop2        0x3DE294E
/* 06150C 8006195C EAE20F7B */  swc2        $v0, 0xf7b($s7)
/* 061510 80061960 4BDE948F */  cop2        0x3DE948F
/* 061514 80061964 EAE30F7A */  swc2        $v1, 0xf7a($s7)
/* 061518 80061968 EAE60F7F */  swc2        $a2, 0xf7f($s7)
/* 06151C 8006196C EAE70F7E */  swc2        $a3, 0xf7e($s7)
/* 061520 80061970 EAE50F79 */  swc2        $a1, 0xf79($s7)
/* 061524 80061974 08000495 */  j           fakefunc_80001254
/* 061528 80061978 EAF20F78 */   swc2       $s2, 0xf78($s7)
.L8006197C:
/* 06152C 8006197C E8451802 */  swc2        $a1, 0x1802($v0)
/* 061530 80061980 E8521800 */  swc2        $s2, 0x1800($v0)
/* 061534 80061984 E8251C02 */  swc2        $a1, 0x1c02($at)
/* 061538 80061988 08000495 */  j           fakefunc_80001254
/* 06153C 8006198C E8321C00 */   swc2       $s2, 0x1c00($at)
/* 061540 80061990 97390388 */  lhu         $t9, 0x388($t9)
/* 061544 80061994 97180388 */  lhu         $t8, 0x388($t8)
/* 061548 80061998 24017070 */  addiu       $at, $zero, 0x7070
/* 06154C 8006199C 8F2B0024 */  lw          $t3, 0x24($t9)
.L800619A0:
/* 061550 800619A0 002B0824 */  and         $at, $at, $t3
/* 061554 800619A4 1020FD39 */  beq         $at, $zero, .L80060E8C
/* 061558 800619A8 8F2B004C */   lw         $t3, 0x4c($t9)
/* 06155C 800619AC 1738FFFC */  bne         $t9, $t8, .L800619A0
/* 061560 800619B0 27390028 */   addiu      $t9, $t9, 0x28
/* 061564 800619B4 08000479 */  j           fakefunc_800011E4
/* 061568 800619B8 97390388 */   lhu        $t9, 0x388($t9)
/* 06156C 800619BC 8F39001C */  lw          $t9, 0x1c($t9)
/* 061570 800619C0 03381022 */  sub         $v0, $t9, $t8
/* 061574 800619C4 0441FD31 */  bgez        $v0, .L80060E8C
/* 061578 800619C8 8C1800D8 */   lw         $t8, 0xd8($zero)
/* 06157C 800619CC 08000402 */  j           fakefunc_80001008
/* 061580 800619D0 936109C9 */   lbu        $at, 0x9c9($k1)
/* 061584 800619D4 08000410 */  j           fakefunc_80001040
/* 061588 800619D8 97390388 */   lhu        $t9, 0x388($t9)
/* 06158C 800619DC 00000000 */  nop
/* 061590 800619E0 00000000 */  nop
/* 061594 800619E4 00000000 */  nop
/* 061598 800619E8 00000000 */  nop
/* 06159C 800619EC 00000000 */  nop
/* 0615A0 800619F0 00000000 */  nop
/* 0615A4 800619F4 00000000 */  nop
/* 0615A8 800619F8 00000000 */  nop
/* 0615AC 800619FC 00000000 */  nop
/* 0615B0 80061A00 00000000 */  nop
/* 0615B4 80061A04 00000000 */  nop
/* 0615B8 80061A08 00000000 */  nop
/* 0615BC 80061A0C 00000000 */  nop
/* 0615C0 80061A10 00000000 */  nop
/* 0615C4 80061A14 00000000 */  nop
/* 0615C8 80061A18 00000000 */  nop
/* 0615CC 80061A1C 00000000 */  nop
/* 0615D0 80061A20 00000000 */  nop
/* 0615D4 80061A24 00000000 */  nop
/* 0615D8 80061A28 00000000 */  nop
/* 0615DC 80061A2C 00000000 */  nop
/* 0615E0 80061A30 00000000 */  nop
/* 0615E4 80061A34 00000000 */  nop
/* 0615E8 80061A38 00000000 */  nop
/* 0615EC 80061A3C 00000000 */  nop
/* 0615F0 80061A40 00000000 */  nop
/* 0615F4 80061A44 00000000 */  nop
/* 0615F8 80061A48 00000000 */  nop
/* 0615FC 80061A4C 00000000 */  nop
/* 061600 80061A50 00000000 */  nop
/* 061604 80061A54 00000000 */  nop
/* 061608 80061A58 00000000 */  nop
/* 06160C 80061A5C 00000000 */  nop
/* 061610 80061A60 00000000 */  nop
/* 061614 80061A64 00000000 */  nop
/* 061618 80061A68 00000000 */  nop
/* 06161C 80061A6C 00000000 */  nop
/* 061620 80061A70 00000000 */  nop
/* 061624 80061A74 00000000 */  nop
/* 061628 80061A78 00000000 */  nop
/* 06162C 80061A7C 00000000 */  nop
/* 061630 80061A80 00000000 */  nop
/* 061634 80061A84 00000000 */  nop
/* 061638 80061A88 00000000 */  nop
/* 06163C 80061A8C 00000000 */  nop
/* 061640 80061A90 00000000 */  nop
/* 061644 80061A94 00000000 */  nop
/* 061648 80061A98 00000000 */  nop
/* 06164C 80061A9C 00000000 */  nop
/* 061650 80061AA0 00000000 */  nop
/* 061654 80061AA4 00000000 */  nop
/* 061658 80061AA8 00000000 */  nop
/* 06165C 80061AAC 00000000 */  nop
/* 061660 80061AB0 00000000 */  nop
/* 061664 80061AB4 00000000 */  nop
/* 061668 80061AB8 00000000 */  nop
/* 06166C 80061ABC 00000000 */  nop
/* 061670 80061AC0 00000000 */  nop
/* 061674 80061AC4 00000000 */  nop
/* 061678 80061AC8 00000000 */  nop
/* 06167C 80061ACC 00000000 */  nop
/* 061680 80061AD0 00000000 */  nop
/* 061684 80061AD4 00000000 */  nop
/* 061688 80061AD8 00000000 */  nop
/* 06168C 80061ADC 00000000 */  nop
/* 061690 80061AE0 00000000 */  nop
/* 061694 80061AE4 00000000 */  nop
/* 061698 80061AE8 00000000 */  nop
/* 06169C 80061AEC 00000000 */  nop
/* 0616A0 80061AF0 00000000 */  nop
/* 0616A4 80061AF4 00000000 */  nop
/* 0616A8 80061AF8 00000000 */  nop
/* 0616AC 80061AFC 00000000 */  nop
/* 0616B0 80061B00 00000000 */  nop
/* 0616B4 80061B04 00000000 */  nop
/* 0616B8 80061B08 00000000 */  nop
/* 0616BC 80061B0C 00000000 */  nop
/* 0616C0 80061B10 00000000 */  nop
/* 0616C4 80061B14 00000000 */  nop
/* 0616C8 80061B18 00000000 */  nop
/* 0616CC 80061B1C 00000000 */  nop
/* 0616D0 80061B20 00000000 */  nop
/* 0616D4 80061B24 00000000 */  nop
/* 0616D8 80061B28 00000000 */  nop
/* 0616DC 80061B2C 00000000 */  nop
/* 0616E0 80061B30 00000000 */  nop
/* 0616E4 80061B34 00000000 */  nop
/* 0616E8 80061B38 00000000 */  nop
/* 0616EC 80061B3C 00000000 */  nop
/* 0616F0 80061B40 00000000 */  nop
/* 0616F4 80061B44 00000000 */  nop
/* 0616F8 80061B48 00000000 */  nop
/* 0616FC 80061B4C 00000000 */  nop
/* 061700 80061B50 00000000 */  nop
/* 061704 80061B54 00000000 */  nop
/* 061708 80061B58 00000000 */  nop
/* 06170C 80061B5C 00000000 */  nop
/* 061710 80061B60 00000000 */  nop
/* 061714 80061B64 00000000 */  nop
/* 061718 80061B68 00000000 */  nop
/* 06171C 80061B6C 00000000 */  nop
/* 061720 80061B70 00000000 */  nop
/* 061724 80061B74 00000000 */  nop
/* 061728 80061B78 00000000 */  nop
/* 06172C 80061B7C 00000000 */  nop
/* 061730 80061B80 00000000 */  nop
/* 061734 80061B84 00000000 */  nop
/* 061738 80061B88 00000000 */  nop
/* 06173C 80061B8C 00000000 */  nop
/* 061740 80061B90 00000000 */  nop
/* 061744 80061B94 00000000 */  nop
/* 061748 80061B98 00000000 */  nop
/* 06174C 80061B9C 00000000 */  nop
/* 061750 80061BA0 00000000 */  nop
/* 061754 80061BA4 00000000 */  nop
/* 061758 80061BA8 00000000 */  nop
/* 06175C 80061BAC 00000000 */  nop
/* 061760 80061BB0 00000000 */  nop
/* 061764 80061BB4 00000000 */  nop
/* 061768 80061BB8 00000000 */  nop
/* 06176C 80061BBC 00000000 */  nop
/* 061770 80061BC0 00000000 */  nop
/* 061774 80061BC4 00000000 */  nop
/* 061778 80061BC8 00000000 */  nop
/* 06177C 80061BCC 00000000 */  nop
/* 061780 80061BD0 00000000 */  nop
/* 061784 80061BD4 00000000 */  nop
/* 061788 80061BD8 00000000 */  nop
/* 06178C 80061BDC 00000000 */  nop
/* 061790 80061BE0 00000000 */  nop
/* 061794 80061BE4 00000000 */  nop
/* 061798 80061BE8 00000000 */  nop
/* 06179C 80061BEC 00000000 */  nop
/* 0617A0 80061BF0 00000000 */  nop
/* 0617A4 80061BF4 00000000 */  nop
/* 0617A8 80061BF8 00000000 */  nop
/* 0617AC 80061BFC 00000000 */  nop
/* 0617B0 80061C00 00000000 */  nop
/* 0617B4 80061C04 00000000 */  nop
/* 0617B8 80061C08 00000000 */  nop
/* 0617BC 80061C0C 00000000 */  nop
/* 0617C0 80061C10 00000000 */  nop
/* 0617C4 80061C14 00000000 */  nop
/* 0617C8 80061C18 00000000 */  nop
/* 0617CC 80061C1C 00000000 */  nop
/* 0617D0 80061C20 00000000 */  nop
/* 0617D4 80061C24 00000000 */  nop
/* 0617D8 80061C28 00000000 */  nop
/* 0617DC 80061C2C 00000000 */  nop
/* 0617E0 80061C30 00000000 */  nop
/* 0617E4 80061C34 00000000 */  nop
/* 0617E8 80061C38 00000000 */  nop
/* 0617EC 80061C3C 00000000 */  nop
/* 0617F0 80061C40 00000000 */  nop
/* 0617F4 80061C44 00000000 */  nop
/* 0617F8 80061C48 00000000 */  nop
/* 0617FC 80061C4C 00000000 */  nop
/* 061800 80061C50 00000000 */  nop
/* 061804 80061C54 00000000 */  nop
/* 061808 80061C58 00000000 */  nop
/* 06180C 80061C5C 00000000 */  nop
/* 061810 80061C60 00000000 */  nop
/* 061814 80061C64 00000000 */  nop
/* 061818 80061C68 00000000 */  nop
/* 06181C 80061C6C 00000000 */  nop
/* 061820 80061C70 00000000 */  nop
/* 061824 80061C74 00000000 */  nop
/* 061828 80061C78 00000000 */  nop
/* 06182C 80061C7C 00000000 */  nop
/* 061830 80061C80 00000000 */  nop
/* 061834 80061C84 00000000 */  nop
/* 061838 80061C88 00000000 */  nop
/* 06183C 80061C8C 00000000 */  nop
/* 061840 80061C90 00000000 */  nop
/* 061844 80061C94 00000000 */  nop
/* 061848 80061C98 00000000 */  nop
/* 06184C 80061C9C 00000000 */  nop
/* 061850 80061CA0 00000000 */  nop
/* 061854 80061CA4 00000000 */  nop
/* 061858 80061CA8 00000000 */  nop
.L80061CAC:
/* 06185C 80061CAC 200C1000 */  addi        $t4, $zero, 0x1000
/* 061860 80061CB0 200B02E8 */  addi        $t3, $zero, 0x2e8
/* 061864 80061CB4 8D780000 */  lw          $t8, 0x0($t3)
/* 061868 80061CB8 95730004 */  lhu         $s3, 0x4($t3)
/* 06186C 80061CBC 0C0007F6 */  jal         func_80001FD8
/* 061870 80061CC0 95740006 */   lhu        $s4, 0x6($t3)
/* 061874 80061CC4 359F0000 */  ori         $ra, $t4, 0x0
/* 061878 80061CC8 400B3000 */  cop0        0x00B3000
.L80061CCC:
/* 06187C 80061CCC 1560FFFF */  bne         $t3, $zero, .L80061CCC
/* 061880 80061CD0 400B3000 */   cop0       0x00B3000
.L80061CD4:
/* 061884 80061CD4 03E00008 */  jr          $ra
/* 061888 80061CD8 400B2800 */   cop0       0x00B2800

glabel func_80061CDC # 14
.L80061CDC:
/* 06188C 80061CDC 1560FFFF */  bne         $t3, $zero, .L80061CDC
/* 061890 80061CE0 400B2800 */   cop0       0x00B2800
/* 061894 80061CE4 40940000 */  cop0        0x0940000
/* 061898 80061CE8 06800003 */  bltz        $s4, .L80061CF8
/* 06189C 80061CEC 40980800 */   cop0       0x0980800
/* 0618A0 80061CF0 03E00008 */  jr          $ra
/* 0618A4 80061CF4 40931000 */   cop0       0x0931000
.L80061CF8:
/* 0618A8 80061CF8 03E00008 */  jr          $ra
/* 0618AC 80061CFC 40931800 */   cop0       0x0931800

glabel func_80061D00 # 15
/* 0618B0 80061D00 02F65822 */  sub         $t3, $s7, $s6
/* 0618B4 80061D04 256C0157 */  addiu       $t4, $t3, 0x157
/* 0618B8 80061D08 05910094 */  bgezal      $t4, .L80061F5C
/* 0618BC 80061D0C 00000000 */   nop
/* 0618C0 80061D10 0C0007F2 */  jal         func_80001FC8
/* 0618C4 80061D14 8C1800F0 */   lw         $t8, 0xf0($zero)
/* 0618C8 80061D18 0420001A */  bltz        $at, .L80061D84
/* 0618CC 80061D1C 40984800 */   cop0       0x0984800
/* 0618D0 80061D20 1420000F */  bne         $at, $zero, .L80061D60
/* 0618D4 80061D24 035BD020 */   add        $k0, $k0, $k1
/* 0618D8 80061D28 8F7809CC */  lw          $t8, 0x9cc($k1)
/* 0618DC 80061D2C AC1A0FF0 */  sw          $k0, 0xff0($zero)
/* 0618E0 80061D30 AC180FD0 */  sw          $t8, 0xfd0($zero)
/* 0618E4 80061D34 24141080 */  addiu       $s4, $zero, 0x1080
/* 0618E8 80061D38 0C0007F6 */  jal         func_80001FD8
/* 0618EC 80061D3C 20130F47 */   addi       $s3, $zero, 0xf47
/* 0618F0 80061D40 8C1800D8 */  lw          $t8, 0xd8($zero)
/* 0618F4 80061D44 24140180 */  addiu       $s4, $zero, 0x180
/* 0618F8 80061D48 33330FFF */  andi        $s3, $t9, 0xfff
/* 0618FC 80061D4C 0314C020 */  add         $t8, $t8, $s4
/* 061900 80061D50 0C0007F6 */  jal         func_80001FD8
/* 061904 80061D54 02749822 */   sub        $s3, $s3, $s4
/* 061908 80061D58 080007F2 */  j           func_80001FC8
/* 06190C 80061D5C 201F1084 */   addi       $ra, $zero, 0x1084
.L80061D60:
/* 061910 80061D60 8C0B0FD0 */  lw          $t3, 0xfd0($zero)
/* 061914 80061D64 AC1A0BF8 */  sw          $k0, 0xbf8($zero)
/* 061918 80061D68 AC0B0BFC */  sw          $t3, 0xbfc($zero)
/* 06191C 80061D6C 200C5000 */  addi        $t4, $zero, 0x5000
/* 061920 80061D70 8C180FF8 */  lw          $t8, 0xff8($zero)
/* 061924 80061D74 20148000 */  addi        $s4, $zero, -0x8000
/* 061928 80061D78 20130BFF */  addi        $s3, $zero, 0xbff
/* 06192C 80061D7C 080007F6 */  j           func_80001FD8
/* 061930 80061D80 201F1088 */   addi       $ra, $zero, 0x1088
.L80061D84:
/* 061934 80061D84 200C4000 */  addi        $t4, $zero, 0x4000
/* 061938 80061D88 408C2000 */  cop0        0x08C2000
/* 06193C 80061D8C 0000000D */  break       0
/* 061940 80061D90 00000000 */  nop
/* 061944 80061D94 00000000 */  nop
/* 061948 80061D98 900100DE */  lbu         $at, 0xde($zero)
/* 06194C 80061D9C 001913C0 */  sll         $v0, $t9, 15
/* 061950 80061DA0 0C000487 */  jal         func_8000121C
/* 061954 80061DA4 035B1820 */   add        $v1, $k0, $k1
/* 061958 80061DA8 04400057 */  bltz        $v0, .L80061F08
/* 06195C 80061DAC 371A0000 */   ori        $k0, $t8, 0x0
/* 061960 80061DB0 AC230138 */  sw          $v1, 0x138($at)
/* 061964 80061DB4 20210004 */  addi        $at, $at, 0x4
/* 061968 80061DB8 0800045C */  j           fakefunc_80001170
/* 06196C 80061DBC A00100DE */   sb         $at, 0xde($zero)
/* 061970 80061DC0 200B1140 */  addi        $t3, $zero, 0x1140
/* 061974 80061DC4 AD79F0A4 */  sw          $t9, -0xf5c($t3)
/* 061978 80061DC8 08000463 */  j           fakefunc_8000118C
/* 06197C 80061DCC AD78F0A8 */   sw         $t8, -0xf58($t3)
/* 061980 80061DD0 00191402 */  srl         $v0, $t9, 16
/* 061984 80061DD4 94412806 */  lhu         $at, 0x2806($v0)
/* 061988 80061DD8 00390820 */  add         $at, $at, $t9
/* 06198C 80061DDC 08000463 */  j           fakefunc_8000118C
/* 061990 80061DE0 AC380000 */   sw         $t8, 0x0($at)
/* 061994 80061DE4 8C0B00F4 */  lw          $t3, 0xf4($zero)
/* 061998 80061DE8 8C020FE0 */  lw          $v0, 0xfe0($zero)
/* 06199C 80061DEC 0178C022 */  sub         $t8, $t3, $t8
/* 0619A0 80061DF0 03020822 */  sub         $at, $t8, $v0
/* 0619A4 80061DF4 04210002 */  bgez        $at, .L80061E00
/* 0619A8 80061DF8 00000000 */   nop
/* 0619AC 80061DFC 34580000 */  ori         $t8, $v0, 0x0
.L80061E00:
/* 0619B0 80061E00 130B0048 */  beq         $t8, $t3, .L80061F24
/* 0619B4 80061E04 AC1800F4 */   sw         $t8, 0xf4($zero)
/* 0619B8 80061E08 08000449 */  j           fakefunc_80001124
/* 0619BC 80061E0C AC0001D9 */   sw         $zero, 0x1d9($zero)
/* 0619C0 80061E10 943302FA */  lhu         $s3, 0x2fa($at)
/* 0619C4 80061E14 0C0007F2 */  jal         func_80001FC8
/* 0619C8 80061E18 943502FA */   lhu        $s5, 0x2fa($at)
/* 0619CC 80061E1C 201F118C */  addi        $ra, $zero, 0x118c
/* 0619D0 80061E20 228C0018 */  addi        $t4, $s4, 0x18
.L80061E24:
/* 0619D4 80061E24 4B00024E */  cop2        0x300024E
/* 0619D8 80061E28 228B0008 */  addi        $t3, $s4, 0x8
/* 0619DC 80061E2C 4B00020F */  cop2        0x300020F
/* 0619E0 80061E30 22B5FFE0 */  addi        $s5, $s5, -0x20
/* 0619E4 80061E34 4B000747 */  cop2        0x3000747
.L80061E38:
/* 0619E8 80061E38 CAA51808 */  lwc2        $a1, 0x1808($s5)
/* 0619EC 80061E3C CAA51C08 */  lwc2        $a1, 0x1c08($s5)
/* 0619F0 80061E40 CA832002 */  lwc2        $v1, 0x2002($s4)
/* 0619F4 80061E44 CAA41804 */  lwc2        $a0, 0x1804($s5)
/* 0619F8 80061E48 CAA41C04 */  lwc2        $a0, 0x1c04($s5)
/* 0619FC 80061E4C CA822000 */  lwc2        $v0, 0x2000($s4)
/* 061A00 80061E50 4A832F4C */  cop2        0x2832F4C
/* 061A04 80061E54 22940002 */  addi        $s4, $s4, 0x2
/* 061A08 80061E58 4A83274D */  cop2        0x283274D
/* 061A0C 80061E5C 22B50008 */  addi        $s5, $s5, 0x8
/* 061A10 80061E60 4A8229CE */  cop2        0x28229CE
/* 061A14 80061E64 168BFFF4 */  bne         $s4, $t3, .L80061E38
/* 061A18 80061E68 4A82218F */   cop2       0x282218F
/* 061A1C 80061E6C 168CFFED */  bne         $s4, $t4, .L80061E24
/* 061A20 80061E70 22940008 */   addi       $s4, $s4, 0x8
/* 061A24 80061E74 EA692002 */  swc2        $t1, 0x2002($s3)
/* 061A28 80061E78 EA682000 */  swc2        $t0, 0x2000($s3)
/* 061A2C 80061E7C EA672003 */  swc2        $a3, 0x2003($s3)
/* 061A30 80061E80 03E00008 */  jr          $ra
/* 061A34 80061E84 EA662001 */   swc2       $a2, 0x2001($s3)
/* 061A38 80061E88 332B0005 */  andi        $t3, $t9, 0x5
/* 061A3C 80061E8C 15600008 */  bne         $t3, $zero, .L80061EB0
/* 061A40 80061E90 33220002 */   andi       $v0, $t9, 0x2
/* 061A44 80061E94 8C1800F4 */  lw          $t8, 0xf4($zero)
/* 061A48 80061E98 2014E000 */  addi        $s4, $zero, -0x2000
/* 061A4C 80061E9C 0C0007F6 */  jal         func_80001FD8
/* 061A50 80061EA0 2013003F */   addi       $s3, $zero, 0x3f
/* 061A54 80061EA4 23180040 */  addi        $t8, $t8, 0x40
/* 061A58 80061EA8 AC1800F4 */  sw          $t8, 0xf4($zero)
/* 061A5C 80061EAC 8F7809CC */  lw          $t8, 0x9cc($k1)
.L80061EB0:
/* 061A60 80061EB0 01826020 */  add         $t4, $t4, $v0
/* 061A64 80061EB4 AC0001D9 */  sw          $zero, 0x1d9($zero)
/* 061A68 80061EB8 0C000487 */  jal         func_8000121C
/* 061A6C 80061EBC 332100FE */   andi       $at, $t9, 0xfe
/* 061A70 80061EC0 937309C9 */  lbu         $s3, 0x9c9($k1)
/* 061A74 80061EC4 943402F8 */  lhu         $s4, 0x2f8($at)
/* 061A78 80061EC8 00191142 */  srl         $v0, $t9, 5
/* 061A7C 80061ECC 959F033E */  lhu         $ra, 0x33e($t4)
/* 061A80 80061ED0 080007F6 */  j           func_80001FD8
/* 061A84 80061ED4 0282A020 */   add        $s4, $s4, $v0
/* 061A88 80061ED8 8D63EF8C */  lw          $v1, -0x1074($t3)
/* 061A8C 80061EDC 3C028000 */  lui         $v0, 0x8000
/* 061A90 80061EE0 03221007 */  srav        $v0, $t9, $v0
/* 061A94 80061EE4 00190A02 */  srl         $at, $t9, 8
/* 061A98 80061EE8 00221006 */  srlv        $v0, $at, $v0
/* 061A9C 80061EEC 00401027 */  nor         $v0, $v0, $zero
/* 061AA0 80061EF0 00621824 */  and         $v1, $v1, $v0
/* 061AA4 80061EF4 00781825 */  or          $v1, $v1, $t8
/* 061AA8 80061EF8 AD63EF8C */  sw          $v1, -0x1074($t3)
/* 061AAC 80061EFC 8C1900C8 */  lw          $t9, 0xc8($zero)
/* 061AB0 80061F00 08000482 */  j           fakefunc_80001208
/* 061AB4 80061F04 8C1800CC */   lw         $t8, 0xcc($zero)
.L80061F08:
/* 061AB8 80061F08 900B01DC */  lbu         $t3, 0x1dc($zero)
/* 061ABC 80061F0C 080004BB */  j           fakefunc_800012EC
/* 061AC0 80061F10 900601DD */   lbu        $a2, 0x1dd($zero)
/* 061AC4 80061F14 37FE0000 */  ori         $fp, $ra, 0x0
/* 061AC8 80061F18 200B0420 */  addi        $t3, $zero, 0x420
/* 061ACC 80061F1C 080007ED */  j           func_80001FB4
/* 061AD0 80061F20 200C12E0 */   addi       $t4, $zero, 0x12e0
.L80061F24:
/* 061AD4 80061F24 1560008E */  bne         $t3, $zero, .L80062160
/* 061AD8 80061F28 20C60168 */   addi       $a2, $a2, 0x168
/* 061ADC 80061F2C A01901DC */  sb          $t9, 0x1dc($zero)
/* 061AE0 80061F30 C80C2002 */  lwc2        $t4, 0x2002($zero)
/* 061AE4 80061F34 C8082000 */  lwc2        $t0, 0x2000($zero)
/* 061AE8 80061F38 C80D0915 */  lwc2        $t5, 0x915($zero)
/* 061AEC 80061F3C C8090905 */  lwc2        $t1, 0x905($zero)
/* 061AF0 80061F40 4B2C4373 */  cop2        0x32C4373
/* 061AF4 80061F44 C80E0A1A */  lwc2        $t6, 0xa1a($zero)
/* 061AF8 80061F48 4B284273 */  cop2        0x3284273
/* 061AFC 80061F4C C80A0A0A */  lwc2        $t2, 0xa0a($zero)
/* 061B00 80061F50 4B4C43B3 */  cop2        0x34C43B3
/* 061B04 80061F54 20140150 */  addi        $s4, $zero, 0x150
/* 061B08 80061F58 4B4842B3 */  cop2        0x34842B3
.L80061F5C:
/* 061B0C 80061F5C CA873016 */  lwc2        $a3, 0x3016($s4)
/* 061B10 80061F60 4BCC4BB3 */  cop2        0x3CC4BB3
/* 061B14 80061F64 C80D0A19 */  lwc2        $t5, 0xa19($zero)
/* 061B18 80061F68 4BC84AB3 */  cop2        0x3C84AB3
/* 061B1C 80061F6C C8090A09 */  lwc2        $t1, 0xa09($zero)
/* 061B20 80061F70 4B8C4B33 */  cop2        0x38C4B33
/* 061B24 80061F74 C80C0A18 */  lwc2        $t4, 0xa18($zero)
/* 061B28 80061F78 4B884A33 */  cop2        0x3884A33
/* 061B2C 80061F7C C8080A08 */  lwc2        $t0, 0xa08($zero)
/* 061B30 80061F80 4B276F46 */  cop2        0x3276F46
/* 061B34 80061F84 4B274F4F */  cop2        0x3274F4F
/* 061B38 80061F88 4B07674E */  cop2        0x307674E
/* 061B3C 80061F8C EA8F3017 */  swc2        $t7, 0x3017($s4)
/* 061B40 80061F90 4B07474F */  cop2        0x307474F
/* 061B44 80061F94 8E8C00B8 */  lw          $t4, 0xb8($s4)
/* 061B48 80061F98 4B47774E */  cop2        0x347774E
/* 061B4C 80061F9C 4B47574F */  cop2        0x347574F
/* 061B50 80061FA0 4B2B5ADD */  cop2        0x32B5ADD
/* 061B54 80061FA4 AE8C00BC */  sw          $t4, 0xbc($s4)
/* 061B58 80061FA8 4B0F7BDD */  cop2        0x30F7BDD
/* 061B5C 80061FAC 1286006C */  beq         $s4, $a2, .L80062160
/* 061B60 80061FB0 4A0B5F44 */   cop2       0x20B5F44
/* 061B64 80061FB4 4A0B7F4D */  cop2        0x20B7F4D
/* 061B68 80061FB8 4A0F5C0E */  cop2        0x20F5C0E
/* 061B6C 80061FBC 11600002 */  beq         $t3, $zero, .L80061FC8
/* 061B70 80061FC0 4A0F7C4F */   cop2       0x20F7C4F
/* 061B74 80061FC4 22940018 */  addi        $s4, $s4, 0x18
.L80061FC8:
/* 061B78 80061FC8 4B308494 */  cop2        0x3308494
/* 061B7C 80061FCC 200B0001 */  addi        $t3, $zero, 0x1
/* 061B80 80061FD0 4B318F50 */  cop2        0x3318F50
/* 061B84 80061FD4 4B509414 */  cop2        0x3509414
/* 061B88 80061FD8 4B51EC50 */  cop2        0x351EC50
/* 061B8C 80061FDC 4B114776 */  cop2        0x3114776
/* 061B90 80061FE0 CA873019 */  lwc2        $a3, 0x3019($s4)
/* 061B94 80061FE4 4B104435 */  cop2        0x3104435
/* 061B98 80061FE8 4B004476 */  cop2        0x3004476
/* 061B9C 80061FEC 4B105F44 */  cop2        0x3105F44
/* 061BA0 80061FF0 4B107F4D */  cop2        0x3107F4D
/* 061BA4 80061FF4 4B115ACE */  cop2        0x3115ACE
/* 061BA8 80061FF8 4B117BCF */  cop2        0x3117BCF
/* 061BAC 80061FFC 4BFE5AC6 */  cop2        0x3FE5AC6
/* 061BB0 80062000 080004D2 */  j           fakefunc_80001348
/* 061BB4 80062004 4BFE7BCF */   cop2       0x3FE7BCF
/* 061BB8 80062008 4AA70190 */  cop2        0x2A70190
/* 061BBC 8006200C C9343014 */  lwc2        $s4, 0x3014($t1)
/* 061BC0 80062010 4AC70150 */  cop2        0x2C70150
/* 061BC4 80062014 C9DB3801 */  lwc2        $k1, 0x3801($t6)
/* 061BC8 80062018 4AFFF922 */  cop2        0x2FFF922
/* 061BCC 8006201C C93D3818 */  lwc2        $sp, 0x3818($t1)
.L80062020:
/* 061BD0 80062020 4A823D41 */  cop2        0x2823D41
/* 061BD4 80062024 C9243815 */  lwc2        $a0, 0x3815($t1)
/* 061BD8 80062028 4AA23549 */  cop2        0x2A23549
/* 061BDC 8006202C 112D002F */  beq         $t1, $t5, .L800620EC
/* 061BE0 80062030 4AC22D49 */   cop2       0x2C22D49
/* 061BE4 80062034 4A943F01 */  cop2        0x2943F01
/* 061BE8 80062038 C9233812 */  lwc2        $v1, 0x3812($t1)
/* 061BEC 8006203C 4AB43709 */  cop2        0x2B43709
/* 061BF0 80062040 212BFFE8 */  addi        $t3, $t1, -0x18
/* 061BF4 80062044 4AD42F09 */  cop2        0x2D42F09
/* 061BF8 80062048 2129FFD0 */  addi        $t1, $t1, -0x30
/* 061BFC 8006204C 4A1BEF67 */  cop2        0x21BEF67
/* 061C00 80062050 48802300 */  cop2        0x0802300
/* 061C04 80062054 4B0018E7 */  cop2        0x30018E7
/* 061C08 80062058 48802700 */  cop2        0x0802700
/* 061C0C 8006205C 4BFFAD68 */  cop2        0x3FFAD68
/* 061C10 80062060 C9223017 */  lwc2        $v0, 0x3017($t1)
/* 061C14 80062064 4BFFE728 */  cop2        0x3FFE728
/* 061C18 80062068 C9343014 */  lwc2        $s4, 0x3014($t1)
/* 061C1C 8006206C 4BFFEF40 */  cop2        0x3FFEF40
/* 061C20 80062070 4A952748 */  cop2        0x2952748
/* 061C24 80062074 156DFFEA */  bne         $t3, $t5, .L80062020
/* 061C28 80062078 4A9C1F48 */   cop2       0x29C1F48
/* 061C2C 8006207C 4BBF00E7 */  cop2        0x3BF00E7
/* 061C30 80062080 C9D61406 */  lwc2        $s6, 0x1406($t6)
/* 061C34 80062084 C9D61006 */  lwc2        $s6, 0x1006($t6)
/* 061C38 80062088 4B7FCEE3 */  cop2        0x37FCEE3
/* 061C3C 8006208C 30AB0020 */  andi        $t3, $a1, 0x20
/* 061C40 80062090 4A823D40 */  cop2        0x2823D40
/* 061C44 80062094 11600061 */  beq         $t3, $zero, .L8006221C
/* 061C48 80062098 E9DD3801 */   swc2       $sp, 0x3801($t6)
/* 061C4C 8006209C 4AA23548 */  cop2        0x2A23548
/* 061C50 800620A0 30AC0040 */  andi        $t4, $a1, 0x40
/* 061C54 800620A4 4AC22D48 */  cop2        0x2C22D48
/* 061C58 800620A8 4BBF192C */  cop2        0x3BF192C
/* 061C5C 800620AC 4A943F00 */  cop2        0x2943F00
/* 061C60 800620B0 4AB43708 */  cop2        0x2B43708
/* 061C64 800620B4 4AD42F08 */  cop2        0x2D42F08
/* 061C68 800620B8 C802201D */  lwc2        $v0, 0x201d($zero)
/* 061C6C 800620BC 4BBF0D87 */  cop2        0x3BF0D87
/* 061C70 800620C0 4A951D88 */  cop2        0x2951D88
/* 061C74 800620C4 11800055 */  beq         $t4, $zero, .L8006221C
/* 061C78 800620C8 4A9C2588 */   cop2       0x29C2588
/* 061C7C 800620CC 4B020D8F */  cop2        0x3020D8F
/* 061C80 800620D0 4A16B100 */  cop2        0x216B100
/* 061C84 800620D4 4BFFB0C0 */  cop2        0x3FFB0C0
/* 061C88 800620D8 4B42B0C8 */  cop2        0x342B0C8
/* 061C8C 800620DC 4BBF0D47 */  cop2        0x3BF0D47
/* 061C90 800620E0 4B22B588 */  cop2        0x322B588
/* 061C94 800620E4 08000579 */  j           fakefunc_800015E4
/* 061C98 800620E8 4A032588 */   cop2       0x2032588
.L800620EC:
/* 061C9C 800620EC 4A1BEF67 */  cop2        0x21BEF67
/* 061CA0 800620F0 4B002127 */  cop2        0x3002127
/* 061CA4 800620F4 4BFFAD68 */  cop2        0x3FFAD68
/* 061CA8 800620F8 4AFFF8E1 */  cop2        0x2FFF8E1
/* 061CAC 800620FC C9223011 */  lwc2        $v0, 0x3011($t1)
/* 061CB0 80062100 4BBF00E7 */  cop2        0x3BF00E7
/* 061CB4 80062104 C9D61406 */  lwc2        $s6, 0x1406($t6)
/* 061CB8 80062108 C9D61006 */  lwc2        $s6, 0x1006($t6)
/* 061CBC 8006210C 4BFFEF40 */  cop2        0x3FFEF40
/* 061CC0 80062110 08000514 */  j           fakefunc_80001450
/* 061CC4 80062114 4A952748 */   cop2       0x2952748
/* 061CC8 80062118 00000000 */  nop
/* 061CCC 8006211C 00000000 */  nop
/* 061CD0 80062120 4A00002C */  cop2        0x200002C
/* 061CD4 80062124 C81F201B */  lwc2        $ra, 0x201b($zero)
/* 061CD8 80062128 C81E201C */  lwc2        $fp, 0x201c($zero)
/* 061CDC 8006212C 20170A80 */  addi        $s7, $zero, 0xa80
/* 061CE0 80062130 4A000050 */  cop2        0x2000050
/* 061CE4 80062134 20160C68 */  addi        $s6, $zero, 0xc68
/* 061CE8 80062138 4B1F0051 */  cop2        0x31F0051
/* 061CEC 8006213C 8C0B00F0 */  lw          $t3, 0xf0($zero)
/* 061CF0 80062140 8C0C0FC4 */  lw          $t4, 0xfc4($zero)
/* 061CF4 80062144 20012800 */  addi        $at, $zero, 0x2800
/* 061CF8 80062148 11600006 */  beq         $t3, $zero, .L80062164
/* 061CFC 8006214C 40812000 */   cop0       0x0812000
/* 061D00 80062150 318C0001 */  andi        $t4, $t4, 0x1
/* 061D04 80062154 11800021 */  beq         $t4, $zero, .L800621DC
/* 061D08 80062158 AC000FC4 */   sw         $zero, 0xfc4($zero)
/* 061D0C 8006215C 0800045A */  j           fakefunc_80001168
.L80062160:
/* 061D10 80062160 8C1A0BF8 */   lw         $k0, 0xbf8($zero)
.L80062164:
/* 061D14 80062164 400B5800 */  cop0        0x00B5800
/* 061D18 80062168 316B0001 */  andi        $t3, $t3, 0x1
/* 061D1C 8006216C 1560000B */  bne         $t3, $zero, .L8006219C
/* 061D20 80062170 40024800 */   cop0       0x0024800
/* 061D24 80062174 8C030FE8 */  lw          $v1, 0xfe8($zero)
/* 061D28 80062178 00625822 */  sub         $t3, $v1, $v0
/* 061D2C 8006217C 1D600007 */  bgtz        $t3, .L8006219C
/* 061D30 80062180 40015000 */   cop0       0x0015000
/* 061D34 80062184 8C040FEC */  lw          $a0, 0xfec($zero)
/* 061D38 80062188 10200004 */  beq         $at, $zero, .L8006219C
/* 061D3C 8006218C 00245822 */   sub        $t3, $at, $a0
/* 061D40 80062190 05610002 */  bgez        $t3, .L8006219C
/* 061D44 80062194 00000000 */   nop
/* 061D48 80062198 14220008 */  bne         $at, $v0, .L800621BC
.L8006219C:
/* 061D4C 8006219C 400B5800 */   cop0       0x00B5800
/* 061D50 800621A0 316B0400 */  andi        $t3, $t3, 0x400
/* 061D54 800621A4 1560FFFD */  bne         $t3, $zero, .L8006219C
/* 061D58 800621A8 200B0001 */   addi       $t3, $zero, 0x1
/* 061D5C 800621AC 408B5800 */  cop0        0x08B5800
/* 061D60 800621B0 8C020FEC */  lw          $v0, 0xfec($zero)
/* 061D64 800621B4 40824000 */  cop0        0x0824000
/* 061D68 800621B8 40824800 */  cop0        0x0824800
.L800621BC:
/* 061D6C 800621BC AC0200F0 */  sw          $v0, 0xf0($zero)
/* 061D70 800621C0 00000000 */  nop
/* 061D74 800621C4 00000000 */  nop
/* 061D78 800621C8 00000000 */  nop
/* 061D7C 800621CC 8C0B00F4 */  lw          $t3, 0xf4($zero)
/* 061D80 800621D0 15600002 */  bne         $t3, $zero, .L800621DC
/* 061D84 800621D4 8C0B0FE0 */   lw         $t3, 0xfe0($zero)
/* 061D88 800621D8 AC0B00F4 */  sw          $t3, 0xf4($zero)
.L800621DC:
/* 061D8C 800621DC 8C010FD0 */  lw          $at, 0xfd0($zero)
/* 061D90 800621E0 8C0202E0 */  lw          $v0, 0x2e0($zero)
/* 061D94 800621E4 8C0302E8 */  lw          $v1, 0x2e8($zero)
/* 061D98 800621E8 00411020 */  add         $v0, $v0, $at
/* 061D9C 800621EC 00611820 */  add         $v1, $v1, $at
/* 061DA0 800621F0 AC0202E0 */  sw          $v0, 0x2e0($zero)
/* 061DA4 800621F4 AC0302E8 */  sw          $v1, 0x2e8($zero)
/* 061DA8 800621F8 8C1900C0 */  lw          $t9, 0xc0($zero)
/* 061DAC 800621FC 0C000498 */  jal         func_80001260
/* 061DB0 80062200 8C1800C4 */   lw         $t8, 0xc4($zero)
/* 061DB4 80062204 8C1A0FF0 */  lw          $k0, 0xff0($zero)
/* 061DB8 80062208 200B02E8 */  addi        $t3, $zero, 0x2e8
/* 061DBC 8006220C 00000000 */  nop
/* 061DC0 80062210 0C0007ED */  jal         func_80001FB4
/* 061DC4 80062214 37EC0000 */   ori        $t4, $ra, 0x0
.L80062218:
/* 061DC8 80062218 201300A7 */  addi        $s3, $zero, 0xa7
.L8006221C:
/* 061DCC 8006221C 37580000 */  ori         $t8, $k0, 0x0
/* 061DD0 80062220 0C0007F6 */  jal         func_80001FD8
/* 061DD4 80062224 241408E8 */   addiu      $s4, $zero, 0x8e8
/* 061DD8 80062228 275A00A8 */  addiu       $k0, $k0, 0xa8
/* 061DDC 8006222C 201BFF58 */  addi        $k1, $zero, -0xa8
/* 061DE0 80062230 0C0007F2 */  jal         func_80001FC8
.L80062234:
/* 061DE4 80062234 40012000 */   cop0       0x0012000
/* 061DE8 80062238 8F790990 */  lw          $t9, 0x990($k1)
/* 061DEC 8006223C 1360FFF6 */  beq         $k1, $zero, .L80062218
/* 061DF0 80062240 30210080 */   andi       $at, $at, 0x80
/* 061DF4 80062244 00196603 */  sra         $t4, $t9, 24
/* 061DF8 80062248 000C5840 */  sll         $t3, $t4, 1
/* 061DFC 8006224C 956B036E */  lhu         $t3, 0x36e($t3)
/* 061E00 80062250 1420037E */  bne         $at, $zero, .L8006304C
/* 061E04 80062254 8F780994 */   lw         $t8, 0x994($k1)
/* 061E08 80062258 01600008 */  jr          $t3
/* 061E0C 8006225C 277B0008 */   addiu      $k1, $k1, 0x8
/* 061E10 80062260 0C00048B */  jal         func_8000122C
/* 061E14 80062264 87740989 */   lh         $s4, 0x989($k1)
/* 061E18 80062268 33330FF8 */  andi        $s3, $t9, 0xff8
/* 061E1C 8006226C 0014A083 */  sra         $s4, $s4, 2
/* 061E20 80062270 080007F6 */  j           func_80001FD8
/* 061E24 80062274 201F1190 */   addi       $ra, $zero, 0x1190
/* 061E28 80062278 8C0B01EC */  lw          $t3, 0x1ec($zero)
/* 061E2C 8006227C 01795824 */  and         $t3, $t3, $t9
/* 061E30 80062280 01785825 */  or          $t3, $t3, $t8
/* 061E34 80062284 08000465 */  j           fakefunc_80001194
/* 061E38 80062288 AC0B01EC */   sw         $t3, 0x1ec($zero)
/* 061E3C 8006228C 900100DE */  lbu         $at, 0xde($zero)
/* 061E40 80062290 1020036E */  beq         $at, $zero, .L8006304C
/* 061E44 80062294 2021FFFC */   addi       $at, $at, -0x4
/* 061E48 80062298 08000408 */  j           .L80001020
/* 061E4C 8006229C 8C3A0138 */   lw         $k0, 0x138($at)
/* 061E50 800622A0 C81D1818 */  lwc2        $sp, 0x1818($zero)
/* 061E54 800622A4 C81D1C1A */  lwc2        $sp, 0x1c1a($zero)
/* 061E58 800622A8 8C1900D8 */  lw          $t9, 0xd8($zero)
/* 061E5C 800622AC 22F70010 */  addi        $s7, $s7, 0x10
/* 061E60 800622B0 EAFD187E */  swc2        $sp, 0x187e($s7)
/* 061E64 800622B4 EAFD1C7F */  swc2        $sp, 0x1c7f($s7)
/* 061E68 800622B8 AEF80004 */  sw          $t8, 0x4($s7)
/* 061E6C 800622BC AEF90000 */  sw          $t9, 0x0($s7)
/* 061E70 800622C0 080004A3 */  j           fakefunc_8000128C
/* 061E74 800622C4 22F70008 */   addi       $s7, $s7, 0x8
/* 061E78 800622C8 201F1218 */  addi        $ra, $zero, 0x1218
/* 061E7C 800622CC 00185D82 */  srl         $t3, $t8, 22
/* 061E80 800622D0 316B003C */  andi        $t3, $t3, 0x3c
/* 061E84 800622D4 8D6B00F8 */  lw          $t3, 0xf8($t3)
/* 061E88 800622D8 0018C200 */  sll         $t8, $t8, 8
/* 061E8C 800622DC 0018C202 */  srl         $t8, $t8, 8
/* 061E90 800622E0 03E00008 */  jr          $ra
/* 061E94 800622E4 030BC020 */   add        $t8, $t8, $t3
/* 061E98 800622E8 AC1900C8 */  sw          $t9, 0xc8($zero)
/* 061E9C 800622EC 08000486 */  j           func_80001218
/* 061EA0 800622F0 AC1800CC */   sw         $t8, 0xcc($zero)
/* 061EA4 800622F4 AC1900C0 */  sw          $t9, 0xc0($zero)
/* 061EA8 800622F8 AC1800C4 */  sw          $t8, 0xc4($zero)
/* 061EAC 800622FC 201F1218 */  addi        $ra, $zero, 0x1218
/* 061EB0 80062300 332B0FFF */  andi        $t3, $t9, 0xfff
/* 061EB4 80062304 A40B03E2 */  sh          $t3, 0x3e2($zero)
/* 061EB8 80062308 00195B02 */  srl         $t3, $t9, 12
/* 061EBC 8006230C 316B0FFF */  andi        $t3, $t3, 0xfff
/* 061EC0 80062310 A40B03E0 */  sh          $t3, 0x3e0($zero)
/* 061EC4 80062314 330B0FFF */  andi        $t3, $t8, 0xfff
/* 061EC8 80062318 A40B03E6 */  sh          $t3, 0x3e6($zero)
/* 061ECC 8006231C 00185B02 */  srl         $t3, $t8, 12
/* 061ED0 80062320 316B0FFF */  andi        $t3, $t3, 0xfff
/* 061ED4 80062324 03E00008 */  jr          $ra
/* 061ED8 80062328 A40B03E4 */   sh         $t3, 0x3e4($zero)
/* 061EDC 8006232C 201F1194 */  addi        $ra, $zero, 0x1194
.L80062330:
/* 061EE0 80062330 02F65822 */  sub         $t3, $s7, $s6
/* 061EE4 80062334 1960034F */  blez        $t3, .L80063074
.L80062338:
/* 061EE8 80062338 400C3000 */   cop0       0x00C3000
/* 061EEC 8006233C 8C1800F0 */  lw          $t8, 0xf0($zero)
/* 061EF0 80062340 257301E8 */  addiu       $s3, $t3, 0x1e8
/* 061EF4 80062344 1580FFFC */  bne         $t4, $zero, .L80062338
/* 061EF8 80062348 8C0C0FEC */   lw         $t4, 0xfec($zero)
/* 061EFC 8006234C 40984800 */  cop0        0x0984800
/* 061F00 80062350 03135820 */  add         $t3, $t8, $s3
/* 061F04 80062354 018B6022 */  sub         $t4, $t4, $t3
/* 061F08 80062358 05810008 */  bgez        $t4, .L8006237C
.L8006235C:
/* 061F0C 8006235C 400B5800 */   cop0       0x00B5800
/* 061F10 80062360 316B0400 */  andi        $t3, $t3, 0x400
/* 061F14 80062364 1560FFFD */  bne         $t3, $zero, .L8006235C
/* 061F18 80062368 8C180FE8 */   lw         $t8, 0xfe8($zero)
.L8006236C:
/* 061F1C 8006236C 400B5000 */  cop0        0x00B5000
/* 061F20 80062370 1178FFFE */  beq         $t3, $t8, .L8006236C
/* 061F24 80062374 00000000 */   nop
/* 061F28 80062378 40984000 */  cop0        0x0984000
.L8006237C:
/* 061F2C 8006237C 400B5000 */  cop0        0x00B5000
/* 061F30 80062380 01785822 */  sub         $t3, $t3, $t8
/* 061F34 80062384 19600002 */  blez        $t3, .L80062390
/* 061F38 80062388 01735822 */   sub        $t3, $t3, $s3
/* 061F3C 8006238C 1960FFFB */  blez        $t3, .L8006237C
.L80062390:
/* 061F40 80062390 03135820 */   add        $t3, $t8, $s3
/* 061F44 80062394 AC0B00F0 */  sw          $t3, 0xf0($zero)
/* 061F48 80062398 2273FFFF */  addi        $s3, $s3, -0x1
/* 061F4C 8006239C 22D4DE18 */  addi        $s4, $s6, -0x21e8
/* 061F50 800623A0 3AD60360 */  xori        $s6, $s6, 0x360
/* 061F54 800623A4 080007F6 */  j           func_80001FD8
/* 061F58 800623A8 22D7FE18 */   addi       $s7, $s6, -0x1e8
/* 061F5C 800623AC 00000000 */  nop
/* 061F60 800623B0 97340380 */  lhu         $s4, 0x380($t9)
/* 061F64 800623B4 0C00048B */  jal         func_8000122C
/* 061F68 800623B8 97610989 */   lhu        $at, 0x989($k1)
/* 061F6C 800623BC 0281A022 */  sub         $s4, $s4, $at
/* 061F70 800623C0 0C0007F6 */  jal         func_80001FD8
/* 061F74 800623C4 2033FFFF */   addi       $s3, $at, -0x1
/* 061F78 800623C8 940501EC */  lhu         $a1, 0x1ec($zero)
/* 061F7C 800623CC 000108C2 */  srl         $at, $at, 3
/* 061F80 800623D0 03217822 */  sub         $t7, $t9, $at
/* 061F84 800623D4 95EF0380 */  lhu         $t7, 0x380($t7)
/* 061F88 800623D8 368E0000 */  ori         $t6, $s4, 0x0
/* 061F8C 800623DC 900801D9 */  lbu         $t0, 0x1d9($zero)
/* 061F90 800623E0 30A70001 */  andi        $a3, $a1, 0x1
/* 061F94 800623E4 15000006 */  bne         $t0, $zero, .L80062400
/* 061F98 800623E8 000738C0 */   sll        $a3, $a3, 3
/* 061F9C 800623EC A01901D9 */  sb          $t9, 0x1d9($zero)
/* 061FA0 800623F0 20150040 */  addi        $s5, $zero, 0x40
/* 061FA4 800623F4 20140000 */  addi        $s4, $zero, 0x0
/* 061FA8 800623F8 0C000422 */  jal         func_80001088
/* 061FAC 800623FC 20130080 */   addi       $s3, $zero, 0x80
.L80062400:
/* 061FB0 80062400 C8082008 */  lwc2        $t0, 0x2008($zero)
/* 061FB4 80062404 C80A2009 */  lwc2        $t2, 0x2009($zero)
/* 061FB8 80062408 C80C200A */  lwc2        $t4, 0x200a($zero)
/* 061FBC 8006240C C80E200B */  lwc2        $t6, 0x200b($zero)
/* 061FC0 80062410 4B004250 */  cop2        0x3004250
/* 061FC4 80062414 C8091811 */  lwc2        $t1, 0x1811($zero)
/* 061FC8 80062418 4B0052D0 */  cop2        0x30052D0
/* 061FCC 8006241C C80B1813 */  lwc2        $t3, 0x1813($zero)
/* 061FD0 80062420 4B006350 */  cop2        0x3006350
/* 061FD4 80062424 C80D1815 */  lwc2        $t5, 0x1815($zero)
/* 061FD8 80062428 4B0073D0 */  cop2        0x30073D0
/* 061FDC 8006242C C80F1817 */  lwc2        $t7, 0x1817($zero)
/* 061FE0 80062430 C8081C10 */  lwc2        $t0, 0x1c10($zero)
/* 061FE4 80062434 C80A1C12 */  lwc2        $t2, 0x1c12($zero)
/* 061FE8 80062438 0C00055B */  jal         func_8000156C
/* 061FEC 8006243C C80C1C14 */   lwc2       $t4, 0x1c14($zero)
/* 061FF0 80062440 0C0007F2 */  jal         func_80001FC8
/* 061FF4 80062444 C80E1C16 */   lwc2       $t6, 0x1c16($zero)
/* 061FF8 80062448 C9D41800 */  lwc2        $s4, 0x1800($t6)
/* 061FFC 8006244C 4B356C33 */  cop2        0x3356C33
/* 062000 80062450 C9D41C02 */  lwc2        $s4, 0x1c02($t6)
.L80062454:
/* 062004 80062454 4B017F46 */  cop2        0x3017F46
/* 062008 80062458 8DCB001C */  lw          $t3, 0x1c($t6)
/* 06200C 8006245C 4B015F4F */  cop2        0x3015F4F
/* 062010 80062460 C9D61602 */  lwc2        $s6, 0x1602($t6)
/* 062014 80062464 4A94674E */  cop2        0x294674E
/* 062018 80062468 4A94474F */  cop2        0x294474F
/* 06201C 8006246C 4AB46F4E */  cop2        0x2B46F4E
/* 062020 80062470 ADCB0008 */  sw          $t3, 0x8($t6)
/* 062024 80062474 4AB44F4F */  cop2        0x2B44F4F
/* 062028 80062478 4AD475CE */  cop2        0x2D475CE
/* 06202C 8006247C 4AD4560F */  cop2        0x2D4560F
/* 062030 80062480 4B7FCEE3 */  cop2        0x37FCEE3
/* 062034 80062484 C9D61206 */  lwc2        $s6, 0x1206($t6)
/* 062038 80062488 4B00C8E3 */  cop2        0x300C8E3
/* 06203C 8006248C 2021FFFC */  addi        $at, $at, -0x4
/* 062040 80062490 4B92BF44 */  cop2        0x392BF44
/* 062044 80062494 01075822 */  sub         $t3, $t0, $a3
/* 062048 80062498 4B92C08D */  cop2        0x392C08D
/* 06204C 8006249C E97B07F3 */  swc2        $k1, 0x7f3($t3)
/* 062050 800624A0 4B00054E */  cop2        0x300054E
/* 062054 800624A4 E97B03CB */  swc2        $k1, 0x3cb($t3)
/* 062058 800624A8 4B434EB3 */  cop2        0x3434EB3
/* 06205C 800624AC E9030E7A */  swc2        $v1, 0xe7a($t0)
/* 062060 800624B0 4BB2B9C6 */  cop2        0x3B2B9C6
/* 062064 800624B4 E919147C */  swc2        $t9, 0x147c($t0)
/* 062068 800624B8 4BB2C18F */  cop2        0x3B2C18F
/* 06206C 800624BC E9191879 */  swc2        $t9, 0x1879($t0)
/* 062070 800624C0 4B624772 */  cop2        0x3624772
/* 062074 800624C4 E91A0E7B */  swc2        $k0, 0xe7b($t0)
/* 062078 800624C8 4B755971 */  cop2        0x3755971
/* 06207C 800624CC E91A1173 */  swc2        $k0, 0x1173($t0)
/* 062080 800624D0 4BE25932 */  cop2        0x3E25932
/* 062084 800624D4 C9C31801 */  lwc2        $v1, 0x1801($t6)
/* 062088 800624D8 4BF57971 */  cop2        0x3F57971
/* 06208C 800624DC 00015FC3 */  sra         $t3, $at, 31
/* 062090 800624E0 4B007932 */  cop2        0x3007932
/* 062094 800624E4 316B0028 */  andi        $t3, $t3, 0x28
/* 062098 800624E8 4AF8C765 */  cop2        0x2F8C765
/* 06209C 800624EC 21EF0050 */  addi        $t7, $t7, 0x50
/* 0620A0 800624F0 4AF7BF64 */  cop2        0x2F7BF64
/* 0620A4 800624F4 01EB4022 */  sub         $t0, $t7, $t3
/* 0620A8 800624F8 4A05AF44 */  cop2        0x205AF44
/* 0620AC 800624FC 484A0800 */  cop2        0x04A0800
/* 0620B0 80062500 4A05174D */  cop2        0x205174D
/* 0620B4 80062504 E9171C7C */  swc2        $s7, 0x1c7c($t0)
/* 0620B8 80062508 4A04AD4E */  cop2        0x204AD4E
/* 0620BC 8006250C C9D41804 */  lwc2        $s4, 0x1804($t6)
/* 0620C0 80062510 4A04108F */  cop2        0x204108F
/* 0620C4 80062514 E9F71877 */  swc2        $s7, 0x1877($t7)
/* 0620C8 80062518 4B00C763 */  cop2        0x300C763
/* 0620CC 8006251C C9170F72 */  lwc2        $s7, 0xf72($t0)
/* 0620D0 80062520 4B3F0F47 */  cop2        0x33F0F47
/* 0620D4 80062524 E9181C7B */  swc2        $t8, 0x1c7b($t0)
/* 0620D8 80062528 4B9FAE8E */  cop2        0x39FAE8E
/* 0620DC 8006252C C9F70B5E */  lwc2        $s7, 0xb5e($t7)
/* 0620E0 80062530 4B9F164F */  cop2        0x39F164F
/* 0620E4 80062534 E9F81876 */  swc2        $t8, 0x1876($t7)
/* 0620E8 80062538 4BFF00A7 */  cop2        0x3FF00A7
/* 0620EC 8006253C C9D41C06 */  lwc2        $s4, 0x1c06($t6)
/* 0620F0 80062540 4AE6C765 */  cop2        0x2E6C765
/* 0620F4 80062544 E903107A */  swc2        $v1, 0x107a($t0)
/* 0620F8 80062548 4A05D744 */  cop2        0x205D744
/* 0620FC 8006254C C9180F6E */  lwc2        $t8, 0xf6e($t0)
/* 062100 80062550 4A05CF4D */  cop2        0x205CF4D
/* 062104 80062554 E9E31270 */  swc2        $v1, 0x1270($t7)
/* 062108 80062558 4A04D14E */  cop2        0x204D14E
/* 06210C 8006255C C9F80B5A */  lwc2        $t8, 0xb5a($t7)
/* 062110 80062560 4A04C90F */  cop2        0x204C90F
/* 062114 80062564 A50AFFFE */  sh          $t2, -0x2($t0)
/* 062118 80062568 4BFF108F */  cop2        0x3FF108F
/* 06211C 8006256C 000A5900 */  sll         $t3, $t2, 4
/* 062120 80062570 4AE7BF64 */  cop2        0x2E7BF64
/* 062124 80062574 484A0800 */  cop2        0x04A0800
/* 062128 80062578 4AE5BF44 */  cop2        0x2E5BF44
/* 06212C 8006257C E9050F7D */  swc2        $a1, 0xf7d($t0)
/* 062130 80062580 4AE5C74D */  cop2        0x2E5C74D
/* 062134 80062584 21CE0020 */  addi        $t6, $t6, 0x20
/* 062138 80062588 4AE2BE8E */  cop2        0x2E2BE8E
/* 06213C 8006258C A50AFFFC */  sh          $t2, -0x4($t0)
/* 062140 80062590 4AE2C64F */  cop2        0x2E2C64F
/* 062144 80062594 000A5100 */  sll         $t2, $t2, 4
/* 062148 80062598 4A12B0C5 */  cop2        0x212B0C5
/* 06214C 8006259C A5EBFFD6 */  sh          $t3, -0x2a($t7)
/* 062150 800625A0 A5EAFFD4 */  sh          $t2, -0x2c($t7)
/* 062154 800625A4 4B92D744 */  cop2        0x392D744
/* 062158 800625A8 E9E50B69 */  swc2        $a1, 0xb69($t7)
/* 06215C 800625AC 4B92CE4D */  cop2        0x392CE4D
/* 062160 800625B0 E9040F7C */  swc2        $a0, 0xf7c($t0)
/* 062164 800625B4 4B00068E */  cop2        0x300068E
/* 062168 800625B8 E9E40B68 */  swc2        $a0, 0xb68($t7)
/* 06216C 800625BC E903127B */  swc2        $v1, 0x127b($t0)
/* 062170 800625C0 4B018F47 */  cop2        0x3018F47
/* 062174 800625C4 E9E31671 */  swc2        $v1, 0x1671($t7)
/* 062178 800625C8 4B7F9F4F */  cop2        0x37F9F4F
/* 06217C 800625CC 4A10D68E */  cop2        0x210D68E
/* 062180 800625D0 1C20FFA0 */  bgtz        $at, .L80062454
/* 062184 800625D4 4A10CE4F */   cop2       0x210CE4F
/* 062188 800625D8 07E0009F */  bltz        $ra, .L80062858
/* 06218C 800625DC 4B00C8E3 */   cop2       0x300C8E3
/* 062190 800625E0 E919147C */  swc2        $t9, 0x147c($t0)
/* 062194 800625E4 4B7FCEE3 */  cop2        0x37FCEE3
/* 062198 800625E8 E9F91072 */  swc2        $t9, 0x1072($t7)
/* 06219C 800625EC E91A0E7B */  swc2        $k0, 0xe7b($t0)
/* 0621A0 800625F0 E9FA0A67 */  swc2        $k0, 0xa67($t7)
/* 0621A4 800625F4 E9030E7A */  swc2        $v1, 0xe7a($t0)
/* 0621A8 800625F8 10E0FF0E */  beq         $a3, $zero, .L80062234
/* 0621AC 800625FC E9E30A66 */   swc2       $v1, 0xa66($t7)
/* 0621B0 80062600 E91B07EB */  swc2        $k1, 0x7eb($t0)
/* 0621B4 80062604 08000465 */  j           fakefunc_80001194
/* 0621B8 80062608 E9FB03C3 */   swc2       $k1, 0x3c3($t7)
/* 0621BC 8006260C 200D0180 */  addi        $t5, $zero, 0x180
/* 0621C0 80062610 C810181C */  lwc2        $s0, 0x181c($zero)
/* 0621C4 80062614 C8101C1C */  lwc2        $s0, 0x1c1c($zero)
/* 0621C8 80062618 C9BD1018 */  lwc2        $sp, 0x1018($t5)
/* 0621CC 8006261C C811181D */  lwc2        $s1, 0x181d($zero)
/* 0621D0 80062620 C8111C1D */  lwc2        $s1, 0x1c1d($zero)
/* 0621D4 80062624 4B7FFCE0 */  cop2        0x37FFCE0
/* 0621D8 80062628 4A100551 */  cop2        0x2100551
/* 0621DC 8006262C C9B2121A */  lwc2        $s2, 0x121a($t5)
/* 0621E0 80062630 4B1D8427 */  cop2        0x31D8427
/* 0621E4 80062634 C9B2161A */  lwc2        $s2, 0x161a($t5)
/* 0621E8 80062638 4B0104E7 */  cop2        0x30104E7
/* 0621EC 8006263C C8121437 */  lwc2        $s2, 0x1437($zero)
/* 0621F0 80062640 4B3D8C67 */  cop2        0x33D8C67
/* 0621F4 80062644 C9B20D03 */  lwc2        $s2, 0xd03($t5)
/* 0621F8 80062648 4B354C33 */  cop2        0x3354C33
/* 0621FC 8006264C 03E00008 */  jr          $ra
/* 062200 80062650 22E80050 */   addi       $t0, $s7, 0x50
/* 062204 80062654 9365098D */  lbu         $a1, 0x98d($k1)
/* 062208 80062658 937D098E */  lbu         $sp, 0x98e($k1)
/* 06220C 8006265C 937E098F */  lbu         $fp, 0x98f($k1)
/* 062210 80062660 08000576 */  j           fakefunc_800015D8
/* 062214 80062664 201915C8 */   addi       $t9, $zero, 0x15c8
/* 062218 80062668 93650989 */  lbu         $a1, 0x989($k1)
/* 06221C 8006266C 937D098A */  lbu         $sp, 0x98a($k1)
/* 062220 80062670 937E098B */  lbu         $fp, 0x98b($k1)
/* 062224 80062674 20191194 */  addi        $t9, $zero, 0x1194
/* 062228 80062678 8364098C */  lb          $a0, 0x98c($k1)
/* 06222C 8006267C 94BC0380 */  lhu         $gp, 0x380($a1)
/* 062230 80062680 97BD0380 */  lhu         $sp, 0x380($sp)
/* 062234 80062684 97DE0380 */  lhu         $fp, 0x380($fp)
/* 062238 80062688 94A50380 */  lhu         $a1, 0x380($a1)
/* 06223C 8006268C 20840003 */  addi        $a0, $a0, 0x3
/* 062240 80062690 37820000 */  ori         $v0, $gp, 0x0
/* 062244 80062694 0C00058E */  jal         func_80001638
/* 062248 80062698 37A30000 */   ori        $v1, $sp, 0x0
/* 06224C 8006269C 37A20000 */  ori         $v0, $sp, 0x0
/* 062250 800626A0 0C00058E */  jal         func_80001638
/* 062254 800626A4 37C30000 */   ori        $v1, $fp, 0x0
/* 062258 800626A8 37C20000 */  ori         $v0, $fp, 0x0
/* 06225C 800626AC 37830000 */  ori         $v1, $gp, 0x0
/* 062260 800626B0 0800058E */  j           func_80001638
/* 062264 800626B4 373F0000 */   ori        $ra, $t9, 0x0
/* 062268 800626B8 8364098B */  lb          $a0, 0x98b($k1)
/* 06226C 800626BC 93650989 */  lbu         $a1, 0x989($k1)
/* 062270 800626C0 9363098A */  lbu         $v1, 0x98a($k1)
/* 062274 800626C4 20840003 */  addi        $a0, $a0, 0x3
/* 062278 800626C8 94A20380 */  lhu         $v0, 0x380($a1)
/* 06227C 800626CC 94630380 */  lhu         $v1, 0x380($v1)
/* 062280 800626D0 94A50380 */  lhu         $a1, 0x380($a1)
/* 062284 800626D4 201F1194 */  addi        $ra, $zero, 0x1194
/* 062288 800626D8 8C460024 */  lw          $a2, 0x24($v0)
/* 06228C 800626DC 8C670024 */  lw          $a3, 0x24($v1)
/* 062290 800626E0 8C0C03C4 */  lw          $t4, 0x3c4($zero)
/* 062294 800626E4 30CB7070 */  andi        $t3, $a2, 0x7070
/* 062298 800626E8 01675824 */  and         $t3, $t3, $a3
/* 06229C 800626EC 15600261 */  bne         $t3, $zero, .L80063074
/* 0622A0 800626F0 00C75825 */   or         $t3, $a2, $a3
/* 0622A4 800626F4 016C5824 */  and         $t3, $t3, $t4
/* 0622A8 800626F8 1160005F */  beq         $t3, $zero, .L80062878
/* 0622AC 800626FC A41F03C2 */   sh         $ra, 0x3c2($zero)
/* 0622B0 80062700 24060014 */  addiu       $a2, $zero, 0x14
/* 0622B4 80062704 240F0990 */  addiu       $t7, $zero, 0x990
.L80062708:
/* 0622B8 80062708 8CCB03C8 */  lw          $t3, 0x3c8($a2)
/* 0622BC 8006270C 8C490024 */  lw          $t1, 0x24($v0)
/* 0622C0 80062710 8C700024 */  lw          $s0, 0x24($v1)
/* 0622C4 80062714 012B4824 */  and         $t1, $t1, $t3
/* 0622C8 80062718 020B8024 */  and         $s0, $s0, $t3
/* 0622CC 8006271C 11300054 */  beq         $t1, $s0, .L80062870
/* 0622D0 80062720 00065840 */   sll        $t3, $a2, 1
/* 0622D4 80062724 11200003 */  beq         $t1, $zero, .L80062734
/* 0622D8 80062728 344C0000 */   ori        $t4, $v0, 0x0
/* 0622DC 8006272C 34620000 */  ori         $v0, $v1, 0x0
/* 0622E0 80062730 35830000 */  ori         $v1, $t4, 0x0
.L80062734:
/* 0622E4 80062734 C9621830 */  lwc2        $v0, 0x1830($t3)
/* 0622E8 80062738 C8441801 */  lwc2        $a0, 0x1801($v0)
/* 0622EC 8006273C C8451800 */  lwc2        $a1, 0x1800($v0)
/* 0622F0 80062740 C8661801 */  lwc2        $a2, 0x1801($v1)
/* 0622F4 80062744 C8671800 */  lwc2        $a3, 0x1800($v1)
/* 0622F8 80062748 4B1F10C7 */  cop2        0x31F10C7
/* 0622FC 8006274C 4A022206 */  cop2        0x2022206
/* 062300 80062750 4A022A4F */  cop2        0x2022A4F
/* 062304 80062754 4A03328E */  cop2        0x203328E
/* 062308 80062758 4A033ACF */  cop2        0x2033ACF
/* 06230C 8006275C 4A484214 */  cop2        0x2484214
/* 062310 80062760 C802201D */  lwc2        $v0, 0x201d($zero)
/* 062314 80062764 4A494A50 */  cop2        0x2494A50
/* 062318 80062768 4A4A5294 */  cop2        0x24A5294
/* 06231C 8006276C 4A4B5AD0 */  cop2        0x24B5AD0
/* 062320 80062770 4AA84214 */  cop2        0x2A84214
/* 062324 80062774 4AA94A50 */  cop2        0x2A94A50
/* 062328 80062778 4AAA5294 */  cop2        0x2AA5294
/* 06232C 8006277C 4AAB5AD0 */  cop2        0x2AB5AD0
/* 062330 80062780 4B6B4772 */  cop2        0x36B4772
/* 062334 80062784 4B6A58F1 */  cop2        0x36A58F1
/* 062338 80062788 4B005B32 */  cop2        0x3005B32
/* 06233C 8006278C 4B625F53 */  cop2        0x3625F53
/* 062340 80062790 4B7D18C6 */  cop2        0x37D18C6
/* 062344 80062794 4B7D630F */  cop2        0x37D630F
/* 062348 80062798 4B006321 */  cop2        0x3006321
/* 06234C 8006279C 4B1F18E7 */  cop2        0x31F18E7
/* 062350 800627A0 4B635744 */  cop2        0x3635744
/* 062354 800627A4 4B635ACD */  cop2        0x3635ACD
/* 062358 800627A8 4B00028E */  cop2        0x300028E
/* 06235C 800627AC 4B6B5B72 */  cop2        0x36B5B72
/* 062360 800627B0 4B6A5B31 */  cop2        0x36A5B31
/* 062364 800627B4 4B005B72 */  cop2        0x3005B72
/* 062368 800627B8 4B9F6386 */  cop2        0x39F6386
/* 06236C 800627BC 4B9F6BCF */  cop2        0x39F6BCF
/* 062370 800627C0 4B3F0F47 */  cop2        0x33F0F47
/* 062374 800627C4 4A0A774C */  cop2        0x20A774C
/* 062378 800627C8 4A0A7F4D */  cop2        0x20A7F4D
/* 06237C 800627CC 4A0B728E */  cop2        0x20B728E
/* 062380 800627D0 4A0B7ACF */  cop2        0x20B7ACF
/* 062384 800627D4 4A0A6744 */  cop2        0x20A6744
/* 062388 800627D8 4A0A6F4D */  cop2        0x20A6F4D
/* 06238C 800627DC 4A0B630E */  cop2        0x20B630E
/* 062390 800627E0 4A0B6B4F */  cop2        0x20B6B4F
/* 062394 800627E4 4A0C4744 */  cop2        0x20C4744
/* 062398 800627E8 C86E3802 */  lwc2        $t6, 0x3802($v1)
/* 06239C 800627EC 4A0C4F4D */  cop2        0x20C4F4D
/* 0623A0 800627F0 C86E1405 */  lwc2        $t6, 0x1405($v1)
/* 0623A4 800627F4 4A0D408E */  cop2        0x20D408E
/* 0623A8 800627F8 C84B3802 */  lwc2        $t3, 0x3802($v0)
/* 0623AC 800627FC 4A0D4A8F */  cop2        0x20D4A8F
/* 0623B0 80062800 C84B1405 */  lwc2        $t3, 0x1405($v0)
/* 0623B4 80062804 4B631744 */  cop2        0x3631744
/* 0623B8 80062808 4B63528D */  cop2        0x363528D
/* 0623BC 8006280C 4B00108E */  cop2        0x300108E
/* 0623C0 80062810 4B0152A0 */  cop2        0x30152A0
/* 0623C4 80062814 4B1F10A7 */  cop2        0x31F10A7
/* 0623C8 80062818 4B011755 */  cop2        0x3011755
/* 0623CC 8006281C 4B0052A3 */  cop2        0x30052A3
/* 0623D0 80062820 4B0110A7 */  cop2        0x30110A7
/* 0623D4 80062824 4B1F10C6 */  cop2        0x31F10C6
/* 0623D8 80062828 4B623744 */  cop2        0x3623744
/* 0623DC 8006282C 4B623F4D */  cop2        0x3623F4D
/* 0623E0 80062830 4B63274C */  cop2        0x363274C
/* 0623E4 80062834 4B632E0D */  cop2        0x3632E0D
/* 0623E8 80062838 4B0005CE */  cop2        0x30005CE
/* 0623EC 8006283C 4B627745 */  cop2        0x3627745
/* 0623F0 80062840 4B635D8D */  cop2        0x3635D8D
/* 0623F4 80062844 20070000 */  addi        $a3, $zero, 0x0
/* 0623F8 80062848 20010002 */  addi        $at, $zero, 0x2
/* 0623FC 8006284C 35E30000 */  ori         $v1, $t7, 0x0
/* 062400 80062850 0800055B */  j           func_8000156C
/* 062404 80062854 201F93E8 */   addi       $ra, $zero, -0x6c18
.L80062858:
/* 062408 80062858 E9F91072 */  swc2        $t9, 0x1072($t7)
/* 06240C 8006285C E9FA0A67 */  swc2        $k0, 0xa67($t7)
/* 062410 80062860 E9F63878 */  swc2        $s6, 0x3878($t7)
/* 062414 80062864 E9F61471 */  swc2        $s6, 0x1471($t7)
/* 062418 80062868 E9E30A66 */  swc2        $v1, 0xa66($t7)
/* 06241C 8006286C 21EFFFD8 */  addi        $t7, $t7, -0x28
.L80062870:
/* 062420 80062870 14C0FFA5 */  bne         $a2, $zero, .L80062708
/* 062424 80062874 20C6FFFC */   addi       $a2, $a2, -0x4
.L80062878:
/* 062428 80062878 8447001A */  lh          $a3, 0x1a($v0)
/* 06242C 8006287C 4BFF00AD */  cop2        0x3FF00AD
/* 062430 80062880 8468001A */  lh          $t0, 0x1a($v1)
/* 062434 80062884 4BFF00ED */  cop2        0x3FF00ED
/* 062438 80062888 8C0101EC */  lw          $at, 0x1ec($zero)
/* 06243C 8006288C 900601E7 */  lbu         $a2, 0x1e7($zero)
/* 062440 80062890 01075822 */  sub         $t3, $t0, $a3
/* 062444 80062894 05610003 */  bgez        $t3, .L800628A4
/* 062448 80062898 344B0000 */   ori        $t3, $v0, 0x0
/* 06244C 8006289C 34620000 */  ori         $v0, $v1, 0x0
/* 062450 800628A0 35630000 */  ori         $v1, $t3, 0x0
.L800628A4:
/* 062454 800628A4 C8441006 */  lwc2        $a0, 0x1006($v0)
/* 062458 800628A8 C8651006 */  lwc2        $a1, 0x1006($v1)
/* 06245C 800628AC 00015A80 */  sll         $t3, $at, 10
/* 062460 800628B0 05610006 */  bgez        $t3, .L800628CC
/* 062464 800628B4 900901E6 */   lbu        $t1, 0x1e6($zero)
/* 062468 800628B8 4A042A11 */  cop2        0x2042A11
/* 06246C 800628BC C8463002 */  lwc2        $a2, 0x3002($v0)
/* 062470 800628C0 4A042A63 */  cop2        0x2042A63
/* 062474 800628C4 08000611 */  j           func_80001844
/* 062478 800628C8 C8673002 */   lwc2       $a3, 0x3002($v1)
.L800628CC:
/* 06247C 800628CC C8A63002 */  lwc2        $a2, 0x3002($a1)
/* 062480 800628D0 4A042A11 */  cop2        0x2042A11
/* 062484 800628D4 C8460313 */  lwc2        $a2, 0x313($v0)
/* 062488 800628D8 4A042A63 */  cop2        0x2042A63
/* 06248C 800628DC C8A73002 */  lwc2        $a3, 0x3002($a1)
/* 062490 800628E0 C8670313 */  lwc2        $a3, 0x313($v1)
/* 062494 800628E4 200B03E0 */  addi        $t3, $zero, 0x3e0
/* 062498 800628E8 4A0842D3 */  cop2        0x20842D3
/* 06249C 800628EC C96C1800 */  lwc2        $t4, 0x1800($t3)
/* 0624A0 800628F0 4A042AA0 */  cop2        0x2042AA0
/* 0624A4 800628F4 C8420F0F */  lwc2        $v0, 0xf0f($v0)
/* 0624A8 800628F8 4B7E3184 */  cop2        0x37E3184
/* 0624AC 800628FC C8630F0F */  lwc2        $v1, 0xf0f($v1)
/* 0624B0 80062900 4B7E39C4 */  cop2        0x37E39C4
/* 0624B4 80062904 C8460F0E */  lwc2        $a2, 0xf0e($v0)
/* 0624B8 80062908 4B284B70 */  cop2        0x3284B70
/* 0624BC 8006290C C8670F0E */  lwc2        $a3, 0xf0e($v1)
/* 0624C0 80062910 4B004BB2 */  cop2        0x3004BB2
/* 0624C4 80062914 C8461405 */  lwc2        $a2, 0x1405($v0)
/* 0624C8 80062918 4B084370 */  cop2        0x3084370
/* 0624CC 8006291C C8671405 */  lwc2        $a3, 0x1405($v1)
/* 0624D0 80062920 4B0043B2 */  cop2        0x30043B2
/* 0624D4 80062924 4A021BD5 */  cop2        0x2021BD5
/* 0624D8 80062928 4A063C11 */  cop2        0x2063C11
/* 0624DC 8006292C 480A5800 */  cop2        0x00A5800
/* 0624E0 80062930 4B5F6F44 */  cop2        0x35F6F44
/* 0624E4 80062934 480D5900 */  cop2        0x00D5900
/* 0624E8 80062938 4B5F738D */  cop2        0x35F738D
/* 0624EC 8006293C C80C1C18 */  lwc2        $t4, 0x1c18($zero)
/* 0624F0 80062940 4B00034E */  cop2        0x300034E
/* 0624F4 80062944 00260825 */  or          $at, $at, $a2
/* 0624F8 80062948 4BBF42C5 */  cop2        0x3BF42C5
/* 0624FC 8006294C 342100C8 */  ori         $at, $at, 0xc8
/* 062500 80062950 4B0001CE */  cop2        0x30001CE
/* 062504 80062954 A2E10008 */  sb          $at, 0x8($s7)
/* 062508 80062958 4B2E7F46 */  cop2        0x32E7F46
/* 06250C 8006295C 48849800 */  cop2        0x0849800
/* 062510 80062960 4B2D874D */  cop2        0x32D874D
/* 062514 80062964 EAEC1C00 */  swc2        $t4, 0x1c00($s7)
/* 062518 80062968 4B2D7C4C */  cop2        0x32D7C4C
/* 06251C 8006296C 014D5822 */  sub         $t3, $t2, $t5
/* 062520 80062970 4B2E848F */  cop2        0x32E848F
/* 062524 80062974 48808E00 */  cop2        0x0808E00
/* 062528 80062978 4B2D3F44 */  cop2        0x32D3F44
/* 06252C 8006297C 48809600 */  cop2        0x0809600
/* 062530 80062980 4B2D5F4D */  cop2        0x32D5F4D
/* 062534 80062984 4B2E39CE */  cop2        0x32E39CE
/* 062538 80062988 1D600014 */  bgtz        $t3, .L800629DC
/* 06253C 8006298C 4B2E5ACF */   cop2       0x32E5ACF
/* 062540 80062990 4BBF2506 */  cop2        0x3BF2506
/* 062544 80062994 4B000590 */  cop2        0x3000590
/* 062548 80062998 A2E90009 */  sb          $t1, 0x9($s7)
/* 06254C 8006299C 4B0005D0 */  cop2        0x30005D0
/* 062550 800629A0 EAE50905 */  swc2        $a1, 0x905($s7)
/* 062554 800629A4 4B008E10 */  cop2        0x3008E10
/* 062558 800629A8 EAE50906 */  swc2        $a1, 0x906($s7)
/* 06255C 800629AC 4B009650 */  cop2        0x3009650
/* 062560 800629B0 0C0006BC */  jal         func_80001AF0
/* 062564 800629B4 EAE40907 */   swc2       $a0, 0x907($s7)
/* 062568 800629B8 4BBF9D0E */  cop2        0x3BF9D0E
/* 06256C 800629BC EAE7080F */  swc2        $a3, 0x80f($s7)
/* 062570 800629C0 4B00054F */  cop2        0x300054F
/* 062574 800629C4 EAEB080E */  swc2        $t3, 0x80e($s7)
/* 062578 800629C8 4B039E8E */  cop2        0x3039E8E
/* 06257C 800629CC EAE70813 */  swc2        $a3, 0x813($s7)
/* 062580 800629D0 4B0006CF */  cop2        0x30006CF
/* 062584 800629D4 0800068B */  j           fakefunc_80001A2C
/* 062588 800629D8 EAEB0812 */   swc2       $t3, 0x812($s7)
.L800629DC:
/* 06258C 800629DC 4B0C52A3 */  cop2        0x30C52A3
/* 062590 800629E0 480B4000 */  cop2        0x00B4000
/* 062594 800629E4 4B4C4A60 */  cop2        0x34C4A60
/* 062598 800629E8 4B7E0710 */  cop2        0x37E0710
/* 06259C 800629EC 4A0B5DD3 */  cop2        0x20B5DD3
/* 0625A0 800629F0 4B2CE744 */  cop2        0x32CE744
/* 0625A4 800629F4 0160582A */  slt         $t3, $t3, $zero
/* 0625A8 800629F8 4BDE528E */  cop2        0x3DE528E
/* 0625AC 800629FC 000B59C0 */  sll         $t3, $t3, 7
/* 0625B0 80062A00 4B6CE744 */  cop2        0x36CE744
/* 0625B4 80062A04 012B4825 */  or          $t1, $t1, $t3
/* 0625B8 80062A08 4BDE4A4E */  cop2        0x3DE4A4E
/* 0625BC 80062A0C A2E90009 */  sb          $t1, 0x9($s7)
/* 0625C0 80062A10 4B0D7F44 */  cop2        0x30D7F44
/* 0625C4 80062A14 480CB800 */  cop2        0x00CB800
/* 0625C8 80062A18 4B0D874D */  cop2        0x30D874D
/* 0625CC 80062A1C 22EB0001 */  addi        $t3, $s7, 0x1
/* 0625D0 80062A20 4B0E7D8E */  cop2        0x30E7D8E
/* 0625D4 80062A24 E96A0800 */  swc2        $t2, 0x800($t3)
/* 0625D8 80062A28 4B0E85CF */  cop2        0x30E85CF
/* 0625DC 80062A2C E9690802 */  swc2        $t1, 0x802($t3)
/* 0625E0 80062A30 4B132390 */  cop2        0x3132390
/* 0625E4 80062A34 10E80015 */  beq         $a3, $t0, .L80062A8C
/* 0625E8 80062A38 218CF8AB */   addi       $t4, $t4, -0x755
/* 0625EC 80062A3C 4B132351 */  cop2        0x3132351
/* 0625F0 80062A40 1D800013 */  bgtz        $t4, .L80062A90
/* 0625F4 80062A44 4B132F10 */   cop2       0x3132F10
/* 0625F8 80062A48 4BBF6D06 */  cop2        0x3BF6D06
/* 0625FC 80062A4C EAFC0905 */  swc2        $gp, 0x905($s7)
/* 062600 80062A50 4B000610 */  cop2        0x3000610
/* 062604 80062A54 EAEE0906 */  swc2        $t6, 0x906($s7)
/* 062608 80062A58 4B000650 */  cop2        0x3000650
/* 06260C 80062A5C EAED0907 */  swc2        $t5, 0x907($s7)
/* 062610 80062A60 0C0006BC */  jal         func_80001AF0
/* 062614 80062A64 EAE7080B */   swc2       $a3, 0x80b($s7)
/* 062618 80062A68 EAEB080A */  swc2        $t3, 0x80a($s7)
/* 06261C 80062A6C 4BBF26C5 */  cop2        0x3BF26C5
/* 062620 80062A70 EAE7080F */  swc2        $a3, 0x80f($s7)
/* 062624 80062A74 4B00068E */  cop2        0x300068E
/* 062628 80062A78 EAEB080E */  swc2        $t3, 0x80e($s7)
/* 06262C 80062A7C EAE01009 */  swc2        $zero, 0x1009($s7)
/* 062630 80062A80 EAFB0808 */  swc2        $k1, 0x808($s7)
/* 062634 80062A84 0800068B */  j           fakefunc_80001A2C
/* 062638 80062A88 EAFA0809 */   swc2       $k0, 0x809($s7)
.L80062A8C:
/* 06263C 80062A8C 4B132351 */  cop2        0x3132351
.L80062A90:
/* 062640 80062A90 4BBF2545 */  cop2        0x3BF2545
/* 062644 80062A94 39290080 */  xori        $t1, $t1, 0x80
/* 062648 80062A98 4B00050E */  cop2        0x300050E
/* 06264C 80062A9C A2E90009 */  sb          $t1, 0x9($s7)
/* 062650 80062AA0 4BBF2EC5 */  cop2        0x3BF2EC5
/* 062654 80062AA4 EAE01007 */  swc2        $zero, 0x1007($s7)
/* 062658 80062AA8 4B00068E */  cop2        0x300068E
/* 06265C 80062AAC EAE01009 */  swc2        $zero, 0x1009($s7)
/* 062660 80062AB0 4B000450 */  cop2        0x3000450
/* 062664 80062AB4 EAED0907 */  swc2        $t5, 0x907($s7)
/* 062668 80062AB8 4B000490 */  cop2        0x3000490
/* 06266C 80062ABC EAEE0906 */  swc2        $t6, 0x906($s7)
/* 062670 80062AC0 4B000610 */  cop2        0x3000610
/* 062674 80062AC4 EAEE0905 */  swc2        $t6, 0x905($s7)
/* 062678 80062AC8 4B000650 */  cop2        0x3000650
/* 06267C 80062ACC EAF5080C */  swc2        $s5, 0x80c($s7)
/* 062680 80062AD0 4B0171B3 */  cop2        0x30171B3
/* 062684 80062AD4 EAF4080D */  swc2        $s4, 0x80d($s7)
/* 062688 80062AD8 4B0070B3 */  cop2        0x30070B3
/* 06268C 80062ADC EAFB0810 */  swc2        $k1, 0x810($s7)
/* 062690 80062AE0 4BFE1146 */  cop2        0x3FE1146
/* 062694 80062AE4 EAFA0811 */  swc2        $k0, 0x811($s7)
/* 062698 80062AE8 4BFE320F */  cop2        0x3FE320F
/* 06269C 80062AEC 22F70028 */  addi        $s7, $s7, 0x28
/* 0626A0 80062AF0 4BFEB246 */  cop2        0x3FEB246
/* 0626A4 80062AF4 302B0004 */  andi        $t3, $at, 0x4
/* 0626A8 80062AF8 4BFEBA8F */  cop2        0x3FEBA8F
/* 0626AC 80062AFC 4BFE8B06 */  cop2        0x3FE8B06
/* 0626B0 80062B00 11600009 */  beq         $t3, $zero, .L80062B28
/* 0626B4 80062B04 302B0002 */   andi       $t3, $at, 0x2
/* 0626B8 80062B08 EAE61800 */  swc2        $a2, 0x1800($s7)
/* 0626BC 80062B0C EAF71801 */  swc2        $s7, 0x1801($s7)
/* 0626C0 80062B10 EAF61803 */  swc2        $s6, 0x1803($s7)
/* 0626C4 80062B14 EAF21804 */  swc2        $s2, 0x1804($s7)
/* 0626C8 80062B18 EAF91805 */  swc2        $t9, 0x1805($s7)
/* 0626CC 80062B1C EAF11806 */  swc2        $s1, 0x1806($s7)
/* 0626D0 80062B20 EAF81807 */  swc2        $t8, 0x1807($s7)
/* 0626D4 80062B24 22F70040 */  addi        $s7, $s7, 0x40
.L80062B28:
/* 0626D8 80062B28 4BFE934F */  cop2        0x3FE934F
/* 0626DC 80062B2C 1160000A */  beq         $t3, $zero, .L80062B58
/* 0626E0 80062B30 302B0001 */   andi       $t3, $at, 0x1
/* 0626E4 80062B34 22F70040 */  addi        $s7, $s7, 0x40
/* 0626E8 80062B38 EAE61C78 */  swc2        $a2, 0x1c78($s7)
/* 0626EC 80062B3C EAE21C7A */  swc2        $v0, 0x1c7a($s7)
/* 0626F0 80062B40 EAF71C79 */  swc2        $s7, 0x1c79($s7)
/* 0626F4 80062B44 EAF61C7B */  swc2        $s6, 0x1c7b($s7)
/* 0626F8 80062B48 EAF21C7C */  swc2        $s2, 0x1c7c($s7)
/* 0626FC 80062B4C EAF11C7E */  swc2        $s1, 0x1c7e($s7)
/* 062700 80062B50 EAF91C7D */  swc2        $t9, 0x1c7d($s7)
/* 062704 80062B54 EAF81C7F */  swc2        $t8, 0x1c7f($s7)
.L80062B58:
/* 062708 80062B58 1160FDF5 */  beq         $t3, $zero, .L80062330
/* 06270C 80062B5C 941F03C2 */   lhu        $ra, 0x3c2($zero)
/* 062710 80062B60 EAE80F00 */  swc2        $t0, 0xf00($s7)
/* 062714 80062B64 22F70010 */  addi        $s7, $s7, 0x10
/* 062718 80062B68 EAE50F79 */  swc2        $a1, 0xf79($s7)
/* 06271C 80062B6C 4BFEC606 */  cop2        0x3FEC606
/* 062720 80062B70 EAEA0F7A */  swc2        $t2, 0xf7a($s7)
/* 062724 80062B74 4BFECE4F */  cop2        0x3FECE4F
/* 062728 80062B78 EAE90F7B */  swc2        $t1, 0xf7b($s7)
/* 06272C 80062B7C EAED0F7C */  swc2        $t5, 0xf7c($s7)
/* 062730 80062B80 EAEC0F7D */  swc2        $t4, 0xf7d($s7)
/* 062734 80062B84 EAF90F7E */  swc2        $t9, 0xf7e($s7)
/* 062738 80062B88 080004A4 */  j           fakefunc_80001290
/* 06273C 80062B8C EAF80F7F */   swc2       $t8, 0xf7f($s7)
/* 062740 80062B90 4A140515 */  cop2        0x2140515
/* 062744 80062B94 4A000551 */  cop2        0x2000551
/* 062748 80062B98 4B011746 */  cop2        0x3011746
/* 06274C 80062B9C 4B01374F */  cop2        0x301374F
/* 062750 80062BA0 4B348F4C */  cop2        0x3348F4C
/* 062754 80062BA4 4B34974D */  cop2        0x334974D
/* 062758 80062BA8 4B35888E */  cop2        0x335888E
/* 06275C 80062BAC 4B35918F */  cop2        0x335918F
/* 062760 80062BB0 4BBF2746 */  cop2        0x3BF2746
/* 062764 80062BB4 4B343F4C */  cop2        0x3343F4C
/* 062768 80062BB8 4B345F4D */  cop2        0x3345F4D
/* 06276C 80062BBC EAE21807 */  swc2        $v0, 0x1807($s7)
/* 062770 80062BC0 4B353D0E */  cop2        0x3353D0E
/* 062774 80062BC4 03E00008 */  jr          $ra
/* 062778 80062BC8 4B355D4F */   cop2       0x3355D4F
/* 06277C 80062BCC 97390380 */  lhu         $t9, 0x380($t9)
/* 062780 80062BD0 97180380 */  lhu         $t8, 0x380($t8)
/* 062784 80062BD4 24017070 */  addiu       $at, $zero, 0x7070
/* 062788 80062BD8 8F2B0024 */  lw          $t3, 0x24($t9)
.L80062BDC:
/* 06278C 80062BDC 002B0824 */  and         $at, $at, $t3
/* 062790 80062BE0 1020FD94 */  beq         $at, $zero, .L80062234
/* 062794 80062BE4 8F2B004C */   lw         $t3, 0x4c($t9)
/* 062798 80062BE8 1738FFFC */  bne         $t9, $t8, .L80062BDC
/* 06279C 80062BEC 27390028 */   addiu      $t9, $t9, 0x28
/* 0627A0 80062BF0 0800047B */  j           fakefunc_800011EC
/* 0627A4 80062BF4 97390380 */   lhu        $t9, 0x380($t9)
/* 0627A8 80062BF8 8F39001C */  lw          $t9, 0x1c($t9)
/* 0627AC 80062BFC 03381022 */  sub         $v0, $t9, $t8
/* 0627B0 80062C00 0441FD8C */  bgez        $v0, .L80062234
/* 0627B4 80062C04 8C1800D8 */   lw         $t8, 0xd8($zero)
/* 0627B8 80062C08 08000402 */  j           fakefunc_80001008
/* 0627BC 80062C0C 93610989 */   lbu        $at, 0x989($k1)
/* 0627C0 80062C10 08000410 */  j           fakefunc_80001040
/* 0627C4 80062C14 97390380 */   lhu        $t9, 0x380($t9)
/* 0627C8 80062C18 00000000 */  nop
/* 0627CC 80062C1C 00000000 */  nop
/* 0627D0 80062C20 00000000 */  nop
/* 0627D4 80062C24 00000000 */  nop
/* 0627D8 80062C28 00000000 */  nop
/* 0627DC 80062C2C 00000000 */  nop
/* 0627E0 80062C30 00000000 */  nop
/* 0627E4 80062C34 00000000 */  nop
/* 0627E8 80062C38 00000000 */  nop
/* 0627EC 80062C3C 00000000 */  nop
/* 0627F0 80062C40 00000000 */  nop
/* 0627F4 80062C44 00000000 */  nop
/* 0627F8 80062C48 00000000 */  nop
/* 0627FC 80062C4C 00000000 */  nop
/* 062800 80062C50 00000000 */  nop
/* 062804 80062C54 00000000 */  nop
/* 062808 80062C58 00000000 */  nop
/* 06280C 80062C5C 00000000 */  nop
/* 062810 80062C60 00000000 */  nop
/* 062814 80062C64 00000000 */  nop
/* 062818 80062C68 00000000 */  nop
/* 06281C 80062C6C 00000000 */  nop
/* 062820 80062C70 00000000 */  nop
/* 062824 80062C74 00000000 */  nop
/* 062828 80062C78 00000000 */  nop
/* 06282C 80062C7C 00000000 */  nop
/* 062830 80062C80 00000000 */  nop
/* 062834 80062C84 00000000 */  nop
/* 062838 80062C88 00000000 */  nop
/* 06283C 80062C8C 00000000 */  nop
/* 062840 80062C90 00000000 */  nop
/* 062844 80062C94 00000000 */  nop
/* 062848 80062C98 00000000 */  nop
/* 06284C 80062C9C 00000000 */  nop
/* 062850 80062CA0 00000000 */  nop
/* 062854 80062CA4 00000000 */  nop
/* 062858 80062CA8 00000000 */  nop
/* 06285C 80062CAC 00000000 */  nop
/* 062860 80062CB0 00000000 */  nop
/* 062864 80062CB4 00000000 */  nop
/* 062868 80062CB8 00000000 */  nop
/* 06286C 80062CBC 00000000 */  nop
/* 062870 80062CC0 00000000 */  nop
/* 062874 80062CC4 00000000 */  nop
/* 062878 80062CC8 00000000 */  nop
/* 06287C 80062CCC 00000000 */  nop
/* 062880 80062CD0 00000000 */  nop
/* 062884 80062CD4 00000000 */  nop
/* 062888 80062CD8 00000000 */  nop
/* 06288C 80062CDC 00000000 */  nop
/* 062890 80062CE0 00000000 */  nop
/* 062894 80062CE4 00000000 */  nop
/* 062898 80062CE8 00000000 */  nop
/* 06289C 80062CEC 00000000 */  nop
/* 0628A0 80062CF0 00000000 */  nop
/* 0628A4 80062CF4 00000000 */  nop
/* 0628A8 80062CF8 00000000 */  nop
/* 0628AC 80062CFC 00000000 */  nop
/* 0628B0 80062D00 00000000 */  nop
/* 0628B4 80062D04 00000000 */  nop
/* 0628B8 80062D08 00000000 */  nop
/* 0628BC 80062D0C 00000000 */  nop
/* 0628C0 80062D10 00000000 */  nop
/* 0628C4 80062D14 00000000 */  nop
/* 0628C8 80062D18 00000000 */  nop
/* 0628CC 80062D1C 00000000 */  nop
/* 0628D0 80062D20 00000000 */  nop
/* 0628D4 80062D24 00000000 */  nop
/* 0628D8 80062D28 00000000 */  nop
/* 0628DC 80062D2C 00000000 */  nop
/* 0628E0 80062D30 00000000 */  nop
/* 0628E4 80062D34 00000000 */  nop
/* 0628E8 80062D38 00000000 */  nop
/* 0628EC 80062D3C 00000000 */  nop
/* 0628F0 80062D40 00000000 */  nop
/* 0628F4 80062D44 00000000 */  nop
/* 0628F8 80062D48 00000000 */  nop
/* 0628FC 80062D4C 00000000 */  nop
/* 062900 80062D50 00000000 */  nop
/* 062904 80062D54 00000000 */  nop
/* 062908 80062D58 00000000 */  nop
/* 06290C 80062D5C 00000000 */  nop
/* 062910 80062D60 00000000 */  nop
/* 062914 80062D64 00000000 */  nop
/* 062918 80062D68 00000000 */  nop
/* 06291C 80062D6C 00000000 */  nop
/* 062920 80062D70 00000000 */  nop
/* 062924 80062D74 00000000 */  nop
/* 062928 80062D78 00000000 */  nop
/* 06292C 80062D7C 00000000 */  nop
/* 062930 80062D80 00000000 */  nop
/* 062934 80062D84 00000000 */  nop
/* 062938 80062D88 00000000 */  nop
/* 06293C 80062D8C 00000000 */  nop
/* 062940 80062D90 00000000 */  nop
/* 062944 80062D94 00000000 */  nop
/* 062948 80062D98 00000000 */  nop
/* 06294C 80062D9C 00000000 */  nop
/* 062950 80062DA0 00000000 */  nop
/* 062954 80062DA4 00000000 */  nop
/* 062958 80062DA8 00000000 */  nop
/* 06295C 80062DAC 00000000 */  nop
/* 062960 80062DB0 00000000 */  nop
/* 062964 80062DB4 00000000 */  nop
/* 062968 80062DB8 00000000 */  nop
/* 06296C 80062DBC 00000000 */  nop
/* 062970 80062DC0 00000000 */  nop
/* 062974 80062DC4 00000000 */  nop
/* 062978 80062DC8 00000000 */  nop
/* 06297C 80062DCC 00000000 */  nop
/* 062980 80062DD0 00000000 */  nop
/* 062984 80062DD4 00000000 */  nop
/* 062988 80062DD8 00000000 */  nop
/* 06298C 80062DDC 00000000 */  nop
/* 062990 80062DE0 00000000 */  nop
/* 062994 80062DE4 00000000 */  nop
/* 062998 80062DE8 00000000 */  nop
/* 06299C 80062DEC 00000000 */  nop
/* 0629A0 80062DF0 00000000 */  nop
/* 0629A4 80062DF4 00000000 */  nop
/* 0629A8 80062DF8 00000000 */  nop
/* 0629AC 80062DFC 00000000 */  nop
/* 0629B0 80062E00 00000000 */  nop
/* 0629B4 80062E04 00000000 */  nop
/* 0629B8 80062E08 00000000 */  nop
/* 0629BC 80062E0C 00000000 */  nop
/* 0629C0 80062E10 00000000 */  nop
/* 0629C4 80062E14 00000000 */  nop
/* 0629C8 80062E18 00000000 */  nop
/* 0629CC 80062E1C 00000000 */  nop
/* 0629D0 80062E20 00000000 */  nop
/* 0629D4 80062E24 00000000 */  nop
/* 0629D8 80062E28 00000000 */  nop
/* 0629DC 80062E2C 00000000 */  nop
/* 0629E0 80062E30 00000000 */  nop
/* 0629E4 80062E34 00000000 */  nop
/* 0629E8 80062E38 00000000 */  nop
/* 0629EC 80062E3C 00000000 */  nop
/* 0629F0 80062E40 00000000 */  nop
/* 0629F4 80062E44 00000000 */  nop
/* 0629F8 80062E48 00000000 */  nop
/* 0629FC 80062E4C 00000000 */  nop
/* 062A00 80062E50 00000000 */  nop
/* 062A04 80062E54 00000000 */  nop
/* 062A08 80062E58 00000000 */  nop
/* 062A0C 80062E5C 00000000 */  nop
/* 062A10 80062E60 00000000 */  nop
/* 062A14 80062E64 00000000 */  nop
/* 062A18 80062E68 00000000 */  nop
/* 062A1C 80062E6C 00000000 */  nop
/* 062A20 80062E70 00000000 */  nop
/* 062A24 80062E74 00000000 */  nop
/* 062A28 80062E78 00000000 */  nop
/* 062A2C 80062E7C 00000000 */  nop
/* 062A30 80062E80 00000000 */  nop
/* 062A34 80062E84 00000000 */  nop
/* 062A38 80062E88 00000000 */  nop
/* 062A3C 80062E8C 00000000 */  nop
/* 062A40 80062E90 00000000 */  nop
/* 062A44 80062E94 00000000 */  nop
/* 062A48 80062E98 00000000 */  nop
/* 062A4C 80062E9C 00000000 */  nop
/* 062A50 80062EA0 00000000 */  nop
/* 062A54 80062EA4 00000000 */  nop
/* 062A58 80062EA8 00000000 */  nop
/* 062A5C 80062EAC 00000000 */  nop
/* 062A60 80062EB0 00000000 */  nop
/* 062A64 80062EB4 00000000 */  nop
/* 062A68 80062EB8 00000000 */  nop
/* 062A6C 80062EBC 00000000 */  nop
/* 062A70 80062EC0 00000000 */  nop
/* 062A74 80062EC4 00000000 */  nop
/* 062A78 80062EC8 00000000 */  nop
/* 062A7C 80062ECC 00000000 */  nop
/* 062A80 80062ED0 00000000 */  nop
/* 062A84 80062ED4 00000000 */  nop
/* 062A88 80062ED8 00000000 */  nop
/* 062A8C 80062EDC 00000000 */  nop
/* 062A90 80062EE0 00000000 */  nop
/* 062A94 80062EE4 00000000 */  nop
/* 062A98 80062EE8 00000000 */  nop
/* 062A9C 80062EEC 00000000 */  nop
/* 062AA0 80062EF0 00000000 */  nop
/* 062AA4 80062EF4 00000000 */  nop
/* 062AA8 80062EF8 00000000 */  nop
/* 062AAC 80062EFC 00000000 */  nop
/* 062AB0 80062F00 00000000 */  nop
/* 062AB4 80062F04 00000000 */  nop
/* 062AB8 80062F08 00000000 */  nop
/* 062ABC 80062F0C 00000000 */  nop
/* 062AC0 80062F10 00000000 */  nop
/* 062AC4 80062F14 00000000 */  nop
/* 062AC8 80062F18 00000000 */  nop
/* 062ACC 80062F1C 00000000 */  nop
/* 062AD0 80062F20 00000000 */  nop
/* 062AD4 80062F24 00000000 */  nop
/* 062AD8 80062F28 00000000 */  nop
/* 062ADC 80062F2C 00000000 */  nop
/* 062AE0 80062F30 00000000 */  nop
/* 062AE4 80062F34 00000000 */  nop
/* 062AE8 80062F38 00000000 */  nop
/* 062AEC 80062F3C 00000000 */  nop
/* 062AF0 80062F40 00000000 */  nop
/* 062AF4 80062F44 00000000 */  nop
/* 062AF8 80062F48 00000000 */  nop
/* 062AFC 80062F4C 00000000 */  nop
/* 062B00 80062F50 00000000 */  nop
/* 062B04 80062F54 00000000 */  nop
/* 062B08 80062F58 00000000 */  nop
/* 062B0C 80062F5C 00000000 */  nop
/* 062B10 80062F60 00000000 */  nop
/* 062B14 80062F64 00000000 */  nop
/* 062B18 80062F68 00000000 */  nop
/* 062B1C 80062F6C 00000000 */  nop
/* 062B20 80062F70 00000000 */  nop
/* 062B24 80062F74 00000000 */  nop
/* 062B28 80062F78 00000000 */  nop
/* 062B2C 80062F7C 00000000 */  nop
/* 062B30 80062F80 00000000 */  nop
/* 062B34 80062F84 00000000 */  nop
/* 062B38 80062F88 00000000 */  nop
/* 062B3C 80062F8C 00000000 */  nop
/* 062B40 80062F90 00000000 */  nop
/* 062B44 80062F94 00000000 */  nop
/* 062B48 80062F98 00000000 */  nop
/* 062B4C 80062F9C 00000000 */  nop
/* 062B50 80062FA0 00000000 */  nop
/* 062B54 80062FA4 00000000 */  nop
/* 062B58 80062FA8 00000000 */  nop
/* 062B5C 80062FAC 00000000 */  nop
/* 062B60 80062FB0 00000000 */  nop
/* 062B64 80062FB4 00000000 */  nop
/* 062B68 80062FB8 00000000 */  nop
/* 062B6C 80062FBC 00000000 */  nop
/* 062B70 80062FC0 00000000 */  nop
/* 062B74 80062FC4 00000000 */  nop
/* 062B78 80062FC8 00000000 */  nop
/* 062B7C 80062FCC 00000000 */  nop
/* 062B80 80062FD0 00000000 */  nop
/* 062B84 80062FD4 00000000 */  nop
/* 062B88 80062FD8 00000000 */  nop
/* 062B8C 80062FDC 00000000 */  nop
/* 062B90 80062FE0 00000000 */  nop
/* 062B94 80062FE4 00000000 */  nop
/* 062B98 80062FE8 00000000 */  nop
/* 062B9C 80062FEC 00000000 */  nop
/* 062BA0 80062FF0 00000000 */  nop
/* 062BA4 80062FF4 00000000 */  nop
/* 062BA8 80062FF8 00000000 */  nop
/* 062BAC 80062FFC 00000000 */  nop
/* 062BB0 80063000 00000000 */  nop
/* 062BB4 80063004 00000000 */  nop
/* 062BB8 80063008 00000000 */  nop
/* 062BBC 8006300C 00000000 */  nop
/* 062BC0 80063010 00000000 */  nop
/* 062BC4 80063014 00000000 */  nop
/* 062BC8 80063018 00000000 */  nop
/* 062BCC 8006301C 00000000 */  nop
/* 062BD0 80063020 00000000 */  nop
/* 062BD4 80063024 00000000 */  nop
/* 062BD8 80063028 00000000 */  nop
/* 062BDC 8006302C 00000000 */  nop
/* 062BE0 80063030 00000000 */  nop
/* 062BE4 80063034 00000000 */  nop
/* 062BE8 80063038 00000000 */  nop
/* 062BEC 8006303C 00000000 */  nop
/* 062BF0 80063040 00000000 */  nop
/* 062BF4 80063044 00000000 */  nop
/* 062BF8 80063048 00000000 */  nop
.L8006304C:
/* 062BFC 8006304C 200C1000 */  addi        $t4, $zero, 0x1000
/* 062C00 80063050 200B02E0 */  addi        $t3, $zero, 0x2e0
/* 062C04 80063054 8D780000 */  lw          $t8, 0x0($t3)
/* 062C08 80063058 95730004 */  lhu         $s3, 0x4($t3)
/* 062C0C 8006305C 0C0007F6 */  jal         func_80001FD8
/* 062C10 80063060 95740006 */   lhu        $s4, 0x6($t3)
/* 062C14 80063064 359F0000 */  ori         $ra, $t4, 0x0
/* 062C18 80063068 400B3000 */  cop0        0x00B3000
.L8006306C:
/* 062C1C 8006306C 1560FFFF */  bne         $t3, $zero, .L8006306C
/* 062C20 80063070 400B3000 */   cop0       0x00B3000
.L80063074:
/* 062C24 80063074 03E00008 */  jr          $ra
/* 062C28 80063078 400B2800 */   cop0       0x00B2800

glabel func_8006307C # 16
.L8006307C:
/* 062C2C 8006307C 1560FFFF */  bne         $t3, $zero, .L8006307C
/* 062C30 80063080 400B2800 */   cop0       0x00B2800
/* 062C34 80063084 40940000 */  cop0        0x0940000
/* 062C38 80063088 06800003 */  bltz        $s4, .L80063098
/* 062C3C 8006308C 40980800 */   cop0       0x0980800
/* 062C40 80063090 03E00008 */  jr          $ra
/* 062C44 80063094 40931000 */   cop0       0x0931000
.L80063098:
/* 062C48 80063098 03E00008 */  jr          $ra
/* 062C4C 8006309C 40931800 */   cop0       0x0931800
