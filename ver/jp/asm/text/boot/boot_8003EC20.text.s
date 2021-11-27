.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003EC20 # 0
/* 03E7D0 8003EC20 AFA50004 */  sw          $a1, 0x4($sp)
/* 03E7D4 8003EC24 8CC30000 */  lw          $v1, 0x0($a2)
/* 03E7D8 8003EC28 24020001 */  addiu       $v0, $zero, 0x1
/* 03E7DC 8003EC2C 1060000C */  beqz        $v1, .L8003EC60
/* 03E7E0 8003EC30 00000000 */   nop
/* 03E7E4 8003EC34 8CCE0004 */  lw          $t6, 0x4($a2)
.L8003EC38:
/* 03E7E8 8003EC38 00647824 */  and         $t7, $v1, $a0
/* 03E7EC 8003EC3C 55CF0005 */  bnel        $t6, $t7, .L8003EC54
/* 03E7F0 8003EC40 8CC3000C */   lw         $v1, 0xc($a2)
/* 03E7F4 8003EC44 50400003 */  beql        $v0, $zero, .L8003EC54
/* 03E7F8 8003EC48 8CC3000C */   lw         $v1, 0xc($a2)
/* 03E7FC 8003EC4C 00001025 */  move        $v0, $zero
/* 03E800 8003EC50 8CC3000C */  lw          $v1, 0xc($a2)
.L8003EC54:
/* 03E804 8003EC54 24C6000C */  addiu       $a2, $a2, 0xc
/* 03E808 8003EC58 5460FFF7 */  bnel        $v1, $zero, .L8003EC38
/* 03E80C 8003EC5C 8CCE0004 */   lw         $t6, 0x4($a2)
.L8003EC60:
/* 03E810 8003EC60 03E00008 */  jr          $ra
/* 03E814 8003EC64 00000000 */   nop

glabel func_8003EC68 # 1
/* 03E818 8003EC68 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03E81C 8003EC6C AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E820 8003EC70 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03E824 8003EC74 AFA40018 */  sw          $a0, 0x18($sp)
/* 03E828 8003EC78 0C012488 */  jal         func_80049220
/* 03E82C 8003EC7C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 03E830 8003EC80 54400008 */  bnel        $v0, $zero, .L8003ECA4
/* 03E834 8003EC84 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03E838 8003EC88 0C0124A6 */  jal         func_80049298
/* 03E83C 8003EC8C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 03E840 8003EC90 54400004 */  bnel        $v0, $zero, .L8003ECA4
/* 03E844 8003EC94 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03E848 8003EC98 0C0124C4 */  jal         func_80049310
/* 03E84C 8003EC9C C7AC001C */   lwc1       $f12, 0x1c($sp)
/* 03E850 8003ECA0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8003ECA4:
/* 03E854 8003ECA4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03E858 8003ECA8 03E00008 */  jr          $ra
/* 03E85C 8003ECAC 00000000 */   nop

glabel func_8003ECB0 # 2
/* 03E860 8003ECB0 44876000 */  mtc1        $a3, $f12
/* 03E864 8003ECB4 44866800 */  mtc1        $a2, $f13
/* 03E868 8003ECB8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03E86C 8003ECBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 03E870 8003ECC0 AFA40018 */  sw          $a0, 0x18($sp)
/* 03E874 8003ECC4 0C012496 */  jal         func_80049258
/* 03E878 8003ECC8 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 03E87C 8003ECCC 14400007 */  bnez        $v0, .L8003ECEC
/* 03E880 8003ECD0 D7AC0020 */   ldc1       $f12, 0x20($sp)
/* 03E884 8003ECD4 0C0124B4 */  jal         func_800492D0
/* 03E888 8003ECD8 F7AC0020 */   sdc1       $f12, 0x20($sp)
/* 03E88C 8003ECDC 14400003 */  bnez        $v0, .L8003ECEC
/* 03E890 8003ECE0 D7AC0020 */   ldc1       $f12, 0x20($sp)
/* 03E894 8003ECE4 0C0124D2 */  jal         func_80049348
/* 03E898 8003ECE8 00000000 */   nop
.L8003ECEC:
/* 03E89C 8003ECEC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03E8A0 8003ECF0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03E8A4 8003ECF4 03E00008 */  jr          $ra
/* 03E8A8 8003ECF8 00000000 */   nop

