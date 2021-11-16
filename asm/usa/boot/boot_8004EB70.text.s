.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EB70 # 0
/* 04E720 8004EB70 27BDFF90 */  addiu       $sp, $sp, -0x70
/* 04E724 8004EB74 3C0E800A */  lui         $t6, %hi(D_8009D9C4)
/* 04E728 8004EB78 8DCED9C4 */  lw          $t6, %lo(D_8009D9C4)($t6)
/* 04E72C 8004EB7C AFBF0044 */  sw          $ra, 0x44($sp)
/* 04E730 8004EB80 AFBE0040 */  sw          $fp, 0x40($sp)
/* 04E734 8004EB84 AFB7003C */  sw          $s7, 0x3c($sp)
/* 04E738 8004EB88 AFB60038 */  sw          $s6, 0x38($sp)
/* 04E73C 8004EB8C AFB50034 */  sw          $s5, 0x34($sp)
/* 04E740 8004EB90 AFB40030 */  sw          $s4, 0x30($sp)
/* 04E744 8004EB94 AFB3002C */  sw          $s3, 0x2c($sp)
/* 04E748 8004EB98 AFB20028 */  sw          $s2, 0x28($sp)
/* 04E74C 8004EB9C AFB10024 */  sw          $s1, 0x24($sp)
/* 04E750 8004EBA0 AFB00020 */  sw          $s0, 0x20($sp)
/* 04E754 8004EBA4 8DCF0040 */  lw          $t7, 0x40($t6)
/* 04E758 8004EBA8 8DF30020 */  lw          $s3, 0x20($t7)
/* 04E75C 8004EBAC 0C013D7C */  jal         func_8004F5F0
/* 04E760 8004EBB0 AFA0004C */   sw         $zero, 0x4c($sp)
/* 04E764 8004EBB4 3C180C00 */  lui         $t8, 0xc00
/* 04E768 8004EBB8 3C1907C0 */  lui         $t9, 0x7c0
/* 04E76C 8004EBBC 3C080C00 */  lui         $t0, 0xc00
/* 04E770 8004EBC0 3C090930 */  lui         $t1, 0x930
/* 04E774 8004EBC4 373907C0 */  ori         $t9, $t9, 0x7c0
/* 04E778 8004EBC8 3718DA83 */  ori         $t8, $t8, 0xda83
/* 04E77C 8004EBCC 352907C0 */  ori         $t1, $t1, 0x7c0
/* 04E780 8004EBD0 35085A82 */  ori         $t0, $t0, 0x5a82
/* 04E784 8004EBD4 AC580000 */  sw          $t8, 0x0($v0)
/* 04E788 8004EBD8 AC590004 */  sw          $t9, 0x4($v0)
/* 04E78C 8004EBDC AC480008 */  sw          $t0, 0x8($v0)
/* 04E790 8004EBE0 AC49000C */  sw          $t1, 0xc($v0)
/* 04E794 8004EBE4 0000A825 */  move        $s5, $zero
/* 04E798 8004EBE8 24120170 */  addiu       $s2, $zero, 0x170
/* 04E79C 8004EBEC 8E650018 */  lw          $a1, 0x18($s3)
/* 04E7A0 8004EBF0 02602025 */  move        $a0, $s3
/* 04E7A4 8004EBF4 240607C0 */  addiu       $a2, $zero, 0x7c0
/* 04E7A8 8004EBF8 0C013D04 */  jal         func_8004F410
/* 04E7AC 8004EBFC 24470010 */   addiu      $a3, $v0, 0x10
/* 04E7B0 8004EC00 8FA3004C */  lw          $v1, 0x4c($sp)
/* 04E7B4 8004EC04 3C0A0200 */  lui         $t2, 0x200
/* 04E7B8 8004EC08 354A0930 */  ori         $t2, $t2, 0x930
/* 04E7BC 8004EC0C 240B0170 */  addiu       $t3, $zero, 0x170
/* 04E7C0 8004EC10 AC4B0004 */  sw          $t3, 0x4($v0)
/* 04E7C4 8004EC14 AC4A0000 */  sw          $t2, 0x0($v0)
/* 04E7C8 8004EC18 926C0024 */  lbu         $t4, 0x24($s3)
/* 04E7CC 8004EC1C 24500008 */  addiu       $s0, $v0, 0x8
/* 04E7D0 8004EC20 0000B025 */  move        $s6, $zero
/* 04E7D4 8004EC24 1980006D */  blez        $t4, .L8004EDDC
/* 04E7D8 8004EC28 3C1E0C00 */   lui        $fp, 0xc00
/* 04E7DC 8004EC2C 8E620018 */  lw          $v0, 0x18($s3)
.L8004EC30:
/* 04E7E0 8004EC30 8E6D0020 */  lw          $t5, 0x20($s3)
/* 04E7E4 8004EC34 00167080 */  sll         $t6, $s6, 2
/* 04E7E8 8004EC38 01D67021 */  addu        $t6, $t6, $s6
/* 04E7EC 8004EC3C 000E70C0 */  sll         $t6, $t6, 3
/* 04E7F0 8004EC40 01AE8821 */  addu        $s1, $t5, $t6
/* 04E7F4 8004EC44 8E2F0000 */  lw          $t7, 0x0($s1)
/* 04E7F8 8004EC48 8E280004 */  lw          $t0, 0x4($s1)
/* 04E7FC 8004EC4C 02602025 */  move        $a0, $s3
/* 04E800 8004EC50 000FC023 */  subu        $t8, $zero, $t7
/* 04E804 8004EC54 0018C840 */  sll         $t9, $t8, 1
/* 04E808 8004EC58 00084823 */  subu        $t1, $zero, $t0
/* 04E80C 8004EC5C 0059A021 */  addu        $s4, $v0, $t9
/* 04E810 8004EC60 00095040 */  sll         $t2, $t1, 1
/* 04E814 8004EC64 16830009 */  bne         $s4, $v1, .L8004EC8C
/* 04E818 8004EC68 004AB821 */   addu       $s7, $v0, $t2
/* 04E81C 8004EC6C 02405825 */  move        $t3, $s2
/* 04E820 8004EC70 00159400 */  sll         $s2, $s5, 16
/* 04E824 8004EC74 000BAC00 */  sll         $s5, $t3, 16
/* 04E828 8004EC78 00156C03 */  sra         $t5, $s5, 16
/* 04E82C 8004EC7C 00126403 */  sra         $t4, $s2, 16
/* 04E830 8004EC80 01809025 */  move        $s2, $t4
/* 04E834 8004EC84 10000007 */  b           .L8004ECA4
/* 04E838 8004EC88 01A0A825 */   move       $s5, $t5
.L8004EC8C:
/* 04E83C 8004EC8C 02802825 */  move        $a1, $s4
/* 04E840 8004EC90 02A03025 */  move        $a2, $s5
/* 04E844 8004EC94 240700B8 */  addiu       $a3, $zero, 0xb8
/* 04E848 8004EC98 0C013CB3 */  jal         func_8004F2CC
/* 04E84C 8004EC9C AFB00010 */   sw         $s0, 0x10($sp)
/* 04E850 8004ECA0 00408025 */  move        $s0, $v0
.L8004ECA4:
/* 04E854 8004ECA4 02602025 */  move        $a0, $s3
/* 04E858 8004ECA8 02202825 */  move        $a1, $s1
/* 04E85C 8004ECAC 02403025 */  move        $a2, $s2
/* 04E860 8004ECB0 0C013C2D */  jal         func_8004F0B4
/* 04E864 8004ECB4 02003825 */   move       $a3, $s0
/* 04E868 8004ECB8 86240008 */  lh          $a0, 0x8($s1)
/* 04E86C 8004ECBC 00408025 */  move        $s0, $v0
/* 04E870 8004ECC0 00154400 */  sll         $t0, $s5, 16
/* 04E874 8004ECC4 10800012 */  beq         $a0, $zero, .L8004ED10
/* 04E878 8004ECC8 308FFFFF */   andi       $t7, $a0, 0xffff
/* 04E87C 8004ECCC 3249FFFF */  andi        $t1, $s2, 0xffff
/* 04E880 8004ECD0 01095025 */  or          $t2, $t0, $t1
/* 04E884 8004ECD4 01FEC025 */  or          $t8, $t7, $fp
/* 04E888 8004ECD8 AC580000 */  sw          $t8, 0x0($v0)
/* 04E88C 8004ECDC AC4A0004 */  sw          $t2, 0x4($v0)
/* 04E890 8004ECE0 8E2B0024 */  lw          $t3, 0x24($s1)
/* 04E894 8004ECE4 24500008 */  addiu       $s0, $v0, 0x8
/* 04E898 8004ECE8 5560000A */  bnel        $t3, $zero, .L8004ED14
/* 04E89C 8004ECEC 8623000A */   lh         $v1, 0xa($s1)
/* 04E8A0 8004ECF0 8E2C0020 */  lw          $t4, 0x20($s1)
/* 04E8A4 8004ECF4 02602025 */  move        $a0, $s3
/* 04E8A8 8004ECF8 02E02825 */  move        $a1, $s7
/* 04E8AC 8004ECFC 15800004 */  bne         $t4, $zero, .L8004ED10
/* 04E8B0 8004ED00 02403025 */   move       $a2, $s2
/* 04E8B4 8004ED04 0C013D04 */  jal         func_8004F410
/* 04E8B8 8004ED08 02003825 */   move       $a3, $s0
/* 04E8BC 8004ED0C 00408025 */  move        $s0, $v0
.L8004ED10:
/* 04E8C0 8004ED10 8623000A */  lh          $v1, 0xa($s1)
.L8004ED14:
/* 04E8C4 8004ED14 02001025 */  move        $v0, $s0
/* 04E8C8 8004ED18 26070008 */  addiu       $a3, $s0, 0x8
/* 04E8CC 8004ED1C 1060000C */  beq         $v1, $zero, .L8004ED50
/* 04E8D0 8004ED20 306EFFFF */   andi       $t6, $v1, 0xffff
/* 04E8D4 8004ED24 0012CC00 */  sll         $t9, $s2, 16
/* 04E8D8 8004ED28 32A8FFFF */  andi        $t0, $s5, 0xffff
/* 04E8DC 8004ED2C 03284825 */  or          $t1, $t9, $t0
/* 04E8E0 8004ED30 01DE7825 */  or          $t7, $t6, $fp
/* 04E8E4 8004ED34 AC4F0000 */  sw          $t7, 0x0($v0)
/* 04E8E8 8004ED38 AC490004 */  sw          $t1, 0x4($v0)
/* 04E8EC 8004ED3C 02602025 */  move        $a0, $s3
/* 04E8F0 8004ED40 02802825 */  move        $a1, $s4
/* 04E8F4 8004ED44 0C013D04 */  jal         func_8004F410
/* 04E8F8 8004ED48 02A03025 */   move       $a2, $s5
/* 04E8FC 8004ED4C 00408025 */  move        $s0, $v0
.L8004ED50:
/* 04E900 8004ED50 8E240020 */  lw          $a0, 0x20($s1)
/* 04E904 8004ED54 02402825 */  move        $a1, $s2
/* 04E908 8004ED58 50800005 */  beql        $a0, $zero, .L8004ED70
/* 04E90C 8004ED5C 8E2A0024 */   lw         $t2, 0x24($s1)
/* 04E910 8004ED60 0C013D4F */  jal         func_8004F53C
/* 04E914 8004ED64 02003025 */   move       $a2, $s0
/* 04E918 8004ED68 00408025 */  move        $s0, $v0
/* 04E91C 8004ED6C 8E2A0024 */  lw          $t2, 0x24($s1)
.L8004ED70:
/* 04E920 8004ED70 02602025 */  move        $a0, $s3
/* 04E924 8004ED74 02E02825 */  move        $a1, $s7
/* 04E928 8004ED78 15400004 */  bne         $t2, $zero, .L8004ED8C
/* 04E92C 8004ED7C 02403025 */   move       $a2, $s2
/* 04E930 8004ED80 0C013D04 */  jal         func_8004F410
/* 04E934 8004ED84 02003825 */   move       $a3, $s0
/* 04E938 8004ED88 00408025 */  move        $s0, $v0
.L8004ED8C:
/* 04E93C 8004ED8C 8623000C */  lh          $v1, 0xc($s1)
/* 04E940 8004ED90 26D60001 */  addiu       $s6, $s6, 0x1
/* 04E944 8004ED94 00164C00 */  sll         $t1, $s6, 16
/* 04E948 8004ED98 10600009 */  beq         $v1, $zero, .L8004EDC0
/* 04E94C 8004ED9C 0009B403 */   sra        $s6, $t1, 16
/* 04E950 8004EDA0 02001025 */  move        $v0, $s0
/* 04E954 8004EDA4 306CFFFF */  andi        $t4, $v1, 0xffff
/* 04E958 8004EDA8 00127C00 */  sll         $t7, $s2, 16
/* 04E95C 8004EDAC 35F80930 */  ori         $t8, $t7, 0x930
/* 04E960 8004EDB0 019E6825 */  or          $t5, $t4, $fp
/* 04E964 8004EDB4 AC4D0000 */  sw          $t5, 0x0($v0)
/* 04E968 8004EDB8 AC580004 */  sw          $t8, 0x4($v0)
/* 04E96C 8004EDBC 26100008 */  addiu       $s0, $s0, 0x8
.L8004EDC0:
/* 04E970 8004EDC0 926B0024 */  lbu         $t3, 0x24($s3)
/* 04E974 8004EDC4 8E390004 */  lw          $t9, 0x4($s1)
/* 04E978 8004EDC8 8E620018 */  lw          $v0, 0x18($s3)
/* 04E97C 8004EDCC 02CB082A */  slt         $at, $s6, $t3
/* 04E980 8004EDD0 00194040 */  sll         $t0, $t9, 1
/* 04E984 8004EDD4 1420FF96 */  bne         $at, $zero, .L8004EC30
/* 04E988 8004EDD8 00481821 */   addu       $v1, $v0, $t0
.L8004EDDC:
/* 04E98C 8004EDDC 8E63001C */  lw          $v1, 0x1c($s3)
/* 04E990 8004EDE0 8E6C0018 */  lw          $t4, 0x18($s3)
/* 04E994 8004EDE4 8E6F0014 */  lw          $t7, 0x14($s3)
/* 04E998 8004EDE8 00037040 */  sll         $t6, $v1, 1
/* 04E99C 8004EDEC 258D0170 */  addiu       $t5, $t4, 0x170
/* 04E9A0 8004EDF0 01EEC021 */  addu        $t8, $t7, $t6
/* 04E9A4 8004EDF4 030D082B */  sltu        $at, $t8, $t5
/* 04E9A8 8004EDF8 10200003 */  beq         $at, $zero, .L8004EE08
/* 04E9AC 8004EDFC AE6D0018 */   sw         $t5, 0x18($s3)
/* 04E9B0 8004EE00 01AEC823 */  subu        $t9, $t5, $t6
/* 04E9B4 8004EE04 AE790018 */  sw          $t9, 0x18($s3)
.L8004EE08:
/* 04E9B8 8004EE08 02001825 */  move        $v1, $s0
/* 04E9BC 8004EE0C 3C080A00 */  lui         $t0, 0xa00
/* 04E9C0 8004EE10 3C0907C0 */  lui         $t1, 0x7c0
/* 04E9C4 8004EE14 35290170 */  ori         $t1, $t1, 0x170
/* 04E9C8 8004EE18 35080930 */  ori         $t0, $t0, 0x930
/* 04E9CC 8004EE1C AC680000 */  sw          $t0, 0x0($v1)
/* 04E9D0 8004EE20 AC690004 */  sw          $t1, 0x4($v1)
/* 04E9D4 8004EE24 8FBF0044 */  lw          $ra, 0x44($sp)
/* 04E9D8 8004EE28 26020008 */  addiu       $v0, $s0, 0x8
/* 04E9DC 8004EE2C 8FB00020 */  lw          $s0, 0x20($sp)
/* 04E9E0 8004EE30 8FBE0040 */  lw          $fp, 0x40($sp)
/* 04E9E4 8004EE34 8FB7003C */  lw          $s7, 0x3c($sp)
/* 04E9E8 8004EE38 8FB60038 */  lw          $s6, 0x38($sp)
/* 04E9EC 8004EE3C 8FB50034 */  lw          $s5, 0x34($sp)
/* 04E9F0 8004EE40 8FB40030 */  lw          $s4, 0x30($sp)
/* 04E9F4 8004EE44 8FB3002C */  lw          $s3, 0x2c($sp)
/* 04E9F8 8004EE48 8FB20028 */  lw          $s2, 0x28($sp)
/* 04E9FC 8004EE4C 8FB10024 */  lw          $s1, 0x24($sp)
/* 04EA00 8004EE50 03E00008 */  jr          $ra
/* 04EA04 8004EE54 27BD0070 */   addiu      $sp, $sp, 0x70

