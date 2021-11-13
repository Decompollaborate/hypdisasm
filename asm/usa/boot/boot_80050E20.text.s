.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80050E20 # 0
/* 0509D0 80050E20 28A1000C */  slti        $at, $a1, 0xc
/* 0509D4 80050E24 1420001D */  bne         $at, $zero, .L80050E9C
/* 0509D8 80050E28 00041823 */   subu       $v1, $zero, $a0
/* 0509DC 80050E2C 30630003 */  andi        $v1, $v1, 0x3
/* 0509E0 80050E30 10600003 */  beq         $v1, $zero, .L80050E40
/* 0509E4 80050E34 00A32823 */   subu       $a1, $a1, $v1
/* 0509E8 80050E38 A8800000 */  swl         $zero, 0x0($a0)
/* 0509EC 80050E3C 00832021 */  addu        $a0, $a0, $v1
.L80050E40:
/* 0509F0 80050E40 2401FFE0 */  addiu       $at, $zero, -0x20
/* 0509F4 80050E44 00A13824 */  and         $a3, $a1, $at
/* 0509F8 80050E48 10E0000C */  beq         $a3, $zero, .L80050E7C
/* 0509FC 80050E4C 00A72823 */   subu       $a1, $a1, $a3
/* 050A00 80050E50 00E43821 */  addu        $a3, $a3, $a0
.L80050E54:
/* 050A04 80050E54 24840020 */  addiu       $a0, $a0, 0x20
/* 050A08 80050E58 AC80FFE0 */  sw          $zero, -0x20($a0)
/* 050A0C 80050E5C AC80FFE4 */  sw          $zero, -0x1c($a0)
/* 050A10 80050E60 AC80FFE8 */  sw          $zero, -0x18($a0)
/* 050A14 80050E64 AC80FFEC */  sw          $zero, -0x14($a0)
/* 050A18 80050E68 AC80FFF0 */  sw          $zero, -0x10($a0)
/* 050A1C 80050E6C AC80FFF4 */  sw          $zero, -0xc($a0)
/* 050A20 80050E70 AC80FFF8 */  sw          $zero, -0x8($a0)
/* 050A24 80050E74 1487FFF7 */  bne         $a0, $a3, .L80050E54
/* 050A28 80050E78 AC80FFFC */   sw         $zero, -0x4($a0)
.L80050E7C:
/* 050A2C 80050E7C 2401FFFC */  addiu       $at, $zero, -0x4
/* 050A30 80050E80 00A13824 */  and         $a3, $a1, $at
/* 050A34 80050E84 10E00005 */  beq         $a3, $zero, .L80050E9C
/* 050A38 80050E88 00A72823 */   subu       $a1, $a1, $a3
/* 050A3C 80050E8C 00E43821 */  addu        $a3, $a3, $a0
.L80050E90:
/* 050A40 80050E90 24840004 */  addiu       $a0, $a0, 0x4
/* 050A44 80050E94 1487FFFE */  bne         $a0, $a3, .L80050E90
/* 050A48 80050E98 AC80FFFC */   sw         $zero, -0x4($a0)
.L80050E9C:
/* 050A4C 80050E9C 18A00005 */  blez        $a1, .L80050EB4
/* 050A50 80050EA0 00000000 */   nop
/* 050A54 80050EA4 00A42821 */  addu        $a1, $a1, $a0
.L80050EA8:
/* 050A58 80050EA8 24840001 */  addiu       $a0, $a0, 0x1
/* 050A5C 80050EAC 1485FFFE */  bne         $a0, $a1, .L80050EA8
/* 050A60 80050EB0 A080FFFF */   sb         $zero, -0x1($a0)
.L80050EB4:
/* 050A64 80050EB4 03E00008 */  jr          $ra
/* 050A68 80050EB8 00000000 */   nop
/* 050A6C 80050EBC 00000000 */  nop
