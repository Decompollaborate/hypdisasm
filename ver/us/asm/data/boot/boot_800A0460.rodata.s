.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_NodeObj
/* 0A0010 800A0460  */  .asciz  "nodeObj:%p  objType:%d objID:%d level:%d\n"
                        .balign 4
/* 0A003C 800A048C  */  .asciz  "%4d "
                        .balign 4
/* 0A0044 800A0494  */  .asciz  "%4d "
                        .balign 4
/* 0A004C 800A049C  */  .asciz  "%s\n"
                        .balign 4
/* 0A0050 800A04A0  */  .asciz  "\n"
                        .balign 4
/* 0A0054 800A04A4  */  .asciz  "node:%p level:%d\n"
                        .balign 4
/* 0A0068 800A04B8  */  .asciz  "========= Objmanager Info =========\n"
                        .balign 4
/* 0A0090 800A04E0  */  .asciz  "hierarchy total = %d\n"
                        .balign 4
/* 0A00A8 800A04F8  */  .asciz  "-------- objHash Info --------\n"
                        .balign 4
/* 0A00C8 800A0518  */  .asciz  "\n"
                        .balign 4
/* 0A00CC 800A051C  */  .asciz  "\n"
                        .balign 4

glabel D_800A0520
/* 0A00D0 800A0520 3A83126F */  .float  0.0010000000474974513

glabel D_800A0524
/* 0A00D4 800A0524 46FFFE00 */  .float  32767.0

glabel D_800A0528
/* 0A00D8 800A0528 46FFFE00 */  .float  32767.0
/* 0A00DC 800A052C 00000000 */  .float  0.0
