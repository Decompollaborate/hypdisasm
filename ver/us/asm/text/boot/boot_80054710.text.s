.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_80054710 # 0
/* 0542C0 80054710 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0542C4 80054714 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0542C8 80054718 AFA40018 */  sw          $a0, 0x18($sp)
/* 0542CC 8005471C AFA5001C */  sw          $a1, 0x1c($sp)
/* 0542D0 80054720 0C015FFC */  jal         __osDisableInt
/* 0542D4 80054724 AFA60020 */   sw         $a2, 0x20($sp)
/* 0542D8 80054728 3C03800A */  lui         $v1, %hi(__osViNext)
/* 0542DC 8005472C 2463F954 */  addiu       $v1, $v1, %lo(__osViNext)
/* 0542E0 80054730 8C6F0000 */  lw          $t7, 0x0($v1)
/* 0542E4 80054734 8FAE0018 */  lw          $t6, 0x18($sp)
/* 0542E8 80054738 00402025 */  move        $a0, $v0
/* 0542EC 8005473C ADEE0010 */  sw          $t6, 0x10($t7)
/* 0542F0 80054740 8C790000 */  lw          $t9, 0x0($v1)
/* 0542F4 80054744 8FB8001C */  lw          $t8, 0x1c($sp)
/* 0542F8 80054748 AF380014 */  sw          $t8, 0x14($t9)
/* 0542FC 8005474C 8C690000 */  lw          $t1, 0x0($v1)
/* 054300 80054750 8FA80020 */  lw          $t0, 0x20($sp)
/* 054304 80054754 0C016018 */  jal         __osRestoreInt
/* 054308 80054758 A5280002 */   sh         $t0, 0x2($t1)
/* 05430C 8005475C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 054310 80054760 27BD0018 */  addiu       $sp, $sp, 0x18
/* 054314 80054764 03E00008 */  jr          $ra
/* 054318 80054768 00000000 */   nop
/* 05431C 8005476C 00000000 */  nop
