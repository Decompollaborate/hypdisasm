.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005BAC0 # 0
/* 05B670 8005BAC0 3C0A8010 */  lui         $t2, %hi(D_80105E24)
/* 05B674 8005BAC4 254A5E24 */  addiu       $t2, $t2, %lo(D_80105E24)
/* 05B678 8005BAC8 8D480000 */  lw          $t0, 0x0($t2)
/* 05B67C 8005BACC 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 05B680 8005BAD0 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05B684 8005BAD4 3C03A460 */  lui         $v1, 0xa460
/* 05B688 8005BAD8 34630010 */  ori         $v1, $v1, 0x10
/* 05B68C 8005BADC 8C780000 */  lw          $t8, 0x0($v1)
/* 05B690 8005BAE0 950E001A */  lhu         $t6, 0x1a($t0)
/* 05B694 8005BAE4 25080014 */  addiu       $t0, $t0, 0x14
/* 05B698 8005BAE8 AFB80030 */  sw          $t8, 0x30($sp)
/* 05B69C 8005BAEC 8FB90030 */  lw          $t9, 0x30($sp)
/* 05B6A0 8005BAF0 000E78C0 */  sll         $t7, $t6, 3
/* 05B6A4 8005BAF4 01EE7821 */  addu        $t7, $t7, $t6
/* 05B6A8 8005BAF8 000F7880 */  sll         $t7, $t7, 2
/* 05B6AC 8005BAFC 010F4821 */  addu        $t1, $t0, $t7
/* 05B6B0 8005BB00 332C0001 */  andi        $t4, $t9, 0x1
/* 05B6B4 8005BB04 1180000C */  beqz        $t4, .L8005BB38
/* 05B6B8 8005BB08 25290018 */   addiu      $t1, $t1, 0x18
/* 05B6BC 8005BB0C 3C04800A */  lui         $a0, %hi(__OSGlobalIntMask)
/* 05B6C0 8005BB10 24843130 */  addiu       $a0, $a0, %lo(__OSGlobalIntMask)
/* 05B6C4 8005BB14 8C8D0000 */  lw          $t5, 0x0($a0)
/* 05B6C8 8005BB18 2401F7FF */  addiu       $at, $zero, -0x801
/* 05B6CC 8005BB1C 240F001D */  addiu       $t7, $zero, 0x1d
/* 05B6D0 8005BB20 01A17024 */  and         $t6, $t5, $at
/* 05B6D4 8005BB24 AC8E0000 */  sw          $t6, 0x0($a0)
/* 05B6D8 8005BB28 0C01703D */  jal         func_8005C0F4
/* 05B6DC 8005BB2C AD2F0000 */   sw         $t7, 0x0($t1)
/* 05B6E0 8005BB30 1000013F */  b           .L8005C030
/* 05B6E4 8005BB34 24020001 */   addiu      $v0, $zero, 0x1
.L8005BB38:
/* 05B6E8 8005BB38 8C780000 */  lw          $t8, 0x0($v1)
/* 05B6EC 8005BB3C 3C04A500 */  lui         $a0, 0xa500
/* 05B6F0 8005BB40 34840508 */  ori         $a0, $a0, 0x508
/* 05B6F4 8005BB44 AFB80030 */  sw          $t8, 0x30($sp)
/* 05B6F8 8005BB48 8FB90030 */  lw          $t9, 0x30($sp)
/* 05B6FC 8005BB4C 3C010100 */  lui         $at, 0x100
/* 05B700 8005BB50 332C0003 */  andi        $t4, $t9, 0x3
/* 05B704 8005BB54 51800008 */  beql        $t4, $zero, .L8005BB78
/* 05B708 8005BB58 8C850000 */   lw         $a1, 0x0($a0)
/* 05B70C 8005BB5C 8C6D0000 */  lw          $t5, 0x0($v1)
.L8005BB60:
/* 05B710 8005BB60 AFAD0030 */  sw          $t5, 0x30($sp)
/* 05B714 8005BB64 8FAE0030 */  lw          $t6, 0x30($sp)
/* 05B718 8005BB68 31CF0003 */  andi        $t7, $t6, 0x3
/* 05B71C 8005BB6C 55E0FFFC */  bnel        $t7, $zero, .L8005BB60
/* 05B720 8005BB70 8C6D0000 */   lw         $t5, 0x0($v1)
/* 05B724 8005BB74 8C850000 */  lw          $a1, 0x0($a0)
.L8005BB78:
/* 05B728 8005BB78 3C0B0200 */  lui         $t3, 0x200
/* 05B72C 8005BB7C 0005C180 */  sll         $t8, $a1, 6
/* 05B730 8005BB80 07030015 */  bgezl       $t8, .L8005BBD8
/* 05B734 8005BB84 8D020000 */   lw         $v0, 0x0($t0)
/* 05B738 8005BB88 8C790000 */  lw          $t9, 0x0($v1)
/* 05B73C 8005BB8C AFB90030 */  sw          $t9, 0x30($sp)
/* 05B740 8005BB90 8FAC0030 */  lw          $t4, 0x30($sp)
/* 05B744 8005BB94 318D0003 */  andi        $t5, $t4, 0x3
/* 05B748 8005BB98 51A00008 */  beql        $t5, $zero, .L8005BBBC
/* 05B74C 8005BB9C 8D190010 */   lw         $t9, 0x10($t0)
/* 05B750 8005BBA0 8C6E0000 */  lw          $t6, 0x0($v1)
.L8005BBA4:
/* 05B754 8005BBA4 AFAE0030 */  sw          $t6, 0x30($sp)
/* 05B758 8005BBA8 8FAF0030 */  lw          $t7, 0x30($sp)
/* 05B75C 8005BBAC 31F80003 */  andi        $t8, $t7, 0x3
/* 05B760 8005BBB0 5700FFFC */  bnel        $t8, $zero, .L8005BBA4
/* 05B764 8005BBB4 8C6E0000 */   lw         $t6, 0x0($v1)
/* 05B768 8005BBB8 8D190010 */  lw          $t9, 0x10($t0)
.L8005BBBC:
/* 05B76C 8005BBBC 3C0DA500 */  lui         $t5, %hi(D_A5000510)
/* 05B770 8005BBC0 00001025 */  move        $v0, $zero
/* 05B774 8005BBC4 03216025 */  or          $t4, $t9, $at
/* 05B778 8005BBC8 ADAC0510 */  sw          $t4, %lo(D_A5000510)($t5)
/* 05B77C 8005BBCC 10000118 */  b           .L8005C030
/* 05B780 8005BBD0 AD200000 */   sw         $zero, 0x0($t1)
/* 05B784 8005BBD4 8D020000 */  lw          $v0, 0x0($t0)
.L8005BBD8:
/* 05B788 8005BBD8 24060002 */  addiu       $a2, $zero, 0x2
/* 05B78C 8005BBDC 00057100 */  sll         $t6, $a1, 4
/* 05B790 8005BBE0 14C20003 */  bne         $a2, $v0, .L8005BBF0
/* 05B794 8005BBE4 00000000 */   nop
/* 05B798 8005BBE8 10000111 */  b           .L8005C030
/* 05B79C 8005BBEC 24020001 */   addiu      $v0, $zero, 0x1
.L8005BBF0:
/* 05B7A0 8005BBF0 05C3001F */  bgezl       $t6, .L8005BC70
/* 05B7A4 8005BBF4 24010001 */   addiu      $at, $zero, 0x1
/* 05B7A8 8005BBF8 8C6F0000 */  lw          $t7, 0x0($v1)
/* 05B7AC 8005BBFC AFAF0030 */  sw          $t7, 0x30($sp)
/* 05B7B0 8005BC00 8FB80030 */  lw          $t8, 0x30($sp)
/* 05B7B4 8005BC04 240F0016 */  addiu       $t7, $zero, 0x16
/* 05B7B8 8005BC08 33190003 */  andi        $t9, $t8, 0x3
/* 05B7BC 8005BC0C 53200008 */  beql        $t9, $zero, .L8005BC30
/* 05B7C0 8005BC10 8C800000 */   lw         $zero, 0x0($a0)
/* 05B7C4 8005BC14 8C6C0000 */  lw          $t4, 0x0($v1)
.L8005BC18:
/* 05B7C8 8005BC18 AFAC0030 */  sw          $t4, 0x30($sp)
/* 05B7CC 8005BC1C 8FAD0030 */  lw          $t5, 0x30($sp)
/* 05B7D0 8005BC20 31AE0003 */  andi        $t6, $t5, 0x3
/* 05B7D4 8005BC24 55C0FFFC */  bnel        $t6, $zero, .L8005BC18
/* 05B7D8 8005BC28 8C6C0000 */   lw         $t4, 0x0($v1)
/* 05B7DC 8005BC2C 8C800000 */  lw          $zero, 0x0($a0)
.L8005BC30:
/* 05B7E0 8005BC30 0C01703D */  jal         func_8005C0F4
/* 05B7E4 8005BC34 AD2F0000 */   sw         $t7, 0x0($t1)
/* 05B7E8 8005BC38 3C03A460 */  lui         $v1, 0xa460
/* 05B7EC 8005BC3C 34630010 */  ori         $v1, $v1, 0x10
/* 05B7F0 8005BC40 3C04800A */  lui         $a0, %hi(__OSGlobalIntMask)
/* 05B7F4 8005BC44 24060002 */  addiu       $a2, $zero, 0x2
/* 05B7F8 8005BC48 24843130 */  addiu       $a0, $a0, %lo(__OSGlobalIntMask)
/* 05B7FC 8005BC4C AC660000 */  sw          $a2, 0x0($v1)
/* 05B800 8005BC50 8C980000 */  lw          $t8, 0x0($a0)
/* 05B804 8005BC54 3C010010 */  lui         $at, 0x10
/* 05B808 8005BC58 34210401 */  ori         $at, $at, 0x401
/* 05B80C 8005BC5C 0301C825 */  or          $t9, $t8, $at
/* 05B810 8005BC60 AC990000 */  sw          $t9, 0x0($a0)
/* 05B814 8005BC64 100000F2 */  b           .L8005C030
/* 05B818 8005BC68 24020001 */   addiu      $v0, $zero, 0x1
/* 05B81C 8005BC6C 24010001 */  addiu       $at, $zero, 0x1
.L8005BC70:
/* 05B820 8005BC70 1441002F */  bne         $v0, $at, .L8005BD30
/* 05B824 8005BC74 00056040 */   sll        $t4, $a1, 1
/* 05B828 8005BC78 0582001D */  bltzl       $t4, .L8005BCF0
/* 05B82C 8005BC7C 8D2F0004 */   lw         $t7, 0x4($t1)
/* 05B830 8005BC80 950D0004 */  lhu         $t5, 0x4($t0)
/* 05B834 8005BC84 8D0F0008 */  lw          $t7, 0x8($t0)
/* 05B838 8005BC88 3C04800A */  lui         $a0, %hi(__OSGlobalIntMask)
/* 05B83C 8005BC8C 000D7080 */  sll         $t6, $t5, 2
/* 05B840 8005BC90 01CD7021 */  addu        $t6, $t6, $t5
/* 05B844 8005BC94 000E7080 */  sll         $t6, $t6, 2
/* 05B848 8005BC98 01CD7021 */  addu        $t6, $t6, $t5
/* 05B84C 8005BC9C 000E7080 */  sll         $t6, $t6, 2
/* 05B850 8005BCA0 01CD7021 */  addu        $t6, $t6, $t5
/* 05B854 8005BCA4 25F80001 */  addiu       $t8, $t7, 0x1
/* 05B858 8005BCA8 11D80006 */  beq         $t6, $t8, .L8005BCC4
/* 05B85C 8005BCAC 24843130 */   addiu      $a0, $a0, %lo(__OSGlobalIntMask)
/* 05B860 8005BCB0 24190018 */  addiu       $t9, $zero, 0x18
/* 05B864 8005BCB4 0C017010 */  jal         func_8005C040
/* 05B868 8005BCB8 AD390000 */   sw         $t9, 0x0($t1)
/* 05B86C 8005BCBC 100000DC */  b           .L8005C030
/* 05B870 8005BCC0 24020001 */   addiu      $v0, $zero, 0x1
.L8005BCC4:
/* 05B874 8005BCC4 AC660000 */  sw          $a2, 0x0($v1)
/* 05B878 8005BCC8 8C8C0000 */  lw          $t4, 0x0($a0)
/* 05B87C 8005BCCC 3C010010 */  lui         $at, 0x10
/* 05B880 8005BCD0 34210401 */  ori         $at, $at, 0x401
/* 05B884 8005BCD4 01816825 */  or          $t5, $t4, $at
/* 05B888 8005BCD8 AC8D0000 */  sw          $t5, 0x0($a0)
/* 05B88C 8005BCDC 0C01703D */  jal         func_8005C0F4
/* 05B890 8005BCE0 AD200000 */   sw         $zero, 0x0($t1)
/* 05B894 8005BCE4 100000D2 */  b           .L8005C030
/* 05B898 8005BCE8 24020001 */   addiu      $v0, $zero, 0x1
/* 05B89C 8005BCEC 8D2F0004 */  lw          $t7, 0x4($t1)
.L8005BCF0:
/* 05B8A0 8005BCF0 8D2E000C */  lw          $t6, 0xc($t1)
/* 05B8A4 8005BCF4 3C060500 */  lui         $a2, 0x500
/* 05B8A8 8005BCF8 34C60400 */  ori         $a2, $a2, 0x400
/* 05B8AC 8005BCFC 01EEC021 */  addu        $t8, $t7, $t6
/* 05B8B0 8005BD00 AD380004 */  sw          $t8, 0x4($t1)
/* 05B8B4 8005BD04 8D190008 */  lw          $t9, 0x8($t0)
/* 05B8B8 8005BD08 24050001 */  addiu       $a1, $zero, 0x1
/* 05B8BC 8005BD0C 272C0001 */  addiu       $t4, $t9, 0x1
/* 05B8C0 8005BD10 AD0C0008 */  sw          $t4, 0x8($t0)
/* 05B8C4 8005BD14 8D2D000C */  lw          $t5, 0xc($t1)
/* 05B8C8 8005BD18 8D270004 */  lw          $a3, 0x4($t1)
/* 05B8CC 8005BD1C 8D440000 */  lw          $a0, 0x0($t2)
/* 05B8D0 8005BD20 0C0162B4 */  jal         func_80058AD0
/* 05B8D4 8005BD24 AFAD0010 */   sw         $t5, 0x10($sp)
/* 05B8D8 8005BD28 100000C1 */  b           .L8005C030
/* 05B8DC 8005BD2C 24020001 */   addiu      $v0, $zero, 0x1
.L8005BD30:
/* 05B8E0 8005BD30 144000BC */  bnez        $v0, .L8005C024
/* 05B8E4 8005BD34 240F0004 */   addiu      $t7, $zero, 0x4
/* 05B8E8 8005BD38 950F0004 */  lhu         $t7, 0x4($t0)
/* 05B8EC 8005BD3C 24070003 */  addiu       $a3, $zero, 0x3
/* 05B8F0 8005BD40 54EF0013 */  bnel        $a3, $t7, .L8005BD90
/* 05B8F4 8005BD44 8D2F0004 */   lw         $t7, 0x4($t1)
/* 05B8F8 8005BD48 8D380010 */  lw          $t8, 0x10($t1)
/* 05B8FC 8005BD4C 8D0E0008 */  lw          $t6, 0x8($t0)
/* 05B900 8005BD50 00056040 */  sll         $t4, $a1, 1
/* 05B904 8005BD54 27190011 */  addiu       $t9, $t8, 0x11
/* 05B908 8005BD58 032E082A */  slt         $at, $t9, $t6
/* 05B90C 8005BD5C 10200005 */  beqz        $at, .L8005BD74
/* 05B910 8005BD60 00000000 */   nop
/* 05B914 8005BD64 0C017010 */  jal         func_8005C040
/* 05B918 8005BD68 AD200000 */   sw         $zero, 0x0($t1)
/* 05B91C 8005BD6C 100000B0 */  b           .L8005C030
/* 05B920 8005BD70 24020001 */   addiu      $v0, $zero, 0x1
.L8005BD74:
/* 05B924 8005BD74 05800009 */  bltz        $t4, .L8005BD9C
/* 05B928 8005BD78 240D0017 */   addiu      $t5, $zero, 0x17
/* 05B92C 8005BD7C 0C017010 */  jal         func_8005C040
/* 05B930 8005BD80 AD2D0000 */   sw         $t5, 0x0($t1)
/* 05B934 8005BD84 100000AA */  b           .L8005C030
/* 05B938 8005BD88 24020001 */   addiu      $v0, $zero, 0x1
/* 05B93C 8005BD8C 8D2F0004 */  lw          $t7, 0x4($t1)
.L8005BD90:
/* 05B940 8005BD90 8D38000C */  lw          $t8, 0xc($t1)
/* 05B944 8005BD94 01F87021 */  addu        $t6, $t7, $t8
/* 05B948 8005BD98 AD2E0004 */  sw          $t6, 0x4($t1)
.L8005BD9C:
/* 05B94C 8005BD9C 3C19A500 */  lui         $t9, %hi(D_A5000510)
/* 05B950 8005BDA0 8F220510 */  lw          $v0, %lo(D_A5000510)($t9)
/* 05B954 8005BDA4 0005C8C0 */  sll         $t9, $a1, 3
/* 05B958 8005BDA8 00026280 */  sll         $t4, $v0, 10
/* 05B95C 8005BDAC 05810002 */  bgez        $t4, .L8005BDB8
/* 05B960 8005BDB0 00026A40 */   sll        $t5, $v0, 9
/* 05B964 8005BDB4 05A00003 */  bltz        $t5, .L8005BDC4
.L8005BDB8:
/* 05B968 8005BDB8 004B7824 */   and        $t7, $v0, $t3
/* 05B96C 8005BDBC 11E00019 */  beqz        $t7, .L8005BE24
/* 05B970 8005BDC0 00000000 */   nop
.L8005BDC4:
/* 05B974 8005BDC4 8D240010 */  lw          $a0, 0x10($t1)
/* 05B978 8005BDC8 2C810004 */  sltiu       $at, $a0, 0x4
/* 05B97C 8005BDCC 5420000E */  bnel        $at, $zero, .L8005BE08
/* 05B980 8005BDD0 8D0C0008 */   lw         $t4, 0x8($t0)
/* 05B984 8005BDD4 95180004 */  lhu         $t8, 0x4($t0)
/* 05B988 8005BDD8 54F80006 */  bnel        $a3, $t8, .L8005BDF4
/* 05B98C 8005BDDC 24190017 */   addiu      $t9, $zero, 0x17
/* 05B990 8005BDE0 8D0E0008 */  lw          $t6, 0x8($t0)
/* 05B994 8005BDE4 29C10053 */  slti        $at, $t6, 0x53
/* 05B998 8005BDE8 5420000D */  bnel        $at, $zero, .L8005BE20
/* 05B99C 8005BDEC 248E0001 */   addiu      $t6, $a0, 0x1
/* 05B9A0 8005BDF0 24190017 */  addiu       $t9, $zero, 0x17
.L8005BDF4:
/* 05B9A4 8005BDF4 0C017010 */  jal         func_8005C040
/* 05B9A8 8005BDF8 AD390000 */   sw         $t9, 0x0($t1)
/* 05B9AC 8005BDFC 1000008C */  b           .L8005C030
/* 05B9B0 8005BE00 24020001 */   addiu      $v0, $zero, 0x1
/* 05B9B4 8005BE04 8D0C0008 */  lw          $t4, 0x8($t0)
.L8005BE08:
/* 05B9B8 8005BE08 00047880 */  sll         $t7, $a0, 2
/* 05B9BC 8005BE0C 012FC021 */  addu        $t8, $t1, $t7
/* 05B9C0 8005BE10 258D0001 */  addiu       $t5, $t4, 0x1
/* 05B9C4 8005BE14 AF0D0014 */  sw          $t5, 0x14($t8)
/* 05B9C8 8005BE18 8D240010 */  lw          $a0, 0x10($t1)
/* 05B9CC 8005BE1C 248E0001 */  addiu       $t6, $a0, 0x1
.L8005BE20:
/* 05B9D0 8005BE20 AD2E0010 */  sw          $t6, 0x10($t1)
.L8005BE24:
/* 05B9D4 8005BE24 07210034 */  bgez        $t9, .L8005BEF8
/* 05B9D8 8005BE28 8D020008 */   lw         $v0, 0x8($t0)
/* 05B9DC 8005BE2C 24010057 */  addiu       $at, $zero, 0x57
/* 05B9E0 8005BE30 1041000C */  beq         $v0, $at, .L8005BE64
/* 05B9E4 8005BE34 240C0018 */   addiu      $t4, $zero, 0x18
/* 05B9E8 8005BE38 AD2C0000 */  sw          $t4, 0x0($t1)
/* 05B9EC 8005BE3C AFA90024 */  sw          $t1, 0x24($sp)
/* 05B9F0 8005BE40 0C017010 */  jal         func_8005C040
/* 05B9F4 8005BE44 AFA80028 */   sw         $t0, 0x28($sp)
/* 05B9F8 8005BE48 3C03A460 */  lui         $v1, 0xa460
/* 05B9FC 8005BE4C 3C0A8010 */  lui         $t2, %hi(D_80105E24)
/* 05BA00 8005BE50 254A5E24 */  addiu       $t2, $t2, %lo(D_80105E24)
/* 05BA04 8005BE54 34630010 */  ori         $v1, $v1, 0x10
/* 05BA08 8005BE58 24060002 */  addiu       $a2, $zero, 0x2
/* 05BA0C 8005BE5C 8FA80028 */  lw          $t0, 0x28($sp)
/* 05BA10 8005BE60 8FA90024 */  lw          $t1, 0x24($sp)
.L8005BE64:
/* 05BA14 8005BE64 950F0004 */  lhu         $t7, 0x4($t0)
/* 05BA18 8005BE68 24010002 */  addiu       $at, $zero, 0x2
/* 05BA1C 8005BE6C 3C04800A */  lui         $a0, %hi(__OSGlobalIntMask)
/* 05BA20 8005BE70 15E1000F */  bne         $t7, $at, .L8005BEB0
/* 05BA24 8005BE74 00002825 */   move       $a1, $zero
/* 05BA28 8005BE78 950D0006 */  lhu         $t5, 0x6($t0)
/* 05BA2C 8005BE7C 24180001 */  addiu       $t8, $zero, 0x1
/* 05BA30 8005BE80 240EFFFF */  addiu       $t6, $zero, -0x1
/* 05BA34 8005BE84 15A0000A */  bnez        $t5, .L8005BEB0
/* 05BA38 8005BE88 00000000 */   nop
/* 05BA3C 8005BE8C 8D190040 */  lw          $t9, 0x40($t0)
/* 05BA40 8005BE90 8D0C0048 */  lw          $t4, 0x48($t0)
/* 05BA44 8005BE94 A5180006 */  sh          $t8, 0x6($t0)
/* 05BA48 8005BE98 AD0E0008 */  sw          $t6, 0x8($t0)
/* 05BA4C 8005BE9C 032C7823 */  subu        $t7, $t9, $t4
/* 05BA50 8005BEA0 AD0F0040 */  sw          $t7, 0x40($t0)
/* 05BA54 8005BEA4 240D0016 */  addiu       $t5, $zero, 0x16
/* 05BA58 8005BEA8 1000000A */  b           .L8005BED4
/* 05BA5C 8005BEAC AD2D0000 */   sw         $t5, 0x0($t1)
.L8005BEB0:
/* 05BA60 8005BEB0 24843130 */  addiu       $a0, $a0, %lo(__OSGlobalIntMask)
/* 05BA64 8005BEB4 AC660000 */  sw          $a2, 0x0($v1)
/* 05BA68 8005BEB8 8C980000 */  lw          $t8, 0x0($a0)
/* 05BA6C 8005BEBC 3C010010 */  lui         $at, 0x10
/* 05BA70 8005BEC0 34210401 */  ori         $at, $at, 0x401
/* 05BA74 8005BEC4 03017025 */  or          $t6, $t8, $at
/* 05BA78 8005BEC8 AC8E0000 */  sw          $t6, 0x0($a0)
/* 05BA7C 8005BECC AD060000 */  sw          $a2, 0x0($t0)
/* 05BA80 8005BED0 AD200000 */  sw          $zero, 0x0($t1)
.L8005BED4:
/* 05BA84 8005BED4 8D39000C */  lw          $t9, 0xc($t1)
/* 05BA88 8005BED8 8D270008 */  lw          $a3, 0x8($t1)
/* 05BA8C 8005BEDC 8D440000 */  lw          $a0, 0x0($t2)
/* 05BA90 8005BEE0 00196080 */  sll         $t4, $t9, 2
/* 05BA94 8005BEE4 AFAC0010 */  sw          $t4, 0x10($sp)
/* 05BA98 8005BEE8 0C0162B4 */  jal         func_80058AD0
/* 05BA9C 8005BEEC 3C060500 */   lui        $a2, 0x500
/* 05BAA0 8005BEF0 1000004F */  b           .L8005C030
/* 05BAA4 8005BEF4 24020001 */   addiu      $v0, $zero, 0x1
.L8005BEF8:
/* 05BAA8 8005BEF8 2401FFFF */  addiu       $at, $zero, -0x1
/* 05BAAC 8005BEFC 54410027 */  bnel        $v0, $at, .L8005BF9C
/* 05BAB0 8005BF00 244C0001 */   addiu      $t4, $v0, 0x1
/* 05BAB4 8005BF04 950F0004 */  lhu         $t7, 0x4($t0)
/* 05BAB8 8005BF08 24010002 */  addiu       $at, $zero, 0x2
/* 05BABC 8005BF0C 55E10023 */  bnel        $t7, $at, .L8005BF9C
/* 05BAC0 8005BF10 244C0001 */   addiu      $t4, $v0, 0x1
/* 05BAC4 8005BF14 950D0006 */  lhu         $t5, 0x6($t0)
/* 05BAC8 8005BF18 24010001 */  addiu       $at, $zero, 0x1
/* 05BACC 8005BF1C 55A1001F */  bnel        $t5, $at, .L8005BF9C
/* 05BAD0 8005BF20 244C0001 */   addiu      $t4, $v0, 0x1
/* 05BAD4 8005BF24 8D180028 */  lw          $t8, 0x28($t0)
/* 05BAD8 8005BF28 25030018 */  addiu       $v1, $t0, 0x18
/* 05BADC 8005BF2C 57000010 */  bnel        $t8, $zero, .L8005BF70
/* 05BAE0 8005BF30 AD000018 */   sw         $zero, 0x18($t0)
/* 05BAE4 8005BF34 8C620008 */  lw          $v0, 0x8($v1)
/* 05BAE8 8005BF38 8C4E000C */  lw          $t6, 0xc($v0)
/* 05BAEC 8005BF3C 8C590000 */  lw          $t9, 0x0($v0)
/* 05BAF0 8005BF40 8C4F0004 */  lw          $t7, 0x4($v0)
/* 05BAF4 8005BF44 8C580008 */  lw          $t8, 0x8($v0)
/* 05BAF8 8005BF48 01D96025 */  or          $t4, $t6, $t9
/* 05BAFC 8005BF4C 018F6825 */  or          $t5, $t4, $t7
/* 05BB00 8005BF50 01B87025 */  or          $t6, $t5, $t8
/* 05BB04 8005BF54 11C00005 */  beqz        $t6, .L8005BF6C
/* 05BB08 8005BF58 24190017 */   addiu      $t9, $zero, 0x17
/* 05BB0C 8005BF5C 0C017010 */  jal         func_8005C040
/* 05BB10 8005BF60 AC790000 */   sw         $t9, 0x0($v1)
/* 05BB14 8005BF64 10000032 */  b           .L8005C030
/* 05BB18 8005BF68 24020001 */   addiu      $v0, $zero, 0x1
.L8005BF6C:
/* 05BB1C 8005BF6C AD000018 */  sw          $zero, 0x18($t0)
.L8005BF70:
/* 05BB20 8005BF70 AFA90024 */  sw          $t1, 0x24($sp)
/* 05BB24 8005BF74 AFA80028 */  sw          $t0, 0x28($sp)
/* 05BB28 8005BF78 0C01703D */  jal         func_8005C0F4
/* 05BB2C 8005BF7C AFA50034 */   sw         $a1, 0x34($sp)
/* 05BB30 8005BF80 8FA80028 */  lw          $t0, 0x28($sp)
/* 05BB34 8005BF84 3C0A8010 */  lui         $t2, %hi(D_80105E24)
/* 05BB38 8005BF88 254A5E24 */  addiu       $t2, $t2, %lo(D_80105E24)
/* 05BB3C 8005BF8C 8FA50034 */  lw          $a1, 0x34($sp)
/* 05BB40 8005BF90 8FA90024 */  lw          $t1, 0x24($sp)
/* 05BB44 8005BF94 8D020008 */  lw          $v0, 0x8($t0)
/* 05BB48 8005BF98 244C0001 */  addiu       $t4, $v0, 0x1
.L8005BF9C:
/* 05BB4C 8005BF9C 00057840 */  sll         $t7, $a1, 1
/* 05BB50 8005BFA0 05E10015 */  bgez        $t7, .L8005BFF8
/* 05BB54 8005BFA4 AD0C0008 */   sw         $t4, 0x8($t0)
/* 05BB58 8005BFA8 29810055 */  slti        $at, $t4, 0x55
/* 05BB5C 8005BFAC 14200006 */  bnez        $at, .L8005BFC8
/* 05BB60 8005BFB0 00002825 */   move       $a1, $zero
/* 05BB64 8005BFB4 24180018 */  addiu       $t8, $zero, 0x18
/* 05BB68 8005BFB8 0C017010 */  jal         func_8005C040
/* 05BB6C 8005BFBC AD380000 */   sw         $t8, 0x0($t1)
/* 05BB70 8005BFC0 1000001B */  b           .L8005C030
/* 05BB74 8005BFC4 24020001 */   addiu      $v0, $zero, 0x1
.L8005BFC8:
/* 05BB78 8005BFC8 8D2E000C */  lw          $t6, 0xc($t1)
/* 05BB7C 8005BFCC 3C060500 */  lui         $a2, 0x500
/* 05BB80 8005BFD0 8D270004 */  lw          $a3, 0x4($t1)
/* 05BB84 8005BFD4 AFA90024 */  sw          $t1, 0x24($sp)
/* 05BB88 8005BFD8 34C60400 */  ori         $a2, $a2, 0x400
/* 05BB8C 8005BFDC 8D440000 */  lw          $a0, 0x0($t2)
/* 05BB90 8005BFE0 0C0162B4 */  jal         func_80058AD0
/* 05BB94 8005BFE4 AFAE0010 */   sw         $t6, 0x10($sp)
/* 05BB98 8005BFE8 8FA90024 */  lw          $t1, 0x24($sp)
/* 05BB9C 8005BFEC 24020001 */  addiu       $v0, $zero, 0x1
/* 05BBA0 8005BFF0 1000000F */  b           .L8005C030
/* 05BBA4 8005BFF4 AD200000 */   sw         $zero, 0x0($t1)
.L8005BFF8:
/* 05BBA8 8005BFF8 8D190008 */  lw          $t9, 0x8($t0)
/* 05BBAC 8005BFFC 240C0018 */  addiu       $t4, $zero, 0x18
/* 05BBB0 8005C000 2B210055 */  slti        $at, $t9, 0x55
/* 05BBB4 8005C004 10200005 */  beqz        $at, .L8005C01C
/* 05BBB8 8005C008 00000000 */   nop
/* 05BBBC 8005C00C 0C017010 */  jal         func_8005C040
/* 05BBC0 8005C010 AD2C0000 */   sw         $t4, 0x0($t1)
/* 05BBC4 8005C014 10000006 */  b           .L8005C030
/* 05BBC8 8005C018 24020001 */   addiu      $v0, $zero, 0x1
.L8005C01C:
/* 05BBCC 8005C01C 10000004 */  b           .L8005C030
/* 05BBD0 8005C020 24020001 */   addiu      $v0, $zero, 0x1
.L8005C024:
/* 05BBD4 8005C024 0C017010 */  jal         func_8005C040
/* 05BBD8 8005C028 AD2F0000 */   sw         $t7, 0x0($t1)
/* 05BBDC 8005C02C 24020001 */  addiu       $v0, $zero, 0x1
.L8005C030:
/* 05BBE0 8005C030 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05BBE4 8005C034 27BD0038 */  addiu       $sp, $sp, 0x38
/* 05BBE8 8005C038 03E00008 */  jr          $ra
/* 05BBEC 8005C03C 00000000 */   nop

