.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80037AE0 # 0
/* 037690 80037AE0 03E00008 */  jr          $ra
/* 037694 80037AE4 00000000 */   nop

glabel func_80037AE8 # 1
/* 037698 80037AE8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 03769C 80037AEC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0376A0 80037AF0 3C05800F */  lui         $a1, %hi(D_800F2620)
/* 0376A4 80037AF4 3C06800F */  lui         $a2, %hi(D_800F2638)
/* 0376A8 80037AF8 24C62638 */  addiu       $a2, $a2, %lo(D_800F2638)
/* 0376AC 80037AFC 24A52620 */  addiu       $a1, $a1, %lo(D_800F2620)
/* 0376B0 80037B00 24040096 */  addiu       $a0, $zero, 0x96
/* 0376B4 80037B04 0C014F8C */  jal         func_80053E30
/* 0376B8 80037B08 240700C8 */   addiu      $a3, $zero, 0xc8
/* 0376BC 80037B0C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0376C0 80037B10 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0376C4 80037B14 03E00008 */  jr          $ra
/* 0376C8 80037B18 00000000 */   nop

glabel func_80037B1C # 2
/* 0376CC 80037B1C 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 0376D0 80037B20 AFB40034 */  sw          $s4, 0x34($sp)
/* 0376D4 80037B24 AFB30030 */  sw          $s3, 0x30($sp)
/* 0376D8 80037B28 AFB2002C */  sw          $s2, 0x2c($sp)
/* 0376DC 80037B2C AFB00024 */  sw          $s0, 0x24($sp)
/* 0376E0 80037B30 00C08025 */  move        $s0, $a2
/* 0376E4 80037B34 00A09025 */  move        $s2, $a1
/* 0376E8 80037B38 00809825 */  move        $s3, $a0
/* 0376EC 80037B3C 27B40068 */  addiu       $s4, $sp, 0x68
/* 0376F0 80037B40 AFBF003C */  sw          $ra, 0x3c($sp)
/* 0376F4 80037B44 AFB50038 */  sw          $s5, 0x38($sp)
/* 0376F8 80037B48 AFB10028 */  sw          $s1, 0x28($sp)
/* 0376FC 80037B4C 02802025 */  move        $a0, $s4
/* 037700 80037B50 27A50064 */  addiu       $a1, $sp, 0x64
/* 037704 80037B54 0C0145B8 */  jal         osCreateMesgQueue
/* 037708 80037B58 24060001 */   addiu      $a2, $zero, 0x1
/* 03770C 80037B5C 02402025 */  move        $a0, $s2
/* 037710 80037B60 0C014CD0 */  jal         osInvalDCache
/* 037714 80037B64 02002825 */   move       $a1, $s0
/* 037718 80037B68 12000017 */  beq         $s0, $zero, .L80037BC8
/* 03771C 80037B6C 02008825 */   move       $s1, $s0
/* 037720 80037B70 27B5004C */  addiu       $s5, $sp, 0x4c
.L80037B74:
/* 037724 80037B74 2E214001 */  sltiu       $at, $s1, 0x4001
/* 037728 80037B78 14200003 */  bne         $at, $zero, .L80037B88
/* 03772C 80037B7C 02A02025 */   move       $a0, $s5
/* 037730 80037B80 10000002 */  b           .L80037B8C
/* 037734 80037B84 24104000 */   addiu      $s0, $zero, 0x4000
.L80037B88:
/* 037738 80037B88 02208025 */  move        $s0, $s1
.L80037B8C:
/* 03773C 80037B8C 00002825 */  move        $a1, $zero
/* 037740 80037B90 00003025 */  move        $a2, $zero
/* 037744 80037B94 02603825 */  move        $a3, $s3
/* 037748 80037B98 AFB20010 */  sw          $s2, 0x10($sp)
/* 03774C 80037B9C AFB00014 */  sw          $s0, 0x14($sp)
/* 037750 80037BA0 0C014CFC */  jal         func_800533F0
/* 037754 80037BA4 AFB40018 */   sw         $s4, 0x18($sp)
/* 037758 80037BA8 02802025 */  move        $a0, $s4
/* 03775C 80037BAC 00002825 */  move        $a1, $zero
/* 037760 80037BB0 0C014554 */  jal         osRecvMesg
/* 037764 80037BB4 24060001 */   addiu      $a2, $zero, 0x1
/* 037768 80037BB8 02308823 */  subu        $s1, $s1, $s0
/* 03776C 80037BBC 02709821 */  addu        $s3, $s3, $s0
/* 037770 80037BC0 1620FFEC */  bne         $s1, $zero, .L80037B74
/* 037774 80037BC4 02509021 */   addu       $s2, $s2, $s0
.L80037BC8:
/* 037778 80037BC8 8FBF003C */  lw          $ra, 0x3c($sp)
/* 03777C 80037BCC 8FB00024 */  lw          $s0, 0x24($sp)
/* 037780 80037BD0 8FB10028 */  lw          $s1, 0x28($sp)
/* 037784 80037BD4 8FB2002C */  lw          $s2, 0x2c($sp)
/* 037788 80037BD8 8FB30030 */  lw          $s3, 0x30($sp)
/* 03778C 80037BDC 8FB40034 */  lw          $s4, 0x34($sp)
/* 037790 80037BE0 8FB50038 */  lw          $s5, 0x38($sp)
/* 037794 80037BE4 03E00008 */  jr          $ra
/* 037798 80037BE8 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_80037BEC # 3
/* 03779C 80037BEC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0377A0 80037BF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 0377A4 80037BF4 00808025 */  move        $s0, $a0
/* 0377A8 80037BF8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0377AC 80037BFC AFA5002C */  sw          $a1, 0x2c($sp)
/* 0377B0 80037C00 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 0377B4 80037C04 00057080 */  sll         $t6, $a1, 2
/* 0377B8 80037C08 01C02825 */  move        $a1, $t6
/* 0377BC 80037C0C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 0377C0 80037C10 0C00E03D */  jal         func_800380F4
/* 0377C4 80037C14 24060055 */   addiu      $a2, $zero, 0x55
/* 0377C8 80037C18 8FA5002C */  lw          $a1, 0x2c($sp)
/* 0377CC 80037C1C 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 0377D0 80037C20 AFA20024 */  sw          $v0, 0x24($sp)
/* 0377D4 80037C24 00057880 */  sll         $t7, $a1, 2
/* 0377D8 80037C28 01E57823 */  subu        $t7, $t7, $a1
/* 0377DC 80037C2C 000F28C0 */  sll         $a1, $t7, 3
/* 0377E0 80037C30 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 0377E4 80037C34 0C00E03D */  jal         func_800380F4
/* 0377E8 80037C38 2406005A */   addiu      $a2, $zero, 0x5a
/* 0377EC 80037C3C AE020024 */  sw          $v0, 0x24($s0)
/* 0377F0 80037C40 8FA6002C */  lw          $a2, 0x2c($sp)
/* 0377F4 80037C44 8FA50024 */  lw          $a1, 0x24($sp)
/* 0377F8 80037C48 0C0145B8 */  jal         osCreateMesgQueue
/* 0377FC 80037C4C 2604000C */   addiu      $a0, $s0, 0xc
/* 037800 80037C50 AE000000 */  sw          $zero, 0x0($s0)
/* 037804 80037C54 AE000004 */  sw          $zero, 0x4($s0)
/* 037808 80037C58 8FB8002C */  lw          $t8, 0x2c($sp)
/* 03780C 80037C5C AE180008 */  sw          $t8, 0x8($s0)
/* 037810 80037C60 8FBF001C */  lw          $ra, 0x1c($sp)
/* 037814 80037C64 8FB00018 */  lw          $s0, 0x18($sp)
/* 037818 80037C68 27BD0028 */  addiu       $sp, $sp, 0x28
/* 03781C 80037C6C 03E00008 */  jr          $ra
/* 037820 80037C70 00000000 */   nop

