.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_80130E60
/* 026370 80130E60  */  .asciz  "nerveThrowItem - %d\n"
                        .balign 4
/* 026388 80130E78  */  .asciz  "nerveGrabItem - %d\n"
                        .balign 4
/* 02639C 80130E8C  */  .asciz  "nerveEatItem - %d\n"
                        .balign 4
/* 0263B0 80130EA0  */  .asciz  "messageSetup(%d,%d,%d)\n"
                        .balign 4
/* 0263C8 80130EB8  */  .asciz  "ERROR: Unknown nerve routine. Nerve number %d\n"
                        .balign 4

glabel D_80130EE8
/* 0263F8 80130EE8 3F19999A */  .float  0.6000000238418579

glabel D_80130EEC
/* 0263FC 80130EEC 3F19999A */  .float  0.6000000238418579

glabel D_80130EF0
/* 026400 80130EF0 3FC99999A0000000 */  .double  0.20000000298023224

glabel D_80130EF8
/* 026408 80130EF8 3ECCCCCD */  .float  0.4000000059604645

glabel jtbl_80130EFC
/* 02640C 80130EFC 801170D0 */  .word  L801170D0
/* 026410 80130F00 8011710C */  .word  L8011710C
/* 026414 80130F04 8011711C */  .word  L8011711C
/* 026418 80130F08 8011712C */  .word  L8011712C
/* 02641C 80130F0C 80117144 */  .word  L80117144
/* 026420 80130F10 80117154 */  .word  L80117154
/* 026424 80130F14 80117164 */  .word  L80117164
/* 026428 80130F18 80117174 */  .word  L80117174
/* 02642C 80130F1C 80117184 */  .word  L80117184
/* 026430 80130F20 80117194 */  .word  L80117194
/* 026434 80130F24 801171A4 */  .word  L801171A4
/* 026438 80130F28 801171B4 */  .word  L801171B4
/* 02643C 80130F2C 801171C4 */  .word  L801171C4
/* 026440 80130F30 801171D4 */  .word  L801171D4
/* 026444 80130F34 801171E4 */  .word  L801171E4
/* 026448 80130F38 00000000 */  .word  0x00000000
/* 02644C 80130F3C 00000000 */  .word  0x00000000
