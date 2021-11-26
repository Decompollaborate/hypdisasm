.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A2670
/* 0A2220 800A2670 00000000 */  .word  0x00000000

glabel _string_WindowTypeError
/* 0A2224 800A2674  */  .asciz  "WINDOW_TYPE ERROR!\n"
                        .balign 4

glabel D_800A2688
/* 0A2238 800A2688 0A000000 */  .word  0x0A000000

glabel D_800A268C
/* 0A223C 800A268C 00000000 */  .word  0x00000000

glabel D_800A2690
/* 0A2240 800A2690 F00F0000 */  .word  0xF00F0000

glabel D_800A2694
/* 0A2244 800A2694 3F59999A */  .float  0.8500000238418579
/* 0A2248 800A2698 00000000 */  .float  0.0
/* 0A224C 800A269C 00000000 */  .float  0.0
