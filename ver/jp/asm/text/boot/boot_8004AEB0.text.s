.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004AEB0 # 0
/* 04AA60 8004AEB0 3C0F800A */  lui         $t7, %hi(D_800A2E64)
/* 04AA64 8004AEB4 8DEF2E64 */  lw          $t7, %lo(D_800A2E64)($t7)
/* 04AA68 8004AEB8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 04AA6C 8004AEBC AFBF0014 */  sw          $ra, 0x14($sp)
/* 04AA70 8004AEC0 AFA40020 */  sw          $a0, 0x20($sp)
/* 04AA74 8004AEC4 8DF80040 */  lw          $t8, 0x40($t7)
/* 04AA78 8004AEC8 00043C00 */  sll         $a3, $a0, 16
/* 04AA7C 8004AECC 00077403 */  sra         $t6, $a3, 16
/* 04AA80 8004AED0 000E1880 */  sll         $v1, $t6, 2
/* 04AA84 8004AED4 03032021 */  addu        $a0, $t8, $v1
/* 04AA88 8004AED8 24840024 */  addiu       $a0, $a0, 0x24
/* 04AA8C 8004AEDC 0C012EDE */  jal         func_8004BB78
/* 04AA90 8004AEE0 AFA3001C */   sw         $v1, 0x1c($sp)
/* 04AA94 8004AEE4 3C19800A */  lui         $t9, %hi(D_800A2E64)
/* 04AA98 8004AEE8 8F392E64 */  lw          $t9, %lo(D_800A2E64)($t9)
/* 04AA9C 8004AEEC 8FA3001C */  lw          $v1, 0x1c($sp)
/* 04AAA0 8004AEF0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04AAA4 8004AEF4 8F280040 */  lw          $t0, 0x40($t9)
/* 04AAA8 8004AEF8 01034821 */  addu        $t1, $t0, $v1
/* 04AAAC 8004AEFC 8D220024 */  lw          $v0, 0x24($t1)
/* 04AAB0 8004AF00 03E00008 */  jr          $ra
/* 04AAB4 8004AF04 27BD0020 */   addiu      $sp, $sp, 0x20
/* 04AAB8 8004AF08 00000000 */  nop
/* 04AABC 8004AF0C 00000000 */  nop
