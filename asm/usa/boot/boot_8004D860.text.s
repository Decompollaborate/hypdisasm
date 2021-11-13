.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D860 # 0
/* 04D410 8004D860 3C02800A */  lui         $v0, %hi(D_8009D9C0)
/* 04D414 8004D864 2442D9C0 */  addiu       $v0, $v0, %lo(D_8009D9C0)
/* 04D418 8004D868 8C4E0000 */  lw          $t6, 0x0($v0)
/* 04D41C 8004D86C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D420 8004D870 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D424 8004D874 15C00009 */  bne         $t6, $zero, .L8004D89C
/* 04D428 8004D878 3C03800A */   lui        $v1, %hi(D_8009D9C4)
/* 04D42C 8004D87C 2463D9C4 */  addiu       $v1, $v1, %lo(D_8009D9C4)
/* 04D430 8004D880 8C6F0000 */  lw          $t7, 0x0($v1)
/* 04D434 8004D884 AC440000 */  sw          $a0, 0x0($v0)
/* 04D438 8004D888 55E00005 */  bnel        $t7, $zero, .L8004D8A0
/* 04D43C 8004D88C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04D440 8004D890 AC640000 */  sw          $a0, 0x0($v1)
/* 04D444 8004D894 0C01363C */  jal         func_8004D8F0
/* 04D448 8004D898 00A02025 */   move       $a0, $a1
.L8004D89C:
/* 04D44C 8004D89C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D8A0:
/* 04D450 8004D8A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04D454 8004D8A4 03E00008 */  jr          $ra
/* 04D458 8004D8A8 00000000 */   nop

glabel func_8004D8AC # 1
/* 04D45C 8004D8AC 3C0E800A */  lui         $t6, %hi(D_8009D9C0)
/* 04D460 8004D8B0 8DCED9C0 */  lw          $t6, %lo(D_8009D9C0)($t6)
/* 04D464 8004D8B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D468 8004D8B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D46C 8004D8BC 11C00007 */  beq         $t6, $zero, .L8004D8DC
/* 04D470 8004D8C0 AFA40018 */   sw         $a0, 0x18($sp)
/* 04D474 8004D8C4 0C013AB8 */  jal         func_8004EAE0
/* 04D478 8004D8C8 00000000 */   nop
/* 04D47C 8004D8CC 3C01800A */  lui         $at, %hi(D_8009D9C0)
/* 04D480 8004D8D0 AC20D9C0 */  sw          $zero, %lo(D_8009D9C0)($at)
/* 04D484 8004D8D4 3C01800A */  lui         $at, %hi(D_8009D9C4)
/* 04D488 8004D8D8 AC20D9C4 */  sw          $zero, %lo(D_8009D9C4)($at)
.L8004D8DC:
/* 04D48C 8004D8DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04D490 8004D8E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04D494 8004D8E4 03E00008 */  jr          $ra
/* 04D498 8004D8E8 00000000 */   nop
/* 04D49C 8004D8EC 00000000 */  nop