glabel func_80037C74 # 4
/* 037824 80037C74 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 037828 80037C78 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03782C 80037C7C AFB00018 */  sw          $s0, 0x18($sp)
/* 037830 80037C80 0C00DFA8 */  jal         func_80037EA0
/* 037834 80037C84 00808025 */   move       $s0, $a0
/* 037838 80037C88 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03783C 80037C8C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 037840 80037C90 0C00E152 */  jal         func_80038548
/* 037844 80037C94 8E050024 */   lw         $a1, 0x24($s0)
/* 037848 80037C98 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 03784C 80037C9C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 037850 80037CA0 0C00E152 */  jal         func_80038548
/* 037854 80037CA4 8E050020 */   lw         $a1, 0x20($s0)
/* 037858 80037CA8 AE000000 */  sw          $zero, 0x0($s0)
/* 03785C 80037CAC AE000004 */  sw          $zero, 0x4($s0)
/* 037860 80037CB0 AE000008 */  sw          $zero, 0x8($s0)
/* 037864 80037CB4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 037868 80037CB8 8FB00018 */  lw          $s0, 0x18($sp)
/* 03786C 80037CBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 037870 80037CC0 03E00008 */  jr          $ra
/* 037874 80037CC4 00000000 */   nop

glabel func_80037CC8 # 5
/* 037878 80037CC8 8C8E0000 */  lw          $t6, 0x0($a0)
/* 03787C 80037CCC 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 037880 80037CD0 03E00008 */  jr          $ra
/* 037884 80037CD4 AC8F0000 */   sw         $t7, 0x0($a0)

