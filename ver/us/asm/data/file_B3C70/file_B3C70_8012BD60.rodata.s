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
/* 021648 8012C138 6166742D */  .word  0x6166742D
/* 02164C 8012C13C 7365744D */  .word  0x7365744D
/* 021650 8012C140 617A6545 */  .word  0x617A6545
/* 021654 8012C144 76656E74 */  .word  0x76656E74
/* 021658 8012C148 00000000 */  .word  0x00000000

glabel D_8012C14C
/* 02165C 8012C14C 6166742D */  .word  0x6166742D
/* 021660 8012C150 63616C63 */  .word  0x63616C63
/* 021664 8012C154 4D617A65 */  .word  0x4D617A65
/* 021668 8012C158 46697273 */  .word  0x46697273
/* 02166C 8012C15C 74000000 */  .word  0x74000000
/* 021670 8012C160 746F7461 */  .word  0x746F7461
/* 021674 8012C164 6C426C6F */  .word  0x6C426C6F
/* 021678 8012C168 636B4E75 */  .word  0x636B4E75
/* 02167C 8012C16C 6D203D20 */  .word  0x6D203D20
/* 021680 8012C170 25640A00 */  .word  0x25640A00
/* 021684 8012C174 73697A65 */  .word  0x73697A65
/* 021688 8012C178 6F66286D */  .word  0x6F66286D
/* 02168C 8012C17C 617A6542 */  .word  0x617A6542
/* 021690 8012C180 6C6F636B */  .word  0x6C6F636B
/* 021694 8012C184 5429203D */  .word  0x5429203D
/* 021698 8012C188 2025640A */  .word  0x2025640A
/* 02169C 8012C18C 00000000 */  .word  0x00000000
/* 0216A0 8012C190 696E6974 */  .word  0x696E6974
/* 0216A4 8012C194 41726561 */  .word  0x41726561
/* 0216A8 8012C198 28257029 */  .word  0x28257029
/* 0216AC 8012C19C 20637572 */  .word  0x20637572
/* 0216B0 8012C1A0 41726561 */  .word  0x41726561
/* 0216B4 8012C1A4 4E756D3A */  .word  0x4E756D3A
/* 0216B8 8012C1A8 25640A00 */  .word  0x25640A00
/* 0216BC 8012C1AC 4552524F */  .word  0x4552524F
/* 0216C0 8012C1B0 52203A20 */  .word  0x52203A20
/* 0216C4 8012C1B4 6E6F7420 */  .word  0x6E6F7420
/* 0216C8 8012C1B8 6B656570 */  .word  0x6B656570
/* 0216CC 8012C1BC 696E6720 */  .word  0x696E6720
/* 0216D0 8012C1C0 6974656D */  .word  0x6974656D
/* 0216D4 8012C1C4 2C202573 */  .word  0x2C202573
/* 0216D8 8012C1C8 0A000000 */  .word  0x0A000000

glabel D_8012C1CC
/* 0216DC 8012C1CC 7072652D */  .word  0x7072652D
/* 0216E0 8012C1D0 6D617A65 */  .word  0x6D617A65
/* 0216E4 8012C1D4 53636174 */  .word  0x53636174
/* 0216E8 8012C1D8 74657249 */  .word  0x74657249
/* 0216EC 8012C1DC 74656D00 */  .word  0x74656D00

glabel D_8012C1E0
/* 0216F0 8012C1E0 6166742D */  .word  0x6166742D
/* 0216F4 8012C1E4 6D617A65 */  .word  0x6D617A65
/* 0216F8 8012C1E8 53636174 */  .word  0x53636174
/* 0216FC 8012C1EC 74657249 */  .word  0x74657249
/* 021700 8012C1F0 74656D00 */  .word  0x74656D00

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

glabel D_8012C220
/* 021730 8012C220 3FE99999A0000000 */  .double  0.800000011920929

glabel D_8012C228
/* 021738 8012C228 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_8012C230
/* 021740 8012C230 3FE3333340000000 */  .double  0.6000000238418579

glabel D_8012C238
/* 021748 8012C238 3A83126F */  .float  0.0010000000474974513

glabel D_8012C23C
/* 02174C 8012C23C BA83126F */  .float  -0.0010000000474974513

glabel D_8012C240
/* 021750 8012C240 BA83126F */  .float  -0.0010000000474974513

glabel D_8012C244
/* 021754 8012C244 3A83126F */  .float  0.0010000000474974513

glabel D_8012C248
/* 021758 8012C248 3FD9999A */  .float  1.7000000476837158
/* 02175C 8012C24C 00000000 */  .float  0.0

glabel D_8012C250
/* 021760 8012C250  */  .asciz  "\n"
                        .balign 4

glabel D_8012C254
/* 021764 8012C254  */  .asciz  "\nPress @I@J to pick it up."
                        .balign 4

glabel D_8012C270
/* 021780 8012C270  */  .asciz  "???"
                        .balign 4

glabel D_8012C274
/* 021784 8012C274  */  .asciz  "???"
                        .balign 4

glabel D_8012C278
/* 021788 8012C278  */  .asciz  "???"
                        .balign 4

glabel D_8012C27C
/* 02178C 8012C27C  */  .asciz  "\nPress @I@J to throw it."
                        .balign 4

glabel D_8012C298
/* 0217A8 8012C298  */  .asciz  "\n(You can't touch it.)"
                        .balign 4

glabel D_8012C2B0
/* 0217C0 8012C2B0  */  .asciz  "\nPress @I@J to go through it."
                        .balign 4

glabel D_8012C2D0
/* 0217E0 8012C2D0  */  .asciz  "???"
                        .balign 4

glabel D_8012C2D4
/* 0217E4 8012C2D4  */  .asciz  "???"
                        .balign 4
/* 0217E8 8012C2D8  */  .asciz  "holdItem:%p\n"
                        .balign 4
/* 0217F8 8012C2E8  */  .asciz  "item:%p\n"
                        .balign 4
/* 021804 8012C2F4  */  .asciz  "contMask:0x%04x  err:0x%04x\n"
                        .balign 4
/* 021824 8012C314  */  .asciz  "difficulty = %d\n"
                        .balign 4
/* 021838 8012C328  */  .asciz  "coop - model:%p(%s)\n"
                        .balign 4
/* 021850 8012C340  */  .asciz  "coop - item:%p(%s)\n"
                        .balign 4
/* 021864 8012C354  */  .asciz  "change player type %d\n"
                        .balign 4
/* 02187C 8012C36C  */  .asciz  "ERROR: unknown markMode:%d\n"
                        .balign 4
/* 021898 8012C388  */  .asciz  "ERROR: unknown markMode:%d\n"
                        .balign 4

glabel D_8012C3A4
/* 0218B4 8012C3A4 28546865 */  .word  0x28546865
/* 0218B8 8012C3A8 72652773 */  .word  0x72652773
/* 0218BC 8012C3AC 206E6F74 */  .word  0x206E6F74
/* 0218C0 8012C3B0 68696E67 */  .word  0x68696E67
/* 0218C4 8012C3B4 20746F20 */  .word  0x20746F20
/* 0218C8 8012C3B8 63686563 */  .word  0x63686563
/* 0218CC 8012C3BC 6B2E290A */  .word  0x6B2E290A
/* 0218D0 8012C3C0 4D6F7665 */  .word  0x4D6F7665
/* 0218D4 8012C3C4 20746865 */  .word  0x20746865
/* 0218D8 8012C3C8 20404140 */  .word  0x20404140
/* 0218DC 8012C3CC 42206375 */  .word  0x42206375
/* 0218E0 8012C3D0 72736F72 */  .word  0x72736F72
/* 0218E4 8012C3D4 20746F20 */  .word  0x20746F20
/* 0218E8 8012C3D8 616E790A */  .word  0x616E790A
/* 0218EC 8012C3DC 6974656D */  .word  0x6974656D
/* 0218F0 8012C3E0 20796F75 */  .word  0x20796F75
/* 0218F4 8012C3E4 2077616E */  .word  0x2077616E
/* 0218F8 8012C3E8 7420746F */  .word  0x7420746F
/* 0218FC 8012C3EC 20636865 */  .word  0x20636865
/* 021900 8012C3F0 636B2061 */  .word  0x636B2061
/* 021904 8012C3F4 6E640A70 */  .word  0x6E640A70
/* 021908 8012C3F8 72657373 */  .word  0x72657373
/* 02190C 8012C3FC 20404B40 */  .word  0x20404B40
/* 021910 8012C400 4C20746F */  .word  0x4C20746F
/* 021914 8012C404 20736565 */  .word  0x20736565
/* 021918 8012C408 20612064 */  .word  0x20612064
/* 02191C 8012C40C 65736372 */  .word  0x65736372
/* 021920 8012C410 69707469 */  .word  0x69707469
/* 021924 8012C414 6F6E0A6F */  .word  0x6F6E0A6F
/* 021928 8012C418 66206974 */  .word  0x66206974
/* 02192C 8012C41C 2E000000 */  .word  0x2E000000

glabel D_8012C420
/* 021930 8012C420 3F3F3F00 */  .word  0x3F3F3F00

glabel D_8012C424
/* 021934 8012C424 2573252D */  .word  0x2573252D
/* 021938 8012C428 3232735E */  .word  0x3232735E
/* 02193C 8012C42C 5E25730A */  .word  0x5E25730A
/* 021940 8012C430 25732573 */  .word  0x25732573
/* 021944 8012C434 00000000 */  .word  0x00000000

glabel D_8012C438
/* 021948 8012C438 5E5E0000 */  .word  0x5E5E0000

glabel D_8012C43C
/* 02194C 8012C43C 5E340000 */  .word  0x5E340000

glabel D_8012C440
/* 021950 8012C440 25732573 */  .word  0x25732573
/* 021954 8012C444 5E5E3F0A */  .word  0x5E5E3F0A
/* 021958 8012C448 25732573 */  .word  0x25732573
/* 02195C 8012C44C 00000000 */  .word  0x00000000

glabel D_8012C450
/* 021960 8012C450 5E5E0000 */  .word  0x5E5E0000

glabel D_8012C454
/* 021964 8012C454 5E340000 */  .word  0x5E340000

glabel D_8012C458
/* 021968 8012C458 0A5E3959 */  .word  0x0A5E3959
/* 02196C 8012C45C 6F752063 */  .word  0x6F752063
/* 021970 8012C460 616E2774 */  .word  0x616E2774
/* 021974 8012C464 20726561 */  .word  0x20726561
/* 021978 8012C468 63682069 */  .word  0x63682069
/* 02197C 8012C46C 74206672 */  .word  0x74206672
/* 021980 8012C470 6F6D2068 */  .word  0x6F6D2068
/* 021984 8012C474 6572652E */  .word  0x6572652E
/* 021988 8012C478 5E5E0000 */  .word  0x5E5E0000

glabel D_8012C47C
/* 02198C 8012C47C 5E342573 */  .word  0x5E342573
/* 021990 8012C480 5E5E0A25 */  .word  0x5E5E0A25
/* 021994 8012C484 73000000 */  .word  0x73000000

glabel D_8012C488
/* 021998 8012C488 5E342573 */  .word  0x5E342573
/* 02199C 8012C48C 5E5E3F0A */  .word  0x5E5E3F0A
/* 0219A0 8012C490 25732573 */  .word  0x25732573
/* 0219A4 8012C494 00000000 */  .word  0x00000000

glabel D_8012C498
/* 0219A8 8012C498 0A5E3959 */  .word  0x0A5E3959
/* 0219AC 8012C49C 6F752063 */  .word  0x6F752063
/* 0219B0 8012C4A0 616E2774 */  .word  0x616E2774
/* 0219B4 8012C4A4 20726561 */  .word  0x20726561
/* 0219B8 8012C4A8 63682069 */  .word  0x63682069
/* 0219BC 8012C4AC 74206672 */  .word  0x74206672
/* 0219C0 8012C4B0 6F6D2068 */  .word  0x6F6D2068
/* 0219C4 8012C4B4 6572652E */  .word  0x6572652E
/* 0219C8 8012C4B8 5E5E0000 */  .word  0x5E5E0000

glabel D_8012C4BC
/* 0219CC 8012C4BC 00000000 */  .word  0x00000000

glabel D_8012C4C0
/* 0219D0 8012C4C0 0A507265 */  .word  0x0A507265
/* 0219D4 8012C4C4 73732040 */  .word  0x73732040
/* 0219D8 8012C4C8 49404A20 */  .word  0x49404A20
/* 0219DC 8012C4CC 746F2067 */  .word  0x746F2067
/* 0219E0 8012C4D0 6F206F6E */  .word  0x6F206F6E
/* 0219E4 8012C4D4 2E000000 */  .word  0x2E000000

glabel D_8012C4D8
/* 0219E8 8012C4D8 25732573 */  .word  0x25732573
/* 0219EC 8012C4DC 00000000 */  .word  0x00000000

glabel D_8012C4E0
/* 0219F0 8012C4E0 25732573 */  .word  0x25732573
/* 0219F4 8012C4E4 00000000 */  .word  0x00000000

glabel D_8012C4E8
/* 0219F8 8012C4E8 0A5E3959 */  .word  0x0A5E3959
/* 0219FC 8012C4EC 6F752063 */  .word  0x6F752063
/* 021A00 8012C4F0 616E2774 */  .word  0x616E2774
/* 021A04 8012C4F4 20726561 */  .word  0x20726561
/* 021A08 8012C4F8 63682069 */  .word  0x63682069
/* 021A0C 8012C4FC 74206672 */  .word  0x74206672
/* 021A10 8012C500 6F6D2068 */  .word  0x6F6D2068
/* 021A14 8012C504 6572652E */  .word  0x6572652E
/* 021A18 8012C508 5E5E0000 */  .word  0x5E5E0000

glabel D_8012C50C
/* 021A1C 8012C50C  */  .asciz  "？？？"
                        .balign 4

glabel D_8012C514
/* 021A24 8012C514 25732573 */  .word  0x25732573
/* 021A28 8012C518 00000000 */  .word  0x00000000

glabel D_8012C51C
/* 021A2C 8012C51C 25732573 */  .word  0x25732573
/* 021A30 8012C520 00000000 */  .word  0x00000000

glabel D_8012C524
/* 021A34 8012C524 0A5E3959 */  .word  0x0A5E3959
/* 021A38 8012C528 6F752063 */  .word  0x6F752063
/* 021A3C 8012C52C 616E2774 */  .word  0x616E2774
/* 021A40 8012C530 20726561 */  .word  0x20726561
/* 021A44 8012C534 63682069 */  .word  0x63682069
/* 021A48 8012C538 74206672 */  .word  0x74206672
/* 021A4C 8012C53C 6F6D2068 */  .word  0x6F6D2068
/* 021A50 8012C540 6572652E */  .word  0x6572652E
/* 021A54 8012C544 5E5E0000 */  .word  0x5E5E0000

glabel D_8012C548
/* 021A58 8012C548 25730000 */  .word  0x25730000

glabel D_8012C54C
/* 021A5C 8012C54C 25730000 */  .word  0x25730000

glabel D_8012C550
/* 021A60 8012C550 25730000 */  .word  0x25730000
/* 021A64 8012C554 496C6C65 */  .word  0x496C6C65
/* 021A68 8012C558 67616C20 */  .word  0x67616C20
/* 021A6C 8012C55C 64696666 */  .word  0x64696666
/* 021A70 8012C560 6963756C */  .word  0x6963756C
/* 021A74 8012C564 74793A25 */  .word  0x74793A25
/* 021A78 8012C568 640A0000 */  .word  0x640A0000

glabel D_8012C56C
/* 021A7C 8012C56C 00000000 */  .word  0x00000000

glabel D_8012C570
/* 021A80 8012C570  */  .asciz  "^4PIKACHU^^Mode^1OFF^^"
                        .balign 4

glabel D_8012C588
/* 021A98 8012C588  */  .asciz  "^4PIKACHU^^Mode^4ON"
                        .balign 4

glabel D_8012C59C
/* 021AAC 8012C59C  */  .asciz  "^4Follow^^Mode^4ON"
                        .balign 4

glabel D_8012C5B0
/* 021AC0 8012C5B0 54617267 */  .word  0x54617267
/* 021AC4 8012C5B4 65742055 */  .word  0x65742055
/* 021AC8 8012C5B8 6E6B6E6F */  .word  0x6E6B6E6F
/* 021ACC 8012C5BC 776E0000 */  .word  0x776E0000
/* 021AD0 8012C5C0 68656C70 */  .word  0x68656C70
/* 021AD4 8012C5C4 28257329 */  .word  0x28257329
/* 021AD8 8012C5C8 0A000000 */  .word  0x0A000000
/* 021ADC 8012C5CC 706C6179 */  .word  0x706C6179
/* 021AE0 8012C5D0 65725061 */  .word  0x65725061
/* 021AE4 8012C5D4 73734368 */  .word  0x73734368
/* 021AE8 8012C5D8 65636B50 */  .word  0x65636B50
/* 021AEC 8012C5DC 6F696E74 */  .word  0x6F696E74
/* 021AF0 8012C5E0 28256429 */  .word  0x28256429
/* 021AF4 8012C5E4 0A000000 */  .word  0x0A000000
/* 021AF8 8012C5E8 6C657665 */  .word  0x6C657665
/* 021AFC 8012C5EC 6C202564 */  .word  0x6C202564
/* 021B00 8012C5F0 202D3E20 */  .word  0x202D3E20
/* 021B04 8012C5F4 25640A00 */  .word  0x25640A00

glabel D_8012C5F8
/* 021B08 8012C5F8  */  .asciz  "You've\n      just met"
                        .balign 4

glabel D_8012C610
/* 021B20 8012C610  */  .asciz  "Getting to\nknow PIKACHU"
                        .balign 4

glabel D_8012C628
/* 021B38 8012C628  */  .asciz  "PIKACHU's\n        playmate"
                        .balign 4

glabel D_8012C644
/* 021B54 8012C644  */  .asciz  "PIKACHU's\n      companion"
                        .balign 4

glabel D_8012C660
/* 021B70 8012C660  */  .asciz  "PIKACHU's\n          friend"
                        .balign 4

glabel D_8012C67C
/* 021B8C 8012C67C  */  .asciz  "PIKACHU's\n    roommate"
                        .balign 4

glabel D_8012C694
/* 021BA4 8012C694  */  .asciz  "PIKACHU's\n            chum"
                        .balign 4

glabel D_8012C6B0
/* 021BC0 8012C6B0  */  .asciz  "PIKACHU's\n        sidekick"
                        .balign 4

glabel D_8012C6CC
/* 021BDC 8012C6CC  */  .asciz  "PIKACHU's\n       good pal"
                        .balign 4

glabel D_8012C6E8
/* 021BF8 8012C6E8  */  .asciz  "PIKACHU's\n    best buddy"
                        .balign 4

glabel D_8012C704
/* 021C14 8012C704  */  .asciz  "You're one\n    of the gang"
                        .balign 4

glabel D_8012C720
/* 021C30 8012C720  */  .asciz  "PIKACHU's\n         cohort"
                        .balign 4

glabel D_8012C73C
/* 021C4C 8012C73C  */  .asciz  "PIKACHU\n    trusts you"
                        .balign 4

glabel D_8012C754
/* 021C64 8012C754  */  .asciz  "Tried and true\n    friends"
                        .balign 4

glabel D_8012C770
/* 021C80 8012C770  */  .asciz  "You share\n    all secrets"
                        .balign 4

glabel D_8012C78C
/* 021C9C 8012C78C  */  .asciz  "You're like\n          family"
                        .balign 4

glabel D_8012C7AC
/* 021CBC 8012C7AC  */  .asciz  "Telepathically\n    connected!"
                        .balign 4

glabel D_8012C7CC
/* 021CDC 8012C7CC  */  .asciz  "Nothing comes\n   between you"
                        .balign 4

glabel D_8012C7EC
/* 021CFC 8012C7EC  */  .asciz  "Friends\n        forever!"
                        .balign 4

glabel D_8012C808
/* 021D18 8012C808  */  .asciz  "Pi-pika\n  pika-Pikachu"
                        .balign 4
/* 021D30 8012C820  */  .asciz  "grab objID:%d\n"
                        .balign 4

glabel D_8012C830
/* 021D40 8012C830 A1A90000 */  .word  0xA1A90000
/* 021D44 8012C834 73657453 */  .word  0x73657453
/* 021D48 8012C838 6F6E6756 */  .word  0x6F6E6756
/* 021D4C 8012C83C 6F6C756D */  .word  0x6F6C756D
/* 021D50 8012C840 65282566 */  .word  0x65282566
/* 021D54 8012C844 29207663 */  .word  0x29207663
/* 021D58 8012C848 75723A20 */  .word  0x75723A20
/* 021D5C 8012C84C 25642F25 */  .word  0x25642F25
/* 021D60 8012C850 6420766F */  .word  0x6420766F
/* 021D64 8012C854 6C3A2564 */  .word  0x6C3A2564
/* 021D68 8012C858 0A000000 */  .word  0x0A000000
/* 021D6C 8012C85C 73657453 */  .word  0x73657453
/* 021D70 8012C860 6678566F */  .word  0x6678566F
/* 021D74 8012C864 6C756D65 */  .word  0x6C756D65
/* 021D78 8012C868 28256629 */  .word  0x28256629
/* 021D7C 8012C86C 20766375 */  .word  0x20766375
/* 021D80 8012C870 723A2025 */  .word  0x723A2025
/* 021D84 8012C874 642F2564 */  .word  0x642F2564
/* 021D88 8012C878 20766F6C */  .word  0x20766F6C
/* 021D8C 8012C87C 3A25640A */  .word  0x3A25640A
/* 021D90 8012C880 00000000 */  .word  0x00000000

glabel D_8012C884
/* 021D94 8012C884 3C40C0C1 */  .float  0.0117647061124444

glabel D_8012C888
/* 021D98 8012C888 3C1374BC */  .float  0.008999999612569809

glabel D_8012C88C
/* 021D9C 8012C88C 3BE56042 */  .float  0.007000000216066837

glabel D_8012C890
/* 021DA0 8012C890 3A83126F */  .float  0.0010000000474974513

glabel D_8012C894
/* 021DA4 8012C894 BA83126F */  .float  -0.0010000000474974513

glabel D_8012C898
/* 021DA8 8012C898 3C40C0C1 */  .float  0.0117647061124444

glabel D_8012C89C
/* 021DAC 8012C89C 40511111 */  .float  3.2666666507720947

glabel D_8012C8A0
/* 021DB0 8012C8A0 3E4CCCCD */  .float  0.20000000298023224

glabel D_8012C8A4
/* 021DB4 8012C8A4 3E4CCCCD */  .float  0.20000000298023224

glabel D_8012C8A8
/* 021DB8 8012C8A8 40511111 */  .float  3.2666666507720947

glabel D_8012C8AC
/* 021DBC 8012C8AC 3CF5C28F */  .float  0.029999999329447746

glabel D_8012C8B0
/* 021DC0 8012C8B0 3F0CCCCD */  .float  0.550000011920929

glabel D_8012C8B4
/* 021DC4 8012C8B4 3CF5C28F */  .float  0.029999999329447746

glabel D_8012C8B8
/* 021DC8 8012C8B8 3CF5C28F */  .float  0.029999999329447746

glabel D_8012C8BC
/* 021DCC 8012C8BC 3CF5C28F */  .float  0.029999999329447746

glabel D_8012C8C0
/* 021DD0 8012C8C0 3DCCCCCD */  .float  0.10000000149011612

glabel D_8012C8C4
/* 021DD4 8012C8C4 3DCCCCCD */  .float  0.10000000149011612

glabel D_8012C8C8
/* 021DD8 8012C8C8 3CF5C28F */  .float  0.029999999329447746

glabel D_8012C8CC
/* 021DDC 8012C8CC 3CF5C28F */  .float  0.029999999329447746

glabel D_8012C8D0
/* 021DE0 8012C8D0 3FD3333340000000 */  .double  0.30000001192092896

glabel D_8012C8D8
/* 021DE8 8012C8D8 3F333333 */  .float  0.699999988079071
/* 021DEC 8012C8DC 00000000 */  .float  0.0

glabel D_8012C8E0
/* 021DF0 8012C8E0 3FE99999A0000000 */  .double  0.800000011920929
/* 021DF8 8012C8E8 3F333333 */  .word  0x3F333333

glabel D_8012C8EC
/* 021DFC 8012C8EC 3F333333 */  .float  0.699999988079071

glabel D_8012C8F0
/* 021E00 8012C8F0 3CA3D70A */  .float  0.019999999552965164

glabel D_8012C8F4
/* 021E04 8012C8F4 3E4CCCCD */  .float  0.20000000298023224

glabel D_8012C8F8
/* 021E08 8012C8F8 BE4CCCCD */  .float  -0.20000000298023224

glabel D_8012C8FC
/* 021E0C 8012C8FC 3F4CCCCD */  .float  0.800000011920929

glabel D_8012C900
/* 021E10 8012C900 3F19999A */  .float  0.6000000238418579

glabel D_8012C904
/* 021E14 8012C904 3F2AAAAB */  .float  0.6666666865348816

glabel D_8012C908
/* 021E18 8012C908 3CF5C28F */  .float  0.029999999329447746
/* 021E1C 8012C90C 00000000 */  .float  0.0

glabel D_8012C910
/* 021E20 8012C910  */  .asciz  "?"
                        .balign 4

glabel D_8012C914
/* 021E24 8012C914  */  .asciz  "?"
                        .balign 4

glabel D_8012C918
/* 021E28 8012C918  */  .asciz  "?"
                        .balign 4

glabel D_8012C91C
/* 021E2C 8012C91C  */  .asciz  "?"
                        .balign 4

glabel D_8012C920
/* 021E30 8012C920  */  .asciz  "apple"
                        .balign 4

glabel D_8012C928
/* 021E38 8012C928  */  .asciz  "apple"
                        .balign 4

glabel D_8012C930
/* 021E40 8012C930  */  .asciz  "A sweet, red fruit\n^d\"One of ^6PIKACHU^d's favorites.\n^dI wonder... ^4How's it taste^d?\"^^"
                        .balign 4

glabel D_8012C98C
/* 021E9C 8012C98C  */  .asciz  "apple"
                        .balign 4

glabel D_8012C994
/* 021EA4 8012C994  */  .asciz  "green apple"
                        .balign 4

glabel D_8012C9A0
/* 021EB0 8012C9A0  */  .asciz  "An ^4apple^^ that hasn't ripened\n^d\"I bet it's sour. Maybe a\n^4Thundershock^d will help.\"^^"
                        .balign 4

glabel D_8012C9FC
/* 021F0C 8012C9FC  */  .asciz  "apple"
                        .balign 4

glabel D_8012CA04
/* 021F14 8012CA04  */  .asciz  "baked apple"
                        .balign 4

glabel D_8012CA10
/* 021F20 8012CA10  */  .asciz  "An ^4apple^^ that's been baked\n^d\"I wonder... ^4How's it taste^d?\"^^\n"
                        .balign 4

glabel D_8012CA58
/* 021F68 8012CA58  */  .asciz  "apple"
                        .balign 4

glabel D_8012CA60
/* 021F70 8012CA60  */  .asciz  "golden apple"
                        .balign 4

glabel D_8012CA70
/* 021F80 8012CA70  */  .asciz  "A shiny, gold-colored ^4apple^^\n^d\"It's a rare ^4apple^d - don't\n^dlet ^6PIKACHU^d throw it away.\"^^"
                        .balign 4

glabel D_8012CAD8
/* 021FE8 8012CAD8  */  .asciz  "peach"
                        .balign 4

glabel D_8012CAE0
/* 021FF0 8012CAE0  */  .asciz  "peach"
                        .balign 4

glabel D_8012CAE8
/* 021FF8 8012CAE8  */  .asciz  "A sweet, juicy fruit\n^d\"^6PIKACHU^d loves this flavor,\n^dso tell it to ^4taste it^d.\"^^"
                        .balign 4

glabel D_8012CB40
/* 022050 8012CB40  */  .asciz  "strawberry"
                        .balign 4

glabel D_8012CB4C
/* 02205C 8012CB4C  */  .asciz  "strawberry"
                        .balign 4

glabel D_8012CB58
/* 022068 8012CB58  */  .asciz  "A tangy, sweet red fruit\n^d\"^6PIKACHU^d loves this fruit,\n^dso tell it to ^4taste it^d.\"^^"
                        .balign 4

