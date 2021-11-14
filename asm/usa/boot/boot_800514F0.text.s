.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800514F0 # 0
/* 0510A0 800514F0 27BDFF28 */  addiu       $sp, $sp, -0xd8
/* 0510A4 800514F4 AFA500DC */  sw          $a1, 0xdc($sp)
/* 0510A8 800514F8 00802825 */  move        $a1, $a0
/* 0510AC 800514FC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0510B0 80051500 AFA400D8 */  sw          $a0, 0xd8($sp)
/* 0510B4 80051504 AFA600E0 */  sw          $a2, 0xe0($sp)
/* 0510B8 80051508 0C016090 */  jal         guMtxL2F
/* 0510BC 8005150C 27A40098 */   addiu      $a0, $sp, 0x98
/* 0510C0 80051510 27A40058 */  addiu       $a0, $sp, 0x58
/* 0510C4 80051514 0C016090 */  jal         guMtxL2F
/* 0510C8 80051518 8FA500DC */   lw         $a1, 0xdc($sp)
/* 0510CC 8005151C 27A40098 */  addiu       $a0, $sp, 0x98
/* 0510D0 80051520 27A50058 */  addiu       $a1, $sp, 0x58
/* 0510D4 80051524 0C0160AC */  jal         func_800582B0
/* 0510D8 80051528 27A60018 */   addiu      $a2, $sp, 0x18
/* 0510DC 8005152C 27A40018 */  addiu       $a0, $sp, 0x18
/* 0510E0 80051530 0C016074 */  jal         guMtxF2L
/* 0510E4 80051534 8FA500E0 */   lw         $a1, 0xe0($sp)
/* 0510E8 80051538 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0510EC 8005153C 27BD00D8 */  addiu       $sp, $sp, 0xd8
/* 0510F0 80051540 03E00008 */  jr          $ra
/* 0510F4 80051544 00000000 */   nop
/* 0510F8 80051548 00000000 */  nop
/* 0510FC 8005154C 00000000 */  nop
