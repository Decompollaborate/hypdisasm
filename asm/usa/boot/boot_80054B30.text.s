.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054B30 # 0
/* 000000 80054B30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 000004 80054B34 AFBF0014 */  sw          $ra, 0x14($sp)
/* 000008 80054B38 0C015FFC */  jal         func_80057FF0
/* 00000C 80054B3C 00000000 */   nop
/* 000010 80054B40 3C0E800A */  lui         $t6, %hi(D_8009F950)
/* 000014 80054B44 8DCEF950 */  lw          $t6, %lo(D_8009F950)($t6)
/* 000018 80054B48 00402025 */  move        $a0, $v0
/* 00001C 80054B4C 8DCF0004 */  lw          $t7, 0x4($t6)
/* 000020 80054B50 0C016018 */  jal         func_80058060
/* 000024 80054B54 AFAF0018 */   sw         $t7, 0x18($sp)
/* 000028 80054B58 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00002C 80054B5C 8FA20018 */  lw          $v0, 0x18($sp)
/* 000030 80054B60 27BD0020 */  addiu       $sp, $sp, 0x20
/* 000034 80054B64 03E00008 */  jr          $ra
/* 000038 80054B68 00000000 */   nop
/* 00003C 80054B6C 00000000 */  nop