glabel func_8005C040 # 1
/* 05BBF0 8005C040 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05BBF4 8005C044 3C03A460 */  lui         $v1, 0xa460
/* 05BBF8 8005C048 34630010 */  ori         $v1, $v1, 0x10
/* 05BBFC 8005C04C AFBF0014 */  sw          $ra, 0x14($sp)
/* 05BC00 8005C050 8C620000 */  lw          $v0, 0x0($v1)
/* 05BC04 8005C054 3C048010 */  lui         $a0, %hi(D_80105E24)
/* 05BC08 8005C058 8C845E24 */  lw          $a0, %lo(D_80105E24)($a0)
/* 05BC0C 8005C05C 304E0003 */  andi        $t6, $v0, 0x3
/* 05BC10 8005C060 11C00005 */  beqz        $t6, .L8005C078
/* 05BC14 8005C064 24840014 */   addiu      $a0, $a0, 0x14
/* 05BC18 8005C068 8C620000 */  lw          $v0, 0x0($v1)
.L8005C06C:
/* 05BC1C 8005C06C 304F0003 */  andi        $t7, $v0, 0x3
/* 05BC20 8005C070 55E0FFFE */  bnel        $t7, $zero, .L8005C06C
/* 05BC24 8005C074 8C620000 */   lw         $v0, 0x0($v1)
.L8005C078:
/* 05BC28 8005C078 8C980010 */  lw          $t8, 0x10($a0)
/* 05BC2C 8005C07C 3C05A500 */  lui         $a1, 0xa500
/* 05BC30 8005C080 3C011000 */  lui         $at, 0x1000
/* 05BC34 8005C084 34A50510 */  ori         $a1, $a1, 0x510
/* 05BC38 8005C088 0301C825 */  or          $t9, $t8, $at
/* 05BC3C 8005C08C ACB90000 */  sw          $t9, 0x0($a1)
/* 05BC40 8005C090 8C620000 */  lw          $v0, 0x0($v1)
/* 05BC44 8005C094 30480003 */  andi        $t0, $v0, 0x3
/* 05BC48 8005C098 51000006 */  beql        $t0, $zero, .L8005C0B4
/* 05BC4C 8005C09C 8C8A0010 */   lw         $t2, 0x10($a0)
/* 05BC50 8005C0A0 8C620000 */  lw          $v0, 0x0($v1)
.L8005C0A4:
/* 05BC54 8005C0A4 30490003 */  andi        $t1, $v0, 0x3
/* 05BC58 8005C0A8 5520FFFE */  bnel        $t1, $zero, .L8005C0A4
/* 05BC5C 8005C0AC 8C620000 */   lw         $v0, 0x0($v1)
/* 05BC60 8005C0B0 8C8A0010 */  lw          $t2, 0x10($a0)
.L8005C0B4:
/* 05BC64 8005C0B4 0C01703D */  jal         func_8005C0F4
/* 05BC68 8005C0B8 ACAA0000 */   sw         $t2, 0x0($a1)
/* 05BC6C 8005C0BC 3C03A460 */  lui         $v1, 0xa460
/* 05BC70 8005C0C0 34630010 */  ori         $v1, $v1, 0x10
/* 05BC74 8005C0C4 3C02800A */  lui         $v0, %hi(__OSGlobalIntMask)
/* 05BC78 8005C0C8 240B0002 */  addiu       $t3, $zero, 0x2
/* 05BC7C 8005C0CC 24423130 */  addiu       $v0, $v0, %lo(__OSGlobalIntMask)
/* 05BC80 8005C0D0 AC6B0000 */  sw          $t3, 0x0($v1)
/* 05BC84 8005C0D4 8C4C0000 */  lw          $t4, 0x0($v0)
/* 05BC88 8005C0D8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 05BC8C 8005C0DC 3C010010 */  lui         $at, 0x10
/* 05BC90 8005C0E0 34210401 */  ori         $at, $at, 0x401
/* 05BC94 8005C0E4 01816825 */  or          $t5, $t4, $at
/* 05BC98 8005C0E8 AC4D0000 */  sw          $t5, 0x0($v0)
/* 05BC9C 8005C0EC 03E00008 */  jr          $ra
/* 05BCA0 8005C0F0 27BD0018 */   addiu      $sp, $sp, 0x18

