.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel D_80100370
/* 0FFF20 80100370 */  .space  0x08

glabel __osPiAccessQueue
/* 0FFF28 80100378 */  .space  0x18