glabel D_8012CBB4
/* 0220C4 8012CBB4  */  .asciz  "raspberry"
                        .balign 4

glabel D_8012CBC0
/* 0220D0 8012CBC0  */  .asciz  "raspberry"
                        .balign 4

glabel D_8012CBCC
/* 0220DC 8012CBCC  */  .asciz  "A deep red fruit\n^d\"It looks very sweet.\"^^\n"
                        .balign 4

glabel D_8012CBFC
/* 02210C 8012CBFC  */  .asciz  "banana"
                        .balign 4

glabel D_8012CC04
/* 022114 8012CC04  */  .asciz  "banana"
                        .balign 4

glabel D_8012CC0C
/* 02211C 8012CC0C  */  .asciz  "A tropical fruit\n^d\"Be sure to throw the\n^dpeel away.\"^^"
                        .balign 4

glabel D_8012CC48
/* 022158 8012CC48  */  .asciz  "cattail"
                        .balign 4

glabel D_8012CC50
/* 022160 8012CC50  */  .asciz  "cattail"
                        .balign 4

glabel D_8012CC58
/* 022168 8012CC58  */  .asciz  "A tall, grassy reed\n^d\"Watch where you ^4throw it^d -^^\n^dit can damage the ^4flower^ds.\"^^"
                        .balign 4

glabel D_8012CCB4
/* 0221C4 8012CCB4  */  .asciz  "wild herb"
                        .balign 4

glabel D_8012CCC0
/* 0221D0 8012CCC0  */  .asciz  "wild herb"
                        .balign 4

glabel D_8012CCCC
/* 0221DC 8012CCCC  */  .asciz  "A sweet smelling ^4leaf^^\n^d\"Boil ^4carrot^ds and ^4onion^ds with\n^dit for a tasty dish.\"^^"
                        .balign 4

glabel D_8012CD28
/* 022238 8012CD28  */  .asciz  "corn"
                        .balign 4

glabel D_8012CD30
/* 022240 8012CD30  */  .asciz  "corn"
                        .balign 4

glabel D_8012CD38
/* 022248 8012CD38  */  .asciz  "A bright, yellow grain\n^d\"You'll get a tasty surprise\n^dif you roast it.\"^^"
                        .balign 4

glabel D_8012CD84
/* 022294 8012CD84  */  .asciz  "popcorn"
                        .balign 4

glabel D_8012CD8C
/* 02229C 8012CD8C  */  .asciz  "popcorn"
                        .balign 4

glabel D_8012CD94
/* 0222A4 8012CD94  */  .asciz  "Popped corn\n^d\"It sure smells delicious.\n^6PIKACHU^d would love to ^4eat it^d!\"^^"
                        .balign 4

glabel D_8012CDE8
/* 0222F8 8012CDE8  */  .asciz  "pumpkin"
                        .balign 4

glabel D_8012CDF0
/* 022300 8012CDF0  */  .asciz  "pumpkin"
                        .balign 4

glabel D_8012CDF8
/* 022308 8012CDF8  */  .asciz  "A hard, heavy vegetable\n^d\"You have them on Halloween,\n^dbut some people eat them!\"^^"
                        .balign 4

glabel D_8012CE50
/* 022360 8012CE50  */  .asciz  "turnip"
                        .balign 4

glabel D_8012CE58
/* 022368 8012CE58  */  .asciz  "turnip"
                        .balign 4

glabel D_8012CE60
/* 022370 8012CE60  */  .asciz  "A member of the radish family\n^d\"This is a cooking ingredient.\n^dIt tastes great when boiled.\"^^"
                        .balign 4

glabel D_8012CEC4
/* 0223D4 8012CEC4  */  .asciz  "cabbage"
                        .balign 4

glabel D_8012CECC
/* 0223DC 8012CECC  */  .asciz  "cabbage"
                        .balign 4

glabel D_8012CED4
/* 0223E4 8012CED4  */  .asciz  "A green vegetable\n^d\"This is often cooked\n^dwith other vegetables.\"^^"
                        .balign 4

glabel D_8012CF1C
/* 02242C 8012CF1C  */  .asciz  "carrot"
                        .balign 4

glabel D_8012CF24
/* 022434 8012CF24  */  .asciz  "carrot"
                        .balign 4

glabel D_8012CF2C
/* 02243C 8012CF2C  */  .asciz  "A long, orange vegetable\n^d\"^4Carrot^ds are full of vitamins.\n^6PIKACHU^d loves to eat them.\"^^"
                        .balign 4

glabel D_8012CF8C
/* 02249C 8012CF8C  */  .asciz  "onion"
                        .balign 4

glabel D_8012CF94
/* 0224A4 8012CF94  */  .asciz  "onion"
                        .balign 4

glabel D_8012CF9C
/* 0224AC 8012CF9C  */  .asciz  "A strong-tasting vegetable\n^d\"It's often used in stews.\n^4How's it smell^d?\"^^"
                        .balign 4

glabel D_8012CFEC
/* 0224FC 8012CFEC  */  .asciz  "sweet potato"
                        .balign 4

glabel D_8012CFFC
/* 02250C 8012CFFC  */  .asciz  "sweet potato"
                        .balign 4

glabel D_8012D00C
/* 02251C 8012D00C  */  .asciz  "A sweet, purple potato\n^d\"It tastes best after being\n^dbaked with ^4Thunderbolt^d.\"^^"
                        .balign 4

glabel D_8012D064
/* 022574 8012D064  */  .asciz  "sweet potato"
                        .balign 4

glabel D_8012D074
/* 022584 8012D074  */  .asciz  "hot sweet potato"
                        .balign 4

glabel D_8012D088
/* 022598 8012D088  */  .asciz  "A cooked sweet potato\n^d\"Tell ^6PIKACHU^d to ^4taste it^d.\"^^\n"
                        .balign 4

glabel D_8012D0C8
/* 0225D8 8012D0C8  */  .asciz  "smelly fruit"
                        .balign 4

glabel D_8012D0D8
/* 0225E8 8012D0D8  */  .asciz  "smelly fruit"
                        .balign 4

glabel D_8012D0E8
/* 0225F8 8012D0E8  */  .asciz  "A strange, ^4smelly fruit^^\n^d\"I bet ^6PIKACHU^d would hate\n^dsomething this smelly.\"^^"
                        .balign 4

glabel D_8012D140
/* 022650 8012D140  */  .asciz  "sticky fruit"
                        .balign 4

glabel D_8012D150
/* 022660 8012D150  */  .asciz  "sticky fruit"
                        .balign 4

glabel D_8012D160
/* 022670 8012D160  */  .asciz  "Cooked ^4smelly fruit^^\n^d\"It still smells, and it's sticky\n^dtoo. It needs more cooking.\"^^"
                        .balign 4

glabel D_8012D1C0
/* 0226D0 8012D1C0  */  .asciz  "roasted fruit"
                        .balign 4

glabel D_8012D1D0
/* 0226E0 8012D1D0  */  .asciz  "roasted fruit"
                        .balign 4

glabel D_8012D1E0
/* 0226F0 8012D1E0  */  .asciz  "Cooked ^4sticky fruit^^\n^d\"It still smells bad, but it\n^dtastes great. How strange.\"^^"
                        .balign 4

glabel D_8012D238
/* 022748 8012D238  */  .asciz  "walnut"
                        .balign 4

glabel D_8012D240
/* 022750 8012D240  */  .asciz  "walnut"
                        .balign 4

glabel D_8012D248
/* 022758 8012D248  */  .asciz  "A hard-shelled nut\n^d\"^4Throw it^d to crack its shell.\"^^\n"
                        .balign 4

glabel D_8012D284
/* 022794 8012D284  */  .asciz  "walnut"
                        .balign 4

glabel D_8012D28C
/* 02279C 8012D28C  */  .asciz  "cracked walnut"
                        .balign 4

glabel D_8012D29C
/* 0227AC 8012D29C  */  .asciz  "A nutritious nut\n^d\"It's tasty, and it's\n^doften added to sweets.\"^^"
                        .balign 4

glabel D_8012D2E4
/* 0227F4 8012D2E4  */  .asciz  "spiky shell"
                        .balign 4

glabel D_8012D2F0
/* 022800 8012D2F0  */  .asciz  "spiky shell"
                        .balign 4

glabel D_8012D2FC
/* 02280C 8012D2FC  */  .asciz  "The ^4spiky shell^^ of a nut\n^d\"Some people eat these after\n^dremoving the shell.\"^^"
                        .balign 4

glabel D_8012D354
/* 022864 8012D354  */  .asciz  "spiny shell"
                        .balign 4

glabel D_8012D360
/* 022870 8012D360  */  .asciz  "spiny shell"
                        .balign 4

glabel D_8012D36C
/* 02287C 8012D36C  */  .asciz  "A strange, ^4spiny shell^^\n^d\"For some reason, these are\n^dscattered along the beach.\"^^"
                        .balign 4

glabel D_8012D3C8
/* 0228D8 8012D3C8  */  .asciz  "chestnut"
                        .balign 4

glabel D_8012D3D4
/* 0228E4 8012D3D4  */  .asciz  "chestnut"
                        .balign 4

glabel D_8012D3E0
/* 0228F0 8012D3E0  */  .asciz  "A tasty, sweet nut\n^d\"Mix this with ^4roasted fruit^^\n^dfor a really tasty treat.\"^^"
                        .balign 4

glabel D_8012D438
/* 022948 8012D438  */  .asciz  "chestnut"
                        .balign 4

glabel D_8012D444
/* 022954 8012D444  */  .asciz  "beach nut"
                        .balign 4

glabel D_8012D450
/* 022960 8012D450  */  .asciz  "A nut found on the beach\n^d\"A ^4beach nut^d?\n^dIs that right?\"^^"
                        .balign 4

glabel D_8012D494
/* 0229A4 8012D494  */  .asciz  "coconut"
                        .balign 4

glabel D_8012D49C
/* 0229AC 8012D49C  */  .asciz  "coconut"
                        .balign 4

glabel D_8012D4A4
/* 0229B4 8012D4A4  */  .asciz  "A large, hard-shelled fruit\n^d\"When I think of the tropics,\n^dI think ^4coconut^ds.\"^^"
                        .balign 4

glabel D_8012D4FC
/* 022A0C 8012D4FC  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D504
/* 022A14 8012D504  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D50C
/* 022A1C 8012D50C  */  .asciz  "The nut of an oak tree\n^d\"This looks like just a\n^dplain old ^4acorn^d.\"^^"
                        .balign 4

glabel D_8012D558
/* 022A68 8012D558  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D560
/* 022A70 8012D560  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D568
/* 022A78 8012D568  */  .asciz  "The nut of an oak tree\n^d\"It will taste good after\n^dbaking it with ^4Thunderbolt^d.\"^^"
                        .balign 4

glabel D_8012D5C0
/* 022AD0 8012D5C0  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D5C8
/* 022AD8 8012D5C8  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D5D0
/* 022AE0 8012D5D0  */  .asciz  "The nut of an oak tree\n^d\"It has sleeping powder on it.\n^dTell ^6PIKACHU^d to ^4drop it^d.\"^^"
                        .balign 4

glabel D_8012D630
/* 022B40 8012D630  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D638
/* 022B48 8012D638  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D640
/* 022B50 8012D640  */  .asciz  "The nut of an oak tree\n^d\"It will taste good after\n^dcooking it with ^4Thundershock^d.\"^^"
                        .balign 4

glabel D_8012D69C
/* 022BAC 8012D69C  */  .asciz  "acorn"
                        .balign 4

glabel D_8012D6A4
/* 022BB4 8012D6A4  */  .asciz  "toasted acorn"
                        .balign 4

glabel D_8012D6B4
/* 022BC4 8012D6B4  */  .asciz  "A cooked ^4acorn^^\n^d\"It smells bad but tastes\n^dgreat. Use it to make treats.\"^^"
                        .balign 4

glabel D_8012D708
/* 022C18 8012D708  */  .asciz  "flying acorn"
                        .balign 4

glabel D_8012D718
/* 022C28 8012D718  */  .asciz  "flying acorn"
                        .balign 4

glabel D_8012D728
/* 022C38 8012D728  */  .asciz  "An ^4acorn^^ with wings on it\n^d\"This flies very well. ^4Throw it\n^dat things hanging in trees.\"^^"
                        .balign 4

glabel D_8012D78C
/* 022C9C 8012D78C  */  .asciz  "acorn top"
                        .balign 4

glabel D_8012D798
/* 022CA8 8012D798  */  .asciz  "acorn top"
                        .balign 4

glabel D_8012D7A4
/* 022CB4 8012D7A4  */  .asciz  "A striped ^4acorn^^\n^d\"This ^4acorn^d spins just like\n^da top.\"^^"
                        .balign 4

glabel D_8012D7E8
/* 022CF8 8012D7E8  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D7F4
/* 022D04 8012D7F4  */  .asciz  "jumbo'shroom"
                        .balign 4

glabel D_8012D804
/* 022D14 8012D804  */  .asciz  "An ^4acorn^^-like ^4mushroom^^\n^d\"It's delicious when cooked\n^dusing ^4Thunderbolt^d.\"^^"
                        .balign 4

glabel D_8012D860
/* 022D70 8012D860  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D86C
/* 022D7C 8012D86C  */  .asciz  "roasted jumbo"
                        .balign 4

glabel D_8012D87C
/* 022D8C 8012D87C  */  .asciz  "A cooked ^4jumbo'shroom^^\n^d\"^6PIKACHU^d should like this\n^ddelicious cooked ^4mushroom^d.\"^^"
                        .balign 4

glabel D_8012D8DC
/* 022DEC 8012D8DC  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D8E8
/* 022DF8 8012D8E8  */  .asciz  "dreamy'shroom"
                        .balign 4

glabel D_8012D8F8
/* 022E08 8012D8F8  */  .asciz  "A light, airy ^4mushroom^^\n^d\"It's filled with sleeping gas.\n^dI wonder... ^4How's it smell^d?\"^^"
                        .balign 4

glabel D_8012D95C
/* 022E6C 8012D95C  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D968
/* 022E78 8012D968  */  .asciz  "truffle top"
                        .balign 4

glabel D_8012D974
/* 022E84 8012D974  */  .asciz  "A small, hard ^4mushroom^^\n^d\"This spins just like a top.\n^4Throw it^d to make it spin.\"^^"
                        .balign 4

glabel D_8012D9D0
/* 022EE0 8012D9D0  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012D9DC
/* 022EEC 8012D9DC  */  .asciz  "blue'shroom"
                        .balign 4

glabel D_8012D9E8
/* 022EF8 8012D9E8  */  .asciz  "A blue-capped ^4mushroom^^\n^d\"This doesn't taste very good.\n^dCook to improve its flavor.\"^^"
                        .balign 4

glabel D_8012DA48
/* 022F58 8012DA48  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DA54
/* 022F64 8012DA54  */  .asciz  "hot'shroom"
                        .balign 4

glabel D_8012DA60
/* 022F70 8012DA60  */  .asciz  "A cooked ^4mushroom^^\n^d\"This tastes great when mixed\n^dwith other ingredients.\"^^"
                        .balign 4

glabel D_8012DAB4
/* 022FC4 8012DAB4  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DAC0
/* 022FD0 8012DAC0  */  .asciz  "red'shroom"
                        .balign 4

glabel D_8012DACC
/* 022FDC 8012DACC  */  .asciz  "A red-capped ^4mushroom^^\n^d\"This strange ^4mushroom^d\n^dexplodes if you try to ^4eat it^d.\"^^"
                        .balign 4

glabel D_8012DB2C
/* 02303C 8012DB2C  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DB38
/* 023048 8012DB38  */  .asciz  "sunny'shroom"
                        .balign 4

glabel D_8012DB48
/* 023058 8012DB48  */  .asciz  "A yellow-capped ^4mushroom^^\n^d\"It's yellow, like the sun.\n^6PIKACHU^d seems to like it.\"^^"
                        .balign 4

glabel D_8012DBA4
/* 0230B4 8012DBA4  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DBB0
/* 0230C0 8012DBB0  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DBBC
/* 0230CC 8012DBBC  */  .asciz  "A plain, white ^4mushroom^^\n^d\"This is just a plain old\n^4mushroom^d.\"^^"
                        .balign 4

glabel D_8012DC08
/* 023118 8012DC08  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC14
/* 023124 8012DC14  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC20
/* 023130 8012DC20  */  .asciz  "A plain, white ^4mushroom^^\n^d\"This ^4mushroom^d smells.\"^^\n"
                        .balign 4

glabel D_8012DC60
/* 023170 8012DC60  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC6C
/* 02317C 8012DC6C  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DC78
/* 023188 8012DC78  */  .asciz  "A plain white ^4mushroom^^\n^d\"This ^4mushroom^d tends to\n^drelease spores.\"^^"
                        .balign 4

glabel D_8012DCC8
/* 0231D8 8012DCC8  */  .asciz  "mushroom"
                        .balign 4

glabel D_8012DCD4
/* 0231E4 8012DCD4  */  .asciz  "hot mushroom"
                        .balign 4

glabel D_8012DCE4
/* 0231F4 8012DCE4  */  .asciz  "A cooked ^4mushroom^^\n^d\"This ^4mushroom^d has a\n^ddelicious rich scent.\"^^"
                        .balign 4

glabel D_8012DD30
/* 023240 8012DD30  */  .asciz  "light bulb"
                        .balign 4

glabel D_8012DD3C
/* 02324C 8012DD3C  */  .asciz  "light bulb"
                        .balign 4

glabel D_8012DD48
/* 023258 8012DD48  */  .asciz  "A strange, electric ^4mushroom^^\n^d\"It lights up when ^6PIKACHU^d\n^dholds it. Illuminating!\"^^"
                        .balign 4

glabel D_8012DDA8
/* 0232B8 8012DDA8  */  .asciz  "cupcake"
                        .balign 4

glabel D_8012DDB0
/* 0232C0 8012DDB0  */  .asciz  "cupcake"
                        .balign 4

glabel D_8012DDB8
/* 0232C8 8012DDB8  */  .asciz  "Mom's homemade treat\n^d\"Your mom made this snack\n^dfor you. It looks delicious.\"^^"
                        .balign 4

glabel D_8012DE0C
/* 02331C 8012DE0C  */  .asciz  "flower"
                        .balign 4

glabel D_8012DE14
/* 023324 8012DE14  */  .asciz  "daisy"
                        .balign 4

glabel D_8012DE1C
/* 02332C 8012DE1C  */  .asciz  "A small, white ^4flower^^\n^d\"It doesn't stand out much,\n^dbut it's a cute flower.\"^^"
                        .balign 4

glabel D_8012DE74
/* 023384 8012DE74  */  .asciz  "flower"
                        .balign 4

glabel D_8012DE7C
/* 02338C 8012DE7C  */  .asciz  "petunia"
                        .balign 4

glabel D_8012DE84
/* 023394 8012DE84  */  .asciz  "A white ^4flower^^\n^d\"What an elegant looking\n^4flower^d.\"^^"
                        .balign 4

glabel D_8012DEC4
/* 0233D4 8012DEC4  */  .asciz  "flower"
                        .balign 4

glabel D_8012DECC
/* 0233DC 8012DECC  */  .asciz  "tulip"
                        .balign 4

glabel D_8012DED4
/* 0233E4 8012DED4  */  .asciz  "A ^4flower^^ grown from a bulb\n^d\"This is a very lovely ^4flower^d.\"^^\n"
                        .balign 4

glabel D_8012DF1C
/* 02342C 8012DF1C  */  .asciz  "flower"
                        .balign 4

glabel D_8012DF24
/* 023434 8012DF24  */  .asciz  "dandelion"
                        .balign 4

glabel D_8012DF30
/* 023440 8012DF30  */  .asciz  "A yellow spring blossom\n^d\"^6PIKACHU^d loves this, since\n^dit's yellow.\"^^"
                        .balign 4

glabel D_8012DF7C
/* 02348C 8012DF7C  */  .asciz  "flower"
                        .balign 4

glabel D_8012DF84
/* 023494 8012DF84  */  .asciz  "bluebell"
                        .balign 4

glabel D_8012DF90
/* 0234A0 8012DF90  */  .asciz  "A bright blue ^4flower^^\n^d\"This is a popular ^4flower^d\n^dfor the garden.\"^^"
                        .balign 4

glabel D_8012DFE0
/* 0234F0 8012DFE0  */  .asciz  "flower"
                        .balign 4

glabel D_8012DFE8
/* 0234F8 8012DFE8  */  .asciz  "skunk blossom"
                        .balign 4

glabel D_8012DFF8
/* 023508 8012DFF8  */  .asciz  "A plant with smelly leaves\n^d\"It smells bad, but you can\n^dactually ^4eat it^d.\"^^"
                        .balign 4

glabel D_8012E04C
/* 02355C 8012E04C  */  .asciz  "flower"
                        .balign 4

glabel D_8012E054
/* 023564 8012E054  */  .asciz  "sunflower"
                        .balign 4

glabel D_8012E060
/* 023570 8012E060  */  .asciz  "A large, yellow summer ^4flower^^\n^d\"It's the same color of\n^dyellow as ^6PIKACHU^d.\"^^"
                        .balign 4

glabel D_8012E0B8
/* 0235C8 8012E0B8  */  .asciz  "flower"
                        .balign 4

glabel D_8012E0C0
/* 0235D0 8012E0C0  */  .asciz  "lily"
                        .balign 4

glabel D_8012E0C8
/* 0235D8 8012E0C8  */  .asciz  "A large, white ^4flower^^\n^d\"I think this one smells nice,\n^dbut I am not quite sure.\"^^"
                        .balign 4

glabel D_8012E124
/* 023634 8012E124  */  .asciz  "flower"
                        .balign 4

glabel D_8012E12C
/* 02363C 8012E12C  */  .asciz  "rosebud"
                        .balign 4

glabel D_8012E134
/* 023644 8012E134  */  .asciz  "A large red ^4flower^^ from a bush\n^d\"Feed it to a hungry\n^4CATERPIE^d.\"^^"
                        .balign 4

glabel D_8012E180
/* 023690 8012E180  */  .asciz  "flower"
                        .balign 4

glabel D_8012E188
/* 023698 8012E188  */  .asciz  "red rose"
                        .balign 4

glabel D_8012E194
/* 0236A4 8012E194  */  .asciz  "A large red ^4flower^^ from a bush\n^d\"Feed the ^4flower^ds to\n^4CATERPIE^d.\"^^"
                        .balign 4

glabel D_8012E1E4
/* 0236F4 8012E1E4  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E1EC
/* 0236FC 8012E1EC  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E1F4
/* 023704 8012E1F4  */  .asciz  "A blue ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E250
/* 023760 8012E250  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E258
/* 023768 8012E258  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E260
/* 023770 8012E260  */  .asciz  "A green ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E2C0
/* 0237D0 8012E2C0  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E2C8
/* 0237D8 8012E2C8  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E2D0
/* 0237E0 8012E2D0  */  .asciz  "A purple ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E330
/* 023840 8012E330  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E338
/* 023848 8012E338  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E340
/* 023850 8012E340  */  .asciz  "A red ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E39C
/* 0238AC 8012E39C  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E3A4
/* 0238B4 8012E3A4  */  .asciz  "balloon"
                        .balign 4

glabel D_8012E3AC
/* 0238BC 8012E3AC  */  .asciz  "A yellow ^4balloon^^\n^d\"This strange ^4balloon^d inflates\n^dwhenever ^6PIKACHU^d holds it.\"^^"
                        .balign 4

glabel D_8012E40C
/* 02391C 8012E40C  */  .asciz  "Pok´disc"
                        .balign 4

glabel D_8012E418
/* 023928 8012E418  */  .asciz  "Pok´disc"
                        .balign 4

glabel D_8012E424
/* 023934 8012E424  */  .asciz  "A disc that's fun to throw\n^d\"It spins and spins as it\n^dflies through the air.\"^^"
                        .balign 4

glabel D_8012E478
/* 023988 8012E478  */  .asciz  "beach ball"
                        .balign 4

glabel D_8012E484
/* 023994 8012E484  */  .asciz  "beach ball"
                        .balign 4

glabel D_8012E490
/* 0239A0 8012E490  */  .asciz  "A colorful, bouncy ball\n^d\"It's fun to ^4throw it^d around.\n^dTry playing catch with it!\"^^"
                        .balign 4

glabel D_8012E4EC
/* 0239FC 8012E4EC  */  .asciz  "watering can"
                        .balign 4

glabel D_8012E4FC
/* 023A0C 8012E4FC  */  .asciz  "watering can"
                        .balign 4

glabel D_8012E50C
/* 023A1C 8012E50C  */  .asciz  "A can for watering plants\n^d\"Give this to ^6PIKACHU^d right\n^daway whenever it wants it.\"^^"
                        .balign 4

glabel D_8012E568
/* 023A78 8012E568  */  .asciz  "watering can"
                        .balign 4

glabel D_8012E578
/* 023A88 8012E578  */  .asciz  "watering jug"
                        .balign 4

glabel D_8012E588
/* 023A98 8012E588  */  .asciz  "A jug that holds a lot of water\n^d\"With this, your water should\n^dlast you longer.\"^^"
                        .balign 4

glabel D_8012E5E0
/* 023AF0 8012E5E0  */  .asciz  "yellow ball"
                        .balign 4

glabel D_8012E5EC
/* 023AFC 8012E5EC  */  .asciz  "yellow ball"
                        .balign 4

glabel D_8012E5F8
/* 023B08 8012E5F8  */  .asciz  "A yellow ball of unknown origin\n^d\"What on earth is this?\"^^\n"
                        .balign 4

glabel D_8012E638
/* 023B48 8012E638  */  .asciz  "charcoal"
                        .balign 4

glabel D_8012E644
/* 023B54 8012E644  */  .asciz  "charcoal"
                        .balign 4

glabel D_8012E650
/* 023B60 8012E650  */  .asciz  "Burnt ashes\n^d\"It's the burnt remains of\n^dsome item. It's just garbage.\"^^"
                        .balign 4

glabel D_8012E69C
/* 023BAC 8012E69C  */  .asciz  "leaf"
                        .balign 4

glabel D_8012E6A4
/* 023BB4 8012E6A4  */  .asciz  "leaf"
                        .balign 4

glabel D_8012E6AC
/* 023BBC 8012E6AC  */  .asciz  "A fallen, wilted leaf\n^d\"It's just a plain, wilted leaf.\"^^\n"
                        .balign 4

glabel D_8012E6EC
/* 023BFC 8012E6EC  */  .asciz  "leaf"
                        .balign 4

glabel D_8012E6F4
/* 023C04 8012E6F4  */  .asciz  "leaf whistle"
                        .balign 4

glabel D_8012E704
/* 023C14 8012E704  */  .asciz  "A whistle made from a ^4leaf^^\n^d\"I wonder how you ^4play it^d.\"^^\n"
                        .balign 4

glabel D_8012E748
/* 023C58 8012E748  */  .asciz  "harmonica"
                        .balign 4

glabel D_8012E754
/* 023C64 8012E754  */  .asciz  "harmonica"
                        .balign 4

glabel D_8012E760
/* 023C70 8012E760  */  .asciz  "A musical instrument\n^d\"I wonder if ^6PIKACHU^d can\n^4play it^d for you.\"^^"
                        .balign 4

glabel D_8012E7AC
/* 023CBC 8012E7AC  */  .asciz  "trumpet"
                        .balign 4

glabel D_8012E7B4
/* 023CC4 8012E7B4  */  .asciz  "trumpet"
                        .balign 4

glabel D_8012E7BC
/* 023CCC 8012E7BC  */  .asciz  "A loud, brass instrument\n^d\"This makes a pretty loud\n^dnoise.\"^^"
                        .balign 4

glabel D_8012E800
/* 023D10 8012E800  */  .asciz  "tissue"
                        .balign 4

glabel D_8012E808
/* 023D18 8012E808  */  .asciz  "tissue"
                        .balign 4

glabel D_8012E810
/* 023D20 8012E810  */  .asciz  "Thin, light paper\n^d\"Be sure to ^4clean it up^d after\n^dscattering it about.\"^^"
                        .balign 4

glabel D_8012E860
/* 023D70 8012E860  */  .asciz  "banana peel"
                        .balign 4

glabel D_8012E86C
/* 023D7C 8012E86C  */  .asciz  "banana peel"
                        .balign 4