glabel func_8004EE58 # 1
/* 04EA08 8004EE58 24A3FFFE */  addiu       $v1, $a1, -0x2
/* 04EA0C 8004EE5C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04EA10 8004EE60 306E0007 */  andi        $t6, $v1, 0x7
/* 04EA14 8004EE64 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04EA18 8004EE68 2DC10008 */  sltiu       $at, $t6, 0x8
/* 04EA1C 8004EE6C 00803825 */  move        $a3, $a0
/* 04EA20 8004EE70 1020008B */  beq         $at, $zero, .L8004F0A0
/* 04EA24 8004EE74 8CC80000 */   lw         $t0, 0x0($a2)
/* 04EA28 8004EE78 000E7080 */  sll         $t6, $t6, 2
/* 04EA2C 8004EE7C 3C01800A */  lui         $at, %hi(jtbl_800A7CB0)
/* 04EA30 8004EE80 002E0821 */  addu        $at, $at, $t6
/* 04EA34 8004EE84 8C2E7CB0 */  lw          $t6, %lo(jtbl_800A7CB0)($at)
/* 04EA38 8004EE88 01C00008 */  jr          $t6
/* 04EA3C 8004EE8C 00000000 */   nop
glabel jmplabel_8004EE90
/* 04EA40 8004EE90 2401FFF8 */  addiu       $at, $zero, -0x8
/* 04EA44 8004EE94 01017824 */  and         $t7, $t0, $at
/* 04EA48 8004EE98 8CF80020 */  lw          $t8, 0x20($a3)
/* 04EA4C 8004EE9C 04610003 */  bgez        $v1, .L8004EEAC
/* 04EA50 8004EEA0 0003C8C3 */   sra        $t9, $v1, 3
/* 04EA54 8004EEA4 24610007 */  addiu       $at, $v1, 0x7
/* 04EA58 8004EEA8 0001C8C3 */  sra         $t9, $at, 3
.L8004EEAC:
/* 04EA5C 8004EEAC 00194880 */  sll         $t1, $t9, 2
/* 04EA60 8004EEB0 01394821 */  addu        $t1, $t1, $t9
/* 04EA64 8004EEB4 000948C0 */  sll         $t1, $t1, 3
/* 04EA68 8004EEB8 03095021 */  addu        $t2, $t8, $t1
/* 04EA6C 8004EEBC 10000078 */  b           .L8004F0A0
/* 04EA70 8004EEC0 AD4F0000 */   sw         $t7, 0x0($t2)
glabel jmplabel_8004EEC4
/* 04EA74 8004EEC4 2401FFF8 */  addiu       $at, $zero, -0x8
/* 04EA78 8004EEC8 01015824 */  and         $t3, $t0, $at
/* 04EA7C 8004EECC 8CEC0020 */  lw          $t4, 0x20($a3)
/* 04EA80 8004EED0 04610003 */  bgez        $v1, .L8004EEE0
/* 04EA84 8004EED4 000368C3 */   sra        $t5, $v1, 3
/* 04EA88 8004EED8 24610007 */  addiu       $at, $v1, 0x7
/* 04EA8C 8004EEDC 000168C3 */  sra         $t5, $at, 3
.L8004EEE0:
/* 04EA90 8004EEE0 000D7080 */  sll         $t6, $t5, 2
/* 04EA94 8004EEE4 01CD7021 */  addu        $t6, $t6, $t5
/* 04EA98 8004EEE8 000E70C0 */  sll         $t6, $t6, 3
/* 04EA9C 8004EEEC 018EC821 */  addu        $t9, $t4, $t6
/* 04EAA0 8004EEF0 1000006B */  b           .L8004F0A0
/* 04EAA4 8004EEF4 AF2B0004 */   sw         $t3, 0x4($t9)
glabel jmplabel_8004EEF8
/* 04EAA8 8004EEF8 8CF80020 */  lw          $t8, 0x20($a3)
/* 04EAAC 8004EEFC 04610003 */  bgez        $v1, .L8004EF0C
/* 04EAB0 8004EF00 000348C3 */   sra        $t1, $v1, 3
/* 04EAB4 8004EF04 24610007 */  addiu       $at, $v1, 0x7
/* 04EAB8 8004EF08 000148C3 */  sra         $t1, $at, 3
.L8004EF0C:
/* 04EABC 8004EF0C 00097880 */  sll         $t7, $t1, 2
/* 04EAC0 8004EF10 01E97821 */  addu        $t7, $t7, $t1
/* 04EAC4 8004EF14 000F78C0 */  sll         $t7, $t7, 3
/* 04EAC8 8004EF18 030F5021 */  addu        $t2, $t8, $t7
/* 04EACC 8004EF1C 10000060 */  b           .L8004F0A0
/* 04EAD0 8004EF20 A5480008 */   sh         $t0, 0x8($t2)
glabel jmplabel_8004EF24
/* 04EAD4 8004EF24 8CED0020 */  lw          $t5, 0x20($a3)
/* 04EAD8 8004EF28 04610003 */  bgez        $v1, .L8004EF38
/* 04EADC 8004EF2C 000360C3 */   sra        $t4, $v1, 3
/* 04EAE0 8004EF30 24610007 */  addiu       $at, $v1, 0x7
/* 04EAE4 8004EF34 000160C3 */  sra         $t4, $at, 3
.L8004EF38:
/* 04EAE8 8004EF38 000C7080 */  sll         $t6, $t4, 2
/* 04EAEC 8004EF3C 01CC7021 */  addu        $t6, $t6, $t4
/* 04EAF0 8004EF40 000E70C0 */  sll         $t6, $t6, 3
/* 04EAF4 8004EF44 01AE5821 */  addu        $t3, $t5, $t6
/* 04EAF8 8004EF48 10000055 */  b           .L8004F0A0
/* 04EAFC 8004EF4C A568000A */   sh         $t0, 0xa($t3)
glabel jmplabel_8004EF50
/* 04EB00 8004EF50 8CF90020 */  lw          $t9, 0x20($a3)
/* 04EB04 8004EF54 04610003 */  bgez        $v1, .L8004EF64
/* 04EB08 8004EF58 000348C3 */   sra        $t1, $v1, 3
/* 04EB0C 8004EF5C 24610007 */  addiu       $at, $v1, 0x7
/* 04EB10 8004EF60 000148C3 */  sra         $t1, $at, 3
.L8004EF64:
/* 04EB14 8004EF64 0009C080 */  sll         $t8, $t1, 2
/* 04EB18 8004EF68 0309C021 */  addu        $t8, $t8, $t1
/* 04EB1C 8004EF6C 0018C0C0 */  sll         $t8, $t8, 3
/* 04EB20 8004EF70 03387821 */  addu        $t7, $t9, $t8
/* 04EB24 8004EF74 1000004A */  b           .L8004F0A0
/* 04EB28 8004EF78 A5E8000C */   sh         $t0, 0xc($t7)
glabel jmplabel_8004EF7C
/* 04EB2C 8004EF7C 44882000 */  mtc1        $t0, $f4
/* 04EB30 8004EF80 3C01447A */  lui         $at, 0x447a
/* 04EB34 8004EF84 44814000 */  mtc1        $at, $f8
/* 04EB38 8004EF88 468021A0 */  cvt.s.w     $f6, $f4
/* 04EB3C 8004EF8C 3C0A800A */  lui         $t2, %hi(D_8009D9C4)
/* 04EB40 8004EF90 8D4AD9C4 */  lw          $t2, %lo(D_8009D9C4)($t2)
/* 04EB44 8004EF94 8CED0020 */  lw          $t5, 0x20($a3)
/* 04EB48 8004EF98 8D4C004C */  lw          $t4, 0x4c($t2)
/* 04EB4C 8004EF9C 46083283 */  div.s       $f10, $f6, $f8
/* 04EB50 8004EFA0 448C9000 */  mtc1        $t4, $f18
/* 04EB54 8004EFA4 00000000 */  nop
/* 04EB58 8004EFA8 46809121 */  cvt.d.w     $f4, $f18
/* 04EB5C 8004EFAC 46005021 */  cvt.d.s     $f0, $f10
/* 04EB60 8004EFB0 46200400 */  add.d       $f16, $f0, $f0
/* 04EB64 8004EFB4 46248183 */  div.d       $f6, $f16, $f4
/* 04EB68 8004EFB8 46203220 */  cvt.s.d     $f8, $f6
/* 04EB6C 8004EFBC 04610003 */  bgez        $v1, .L8004EFCC
/* 04EB70 8004EFC0 000370C3 */   sra        $t6, $v1, 3
/* 04EB74 8004EFC4 24610007 */  addiu       $at, $v1, 0x7
/* 04EB78 8004EFC8 000170C3 */  sra         $t6, $at, 3
.L8004EFCC:
/* 04EB7C 8004EFCC 000E5880 */  sll         $t3, $t6, 2
/* 04EB80 8004EFD0 016E5821 */  addu        $t3, $t3, $t6
/* 04EB84 8004EFD4 000B58C0 */  sll         $t3, $t3, 3
/* 04EB88 8004EFD8 01AB4821 */  addu        $t1, $t5, $t3
/* 04EB8C 8004EFDC 10000030 */  b           .L8004F0A0
/* 04EB90 8004EFE0 E5280010 */   swc1       $f8, 0x10($t1)
glabel jmplabel_8004EFE4
/* 04EB94 8004EFE4 8CF90020 */  lw          $t9, 0x20($a3)
/* 04EB98 8004EFE8 04610003 */  bgez        $v1, .L8004EFF8
/* 04EB9C 8004EFEC 0003C0C3 */   sra        $t8, $v1, 3
/* 04EBA0 8004EFF0 24610007 */  addiu       $at, $v1, 0x7
/* 04EBA4 8004EFF4 0001C0C3 */  sra         $t8, $at, 3
.L8004EFF8:
/* 04EBA8 8004EFF8 00187880 */  sll         $t7, $t8, 2
/* 04EBAC 8004EFFC 01F87821 */  addu        $t7, $t7, $t8
/* 04EBB0 8004F000 000F78C0 */  sll         $t7, $t7, 3
/* 04EBB4 8004F004 032F1021 */  addu        $v0, $t9, $t7
/* 04EBB8 8004F008 8C4A0004 */  lw          $t2, 0x4($v0)
/* 04EBBC 8004F00C 8C4C0000 */  lw          $t4, 0x0($v0)
/* 04EBC0 8004F010 44882000 */  mtc1        $t0, $f4
/* 04EBC4 8004F014 3C0141F0 */  lui         $at, 0x41f0
/* 04EBC8 8004F018 014C7023 */  subu        $t6, $t2, $t4
/* 04EBCC 8004F01C 448E5000 */  mtc1        $t6, $f10
/* 04EBD0 8004F020 468021A0 */  cvt.s.w     $f6, $f4
/* 04EBD4 8004F024 05C10005 */  bgez        $t6, .L8004F03C
/* 04EBD8 8004F028 468054A1 */   cvt.d.w    $f18, $f10
/* 04EBDC 8004F02C 44818800 */  mtc1        $at, $f17
/* 04EBE0 8004F030 44808000 */  mtc1        $zero, $f16
/* 04EBE4 8004F034 00000000 */  nop
/* 04EBE8 8004F038 46309480 */  add.d       $f18, $f18, $f16
.L8004F03C:
/* 04EBEC 8004F03C 3C01800A */  lui         $at, %hi(D_800A7CD0)
/* 04EBF0 8004F040 D42A7CD0 */  ldc1        $f10, %lo(D_800A7CD0)($at)
/* 04EBF4 8004F044 46003221 */  cvt.d.s     $f8, $f6
/* 04EBF8 8004F048 462A4403 */  div.d       $f16, $f8, $f10
/* 04EBFC 8004F04C 46309102 */  mul.d       $f4, $f18, $f16
/* 04EC00 8004F050 462021A0 */  cvt.s.d     $f6, $f4
/* 04EC04 8004F054 10000012 */  b           .L8004F0A0
/* 04EC08 8004F058 E446001C */   swc1       $f6, 0x1c($v0)
glabel jmplabel_8004F05C
/* 04EC0C 8004F05C 04610003 */  bgez        $v1, .L8004F06C
/* 04EC10 8004F060 000310C3 */   sra        $v0, $v1, 3
/* 04EC14 8004F064 24610007 */  addiu       $at, $v1, 0x7
/* 04EC18 8004F068 000110C3 */  sra         $v0, $at, 3
.L8004F06C:
/* 04EC1C 8004F06C 8CEB0020 */  lw          $t3, 0x20($a3)
/* 04EC20 8004F070 00026880 */  sll         $t5, $v0, 2
/* 04EC24 8004F074 01A26821 */  addu        $t5, $t5, $v0
/* 04EC28 8004F078 000D68C0 */  sll         $t5, $t5, 3
/* 04EC2C 8004F07C 016D4821 */  addu        $t1, $t3, $t5
/* 04EC30 8004F080 8D250020 */  lw          $a1, 0x20($t1)
/* 04EC34 8004F084 50A00007 */  beql        $a1, $zero, .L8004F0A4
/* 04EC38 8004F088 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04EC3C 8004F08C A4A80000 */  sh          $t0, 0x0($a1)
/* 04EC40 8004F090 8CF80020 */  lw          $t8, 0x20($a3)
/* 04EC44 8004F094 030DC821 */  addu        $t9, $t8, $t5
/* 04EC48 8004F098 0C015844 */  jal         func_80056110
/* 04EC4C 8004F09C 8F240020 */   lw         $a0, 0x20($t9)
.L8004F0A0:
/* 04EC50 8004F0A0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004F0A4:
/* 04EC54 8004F0A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04EC58 8004F0A8 00001025 */  move        $v0, $zero
/* 04EC5C 8004F0AC 03E00008 */  jr          $ra
/* 04EC60 8004F0B0 00000000 */   nop

