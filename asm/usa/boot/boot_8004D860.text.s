.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D860 # 0
/* 000000 8004D860 3C02800A */  lui         $v0, %hi(D_8009D9C0)
/* 000004 8004D864 2442D9C0 */  addiu       $v0, $v0, %lo(D_8009D9C0)
/* 000008 8004D868 8C4E0000 */  lw          $t6, 0x0($v0)
/* 00000C 8004D86C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000010 8004D870 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000014 8004D874 15C00009 */  bne         $t6, $zero, .L8004D89C
/* 000018 8004D878 3C03800A */   lui        $v1, %hi(D_8009D9C4)
/* 00001C 8004D87C 2463D9C4 */  addiu       $v1, $v1, %lo(D_8009D9C4)
/* 000020 8004D880 8C6F0000 */  lw          $t7, 0x0($v1)
/* 000024 8004D884 AC440000 */  sw          $a0, 0x0($v0)
/* 000028 8004D888 55E00005 */  bnel        $t7, $zero, .L8004D8A0
/* 00002C 8004D88C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000030 8004D890 AC640000 */  sw          $a0, 0x0($v1)
/* 000034 8004D894 0C01363C */  jal         func_8004D8F0
/* 000038 8004D898 00A02025 */   move       $a0, $a1
.L8004D89C:
/* 00003C 8004D89C 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D8A0:
/* 000040 8004D8A0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000044 8004D8A4 03E00008 */  jr          $ra
/* 000048 8004D8A8 00000000 */   nop

glabel func_8004D8AC # 1
/* 00004C 8004D8AC 3C0E800A */  lui         $t6, %hi(D_8009D9C0)
/* 000050 8004D8B0 8DCED9C0 */  lw          $t6, %lo(D_8009D9C0)($t6)
/* 000054 8004D8B4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000058 8004D8B8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 00005C 8004D8BC 11C00007 */  beq         $t6, $zero, .L8004D8DC
/* 000060 8004D8C0 AFA40018 */   sw         $a0, 0x18($sp)
/* 000064 8004D8C4 0C013AB8 */  jal         func_8004EAE0
/* 000068 8004D8C8 00000000 */   nop
/* 00006C 8004D8CC 3C01800A */  lui         $at, %hi(D_8009D9C0)
/* 000070 8004D8D0 AC20D9C0 */  sw          $zero, %lo(D_8009D9C0)($at)
/* 000074 8004D8D4 3C01800A */  lui         $at, %hi(D_8009D9C4)
/* 000078 8004D8D8 AC20D9C4 */  sw          $zero, %lo(D_8009D9C4)($at)
.L8004D8DC:
/* 00007C 8004D8DC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000080 8004D8E0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000084 8004D8E4 03E00008 */  jr          $ra
/* 000088 8004D8E8 00000000 */   nop
/* 00008C 8004D8EC 00000000 */  nop
