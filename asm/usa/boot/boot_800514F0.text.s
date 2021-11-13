.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800514F0 # 0
/* 000000 800514F0 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 000004 800514F4 AFA500DC */  sw          $a1, 0xdc($sp)
/* 000008 800514F8 00802825 */  move        $a1, $a0
/* 00000C 800514FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 000010 80051500 AFA400D8 */  sw          $a0, 0xd8($sp)
/* 000014 80051504 AFA600E0 */  sw          $a2, 0xe0($sp)
/* 000018 80051508 0C016090 */  jal         func_80058240
/* 00001C 8005150C 27A40098 */   addiu      $a0, $sp, 0x98
/* 000020 80051510 27A40058 */  addiu       $a0, $sp, 0x58
/* 000024 80051514 0C016090 */  jal         func_80058240
/* 000028 80051518 8FA500DC */   lw         $a1, 0xdc($sp)
/* 00002C 8005151C 27A40098 */  addiu       $a0, $sp, 0x98
/* 000030 80051520 27A50058 */  addiu       $a1, $sp, 0x58
/* 000034 80051524 0C0160AC */  jal         func_800582B0
/* 000038 80051528 27A60018 */   addiu      $a2, $sp, 0x18
/* 00003C 8005152C 27A40018 */  addiu       $a0, $sp, 0x18
/* 000040 80051530 0C016074 */  jal         func_800581D0
/* 000044 80051534 8FA500E0 */   lw         $a1, 0xe0($sp)
/* 000048 80051538 8FBF0014 */  lw          $ra, 0x14($sp)
/* 00004C 8005153C 27BD00D8 */  addiu       $sp, $sp, 0xd8
/* 000050 80051540 03E00008 */  jr          $ra
/* 000054 80051544 00000000 */   nop
/* 000058 80051548 00000000 */  nop
/* 00005C 8005154C 00000000 */  nop
