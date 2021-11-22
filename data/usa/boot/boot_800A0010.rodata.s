.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16
/* 09FBC0 800A0010  */  .asciz  "mic toggle %s\n"
                        .balign 4
/* 09FBD0 800A0020  */  .asciz  "ON"
                        .balign 4
/* 09FBD4 800A0024  */  .asciz  "OFF"
                        .balign 4
/* 09FBD8 800A0028  */  .asciz  "mic trigger on\n"
                        .balign 4
/* 09FBE8 800A0038  */  .asciz  "AMP_ON\n"
                        .balign 4
/* 09FBF0 800A0040  */  .asciz  "AMP_ON_B\n"
                        .balign 4
/* 09FBFC 800A004C  */  .asciz  "AMP_OFF\n"
                        .balign 4
/* 09FC08 800A0058  */  .asciz  "AMP_OFF_B\n"
                        .balign 4
/* 09FC14 800A0064  */  .asciz  "_changeDic: newDictionary:%d\n"
                        .balign 4
/* 09FC34 800A0084  */  .asciz  "_changeDic: _sendincDicNum:%d\n"
                        .balign 4
/* 09FC54 800A00A4  */  .asciz  "_micAvailPort:0x%02x\n"
                        .balign 4
/* 09FC6C 800A00BC  */  .asciz  " checking port(%d)\n"
                        .balign 4
/* 09FC80 800A00D0  */  .asciz  "mic found:%d\n"
                        .balign 4
/* 09FC90 800A00E0  */  .asciz  "failed to initialize mic(port %d)\n"
                        .balign 4
/* 09FCB4 800A0104  */  .asciz  " mic-disconnect\n  errno:%d\n  type:0x%08x\n  connect:%d\n"
                        .balign 4
/* 09FCEC 800A013C  */  .asciz  "_change_dictionary(%d)\n"
                        .balign 4
/* 09FD04 800A0154  */  .asciz  "ERROR: mic64SetWordDic() is not supported.\n"
                        .balign 4
/* 09FD30 800A0180  */  .asciz  "ERROR: Unknown command:%d\n"
                        .balign 4

glabel jtbl_800A019C
/* 09FD4C 800A019C 80004350 */  .word  L80004350
/* 09FD50 800A01A0 80004360 */  .word  L80004360
/* 09FD54 800A01A4 80004394 */  .word  L80004394
/* 09FD58 800A01A8 800043A4 */  .word  L800043A4
/* 09FD5C 800A01AC 800043B4 */  .word  L800043B4
/* 09FD60 800A01B0 800043C4 */  .word  L800043C4
/* 09FD64 800A01B4 800043D4 */  .word  L800043D4
/* 09FD68 800A01B8 800043EC */  .word  L800043EC
/* 09FD6C 800A01BC 00000000 */  .word  0x00000000

glabel _string_SendFunc
/* 09FD70 800A01C0  */  .asciz  "send(%d, %d, %.3f, %.3f, %.3f)\n"
                        .balign 4
/* 09FD90 800A01E0  */  .asciz  "pad-%d is invalid\n"
                        .balign 4

glabel D_800A01F4
/* 09FDA4 800A01F4 3E851EB8 */  .float  0.25999999046325684

glabel D_800A01F8
/* 09FDA8 800A01F8 3C3FB15B */  .float  0.011699999682605267

glabel D_800A01FC
/* 09FDAC 800A01FC 49742400 */  .float  1000000.0

glabel D_800A0200
/* 09FDB0 800A0200 49742400 */  .float  1000000.0

glabel D_800A0204
/* 09FDB4 800A0204 49742400 */  .float  1000000.0
/* 09FDB8 800A0208 00000000 */  .float  0.0
/* 09FDBC 800A020C 00000000 */  .float  0.0
