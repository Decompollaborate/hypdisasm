.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8005D700 # 0
/* 05D2B0 8005D700 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 05D2B4 8005D704 AFB00018 */  sw          $s0, 0x18($sp)
/* 05D2B8 8005D708 3C108010 */  lui         $s0, %hi(D_80105DB0)
/* 05D2BC 8005D70C 26105DB0 */  addiu       $s0, $s0, %lo(D_80105DB0)
/* 05D2C0 8005D710 AFBF001C */  sw          $ra, 0x1c($sp)
/* 05D2C4 8005D714 24020002 */  addiu       $v0, $zero, 0x2
/* 05D2C8 8005D718 24030006 */  addiu       $v1, $zero, 0x6
/* 05D2CC 8005D71C 3C0EA500 */  lui         $t6, 0xa500
/* 05D2D0 8005D720 240F0003 */  addiu       $t7, $zero, 0x3
/* 05D2D4 8005D724 24180001 */  addiu       $t8, $zero, 0x1
/* 05D2D8 8005D728 3C048010 */  lui         $a0, %hi(D_80105DC4)
/* 05D2DC 8005D72C A2020004 */  sb          $v0, 0x4($s0)
/* 05D2E0 8005D730 AE0E000C */  sw          $t6, 0xc($s0)
/* 05D2E4 8005D734 A20F0005 */  sb          $t7, 0x5($s0)
/* 05D2E8 8005D738 A2030008 */  sb          $v1, 0x8($s0)
/* 05D2EC 8005D73C A2030006 */  sb          $v1, 0x6($s0)
/* 05D2F0 8005D740 A2020007 */  sb          $v0, 0x7($s0)
/* 05D2F4 8005D744 A2180009 */  sb          $t8, 0x9($s0)
/* 05D2F8 8005D748 AE000010 */  sw          $zero, 0x10($s0)
/* 05D2FC 8005D74C 24845DC4 */  addiu       $a0, $a0, %lo(D_80105DC4)
/* 05D300 8005D750 0C013C58 */  jal         func_8004F160
/* 05D304 8005D754 24050060 */   addiu      $a1, $zero, 0x60
/* 05D308 8005D758 0C015594 */  jal         func_80055650
/* 05D30C 8005D75C 00000000 */   nop
/* 05D310 8005D760 3C03800A */  lui         $v1, %hi(D_800A31BC)
/* 05D314 8005D764 246331BC */  addiu       $v1, $v1, %lo(D_800A31BC)
/* 05D318 8005D768 8C790000 */  lw          $t9, 0x0($v1)
/* 05D31C 8005D76C AC700000 */  sw          $s0, 0x0($v1)
/* 05D320 8005D770 3C018010 */  lui         $at, %hi(D_80105E24)
/* 05D324 8005D774 AE190000 */  sw          $t9, 0x0($s0)
/* 05D328 8005D778 AC305E24 */  sw          $s0, %lo(D_80105E24)($at)
/* 05D32C 8005D77C 0C01559C */  jal         func_80055670
/* 05D330 8005D780 00402025 */   move       $a0, $v0
/* 05D334 8005D784 8FBF001C */  lw          $ra, 0x1c($sp)
/* 05D338 8005D788 02001025 */  move        $v0, $s0
/* 05D33C 8005D78C 8FB00018 */  lw          $s0, 0x18($sp)
/* 05D340 8005D790 03E00008 */  jr          $ra
/* 05D344 8005D794 27BD0020 */   addiu      $sp, $sp, 0x20
/* 05D348 8005D798 00000000 */  nop
/* 05D34C 8005D79C 00000000 */  nop
