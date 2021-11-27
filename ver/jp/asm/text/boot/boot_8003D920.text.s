.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8003D920 # 0
/* 03D4D0 8003D920 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D4D4 8003D924 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D4D8 8003D928 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03D4DC 8003D92C AFA40018 */  sw          $a0, 0x18($sp)
/* 03D4E0 8003D930 0C013C58 */  jal         func_8004F160
/* 03D4E4 8003D934 2405000C */   addiu      $a1, $zero, 0xc
/* 03D4E8 8003D938 8FAE001C */  lw          $t6, 0x1c($sp)
/* 03D4EC 8003D93C 8FAF0018 */  lw          $t7, 0x18($sp)
/* 03D4F0 8003D940 ADEE000C */  sw          $t6, 0xc($t7)
/* 03D4F4 8003D944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D4F8 8003D948 27BD0018 */  addiu       $sp, $sp, 0x18
/* 03D4FC 8003D94C 03E00008 */  jr          $ra
/* 03D500 8003D950 00000000 */   nop

glabel func_8003D954 # 1
/* 03D504 8003D954 27BDFF70 */  addiu       $sp, $sp, -0x90
/* 03D508 8003D958 AFBF003C */  sw          $ra, 0x3c($sp)
/* 03D50C 8003D95C AFBE0038 */  sw          $fp, 0x38($sp)
/* 03D510 8003D960 AFB70034 */  sw          $s7, 0x34($sp)
/* 03D514 8003D964 AFB60030 */  sw          $s6, 0x30($sp)
/* 03D518 8003D968 AFB5002C */  sw          $s5, 0x2c($sp)
/* 03D51C 8003D96C AFB40028 */  sw          $s4, 0x28($sp)
/* 03D520 8003D970 AFB30024 */  sw          $s3, 0x24($sp)
/* 03D524 8003D974 AFB20020 */  sw          $s2, 0x20($sp)
/* 03D528 8003D978 AFB1001C */  sw          $s1, 0x1c($sp)
/* 03D52C 8003D97C AFB00018 */  sw          $s0, 0x18($sp)
/* 03D530 8003D980 AFA40090 */  sw          $a0, 0x90($sp)
/* 03D534 8003D984 8C910000 */  lw          $s1, 0x0($a0)
/* 03D538 8003D988 00A0B025 */  move        $s6, $a1
/* 03D53C 8003D98C 00E0B825 */  move        $s7, $a3
/* 03D540 8003D990 16200003 */  bnez        $s1, .L8003D9A0
/* 03D544 8003D994 00C0F025 */   move       $fp, $a2
/* 03D548 8003D998 1000006E */  b           .L8003DB54
/* 03D54C 8003D99C 24020001 */   addiu      $v0, $zero, 0x1
.L8003D9A0:
/* 03D550 8003D9A0 27B00070 */  addiu       $s0, $sp, 0x70
/* 03D554 8003D9A4 02002025 */  move        $a0, $s0
/* 03D558 8003D9A8 0C013C58 */  jal         func_8004F160
/* 03D55C 8003D9AC 24050018 */   addiu      $a1, $zero, 0x18
/* 03D560 8003D9B0 27AF007C */  addiu       $t7, $sp, 0x7c
/* 03D564 8003D9B4 AFB00068 */  sw          $s0, 0x68($sp)
/* 03D568 8003D9B8 AFAF006C */  sw          $t7, 0x6c($sp)
/* 03D56C 8003D9BC 27B50068 */  addiu       $s5, $sp, 0x68
.L8003D9C0:
/* 03D570 8003D9C0 12C00004 */  beqz        $s6, .L8003D9D4
/* 03D574 8003D9C4 02202025 */   move       $a0, $s1
/* 03D578 8003D9C8 2405FFFF */  addiu       $a1, $zero, -0x1
/* 03D57C 8003D9CC 10000006 */  b           .L8003D9E8
/* 03D580 8003D9D0 00009825 */   move       $s3, $zero
.L8003D9D4:
/* 03D584 8003D9D4 03C0F809 */  jalr        $fp
/* 03D588 8003D9D8 02E02825 */   move       $a1, $s7
/* 03D58C 8003D9DC 28530000 */  slti        $s3, $v0, 0x0
/* 03D590 8003D9E0 3A730001 */  xori        $s3, $s3, 0x1
/* 03D594 8003D9E4 00402825 */  move        $a1, $v0
.L8003D9E8:
/* 03D598 8003D9E8 00139080 */  sll         $s2, $s3, 2
/* 03D59C 8003D9EC 0232A021 */  addu        $s4, $s1, $s2
/* 03D5A0 8003D9F0 10A0004B */  beqz        $a1, .L8003DB20
/* 03D5A4 8003D9F4 8E900000 */   lw         $s0, 0x0($s4)
/* 03D5A8 8003D9F8 5200004A */  beql        $s0, $zero, .L8003DB24
/* 03D5AC 8003D9FC 8E2B0000 */   lw         $t3, 0x0($s1)
/* 03D5B0 8003DA00 12C00004 */  beqz        $s6, .L8003DA14
/* 03D5B4 8003DA04 02002025 */   move       $a0, $s0
/* 03D5B8 8003DA08 2406FFFF */  addiu       $a2, $zero, -0x1
/* 03D5BC 8003DA0C 10000006 */  b           .L8003DA28
/* 03D5C0 8003DA10 00001825 */   move       $v1, $zero
.L8003DA14:
/* 03D5C4 8003DA14 03C0F809 */  jalr        $fp
/* 03D5C8 8003DA18 02E02825 */   move       $a1, $s7
/* 03D5CC 8003DA1C 28430000 */  slti        $v1, $v0, 0x0
/* 03D5D0 8003DA20 38630001 */  xori        $v1, $v1, 0x1
/* 03D5D4 8003DA24 00403025 */  move        $a2, $v0
.L8003DA28:
/* 03D5D8 8003DA28 00031080 */  sll         $v0, $v1, 2
/* 03D5DC 8003DA2C 0202C021 */  addu        $t8, $s0, $v0
/* 03D5E0 8003DA30 10C00003 */  beqz        $a2, .L8003DA40
/* 03D5E4 8003DA34 8F070000 */   lw         $a3, 0x0($t8)
/* 03D5E8 8003DA38 14E0000F */  bnez        $a3, .L8003DA78
/* 03D5EC 8003DA3C 00000000 */   nop
.L8003DA40:
/* 03D5F0 8003DA40 0012182B */  sltu        $v1, $zero, $s2
/* 03D5F4 8003DA44 0003C880 */  sll         $t9, $v1, 2
/* 03D5F8 8003DA48 2E490001 */  sltiu       $t1, $s2, 0x1
/* 03D5FC 8003DA4C 00095080 */  sll         $t2, $t1, 2
/* 03D600 8003DA50 02394021 */  addu        $t0, $s1, $t9
/* 03D604 8003DA54 AD000000 */  sw          $zero, 0x0($t0)
/* 03D608 8003DA58 02AA2021 */  addu        $a0, $s5, $t2
/* 03D60C 8003DA5C 8C8B0000 */  lw          $t3, 0x0($a0)
/* 03D610 8003DA60 00C02825 */  move        $a1, $a2
/* 03D614 8003DA64 01796021 */  addu        $t4, $t3, $t9
/* 03D618 8003DA68 AD910000 */  sw          $s1, 0x0($t4)
/* 03D61C 8003DA6C AC910000 */  sw          $s1, 0x0($a0)
/* 03D620 8003DA70 1000002B */  b           .L8003DB20
/* 03D624 8003DA74 02008825 */   move       $s1, $s0
.L8003DA78:
/* 03D628 8003DA78 16630011 */  bne         $s3, $v1, .L8003DAC0
/* 03D62C 8003DA7C 2C430001 */   sltiu      $v1, $v0, 0x1
/* 03D630 8003DA80 00036880 */  sll         $t5, $v1, 2
/* 03D634 8003DA84 020D2021 */  addu        $a0, $s0, $t5
/* 03D638 8003DA88 8C8E0000 */  lw          $t6, 0x0($a0)
/* 03D63C 8003DA8C 0002282B */  sltu        $a1, $zero, $v0
/* 03D640 8003DA90 00057880 */  sll         $t7, $a1, 2
/* 03D644 8003DA94 AE8E0000 */  sw          $t6, 0x0($s4)
/* 03D648 8003DA98 AC910000 */  sw          $s1, 0x0($a0)
/* 03D64C 8003DA9C 020FC021 */  addu        $t8, $s0, $t7
/* 03D650 8003DAA0 AF000000 */  sw          $zero, 0x0($t8)
/* 03D654 8003DAA4 02AD3021 */  addu        $a2, $s5, $t5
/* 03D658 8003DAA8 8CD90000 */  lw          $t9, 0x0($a2)
/* 03D65C 8003DAAC 00E08825 */  move        $s1, $a3
/* 03D660 8003DAB0 032F4021 */  addu        $t0, $t9, $t7
/* 03D664 8003DAB4 AD100000 */  sw          $s0, 0x0($t0)
/* 03D668 8003DAB8 1000FFC1 */  b           .L8003D9C0
/* 03D66C 8003DABC ACD00000 */   sw         $s0, 0x0($a2)
.L8003DAC0:
/* 03D670 8003DAC0 0012182B */  sltu        $v1, $zero, $s2
/* 03D674 8003DAC4 00034880 */  sll         $t1, $v1, 2
/* 03D678 8003DAC8 2E4B0001 */  sltiu       $t3, $s2, 0x1
/* 03D67C 8003DACC 000B6080 */  sll         $t4, $t3, 2
/* 03D680 8003DAD0 02295021 */  addu        $t2, $s1, $t1
/* 03D684 8003DAD4 AD400000 */  sw          $zero, 0x0($t2)
/* 03D688 8003DAD8 02AC2021 */  addu        $a0, $s5, $t4
/* 03D68C 8003DADC 8C8D0000 */  lw          $t5, 0x0($a0)
/* 03D690 8003DAE0 0002282B */  sltu        $a1, $zero, $v0
/* 03D694 8003DAE4 00057880 */  sll         $t7, $a1, 2
/* 03D698 8003DAE8 01A97021 */  addu        $t6, $t5, $t1
/* 03D69C 8003DAEC ADD10000 */  sw          $s1, 0x0($t6)
/* 03D6A0 8003DAF0 2C590001 */  sltiu       $t9, $v0, 0x1
/* 03D6A4 8003DAF4 AC910000 */  sw          $s1, 0x0($a0)
/* 03D6A8 8003DAF8 00194080 */  sll         $t0, $t9, 2
/* 03D6AC 8003DAFC 020FC021 */  addu        $t8, $s0, $t7
/* 03D6B0 8003DB00 AF000000 */  sw          $zero, 0x0($t8)
/* 03D6B4 8003DB04 02A83021 */  addu        $a2, $s5, $t0
/* 03D6B8 8003DB08 8CC90000 */  lw          $t1, 0x0($a2)
/* 03D6BC 8003DB0C 012F5021 */  addu        $t2, $t1, $t7
/* 03D6C0 8003DB10 AD500000 */  sw          $s0, 0x0($t2)
/* 03D6C4 8003DB14 ACD00000 */  sw          $s0, 0x0($a2)
/* 03D6C8 8003DB18 1000FFA9 */  b           .L8003D9C0
/* 03D6CC 8003DB1C 00E08825 */   move       $s1, $a3
.L8003DB20:
/* 03D6D0 8003DB20 8E2B0000 */  lw          $t3, 0x0($s1)
.L8003DB24:
/* 03D6D4 8003DB24 8FAC0068 */  lw          $t4, 0x68($sp)
/* 03D6D8 8003DB28 00A01025 */  move        $v0, $a1
/* 03D6DC 8003DB2C AD8B0004 */  sw          $t3, 0x4($t4)
/* 03D6E0 8003DB30 8E2D0004 */  lw          $t5, 0x4($s1)
/* 03D6E4 8003DB34 8FAE006C */  lw          $t6, 0x6c($sp)
/* 03D6E8 8003DB38 ADCD0000 */  sw          $t5, 0x0($t6)
/* 03D6EC 8003DB3C 8FAF0074 */  lw          $t7, 0x74($sp)
/* 03D6F0 8003DB40 AE2F0000 */  sw          $t7, 0x0($s1)
/* 03D6F4 8003DB44 8FB8007C */  lw          $t8, 0x7c($sp)
/* 03D6F8 8003DB48 AE380004 */  sw          $t8, 0x4($s1)
/* 03D6FC 8003DB4C 8FB90090 */  lw          $t9, 0x90($sp)
/* 03D700 8003DB50 AF310000 */  sw          $s1, 0x0($t9)
.L8003DB54:
/* 03D704 8003DB54 8FBF003C */  lw          $ra, 0x3c($sp)
/* 03D708 8003DB58 8FB00018 */  lw          $s0, 0x18($sp)
/* 03D70C 8003DB5C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 03D710 8003DB60 8FB20020 */  lw          $s2, 0x20($sp)
/* 03D714 8003DB64 8FB30024 */  lw          $s3, 0x24($sp)
/* 03D718 8003DB68 8FB40028 */  lw          $s4, 0x28($sp)
/* 03D71C 8003DB6C 8FB5002C */  lw          $s5, 0x2c($sp)
/* 03D720 8003DB70 8FB60030 */  lw          $s6, 0x30($sp)
/* 03D724 8003DB74 8FB70034 */  lw          $s7, 0x34($sp)
/* 03D728 8003DB78 8FBE0038 */  lw          $fp, 0x38($sp)
/* 03D72C 8003DB7C 03E00008 */  jr          $ra
/* 03D730 8003DB80 27BD0090 */   addiu      $sp, $sp, 0x90

