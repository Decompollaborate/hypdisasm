.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8012C220
/* 021730 8012C220 3FE99999A0000000 */  .double  0.800000011920929

glabel D_8012C228
/* 021738 8012C228 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_8012C230
/* 021740 8012C230 3FE3333340000000 */  .double  0.6000000238418579

glabel D_8012C238
/* 021748 8012C238 3A83126F */  .float  0.0010000000474974513

glabel D_8012C23C
/* 02174C 8012C23C BA83126F */  .float  -0.0010000000474974513

glabel D_8012C240
/* 021750 8012C240 BA83126F */  .float  -0.0010000000474974513

glabel D_8012C244
/* 021754 8012C244 3A83126F */  .float  0.0010000000474974513

glabel D_8012C248
/* 021758 8012C248 3FD9999A */  .float  1.7000000476837158
/* 02175C 8012C24C 00000000 */  .float  0.0