glabel func_8004F0B4 # 2
/* 04EC64 8004F0B4 27BDFF98 */  addiu       $sp, $sp, -0x68
/* 04EC68 8004F0B8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 04EC6C 8004F0BC AFB10020 */  sw          $s1, 0x20($sp)
/* 04EC70 8004F0C0 AFB0001C */  sw          $s0, 0x1c($sp)
/* 04EC74 8004F0C4 AFA40068 */  sw          $a0, 0x68($sp)
/* 04EC78 8004F0C8 AFA60070 */  sw          $a2, 0x70($sp)
/* 04EC7C 8004F0CC AFA70074 */  sw          $a3, 0x74($sp)
/* 04EC80 8004F0D0 8CAE0024 */  lw          $t6, 0x24($a1)
/* 04EC84 8004F0D4 00A08025 */  move        $s0, $a1
/* 04EC88 8004F0D8 8FA40068 */  lw          $a0, 0x68($sp)
/* 04EC8C 8004F0DC 11C0006B */  beq         $t6, $zero, .L8004F28C
/* 04EC90 8004F0E0 8FA60070 */   lw         $a2, 0x70($sp)
/* 04EC94 8004F0E4 8CAF0004 */  lw          $t7, 0x4($a1)
/* 04EC98 8004F0E8 8CB80000 */  lw          $t8, 0x0($a1)
/* 04EC9C 8004F0EC 00A02025 */  move        $a0, $a1
/* 04ECA0 8004F0F0 240500B8 */  addiu       $a1, $zero, 0xb8
/* 04ECA4 8004F0F4 01F8C823 */  subu        $t9, $t7, $t8
/* 04ECA8 8004F0F8 0C015D1C */  jal         func_80057470
/* 04ECAC 8004F0FC AFB90040 */   sw         $t9, 0x40($sp)
/* 04ECB0 8004F100 8FAA0040 */  lw          $t2, 0x40($sp)
/* 04ECB4 8004F104 3C014700 */  lui         $at, 0x4700
/* 04ECB8 8004F108 44817000 */  mtc1        $at, $f14
/* 04ECBC 8004F10C 448A3000 */  mtc1        $t2, $f6
/* 04ECC0 8004F110 3C013FF0 */  lui         $at, 0x3ff0
/* 04ECC4 8004F114 44812800 */  mtc1        $at, $f5
/* 04ECC8 8004F118 46803220 */  cvt.s.w     $f8, $f6
/* 04ECCC 8004F11C 44802000 */  mtc1        $zero, $f4
/* 04ECD0 8004F120 240D00B8 */  addiu       $t5, $zero, 0xb8
/* 04ECD4 8004F124 8FA40068 */  lw          $a0, 0x68($sp)
/* 04ECD8 8004F128 240602E0 */  addiu       $a2, $zero, 0x2e0
/* 04ECDC 8004F12C 46080283 */  div.s       $f10, $f0, $f8
/* 04ECE0 8004F130 460E5402 */  mul.s       $f16, $f10, $f14
/* 04ECE4 8004F134 4600848D */  trunc.w.s   $f18, $f16
/* 04ECE8 8004F138 440C9000 */  mfc1        $t4, $f18
/* 04ECEC 8004F13C 00000000 */  nop
/* 04ECF0 8004F140 448C3000 */  mtc1        $t4, $f6
/* 04ECF4 8004F144 00000000 */  nop
/* 04ECF8 8004F148 46803220 */  cvt.s.w     $f8, $f6
/* 04ECFC 8004F14C 460E4283 */  div.s       $f10, $f8, $f14
/* 04ED00 8004F150 448D4000 */  mtc1        $t5, $f8
/* 04ED04 8004F154 46005421 */  cvt.d.s     $f16, $f10
/* 04ED08 8004F158 468042A0 */  cvt.s.w     $f10, $f8
/* 04ED0C 8004F15C 46302481 */  sub.d       $f18, $f4, $f16
/* 04ED10 8004F160 462090A0 */  cvt.s.d     $f2, $f18
/* 04ED14 8004F164 460A1102 */  mul.s       $f4, $f2, $f10
/* 04ED18 8004F168 E7A2004C */  swc1        $f2, 0x4c($sp)
/* 04ED1C 8004F16C 8E020024 */  lw          $v0, 0x24($s0)
/* 04ED20 8004F170 C4460020 */  lwc1        $f6, 0x20($v0)
/* 04ED24 8004F174 46043300 */  add.s       $f12, $f6, $f4
/* 04ED28 8004F178 4600640D */  trunc.w.s   $f16, $f12
/* 04ED2C 8004F17C 44088000 */  mfc1        $t0, $f16
/* 04ED30 8004F180 00000000 */  nop
/* 04ED34 8004F184 44889000 */  mtc1        $t0, $f18
/* 04ED38 8004F188 00000000 */  nop
/* 04ED3C 8004F18C 46809220 */  cvt.s.w     $f8, $f18
/* 04ED40 8004F190 46086281 */  sub.s       $f10, $f12, $f8
/* 04ED44 8004F194 E44A0020 */  swc1        $f10, 0x20($v0)
/* 04ED48 8004F198 8E180018 */  lw          $t8, 0x18($s0)
/* 04ED4C 8004F19C 8E0F0004 */  lw          $t7, 0x4($s0)
/* 04ED50 8004F1A0 8C8C0018 */  lw          $t4, 0x18($a0)
/* 04ED54 8004F1A4 8FAE0074 */  lw          $t6, 0x74($sp)
/* 04ED58 8004F1A8 01F8C823 */  subu        $t9, $t7, $t8
/* 04ED5C 8004F1AC 00195023 */  subu        $t2, $zero, $t9
/* 04ED60 8004F1B0 000A5840 */  sll         $t3, $t2, 1
/* 04ED64 8004F1B4 018B8821 */  addu        $s1, $t4, $t3
/* 04ED68 8004F1B8 32230007 */  andi        $v1, $s1, 0x7
/* 04ED6C 8004F1BC 00036843 */  sra         $t5, $v1, 1
/* 04ED70 8004F1C0 000D4840 */  sll         $t1, $t5, 1
/* 04ED74 8004F1C4 02292823 */  subu        $a1, $s1, $t1
/* 04ED78 8004F1C8 AFA9002C */  sw          $t1, 0x2c($sp)
/* 04ED7C 8004F1CC 01A01825 */  move        $v1, $t5
/* 04ED80 8004F1D0 010D3821 */  addu        $a3, $t0, $t5
/* 04ED84 8004F1D4 AFA80030 */  sw          $t0, 0x30($sp)
/* 04ED88 8004F1D8 0C013CB3 */  jal         func_8004F2CC
/* 04ED8C 8004F1DC AFAE0010 */   sw         $t6, 0x10($sp)
/* 04ED90 8004F1E0 8E0F0024 */  lw          $t7, 0x24($s0)
/* 04ED94 8004F1E4 24510008 */  addiu       $s1, $v0, 0x8
/* 04ED98 8004F1E8 8DE40014 */  lw          $a0, 0x14($t7)
/* 04ED9C 8004F1EC 0C0143B0 */  jal         osVirtualToPhysical
/* 04EDA0 8004F1F0 AFA20034 */   sw         $v0, 0x34($sp)
/* 04EDA4 8004F1F4 3C0100FF */  lui         $at, 0xff
/* 04EDA8 8004F1F8 3421FFFF */  ori         $at, $at, 0xffff
/* 04EDAC 8004F1FC 0041C024 */  and         $t8, $v0, $at
/* 04EDB0 8004F200 8FA30034 */  lw          $v1, 0x34($sp)
/* 04EDB4 8004F204 3C010500 */  lui         $at, 0x500
/* 04EDB8 8004F208 0301C825 */  or          $t9, $t8, $at
/* 04EDBC 8004F20C 8FA80030 */  lw          $t0, 0x30($sp)
/* 04EDC0 8004F210 3C014700 */  lui         $at, 0x4700
/* 04EDC4 8004F214 AC790000 */  sw          $t9, 0x0($v1)
/* 04EDC8 8004F218 C7A6004C */  lwc1        $f6, 0x4c($sp)
/* 04EDCC 8004F21C 44812000 */  mtc1        $at, $f4
/* 04EDD0 8004F220 8E0E0024 */  lw          $t6, 0x24($s0)
/* 04EDD4 8004F224 46043402 */  mul.s       $f16, $f6, $f4
/* 04EDD8 8004F228 8DD80024 */  lw          $t8, 0x24($t6)
/* 04EDDC 8004F22C 0018CF80 */  sll         $t9, $t8, 30
/* 04EDE0 8004F230 4600848D */  trunc.w.s   $f18, $f16
/* 04EDE4 8004F234 440C9000 */  mfc1        $t4, $f18
/* 04EDE8 8004F238 00000000 */  nop
/* 04EDEC 8004F23C 318BFFFF */  andi        $t3, $t4, 0xffff
/* 04EDF0 8004F240 8FAC002C */  lw          $t4, 0x2c($sp)
/* 04EDF4 8004F244 000B6B80 */  sll         $t5, $t3, 14
/* 04EDF8 8004F248 032D5025 */  or          $t2, $t9, $t5
/* 04EDFC 8004F24C 8FB90070 */  lw          $t9, 0x70($sp)
/* 04EE00 8004F250 258B02E0 */  addiu       $t3, $t4, 0x2e0
/* 04EE04 8004F254 316E0FFF */  andi        $t6, $t3, 0xfff
/* 04EE08 8004F258 000E7880 */  sll         $t7, $t6, 2
/* 04EE0C 8004F25C 00195A03 */  sra         $t3, $t9, 8
/* 04EE10 8004F260 316E0003 */  andi        $t6, $t3, 0x3
/* 04EE14 8004F264 014FC025 */  or          $t8, $t2, $t7
/* 04EE18 8004F268 030E5025 */  or          $t2, $t8, $t6
/* 04EE1C 8004F26C AC6A0004 */  sw          $t2, 0x4($v1)
/* 04EE20 8004F270 8E0F0024 */  lw          $t7, 0x24($s0)
/* 04EE24 8004F274 ADE00024 */  sw          $zero, 0x24($t7)
/* 04EE28 8004F278 8E190018 */  lw          $t9, 0x18($s0)
/* 04EE2C 8004F27C 03286821 */  addu        $t5, $t9, $t0
/* 04EE30 8004F280 25ACFF48 */  addiu       $t4, $t5, -0xb8
/* 04EE34 8004F284 1000000B */  b           .L8004F2B4
/* 04EE38 8004F288 AE0C0018 */   sw         $t4, 0x18($s0)
.L8004F28C:
/* 04EE3C 8004F28C 8E0E0004 */  lw          $t6, 0x4($s0)
/* 04EE40 8004F290 8C980018 */  lw          $t8, 0x18($a0)
/* 04EE44 8004F294 8FB90074 */  lw          $t9, 0x74($sp)
/* 04EE48 8004F298 000E5023 */  subu        $t2, $zero, $t6
/* 04EE4C 8004F29C 000A7840 */  sll         $t7, $t2, 1
/* 04EE50 8004F2A0 240700B8 */  addiu       $a3, $zero, 0xb8
/* 04EE54 8004F2A4 030F2821 */  addu        $a1, $t8, $t7
/* 04EE58 8004F2A8 0C013CB3 */  jal         func_8004F2CC
/* 04EE5C 8004F2AC AFB90010 */   sw         $t9, 0x10($sp)
/* 04EE60 8004F2B0 00408825 */  move        $s1, $v0
.L8004F2B4:
/* 04EE64 8004F2B4 8FBF0024 */  lw          $ra, 0x24($sp)
/* 04EE68 8004F2B8 02201025 */  move        $v0, $s1
/* 04EE6C 8004F2BC 8FB10020 */  lw          $s1, 0x20($sp)
/* 04EE70 8004F2C0 8FB0001C */  lw          $s0, 0x1c($sp)
/* 04EE74 8004F2C4 03E00008 */  jr          $ra
/* 04EE78 8004F2C8 27BD0068 */   addiu      $sp, $sp, 0x68

