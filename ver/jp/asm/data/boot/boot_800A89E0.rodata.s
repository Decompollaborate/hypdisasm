.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A89E0
/* 0A8590 800A89E0  */  .asciz  "-------- Object Message Info --------\n"
                        .balign 4
/* 0A85B8 800A8A08  */  .asciz  "\n"
                        .balign 4
/* 0A85BC 800A8A0C  */  .asciz  ""
                        .balign 4

glabel D_800A8A10
/* 0A85C0 800A8A10 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A8A18
/* 0A85C8 800A8A18 3FE3333340000000 */  .double  0.6000000238418579

glabel D_800A8A20
/* 0A85D0 800A8A20 3F4CCCCD */  .float  0.800000011920929

glabel D_800A8A24
/* 0A85D4 800A8A24 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8A28
/* 0A85D8 800A8A28 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A8A30
/* 0A85E0 800A8A30 3FC99999A0000000 */  .double  0.20000000298023224

glabel D_800A8A38
/* 0A85E8 800A8A38 3E99999A */  .float  0.30000001192092896

glabel D_800A8A3C
/* 0A85EC 800A8A3C 43098000 */  .float  137.5

glabel _string_800A8A40
/* 0A85F0 800A8A40  */  .asciz  "landMineNew(%f,%f,%f)\n"
                        .balign 4

glabel D_800A8A58
/* 0A8608 800A8A58 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8A5C
/* 0A860C 800A8A5C 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A8A60
/* 0A8610 800A8A60 3D8F5C29 */  .float  0.07000000029802322

glabel D_800A8A64
/* 0A8614 800A8A64 3F4CCCCD */  .float  0.800000011920929
/* 0A8618 800A8A68 00000000 */  .float  0.0
/* 0A861C 800A8A6C 00000000 */  .float  0.0
