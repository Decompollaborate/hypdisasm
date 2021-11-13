.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050AA0 # 0
/* 000000 80050AA0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 000004 80050AA4 AFA40028 */  sw          $a0, 0x28($sp)
/* 000008 80050AA8 AFA5002C */  sw          $a1, 0x2c($sp)
/* 00000C 80050AAC 8FAE002C */  lw          $t6, 0x2c($sp)
/* 000010 80050AB0 8FAF0028 */  lw          $t7, 0x28($sp)
/* 000014 80050AB4 AFBF001C */  sw          $ra, 0x1c($sp)
/* 000018 80050AB8 AFA60030 */  sw          $a2, 0x30($sp)
/* 00001C 80050ABC AFA70034 */  sw          $a3, 0x34($sp)
/* 000020 80050AC0 AFB00018 */  sw          $s0, 0x18($sp)
/* 000024 80050AC4 ADEE0014 */  sw          $t6, 0x14($t7)
/* 000028 80050AC8 8FB90028 */  lw          $t9, 0x28($sp)
/* 00002C 80050ACC 8FB8003C */  lw          $t8, 0x3c($sp)
/* 000030 80050AD0 AF380004 */  sw          $t8, 0x4($t9)
/* 000034 80050AD4 8FA80028 */  lw          $t0, 0x28($sp)
/* 000038 80050AD8 AD000000 */  sw          $zero, 0x0($t0)
/* 00003C 80050ADC 8FA90028 */  lw          $t1, 0x28($sp)
/* 000040 80050AE0 AD200008 */  sw          $zero, 0x8($t1)
/* 000044 80050AE4 8FAB0028 */  lw          $t3, 0x28($sp)
/* 000048 80050AE8 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00004C 80050AEC AD6A011C */  sw          $t2, 0x11c($t3)
/* 000050 80050AF0 8FAC0034 */  lw          $t4, 0x34($sp)
/* 000054 80050AF4 8FAD0028 */  lw          $t5, 0x28($sp)
/* 000058 80050AF8 01807825 */  move        $t7, $t4
/* 00005C 80050AFC 000C77C3 */  sra         $t6, $t4, 31
/* 000060 80050B00 ADAE0038 */  sw          $t6, 0x38($t5)
/* 000064 80050B04 ADAF003C */  sw          $t7, 0x3c($t5)
/* 000068 80050B08 8FB80038 */  lw          $t8, 0x38($sp)
/* 00006C 80050B0C 8FB90028 */  lw          $t9, 0x28($sp)
/* 000070 80050B10 3C0C8005 */  lui         $t4, %hi(D_80057F20)
/* 000074 80050B14 03004825 */  move        $t1, $t8
/* 000078 80050B18 2D210010 */  sltiu       $at, $t1, 0x10
/* 00007C 80050B1C 001847C3 */  sra         $t0, $t8, 31
/* 000080 80050B20 01015023 */  subu        $t2, $t0, $at
/* 000084 80050B24 252BFFF0 */  addiu       $t3, $t1, -0x10
/* 000088 80050B28 AF2B00F4 */  sw          $t3, 0xf4($t9)
/* 00008C 80050B2C AF2A00F0 */  sw          $t2, 0xf0($t9)
/* 000090 80050B30 8FAD0028 */  lw          $t5, 0x28($sp)
/* 000094 80050B34 258C7F20 */  addiu       $t4, $t4, %lo(D_80057F20)
/* 000098 80050B38 01807825 */  move        $t7, $t4
/* 00009C 80050B3C 000C77C3 */  sra         $t6, $t4, 31
/* 0000A0 80050B40 ADAE0100 */  sw          $t6, 0x100($t5)
/* 0000A4 80050B44 ADAF0104 */  sw          $t7, 0x104($t5)
/* 0000A8 80050B48 8FA90028 */  lw          $t1, 0x28($sp)
/* 0000AC 80050B4C 3C18003F */  lui         $t8, 0x3f
/* 0000B0 80050B50 3718FF01 */  ori         $t8, $t8, 0xff01
/* 0000B4 80050B54 AFB80020 */  sw          $t8, 0x20($sp)
/* 0000B8 80050B58 3408FF03 */  ori         $t0, $zero, 0xff03
/* 0000BC 80050B5C AD280118 */  sw          $t0, 0x118($t1)
/* 0000C0 80050B60 8FAA0020 */  lw          $t2, 0x20($sp)
/* 0000C4 80050B64 8FAC0028 */  lw          $t4, 0x28($sp)
/* 0000C8 80050B68 3C01003F */  lui         $at, 0x3f
/* 0000CC 80050B6C 01415824 */  and         $t3, $t2, $at
/* 0000D0 80050B70 000BCC02 */  srl         $t9, $t3, 16
/* 0000D4 80050B74 AD990128 */  sw          $t9, 0x128($t4)
/* 0000D8 80050B78 8FAF0028 */  lw          $t7, 0x28($sp)
/* 0000DC 80050B7C 3C0E0100 */  lui         $t6, 0x100
/* 0000E0 80050B80 35CE0800 */  ori         $t6, $t6, 0x800
/* 0000E4 80050B84 ADEE012C */  sw          $t6, 0x12c($t7)
/* 0000E8 80050B88 8FAD0028 */  lw          $t5, 0x28($sp)
/* 0000EC 80050B8C 24180001 */  addiu       $t8, $zero, 0x1
/* 0000F0 80050B90 ADA00018 */  sw          $zero, 0x18($t5)
/* 0000F4 80050B94 8FA80028 */  lw          $t0, 0x28($sp)
/* 0000F8 80050B98 A5180010 */  sh          $t8, 0x10($t0)
/* 0000FC 80050B9C 8FA90028 */  lw          $t1, 0x28($sp)
/* 000100 80050BA0 0C015FFC */  jal         func_80057FF0
/* 000104 80050BA4 A5200012 */   sh         $zero, 0x12($t1)
/* 000108 80050BA8 3C0A800A */  lui         $t2, %hi(D_8009F89C)
/* 00010C 80050BAC 8D4AF89C */  lw          $t2, %lo(D_8009F89C)($t2)
/* 000110 80050BB0 8FAB0028 */  lw          $t3, 0x28($sp)
/* 000114 80050BB4 00408025 */  move        $s0, $v0
/* 000118 80050BB8 3C01800A */  lui         $at, 0x800a
/* 00011C 80050BBC AD6A000C */  sw          $t2, 0xc($t3)
/* 000120 80050BC0 8FB90028 */  lw          $t9, 0x28($sp)
/* 000124 80050BC4 02002025 */  move        $a0, $s0
/* 000128 80050BC8 0C016018 */  jal         func_80058060
/* 00012C 80050BCC AC39F89C */   sw         $t9, -0x764($at)
/* 000130 80050BD0 8FBF001C */  lw          $ra, 0x1c($sp)
/* 000134 80050BD4 8FB00018 */  lw          $s0, 0x18($sp)
/* 000138 80050BD8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00013C 80050BDC 03E00008 */  jr          $ra
/* 000140 80050BE0 00000000 */   nop
/* 000144 80050BE4 00000000 */  nop
/* 000148 80050BE8 00000000 */  nop
/* 00014C 80050BEC 00000000 */  nop
