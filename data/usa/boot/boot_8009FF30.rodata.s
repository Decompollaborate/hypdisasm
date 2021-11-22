.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel _string_LoadCrc_RealCrc
/* 09FAE0 8009FF30  */  .asciz  "loadCRC:%08x\nrealCRC:%08x\n\n"
                        .balign 4
/* 09FAFC 8009FF4C  */  .asciz  "eepromRead(%d, %d, %p, %d)\n"
                        .balign 4
/* 09FB18 8009FF68  */  .asciz  "eepromWrite(%d, %d, %p, %d)\n"
                        .balign 4
/* 09FB38 8009FF88  */  .asciz  "calcCRC:%08x\n"
                        .balign 4
/* 09FB48 8009FF98  */  .asciz  "Unknown eeprom state(%d)\n"
                        .balign 4
/* 09FB64 8009FFB4  */  .asciz  "ERROR: Unknown command:%d\n"
                        .balign 4

glabel jtbl_8009FFD0
/* 09FB80 8009FFD0 80003928 */  .word  L80003928
/* 09FB84 8009FFD4 80003834 */  .word  L80003834
/* 09FB88 8009FFD8 80003898 */  .word  L80003898
/* 09FB8C 8009FFDC 80003928 */  .word  L80003928
/* 09FB90 8009FFE0 80003928 */  .word  L80003928
/* 09FB94 8009FFE4 80003928 */  .word  L80003928
/* 09FB98 8009FFE8 00000000 */  .word  0x00000000
/* 09FB9C 8009FFEC 00000000 */  .word  0x00000000