glabel func_8004F2CC # 3
/* 04EE7C 8004F2CC 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04EE80 8004F2D0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04EE84 8004F2D4 AFB00018 */  sw          $s0, 0x18($sp)
/* 04EE88 8004F2D8 AFA40048 */  sw          $a0, 0x48($sp)
/* 04EE8C 8004F2DC AFA60050 */  sw          $a2, 0x50($sp)
/* 04EE90 8004F2E0 8C88001C */  lw          $t0, 0x1c($a0)
/* 04EE94 8004F2E4 8C820014 */  lw          $v0, 0x14($a0)
/* 04EE98 8004F2E8 8FA90058 */  lw          $t1, 0x58($sp)
/* 04EE9C 8004F2EC 00087840 */  sll         $t7, $t0, 1
/* 04EEA0 8004F2F0 00A2082B */  sltu        $at, $a1, $v0
/* 04EEA4 8004F2F4 10200002 */  beq         $at, $zero, .L8004F300
/* 04EEA8 8004F2F8 004F1821 */   addu       $v1, $v0, $t7
/* 04EEAC 8004F2FC 00AF2821 */  addu        $a1, $a1, $t7
.L8004F300:
/* 04EEB0 8004F300 00071040 */  sll         $v0, $a3, 1
/* 04EEB4 8004F304 00453021 */  addu        $a2, $v0, $a1
/* 04EEB8 8004F308 0066082B */  sltu        $at, $v1, $a2
/* 04EEBC 8004F30C 1020002E */  beq         $at, $zero, .L8004F3C8
/* 04EEC0 8004F310 25300008 */   addiu      $s0, $t1, 0x8
/* 04EEC4 8004F314 00654023 */  subu        $t0, $v1, $a1
/* 04EEC8 8004F318 0008C043 */  sra         $t8, $t0, 1
/* 04EECC 8004F31C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 04EED0 8004F320 0018C840 */  sll         $t9, $t8, 1
/* 04EED4 8004F324 332A0FFF */  andi        $t2, $t9, 0xfff
/* 04EED8 8004F328 8FA90058 */  lw          $t1, 0x58($sp)
/* 04EEDC 8004F32C 000A5B00 */  sll         $t3, $t2, 12
/* 04EEE0 8004F330 3C010400 */  lui         $at, 0x400
/* 04EEE4 8004F334 01616025 */  or          $t4, $t3, $at
/* 04EEE8 8004F338 31AE0FFF */  andi        $t6, $t5, 0xfff
/* 04EEEC 8004F33C 018E7825 */  or          $t7, $t4, $t6
/* 04EEF0 8004F340 AD2F0000 */  sw          $t7, 0x0($t1)
/* 04EEF4 8004F344 AFB90024 */  sw          $t9, 0x24($sp)
/* 04EEF8 8004F348 AFA60020 */  sw          $a2, 0x20($sp)
/* 04EEFC 8004F34C AFA30034 */  sw          $v1, 0x34($sp)
/* 04EF00 8004F350 00A02025 */  move        $a0, $a1
/* 04EF04 8004F354 AFA90030 */  sw          $t1, 0x30($sp)
/* 04EF08 8004F358 0C0143B0 */  jal         osVirtualToPhysical
/* 04EF0C 8004F35C 25300008 */   addiu      $s0, $t1, 0x8
/* 04EF10 8004F360 8FA30034 */  lw          $v1, 0x34($sp)
/* 04EF14 8004F364 8FA60020 */  lw          $a2, 0x20($sp)
/* 04EF18 8004F368 8FA70030 */  lw          $a3, 0x30($sp)
/* 04EF1C 8004F36C 8FA80024 */  lw          $t0, 0x24($sp)
/* 04EF20 8004F370 00C3C023 */  subu        $t8, $a2, $v1
/* 04EF24 8004F374 ACE20004 */  sw          $v0, 0x4($a3)
/* 04EF28 8004F378 8FAE0050 */  lw          $t6, 0x50($sp)
/* 04EF2C 8004F37C 0018C843 */  sra         $t9, $t8, 1
/* 04EF30 8004F380 00195040 */  sll         $t2, $t9, 1
/* 04EF34 8004F384 314B0FFF */  andi        $t3, $t2, 0xfff
/* 04EF38 8004F388 000B6B00 */  sll         $t5, $t3, 12
/* 04EF3C 8004F38C 3C010400 */  lui         $at, 0x400
/* 04EF40 8004F390 01C87821 */  addu        $t7, $t6, $t0
/* 04EF44 8004F394 31F80FFF */  andi        $t8, $t7, 0xfff
/* 04EF48 8004F398 01A16025 */  or          $t4, $t5, $at
/* 04EF4C 8004F39C 0198C825 */  or          $t9, $t4, $t8
/* 04EF50 8004F3A0 02002825 */  move        $a1, $s0
/* 04EF54 8004F3A4 ACB90000 */  sw          $t9, 0x0($a1)
/* 04EF58 8004F3A8 8FAA0048 */  lw          $t2, 0x48($sp)
/* 04EF5C 8004F3AC 26100008 */  addiu       $s0, $s0, 0x8
/* 04EF60 8004F3B0 8D440014 */  lw          $a0, 0x14($t2)
/* 04EF64 8004F3B4 0C0143B0 */  jal         osVirtualToPhysical
/* 04EF68 8004F3B8 AFA5002C */   sw         $a1, 0x2c($sp)
/* 04EF6C 8004F3BC 8FA5002C */  lw          $a1, 0x2c($sp)
/* 04EF70 8004F3C0 1000000E */  b           .L8004F3FC
/* 04EF74 8004F3C4 ACA20004 */   sw         $v0, 0x4($a1)
.L8004F3C8:
/* 04EF78 8004F3C8 8FAF0050 */  lw          $t7, 0x50($sp)
/* 04EF7C 8004F3CC 304B0FFF */  andi        $t3, $v0, 0xfff
/* 04EF80 8004F3D0 000B6B00 */  sll         $t5, $t3, 12
/* 04EF84 8004F3D4 3C010400 */  lui         $at, 0x400
/* 04EF88 8004F3D8 01A17025 */  or          $t6, $t5, $at
/* 04EF8C 8004F3DC 31EC0FFF */  andi        $t4, $t7, 0xfff
/* 04EF90 8004F3E0 01CCC025 */  or          $t8, $t6, $t4
/* 04EF94 8004F3E4 AD380000 */  sw          $t8, 0x0($t1)
/* 04EF98 8004F3E8 AFA90028 */  sw          $t1, 0x28($sp)
/* 04EF9C 8004F3EC 0C0143B0 */  jal         osVirtualToPhysical
/* 04EFA0 8004F3F0 00A02025 */   move       $a0, $a1
/* 04EFA4 8004F3F4 8FA30028 */  lw          $v1, 0x28($sp)
/* 04EFA8 8004F3F8 AC620004 */  sw          $v0, 0x4($v1)
.L8004F3FC:
/* 04EFAC 8004F3FC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04EFB0 8004F400 02001025 */  move        $v0, $s0
/* 04EFB4 8004F404 8FB00018 */  lw          $s0, 0x18($sp)
/* 04EFB8 8004F408 03E00008 */  jr          $ra
/* 04EFBC 8004F40C 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004F410 # 4
/* 04EFC0 8004F410 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 04EFC4 8004F414 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04EFC8 8004F418 AFB00018 */  sw          $s0, 0x18($sp)
/* 04EFCC 8004F41C AFA40048 */  sw          $a0, 0x48($sp)
/* 04EFD0 8004F420 AFA60050 */  sw          $a2, 0x50($sp)
/* 04EFD4 8004F424 8C88001C */  lw          $t0, 0x1c($a0)
/* 04EFD8 8004F428 8C820014 */  lw          $v0, 0x14($a0)
/* 04EFDC 8004F42C 24F00008 */  addiu       $s0, $a3, 0x8
/* 04EFE0 8004F430 00087840 */  sll         $t7, $t0, 1
/* 04EFE4 8004F434 00A2082B */  sltu        $at, $a1, $v0
/* 04EFE8 8004F438 10200002 */  beq         $at, $zero, .L8004F444
/* 04EFEC 8004F43C 004F1821 */   addu       $v1, $v0, $t7
/* 04EFF0 8004F440 00AF2821 */  addu        $a1, $a1, $t7
.L8004F444:
/* 04EFF4 8004F444 24A60170 */  addiu       $a2, $a1, 0x170
/* 04EFF8 8004F448 0066082B */  sltu        $at, $v1, $a2
/* 04EFFC 8004F44C 1020002D */  beq         $at, $zero, .L8004F504
/* 04F000 8004F450 8FAB0050 */   lw         $t3, 0x50($sp)
/* 04F004 8004F454 00654823 */  subu        $t1, $v1, $a1
/* 04F008 8004F458 0009C043 */  sra         $t8, $t1, 1
/* 04F00C 8004F45C 8FAD0050 */  lw          $t5, 0x50($sp)
/* 04F010 8004F460 0018C840 */  sll         $t9, $t8, 1
/* 04F014 8004F464 332A0FFF */  andi        $t2, $t9, 0xfff
/* 04F018 8004F468 000A5B00 */  sll         $t3, $t2, 12
/* 04F01C 8004F46C 3C010600 */  lui         $at, 0x600
/* 04F020 8004F470 01616025 */  or          $t4, $t3, $at
/* 04F024 8004F474 31AE0FFF */  andi        $t6, $t5, 0xfff
/* 04F028 8004F478 018E7825 */  or          $t7, $t4, $t6
/* 04F02C 8004F47C ACEF0000 */  sw          $t7, 0x0($a3)
/* 04F030 8004F480 AFB90020 */  sw          $t9, 0x20($sp)
/* 04F034 8004F484 AFA70030 */  sw          $a3, 0x30($sp)
/* 04F038 8004F488 AFA60024 */  sw          $a2, 0x24($sp)
/* 04F03C 8004F48C AFA30034 */  sw          $v1, 0x34($sp)
/* 04F040 8004F490 24F00008 */  addiu       $s0, $a3, 0x8
/* 04F044 8004F494 0C0143B0 */  jal         osVirtualToPhysical
/* 04F048 8004F498 00A02025 */   move       $a0, $a1
/* 04F04C 8004F49C 8FA30034 */  lw          $v1, 0x34($sp)
/* 04F050 8004F4A0 8FA60024 */  lw          $a2, 0x24($sp)
/* 04F054 8004F4A4 8FA80030 */  lw          $t0, 0x30($sp)
/* 04F058 8004F4A8 8FA90020 */  lw          $t1, 0x20($sp)
/* 04F05C 8004F4AC 00C3C023 */  subu        $t8, $a2, $v1
/* 04F060 8004F4B0 AD020004 */  sw          $v0, 0x4($t0)
/* 04F064 8004F4B4 8FAE0050 */  lw          $t6, 0x50($sp)
/* 04F068 8004F4B8 0018C843 */  sra         $t9, $t8, 1
/* 04F06C 8004F4BC 00195040 */  sll         $t2, $t9, 1
/* 04F070 8004F4C0 314B0FFF */  andi        $t3, $t2, 0xfff
/* 04F074 8004F4C4 000B6B00 */  sll         $t5, $t3, 12
/* 04F078 8004F4C8 3C010600 */  lui         $at, 0x600
/* 04F07C 8004F4CC 01C97821 */  addu        $t7, $t6, $t1
/* 04F080 8004F4D0 31F80FFF */  andi        $t8, $t7, 0xfff
/* 04F084 8004F4D4 01A16025 */  or          $t4, $t5, $at
/* 04F088 8004F4D8 0198C825 */  or          $t9, $t4, $t8
/* 04F08C 8004F4DC 02002825 */  move        $a1, $s0
/* 04F090 8004F4E0 ACB90000 */  sw          $t9, 0x0($a1)
/* 04F094 8004F4E4 8FAA0048 */  lw          $t2, 0x48($sp)
/* 04F098 8004F4E8 26100008 */  addiu       $s0, $s0, 0x8
/* 04F09C 8004F4EC 8D440014 */  lw          $a0, 0x14($t2)
/* 04F0A0 8004F4F0 0C0143B0 */  jal         osVirtualToPhysical
/* 04F0A4 8004F4F4 AFA5002C */   sw         $a1, 0x2c($sp)
/* 04F0A8 8004F4F8 8FA5002C */  lw          $a1, 0x2c($sp)
/* 04F0AC 8004F4FC 1000000A */  b           .L8004F528
/* 04F0B0 8004F500 ACA20004 */   sw         $v0, 0x4($a1)
.L8004F504:
/* 04F0B4 8004F504 316D0FFF */  andi        $t5, $t3, 0xfff
/* 04F0B8 8004F508 3C010617 */  lui         $at, 0x617
/* 04F0BC 8004F50C 01A17025 */  or          $t6, $t5, $at
/* 04F0C0 8004F510 ACEE0000 */  sw          $t6, 0x0($a3)
/* 04F0C4 8004F514 AFA70028 */  sw          $a3, 0x28($sp)
/* 04F0C8 8004F518 0C0143B0 */  jal         osVirtualToPhysical
/* 04F0CC 8004F51C 00A02025 */   move       $a0, $a1
/* 04F0D0 8004F520 8FA30028 */  lw          $v1, 0x28($sp)
/* 04F0D4 8004F524 AC620004 */  sw          $v0, 0x4($v1)
.L8004F528:
/* 04F0D8 8004F528 8FBF001C */  lw          $ra, 0x1c($sp)
/* 04F0DC 8004F52C 02001025 */  move        $v0, $s0
/* 04F0E0 8004F530 8FB00018 */  lw          $s0, 0x18($sp)
/* 04F0E4 8004F534 03E00008 */  jr          $ra
/* 04F0E8 8004F538 27BD0048 */   addiu      $sp, $sp, 0x48