glabel func_8003DB84 # 2
/* 03D734 8003DB84 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D738 8003DB88 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D73C 8003DB8C AFA40018 */  sw          $a0, 0x18($sp)
/* 03D740 8003DB90 00A03825 */  move        $a3, $a1
/* 03D744 8003DB94 00807025 */  move        $t6, $a0
/* 03D748 8003DB98 8DC6000C */  lw          $a2, 0xc($t6)
/* 03D74C 8003DB9C 24840004 */  addiu       $a0, $a0, 0x4
/* 03D750 8003DBA0 0C00F655 */  jal         func_8003D954
/* 03D754 8003DBA4 00002825 */   move       $a1, $zero
/* 03D758 8003DBA8 10400003 */  beqz        $v0, .L8003DBB8
/* 03D75C 8003DBAC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03D760 8003DBB0 10000003 */  b           .L8003DBC0
/* 03D764 8003DBB4 00001025 */   move       $v0, $zero
.L8003DBB8:
/* 03D768 8003DBB8 8FAF0018 */  lw          $t7, 0x18($sp)
/* 03D76C 8003DBBC 8DE20004 */  lw          $v0, 0x4($t7)
.L8003DBC0:
/* 03D770 8003DBC0 03E00008 */  jr          $ra
/* 03D774 8003DBC4 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003DBC8 # 3
/* 03D778 8003DBC8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D77C 8003DBCC 00C03825 */  move        $a3, $a2
/* 03D780 8003DBD0 00A03025 */  move        $a2, $a1
/* 03D784 8003DBD4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D788 8003DBD8 AFA5001C */  sw          $a1, 0x1c($sp)
/* 03D78C 8003DBDC AFA40018 */  sw          $a0, 0x18($sp)
/* 03D790 8003DBE0 0C00F655 */  jal         func_8003D954
/* 03D794 8003DBE4 00002825 */   move       $a1, $zero
/* 03D798 8003DBE8 10400003 */  beqz        $v0, .L8003DBF8
/* 03D79C 8003DBEC 8FBF0014 */   lw         $ra, 0x14($sp)
/* 03D7A0 8003DBF0 10000003 */  b           .L8003DC00
/* 03D7A4 8003DBF4 00001025 */   move       $v0, $zero
.L8003DBF8:
/* 03D7A8 8003DBF8 8FAE0018 */  lw          $t6, 0x18($sp)
/* 03D7AC 8003DBFC 8DC20000 */  lw          $v0, 0x0($t6)
.L8003DC00:
/* 03D7B0 8003DC00 03E00008 */  jr          $ra
/* 03D7B4 8003DC04 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003DC08 # 4
/* 03D7B8 8003DC08 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03D7BC 8003DC0C AFBF001C */  sw          $ra, 0x1c($sp)
/* 03D7C0 8003DC10 AFB00018 */  sw          $s0, 0x18($sp)
/* 03D7C4 8003DC14 AFA40020 */  sw          $a0, 0x20($sp)
/* 03D7C8 8003DC18 ACA60008 */  sw          $a2, 0x8($a1)
/* 03D7CC 8003DC1C 8FAE0020 */  lw          $t6, 0x20($sp)
/* 03D7D0 8003DC20 00A08025 */  move        $s0, $a1
/* 03D7D4 8003DC24 00C03825 */  move        $a3, $a2
/* 03D7D8 8003DC28 00002825 */  move        $a1, $zero
/* 03D7DC 8003DC2C 8DC6000C */  lw          $a2, 0xc($t6)
/* 03D7E0 8003DC30 0C00F655 */  jal         func_8003D954
/* 03D7E4 8003DC34 25C40004 */   addiu      $a0, $t6, 0x4
/* 03D7E8 8003DC38 8FA70020 */  lw          $a3, 0x20($sp)
/* 03D7EC 8003DC3C 28450001 */  slti        $a1, $v0, 0x1
/* 03D7F0 8003DC40 00057880 */  sll         $t7, $a1, 2
/* 03D7F4 8003DC44 8CE60004 */  lw          $a2, 0x4($a3)
/* 03D7F8 8003DC48 2CA30001 */  sltiu       $v1, $a1, 0x1
/* 03D7FC 8003DC4C 020FC021 */  addu        $t8, $s0, $t7
/* 03D800 8003DC50 10C00008 */  beqz        $a2, .L8003DC74
/* 03D804 8003DC54 0003C880 */   sll        $t9, $v1, 2
/* 03D808 8003DC58 AF060000 */  sw          $a2, 0x0($t8)
/* 03D80C 8003DC5C 00D92021 */  addu        $a0, $a2, $t9
/* 03D810 8003DC60 8C880000 */  lw          $t0, 0x0($a0)
/* 03D814 8003DC64 02194821 */  addu        $t1, $s0, $t9
/* 03D818 8003DC68 AD280000 */  sw          $t0, 0x0($t1)
/* 03D81C 8003DC6C 10000003 */  b           .L8003DC7C
/* 03D820 8003DC70 AC800000 */   sw         $zero, 0x0($a0)
.L8003DC74:
/* 03D824 8003DC74 AE000004 */  sw          $zero, 0x4($s0)
/* 03D828 8003DC78 AE000000 */  sw          $zero, 0x0($s0)
.L8003DC7C:
/* 03D82C 8003DC7C ACF00004 */  sw          $s0, 0x4($a3)
/* 03D830 8003DC80 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03D834 8003DC84 02001025 */  move        $v0, $s0
/* 03D838 8003DC88 8FB00018 */  lw          $s0, 0x18($sp)
/* 03D83C 8003DC8C 03E00008 */  jr          $ra
/* 03D840 8003DC90 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_8003DC94 # 5
/* 03D844 8003DC94 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 03D848 8003DC98 AFB00018 */  sw          $s0, 0x18($sp)
/* 03D84C 8003DC9C 00808025 */  move        $s0, $a0
/* 03D850 8003DCA0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03D854 8003DCA4 00A03825 */  move        $a3, $a1
/* 03D858 8003DCA8 8E06000C */  lw          $a2, 0xc($s0)
/* 03D85C 8003DCAC 24840004 */  addiu       $a0, $a0, 0x4
/* 03D860 8003DCB0 AFA40020 */  sw          $a0, 0x20($sp)
/* 03D864 8003DCB4 0C00F655 */  jal         func_8003D954
/* 03D868 8003DCB8 00002825 */   move       $a1, $zero
/* 03D86C 8003DCBC 10400003 */  beqz        $v0, .L8003DCCC
/* 03D870 8003DCC0 8FA40020 */   lw         $a0, 0x20($sp)
/* 03D874 8003DCC4 10000014 */  b           .L8003DD18
/* 03D878 8003DCC8 00001025 */   move       $v0, $zero
.L8003DCCC:
/* 03D87C 8003DCCC 8E030004 */  lw          $v1, 0x4($s0)
/* 03D880 8003DCD0 24050001 */  addiu       $a1, $zero, 0x1
/* 03D884 8003DCD4 00003025 */  move        $a2, $zero
/* 03D888 8003DCD8 8C620004 */  lw          $v0, 0x4($v1)
/* 03D88C 8003DCDC 00003825 */  move        $a3, $zero
/* 03D890 8003DCE0 8C680000 */  lw          $t0, 0x0($v1)
/* 03D894 8003DCE4 5040000B */  beql        $v0, $zero, .L8003DD14
/* 03D898 8003DCE8 AE080004 */   sw         $t0, 0x4($s0)
/* 03D89C 8003DCEC AE020004 */  sw          $v0, 0x4($s0)
/* 03D8A0 8003DCF0 AFA80024 */  sw          $t0, 0x24($sp)
/* 03D8A4 8003DCF4 0C00F655 */  jal         func_8003D954
/* 03D8A8 8003DCF8 AFA3002C */   sw         $v1, 0x2c($sp)
/* 03D8AC 8003DCFC 8FA80024 */  lw          $t0, 0x24($sp)
/* 03D8B0 8003DD00 8E0E0004 */  lw          $t6, 0x4($s0)
/* 03D8B4 8003DD04 8FA3002C */  lw          $v1, 0x2c($sp)
/* 03D8B8 8003DD08 10000002 */  b           .L8003DD14
/* 03D8BC 8003DD0C ADC80000 */   sw         $t0, 0x0($t6)
/* 03D8C0 8003DD10 AE080004 */  sw          $t0, 0x4($s0)
.L8003DD14:
/* 03D8C4 8003DD14 00601025 */  move        $v0, $v1
.L8003DD18:
/* 03D8C8 8003DD18 8FBF001C */  lw          $ra, 0x1c($sp)
/* 03D8CC 8003DD1C 8FB00018 */  lw          $s0, 0x18($sp)
/* 03D8D0 8003DD20 27BD0030 */  addiu       $sp, $sp, 0x30
/* 03D8D4 8003DD24 03E00008 */  jr          $ra
/* 03D8D8 8003DD28 00000000 */   nop

