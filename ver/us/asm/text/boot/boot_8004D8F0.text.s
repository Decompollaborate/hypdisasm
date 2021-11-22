.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D8F0 # 0
/* 04D4A0 8004D8F0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 04D4A4 8004D8F4 AFB20024 */  sw          $s2, 0x24($sp)
/* 04D4A8 8004D8F8 3C12800A */  lui         $s2, %hi(D_8009D9C4)
/* 04D4AC 8004D8FC 2652D9C4 */  addiu       $s2, $s2, %lo(D_8009D9C4)
/* 04D4B0 8004D900 8E4E0000 */  lw          $t6, 0x0($s2)
/* 04D4B4 8004D904 AFBF0034 */  sw          $ra, 0x34($sp)
/* 04D4B8 8004D908 AFB50030 */  sw          $s5, 0x30($sp)
/* 04D4BC 8004D90C AFB4002C */  sw          $s4, 0x2c($sp)
/* 04D4C0 8004D910 AFB30028 */  sw          $s3, 0x28($sp)
/* 04D4C4 8004D914 AFB10020 */  sw          $s1, 0x20($sp)
/* 04D4C8 8004D918 AFB0001C */  sw          $s0, 0x1c($sp)
/* 04D4CC 8004D91C 8C950014 */  lw          $s5, 0x14($a0)
/* 04D4D0 8004D920 ADC00000 */  sw          $zero, 0x0($t6)
/* 04D4D4 8004D924 8E4F0000 */  lw          $t7, 0x0($s2)
/* 04D4D8 8004D928 240E00B8 */  addiu       $t6, $zero, 0xb8
/* 04D4DC 8004D92C 0080A025 */  move        $s4, $a0
/* 04D4E0 8004D930 ADE00004 */  sw          $zero, 0x4($t7)
/* 04D4E4 8004D934 8E580000 */  lw          $t8, 0x0($s2)
/* 04D4E8 8004D938 00002825 */  move        $a1, $zero
/* 04D4EC 8004D93C 24070001 */  addiu       $a3, $zero, 0x1
/* 04D4F0 8004D940 AF000008 */  sw          $zero, 0x8($t8)
/* 04D4F4 8004D944 8E590000 */  lw          $t9, 0x0($s2)
/* 04D4F8 8004D948 02A03025 */  move        $a2, $s5
/* 04D4FC 8004D94C AF20000C */  sw          $zero, 0xc($t9)
/* 04D500 8004D950 8E490000 */  lw          $t1, 0x0($s2)
/* 04D504 8004D954 8C880004 */  lw          $t0, 0x4($a0)
/* 04D508 8004D958 AD280044 */  sw          $t0, 0x44($t1)
/* 04D50C 8004D95C 8E4A0000 */  lw          $t2, 0x0($s2)
/* 04D510 8004D960 24090001 */  addiu       $t1, $zero, 0x1
/* 04D514 8004D964 AD40002C */  sw          $zero, 0x2c($t2)
/* 04D518 8004D968 8E4B0000 */  lw          $t3, 0x0($s2)
/* 04D51C 8004D96C AD600028 */  sw          $zero, 0x28($t3)
/* 04D520 8004D970 8E4D0000 */  lw          $t5, 0x0($s2)
/* 04D524 8004D974 8C8C0018 */  lw          $t4, 0x18($a0)
/* 04D528 8004D978 240B0044 */  addiu       $t3, $zero, 0x44
/* 04D52C 8004D97C ADAC004C */  sw          $t4, 0x4c($t5)
/* 04D530 8004D980 8E4F0000 */  lw          $t7, 0x0($s2)
/* 04D534 8004D984 ADEE0050 */  sw          $t6, 0x50($t7)
/* 04D538 8004D988 8E590000 */  lw          $t9, 0x0($s2)
/* 04D53C 8004D98C 8C980010 */  lw          $t8, 0x10($a0)
/* 04D540 8004D990 00002025 */  move        $a0, $zero
/* 04D544 8004D994 AF380030 */  sw          $t8, 0x30($t9)
/* 04D548 8004D998 8E480000 */  lw          $t0, 0x0($s2)
/* 04D54C 8004D99C AD000054 */  sw          $zero, 0x54($t0)
/* 04D550 8004D9A0 8E4A0000 */  lw          $t2, 0x0($s2)
/* 04D554 8004D9A4 AD490058 */  sw          $t1, 0x58($t2)
/* 04D558 8004D9A8 0C014E68 */  jal         func_800539A0
/* 04D55C 8004D9AC AFAB0010 */   sw         $t3, 0x10($sp)
/* 04D560 8004D9B0 8E4C0000 */  lw          $t4, 0x0($s2)
/* 04D564 8004D9B4 24080004 */  addiu       $t0, $zero, 0x4
/* 04D568 8004D9B8 00002025 */  move        $a0, $zero
/* 04D56C 8004D9BC AD820040 */  sw          $v0, 0x40($t4)
/* 04D570 8004D9C0 8E4D0000 */  lw          $t5, 0x0($s2)
/* 04D574 8004D9C4 00002825 */  move        $a1, $zero
/* 04D578 8004D9C8 02A03025 */  move        $a2, $s5
/* 04D57C 8004D9CC 8DAE0040 */  lw          $t6, 0x40($t5)
/* 04D580 8004D9D0 ADC00014 */  sw          $zero, 0x14($t6)
/* 04D584 8004D9D4 8E580000 */  lw          $t8, 0x0($s2)
/* 04D588 8004D9D8 8E8F0004 */  lw          $t7, 0x4($s4)
/* 04D58C 8004D9DC 8F190040 */  lw          $t9, 0x40($t8)
/* 04D590 8004D9E0 AF2F0018 */  sw          $t7, 0x18($t9)
/* 04D594 8004D9E4 8E870004 */  lw          $a3, 0x4($s4)
/* 04D598 8004D9E8 0C014E68 */  jal         func_800539A0
/* 04D59C 8004D9EC AFA80010 */   sw         $t0, 0x10($sp)
/* 04D5A0 8004D9F0 8E490000 */  lw          $t1, 0x0($s2)
/* 04D5A4 8004D9F4 240B0014 */  addiu       $t3, $zero, 0x14
/* 04D5A8 8004D9F8 00002025 */  move        $a0, $zero
/* 04D5AC 8004D9FC 8D2A0040 */  lw          $t2, 0x40($t1)
/* 04D5B0 8004DA00 00002825 */  move        $a1, $zero
/* 04D5B4 8004DA04 02A03025 */  move        $a2, $s5
/* 04D5B8 8004DA08 AD42001C */  sw          $v0, 0x1c($t2)
/* 04D5BC 8004DA0C AFAB0010 */  sw          $t3, 0x10($sp)
/* 04D5C0 8004DA10 0C014E68 */  jal         func_800539A0
/* 04D5C4 8004DA14 24070001 */   addiu      $a3, $zero, 0x1
/* 04D5C8 8004DA18 8E4C0000 */  lw          $t4, 0x0($s2)
/* 04D5CC 8004DA1C 00002025 */  move        $a0, $zero
/* 04D5D0 8004DA20 02802825 */  move        $a1, $s4
/* 04D5D4 8004DA24 AD82003C */  sw          $v0, 0x3c($t4)
/* 04D5D8 8004DA28 928D001C */  lbu         $t5, 0x1c($s4)
/* 04D5DC 8004DA2C 51A0000D */  beql        $t5, $zero, .L8004DA64
/* 04D5E0 8004DA30 8E4A0000 */   lw         $t2, 0x0($s2)
/* 04D5E4 8004DA34 0C013AC4 */  jal         func_8004EB10
/* 04D5E8 8004DA38 02A03025 */   move       $a2, $s5
/* 04D5EC 8004DA3C 8E4E0000 */  lw          $t6, 0x0($s2)
/* 04D5F0 8004DA40 3C0F8005 */  lui         $t7, %hi(func_8004EB70)
/* 04D5F4 8004DA44 25EFEB70 */  addiu       $t7, $t7, %lo(func_8004EB70)
/* 04D5F8 8004DA48 8DD80040 */  lw          $t8, 0x40($t6)
/* 04D5FC 8004DA4C AF020020 */  sw          $v0, 0x20($t8)
/* 04D600 8004DA50 8E590000 */  lw          $t9, 0x0($s2)
/* 04D604 8004DA54 8F28003C */  lw          $t0, 0x3c($t9)
/* 04D608 8004DA58 10000006 */  b           .L8004DA74
/* 04D60C 8004DA5C AD0F0004 */   sw         $t7, 0x4($t0)
/* 04D610 8004DA60 8E4A0000 */  lw          $t2, 0x0($s2)
.L8004DA64:
/* 04D614 8004DA64 3C098005 */  lui         $t1, %hi(func_8004F5F0)
/* 04D618 8004DA68 2529F5F0 */  addiu       $t1, $t1, %lo(func_8004F5F0)
/* 04D61C 8004DA6C 8D4B003C */  lw          $t3, 0x3c($t2)
/* 04D620 8004DA70 AD690004 */  sw          $t1, 0x4($t3)
.L8004DA74:
/* 04D624 8004DA74 8E4C0000 */  lw          $t4, 0x0($s2)
/* 04D628 8004DA78 2408008C */  addiu       $t0, $zero, 0x8c
/* 04D62C 8004DA7C 00002025 */  move        $a0, $zero
/* 04D630 8004DA80 AD800010 */  sw          $zero, 0x10($t4)
/* 04D634 8004DA84 8E4D0000 */  lw          $t5, 0x0($s2)
/* 04D638 8004DA88 00002825 */  move        $a1, $zero
/* 04D63C 8004DA8C 02A03025 */  move        $a2, $s5
/* 04D640 8004DA90 ADA00014 */  sw          $zero, 0x14($t5)
/* 04D644 8004DA94 8E4E0000 */  lw          $t6, 0x0($s2)
/* 04D648 8004DA98 ADC00020 */  sw          $zero, 0x20($t6)
/* 04D64C 8004DA9C 8E580000 */  lw          $t8, 0x0($s2)
/* 04D650 8004DAA0 AF000024 */  sw          $zero, 0x24($t8)
/* 04D654 8004DAA4 8E590000 */  lw          $t9, 0x0($s2)
/* 04D658 8004DAA8 AF200018 */  sw          $zero, 0x18($t9)
/* 04D65C 8004DAAC 8E4F0000 */  lw          $t7, 0x0($s2)
/* 04D660 8004DAB0 ADE0001C */  sw          $zero, 0x1c($t7)
/* 04D664 8004DAB4 8E870004 */  lw          $a3, 0x4($s4)
/* 04D668 8004DAB8 0C014E68 */  jal         func_800539A0
/* 04D66C 8004DABC AFA80010 */   sw         $t0, 0x10($sp)
/* 04D670 8004DAC0 8E8A0004 */  lw          $t2, 0x4($s4)
/* 04D674 8004DAC4 00008825 */  move        $s1, $zero
/* 04D678 8004DAC8 00408025 */  move        $s0, $v0
/* 04D67C 8004DACC 59400020 */  blezl       $t2, .L8004DB50
/* 04D680 8004DAD0 8E870008 */   lw         $a3, 0x8($s4)
/* 04D684 8004DAD4 8E450000 */  lw          $a1, 0x0($s2)
.L8004DAD8:
/* 04D688 8004DAD8 02009825 */  move        $s3, $s0
/* 04D68C 8004DADC 02002025 */  move        $a0, $s0
/* 04D690 8004DAE0 0C01582F */  jal         func_800560BC
/* 04D694 8004DAE4 24A50010 */   addiu      $a1, $a1, 0x10
/* 04D698 8004DAE8 AE000008 */  sw          $zero, 0x8($s0)
/* 04D69C 8004DAEC 8E490000 */  lw          $t1, 0x0($s2)
/* 04D6A0 8004DAF0 02002025 */  move        $a0, $s0
/* 04D6A4 8004DAF4 02A03025 */  move        $a2, $s5
/* 04D6A8 8004DAF8 0C013EB4 */  jal         func_8004FAD0
/* 04D6AC 8004DAFC 8D250030 */   lw         $a1, 0x30($t1)
/* 04D6B0 8004DB00 8E4B0000 */  lw          $t3, 0x0($s2)
/* 04D6B4 8004DB04 26310001 */  addiu       $s1, $s1, 0x1
/* 04D6B8 8004DB08 2610008C */  addiu       $s0, $s0, 0x8c
/* 04D6BC 8004DB0C 8D620040 */  lw          $v0, 0x40($t3)
/* 04D6C0 8004DB10 8C4D0014 */  lw          $t5, 0x14($v0)
/* 04D6C4 8004DB14 8C4C001C */  lw          $t4, 0x1c($v0)
/* 04D6C8 8004DB18 000D7080 */  sll         $t6, $t5, 2
/* 04D6CC 8004DB1C 018EC021 */  addu        $t8, $t4, $t6
/* 04D6D0 8004DB20 AF130000 */  sw          $s3, 0x0($t8)
/* 04D6D4 8004DB24 8E590000 */  lw          $t9, 0x0($s2)
/* 04D6D8 8004DB28 8F220040 */  lw          $v0, 0x40($t9)
/* 04D6DC 8004DB2C 8C4F0014 */  lw          $t7, 0x14($v0)
/* 04D6E0 8004DB30 25E80001 */  addiu       $t0, $t7, 0x1
/* 04D6E4 8004DB34 AC480014 */  sw          $t0, 0x14($v0)
/* 04D6E8 8004DB38 8E8A0004 */  lw          $t2, 0x4($s4)
/* 04D6EC 8004DB3C 022A082A */  slt         $at, $s1, $t2
/* 04D6F0 8004DB40 5420FFE5 */  bnel        $at, $zero, .L8004DAD8
/* 04D6F4 8004DB44 8E450000 */   lw         $a1, 0x0($s2)
/* 04D6F8 8004DB48 00008825 */  move        $s1, $zero
/* 04D6FC 8004DB4C 8E870008 */  lw          $a3, 0x8($s4)
.L8004DB50:
/* 04D700 8004DB50 2409001C */  addiu       $t1, $zero, 0x1c
/* 04D704 8004DB54 AFA90010 */  sw          $t1, 0x10($sp)
/* 04D708 8004DB58 00002025 */  move        $a0, $zero
/* 04D70C 8004DB5C 00002825 */  move        $a1, $zero
/* 04D710 8004DB60 0C014E68 */  jal         func_800539A0
/* 04D714 8004DB64 02A03025 */   move       $a2, $s5
/* 04D718 8004DB68 8E4B0000 */  lw          $t3, 0x0($s2)
/* 04D71C 8004DB6C 00401825 */  move        $v1, $v0
/* 04D720 8004DB70 AD600038 */  sw          $zero, 0x38($t3)
/* 04D724 8004DB74 8E8D0008 */  lw          $t5, 0x8($s4)
/* 04D728 8004DB78 59A0000D */  blezl       $t5, .L8004DBB0
/* 04D72C 8004DB7C 8E4F0000 */   lw         $t7, 0x0($s2)
/* 04D730 8004DB80 8E4C0000 */  lw          $t4, 0x0($s2)
.L8004DB84:
/* 04D734 8004DB84 26310001 */  addiu       $s1, $s1, 0x1
/* 04D738 8004DB88 8D8E0038 */  lw          $t6, 0x38($t4)
/* 04D73C 8004DB8C AC6E0000 */  sw          $t6, 0x0($v1)
/* 04D740 8004DB90 8E580000 */  lw          $t8, 0x0($s2)
/* 04D744 8004DB94 AF030038 */  sw          $v1, 0x38($t8)
/* 04D748 8004DB98 8E990008 */  lw          $t9, 0x8($s4)
/* 04D74C 8004DB9C 2463001C */  addiu       $v1, $v1, 0x1c
/* 04D750 8004DBA0 0239082A */  slt         $at, $s1, $t9
/* 04D754 8004DBA4 5420FFF7 */  bnel        $at, $zero, .L8004DB84
/* 04D758 8004DBA8 8E4C0000 */   lw         $t4, 0x0($s2)
/* 04D75C 8004DBAC 8E4F0000 */  lw          $t7, 0x0($s2)
.L8004DBB0:
/* 04D760 8004DBB0 ADF50034 */  sw          $s5, 0x34($t7)
/* 04D764 8004DBB4 8FBF0034 */  lw          $ra, 0x34($sp)
/* 04D768 8004DBB8 8FB50030 */  lw          $s5, 0x30($sp)
/* 04D76C 8004DBBC 8FB4002C */  lw          $s4, 0x2c($sp)
/* 04D770 8004DBC0 8FB30028 */  lw          $s3, 0x28($sp)
/* 04D774 8004DBC4 8FB20024 */  lw          $s2, 0x24($sp)
/* 04D778 8004DBC8 8FB10020 */  lw          $s1, 0x20($sp)
/* 04D77C 8004DBCC 8FB0001C */  lw          $s0, 0x1c($sp)
/* 04D780 8004DBD0 03E00008 */  jr          $ra
/* 04D784 8004DBD4 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_8004DBD8 # 1
/* 04D788 8004DBD8 27BDFFA0 */  addiu       $sp, $sp, -0x60
/* 04D78C 8004DBDC AFB30024 */  sw          $s3, 0x24($sp)
/* 04D790 8004DBE0 3C13800A */  lui         $s3, %hi(D_8009D9C4)
/* 04D794 8004DBE4 2673D9C4 */  addiu       $s3, $s3, %lo(D_8009D9C4)
/* 04D798 8004DBE8 8E6E0000 */  lw          $t6, 0x0($s3)
/* 04D79C 8004DBEC AFBF0034 */  sw          $ra, 0x34($sp)
/* 04D7A0 8004DBF0 AFB60030 */  sw          $s6, 0x30($sp)
/* 04D7A4 8004DBF4 AFB5002C */  sw          $s5, 0x2c($sp)
/* 04D7A8 8004DBF8 AFB40028 */  sw          $s4, 0x28($sp)
/* 04D7AC 8004DBFC AFB20020 */  sw          $s2, 0x20($sp)
/* 04D7B0 8004DC00 AFB1001C */  sw          $s1, 0x1c($sp)
/* 04D7B4 8004DC04 AFB00018 */  sw          $s0, 0x18($sp)
/* 04D7B8 8004DC08 AFA50064 */  sw          $a1, 0x64($sp)
/* 04D7BC 8004DC0C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 04D7C0 8004DC10 00808025 */  move        $s0, $a0
/* 04D7C4 8004DC14 00E09025 */  move        $s2, $a3
/* 04D7C8 8004DC18 0080A825 */  move        $s5, $a0
/* 04D7CC 8004DC1C 15E00004 */  bnez        $t7, .L8004DC30
/* 04D7D0 8004DC20 00C0A025 */   move       $s4, $a2
/* 04D7D4 8004DC24 ACA00000 */  sw          $zero, 0x0($a1)
/* 04D7D8 8004DC28 1000004E */  b           .L8004DD64
/* 04D7DC 8004DC2C 00801025 */   move       $v0, $a0
.L8004DC30:
/* 04D7E0 8004DC30 27B6005C */  addiu       $s6, $sp, 0x5c
/* 04D7E4 8004DC34 02C02025 */  move        $a0, $s6
/* 04D7E8 8004DC38 0C0137BC */  jal         func_8004DEF0
/* 04D7EC 8004DC3C AFB00060 */   sw         $s0, 0x60($sp)
/* 04D7F0 8004DC40 8E790000 */  lw          $t9, 0x0($s3)
/* 04D7F4 8004DC44 2411FFF0 */  addiu       $s1, $zero, -0x10
/* 04D7F8 8004DC48 AF220028 */  sw          $v0, 0x28($t9)
/* 04D7FC 8004DC4C 8E700000 */  lw          $s0, 0x0($s3)
/* 04D800 8004DC50 8E030028 */  lw          $v1, 0x28($s0)
/* 04D804 8004DC54 8E08002C */  lw          $t0, 0x2c($s0)
/* 04D808 8004DC58 00684823 */  subu        $t1, $v1, $t0
/* 04D80C 8004DC5C 0132082A */  slt         $at, $t1, $s2
/* 04D810 8004DC60 1020001F */  beqz        $at, .L8004DCE0
/* 04D814 8004DC64 00715024 */   and        $t2, $v1, $s1
.L8004DC68:
/* 04D818 8004DC68 AE0A0028 */  sw          $t2, 0x28($s0)
/* 04D81C 8004DC6C 8FA4005C */  lw          $a0, 0x5c($sp)
/* 04D820 8004DC70 8C990008 */  lw          $t9, 0x8($a0)
/* 04D824 8004DC74 0320F809 */  jalr        $t9
/* 04D828 8004DC78 00000000 */   nop
/* 04D82C 8004DC7C 04400008 */  bltz        $v0, .L8004DCA0
/* 04D830 8004DC80 00402025 */   move       $a0, $v0
/* 04D834 8004DC84 0C01379D */  jal         func_8004DE74
/* 04D838 8004DC88 00000000 */   nop
/* 04D83C 8004DC8C 8FAC005C */  lw          $t4, 0x5c($sp)
/* 04D840 8004DC90 8D8D0010 */  lw          $t5, 0x10($t4)
/* 04D844 8004DC94 01A27021 */  addu        $t6, $t5, $v0
/* 04D848 8004DC98 10000006 */  b           .L8004DCB4
/* 04D84C 8004DC9C AD8E0010 */   sw         $t6, 0x10($t4)
.L8004DCA0:
/* 04D850 8004DCA0 8E6F0000 */  lw          $t7, 0x0($s3)
/* 04D854 8004DCA4 8FA9005C */  lw          $t1, 0x5c($sp)
/* 04D858 8004DCA8 8DF8002C */  lw          $t8, 0x2c($t7)
/* 04D85C 8004DCAC 03124021 */  addu        $t0, $t8, $s2
/* 04D860 8004DCB0 AD280010 */  sw          $t0, 0x10($t1)
.L8004DCB4:
/* 04D864 8004DCB4 0C0137BC */  jal         func_8004DEF0
/* 04D868 8004DCB8 02C02025 */   move       $a0, $s6
/* 04D86C 8004DCBC 8E6A0000 */  lw          $t2, 0x0($s3)
/* 04D870 8004DCC0 AD420028 */  sw          $v0, 0x28($t2)
/* 04D874 8004DCC4 8E700000 */  lw          $s0, 0x0($s3)
/* 04D878 8004DCC8 8E030028 */  lw          $v1, 0x28($s0)
/* 04D87C 8004DCCC 8E0B002C */  lw          $t3, 0x2c($s0)
/* 04D880 8004DCD0 006BC823 */  subu        $t9, $v1, $t3
/* 04D884 8004DCD4 0332082A */  slt         $at, $t9, $s2
/* 04D888 8004DCD8 5420FFE3 */  bnel        $at, $zero, .L8004DC68
/* 04D88C 8004DCDC 00715024 */   and        $t2, $v1, $s1
.L8004DCE0:
/* 04D890 8004DCE0 2411FFF0 */  addiu       $s1, $zero, -0x10
/* 04D894 8004DCE4 00716824 */  and         $t5, $v1, $s1
/* 04D898 8004DCE8 1A400017 */  blez        $s2, .L8004DD48
/* 04D89C 8004DCEC AE0D0028 */   sw         $t5, 0x28($s0)
.L8004DCF0:
/* 04D8A0 8004DCF0 8E700000 */  lw          $s0, 0x0($s3)
/* 04D8A4 8004DCF4 02408825 */  move        $s1, $s2
/* 04D8A8 8004DCF8 8E020050 */  lw          $v0, 0x50($s0)
/* 04D8AC 8004DCFC 0052082A */  slt         $at, $v0, $s2
/* 04D8B0 8004DD00 10200003 */  beqz        $at, .L8004DD10
/* 04D8B4 8004DD04 00000000 */   nop
/* 04D8B8 8004DD08 10000001 */  b           .L8004DD10
/* 04D8BC 8004DD0C 00408825 */   move       $s1, $v0
.L8004DD10:
/* 04D8C0 8004DD10 AE140054 */  sw          $s4, 0x54($s0)
/* 04D8C4 8004DD14 8E6E0000 */  lw          $t6, 0x0($s3)
/* 04D8C8 8004DD18 02A02825 */  move        $a1, $s5
/* 04D8CC 8004DD1C 0C013F00 */  jal         func_8004FC00
/* 04D8D0 8004DD20 8DC4002C */   lw         $a0, 0x2c($t6)
/* 04D8D4 8004DD24 8E700000 */  lw          $s0, 0x0($s3)
/* 04D8D8 8004DD28 02519023 */  subu        $s2, $s2, $s1
/* 04D8DC 8004DD2C 00117880 */  sll         $t7, $s1, 2
/* 04D8E0 8004DD30 8E18002C */  lw          $t8, 0x2c($s0)
/* 04D8E4 8004DD34 0040A825 */  move        $s5, $v0
/* 04D8E8 8004DD38 028FA021 */  addu        $s4, $s4, $t7
/* 04D8EC 8004DD3C 03114021 */  addu        $t0, $t8, $s1
/* 04D8F0 8004DD40 1E40FFEB */  bgtz        $s2, .L8004DCF0
/* 04D8F4 8004DD44 AE08002C */   sw         $t0, 0x2c($s0)
.L8004DD48:
/* 04D8F8 8004DD48 8FA90060 */  lw          $t1, 0x60($sp)
/* 04D8FC 8004DD4C 8FB90064 */  lw          $t9, 0x64($sp)
/* 04D900 8004DD50 02A95023 */  subu        $t2, $s5, $t1
/* 04D904 8004DD54 000A58C3 */  sra         $t3, $t2, 3
/* 04D908 8004DD58 0C013777 */  jal         func_8004DDDC
/* 04D90C 8004DD5C AF2B0000 */   sw         $t3, 0x0($t9)
/* 04D910 8004DD60 02A01025 */  move        $v0, $s5
.L8004DD64:
/* 04D914 8004DD64 8FBF0034 */  lw          $ra, 0x34($sp)
/* 04D918 8004DD68 8FB00018 */  lw          $s0, 0x18($sp)
/* 04D91C 8004DD6C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 04D920 8004DD70 8FB20020 */  lw          $s2, 0x20($sp)
/* 04D924 8004DD74 8FB30024 */  lw          $s3, 0x24($sp)
/* 04D928 8004DD78 8FB40028 */  lw          $s4, 0x28($sp)
/* 04D92C 8004DD7C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 04D930 8004DD80 8FB60030 */  lw          $s6, 0x30($sp)
/* 04D934 8004DD84 03E00008 */  jr          $ra
/* 04D938 8004DD88 27BD0060 */   addiu      $sp, $sp, 0x60

