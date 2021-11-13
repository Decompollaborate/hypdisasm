.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D680 # 0
/* 000000 8004D680 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 000004 8004D684 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 8004D688 AFA5001C */  sw          $a1, 0x1c($sp)
/* 00000C 8004D68C 8C8E0008 */  lw          $t6, 0x8($a0)
/* 000010 8004D690 51C00016 */  beql        $t6, $zero, .L8004D6EC
/* 000014 8004D694 8FBF0014 */   lw         $ra, 0x14($sp)
/* 000018 8004D698 0C013763 */  jal         func_8004DD8C
/* 00001C 8004D69C AFA40018 */   sw         $a0, 0x18($sp)
/* 000020 8004D6A0 8FA70018 */  lw          $a3, 0x18($sp)
/* 000024 8004D6A4 10400010 */  beq         $v0, $zero, .L8004D6E8
/* 000028 8004D6A8 00403025 */   move       $a2, $v0
/* 00002C 8004D6AC 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 000030 8004D6B0 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 000034 8004D6B4 8CF90008 */  lw          $t9, 0x8($a3)
/* 000038 8004D6B8 240A0007 */  addiu       $t2, $zero, 0x7
/* 00003C 8004D6BC 8DF80028 */  lw          $t8, 0x28($t7)
/* 000040 8004D6C0 8F280088 */  lw          $t0, 0x88($t9)
/* 000044 8004D6C4 A44A0008 */  sh          $t2, 0x8($v0)
/* 000048 8004D6C8 24050003 */  addiu       $a1, $zero, 0x3
/* 00004C 8004D6CC 03084821 */  addu        $t1, $t8, $t0
/* 000050 8004D6D0 AC490004 */  sw          $t1, 0x4($v0)
/* 000054 8004D6D4 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 000058 8004D6D8 AC400000 */  sw          $zero, 0x0($v0)
/* 00005C 8004D6DC E444000C */  swc1        $f4, 0xc($v0)
/* 000060 8004D6E0 0C013986 */  jal         func_8004E618
/* 000064 8004D6E4 8CE40008 */   lw         $a0, 0x8($a3)
.L8004D6E8:
/* 000068 8004D6E8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D6EC:
/* 00006C 8004D6EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 000070 8004D6F0 03E00008 */  jr          $ra
/* 000074 8004D6F4 00000000 */   nop
/* 000078 8004D6F8 00000000 */  nop
/* 00007C 8004D6FC 00000000 */  nop