glabel func_8005C0F4 # 2
/* 05BCA4 8005C0F4 3C048010 */  lui         $a0, %hi(__osEventStateTab + 0x40)
/* 05BCA8 8005C0F8 8C842300 */  lw          $a0, %lo(__osEventStateTab + 0x40)($a0)
/* 05BCAC 8005C0FC 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 05BCB0 8005C100 AFBF0014 */  sw          $ra, 0x14($sp)
/* 05BCB4 8005C104 50800027 */  beql        $a0, $zero, .L8005C1A4
/* 05BCB8 8005C108 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05BCBC 8005C10C 8C830008 */  lw          $v1, 0x8($a0)
/* 05BCC0 8005C110 8C850010 */  lw          $a1, 0x10($a0)
/* 05BCC4 8005C114 3C188010 */  lui         $t8, %hi(__osEventStateTab + 0x44)
/* 05BCC8 8005C118 0065082A */  slt         $at, $v1, $a1
/* 05BCCC 8005C11C 50200021 */  beql        $at, $zero, .L8005C1A4
/* 05BCD0 8005C120 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05BCD4 8005C124 8C8E000C */  lw          $t6, 0xc($a0)
/* 05BCD8 8005C128 8C990014 */  lw          $t9, 0x14($a0)
/* 05BCDC 8005C12C 8F182304 */  lw          $t8, %lo(__osEventStateTab + 0x44)($t8)
/* 05BCE0 8005C130 01C37821 */  addu        $t7, $t6, $v1
/* 05BCE4 8005C134 01E5001A */  div         $zero, $t7, $a1
/* 05BCE8 8005C138 00001010 */  mfhi        $v0
/* 05BCEC 8005C13C 00024080 */  sll         $t0, $v0, 2
/* 05BCF0 8005C140 03284821 */  addu        $t1, $t9, $t0
/* 05BCF4 8005C144 AD380000 */  sw          $t8, 0x0($t1)
/* 05BCF8 8005C148 8C8A0008 */  lw          $t2, 0x8($a0)
/* 05BCFC 8005C14C 8C8C0000 */  lw          $t4, 0x0($a0)
/* 05BD00 8005C150 14A00002 */  bnez        $a1, .L8005C15C
/* 05BD04 8005C154 00000000 */   nop
/* 05BD08 8005C158 0007000D */  break       7
.L8005C15C:
/* 05BD0C 8005C15C 2401FFFF */  addiu       $at, $zero, -0x1
/* 05BD10 8005C160 14A10004 */  bne         $a1, $at, .L8005C174
/* 05BD14 8005C164 3C018000 */   lui        $at, 0x8000
/* 05BD18 8005C168 15E10002 */  bne         $t7, $at, .L8005C174
/* 05BD1C 8005C16C 00000000 */   nop
/* 05BD20 8005C170 0006000D */  break       6
.L8005C174:
/* 05BD24 8005C174 254B0001 */  addiu       $t3, $t2, 0x1
/* 05BD28 8005C178 AC8B0008 */  sw          $t3, 0x8($a0)
/* 05BD2C 8005C17C 8D8D0000 */  lw          $t5, 0x0($t4)
/* 05BD30 8005C180 51A00008 */  beql        $t5, $zero, .L8005C1A4
/* 05BD34 8005C184 8FBF0014 */   lw         $ra, 0x14($sp)
/* 05BD38 8005C188 0C0154FD */  jal         __osPopThread
/* 05BD3C 8005C18C 00000000 */   nop
/* 05BD40 8005C190 3C04800A */  lui         $a0, %hi(__osRunQueue)
/* 05BD44 8005C194 24844D68 */  addiu       $a0, $a0, %lo(__osRunQueue)
/* 05BD48 8005C198 0C0154EB */  jal         __osEnqueueThread
/* 05BD4C 8005C19C 00402825 */   move       $a1, $v0
/* 05BD50 8005C1A0 8FBF0014 */  lw          $ra, 0x14($sp)
.L8005C1A4:
/* 05BD54 8005C1A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 05BD58 8005C1A8 03E00008 */  jr          $ra
/* 05BD5C 8005C1AC 00000000 */   nop

