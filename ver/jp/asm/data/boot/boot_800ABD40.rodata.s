.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800ABD40
/* 0AB8F0 800ABD40  */  .asciz  "viStatus(%x)\npixel size: %s\ngamma_dither:%s\ngamma:%s\ndivot:%s\nserrate:%s\nantialias_mode: %s\ndither_filter:%s\n"
                        .balign 4
/* 0AB960 800ABDB0  */  .asciz  "0: blank (no data, no sync)"
                        .balign 4
/* 0AB97C 800ABDCC  */  .asciz  "1: reserved"
                        .balign 4
/* 0AB988 800ABDD8  */  .asciz  "2: 5/5/5/3 (16 bit)"
                        .balign 4
/* 0AB99C 800ABDEC  */  .asciz  "3: 8/8/8/8 (32 bit)"
                        .balign 4
/* 0AB9B0 800ABE00  */  .asciz  "on"
                        .balign 4
/* 0AB9B4 800ABE04  */  .asciz  "off"
                        .balign 4
/* 0AB9B8 800ABE08  */  .asciz  "on"
                        .balign 4
/* 0AB9BC 800ABE0C  */  .asciz  "off"
                        .balign 4
/* 0AB9C0 800ABE10  */  .asciz  "on"
                        .balign 4
/* 0AB9C4 800ABE14  */  .asciz  "off"
                        .balign 4
/* 0AB9C8 800ABE18  */  .asciz  "on"
                        .balign 4
/* 0AB9CC 800ABE1C  */  .asciz  "off"
                        .balign 4
/* 0AB9D0 800ABE20  */  .asciz  "0: aa & resamp (always fetch extra lines)"
                        .balign 4
/* 0AB9FC 800ABE4C  */  .asciz  "1: aa & resamp (fetch extra lines if needed)"
                        .balign 4
/* 0ABA2C 800ABE7C  */  .asciz  "2: resamp only (treat as all fully covered)"
                        .balign 4
/* 0ABA58 800ABEA8  */  .asciz  "3: neither (replicate pixels, no interpolate)"
                        .balign 4
/* 0ABA88 800ABED8  */  .asciz  "on"
                        .balign 4
/* 0ABA8C 800ABEDC  */  .asciz  "off"
                        .balign 4
/* 0ABA90 800ABEE0  */  .asciz  "%s\n"
                        .balign 4
/* 0ABA94 800ABEE4  */  .asciz  "Warning:Too Long String(len > %d)\n"
                        .balign 4
/* 0ABAB8 800ABF08  */  .asciz  "%s\n"
                        .balign 4
/* 0ABABC 800ABF0C  */  .asciz  "Warning:Too Long String(len > %d)\n"
                        .balign 4
/* 0ABAE0 800ABF30  */  .asciz  "KANJI CODE ERROR!\n"
                        .balign 4

glabel jtbl_800ABF44
/* 0ABAF4 800ABF44 8003CCD8 */  .word  L8003CCD8
/* 0ABAF8 800ABF48 8003CDFC */  .word  L8003CDFC
/* 0ABAFC 800ABF4C 8003CDFC */  .word  L8003CDFC
/* 0ABB00 800ABF50 8003CDFC */  .word  L8003CDFC
/* 0ABB04 800ABF54 8003CDFC */  .word  L8003CDFC
/* 0ABB08 800ABF58 8003CDFC */  .word  L8003CDFC
/* 0ABB0C 800ABF5C 8003CDFC */  .word  L8003CDFC
/* 0ABB10 800ABF60 8003CDFC */  .word  L8003CDFC
/* 0ABB14 800ABF64 8003CDFC */  .word  L8003CDFC
/* 0ABB18 800ABF68 8003CDFC */  .word  L8003CDFC
/* 0ABB1C 800ABF6C 8003CDFC */  .word  L8003CDFC
/* 0ABB20 800ABF70 8003CDFC */  .word  L8003CDFC
/* 0ABB24 800ABF74 8003CDFC */  .word  L8003CDFC
/* 0ABB28 800ABF78 8003CDFC */  .word  L8003CDFC
/* 0ABB2C 800ABF7C 8003CD8C */  .word  L8003CD8C
/* 0ABB30 800ABF80 8003CDFC */  .word  L8003CDFC
/* 0ABB34 800ABF84 8003CD18 */  .word  L8003CD18
/* 0ABB38 800ABF88 8003CD18 */  .word  L8003CD18
/* 0ABB3C 800ABF8C 8003CD18 */  .word  L8003CD18
/* 0ABB40 800ABF90 8003CD18 */  .word  L8003CD18
/* 0ABB44 800ABF94 8003CD18 */  .word  L8003CD18
/* 0ABB48 800ABF98 8003CD18 */  .word  L8003CD18
/* 0ABB4C 800ABF9C 8003CD18 */  .word  L8003CD18
/* 0ABB50 800ABFA0 8003CD18 */  .word  L8003CD18
/* 0ABB54 800ABFA4 8003CD18 */  .word  L8003CD18
/* 0ABB58 800ABFA8 8003CD18 */  .word  L8003CD18
/* 0ABB5C 800ABFAC 00000000 */  .word  0x00000000