glabel func_8004DD8C # 2
/* 04D93C 8004DD8C 3C02800A */  lui         $v0, %hi(D_8009D9C4)
/* 04D940 8004DD90 8C42D9C4 */  lw          $v0, %lo(D_8009D9C4)($v0)
/* 04D944 8004DD94 00001825 */  move        $v1, $zero
/* 04D948 8004DD98 8C440038 */  lw          $a0, 0x38($v0)
/* 04D94C 8004DD9C 10800005 */  beqz        $a0, .L8004DDB4
/* 04D950 8004DDA0 00000000 */   nop
/* 04D954 8004DDA4 8C8E0000 */  lw          $t6, 0x0($a0)
/* 04D958 8004DDA8 00801825 */  move        $v1, $a0
/* 04D95C 8004DDAC AC4E0038 */  sw          $t6, 0x38($v0)
/* 04D960 8004DDB0 AC800000 */  sw          $zero, 0x0($a0)
.L8004DDB4:
/* 04D964 8004DDB4 03E00008 */  jr          $ra
/* 04D968 8004DDB8 00601025 */   move       $v0, $v1

glabel func_8004DDBC # 3
/* 04D96C 8004DDBC 3C02800A */  lui         $v0, %hi(D_8009D9C4)
/* 04D970 8004DDC0 2442D9C4 */  addiu       $v0, $v0, %lo(D_8009D9C4)
/* 04D974 8004DDC4 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04D978 8004DDC8 8DCF0038 */  lw          $t7, 0x38($t6)
/* 04D97C 8004DDCC AC8F0000 */  sw          $t7, 0x0($a0)
/* 04D980 8004DDD0 8C580000 */  lw          $t8, 0x0($v0)
/* 04D984 8004DDD4 03E00008 */  jr          $ra
/* 04D988 8004DDD8 AF040038 */   sw         $a0, 0x38($t8)

