.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_MeltSize
/* 09F7E0 8009FC30  */  .asciz  "meltSize = %u\n"
                        .balign 4

glabel _string_ZippedBlock
/* 09F7F0 8009FC40  */  .asciz  "zipped block size = %u\n"
                        .balign 4

glabel _string_setFilterColor
/* 09F808 8009FC58  */  .asciz  "setFilterColor:%d,%d,%d,%d\n"
                        .balign 4

glabel _string_SunsetStart
/* 09F824 8009FC74  */  .asciz  "sunset start at %f\n"
                        .balign 4

glabel D_8009FC88
/* 09F838 8009FC88 3A83126F */  .float  0.0010000000474974513

glabel D_8009FC8C
/* 09F83C 8009FC8C BA83126F */  .float  -0.0010000000474974513

glabel D_8009FC90
/* 09F840 8009FC90 3B808081 */  .float  0.003921568859368563

glabel D_8009FC94
/* 09F844 8009FC94 3A83126F */  .float  0.0010000000474974513

glabel D_8009FC98
/* 09F848 8009FC98 BA83126F */  .float  -0.0010000000474974513

glabel D_8009FC9C
/* 09F84C 8009FC9C 3FAAAAAB */  .float  1.3333333730697632

glabel jtbl_8009FCA0
/* 09F850 8009FCA0 80001E50 */  .word  L80001E50
/* 09F854 8009FCA4 80001FCC */  .word  L80001FCC
/* 09F858 8009FCA8 80001FE4 */  .word  L80001FE4
/* 09F85C 8009FCAC 80001FF4 */  .word  L80001FF4
/* 09F860 8009FCB0 80001EC4 */  .word  L80001EC4
/* 09F864 8009FCB4 80001ED4 */  .word  L80001ED4
/* 09F868 8009FCB8 80001EE4 */  .word  L80001EE4
/* 09F86C 8009FCBC 80001F54 */  .word  L80001F54
/* 09F870 8009FCC0 80002004 */  .word  L80002004
/* 09F874 8009FCC4 8000200C */  .word  L8000200C
/* 09F878 8009FCC8 8000200C */  .word  L8000200C
/* 09F87C 8009FCCC 80001EE4 */  .word  L80001EE4
/* 09F880 8009FCD0 80001EE4 */  .word  L80001EE4
/* 09F884 8009FCD4 80001F28 */  .word  L80001F28
/* 09F888 8009FCD8 80001F54 */  .word  L80001F54
/* 09F88C 8009FCDC 80001F94 */  .word  L80001F94
/* 09F890 8009FCE0 80001F94 */  .word  L80001F94
/* 09F894 8009FCE4 80001F54 */  .word  L80001F54
/* 09F898 8009FCE8 80001EB4 */  .word  L80001EB4
/* 09F89C 8009FCEC 00000000 */  .word  0x00000000

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
