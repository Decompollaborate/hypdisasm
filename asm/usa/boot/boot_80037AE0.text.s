.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80037AE0 # 0
/* 000000 80037AE0 03E00008 */  jr          $ra
/* 000004 80037AE4 00000000 */   nop

glabel func_80037AE8 # 1
/* 000008 80037AE8 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00000C 80037AEC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000010 80037AF0 3C05800F */  lui         $a1, %hi(D_800F2620)
/* 000014 80037AF4 3C06800F */  lui         $a2, %hi(D_800F2638)
/* 000018 80037AF8 24C62638 */  addiu       $a2, $a2, %lo(D_800F2638)
/* 00001C 80037AFC 24A52620 */  addiu       $a1, $a1, %lo(D_800F2620)
/* 000020 80037B00 24040096 */  addiu       $a0, $zero, 0x96
/* 000024 80037B04 0C014F8C */  jal         func_80053E30
/* 000028 80037B08 240700C8 */   addiu      $a3, $zero, 0xc8
/* 00002C 80037B0C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000030 80037B10 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000034 80037B14 03E00008 */  jr          $ra
/* 000038 80037B18 00000000 */   nop

glabel func_80037B1C # 2
/* 00003C 80037B1C 27BDFF80 */  addiu       $sp, $sp, -0x80
/* 000040 80037B20 AFB40034 */  sw          $s4, 0x34($sp)
/* 000044 80037B24 AFB30030 */  sw          $s3, 0x30($sp)
/* 000048 80037B28 AFB2002C */  sw          $s2, 0x2c($sp)
/* 00004C 80037B2C AFB00024 */  sw          $s0, 0x24($sp)
/* 000050 80037B30 00C08025 */  move        $s0, $a2
/* 000054 80037B34 00A09025 */  move        $s2, $a1
/* 000058 80037B38 00809825 */  move        $s3, $a0
/* 00005C 80037B3C 27B40068 */  addiu       $s4, $sp, 0x68
/* 000060 80037B40 AFBF003C */  sw          $ra, 0x3c($sp)
/* 000064 80037B44 AFB50038 */  sw          $s5, 0x38($sp)
/* 000068 80037B48 AFB10028 */  sw          $s1, 0x28($sp)
/* 00006C 80037B4C 02802025 */  move        $a0, $s4
/* 000070 80037B50 27A50064 */  addiu       $a1, $sp, 0x64
/* 000074 80037B54 0C0145B8 */  jal         func_800516E0
/* 000078 80037B58 24060001 */   addiu      $a2, $zero, 0x1
/* 00007C 80037B5C 02402025 */  move        $a0, $s2
/* 000080 80037B60 0C014CD0 */  jal         func_80053340
/* 000084 80037B64 02002825 */   move       $a1, $s0
/* 000088 80037B68 12000017 */  beq         $s0, $zero, .L80037BC8
/* 00008C 80037B6C 02008825 */   move       $s1, $s0
/* 000090 80037B70 27B5004C */  addiu       $s5, $sp, 0x4c
.L80037B74:
/* 000094 80037B74 2E214001 */  sltiu       $at, $s1, 0x4001
/* 000098 80037B78 14200003 */  bne         $at, $zero, .L80037B88
/* 00009C 80037B7C 02A02025 */   move       $a0, $s5
/* 0000A0 80037B80 10000002 */  b           .L80037B8C
/* 0000A4 80037B84 24104000 */   addiu      $s0, $zero, 0x4000
.L80037B88:
/* 0000A8 80037B88 02208025 */  move        $s0, $s1
.L80037B8C:
/* 0000AC 80037B8C 00002825 */  move        $a1, $zero
/* 0000B0 80037B90 00003025 */  move        $a2, $zero
/* 0000B4 80037B94 02603825 */  move        $a3, $s3
/* 0000B8 80037B98 AFB20010 */  sw          $s2, 0x10($sp)
/* 0000BC 80037B9C AFB00014 */  sw          $s0, 0x14($sp)
/* 0000C0 80037BA0 0C014CFC */  jal         func_800533F0
/* 0000C4 80037BA4 AFB40018 */   sw         $s4, 0x18($sp)
/* 0000C8 80037BA8 02802025 */  move        $a0, $s4
/* 0000CC 80037BAC 00002825 */  move        $a1, $zero
/* 0000D0 80037BB0 0C014554 */  jal         func_80051550
/* 0000D4 80037BB4 24060001 */   addiu      $a2, $zero, 0x1
/* 0000D8 80037BB8 02308823 */  subu        $s1, $s1, $s0
/* 0000DC 80037BBC 02709821 */  addu        $s3, $s3, $s0
/* 0000E0 80037BC0 1620FFEC */  bne         $s1, $zero, .L80037B74
/* 0000E4 80037BC4 02509021 */   addu       $s2, $s2, $s0
.L80037BC8:
/* 0000E8 80037BC8 8FBF003C */  lw          $ra, 0x3c($sp)
/* 0000EC 80037BCC 8FB00024 */  lw          $s0, 0x24($sp)
/* 0000F0 80037BD0 8FB10028 */  lw          $s1, 0x28($sp)
/* 0000F4 80037BD4 8FB2002C */  lw          $s2, 0x2c($sp)
/* 0000F8 80037BD8 8FB30030 */  lw          $s3, 0x30($sp)
/* 0000FC 80037BDC 8FB40034 */  lw          $s4, 0x34($sp)
/* 000100 80037BE0 8FB50038 */  lw          $s5, 0x38($sp)
/* 000104 80037BE4 03E00008 */  jr          $ra
/* 000108 80037BE8 27BD0080 */   addiu      $sp, $sp, 0x80

