.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800AB780
/* 0AB330 800AB780  */  .asciz  "heapRegion:%p heapHead:%p\nheapSize:0x%x align_mask:0x%x sizeof(heapHeaderT):%d\n"
                        .balign 4
/* 0AB380 800AB7D0  */  .asciz  "hp:%p memp:%p\n"
                        .balign 4
/* 0AB390 800AB7E0  */  .asciz  "prev:%p next:%p size:%d\n"
                        .balign 4
/* 0AB3AC 800AB7FC  */  .asciz  "owner:%d checker:0x%x useFlag:%d\n"
                        .balign 4
/* 0AB3D0 800AB820  */  .asciz  "regionSize:%d heapRegion:%p heapEntry:%p\n\n"
                        .balign 4
/* 0AB3FC 800AB84C  */  .asciz  "----------------\nHeap_Display_All(\n"
                        .balign 4
/* 0AB420 800AB870  */  .asciz  "regionSize:%d heapRegion:%p heapEntry:%p\n\n"
                        .balign 4
/* 0AB44C 800AB89C  */  .asciz  "heap:%p owner:%d size:%d checker:0x%x useFlag:%d\n"
                        .balign 4
/* 0AB480 800AB8D0  */  .asciz  ")----------------\n"
                        .balign 4
/* 0AB494 800AB8E4  */  .asciz  "  curr owner thread: %d\n  prev owner thread: %d\n  next owner thread: %d\n"
                        .balign 4
/* 0AB4E0 800AB930  */  .asciz  "%s: Error: Strange boundary of memory.(%p)\n"
                        .balign 4
/* 0AB50C 800AB95C  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4
/* 0AB534 800AB984  */  .asciz  "%s: Error: Heap is %sused at %p\n"
                        .balign 4
/* 0AB558 800AB9A8  */  .asciz  ""
                        .balign 4
/* 0AB55C 800AB9AC  */  .asciz  "un"
                        .balign 4

glabel D_800AB9B0
/* 0AB560 800AB9B0  */  .asciz  "heapDivide"
                        .balign 4

glabel D_800AB9BC
/* 0AB56C 800AB9BC  */  .asciz  "heapAllocLocal"
                        .balign 4

glabel D_800AB9CC
/* 0AB57C 800AB9CC  */  .asciz  "heapAllocLocal"
                        .balign 4

glabel D_800AB9DC
/* 0AB58C 800AB9DC  */  .asciz  "heapPrevCombine"
                        .balign 4
/* 0AB59C 800AB9EC  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4

glabel D_800ABA14
/* 0AB5C4 800ABA14  */  .asciz  "heapNextCombine"
                        .balign 4
/* 0AB5D4 800ABA24  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4

glabel D_800ABA4C
/* 0AB5FC 800ABA4C  */  .asciz  "heapShrinkLocal"
                        .balign 4
/* 0AB60C 800ABA5C  */  .asciz  "%s: warning: tried to shrink NULL\n"
                        .balign 4

glabel D_800ABA80
/* 0AB630 800ABA80  */  .asciz  "heapCheckSize"
                        .balign 4

glabel D_800ABA90
/* 0AB640 800ABA90  */  .asciz  "heapFreeLocal"
                        .balign 4
/* 0AB650 800ABAA0  */  .asciz  "%s: warning: tried to free NULL\n"
                        .balign 4

glabel D_800ABAC4
/* 0AB674 800ABAC4  */  .asciz  "heapGetSize"
                        .balign 4
/* 0AB680 800ABAD0  */  .asciz  "heapRegion:%p "
                        .balign 4
/* 0AB690 800ABAE0  */  .asciz  "globalHeap "
                        .balign 4
/* 0AB69C 800ABAEC  */  .asciz  "%s total 0x%x  max 0x%x\n"
                        .balign 4

glabel D_800ABB08
/* 0AB6B8 800ABB08  */  .asciz  "setHeapEntryNext"
                        .balign 4
/* 0AB6CC 800ABB1C  */  .asciz  "%s: warning: tried to set entry to NULL\n"
                        .balign 4

glabel D_800ABB48
/* 0AB6F8 800ABB48  */  .asciz  "setHeapEntryMax"
                        .balign 4
/* 0AB708 800ABB58  */  .asciz  ""
                        .balign 4
/* 0AB70C 800ABB5C  */  .asciz  ""
                        .balign 4