glabel func_8005C1B0 # 3
/* 05BD60 8005C1B0 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 05BD64 8005C1B4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 05BD68 8005C1B8 AFA40038 */  sw          $a0, 0x38($sp)
/* 05BD6C 8005C1BC AFB20020 */  sw          $s2, 0x20($sp)
/* 05BD70 8005C1C0 AFB1001C */  sw          $s1, 0x1c($sp)
/* 05BD74 8005C1C4 0C015594 */  jal         func_80055650
/* 05BD78 8005C1C8 AFB00018 */   sw         $s0, 0x18($sp)
/* 05BD7C 8005C1CC 8FAE0038 */  lw          $t6, 0x38($sp)
/* 05BD80 8005C1D0 00408025 */  move        $s0, $v0
/* 05BD84 8005C1D4 15C00005 */  bnez        $t6, .L8005C1EC
/* 05BD88 8005C1D8 00000000 */   nop
/* 05BD8C 8005C1DC 3C0F800A */  lui         $t7, %hi(__osRunningThread)
/* 05BD90 8005C1E0 8DEF4D70 */  lw          $t7, %lo(__osRunningThread)($t7)
/* 05BD94 8005C1E4 10000009 */  b           .L8005C20C
/* 05BD98 8005C1E8 AFAF0038 */   sw         $t7, 0x38($sp)
.L8005C1EC:
/* 05BD9C 8005C1EC 8FB80038 */  lw          $t8, 0x38($sp)
/* 05BDA0 8005C1F0 24010001 */  addiu       $at, $zero, 0x1
/* 05BDA4 8005C1F4 97190010 */  lhu         $t9, 0x10($t8)
/* 05BDA8 8005C1F8 13210004 */  beq         $t9, $at, .L8005C20C
/* 05BDAC 8005C1FC 00000000 */   nop
/* 05BDB0 8005C200 8F040008 */  lw          $a0, 0x8($t8)
/* 05BDB4 8005C204 0C0155A4 */  jal         func_80055690
/* 05BDB8 8005C208 03002825 */   move       $a1, $t8
.L8005C20C:
/* 05BDBC 8005C20C 3C08800A */  lui         $t0, %hi(D_800A4D6C)
/* 05BDC0 8005C210 8D084D6C */  lw          $t0, %lo(D_800A4D6C)($t0)
/* 05BDC4 8005C214 8FA90038 */  lw          $t1, 0x38($sp)
/* 05BDC8 8005C218 15090005 */  bne         $t0, $t1, .L8005C230
/* 05BDCC 8005C21C 00000000 */   nop
/* 05BDD0 8005C220 8D0A000C */  lw          $t2, 0xc($t0)
/* 05BDD4 8005C224 3C01800A */  lui         $at, %hi(D_800A4D6C)
/* 05BDD8 8005C228 10000013 */  b           .L8005C278
/* 05BDDC 8005C22C AC2A4D6C */   sw         $t2, %lo(D_800A4D6C)($at)
.L8005C230:
/* 05BDE0 8005C230 3C11800A */  lui         $s1, %hi(D_800A4D6C)
/* 05BDE4 8005C234 8E314D6C */  lw          $s1, %lo(D_800A4D6C)($s1)
/* 05BDE8 8005C238 2401FFFF */  addiu       $at, $zero, -0x1
/* 05BDEC 8005C23C 8E2B0004 */  lw          $t3, 0x4($s1)
/* 05BDF0 8005C240 1161000D */  beq         $t3, $at, .L8005C278
/* 05BDF4 8005C244 00000000 */   nop
.L8005C248:
/* 05BDF8 8005C248 8E32000C */  lw          $s2, 0xc($s1)
/* 05BDFC 8005C24C 8FAC0038 */  lw          $t4, 0x38($sp)
/* 05BE00 8005C250 164C0004 */  bne         $s2, $t4, .L8005C264
/* 05BE04 8005C254 00000000 */   nop
/* 05BE08 8005C258 8D8D000C */  lw          $t5, 0xc($t4)
/* 05BE0C 8005C25C 10000006 */  b           .L8005C278
/* 05BE10 8005C260 AE2D000C */   sw         $t5, 0xc($s1)
.L8005C264:
/* 05BE14 8005C264 02408825 */  move        $s1, $s2
/* 05BE18 8005C268 8E2E0004 */  lw          $t6, 0x4($s1)
/* 05BE1C 8005C26C 2401FFFF */  addiu       $at, $zero, -0x1
/* 05BE20 8005C270 15C1FFF5 */  bne         $t6, $at, .L8005C248
/* 05BE24 8005C274 00000000 */   nop
.L8005C278:
/* 05BE28 8005C278 3C19800A */  lui         $t9, %hi(__osRunningThread)
/* 05BE2C 8005C27C 8F394D70 */  lw          $t9, %lo(__osRunningThread)($t9)
/* 05BE30 8005C280 8FAF0038 */  lw          $t7, 0x38($sp)
/* 05BE34 8005C284 15F90003 */  bne         $t7, $t9, .L8005C294
/* 05BE38 8005C288 00000000 */   nop
/* 05BE3C 8005C28C 0C015501 */  jal         __osDispatchThread
/* 05BE40 8005C290 00000000 */   nop
.L8005C294:
/* 05BE44 8005C294 0C01559C */  jal         func_80055670
/* 05BE48 8005C298 02002025 */   move       $a0, $s0
/* 05BE4C 8005C29C 8FBF0024 */  lw          $ra, 0x24($sp)
/* 05BE50 8005C2A0 8FB00018 */  lw          $s0, 0x18($sp)
/* 05BE54 8005C2A4 8FB1001C */  lw          $s1, 0x1c($sp)
/* 05BE58 8005C2A8 8FB20020 */  lw          $s2, 0x20($sp)
/* 05BE5C 8005C2AC 03E00008 */  jr          $ra
/* 05BE60 8005C2B0 27BD0038 */   addiu      $sp, $sp, 0x38
/* 05BE64 8005C2B4 00000000 */  nop
/* 05BE68 8005C2B8 00000000 */  nop
/* 05BE6C 8005C2BC 00000000 */  nop
