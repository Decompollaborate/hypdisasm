.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004EB10 # 0
/* 000000 8004EB10 3C0F800A */  lui         $t7, %hi(D_8009D9C4)
/* 000004 8004EB14 8DEFD9C4 */  lw          $t7, %lo(D_8009D9C4)($t7)
/* 000008 8004EB18 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00000C 8004EB1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 000010 8004EB20 AFA40020 */  sw          $a0, 0x20($sp)
/* 000014 8004EB24 8DF80040 */  lw          $t8, 0x40($t7)
/* 000018 8004EB28 00043C00 */  sll         $a3, $a0, 16
/* 00001C 8004EB2C 00077403 */  sra         $t6, $a3, 16
/* 000020 8004EB30 000E1880 */  sll         $v1, $t6, 2
/* 000024 8004EB34 03032021 */  addu        $a0, $t8, $v1
/* 000028 8004EB38 24840024 */  addiu       $a0, $a0, 0x24
/* 00002C 8004EB3C 0C013DA8 */  jal         func_8004F6A0
/* 000030 8004EB40 AFA3001C */   sw         $v1, 0x1c($sp)
/* 000034 8004EB44 3C19800A */  lui         $t9, %hi(D_8009D9C4)
/* 000038 8004EB48 8F39D9C4 */  lw          $t9, %lo(D_8009D9C4)($t9)
/* 00003C 8004EB4C 8FA3001C */  lw          $v1, 0x1c($sp)
/* 000040 8004EB50 8FBF0014 */  lw          $ra, 0x14($sp)
/* 000044 8004EB54 8F280040 */  lw          $t0, 0x40($t9)
/* 000048 8004EB58 01034821 */  addu        $t1, $t0, $v1
/* 00004C 8004EB5C 8D220024 */  lw          $v0, 0x24($t1)
/* 000050 8004EB60 03E00008 */  jr          $ra
/* 000054 8004EB64 27BD0020 */   addiu      $sp, $sp, 0x20
/* 000058 8004EB68 00000000 */  nop
/* 00005C 8004EB6C 00000000 */  nop
