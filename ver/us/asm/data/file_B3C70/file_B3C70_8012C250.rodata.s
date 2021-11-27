.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

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
/* 0218B4 8012C3A4  */  .asciz  "(There's nothing to check.)\nMove the @A@B cursor to any\nitem you want to check and\npress @K@L to see a description\nof it."
                        .balign 4

glabel D_8012C420
/* 021930 8012C420  */  .asciz  "???"
                        .balign 4

glabel D_8012C424
/* 021934 8012C424  */  .asciz  "%s%-22s^^%s\n%s%s"
                        .balign 4

glabel D_8012C438
/* 021948 8012C438  */  .asciz  "^^"
                        .balign 4

glabel D_8012C43C
/* 02194C 8012C43C  */  .asciz  "^4"
                        .balign 4

glabel D_8012C440
/* 021950 8012C440  */  .asciz  "%s%s^^?\n%s%s"
                        .balign 4

glabel D_8012C450
/* 021960 8012C450  */  .asciz  "^^"
                        .balign 4

glabel D_8012C454
/* 021964 8012C454  */  .asciz  "^4"
                        .balign 4

glabel D_8012C458
/* 021968 8012C458  */  .asciz  "\n^9You can't reach it from here.^^"
                        .balign 4

glabel D_8012C47C
/* 02198C 8012C47C  */  .asciz  "^4%s^^\n%s"
                        .balign 4

glabel D_8012C488
/* 021998 8012C488  */  .asciz  "^4%s^^?\n%s%s"
                        .balign 4

glabel D_8012C498
/* 0219A8 8012C498  */  .asciz  "\n^9You can't reach it from here.^^"
                        .balign 4

glabel D_8012C4BC
/* 0219CC 8012C4BC 00000000 */  .word  0x00000000

glabel D_8012C4C0
/* 0219D0 8012C4C0  */  .asciz  "\nPress @I@J to go on."
                        .balign 4

glabel D_8012C4D8
/* 0219E8 8012C4D8  */  .asciz  "%s%s"
                        .balign 4

glabel D_8012C4E0
/* 0219F0 8012C4E0  */  .asciz  "%s%s"
                        .balign 4

glabel D_8012C4E8
/* 0219F8 8012C4E8  */  .asciz  "\n^9You can't reach it from here.^^"
                        .balign 4

glabel D_8012C50C
/* 021A1C 8012C50C  */  .asciz  "？？？"
                        .balign 4

glabel D_8012C514
/* 021A24 8012C514  */  .asciz  "%s%s"
                        .balign 4

glabel D_8012C51C
/* 021A2C 8012C51C  */  .asciz  "%s%s"
                        .balign 4

glabel D_8012C524
/* 021A34 8012C524  */  .asciz  "\n^9You can't reach it from here.^^"
                        .balign 4

glabel D_8012C548
/* 021A58 8012C548  */  .asciz  "%s"
                        .balign 4

glabel D_8012C54C
/* 021A5C 8012C54C  */  .asciz  "%s"
                        .balign 4

glabel D_8012C550
/* 021A60 8012C550  */  .asciz  "%s"
                        .balign 4
/* 021A64 8012C554  */  .asciz  "Illegal difficulty:%d\n"
                        .balign 4

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
/* 021AC0 8012C5B0  */  .asciz  "Target Unknown"
                        .balign 4
/* 021AD0 8012C5C0  */  .asciz  "help(%s)\n"
                        .balign 4
/* 021ADC 8012C5CC  */  .asciz  "playerPassCheckPoint(%d)\n"
                        .balign 4
/* 021AF8 8012C5E8  */  .asciz  "level %d -> %d\n"
                        .balign 4

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
/* 021D40 8012C830  */  .asciz  "？"
                        .balign 4
/* 021D44 8012C834  */  .asciz  "setSongVolume(%f) vcur: %d/%d vol:%d\n"
                        .balign 4
/* 021D6C 8012C85C  */  .asciz  "setSfxVolume(%f) vcur: %d/%d vol:%d\n"
                        .balign 4

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
