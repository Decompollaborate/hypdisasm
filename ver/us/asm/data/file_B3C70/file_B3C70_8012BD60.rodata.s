.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_8012BD60
/* 021270 8012BD60  */  .asciz  "The Bedroom"
                        .balign 4

glabel D_8012BD6C
/* 02127C 8012BD6C  */  .asciz  "Entryway"
                        .balign 4

glabel D_8012BD78
/* 021288 8012BD78  */  .asciz  "The Front Yard"
                        .balign 4

glabel D_8012BD88
/* 021298 8012BD88  */  .asciz  "Entrance to Viridian Forest"
                        .balign 4

glabel D_8012BDA4
/* 0212B4 8012BDA4  */  .asciz  "Viridian Forest"
                        .balign 4

glabel D_8012BDB4
/* 0212C4 8012BDB4  */  .asciz  "Deep in Viridian Forest"
                        .balign 4

glabel D_8012BDCC
/* 0212DC 8012BDCC  */  .asciz  "Entrance to Springleaf Field"
                        .balign 4

glabel D_8012BDEC
/* 0212FC 8012BDEC  */  .asciz  "Oddish's Meadow"
                        .balign 4

glabel D_8012BDFC
/* 02130C 8012BDFC  */  .asciz  "Springleaf Field"
                        .balign 4

glabel D_8012BE10
/* 021320 8012BE10  */  .asciz  "Olivine Lakeshore"
                        .balign 4

glabel D_8012BE24
/* 021334 8012BE24  */  .asciz  "Olivine Lake"
                        .balign 4

glabel D_8012BE34
/* 021344 8012BE34  */  .asciz  "Entrance to Ochre Woods"
                        .balign 4

glabel D_8012BE4C
/* 02135C 8012BE4C  */  .asciz  "Deep in Ochre Woods"
                        .balign 4

glabel D_8012BE60
/* 021370 8012BE60  */  .asciz  "Cobalt Island"
                        .balign 4

glabel D_8012BE70
/* 021380 8012BE70  */  .asciz  "Cobalt Coast"
                        .balign 4

glabel D_8012BE80
/* 021390 8012BE80  */  .asciz  "Abra's Shop"
                        .balign 4

glabel D_8012BE8C
/* 02139C 8012BE8C  */  .asciz  "Wilderness Camp"
                        .balign 4

glabel D_8012BE9C
/* 0213AC 8012BE9C  */  .asciz  "Ochre Fishing Hole"
                        .balign 4

glabel D_8012BEB0
/* 0213C0 8012BEB0  */  .asciz  "Olivine Fishing Hole"
                        .balign 4

glabel D_8012BEC8
/* 0213D8 8012BEC8  */  .asciz  "Cobalt Fishing Hole"
                        .balign 4

glabel D_8012BEDC
/* 0213EC 8012BEDC  */  .asciz  "Viridian Forest Edge"
                        .balign 4

glabel D_8012BEF4
/* 021404 8012BEF4  */  .asciz  "Pikachu's Playground"
                        .balign 4

glabel D_8012BF0C
/* 02141C 8012BF0C  */  .asciz  "Credits"
                        .balign 4

glabel D_8012BF14
/* 021424 8012BF14  */  .asciz  "Viridian"
                        .balign 4

glabel D_8012BF20
/* 021430 8012BF20  */  .asciz  "Viridian"
                        .balign 4

glabel D_8012BF2C
/* 02143C 8012BF2C  */  .asciz  "Viridian"
                        .balign 4

glabel D_8012BF38
/* 021448 8012BF38  */  .asciz  "Springleaf"
                        .balign 4

glabel D_8012BF44
/* 021454 8012BF44  */  .asciz  "Springleaf"
                        .balign 4

glabel D_8012BF50
/* 021460 8012BF50  */  .asciz  "Springleaf"
                        .balign 4

glabel D_8012BF5C
/* 02146C 8012BF5C  */  .asciz  "Olivine"
                        .balign 4

glabel D_8012BF64
/* 021474 8012BF64  */  .asciz  "Olivine"
                        .balign 4

glabel D_8012BF6C
/* 02147C 8012BF6C  */  .asciz  "Ochre"
                        .balign 4

glabel D_8012BF74
/* 021484 8012BF74  */  .asciz  "Ochre"
                        .balign 4

glabel D_8012BF7C
/* 02148C 8012BF7C  */  .asciz  "Cobalt"
                        .balign 4