glabel func_8004DDDC # 4
/* 04D98C 8004DDDC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04D990 8004DDE0 AFB10018 */  sw          $s1, 0x18($sp)
/* 04D994 8004DDE4 3C11800A */  lui         $s1, %hi(D_8009D9C4)
/* 04D998 8004DDE8 2631D9C4 */  addiu       $s1, $s1, %lo(D_8009D9C4)
/* 04D99C 8004DDEC 8E2E0000 */  lw          $t6, 0x0($s1)
/* 04D9A0 8004DDF0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 04D9A4 8004DDF4 AFB00014 */  sw          $s0, 0x14($sp)
/* 04D9A8 8004DDF8 8DD00020 */  lw          $s0, 0x20($t6)
/* 04D9AC 8004DDFC 5200000C */  beql        $s0, $zero, .L8004DE30
/* 04D9B0 8004DE00 8FBF001C */   lw         $ra, 0x1c($sp)
.L8004DE04:
/* 04D9B4 8004DE04 0C015838 */  jal         func_800560E0
/* 04D9B8 8004DE08 02002025 */   move       $a0, $s0
/* 04D9BC 8004DE0C 8E250000 */  lw          $a1, 0x0($s1)
/* 04D9C0 8004DE10 02002025 */  move        $a0, $s0
/* 04D9C4 8004DE14 0C01582F */  jal         func_800560BC
/* 04D9C8 8004DE18 24A50010 */   addiu      $a1, $a1, 0x10
/* 04D9CC 8004DE1C 8E2F0000 */  lw          $t7, 0x0($s1)
/* 04D9D0 8004DE20 8DF00020 */  lw          $s0, 0x20($t7)
/* 04D9D4 8004DE24 1600FFF7 */  bnez        $s0, .L8004DE04
/* 04D9D8 8004DE28 00000000 */   nop
/* 04D9DC 8004DE2C 8FBF001C */  lw          $ra, 0x1c($sp)
.L8004DE30:
/* 04D9E0 8004DE30 8FB00014 */  lw          $s0, 0x14($sp)
/* 04D9E4 8004DE34 8FB10018 */  lw          $s1, 0x18($sp)
/* 04D9E8 8004DE38 03E00008 */  jr          $ra
/* 04D9EC 8004DE3C 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8004DE40 # 5
/* 04D9F0 8004DE40 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D9F4 8004DE44 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D9F8 8004DE48 0C015838 */  jal         func_800560E0
/* 04D9FC 8004DE4C AFA40018 */   sw         $a0, 0x18($sp)
/* 04DA00 8004DE50 3C05800A */  lui         $a1, %hi(D_8009D9C4)
/* 04DA04 8004DE54 8CA5D9C4 */  lw          $a1, %lo(D_8009D9C4)($a1)
/* 04DA08 8004DE58 8FA40018 */  lw          $a0, 0x18($sp)
/* 04DA0C 8004DE5C 0C01582F */  jal         func_800560BC
/* 04DA10 8004DE60 24A50020 */   addiu      $a1, $a1, 0x20
/* 04DA14 8004DE64 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04DA18 8004DE68 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04DA1C 8004DE6C 03E00008 */  jr          $ra
/* 04DA20 8004DE70 00000000 */   nop