glabel func_8003DD2C # 6
/* 03D8DC 8003DD2C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03D8E0 8003DD30 AFB2001C */  sw          $s2, 0x1c($sp)
/* 03D8E4 8003DD34 AFB00014 */  sw          $s0, 0x14($sp)
/* 03D8E8 8003DD38 00808025 */  move        $s0, $a0
/* 03D8EC 8003DD3C 00A09025 */  move        $s2, $a1
/* 03D8F0 8003DD40 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D8F4 8003DD44 AFB30020 */  sw          $s3, 0x20($sp)
/* 03D8F8 8003DD48 10800018 */  beqz        $a0, .L8003DDAC
/* 03D8FC 8003DD4C AFB10018 */   sw         $s1, 0x18($sp)
/* 03D900 8003DD50 3C13800A */  lui         $s3, %hi(D_800A2A10)
/* 03D904 8003DD54 26732A10 */  addiu       $s3, $s3, %lo(D_800A2A10)
/* 03D908 8003DD58 26510001 */  addiu       $s1, $s2, 0x1
.L8003DD5C:
/* 03D90C 8003DD5C 02202825 */  move        $a1, $s1
/* 03D910 8003DD60 0C00F74B */  jal         func_8003DD2C
/* 03D914 8003DD64 8E040000 */   lw         $a0, 0x0($s0)
/* 03D918 8003DD68 50400004 */  beql        $v0, $zero, .L8003DD7C
/* 03D91C 8003DD6C 8E790000 */   lw         $t9, 0x0($s3)
/* 03D920 8003DD70 1000000F */  b           .L8003DDB0
/* 03D924 8003DD74 24020001 */   addiu      $v0, $zero, 0x1
/* 03D928 8003DD78 8E790000 */  lw          $t9, 0x0($s3)
.L8003DD7C:
/* 03D92C 8003DD7C 02002025 */  move        $a0, $s0
/* 03D930 8003DD80 02402825 */  move        $a1, $s2
/* 03D934 8003DD84 0320F809 */  jalr        $t9
/* 03D938 8003DD88 00000000 */   nop
/* 03D93C 8003DD8C 50400004 */  beql        $v0, $zero, .L8003DDA0
/* 03D940 8003DD90 8E100004 */   lw         $s0, 0x4($s0)
/* 03D944 8003DD94 10000006 */  b           .L8003DDB0
/* 03D948 8003DD98 24020001 */   addiu      $v0, $zero, 0x1
/* 03D94C 8003DD9C 8E100004 */  lw          $s0, 0x4($s0)
.L8003DDA0:
/* 03D950 8003DDA0 02209025 */  move        $s2, $s1
/* 03D954 8003DDA4 5600FFED */  bnel        $s0, $zero, .L8003DD5C
/* 03D958 8003DDA8 26510001 */   addiu      $s1, $s2, 0x1
.L8003DDAC:
/* 03D95C 8003DDAC 00001025 */  move        $v0, $zero
.L8003DDB0:
/* 03D960 8003DDB0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03D964 8003DDB4 8FB00014 */  lw          $s0, 0x14($sp)
/* 03D968 8003DDB8 8FB10018 */  lw          $s1, 0x18($sp)
/* 03D96C 8003DDBC 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03D970 8003DDC0 8FB30020 */  lw          $s3, 0x20($sp)
/* 03D974 8003DDC4 03E00008 */  jr          $ra
/* 03D978 8003DDC8 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8003DDCC # 7
/* 03D97C 8003DDCC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03D980 8003DDD0 3C01800A */  lui         $at, %hi(D_800A2A10)
/* 03D984 8003DDD4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03D988 8003DDD8 AC252A10 */  sw          $a1, %lo(D_800A2A10)($at)
/* 03D98C 8003DDDC 0C00F74B */  jal         func_8003DD2C
/* 03D990 8003DDE0 00002825 */   move       $a1, $zero
/* 03D994 8003DDE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03D998 8003DDE8 3C01800A */  lui         $at, %hi(D_800A2A10)
/* 03D99C 8003DDEC AC202A10 */  sw          $zero, %lo(D_800A2A10)($at)
/* 03D9A0 8003DDF0 03E00008 */  jr          $ra
/* 03D9A4 8003DDF4 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003DDF8 # 8
/* 03D9A8 8003DDF8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03D9AC 8003DDFC AFB2001C */  sw          $s2, 0x1c($sp)
/* 03D9B0 8003DE00 AFB00014 */  sw          $s0, 0x14($sp)
/* 03D9B4 8003DE04 00808025 */  move        $s0, $a0
/* 03D9B8 8003DE08 00A09025 */  move        $s2, $a1
/* 03D9BC 8003DE0C AFBF0024 */  sw          $ra, 0x24($sp)
/* 03D9C0 8003DE10 AFB30020 */  sw          $s3, 0x20($sp)
/* 03D9C4 8003DE14 10800018 */  beqz        $a0, .L8003DE78
/* 03D9C8 8003DE18 AFB10018 */   sw         $s1, 0x18($sp)
/* 03D9CC 8003DE1C 3C13800A */  lui         $s3, %hi(D_800A2A10)
/* 03D9D0 8003DE20 26732A10 */  addiu       $s3, $s3, %lo(D_800A2A10)
/* 03D9D4 8003DE24 26510001 */  addiu       $s1, $s2, 0x1
.L8003DE28:
/* 03D9D8 8003DE28 02202825 */  move        $a1, $s1
/* 03D9DC 8003DE2C 0C00F77E */  jal         func_8003DDF8
/* 03D9E0 8003DE30 8E040004 */   lw         $a0, 0x4($s0)
/* 03D9E4 8003DE34 50400004 */  beql        $v0, $zero, .L8003DE48
/* 03D9E8 8003DE38 8E790000 */   lw         $t9, 0x0($s3)
/* 03D9EC 8003DE3C 1000000F */  b           .L8003DE7C
/* 03D9F0 8003DE40 24020001 */   addiu      $v0, $zero, 0x1
/* 03D9F4 8003DE44 8E790000 */  lw          $t9, 0x0($s3)
.L8003DE48:
/* 03D9F8 8003DE48 02002025 */  move        $a0, $s0
/* 03D9FC 8003DE4C 02402825 */  move        $a1, $s2
/* 03DA00 8003DE50 0320F809 */  jalr        $t9
/* 03DA04 8003DE54 00000000 */   nop
/* 03DA08 8003DE58 50400004 */  beql        $v0, $zero, .L8003DE6C
/* 03DA0C 8003DE5C 8E100000 */   lw         $s0, 0x0($s0)
/* 03DA10 8003DE60 10000006 */  b           .L8003DE7C
/* 03DA14 8003DE64 24020001 */   addiu      $v0, $zero, 0x1
/* 03DA18 8003DE68 8E100000 */  lw          $s0, 0x0($s0)
.L8003DE6C:
/* 03DA1C 8003DE6C 02209025 */  move        $s2, $s1
/* 03DA20 8003DE70 5600FFED */  bnel        $s0, $zero, .L8003DE28
/* 03DA24 8003DE74 26510001 */   addiu      $s1, $s2, 0x1
.L8003DE78:
/* 03DA28 8003DE78 00001025 */  move        $v0, $zero
.L8003DE7C:
/* 03DA2C 8003DE7C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03DA30 8003DE80 8FB00014 */  lw          $s0, 0x14($sp)
/* 03DA34 8003DE84 8FB10018 */  lw          $s1, 0x18($sp)
/* 03DA38 8003DE88 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03DA3C 8003DE8C 8FB30020 */  lw          $s3, 0x20($sp)
/* 03DA40 8003DE90 03E00008 */  jr          $ra
/* 03DA44 8003DE94 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8003DE98 # 9
/* 03DA48 8003DE98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03DA4C 8003DE9C 3C01800A */  lui         $at, %hi(D_800A2A10)
/* 03DA50 8003DEA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03DA54 8003DEA4 AC252A10 */  sw          $a1, %lo(D_800A2A10)($at)
/* 03DA58 8003DEA8 0C00F77E */  jal         func_8003DDF8
/* 03DA5C 8003DEAC 00002825 */   move       $a1, $zero
/* 03DA60 8003DEB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03DA64 8003DEB4 3C01800A */  lui         $at, %hi(D_800A2A10)
/* 03DA68 8003DEB8 AC202A10 */  sw          $zero, %lo(D_800A2A10)($at)
/* 03DA6C 8003DEBC 03E00008 */  jr          $ra
/* 03DA70 8003DEC0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003DEC4 # 10
/* 03DA74 8003DEC4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 03DA78 8003DEC8 AFB2001C */  sw          $s2, 0x1c($sp)
/* 03DA7C 8003DECC AFB00014 */  sw          $s0, 0x14($sp)
/* 03DA80 8003DED0 00A08025 */  move        $s0, $a1
/* 03DA84 8003DED4 00809025 */  move        $s2, $a0
/* 03DA88 8003DED8 AFBF0024 */  sw          $ra, 0x24($sp)
/* 03DA8C 8003DEDC AFB30020 */  sw          $s3, 0x20($sp)
/* 03DA90 8003DEE0 10800025 */  beqz        $a0, .L8003DF78
/* 03DA94 8003DEE4 AFB10018 */   sw         $s1, 0x18($sp)
/* 03DA98 8003DEE8 3C13800A */  lui         $s3, %hi(D_800A2A10)
/* 03DA9C 8003DEEC 26732A10 */  addiu       $s3, $s3, %lo(D_800A2A10)
/* 03DAA0 8003DEF0 8E790000 */  lw          $t9, 0x0($s3)
.L8003DEF4:
/* 03DAA4 8003DEF4 02402025 */  move        $a0, $s2
/* 03DAA8 8003DEF8 02002825 */  move        $a1, $s0
/* 03DAAC 8003DEFC 0320F809 */  jalr        $t9
/* 03DAB0 8003DF00 00000000 */   nop
/* 03DAB4 8003DF04 10400003 */  beqz        $v0, .L8003DF14
/* 03DAB8 8003DF08 26110001 */   addiu      $s1, $s0, 0x1
/* 03DABC 8003DF0C 1000001B */  b           .L8003DF7C
/* 03DAC0 8003DF10 24020001 */   addiu      $v0, $zero, 0x1
.L8003DF14:
/* 03DAC4 8003DF14 8E440004 */  lw          $a0, 0x4($s2)
/* 03DAC8 8003DF18 0C00F7B1 */  jal         func_8003DEC4
/* 03DACC 8003DF1C 02202825 */   move       $a1, $s1
/* 03DAD0 8003DF20 50400004 */  beql        $v0, $zero, .L8003DF34
/* 03DAD4 8003DF24 8E520000 */   lw         $s2, 0x0($s2)
/* 03DAD8 8003DF28 10000014 */  b           .L8003DF7C
/* 03DADC 8003DF2C 24020001 */   addiu      $v0, $zero, 0x1
/* 03DAE0 8003DF30 8E520000 */  lw          $s2, 0x0($s2)
.L8003DF34:
/* 03DAE4 8003DF34 02208025 */  move        $s0, $s1
/* 03DAE8 8003DF38 1240000D */  beqz        $s2, .L8003DF70
/* 03DAEC 8003DF3C 00000000 */   nop
/* 03DAF0 8003DF40 1A20000B */  blez        $s1, .L8003DF70
/* 03DAF4 8003DF44 00001025 */   move       $v0, $zero
/* 03DAF8 8003DF48 32240003 */  andi        $a0, $s1, 0x3
/* 03DAFC 8003DF4C 10800005 */  beqz        $a0, .L8003DF64
/* 03DB00 8003DF50 00801825 */   move       $v1, $a0
/* 03DB04 8003DF54 24420001 */  addiu       $v0, $v0, 0x1
.L8003DF58:
/* 03DB08 8003DF58 5462FFFF */  bnel        $v1, $v0, .L8003DF58
/* 03DB0C 8003DF5C 24420001 */   addiu      $v0, $v0, 0x1
/* 03DB10 8003DF60 10500003 */  beq         $v0, $s0, .L8003DF70
.L8003DF64:
/* 03DB14 8003DF64 24420004 */   addiu      $v0, $v0, 0x4
.L8003DF68:
/* 03DB18 8003DF68 5450FFFF */  bnel        $v0, $s0, .L8003DF68
/* 03DB1C 8003DF6C 24420004 */   addiu      $v0, $v0, 0x4
.L8003DF70:
/* 03DB20 8003DF70 5640FFE0 */  bnel        $s2, $zero, .L8003DEF4
/* 03DB24 8003DF74 8E790000 */   lw         $t9, 0x0($s3)
.L8003DF78:
/* 03DB28 8003DF78 00001025 */  move        $v0, $zero
.L8003DF7C:
/* 03DB2C 8003DF7C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 03DB30 8003DF80 8FB00014 */  lw          $s0, 0x14($sp)
/* 03DB34 8003DF84 8FB10018 */  lw          $s1, 0x18($sp)
/* 03DB38 8003DF88 8FB2001C */  lw          $s2, 0x1c($sp)
/* 03DB3C 8003DF8C 8FB30020 */  lw          $s3, 0x20($sp)
/* 03DB40 8003DF90 03E00008 */  jr          $ra
/* 03DB44 8003DF94 27BD0028 */   addiu      $sp, $sp, 0x28