glabel D_8012E878
/* 023D88 8012E878  */  .asciz  "The skin of a ^4banana^^\n^d\"^6PIKACHU^d can slip on this, so\n^dbe careful where you leave it.\"^^"
                        .balign 4

glabel D_8012E8DC
/* 023DEC 8012E8DC  */  .asciz  "pi￣ata"
                        .balign 4

glabel D_8012E8E4
/* 023DF4 8012E8E4  */  .asciz  "pi￣ata"
                        .balign 4

glabel D_8012E8EC
/* 023DFC 8012E8EC  */  .asciz  "A decorated container\n^d\"If you break it, ^6PIKACHU^d\n^dfinds ^4treasure^d inside.\"^^"
                        .balign 4

glabel D_8012E944
/* 023E54 8012E944  */  .asciz  "pi￣ata"
                        .balign 4

glabel D_8012E94C
/* 023E5C 8012E94C  */  .asciz  "cracked pi￣ata"
                        .balign 4

glabel D_8012E95C
/* 023E6C 8012E95C  */  .asciz  "A ^4pi￣ata^^ that's been broken\n^d\"It looks like a lot of stuff\n^dcame out. Did you get any?\"^^"
                        .balign 4

glabel D_8012E9C0
/* 023ED0 8012E9C0  */  .asciz  "cap"
                        .balign 4

glabel D_8012E9C4
/* 023ED4 8012E9C4  */  .asciz  "baseball cap"
                        .balign 4

glabel D_8012E9D4
/* 023EE4 8012E9D4  */  .asciz  "A replica of a trainer's cap\n^d\"This is the trademark of a\n^dtrainer. It's pretty stylish.\"^^"
                        .balign 4

glabel D_8012EA34
/* 023F44 8012EA34  */  .asciz  "megaphone"
                        .balign 4

glabel D_8012EA40
/* 023F50 8012EA40  */  .asciz  "megaphone"
                        .balign 4

glabel D_8012EA4C
/* 023F5C 8012EA4C  */  .asciz  "The very first Pok´Helper\n^d\"I used this to talk to Pok´mon\n^dbefore I had the Pok´Helper.\"^^"
                        .balign 4

glabel D_8012EAB0
/* 023FC0 8012EAB0  */  .asciz  "hook"
                        .balign 4

glabel D_8012EAB8
/* 023FC8 8012EAB8  */  .asciz  "fishing hook"
                        .balign 4

glabel D_8012EAC8
/* 023FD8 8012EAC8  */  .asciz  "An item for catching Pok´mon\n^d\"This is a safety hook that\n^dwon't hurt Pok´mon.\"^^"
                        .balign 4

glabel D_8012EB20
/* 024030 8012EB20  */  .asciz  "hook"
                        .balign 4

glabel D_8012EB28
/* 024038 8012EB28  */  .asciz  "lucky hook"
                        .balign 4

glabel D_8012EB34
/* 024044 8012EB34  */  .asciz  "A better fishing hook\n^d\"You can catch a wider variety\n^dof Pok´mon with this hook.\"^^"
                        .balign 4

glabel D_8012EB8C
/* 02409C 8012EB8C  */  .asciz  "flag"
                        .balign 4

glabel D_8012EB94
/* 0240A4 8012EB94  */  .asciz  "fishing flag"
                        .balign 4

glabel D_8012EBA4
/* 0240B4 8012EBA4  */  .asciz  "A prize for catching Pok´mon\n^d\"That's from\n^dCobalt Fishing Hole.\"^^"
                        .balign 4

glabel D_8012EBEC
/* 0240FC 8012EBEC  */  .asciz  "flag"
                        .balign 4

glabel D_8012EBF4
/* 024104 8012EBF4  */  .asciz  "fishing flag"
                        .balign 4

glabel D_8012EC04
/* 024114 8012EC04  */  .asciz  "A prize for catching Pok´mon\n^d\"That's from\n^dOchre Fishing Hole.\"^^"
                        .balign 4

glabel D_8012EC4C
/* 02415C 8012EC4C  */  .asciz  "flag"
                        .balign 4

glabel D_8012EC54
/* 024164 8012EC54  */  .asciz  "fishing flag"
                        .balign 4

glabel D_8012EC64
/* 024174 8012EC64  */  .asciz  "A prize for catching Pok´mon\n^d\"That's from\n^dOlivine Fishing Hole.\"^^"
                        .balign 4

glabel D_8012ECAC
/* 0241BC 8012ECAC  */  .asciz  "flag"
                        .balign 4

glabel D_8012ECB4
/* 0241C4 8012ECB4  */  .asciz  "pirate flag"
                        .balign 4

glabel D_8012ECC0
/* 0241D0 8012ECC0  */  .asciz  "Symbol of a pirate ship\n^d\"That's a prize from the\n^4pi￣ata^d party.\"^^"
                        .balign 4

glabel D_8012ED0C
/* 02421C 8012ED0C  */  .asciz  "coin"
                        .balign 4

glabel D_8012ED14
/* 024224 8012ED14  */  .asciz  "gold coin"
                        .balign 4

glabel D_8012ED20
/* 024230 8012ED20  */  .asciz  "A coin made of gold\n^d\"Look at it glitter. It's\n^dbeautiful. I want one too!\"^^"
                        .balign 4

glabel D_8012ED70
/* 024280 8012ED70  */  .asciz  "coin"
                        .balign 4

glabel D_8012ED78
/* 024288 8012ED78  */  .asciz  "chocolate coin"
                        .balign 4

glabel D_8012ED88
/* 024298 8012ED88  */  .asciz  "A coin made of chocolate\n^d\"Don't mistake it for a\n^4gold coin^d!\"^^"
                        .balign 4

glabel D_8012EDD0
/* 0242E0 8012EDD0  */  .asciz  "coin"
                        .balign 4

glabel D_8012EDD8
/* 0242E8 8012EDD8  */  .asciz  "silver coin"
                        .balign 4

glabel D_8012EDE4
/* 0242F4 8012EDE4  */  .asciz  "A coin made of silver\n^d\"It's worth about @Y@Z100.\"^^\n"
                        .balign 4

glabel D_8012EE1C
/* 02432C 8012EE1C  */  .asciz  "coin"
                        .balign 4

glabel D_8012EE24
/* 024334 8012EE24  */  .asciz  "copper coin"
                        .balign 4

glabel D_8012EE30
/* 024340 8012EE30  */  .asciz  "A coin made of copper\n^d\"It's worth about @Y@Z10.\"^^\n"
                        .balign 4

glabel D_8012EE68
/* 024378 8012EE68  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EE70
/* 024380 8012EE70  */  .asciz  "ruby"
                        .balign 4

glabel D_8012EE78
/* 024388 8012EE78  */  .asciz  "A hard red gem\n^d\"You can see through it.\n^dIsn't it beautiful?\"^^"
                        .balign 4

glabel D_8012EEBC
/* 0243CC 8012EEBC  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EEC4
/* 0243D4 8012EEC4  */  .asciz  "sapphire"
                        .balign 4

glabel D_8012EED0
/* 0243E0 8012EED0  */  .asciz  "A hard, clear blue gem\n^d\"That's an amazing color\n^dof blue.\"^^"
                        .balign 4

glabel D_8012EF10
/* 024420 8012EF10  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EF18
/* 024428 8012EF18  */  .asciz  "topaz"
                        .balign 4

glabel D_8012EF20
/* 024430 8012EF20  */  .asciz  "A delicate yellow gem\n^d\"It's a very valuable gem\n^dthat's really hard to come by.\"^^"
                        .balign 4

glabel D_8012EF78
/* 024488 8012EF78  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EF80
/* 024490 8012EF80  */  .asciz  "red marble"
                        .balign 4

glabel D_8012EF8C
/* 02449C 8012EF8C  */  .asciz  "A red ball of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012EFE0
/* 0244F0 8012EFE0  */  .asciz  "jewel"
                        .balign 4

glabel D_8012EFE8
/* 0244F8 8012EFE8  */  .asciz  "blue marble"
                        .balign 4

glabel D_8012EFF4
/* 024504 8012EFF4  */  .asciz  "A blue ball of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012F04C
/* 02455C 8012F04C  */  .asciz  "jewel"
                        .balign 4

glabel D_8012F054
/* 024564 8012F054  */  .asciz  "yellow marble"
                        .balign 4

glabel D_8012F064
/* 024574 8012F064  */  .asciz  "A yellow ball of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012F0BC
/* 0245CC 8012F0BC  */  .asciz  "ring"
                        .balign 4

glabel D_8012F0C4
/* 0245D4 8012F0C4  */  .asciz  "ruby ring"
                        .balign 4

glabel D_8012F0D0
/* 0245E0 8012F0D0  */  .asciz  "A ring with a gem on it\n^d\"A symbol of a couple's\n^deverlasting love.\"^^"
                        .balign 4

glabel D_8012F11C
/* 02462C 8012F11C  */  .asciz  "ring"
                        .balign 4

glabel D_8012F124
/* 024634 8012F124  */  .asciz  "bottle cap ring"
                        .balign 4

glabel D_8012F134
/* 024644 8012F134  */  .asciz  "The seal from a plastic bottle\n^d\"Don't litter.\"^^\n"
                        .balign 4

glabel D_8012F168
/* 024678 8012F168  */  .asciz  "sword"
                        .balign 4

glabel D_8012F170
/* 024680 8012F170  */  .asciz  "pirate sword"
                        .balign 4

glabel D_8012F180
/* 024690 8012F180  */  .asciz  "A sword once used by pirates\n^d\"That's from the pirates'\n^dplunder on Cobalt Island.\"^^"
                        .balign 4

glabel D_8012F1D8
/* 0246E8 8012F1D8  */  .asciz  "sword"
                        .balign 4

glabel D_8012F1E0
/* 0246F0 8012F1E0  */  .asciz  "toy sword"
                        .balign 4

glabel D_8012F1EC
/* 0246FC 8012F1EC  */  .asciz  "A ^4toy sword^^ made of wood\n^d\"En garde! I used to play with\n^d^4toy sword^ds when I was little.\"^^"
                        .balign 4

glabel D_8012F254
/* 024764 8012F254  */  .asciz  "feather"
                        .balign 4

glabel D_8012F25C
/* 02476C 8012F25C  */  .asciz  "bird feather"
                        .balign 4

glabel D_8012F26C
/* 02477C 8012F26C  */  .asciz  "A feather from a Pok´mon\n^d\"This light feather should fly\n^dpretty well.\"^^"
                        .balign 4

glabel D_8012F2BC
/* 0247CC 8012F2BC  */  .asciz  "bolt"
                        .balign 4

glabel D_8012F2C4
/* 0247D4 8012F2C4  */  .asciz  "bolt"
                        .balign 4

glabel D_8012F2CC
/* 0247DC 8012F2CC  */  .asciz  "An item used to fasten things\n^d\"That's just junk.\"^^\n"
                        .balign 4

glabel D_8012F304
/* 024814 8012F304  */  .asciz  "magnet"
                        .balign 4

glabel D_8012F30C
/* 02481C 8012F30C  */  .asciz  "magnet"
                        .balign 4

glabel D_8012F314
/* 024824 8012F314  */  .asciz  "A magnetic piece of metal\n^d\"It's a pretty cool shape, but\n^dit's just junk.\"^^"
                        .balign 4

glabel D_8012F364
/* 024874 8012F364  */  .asciz  "marble"
                        .balign 4

glabel D_8012F36C
/* 02487C 8012F36C  */  .asciz  "marble"
                        .balign 4

glabel D_8012F374
/* 024884 8012F374  */  .asciz  "A ball made of glass\n^d\"I used to play with ^4marble^ds,\n^dtoo, when I was a kid.\"^^"
                        .balign 4

glabel D_8012F3CC
/* 0248DC 8012F3CC  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3D4
/* 0248E4 8012F3D4  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3DC
/* 0248EC 8012F3DC  */  .asciz  "Tasty stew\n"
                        .balign 4

glabel D_8012F3E8
/* 0248F8 8012F3E8  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3F0
/* 024900 8012F3F0  */  .asciz  "stew"
                        .balign 4

glabel D_8012F3F8
/* 024908 8012F3F8  */  .asciz  "A typical plate of stew\n"
                        .balign 4

glabel D_8012F414
/* 024924 8012F414  */  .asciz  "stew"
                        .balign 4

glabel D_8012F41C
/* 02492C 8012F41C  */  .asciz  "weird stew"
                        .balign 4

glabel D_8012F428
/* 024938 8012F428  */  .asciz  "Weird tasting stew\n"
                        .balign 4

glabel D_8012F43C
/* 02494C 8012F43C  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F448
/* 024958 8012F448  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F454
/* 024964 8012F454  */  .asciz  "Tasty fried vegetables\n"
                        .balign 4

glabel D_8012F46C
/* 02497C 8012F46C  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F478
/* 024988 8012F478  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F484
/* 024994 8012F484  */  .asciz  "A typical plate of stir-fry\n"
                        .balign 4

glabel D_8012F4A4
/* 0249B4 8012F4A4  */  .asciz  "stir-fry"
                        .balign 4

glabel D_8012F4B0
/* 0249C0 8012F4B0  */  .asciz  "weird stir-fry"
                        .balign 4

glabel D_8012F4C0
/* 0249D0 8012F4C0  */  .asciz  "Weird tasting stir-fry\n"
                        .balign 4

glabel D_8012F4D8
/* 0249E8 8012F4D8  */  .asciz  "soup"
                        .balign 4

glabel D_8012F4E0
/* 0249F0 8012F4E0  */  .asciz  "soup"
                        .balign 4

glabel D_8012F4E8
/* 0249F8 8012F4E8  */  .asciz  "Tasty soup\n"
                        .balign 4

glabel D_8012F4F4
/* 024A04 8012F4F4  */  .asciz  "soup"
                        .balign 4

glabel D_8012F4FC
/* 024A0C 8012F4FC  */  .asciz  "soup"
                        .balign 4

glabel D_8012F504
/* 024A14 8012F504  */  .asciz  "A typical bowl of soup\n"
                        .balign 4

glabel D_8012F51C
/* 024A2C 8012F51C  */  .asciz  "soup"
                        .balign 4

glabel D_8012F524
/* 024A34 8012F524  */  .asciz  "weird soup"
                        .balign 4

glabel D_8012F530
/* 024A40 8012F530  */  .asciz  "Weird tasting soup\n"
                        .balign 4

glabel D_8012F544
/* 024A54 8012F544  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F54C
/* 024A5C 8012F54C  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F554
/* 024A64 8012F554  */  .asciz  "Tasty goulash\n"
                        .balign 4

glabel D_8012F564
/* 024A74 8012F564  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F56C
/* 024A7C 8012F56C  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F574
/* 024A84 8012F574  */  .asciz  "Average tasting goulash\n"
                        .balign 4

glabel D_8012F590
/* 024AA0 8012F590  */  .asciz  "goulash"
                        .balign 4

glabel D_8012F598
/* 024AA8 8012F598  */  .asciz  "weird goulash"
                        .balign 4

glabel D_8012F5A8
/* 024AB8 8012F5A8  */  .asciz  "Weird tasting goulash\n"
                        .balign 4

glabel D_8012F5C0
/* 024AD0 8012F5C0  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5C8
/* 024AD8 8012F5C8  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5D0
/* 024AE0 8012F5D0  */  .asciz  "A tasty cookie\n"
                        .balign 4

glabel D_8012F5E0
/* 024AF0 8012F5E0  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5E8
/* 024AF8 8012F5E8  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F5F0
/* 024B00 8012F5F0  */  .asciz  "An average tasting cookie\n"
                        .balign 4

glabel D_8012F60C
/* 024B1C 8012F60C  */  .asciz  "cookie"
                        .balign 4

glabel D_8012F614
/* 024B24 8012F614  */  .asciz  "weird cookie"
                        .balign 4

glabel D_8012F624
/* 024B34 8012F624  */  .asciz  "A weird tasting cookie\n"
                        .balign 4

glabel D_8012F63C
/* 024B4C 8012F63C  */  .asciz  "mystery soup"
                        .balign 4

glabel D_8012F64C
/* 024B5C 8012F64C  */  .asciz  "mystery soup"
                        .balign 4

glabel D_8012F65C
/* 024B6C 8012F65C  */  .asciz  "^4BULBASAUR^^'s special recipe\n"
                        .balign 4

glabel D_8012F67C
/* 024B8C 8012F67C  */  .asciz  "ODDISH"
                        .balign 4

glabel D_8012F684
/* 024B94 8012F684  */  .asciz  "May grow when\nsprinkled with water."
                        .balign 4

glabel D_8012F6A8
/* 024BB8 8012F6A8  */  .asciz  "strange radish"
                        .balign 4

glabel D_8012F6B8
/* 024BC8 8012F6B8  */  .asciz  "An odd radish\n^d\"It looks like ^4ODDISH^d, but it's\n^dactually a plant.\"^^"
                        .balign 4

glabel D_8012F704
/* 024C14 8012F704  */  .asciz  "GLOOM"
                        .balign 4

glabel D_8012F70C
/* 024C1C 8012F70C  */  .asciz  "May grow when\nsprinkled with water."
                        .balign 4

glabel D_8012F730
/* 024C40 8012F730  */  .asciz  "smelly radish"
                        .balign 4

glabel D_8012F740
/* 024C50 8012F740  */  .asciz  "A radish that looks like ^4GLOOM^^\n^d\"It looks like ^4GLOOM^d, but it's\n^da completely different plant.\"^^"
                        .balign 4

glabel D_8012F7AC
/* 024CBC 8012F7AC  */  .asciz  "crate"
                        .balign 4

glabel D_8012F7B4
/* 024CC4 8012F7B4  */  .asciz  "crate"
                        .balign 4

glabel D_8012F7BC
/* 024CCC 8012F7BC  */  .asciz  "A wooden box\n^d\"An 'A' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F810
/* 024D20 8012F810  */  .asciz  "crate"
                        .balign 4

glabel D_8012F818
/* 024D28 8012F818  */  .asciz  "crate"
                        .balign 4

glabel D_8012F820
/* 024D30 8012F820  */  .asciz  "A wooden box\n^d\"A 'B' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F874
/* 024D84 8012F874  */  .asciz  "crate"
                        .balign 4

glabel D_8012F87C
/* 024D8C 8012F87C  */  .asciz  "crate"
                        .balign 4

glabel D_8012F884
/* 024D94 8012F884  */  .asciz  "A wooden box\n^d\"A 'C' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F8D8
/* 024DE8 8012F8D8  */  .asciz  "crate"
                        .balign 4

glabel D_8012F8E0
/* 024DF0 8012F8E0  */  .asciz  "crate"
                        .balign 4

glabel D_8012F8E8
/* 024DF8 8012F8E8  */  .asciz  "A wooden box\n^d\"A 'D' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F93C
/* 024E4C 8012F93C  */  .asciz  "crate"
                        .balign 4

glabel D_8012F944
/* 024E54 8012F944  */  .asciz  "crate"
                        .balign 4

glabel D_8012F94C
/* 024E5C 8012F94C  */  .asciz  "A wooden box\n^d\"An 'E' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012F9A0
/* 024EB0 8012F9A0  */  .asciz  "crate"
                        .balign 4

glabel D_8012F9A8
/* 024EB8 8012F9A8  */  .asciz  "crate"
                        .balign 4

glabel D_8012F9B0
/* 024EC0 8012F9B0  */  .asciz  "A wooden box\n^d\"An 'F' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FA04
/* 024F14 8012FA04  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA0C
/* 024F1C 8012FA0C  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA14
/* 024F24 8012FA14  */  .asciz  "A wooden box\n^d\"A 'G' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FA68
/* 024F78 8012FA68  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA70
/* 024F80 8012FA70  */  .asciz  "crate"
                        .balign 4

glabel D_8012FA78
/* 024F88 8012FA78  */  .asciz  "A wooden box\n^d\"An 'H' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FACC
/* 024FDC 8012FACC  */  .asciz  "crate"
                        .balign 4

glabel D_8012FAD4
/* 024FE4 8012FAD4  */  .asciz  "crate"
                        .balign 4

glabel D_8012FADC
/* 024FEC 8012FADC  */  .asciz  "A wooden box\n^d\"An 'I' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FB30
/* 025040 8012FB30  */  .asciz  "crate"
                        .balign 4

glabel D_8012FB38
/* 025048 8012FB38  */  .asciz  "crate"
                        .balign 4

glabel D_8012FB40
/* 025050 8012FB40  */  .asciz  "A wooden box\n^d\"A 'J' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FB94
/* 0250A4 8012FB94  */  .asciz  "crate"
                        .balign 4

glabel D_8012FB9C
/* 0250AC 8012FB9C  */  .asciz  "crate"
                        .balign 4

glabel D_8012FBA4
/* 0250B4 8012FBA4  */  .asciz  "A wooden box\n^d\"A 'K' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FBF8
/* 025108 8012FBF8  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC00
/* 025110 8012FC00  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC08
/* 025118 8012FC08  */  .asciz  "A wooden box\n^d\"An 'L' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FC5C
/* 02516C 8012FC5C  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC64
/* 025174 8012FC64  */  .asciz  "crate"
                        .balign 4

glabel D_8012FC6C
/* 02517C 8012FC6C  */  .asciz  "A wooden box\n^d\"An 'M' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FCC0
/* 0251D0 8012FCC0  */  .asciz  "crate"
                        .balign 4

glabel D_8012FCC8
/* 0251D8 8012FCC8  */  .asciz  "crate"
                        .balign 4

glabel D_8012FCD0
/* 0251E0 8012FCD0  */  .asciz  "A wooden box\n^d\"A 'Z' is carved on the lid.\n^dI wonder if anything is inside.\"^^"
                        .balign 4

glabel D_8012FD24
/* 025234 8012FD24  */  .asciz  "box"
                        .balign 4

glabel D_8012FD28
/* 025238 8012FD28  */  .asciz  "cardboard box"
                        .balign 4

glabel D_8012FD38
/* 025248 8012FD38  */  .asciz  "A box made of cardboard\n^d\"^6PIKACHU^d won't notice you if\n^dyou hide inside this box.\"^^"
                        .balign 4

glabel D_8012FD94
/* 0252A4 8012FD94  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FDA0
/* 0252B0 8012FDA0  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FDAC
/* 0252BC 8012FDAC  */  .asciz  "A pad for drawing pictures\n^d\"^6PIKACHU^d draws pictures\n^din this.\"^^"
                        .balign 4

glabel D_8012FDF4
/* 025304 8012FDF4  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FE00
/* 025310 8012FE00  */  .asciz  "notebook"
                        .balign 4

glabel D_8012FE0C
/* 02531C 8012FE0C  */  .asciz  "A pad for drawing pictures\n^d\"^6PIKACHU^d draws pictures\n^din this.\"^^"
                        .balign 4

glabel D_8012FE54
/* 025364 8012FE54  */  .asciz  "controller"
                        .balign 4

glabel D_8012FE60
/* 025370 8012FE60  */  .asciz  "N64 controller"
                        .balign 4

glabel D_8012FE70
/* 025380 8012FE70  */  .asciz  "The Controller for your N64\n^d\"That's what you use to play\n^dgames on your Nintendo 64.\"^^"
                        .balign 4

glabel D_8012FECC
/* 0253DC 8012FECC  */  .asciz  "TV"
                        .balign 4

glabel D_8012FED0
/* 0253E0 8012FED0  */  .asciz  "TV"
                        .balign 4

glabel D_8012FED4
/* 0253E4 8012FED4  */  .asciz  "A device that displays images\n^d\"^6PIKACHU^d turns it on for\n^4Quiz Time^d.\"^^"
                        .balign 4

glabel D_8012FF24
/* 025434 8012FF24  */  .asciz  "telescope"
                        .balign 4

glabel D_8012FF30
/* 025440 8012FF30  */  .asciz  "telescope"
                        .balign 4

glabel D_8012FF3C
/* 02544C 8012FF3C  */  .asciz  "A lens for viewing the stars\n^d\"That's the ^4telescope^d ^6PIKACHU^d\n^dbought for you.\"^^"
                        .balign 4

glabel D_8012FF98
/* 0254A8 8012FF98  */  .asciz  "board"
                        .balign 4

glabel D_8012FFA0
/* 0254B0 8012FFA0  */  .asciz  "board"
                        .balign 4

glabel D_8012FFA8
/* 0254B8 8012FFA8  */  .asciz  "A board for pasting textures\n"
                        .balign 4

glabel D_8012FFC8
/* 0254D8 8012FFC8  */  .asciz  "signpost"
                        .balign 4

glabel D_8012FFD4
/* 0254E4 8012FFD4  */  .asciz  "signpost"
                        .balign 4

glabel D_8012FFE0
/* 0254F0 8012FFE0  */  .asciz  "A board with words on it\n^d\"It seems to be designed to\n^dreact to special actions.\"^^"
                        .balign 4

glabel D_80130038
/* 025548 80130038  */  .asciz  "book"
                        .balign 4

glabel D_80130040
/* 025550 80130040  */  .asciz  "The Ending Book"
                        .balign 4

glabel D_80130050
/* 025560 80130050  */  .asciz  "The ending"
                        .balign 4

glabel D_8013005C
/* 02556C 8013005C  */  .asciz  "rosebush"
                        .balign 4

glabel D_80130068
/* 025578 80130068  */  .asciz  "rosebush"
                        .balign 4

glabel D_80130074
/* 025584 80130074  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_801300D8
/* 0255E8 801300D8  */  .asciz  "rosebush"
                        .balign 4

glabel D_801300E4
/* 0255F4 801300E4  */  .asciz  "rosebush"
                        .balign 4

glabel D_801300F0
/* 025600 801300F0  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_80130154
/* 025664 80130154  */  .asciz  "rosebush"
                        .balign 4

glabel D_80130160
/* 025670 80130160  */  .asciz  "rosebush"
                        .balign 4

glabel D_8013016C
/* 02567C 8013016C  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_801301D0
/* 0256E0 801301D0  */  .asciz  "rosebush"
                        .balign 4

glabel D_801301DC
/* 0256EC 801301DC  */  .asciz  "rosebush"
                        .balign 4

glabel D_801301E8
/* 0256F8 801301E8  */  .asciz  "A bush with many roses\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4flower^d. It's a big bush!\"^^"
                        .balign 4

glabel D_8013024C
/* 02575C 8013024C  */  .asciz  "apple tree"
                        .balign 4

glabel D_80130258
/* 025768 80130258  */  .asciz  "apple tree"
                        .balign 4

glabel D_80130264
/* 025774 80130264  */  .asciz  "A tree with many ^4apple^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown an ^4apple^d.\"^^"
                        .balign 4

glabel D_801302C0
/* 0257D0 801302C0  */  .asciz  "peach tree"
                        .balign 4

glabel D_801302CC
/* 0257DC 801302CC  */  .asciz  "peach tree"
                        .balign 4

glabel D_801302D8
/* 0257E8 801302D8  */  .asciz  "A tree with many ^4peach^^es on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4peach^d.\"^^"
                        .balign 4

glabel D_80130334
/* 025844 80130334  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_80130344
/* 025854 80130344  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_80130354
/* 025864 80130354  */  .asciz  "A tree with many ^4spiky shell^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4spiky shell^d.\"^^"
                        .balign 4

glabel D_801303B8
/* 0258C8 801303B8  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801303CC
/* 0258DC 801303CC  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801303E0
/* 0258F0 801303E0  */  .asciz  "A tree with lots of ^4smelly fruit^^\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4smelly fruit^d.\"^^"
                        .balign 4

glabel D_80130448
/* 025958 80130448  */  .asciz  "walnut tree"
                        .balign 4

glabel D_80130454
/* 025964 80130454  */  .asciz  "walnut tree"
                        .balign 4

glabel D_80130460
/* 025970 80130460  */  .asciz  "A tree with many ^4walnut^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4walnut^d.\"^^"
                        .balign 4

glabel D_801304C0
/* 0259D0 801304C0  */  .asciz  "palm tree"
                        .balign 4

glabel D_801304CC
/* 0259DC 801304CC  */  .asciz  "palm tree"
                        .balign 4

glabel D_801304D8
/* 0259E8 801304D8  */  .asciz  "A tree with lots of ^4coconut^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4coconut^d.\"^^"
                        .balign 4

glabel D_80130534
/* 025A44 80130534  */  .asciz  "apple tree"
                        .balign 4

