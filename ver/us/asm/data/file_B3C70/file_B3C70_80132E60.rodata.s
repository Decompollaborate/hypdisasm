.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

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
