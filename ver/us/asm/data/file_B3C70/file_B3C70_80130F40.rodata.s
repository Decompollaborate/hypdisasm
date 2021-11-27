.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80130F40
/* 026450 80130F40  */  .asciz  "%s = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 02646C 80130F5C  */  .asciz  "a"
                        .balign 4
/* 026470 80130F60  */  .asciz  "%s = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 02648C 80130F7C  */  .asciz  "e"
                        .balign 4
/* 026490 80130F80  */  .asciz  "setReactType:%d\n"
                        .balign 4

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
/* 026EFC 801319EC  */  .asciz  "@j@j@j@j@j@j@j@j@j"
                        .balign 4

glabel D_80131A00
/* 026F10 80131A00 00000000 */  .word  0x00000000

glabel _string_80131A04
/* 026F14 80131A04  */  .asciz  "current menu item = %s\n"
                        .balign 4
/* 026F2C 80131A1C  */  .asciz  "sel = %d, max = %d, from = %d\n"
                        .balign 4
/* 026F4C 80131A3C  */  .asciz  "Enter system menu mode.\n"
                        .balign 4
/* 026F68 80131A58  */  .asciz  "Exit system menu mode.\n"
                        .balign 4

glabel D_80131A70
/* 026F80 80131A70  */  .asciz  "\nTotal\n%d\nMax\n%d\n"
                        .balign 4

glabel D_80131A84
/* 026F94 80131A84  */  .asciz  "\n%s%s%s%s\n%s%s%s%s\n%s%s%s\ndis %d ang %d\nshop %d\n"
                        .balign 4

glabel D_80131AB8
/* 026FC8 80131AB8  */  .asciz  "Pw"
                        .balign 4

glabel D_80131ABC
/* 026FCC 80131ABC  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AC0
/* 026FD0 80131AC0  */  .asciz  "Ck"
                        .balign 4

glabel D_80131AC4
/* 026FD4 80131AC4  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AC8
/* 026FD8 80131AC8  */  .asciz  "Tb"
                        .balign 4

glabel D_80131ACC
/* 026FDC 80131ACC  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AD0
/* 026FE0 80131AD0  */  .asciz  "Pn"
                        .balign 4

glabel D_80131AD4
/* 026FE4 80131AD4  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AD8
/* 026FE8 80131AD8  */  .asciz  "Sp"
                        .balign 4

glabel D_80131ADC
/* 026FEC 80131ADC  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AE0
/* 026FF0 80131AE0  */  .asciz  "Dg"
                        .balign 4

glabel D_80131AE4
/* 026FF4 80131AE4  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AE8
/* 026FF8 80131AE8  */  .asciz  "Cy"
                        .balign 4

glabel D_80131AEC
/* 026FFC 80131AEC  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AF0
/* 027000 80131AF0  */  .asciz  "Hr"
                        .balign 4

glabel D_80131AF4
/* 027004 80131AF4  */  .asciz  "Xx"
                        .balign 4

glabel D_80131AF8
/* 027008 80131AF8  */  .asciz  "Gc"
                        .balign 4

glabel D_80131AFC
/* 02700C 80131AFC  */  .asciz  "Xx"
                        .balign 4

glabel D_80131B00
/* 027010 80131B00  */  .asciz  "Cs"
                        .balign 4

glabel D_80131B04
/* 027014 80131B04  */  .asciz  "Xx"
                        .balign 4

glabel D_80131B08
/* 027018 80131B08  */  .asciz  "Cb"
                        .balign 4

glabel D_80131B0C
/* 02701C 80131B0C  */  .asciz  "Xx"
                        .balign 4

glabel D_80131B10
/* 027020 80131B10  */  .asciz  "Days spent\n with PIKACHU\n\n%s%d day%s"
                        .balign 4

glabel D_80131B38
/* 027048 80131B38  */  .asciz  "#052"
                        .balign 4

glabel D_80131B40
/* 027050 80131B40  */  .asciz  "#044"
                        .balign 4

glabel D_80131B48
/* 027058 80131B48  */  .asciz  "#036"
                        .balign 4

glabel D_80131B50
/* 027060 80131B50  */  .asciz  "#026"
                        .balign 4

glabel D_80131B58
/* 027068 80131B58  */  .asciz  "#016"
                        .balign 4

glabel D_80131B60
/* 027070 80131B60  */  .asciz  "s"
                        .balign 4

glabel D_80131B64
/* 027074 80131B64  */  .asciz  ""
                        .balign 4

glabel D_80131B68
/* 027078 80131B68  */  .asciz  "%s\n"
                        .balign 4

glabel D_80131B6C
/* 02707C 80131B6C  */  .asciz  "@Y@Z\n"
                        .balign 4

glabel D_80131B74
/* 027084 80131B74  */  .asciz  "#015%d\n"
                        .balign 4

glabel D_80131B7C
/* 02708C 80131B7C  */  .asciz  "Voice\n"
                        .balign 4

glabel D_80131B84
/* 027094 80131B84  */  .asciz  "#015%d\n"
                        .balign 4
/* 02709C 80131B8C  */  .asciz  "selectBGM : %d %s\n"
                        .balign 4
/* 0270B0 80131BA0  */  .asciz  "selectSound : %d %s\n"
                        .balign 4
/* 0270C8 80131BB8  */  .asciz  "selChannel %d\n"
                        .balign 4
/* 0270D8 80131BC8  */  .asciz  "selChase %d\n"
                        .balign 4
/* 0270E8 80131BD8  */  .asciz  "selDifficulty %d\n"
                        .balign 4
/* 0270FC 80131BEC  */  .asciz  "selIedeFlag %d\n"
                        .balign 4
/* 02710C 80131BFC  */  .asciz  "selEasyCountFlag %d\n"
                        .balign 4
/* 027124 80131C14  */  .asciz  "selGameClearFlag %d\n"
                        .balign 4
/* 02713C 80131C2C  */  .asciz  "selStickReverse %d\n"
                        .balign 4

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
/* 02719C 80131C8C  */  .asciz  "File%s\n  %s\nFCB %s%s\n"
                        .balign 4

glabel D_80131CA4
/* 0271B4 80131CA4  */  .asciz  "1"
                        .balign 4

glabel D_80131CA8
/* 0271B8 80131CA8  */  .asciz  "2"
                        .balign 4

glabel D_80131CAC
/* 0271BC 80131CAC  */  .asciz  "1"
                        .balign 4

glabel D_80131CB0
/* 0271C0 80131CB0  */  .asciz  "x"
                        .balign 4

glabel D_80131CB4
/* 0271C4 80131CB4  */  .asciz  "2"
                        .balign 4

glabel D_80131CB8
/* 0271C8 80131CB8  */  .asciz  "x"
                        .balign 4
/* 0271CC 80131CBC  */  .asciz  "selEEPROM %d\n"
                        .balign 4

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
/* 027F70 80132A60  */  .asciz  "@d"
                        .balign 4

glabel D_80132A64
/* 027F74 80132A64  */  .asciz  "@b"
                        .balign 4

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

glabel _string_80132AA0
/* 027FB0 80132AA0  */  .asciz  "%s"
                        .balign 4
/* 027FB4 80132AA4  */  .asciz  "%s\n"
                        .balign 4
/* 027FB8 80132AA8  */  .asciz  "actionNum:%d time:%f\n"
                        .balign 4

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
