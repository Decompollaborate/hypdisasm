.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_SendFunc
/* 09FD70 800A01C0  */  .asciz  "send(%d, %d, %.3f, %.3f, %.3f)\n"
                        .balign 4
/* 09FD90 800A01E0  */  .asciz  "pad-%d is invalid\n"
                        .balign 4

glabel D_800A01F4
/* 09FDA4 800A01F4 3E851EB8 */  .float  0.25999999046325684

glabel D_800A01F8
/* 09FDA8 800A01F8 3C3FB15B */  .float  0.011699999682605267

glabel D_800A01FC
/* 09FDAC 800A01FC 49742400 */  .float  1000000.0

glabel D_800A0200
/* 09FDB0 800A0200 49742400 */  .float  1000000.0

glabel D_800A0204
/* 09FDB4 800A0204 49742400 */  .float  1000000.0
/* 09FDB8 800A0208 00000000 */  .float  0.0
/* 09FDBC 800A020C 00000000 */  .float  0.0
