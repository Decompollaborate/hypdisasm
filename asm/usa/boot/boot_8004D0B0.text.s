.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D0B0 # 0
/* 04CC60 8004D0B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04CC64 8004D0B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04CC68 8004D0B8 8C8E0008 */  lw          $t6, 0x8($a0)
/* 04CC6C 8004D0BC 51C00014 */  beql        $t6, $zero, .L8004D110
/* 04CC70 8004D0C0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04CC74 8004D0C4 0C013763 */  jal         func_8004DD8C
/* 04CC78 8004D0C8 AFA40018 */   sw         $a0, 0x18($sp)
/* 04CC7C 8004D0CC 8FA70018 */  lw          $a3, 0x18($sp)
/* 04CC80 8004D0D0 1040000E */  beq         $v0, $zero, .L8004D10C
/* 04CC84 8004D0D4 00403025 */   move       $a2, $v0
/* 04CC88 8004D0D8 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 04CC8C 8004D0DC 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 04CC90 8004D0E0 8CF90008 */  lw          $t9, 0x8($a3)
/* 04CC94 8004D0E4 240A000F */  addiu       $t2, $zero, 0xf
/* 04CC98 8004D0E8 8DF80028 */  lw          $t8, 0x28($t7)
/* 04CC9C 8004D0EC 8F280088 */  lw          $t0, 0x88($t9)
/* 04CCA0 8004D0F0 A44A0008 */  sh          $t2, 0x8($v0)
/* 04CCA4 8004D0F4 AC400000 */  sw          $zero, 0x0($v0)
/* 04CCA8 8004D0F8 03084821 */  addu        $t1, $t8, $t0
/* 04CCAC 8004D0FC AC490004 */  sw          $t1, 0x4($v0)
/* 04CCB0 8004D100 8CE40008 */  lw          $a0, 0x8($a3)
/* 04CCB4 8004D104 0C013986 */  jal         func_8004E618
/* 04CCB8 8004D108 24050003 */   addiu      $a1, $zero, 0x3
.L8004D10C:
/* 04CCBC 8004D10C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D110:
/* 04CCC0 8004D110 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04CCC4 8004D114 03E00008 */  jr          $ra
/* 04CCC8 8004D118 00000000 */   nop
/* 04CCCC 8004D11C 00000000 */  nop