glabel func_80037BEC # 3
/* 00010C 80037BEC 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000110 80037BF0 AFB00018 */  sw          $s0, 0x18($sp)
/* 000114 80037BF4 00808025 */  move        $s0, $a0
/* 000118 80037BF8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00011C 80037BFC AFA5002C */  sw          $a1, 0x2c($sp)
/* 000120 80037C00 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 000124 80037C04 00057080 */  sll         $t6, $a1, 2
/* 000128 80037C08 01C02825 */  move        $a1, $t6
/* 00012C 80037C0C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 000130 80037C10 0C00E03D */  jal         func_800380F4
/* 000134 80037C14 24060055 */   addiu      $a2, $zero, 0x55
/* 000138 80037C18 8FA5002C */  lw          $a1, 0x2c($sp)
/* 00013C 80037C1C 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 000140 80037C20 AFA20024 */  sw          $v0, 0x24($sp)
/* 000144 80037C24 00057880 */  sll         $t7, $a1, 2
/* 000148 80037C28 01E57823 */  subu        $t7, $t7, $a1
/* 00014C 80037C2C 000F28C0 */  sll         $a1, $t7, 3
/* 000150 80037C30 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 000154 80037C34 0C00E03D */  jal         func_800380F4
/* 000158 80037C38 2406005A */   addiu      $a2, $zero, 0x5a
/* 00015C 80037C3C AE020024 */  sw          $v0, 0x24($s0)
/* 000160 80037C40 8FA6002C */  lw          $a2, 0x2c($sp)
/* 000164 80037C44 8FA50024 */  lw          $a1, 0x24($sp)
/* 000168 80037C48 0C0145B8 */  jal         func_800516E0
/* 00016C 80037C4C 2604000C */   addiu      $a0, $s0, 0xc
/* 000170 80037C50 AE000000 */  sw          $zero, 0x0($s0)
/* 000174 80037C54 AE000004 */  sw          $zero, 0x4($s0)
/* 000178 80037C58 8FB8002C */  lw          $t8, 0x2c($sp)
/* 00017C 80037C5C AE180008 */  sw          $t8, 0x8($s0)
/* 000180 80037C60 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000184 80037C64 8FB00018 */  lw          $s0, 0x18($sp)
/* 000188 80037C68 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00018C 80037C6C 03E00008 */  jr          $ra
/* 000190 80037C70 00000000 */   nop

