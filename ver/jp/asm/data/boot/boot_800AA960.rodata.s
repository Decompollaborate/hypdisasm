.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800AA960
/* 0AA510 800AA960  */  .asciz  "-------- collisionTbl Info --------\n"
                        .balign 4

glabel D_800AA988
/* 0AA538 800AA988 3A83126F */  .float  0.0010000000474974513
/* 0AA53C 800AA98C 00000000 */  .float  0.0

glabel D_800AA990
/* 0AA540 800AA990 3FF3333340000000 */  .double  1.2000000476837158

glabel D_800AA998
/* 0AA548 800AA998 3FF3333340000000 */  .double  1.2000000476837158

glabel D_800AA9A0
/* 0AA550 800AA9A0 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800AA9A8
/* 0AA558 800AA9A8 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800AA9B0
/* 0AA560 800AA9B0 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800AA9B8
/* 0AA568 800AA9B8 3A83126F */  .float  0.0010000000474974513

glabel D_800AA9BC
/* 0AA56C 800AA9BC 3A83126F */  .float  0.0010000000474974513

glabel D_800AA9C0
/* 0AA570 800AA9C0 3A83126F */  .float  0.0010000000474974513
/* 0AA574 800AA9C4 00000000 */  .float  0.0
/* 0AA578 800AA9C8 00000000 */  .float  0.0
/* 0AA57C 800AA9CC 00000000 */  .float  0.0