glabel func_8003ECFC # 3
/* 03E8AC 8003ECFC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 03E8B0 8003ED00 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03E8B4 8003ED04 AFB00018 */  sw          $s0, 0x18($sp)
/* 03E8B8 8003ED08 AFA40038 */  sw          $a0, 0x38($sp)
/* 03E8BC 8003ED0C 3C05800B */  lui         $a1, %hi(D_800AC514)
/* 03E8C0 8003ED10 3C06800A */  lui         $a2, %hi(D_800A2A20)
/* 03E8C4 8003ED14 24C62A20 */  addiu       $a2, $a2, %lo(D_800A2A20)
/* 03E8C8 8003ED18 24A5C514 */  addiu       $a1, $a1, %lo(D_800AC514)
/* 03E8CC 8003ED1C 0C00FB08 */  jal         func_8003EC20
/* 03E8D0 8003ED20 8C840120 */   lw         $a0, 0x120($a0)
/* 03E8D4 8003ED24 8FB00038 */  lw          $s0, 0x38($sp)
/* 03E8D8 8003ED28 3C05800B */  lui         $a1, %hi(D_800AC51C)
/* 03E8DC 8003ED2C 3C06800A */  lui         $a2, %hi(D_800A2B70)
/* 03E8E0 8003ED30 24C62B70 */  addiu       $a2, $a2, %lo(D_800A2B70)
/* 03E8E4 8003ED34 24A5C51C */  addiu       $a1, $a1, %lo(D_800AC51C)
/* 03E8E8 8003ED38 26100020 */  addiu       $s0, $s0, 0x20
/* 03E8EC 8003ED3C 0C00FB08 */  jal         func_8003EC20
/* 03E8F0 8003ED40 8E0400F8 */   lw         $a0, 0xf8($s0)
/* 03E8F4 8003ED44 3C05800B */  lui         $a1, %hi(D_800AC6E4)
/* 03E8F8 8003ED48 3C06800A */  lui         $a2, %hi(D_800A2CE4)
/* 03E8FC 8003ED4C 24C62CE4 */  addiu       $a2, $a2, %lo(D_800A2CE4)
/* 03E900 8003ED50 24A5C6E4 */  addiu       $a1, $a1, %lo(D_800AC6E4)
/* 03E904 8003ED54 0C00FB08 */  jal         func_8003EC20
/* 03E908 8003ED58 8E04010C */   lw         $a0, 0x10c($s0)
/* 03E90C 8003ED5C 3C04800B */  lui         $a0, %hi(D_800AC6EC)
/* 03E910 8003ED60 2484C6EC */  addiu       $a0, $a0, %lo(D_800AC6EC)
/* 03E914 8003ED64 8E060110 */  lw          $a2, 0x110($s0)
/* 03E918 8003ED68 0C00FB2C */  jal         func_8003ECB0
/* 03E91C 8003ED6C 8E070114 */   lw         $a3, 0x114($s0)
/* 03E920 8003ED70 3C04800B */  lui         $a0, %hi(D_800AC6F4)
/* 03E924 8003ED74 2484C6F4 */  addiu       $a0, $a0, %lo(D_800AC6F4)
/* 03E928 8003ED78 8E060118 */  lw          $a2, 0x118($s0)
/* 03E92C 8003ED7C 0C00FB2C */  jal         func_8003ECB0
/* 03E930 8003ED80 8E07011C */   lw         $a3, 0x11c($s0)
/* 03E934 8003ED84 3C04800B */  lui         $a0, %hi(D_800AC6F8)
/* 03E938 8003ED88 2484C6F8 */  addiu       $a0, $a0, %lo(D_800AC6F8)
/* 03E93C 8003ED8C 8E060120 */  lw          $a2, 0x120($s0)
/* 03E940 8003ED90 0C00FB2C */  jal         func_8003ECB0
/* 03E944 8003ED94 8E070124 */   lw         $a3, 0x124($s0)
/* 03E948 8003ED98 3C04800B */  lui         $a0, %hi(D_800AC700)
/* 03E94C 8003ED9C 2484C700 */  addiu       $a0, $a0, %lo(D_800AC700)
/* 03E950 8003EDA0 8E060128 */  lw          $a2, 0x128($s0)
/* 03E954 8003EDA4 0C00FB2C */  jal         func_8003ECB0
/* 03E958 8003EDA8 8E07012C */   lw         $a3, 0x12c($s0)
/* 03E95C 8003EDAC 3C04800B */  lui         $a0, %hi(D_800AC704)
/* 03E960 8003EDB0 2484C704 */  addiu       $a0, $a0, %lo(D_800AC704)
/* 03E964 8003EDB4 8E060130 */  lw          $a2, 0x130($s0)
/* 03E968 8003EDB8 0C00FB2C */  jal         func_8003ECB0
/* 03E96C 8003EDBC 8E070134 */   lw         $a3, 0x134($s0)
/* 03E970 8003EDC0 3C04800B */  lui         $a0, %hi(D_800AC70C)
/* 03E974 8003EDC4 2484C70C */  addiu       $a0, $a0, %lo(D_800AC70C)
/* 03E978 8003EDC8 8E060138 */  lw          $a2, 0x138($s0)
/* 03E97C 8003EDCC 0C00FB2C */  jal         func_8003ECB0
/* 03E980 8003EDD0 8E07013C */   lw         $a3, 0x13c($s0)
/* 03E984 8003EDD4 3C04800B */  lui         $a0, %hi(D_800AC710)
/* 03E988 8003EDD8 2484C710 */  addiu       $a0, $a0, %lo(D_800AC710)
/* 03E98C 8003EDDC 8E060140 */  lw          $a2, 0x140($s0)
/* 03E990 8003EDE0 0C00FB2C */  jal         func_8003ECB0
/* 03E994 8003EDE4 8E070144 */   lw         $a3, 0x144($s0)
/* 03E998 8003EDE8 3C04800B */  lui         $a0, %hi(D_800AC718)
/* 03E99C 8003EDEC 2484C718 */  addiu       $a0, $a0, %lo(D_800AC718)
/* 03E9A0 8003EDF0 8E060148 */  lw          $a2, 0x148($s0)
/* 03E9A4 8003EDF4 0C00FB2C */  jal         func_8003ECB0
/* 03E9A8 8003EDF8 8E07014C */   lw         $a3, 0x14c($s0)
/* 03E9AC 8003EDFC 3C04800B */  lui         $a0, %hi(D_800AC71C)
/* 03E9B0 8003EE00 2484C71C */  addiu       $a0, $a0, %lo(D_800AC71C)
/* 03E9B4 8003EE04 8E060150 */  lw          $a2, 0x150($s0)
/* 03E9B8 8003EE08 0C00FB2C */  jal         func_8003ECB0
/* 03E9BC 8003EE0C 8E070154 */   lw         $a3, 0x154($s0)
/* 03E9C0 8003EE10 3C04800B */  lui         $a0, %hi(D_800AC724)
/* 03E9C4 8003EE14 2484C724 */  addiu       $a0, $a0, %lo(D_800AC724)
/* 03E9C8 8003EE18 8E060158 */  lw          $a2, 0x158($s0)
/* 03E9CC 8003EE1C 0C00FB2C */  jal         func_8003ECB0
/* 03E9D0 8003EE20 8E07015C */   lw         $a3, 0x15c($s0)
/* 03E9D4 8003EE24 3C04800B */  lui         $a0, %hi(D_800AC728)
/* 03E9D8 8003EE28 2484C728 */  addiu       $a0, $a0, %lo(D_800AC728)
/* 03E9DC 8003EE2C 8E060160 */  lw          $a2, 0x160($s0)
/* 03E9E0 8003EE30 0C00FB2C */  jal         func_8003ECB0
/* 03E9E4 8003EE34 8E070164 */   lw         $a3, 0x164($s0)
/* 03E9E8 8003EE38 3C04800B */  lui         $a0, %hi(D_800AC730)
/* 03E9EC 8003EE3C 2484C730 */  addiu       $a0, $a0, %lo(D_800AC730)
/* 03E9F0 8003EE40 8E060168 */  lw          $a2, 0x168($s0)
/* 03E9F4 8003EE44 0C00FB2C */  jal         func_8003ECB0
/* 03E9F8 8003EE48 8E07016C */   lw         $a3, 0x16c($s0)
/* 03E9FC 8003EE4C 3C04800B */  lui         $a0, %hi(D_800AC734)
/* 03EA00 8003EE50 2484C734 */  addiu       $a0, $a0, %lo(D_800AC734)
/* 03EA04 8003EE54 8E060170 */  lw          $a2, 0x170($s0)
/* 03EA08 8003EE58 0C00FB2C */  jal         func_8003ECB0
/* 03EA0C 8003EE5C 8E070174 */   lw         $a3, 0x174($s0)
/* 03EA10 8003EE60 3C04800B */  lui         $a0, %hi(D_800AC73C)
/* 03EA14 8003EE64 2484C73C */  addiu       $a0, $a0, %lo(D_800AC73C)
/* 03EA18 8003EE68 8E060178 */  lw          $a2, 0x178($s0)
/* 03EA1C 8003EE6C 0C00FB2C */  jal         func_8003ECB0
/* 03EA20 8003EE70 8E07017C */   lw         $a3, 0x17c($s0)
/* 03EA24 8003EE74 3C04800B */  lui         $a0, %hi(D_800AC740)
/* 03EA28 8003EE78 2484C740 */  addiu       $a0, $a0, %lo(D_800AC740)
/* 03EA2C 8003EE7C 8E060180 */  lw          $a2, 0x180($s0)
/* 03EA30 8003EE80 0C00FB2C */  jal         func_8003ECB0
/* 03EA34 8003EE84 8E070184 */   lw         $a3, 0x184($s0)
/* 03EA38 8003EE88 3C04800B */  lui         $a0, %hi(D_800AC748)
/* 03EA3C 8003EE8C 2484C748 */  addiu       $a0, $a0, %lo(D_800AC748)
/* 03EA40 8003EE90 8E060188 */  lw          $a2, 0x188($s0)
/* 03EA44 8003EE94 0C00FB2C */  jal         func_8003ECB0
/* 03EA48 8003EE98 8E07018C */   lw         $a3, 0x18c($s0)
/* 03EA4C 8003EE9C 3C04800B */  lui         $a0, %hi(D_800AC750)
/* 03EA50 8003EEA0 2484C750 */  addiu       $a0, $a0, %lo(D_800AC750)
/* 03EA54 8003EEA4 0C00FB1A */  jal         func_8003EC68
/* 03EA58 8003EEA8 8E050114 */   lw         $a1, 0x114($s0)
/* 03EA5C 8003EEAC 3C04800B */  lui         $a0, %hi(D_800AC758)
/* 03EA60 8003EEB0 2484C758 */  addiu       $a0, $a0, %lo(D_800AC758)
/* 03EA64 8003EEB4 0C00FB1A */  jal         func_8003EC68
/* 03EA68 8003EEB8 8E05011C */   lw         $a1, 0x11c($s0)
/* 03EA6C 8003EEBC 3C04800B */  lui         $a0, %hi(D_800AC75C)
/* 03EA70 8003EEC0 2484C75C */  addiu       $a0, $a0, %lo(D_800AC75C)
/* 03EA74 8003EEC4 0C00FB1A */  jal         func_8003EC68
/* 03EA78 8003EEC8 8E050124 */   lw         $a1, 0x124($s0)
/* 03EA7C 8003EECC 3C04800B */  lui         $a0, %hi(D_800AC760)
/* 03EA80 8003EED0 2484C760 */  addiu       $a0, $a0, %lo(D_800AC760)
/* 03EA84 8003EED4 0C00FB1A */  jal         func_8003EC68
/* 03EA88 8003EED8 8E05012C */   lw         $a1, 0x12c($s0)
/* 03EA8C 8003EEDC 3C04800B */  lui         $a0, %hi(D_800AC764)
/* 03EA90 8003EEE0 2484C764 */  addiu       $a0, $a0, %lo(D_800AC764)
/* 03EA94 8003EEE4 0C00FB1A */  jal         func_8003EC68
/* 03EA98 8003EEE8 8E050134 */   lw         $a1, 0x134($s0)
/* 03EA9C 8003EEEC 3C04800B */  lui         $a0, %hi(D_800AC76C)
/* 03EAA0 8003EEF0 2484C76C */  addiu       $a0, $a0, %lo(D_800AC76C)
/* 03EAA4 8003EEF4 0C00FB1A */  jal         func_8003EC68
/* 03EAA8 8003EEF8 8E05013C */   lw         $a1, 0x13c($s0)
/* 03EAAC 8003EEFC 3C04800B */  lui         $a0, %hi(D_800AC770)
/* 03EAB0 8003EF00 2484C770 */  addiu       $a0, $a0, %lo(D_800AC770)
/* 03EAB4 8003EF04 0C00FB1A */  jal         func_8003EC68
/* 03EAB8 8003EF08 8E050144 */   lw         $a1, 0x144($s0)
/* 03EABC 8003EF0C 3C04800B */  lui         $a0, %hi(D_800AC774)
/* 03EAC0 8003EF10 2484C774 */  addiu       $a0, $a0, %lo(D_800AC774)
/* 03EAC4 8003EF14 0C00FB1A */  jal         func_8003EC68
/* 03EAC8 8003EF18 8E05014C */   lw         $a1, 0x14c($s0)
/* 03EACC 8003EF1C 3C04800B */  lui         $a0, %hi(D_800AC778)
/* 03EAD0 8003EF20 2484C778 */  addiu       $a0, $a0, %lo(D_800AC778)
/* 03EAD4 8003EF24 0C00FB1A */  jal         func_8003EC68
/* 03EAD8 8003EF28 8E050154 */   lw         $a1, 0x154($s0)
/* 03EADC 8003EF2C 3C04800B */  lui         $a0, %hi(D_800AC780)
/* 03EAE0 8003EF30 2484C780 */  addiu       $a0, $a0, %lo(D_800AC780)
/* 03EAE4 8003EF34 0C00FB1A */  jal         func_8003EC68
/* 03EAE8 8003EF38 8E05015C */   lw         $a1, 0x15c($s0)
/* 03EAEC 8003EF3C 3C04800B */  lui         $a0, %hi(D_800AC784)
/* 03EAF0 8003EF40 2484C784 */  addiu       $a0, $a0, %lo(D_800AC784)
/* 03EAF4 8003EF44 0C00FB1A */  jal         func_8003EC68
/* 03EAF8 8003EF48 8E050164 */   lw         $a1, 0x164($s0)
/* 03EAFC 8003EF4C 3C04800B */  lui         $a0, %hi(D_800AC788)
/* 03EB00 8003EF50 2484C788 */  addiu       $a0, $a0, %lo(D_800AC788)
/* 03EB04 8003EF54 0C00FB1A */  jal         func_8003EC68
/* 03EB08 8003EF58 8E05016C */   lw         $a1, 0x16c($s0)
/* 03EB0C 8003EF5C 3C04800B */  lui         $a0, %hi(D_800AC78C)
/* 03EB10 8003EF60 2484C78C */  addiu       $a0, $a0, %lo(D_800AC78C)
/* 03EB14 8003EF64 0C00FB1A */  jal         func_8003EC68
/* 03EB18 8003EF68 8E050174 */   lw         $a1, 0x174($s0)
/* 03EB1C 8003EF6C 3C04800B */  lui         $a0, %hi(D_800AC794)
/* 03EB20 8003EF70 2484C794 */  addiu       $a0, $a0, %lo(D_800AC794)
/* 03EB24 8003EF74 0C00FB1A */  jal         func_8003EC68
/* 03EB28 8003EF78 8E05017C */   lw         $a1, 0x17c($s0)
/* 03EB2C 8003EF7C 3C04800B */  lui         $a0, %hi(D_800AC798)
/* 03EB30 8003EF80 2484C798 */  addiu       $a0, $a0, %lo(D_800AC798)
/* 03EB34 8003EF84 0C00FB1A */  jal         func_8003EC68
/* 03EB38 8003EF88 8E050184 */   lw         $a1, 0x184($s0)
/* 03EB3C 8003EF8C 3C04800B */  lui         $a0, %hi(D_800AC79C)
/* 03EB40 8003EF90 2484C79C */  addiu       $a0, $a0, %lo(D_800AC79C)
/* 03EB44 8003EF94 0C00FB1A */  jal         func_8003EC68
/* 03EB48 8003EF98 8E05018C */   lw         $a1, 0x18c($s0)
/* 03EB4C 8003EF9C 3C04800B */  lui         $a0, %hi(D_800AC7A4)
/* 03EB50 8003EFA0 2484C7A4 */  addiu       $a0, $a0, %lo(D_800AC7A4)
/* 03EB54 8003EFA4 24050028 */  addiu       $a1, $zero, 0x28
/* 03EB58 8003EFA8 0C00ECDE */  jal         func_8003B378
/* 03EB5C 8003EFAC 24060009 */   addiu      $a2, $zero, 0x9
/* 03EB60 8003EFB0 8FAF0038 */  lw          $t7, 0x38($sp)
/* 03EB64 8003EFB4 3C05800B */  lui         $a1, %hi(D_800AC7A8)
/* 03EB68 8003EFB8 24A5C7A8 */  addiu       $a1, $a1, %lo(D_800AC7A8)
/* 03EB6C 8003EFBC 27A40028 */  addiu       $a0, $sp, 0x28
/* 03EB70 8003EFC0 0C014589 */  jal         func_80051624
/* 03EB74 8003EFC4 8DE60014 */   lw         $a2, 0x14($t7)
/* 03EB78 8003EFC8 27A40028 */  addiu       $a0, $sp, 0x28
/* 03EB7C 8003EFCC 24050048 */  addiu       $a1, $zero, 0x48
/* 03EB80 8003EFD0 0C00ECDE */  jal         func_8003B378
/* 03EB84 8003EFD4 24060009 */   addiu      $a2, $zero, 0x9
/* 03EB88 8003EFD8 3C05800B */  lui         $a1, %hi(D_800AC7AC)
/* 03EB8C 8003EFDC 24A5C7AC */  addiu       $a1, $a1, %lo(D_800AC7AC)
/* 03EB90 8003EFE0 27A40028 */  addiu       $a0, $sp, 0x28
/* 03EB94 8003EFE4 0C014589 */  jal         func_80051624
/* 03EB98 8003EFE8 8E0600FC */   lw         $a2, 0xfc($s0)
/* 03EB9C 8003EFEC 27A40028 */  addiu       $a0, $sp, 0x28
/* 03EBA0 8003EFF0 24050068 */  addiu       $a1, $zero, 0x68
/* 03EBA4 8003EFF4 0C00ECDE */  jal         func_8003B378
/* 03EBA8 8003EFF8 24060009 */   addiu      $a2, $zero, 0x9
/* 03EBAC 8003EFFC 3C05800B */  lui         $a1, %hi(D_800AC7B4)
/* 03EBB0 8003F000 24A5C7B4 */  addiu       $a1, $a1, %lo(D_800AC7B4)
/* 03EBB4 8003F004 27A40028 */  addiu       $a0, $sp, 0x28
/* 03EBB8 8003F008 0C014589 */  jal         func_80051624
/* 03EBBC 8003F00C 8E0600E4 */   lw         $a2, 0xe4($s0)
/* 03EBC0 8003F010 27A40028 */  addiu       $a0, $sp, 0x28
/* 03EBC4 8003F014 240500B8 */  addiu       $a1, $zero, 0xb8
/* 03EBC8 8003F018 0C00ECDE */  jal         func_8003B378
/* 03EBCC 8003F01C 24060009 */   addiu      $a2, $zero, 0x9
/* 03EBD0 8003F020 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03EBD4 8003F024 8FB00018 */  lw          $s0, 0x18($sp)
/* 03EBD8 8003F028 27BD0038 */  addiu       $sp, $sp, 0x38
/* 03EBDC 8003F02C 03E00008 */  jr          $ra
/* 03EBE0 8003F030 00000000 */   nop

