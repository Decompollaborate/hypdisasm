.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 0AAB90 800AAFE0  */  .asciz  " _eepromIdx[%d] = %d\n"
                        .balign 4
/* 0AABA8 800AAFF8  */  .asciz  "\npreserved data   size: %d\n"
                        .balign 4
/* 0AABC4 800AB014  */  .asciz  "Unknown type:%d\n"
                        .balign 4
/* 0AABD8 800AB028  */  .asciz  "Unknown type:%d\n"
                        .balign 4
/* 0AABEC 800AB03C  */  .asciz  "pdSaveFCB_EEPROM: eepromWrite ans:%d\n"
                        .balign 4
/* 0AAC14 800AB064  */  .asciz  "pdLoadFCB_EEPROM: eepromWrite ans:%d\n"
                        .balign 4
/* 0AAC3C 800AB08C  */  .asciz  "pdSaveEEPROM: eepromWrite ans:%d\n"
                        .balign 4
/* 0AAC60 800AB0B0  */  .asciz  "pdLoadEEPROM: eepromRead ans:%d\n"
                        .balign 4

glabel jtbl_800AB0D4
/* 0AAC84 800AB0D4 80030174 */  .word  L80030174
/* 0AAC88 800AB0D8 80030194 */  .word  L80030194
/* 0AAC8C 800AB0DC 800301B4 */  .word  L800301B4
/* 0AAC90 800AB0E0 800301D4 */  .word  L800301D4
/* 0AAC94 800AB0E4 800301F4 */  .word  L800301F4
/* 0AAC98 800AB0E8 80030214 */  .word  L80030214
/* 0AAC9C 800AB0EC 80030214 */  .word  L80030214
/* 0AACA0 800AB0F0 80030214 */  .word  L80030214

glabel jtbl_800AB0F4
/* 0AACA4 800AB0F4 800302F0 */  .word  L800302F0
/* 0AACA8 800AB0F8 80030318 */  .word  L80030318
/* 0AACAC 800AB0FC 80030340 */  .word  L80030340
/* 0AACB0 800AB100 80030368 */  .word  L80030368
/* 0AACB4 800AB104 80030390 */  .word  L80030390
/* 0AACB8 800AB108 800303B8 */  .word  L800303B8
/* 0AACBC 800AB10C 800303B8 */  .word  L800303B8
/* 0AACC0 800AB110 800303B8 */  .word  L800303B8
/* 0AACC4 800AB114 00000000 */  .word  0x00000000
/* 0AACC8 800AB118 00000000 */  .word  0x00000000
/* 0AACCC 800AB11C 00000000 */  .word  0x00000000