glabel func_80037C74 # 4
/* 000194 80037C74 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000198 80037C78 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00019C 80037C7C AFB00018 */  sw          $s0, 0x18($sp)
/* 0001A0 80037C80 0C00DFA8 */  jal         func_80037EA0
/* 0001A4 80037C84 00808025 */   move       $s0, $a0
/* 0001A8 80037C88 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 0001AC 80037C8C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 0001B0 80037C90 0C00E152 */  jal         func_80038548
/* 0001B4 80037C94 8E050024 */   lw         $a1, 0x24($s0)
/* 0001B8 80037C98 3C04800F */  lui         $a0, %hi(D_800F2960)
/* 0001BC 80037C9C 24842960 */  addiu       $a0, $a0, %lo(D_800F2960)
/* 0001C0 80037CA0 0C00E152 */  jal         func_80038548
/* 0001C4 80037CA4 8E050020 */   lw         $a1, 0x20($s0)
/* 0001C8 80037CA8 AE000000 */  sw          $zero, 0x0($s0)
/* 0001CC 80037CAC AE000004 */  sw          $zero, 0x4($s0)
/* 0001D0 80037CB0 AE000008 */  sw          $zero, 0x8($s0)
/* 0001D4 80037CB4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 0001D8 80037CB8 8FB00018 */  lw          $s0, 0x18($sp)
/* 0001DC 80037CBC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0001E0 80037CC0 03E00008 */  jr          $ra
/* 0001E4 80037CC4 00000000 */   nop

glabel func_80037CC8 # 5
/* 0001E8 80037CC8 8C8E0000 */  lw          $t6, 0x0($a0)
/* 0001EC 80037CCC 25CFFFFF */  addiu       $t7, $t6, -0x1
/* 0001F0 80037CD0 03E00008 */  jr          $ra
/* 0001F4 80037CD4 AC8F0000 */   sw         $t7, 0x0($a0)

glabel func_80037CD8 # 6
/* 0001F8 80037CD8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0001FC 80037CDC AFB10018 */  sw          $s1, 0x18($sp)
/* 000200 80037CE0 AFB00014 */  sw          $s0, 0x14($sp)
/* 000204 80037CE4 00808025 */  move        $s0, $a0
/* 000208 80037CE8 AFBF001C */  sw          $ra, 0x1c($sp)
/* 00020C 80037CEC 2491000C */  addiu       $s1, $a0, 0xc
/* 000210 80037CF0 02202025 */  move        $a0, $s1
/* 000214 80037CF4 00002825 */  move        $a1, $zero
/* 000218 80037CF8 0C014554 */  jal         func_80051550
/* 00021C 80037CFC 00003025 */   move       $a2, $zero
/* 000220 80037D00 5440000A */  bnel        $v0, $zero, .L80037D2C
/* 000224 80037D04 8FBF001C */   lw         $ra, 0x1c($sp)
.L80037D08:
/* 000228 80037D08 0C00DF32 */  jal         func_80037CC8
/* 00022C 80037D0C 02002025 */   move       $a0, $s0
/* 000230 80037D10 02202025 */  move        $a0, $s1
/* 000234 80037D14 00002825 */  move        $a1, $zero
/* 000238 80037D18 0C014554 */  jal         func_80051550
/* 00023C 80037D1C 00003025 */   move       $a2, $zero
/* 000240 80037D20 1040FFF9 */  beq         $v0, $zero, .L80037D08
/* 000244 80037D24 00000000 */   nop
/* 000248 80037D28 8FBF001C */  lw          $ra, 0x1c($sp)
.L80037D2C:
/* 00024C 80037D2C 8E020000 */  lw          $v0, 0x0($s0)
/* 000250 80037D30 8FB00014 */  lw          $s0, 0x14($sp)
/* 000254 80037D34 8FB10018 */  lw          $s1, 0x18($sp)
/* 000258 80037D38 03E00008 */  jr          $ra
/* 00025C 80037D3C 27BD0020 */   addiu      $sp, $sp, 0x20

