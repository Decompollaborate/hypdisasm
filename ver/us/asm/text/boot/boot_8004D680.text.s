.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004D680 # 0
/* 04D230 8004D680 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04D234 8004D684 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04D238 8004D688 AFA5001C */  sw          $a1, 0x1c($sp)
/* 04D23C 8004D68C 8C8E0008 */  lw          $t6, 0x8($a0)
/* 04D240 8004D690 51C00016 */  beql        $t6, $zero, .L8004D6EC
/* 04D244 8004D694 8FBF0014 */   lw         $ra, 0x14($sp)
/* 04D248 8004D698 0C013763 */  jal         func_8004DD8C
/* 04D24C 8004D69C AFA40018 */   sw         $a0, 0x18($sp)
/* 04D250 8004D6A0 8FA70018 */  lw          $a3, 0x18($sp)
/* 04D254 8004D6A4 10400010 */  beqz        $v0, .L8004D6E8
/* 04D258 8004D6A8 00403025 */   move       $a2, $v0
/* 04D25C 8004D6AC 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 04D260 8004D6B0 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 04D264 8004D6B4 8CF90008 */  lw          $t9, 0x8($a3)
/* 04D268 8004D6B8 240A0007 */  addiu       $t2, $zero, 0x7
/* 04D26C 8004D6BC 8DF80028 */  lw          $t8, 0x28($t7)
/* 04D270 8004D6C0 8F280088 */  lw          $t0, 0x88($t9)
/* 04D274 8004D6C4 A44A0008 */  sh          $t2, 0x8($v0)
/* 04D278 8004D6C8 24050003 */  addiu       $a1, $zero, 0x3
/* 04D27C 8004D6CC 03084821 */  addu        $t1, $t8, $t0
/* 04D280 8004D6D0 AC490004 */  sw          $t1, 0x4($v0)
/* 04D284 8004D6D4 C7A4001C */  lwc1        $f4, 0x1c($sp)
/* 04D288 8004D6D8 AC400000 */  sw          $zero, 0x0($v0)
/* 04D28C 8004D6DC E444000C */  swc1        $f4, 0xc($v0)
/* 04D290 8004D6E0 0C013986 */  jal         func_8004E618
/* 04D294 8004D6E4 8CE40008 */   lw         $a0, 0x8($a3)
.L8004D6E8:
/* 04D298 8004D6E8 8FBF0014 */  lw          $ra, 0x14($sp)
.L8004D6EC:
/* 04D29C 8004D6EC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04D2A0 8004D6F0 03E00008 */  jr          $ra
/* 04D2A4 8004D6F4 00000000 */   nop
/* 04D2A8 8004D6F8 00000000 */  nop
/* 04D2AC 8004D6FC 00000000 */  nop