glabel D_80130540
/* 025A50 80130540  */  .asciz  "apple tree"
                        .balign 4

glabel D_8013054C
/* 025A5C 8013054C  */  .asciz  "A tree with many ^4apple^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown an ^4apple^d.\"^^"
                        .balign 4

glabel D_801305A8
/* 025AB8 801305A8  */  .asciz  "peach tree"
                        .balign 4

glabel D_801305B4
/* 025AC4 801305B4  */  .asciz  "peach tree"
                        .balign 4

glabel D_801305C0
/* 025AD0 801305C0  */  .asciz  "A tree with many ^4peach^^es on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4peach^d.\"^^"
                        .balign 4

glabel D_8013061C
/* 025B2C 8013061C  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_8013062C
/* 025B3C 8013062C  */  .asciz  "chestnut tree"
                        .balign 4

glabel D_8013063C
/* 025B4C 8013063C  */  .asciz  "A tree with many ^4spiky shell^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4spiky shell^d.\"^^"
                        .balign 4

glabel D_801306A0
/* 025BB0 801306A0  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801306B4
/* 025BC4 801306B4  */  .asciz  "smelly fruit tree"
                        .balign 4

glabel D_801306C8
/* 025BD8 801306C8  */  .asciz  "A tree with lots of ^4smelly fruit^^\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4smelly fruit^d.\"^^"
                        .balign 4

glabel D_80130730
/* 025C40 80130730  */  .asciz  "walnut tree"
                        .balign 4

glabel D_8013073C
/* 025C4C 8013073C  */  .asciz  "walnut tree"
                        .balign 4

glabel D_80130748
/* 025C58 80130748  */  .asciz  "A tree with many ^4walnut^^s on it\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4walnut^d.\"^^"
                        .balign 4

glabel D_801307A8
/* 025CB8 801307A8  */  .asciz  "palm tree"
                        .balign 4

glabel D_801307B4
/* 025CC4 801307B4  */  .asciz  "palm tree"
                        .balign 4

glabel D_801307C0
/* 025CD0 801307C0  */  .asciz  "A tree with lots of ^4coconut^^s\n^d\"A ^4Thunderbolt^d should knock\n^ddown a ^4coconut^d.\"^^"
                        .balign 4

glabel D_8013081C
/* 025D2C 8013081C  */  .asciz  "tool box"
                        .balign 4

glabel D_80130828
/* 025D38 80130828  */  .asciz  "tool box"
                        .balign 4

glabel D_80130834
/* 025D44 80130834  */  .asciz  "The pack you keep your items in\n"
                        .balign 4

glabel D_80130858
/* 025D68 80130858  */  .asciz  "Pok´Helper"
                        .balign 4

glabel D_80130864
/* 025D74 80130864  */  .asciz  "Pok´Helper"
                        .balign 4

glabel D_80130870
/* 025D80 80130870  */  .asciz  "A computer with a microphone\n^d\"It's my pride and joy.\"^^\n"
                        .balign 4

glabel D_801308AC
/* 025DBC 801308AC  */  .asciz  "?"
                        .balign 4

glabel D_801308B0
/* 025DC0 801308B0  */  .asciz  "?"
                        .balign 4

glabel D_801308B4
/* 025DC4 801308B4  */  .asciz  "?"
                        .balign 4

glabel D_801308B8
/* 025DC8 801308B8 00000000 */  .word  0x00000000
/* 025DCC 801308BC 4552524F */  .word  0x4552524F
/* 025DD0 801308C0 523A2049 */  .word  0x523A2049
/* 025DD4 801308C4 6E76616C */  .word  0x6E76616C
/* 025DD8 801308C8 69642069 */  .word  0x69642069
/* 025DDC 801308CC 74656D54 */  .word  0x74656D54
/* 025DE0 801308D0 7970652E */  .word  0x7970652E
/* 025DE4 801308D4 20747970 */  .word  0x20747970
/* 025DE8 801308D8 654D696E */  .word  0x654D696E
/* 025DEC 801308DC 203D2025 */  .word  0x203D2025
/* 025DF0 801308E0 64202074 */  .word  0x64202074
/* 025DF4 801308E4 7970654D */  .word  0x7970654D
/* 025DF8 801308E8 6178203D */  .word  0x6178203D
/* 025DFC 801308EC 2025640A */  .word  0x2025640A
/* 025E00 801308F0 00000000 */  .word  0x00000000
/* 025E04 801308F4 72657175 */  .word  0x72657175
/* 025E08 801308F8 6573742D */  .word  0x6573742D
/* 025E0C 801308FC 636C696E */  .word  0x636C696E
/* 025E10 80130900 673A2570 */  .word  0x673A2570
/* 025E14 80130904 20747970 */  .word  0x20747970
/* 025E18 80130908 653A2564 */  .word  0x653A2564
/* 025E1C 8013090C 0A000000 */  .word  0x0A000000
/* 025E20 80130910 496E7661 */  .word  0x496E7661
/* 025E24 80130914 6C696420 */  .word  0x6C696420
/* 025E28 80130918 7363616C */  .word  0x7363616C
/* 025E2C 8013091C 653A2566 */  .word  0x653A2566
/* 025E30 80130920 0A000000 */  .word  0x0A000000
/* 025E34 80130924 706C6179 */  .word  0x706C6179
/* 025E38 80130928 65722D3E */  .word  0x65722D3E
/* 025E3C 8013092C 686F6C64 */  .word  0x686F6C64
/* 025E40 80130930 4974656D */  .word  0x4974656D
/* 025E44 80130934 203D2025 */  .word  0x203D2025
/* 025E48 80130938 640A0000 */  .word  0x640A0000
/* 025E4C 8013093C 486F6C64 */  .word  0x486F6C64
/* 025E50 80130940 20737562 */  .word  0x20737562
/* 025E54 80130944 6A656374 */  .word  0x6A656374
/* 025E58 80130948 20686173 */  .word  0x20686173
/* 025E5C 8013094C 20626565 */  .word  0x20626565
/* 025E60 80130950 6E206465 */  .word  0x6E206465
/* 025E64 80130954 6C657465 */  .word  0x6C657465
/* 025E68 80130958 642E0A00 */  .word  0x642E0A00
/* 025E6C 8013095C 7375626A */  .word  0x7375626A
/* 025E70 80130960 6563742D */  .word  0x6563742D
/* 025E74 80130964 3E686F6C */  .word  0x3E686F6C
/* 025E78 80130968 64497465 */  .word  0x64497465
/* 025E7C 8013096C 6D203D20 */  .word  0x6D203D20
/* 025E80 80130970 25640A00 */  .word  0x25640A00
/* 025E84 80130974 4552524F */  .word  0x4552524F
/* 025E88 80130978 523A2053 */  .word  0x523A2053
/* 025E8C 8013097C 7472616E */  .word  0x7472616E
/* 025E90 80130980 67652073 */  .word  0x67652073
/* 025E94 80130984 74617465 */  .word  0x74617465
/* 025E98 80130988 2E0A0000 */  .word  0x2E0A0000
/* 025E9C 8013098C 6D616B65 */  .word  0x6D616B65
/* 025EA0 80130990 4974656D */  .word  0x4974656D
/* 025EA4 80130994 28252E32 */  .word  0x28252E32
/* 025EA8 80130998 662C2025 */  .word  0x662C2025
/* 025EAC 8013099C 2E32662C */  .word  0x2E32662C
/* 025EB0 801309A0 20252E32 */  .word  0x20252E32
/* 025EB4 801309A4 662C2025 */  .word  0x662C2025
/* 025EB8 801309A8 64292000 */  .word  0x64292000
/* 025EBC 801309AC 28257329 */  .word  0x28257329
/* 025EC0 801309B0 0A000000 */  .word  0x0A000000
/* 025EC4 801309B4 6974656D */  .word  0x6974656D
/* 025EC8 801309B8 54797065 */  .word  0x54797065
/* 025ECC 801309BC 20256420 */  .word  0x20256420
/* 025ED0 801309C0 68617320 */  .word  0x68617320
/* 025ED4 801309C4 61207369 */  .word  0x61207369
/* 025ED8 801309C8 626C696E */  .word  0x626C696E
/* 025EDC 801309CC 670A0000 */  .word  0x670A0000
/* 025EE0 801309D0 64657374 */  .word  0x64657374
/* 025EE4 801309D4 726F7920 */  .word  0x726F7920
/* 025EE8 801309D8 6974656D */  .word  0x6974656D
/* 025EEC 801309DC 2E206974 */  .word  0x2E206974
/* 025EF0 801309E0 656D2072 */  .word  0x656D2072
/* 025EF4 801309E4 65737420 */  .word  0x65737420
/* 025EF8 801309E8 3D202564 */  .word  0x3D202564
/* 025EFC 801309EC 0A000000 */  .word  0x0A000000
/* 025F00 801309F0 4552524F */  .word  0x4552524F
/* 025F04 801309F4 523A2055 */  .word  0x523A2055
/* 025F08 801309F8 6E6B6E6F */  .word  0x6E6B6E6F
/* 025F0C 801309FC 776E2064 */  .word  0x776E2064
/* 025F10 80130A00 7261774D */  .word  0x7261774D
/* 025F14 80130A04 6F646528 */  .word  0x6F646528
/* 025F18 80130A08 2564290A */  .word  0x2564290A
/* 025F1C 80130A0C 00000000 */  .word  0x00000000
/* 025F20 80130A10 4572726F */  .word  0x4572726F
/* 025F24 80130A14 723A2055 */  .word  0x723A2055
/* 025F28 80130A18 6E6B6E6F */  .word  0x6E6B6E6F
/* 025F2C 80130A1C 776E2068 */  .word  0x776E2068
/* 025F30 80130A20 6F6C645F */  .word  0x6F6C645F
/* 025F34 80130A24 74797065 */  .word  0x74797065
/* 025F38 80130A28 28256429 */  .word  0x28256429
/* 025F3C 80130A2C 20696E20 */  .word  0x20696E20
/* 025F40 80130A30 6974656D */  .word  0x6974656D
/* 025F44 80130A34 28257029 */  .word  0x28257029
/* 025F48 80130A38 0A000000 */  .word  0x0A000000
/* 025F4C 80130A3C 6974656D */  .word  0x6974656D
/* 025F50 80130A40 5468726F */  .word  0x5468726F
/* 025F54 80130A44 77206974 */  .word  0x77206974
/* 025F58 80130A48 656D4944 */  .word  0x656D4944
/* 025F5C 80130A4C 3A25640A */  .word  0x3A25640A
/* 025F60 80130A50 6F726750 */  .word  0x6F726750
/* 025F64 80130A54 6F732020 */  .word  0x6F732020
/* 025F68 80130A58 28252E32 */  .word  0x28252E32
/* 025F6C 80130A5C 662C2025 */  .word  0x662C2025
/* 025F70 80130A60 2E32662C */  .word  0x2E32662C
/* 025F74 80130A64 20252E32 */  .word  0x20252E32
/* 025F78 80130A68 66290A74 */  .word  0x66290A74
/* 025F7C 80130A6C 68726F77 */  .word  0x68726F77
/* 025F80 80130A70 506F7328 */  .word  0x506F7328
/* 025F84 80130A74 252E3266 */  .word  0x252E3266
/* 025F88 80130A78 2C20252E */  .word  0x2C20252E
/* 025F8C 80130A7C 32662C20 */  .word  0x32662C20
/* 025F90 80130A80 252E3266 */  .word  0x252E3266
/* 025F94 80130A84 290A7468 */  .word  0x290A7468
/* 025F98 80130A88 726F7756 */  .word  0x726F7756
/* 025F9C 80130A8C 656C2825 */  .word  0x656C2825
/* 025FA0 80130A90 2E32662C */  .word  0x2E32662C
/* 025FA4 80130A94 20252E32 */  .word  0x20252E32
/* 025FA8 80130A98 662C2025 */  .word  0x662C2025
/* 025FAC 80130A9C 2E326629 */  .word  0x2E326629
/* 025FB0 80130AA0 0A000000 */  .word  0x0A000000
/* 025FB4 80130AA4 6974656D */  .word  0x6974656D
/* 025FB8 80130AA8 4368616E */  .word  0x4368616E
/* 025FBC 80130AAC 6765416E */  .word  0x6765416E
/* 025FC0 80130AB0 696D6528 */  .word  0x696D6528
/* 025FC4 80130AB4 25702C20 */  .word  0x25702C20
/* 025FC8 80130AB8 2564290A */  .word  0x2564290A
/* 025FCC 80130ABC 00000000 */  .word  0x00000000
/* 025FD0 80130AC0 6974656D */  .word  0x6974656D
/* 025FD4 80130AC4 4368616E */  .word  0x4368616E
/* 025FD8 80130AC8 67654D61 */  .word  0x67654D61
/* 025FDC 80130ACC 74282570 */  .word  0x74282570
/* 025FE0 80130AD0 2C202564 */  .word  0x2C202564
/* 025FE4 80130AD4 290A0000 */  .word  0x290A0000
/* 025FE8 80130AD8 4552524F */  .word  0x4552524F
/* 025FEC 80130ADC 523A2075 */  .word  0x523A2075
/* 025FF0 80130AE0 6E6B6E6F */  .word  0x6E6B6E6F
/* 025FF4 80130AE4 776E2069 */  .word  0x776E2069
/* 025FF8 80130AE8 74656D52 */  .word  0x74656D52
/* 025FFC 80130AEC 6573706F */  .word  0x6573706F
/* 026000 80130AF0 6E736554 */  .word  0x6E736554
/* 026004 80130AF4 79706528 */  .word  0x79706528
/* 026008 80130AF8 2564290A */  .word  0x2564290A
/* 02600C 80130AFC 00000000 */  .word  0x00000000
/* 026010 80130B00 6974656D */  .word  0x6974656D
/* 026014 80130B04 4368616E */  .word  0x4368616E
/* 026018 80130B08 67652825 */  .word  0x67652825
/* 02601C 80130B0C 70282573 */  .word  0x70282573
/* 026020 80130B10 292C2025 */  .word  0x292C2025
/* 026024 80130B14 64290A00 */  .word  0x64290A00
/* 026028 80130B18 6368616E */  .word  0x6368616E
/* 02602C 80130B1C 67655468 */  .word  0x67655468
/* 026030 80130B20 756E6465 */  .word  0x756E6465
/* 026034 80130B24 723A2564 */  .word  0x723A2564
/* 026038 80130B28 20636861 */  .word  0x20636861
/* 02603C 80130B2C 6E676554 */  .word  0x6E676554
/* 026040 80130B30 6F3A2573 */  .word  0x6F3A2573
/* 026044 80130B34 0A000000 */  .word  0x0A000000
/* 026048 80130B38 4552524F */  .word  0x4552524F
/* 02604C 80130B3C 523A2055 */  .word  0x523A2055
/* 026050 80130B40 6E6B6E6F */  .word  0x6E6B6E6F
/* 026054 80130B44 776E2063 */  .word  0x776E2063
/* 026058 80130B48 61757365 */  .word  0x61757365
/* 02605C 80130B4C 28256429 */  .word  0x28256429
/* 026060 80130B50 0A000000 */  .word  0x0A000000
/* 026064 80130B54 4552524F */  .word  0x4552524F
/* 026068 80130B58 523A2043 */  .word  0x523A2043
/* 02606C 80130B5C 616E6E6F */  .word  0x616E6E6F
/* 026070 80130B60 74206368 */  .word  0x74206368
/* 026074 80130B64 616E6765 */  .word  0x616E6765
/* 026078 80130B68 20636865 */  .word  0x20636865
/* 02607C 80130B6C 636B6564 */  .word  0x636B6564
/* 026080 80130B70 2D696E20 */  .word  0x2D696E20
/* 026084 80130B74 6974656D */  .word  0x6974656D
/* 026088 80130B78 2E0A0000 */  .word  0x2E0A0000
/* 02608C 80130B7C 4552524F */  .word  0x4552524F
/* 026090 80130B80 523A2053 */  .word  0x523A2053
/* 026094 80130B84 7472616E */  .word  0x7472616E
/* 026098 80130B88 67652E0A */  .word  0x67652E0A
/* 02609C 80130B8C 00000000 */  .word  0x00000000
/* 0260A0 80130B90 4552524F */  .word  0x4552524F
/* 0260A4 80130B94 523A2055 */  .word  0x523A2055
/* 0260A8 80130B98 6E6B6E6F */  .word  0x6E6B6E6F
/* 0260AC 80130B9C 776E2068 */  .word  0x776E2068
/* 0260B0 80130BA0 6F6C6446 */  .word  0x6F6C6446
/* 0260B4 80130BA4 6C616728 */  .word  0x6C616728
/* 0260B8 80130BA8 2564290A */  .word  0x2564290A
/* 0260BC 80130BAC 00000000 */  .word  0x00000000
/* 0260C0 80130BB0 63686563 */  .word  0x63686563
/* 0260C4 80130BB4 6B696E20 */  .word  0x6B696E20
/* 0260C8 80130BB8 25702825 */  .word  0x25702825
/* 0260CC 80130BBC 73290A00 */  .word  0x73290A00
/* 0260D0 80130BC0 63686563 */  .word  0x63686563
/* 0260D4 80130BC4 6B6F7574 */  .word  0x6B6F7574
/* 0260D8 80130BC8 20257028 */  .word  0x20257028
/* 0260DC 80130BCC 2573290A */  .word  0x2573290A
/* 0260E0 80130BD0 00000000 */  .word  0x00000000
/* 0260E4 80130BD4 496E7661 */  .word  0x496E7661
/* 0260E8 80130BD8 6C696420 */  .word  0x6C696420
/* 0260EC 80130BDC 6974656D */  .word  0x6974656D
/* 0260F0 80130BE0 4E616D65 */  .word  0x4E616D65
/* 0260F4 80130BE4 54797065 */  .word  0x54797065
/* 0260F8 80130BE8 28256429 */  .word  0x28256429
/* 0260FC 80130BEC 20697465 */  .word  0x20697465
/* 026100 80130BF0 6D547970 */  .word  0x6D547970
/* 026104 80130BF4 65203D20 */  .word  0x65203D20
/* 026108 80130BF8 25640A00 */  .word  0x25640A00

glabel D_80130BFC
/* 02610C 80130BFC 00000000 */  .word  0x00000000

glabel D_80130C00
/* 026110 80130C00 28497465 */  .word  0x28497465
/* 026114 80130C04 6D290000 */  .word  0x6D290000
/* 026118 80130C08 4572726F */  .word  0x4572726F
/* 02611C 80130C0C 723A2049 */  .word  0x723A2049
/* 026120 80130C10 6E76616C */  .word  0x6E76616C
/* 026124 80130C14 69642063 */  .word  0x69642063
/* 026128 80130C18 6F6E7465 */  .word  0x6F6E7465
/* 02612C 80130C1C 6E745479 */  .word  0x6E745479
/* 026130 80130C20 70653A25 */  .word  0x70653A25
/* 026134 80130C24 640A0000 */  .word  0x640A0000
/* 026138 80130C28 496E7661 */  .word  0x496E7661
/* 02613C 80130C2C 6C696420 */  .word  0x6C696420
/* 026140 80130C30 6974656D */  .word  0x6974656D
/* 026144 80130C34 48656C70 */  .word  0x48656C70
/* 026148 80130C38 54797065 */  .word  0x54797065
/* 02614C 80130C3C 28256429 */  .word  0x28256429
/* 026150 80130C40 20697465 */  .word  0x20697465
/* 026154 80130C44 6D547970 */  .word  0x6D547970
/* 026158 80130C48 65203D20 */  .word  0x65203D20
/* 02615C 80130C4C 25640A00 */  .word  0x25640A00

glabel D_80130C50
/* 026160 80130C50 3E99999A */  .float  0.30000001192092896

glabel D_80130C54
/* 026164 80130C54 C7C35000 */  .float  -100000.0

glabel jtbl_80130C58
/* 026168 80130C58 80113D64 */  .word  L80113D64
/* 02616C 80130C5C 80113DB0 */  .word  L80113DB0
/* 026170 80130C60 80113DFC */  .word  L80113DFC
/* 026174 80130C64 80113E48 */  .word  L80113E48
/* 026178 80130C68 80113E94 */  .word  L80113E94
/* 02617C 80130C6C 80113EE0 */  .word  L80113EE0
/* 026180 80130C70 80113F2C */  .word  L80113F2C

glabel jtbl_80130C74
/* 026184 80130C74 80114100 */  .word  L80114100
/* 026188 80130C78 80114084 */  .word  L80114084
/* 02618C 80130C7C 801140AC */  .word  L801140AC
/* 026190 80130C80 801140AC */  .word  L801140AC
/* 026194 80130C84 801140F8 */  .word  L801140F8
/* 026198 80130C88 8011407C */  .word  L8011407C

glabel jtbl_80130C8C
/* 02619C 80130C8C 801146CC */  .word  L801146CC
/* 0261A0 80130C90 801146F0 */  .word  L801146F0
/* 0261A4 80130C94 80114714 */  .word  L80114714
/* 0261A8 80130C98 80114738 */  .word  L80114738
/* 0261AC 80130C9C 8011475C */  .word  L8011475C

glabel jtbl_80130CA0
/* 0261B0 80130CA0 8011488C */  .word  L8011488C
/* 0261B4 80130CA4 801148B8 */  .word  L801148B8
/* 0261B8 80130CA8 8011498C */  .word  L8011498C
/* 0261BC 80130CAC 801149C8 */  .word  L801149C8
/* 0261C0 80130CB0 801149C8 */  .word  L801149C8
/* 0261C4 80130CB4 80114984 */  .word  L80114984

glabel jtbl_80130CB8
/* 0261C8 80130CB8 80114A58 */  .word  L80114A58
/* 0261CC 80130CBC 80114A58 */  .word  L80114A58
/* 0261D0 80130CC0 80114A34 */  .word  L80114A34
/* 0261D4 80130CC4 80114A34 */  .word  L80114A34
/* 0261D8 80130CC8 80114A58 */  .word  L80114A58
/* 0261DC 80130CCC 80114A58 */  .word  L80114A58

glabel jtbl_80130CD0
/* 0261E0 80130CD0 80114F40 */  .word  L80114F40
/* 0261E4 80130CD4 80114F28 */  .word  L80114F28
/* 0261E8 80130CD8 80114F34 */  .word  L80114F34
/* 0261EC 80130CDC 80114F34 */  .word  L80114F34
/* 0261F0 80130CE0 80114F28 */  .word  L80114F28
/* 0261F4 80130CE4 80114F34 */  .word  L80114F34
/* 0261F8 80130CE8 80114F28 */  .word  L80114F28
/* 0261FC 80130CEC 00000000 */  .word  0x00000000
/* 026200 80130CF0 5741524E */  .word  0x5741524E
/* 026204 80130CF4 494E4720 */  .word  0x494E4720
/* 026208 80130CF8 3A207374 */  .word  0x3A207374
/* 02620C 80130CFC 61636B20 */  .word  0x61636B20
/* 026210 80130D00 73697A65 */  .word  0x73697A65
/* 026214 80130D04 206F7574 */  .word  0x206F7574
/* 026218 80130D08 206F6620 */  .word  0x206F6620
/* 02621C 80130D0C 72616E67 */  .word  0x72616E67
/* 026220 80130D10 652C2025 */  .word  0x652C2025
/* 026224 80130D14 640A0000 */  .word  0x640A0000

glabel D_80130D18
/* 026228 80130D18 25640000 */  .word  0x25640000

glabel D_80130D1C
/* 02622C 80130D1C 25660000 */  .word  0x25660000

glabel D_80130D20
/* 026230 80130D20 4E6F2050 */  .word  0x4E6F2050
/* 026234 80130D24 50550000 */  .word  0x50550000
/* 026238 80130D28 636F6465 */  .word  0x636F6465
/* 02623C 80130D2C 203D2025 */  .word  0x203D2025
/* 026240 80130D30 640A0000 */  .word  0x640A0000
/* 026244 80130D34 50505520 */  .word  0x50505520
/* 026248 80130D38 2D207072 */  .word  0x2D207072
/* 02624C 80130D3C 6F636573 */  .word  0x6F636573
/* 026250 80130D40 7320656E */  .word  0x7320656E
/* 026254 80130D44 642E0A00 */  .word  0x642E0A00
/* 026258 80130D48 25640A00 */  .word  0x25640A00

glabel jtbl_80130D4C
/* 02625C 80130D4C 801159EC */  .word  L801159EC
/* 026260 80130D50 801159F8 */  .word  L801159F8
/* 026264 80130D54 80115A04 */  .word  L80115A04
/* 026268 80130D58 80115A10 */  .word  L80115A10
/* 02626C 80130D5C 80115A1C */  .word  L80115A1C

glabel jtbl_80130D60
/* 026270 80130D60 80115A7C */  .word  L80115A7C
/* 026274 80130D64 80115A88 */  .word  L80115A88
/* 026278 80130D68 80115A94 */  .word  L80115A94
/* 02627C 80130D6C 80115AA8 */  .word  L80115AA8
/* 026280 80130D70 80115AE0 */  .word  L80115AE0

glabel jtbl_80130D74
/* 026284 80130D74 80115DE4 */  .word  L80115DE4
/* 026288 80130D78 80115E18 */  .word  L80115E18
/* 02628C 80130D7C 80115E4C */  .word  L80115E4C
/* 026290 80130D80 80115E64 */  .word  L80115E64
/* 026294 80130D84 80115E7C */  .word  L80115E7C
/* 026298 80130D88 80115E94 */  .word  L80115E94
/* 02629C 80130D8C 80115FF4 */  .word  L80115FF4
/* 0262A0 80130D90 80115EAC */  .word  L80115EAC
/* 0262A4 80130D94 80115EE0 */  .word  L80115EE0

glabel D_80130D98
/* 0262A8 80130D98 3A83126F */  .float  0.0010000000474974513

glabel D_80130D9C
/* 0262AC 80130D9C 3A83126F */  .float  0.0010000000474974513

glabel jtbl_80130DA0
/* 0262B0 80130DA0 80115F58 */  .word  L80115F58
/* 0262B4 80130DA4 80115F68 */  .word  L80115F68
/* 0262B8 80130DA8 80115F78 */  .word  L80115F78
/* 0262BC 80130DAC 80115F8C */  .word  L80115F8C
/* 0262C0 80130DB0 80115FA0 */  .word  L80115FA0
/* 0262C4 80130DB4 80115FB4 */  .word  L80115FB4
/* 0262C8 80130DB8 80115FF4 */  .word  L80115FF4
/* 0262CC 80130DBC 80115FC8 */  .word  L80115FC8
/* 0262D0 80130DC0 80115FE0 */  .word  L80115FE0