glabel func_80037D40 # 7
/* 000260 80037D40 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 000264 80037D44 AFBF002C */  sw          $ra, 0x2c($sp)
/* 000268 80037D48 AFB00028 */  sw          $s0, 0x28($sp)
/* 00026C 80037D4C 00808025 */  move        $s0, $a0
/* 000270 80037D50 AFA5003C */  sw          $a1, 0x3c($sp)
/* 000274 80037D54 AFA60040 */  sw          $a2, 0x40($sp)
/* 000278 80037D58 0C00DF36 */  jal         func_80037CD8
/* 00027C 80037D5C AFA70044 */   sw         $a3, 0x44($sp)
/* 000280 80037D60 8E0E0008 */  lw          $t6, 0x8($s0)
/* 000284 80037D64 2604000C */  addiu       $a0, $s0, 0xc
/* 000288 80037D68 00002825 */  move        $a1, $zero
/* 00028C 80037D6C 544E0006 */  bnel        $v0, $t6, .L80037D88
/* 000290 80037D70 260F000C */   addiu      $t7, $s0, 0xc
/* 000294 80037D74 0C014554 */  jal         func_80051550
/* 000298 80037D78 24060001 */   addiu      $a2, $zero, 0x1
/* 00029C 80037D7C 0C00DF32 */  jal         func_80037CC8
/* 0002A0 80037D80 02002025 */   move       $a0, $s0
/* 0002A4 80037D84 260F000C */  addiu       $t7, $s0, 0xc
.L80037D88:
/* 0002A8 80037D88 AFAF0034 */  sw          $t7, 0x34($sp)
/* 0002AC 80037D8C 8FA40040 */  lw          $a0, 0x40($sp)
/* 0002B0 80037D90 0C014CD0 */  jal         func_80053340
/* 0002B4 80037D94 8FA50044 */   lw         $a1, 0x44($sp)
/* 0002B8 80037D98 8E190004 */  lw          $t9, 0x4($s0)
/* 0002BC 80037D9C 8E180024 */  lw          $t8, 0x24($s0)
/* 0002C0 80037DA0 8FA90040 */  lw          $t1, 0x40($sp)
/* 0002C4 80037DA4 00194080 */  sll         $t0, $t9, 2
/* 0002C8 80037DA8 8FAA0044 */  lw          $t2, 0x44($sp)
/* 0002CC 80037DAC 8FAB0034 */  lw          $t3, 0x34($sp)
/* 0002D0 80037DB0 01194023 */  subu        $t0, $t0, $t9
/* 0002D4 80037DB4 000840C0 */  sll         $t0, $t0, 3
/* 0002D8 80037DB8 00002825 */  move        $a1, $zero
/* 0002DC 80037DBC 00003025 */  move        $a2, $zero
/* 0002E0 80037DC0 8FA7003C */  lw          $a3, 0x3c($sp)
/* 0002E4 80037DC4 03082021 */  addu        $a0, $t8, $t0
/* 0002E8 80037DC8 AFA90010 */  sw          $t1, 0x10($sp)
/* 0002EC 80037DCC AFAA0014 */  sw          $t2, 0x14($sp)
/* 0002F0 80037DD0 0C014CFC */  jal         func_800533F0
/* 0002F4 80037DD4 AFAB0018 */   sw         $t3, 0x18($sp)
/* 0002F8 80037DD8 8E0E0004 */  lw          $t6, 0x4($s0)
/* 0002FC 80037DDC 8E0C0000 */  lw          $t4, 0x0($s0)
/* 000300 80037DE0 8E180008 */  lw          $t8, 0x8($s0)
/* 000304 80037DE4 25CF0001 */  addiu       $t7, $t6, 0x1
/* 000308 80037DE8 258D0001 */  addiu       $t5, $t4, 0x1
/* 00030C 80037DEC 01F8082A */  slt         $at, $t7, $t8
/* 000310 80037DF0 AE0D0000 */  sw          $t5, 0x0($s0)
/* 000314 80037DF4 14200002 */  bne         $at, $zero, .L80037E00
/* 000318 80037DF8 AE0F0004 */   sw         $t7, 0x4($s0)
/* 00031C 80037DFC AE000004 */  sw          $zero, 0x4($s0)
.L80037E00:
/* 000320 80037E00 8FBF002C */  lw          $ra, 0x2c($sp)
/* 000324 80037E04 8E020000 */  lw          $v0, 0x0($s0)
/* 000328 80037E08 8FB00028 */  lw          $s0, 0x28($sp)
/* 00032C 80037E0C 03E00008 */  jr          $ra
/* 000330 80037E10 27BD0038 */   addiu      $sp, $sp, 0x38