glabel func_8003F034 # 4
/* 03EBE4 8003F034 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 03EBE8 8003F038 AFB20020 */  sw          $s2, 0x20($sp)
/* 03EBEC 8003F03C 3C128010 */  lui         $s2, %hi(D_800FD5F0)
/* 03EBF0 8003F040 2652D5F0 */  addiu       $s2, $s2, %lo(D_800FD5F0)
/* 03EBF4 8003F044 AFBF0034 */  sw          $ra, 0x34($sp)
/* 03EBF8 8003F048 AFA40050 */  sw          $a0, 0x50($sp)
/* 03EBFC 8003F04C AFB60030 */  sw          $s6, 0x30($sp)
/* 03EC00 8003F050 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03EC04 8003F054 AFB40028 */  sw          $s4, 0x28($sp)
/* 03EC08 8003F058 AFB30024 */  sw          $s3, 0x24($sp)
/* 03EC0C 8003F05C AFB1001C */  sw          $s1, 0x1c($sp)
/* 03EC10 8003F060 AFB00018 */  sw          $s0, 0x18($sp)
/* 03EC14 8003F064 2404000C */  addiu       $a0, $zero, 0xc
/* 03EC18 8003F068 02402825 */  move        $a1, $s2
/* 03EC1C 8003F06C 0C013AF8 */  jal         func_8004EBE0
/* 03EC20 8003F070 24060001 */   addiu      $a2, $zero, 0x1
/* 03EC24 8003F074 3C16800A */  lui         $s6, %hi(D_800A1870)
/* 03EC28 8003F078 3C15800B */  lui         $s5, %hi(D_800AC7EC)
/* 03EC2C 8003F07C 3C10800A */  lui         $s0, %hi(D_800A186C)
/* 03EC30 8003F080 2610186C */  addiu       $s0, $s0, %lo(D_800A186C)
/* 03EC34 8003F084 26B5C7EC */  addiu       $s5, $s5, %lo(D_800AC7EC)
/* 03EC38 8003F088 26D61870 */  addiu       $s6, $s6, %lo(D_800A1870)
/* 03EC3C 8003F08C 27B3004C */  addiu       $s3, $sp, 0x4c
/* 03EC40 8003F090 27B10040 */  addiu       $s1, $sp, 0x40
/* 03EC44 8003F094 02402025 */  move        $a0, $s2
.L8003F098:
/* 03EC48 8003F098 02602825 */  move        $a1, $s3
/* 03EC4C 8003F09C 0C013A48 */  jal         func_8004E920
/* 03EC50 8003F0A0 24060001 */   addiu      $a2, $zero, 0x1
/* 03EC54 8003F0A4 8E040000 */  lw          $a0, 0x0($s0)
/* 03EC58 8003F0A8 24050028 */  addiu       $a1, $zero, 0x28
/* 03EC5C 8003F0AC 1080000D */  beqz        $a0, .L8003F0E4
/* 03EC60 8003F0B0 00000000 */   nop
/* 03EC64 8003F0B4 0C00ECDE */  jal         func_8003B378
/* 03EC68 8003F0B8 24060009 */   addiu      $a2, $zero, 0x9
/* 03EC6C 8003F0BC 02202025 */  move        $a0, $s1
/* 03EC70 8003F0C0 02A02825 */  move        $a1, $s5
/* 03EC74 8003F0C4 0C014589 */  jal         func_80051624
/* 03EC78 8003F0C8 8EC60000 */   lw         $a2, 0x0($s6)
/* 03EC7C 8003F0CC 02202025 */  move        $a0, $s1
/* 03EC80 8003F0D0 240500C8 */  addiu       $a1, $zero, 0xc8
/* 03EC84 8003F0D4 0C00ECDE */  jal         func_8003B378
/* 03EC88 8003F0D8 24060009 */   addiu      $a2, $zero, 0x9
/* 03EC8C 8003F0DC 10000007 */  b           .L8003F0FC
/* 03EC90 8003F0E0 AE000000 */   sw         $zero, 0x0($s0)
.L8003F0E4:
/* 03EC94 8003F0E4 0C014AE4 */  jal         func_80052B90
/* 03EC98 8003F0E8 00000000 */   nop
/* 03EC9C 8003F0EC 10400003 */  beqz        $v0, .L8003F0FC
/* 03ECA0 8003F0F0 00402025 */   move       $a0, $v0
/* 03ECA4 8003F0F4 0C00FB3F */  jal         func_8003ECFC
/* 03ECA8 8003F0F8 00000000 */   nop
.L8003F0FC:
/* 03ECAC 8003F0FC 0C01452C */  jal         func_800514B0
/* 03ECB0 8003F100 00002025 */   move       $a0, $zero
/* 03ECB4 8003F104 1000FFE4 */  b           .L8003F098
/* 03ECB8 8003F108 02402025 */   move       $a0, $s2
/* 03ECBC 8003F10C 00000000 */  nop
/* 03ECC0 8003F110 00000000 */  nop
/* 03ECC4 8003F114 00000000 */  nop
/* 03ECC8 8003F118 00000000 */  nop
/* 03ECCC 8003F11C 00000000 */  nop
/* 03ECD0 8003F120 8FBF0034 */  lw          $ra, 0x34($sp)
/* 03ECD4 8003F124 8FB00018 */  lw          $s0, 0x18($sp)
/* 03ECD8 8003F128 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03ECDC 8003F12C 8FB20020 */  lw          $s2, 0x20($sp)
/* 03ECE0 8003F130 8FB30024 */  lw          $s3, 0x24($sp)
/* 03ECE4 8003F134 8FB40028 */  lw          $s4, 0x28($sp)
/* 03ECE8 8003F138 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03ECEC 8003F13C 8FB60030 */  lw          $s6, 0x30($sp)
/* 03ECF0 8003F140 03E00008 */  jr          $ra
/* 03ECF4 8003F144 27BD0050 */   addiu      $sp, $sp, 0x50