glabel func_8004DE74 # 6
/* 04DA24 8004DE74 3C0E800A */  lui         $t6, %hi(D_8009D9C4)
/* 04DA28 8004DE78 8DCED9C4 */  lw          $t6, %lo(D_8009D9C4)($t6)
/* 04DA2C 8004DE7C 44842000 */  mtc1        $a0, $f4
/* 04DA30 8004DE80 3C01800A */  lui         $at, %hi(D_800A7C50)
/* 04DA34 8004DE84 8DCF004C */  lw          $t7, 0x4c($t6)
/* 04DA38 8004DE88 468021A0 */  cvt.s.w     $f6, $f4
/* 04DA3C 8004DE8C D4247C50 */  ldc1        $f4, %lo(D_800A7C50)($at)
/* 04DA40 8004DE90 448F4000 */  mtc1        $t7, $f8
/* 04DA44 8004DE94 3C013FE0 */  lui         $at, 0x3fe0
/* 04DA48 8004DE98 44813800 */  mtc1        $at, $f7
/* 04DA4C 8004DE9C 468042A0 */  cvt.s.w     $f10, $f8
/* 04DA50 8004DEA0 460A3402 */  mul.s       $f16, $f6, $f10
/* 04DA54 8004DEA4 44803000 */  mtc1        $zero, $f6
/* 04DA58 8004DEA8 460084A1 */  cvt.d.s     $f18, $f16
/* 04DA5C 8004DEAC 46249203 */  div.d       $f8, $f18, $f4
/* 04DA60 8004DEB0 46264280 */  add.d       $f10, $f8, $f6
/* 04DA64 8004DEB4 46205020 */  cvt.s.d     $f0, $f10
/* 04DA68 8004DEB8 4600040D */  trunc.w.s   $f16, $f0
/* 04DA6C 8004DEBC 44028000 */  mfc1        $v0, $f16
/* 04DA70 8004DEC0 03E00008 */  jr          $ra
/* 04DA74 8004DEC4 00000000 */   nop

