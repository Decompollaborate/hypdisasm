.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 0A7770 800A7BC0  */  .asciz  "ERROR: Can't alloc %d bytes from heap.\n"
                        .balign 4
/* 0A7798 800A7BE8  */  .asciz  ""
                        .balign 4
/* 0A779C 800A7BEC  */  .asciz  ""
                        .balign 4
/* 0A77A0 800A7BF0  */  .asciz  "error: strcpy: dst or src is NULL pointer. dst:%p src:%p\n"
                        .balign 4
/* 0A77DC 800A7C2C  */  .asciz  ""
                        .balign 4

glabel D_800A7C30
/* 0A77E0 800A7C30 7FFFFFFF */  .word  0x7FFFFFFF
/* 0A77E4 800A7C34 FFFFFFFF */  .word  0xFFFFFFFF
/* 0A77E8 800A7C38 0000000000000000 */  .double  0.0

glabel D_800A7C40
/* 0A77F0 800A7C40  */  .asciz  "none"
                        .balign 4
/* 0A77F8 800A7C48  */  .asciz  ""
                        .balign 4
/* 0A77FC 800A7C4C  */  .asciz  ""
                        .balign 4

glabel D_800A7C50
/* 0A7800 800A7C50 412E848000000000 */  .double  1000000.0
/* 0A7808 800A7C58 0000000000000000 */  .double  0.0

glabel jtbl_800A7C60
/* 0A7810 800A7C60 8004E498 */  .word  L8004E498
/* 0A7814 800A7C64 8004E538 */  .word  L8004E538
/* 0A7818 800A7C68 8004E538 */  .word  L8004E538
/* 0A781C 800A7C6C 8004E538 */  .word  L8004E538
/* 0A7820 800A7C70 8004E538 */  .word  L8004E538
/* 0A7824 800A7C74 8004E500 */  .word  L8004E500
/* 0A7828 800A7C78 8004E538 */  .word  L8004E538
/* 0A782C 800A7C7C 8004E4B0 */  .word  L8004E4B0
/* 0A7830 800A7C80 8004E4DC */  .word  L8004E4DC
/* 0A7834 800A7C84 8004E538 */  .word  L8004E538
/* 0A7838 800A7C88 8004E538 */  .word  L8004E538
/* 0A783C 800A7C8C 8004E294 */  .word  L8004E294
/* 0A7840 800A7C90 8004E294 */  .word  L8004E294
/* 0A7844 800A7C94 8004E170 */  .word  L8004E170
/* 0A7848 800A7C98 8004E43C */  .word  L8004E43C
/* 0A784C 800A7C9C 8004E464 */  .word  L8004E464
/* 0A7850 800A7CA0 8004E294 */  .word  L8004E294
/* 0A7854 800A7CA4 00000000 */  .word  0x00000000

glabel D_800A7CA8
/* 0A7858 800A7CA8 40EFFFE000000000 */  .double  65535.0

glabel jtbl_800A7CB0
/* 0A7860 800A7CB0 8004EE90 */  .word  L8004EE90
/* 0A7864 800A7CB4 8004EEC4 */  .word  L8004EEC4
/* 0A7868 800A7CB8 8004EF24 */  .word  L8004EF24
/* 0A786C 800A7CBC 8004EEF8 */  .word  L8004EEF8
/* 0A7870 800A7CC0 8004EF50 */  .word  L8004EF50
/* 0A7874 800A7CC4 8004EF7C */  .word  L8004EF7C
/* 0A7878 800A7CC8 8004EFE4 */  .word  L8004EFE4
/* 0A787C 800A7CCC 8004F05C */  .word  L8004F05C

glabel D_800A7CD0
/* 0A7880 800A7CD0 4105221B3D3FB61B */  .double  173123.404906676
/* 0A7888 800A7CD8 0000000000000000 */  .double  0.0

glabel jtbl_800A7CE0
/* 0A7890 800A7CE0 8004F73C */  .word  L8004F73C
/* 0A7894 800A7CE4 8004F748 */  .word  L8004F748
/* 0A7898 800A7CE8 8004F760 */  .word  L8004F760
/* 0A789C 800A7CEC 8004F76C */  .word  L8004F76C
/* 0A78A0 800A7CF0 8004F754 */  .word  L8004F754
/* 0A78A4 800A7CF4 8004F778 */  .word  L8004F778

glabel D_800A7CF8
/* 0A78A8 800A7CF8 4105221B3D3FB61B */  .double  173123.404906676

glabel D_800A7D00
/* 0A78B0 800A7D00 3FFFFFD60E94EE39 */  .double  1.99996

glabel D_800A7D08
/* 0A78B8 800A7D08 3FFFFEB0 */  .float  1.999959945678711
/* 0A78BC 800A7D0C 00000000 */  .float  0.0

glabel D_800A7D10
/* 0A78C0 800A7D10 3F91DF469D353918 */  .double  0.017453292222222222
/* 0A78C8 800A7D18 0000000000000000 */  .double  0.0