glabel jtbl_80130DC4
/* 0262D4 80130DC4 801162DC */  .word  L801162DC
/* 0262D8 80130DC8 801162DC */  .word  L801162DC
/* 0262DC 80130DCC 801162DC */  .word  L801162DC
/* 0262E0 80130DD0 80116324 */  .word  L80116324
/* 0262E4 80130DD4 80116324 */  .word  L80116324
/* 0262E8 80130DD8 80116334 */  .word  L80116334
/* 0262EC 80130DDC 80116334 */  .word  L80116334
/* 0262F0 80130DE0 80116334 */  .word  L80116334
/* 0262F4 80130DE4 80116334 */  .word  L80116334
/* 0262F8 80130DE8 80116334 */  .word  L80116334
/* 0262FC 80130DEC 801163A4 */  .word  L801163A4
/* 026300 80130DF0 80116344 */  .word  L80116344
/* 026304 80130DF4 80116344 */  .word  L80116344
/* 026308 80130DF8 80116344 */  .word  L80116344
/* 02630C 80130DFC 80116344 */  .word  L80116344
/* 026310 80130E00 80116344 */  .word  L80116344
/* 026314 80130E04 80116344 */  .word  L80116344
/* 026318 80130E08 80116324 */  .word  L80116324
/* 02631C 80130E0C 80116344 */  .word  L80116344
/* 026320 80130E10 80116344 */  .word  L80116344
/* 026324 80130E14 80116354 */  .word  L80116354
/* 026328 80130E18 80116354 */  .word  L80116354
/* 02632C 80130E1C 80116354 */  .word  L80116354
/* 026330 80130E20 80116354 */  .word  L80116354
/* 026334 80130E24 80116364 */  .word  L80116364
/* 026338 80130E28 80116388 */  .word  L80116388
/* 02633C 80130E2C 80116508 */  .word  L80116508
/* 026340 80130E30 801164D4 */  .word  L801164D4
/* 026344 80130E34 80116474 */  .word  L80116474
/* 026348 80130E38 8011648C */  .word  L8011648C
/* 02634C 80130E3C 80116538 */  .word  L80116538
/* 026350 80130E40 80116310 */  .word  L80116310
/* 026354 80130E44 8011658C */  .word  L8011658C
/* 026358 80130E48 801163C0 */  .word  L801163C0
/* 02635C 80130E4C 801163F4 */  .word  L801163F4
/* 026360 80130E50 8011645C */  .word  L8011645C
/* 026364 80130E54 00000000 */  .word  0x00000000
/* 026368 80130E58 00000000 */  .word  0x00000000
/* 02636C 80130E5C 00000000 */  .word  0x00000000
/* 026370 80130E60 6E657276 */  .word  0x6E657276
/* 026374 80130E64 65546872 */  .word  0x65546872
/* 026378 80130E68 6F774974 */  .word  0x6F774974
/* 02637C 80130E6C 656D202D */  .word  0x656D202D
/* 026380 80130E70 2025640A */  .word  0x2025640A
/* 026384 80130E74 00000000 */  .word  0x00000000
/* 026388 80130E78 6E657276 */  .word  0x6E657276
/* 02638C 80130E7C 65477261 */  .word  0x65477261
/* 026390 80130E80 62497465 */  .word  0x62497465
/* 026394 80130E84 6D202D20 */  .word  0x6D202D20
/* 026398 80130E88 25640A00 */  .word  0x25640A00
/* 02639C 80130E8C 6E657276 */  .word  0x6E657276
/* 0263A0 80130E90 65456174 */  .word  0x65456174
/* 0263A4 80130E94 4974656D */  .word  0x4974656D
/* 0263A8 80130E98 202D2025 */  .word  0x202D2025
/* 0263AC 80130E9C 640A0000 */  .word  0x640A0000
/* 0263B0 80130EA0 6D657373 */  .word  0x6D657373
/* 0263B4 80130EA4 61676553 */  .word  0x61676553
/* 0263B8 80130EA8 65747570 */  .word  0x65747570
/* 0263BC 80130EAC 2825642C */  .word  0x2825642C
/* 0263C0 80130EB0 25642C25 */  .word  0x25642C25
/* 0263C4 80130EB4 64290A00 */  .word  0x64290A00
/* 0263C8 80130EB8 4552524F */  .word  0x4552524F
/* 0263CC 80130EBC 523A2055 */  .word  0x523A2055
/* 0263D0 80130EC0 6E6B6E6F */  .word  0x6E6B6E6F
/* 0263D4 80130EC4 776E206E */  .word  0x776E206E
/* 0263D8 80130EC8 65727665 */  .word  0x65727665
/* 0263DC 80130ECC 20726F75 */  .word  0x20726F75
/* 0263E0 80130ED0 74696E65 */  .word  0x74696E65
/* 0263E4 80130ED4 2E204E65 */  .word  0x2E204E65
/* 0263E8 80130ED8 72766520 */  .word  0x72766520
/* 0263EC 80130EDC 6E756D62 */  .word  0x6E756D62
/* 0263F0 80130EE0 65722025 */  .word  0x65722025
/* 0263F4 80130EE4 640A0000 */  .word  0x640A0000

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
/* 026450 80130F40 2573203D */  .word  0x2573203D
/* 026454 80130F44 20282533 */  .word  0x20282533
/* 026458 80130F48 2E32662C */  .word  0x2E32662C
/* 02645C 80130F4C 2025332E */  .word  0x2025332E
/* 026460 80130F50 32662C20 */  .word  0x32662C20
/* 026464 80130F54 25332E32 */  .word  0x25332E32
/* 026468 80130F58 66290A00 */  .word  0x66290A00
/* 02646C 80130F5C 61000000 */  .word  0x61000000
/* 026470 80130F60 2573203D */  .word  0x2573203D
/* 026474 80130F64 20282533 */  .word  0x20282533
/* 026478 80130F68 2E32662C */  .word  0x2E32662C
/* 02647C 80130F6C 2025332E */  .word  0x2025332E
/* 026480 80130F70 32662C20 */  .word  0x32662C20
/* 026484 80130F74 25332E32 */  .word  0x25332E32
/* 026488 80130F78 66290A00 */  .word  0x66290A00
/* 02648C 80130F7C 65000000 */  .word  0x65000000
/* 026490 80130F80 73657452 */  .word  0x73657452
/* 026494 80130F84 65616374 */  .word  0x65616374
/* 026498 80130F88 54797065 */  .word  0x54797065
/* 02649C 80130F8C 3A25640A */  .word  0x3A25640A
/* 0264A0 80130F90 00000000 */  .word  0x00000000

glabel D_80130F94
/* 0264A4 80130F94  */  .asciz  " "
                        .balign 4

glabel D_80130F98
/* 0264A8 80130F98  */  .asciz  " "
                        .balign 4

glabel D_80130F9C
/* 0264AC 80130F9C  */  .asciz  " "
                        .balign 4

glabel D_80130FA0
/* 0264B0 80130FA0  */  .asciz  " "
                        .balign 4

glabel D_80130FA4
/* 0264B4 80130FA4  */  .asciz  " "
                        .balign 4

glabel D_80130FA8
/* 0264B8 80130FA8  */  .asciz  " "
                        .balign 4

glabel D_80130FAC
/* 0264BC 80130FAC  */  .asciz  " "
                        .balign 4

glabel D_80130FB0
/* 0264C0 80130FB0  */  .asciz  " "
                        .balign 4

glabel D_80130FB4
/* 0264C4 80130FB4  */  .asciz  " "
                        .balign 4

glabel D_80130FB8
/* 0264C8 80130FB8  */  .asciz  " "
                        .balign 4

glabel D_80130FBC
/* 0264CC 80130FBC  */  .asciz  " "
                        .balign 4

glabel D_80130FC0
/* 0264D0 80130FC0  */  .asciz  "^6Pikachu^^"
                        .balign 4

glabel D_80130FCC
/* 0264DC 80130FCC  */  .asciz  " "
                        .balign 4

glabel D_80130FD0
/* 0264E0 80130FD0  */  .asciz  " "
                        .balign 4

glabel D_80130FD4
/* 0264E4 80130FD4  */  .asciz  "^8Development Staff^^"
                        .balign 4

glabel D_80130FEC
/* 0264FC 80130FEC  */  .asciz  " "
                        .balign 4

glabel D_80130FF0
/* 026500 80130FF0  */  .asciz  "^9Ambrella^^"
                        .balign 4

glabel D_80131000
/* 026510 80131000  */  .asciz  " "
                        .balign 4

glabel D_80131004
/* 026514 80131004  */  .asciz  "^1Ain Terakawa^^^^"
                        .balign 4

glabel D_80131018
/* 026528 80131018  */  .asciz  "^1Daisuke Yoshimitsu^^"
                        .balign 4

glabel D_80131030
/* 026540 80131030  */  .asciz  "^1Hiroki Iwasaki^^"
                        .balign 4

glabel D_80131044
/* 026554 80131044  */  .asciz  "^1Hiroyuki Ymanaka^^"
                        .balign 4

glabel D_8013105C
/* 02656C 8013105C  */  .asciz  "^1Masahiro Sugiyama^^"
                        .balign 4

glabel D_80131074
/* 026584 80131074  */  .asciz  "^1Miki Obata^^"
                        .balign 4

glabel D_80131084
/* 026594 80131084  */  .asciz  "^1Muneaki Ozawa^^"
                        .balign 4

glabel D_80131098
/* 0265A8 80131098  */  .asciz  "^1Norio Matsumura^^"
                        .balign 4

glabel D_801310AC
/* 0265BC 801310AC  */  .asciz  "^1Shinichi Sasaki^^"
                        .balign 4

glabel D_801310C0
/* 0265D0 801310C0  */  .asciz  "^1Shuira Matsumoto^^"
                        .balign 4

glabel D_801310D8
/* 0265E8 801310D8  */  .asciz  "^1Takayuki Itou^^"
                        .balign 4

glabel D_801310EC
/* 0265FC 801310EC  */  .asciz  "^1Takeshi Yaegashi^^"
                        .balign 4

glabel D_80131104
/* 026614 80131104  */  .asciz  "^5Tomoe Takayama^^"
                        .balign 4

glabel D_80131118
/* 026628 80131118  */  .asciz  "^1Watanabe Hirotake^^"
                        .balign 4

glabel D_80131130
/* 026640 80131130  */  .asciz  "^1Wataru Kawashima^^"
                        .balign 4

glabel D_80131148
/* 026658 80131148  */  .asciz  "^1Yoshiyuki Oku^^"
                        .balign 4

glabel D_8013115C
/* 02666C 8013115C  */  .asciz  "^5Youko Murakami^^"
                        .balign 4

glabel D_80131170
/* 026680 80131170  */  .asciz  "^1Yousuke Kuroda^^"
                        .balign 4

glabel D_80131184
/* 026694 80131184  */  .asciz  "^1Yousuke Suma^^"
                        .balign 4

glabel D_80131198
/* 0266A8 80131198  */  .asciz  " "
                        .balign 4

glabel D_8013119C
/* 0266AC 8013119C  */  .asciz  " "
                        .balign 4

glabel D_801311A0
/* 0266B0 801311A0  */  .asciz  "^8Voice Actors^^"
                        .balign 4

glabel D_801311B4
/* 0266C4 801311B4  */  .asciz  " "
                        .balign 4

glabel D_801311B8
/* 0266C8 801311B8  */  .asciz  "^5Ikue Ohtani^^"
                        .balign 4

glabel D_801311C8
/* 0266D8 801311C8  */  .asciz  "^5Rikako Aikawa^^"
                        .balign 4

glabel D_801311DC
/* 0266EC 801311DC  */  .asciz  " "
                        .balign 4

glabel D_801311E0
/* 0266F0 801311E0  */  .asciz  " "
                        .balign 4

glabel D_801311E4
/* 0266F4 801311E4  */  .asciz  "^8Management^^"
                        .balign 4

glabel D_801311F4
/* 026704 801311F4  */  .asciz  " "
                        .balign 4

glabel D_801311F8
/* 026708 801311F8  */  .asciz  "^9Marigul^^"
                        .balign 4

glabel D_80131204
/* 026714 80131204  */  .asciz  "^9  Management Inc.^^"
                        .balign 4

glabel D_8013121C
/* 02672C 8013121C  */  .asciz  " "
                        .balign 4

glabel D_80131220
/* 026730 80131220  */  .asciz  "^1Kenji Nishizawa^^"
                        .balign 4

glabel D_80131234
/* 026744 80131234  */  .asciz  "^1Masashi Uchiyama^^"
                        .balign 4

glabel D_8013124C
/* 02675C 8013124C  */  .asciz  "^1Tetsu Kayama^^"
                        .balign 4

glabel D_80131260
/* 026770 80131260  */  .asciz  "^1Tsutomu^^"
                        .balign 4

glabel D_8013126C
/* 02677C 8013126C  */  .asciz  "^1      Koganezawa^^"
                        .balign 4

glabel D_80131284
/* 026794 80131284  */  .asciz  "^5Yumiko Fujii^^"
                        .balign 4

glabel D_80131298
/* 0267A8 80131298  */  .asciz  " "
                        .balign 4

glabel D_8013129C
/* 0267AC 8013129C  */  .asciz  " "
                        .balign 4

glabel D_801312A0
/* 0267B0 801312A0  */  .asciz  "^8Localization^^"
                        .balign 4

glabel D_801312B4
/* 0267C4 801312B4  */  .asciz  " "
                        .balign 4

glabel D_801312B8
/* 0267C8 801312B8  */  .asciz  "^1Bill Trinen^^"
                        .balign 4

glabel D_801312C8
/* 0267D8 801312C8  */  .asciz  " "
                        .balign 4

glabel D_801312CC
/* 0267DC 801312CC  */  .asciz  " "
                        .balign 4

glabel D_801312D0
/* 0267E0 801312D0  */  .asciz  "^8Localization^^"
                        .balign 4

glabel D_801312E4
/* 0267F4 801312E4  */  .asciz  "^8      Management^^"
                        .balign 4

glabel D_801312FC
/* 02680C 801312FC  */  .asciz  " "
                        .balign 4

glabel D_80131300
/* 026810 80131300  */  .asciz  "^1Jeff Miller^^"
                        .balign 4

glabel D_80131310
/* 026820 80131310  */  .asciz  "^5Leslie Swan^^"
                        .balign 4

glabel D_80131320
/* 026830 80131320  */  .asciz  " "
                        .balign 4

glabel D_80131324
/* 026834 80131324  */  .asciz  " "
                        .balign 4

glabel D_80131328
/* 026838 80131328  */  .asciz  "^8Pok´mon Modeling^^"
                        .balign 4

glabel D_80131340
/* 026850 80131340  */  .asciz  " "
                        .balign 4

glabel D_80131344
/* 026854 80131344  */  .asciz  "^9CR.64MC^^"
                        .balign 4

glabel D_80131350
/* 026860 80131350  */  .asciz  " "
                        .balign 4

glabel D_80131354
/* 026864 80131354  */  .asciz  "^1Benimaru Itou^^"
                        .balign 4

glabel D_80131368
/* 026878 80131368  */  .asciz  "^1Jungo Suzuki^^"
                        .balign 4

glabel D_8013137C
/* 02688C 8013137C  */  .asciz  "^1Kazuo Yazawa^^"
                        .balign 4

glabel D_80131390
/* 0268A0 80131390  */  .asciz  "^1Yoshiyuki Tagawa^^"
                        .balign 4

glabel D_801313A8
/* 0268B8 801313A8  */  .asciz  "^1Yuhichi Sawayama^^"
                        .balign 4

glabel D_801313C0
/* 0268D0 801313C0  */  .asciz  " "
                        .balign 4

glabel D_801313C4
/* 0268D4 801313C4  */  .asciz  " "
                        .balign 4

glabel D_801313C8
/* 0268D8 801313C8  */  .asciz  "^8Testing and Debug^^"
                        .balign 4

glabel D_801313E0
/* 0268F0 801313E0  */  .asciz  " "
                        .balign 4

glabel D_801313E4
/* 0268F4 801313E4  */  .asciz  "^5Michelle Powers^^"
                        .balign 4

glabel D_801313F8
/* 026908 801313F8  */  .asciz  "^1Sam Hosier^^"
                        .balign 4

glabel D_80131408
/* 026918 80131408  */  .asciz  "^5Shari Brown^^"
                        .balign 4

glabel D_80131418
/* 026928 80131418  */  .asciz  "^1Todd Buechele^^"
                        .balign 4

glabel D_8013142C
/* 02693C 8013142C  */  .asciz  " "
                        .balign 4

glabel D_80131430
/* 026940 80131430  */  .asciz  "^9NOA Debug Staff^^"
                        .balign 4

glabel D_80131444
/* 026954 80131444  */  .asciz  " "
                        .balign 4

glabel D_80131448
/* 026958 80131448  */  .asciz  " "
                        .balign 4

glabel D_8013144C
/* 02695C 8013144C  */  .asciz  "^8Special Thanks^^"
                        .balign 4

glabel D_80131460
/* 026970 80131460  */  .asciz  " "
                        .balign 4

glabel D_80131464
/* 026974 80131464  */  .asciz  "^5Alicia Beckford^^"
                        .balign 4

glabel D_80131478
/* 026988 80131478  */  .asciz  "^5      Wassink^^"
                        .balign 4

glabel D_8013148C
/* 02699C 8013148C  */  .asciz  "^5Gail Tilden^^"
                        .balign 4

glabel D_8013149C
/* 0269AC 8013149C  */  .asciz  "^5Hiroko Sugino^^"
                        .balign 4

glabel D_801314B0
/* 0269C0 801314B0  */  .asciz  "^1Hiroyuki Jinnai^^"
                        .balign 4

glabel D_801314C4
/* 0269D4 801314C4  */  .asciz  "^1Jun Fujimoto^^"
                        .balign 4

glabel D_801314D8
/* 0269E8 801314D8  */  .asciz  "^5Kunimi Kawamura^^"
                        .balign 4

glabel D_801314EC
/* 0269FC 801314EC  */  .asciz  "^1Manabu \"Mike\"^^"
                        .balign 4

glabel D_80131500
/* 026A10 80131500  */  .asciz  "^1      Fukuda^^"
                        .balign 4

glabel D_80131514
/* 026A24 80131514  */  .asciz  "^1Minoru Arakawa^^"
                        .balign 4

glabel D_80131528
/* 026A38 80131528  */  .asciz  "^1Satoru Iwata^^"
                        .balign 4

glabel D_8013153C
/* 026A4C 8013153C  */  .asciz  "^1Takashi Kawaguchi^^"
                        .balign 4

glabel D_80131554
/* 026A64 80131554  */  .asciz  " "
                        .balign 4

glabel D_80131558
/* 026A68 80131558  */  .asciz  "^9Nintendo Staff^^"
                        .balign 4

glabel D_8013156C
/* 026A7C 8013156C  */  .asciz  "^9Sarugakucho^^"
                        .balign 4

glabel D_8013157C
/* 026A8C 8013157C  */  .asciz  " "
                        .balign 4

glabel D_80131580
/* 026A90 80131580  */  .asciz  " "
                        .balign 4

glabel D_80131584
/* 026A94 80131584  */  .asciz  "^8Producer^^"
                        .balign 4

glabel D_80131594
/* 026AA4 80131594  */  .asciz  " "
                        .balign 4

glabel D_80131598
/* 026AA8 80131598  */  .asciz  "^1Tsunekazu^^"
                        .balign 4

glabel D_801315A8
/* 026AB8 801315A8  */  .asciz  "^1      Ishihara^^"
                        .balign 4

glabel D_801315BC
/* 026ACC 801315BC  */  .asciz  " "
                        .balign 4

glabel D_801315C0
/* 026AD0 801315C0  */  .asciz  " "
                        .balign 4

glabel D_801315C4
/* 026AD4 801315C4  */  .asciz  " "
                        .balign 4

glabel D_801315C8
/* 026AD8 801315C8  */  .asciz  " "
                        .balign 4

glabel D_801315CC
/* 026ADC 801315CC  */  .asciz  " "
                        .balign 4

glabel D_801315D0
/* 026AE0 801315D0  */  .asciz  " "
                        .balign 4

glabel D_801315D4
/* 026AE4 801315D4  */  .asciz  " "
                        .balign 4

glabel D_801315D8
/* 026AE8 801315D8  */  .asciz  " "
                        .balign 4

glabel D_801315DC
/* 026AEC 801315DC  */  .asciz  " "
                        .balign 4

glabel D_801315E0
/* 026AF0 801315E0  */  .asciz  "^8Developed by^^"
                        .balign 4

glabel D_801315F4
/* 026B04 801315F4  */  .asciz  " "
                        .balign 4

glabel D_801315F8
/* 026B08 801315F8  */  .asciz  " "
                        .balign 4

glabel D_801315FC
/* 026B0C 801315FC  */  .asciz  "^9Ambrella^^"
                        .balign 4

glabel D_8013160C
/* 026B1C 8013160C  */  .asciz  " "
                        .balign 4

glabel D_80131610
/* 026B20 80131610  */  .asciz  " "
                        .balign 4

glabel D_80131614
/* 026B24 80131614  */  .asciz  " "
                        .balign 4

glabel D_80131618
/* 026B28 80131618  */  .asciz  " "
                        .balign 4

glabel D_8013161C
/* 026B2C 8013161C  */  .asciz  " "
                        .balign 4

glabel D_80131620
/* 026B30 80131620  */  .asciz  "^f@i@i@i@i@i@i@i@i@i@i@i ^^"
                        .balign 4
/* 026B4C 8013163C  */  .asciz  ""
                        .balign 4

glabel D_80131640
/* 026B50 80131640  */  .asciz  "saveFCB"
                        .balign 4

glabel D_80131648
/* 026B58 80131648  */  .asciz  "Save to EEPROM"
                        .balign 4

glabel D_80131658
/* 026B68 80131658  */  .asciz  "loadFCB"
                        .balign 4

glabel D_80131660
/* 026B70 80131660  */  .asciz  "Load from EEPROM"
                        .balign 4

glabel D_80131674
/* 026B84 80131674  */  .asciz  "save 2"
                        .balign 4

glabel D_8013167C
/* 026B8C 8013167C  */  .asciz  "Save to EEPROM\nfile 2."
                        .balign 4

glabel D_80131694
/* 026BA4 80131694  */  .asciz  "save 1"
                        .balign 4

glabel D_8013169C
/* 026BAC 8013169C  */  .asciz  "Save to EEPROM\nfile 1."
                        .balign 4

glabel D_801316B4
/* 026BC4 801316B4  */  .asciz  "load 2"
                        .balign 4

glabel D_801316BC
/* 026BCC 801316BC  */  .asciz  "Load from EEPROM\nfile 2."
                        .balign 4

glabel D_801316D8
/* 026BE8 801316D8  */  .asciz  "load 1"
                        .balign 4

glabel D_801316E0
/* 026BF0 801316E0  */  .asciz  "Load from EEPROM\nfile 1."
                        .balign 4

glabel D_801316FC
/* 026C0C 801316FC  */  .asciz  "Save"
                        .balign 4

glabel D_80131704
/* 026C14 80131704  */  .asciz  "Data Save"
                        .balign 4

glabel D_80131710
/* 026C20 80131710  */  .asciz  "Debug"
                        .balign 4

glabel D_80131718
/* 026C28 80131718  */  .asciz  "Sounds"
                        .balign 4

glabel D_80131720
/* 026C30 80131720  */  .asciz  "Songs"
                        .balign 4

glabel D_80131728
/* 026C38 80131728  */  .asciz  "Volume"
                        .balign 4

glabel D_80131730
/* 026C40 80131730  */  .asciz  "Mono"
                        .balign 4

glabel D_80131738
/* 026C48 80131738  */  .asciz  "Set the sound\n to Mono."
                        .balign 4

glabel D_80131750
/* 026C60 80131750  */  .asciz  "Stereo"
                        .balign 4

glabel D_80131758
/* 026C68 80131758  */  .asciz  "Set the sound\n to Stereo."
                        .balign 4

glabel D_80131774
/* 026C84 80131774  */  .asciz  "Sound"
                        .balign 4

glabel D_8013177C
/* 026C8C 8013177C  */  .asciz  "Normal"
                        .balign 4

glabel D_80131784
/* 026C94 80131784  */  .asciz  "In the\n View Mode,\nlook up when\n tilting the\n Control Stick\n forward."
                        .balign 4

glabel D_801317CC
/* 026CDC 801317CC  */  .asciz  "Reverse"
                        .balign 4

glabel D_801317D4
/* 026CE4 801317D4  */  .asciz  "In the\n View Mode,\nlook down when\n tilting the\n Control Stick\n forward."
                        .balign 4

glabel D_8013181C
/* 026D2C 8013181C  */  .asciz  "Control"
                        .balign 4

glabel D_80131824
/* 026D34 80131824  */  .asciz  "Control@a"
                        .balign 4

glabel D_80131830
/* 026D40 80131830  */  .asciz  "Change the\n View Mode\n control\n setting.\nPress @W@X\n#036to open."
                        .balign 4

glabel D_80131874
/* 026D84 80131874  */  .asciz  "Volume@a"
                        .balign 4

glabel D_80131880
/* 026D90 80131880  */  .asciz  "Change the\n volume\n settings.\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_801318B8
/* 026DC8 801318B8  */  .asciz  "Sound@a"
                        .balign 4

glabel D_801318C0
/* 026DD0 801318C0  */  .asciz  "Set to \n Stereo or\n Mono.\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_801318F4
/* 026E04 801318F4  */  .asciz  "Settings"
                        .balign 4

glabel D_80131900
/* 026E10 80131900  */  .asciz  "Never mind"
                        .balign 4

glabel D_8013190C
/* 026E1C 8013190C  */  .asciz  "Go home"
                        .balign 4

glabel D_80131914
/* 026E24 80131914  */  .asciz  "Go home?"
                        .balign 4

glabel D_80131920
/* 026E30 80131920  */  .asciz  "Go home@a"
                        .balign 4

glabel D_8013192C
/* 026E3C 8013192C  */  .asciz  "Choose to\ngo home.\n\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_8013195C
/* 026E6C 8013195C  */  .asciz  "world map"
                        .balign 4

glabel D_80131968
/* 026E78 80131968  */  .asciz  "Debug"
                        .balign 4

glabel D_80131970
/* 026E80 80131970  */  .asciz  "Settings@a"
                        .balign 4

glabel D_8013197C
/* 026E8C 8013197C  */  .asciz  "Change the\n game settings.\n\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_801319B4
/* 026EC4 801319B4  */  .asciz  "Days"
                        .balign 4

glabel D_801319BC
/* 026ECC 801319BC  */  .asciz  "Status"
                        .balign 4

glabel D_801319C4
/* 026ED4 801319C4  */  .asciz  "Menu"
                        .balign 4
/* 026EDC 801319CC  */  .asciz  "right menu buffer overflow.\n"
                        .balign 4

glabel D_801319EC
/* 026EFC 801319EC 406A406A */  .word  0x406A406A
/* 026F00 801319F0 406A406A */  .word  0x406A406A
/* 026F04 801319F4 406A406A */  .word  0x406A406A
/* 026F08 801319F8 406A406A */  .word  0x406A406A
/* 026F0C 801319FC 406A0000 */  .word  0x406A0000

glabel D_80131A00
/* 026F10 80131A00 00000000 */  .word  0x00000000
/* 026F14 80131A04 63757272 */  .word  0x63757272
/* 026F18 80131A08 656E7420 */  .word  0x656E7420
/* 026F1C 80131A0C 6D656E75 */  .word  0x6D656E75
/* 026F20 80131A10 20697465 */  .word  0x20697465
/* 026F24 80131A14 6D203D20 */  .word  0x6D203D20
/* 026F28 80131A18 25730A00 */  .word  0x25730A00
/* 026F2C 80131A1C 73656C20 */  .word  0x73656C20
/* 026F30 80131A20 3D202564 */  .word  0x3D202564
/* 026F34 80131A24 2C206D61 */  .word  0x2C206D61
/* 026F38 80131A28 78203D20 */  .word  0x78203D20
/* 026F3C 80131A2C 25642C20 */  .word  0x25642C20
/* 026F40 80131A30 66726F6D */  .word  0x66726F6D
/* 026F44 80131A34 203D2025 */  .word  0x203D2025
/* 026F48 80131A38 640A0000 */  .word  0x640A0000
/* 026F4C 80131A3C 456E7465 */  .word  0x456E7465
/* 026F50 80131A40 72207379 */  .word  0x72207379
/* 026F54 80131A44 7374656D */  .word  0x7374656D
/* 026F58 80131A48 206D656E */  .word  0x206D656E
/* 026F5C 80131A4C 75206D6F */  .word  0x75206D6F
/* 026F60 80131A50 64652E0A */  .word  0x64652E0A
/* 026F64 80131A54 00000000 */  .word  0x00000000
/* 026F68 80131A58 45786974 */  .word  0x45786974
/* 026F6C 80131A5C 20737973 */  .word  0x20737973
/* 026F70 80131A60 74656D20 */  .word  0x74656D20
/* 026F74 80131A64 6D656E75 */  .word  0x6D656E75
/* 026F78 80131A68 206D6F64 */  .word  0x206D6F64
/* 026F7C 80131A6C 652E0A00 */  .word  0x652E0A00

glabel D_80131A70
/* 026F80 80131A70 0A546F74 */  .word  0x0A546F74
/* 026F84 80131A74 616C0A25 */  .word  0x616C0A25
/* 026F88 80131A78 640A4D61 */  .word  0x640A4D61
/* 026F8C 80131A7C 780A2564 */  .word  0x780A2564
/* 026F90 80131A80 0A000000 */  .word  0x0A000000

