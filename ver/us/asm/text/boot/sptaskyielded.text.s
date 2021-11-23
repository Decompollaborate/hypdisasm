.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osSpTaskYielded # 0
/* 0543C0 80054810 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0543C4 80054814 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0543C8 80054818 0C016A84 */  jal         __osSpGetStatus
/* 0543CC 8005481C AFA40018 */   sw         $a0, 0x18($sp)
/* 0543D0 80054820 304E0100 */  andi        $t6, $v0, 0x100
/* 0543D4 80054824 11C00003 */  beqz        $t6, .L80054834
/* 0543D8 80054828 8FA40018 */   lw         $a0, 0x18($sp)
/* 0543DC 8005482C 10000002 */  b           .L80054838
/* 0543E0 80054830 24030001 */   addiu      $v1, $zero, 0x1
.L80054834:
/* 0543E4 80054834 00001825 */  move        $v1, $zero
.L80054838:
/* 0543E8 80054838 304F0080 */  andi        $t7, $v0, 0x80
/* 0543EC 8005483C 51E00008 */  beql        $t7, $zero, .L80054860
/* 0543F0 80054840 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0543F4 80054844 8C980004 */  lw          $t8, 0x4($a0)
/* 0543F8 80054848 2401FFFD */  addiu       $at, $zero, -0x3
/* 0543FC 8005484C 0303C825 */  or          $t9, $t8, $v1
/* 054400 80054850 AC990004 */  sw          $t9, 0x4($a0)
/* 054404 80054854 03214824 */  and         $t1, $t9, $at
/* 054408 80054858 AC890004 */  sw          $t1, 0x4($a0)
/* 05440C 8005485C 8FBF0014 */  lw          $ra, 0x14($sp)
.L80054860:
/* 054410 80054860 27BD0018 */  addiu       $sp, $sp, 0x18
/* 054414 80054864 00601025 */  move        $v0, $v1
/* 054418 80054868 03E00008 */  jr          $ra
/* 05441C 8005486C 00000000 */   nop
