.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004F160 # 0
/* 04ED10 8004F160 28A1000C */  slti        $at, $a1, 0xc
/* 04ED14 8004F164 1420001D */  bnez        $at, .L8004F1DC
/* 04ED18 8004F168 00041823 */   negu       $v1, $a0
/* 04ED1C 8004F16C 30630003 */  andi        $v1, $v1, 0x3
/* 04ED20 8004F170 10600003 */  beqz        $v1, .L8004F180
/* 04ED24 8004F174 00A32823 */   subu       $a1, $a1, $v1
/* 04ED28 8004F178 A8800000 */  swl         $zero, 0x0($a0)
/* 04ED2C 8004F17C 00832021 */  addu        $a0, $a0, $v1
.L8004F180:
/* 04ED30 8004F180 2401FFE0 */  addiu       $at, $zero, -0x20
/* 04ED34 8004F184 00A13824 */  and         $a3, $a1, $at
/* 04ED38 8004F188 10E0000C */  beqz        $a3, .L8004F1BC
/* 04ED3C 8004F18C 00A72823 */   subu       $a1, $a1, $a3
/* 04ED40 8004F190 00E43821 */  addu        $a3, $a3, $a0
.L8004F194:
/* 04ED44 8004F194 24840020 */  addiu       $a0, $a0, 0x20
/* 04ED48 8004F198 AC80FFE0 */  sw          $zero, -0x20($a0)
/* 04ED4C 8004F19C AC80FFE4 */  sw          $zero, -0x1c($a0)
/* 04ED50 8004F1A0 AC80FFE8 */  sw          $zero, -0x18($a0)
/* 04ED54 8004F1A4 AC80FFEC */  sw          $zero, -0x14($a0)
/* 04ED58 8004F1A8 AC80FFF0 */  sw          $zero, -0x10($a0)
/* 04ED5C 8004F1AC AC80FFF4 */  sw          $zero, -0xc($a0)
/* 04ED60 8004F1B0 AC80FFF8 */  sw          $zero, -0x8($a0)
/* 04ED64 8004F1B4 1487FFF7 */  bne         $a0, $a3, .L8004F194
/* 04ED68 8004F1B8 AC80FFFC */   sw         $zero, -0x4($a0)
.L8004F1BC:
/* 04ED6C 8004F1BC 2401FFFC */  addiu       $at, $zero, -0x4
/* 04ED70 8004F1C0 00A13824 */  and         $a3, $a1, $at
/* 04ED74 8004F1C4 10E00005 */  beqz        $a3, .L8004F1DC
/* 04ED78 8004F1C8 00A72823 */   subu       $a1, $a1, $a3
/* 04ED7C 8004F1CC 00E43821 */  addu        $a3, $a3, $a0
.L8004F1D0:
/* 04ED80 8004F1D0 24840004 */  addiu       $a0, $a0, 0x4
/* 04ED84 8004F1D4 1487FFFE */  bne         $a0, $a3, .L8004F1D0
/* 04ED88 8004F1D8 AC80FFFC */   sw         $zero, -0x4($a0)
.L8004F1DC:
/* 04ED8C 8004F1DC 18A00005 */  blez        $a1, .L8004F1F4
/* 04ED90 8004F1E0 00000000 */   nop
/* 04ED94 8004F1E4 00A42821 */  addu        $a1, $a1, $a0
.L8004F1E8:
/* 04ED98 8004F1E8 24840001 */  addiu       $a0, $a0, 0x1
/* 04ED9C 8004F1EC 1485FFFE */  bne         $a0, $a1, .L8004F1E8
/* 04EDA0 8004F1F0 A080FFFF */   sb         $zero, -0x1($a0)
.L8004F1F4:
/* 04EDA4 8004F1F4 03E00008 */  jr          $ra
/* 04EDA8 8004F1F8 00000000 */   nop
/* 04EDAC 8004F1FC 00000000 */  nop
