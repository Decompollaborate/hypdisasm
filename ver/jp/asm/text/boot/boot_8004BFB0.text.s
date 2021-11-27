.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_8004BFB0 # 0
/* 04BB60 8004BFB0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 04BB64 8004BFB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 04BB68 8004BFB8 0C01325C */  jal         func_8004C970
/* 04BB6C 8004BFBC 00000000 */   nop
/* 04BB70 8004BFC0 3C0E0D00 */  lui         $t6, 0xd00
/* 04BB74 8004BFC4 3C0F062E */  lui         $t7, 0x62e
/* 04BB78 8004BFC8 AC4F0008 */  sw          $t7, 0x8($v0)
/* 04BB7C 8004BFCC AC4E0000 */  sw          $t6, 0x0($v0)
/* 04BB80 8004BFD0 3C18800A */  lui         $t8, %hi(D_800A2E64)
/* 04BB84 8004BFD4 8F182E64 */  lw          $t8, %lo(D_800A2E64)($t8)
/* 04BB88 8004BFD8 24420010 */  addiu       $v0, $v0, 0x10
/* 04BB8C 8004BFDC 8F190054 */  lw          $t9, 0x54($t8)
/* 04BB90 8004BFE0 AC59FFFC */  sw          $t9, -0x4($v0)
/* 04BB94 8004BFE4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 04BB98 8004BFE8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 04BB9C 8004BFEC 03E00008 */  jr          $ra
/* 04BBA0 8004BFF0 00000000 */   nop
/* 04BBA4 8004BFF4 00000000 */  nop
/* 04BBA8 8004BFF8 00000000 */  nop
/* 04BBAC 8004BFFC 00000000 */  nop
