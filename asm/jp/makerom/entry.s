.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel entrypoint
/* 000000 80000400 3C08800B */  lui         $t0, %hi(D_800AD840)
/* 000004 80000404 3C090005 */  lui         $t1, 0x5
/* 000008 80000408 2508D840 */  addiu       $t0, $t0, %lo(D_800AD840)
/* 00000C 8000040C 352985F0 */  ori         $t1, $t1, 0x85f0
.L80000410:
/* 000010 80000410 2129FFF8 */  addi        $t1, $t1, -0x8
/* 000014 80000414 AD000000 */  sw          $zero, 0x0($t0)
/* 000018 80000418 AD000004 */  sw          $zero, 0x4($t0)
/* 00001C 8000041C 1520FFFC */  bne         $t1, $zero, .L80000410
/* 000020 80000420 21080008 */   addi       $t0, $t0, 0x8
/* 000024 80000424 3C0A8000 */  lui         $t2, %hi(bootproc)
/* 000028 80000428 3C1D800B */  lui         $sp, %hi(D_800ADC40)
/* 00002C 8000042C 254A0450 */  addiu       $t2, $t2, %lo(bootproc)
/* 000030 80000430 01400008 */  jr          $t2
/* 000034 80000434 27BDDC40 */   addiu      $sp, $sp, %lo(D_800ADC40)
/* 000038 80000438 00000000 */  nop
/* 00003C 8000043C 00000000 */  nop
/* 000040 80000440 00000000 */  nop
/* 000044 80000444 00000000 */  nop
/* 000048 80000448 00000000 */  nop
/* 00004C 8000044C 00000000 */  nop