glabel D_8012BF84
/* 021494 8012BF84  */  .asciz  "Cobalt"
                        .balign 4

glabel D_8012BF8C
/* 02149C 8012BF8C  */  .asciz  "Abra's Shop"
                        .balign 4

glabel D_8012BF98
/* 0214A8 8012BF98  */  .asciz  "Camp"
                        .balign 4

glabel D_8012BFA0
/* 0214B0 8012BFA0  */  .asciz  "Ochre"
                        .balign 4

glabel D_8012BFA8
/* 0214B8 8012BFA8  */  .asciz  "Olivine"
                        .balign 4

glabel D_8012BFB0
/* 0214C0 8012BFB0  */  .asciz  "Cobalt"
                        .balign 4

glabel D_8012BFB8
/* 0214C8 8012BFB8  */  .asciz  "Viridian"
                        .balign 4

glabel D_8012BFC4
/* 0214D4 8012BFC4  */  .asciz  "Playground"
                        .balign 4

glabel D_8012BFD0
/* 0214E0 8012BFD0  */  .asciz  "The End"
                        .balign 4
/* 0214E8 8012BFD8  */  .asciz  "ixz:(%d,%d) ixz_1:(%d,%d)\n"
                        .balign 4
/* 021504 8012BFF4  */  .asciz  "fall through getGroundAttr, researching floor...\n"
                        .balign 4
/* 021538 8012C028  */  .asciz  "research failed.\n"
                        .balign 4
/* 02154C 8012C03C  */  .asciz  "blockSize: %f,%f,%f  _clipZFactor:%f  clipFar:%f clipNear:%f clipFactor:%f\n"
                        .balign 4

glabel D_8012C088
/* 021598 8012C088  */  .asciz  "pre-digMazeTree"
                        .balign 4

glabel D_8012C098
/* 0215A8 8012C098  */  .asciz  "pre_changeMazeBlock"
                        .balign 4
/* 0215BC 8012C0AC  */  .asciz  "block level mismatch (level %d, [%3.2f, %3.2f, %3.2f]), force to digging...\n"
                        .balign 4

glabel D_8012C0FC
/* 02160C 8012C0FC  */  .asciz  "aft_changeMazeBlock"
                        .balign 4

glabel D_8012C110
/* 021620 8012C110  */  .asciz  "aft-buildMazeFoundation"
                        .balign 4

glabel D_8012C128
/* 021638 8012C128  */  .asciz  "aft-digMazeTree"
                        .balign 4

glabel D_8012C138
/* 021648 8012C138  */  .asciz  "aft-setMazeEvent"
                        .balign 4

glabel D_8012C14C
/* 02165C 8012C14C  */  .asciz  "aft-calcMazeFirst"
                        .balign 4
/* 021670 8012C160  */  .asciz  "totalBlockNum = %d\n"
                        .balign 4
/* 021684 8012C174  */  .asciz  "sizeof(mazeBlockT) = %d\n"
                        .balign 4
/* 0216A0 8012C190  */  .asciz  "initArea(%p) curAreaNum:%d\n"
                        .balign 4
/* 0216BC 8012C1AC  */  .asciz  "ERROR : not keeping item, %s\n"
                        .balign 4

glabel D_8012C1CC
/* 0216DC 8012C1CC  */  .asciz  "pre-mazeScatterItem"
                        .balign 4

glabel D_8012C1E0
/* 0216F0 8012C1E0  */  .asciz  "aft-mazeScatterItem"
                        .balign 4

glabel D_8012C1F4
/* 021704 8012C1F4 3A83126F */  .float  0.0010000000474974513

glabel D_8012C1F8
/* 021708 8012C1F8 3A83126F */  .float  0.0010000000474974513

glabel D_8012C1FC
/* 02170C 8012C1FC 3A83126F */  .float  0.0010000000474974513

glabel D_8012C200
/* 021710 8012C200 3A83126F */  .float  0.0010000000474974513

glabel D_8012C204
/* 021714 8012C204 3A83126F */  .float  0.0010000000474974513

glabel jtbl_8012C208
/* 021718 8012C208 8010C414 */  .word  L8010C414
/* 02171C 8012C20C 8010C220 */  .word  L8010C220
/* 021720 8012C210 8010C260 */  .word  L8010C260
/* 021724 8012C214 8010C5B4 */  .word  L8010C5B4
/* 021728 8012C218 8010C740 */  .word  L8010C740
/* 02172C 8012C21C 00000000 */  .word  0x00000000
