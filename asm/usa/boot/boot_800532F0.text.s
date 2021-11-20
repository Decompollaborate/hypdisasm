.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel func_800532F0 # 0
/* 052EA0 800532F0 3C013F80 */  lui         $at, 0x3f80
/* 052EA4 800532F4 44811000 */  mtc1        $at, $f2
/* 052EA8 800532F8 04800004 */  bltz        $a0, .L8005330C
/* 052EAC 800532FC 3C01800A */   lui        $at, 0x800a
/* 052EB0 80053300 3C01800A */  lui         $at, %hi(D_800A7D34)
/* 052EB4 80053304 10000003 */  b           .L80053314
/* 052EB8 80053308 C4207D30 */   lwc1       $f0, %lo(D_800A7D30)($at)
.L8005330C:
/* 052EBC 8005330C C4207D34 */  lwc1        $f0, %lo(D_800A7D34)($at)
/* 052EC0 80053310 00042023 */  negu        $a0, $a0
.L80053314:
/* 052EC4 80053314 10800008 */  beqz        $a0, .L80053338
.L80053318:
/* 052EC8 80053318 308E0001 */   andi       $t6, $a0, 0x1
/* 052ECC 8005331C 11C00003 */  beqz        $t6, .L8005332C
/* 052ED0 80053320 00047843 */   sra        $t7, $a0, 1
/* 052ED4 80053324 46001082 */  mul.s       $f2, $f2, $f0
/* 052ED8 80053328 00000000 */  nop
.L8005332C:
/* 052EDC 8005332C 46000002 */  mul.s       $f0, $f0, $f0
/* 052EE0 80053330 15E0FFF9 */  bnez        $t7, .L80053318
/* 052EE4 80053334 01E02025 */   move       $a0, $t7
.L80053338:
/* 052EE8 80053338 03E00008 */  jr          $ra
/* 052EEC 8005333C 46001006 */   mov.s      $f0, $f2
