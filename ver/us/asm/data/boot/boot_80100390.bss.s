.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss

.balign 16

glabel __osPfsPifRam
/* 0FFF40 80100390 */  .space  0x40

glabel __osThreadSave
/* 0FFF80 801003D0 */  .space  0x1B0
