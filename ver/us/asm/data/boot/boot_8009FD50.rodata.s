.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_ChannelNum
/* 09F900 8009FD50  */  .asciz  "channelNum = %d\n"
                        .balign 4

glabel _string_ValidController
/* 09F914 8009FD64  */  .asciz  "_validControllers:    0x%02X\n_curValidControllers: 0x%02X\n"
                        .balign 4
/* 09F950 8009FDA0  */  .asciz  "Motor_pak %d is initialized\n"
                        .balign 4
/* 09F970 8009FDC0  */  .asciz  "Motor_pak %d is disconnected\n"
                        .balign 4
/* 09F990 8009FDE0  */  .asciz  "_motorInit(%d): something-else\n"
                        .balign 4
/* 09F9B0 8009FE00  */  .asciz  "_motorInit(%d): initialized\n"
                        .balign 4
/* 09F9D0 8009FE20  */  .asciz  "_motorInit(%d): not-init\n"
                        .balign 4
/* 09F9EC 8009FE3C  */  .asciz  "_motorInit(%d): retry\n"
                        .balign 4
/* 09FA04 8009FE54  */  .asciz  "_motorInit(%d): give-up\n"
                        .balign 4
/* 09FA20 8009FE70  */  .asciz  "_motorStart(%d): motor-on\n"
                        .balign 4
/* 09FA3C 8009FE8C  */  .asciz  "_motorStart(%d): go-init\n"
                        .balign 4
/* 09FA58 8009FEA8  */  .asciz  "_motorStop(%d): motor-off\n"
                        .balign 4
/* 09FA74 8009FEC4  */  .asciz  "_motorStop(%d): not-motor\n"
                        .balign 4
/* 09FA90 8009FEE0  */  .asciz  "  wakeTime:%llu  now:%llu\n"
                        .balign 4
/* 09FAAC 8009FEFC  */  .asciz  "ERROR: Unknown command:%d\n"
                        .balign 4

glabel D_8009FF18
/* 09FAC8 8009FF18 49742400 */  .float  1000000.0

glabel D_8009FF1C
/* 09FACC 8009FF1C 49742400 */  .float  1000000.0

glabel D_8009FF20
/* 09FAD0 8009FF20 49742400 */  .float  1000000.0
/* 09FAD4 8009FF24 00000000 */  .float  0.0
/* 09FAD8 8009FF28 00000000 */  .float  0.0
/* 09FADC 8009FF2C 00000000 */  .float  0.0