glabel func_8004DEC8 # 7
/* 04DA78 8004DEC8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04DA7C 8004DECC AFBF0014 */  sw          $ra, 0x14($sp)
/* 04DA80 8004DED0 0C01379D */  jal         func_8004DE74
/* 04DA84 8004DED4 00000000 */   nop
/* 04DA88 8004DED8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04DA8C 8004DEDC 2401FFF0 */  addiu       $at, $zero, -0x10
/* 04DA90 8004DEE0 00417024 */  and         $t6, $v0, $at
/* 04DA94 8004DEE4 01C01025 */  move        $v0, $t6
/* 04DA98 8004DEE8 03E00008 */  jr          $ra
/* 04DA9C 8004DEEC 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8004DEF0 # 8
/* 04DAA0 8004DEF0 3C07800A */  lui         $a3, %hi(D_8009D9C4)
/* 04DAA4 8004DEF4 24E7D9C4 */  addiu       $a3, $a3, %lo(D_8009D9C4)
/* 04DAA8 8004DEF8 AC800000 */  sw          $zero, 0x0($a0)
/* 04DAAC 8004DEFC 8CE50000 */  lw          $a1, 0x0($a3)
/* 04DAB0 8004DF00 3C027FFF */  lui         $v0, 0x7fff
/* 04DAB4 8004DF04 3442FFFF */  ori         $v0, $v0, 0xffff
/* 04DAB8 8004DF08 8CA30000 */  lw          $v1, 0x0($a1)
/* 04DABC 8004DF0C 50600010 */  beql        $v1, $zero, .L8004DF50
/* 04DAC0 8004DF10 8C880000 */   lw         $t0, 0x0($a0)
/* 04DAC4 8004DF14 8CA6002C */  lw          $a2, 0x2c($a1)
/* 04DAC8 8004DF18 8C6E0010 */  lw          $t6, 0x10($v1)
.L8004DF1C:
/* 04DACC 8004DF1C 01C67823 */  subu        $t7, $t6, $a2
/* 04DAD0 8004DF20 01E2082A */  slt         $at, $t7, $v0
/* 04DAD4 8004DF24 50200007 */  beql        $at, $zero, .L8004DF44
/* 04DAD8 8004DF28 8C630000 */   lw         $v1, 0x0($v1)
/* 04DADC 8004DF2C AC830000 */  sw          $v1, 0x0($a0)
/* 04DAE0 8004DF30 8CF80000 */  lw          $t8, 0x0($a3)
/* 04DAE4 8004DF34 8C790010 */  lw          $t9, 0x10($v1)
/* 04DAE8 8004DF38 8F06002C */  lw          $a2, 0x2c($t8)
/* 04DAEC 8004DF3C 03261023 */  subu        $v0, $t9, $a2
/* 04DAF0 8004DF40 8C630000 */  lw          $v1, 0x0($v1)
.L8004DF44:
/* 04DAF4 8004DF44 5460FFF5 */  bnel        $v1, $zero, .L8004DF1C
/* 04DAF8 8004DF48 8C6E0010 */   lw         $t6, 0x10($v1)
/* 04DAFC 8004DF4C 8C880000 */  lw          $t0, 0x0($a0)
.L8004DF50:
/* 04DB00 8004DF50 03E00008 */  jr          $ra
/* 04DB04 8004DF54 8D020010 */   lw         $v0, 0x10($t0)
/* 04DB08 8004DF58 00000000 */  nop
/* 04DB0C 8004DF5C 00000000 */  nop