glabel func_80037CD8 # 6
/* 037888 80037CD8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 03788C 80037CDC AFB10018 */  sw          $s1, 0x18($sp)
/* 037890 80037CE0 AFB00014 */  sw          $s0, 0x14($sp)
/* 037894 80037CE4 00808025 */  move        $s0, $a0
/* 037898 80037CE8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 03789C 80037CEC 2491000C */  addiu       $s1, $a0, 0xc
/* 0378A0 80037CF0 02202025 */  move        $a0, $s1
/* 0378A4 80037CF4 00002825 */  move        $a1, $zero
/* 0378A8 80037CF8 0C014554 */  jal         osRecvMesg
/* 0378AC 80037CFC 00003025 */   move       $a2, $zero
/* 0378B0 80037D00 5440000A */  bnel        $v0, $zero, .L80037D2C
/* 0378B4 80037D04 8FBF001C */   lw         $ra, 0x1c($sp)
.L80037D08:
/* 0378B8 80037D08 0C00DF32 */  jal         func_80037CC8
/* 0378BC 80037D0C 02002025 */   move       $a0, $s0
/* 0378C0 80037D10 02202025 */  move        $a0, $s1
/* 0378C4 80037D14 00002825 */  move        $a1, $zero
/* 0378C8 80037D18 0C014554 */  jal         osRecvMesg
/* 0378CC 80037D1C 00003025 */   move       $a2, $zero
/* 0378D0 80037D20 1040FFF9 */  beq         $v0, $zero, .L80037D08
/* 0378D4 80037D24 00000000 */   nop
/* 0378D8 80037D28 8FBF001C */  lw          $ra, 0x1c($sp)
.L80037D2C:
/* 0378DC 80037D2C 8E020000 */  lw          $v0, 0x0($s0)
/* 0378E0 80037D30 8FB00014 */  lw          $s0, 0x14($sp)
/* 0378E4 80037D34 8FB10018 */  lw          $s1, 0x18($sp)
/* 0378E8 80037D38 03E00008 */  jr          $ra
/* 0378EC 80037D3C 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80037D40 # 7
/* 0378F0 80037D40 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 0378F4 80037D44 AFBF002C */  sw          $ra, 0x2c($sp)
/* 0378F8 80037D48 AFB00028 */  sw          $s0, 0x28($sp)
/* 0378FC 80037D4C 00808025 */  move        $s0, $a0
/* 037900 80037D50 AFA5003C */  sw          $a1, 0x3c($sp)
/* 037904 80037D54 AFA60040 */  sw          $a2, 0x40($sp)
/* 037908 80037D58 0C00DF36 */  jal         func_80037CD8
/* 03790C 80037D5C AFA70044 */   sw         $a3, 0x44($sp)
/* 037910 80037D60 8E0E0008 */  lw          $t6, 0x8($s0)
/* 037914 80037D64 2604000C */  addiu       $a0, $s0, 0xc
/* 037918 80037D68 00002825 */  move        $a1, $zero
/* 03791C 80037D6C 544E0006 */  bnel        $v0, $t6, .L80037D88
/* 037920 80037D70 260F000C */   addiu      $t7, $s0, 0xc
/* 037924 80037D74 0C014554 */  jal         osRecvMesg
/* 037928 80037D78 24060001 */   addiu      $a2, $zero, 0x1
/* 03792C 80037D7C 0C00DF32 */  jal         func_80037CC8
/* 037930 80037D80 02002025 */   move       $a0, $s0
/* 037934 80037D84 260F000C */  addiu       $t7, $s0, 0xc
.L80037D88:
/* 037938 80037D88 AFAF0034 */  sw          $t7, 0x34($sp)
/* 03793C 80037D8C 8FA40040 */  lw          $a0, 0x40($sp)
/* 037940 80037D90 0C014CD0 */  jal         osInvalDCache
/* 037944 80037D94 8FA50044 */   lw         $a1, 0x44($sp)
/* 037948 80037D98 8E190004 */  lw          $t9, 0x4($s0)
/* 03794C 80037D9C 8E180024 */  lw          $t8, 0x24($s0)
/* 037950 80037DA0 8FA90040 */  lw          $t1, 0x40($sp)
/* 037954 80037DA4 00194080 */  sll         $t0, $t9, 2
/* 037958 80037DA8 8FAA0044 */  lw          $t2, 0x44($sp)
/* 03795C 80037DAC 8FAB0034 */  lw          $t3, 0x34($sp)
/* 037960 80037DB0 01194023 */  subu        $t0, $t0, $t9
/* 037964 80037DB4 000840C0 */  sll         $t0, $t0, 3
/* 037968 80037DB8 00002825 */  move        $a1, $zero
/* 03796C 80037DBC 00003025 */  move        $a2, $zero
/* 037970 80037DC0 8FA7003C */  lw          $a3, 0x3c($sp)
/* 037974 80037DC4 03082021 */  addu        $a0, $t8, $t0
/* 037978 80037DC8 AFA90010 */  sw          $t1, 0x10($sp)
/* 03797C 80037DCC AFAA0014 */  sw          $t2, 0x14($sp)
/* 037980 80037DD0 0C014CFC */  jal         func_800533F0
/* 037984 80037DD4 AFAB0018 */   sw         $t3, 0x18($sp)
/* 037988 80037DD8 8E0E0004 */  lw          $t6, 0x4($s0)
/* 03798C 80037DDC 8E0C0000 */  lw          $t4, 0x0($s0)
/* 037990 80037DE0 8E180008 */  lw          $t8, 0x8($s0)
/* 037994 80037DE4 25CF0001 */  addiu       $t7, $t6, 0x1
/* 037998 80037DE8 258D0001 */  addiu       $t5, $t4, 0x1
/* 03799C 80037DEC 01F8082A */  slt         $at, $t7, $t8
/* 0379A0 80037DF0 AE0D0000 */  sw          $t5, 0x0($s0)
/* 0379A4 80037DF4 14200002 */  bne         $at, $zero, .L80037E00
/* 0379A8 80037DF8 AE0F0004 */   sw         $t7, 0x4($s0)
/* 0379AC 80037DFC AE000004 */  sw          $zero, 0x4($s0)
.L80037E00:
/* 0379B0 80037E00 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0379B4 80037E04 8E020000 */  lw          $v0, 0x0($s0)
/* 0379B8 80037E08 8FB00028 */  lw          $s0, 0x28($sp)
/* 0379BC 80037E0C 03E00008 */  jr          $ra
/* 0379C0 80037E10 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80037E14 # 8
/* 0379C4 80037E14 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0379C8 80037E18 AFB40028 */  sw          $s4, 0x28($sp)
/* 0379CC 80037E1C AFB30024 */  sw          $s3, 0x24($sp)
/* 0379D0 80037E20 AFB20020 */  sw          $s2, 0x20($sp)
/* 0379D4 80037E24 AFB1001C */  sw          $s1, 0x1c($sp)
/* 0379D8 80037E28 0080A025 */  move        $s4, $a0
/* 0379DC 80037E2C AFBF002C */  sw          $ra, 0x2c($sp)
/* 0379E0 80037E30 AFB00018 */  sw          $s0, 0x18($sp)
/* 0379E4 80037E34 00A09025 */  move        $s2, $a1
/* 0379E8 80037E38 00C09825 */  move        $s3, $a2
/* 0379EC 80037E3C 10E0000F */  beq         $a3, $zero, .L80037E7C
/* 0379F0 80037E40 00E08825 */   move       $s1, $a3
.L80037E44:
/* 0379F4 80037E44 2E214001 */  sltiu       $at, $s1, 0x4001
/* 0379F8 80037E48 14200003 */  bne         $at, $zero, .L80037E58
/* 0379FC 80037E4C 02802025 */   move       $a0, $s4
/* 037A00 80037E50 10000002 */  b           .L80037E5C
/* 037A04 80037E54 24104000 */   addiu      $s0, $zero, 0x4000
.L80037E58:
/* 037A08 80037E58 02208025 */  move        $s0, $s1
.L80037E5C:
/* 037A0C 80037E5C 02402825 */  move        $a1, $s2
/* 037A10 80037E60 02603025 */  move        $a2, $s3
/* 037A14 80037E64 0C00DF50 */  jal         func_80037D40
/* 037A18 80037E68 02003825 */   move       $a3, $s0
/* 037A1C 80037E6C 02308823 */  subu        $s1, $s1, $s0
/* 037A20 80037E70 02509021 */  addu        $s2, $s2, $s0
/* 037A24 80037E74 1620FFF3 */  bne         $s1, $zero, .L80037E44
/* 037A28 80037E78 02709821 */   addu       $s3, $s3, $s0
.L80037E7C:
/* 037A2C 80037E7C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 037A30 80037E80 8E820000 */  lw          $v0, 0x0($s4)
/* 037A34 80037E84 8FB40028 */  lw          $s4, 0x28($sp)
/* 037A38 80037E88 8FB00018 */  lw          $s0, 0x18($sp)
/* 037A3C 80037E8C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 037A40 80037E90 8FB20020 */  lw          $s2, 0x20($sp)
/* 037A44 80037E94 8FB30024 */  lw          $s3, 0x24($sp)
/* 037A48 80037E98 03E00008 */  jr          $ra
/* 037A4C 80037E9C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80037EA0 # 9
/* 037A50 80037EA0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 037A54 80037EA4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 037A58 80037EA8 AFB10018 */  sw          $s1, 0x18($sp)
/* 037A5C 80037EAC AFB00014 */  sw          $s0, 0x14($sp)
/* 037A60 80037EB0 8C8E0000 */  lw          $t6, 0x0($a0)
/* 037A64 80037EB4 00808025 */  move        $s0, $a0
/* 037A68 80037EB8 2491000C */  addiu       $s1, $a0, 0xc
/* 037A6C 80037EBC 19C00009 */  blez        $t6, .L80037EE4
/* 037A70 80037EC0 02202025 */   move       $a0, $s1
.L80037EC4:
/* 037A74 80037EC4 00002825 */  move        $a1, $zero
/* 037A78 80037EC8 0C014554 */  jal         osRecvMesg
/* 037A7C 80037ECC 24060001 */   addiu      $a2, $zero, 0x1
/* 037A80 80037ED0 0C00DF32 */  jal         func_80037CC8
/* 037A84 80037ED4 02002025 */   move       $a0, $s0
/* 037A88 80037ED8 8E0F0000 */  lw          $t7, 0x0($s0)
/* 037A8C 80037EDC 5DE0FFF9 */  bgtzl       $t7, .L80037EC4
/* 037A90 80037EE0 02202025 */   move       $a0, $s1
.L80037EE4:
/* 037A94 80037EE4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 037A98 80037EE8 8FB00014 */  lw          $s0, 0x14($sp)
/* 037A9C 80037EEC 8FB10018 */  lw          $s1, 0x18($sp)
/* 037AA0 80037EF0 03E00008 */  jr          $ra
/* 037AA4 80037EF4 27BD0020 */   addiu      $sp, $sp, 0x20
/* 037AA8 80037EF8 00000000 */  nop
/* 037AAC 80037EFC 00000000 */  nop
