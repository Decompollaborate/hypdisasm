.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800AA880
/* 0AA430 800AA880  */  .asciz  "meshRootInit:%p\n"
                        .balign 4
/* 0AA444 800AA894  */  .asciz  "ERROR: Unknown meshType:%d\n"
                        .balign 4
/* 0AA460 800AA8B0  */  .asciz  "meshNum:%d\n"
                        .balign 4

glabel D_800AA8BC
/* 0AA46C 800AA8BC 3DCCCCCD */  .float  0.10000000149011612

glabel _string_800AA8C0
/* 0AA470 800AA8C0  */  .asciz  "page stack overflow.\n"
                        .balign 4
/* 0AA488 800AA8D8  */  .asciz  "page stack exhausted.\n"
                        .balign 4
/* 0AA4A0 800AA8F0  */  .asciz  "alpha:%d\n"
                        .balign 4
/* 0AA4AC 800AA8FC  */  .asciz  "line %d message '%s'\n"
                        .balign 4

glabel D_800AA914
/* 0AA4C4 800AA914  */  .asciz  "［］ボタンを おしてください"
                        .balign 4

glabel jtbl_800AA930
/* 0AA4E0 800AA930 80029F9C */  .word  L80029F9C
/* 0AA4E4 800AA934 80029F44 */  .word  L80029F44
/* 0AA4E8 800AA938 80029F74 */  .word  L80029F74
/* 0AA4EC 800AA93C 8002A034 */  .word  L8002A034
/* 0AA4F0 800AA940 8002A0DC */  .word  L8002A0DC

glabel jtbl_800AA944
/* 0AA4F4 800AA944 8002A1E0 */  .word  L8002A1E0
/* 0AA4F8 800AA948 8002A124 */  .word  L8002A124
/* 0AA4FC 800AA94C 8002A188 */  .word  L8002A188
/* 0AA500 800AA950 8002A22C */  .word  L8002A22C
/* 0AA504 800AA954 8002A268 */  .word  L8002A268
/* 0AA508 800AA958 00000000 */  .word  0x00000000
/* 0AA50C 800AA95C 00000000 */  .word  0x00000000
