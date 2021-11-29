.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A55E0
/* 0A5190 800A55E0  */  .asciz  "nodeObj:%p  objType:%d objID:%d level:%d\n"
                        .balign 4
/* 0A51BC 800A560C  */  .asciz  "%4d "
                        .balign 4
/* 0A51C4 800A5614  */  .asciz  "%4d "
                        .balign 4
/* 0A51CC 800A561C  */  .asciz  "%s\n"
                        .balign 4
/* 0A51D0 800A5620  */  .asciz  "\n"
                        .balign 4
/* 0A51D4 800A5624  */  .asciz  "node:%p level:%d\n"
                        .balign 4
/* 0A51E8 800A5638  */  .asciz  "========= Objmanager Info =========\n"
                        .balign 4
/* 0A5210 800A5660  */  .asciz  "hierarchy total = %d\n"
                        .balign 4
/* 0A5228 800A5678  */  .asciz  "-------- objHash Info --------\n"
                        .balign 4
/* 0A5248 800A5698  */  .asciz  "\n"
                        .balign 4
/* 0A524C 800A569C  */  .asciz  "\n"
                        .balign 4

glabel D_800A56A0
/* 0A5250 800A56A0 3A83126F */  .float  0.0010000000474974513

glabel D_800A56A4
/* 0A5254 800A56A4 46FFFE00 */  .float  32767.0

glabel D_800A56A8
/* 0A5258 800A56A8 46FFFE00 */  .float  32767.0
/* 0A525C 800A56AC 00000000 */  .float  0.0