glabel func_80037E14 # 8
/* 000334 80037E14 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 000338 80037E18 AFB40028 */  sw          $s4, 0x28($sp)
/* 00033C 80037E1C AFB30024 */  sw          $s3, 0x24($sp)
/* 000340 80037E20 AFB20020 */  sw          $s2, 0x20($sp)
/* 000344 80037E24 AFB1001C */  sw          $s1, 0x1c($sp)
/* 000348 80037E28 0080A025 */  move        $s4, $a0
/* 00034C 80037E2C AFBF002C */  sw          $ra, 0x2c($sp)
/* 000350 80037E30 AFB00018 */  sw          $s0, 0x18($sp)
/* 000354 80037E34 00A09025 */  move        $s2, $a1
/* 000358 80037E38 00C09825 */  move        $s3, $a2
/* 00035C 80037E3C 10E0000F */  beq         $a3, $zero, .L80037E7C
/* 000360 80037E40 00E08825 */   move       $s1, $a3
.L80037E44:
/* 000364 80037E44 2E214001 */  sltiu       $at, $s1, 0x4001
/* 000368 80037E48 14200003 */  bne         $at, $zero, .L80037E58
/* 00036C 80037E4C 02802025 */   move       $a0, $s4
/* 000370 80037E50 10000002 */  b           .L80037E5C
/* 000374 80037E54 24104000 */   addiu      $s0, $zero, 0x4000
.L80037E58:
/* 000378 80037E58 02208025 */  move        $s0, $s1
.L80037E5C:
/* 00037C 80037E5C 02402825 */  move        $a1, $s2
/* 000380 80037E60 02603025 */  move        $a2, $s3
/* 000384 80037E64 0C00DF50 */  jal         func_80037D40
/* 000388 80037E68 02003825 */   move       $a3, $s0
/* 00038C 80037E6C 02308823 */  subu        $s1, $s1, $s0
/* 000390 80037E70 02509021 */  addu        $s2, $s2, $s0
/* 000394 80037E74 1620FFF3 */  bne         $s1, $zero, .L80037E44
/* 000398 80037E78 02709821 */   addu       $s3, $s3, $s0
.L80037E7C:
/* 00039C 80037E7C 8FBF002C */  lw          $ra, 0x2c($sp)
/* 0003A0 80037E80 8E820000 */  lw          $v0, 0x0($s4)
/* 0003A4 80037E84 8FB40028 */  lw          $s4, 0x28($sp)
/* 0003A8 80037E88 8FB00018 */  lw          $s0, 0x18($sp)
/* 0003AC 80037E8C 8FB1001C */  lw          $s1, 0x1c($sp)
/* 0003B0 80037E90 8FB20020 */  lw          $s2, 0x20($sp)
/* 0003B4 80037E94 8FB30024 */  lw          $s3, 0x24($sp)
/* 0003B8 80037E98 03E00008 */  jr          $ra
/* 0003BC 80037E9C 27BD0030 */   addiu      $sp, $sp, 0x30

glabel func_80037EA0 # 9
/* 0003C0 80037EA0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0003C4 80037EA4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 0003C8 80037EA8 AFB10018 */  sw          $s1, 0x18($sp)
/* 0003CC 80037EAC AFB00014 */  sw          $s0, 0x14($sp)
/* 0003D0 80037EB0 8C8E0000 */  lw          $t6, 0x0($a0)
/* 0003D4 80037EB4 00808025 */  move        $s0, $a0
/* 0003D8 80037EB8 2491000C */  addiu       $s1, $a0, 0xc
/* 0003DC 80037EBC 19C00009 */  blez        $t6, .L80037EE4
/* 0003E0 80037EC0 02202025 */   move       $a0, $s1
.L80037EC4:
/* 0003E4 80037EC4 00002825 */  move        $a1, $zero
/* 0003E8 80037EC8 0C014554 */  jal         func_80051550
/* 0003EC 80037ECC 24060001 */   addiu      $a2, $zero, 0x1
/* 0003F0 80037ED0 0C00DF32 */  jal         func_80037CC8
/* 0003F4 80037ED4 02002025 */   move       $a0, $s0
/* 0003F8 80037ED8 8E0F0000 */  lw          $t7, 0x0($s0)
/* 0003FC 80037EDC 5DE0FFF9 */  bgtzl       $t7, .L80037EC4
/* 000400 80037EE0 02202025 */   move       $a0, $s1
.L80037EE4:
/* 000404 80037EE4 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000408 80037EE8 8FB00014 */  lw          $s0, 0x14($sp)
/* 00040C 80037EEC 8FB10018 */  lw          $s1, 0x18($sp)
/* 000410 80037EF0 03E00008 */  jr          $ra
/* 000414 80037EF4 27BD0020 */   addiu      $sp, $sp, 0x20
/* 000418 80037EF8 00000000 */  nop
/* 00041C 80037EFC 00000000 */  nop
