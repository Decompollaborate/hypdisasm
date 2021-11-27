.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800494A0 # 0
/* 049050 800494A0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 049054 800494A4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 049058 800494A8 8C850008 */  lw          $a1, 0x8($a0)
/* 04905C 800494AC 00803825 */  move        $a3, $a0
/* 049060 800494B0 50A0001F */  beql        $a1, $zero, .L80049530
/* 049064 800494B4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 049068 800494B8 8CAE0088 */  lw          $t6, 0x88($a1)
/* 04906C 800494BC 51C00017 */  beql        $t6, $zero, .L8004951C
/* 049070 800494C0 00A02025 */   move       $a0, $a1
/* 049074 800494C4 0C01275C */  jal         func_80049D70
/* 049078 800494C8 AFA40018 */   sw         $a0, 0x18($sp)
/* 04907C 800494CC 8FA70018 */  lw          $a3, 0x18($sp)
/* 049080 800494D0 10400016 */  beqz        $v0, .L8004952C
/* 049084 800494D4 00403025 */   move       $a2, $v0
/* 049088 800494D8 3C0F800A */  lui         $t7, %hi(D_800A2E64)
/* 04908C 800494DC 8DEF2E64 */  lw          $t7, %lo(D_800A2E64)($t7)
/* 049090 800494E0 8CF90008 */  lw          $t9, 0x8($a3)
/* 049094 800494E4 24050003 */  addiu       $a1, $zero, 0x3
/* 049098 800494E8 8DF80028 */  lw          $t8, 0x28($t7)
/* 04909C 800494EC 8F280088 */  lw          $t0, 0x88($t9)
/* 0490A0 800494F0 A4400008 */  sh          $zero, 0x8($v0)
/* 0490A4 800494F4 03084821 */  addu        $t1, $t8, $t0
/* 0490A8 800494F8 AC490004 */  sw          $t1, 0x4($v0)
/* 0490AC 800494FC 8CEA0008 */  lw          $t2, 0x8($a3)
/* 0490B0 80049500 AC4A000C */  sw          $t2, 0xc($v0)
/* 0490B4 80049504 8CE40008 */  lw          $a0, 0x8($a3)
/* 0490B8 80049508 0C012910 */  jal         func_8004A440
/* 0490BC 8004950C AFA70018 */   sw         $a3, 0x18($sp)
/* 0490C0 80049510 10000005 */  b           .L80049528
/* 0490C4 80049514 8FA70018 */   lw         $a3, 0x18($sp)
/* 0490C8 80049518 00A02025 */  move        $a0, $a1
.L8004951C:
/* 0490CC 8004951C 0C01272E */  jal         func_80049CB8
/* 0490D0 80049520 AFA70018 */   sw         $a3, 0x18($sp)
/* 0490D4 80049524 8FA70018 */  lw          $a3, 0x18($sp)
.L80049528:
/* 0490D8 80049528 ACE00008 */  sw          $zero, 0x8($a3)
.L8004952C:
/* 0490DC 8004952C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80049530:
/* 0490E0 80049530 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0490E4 80049534 03E00008 */  jr          $ra
/* 0490E8 80049538 00000000 */   nop
/* 0490EC 8004953C 00000000 */  nop
