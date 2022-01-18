.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800AB700
/* 0AB2B0 800AB700  */  .asciz  "Initializing Mic failed.\n"
                        .balign 4
/* 0AB2CC 800AB71C  */  .asciz  "mic64Init() End\n"
                        .balign 4
/* 0AB2E0 800AB730  */  .asciz  "%d:%s\n"
                        .balign 4
/* 0AB2E8 800AB738  */  .asciz  "All Words Downloaded.\n"
                        .balign 4

glabel D_800AB750
/* 0AB300 800AB750 00000000 */  .word  0x00000000

glabel jtbl_800AB754
/* 0AB304 800AB754 80036544 */  .word  L80036544
/* 0AB308 800AB758 800364E0 */  .word  L800364E0
/* 0AB30C 800AB75C 80036544 */  .word  L80036544
/* 0AB310 800AB760 800364E0 */  .word  L800364E0
/* 0AB314 800AB764 80036544 */  .word  L80036544
/* 0AB318 800AB768 80036544 */  .word  L80036544
/* 0AB31C 800AB76C 80036544 */  .word  L80036544
/* 0AB320 800AB770 80036544 */  .word  L80036544
/* 0AB324 800AB774 00000000 */  .word  0x00000000
/* 0AB328 800AB778 00000000 */  .word  0x00000000
/* 0AB32C 800AB77C 00000000 */  .word  0x00000000