glabel D_80131A84
/* 026F94 80131A84 0A257325 */  .word  0x0A257325
/* 026F98 80131A88 73257325 */  .word  0x73257325
/* 026F9C 80131A8C 730A2573 */  .word  0x730A2573
/* 026FA0 80131A90 25732573 */  .word  0x25732573
/* 026FA4 80131A94 25730A25 */  .word  0x25730A25
/* 026FA8 80131A98 73257325 */  .word  0x73257325
/* 026FAC 80131A9C 730A6469 */  .word  0x730A6469
/* 026FB0 80131AA0 73202564 */  .word  0x73202564
/* 026FB4 80131AA4 20616E67 */  .word  0x20616E67
/* 026FB8 80131AA8 2025640A */  .word  0x2025640A
/* 026FBC 80131AAC 73686F70 */  .word  0x73686F70
/* 026FC0 80131AB0 2025640A */  .word  0x2025640A
/* 026FC4 80131AB4 00000000 */  .word  0x00000000

glabel D_80131AB8
/* 026FC8 80131AB8 50770000 */  .word  0x50770000

glabel D_80131ABC
/* 026FCC 80131ABC 58780000 */  .word  0x58780000

glabel D_80131AC0
/* 026FD0 80131AC0 436B0000 */  .word  0x436B0000

glabel D_80131AC4
/* 026FD4 80131AC4 58780000 */  .word  0x58780000

glabel D_80131AC8
/* 026FD8 80131AC8 54620000 */  .word  0x54620000

glabel D_80131ACC
/* 026FDC 80131ACC 58780000 */  .word  0x58780000

glabel D_80131AD0
/* 026FE0 80131AD0 506E0000 */  .word  0x506E0000

glabel D_80131AD4
/* 026FE4 80131AD4 58780000 */  .word  0x58780000

glabel D_80131AD8
/* 026FE8 80131AD8 53700000 */  .word  0x53700000

glabel D_80131ADC
/* 026FEC 80131ADC 58780000 */  .word  0x58780000

glabel D_80131AE0
/* 026FF0 80131AE0 44670000 */  .word  0x44670000

glabel D_80131AE4
/* 026FF4 80131AE4 58780000 */  .word  0x58780000

glabel D_80131AE8
/* 026FF8 80131AE8 43790000 */  .word  0x43790000

glabel D_80131AEC
/* 026FFC 80131AEC 58780000 */  .word  0x58780000

glabel D_80131AF0
/* 027000 80131AF0 48720000 */  .word  0x48720000

glabel D_80131AF4
/* 027004 80131AF4 58780000 */  .word  0x58780000

glabel D_80131AF8
/* 027008 80131AF8 47630000 */  .word  0x47630000

glabel D_80131AFC
/* 02700C 80131AFC 58780000 */  .word  0x58780000

glabel D_80131B00
/* 027010 80131B00 43730000 */  .word  0x43730000

glabel D_80131B04
/* 027014 80131B04 58780000 */  .word  0x58780000

glabel D_80131B08
/* 027018 80131B08 43620000 */  .word  0x43620000

glabel D_80131B0C
/* 02701C 80131B0C 58780000 */  .word  0x58780000

glabel D_80131B10
/* 027020 80131B10 44617973 */  .word  0x44617973
/* 027024 80131B14 20737065 */  .word  0x20737065
/* 027028 80131B18 6E740A20 */  .word  0x6E740A20
/* 02702C 80131B1C 77697468 */  .word  0x77697468
/* 027030 80131B20 2050494B */  .word  0x2050494B
/* 027034 80131B24 41434855 */  .word  0x41434855
/* 027038 80131B28 0A0A2573 */  .word  0x0A0A2573
/* 02703C 80131B2C 25642064 */  .word  0x25642064
/* 027040 80131B30 61792573 */  .word  0x61792573
/* 027044 80131B34 00000000 */  .word  0x00000000

glabel D_80131B38
/* 027048 80131B38 23303532 */  .word  0x23303532
/* 02704C 80131B3C 00000000 */  .word  0x00000000

glabel D_80131B40
/* 027050 80131B40 23303434 */  .word  0x23303434
/* 027054 80131B44 00000000 */  .word  0x00000000

glabel D_80131B48
/* 027058 80131B48 23303336 */  .word  0x23303336
/* 02705C 80131B4C 00000000 */  .word  0x00000000

glabel D_80131B50
/* 027060 80131B50 23303236 */  .word  0x23303236
/* 027064 80131B54 00000000 */  .word  0x00000000

glabel D_80131B58
/* 027068 80131B58 23303136 */  .word  0x23303136
/* 02706C 80131B5C 00000000 */  .word  0x00000000

glabel D_80131B60
/* 027070 80131B60 73000000 */  .word  0x73000000

glabel D_80131B64
/* 027074 80131B64 00000000 */  .word  0x00000000

glabel D_80131B68
/* 027078 80131B68 25730A00 */  .word  0x25730A00

glabel D_80131B6C
/* 02707C 80131B6C 4059405A */  .word  0x4059405A
/* 027080 80131B70 0A000000 */  .word  0x0A000000

glabel D_80131B74
/* 027084 80131B74 23303135 */  .word  0x23303135
/* 027088 80131B78 25640A00 */  .word  0x25640A00

glabel D_80131B7C
/* 02708C 80131B7C 566F6963 */  .word  0x566F6963
/* 027090 80131B80 650A0000 */  .word  0x650A0000

glabel D_80131B84
/* 027094 80131B84 23303135 */  .word  0x23303135
/* 027098 80131B88 25640A00 */  .word  0x25640A00
/* 02709C 80131B8C 73656C65 */  .word  0x73656C65
/* 0270A0 80131B90 63744247 */  .word  0x63744247
/* 0270A4 80131B94 4D203A20 */  .word  0x4D203A20
/* 0270A8 80131B98 25642025 */  .word  0x25642025
/* 0270AC 80131B9C 730A0000 */  .word  0x730A0000
/* 0270B0 80131BA0 73656C65 */  .word  0x73656C65
/* 0270B4 80131BA4 6374536F */  .word  0x6374536F
/* 0270B8 80131BA8 756E6420 */  .word  0x756E6420
/* 0270BC 80131BAC 3A202564 */  .word  0x3A202564
/* 0270C0 80131BB0 2025730A */  .word  0x2025730A
/* 0270C4 80131BB4 00000000 */  .word  0x00000000
/* 0270C8 80131BB8 73656C43 */  .word  0x73656C43
/* 0270CC 80131BBC 68616E6E */  .word  0x68616E6E
/* 0270D0 80131BC0 656C2025 */  .word  0x656C2025
/* 0270D4 80131BC4 640A0000 */  .word  0x640A0000
/* 0270D8 80131BC8 73656C43 */  .word  0x73656C43
/* 0270DC 80131BCC 68617365 */  .word  0x68617365
/* 0270E0 80131BD0 2025640A */  .word  0x2025640A
/* 0270E4 80131BD4 00000000 */  .word  0x00000000
/* 0270E8 80131BD8 73656C44 */  .word  0x73656C44
/* 0270EC 80131BDC 69666669 */  .word  0x69666669
/* 0270F0 80131BE0 63756C74 */  .word  0x63756C74
/* 0270F4 80131BE4 79202564 */  .word  0x79202564
/* 0270F8 80131BE8 0A000000 */  .word  0x0A000000
/* 0270FC 80131BEC 73656C49 */  .word  0x73656C49
/* 027100 80131BF0 65646546 */  .word  0x65646546
/* 027104 80131BF4 6C616720 */  .word  0x6C616720
/* 027108 80131BF8 25640A00 */  .word  0x25640A00
/* 02710C 80131BFC 73656C45 */  .word  0x73656C45
/* 027110 80131C00 61737943 */  .word  0x61737943
/* 027114 80131C04 6F756E74 */  .word  0x6F756E74
/* 027118 80131C08 466C6167 */  .word  0x466C6167
/* 02711C 80131C0C 2025640A */  .word  0x2025640A
/* 027120 80131C10 00000000 */  .word  0x00000000
/* 027124 80131C14 73656C47 */  .word  0x73656C47
/* 027128 80131C18 616D6543 */  .word  0x616D6543
/* 02712C 80131C1C 6C656172 */  .word  0x6C656172
/* 027130 80131C20 466C6167 */  .word  0x466C6167
/* 027134 80131C24 2025640A */  .word  0x2025640A
/* 027138 80131C28 00000000 */  .word  0x00000000
/* 02713C 80131C2C 73656C53 */  .word  0x73656C53
/* 027140 80131C30 7469636B */  .word  0x7469636B
/* 027144 80131C34 52657665 */  .word  0x52657665
/* 027148 80131C38 72736520 */  .word  0x72736520
/* 02714C 80131C3C 25640A00 */  .word  0x25640A00

glabel D_80131C40
/* 027150 80131C40  */  .asciz  "Normal"
                        .balign 4

glabel D_80131C48
/* 027158 80131C48  */  .asciz  "Reading"
                        .balign 4

glabel D_80131C50
/* 027160 80131C50  */  .asciz  "Writeing"
                        .balign 4

glabel D_80131C5C
/* 02716C 80131C5C  */  .asciz  "Read Error"
                        .balign 4

glabel D_80131C68
/* 027178 80131C68  */  .asciz  "CRC Error"
                        .balign 4

glabel D_80131C74
/* 027184 80131C74  */  .asciz  "Write Error"
                        .balign 4
/* 027190 80131C80  */  .asciz  "pdFCB:%x\n"
                        .balign 4

glabel D_80131C8C
/* 02719C 80131C8C 46696C65 */  .word  0x46696C65
/* 0271A0 80131C90 25730A20 */  .word  0x25730A20
/* 0271A4 80131C94 2025730A */  .word  0x2025730A
/* 0271A8 80131C98 46434220 */  .word  0x46434220
/* 0271AC 80131C9C 25732573 */  .word  0x25732573
/* 0271B0 80131CA0 0A000000 */  .word  0x0A000000

glabel D_80131CA4
/* 0271B4 80131CA4 31000000 */  .word  0x31000000

glabel D_80131CA8
/* 0271B8 80131CA8 32000000 */  .word  0x32000000

glabel D_80131CAC
/* 0271BC 80131CAC 31000000 */  .word  0x31000000

glabel D_80131CB0
/* 0271C0 80131CB0 78000000 */  .word  0x78000000

glabel D_80131CB4
/* 0271C4 80131CB4 32000000 */  .word  0x32000000

glabel D_80131CB8
/* 0271C8 80131CB8 78000000 */  .word  0x78000000
/* 0271CC 80131CBC 73656C45 */  .word  0x73656C45
/* 0271D0 80131CC0 4550524F */  .word  0x4550524F
/* 0271D4 80131CC4 4D202564 */  .word  0x4D202564
/* 0271D8 80131CC8 0A000000 */  .word  0x0A000000

glabel D_80131CCC
/* 0271DC 80131CCC  */  .asciz  "Room"
                        .balign 4

glabel D_80131CD4
/* 0271E4 80131CD4  */  .asciz  "GENKAN"
                        .balign 4

glabel D_80131CDC
/* 0271EC 80131CDC  */  .asciz  "Yard"
                        .balign 4

glabel D_80131CE4
/* 0271F4 80131CE4  */  .asciz  "ViridianA"
                        .balign 4

glabel D_80131CF0
/* 027200 80131CF0  */  .asciz  "ViridianB"
                        .balign 4

glabel D_80131CFC
/* 02720C 80131CFC  */  .asciz  "ViridianC"
                        .balign 4

glabel D_80131D08
/* 027218 80131D08  */  .asciz  "SpringleafA"
                        .balign 4

glabel D_80131D14
/* 027224 80131D14  */  .asciz  "SpringleafB"
                        .balign 4

glabel D_80131D20
/* 027230 80131D20  */  .asciz  "SpringleafC"
                        .balign 4

glabel D_80131D2C
/* 02723C 80131D2C  */  .asciz  "OlivineA"
                        .balign 4

glabel D_80131D38
/* 027248 80131D38  */  .asciz  "OlivineB"
                        .balign 4

glabel D_80131D44
/* 027254 80131D44  */  .asciz  "OchreA"
                        .balign 4

glabel D_80131D4C
/* 02725C 80131D4C  */  .asciz  "OchreB"
                        .balign 4

glabel D_80131D54
/* 027264 80131D54  */  .asciz  "CobaltA"
                        .balign 4

glabel D_80131D5C
/* 02726C 80131D5C  */  .asciz  "CobaltB"
                        .balign 4

glabel D_80131D64
/* 027274 80131D64  */  .asciz  "Shop"
                        .balign 4

glabel D_80131D6C
/* 02727C 80131D6C  */  .asciz  "Camp"
                        .balign 4

glabel D_80131D74
/* 027284 80131D74  */  .asciz  "OchreFishing"
                        .balign 4

glabel D_80131D84
/* 027294 80131D84  */  .asciz  "OlivineFishing"
                        .balign 4

glabel D_80131D94
/* 0272A4 80131D94  */  .asciz  "CobaltFishing"
                        .balign 4

glabel D_80131DA4
/* 0272B4 80131DA4  */  .asciz  "ViridianEdge"
                        .balign 4

glabel D_80131DB4
/* 0272C4 80131DB4  */  .asciz  "Backyard"
                        .balign 4

glabel D_80131DC0
/* 0272D0 80131DC0  */  .asciz  "Ending"
                        .balign 4

glabel D_80131DC8
/* 0272D8 80131DC8  */  .asciz  "Area Select"
                        .balign 4

glabel D_80131DD4
/* 0272E4 80131DD4  */  .asciz  "Area Select"
                        .balign 4

glabel D_80131DE0
/* 0272F0 80131DE0  */  .asciz  "Debug"
                        .balign 4

glabel D_80131DE8
/* 0272F8 80131DE8  */  .asciz  "WashHand"
                        .balign 4

glabel D_80131DF4
/* 027304 80131DF4  */  .asciz  "Cooking"
                        .balign 4

glabel D_80131DFC
/* 02730C 80131DFC  */  .asciz  "Dream"
                        .balign 4

glabel D_80131E04
/* 027314 80131E04  */  .asciz  "ICE"
                        .balign 4

glabel D_80131E08
/* 027318 80131E08  */  .asciz  "PotatoFailure"
                        .balign 4

glabel D_80131E18
/* 027328 80131E18  */  .asciz  "PotatoSuccess"
                        .balign 4

glabel D_80131E28
/* 027338 80131E28  */  .asciz  "EyeCatch"
                        .balign 4

glabel D_80131E34
/* 027344 80131E34  */  .asciz  "EyeCatch"
                        .balign 4

glabel D_80131E40
/* 027350 80131E40  */  .asciz  "Debug"
                        .balign 4

glabel D_80131E48
/* 027358 80131E48  */  .asciz  "Advertise"
                        .balign 4

glabel D_80131E54
/* 027364 80131E54  */  .asciz  "Opening"
                        .balign 4

glabel D_80131E5C
/* 02736C 80131E5C  */  .asciz  "Hello"
                        .balign 4

glabel D_80131E64
/* 027374 80131E64  */  .asciz  "Level 1"
                        .balign 4

glabel D_80131E6C
/* 02737C 80131E6C  */  .asciz  "Welcome"
                        .balign 4

glabel D_80131E74
/* 027384 80131E74  */  .asciz  "Level 2"
                        .balign 4

glabel D_80131E7C
/* 02738C 80131E7C  */  .asciz  "Training"
                        .balign 4

glabel D_80131E88
/* 027398 80131E88  */  .asciz  "Level 3"
                        .balign 4

glabel D_80131E90
/* 0273A0 80131E90  */  .asciz  "Final"
                        .balign 4

glabel D_80131E98
/* 0273A8 80131E98  */  .asciz  "Ending"
                        .balign 4

glabel D_80131EA0
/* 0273B0 80131EA0  */  .asciz  "Chapter"
                        .balign 4

glabel D_80131EA8
/* 0273B8 80131EA8  */  .asciz  "Chapter"
                        .balign 4

glabel D_80131EB0
/* 0273C0 80131EB0  */  .asciz  "Debug"
                        .balign 4

glabel D_80131EB8
/* 0273C8 80131EB8  */  .asciz  "Difficulty"
                        .balign 4

glabel D_80131EC4
/* 0273D4 80131EC4  */  .asciz  "Difficulty"
                        .balign 4

glabel D_80131ED0
/* 0273E0 80131ED0  */  .asciz  "Debug"
                        .balign 4
/* 0273E8 80131ED8  */  .asciz  "Easy"
                        .balign 4
/* 0273F0 80131EE0  */  .asciz  "Normal"
                        .balign 4
/* 0273F8 80131EE8  */  .asciz  "Hard"
                        .balign 4

glabel D_80131EF0
/* 027400 80131EF0  */  .asciz  "HELLO"
                        .balign 4

glabel D_80131EF8
/* 027408 80131EF8  */  .asciz  "TOKIWA C 1"
                        .balign 4

glabel D_80131F04
/* 027414 80131F04  */  .asciz  "MOEGI A"
                        .balign 4

glabel D_80131F0C
/* 02741C 80131F0C  */  .asciz  "AKANE 1"
                        .balign 4

glabel D_80131F14
/* 027424 80131F14  */  .asciz  "AKANE FISHING"
                        .balign 4

glabel D_80131F24
/* 027434 80131F24  */  .asciz  "ASAGI FISHING"
                        .balign 4

glabel D_80131F34
/* 027444 80131F34  */  .asciz  "SUOU FISHING"
                        .balign 4

glabel D_80131F44
/* 027454 80131F44  */  .asciz  "MOEGI C"
                        .balign 4

glabel D_80131F4C
/* 02745C 80131F4C  */  .asciz  "AKANE 2"
                        .balign 4

glabel D_80131F54
/* 027464 80131F54  */  .asciz  "ASAGI A"
                        .balign 4

glabel D_80131F5C
/* 02746C 80131F5C  */  .asciz  "SUOU A 2"
                        .balign 4

glabel D_80131F68
/* 027478 80131F68  */  .asciz  "SUOU B"
                        .balign 4

glabel D_80131F70
/* 027480 80131F70  */  .asciz  "TOKKUN"
                        .balign 4

glabel D_80131F78
/* 027488 80131F78  */  .asciz  "TOKIWA C 3"
                        .balign 4

glabel D_80131F84
/* 027494 80131F84  */  .asciz  "MOEGI B"
                        .balign 4

glabel D_80131F8C
/* 02749C 80131F8C  */  .asciz  "ASAGI B"
                        .balign 4

glabel D_80131F94
/* 0274A4 80131F94  */  .asciz  "SUOU A 3"
                        .balign 4

glabel D_80131FA0
/* 0274B0 80131FA0  */  .asciz  "AKANE 3"
                        .balign 4

glabel D_80131FA8
/* 0274B8 80131FA8  */  .asciz  "IEDE"
                        .balign 4

glabel D_80131FB0
/* 0274C0 80131FB0  */  .asciz  "FINAL"
                        .balign 4

glabel D_80131FB8
/* 0274C8 80131FB8  */  .asciz  "CheckPoint"
                        .balign 4

glabel D_80131FC4
/* 0274D4 80131FC4  */  .asciz  "CheckPoint"
                        .balign 4

glabel D_80131FD0
/* 0274E0 80131FD0  */  .asciz  "Debug"
                        .balign 4

glabel D_80131FD8
/* 0274E8 80131FD8  */  .asciz  "DisappearFlag"
                        .balign 4

glabel D_80131FE8
/* 0274F8 80131FE8  */  .asciz  "DisappearFlag"
                        .balign 4

glabel D_80131FF8
/* 027508 80131FF8  */  .asciz  "Debug"
                        .balign 4
/* 027510 80132000  */  .asciz  "Normal"
                        .balign 4
/* 027518 80132008  */  .asciz  "Disappear"
                        .balign 4

glabel D_80132014
/* 027524 80132014  */  .asciz  "ItemFlag"
                        .balign 4

glabel D_80132020
/* 027530 80132020  */  .asciz  "ItemFlag"
                        .balign 4

glabel D_8013202C
/* 02753C 8013202C  */  .asciz  "Debug"
                        .balign 4
/* 027544 80132034  */  .asciz  "Set"
                        .balign 4
/* 027548 80132038  */  .asciz  "Clear"
                        .balign 4

glabel D_80132040
/* 027550 80132040  */  .asciz  "Level 1 counts"
                        .balign 4

glabel D_80132050
/* 027560 80132050  */  .asciz  "Level 1 counts"
                        .balign 4

glabel D_80132060
/* 027570 80132060  */  .asciz  "Debug"
                        .balign 4

glabel D_80132068
/* 027578 80132068  */  .asciz  "0"
                        .balign 4

glabel D_8013206C
/* 02757C 8013206C  */  .asciz  "1"
                        .balign 4

glabel D_80132070
/* 027580 80132070  */  .asciz  "2"
                        .balign 4

glabel D_80132074
/* 027584 80132074  */  .asciz  "3"
                        .balign 4

glabel D_80132078
/* 027588 80132078  */  .asciz  "ClearFlag"
                        .balign 4

glabel D_80132084
/* 027594 80132084  */  .asciz  "ClearFlag"
                        .balign 4

glabel D_80132090
/* 0275A0 80132090  */  .asciz  "Debug\nGameClearFlag"
                        .balign 4
/* 0275B4 801320A4  */  .asciz  "Reset"
                        .balign 4
/* 0275BC 801320AC  */  .asciz  "Set"
                        .balign 4

glabel D_801320B0
/* 0275C0 801320B0  */  .asciz  "Play music"
                        .balign 4

glabel D_801320BC
/* 0275CC 801320BC  */  .asciz  "Play music@a"
                        .balign 4

glabel D_801320CC
/* 0275DC 801320CC  */  .asciz  "Listen to the\n game's music.\n\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_80132104
/* 027614 80132104  */  .asciz  "Butterfree1"
                        .balign 4

glabel D_80132110
/* 027620 80132110  */  .asciz  "Caterpie1"
                        .balign 4

glabel D_8013211C
/* 02762C 8013211C  */  .asciz  "Caterpie2"
                        .balign 4

glabel D_80132128
/* 027638 80132128  */  .asciz  "Caterpie3"
                        .balign 4

glabel D_80132134
/* 027644 80132134  */  .asciz  "Magnemite1"
                        .balign 4

glabel D_80132140
/* 027650 80132140  */  .asciz  "Diglett1"
                        .balign 4

glabel D_8013214C
/* 02765C 8013214C  */  .asciz  "Diglett2"
                        .balign 4

glabel D_80132158
/* 027668 80132158  */  .asciz  "Dodrio1"
                        .balign 4

glabel D_80132160
/* 027670 80132160  */  .asciz  "Venusaur1"
                        .balign 4

glabel D_8013216C
/* 02767C 8013216C  */  .asciz  "Bulbasaur1"
                        .balign 4

glabel D_80132178
/* 027688 80132178  */  .asciz  "Bulbasaur2"
                        .balign 4

glabel D_80132184
/* 027694 80132184  */  .asciz  "Bulbasaur3"
                        .balign 4

glabel D_80132190
/* 0276A0 80132190  */  .asciz  "Bulbasaur4"
                        .balign 4

glabel D_8013219C
/* 0276AC 8013219C  */  .asciz  "Bulbasaur5"
                        .balign 4

glabel D_801321A8
/* 0276B8 801321A8  */  .asciz  "Bulbasaur6"
                        .balign 4

glabel D_801321B4
/* 0276C4 801321B4  */  .asciz  "Bulbasaur7"
                        .balign 4

glabel D_801321C0
/* 0276D0 801321C0  */  .asciz  "Bulbasaur8"
                        .balign 4

glabel D_801321CC
/* 0276DC 801321CC  */  .asciz  "Haunter1"
                        .balign 4

glabel D_801321D8
/* 0276E8 801321D8  */  .asciz  "Haunter2"
                        .balign 4

glabel D_801321E4
/* 0276F4 801321E4  */  .asciz  "Charmander1"
                        .balign 4

glabel D_801321F0
/* 027700 801321F0  */  .asciz  "Abra1"
                        .balign 4

glabel D_801321F8
/* 027708 801321F8  */  .asciz  "Gloom1"
                        .balign 4

glabel D_80132200
/* 027710 80132200  */  .asciz  "Gloom2"
                        .balign 4

glabel D_80132208
/* 027718 80132208  */  .asciz  "Poliwag1"
                        .balign 4

glabel D_80132214
/* 027724 80132214  */  .asciz  "Poliwag2"
                        .balign 4

glabel D_80132220
/* 027730 80132220  */  .asciz  "Poliwag3"
                        .balign 4

glabel D_8013222C
/* 02773C 8013222C  */  .asciz  "Oddish1"
                        .balign 4

glabel D_80132234
/* 027744 80132234  */  .asciz  "Oddish2"
                        .balign 4

glabel D_8013223C
/* 02774C 8013223C  */  .asciz  "Oddish3"
                        .balign 4

glabel D_80132244
/* 027754 80132244  */  .asciz  "Fearow1"
                        .balign 4

glabel D_8013224C
/* 02775C 8013224C  */  .asciz  "Pikachu1"
                        .balign 4

glabel D_80132258
/* 027768 80132258  */  .asciz  "Pikachu2"
                        .balign 4

glabel D_80132264
/* 027774 80132264  */  .asciz  "Pikachu3"
                        .balign 4

glabel D_80132270
/* 027780 80132270  */  .asciz  "Pikachu4"
                        .balign 4

glabel D_8013227C
/* 02778C 8013227C  */  .asciz  "Pikachu5"
                        .balign 4

glabel D_80132288
/* 027798 80132288  */  .asciz  "Pikachu6"
                        .balign 4

glabel D_80132294
/* 0277A4 80132294  */  .asciz  "Pikachu7"
                        .balign 4

glabel D_801322A0
/* 0277B0 801322A0  */  .asciz  "Pikachu8"
                        .balign 4

glabel D_801322AC
/* 0277BC 801322AC  */  .asciz  "Pikachu9"
                        .balign 4

glabel D_801322B8
/* 0277C8 801322B8  */  .asciz  "Pikachu10"
                        .balign 4

glabel D_801322C4
/* 0277D4 801322C4  */  .asciz  "Pikachu11"
                        .balign 4

glabel D_801322D0
/* 0277E0 801322D0  */  .asciz  "Pikachu12"
                        .balign 4

glabel D_801322DC
/* 0277EC 801322DC  */  .asciz  "Pikachu13"
                        .balign 4

glabel D_801322E8
/* 0277F8 801322E8  */  .asciz  "Pikachu14"
                        .balign 4

glabel D_801322F4
/* 027804 801322F4  */  .asciz  "Pikachu15"
                        .balign 4

glabel D_80132300
/* 027810 80132300  */  .asciz  "Pikachu16"
                        .balign 4

glabel D_8013230C
/* 02781C 8013230C  */  .asciz  "Pikachu17"
                        .balign 4

glabel D_80132318
/* 027828 80132318  */  .asciz  "Pikachu18"
                        .balign 4

glabel D_80132324
/* 027834 80132324  */  .asciz  "Pikachu19"
                        .balign 4

glabel D_80132330
/* 027840 80132330  */  .asciz  "Pikachu20"
                        .balign 4

glabel D_8013233C
/* 02784C 8013233C  */  .asciz  "Pikachu21"
                        .balign 4

glabel D_80132348
/* 027858 80132348  */  .asciz  "Pikachu22"
                        .balign 4

glabel D_80132354
/* 027864 80132354  */  .asciz  "Pikachu23"
                        .balign 4

glabel D_80132360
/* 027870 80132360  */  .asciz  "Pikachu24"
                        .balign 4

glabel D_8013236C
/* 02787C 8013236C  */  .asciz  "Pikachu25"
                        .balign 4

glabel D_80132378
/* 027888 80132378  */  .asciz  "Pikachu26"
                        .balign 4

glabel D_80132384
/* 027894 80132384  */  .asciz  "Pikachu27"
                        .balign 4

glabel D_80132390
/* 0278A0 80132390  */  .asciz  "Pikachu28"
                        .balign 4

glabel D_8013239C
/* 0278AC 8013239C  */  .asciz  "Pikachu29"
                        .balign 4

glabel D_801323A8
/* 0278B8 801323A8  */  .asciz  "Pikachu30"
                        .balign 4

glabel D_801323B4
/* 0278C4 801323B4  */  .asciz  "Pikachu31"
                        .balign 4

glabel D_801323C0
/* 0278D0 801323C0  */  .asciz  "Pikachu32"
                        .balign 4

glabel D_801323CC
/* 0278DC 801323CC  */  .asciz  "Pikachu33"
                        .balign 4

glabel D_801323D8
/* 0278E8 801323D8  */  .asciz  "Pikachu34"
                        .balign 4

