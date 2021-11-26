.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_Error_NoMpak
/* 09F8A0 8009FCF0  */  .asciz  "ERROR: no mpak module.\n"
                        .balign 4

glabel _string_Error_UnknownMessage
/* 09F8B8 8009FD08  */  .asciz  "ERROR: unknown message type(%d)\n"
                        .balign 4

glabel jtbl_8009FD2C
/* 09F8DC 8009FD2C 800026E8 */  .word  L800026E8
/* 09F8E0 8009FD30 800026A0 */  .word  L800026A0
/* 09F8E4 8009FD34 800026A0 */  .word  L800026A0
/* 09F8E8 8009FD38 800026A0 */  .word  L800026A0
/* 09F8EC 8009FD3C 80002718 */  .word  L80002718
/* 09F8F0 8009FD40 80002728 */  .word  L80002728
/* 09F8F4 8009FD44 80002738 */  .word  L80002738
/* 09F8F8 8009FD48 800026A0 */  .word  L800026A0
/* 09F8FC 8009FD4C 00000000 */  .word  0x00000000
