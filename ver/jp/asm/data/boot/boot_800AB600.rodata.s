.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 0AB1B0 800AB600 496E7661 */  .float  976742.0625

glabel _string_800AB604
/* 0AB1B4 800AB604  */  .asciz  "lid eyeCatch table.\n_eyeCatchTbl[%d].catch = %d\n"
                        .balign 4
/* 0AB1E8 800AB638  */  .asciz  "ecInit(%d)\n"
                        .balign 4
/* 0AB1F4 800AB644  */  .asciz  "chip:%d/%d\n"
                        .balign 4

glabel D_800AB650
/* 0AB200 800AB650 3DCCCCCD */  .float  0.10000000149011612

glabel D_800AB654
/* 0AB204 800AB654 3F99999A */  .float  1.2000000476837158

glabel D_800AB658
/* 0AB208 800AB658 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800AB660
/* 0AB210 800AB660 40266666 */  .float  2.5999999046325684

glabel D_800AB664
/* 0AB214 800AB664 3F4CCCCD */  .float  0.800000011920929

glabel D_800AB668
/* 0AB218 800AB668 3FE99999 */  .word  0x3FE99999

glabel D_800AB66C
/* 0AB21C 800AB66C A0000000 */  .word  0xA0000000

glabel _string_800AB670
/* 0AB220 800AB670  */  .asciz  "alloc dmaMessageBufp:%p size:%d\n"
                        .balign 4
/* 0AB244 800AB694  */  .asciz  "alloc dmaIoMesgFifo:%p size:%d\n"
                        .balign 4
/* 0AB264 800AB6B4  */  .asciz  "free dmaIoMesgFifo:%p\n"
                        .balign 4
/* 0AB27C 800AB6CC  */  .asciz  "free dmaMessageBufp:%p\n"
                        .balign 4
/* 0AB294 800AB6E4  */  .asciz  ""
                        .balign 4
/* 0AB298 800AB6E8  */  .asciz  ""
                        .balign 4
/* 0AB29C 800AB6EC  */  .asciz  ""
                        .balign 4