glabel D_801323E4
/* 0278F4 801323E4  */  .asciz  "Pikachu35"
                        .balign 4

glabel D_801323F0
/* 027900 801323F0  */  .asciz  "Pikachu36"
                        .balign 4

glabel D_801323FC
/* 02790C 801323FC  */  .asciz  "Pikachu37"
                        .balign 4

glabel D_80132408
/* 027918 80132408  */  .asciz  "Pikachu38"
                        .balign 4

glabel D_80132414
/* 027924 80132414  */  .asciz  "Pikachu39"
                        .balign 4

glabel D_80132420
/* 027930 80132420  */  .asciz  "Pikachu40"
                        .balign 4

glabel D_8013242C
/* 02793C 8013242C  */  .asciz  "Pikachu41"
                        .balign 4

glabel D_80132438
/* 027948 80132438  */  .asciz  "Pikachu42"
                        .balign 4

glabel D_80132444
/* 027954 80132444  */  .asciz  "Pikachu43"
                        .balign 4

glabel D_80132450
/* 027960 80132450  */  .asciz  "Pikachu44"
                        .balign 4

glabel D_8013245C
/* 02796C 8013245C  */  .asciz  "Pikachu45"
                        .balign 4

glabel D_80132468
/* 027978 80132468  */  .asciz  "Pikachu46"
                        .balign 4

glabel D_80132474
/* 027984 80132474  */  .asciz  "Pikachu47"
                        .balign 4

glabel D_80132480
/* 027990 80132480  */  .asciz  "Pikachu48"
                        .balign 4

glabel D_8013248C
/* 02799C 8013248C  */  .asciz  "Pikachu49"
                        .balign 4

glabel D_80132498
/* 0279A8 80132498  */  .asciz  "Pikachu50"
                        .balign 4

glabel D_801324A4
/* 0279B4 801324A4  */  .asciz  "Pikachu51"
                        .balign 4

glabel D_801324B0
/* 0279C0 801324B0  */  .asciz  "Pikachu52"
                        .balign 4

glabel D_801324BC
/* 0279CC 801324BC  */  .asciz  "Pikachu53"
                        .balign 4

glabel D_801324C8
/* 0279D8 801324C8  */  .asciz  "Pikachu54"
                        .balign 4

glabel D_801324D4
/* 0279E4 801324D4  */  .asciz  "Pikachu55"
                        .balign 4

glabel D_801324E0
/* 0279F0 801324E0  */  .asciz  "Pikachu56"
                        .balign 4

glabel D_801324EC
/* 0279FC 801324EC  */  .asciz  "Pikachu57"
                        .balign 4

glabel D_801324F8
/* 027A08 801324F8  */  .asciz  "Pikachu58"
                        .balign 4

glabel D_80132504
/* 027A14 80132504  */  .asciz  "Pikachu59"
                        .balign 4

glabel D_80132510
/* 027A20 80132510  */  .asciz  "Pikachu60"
                        .balign 4

glabel D_8013251C
/* 027A2C 8013251C  */  .asciz  "Pikachu61"
                        .balign 4

glabel D_80132528
/* 027A38 80132528  */  .asciz  "Pikachu62"
                        .balign 4

glabel D_80132534
/* 027A44 80132534  */  .asciz  "Pikachu63"
                        .balign 4

glabel D_80132540
/* 027A50 80132540  */  .asciz  "Pikachu64"
                        .balign 4

glabel D_8013254C
/* 027A5C 8013254C  */  .asciz  "Pikachu65"
                        .balign 4

glabel D_80132558
/* 027A68 80132558  */  .asciz  "Pikachu66"
                        .balign 4

glabel D_80132564
/* 027A74 80132564  */  .asciz  "Pikachu67"
                        .balign 4

glabel D_80132570
/* 027A80 80132570  */  .asciz  "Pikachu68"
                        .balign 4

glabel D_8013257C
/* 027A8C 8013257C  */  .asciz  "Pikachu69"
                        .balign 4

glabel D_80132588
/* 027A98 80132588  */  .asciz  "Pikachu70"
                        .balign 4

glabel D_80132594
/* 027AA4 80132594  */  .asciz  "Pikachu71"
                        .balign 4

glabel D_801325A0
/* 027AB0 801325A0  */  .asciz  "Pikachu72"
                        .balign 4

glabel D_801325AC
/* 027ABC 801325AC  */  .asciz  "Pikachu73"
                        .balign 4

glabel D_801325B8
/* 027AC8 801325B8  */  .asciz  "Pikachu74"
                        .balign 4

glabel D_801325C4
/* 027AD4 801325C4  */  .asciz  "Pikachu75"
                        .balign 4

glabel D_801325D0
/* 027AE0 801325D0  */  .asciz  "Pikachu76"
                        .balign 4

glabel D_801325DC
/* 027AEC 801325DC  */  .asciz  "Pikachu77"
                        .balign 4

glabel D_801325E8
/* 027AF8 801325E8  */  .asciz  "Pikachu78"
                        .balign 4

glabel D_801325F4
/* 027B04 801325F4  */  .asciz  "Pikachu79"
                        .balign 4

glabel D_80132600
/* 027B10 80132600  */  .asciz  "Pikachu80"
                        .balign 4

glabel D_8013260C
/* 027B1C 8013260C  */  .asciz  "Pikachu81"
                        .balign 4

glabel D_80132618
/* 027B28 80132618  */  .asciz  "Pikachu82"
                        .balign 4

glabel D_80132624
/* 027B34 80132624  */  .asciz  "Pikachu83"
                        .balign 4

glabel D_80132630
/* 027B40 80132630  */  .asciz  "Pikachu84"
                        .balign 4

glabel D_8013263C
/* 027B4C 8013263C  */  .asciz  "Pikachu85"
                        .balign 4

glabel D_80132648
/* 027B58 80132648  */  .asciz  "Pikachu86"
                        .balign 4

glabel D_80132654
/* 027B64 80132654  */  .asciz  "Pikachu87"
                        .balign 4

glabel D_80132660
/* 027B70 80132660  */  .asciz  "Pikachu88"
                        .balign 4

glabel D_8013266C
/* 027B7C 8013266C  */  .asciz  "Pikachu89"
                        .balign 4

glabel D_80132678
/* 027B88 80132678  */  .asciz  "Pikachu90"
                        .balign 4

glabel D_80132684
/* 027B94 80132684  */  .asciz  "Pikachu91"
                        .balign 4

glabel D_80132690
/* 027BA0 80132690  */  .asciz  "Pikachu92"
                        .balign 4

glabel D_8013269C
/* 027BAC 8013269C  */  .asciz  "Pikachu93"
                        .balign 4

glabel D_801326A8
/* 027BB8 801326A8  */  .asciz  "Pikachu94"
                        .balign 4

glabel D_801326B4
/* 027BC4 801326B4  */  .asciz  "Pikachu95"
                        .balign 4

glabel D_801326C0
/* 027BD0 801326C0  */  .asciz  "Vileplume1"
                        .balign 4

glabel D_801326CC
/* 027BDC 801326CC  */  .asciz  "Togepi1"
                        .balign 4

glabel D_801326D4
/* 027BE4 801326D4  */  .asciz  "Togepi2"
                        .balign 4

glabel D_801326DC
/* 027BEC 801326DC  */  .asciz  "Slowpoke1"
                        .balign 4

glabel D_801326E8
/* 027BF8 801326E8  */  .asciz  "Squirtle1"
                        .balign 4

glabel D_801326F4
/* 027C04 801326F4  */  .asciz  "Squirtle2"
                        .balign 4

glabel D_80132700
/* 027C10 80132700  */  .asciz  "Squirtle3"
                        .balign 4

glabel D_8013270C
/* 027C1C 8013270C  */  .asciz  "Squirtle4"
                        .balign 4

glabel D_80132718
/* 027C28 80132718  */  .asciz  "Ambience1"
                        .balign 4

glabel D_80132724
/* 027C34 80132724  */  .asciz  "Ambience2"
                        .balign 4

glabel D_80132730
/* 027C40 80132730  */  .asciz  "Ambience3"
                        .balign 4

glabel D_8013273C
/* 027C4C 8013273C  */  .asciz  "Ambience4"
                        .balign 4

glabel D_80132748
/* 027C58 80132748  */  .asciz  "Others1"
                        .balign 4

glabel D_80132750
/* 027C60 80132750  */  .asciz  "Pikasound1"
                        .balign 4

glabel D_8013275C
/* 027C6C 8013275C  */  .asciz  "Pikasound2"
                        .balign 4

glabel D_80132768
/* 027C78 80132768  */  .asciz  "Pikasound3"
                        .balign 4

glabel D_80132774
/* 027C84 80132774  */  .asciz  "Pikasound4"
                        .balign 4

glabel D_80132780
/* 027C90 80132780  */  .asciz  "Pikasound5"
                        .balign 4

glabel D_8013278C
/* 027C9C 8013278C  */  .asciz  "Pikasound6"
                        .balign 4

glabel D_80132798
/* 027CA8 80132798  */  .asciz  "Pikasound7"
                        .balign 4

glabel D_801327A4
/* 027CB4 801327A4  */  .asciz  "Pikasound8"
                        .balign 4

glabel D_801327B0
/* 027CC0 801327B0  */  .asciz  "Pikasound9"
                        .balign 4

glabel D_801327BC
/* 027CCC 801327BC  */  .asciz  "Pikasound10"
                        .balign 4

glabel D_801327C8
/* 027CD8 801327C8  */  .asciz  "Pikasound11"
                        .balign 4

glabel D_801327D4
/* 027CE4 801327D4  */  .asciz  "Pikasound12"
                        .balign 4

glabel D_801327E0
/* 027CF0 801327E0  */  .asciz  "Pikasound13"
                        .balign 4

glabel D_801327EC
/* 027CFC 801327EC  */  .asciz  "Player1"
                        .balign 4

glabel D_801327F4
/* 027D04 801327F4  */  .asciz  "Player2"
                        .balign 4

glabel D_801327FC
/* 027D0C 801327FC  */  .asciz  "Player3"
                        .balign 4

glabel D_80132804
/* 027D14 80132804  */  .asciz  "Stage1"
                        .balign 4

glabel D_8013280C
/* 027D1C 8013280C  */  .asciz  "Stage2"
                        .balign 4

glabel D_80132814
/* 027D24 80132814  */  .asciz  "Stage3"
                        .balign 4

glabel D_8013281C
/* 027D2C 8013281C  */  .asciz  "Stage4"
                        .balign 4

glabel D_80132824
/* 027D34 80132824  */  .asciz  "Stage5"
                        .balign 4

glabel D_8013282C
/* 027D3C 8013282C  */  .asciz  "Stage6"
                        .balign 4

glabel D_80132834
/* 027D44 80132834  */  .asciz  "Stage7"
                        .balign 4

glabel D_8013283C
/* 027D4C 8013283C  */  .asciz  "Stage8"
                        .balign 4

glabel D_80132844
/* 027D54 80132844  */  .asciz  "Stage9"
                        .balign 4

glabel D_8013284C
/* 027D5C 8013284C  */  .asciz  "Stage10"
                        .balign 4

glabel D_80132854
/* 027D64 80132854  */  .asciz  "Stage11"
                        .balign 4

glabel D_8013285C
/* 027D6C 8013285C  */  .asciz  "Stage12"
                        .balign 4

glabel D_80132864
/* 027D74 80132864  */  .asciz  "Stage13"
                        .balign 4

glabel D_8013286C
/* 027D7C 8013286C  */  .asciz  "Stage14"
                        .balign 4

glabel D_80132874
/* 027D84 80132874  */  .asciz  "Stage15"
                        .balign 4

glabel D_8013287C
/* 027D8C 8013287C  */  .asciz  "Stage16"
                        .balign 4

glabel D_80132884
/* 027D94 80132884  */  .asciz  "Stage17"
                        .balign 4

glabel D_8013288C
/* 027D9C 8013288C  */  .asciz  "Stage18"
                        .balign 4

glabel D_80132894
/* 027DA4 80132894  */  .asciz  "System1"
                        .balign 4

glabel D_8013289C
/* 027DAC 8013289C  */  .asciz  "System2"
                        .balign 4

glabel D_801328A4
/* 027DB4 801328A4  */  .asciz  "System3"
                        .balign 4

glabel D_801328AC
/* 027DBC 801328AC  */  .asciz  "System4"
                        .balign 4

glabel D_801328B4
/* 027DC4 801328B4  */  .asciz  "System5"
                        .balign 4

glabel D_801328BC
/* 027DCC 801328BC  */  .asciz  "System6"
                        .balign 4

glabel D_801328C4
/* 027DD4 801328C4  */  .asciz  "System7"
                        .balign 4

glabel D_801328CC
/* 027DDC 801328CC  */  .asciz  "System8"
                        .balign 4

glabel D_801328D4
/* 027DE4 801328D4  */  .asciz  "System9"
                        .balign 4

glabel D_801328DC
/* 027DEC 801328DC  */  .asciz  "System10"
                        .balign 4

glabel D_801328E8
/* 027DF8 801328E8  */  .asciz  "System11"
                        .balign 4

glabel D_801328F4
/* 027E04 801328F4  */  .asciz  "System12"
                        .balign 4

glabel D_80132900
/* 027E10 80132900  */  .asciz  "System13"
                        .balign 4

glabel D_8013290C
/* 027E1C 8013290C  */  .asciz  "System14"
                        .balign 4

glabel D_80132918
/* 027E28 80132918  */  .asciz  "System15"
                        .balign 4

glabel D_80132924
/* 027E34 80132924  */  .asciz  "System16"
                        .balign 4

glabel D_80132930
/* 027E40 80132930  */  .asciz  "System17"
                        .balign 4

glabel D_8013293C
/* 027E4C 8013293C  */  .asciz  "System18"
                        .balign 4

glabel D_80132948
/* 027E58 80132948  */  .asciz  "System19"
                        .balign 4

glabel D_80132954
/* 027E64 80132954  */  .asciz  "System20"
                        .balign 4

glabel D_80132960
/* 027E70 80132960  */  .asciz  "System21"
                        .balign 4

glabel D_8013296C
/* 027E7C 8013296C  */  .asciz  "System22"
                        .balign 4

glabel D_80132978
/* 027E88 80132978  */  .asciz  "System23"
                        .balign 4

glabel D_80132984
/* 027E94 80132984  */  .asciz  "System24"
                        .balign 4

glabel D_80132990
/* 027EA0 80132990  */  .asciz  "System25"
                        .balign 4

glabel D_8013299C
/* 027EAC 8013299C  */  .asciz  "System26"
                        .balign 4

glabel D_801329A8
/* 027EB8 801329A8  */  .asciz  "System27"
                        .balign 4

glabel D_801329B4
/* 027EC4 801329B4  */  .asciz  "System28"
                        .balign 4

glabel D_801329C0
/* 027ED0 801329C0  */  .asciz  "System29"
                        .balign 4

glabel D_801329CC
/* 027EDC 801329CC  */  .asciz  "Play sounds"
                        .balign 4

glabel D_801329D8
/* 027EE8 801329D8  */  .asciz  "Play sounds@a"
                        .balign 4

glabel D_801329E8
/* 027EF8 801329E8  */  .asciz  "Listen to the\n game's sound\n effects.\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_80132A28
/* 027F38 80132A28  */  .asciz  "Extras"
                        .balign 4

glabel D_80132A30
/* 027F40 80132A30  */  .asciz  "Extras@a"
                        .balign 4

glabel D_80132A3C
/* 027F4C 80132A3C  */  .asciz  "Extras\n\n\n\nPress @W@X\n#036to open."
                        .balign 4

glabel D_80132A60
/* 027F70 80132A60 40640000 */  .word  0x40640000

glabel D_80132A64
/* 027F74 80132A64 40620000 */  .word  0x40620000

glabel D_80132A68
/* 027F78 80132A68 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_80132A70
/* 027F80 80132A70 4056800000000000 */  .double  90.0

glabel D_80132A78
/* 027F88 80132A78 C0D9999A */  .float  -6.800000190734863

glabel D_80132A7C
/* 027F8C 80132A7C C049999A */  .float  -3.1500000953674316

glabel D_80132A80
/* 027F90 80132A80 3FB999999999999A */  .double  0.1

glabel jtbl_80132A88
/* 027F98 80132A88 8011B720 */  .word  L8011B720
/* 027F9C 80132A8C 8011B73C */  .word  L8011B73C
/* 027FA0 80132A90 8011B758 */  .word  L8011B758
/* 027FA4 80132A94 8011B774 */  .word  L8011B774
/* 027FA8 80132A98 8011B790 */  .word  L8011B790
/* 027FAC 80132A9C 8011B7A0 */  .word  L8011B7A0
/* 027FB0 80132AA0 25730000 */  .word  0x25730000
/* 027FB4 80132AA4 25730A00 */  .word  0x25730A00
/* 027FB8 80132AA8 61637469 */  .word  0x61637469
/* 027FBC 80132AAC 6F6E4E75 */  .word  0x6F6E4E75
/* 027FC0 80132AB0 6D3A2564 */  .word  0x6D3A2564
/* 027FC4 80132AB4 2074696D */  .word  0x2074696D
/* 027FC8 80132AB8 653A2566 */  .word  0x653A2566
/* 027FCC 80132ABC 0A000000 */  .word  0x0A000000

glabel D_80132AC0
/* 027FD0 80132AC0  */  .asciz  "SNG_B_ADVERTISE"
                        .balign 4

glabel D_80132AD0
/* 027FE0 80132AD0  */  .asciz  "SNG_B_CAMP"
                        .balign 4

glabel D_80132ADC
/* 027FEC 80132ADC  */  .asciz  "SNG_B_COMICALJ"
                        .balign 4

glabel D_80132AEC
/* 027FFC 80132AEC  */  .asciz  "SNG_B_EMOTION"
                        .balign 4

glabel D_80132AFC
/* 02800C 80132AFC  */  .asciz  "SNG_B_EYECATCH"
                        .balign 4

glabel D_80132B0C
/* 02801C 80132B0C  */  .asciz  "SNG_B_FARM"
                        .balign 4

glabel D_80132B18
/* 028028 80132B18  */  .asciz  "SNG_B_FOREST"
                        .balign 4

glabel D_80132B28
/* 028038 80132B28  */  .asciz  "SNG_B_HELLO"
                        .balign 4

glabel D_80132B34
/* 028044 80132B34  */  .asciz  "SNG_B_MAP"
                        .balign 4

glabel D_80132B40
/* 028050 80132B40  */  .asciz  "SNG_B_MAP2"
                        .balign 4

glabel D_80132B4C
/* 02805C 80132B4C  */  .asciz  "SNG_B_MAP3"
                        .balign 4

glabel D_80132B58
/* 028068 80132B58  */  .asciz  "SNG_B_MIST"
                        .balign 4

glabel D_80132B64
/* 028074 80132B64  */  .asciz  "SNG_B_MYROOM"
                        .balign 4

glabel D_80132B74
/* 028084 80132B74  */  .asciz  "SNG_B_NAMEENTRY"
                        .balign 4

glabel D_80132B84
/* 028094 80132B84  */  .asciz  "SNG_B_OTUKAI"
                        .balign 4

glabel D_80132B94
/* 0280A4 80132B94  */  .asciz  "SNG_B_QUIZ1"
                        .balign 4

glabel D_80132BA0
/* 0280B0 80132BA0  */  .asciz  "SNG_B_QUIZ2"
                        .balign 4

glabel D_80132BAC
/* 0280BC 80132BAC  */  .asciz  "SNG_B_RUNAWAY"
                        .balign 4

glabel D_80132BBC
/* 0280CC 80132BBC  */  .asciz  "SNG_B_SAWAYAKA"
                        .balign 4

glabel D_80132BCC
/* 0280DC 80132BCC  */  .asciz  "SNG_B_STAGECLEAR"
                        .balign 4

glabel D_80132BE0
/* 0280F0 80132BE0  */  .asciz  "SNG_B_STORYTITLE"
                        .balign 4

glabel D_80132BF4
/* 028104 80132BF4  */  .asciz  "SNG_B_STORYTITLE2"
                        .balign 4

glabel D_80132C08
/* 028118 80132C08  */  .asciz  "SNG_B_SUCCESS1"
                        .balign 4

glabel D_80132C18
/* 028128 80132C18  */  .asciz  "SNG_B_SUNSET"
                        .balign 4

glabel D_80132C28
/* 028138 80132C28  */  .asciz  "SNG_B_SYOKUJI"
                        .balign 4

glabel D_80132C38
/* 028148 80132C38  */  .asciz  "SNG_B_THINKING"
                        .balign 4

glabel D_80132C48
/* 028158 80132C48  */  .asciz  "SNG_J_BOO"
                        .balign 4

glabel D_80132C54
/* 028164 80132C54  */  .asciz  "SNG_J_CALL"
                        .balign 4

glabel D_80132C60
/* 028170 80132C60  */  .asciz  "SNG_J_EVEND"
                        .balign 4

glabel D_80132C6C
/* 02817C 80132C6C  */  .asciz  "SNG_J_EVGOOD"
                        .balign 4

glabel D_80132C7C
/* 02818C 80132C7C  */  .asciz  "SNG_J_EVOLVED"
                        .balign 4

glabel D_80132C8C
/* 02819C 80132C8C  */  .asciz  "SNG_J_EVOLVING"
                        .balign 4

glabel D_80132C9C
/* 0281AC 80132C9C  */  .asciz  "SNG_J_EYEICON"
                        .balign 4

glabel D_80132CAC
/* 0281BC 80132CAC  */  .asciz  "SNG_J_EYEMODE"
                        .balign 4

glabel D_80132CBC
/* 0281CC 80132CBC  */  .asciz  "SNG_J_FAIL"
                        .balign 4

glabel D_80132CC8
/* 0281D8 80132CC8  */  .asciz  "SNG_J_HARMO1"
                        .balign 4

glabel D_80132CD8
/* 0281E8 80132CD8  */  .asciz  "SNG_J_HARMO2"
                        .balign 4

glabel D_80132CE8
/* 0281F8 80132CE8  */  .asciz  "SNG_J_LEVELDOWN"
                        .balign 4

glabel D_80132CF8
/* 028208 80132CF8  */  .asciz  "SNG_J_LEVELUP"
                        .balign 4

glabel D_80132D08
/* 028218 80132D08  */  .asciz  "SNG_J_PIKASPIN"
                        .balign 4

glabel D_80132D18
/* 028228 80132D18  */  .asciz  "SNG_J_PINPON"
                        .balign 4

glabel D_80132D28
/* 028238 80132D28  */  .asciz  "SNG_J_RAPPA1"
                        .balign 4

glabel D_80132D38
/* 028248 80132D38  */  .asciz  "SNG_J_RAPPA2"
                        .balign 4

glabel D_80132D48
/* 028258 80132D48  */  .asciz  "SNG_J_SEASHORES"
                        .balign 4

glabel D_80132D58
/* 028268 80132D58  */  .asciz  "SNG_J_SUCCESS"
                        .balign 4
/* 028278 80132D68  */  .asciz  ""
                        .balign 4
/* 02827C 80132D6C  */  .asciz  ""
                        .balign 4
/* 028280 80132D70  */  .asciz  "warning: item %p(%s) is out of maze\n"
                        .balign 4
/* 0282A8 80132D98  */  .asciz  "%s = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 0282C4 80132DB4  */  .asciz  "obj->xyz"
                        .balign 4
/* 0282D0 80132DC0  */  .asciz  "mov_x:%f mov_z:%f fallSpeed:%f\n"
                        .balign 4
/* 0282F0 80132DE0  */  .asciz  "Error: item(%p) is no more held by object(%p).\n"
                        .balign 4

glabel D_80132E10
/* 028320 80132E10 3E4CCCCD */  .float  0.20000000298023224

glabel D_80132E14
/* 028324 80132E14 3F4CCCCD */  .float  0.800000011920929

glabel D_80132E18
/* 028328 80132E18 3C23D70A */  .float  0.009999999776482582

glabel D_80132E1C
/* 02832C 80132E1C BC23D70A */  .float  -0.009999999776482582

glabel D_80132E20
/* 028330 80132E20 3F4CCCCD */  .float  0.800000011920929

glabel D_80132E24
/* 028334 80132E24 3E99999A */  .float  0.30000001192092896

glabel D_80132E28
/* 028338 80132E28 42652EE0 */  .float  57.2957763671875

glabel D_80132E2C
/* 02833C 80132E2C 3F666666 */  .float  0.8999999761581421

glabel D_80132E30
/* 028340 80132E30 3E4CCCCD */  .float  0.20000000298023224

glabel D_80132E34
/* 028344 80132E34 3F333333 */  .float  0.699999988079071

glabel D_80132E38
/* 028348 80132E38 40511111 */  .float  3.2666666507720947

glabel D_80132E3C
/* 02834C 80132E3C BF333333 */  .float  -0.699999988079071

glabel D_80132E40
/* 028350 80132E40 BF333333 */  .float  -0.699999988079071

glabel D_80132E44
/* 028354 80132E44 BF666666 */  .float  -0.8999999761581421

glabel D_80132E48
/* 028358 80132E48 3F666666 */  .float  0.8999999761581421

glabel D_80132E4C
/* 02835C 80132E4C 3D4CCCCC */  .float  0.04999999701976776

glabel D_80132E50
/* 028360 80132E50 3C23D70A */  .float  0.009999999776482582
/* 028364 80132E54 00000000 */  .float  0.0
/* 028368 80132E58 00000000 */  .float  0.0
/* 02836C 80132E5C 00000000 */  .float  0.0

glabel D_80132E60
/* 028370 80132E60  */  .asciz  "SND_BF_FR"
                        .balign 4

glabel D_80132E6C
/* 02837C 80132E6C  */  .asciz  "SND_CA_HHH"
                        .balign 4

glabel D_80132E78
/* 028388 80132E78  */  .asciz  "SND_CA_IAH"
                        .balign 4

glabel D_80132E84
/* 028394 80132E84  */  .asciz  "SND_CA_WEA"
                        .balign 4

glabel D_80132E90
/* 0283A0 80132E90  */  .asciz  "SND_CO_C"
                        .balign 4

glabel D_80132E9C
/* 0283AC 80132E9C  */  .asciz  "SND_DG_DG"
                        .balign 4

glabel D_80132EA8
/* 0283B8 80132EA8  */  .asciz  "SND_DG_DGD"
                        .balign 4

glabel D_80132EB4
/* 0283C4 80132EB4  */  .asciz  "SND_DO_AEAA"
                        .balign 4

glabel D_80132EC0
/* 0283D0 80132EC0  */  .asciz  "SND_FB_BNBN"
                        .balign 4

glabel D_80132ECC
/* 0283DC 80132ECC  */  .asciz  "SND_FD_DN"
                        .balign 4

glabel D_80132ED8
/* 0283E8 80132ED8  */  .asciz  "SND_FD_DND"
                        .balign 4

glabel D_80132EE4
/* 0283F4 80132EE4  */  .asciz  "SND_FD_DNDN"
                        .balign 4

glabel D_80132EF0
/* 028400 80132EF0  */  .asciz  "SND_FD_DNDND"
                        .balign 4

glabel D_80132F00
/* 028410 80132F00  */  .asciz  "SND_FD_DNDNDN"
                        .balign 4

glabel D_80132F10
/* 028420 80132F10  */  .asciz  "SND_FD_DNE"
                        .balign 4

glabel D_80132F1C
/* 02842C 80132F1C  */  .asciz  "SND_FD_DNEDNE"
                        .balign 4

glabel D_80132F2C
/* 02843C 80132F2C  */  .asciz  "SND_FD_FSDNDN"
                        .balign 4

glabel D_80132F3C
/* 02844C 80132F3C  */  .asciz  "SND_GH_BHHH"
                        .balign 4

glabel D_80132F48
/* 028458 80132F48  */  .asciz  "SND_GH_GS"
                        .balign 4

glabel D_80132F54
/* 028464 80132F54  */  .asciz  "SND_HI_KGE"
                        .balign 4

glabel D_80132F60
/* 028470 80132F60  */  .asciz  "SND_KC_KC"
                        .balign 4

glabel D_80132F6C
/* 02847C 80132F6C  */  .asciz  "SND_KH_HN"
                        .balign 4

glabel D_80132F78
/* 028488 80132F78  */  .asciz  "SND_KH_KS"
                        .balign 4

glabel D_80132F84
/* 028494 80132F84  */  .asciz  "SND_NM_NR"
                        .balign 4