glabel func_8003DF98 # 11
/* 03DB48 8003DF98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03DB4C 8003DF9C 3C01800A */  lui         $at, %hi(D_800A2A10)
/* 03DB50 8003DFA0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 03DB54 8003DFA4 AC252A10 */  sw          $a1, %lo(D_800A2A10)($at)
/* 03DB58 8003DFA8 0C00F7B1 */  jal         func_8003DEC4
/* 03DB5C 8003DFAC 00002825 */   move       $a1, $zero
/* 03DB60 8003DFB0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 03DB64 8003DFB4 3C01800A */  lui         $at, %hi(D_800A2A10)
/* 03DB68 8003DFB8 AC202A10 */  sw          $zero, %lo(D_800A2A10)($at)
/* 03DB6C 8003DFBC 03E00008 */  jr          $ra
/* 03DB70 8003DFC0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8003DFC4 # 12
/* 03DB74 8003DFC4 03E00008 */  jr          $ra
/* 03DB78 8003DFC8 00000000 */   nop

glabel func_8003DFCC # 13
/* 03DB7C 8003DFCC 03E00008 */  jr          $ra
/* 03DB80 8003DFD0 00000000 */   nop

glabel func_8003DFD4 # 14
/* 03DB84 8003DFD4 AFA40000 */  sw          $a0, 0x0($sp)
/* 03DB88 8003DFD8 AFA50004 */  sw          $a1, 0x4($sp)
/* 03DB8C 8003DFDC 03E00008 */  jr          $ra
/* 03DB90 8003DFE0 00001025 */   move       $v0, $zero
/* 03DB94 8003DFE4 00000000 */  nop
/* 03DB98 8003DFE8 00000000 */  nop
/* 03DB9C 8003DFEC 00000000 */  nop