glabel func_8004F53C # 5
/* 04F0EC 8004F53C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 04F0F0 8004F540 3C0E0B00 */  lui         $t6, 0xb00
/* 04F0F4 8004F544 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04F0F8 8004F548 AFA5002C */  sw          $a1, 0x2c($sp)
/* 04F0FC 8004F54C 35CE0020 */  ori         $t6, $t6, 0x20
/* 04F100 8004F550 00803825 */  move        $a3, $a0
/* 04F104 8004F554 ACCE0000 */  sw          $t6, 0x0($a2)
/* 04F108 8004F558 AFA70028 */  sw          $a3, 0x28($sp)
/* 04F10C 8004F55C AFA60030 */  sw          $a2, 0x30($sp)
/* 04F110 8004F560 0C0143B0 */  jal         osVirtualToPhysical
/* 04F114 8004F564 24840008 */   addiu      $a0, $a0, 0x8
/* 04F118 8004F568 8FA60030 */  lw          $a2, 0x30($sp)
/* 04F11C 8004F56C 8FA70028 */  lw          $a3, 0x28($sp)
/* 04F120 8004F570 3C010E00 */  lui         $at, 0xe00
/* 04F124 8004F574 24C30008 */  addiu       $v1, $a2, 0x8
/* 04F128 8004F578 246F0008 */  addiu       $t7, $v1, 0x8
/* 04F12C 8004F57C ACC20004 */  sw          $v0, 0x4($a2)
/* 04F130 8004F580 AFAF0024 */  sw          $t7, 0x24($sp)
/* 04F134 8004F584 8CF8002C */  lw          $t8, 0x2c($a3)
/* 04F138 8004F588 84EA0002 */  lh          $t2, 0x2($a3)
/* 04F13C 8004F58C 331900FF */  andi        $t9, $t8, 0xff
/* 04F140 8004F590 00194400 */  sll         $t0, $t9, 16
/* 04F144 8004F594 01014825 */  or          $t1, $t0, $at
/* 04F148 8004F598 314BFFFF */  andi        $t3, $t2, 0xffff
/* 04F14C 8004F59C 012B6025 */  or          $t4, $t1, $t3
/* 04F150 8004F5A0 AC6C0000 */  sw          $t4, 0x0($v1)
/* 04F154 8004F5A4 8CE40028 */  lw          $a0, 0x28($a3)
/* 04F158 8004F5A8 0C0143B0 */  jal         osVirtualToPhysical
/* 04F15C 8004F5AC AFA30018 */   sw         $v1, 0x18($sp)
/* 04F160 8004F5B0 8FAE002C */  lw          $t6, 0x2c($sp)
/* 04F164 8004F5B4 3C0100FF */  lui         $at, 0xff
/* 04F168 8004F5B8 8FA50018 */  lw          $a1, 0x18($sp)
/* 04F16C 8004F5BC 3421FFFF */  ori         $at, $at, 0xffff
/* 04F170 8004F5C0 000E4203 */  sra         $t0, $t6, 8
/* 04F174 8004F5C4 8FA70028 */  lw          $a3, 0x28($sp)
/* 04F178 8004F5C8 00085600 */  sll         $t2, $t0, 24
/* 04F17C 8004F5CC 00416824 */  and         $t5, $v0, $at
/* 04F180 8004F5D0 01AA4825 */  or          $t1, $t5, $t2
/* 04F184 8004F5D4 ACA90004 */  sw          $t1, 0x4($a1)
/* 04F188 8004F5D8 ACE0002C */  sw          $zero, 0x2c($a3)
/* 04F18C 8004F5DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04F190 8004F5E0 8FA20024 */  lw          $v0, 0x24($sp)
/* 04F194 8004F5E4 27BD0028 */  addiu       $sp, $sp, 0x28
/* 04F198 8004F5E8 03E00008 */  jr          $ra
/* 04F19C 8004F5EC 00000000 */   nop

