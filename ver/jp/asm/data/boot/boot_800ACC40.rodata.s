.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel jtbl_800ACC40
/* 0AC7F0 800ACC40 800590FC */  .word  L800590FC
/* 0AC7F4 800ACC44 80058FF4 */  .word  L80058FF4
/* 0AC7F8 800ACC48 80059030 */  .word  L80059030
/* 0AC7FC 800ACC4C 8005911C */  .word  L8005911C
/* 0AC800 800ACC50 8005911C */  .word  L8005911C
/* 0AC804 800ACC54 8005906C */  .word  L8005906C
/* 0AC808 800ACC58 800590B4 */  .word  L800590B4
/* 0AC80C 800ACC5C 00000000 */  .word  0x00000000
