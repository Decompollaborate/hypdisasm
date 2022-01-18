.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A9B60
/* 0A9710 800A9B60  */  .asciz  "ERROR: Unknown status:%d\n"
                        .balign 4
/* 0A972C 800A9B7C  */  .asciz  "sendMessenger(%d, (%.3f, %.3f, %.3f), (%.3f, %.3f, %.3f), %.3f,\n\t\t(%d, %d, 0x%x, %d, %d), %d, %d)\n"
                        .balign 4

glabel D_800A9BE0
/* 0A9790 800A9BE0 3ECCCCCD */  .float  0.4000000059604645

glabel D_800A9BE4
/* 0A9794 800A9BE4 3F4CCCCD */  .float  0.800000011920929

glabel D_800A9BE8
/* 0A9798 800A9BE8 3DCCCCCD */  .float  0.10000000149011612

glabel jtbl_800A9BEC
/* 0A979C 800A9BEC 800244D0 */  .word  L800244D0
/* 0A97A0 800A9BF0 800244E0 */  .word  L800244E0
/* 0A97A4 800A9BF4 800244F0 */  .word  L800244F0
/* 0A97A8 800A9BF8 80024500 */  .word  L80024500
/* 0A97AC 800A9BFC 80024510 */  .word  L80024510

glabel D_800A9C00
/* 0A97B0 800A9C00 3EB33333 */  .float  0.3499999940395355

glabel D_800A9C04
/* 0A97B4 800A9C04 3E99999A */  .float  0.30000001192092896

glabel D_800A9C08
/* 0A97B8 800A9C08 3CF5C28F */  .float  0.029999999329447746

glabel D_800A9C0C
/* 0A97BC 800A9C0C 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A9C10
/* 0A97C0 800A9C10 3F333333 */  .float  0.699999988079071
/* 0A97C4 800A9C14 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A9C18
/* 0A97C8 800A9C18 BECCCCCD */  .float  -0.4000000059604645

glabel D_800A9C1C
/* 0A97CC 800A9C1C 3ECCCCCD */  .float  0.4000000059604645

glabel _string_800A9C20
/* 0A97D0 800A9C20  */  .asciz  "actor type : ACTOR_PIKACHU\n"
                        .balign 4
/* 0A97EC 800A9C3C  */  .asciz  "actor type : ACTOR_POKEMON\n"
                        .balign 4

glabel D_800A9C58
/* 0A9808 800A9C58 3A83126F */  .float  0.0010000000474974513

glabel D_800A9C5C
/* 0A980C 800A9C5C BA83126F */  .float  -0.0010000000474974513

glabel _string_800A9C60
/* 0A9810 800A9C60  */  .asciz  "_setSprite:(%s) idx:%d\n"
                        .balign 4

glabel D_800A9C78
/* 0A9828 800A9C78 3D4CCCCD */  .float  0.05000000074505806
/* 0A982C 800A9C7C 00000000 */  .float  0.0
