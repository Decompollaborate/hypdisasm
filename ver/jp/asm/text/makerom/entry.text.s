.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel entrypoint # 0
/* 001000 80000400 3C08800B */  lui         $t0, %hi(_bootSegmentBssStart)
/* 001004 80000404 3C090005 */  lui         $t1, 0x5
/* 001008 80000408 2508D840 */  addiu       $t0, $t0, %lo(_bootSegmentBssStart)
/* 00100C 8000040C 352985F0 */  ori         $t1, $t1, 0x85f0
.L80000410:
/* 001010 80000410 2129FFF8 */  addi        $t1, $t1, -0x8
/* 001014 80000414 AD000000 */  sw          $zero, 0x0($t0)
/* 001018 80000418 AD000004 */  sw          $zero, 0x4($t0)
/* 00101C 8000041C 1520FFFC */  bnez        $t1, .L80000410
/* 001020 80000420 21080008 */   addi       $t0, $t0, 0x8
/* 001024 80000424 3C0A8000 */  lui         $t2, %hi(bootproc)
/* 001028 80000428 3C1D800B */  lui         $sp, %hi(D_800ADC40)
/* 00102C 8000042C 254A0450 */  addiu       $t2, $t2, %lo(bootproc)
/* 001030 80000430 01400008 */  jr          $t2
/* 001034 80000434 27BDDC40 */   addiu      $sp, $sp, %lo(D_800ADC40)
/* 001038 80000438 00000000 */  nop
/* 00103C 8000043C 00000000 */  nop
/* 001040 80000440 00000000 */  nop
/* 001044 80000444 00000000 */  nop
/* 001048 80000448 00000000 */  nop
/* 00104C 8000044C 00000000 */  nop