glabel D_80132F90
/* 0284A0 80132F90  */  .asciz  "SND_NM_NRNR"
                        .balign 4

glabel D_80132F9C
/* 0284AC 80132F9C  */  .asciz  "SND_NM_NY"
                        .balign 4

glabel D_80132FA8
/* 0284B8 80132FA8  */  .asciz  "SND_NZ_NAA"
                        .balign 4

glabel D_80132FB4
/* 0284C4 80132FB4  */  .asciz  "SND_NZ_NZNZ"
                        .balign 4

glabel D_80132FC0
/* 0284D0 80132FC0  */  .asciz  "SND_NZ_ZO"
                        .balign 4

glabel D_80132FCC
/* 0284DC 80132FCC  */  .asciz  "SND_ON_OGA"
                        .balign 4

glabel D_80132FD8
/* 0284E8 80132FD8  */  .asciz  "SND_PI_F_A_BGJ"
                        .balign 4

glabel D_80132FE8
/* 0284F8 80132FE8  */  .asciz  "SND_PI_F_A_BKJ"
                        .balign 4

glabel D_80132FF8
/* 028508 80132FF8  */  .asciz  "SND_PI_F_A_C"
                        .balign 4

glabel D_80133008
/* 028518 80133008  */  .asciz  "SND_PI_F_A_CA"
                        .balign 4

glabel D_80133018
/* 028528 80133018  */  .asciz  "SND_PI_F_A_CU"
                        .balign 4

glabel D_80133028
/* 028538 80133028  */  .asciz  "SND_PI_F_A_P"
                        .balign 4

glabel D_80133038
/* 028548 80133038  */  .asciz  "SND_PI_F_A_PIKAC"
                        .balign 4

glabel D_8013304C
/* 02855C 8013304C  */  .asciz  "SND_PI_F_A_PIKC"
                        .balign 4

glabel D_8013305C
/* 02856C 8013305C  */  .asciz  "SND_PI_F_A_PK"
                        .balign 4

glabel D_8013306C
/* 02857C 8013306C  */  .asciz  "SND_PI_F_A_PKAC"
                        .balign 4

glabel D_8013307C
/* 02858C 8013307C  */  .asciz  "SND_PI_F_A_PKC"
                        .balign 4

glabel D_8013308C
/* 02859C 8013308C  */  .asciz  "SND_PI_F_A_PKPK"
                        .balign 4

glabel D_8013309C
/* 0285AC 8013309C  */  .asciz  "SND_PI_F_H_C"
                        .balign 4

glabel D_801330AC
/* 0285BC 801330AC  */  .asciz  "SND_PI_F_H_PK"
                        .balign 4

glabel D_801330BC
/* 0285CC 801330BC  */  .asciz  "SND_PI_F_H_PKA"
                        .balign 4

glabel D_801330CC
/* 0285DC 801330CC  */  .asciz  "SND_PI_F_I_B"
                        .balign 4

glabel D_801330DC
/* 0285EC 801330DC  */  .asciz  "SND_PI_F_I_BBKC"
                        .balign 4

glabel D_801330EC
/* 0285FC 801330EC  */  .asciz  "SND_PI_F_I_BIIK"
                        .balign 4

glabel D_801330FC
/* 02860C 801330FC  */  .asciz  "SND_PI_F_I_BIK"
                        .balign 4

glabel D_8013310C
/* 02861C 8013310C  */  .asciz  "SND_PI_F_I_BIKA"
                        .balign 4

glabel D_8013311C
/* 02862C 8013311C  */  .asciz  "SND_PI_F_I_BIKC"
                        .balign 4

glabel D_8013312C
/* 02863C 8013312C  */  .asciz  "SND_PI_F_I_BK"
                        .balign 4

glabel D_8013313C
/* 02864C 8013313C  */  .asciz  "SND_PI_F_I_BKBKC"
                        .balign 4

glabel D_80133150
/* 028660 80133150  */  .asciz  "SND_PI_F_I_BKC"
                        .balign 4

glabel D_80133160
/* 028670 80133160  */  .asciz  "SND_PI_F_I_C"
                        .balign 4

glabel D_80133170
/* 028680 80133170  */  .asciz  "SND_PI_F_I_CU"
                        .balign 4

glabel D_80133180
/* 028690 80133180  */  .asciz  "SND_PI_F_I_PIIKC"
                        .balign 4

glabel D_80133194
/* 0286A4 80133194  */  .asciz  "SND_PI_F_I_PIKAC"
                        .balign 4

glabel D_801331A8
/* 0286B8 801331A8  */  .asciz  "SND_PI_F_I_PIKACHU"
                        .balign 4

glabel D_801331BC
/* 0286CC 801331BC  */  .asciz  "SND_PI_F_I_PIKACU"
                        .balign 4

glabel D_801331D0
/* 0286E0 801331D0  */  .asciz  "SND_PI_F_I_PIKC"
                        .balign 4

glabel D_801331E0
/* 0286F0 801331E0  */  .asciz  "SND_PI_F_I_PIKCU"
                        .balign 4

glabel D_801331F4
/* 028704 801331F4  */  .asciz  "SND_PI_F_I_PK"
                        .balign 4

glabel D_80133204
/* 028714 80133204  */  .asciz  "SND_PI_F_I_PKC"
                        .balign 4

glabel D_80133214
/* 028724 80133214  */  .asciz  "SND_PI_F_K_C"
                        .balign 4

glabel D_80133224
/* 028734 80133224  */  .asciz  "SND_PI_F_K_PK"
                        .balign 4

glabel D_80133234
/* 028744 80133234  */  .asciz  "SND_PI_F_K_PKC"
                        .balign 4

glabel D_80133244
/* 028754 80133244  */  .asciz  "SND_PI_F_K_PKPK"
                        .balign 4

glabel D_80133254
/* 028764 80133254  */  .asciz  "SND_PI_F_N_BK"
                        .balign 4

glabel D_80133264
/* 028774 80133264  */  .asciz  "SND_PI_F_N_CPKPK"
                        .balign 4

glabel D_80133278
/* 028788 80133278  */  .asciz  "SND_PI_F_N_GGNC"
                        .balign 4

glabel D_80133288
/* 028798 80133288  */  .asciz  "SND_PI_F_N_KC"
                        .balign 4

glabel D_80133298
/* 0287A8 80133298  */  .asciz  "SND_PI_F_N_PIIIK"
                        .balign 4

glabel D_801332AC
/* 0287BC 801332AC  */  .asciz  "SND_PI_F_N_PIIIKA"
                        .balign 4

glabel D_801332C0
/* 0287D0 801332C0  */  .asciz  "SND_PI_F_N_PIIK"
                        .balign 4

glabel D_801332D0
/* 0287E0 801332D0  */  .asciz  "SND_PI_F_N_PIIKA"
                        .balign 4

glabel D_801332E4
/* 0287F4 801332E4  */  .asciz  "SND_PI_F_N_PIK"
                        .balign 4

glabel D_801332F4
/* 028804 801332F4  */  .asciz  "SND_PI_F_N_PIKA"
                        .balign 4

glabel D_80133304
/* 028814 80133304  */  .asciz  "SND_PI_F_N_PIKAA"
                        .balign 4

glabel D_80133318
/* 028828 80133318  */  .asciz  "SND_PI_F_N_PKA"
                        .balign 4

glabel D_80133328
/* 028838 80133328  */  .asciz  "SND_PI_F_N_PKAA"
                        .balign 4

glabel D_80133338
/* 028848 80133338  */  .asciz  "SND_PI_F_N_PKC"
                        .balign 4

glabel D_80133348
/* 028858 80133348  */  .asciz  "SND_PI_F_N_PKCUU"
                        .balign 4

glabel D_8013335C
/* 02886C 8013335C  */  .asciz  "SND_PI_F_N_PKHPKH"
                        .balign 4

glabel D_80133370
/* 028880 80133370  */  .asciz  "SND_PI_F_N_PKPK"
                        .balign 4

glabel D_80133380
/* 028890 80133380  */  .asciz  "SND_PI_F_O_C"
                        .balign 4

glabel D_80133390
/* 0288A0 80133390  */  .asciz  "SND_PI_F_O_NPKH"
                        .balign 4

glabel D_801333A0
/* 0288B0 801333A0  */  .asciz  "SND_PI_F_O_PPPKCU"
                        .balign 4

glabel D_801333B4
/* 0288C4 801333B4  */  .asciz  "SND_PI_F_Y_C"
                        .balign 4

glabel D_801333C4
/* 0288D4 801333C4  */  .asciz  "SND_PI_F_Y_CNCC"
                        .balign 4

glabel D_801333D4
/* 0288E4 801333D4  */  .asciz  "SND_PI_F_Y_CPKPK"
                        .balign 4

glabel D_801333E8
/* 0288F8 801333E8  */  .asciz  "SND_PI_F_Y_HKC"
                        .balign 4

glabel D_801333F8
/* 028908 801333F8  */  .asciz  "SND_PI_F_Y_PHHHPHH"
                        .balign 4

glabel D_8013340C
/* 02891C 8013340C  */  .asciz  "SND_PI_F_Y_PHHKPKPH"
                        .balign 4

glabel D_80133420
/* 028930 80133420  */  .asciz  "SND_PI_F_Y_PIIK"
                        .balign 4

glabel D_80133430
/* 028940 80133430  */  .asciz  "SND_PI_F_Y_PIIKAC"
                        .balign 4

glabel D_80133444
/* 028954 80133444  */  .asciz  "SND_PI_F_Y_PIIKC"
                        .balign 4

glabel D_80133458
/* 028968 80133458  */  .asciz  "SND_PI_F_Y_PIIKPKC"
                        .balign 4

glabel D_8013346C
/* 02897C 8013346C  */  .asciz  "SND_PI_F_Y_PIK"
                        .balign 4

glabel D_8013347C
/* 02898C 8013347C  */  .asciz  "SND_PI_F_Y_PIKAC"
                        .balign 4

glabel D_80133490
/* 0289A0 80133490  */  .asciz  "SND_PI_F_Y_PIKACHU"
                        .balign 4

glabel D_801334A4
/* 0289B4 801334A4  */  .asciz  "SND_PI_F_Y_PIKC"
                        .balign 4

glabel D_801334B4
/* 0289C4 801334B4  */  .asciz  "SND_PI_F_Y_PIKCU"
                        .balign 4

glabel D_801334C8
/* 0289D8 801334C8  */  .asciz  "SND_PI_F_Y_PIKKA"
                        .balign 4

glabel D_801334DC
/* 0289EC 801334DC  */  .asciz  "SND_PI_F_Y_PIKPKC"
                        .balign 4

glabel D_801334F0
/* 028A00 801334F0  */  .asciz  "SND_PI_F_Y_PK"
                        .balign 4

glabel D_80133500
/* 028A10 80133500  */  .asciz  "SND_PI_F_Y_PKA"
                        .balign 4

glabel D_80133510
/* 028A20 80133510  */  .asciz  "SND_PI_F_Y_PKC"
                        .balign 4

glabel D_80133520
/* 028A30 80133520  */  .asciz  "SND_PI_F_Y_PKCU"
                        .balign 4

glabel D_80133530
/* 028A40 80133530  */  .asciz  "SND_PI_F_Y_PKKKK"
                        .balign 4

glabel D_80133544
/* 028A54 80133544  */  .asciz  "SND_PI_F_Y_PKPKC"
                        .balign 4

glabel D_80133558
/* 028A68 80133558  */  .asciz  "SND_PI_F_Y_PKPKPKC"
                        .balign 4

glabel D_8013356C
/* 028A7C 8013356C  */  .asciz  "SND_PI_F_Y_PKPKPKJ"
                        .balign 4

glabel D_80133580
/* 028A90 80133580  */  .asciz  "SND_PI_F_Y_PPKC"
                        .balign 4

glabel D_80133590
/* 028AA0 80133590  */  .asciz  "SND_PI_U_A_P"
                        .balign 4

glabel D_801335A0
/* 028AB0 801335A0  */  .asciz  "SND_PI_U_N_PIKC"
                        .balign 4

glabel D_801335B0
/* 028AC0 801335B0  */  .asciz  "SND_PI_U_N_PK"
                        .balign 4

glabel D_801335C0
/* 028AD0 801335C0  */  .asciz  "SND_PI_U_N_PKBBBPKJ"
                        .balign 4

glabel D_801335D4
/* 028AE4 801335D4  */  .asciz  "SND_PI_U_N_PKC"
                        .balign 4

glabel D_801335E4
/* 028AF4 801335E4  */  .asciz  "SND_PI_U_N_PKPKA"
                        .balign 4

glabel D_801335F8
/* 028B08 801335F8  */  .asciz  "SND_PI_U_N_PKPKPK"
                        .balign 4

glabel D_8013360C
/* 028B1C 8013360C  */  .asciz  "SND_PI_U_O_P"
                        .balign 4

glabel D_8013361C
/* 028B2C 8013361C  */  .asciz  "SND_PI_U_O_PK"
                        .balign 4

glabel D_8013362C
/* 028B3C 8013362C  */  .asciz  "SND_PI_U_Y_PIK"
                        .balign 4

glabel D_8013363C
/* 028B4C 8013363C  */  .asciz  "SND_PI_U_Y_PK"
                        .balign 4

glabel D_8013364C
/* 028B5C 8013364C  */  .asciz  "SND_RF_RFRFR"
                        .balign 4

glabel D_8013365C
/* 028B6C 8013365C  */  .asciz  "SND_TP_TKPRRY"
                        .balign 4

glabel D_8013366C
/* 028B7C 8013366C  */  .asciz  "SND_TP_TKPRY"
                        .balign 4

glabel D_8013367C
/* 028B8C 8013367C  */  .asciz  "SND_YD_YD"
                        .balign 4

glabel D_80133688
/* 028B98 80133688  */  .asciz  "SND_ZE_JNJN"
                        .balign 4

glabel D_80133694
/* 028BA4 80133694  */  .asciz  "SND_ZE_ZGZNG"
                        .balign 4

glabel D_801336A4
/* 028BB4 801336A4  */  .asciz  "SND_ZE_ZNGMGMG"
                        .balign 4

glabel D_801336B4
/* 028BC4 801336B4  */  .asciz  "SND_ZE_ZNZN"
                        .balign 4

glabel D_801336C0
/* 028BD0 801336C0  */  .asciz  "SND__EN_BIRDS"
                        .balign 4

glabel D_801336D0
/* 028BE0 801336D0  */  .asciz  "SND__EN_INSECTS"
                        .balign 4

glabel D_801336E0
/* 028BF0 801336E0  */  .asciz  "SND__EN_KARASU"
                        .balign 4

glabel D_801336F0
/* 028C00 801336F0  */  .asciz  "SND__EN_RIVER_LOOP"
                        .balign 4

glabel D_80133704
/* 028C14 80133704  */  .asciz  "SND__ET_AMBLOGO2"
                        .balign 4

glabel D_80133718
/* 028C28 80133718  */  .asciz  "SND__PI_ASIFURI"
                        .balign 4

glabel D_80133728
/* 028C38 80133728  */  .asciz  "SND__PI_BIRIBIRI"
                        .balign 4

glabel D_8013373C
/* 028C4C 8013373C  */  .asciz  "SND__PI_CONCENTRATION"
                        .balign 4

glabel D_80133754
/* 028C64 80133754  */  .asciz  "SND__PI_FOOTSTEP1"
                        .balign 4

glabel D_80133768
/* 028C78 80133768  */  .asciz  "SND__PI_FOOTSTEP2"
                        .balign 4

glabel D_8013377C
/* 028C8C 8013377C  */  .asciz  "SND__PI_GETSTAR"
                        .balign 4

glabel D_8013378C
/* 028C9C 8013378C  */  .asciz  "SND__PI_JUMP"
                        .balign 4

glabel D_8013379C
/* 028CAC 8013379C  */  .asciz  "SND__PI_KOKE"
                        .balign 4

glabel D_801337AC
/* 028CBC 801337AC  */  .asciz  "SND__PI_KUBIFURI"
                        .balign 4

glabel D_801337C0
/* 028CD0 801337C0  */  .asciz  "SND__PI_PIYORI"
                        .balign 4

glabel D_801337D0
/* 028CE0 801337D0  */  .asciz  "SND__PI_RAIMEI"
                        .balign 4

glabel D_801337E0
/* 028CF0 801337E0  */  .asciz  "SND__PI_RAPPAMISS"
                        .balign 4

glabel D_801337F4
/* 028D04 801337F4  */  .asciz  "SND__PI_SPEED"
                        .balign 4

glabel D_80133804
/* 028D14 80133804  */  .asciz  "SND__PL_NORMALHIT1"
                        .balign 4

glabel D_80133818
/* 028D28 80133818  */  .asciz  "SND__PL_NORMALHIT2"
                        .balign 4

glabel D_8013382C
/* 028D3C 8013382C  */  .asciz  "SND__PL_THROW"
                        .balign 4

glabel D_8013383C
/* 028D4C 8013383C  */  .asciz  "SND__SH_CANNON"
                        .balign 4

glabel D_8013384C
/* 028D5C 8013384C  */  .asciz  "SND__SH_COIN"
                        .balign 4

glabel D_8013385C
/* 028D6C 8013385C  */  .asciz  "SND__SH_FISHING"
                        .balign 4

glabel D_8013386C
/* 028D7C 8013386C  */  .asciz  "SND__SH_GEHO"
                        .balign 4

glabel D_8013387C
/* 028D8C 8013387C  */  .asciz  "SND__SH_HARMONICA"
                        .balign 4

glabel D_80133890
/* 028DA0 80133890  */  .asciz  "SND__SH_JOROKOKE"
                        .balign 4

glabel D_801338A4
/* 028DB4 801338A4  */  .asciz  "SND__SH_JOROKUMI"
                        .balign 4

glabel D_801338B8
/* 028DC8 801338B8  */  .asciz  "SND__SH_JOROYARI"
                        .balign 4

glabel D_801338CC
/* 028DDC 801338CC  */  .asciz  "SND__SH_NAZODIG"
                        .balign 4

glabel D_801338DC
/* 028DEC 801338DC  */  .asciz  "SND__SH_POPCORN"
                        .balign 4

glabel D_801338EC
/* 028DFC 801338EC  */  .asciz  "SND__SH_RAPPA"
                        .balign 4

glabel D_801338FC
/* 028E0C 801338FC  */  .asciz  "SND__SH_SANDHIT"
                        .balign 4

glabel D_8013390C
/* 028E1C 8013390C  */  .asciz  "SND__SH_SMOKE"
                        .balign 4

glabel D_8013391C
/* 028E2C 8013391C  */  .asciz  "SND__SH_SUIKAHIT"
                        .balign 4

glabel D_80133930
/* 028E40 80133930  */  .asciz  "SND__SH_SWING"
                        .balign 4

glabel D_80133940
/* 028E50 80133940  */  .asciz  "SND__SH_TREASUREBOXDIGOUT"
                        .balign 4

glabel D_8013395C
/* 028E6C 8013395C  */  .asciz  "SND__SH_TREASUREBOXOPEN"
                        .balign 4

glabel D_80133974
/* 028E84 80133974  */  .asciz  "SND__SH_TREASUREBOXPULL"
                        .balign 4

glabel D_8013398C
/* 028E9C 8013398C  */  .asciz  "SND__SY_CALL"
                        .balign 4

glabel D_8013399C
/* 028EAC 8013399C  */  .asciz  "SND__SY_CURSORMOVE"
                        .balign 4

glabel D_801339B0
/* 028EC0 801339B0  */  .asciz  "SND__SY_EVMONEY"
                        .balign 4

glabel D_801339C0
/* 028ED0 801339C0  */  .asciz  "SND__SY_EYEICON1"
                        .balign 4

glabel D_801339D4
/* 028EE4 801339D4  */  .asciz  "SND__SY_EYEICON2"
                        .balign 4

glabel D_801339E8
/* 028EF8 801339E8  */  .asciz  "SND__SY_EYEICONKIE"
                        .balign 4

glabel D_801339FC
/* 028F0C 801339FC  */  .asciz  "SND__SY_FORESTWALK"
                        .balign 4

glabel D_80133A10
/* 028F20 80133A10  */  .asciz  "SND__SY_GRASSHIT"
                        .balign 4

glabel D_80133A24
/* 028F34 80133A24  */  .asciz  "SND__SY_GRASSWALK"
                        .balign 4

glabel D_80133A38
/* 028F48 80133A38  */  .asciz  "SND__SY_ITEMBOXOPEN"
                        .balign 4

glabel D_80133A4C
/* 028F5C 80133A4C  */  .asciz  "SND__SY_ITEMBOXSLIDE"
                        .balign 4

glabel D_80133A64
/* 028F74 80133A64  */  .asciz  "SND__SY_ITEMLOST"
                        .balign 4

glabel D_80133A78
/* 028F88 80133A78  */  .asciz  "SND__SY_ITEMRINGCLOSE"
                        .balign 4

glabel D_80133A90
/* 028FA0 80133A90  */  .asciz  "SND__SY_ITEMRINGOPEN"
                        .balign 4

glabel D_80133AA8
/* 028FB8 80133AA8  */  .asciz  "SND__SY_MESAPPEAR"
                        .balign 4

glabel D_80133ABC
/* 028FCC 80133ABC  */  .asciz  "SND__SY_MESGET"
                        .balign 4

glabel D_80133ACC
/* 028FDC 80133ACC  */  .asciz  "SND__SY_MESHAJIKI"
                        .balign 4

glabel D_80133AE0
/* 028FF0 80133AE0  */  .asciz  "SND__SY_MESWARERU"
                        .balign 4

glabel D_80133AF4
/* 029004 80133AF4  */  .asciz  "SND__SY_METALITEM"
                        .balign 4

glabel D_80133B08
/* 029018 80133B08  */  .asciz  "SND__SY_MICON"
                        .balign 4

glabel D_80133B18
/* 029028 80133B18  */  .asciz  "SND__SY_PHCURSOR"
                        .balign 4

glabel D_80133B2C
/* 02903C 80133B2C  */  .asciz  "SND__SY_PHSELECT"
                        .balign 4

glabel D_80133B40
/* 029050 80133B40  */  .asciz  "SND__SY_PHSWITCH"
                        .balign 4

glabel D_80133B54
/* 029064 80133B54  */  .asciz  "SND__SY_PLAITEM"
                        .balign 4

glabel D_80133B64
/* 029074 80133B64  */  .asciz  "SND__SY_SANDWALK"
                        .balign 4

glabel D_80133B78
/* 029088 80133B78  */  .asciz  "SND__SY_SELECT"
                        .balign 4

glabel D_80133B88
/* 029098 80133B88  */  .asciz  "SND__SY_SMALLSPLASH"
                        .balign 4

glabel D_80133B9C
/* 0290AC 80133B9C  */  .asciz  "SND__SY_WATERWALK"
                        .balign 4

glabel D_80133BB0
/* 0290C0 80133BB0  */  .asciz  "SND__SY_WOODWALK2"
                        .balign 4
/* 0290D4 80133BC4  */  .asciz  ""
                        .balign 4
/* 0290D8 80133BC8  */  .asciz  ""
                        .balign 4
/* 0290DC 80133BCC  */  .asciz  ""
                        .balign 4

glabel D_80133BD0
/* 0290E0 80133BD0  */  .asciz  "Yours ever"
                        .balign 4

glabel D_80133BDC
/* 0290EC 80133BDC  */  .asciz  "Camp night"
                        .balign 4

glabel D_80133BE8
/* 0290F8 80133BE8  */  .asciz  "Mamma mia!"
                        .balign 4

glabel D_80133BF4
/* 029104 80133BF4  */  .asciz  "Joyful"
                        .balign 4

glabel D_80133BFC
/* 02910C 80133BFC  */  .asciz  "Home at last"
                        .balign 4

glabel D_80133C0C
/* 02911C 80133C0C  */  .asciz  "Prairie wind"
                        .balign 4

glabel D_80133C1C
/* 02912C 80133C1C  */  .asciz  "Wood music"
                        .balign 4

glabel D_80133C28
/* 029138 80133C28  */  .asciz  "Hello!"
                        .balign 4

glabel D_80133C30
/* 029140 80133C30  */  .asciz  "Daring days"
                        .balign 4

glabel D_80133C3C
/* 02914C 80133C3C  */  .asciz  "Discovery"
                        .balign 4

glabel D_80133C48
/* 029158 80133C48  */  .asciz  "Play days"
                        .balign 4

glabel D_80133C54
/* 029164 80133C54  */  .asciz  "Misty lake"
                        .balign 4

glabel D_80133C60
/* 029170 80133C60  */  .asciz  "My bedroom"
                        .balign 4

glabel D_80133C6C
/* 02917C 80133C6C  */  .asciz  "Pi-pikachu!"
                        .balign 4

glabel D_80133C78
/* 029188 80133C78  */  .asciz  "Go shopping"
                        .balign 4

glabel D_80133C84
/* 029194 80133C84  */  .asciz  "Quiz time"
                        .balign 4

glabel D_80133C90
/* 0291A0 80133C90  */  .asciz  "Who am I?"
                        .balign 4

glabel D_80133C9C
/* 0291AC 80133C9C  */  .asciz  "Feel lonely"
                        .balign 4

glabel D_80133CA8
/* 0291B8 80133CA8  */  .asciz  "Over the sea"
                        .balign 4

glabel D_80133CB8
/* 0291C8 80133CB8  */  .asciz  "Gone fishing!"
                        .balign 4

glabel D_80133CC8
/* 0291D8 80133CC8  */  .asciz  "Opening 1"
                        .balign 4

glabel D_80133CD4
/* 0291E4 80133CD4  */  .asciz  "Opening 2"
                        .balign 4

glabel D_80133CE0
/* 0291F0 80133CE0  */  .asciz  "Success"
                        .balign 4

glabel D_80133CE8
/* 0291F8 80133CE8  */  .asciz  "See you later"
                        .balign 4

glabel D_80133CF8
/* 029208 80133CF8  */  .asciz  "Picnic"
                        .balign 4

glabel D_80133D00
/* 029210 80133D00  */  .asciz  "What's up?"
                        .balign 4

glabel D_80133D0C
/* 02921C 80133D0C  */  .asciz  "Boo"
                        .balign 4

glabel D_80133D10
/* 029220 80133D10  */  .asciz  "Call"
                        .balign 4

glabel D_80133D18
/* 029228 80133D18  */  .asciz  "Counting"
                        .balign 4

glabel D_80133D24
/* 029234 80133D24  */  .asciz  "A good thing"
                        .balign 4

glabel D_80133D34
/* 029244 80133D34  */  .asciz  "Evolved"
                        .balign 4

glabel D_80133D3C
/* 02924C 80133D3C  */  .asciz  "Evolving"
                        .balign 4

glabel D_80133D48
/* 029258 80133D48  */  .asciz  "Eye icon"
                        .balign 4

glabel D_80133D54
/* 029264 80133D54  */  .asciz  "Eye mode"
                        .balign 4

glabel D_80133D60
/* 029270 80133D60  */  .asciz  "Failure"
                        .balign 4

glabel D_80133D68
/* 029278 80133D68  */  .asciz  "Harmonica 1"
                        .balign 4

glabel D_80133D74
/* 029284 80133D74  */  .asciz  "Harmonica 2"
                        .balign 4

glabel D_80133D80
/* 029290 80133D80  */  .asciz  "Out of tune"
                        .balign 4

glabel D_80133D8C
/* 02929C 80133D8C  */  .asciz  "In tune"
                        .balign 4

glabel D_80133D94
/* 0292A4 80133D94  */  .asciz  "Fly around"
                        .balign 4

glabel D_80133DA0
/* 0292B0 80133DA0  */  .asciz  "Correct"
                        .balign 4

glabel D_80133DA8
/* 0292B8 80133DA8  */  .asciz  "Trumpet 1"
                        .balign 4

glabel D_80133DB4
/* 0292C4 80133DB4  */  .asciz  "Trumpet 2"
                        .balign 4

glabel D_80133DC0
/* 0292D0 80133DC0  */  .asciz  "Sea noise"
                        .balign 4

glabel D_80133DCC
/* 0292DC 80133DCC  */  .asciz  "Doing well"
                        .balign 4
/* 0292E8 80133DD8  */  .asciz  ""
                        .balign 4
/* 0292EC 80133DDC  */  .asciz  ""
                        .balign 4