glabel func_8004F5F0 # 6
/* 04F1A0 8004F5F0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 04F1A4 8004F5F4 3C0E800A */  lui         $t6, %hi(D_8009D9C4)
/* 04F1A8 8004F5F8 8DCED9C4 */  lw          $t6, %lo(D_8009D9C4)($t6)
/* 04F1AC 8004F5FC AFBF002C */  sw          $ra, 0x2c($sp)
/* 04F1B0 8004F600 AFB40028 */  sw          $s4, 0x28($sp)
/* 04F1B4 8004F604 AFB30024 */  sw          $s3, 0x24($sp)
/* 04F1B8 8004F608 AFB20020 */  sw          $s2, 0x20($sp)
/* 04F1BC 8004F60C AFB1001C */  sw          $s1, 0x1c($sp)
/* 04F1C0 8004F610 AFB00018 */  sw          $s0, 0x18($sp)
/* 04F1C4 8004F614 8DD30040 */  lw          $s3, 0x40($t6)
/* 04F1C8 8004F618 3C0F0200 */  lui         $t7, 0x200
/* 04F1CC 8004F61C 35EF07C0 */  ori         $t7, $t7, 0x7c0
/* 04F1D0 8004F620 8E62001C */  lw          $v0, 0x1c($s3)
/* 04F1D4 8004F624 241802E0 */  addiu       $t8, $zero, 0x2e0
/* 04F1D8 8004F628 ACB80004 */  sw          $t8, 0x4($a1)
/* 04F1DC 8004F62C ACAF0000 */  sw          $t7, 0x0($a1)
/* 04F1E0 8004F630 8E790014 */  lw          $t9, 0x14($s3)
/* 04F1E4 8004F634 0080A025 */  move        $s4, $a0
/* 04F1E8 8004F638 24B20008 */  addiu       $s2, $a1, 0x8
/* 04F1EC 8004F63C 1B20000C */  blez        $t9, .L8004F670
/* 04F1F0 8004F640 00008025 */   move       $s0, $zero
/* 04F1F4 8004F644 00408825 */  move        $s1, $v0
.L8004F648:
/* 04F1F8 8004F648 8E240000 */  lw          $a0, 0x0($s1)
/* 04F1FC 8004F64C 02802825 */  move        $a1, $s4
/* 04F200 8004F650 0C01381C */  jal         func_8004E070
/* 04F204 8004F654 02403025 */   move       $a2, $s2
/* 04F208 8004F658 8E680014 */  lw          $t0, 0x14($s3)
/* 04F20C 8004F65C 26100001 */  addiu       $s0, $s0, 0x1
/* 04F210 8004F660 26310004 */  addiu       $s1, $s1, 0x4
/* 04F214 8004F664 0208082A */  slt         $at, $s0, $t0
/* 04F218 8004F668 1420FFF7 */  bne         $at, $zero, .L8004F648
/* 04F21C 8004F66C 00409025 */   move       $s2, $v0
.L8004F670:
/* 04F220 8004F670 8FBF002C */  lw          $ra, 0x2c($sp)
/* 04F224 8004F674 02401025 */  move        $v0, $s2
/* 04F228 8004F678 8FB20020 */  lw          $s2, 0x20($sp)
/* 04F22C 8004F67C 8FB00018 */  lw          $s0, 0x18($sp)
/* 04F230 8004F680 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04F234 8004F684 8FB30024 */  lw          $s3, 0x24($sp)
/* 04F238 8004F688 8FB40028 */  lw          $s4, 0x28($sp)
/* 04F23C 8004F68C 03E00008 */  jr          $ra
/* 04F240 8004F690 27BD0030 */   addiu      $sp, $sp, 0x30
/* 04F244 8004F694 00000000 */  nop
/* 04F248 8004F698 00000000 */  nop
/* 04F24C 8004F69C 00000000 */  nop
