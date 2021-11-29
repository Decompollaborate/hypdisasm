.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_800A50E0
/* 0A4C90 800A50E0  */  .asciz  "controller: warning: unknown message type(%d)\n"
                        .balign 4
/* 0A4CC0 800A5110  */  .asciz  "channelNum=%d\n"
                        .balign 4
/* 0A4CD0 800A5120  */  .asciz  "validControllers:0x%02X\n"
                        .balign 4
/* 0A4CEC 800A513C  */  .asciz  "Controller_pak is connected to %d\n"
                        .balign 4
/* 0A4D10 800A5160  */  .asciz  "Motor_pak is connected to %d\n"
                        .balign 4
/* 0A4D30 800A5180  */  .asciz  "Unknown type of controller_pak is connected to %d\n"
                        .balign 4
/* 0A4D64 800A51B4  */  .asciz  "Motor_pak %d is disconnected\n"
                        .balign 4
/* 0A4D84 800A51D4  */  .asciz  "Motor_pak %d is initialized\n"
                        .balign 4
/* 0A4DA4 800A51F4  */  .asciz  "Unknown motor state(%d)\n"
                        .balign 4
/* 0A4DC0 800A5210  */  .asciz  "loadCRC:%08x\nrealCRC:%08x\n\n"
                        .balign 4
/* 0A4DDC 800A522C  */  .asciz  "Unknown eeprom state(%d)\n"
                        .balign 4
/* 0A4DF8 800A5248  */  .asciz  "eepromRead(%d, %d, %p, %d)\n"
                        .balign 4
/* 0A4E14 800A5264  */  .asciz  "eepromWrite(%d, %d, %p, %d)\n"
                        .balign 4
/* 0A4E34 800A5284  */  .asciz  "calcCRC:%08x\n"
                        .balign 4

glabel D_800A5294
/* 0A4E44 800A5294 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A5298
/* 0A4E48 800A5298 3C888889 */  .float  0.01666666753590107

glabel jtbl_800A529C
/* 0A4E4C 800A529C 80000CB4 */  .word  L80000CB4
/* 0A4E50 800A52A0 80000C84 */  .word  L80000C84
/* 0A4E54 800A52A4 80000B8C */  .word  L80000B8C
/* 0A4E58 800A52A8 80000BF0 */  .word  L80000BF0
/* 0A4E5C 800A52AC 80000C2C */  .word  L80000C2C

glabel jtbl_800A52B0
/* 0A4E60 800A52B0 8000106C */  .word  L8000106C
/* 0A4E64 800A52B4 80000F78 */  .word  L80000F78
/* 0A4E68 800A52B8 80000FDC */  .word  L80000FDC
/* 0A4E6C 800A52BC 8000106C */  .word  L8000106C
/* 0A4E70 800A52C0 8000106C */  .word  L8000106C
/* 0A4E74 800A52C4 8000106C */  .word  L8000106C

glabel D_800A52C8
/* 0A4E78 800A52C8 3DCCCCCD */  .float  0.10000000149011612
/* 0A4E7C 800A52CC 00000000 */  .float  0.0