glabel func_8003F148 # 5
/* 03ECF8 8003F148 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03ECFC 8003F14C AFA40020 */  sw          $a0, 0x20($sp)
/* 03ED00 8003F150 AFA50024 */  sw          $a1, 0x24($sp)
/* 03ED04 8003F154 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03ED08 8003F158 3C058010 */  lui         $a1, %hi(D_800FD608)
/* 03ED0C 8003F15C 3C048010 */  lui         $a0, %hi(D_800FD5F0)
/* 03ED10 8003F160 2484D5F0 */  addiu       $a0, $a0, %lo(D_800FD5F0)
/* 03ED14 8003F164 24A5D608 */  addiu       $a1, $a1, %lo(D_800FD608)
/* 03ED18 8003F168 0C013AEC */  jal         func_8004EBB0
/* 03ED1C 8003F16C 24060001 */   addiu      $a2, $zero, 0x1
/* 03ED20 8003F170 8FAF0024 */  lw          $t7, 0x24($sp)
/* 03ED24 8003F174 3C0E8010 */  lui         $t6, %hi(D_800FD5F0)
/* 03ED28 8003F178 25CED5F0 */  addiu       $t6, $t6, %lo(D_800FD5F0)
/* 03ED2C 8003F17C 3C048010 */  lui         $a0, %hi(D_800FD240)
/* 03ED30 8003F180 3C068004 */  lui         $a2, %hi(func_8003F034)
/* 03ED34 8003F184 24C6F034 */  addiu       $a2, $a2, %lo(func_8003F034)
/* 03ED38 8003F188 2484D240 */  addiu       $a0, $a0, %lo(D_800FD240)
/* 03ED3C 8003F18C AFAE0010 */  sw          $t6, 0x10($sp)
/* 03ED40 8003F190 8FA50020 */  lw          $a1, 0x20($sp)
/* 03ED44 8003F194 00003825 */  move        $a3, $zero
/* 03ED48 8003F198 0C013968 */  jal         func_8004E5A0
/* 03ED4C 8003F19C AFAF0014 */   sw         $t7, 0x14($sp)
/* 03ED50 8003F1A0 3C048010 */  lui         $a0, %hi(D_800FD240)
/* 03ED54 8003F1A4 0C0139BC */  jal         func_8004E6F0
/* 03ED58 8003F1A8 2484D240 */   addiu      $a0, $a0, %lo(D_800FD240)
/* 03ED5C 8003F1AC 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03ED60 8003F1B0 27BD0020 */  addiu       $sp, $sp, 0x20
/* 03ED64 8003F1B4 03E00008 */  jr          $ra
/* 03ED68 8003F1B8 00000000 */   nop
/* 03ED6C 8003F1BC 00000000 */  nop
