.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_80155840
/* 0215D0 80155840  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_80155860
/* 0215F0 80155860  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_80155888
/* 021618 80155888  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_801558A0
/* 021630 801558A0  */  .asciz  "^6PIKACHU^^ fell asleep."
                        .balign 4

glabel D_801558BC
/* 02164C 801558BC  */  .asciz  "^6PIKACHU^^ got tired and fell asleep."
                        .balign 4

glabel D_801558E4
/* 021674 801558E4  */  .asciz  "s"
                        .balign 4

glabel D_801558E8
/* 021678 801558E8 00000000 */  .word  0x00000000

glabel D_801558EC
/* 02167C 801558EC  */  .asciz  "^6PIKACHU^^ is wondering what to do."
                        .balign 4

glabel D_80155914
/* 0216A4 80155914  */  .asciz  "It's looking at the ^4"
                        .balign 4

glabel D_8015592C
/* 0216BC 8015592C  */  .asciz  "^^."
                        .balign 4

glabel D_80155930
/* 0216C0 80155930  */  .asciz  "^6PIKACHU^^ is asking what it should do."
                        .balign 4

glabel D_8015595C
/* 0216EC 8015595C  */  .asciz  "It's morning. Time to get up!"
                        .balign 4

glabel D_8015597C
/* 02170C 8015597C  */  .asciz  "”^7...That's Mom's voice.^^ ”"
                        .balign 4

glabel D_8015599C
/* 02172C 8015599C  */  .asciz  "Wake up.\n"
                        .balign 4

glabel D_801559A8
/* 021738 801559A8  */  .asciz  "Isn't Prof. Oak's test\n"
                        .balign 4

glabel D_801559C0
/* 021750 801559C0  */  .asciz  "today?"
                        .balign 4

glabel D_801559C8
/* 021758 801559C8  */  .asciz  "”^7Hey! That's right!^^ ”"
                        .balign 4

glabel D_801559E4
/* 021774 801559E4  */  .asciz  "Don't forget the Pok´Helper\n"
                        .balign 4

glabel D_80155A04
/* 021794 80155A04  */  .asciz  "that Prof. Oak sent."
                        .balign 4

glabel D_80155A1C
/* 0217AC 80155A1C  */  .asciz  "I wonder what kind of test\n"
                        .balign 4

glabel D_80155A38
/* 0217C8 80155A38  */  .asciz  "it is? I hope it goes well.\n"
                        .balign 4

glabel D_80155A58
/* 0217E8 80155A58  */  .asciz  "Good luck!"
                        .balign 4

glabel D_80155A64
/* 0217F4 80155A64  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_80155A84
/* 021814 80155A84  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_80155AAC
/* 02183C 80155AAC  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_80155AC4
/* 021854 80155AC4  */  .asciz  "”^7Hey! There's a message!^^ ”"
                        .balign 4

glabel D_80155AE8
/* 021878 80155AE8  */  .asciz  "”^7It's nice out again today.^^ ”"
                        .balign 4

glabel D_80155B0C
/* 02189C 80155B0C  */  .asciz  "\f"
                        .balign 4

glabel D_80155B10
/* 0218A0 80155B10  */  .asciz  "”^7It must be Prof. Oak.^^ ”"
                        .balign 4

glabel D_80155B30
/* 0218C0 80155B30  */  .asciz  "^4Good morning^^.\n"
                        .balign 4

glabel D_80155B44
/* 0218D4 80155B44  */  .asciz  "Were you too excited to\n"
                        .balign 4

glabel D_80155B60
/* 0218F0 80155B60  */  .asciz  "sleep last night?\f"
                        .balign 4

glabel D_80155B74
/* 021904 80155B74  */  .asciz  "Ha, ha...I thought so.\n"
                        .balign 4

glabel D_80155B8C
/* 02191C 80155B8C  */  .asciz  "Well, the ^6PIKACHU^^ from\n"
                        .balign 4

glabel D_80155BA8
/* 021938 80155BA8  */  .asciz  "yesterday is in \nViridian Forest.\n"
                        .balign 4

glabel D_80155BCC
/* 02195C 80155BCC  */  .asciz  "I'll show you the way again.\f"
                        .balign 4

glabel D_80155BEC
/* 02197C 80155BEC  */  .asciz  "I hope you can become even\n"
                        .balign 4

glabel D_80155C08
/* 021998 80155C08  */  .asciz  "better friends with \n^6PIKACHU^^."
                        .balign 4

glabel D_80155C2C
/* 0219BC 80155C2C  */  .asciz  "”^7It's morning. ^^ ”"
                        .balign 4

glabel D_80155C44
/* 0219D4 80155C44  */  .asciz  "”^7Hey!^^\n#006^7That's^^ ^6PIKACHU^7's voice!^^ ”"
                        .balign 4

glabel D_80155C78
/* 021A08 80155C78  */  .asciz  "”^7Hey! It's^^ ^6PIKACHU^7's voice!^^ ”"
                        .balign 4

glabel D_80155CA4
/* 021A34 80155CA4  */  .asciz  "”^7It's that wild^^ ^6PIKACHU^7!^^ ”"
                        .balign 4

glabel D_80155CCC
/* 021A5C 80155CCC  */  .asciz  "Oh, ^4you're so cute^^!\n"
                        .balign 4

glabel D_80155CE8
/* 021A78 80155CE8  */  .asciz  "So this is ^6PIKACHU^^?\n"
                        .balign 4

glabel D_80155D04
/* 021A94 80155D04  */  .asciz  "It came to play on its own!\f"
                        .balign 4

glabel D_80155D24
/* 021AB4 80155D24  */  .asciz  "I wish a Pok´mon that cute\n"
                        .balign 4

glabel D_80155D44
/* 021AD4 80155D44  */  .asciz  "would be my friend.\n"
                        .balign 4

glabel D_80155D5C
/* 021AEC 80155D5C  */  .asciz  "\f"
                        .balign 4

glabel D_80155D60
/* 021AF0 80155D60  */  .asciz  "You be nice to it!"
                        .balign 4

glabel D_80155D74
/* 021B04 80155D74  */  .asciz  "”^7Hey!^^ ^6PIKACHU^^ ^7has a^^\n"
                        .balign 4

glabel D_80155D98
/* 021B28 80155D98  */  .asciz  "#006^7fishing hook.^^\n"
                        .balign 4

glabel D_80155DB0
/* 021B40 80155DB0  */  .asciz  "#006^7Are we going fishing today?^^ ”"
                        .balign 4

glabel D_80155DD8
/* 021B68 80155DD8  */  .asciz  "”^7Hey!^^ ^6PIKACHU^^ ^7came to play^^\n"
                        .balign 4

glabel D_80155E04
/* 021B94 80155E04  */  .asciz  "#006^7again today!^^ ”"
                        .balign 4

glabel D_80155E1C
/* 021BAC 80155E1C  */  .asciz  "”^7Hey! It's^^ ^6PIKACHU^7!^^\n"
                        .balign 4

glabel D_80155E3C
/* 021BCC 80155E3C  */  .asciz  "#006^7Where are we going today?^^ ”"
                        .balign 4

glabel D_80155E64
/* 021BF4 80155E64  */  .asciz  "”^7Hey! It's off to play with^^\n"
                        .balign 4

glabel D_80155E88
/* 021C18 80155E88  */  .asciz  "#008^6PIKACHU^7!^^ ”\n"
                        .balign 4

glabel D_80155EA0
/* 021C30 80155EA0  */  .asciz  "”^7Hey! It's off with^^ ^6PIKACHU^^\n "
                        .balign 4

glabel D_80155EC8
/* 021C58 80155EC8  */  .asciz  "#006^7again today!^^ ”"
                        .balign 4

glabel D_80155EE0
/* 021C70 80155EE0  */  .asciz  "Have a nice time!\nTake care."
                        .balign 4

glabel D_80155F00
/* 021C90 80155F00  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_80155F20
/* 021CB0 80155F20  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_80155F48
/* 021CD8 80155F48  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_80155F60
/* 021CF0 80155F60  */  .asciz  "”^7Hey! There's a message!^^ ”"
                        .balign 4

glabel D_80155F84
/* 021D14 80155F84  */  .asciz  "”^7What a nice morning. ^^ ”"
                        .balign 4

glabel D_80155FA4
/* 021D34 80155FA4  */  .asciz  "^4Good morning^^. It's Prof. Oak.\n"
                        .balign 4

glabel D_80155FC8
/* 021D58 80155FC8  */  .asciz  "I have something to give to\n"
                        .balign 4

glabel D_80155FE8
/* 021D78 80155FE8  */  .asciz  "you today. It's a special\n"
                        .balign 4

glabel D_80156004
/* 021D94 80156004  */  .asciz  "tool box for the Pok´Helper.\f"
                        .balign 4

glabel D_80156024
/* 021DB4 80156024  */  .asciz  "I'll send it to you\n"
                        .balign 4

glabel D_8015603C
/* 021DCC 8015603C  */  .asciz  "electronically now.\n"
                        .balign 4

glabel D_80156054
/* 021DE4 80156054  */  .asciz  "Wait just a second!"
                        .balign 4

glabel D_80156068
/* 021DF8 80156068  */  .asciz  "You got a package from\n"
                        .balign 4

glabel D_80156080
/* 021E10 80156080  */  .asciz  "Prof. Oak."
                        .balign 4

glabel D_8015608C
/* 021E1C 8015608C  */  .asciz  "You can hold a lot of\n"
                        .balign 4

glabel D_801560A4
/* 021E34 801560A4  */  .asciz  "different things in\n"
                        .balign 4

glabel D_801560BC
/* 021E4C 801560BC  */  .asciz  "this tool box.\f"
                        .balign 4

glabel D_801560CC
/* 021E5C 801560CC  */  .asciz  "Let me explain how you\n"
                        .balign 4

glabel D_801560E4
/* 021E74 801560E4  */  .asciz  "use it.\n"
                        .balign 4

glabel D_801560F0
/* 021E80 801560F0  */  .asciz  "First, go to where\n"
                        .balign 4

glabel D_80156104
/* 021E94 80156104  */  .asciz  "^6PIKACHU^^ is."
                        .balign 4

glabel D_80156114
/* 021EA4 80156114  */  .asciz  "I've put a snack in there\n"
                        .balign 4

glabel D_80156130
/* 021EC0 80156130  */  .asciz  "for you, so be sure to eat it\n"
                        .balign 4

glabel D_80156150
/* 021EE0 80156150  */  .asciz  "with ^6PIKACHU^^.\f"
                        .balign 4

glabel D_80156164
/* 021EF4 80156164  */  .asciz  "Now take care.\n"
                        .balign 4

glabel D_80156174
/* 021F04 80156174  */  .asciz  "Have a good day."
                        .balign 4

glabel D_80156188
/* 021F18 80156188  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_801561A8
/* 021F38 801561A8  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_801561D0
/* 021F60 801561D0  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_801561E8
/* 021F78 801561E8  */  .asciz  "^6PIKACHU^^ is calling you."
                        .balign 4

glabel D_80156204
/* 021F94 80156204  */  .asciz  "^6PIKACHU^^ looked up at the sky."
                        .balign 4

glabel D_80156228
/* 021FB8 80156228  */  .asciz  "It^^'s focused on the ^4"
                        .balign 4

glabel D_80156244
/* 021FD4 80156244  */  .asciz  "^^."
                        .balign 4

glabel D_80156248
/* 021FD8 80156248  */  .asciz  "^6PIKACHU^^ took what you were holding."
                        .balign 4

glabel D_80156270
/* 022000 80156270  */  .asciz  "”^7Hey! There's a message!^^ ”"
                        .balign 4

glabel D_80156294
/* 022024 80156294  */  .asciz  "^6PIKACHU^^ fell asleep."
                        .balign 4

glabel D_801562B0
/* 022040 801562B0  */  .asciz  "^6PIKACHU^^ got tired and fell asleep."
                        .balign 4

glabel D_801562D8
/* 022068 801562D8  */  .asciz  "s"
                        .balign 4

glabel D_801562DC
/* 02206C 801562DC 00000000 */  .word  0x00000000

glabel D_801562E0
/* 022070 801562E0  */  .asciz  "^6PIKACHU^^ is wondering what to do."
                        .balign 4

glabel D_80156308
/* 022098 80156308  */  .asciz  "It's looking at the ^4"
                        .balign 4

glabel D_80156320
/* 0220B0 80156320  */  .asciz  "^^."
                        .balign 4

glabel D_80156324
/* 0220B4 80156324  */  .asciz  "^6PIKACHU^^ is asking what it should do."
                        .balign 4

glabel D_80156350
/* 0220E0 80156350  */  .asciz  "^6PIKACHU^^ is pretending not to know."
                        .balign 4

glabel D_80156378
/* 022108 80156378  */  .asciz  "^6PIKACHU^^ is angry."
                        .balign 4

glabel D_80156390
/* 022120 80156390  */  .asciz  "^6PIKACHU^^ hasn't noticed you."
                        .balign 4

glabel D_801563B0
/* 022140 801563B0  */  .asciz  "^6PIKACHU^^ is hungry."
                        .balign 4

glabel D_801563C8
/* 022158 801563C8  */  .asciz  "^6PIKACHU^^ is satisfied."
                        .balign 4

glabel D_801563E4
/* 022174 801563E4  */  .asciz  "It's so hungry it can't move."
                        .balign 4

glabel D_80156404
/* 022194 80156404  */  .asciz  "It's nearly starving."
                        .balign 4

glabel D_8015641C
/* 0221AC 8015641C  */  .asciz  "It will run away if you chase it."
                        .balign 4

glabel D_80156440
/* 0221D0 80156440  */  .asciz  "Let's play ^4rock^^-^4paper^^-^4scissors^^."
                        .balign 4

glabel D_8015646C
/* 0221FC 8015646C  */  .asciz  "^6PIKACHU^^ is playing dead."
                        .balign 4

glabel D_8015648C
/* 02221C 8015648C  */  .asciz  "^6PIKACHU^^ gave up."
                        .balign 4

glabel D_801564A4
/* 022234 801564A4  */  .asciz  "^4１^^"
                        .balign 4

glabel D_801564AC
/* 02223C 801564AC  */  .asciz  "^4１２^^"
                        .balign 4

glabel D_801564B8
/* 022248 801564B8  */  .asciz  "^4１２３^^"
                        .balign 4

glabel D_801564C4
/* 022254 801564C4  */  .asciz  "^4１２３^^^6４^^"
                        .balign 4

glabel D_801564D8
/* 022268 801564D8  */  .asciz  "^4１２３^^^6４５^^"
                        .balign 4

glabel D_801564EC
/* 02227C 801564EC  */  .asciz  "^4１２３^^^6４５^^^2６^^"
                        .balign 4

glabel D_80156508
/* 022298 80156508  */  .asciz  "^4１２３^^^6４５^^^2６７^^"
                        .balign 4

glabel D_80156524
/* 0222B4 80156524  */  .asciz  "^4１２３^^^6４５^^^2６７^^^3８^^"
                        .balign 4

glabel D_80156548
/* 0222D8 80156548  */  .asciz  "^4１２３^^^6４５^^^2６７^^^3８９^^"
                        .balign 4

glabel D_8015656C
/* 0222FC 8015656C  */  .asciz  "Ｎｏ "
                        .balign 4

glabel D_80156574
/* 022304 80156574  */  .asciz  " "
                        .balign 4

glabel D_80156578
/* 022308 80156578  */  .asciz  "Ｎｏ "
                        .balign 4

glabel D_80156580
/* 022310 80156580  */  .asciz  " "
                        .balign 4

glabel D_80156584
/* 022314 80156584  */  .asciz  "Ｎｏ "
                        .balign 4

glabel D_8015658C
/* 02231C 8015658C  */  .asciz  " "
                        .balign 4

glabel D_80156590
/* 022320 80156590  */  .asciz  "^6PIKACHU^^ is waiting for ^4Quiz Time^^."
                        .balign 4

glabel D_801565BC
/* 02234C 801565BC  */  .asciz  "^6PIKACHU^^ is asking if ^4you can play^^."
                        .balign 4

glabel D_801565E8
/* 022378 801565E8  */  .asciz  "^6PIKACHU^^ wants to play outside."
                        .balign 4

glabel D_8015660C
/* 02239C 8015660C  */  .asciz  "Tell ^6PIKACHU^^ it's ^4Quiz Time^^."
                        .balign 4

glabel D_80156634
/* 0223C4 80156634  */  .asciz  "^6PIKACHU^^ didn't make it in time."
                        .balign 4

glabel D_80156658
/* 0223E8 80156658  */  .asciz  "Time's up."
                        .balign 4

glabel D_80156664
/* 0223F4 80156664  */  .asciz  "There will be "
                        .balign 4

glabel D_80156674
/* 022404 80156674  */  .asciz  " questions.\n\n"
                        .balign 4

glabel D_80156684
/* 022414 80156684  */  .asciz  "Give it a shot."
                        .balign 4

glabel D_80156694
/* 022424 80156694  */  .asciz  "This is the Pok´mon Quiz.\n"
                        .balign 4

glabel D_801566B0
/* 022440 801566B0  */  .asciz  "Look at the pictures and try\n"
                        .balign 4

glabel D_801566D0
/* 022460 801566D0  */  .asciz  "to guess each Pok´mon's \nname.\f"
                        .balign 4

glabel D_801566F4
/* 022484 801566F4  */  .asciz  "This is the Shadow Quiz.\n\n"
                        .balign 4

glabel D_80156710
/* 0224A0 80156710  */  .asciz  "Look at the Pok´mon's shadow\n"
                        .balign 4

glabel D_80156730
/* 0224C0 80156730  */  .asciz  "and try to guess its name.\f"
                        .balign 4

glabel D_8015674C
/* 0224DC 8015674C  */  .asciz  "There will be "
                        .balign 4

glabel D_8015675C
/* 0224EC 8015675C  */  .asciz  " questions.\n\n"
                        .balign 4

glabel D_8015676C
/* 0224FC 8015676C  */  .asciz  "Try it out!"
                        .balign 4

glabel D_80156778
/* 022508 80156778  */  .asciz  "This is the strobe light\n"
                        .balign 4

glabel D_80156794
/* 022524 80156794  */  .asciz  "version of the Shadow Quiz.\n\n"
                        .balign 4

glabel D_801567B4
/* 022544 801567B4  */  .asciz  "You'll have only a second.\f"
                        .balign 4

glabel D_801567D0
/* 022560 801567D0  */  .asciz  "Question "
                        .balign 4

glabel D_801567DC
/* 02256C 801567DC  */  .asciz  " ."
                        .balign 4

glabel D_801567E0
/* 022570 801567E0  */  .asciz  "^6PIKACHU^^ pressed the wrong button."
                        .balign 4

glabel D_80156808
/* 022598 80156808  */  .asciz  "^6PIKACHU^^ hurried and messed up."
                        .balign 4

glabel D_8015682C
/* 0225BC 8015682C  */  .asciz  "^6PIKACHU^^ was confused."
                        .balign 4

glabel D_80156848
/* 0225D8 80156848  */  .asciz  "The answer is "
                        .balign 4

glabel D_80156858
/* 0225E8 80156858  */  .asciz  "."
                        .balign 4

glabel D_8015685C
/* 0225EC 8015685C  */  .asciz  "That's right."
                        .balign 4

glabel D_8015686C
/* 0225FC 8015686C  */  .asciz  "That's wrong."
                        .balign 4

glabel D_8015687C
/* 02260C 8015687C  */  .asciz  "These are your results.\n"
                        .balign 4

glabel D_80156898
/* 022628 80156898  */  .asciz  " questions.\n"
                        .balign 4

glabel D_801568A8
/* 022638 801568A8  */  .asciz  "You got them all right."
                        .balign 4

glabel D_801568C0
/* 022650 801568C0  */  .asciz  "Out of "
                        .balign 4

glabel D_801568C8
/* 022658 801568C8  */  .asciz  " questions,\n"
                        .balign 4

glabel D_801568D8
/* 022668 801568D8  */  .asciz  "you got "
                        .balign 4

glabel D_801568E4
/* 022674 801568E4  */  .asciz  " right."
                        .balign 4

glabel D_801568EC
/* 02267C 801568EC  */  .asciz  "Score:\n"
                        .balign 4

glabel D_801568F4
/* 022684 801568F4  */  .asciz  "#048"
                        .balign 4

glabel D_801568FC
/* 02268C 801568FC  */  .asciz  " pts\n"
                        .balign 4

glabel D_80156904
/* 022694 80156904  */  .asciz  "\nIt's a new record."
                        .balign 4

glabel D_80156918
/* 0226A8 80156918  */  .asciz  "\nHigh Score: "
                        .balign 4

glabel D_80156928
/* 0226B8 80156928  */  .asciz  " pts"
                        .balign 4

glabel D_80156930
/* 0226C0 80156930  */  .asciz  "^4Good morning^^."
                        .balign 4

glabel D_80156944
/* 0226D4 80156944  */  .asciz  "Welcome back. \nDid you have fun?"
                        .balign 4

glabel D_80156968
/* 0226F8 80156968  */  .asciz  "^4Good morning^^.\n"
                        .balign 4

glabel D_8015697C
/* 02270C 8015697C  */  .asciz  "Are you and ^6PIKACHU^^\n"
                        .balign 4

glabel D_80156998
/* 022728 80156998  */  .asciz  "getting along?\f"
                        .balign 4

glabel D_801569A8
/* 022738 801569A8  */  .asciz  "Today, I have some good news\n"
                        .balign 4

glabel D_801569C8
/* 022758 801569C8  */  .asciz  "for you.\n"
                        .balign 4

glabel D_801569D4
/* 022764 801569D4  */  .asciz  "Look toward the sliding door."
                        .balign 4

glabel D_801569F4
/* 022784 801569F4  */  .asciz  "From here, you "
                        .balign 4

glabel D_80156A04
/* 022794 80156A04  */  .asciz  "can go to \n"
                        .balign 4

glabel D_80156A10
/* 0227A0 80156A10  */  .asciz  "^6PIKACHU^^'s Discovery Days.\f"
                        .balign 4

glabel D_80156A30
/* 0227C0 80156A30  */  .asciz  "^6PIKACHU^^'s Discovery Days\n"
                        .balign 4

glabel D_80156A50
/* 0227E0 80156A50  */  .asciz  "include the areas you've \nvisited so far.\n"
                        .balign 4

glabel D_80156A7C
/* 02280C 80156A7C  */  .asciz  "You can keep following along\n"
                        .balign 4

glabel D_80156A9C
/* 02282C 80156A9C  */  .asciz  "with ^6PIKACHU^^.\f"
                        .balign 4

glabel D_80156AB0
/* 022840 80156AB0  */  .asciz  "Next, why don't you go into\n"
                        .balign 4

glabel D_80156AD0
/* 022860 80156AD0  */  .asciz  "the yard to play?\n"
                        .balign 4

glabel D_80156AE4
/* 022874 80156AE4  */  .asciz  "Stand in front of the \nbedroom door."
                        .balign 4

glabel D_80156B0C
/* 02289C 80156B0C  */  .asciz  "Now ^bpress^^ the @I@J Button\n"
                        .balign 4

glabel D_80156B2C
/* 0228BC 80156B2C  */  .asciz  "to go to the yard."
                        .balign 4

glabel D_80156B40
/* 0228D0 80156B40  */  .asciz  "^4Good morning^^. It's Prof. Oak.\n"
                        .balign 4

glabel D_80156B64
/* 0228F4 80156B64  */  .asciz  "I have something to tell\n"
                        .balign 4

glabel D_80156B80
/* 022910 80156B80  */  .asciz  "you today.\f"
                        .balign 4

glabel D_80156B8C
/* 02291C 80156B8C  */  .asciz  "You've earned a new map.\n"
                        .balign 4

glabel D_80156BA8
/* 022938 80156BA8  */  .asciz  "It's called\n"
                        .balign 4

glabel D_80156BB8
/* 022948 80156BB8  */  .asciz  "^6PIKACHU^^'s Daring Days.\n"
                        .balign 4

glabel D_80156BD4
/* 022964 80156BD4  */  .asciz  "\f"
                        .balign 4

glabel D_80156BD8
/* 022968 80156BD8  */  .asciz  "These areas are a little more\n"
                        .balign 4

glabel D_80156BF8
/* 022988 80156BF8  */  .asciz  "difficult than the others.\n"
                        .balign 4

glabel D_80156C14
/* 0229A4 80156C14  */  .asciz  "But since you've passed my\n"
                        .balign 4

glabel D_80156C30
/* 0229C0 80156C30  */  .asciz  "training, you should be fine.\f"
                        .balign 4

glabel D_80156C50
/* 0229E0 80156C50  */  .asciz  "You can get to\n"
                        .balign 4

glabel D_80156C60
/* 0229F0 80156C60  */  .asciz  "^6PIKACHU^^'s Daring Days\n"
                        .balign 4

glabel D_80156C7C
/* 022A0C 80156C7C  */  .asciz  "from the left gate in the \nyard. Good luck."
                        .balign 4

glabel D_80156CA8
/* 022A38 80156CA8  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_80156CC8
/* 022A58 80156CC8  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_80156CF0
/* 022A80 80156CF0  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_80156D08
/* 022A98 80156D08  */  .asciz  "”^7Hey! There's a message!^^ ”"
                        .balign 4

glabel D_80156D2C
/* 022ABC 80156D2C  */  .asciz  "^bPress^^ the @M@N Button."
                        .balign 4

glabel D_80156D48
/* 022AD8 80156D48  */  .asciz  "^bPress^^ the @O@P Button."
                        .balign 4

glabel D_80156D64
/* 022AF4 80156D64  */  .asciz  "Now the first thing\n"
                        .balign 4

glabel D_80156D7C
/* 022B0C 80156D7C  */  .asciz  "I'll explain is the \n"
                        .balign 4

glabel D_80156D94
/* 022B24 80156D94  */  .asciz  "View Mode.\f"
                        .balign 4

glabel D_80156DA0
/* 022B30 80156DA0  */  .asciz  "Use the View Mode to\n"
                        .balign 4

glabel D_80156DB8
/* 022B48 80156DB8  */  .asciz  "look up there at ^6PIKACHU^^.\n"
                        .balign 4

glabel D_80156DD8
/* 022B68 80156DD8  */  .asciz  "\f"
                        .balign 4

glabel D_80156DDC
/* 022B6C 80156DDC  */  .asciz  "In the View Mode, you can use\n"
                        .balign 4

glabel D_80156DFC
/* 022B8C 80156DFC  */  .asciz  "@k@l to look\n"
                        .balign 4

glabel D_80156E0C
/* 022B9C 80156E0C  */  .asciz  "in any direction you'd like.\n"
                        .balign 4

glabel D_80156E2C
/* 022BBC 80156E2C  */  .asciz  "\f"
                        .balign 4

glabel D_80156E30
/* 022BC0 80156E30  */  .asciz  "First, ^bpress^^ the @O@P Button\n"
                        .balign 4

glabel D_80156E54
/* 022BE4 80156E54  */  .asciz  "to change to the\n"
                        .balign 4

glabel D_80156E68
/* 022BF8 80156E68  */  .asciz  "View Mode."
                        .balign 4

glabel D_80156E74
/* 022C04 80156E74  */  .asciz  "Switch to the View Mode."
                        .balign 4

glabel D_80156E90
/* 022C20 80156E90  */  .asciz  "Good. You were able to\n"
                        .balign 4

glabel D_80156EA8
/* 022C38 80156EA8  */  .asciz  "switch to the View Mode.\f"
                        .balign 4

glabel D_80156EC4
/* 022C54 80156EC4  */  .asciz  "Now tilt your @k@l\n"
                        .balign 4

glabel D_80156ED8
/* 022C68 80156ED8  */  .asciz  "^bforward^^ and ^bback^^ to\n"
                        .balign 4

glabel D_80156EF8
/* 022C88 80156EF8  */  .asciz  "try to look at ^6PIKACHU^^."
                        .balign 4

glabel D_80156F14
/* 022CA4 80156F14  */  .asciz  "Look at ^6PIKACHU^^'s eyes."
                        .balign 4

glabel D_80156F30
/* 022CC0 80156F30  */  .asciz  "Tilt @k@l ^bforward^^ and ^bback^^."
                        .balign 4

glabel D_80156F54
/* 022CE4 80156F54  */  .asciz  "There! You did a good\n"
                        .balign 4

glabel D_80156F6C
/* 022CFC 80156F6C  */  .asciz  "job of finding ^6PIKACHU^^.\f"
                        .balign 4

glabel D_80156F8C
/* 022D1C 80156F8C  */  .asciz  "Now ^bpress^^ the @O@P Button\n"
                        .balign 4

glabel D_80156FAC
/* 022D3C 80156FAC  */  .asciz  "to exit the View Mode."
                        .balign 4

glabel D_80156FC4
/* 022D54 80156FC4  */  .asciz  "What's this?\n"
                        .balign 4

glabel D_80156FD4
/* 022D64 80156FD4  */  .asciz  "It looks like ^6PIKACHU^^\n"
                        .balign 4

glabel D_80156FF0
/* 022D80 80156FF0  */  .asciz  "has gone off somewhere.\f"
                        .balign 4

glabel D_8015700C
/* 022D9C 8015700C  */  .asciz  "In times like this, you'll\n"
                        .balign 4

glabel D_80157028
/* 022DB8 80157028  */  .asciz  "find another trick to be very\n"
                        .balign 4

glabel D_80157048
/* 022DD8 80157048  */  .asciz  "helpful - the ^6PIKACHU^^ Mode!\n"
                        .balign 4

glabel D_8015706C
/* 022DFC 8015706C  */  .asciz  "\f"
                        .balign 4

glabel D_80157070
/* 022E00 80157070  */  .asciz  "When you use the\n"
                        .balign 4

glabel D_80157084
/* 022E14 80157084  */  .asciz  "^6PIKACHU^^ Mode, you will\n"
                        .balign 4

glabel D_801570A0
/* 022E30 801570A0  */  .asciz  "automatically look for \n^6PIKACHU^^.\f"
                        .balign 4

glabel D_801570C8
/* 022E58 801570C8  */  .asciz  "Just ^bpress^^ the @M@N Button\n"
                        .balign 4

glabel D_801570E8
/* 022E78 801570E8  */  .asciz  "to switch to the \n^6PIKACHU^^ Mode.\f"
                        .balign 4

glabel D_80157110
/* 022EA0 80157110  */  .asciz  "Now use the ^6PIKACHU^^ Mode\n"
                        .balign 4

glabel D_80157130
/* 022EC0 80157130  */  .asciz  "to try to find\n"
                        .balign 4

glabel D_80157140
/* 022ED0 80157140  */  .asciz  "^6PIKACHU^^.\n"
                        .balign 4

glabel D_80157150
/* 022EE0 80157150  */  .asciz  "^bPress^^ the @M@N Button."
                        .balign 4

glabel D_8015716C
/* 022EFC 8015716C  */  .asciz  "Find ^6PIKACHU^^."
                        .balign 4

glabel D_80157180
/* 022F10 80157180  */  .asciz  "You did a good job\n"
                        .balign 4

glabel D_80157194
/* 022F24 80157194  */  .asciz  "of finding ^6PIKACHU^^.\f"
                        .balign 4

glabel D_801571B0
/* 022F40 801571B0  */  .asciz  "These two modes should help\n"
                        .balign 4

glabel D_801571D0
/* 022F60 801571D0  */  .asciz  "you out in the areas ahead.\f"
                        .balign 4

glabel D_801571F0
/* 022F80 801571F0  */  .asciz  "To master these modes, we'll\n"
                        .balign 4

glabel D_80157210
/* 022FA0 80157210  */  .asciz  "head out for some training.\f"
                        .balign 4

glabel D_80157230
/* 022FC0 80157230  */  .asciz  "Go to ^6PIKACHU^^'s Playground!"
                        .balign 4

glabel D_80157250
/* 022FE0 80157250  */  .asciz  "”^7It's another typical morning.^^ ”"
                        .balign 4

glabel D_80157278
/* 023008 80157278  */  .asciz  "^4Good morning^^.\n"
                        .balign 4

glabel D_8015728C
/* 02301C 8015728C  */  .asciz  "How are you doing?\f"
                        .balign 4

glabel D_801572A0
/* 023030 801572A0  */  .asciz  "There's something I want to\n"
                        .balign 4

glabel D_801572C0
/* 023050 801572C0  */  .asciz  "teach you today.\n"
                        .balign 4

glabel D_801572D4
/* 023064 801572D4  */  .asciz  "I've added two features to\n"
                        .balign 4

glabel D_801572F0
/* 023080 801572F0  */  .asciz  "the Pok´Helper.\f"
                        .balign 4

glabel D_80157304
/* 023094 80157304  */  .asciz  "Let me explain how to\n"
                        .balign 4

glabel D_8015731C
/* 0230AC 8015731C  */  .asciz  "use them."
                        .balign 4

glabel D_80157328
/* 0230B8 80157328  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_80157348
/* 0230D8 80157348  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_80157370
/* 023100 80157370  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_80157388
/* 023118 80157388  */  .asciz  "”^7Hey! There's a message!^^ ”"
                        .balign 4

glabel D_801573AC
/* 02313C 801573AC  */  .asciz  "”^7It's quiet this morning...^^ ”"
                        .balign 4

glabel D_801573D0
/* 023160 801573D0  */  .asciz  "”^7Hey!^^ ^6PIKACHU^7's gone!^^ ”"
                        .balign 4

glabel D_801573F4
/* 023184 801573F4  */  .asciz  "”^7Hey!^^ ^6PIKACHU^^! ^7Not again...^^ ”"
                        .balign 4

glabel D_80157420
/* 0231B0 80157420  */  .asciz  "I see my package arrived.\f"
                        .balign 4

glabel D_8015743C
/* 0231CC 8015743C  */  .asciz  "That's the item I used\n"
                        .balign 4

glabel D_80157454
/* 0231E4 80157454  */  .asciz  "before I created the\n"
                        .balign 4

glabel D_8015746C
/* 0231FC 8015746C  */  .asciz  "Pok´Helper..."
                        .balign 4

glabel D_8015747C
/* 02320C 8015747C  */  .asciz  "It's a megaphone!"
                        .balign 4

glabel D_80157490
/* 023220 80157490  */  .asciz  "^6PIKACHU^^ appears to be at\n"
                        .balign 4

glabel D_801574B0
/* 023240 801574B0  */  .asciz  "Viridian Forest Edge.\n"
                        .balign 4

glabel D_801574C8
/* 023258 801574C8  */  .asciz  "Hurry up and follow it!"
                        .balign 4

glabel D_801574E0
/* 023270 801574E0  */  .asciz  "Wake up!\n"
                        .balign 4

glabel D_801574EC
/* 02327C 801574EC  */  .asciz  "What on earth has\n"
                        .balign 4

glabel D_80157500
/* 023290 80157500  */  .asciz  "^6PIKACHU^^ done?"
                        .balign 4

glabel D_80157514
/* 0232A4 80157514  */  .asciz  "Are you and ^6PIKACHU^^ getting\n"
                        .balign 4

glabel D_80157538
/* 0232C8 80157538  */  .asciz  "along?\n"
                        .balign 4

glabel D_80157540
/* 0232D0 80157540  */  .asciz  "\n"
                        .balign 4

glabel D_80157544
/* 0232D4 80157544  */  .asciz  "...What? You can't find it?!?\f"
                        .balign 4

glabel D_80157564
/* 0232F4 80157564  */  .asciz  "Did ^6PIKACHU^^ leave the\n"
                        .balign 4

glabel D_80157580
/* 023310 80157580  */  .asciz  "house?\n"
                        .balign 4

glabel D_80157588
/* 023318 80157588  */  .asciz  "Why don't you search for it\n"
                        .balign 4

glabel D_801575A8
/* 023338 801575A8  */  .asciz  "using the Pok´Helper?\f"
                        .balign 4

glabel D_801575C0
/* 023350 801575C0  */  .asciz  "What? You can't find the\n"
                        .balign 4

glabel D_801575DC
/* 02336C 801575DC  */  .asciz  "Pok´Helper either?\n"
                        .balign 4

glabel D_801575F4
/* 023384 801575F4  */  .asciz  "Did ^6PIKACHU^^ take it?\f"
                        .balign 4

glabel D_80157610
/* 0233A0 80157610  */  .asciz  "Hmm...\n"
                        .balign 4

glabel D_80157618
/* 0233A8 80157618  */  .asciz  "Then I'll send you a\n"
                        .balign 4

glabel D_80157630
/* 0233C0 80157630  */  .asciz  "package electronically.\n"
                        .balign 4

glabel D_8015764C
/* 0233DC 8015764C  */  .asciz  "Wait just a second!"
                        .balign 4

glabel D_80157660_DCF60
/* 0233F0 80157660 596F7520 */  .word  0x596F7520
/* 0233F4 80157664 676F7420 */  .word  0x676F7420
/* 0233F8 80157668 61207061 */  .word  0x61207061
/* 0233FC 8015766C 636B6167 */  .word  0x636B6167
/* 023400 80157670 65206672 */  .word  0x65206672
/* 023404 80157674 6F6D0A00 */  .word  0x6F6D0A00

glabel D_80157678
/* 023408 80157678  */  .asciz  "Prof. Oak."
                        .balign 4

glabel D_80157684
/* 023414 80157684  */  .asciz  "I really wonder what happened\n"
                        .balign 4

glabel D_801576A4
/* 023434 801576A4  */  .asciz  "to ^6PIKACHU^^.\n"
                        .balign 4

glabel D_801576B8
/* 023448 801576B8  */  .asciz  "I hope it comes back soon."
                        .balign 4

glabel D_801576D4
/* 023464 801576D4  */  .asciz  "Wake up!\n"
                        .balign 4

glabel D_801576E0
/* 023470 801576E0  */  .asciz  "^6PIKACHU^^ is\n"
                        .balign 4

glabel D_801576F0
/* 023480 801576F0  */  .asciz  "gone again!"
                        .balign 4

glabel D_801576FC
/* 02348C 801576FC  */  .asciz  "Is it gone again?\n\n"
                        .balign 4

glabel D_80157710
/* 0234A0 80157710  */  .asciz  "What's this? It appears to\n"
                        .balign 4

glabel D_8015772C
/* 0234BC 8015772C  */  .asciz  "be at Viridian Forest Edge.\f"
                        .balign 4

glabel D_8015774C
/* 0234DC 8015774C  */  .asciz  "For now, use the ^4megaphone^^\n"
                        .balign 4

glabel D_8015776C
/* 0234FC 8015776C  */  .asciz  "to get it to come back."
                        .balign 4

glabel D_80157784
/* 023514 80157784  */  .asciz  "I wonder if little ^6PIKACHU^^\n"
                        .balign 4

glabel D_801577A4
/* 023534 801577A4  */  .asciz  "learned some strange\n"
                        .balign 4

glabel D_801577BC
/* 02354C 801577BC  */  .asciz  "game."
                        .balign 4

glabel D_801577C4
/* 023554 801577C4  */  .asciz  "Wake up!\n"
                        .balign 4

glabel D_801577D0
/* 023560 801577D0  */  .asciz  "^6PIKACHU^^ has learned\n"
                        .balign 4

glabel D_801577EC
/* 02357C 801577EC  */  .asciz  "a bad habit!"
                        .balign 4

glabel D_801577FC
/* 02358C 801577FC  */  .asciz  "^6PIKACHU^^ must really like\n"
                        .balign 4

glabel D_8015781C
/* 0235AC 8015781C  */  .asciz  "the megaphone game.\f"
                        .balign 4

glabel D_80157834
/* 0235C4 80157834  */  .asciz  "Be sure to be back in\n"
                        .balign 4

glabel D_8015784C
/* 0235DC 8015784C  */  .asciz  "time for dinner."
                        .balign 4

glabel D_80157860
/* 0235F0 80157860  */  .asciz  "^4Good morning^^.\f"
                        .balign 4

glabel D_80157874
/* 023604 80157874  */  .asciz  "Today, I'm sending a secret\n"
                        .balign 4

glabel D_80157894
/* 023624 80157894  */  .asciz  "message with no notice so\n"
                        .balign 4

glabel D_801578B0
/* 023640 801578B0  */  .asciz  "^6PIKACHU^^ can't hear it.\f"
                        .balign 4

glabel D_801578CC
/* 02365C 801578CC  */  .asciz  "I have a request for you \ntoday.\n"
                        .balign 4

glabel D_801578F0
/* 023680 801578F0  */  .asciz  "I want you to send ^6PIKACHU^^\n"
                        .balign 4

glabel D_80157910
/* 0236A0 80157910  */  .asciz  "out shopping by itself.\f"
                        .balign 4

glabel D_8015792C
/* 0236BC 8015792C  */  .asciz  "It can buy anything.\n"
                        .balign 4

glabel D_80157944
/* 0236D4 80157944  */  .asciz  "Ask it for whatever \nyou want.\n"
                        .balign 4

glabel D_80157964
/* 0236F4 80157964  */  .asciz  "I'm counting on you!"
                        .balign 4

glabel D_8015797C
/* 02370C 8015797C  */  .asciz  "”^7It's morning.^^\n^7#006It's another sunny day.^^ ”"
                        .balign 4

glabel D_801579B4
/* 023744 801579B4  */  .asciz  "If you're going out, would you\n"
                        .balign 4

glabel D_801579D4
/* 023764 801579D4  */  .asciz  "please bring me back the\n"
                        .balign 4

glabel D_801579F0
/* 023780 801579F0  */  .asciz  "^4"
                        .balign 4

glabel D_801579F4
/* 023784 801579F4  */  .asciz  "^^?"
                        .balign 4

glabel D_801579F8
/* 023788 801579F8  */  .asciz  "I'll give you @Y@Z"
                        .balign 4

glabel D_80157A0C
/* 02379C 80157A0C  */  .asciz  ",\n"
                        .balign 4

glabel D_80157A10
/* 0237A0 80157A10  */  .asciz  "and you can keep the change,\n"
                        .balign 4

glabel D_80157A30
/* 0237C0 80157A30  */  .asciz  "so get ^6PIKACHU^^ a\n"
                        .balign 4

glabel D_80157A48
/* 0237D8 80157A48  */  .asciz  "little treat, ^4OK^^?"
                        .balign 4

glabel D_80157A60
/* 0237F0 80157A60  */  .asciz  "”^7Hey,^^ ^6PIKACHU^7,^^\n"
                        .balign 4

glabel D_80157A7C
/* 02380C 80157A7C  */  .asciz  "#006^7can you buy a^^\n"
                        .balign 4

glabel D_80157A94
/* 023824 80157A94  */  .asciz  "#006^4"
                        .balign 4

glabel D_80157A9C
/* 02382C 80157A9C  */  .asciz  " ^7today?^^ ”"
                        .balign 4

glabel D_80157AAC
/* 02383C 80157AAC  */  .asciz  "^6PIKACHU^^ was sent on an errand."
                        .balign 4

glabel D_80157AD0
/* 023860 80157AD0  */  .asciz  "Did you ask it to go shopping?\f"
                        .balign 4

glabel D_80157AF0
/* 023880 80157AF0  */  .asciz  "Now then, hide in this\n"
                        .balign 4

glabel D_80157B08
/* 023898 80157B08  */  .asciz  "^4cardboard box^^ and follow\n"
                        .balign 4

glabel D_80157B28
/* 0238B8 80157B28  */  .asciz  "^6PIKACHU^^ without being \nnoticed."
                        .balign 4

glabel D_80157B4C
/* 0238DC 80157B4C  */  .asciz  "”^7Will it be ^4OK^^ ^7on its own?^^\n"
                        .balign 4

glabel D_80157B74
/* 023904 80157B74  */  .asciz  "#006^7Time to hide in the^^\n"
                        .balign 4

glabel D_80157B94
/* 023924 80157B94  */  .asciz  "#006^4cardboard box^^ ^7and follow^^\n#008^6PIKACHU^^ ^7again.^^ ”"
                        .balign 4

glabel D_80157BD8
/* 023968 80157BD8  */  .asciz  "^6PIKACHU^^ heard you call it."
                        .balign 4

glabel D_80157BF8
/* 023988 80157BF8  */  .asciz  "^6PIKACHU^^ can't respond right now."
                        .balign 4

glabel D_80157C20_DCF60
/* 0239B0 80157C20  */  .asciz  "^6PIKACHU^^ woke up."
                        .balign 4

glabel D_80157C38
/* 0239C8 80157C38  */  .asciz  "”^7Hey! There's a message!^^ ”"
                        .balign 4

glabel D_80157C5C
/* 0239EC 80157C5C  */  .asciz  "”^7That means^^\n#006^7there's a message!^^ ”"
                        .balign 4

glabel D_80157C8C
/* 023A1C 80157C8C  */  .asciz  "^4Good morning^^!\n"
                        .balign 4

glabel D_80157CA0
/* 023A30 80157CA0  */  .asciz  "^6PIKACHU^^ sure was busy\n"
                        .balign 4

glabel D_80157CBC
/* 023A4C 80157CBC  */  .asciz  "yesterday."
                        .balign 4

glabel D_80157CC8
/* 023A58 80157CC8  */  .asciz  "Well...Ummm...There's\n"
                        .balign 4

glabel D_80157CE0
/* 023A70 80157CE0  */  .asciz  "something important I have \nto tell you.\n\n"
                        .balign 4

glabel D_80157D0C
/* 023A9C 80157D0C  */  .asciz  "Come to Viridian Forest."
                        .balign 4

glabel D_80157D28
/* 023AB8 80157D28  */  .asciz  "”^7It's morning...^^ ”"
                        .balign 4

glabel D_80157D44
/* 023AD4 80157D44  */  .asciz  "”^7Hey! We'll be together all the^^\n#006^7time from now on!^^ ”"
                        .balign 4

glabel D_80157D88
/* 023B18 80157D88  */  .asciz  "”^7Home at last.^^ ”"
                        .balign 4

glabel D_80157DA0
/* 023B30 80157DA0  */  .asciz  "Welcome home.\n"
                        .balign 4

glabel D_80157DB0
/* 023B40 80157DB0  */  .asciz  "You sure look happy.\n\n"
                        .balign 4

glabel D_80157DC8
/* 023B58 80157DC8  */  .asciz  "Did the test go well?"
                        .balign 4

glabel D_80157DE0
/* 023B70 80157DE0  */  .asciz  "Is that so...you got to talk\n"
                        .balign 4

glabel D_80157E00
/* 023B90 80157E00  */  .asciz  "to ^6PIKACHU^^? Are you going\n"
                        .balign 4

glabel D_80157E20
/* 023BB0 80157E20  */  .asciz  "out again tomorrow?\f"
                        .balign 4

glabel D_80157E38
/* 023BC8 80157E38  */  .asciz  "Then you should go to bed\n"
                        .balign 4

glabel D_80157E54
/* 023BE4 80157E54  */  .asciz  "early tonight.\n"
                        .balign 4

glabel D_80157E64
/* 023BF4 80157E64  */  .asciz  "^4Good night^^."
                        .balign 4

glabel D_80157E74
/* 023C04 80157E74  */  .asciz  "”^7Hey! Getting to talk to^^\n"
                        .balign 4

glabel D_80157E94
/* 023C24 80157E94  */  .asciz  "#006^6PIKACHU^^ ^7was great!^^\n"
                        .balign 4

glabel D_80157EB4
/* 023C44 80157EB4  */  .asciz  "#006^7How will tomorrow go?^^ ”"
                        .balign 4

glabel D_80157ED8
/* 023C68 80157ED8  */  .asciz  "”^7Hey! It sure was fun being^^\n"
                        .balign 4

glabel D_80157EFC
/* 023C8C 80157EFC  */  .asciz  "#006^7able to talk to^^ ^6PIKACHU^^\n#006^7today.^^ ”\f"
                        .balign 4

glabel D_80157F34
/* 023CC4 80157F34  */  .asciz  "”^7It would be nice to play with^^\n"
                        .balign 4

glabel D_80157F5C
/* 023CEC 80157F5C  */  .asciz  "#006^6PIKACHU^^ ^7tomorrow, too.^^ ”\n"
                        .balign 4

glabel D_80157F84
/* 023D14 80157F84  */  .asciz  "”^7Gosh, will^^ ^6PIKACHU^^ ^7come^^\n"
                        .balign 4

glabel D_80157FAC
/* 023D3C 80157FAC  */  .asciz  "#006^7tomorrow, too?^^ ”\n"
                        .balign 4

glabel D_80157FC8
/* 023D58 80157FC8  */  .asciz  "”^7Where will^^ ^6PIKACHU^^ ^7go to^^\n"
                        .balign 4

glabel D_80157FF0
/* 023D80 80157FF0  */  .asciz  "#006^7next?^^ ”\n"
                        .balign 4

glabel D_80158004
/* 023D94 80158004  */  .asciz  "”^7What will^^ ^6PIKACHU^^ ^7do for^^\n"
                        .balign 4

glabel D_8015802C
/* 023DBC 8015802C  */  .asciz  "#006^7fun next time?^^ ”\n"
                        .balign 4

glabel D_80158048
/* 023DD8 80158048  */  .asciz  "”^7Are there any other things^^\n"
                        .balign 4

glabel D_8015806C
/* 023DFC 8015806C  */  .asciz  "#006^7to do along with^^ "
                        .balign 4

glabel D_80158088
/* 023E18 80158088  */  .asciz  "^6PIKACHU^7?^^ ”"
                        .balign 4

glabel D_8015809C
/* 023E2C 8015809C  */  .asciz  "BULBASAUR"
                        .balign 4

glabel D_801580A8
/* 023E38 801580A8  */  .asciz  "IVYSAUR"
                        .balign 4

glabel D_801580B0
/* 023E40 801580B0  */  .asciz  "VENUSAUR"
                        .balign 4

glabel D_801580BC
/* 023E4C 801580BC  */  .asciz  "CHARMANDER"
                        .balign 4

glabel D_801580C8
/* 023E58 801580C8  */  .asciz  "CHARMELEON"
                        .balign 4

glabel D_801580D4
/* 023E64 801580D4  */  .asciz  "CHARIZARD"
                        .balign 4

glabel D_801580E0
/* 023E70 801580E0  */  .asciz  "SQUIRTLE"
                        .balign 4

glabel D_801580EC
/* 023E7C 801580EC  */  .asciz  "WARTORTLE"
                        .balign 4

glabel D_801580F8
/* 023E88 801580F8  */  .asciz  "BLASTOISE"
                        .balign 4

glabel D_80158104
/* 023E94 80158104  */  .asciz  "CATERPIE"
                        .balign 4

glabel D_80158110
/* 023EA0 80158110  */  .asciz  "METAPOD"
                        .balign 4

glabel D_80158118
/* 023EA8 80158118  */  .asciz  "BUTTERFREE"
                        .balign 4

glabel D_80158124
/* 023EB4 80158124  */  .asciz  "WEEDLE"
                        .balign 4

glabel D_8015812C
/* 023EBC 8015812C  */  .asciz  "KAKUNA"
                        .balign 4

glabel D_80158134
/* 023EC4 80158134  */  .asciz  "BEEDRILL"
                        .balign 4

glabel D_80158140
/* 023ED0 80158140  */  .asciz  "PIDGEY"
                        .balign 4

glabel D_80158148
/* 023ED8 80158148  */  .asciz  "PIDGEOTTO"
                        .balign 4

glabel D_80158154
/* 023EE4 80158154  */  .asciz  "PIDGEOT"
                        .balign 4

glabel D_8015815C
/* 023EEC 8015815C  */  .asciz  "RATTATA"
                        .balign 4

glabel D_80158164
/* 023EF4 80158164  */  .asciz  "RATICATE"
                        .balign 4

glabel D_80158170
/* 023F00 80158170  */  .asciz  "SPEAROW"
                        .balign 4

glabel D_80158178
/* 023F08 80158178  */  .asciz  "FEAROW"
                        .balign 4

glabel D_80158180
/* 023F10 80158180  */  .asciz  "EKANS"
                        .balign 4

glabel D_80158188
/* 023F18 80158188  */  .asciz  "ARBOK"
                        .balign 4

glabel D_80158190
/* 023F20 80158190  */  .asciz  "PIKACHU"
                        .balign 4

glabel D_80158198
/* 023F28 80158198  */  .asciz  "RAICHU"
                        .balign 4

glabel D_801581A0
/* 023F30 801581A0  */  .asciz  "SANDSHREW"
                        .balign 4

glabel D_801581AC
/* 023F3C 801581AC  */  .asciz  "SANDSLASH"
                        .balign 4

glabel D_801581B8
/* 023F48 801581B8  */  .asciz  "NIDORAN FEMALE"
                        .balign 4

glabel D_801581C8
/* 023F58 801581C8  */  .asciz  "NIDORINA"
                        .balign 4

glabel D_801581D4
/* 023F64 801581D4  */  .asciz  "NIDOQUEEN"
                        .balign 4

glabel D_801581E0
/* 023F70 801581E0  */  .asciz  "NIDORAN MALE"
                        .balign 4

glabel D_801581F0
/* 023F80 801581F0  */  .asciz  "NIDORINO"
                        .balign 4

glabel D_801581FC
/* 023F8C 801581FC  */  .asciz  "NIDOKING"
                        .balign 4

glabel D_80158208
/* 023F98 80158208  */  .asciz  "CLEFAIRY"
                        .balign 4

glabel D_80158214
/* 023FA4 80158214  */  .asciz  "CLEFABLE"
                        .balign 4

glabel D_80158220
/* 023FB0 80158220  */  .asciz  "VULPIX"
                        .balign 4

glabel D_80158228
/* 023FB8 80158228  */  .asciz  "NINETALES"
                        .balign 4

glabel D_80158234
/* 023FC4 80158234  */  .asciz  "JIGGLYPUFF"
                        .balign 4

glabel D_80158240
/* 023FD0 80158240  */  .asciz  "WIGGLYTUFF"
                        .balign 4

glabel D_8015824C
/* 023FDC 8015824C  */  .asciz  "ZUBAT"
                        .balign 4

glabel D_80158254
/* 023FE4 80158254  */  .asciz  "GOLBAT"
                        .balign 4

glabel D_8015825C
/* 023FEC 8015825C  */  .asciz  "ODDISH"
                        .balign 4

glabel D_80158264
/* 023FF4 80158264  */  .asciz  "GLOOM"
                        .balign 4

glabel D_8015826C
/* 023FFC 8015826C  */  .asciz  "VILEPLUME"
                        .balign 4

glabel D_80158278
/* 024008 80158278  */  .asciz  "PARAS"
                        .balign 4

glabel D_80158280
/* 024010 80158280  */  .asciz  "PARASECT"
                        .balign 4

glabel D_8015828C
/* 02401C 8015828C  */  .asciz  "VENONAT"
                        .balign 4

glabel D_80158294
/* 024024 80158294  */  .asciz  "VENOMOTH"
                        .balign 4

glabel D_801582A0
/* 024030 801582A0  */  .asciz  "DIGLETT"
                        .balign 4

glabel D_801582A8
/* 024038 801582A8  */  .asciz  "DUGTRIO"
                        .balign 4

glabel D_801582B0
/* 024040 801582B0  */  .asciz  "MEOWTH"
                        .balign 4

glabel D_801582B8
/* 024048 801582B8  */  .asciz  "PERSIAN"
                        .balign 4

glabel D_801582C0
/* 024050 801582C0  */  .asciz  "PSYDUCK"
                        .balign 4

glabel D_801582C8
/* 024058 801582C8  */  .asciz  "GOLDUCK"
                        .balign 4

glabel D_801582D0
/* 024060 801582D0  */  .asciz  "MANKEY"
                        .balign 4

glabel D_801582D8
/* 024068 801582D8  */  .asciz  "PRIMEAPE"
                        .balign 4

glabel D_801582E4
/* 024074 801582E4  */  .asciz  "GROWLITHE"
                        .balign 4

glabel D_801582F0
/* 024080 801582F0  */  .asciz  "ARCANINE"
                        .balign 4

glabel D_801582FC
/* 02408C 801582FC  */  .asciz  "POLIWAG"
                        .balign 4

glabel D_80158304
/* 024094 80158304  */  .asciz  "POLIWHIRL"
                        .balign 4

glabel D_80158310
/* 0240A0 80158310  */  .asciz  "POLIWRATH"
                        .balign 4

glabel D_8015831C
/* 0240AC 8015831C  */  .asciz  "ABRA"
                        .balign 4

glabel D_80158324
/* 0240B4 80158324  */  .asciz  "KADABRA"
                        .balign 4

glabel D_8015832C
/* 0240BC 8015832C  */  .asciz  "ALAKAZAM"
                        .balign 4

glabel D_80158338
/* 0240C8 80158338  */  .asciz  "MACHOP"
                        .balign 4

glabel D_80158340
/* 0240D0 80158340  */  .asciz  "MACHOKE"
                        .balign 4

glabel D_80158348
/* 0240D8 80158348  */  .asciz  "MACHAMP"
                        .balign 4

glabel D_80158350
/* 0240E0 80158350  */  .asciz  "BELLSPROUT"
                        .balign 4

glabel D_8015835C
/* 0240EC 8015835C  */  .asciz  "WEEPINBELL"
                        .balign 4

glabel D_80158368
/* 0240F8 80158368  */  .asciz  "VICTREEBEL"
                        .balign 4

glabel D_80158374
/* 024104 80158374  */  .asciz  "TENTACOOL"
                        .balign 4

glabel D_80158380
/* 024110 80158380  */  .asciz  "TENTACRUEL"
                        .balign 4

glabel D_8015838C
/* 02411C 8015838C  */  .asciz  "GEODUDE"
                        .balign 4

glabel D_80158394
/* 024124 80158394  */  .asciz  "GRAVELER"
                        .balign 4

glabel D_801583A0
/* 024130 801583A0  */  .asciz  "GOLEM"
                        .balign 4

glabel D_801583A8
/* 024138 801583A8  */  .asciz  "PONYTA"
                        .balign 4

glabel D_801583B0
/* 024140 801583B0  */  .asciz  "RAPIDASH"
                        .balign 4

glabel D_801583BC
/* 02414C 801583BC  */  .asciz  "SLOWPOKE"
                        .balign 4

glabel D_801583C8
/* 024158 801583C8  */  .asciz  "SLOWBRO"
                        .balign 4

glabel D_801583D0
/* 024160 801583D0  */  .asciz  "MAGNEMITE"
                        .balign 4

glabel D_801583DC
/* 02416C 801583DC  */  .asciz  "MAGNETON"
                        .balign 4

glabel D_801583E8
/* 024178 801583E8  */  .asciz  "FARFETCH'D"
                        .balign 4

glabel D_801583F4
/* 024184 801583F4  */  .asciz  "DODUO"
                        .balign 4

glabel D_801583FC
/* 02418C 801583FC  */  .asciz  "DODRIO"
                        .balign 4

glabel D_80158404
/* 024194 80158404  */  .asciz  "SEEL"
                        .balign 4

glabel D_8015840C
/* 02419C 8015840C  */  .asciz  "DEWGONG"
                        .balign 4

glabel D_80158414
/* 0241A4 80158414  */  .asciz  "GRIMER"
                        .balign 4

glabel D_8015841C
/* 0241AC 8015841C  */  .asciz  "MUK"
                        .balign 4

glabel D_80158420
/* 0241B0 80158420  */  .asciz  "SHELLDER"
                        .balign 4

glabel D_8015842C
/* 0241BC 8015842C  */  .asciz  "CLOYSTER"
                        .balign 4

glabel D_80158438
/* 0241C8 80158438  */  .asciz  "GASTLY"
                        .balign 4

glabel D_80158440
/* 0241D0 80158440  */  .asciz  "HAUNTER"
                        .balign 4

glabel D_80158448
/* 0241D8 80158448  */  .asciz  "GENGAR"
                        .balign 4

glabel D_80158450
/* 0241E0 80158450  */  .asciz  "ONIX"
                        .balign 4

glabel D_80158458
/* 0241E8 80158458  */  .asciz  "DROWZEE"
                        .balign 4

glabel D_80158460
/* 0241F0 80158460  */  .asciz  "HYPNO"
                        .balign 4

glabel D_80158468
/* 0241F8 80158468  */  .asciz  "KRABBY"
                        .balign 4

glabel D_80158470
/* 024200 80158470  */  .asciz  "KINGLER"
                        .balign 4

glabel D_80158478
/* 024208 80158478  */  .asciz  "VOLTORB"
                        .balign 4

glabel D_80158480
/* 024210 80158480  */  .asciz  "ELECTRODE"
                        .balign 4

glabel D_8015848C
/* 02421C 8015848C  */  .asciz  "EXEGGCUTE"
                        .balign 4

glabel D_80158498
/* 024228 80158498  */  .asciz  "EXEGGUTOR"
                        .balign 4

glabel D_801584A4
/* 024234 801584A4  */  .asciz  "CUBONE"
                        .balign 4

glabel D_801584AC
/* 02423C 801584AC  */  .asciz  "MAROWAK"
                        .balign 4

glabel D_801584B4
/* 024244 801584B4  */  .asciz  "HITMONLEE"
                        .balign 4

glabel D_801584C0
/* 024250 801584C0  */  .asciz  "HITMONCHAN"
                        .balign 4

glabel D_801584CC
/* 02425C 801584CC  */  .asciz  "LICKITUNG"
                        .balign 4

glabel D_801584D8
/* 024268 801584D8  */  .asciz  "KOFFING"
                        .balign 4

glabel D_801584E0
/* 024270 801584E0  */  .asciz  "WEEZING"
                        .balign 4

glabel D_801584E8
/* 024278 801584E8  */  .asciz  "RHYHORN"
                        .balign 4

glabel D_801584F0
/* 024280 801584F0  */  .asciz  "RHYDON"
                        .balign 4

glabel D_801584F8
/* 024288 801584F8  */  .asciz  "CHANSEY"
                        .balign 4

glabel D_80158500
/* 024290 80158500  */  .asciz  "TANGELA"
                        .balign 4

glabel D_80158508
/* 024298 80158508  */  .asciz  "KANGASKHAN"
                        .balign 4

glabel D_80158514
/* 0242A4 80158514  */  .asciz  "HORSEA"
                        .balign 4

glabel D_8015851C
/* 0242AC 8015851C  */  .asciz  "SEADRA"
                        .balign 4

glabel D_80158524
/* 0242B4 80158524  */  .asciz  "GOLDEEN"
                        .balign 4

glabel D_8015852C
/* 0242BC 8015852C  */  .asciz  "SEAKING"
                        .balign 4

glabel D_80158534
/* 0242C4 80158534  */  .asciz  "STARYU"
                        .balign 4

glabel D_8015853C
/* 0242CC 8015853C  */  .asciz  "STARMIE"
                        .balign 4

glabel D_80158544
/* 0242D4 80158544  */  .asciz  "MR. MIME"
                        .balign 4

glabel D_80158550
/* 0242E0 80158550  */  .asciz  "SCYTHER"
                        .balign 4

glabel D_80158558
/* 0242E8 80158558  */  .asciz  "JYNX"
                        .balign 4

glabel D_80158560
/* 0242F0 80158560  */  .asciz  "ELECTABUZZ"
                        .balign 4

glabel D_8015856C
/* 0242FC 8015856C  */  .asciz  "MAGMAR"
                        .balign 4

glabel D_80158574
/* 024304 80158574  */  .asciz  "PINSIR"
                        .balign 4

glabel D_8015857C
/* 02430C 8015857C  */  .asciz  "TAUROS"
                        .balign 4

glabel D_80158584
/* 024314 80158584  */  .asciz  "MAGIKARP"
                        .balign 4

glabel D_80158590
/* 024320 80158590  */  .asciz  "GYARADOS"
                        .balign 4

glabel D_8015859C
/* 02432C 8015859C  */  .asciz  "LAPRAS"
                        .balign 4

glabel D_801585A4
/* 024334 801585A4  */  .asciz  "DITTO"
                        .balign 4

glabel D_801585AC
/* 02433C 801585AC  */  .asciz  "EEVEE"
                        .balign 4

glabel D_801585B4
/* 024344 801585B4  */  .asciz  "VAPOREON"
                        .balign 4

glabel D_801585C0
/* 024350 801585C0  */  .asciz  "JOLTEON"
                        .balign 4

glabel D_801585C8
/* 024358 801585C8  */  .asciz  "FLAREON"
                        .balign 4

glabel D_801585D0
/* 024360 801585D0  */  .asciz  "PORYGON"
                        .balign 4

glabel D_801585D8
/* 024368 801585D8  */  .asciz  "OMANYTE"
                        .balign 4

glabel D_801585E0
/* 024370 801585E0  */  .asciz  "OMASTAR"
                        .balign 4

glabel D_801585E8
/* 024378 801585E8  */  .asciz  "KABUTO"
                        .balign 4

glabel D_801585F0
/* 024380 801585F0  */  .asciz  "KABUTOPS"
                        .balign 4

glabel D_801585FC
/* 02438C 801585FC  */  .asciz  "AERODACTYL"
                        .balign 4

glabel D_80158608
/* 024398 80158608  */  .asciz  "SNORLAX"
                        .balign 4

glabel D_80158610
/* 0243A0 80158610  */  .asciz  "ARTICUNO"
                        .balign 4

glabel D_8015861C
/* 0243AC 8015861C  */  .asciz  "ZAPDOS"
                        .balign 4

glabel D_80158624
/* 0243B4 80158624  */  .asciz  "MOLTRES"
                        .balign 4

glabel D_8015862C
/* 0243BC 8015862C  */  .asciz  "DRATINI"
                        .balign 4

glabel D_80158634
/* 0243C4 80158634  */  .asciz  "DRAGONAIR"
                        .balign 4

glabel D_80158640
/* 0243D0 80158640  */  .asciz  "DRAGONITE"
                        .balign 4

glabel D_8015864C
/* 0243DC 8015864C  */  .asciz  "MEWTWO"
                        .balign 4

glabel D_80158654
/* 0243E4 80158654  */  .asciz  "MEW"
                        .balign 4

glabel D_80158658
/* 0243E8 80158658  */  .asciz  "TOP OF JIGGLYPUFF"
                        .balign 4

glabel D_8015866C
/* 0243FC 8015866C  */  .asciz  "TOGEPI"
                        .balign 4

glabel D_80158674
/* 024404 80158674  */  .asciz  "Bedroom Door\nThis leads to \nThe Front Yard.\nPress @I@J to go through it."
                        .balign 4
/* 024450 801586C0  */  .asciz  "getBlockType out of range.\n"
                        .balign 4

glabel D_801586DC
/* 02446C 801586DC 439D8000 */  .float  315.0
/* 024470 801586E0 40BB53F8 */  .float  5.854000091552734
/* 024474 801586E4 4106147B */  .float  8.380000114440918
/* 024478 801586E8 40EEB021 */  .float  7.459000110626221
/* 02447C 801586EC 41080C4A */  .float  8.503000259399414
/* 024480 801586F0 4106147B */  .float  8.380000114440918
/* 024484 801586F4 40CED917 */  .float  6.464000225067139
/* 024488 801586F8 40FD6042 */  .float  7.918000221252441
/* 02448C 801586FC 4106147B */  .float  8.380000114440918
/* 024490 80158700 40B81893 */  .float  5.752999782562256
/* 024494 80158704 00300000 */  .float  4.408103815583578e-39
/* 024498 80158708 40BB4396 */  .float  5.8520002365112305
/* 02449C 8015870C 4106147B */  .float  8.380000114440918
/* 0244A0 80158710 40EE8F5C */  .float  7.454999923706055
/* 0244A4 80158714 40CE0419 */  .float  6.438000202178955
/* 0244A8 80158718 4106147B */  .float  8.380000114440918
/* 0244AC 8015871C 4102A7F0 */  .float  8.166000366210938
/* 0244B0 80158720 41080831 */  .float  8.501999855041504
/* 0244B4 80158724 4106147B */  .float  8.380000114440918
/* 0244B8 80158728 40CEB852 */  .float  6.460000038146973
/* 0244BC 8015872C 00300000 */  .float  4.408103815583578e-39
/* 0244C0 80158730 409F4396 */  .float  4.9770002365112305
/* 0244C4 80158734 40F978D5 */  .float  7.796000003814697
/* 0244C8 80158738 40F90E56 */  .float  7.7829999923706055
/* 0244CC 8015873C 40CE76C9 */  .float  6.452000141143799
/* 0244D0 80158740 41061CAC */  .float  8.381999969482422
/* 0244D4 80158744 4102978D */  .float  8.161999702453613
/* 0244D8 80158748 40BBAE14 */  .float  5.864999771118164
/* 0244DC 8015874C 410628F6 */  .float  8.385000228881836
/* 0244E0 80158750 40EE3D71 */  .float  7.445000171661377
/* 0244E4 80158754 00300000 */  .float  4.408103815583578e-39
/* 0244E8 80158758 41068B44 */  .float  8.409000396728516
/* 0244EC 8015875C 40F98106 */  .float  7.796999931335449
/* 0244F0 80158760 409E978D */  .float  4.955999851226807
/* 0244F4 80158764 40BB5C29 */  .float  5.855000019073486
/* 0244F8 80158768 41061893 */  .float  8.380999565124512
/* 0244FC 8015876C 40EEB852 */  .float  7.460000038146973
/* 024500 80158770 40FD78D5 */  .float  7.921000003814697
/* 024504 80158774 410620C5 */  .float  8.383000373840332
/* 024508 80158778 40B83958 */  .float  5.756999969482422
/* 02450C 8015877C 00300000 */  .float  4.408103815583578e-39
/* 024510 80158780 41161062 */  .float  9.378999710083008
/* 024514 80158784 40F978D5 */  .float  7.796000003814697
/* 024518 80158788 40C45A1D */  .float  6.136000156402588
/* 02451C 8015878C 40FCED91 */  .float  7.9039998054504395
/* 024520 80158790 41061CAC */  .float  8.381999969482422
/* 024524 80158794 40B83958 */  .float  5.756999969482422
/* 024528 80158798 4107DB23 */  .float  8.491000175476074
/* 02452C 8015879C 410628F6 */  .float  8.385000228881836
/* 024530 801587A0 40CF22D1 */  .float  6.4730000495910645
/* 024534 801587A4 00300000 */  .float  4.408103815583578e-39
/* 024538 801587A8 40BE4DD3 */  .float  5.947000026702881
/* 02453C 801587AC 40F98106 */  .float  7.796999931335449
/* 024540 801587B0 410F6873 */  .float  8.963000297546387
/* 024544 801587B4 41080000 */  .float  8.5
/* 024548 801587B8 41061893 */  .float  8.380999565124512
/* 02454C 801587BC 40CEA7F0 */  .float  6.458000183105469
/* 024550 801587C0 40CDEB85 */  .float  6.434999942779541
/* 024554 801587C4 410620C5 */  .float  8.383000373840332
/* 024558 801587C8 4102978D */  .float  8.161999702453613
/* 02455C 801587CC 00300000 */  .float  4.408103815583578e-39
/* 024560 801587D0 409F4396 */  .float  4.9770002365112305
/* 024564 801587D4 40F98937 */  .float  7.797999858856201
/* 024568 801587D8 40F8E560 */  .float  7.7779998779296875
/* 02456C 801587DC 40BE8F5C */  .float  5.954999923706055
/* 024570 801587E0 40F98106 */  .float  7.796999931335449
/* 024574 801587E4 410F70A4 */  .float  8.96500015258789
/* 024578 801587E8 40CE6E98 */  .float  6.451000213623047
/* 02457C 801587EC 410628F6 */  .float  8.385000228881836
/* 024580 801587F0 41027AE1 */  .float  8.154999732971191
/* 024584 801587F4 00300000 */  .float  4.408103815583578e-39
/* 024588 801587F8 41068F5C */  .float  8.40999984741211
/* 02458C 801587FC 40F99168 */  .float  7.798999786376953
/* 024590 80158800 409E9FBE */  .float  4.956999778747559
/* 024594 80158804 409F4BC7 */  .float  4.978000164031982
/* 024598 80158808 40F99168 */  .float  7.798999786376953
/* 02459C 8015880C 40F93F7D */  .float  7.789000034332275
/* 0245A0 80158810 40BB6C8B */  .float  5.85699987411499
/* 0245A4 80158814 410624DD */  .float  8.383999824523926
/* 0245A8 80158818 40EEC083 */  .float  7.460999965667725
/* 0245AC 8015881C 00300000 */  .float  4.408103815583578e-39
/* 0245B0 80158820 41160C4A */  .float  9.378000259399414
/* 0245B4 80158824 40F98937 */  .float  7.797999858856201
/* 0245B8 80158828 40C48312 */  .float  6.140999794006348
/* 0245BC 8015882C 41066666 */  .float  8.399999618530273
/* 0245C0 80158830 40F98106 */  .float  7.796999931335449
/* 0245C4 80158834 409E872B */  .float  4.953999996185303
/* 0245C8 80158838 40FCED91 */  .float  7.9039998054504395
/* 0245CC 8015883C 410628F6 */  .float  8.385000228881836
/* 0245D0 80158840 40B86A7F */  .float  5.763000011444092
/* 0245D4 80158844 00300000 */  .float  4.408103815583578e-39
/* 0245D8 80158848 40BE45A2 */  .float  5.946000099182129
/* 0245DC 8015884C 40F99168 */  .float  7.798999786376953
/* 0245E0 80158850 410F645A */  .float  8.961999893188477
/* 0245E4 80158854 41160C4A */  .float  9.378000259399414
/* 0245E8 80158858 40F99168 */  .float  7.798999786376953
/* 0245EC 8015885C 40C428F6 */  .float  6.130000114440918
/* 0245F0 80158860 4107FBE7 */  .float  8.49899959564209
/* 0245F4 80158864 410624DD */  .float  8.383999824523926
/* 0245F8 80158868 40CEA7F0 */  .float  6.458000183105469
/* 0245FC 8015886C 00300000 */  .float  4.408103815583578e-39
/* 024600 80158870 405DC28F */  .float  3.4649999141693115
/* 024604 80158874 40DCCCCD */  .float  6.900000095367432
/* 024608 80158878 41011687 */  .float  8.067999839782715
/* 02460C 8015887C 3FFEF9DB */  .float  1.9919999837875366
/* 024610 80158880 40DCCCCD */  .float  6.900000095367432
/* 024614 80158884 411F645A */  .float  9.961999893188477
/* 024618 80158888 405DF3B6 */  .float  3.4679999351501465
/* 02461C 8015888C 40DCCCCD */  .float  6.900000095367432
/* 024620 80158890 411F6C8B */  .float  9.96399974822998
/* 024624 80158894 00300000 */  .float  4.408103815583578e-39
/* 024628 80158898 405E147B */  .float  3.4700000286102295
/* 02462C 8015889C 40DCCCCD */  .float  6.900000095367432
/* 024630 801588A0 410122D1 */  .float  8.071000099182129
/* 024634 801588A4 3FFF3B64 */  .float  1.99399995803833
/* 024638 801588A8 40DCCCCD */  .float  6.900000095367432
/* 02463C 801588AC 41011AA0 */  .float  8.069000244140625
/* 024640 801588B0 3FFF9DB2 */  .float  1.996999979019165
/* 024644 801588B4 40DCCCCD */  .float  6.900000095367432
/* 024648 801588B8 411F74BC */  .float  9.965999603271484
/* 02464C 801588BC 00300000 */  .float  4.408103815583578e-39
/* 024650 801588C0 405CFDF4 */  .float  3.453000068664551
/* 024654 801588C4 40DCCCCD */  .float  6.900000095367432
/* 024658 801588C8 411F645A */  .float  9.961999893188477
/* 02465C 801588CC 409DBA5E */  .float  4.928999900817871
/* 024660 801588D0 40DCCCCD */  .float  6.900000095367432
/* 024664 801588D4 411F6C8B */  .float  9.96399974822998
/* 024668 801588D8 409DA9FC */  .float  4.927000045776367
/* 02466C 801588DC 40DCCCCD */  .float  6.900000095367432
/* 024670 801588E0 41011687 */  .float  8.067999839782715
/* 024674 801588E4 00300000 */  .float  4.408103815583578e-39
/* 024678 801588E8 405D4FDF */  .float  3.4579999446868896
/* 02467C 801588EC 40DCCCCD */  .float  6.900000095367432
/* 024680 801588F0 411F74BC */  .float  9.965999603271484
/* 024684 801588F4 409DD2F2 */  .float  4.932000160217285
/* 024688 801588F8 40DCCCCD */  .float  6.900000095367432
/* 02468C 801588FC 410122D1 */  .float  8.071000099182129
/* 024690 80158900 405D2F1B */  .float  3.4560000896453857
/* 024694 80158904 40DCCCCD */  .float  6.900000095367432
/* 024698 80158908 41011AA0 */  .float  8.069000244140625
/* 02469C 8015890C 00300000 */  .float  4.408103815583578e-39
/* 0246A0 80158910 BC1374BC */  .float  -0.008999999612569809
/* 0246A4 80158914 40951EB8 */  .float  4.659999847412109
/* 0246A8 80158918 41201062 */  .float  10.003999710083008
/* 0246AC 8015891C 41201893 */  .float  10.005999565124512
/* 0246B0 80158920 40951EB8 */  .float  4.659999847412109
/* 0246B4 80158924 41201CAC */  .float  10.006999969482422
/* 0246B8 80158928 41200C4A */  .float  10.003000259399414
/* 0246BC 8015892C 40951EB8 */  .float  4.659999847412109
/* 0246C0 80158930 BC1374BC */  .float  -0.008999999612569809
/* 0246C4 80158934 00200000 */  .float  2.938735877055719e-39
/* 0246C8 80158938 BB83126F */  .float  -0.004000000189989805
/* 0246CC 8015893C 40951EB8 */  .float  4.659999847412109
/* 0246D0 80158940 412024DD */  .float  10.008999824523926
/* 0246D4 80158944 412020C5 */  .float  10.008000373840332
/* 0246D8 80158948 40951EB8 */  .float  4.659999847412109
/* 0246DC 8015894C BB83126F */  .float  -0.004000000189989805
/* 0246E0 80158950 BBE56042 */  .float  -0.007000000216066837
/* 0246E4 80158954 40951EB8 */  .float  4.659999847412109
/* 0246E8 80158958 BBE56042 */  .float  -0.007000000216066837
/* 0246EC 8015895C 00200000 */  .float  2.938735877055719e-39
/* 0246F0 80158960 801586E0 */  .float  -1.9769294526940227e-39
/* 0246F4 80158964 801586E0 */  .float  -1.9769294526940227e-39
/* 0246F8 80158968 00100000 */  .float  1.4693679385278594e-39
/* 0246FC 8015896C 00000000 */  .float  0.0
/* 024700 80158970 3F800000 */  .float  1.0
/* 024704 80158974 3F800000 */  .float  1.0
/* 024708 80158978 3F800000 */  .float  1.0
/* 02470C 8015897C 00000000 */  .float  0.0
/* 024710 80158980 00000000 */  .float  0.0
/* 024714 80158984 00000000 */  .float  0.0
/* 024718 80158988 00000000 */  .float  0.0
/* 02471C 8015898C 00000000 */  .float  0.0
/* 024720 80158990 00000000 */  .float  0.0
/* 024724 80158994 44ED8000 */  .float  1900.0
/* 024728 80158998 801589A8 */  .float  -1.977927177200622e-39
/* 02472C 8015899C 00000000 */  .float  0.0
/* 024730 801589A0 0401FED0 */  .float  1.52808812874313e-36
/* 024734 801589A4 00000000 */  .float  0.0
/* 024738 801589A8 3F800000 */  .float  1.0
/* 02473C 801589AC 3F800000 */  .float  1.0
/* 024740 801589B0 3F800000 */  .float  1.0
/* 024744 801589B4 00000000 */  .float  0.0
/* 024748 801589B8 00000000 */  .float  0.0
/* 02474C 801589BC 00000000 */  .float  0.0
/* 024750 801589C0 443F59C4 */  .float  765.402587890625
/* 024754 801589C4 44271E96 */  .float  668.4779052734375
/* 024758 801589C8 4394C53F */  .float  297.5409851074219
/* 02475C 801589CC 43480000 */  .float  200.0
/* 024760 801589D0 00000000 */  .float  0.0
/* 024764 801589D4 801589E0 */  .float  -1.9780056499146242e-39
/* 024768 801589D8 040205B0 */  .float  1.528403813261173e-36
/* 02476C 801589DC 00820000 */  .float  1.1938614500538858e-38
/* 024770 801589E0 3F800000 */  .float  1.0
/* 024774 801589E4 3F800000 */  .float  1.0
/* 024778 801589E8 3F800000 */  .float  1.0
/* 02477C 801589EC 42B40000 */  .float  90.0
/* 024780 801589F0 00000000 */  .float  0.0
/* 024784 801589F4 00000000 */  .float  0.0
/* 024788 801589F8 00000000 */  .float  0.0
/* 02478C 801589FC 00000000 */  .float  0.0
/* 024790 80158A00 00000000 */  .float  0.0
/* 024794 80158A04 00000000 */  .float  0.0
/* 024798 80158A08 00000000 */  .float  0.0
/* 02479C 80158A0C 80158A18 */  .float  -1.9780841226286264e-39
/* 0247A0 80158A10 00000000 */  .float  0.0
/* 0247A4 80158A14 00000000 */  .float  0.0
/* 0247A8 80158A18 3F800000 */  .float  1.0
/* 0247AC 80158A1C 3F800000 */  .float  1.0
/* 0247B0 80158A20 3F800000 */  .float  1.0
/* 0247B4 80158A24 00000000 */  .float  0.0
/* 0247B8 80158A28 00000000 */  .float  0.0
/* 0247BC 80158A2C 00000000 */  .float  0.0
/* 0247C0 80158A30 00000000 */  .float  0.0
/* 0247C4 80158A34 00000000 */  .float  0.0
/* 0247C8 80158A38 00000000 */  .float  0.0
/* 0247CC 80158A3C 431CCCCD */  .float  156.8000030517578
/* 0247D0 80158A40 00000000 */  .float  0.0
/* 0247D4 80158A44 80158A50 */  .float  -1.9781625953426286e-39
/* 0247D8 80158A48 040207E0 */  .float  1.528504258335096e-36
/* 0247DC 80158A4C 00820000 */  .float  1.1938614500538858e-38
/* 0247E0 80158A50 3F800000 */  .float  1.0
/* 0247E4 80158A54 3F800000 */  .float  1.0
/* 0247E8 80158A58 3F800000 */  .float  1.0
/* 0247EC 80158A5C 00000000 */  .float  0.0
/* 0247F0 80158A60 00000000 */  .float  0.0
/* 0247F4 80158A64 42B40000 */  .float  90.0
/* 0247F8 80158A68 00000000 */  .float  0.0
/* 0247FC 80158A6C 00000000 */  .float  0.0
/* 024800 80158A70 00000000 */  .float  0.0
/* 024804 80158A74 42F86666 */  .float  124.19999694824219
/* 024808 80158A78 00000000 */  .float  0.0
/* 02480C 80158A7C 00000000 */  .float  0.0
/* 024810 80158A80 04020A10 */  .float  1.5286047034090187e-36
/* 024814 80158A84 00820000 */  .float  1.1938614500538858e-38
/* 024818 80158A88 00000000 */  .float  0.0
/* 02481C 80158A8C 00000000 */  .float  0.0
/* 024820 80158A90 00000000 */  .float  0.0
/* 024824 80158A94 00000000 */  .float  0.0
/* 024828 80158A98 408C5A1D */  .float  4.386000156402588
/* 02482C 80158A9C 40925E35 */  .float  4.573999881744385
/* 024830 80158AA0 40925E35 */  .float  4.573999881744385
/* 024834 80158AA4 40925E35 */  .float  4.573999881744385
/* 024838 80158AA8 40925E35 */  .float  4.573999881744385
/* 02483C 80158AAC 40925E35 */  .float  4.573999881744385
/* 024840 80158AB0 40925E35 */  .float  4.573999881744385
/* 024844 80158AB4 41000000 */  .float  8.0
/* 024848 80158AB8 41000000 */  .float  8.0
/* 02484C 80158ABC 41000000 */  .float  8.0
/* 024850 80158AC0 408C51EC */  .float  4.385000228881836
/* 024854 80158AC4 40A00000 */  .float  5.0
/* 024858 80158AC8 40AA5604 */  .float  5.322999954223633
/* 02485C 80158ACC 40AA5E35 */  .float  5.323999881744385
/* 024860 80158AD0 40A58937 */  .float  5.172999858856201
/* 024864 80158AD4 40A58937 */  .float  5.172999858856201
/* 024868 80158AD8 40A58106 */  .float  5.171999931335449
/* 02486C 80158ADC 40A58106 */  .float  5.171999931335449
/* 024870 80158AE0 41000000 */  .float  8.0
/* 024874 80158AE4 41000000 */  .float  8.0
/* 024878 80158AE8 41000000 */  .float  8.0
/* 02487C 80158AEC 408C51EC */  .float  4.385000228881836
/* 024880 80158AF0 40A00000 */  .float  5.0
/* 024884 80158AF4 40BA5604 */  .float  5.822999954223633
/* 024888 80158AF8 40BA5604 */  .float  5.822999954223633
/* 02488C 80158AFC 40AE147B */  .float  5.440000057220459
/* 024890 80158B00 40ABEF9E */  .float  5.373000144958496
/* 024894 80158B04 40ABE76D */  .float  5.372000217437744
/* 024898 80158B08 40ABE76D */  .float  5.372000217437744
/* 02489C 80158B0C 41000000 */  .float  8.0
/* 0248A0 80158B10 41000000 */  .float  8.0
/* 0248A4 80158B14 41000000 */  .float  8.0
/* 0248A8 80158B18 408C51EC */  .float  4.385000228881836
/* 0248AC 80158B1C 40D00000 */  .float  6.5
/* 0248B0 80158B20 40D25604 */  .float  6.572999954223633
/* 0248B4 80158B24 40D25604 */  .float  6.572999954223633
/* 0248B8 80158B28 40BD0625 */  .float  5.9070000648498535
/* 0248BC 80158B2C 40B25604 */  .float  5.572999954223633
/* 0248C0 80158B30 40B24DD3 */  .float  5.572000026702881
/* 0248C4 80158B34 40B24DD3 */  .float  5.572000026702881
/* 0248C8 80158B38 41000000 */  .float  8.0
/* 0248CC 80158B3C 41206666 */  .float  10.024999618530273
/* 0248D0 80158B40 41000000 */  .float  8.0
/* 0248D4 80158B44 408C51EC */  .float  4.385000228881836
/* 0248D8 80158B48 40D00000 */  .float  6.5
/* 0248DC 80158B4C 40D25604 */  .float  6.572999954223633
/* 0248E0 80158B50 40D25604 */  .float  6.572999954223633
/* 0248E4 80158B54 40BD0625 */  .float  5.9070000648498535
/* 0248E8 80158B58 40B25604 */  .float  5.572999954223633
/* 0248EC 80158B5C 40B24DD3 */  .float  5.572000026702881
/* 0248F0 80158B60 40B24DD3 */  .float  5.572000026702881
/* 0248F4 80158B64 41000000 */  .float  8.0
/* 0248F8 80158B68 41206666 */  .float  10.024999618530273
/* 0248FC 80158B6C 41000000 */  .float  8.0
/* 024900 80158B70 408C51EC */  .float  4.385000228881836
/* 024904 80158B74 40D00000 */  .float  6.5
/* 024908 80158B78 40D25604 */  .float  6.572999954223633
/* 02490C 80158B7C 40D25604 */  .float  6.572999954223633
/* 024910 80158B80 40BD0625 */  .float  5.9070000648498535
/* 024914 80158B84 40B25604 */  .float  5.572999954223633
/* 024918 80158B88 40B24DD3 */  .float  5.572000026702881
/* 02491C 80158B8C 40B24DD3 */  .float  5.572000026702881
/* 024920 80158B90 41000000 */  .float  8.0
/* 024924 80158B94 41000000 */  .float  8.0
/* 024928 80158B98 41000000 */  .float  8.0
/* 02492C 80158B9C 408C51EC */  .float  4.385000228881836
/* 024930 80158BA0 40D00000 */  .float  6.5
/* 024934 80158BA4 40D25604 */  .float  6.572999954223633
/* 024938 80158BA8 40D25604 */  .float  6.572999954223633
/* 02493C 80158BAC 40BD0625 */  .float  5.9070000648498535
/* 024940 80158BB0 40B25604 */  .float  5.572999954223633
/* 024944 80158BB4 40B24DD3 */  .float  5.572000026702881
/* 024948 80158BB8 40B24DD3 */  .float  5.572000026702881
/* 02494C 80158BBC 41000000 */  .float  8.0
/* 024950 80158BC0 41132F1B */  .float  9.199000358581543
/* 024954 80158BC4 41000000 */  .float  8.0
/* 024958 80158BC8 408C51EC */  .float  4.385000228881836
/* 02495C 80158BCC 40D00000 */  .float  6.5
/* 024960 80158BD0 40D25604 */  .float  6.572999954223633
/* 024964 80158BD4 40D25604 */  .float  6.572999954223633
/* 024968 80158BD8 40BD0625 */  .float  5.9070000648498535
/* 02496C 80158BDC 40B25604 */  .float  5.572999954223633
/* 024970 80158BE0 40B24DD3 */  .float  5.572000026702881
/* 024974 80158BE4 40B24DD3 */  .float  5.572000026702881
/* 024978 80158BE8 41000000 */  .float  8.0
/* 02497C 80158BEC 41000000 */  .float  8.0
/* 024980 80158BF0 41000000 */  .float  8.0
/* 024984 80158BF4 408C51EC */  .float  4.385000228881836
/* 024988 80158BF8 40A00000 */  .float  5.0
/* 02498C 80158BFC 40BA5604 */  .float  5.822999954223633
/* 024990 80158C00 40BA5604 */  .float  5.822999954223633
/* 024994 80158C04 40AE5604 */  .float  5.447999954223633
/* 024998 80158C08 40ABEF9E */  .float  5.373000144958496
/* 02499C 80158C0C 40AC1893 */  .float  5.377999782562256
/* 0249A0 80158C10 40AC5A1D */  .float  5.386000156402588
/* 0249A4 80158C14 41000000 */  .float  8.0
/* 0249A8 80158C18 41000000 */  .float  8.0
/* 0249AC 80158C1C 41000000 */  .float  8.0
/* 0249B0 80158C20 408C51EC */  .float  4.385000228881836
/* 0249B4 80158C24 40A00000 */  .float  5.0
/* 0249B8 80158C28 40AA5604 */  .float  5.322999954223633
/* 0249BC 80158C2C 40AA5E35 */  .float  5.323999881744385
/* 0249C0 80158C30 40A5999A */  .float  5.175000190734863
/* 0249C4 80158C34 40A5DB23 */  .float  5.183000087738037
/* 0249C8 80158C38 40A61CAC */  .float  5.190999984741211
/* 0249CC 80158C3C 40A65E35 */  .float  5.198999881744385
/* 0249D0 80158C40 41000000 */  .float  8.0
/* 0249D4 80158C44 41000000 */  .float  8.0
/* 0249D8 80158C48 41000000 */  .float  8.0
/* 0249DC 80158C4C 40600000 */  .float  3.5
/* 0249E0 80158C50 408C5A1D */  .float  4.386000156402588
/* 0249E4 80158C54 408CD4FE */  .float  4.401000022888184
/* 0249E8 80158C58 408D5810 */  .float  4.416999816894531
/* 0249EC 80158C5C 408F2B02 */  .float  4.473999977111816
/* 0249F0 80158C60 4090F5C3 */  .float  4.53000020980835
/* 0249F4 80158C64 4092C8B4 */  .float  4.586999893188477
/* 0249F8 80158C68 40949BA6 */  .float  4.644000053405762
/* 0249FC 80158C6C 00000000 */  .float  0.0
/* 024A00 80158C70 00000000 */  .float  0.0
/* 024A04 80158C74 00200020 */  .float  2.938780718606577e-39
/* 024A08 80158C78 00200020 */  .float  2.938780718606577e-39
/* 024A0C 80158C7C 00200020 */  .float  2.938780718606577e-39
/* 024A10 80158C80 00200030 */  .float  2.9388031393820064e-39
/* 024A14 80158C84 00300030 */  .float  4.408171077909866e-39
/* 024A18 80158C88 00200020 */  .float  2.938780718606577e-39
/* 024A1C 80158C8C 00200020 */  .float  2.938780718606577e-39
/* 024A20 80158C90 00200020 */  .float  2.938780718606577e-39
/* 024A24 80158C94 00200020 */  .float  2.938780718606577e-39
/* 024A28 80158C98 00300030 */  .float  4.408171077909866e-39
/* 024A2C 80158C9C 00300020 */  .float  4.4081486571344365e-39
/* 024A30 80158CA0 00200020 */  .float  2.938780718606577e-39
/* 024A34 80158CA4 00200020 */  .float  2.938780718606577e-39
/* 024A38 80158CA8 00200020 */  .float  2.938780718606577e-39
/* 024A3C 80158CAC 00200030 */  .float  2.9388031393820064e-39
/* 024A40 80158CB0 00300030 */  .float  4.408171077909866e-39
/* 024A44 80158CB4 00200020 */  .float  2.938780718606577e-39
/* 024A48 80158CB8 00200020 */  .float  2.938780718606577e-39
/* 024A4C 80158CBC 00200020 */  .float  2.938780718606577e-39
/* 024A50 80158CC0 00200020 */  .float  2.938780718606577e-39
/* 024A54 80158CC4 00300030 */  .float  4.408171077909866e-39
/* 024A58 80158CC8 00300020 */  .float  4.4081486571344365e-39
/* 024A5C 80158CCC 00200020 */  .float  2.938780718606577e-39
/* 024A60 80158CD0 00200020 */  .float  2.938780718606577e-39
/* 024A64 80158CD4 00200020 */  .float  2.938780718606577e-39
/* 024A68 80158CD8 00200030 */  .float  2.9388031393820064e-39
/* 024A6C 80158CDC 00300030 */  .float  4.408171077909866e-39
/* 024A70 80158CE0 00200020 */  .float  2.938780718606577e-39
/* 024A74 80158CE4 00200020 */  .float  2.938780718606577e-39
/* 024A78 80158CE8 00200020 */  .float  2.938780718606577e-39
/* 024A7C 80158CEC 00200020 */  .float  2.938780718606577e-39
/* 024A80 80158CF0 00300030 */  .float  4.408171077909866e-39
/* 024A84 80158CF4 00300020 */  .float  4.4081486571344365e-39
/* 024A88 80158CF8 00200020 */  .float  2.938780718606577e-39
/* 024A8C 80158CFC 00200020 */  .float  2.938780718606577e-39
/* 024A90 80158D00 00200020 */  .float  2.938780718606577e-39
/* 024A94 80158D04 00200030 */  .float  2.9388031393820064e-39
/* 024A98 80158D08 00300030 */  .float  4.408171077909866e-39
/* 024A9C 80158D0C 00200020 */  .float  2.938780718606577e-39
/* 024AA0 80158D10 00200020 */  .float  2.938780718606577e-39
/* 024AA4 80158D14 00200020 */  .float  2.938780718606577e-39
/* 024AA8 80158D18 00200020 */  .float  2.938780718606577e-39
/* 024AAC 80158D1C 00300030 */  .float  4.408171077909866e-39
/* 024AB0 80158D20 00300020 */  .float  4.4081486571344365e-39
/* 024AB4 80158D24 00200020 */  .float  2.938780718606577e-39
/* 024AB8 80158D28 00200020 */  .float  2.938780718606577e-39
/* 024ABC 80158D2C 00200020 */  .float  2.938780718606577e-39
/* 024AC0 80158D30 00200030 */  .float  2.9388031393820064e-39
/* 024AC4 80158D34 00300030 */  .float  4.408171077909866e-39
/* 024AC8 80158D38 00200020 */  .float  2.938780718606577e-39
/* 024ACC 80158D3C 00200020 */  .float  2.938780718606577e-39
/* 024AD0 80158D40 00200020 */  .float  2.938780718606577e-39
/* 024AD4 80158D44 00200020 */  .float  2.938780718606577e-39
/* 024AD8 80158D48 00300030 */  .float  4.408171077909866e-39
/* 024ADC 80158D4C 00300030 */  .float  4.408171077909866e-39
/* 024AE0 80158D50 00200020 */  .float  2.938780718606577e-39
/* 024AE4 80158D54 00200020 */  .float  2.938780718606577e-39
/* 024AE8 80158D58 00200020 */  .float  2.938780718606577e-39
/* 024AEC 80158D5C 00200000 */  .float  2.938735877055719e-39
/* 024AF0 80158D60 80158A88 */  .float  -1.9782410680566308e-39
/* 024AF4 80158D64 80158C6C */  .float  -1.978919296513364e-39
/* 024AF8 80158D68 000B000B */  .float  1.0102058720210109e-39
/* 024AFC 80158D6C 00000002 */  .float  2.802596928649634e-45
/* 024B00 80158D70 3F800000 */  .float  1.0
/* 024B04 80158D74 3F800000 */  .float  1.0
/* 024B08 80158D78 3F800000 */  .float  1.0
/* 024B0C 80158D7C 00000000 */  .float  0.0
/* 024B10 80158D80 00000000 */  .float  0.0
/* 024B14 80158D84 00000000 */  .float  0.0
/* 024B18 80158D88 00000000 */  .float  0.0
/* 024B1C 80158D8C 00000000 */  .float  0.0
/* 024B20 80158D90 00000000 */  .float  0.0
/* 024B24 80158D94 44ED8000 */  .float  1900.0
/* 024B28 80158D98 80158DA8 */  .float  -1.9793621068280906e-39
/* 024B2C 80158D9C 00000000 */  .float  0.0
/* 024B30 80158DA0 04021780 */  .float  1.52922172314883e-36
/* 024B34 80158DA4 00000000 */  .float  0.0
/* 024B38 80158DA8 3F800000 */  .float  1.0
/* 024B3C 80158DAC 3F800000 */  .float  1.0
/* 024B40 80158DB0 3F800000 */  .float  1.0
/* 024B44 80158DB4 00000000 */  .float  0.0
/* 024B48 80158DB8 00000000 */  .float  0.0
/* 024B4C 80158DBC 42B40000 */  .float  90.0
/* 024B50 80158DC0 435041EC */  .float  208.25750732421875
/* 024B54 80158DC4 445E4F24 */  .float  889.236572265625
/* 024B58 80158DC8 43D7362F */  .float  430.4233093261719
/* 024B5C 80158DCC 42366666 */  .float  45.599998474121094
/* 024B60 80158DD0 00000000 */  .float  0.0
/* 024B64 80158DD4 00000000 */  .float  0.0
/* 024B68 80158DD8 04022368 */  .float  1.5297684313368957e-36
/* 024B6C 80158DDC 00820000 */  .float  1.1938614500538858e-38
/* 024B70 80158DE0 40B15810 */  .float  5.541999816894531
/* 024B74 80158DE4 40A420C5 */  .float  5.129000186920166
/* 024B78 80158DE8 412020C5 */  .float  10.008000373840332
/* 024B7C 80158DEC 4084FDF4 */  .float  4.156000137329102
/* 024B80 80158DF0 40A420C5 */  .float  5.129000186920166
/* 024B84 80158DF4 3E991687 */  .float  0.29899999499320984
/* 024B88 80158DF8 BB83126F */  .float  -0.004000000189989805
/* 024B8C 80158DFC 40A420C5 */  .float  5.129000186920166
/* 024B90 80158E00 408CB439 */  .float  4.396999835968018
/* 024B94 80158E04 00300000 */  .float  4.408103815583578e-39
/* 024B98 80158E08 40B126E9 */  .float  5.535999774932861
/* 024B9C 80158E0C 40A420C5 */  .float  5.129000186920166
/* 024BA0 80158E10 412024DD */  .float  10.008999824523926
/* 024BA4 80158E14 411B22D1 */  .float  9.696000099182129
/* 024BA8 80158E18 40A420C5 */  .float  5.129000186920166
/* 024BAC 80158E1C 40BD26E9 */  .float  5.910999774932861
/* 024BB0 80158E20 4084CCCD */  .float  4.150000095367432
/* 024BB4 80158E24 40A420C5 */  .float  5.129000186920166
/* 024BB8 80158E28 3E99999A */  .float  0.30000001192092896
/* 024BBC 80158E2C 00300000 */  .float  4.408103815583578e-39
/* 024BC0 80158E30 40B18106 */  .float  5.546999931335449
/* 024BC4 80158E34 40A420C5 */  .float  5.129000186920166
/* 024BC8 80158E38 41201062 */  .float  10.003999710083008
/* 024BCC 80158E3C 3B03126F */  .float  0.0020000000949949026
/* 024BD0 80158E40 40A420C5 */  .float  5.129000186920166
/* 024BD4 80158E44 408C7AE1 */  .float  4.389999866485596
/* 024BD8 80158E48 BBE56042 */  .float  -0.007000000216066837
/* 024BDC 80158E4C 40A420C5 */  .float  5.129000186920166
/* 024BE0 80158E50 41201CAC */  .float  10.006999969482422
/* 024BE4 80158E54 00300000 */  .float  4.408103815583578e-39
/* 024BE8 80158E58 4151C6A8 */  .float  13.111000061035156
/* 024BEC 80158E5C 402051EC */  .float  2.505000114440918
/* 024BF0 80158E60 BFD624DD */  .float  -1.6729999780654907
/* 024BF4 80158E64 40A62D0E */  .float  5.192999839782715
/* 024BF8 80158E68 402051EC */  .float  2.505000114440918
/* 024BFC 80158E6C BFAA9FBE */  .float  -1.3329999446868896
/* 024C00 80158E70 41152B02 */  .float  9.322999954223633
/* 024C04 80158E74 402051EC */  .float  2.505000114440918
/* 024C08 80158E78 401D70A4 */  .float  2.4600000381469727
/* 024C0C 80158E7C 00000000 */  .float  0.0
/* 024C10 80158E80 4151CAC1 */  .float  13.112000465393066
/* 024C14 80158E84 402051EC */  .float  2.505000114440918
/* 024C18 80158E88 BFD56042 */  .float  -1.6670000553131104
/* 024C1C 80158E8C 410FB646 */  .float  8.982000350952148
/* 024C20 80158E90 402051EC */  .float  2.505000114440918
/* 024C24 80158E94 C0AEB852 */  .float  -5.460000038146973
/* 024C28 80158E98 40A62D0E */  .float  5.192999839782715
/* 024C2C 80158E9C 402051EC */  .float  2.505000114440918
/* 024C30 80158EA0 BFA9DB23 */  .float  -1.3270000219345093
/* 024C34 80158EA4 00000000 */  .float  0.0
/* 024C38 80158EA8 410EF1AA */  .float  8.934000015258789
/* 024C3C 80158EAC 3FDA9FBE */  .float  1.7079999446868896
/* 024C40 80158EB0 C0D6978D */  .float  -6.705999851226807
/* 024C44 80158EB4 40A645A2 */  .float  5.196000099182129
/* 024C48 80158EB8 4020624E */  .float  2.50600004196167
/* 024C4C 80158EBC BFA95810 */  .float  -1.3229999542236328
/* 024C50 80158EC0 410FDB23 */  .float  8.991000175476074
/* 024C54 80158EC4 402072B0 */  .float  2.506999969482422
/* 024C58 80158EC8 C0AE978D */  .float  -5.455999851226807
/* 024C5C 80158ECC 00000000 */  .float  0.0
/* 024C60 80158ED0 407C9BA6 */  .float  3.947000026702881
/* 024C64 80158ED4 3FDA9FBE */  .float  1.7079999446868896
/* 024C68 80158ED8 BFA41893 */  .float  -1.281999945640564
/* 024C6C 80158EDC 411547AE */  .float  9.329999923706055
/* 024C70 80158EE0 4020624E */  .float  2.50600004196167
/* 024C74 80158EE4 401D2F1B */  .float  2.4560000896453857
/* 024C78 80158EE8 40A64DD3 */  .float  5.197000026702881
/* 024C7C 80158EEC 402072B0 */  .float  2.506999969482422
/* 024C80 80158EF0 BFAB4396 */  .float  -1.3380000591278076
/* 024C84 80158EF4 00000000 */  .float  0.0
/* 024C88 80158EF8 4115EF9E */  .float  9.371000289916992
/* 024C8C 80158EFC 3FDA9FBE */  .float  1.7079999446868896
/* 024C90 80158F00 406D1EB8 */  .float  3.7049999237060547
/* 024C94 80158F04 4151BA5E */  .float  13.107999801635742
/* 024C98 80158F08 4020624E */  .float  2.50600004196167
/* 024C9C 80158F0C BFD6C8B4 */  .float  -1.6779999732971191
/* 024CA0 80158F10 41150625 */  .float  9.314000129699707
/* 024CA4 80158F14 402072B0 */  .float  2.506999969482422
/* 024CA8 80158F18 401D1EB8 */  .float  2.4549999237060547
/* 024CAC 80158F1C 00000000 */  .float  0.0
/* 024CB0 80158F20 4165BA5E */  .float  14.357999801635742
/* 024CB4 80158F24 3FDA9FBE */  .float  1.7079999446868896
/* 024CB8 80158F28 BFDC0831 */  .float  -1.718999981880188
/* 024CBC 80158F2C 410F999A */  .float  8.975000381469727
/* 024CC0 80158F30 4020624E */  .float  2.50600004196167
/* 024CC4 80158F34 C0AE978D */  .float  -5.455999851226807
/* 024CC8 80158F38 4151BA5E */  .float  13.107999801635742
/* 024CCC 80158F3C 402072B0 */  .float  2.506999969482422
/* 024CD0 80158F40 BFD4BC6A */  .float  -1.6619999408721924
/* 024CD4 80158F44 00000000 */  .float  0.0
/* 024CD8 80158F48 410EF5C3 */  .float  8.9350004196167
/* 024CDC 80158F4C 3FDAE148 */  .float  1.7100000381469727
/* 024CE0 80158F50 C0D68F5C */  .float  -6.704999923706055
/* 024CE4 80158F54 407CAC08 */  .float  3.947999954223633
/* 024CE8 80158F58 3FDAC083 */  .float  1.7089999914169312
/* 024CEC 80158F5C BFA28F5C */  .float  -1.2699999809265137
/* 024CF0 80158F60 40A65E35 */  .float  5.198999881744385
/* 024CF4 80158F64 40208312 */  .float  2.507999897003174
/* 024CF8 80158F68 BFA9374C */  .float  -1.3220000267028809
/* 024CFC 80158F6C 00000000 */  .float  0.0
/* 024D00 80158F70 407CAC08 */  .float  3.947999954223633
/* 024D04 80158F74 3FDAE148 */  .float  1.7100000381469727
/* 024D08 80158F78 BFA43958 */  .float  -1.2829999923706055
/* 024D0C 80158F7C 41161CAC */  .float  9.381999969482422
/* 024D10 80158F80 3FDAC083 */  .float  1.7089999914169312
/* 024D14 80158F84 406D0E56 */  .float  3.7039999961853027
/* 024D18 80158F88 41154BC7 */  .float  9.331000328063965
/* 024D1C 80158F8C 40208312 */  .float  2.507999897003174
/* 024D20 80158F90 401D0E56 */  .float  2.4539999961853027
/* 024D24 80158F94 00000000 */  .float  0.0
/* 024D28 80158F98 4115E76D */  .float  9.369000434875488
/* 024D2C 80158F9C 3FDAE148 */  .float  1.7100000381469727
/* 024D30 80158FA0 406D1EB8 */  .float  3.7049999237060547
/* 024D34 80158FA4 4165B646 */  .float  14.357000350952148
/* 024D38 80158FA8 3FDAC083 */  .float  1.7089999914169312
/* 024D3C 80158FAC BFDD70A4 */  .float  -1.7300000190734863
/* 024D40 80158FB0 4151B22D */  .float  13.105999946594238
/* 024D44 80158FB4 40208312 */  .float  2.507999897003174
/* 024D48 80158FB8 BFD6E979 */  .float  -1.6790000200271606
/* 024D4C 80158FBC 00000000 */  .float  0.0
/* 024D50 80158FC0 4165B646 */  .float  14.357000350952148
/* 024D54 80158FC4 3FDAE148 */  .float  1.7100000381469727
/* 024D58 80158FC8 BFDBC6A8 */  .float  -1.7170000076293945
/* 024D5C 80158FCC 410EC083 */  .float  8.92199993133545
/* 024D60 80158FD0 3FDAC083 */  .float  1.7089999914169312
/* 024D64 80158FD4 C0D68F5C */  .float  -6.704999923706055
/* 024D68 80158FD8 410F9581 */  .float  8.973999977111816
/* 024D6C 80158FDC 40208312 */  .float  2.507999897003174
/* 024D70 80158FE0 C0AE872B */  .float  -5.453999996185303
/* 024D74 80158FE4 00000000 */  .float  0.0
/* 024D78 80158FE8 3F7DB22D */  .float  0.9909999966621399
/* 024D7C 80158FEC 3F800000 */  .float  1.0
/* 024D80 80158FF0 4120147B */  .float  10.005000114440918
/* 024D84 80158FF4 41201CAC */  .float  10.006999969482422
/* 024D88 80158FF8 3F800000 */  .float  1.0
/* 024D8C 80158FFC 41201CAC */  .float  10.006999969482422
/* 024D90 80159000 41201062 */  .float  10.003999710083008
/* 024D94 80159004 3F800000 */  .float  1.0
/* 024D98 80159008 BC1374BC */  .float  -0.008999999612569809
/* 024D9C 8015900C 00000000 */  .float  0.0
/* 024DA0 80159010 3F7EF9DB */  .float  0.9959999918937683
/* 024DA4 80159014 3F800000 */  .float  1.0
/* 024DA8 80159018 412024DD */  .float  10.008999824523926
/* 024DAC 8015901C 412024DD */  .float  10.008999824523926
/* 024DB0 80159020 3F800000 */  .float  1.0
/* 024DB4 80159024 BBA3D70A */  .float  -0.004999999888241291
/* 024DB8 80159028 3F7E353F */  .float  0.9929999709129333
/* 024DBC 8015902C 3F800000 */  .float  1.0
/* 024DC0 80159030 BBE56042 */  .float  -0.007000000216066837
/* 024DC4 80159034 00000000 */  .float  0.0
/* 024DC8 80159038 3F804189 */  .float  1.0019999742507935
/* 024DCC 8015903C 3F800000 */  .float  1.0
/* 024DD0 80159040 BC23D70A */  .float  -0.009999999776482582
/* 024DD4 80159044 BA83126F */  .float  -0.0010000000474974513
/* 024DD8 80159048 3F800000 */  .float  1.0
/* 024DDC 8015904C BC23D70A */  .float  -0.009999999776482582
/* 024DE0 80159050 BA83126F */  .float  -0.0010000000474974513
/* 024DE4 80159054 3F800000 */  .float  1.0
/* 024DE8 80159058 412028F6 */  .float  10.010000228881836
/* 024DEC 8015905C 00300000 */  .float  4.408103815583578e-39
/* 024DF0 80159060 3F8020C5 */  .float  1.0010000467300415
/* 024DF4 80159064 3F800000 */  .float  1.0
/* 024DF8 80159068 BC23D70A */  .float  -0.009999999776482582
/* 024DFC 8015906C BB03126F */  .float  -0.0020000000949949026
/* 024E00 80159070 3F800000 */  .float  1.0
/* 024E04 80159074 412028F6 */  .float  10.010000228881836
/* 024E08 80159078 3F8020C5 */  .float  1.0010000467300415
/* 024E0C 8015907C 3F800000 */  .float  1.0
/* 024E10 80159080 412028F6 */  .float  10.010000228881836
/* 024E14 80159084 00300000 */  .float  4.408103815583578e-39
/* 024E18 80159088 80158DE0 */  .float  -1.9794405795420928e-39
/* 024E1C 8015908C 80158DE0 */  .float  -1.9794405795420928e-39
/* 024E20 80159090 00110000 */  .float  1.5612034346858506e-39
/* 024E24 80159094 00000000 */  .float  0.0
/* 024E28 80159098 3F800000 */  .float  1.0
/* 024E2C 8015909C 3F800000 */  .float  1.0
/* 024E30 801590A0 3F800000 */  .float  1.0
/* 024E34 801590A4 00000000 */  .float  0.0
/* 024E38 801590A8 00000000 */  .float  0.0
/* 024E3C 801590AC 00000000 */  .float  0.0
/* 024E40 801590B0 00000000 */  .float  0.0
/* 024E44 801590B4 00000000 */  .float  0.0
/* 024E48 801590B8 00000000 */  .float  0.0
/* 024E4C 801590BC 44EEC000 */  .float  1910.0
/* 024E50 801590C0 00000000 */  .float  0.0
/* 024E54 801590C4 00000000 */  .float  0.0
/* 024E58 801590C8 04022ED0 */  .float  1.5302921806509217e-36
/* 024E5C 801590CC 00000000 */  .float  0.0
/* 024E60 801590D0 4151C6A8 */  .float  13.111000061035156
/* 024E64 801590D4 402051EC */  .float  2.505000114440918
/* 024E68 801590D8 4105374C */  .float  8.326000213623047
/* 024E6C 801590DC 40A62D0E */  .float  5.192999839782715
/* 024E70 801590E0 402051EC */  .float  2.505000114440918
/* 024E74 801590E4 410AAC08 */  .float  8.666999816894531
/* 024E78 801590E8 41152B02 */  .float  9.322999954223633
/* 024E7C 801590EC 402051EC */  .float  2.505000114440918
/* 024E80 801590F0 41475C29 */  .float  12.460000038146973
/* 024E84 801590F4 00000000 */  .float  0.0
/* 024E88 801590F8 4151CAC1 */  .float  13.112000465393066
/* 024E8C 801590FC 402051EC */  .float  2.505000114440918
/* 024E90 80159100 410553F8 */  .float  8.333000183105469
/* 024E94 80159104 410FB646 */  .float  8.982000350952148
/* 024E98 80159108 402051EC */  .float  2.505000114440918
/* 024E9C 8015910C 409147AE */  .float  4.539999961853027
/* 024EA0 80159110 40A62D0E */  .float  5.192999839782715
/* 024EA4 80159114 402051EC */  .float  2.505000114440918
/* 024EA8 80159118 410AC49C */  .float  8.67300033569336
/* 024EAC 8015911C 00000000 */  .float  0.0
/* 024EB0 80159120 410EF1AA */  .float  8.934000015258789
/* 024EB4 80159124 3FDA9FBE */  .float  1.7079999446868896
/* 024EB8 80159128 4052D0E5 */  .float  3.2939999103546143
/* 024EBC 8015912C 40A645A2 */  .float  5.196000099182129
/* 024EC0 80159130 4020624E */  .float  2.50600004196167
/* 024EC4 80159134 410AD4FE */  .float  8.677000045776367
/* 024EC8 80159138 410FDB23 */  .float  8.991000175476074
/* 024ECC 8015913C 402072B0 */  .float  2.506999969482422
/* 024ED0 80159140 40916873 */  .float  4.544000148773193
/* 024ED4 80159144 00000000 */  .float  0.0
/* 024ED8 80159148 407C9BA6 */  .float  3.947000026702881
/* 024EDC 8015914C 3FDA9FBE */  .float  1.7079999446868896
/* 024EE0 80159150 410B7CEE */  .float  8.718000411987305
/* 024EE4 80159154 411547AE */  .float  9.329999923706055
/* 024EE8 80159158 4020624E */  .float  2.50600004196167
/* 024EEC 8015915C 41474BC7 */  .float  12.456000328063965
/* 024EF0 80159160 40A64DD3 */  .float  5.197000026702881
/* 024EF4 80159164 402072B0 */  .float  2.506999969482422
/* 024EF8 80159168 410A978D */  .float  8.661999702453613
/* 024EFC 8015916C 00000000 */  .float  0.0
/* 024F00 80159170 4115EF9E */  .float  9.371000289916992
/* 024F04 80159174 3FDA9FBE */  .float  1.7079999446868896
/* 024F08 80159178 415B47AE */  .float  13.704999923706055
/* 024F0C 8015917C 4151BA5E */  .float  13.107999801635742
/* 024F10 80159180 4020624E */  .float  2.50600004196167
/* 024F14 80159184 410526E9 */  .float  8.321999549865723
/* 024F18 80159188 41150625 */  .float  9.314000129699707
/* 024F1C 8015918C 402072B0 */  .float  2.506999969482422
/* 024F20 80159190 414747AE */  .float  12.454999923706055
/* 024F24 80159194 00000000 */  .float  0.0
/* 024F28 80159198 4165BA5E */  .float  14.357999801635742
/* 024F2C 8015919C 3FDA9FBE */  .float  1.7079999446868896
/* 024F30 801591A0 41047EFA */  .float  8.281000137329102
/* 024F34 801591A4 410F999A */  .float  8.975000381469727
/* 024F38 801591A8 4020624E */  .float  2.50600004196167
/* 024F3C 801591AC 40916873 */  .float  4.544000148773193
/* 024F40 801591B0 4151BA5E */  .float  13.107999801635742
/* 024F44 801591B4 402072B0 */  .float  2.506999969482422
/* 024F48 801591B8 41056873 */  .float  8.338000297546387
/* 024F4C 801591BC 00000000 */  .float  0.0
/* 024F50 801591C0 410EF5C3 */  .float  8.9350004196167
/* 024F54 801591C4 3FDAE148 */  .float  1.7100000381469727
/* 024F58 801591C8 4052E148 */  .float  3.2950000762939453
/* 024F5C 801591CC 407CAC08 */  .float  3.947999954223633
/* 024F60 801591D0 3FDAC083 */  .float  1.7089999914169312
/* 024F64 801591D4 410BAE14 */  .float  8.729999542236328
/* 024F68 801591D8 40A65E35 */  .float  5.198999881744385
/* 024F6C 801591DC 40208312 */  .float  2.507999897003174
/* 024F70 801591E0 410AD917 */  .float  8.678000450134277
/* 024F74 801591E4 00000000 */  .float  0.0
/* 024F78 801591E8 407CAC08 */  .float  3.947999954223633
/* 024F7C 801591EC 3FDAE148 */  .float  1.7100000381469727
/* 024F80 801591F0 410B78D5 */  .float  8.717000007629395
/* 024F84 801591F4 41161CAC */  .float  9.381999969482422
/* 024F88 801591F8 3FDAC083 */  .float  1.7089999914169312
/* 024F8C 801591FC 415B4396 */  .float  13.704000473022461
/* 024F90 80159200 41154BC7 */  .float  9.331000328063965
/* 024F94 80159204 40208312 */  .float  2.507999897003174
/* 024F98 80159208 41474396 */  .float  12.454000473022461
/* 024F9C 8015920C 00000000 */  .float  0.0
/* 024FA0 80159210 4115E76D */  .float  9.369000434875488
/* 024FA4 80159214 3FDAE148 */  .float  1.7100000381469727
/* 024FA8 80159218 415B47AE */  .float  13.704999923706055
/* 024FAC 8015921C 4165B646 */  .float  14.357000350952148
/* 024FB0 80159220 3FDAC083 */  .float  1.7089999914169312
/* 024FB4 80159224 410451EC */  .float  8.270000457763672
/* 024FB8 80159228 4151B22D */  .float  13.105999946594238
/* 024FBC 8015922C 40208312 */  .float  2.507999897003174
/* 024FC0 80159230 410522D1 */  .float  8.321000099182129
/* 024FC4 80159234 00000000 */  .float  0.0
/* 024FC8 80159238 4165B646 */  .float  14.357000350952148
/* 024FCC 8015923C 3FDAE148 */  .float  1.7100000381469727
/* 024FD0 80159240 4104872B */  .float  8.282999992370605
/* 024FD4 80159244 410EC083 */  .float  8.92199993133545
/* 024FD8 80159248 3FDAC083 */  .float  1.7089999914169312
/* 024FDC 8015924C 4052E148 */  .float  3.2950000762939453
/* 024FE0 80159250 410F9581 */  .float  8.973999977111816
/* 024FE4 80159254 40208312 */  .float  2.507999897003174
/* 024FE8 80159258 409178D5 */  .float  4.546000003814697
/* 024FEC 8015925C 00000000 */  .float  0.0
/* 024FF0 80159260 3F7DB22D */  .float  0.9909999966621399
/* 024FF4 80159264 3F800000 */  .float  1.0
/* 024FF8 80159268 4120147B */  .float  10.005000114440918
/* 024FFC 8015926C 41201CAC */  .float  10.006999969482422
/* 025000 80159270 3F800000 */  .float  1.0
/* 025004 80159274 41201CAC */  .float  10.006999969482422
/* 025008 80159278 41201062 */  .float  10.003999710083008
/* 02500C 8015927C 3F800000 */  .float  1.0
/* 025010 80159280 BC1374BC */  .float  -0.008999999612569809
/* 025014 80159284 00000000 */  .float  0.0
/* 025018 80159288 3F7EF9DB */  .float  0.9959999918937683
/* 02501C 8015928C 3F800000 */  .float  1.0
/* 025020 80159290 412024DD */  .float  10.008999824523926
/* 025024 80159294 412024DD */  .float  10.008999824523926
/* 025028 80159298 3F800000 */  .float  1.0
/* 02502C 8015929C BBA3D70A */  .float  -0.004999999888241291
/* 025030 801592A0 3F7E353F */  .float  0.9929999709129333
/* 025034 801592A4 3F800000 */  .float  1.0
/* 025038 801592A8 BBE56042 */  .float  -0.007000000216066837
/* 02503C 801592AC 00000000 */  .float  0.0
/* 025040 801592B0 3F804189 */  .float  1.0019999742507935
/* 025044 801592B4 3F800000 */  .float  1.0
/* 025048 801592B8 BC23D70A */  .float  -0.009999999776482582
/* 02504C 801592BC BA83126F */  .float  -0.0010000000474974513
/* 025050 801592C0 3F800000 */  .float  1.0
/* 025054 801592C4 BC23D70A */  .float  -0.009999999776482582
/* 025058 801592C8 BA83126F */  .float  -0.0010000000474974513
/* 02505C 801592CC 3F800000 */  .float  1.0
/* 025060 801592D0 412028F6 */  .float  10.010000228881836
/* 025064 801592D4 00300000 */  .float  4.408103815583578e-39
/* 025068 801592D8 3F800000 */  .float  1.0
/* 02506C 801592DC 3F800000 */  .float  1.0
/* 025070 801592E0 BC23D70A */  .float  -0.009999999776482582
/* 025074 801592E4 BB03126F */  .float  -0.0020000000949949026
/* 025078 801592E8 3F800000 */  .float  1.0
/* 02507C 801592EC 412028F6 */  .float  10.010000228881836
/* 025080 801592F0 3F8020C5 */  .float  1.0010000467300415
/* 025084 801592F4 3F800000 */  .float  1.0
/* 025088 801592F8 412028F6 */  .float  10.010000228881836
/* 02508C 801592FC 00300000 */  .float  4.408103815583578e-39
/* 025090 80159300 801590D0 */  .float  -1.980494355987265e-39
/* 025094 80159304 801590D0 */  .float  -1.980494355987265e-39
/* 025098 80159308 000E0000 */  .float  1.285696946211877e-39
/* 02509C 8015930C 00000000 */  .float  0.0
/* 0250A0 80159310 3F800000 */  .float  1.0
/* 0250A4 80159314 3F800000 */  .float  1.0
/* 0250A8 80159318 3F800000 */  .float  1.0
/* 0250AC 8015931C 00000000 */  .float  0.0
/* 0250B0 80159320 00000000 */  .float  0.0
/* 0250B4 80159324 00000000 */  .float  0.0
/* 0250B8 80159328 00000000 */  .float  0.0
/* 0250BC 8015932C 00000000 */  .float  0.0
/* 0250C0 80159330 00000000 */  .float  0.0
/* 0250C4 80159334 44EEC000 */  .float  1910.0
/* 0250C8 80159338 00000000 */  .float  0.0
/* 0250CC 8015933C 00000000 */  .float  0.0
/* 0250D0 80159340 04023878 */  .float  1.5307355739058095e-36
/* 0250D4 80159344 00000000 */  .float  0.0
/* 0250D8 80159348 BB83126F */  .float  -0.004000000189989805
/* 0250DC 8015934C 3F800000 */  .float  1.0
/* 0250E0 80159350 410FDB23 */  .float  8.991000175476074
/* 0250E4 80159354 BBE56042 */  .float  -0.007000000216066837
/* 0250E8 80159358 3F800000 */  .float  1.0
/* 0250EC 8015935C 41201CAC */  .float  10.006999969482422
/* 0250F0 80159360 3F8126E9 */  .float  1.0089999437332153
/* 0250F4 80159364 3F800000 */  .float  1.0
/* 0250F8 80159368 41201062 */  .float  10.003999710083008
/* 0250FC 8015936C 00300000 */  .float  4.408103815583578e-39
/* 025100 80159370 BC1374BC */  .float  -0.008999999612569809
/* 025104 80159374 3F800000 */  .float  1.0
/* 025108 80159378 410FEF9E */  .float  8.996000289916992
/* 02510C 8015937C 3F808312 */  .float  1.003999948501587
/* 025110 80159380 3F800000 */  .float  1.0
/* 025114 80159384 412024DD */  .float  10.008999824523926
/* 025118 80159388 3F80E560 */  .float  1.0069999694824219
/* 02511C 8015938C 3F800000 */  .float  1.0
/* 025120 80159390 410FE354 */  .float  8.993000030517578
/* 025124 80159394 00300000 */  .float  4.408103815583578e-39
/* 025128 80159398 BC1374BC */  .float  -0.008999999612569809
/* 02512C 8015939C 3F800000 */  .float  1.0
/* 025130 801593A0 BB83126F */  .float  -0.004000000189989805
/* 025134 801593A4 41201062 */  .float  10.003999710083008
/* 025138 801593A8 3F800000 */  .float  1.0
/* 02513C 801593AC 412024DD */  .float  10.008999824523926
/* 025140 801593B0 41201CAC */  .float  10.006999969482422
/* 025144 801593B4 3F800000 */  .float  1.0
/* 025148 801593B8 BBE56042 */  .float  -0.007000000216066837
/* 02514C 801593BC 00000000 */  .float  0.0
/* 025150 801593C0 BA83126F */  .float  -0.0010000000474974513
/* 025154 801593C4 3F800000 */  .float  1.0
/* 025158 801593C8 BC23D70A */  .float  -0.009999999776482582
/* 02515C 801593CC BA83126F */  .float  -0.0010000000474974513
/* 025160 801593D0 3F800000 */  .float  1.0
/* 025164 801593D4 411028F6 */  .float  9.010000228881836
/* 025168 801593D8 3F804189 */  .float  1.0019999742507935
/* 02516C 801593DC 3F800000 */  .float  1.0
/* 025170 801593E0 411028F6 */  .float  9.010000228881836
/* 025174 801593E4 00000000 */  .float  0.0
/* 025178 801593E8 3F7D70A4 */  .float  0.9900000095367432
/* 02517C 801593EC 3F800000 */  .float  1.0
/* 025180 801593F0 410FF7CF */  .float  8.998000144958496
/* 025184 801593F4 3F7D70A4 */  .float  0.9900000095367432
/* 025188 801593F8 3F800000 */  .float  1.0
/* 02518C 801593FC 41200419 */  .float  10.00100040435791
/* 025190 80159400 412028F6 */  .float  10.010000228881836
/* 025194 80159404 3F800000 */  .float  1.0
/* 025198 80159408 41200419 */  .float  10.00100040435791
/* 02519C 8015940C 00000000 */  .float  0.0
/* 0251A0 80159410 3F7E353F */  .float  0.9929999709129333
/* 0251A4 80159414 3F800000 */  .float  1.0
/* 0251A8 80159418 41101CAC */  .float  9.006999969482422
/* 0251AC 8015941C 412024DD */  .float  10.008999824523926
/* 0251B0 80159420 3F800000 */  .float  1.0
/* 0251B4 80159424 4120147B */  .float  10.005000114440918
/* 0251B8 80159428 BBA3D70A */  .float  -0.004999999888241291
/* 0251BC 8015942C 3F800000 */  .float  1.0
/* 0251C0 80159430 BC1374BC */  .float  -0.008999999612569809
/* 0251C4 80159434 00000000 */  .float  0.0
/* 0251C8 80159438 80159348 */  .float  -1.9813799766167183e-39
/* 0251CC 8015943C 80159348 */  .float  -1.9813799766167183e-39
/* 0251D0 80159440 00060000 */  .float  5.510129769479473e-40
/* 0251D4 80159444 00000000 */  .float  0.0
/* 0251D8 80159448 3F800000 */  .float  1.0
/* 0251DC 8015944C 3F800000 */  .float  1.0
/* 0251E0 80159450 3F800000 */  .float  1.0
/* 0251E4 80159454 00000000 */  .float  0.0
/* 0251E8 80159458 00000000 */  .float  0.0
/* 0251EC 8015945C 00000000 */  .float  0.0
/* 0251F0 80159460 00000000 */  .float  0.0
/* 0251F4 80159464 00000000 */  .float  0.0
/* 0251F8 80159468 00000000 */  .float  0.0
/* 0251FC 8015946C 447A0000 */  .float  1000.0
/* 025200 80159470 00000000 */  .float  0.0
/* 025204 80159474 00000000 */  .float  0.0
/* 025208 80159478 04023B58 */  .float  1.5308675874315367e-36
/* 02520C 8015947C 00000000 */  .float  0.0
/* 025210 80159480 3F7DB22D */  .float  0.9909999966621399
/* 025214 80159484 3F800000 */  .float  1.0
/* 025218 80159488 4120147B */  .float  10.005000114440918
/* 02521C 8015948C 41201CAC */  .float  10.006999969482422
/* 025220 80159490 3F800000 */  .float  1.0
/* 025224 80159494 41201CAC */  .float  10.006999969482422
/* 025228 80159498 41201062 */  .float  10.003999710083008
/* 02522C 8015949C 3F800000 */  .float  1.0
/* 025230 801594A0 BC1374BC */  .float  -0.008999999612569809
/* 025234 801594A4 00000000 */  .float  0.0
/* 025238 801594A8 3F7EF9DB */  .float  0.9959999918937683
/* 02523C 801594AC 3F800000 */  .float  1.0
/* 025240 801594B0 412024DD */  .float  10.008999824523926
/* 025244 801594B4 412024DD */  .float  10.008999824523926
/* 025248 801594B8 3F800000 */  .float  1.0
/* 02524C 801594BC BBA3D70A */  .float  -0.004999999888241291
/* 025250 801594C0 3F7E353F */  .float  0.9929999709129333
/* 025254 801594C4 3F800000 */  .float  1.0
/* 025258 801594C8 BBE56042 */  .float  -0.007000000216066837
/* 02525C 801594CC 00000000 */  .float  0.0
/* 025260 801594D0 3F804189 */  .float  1.0019999742507935
/* 025264 801594D4 3F800000 */  .float  1.0
/* 025268 801594D8 BC23D70A */  .float  -0.009999999776482582
/* 02526C 801594DC BA83126F */  .float  -0.0010000000474974513
/* 025270 801594E0 3F800000 */  .float  1.0
/* 025274 801594E4 BC23D70A */  .float  -0.009999999776482582
/* 025278 801594E8 BA83126F */  .float  -0.0010000000474974513
/* 02527C 801594EC 3F800000 */  .float  1.0
/* 025280 801594F0 412028F6 */  .float  10.010000228881836
/* 025284 801594F4 00300000 */  .float  4.408103815583578e-39
/* 025288 801594F8 3F800000 */  .float  1.0
/* 02528C 801594FC 3F800000 */  .float  1.0
/* 025290 80159500 BC23D70A */  .float  -0.009999999776482582
/* 025294 80159504 BB03126F */  .float  -0.0020000000949949026
/* 025298 80159508 3F800000 */  .float  1.0
/* 02529C 8015950C 412028F6 */  .float  10.010000228881836
/* 0252A0 80159510 3F8020C5 */  .float  1.0010000467300415
/* 0252A4 80159514 3F800000 */  .float  1.0
/* 0252A8 80159518 412028F6 */  .float  10.010000228881836
/* 0252AC 8015951C 00300000 */  .float  4.408103815583578e-39
/* 0252B0 80159520 80159480 */  .float  -1.9818171817375877e-39
/* 0252B4 80159524 80159480 */  .float  -1.9818171817375877e-39
/* 0252B8 80159528 00040000 */  .float  3.6734198463196485e-40
/* 0252BC 8015952C 00000000 */  .float  0.0
/* 0252C0 80159530 3F800000 */  .float  1.0
/* 0252C4 80159534 3F800000 */  .float  1.0
/* 0252C8 80159538 3F800000 */  .float  1.0
/* 0252CC 8015953C 00000000 */  .float  0.0
/* 0252D0 80159540 00000000 */  .float  0.0
/* 0252D4 80159544 00000000 */  .float  0.0
/* 0252D8 80159548 00000000 */  .float  0.0
/* 0252DC 8015954C 00000000 */  .float  0.0
/* 0252E0 80159550 00000000 */  .float  0.0
/* 0252E4 80159554 44EEC000 */  .float  1910.0
/* 0252E8 80159558 00000000 */  .float  0.0
/* 0252EC 8015955C 00000000 */  .float  0.0
/* 0252F0 80159560 04023CC8 */  .float  1.5309335941944002e-36
/* 0252F4 80159564 00000000 */  .float  0.0
/* 0252F8 80159568 BB83126F */  .float  -0.004000000189989805
/* 0252FC 8015956C 3F800000 */  .float  1.0
/* 025300 80159570 BC1374BC */  .float  -0.008999999612569809
/* 025304 80159574 BBE56042 */  .float  -0.007000000216066837
/* 025308 80159578 3F800000 */  .float  1.0
/* 02530C 8015957C 41201CAC */  .float  10.006999969482422
/* 025310 80159580 412024DD */  .float  10.008999824523926
/* 025314 80159584 3F800000 */  .float  1.0
/* 025318 80159588 41201062 */  .float  10.003999710083008
/* 02531C 8015958C 00000000 */  .float  0.0
/* 025320 80159590 BC1374BC */  .float  -0.008999999612569809
/* 025324 80159594 3F800000 */  .float  1.0
/* 025328 80159598 BB83126F */  .float  -0.004000000189989805
/* 02532C 8015959C 41201062 */  .float  10.003999710083008
/* 025330 801595A0 3F800000 */  .float  1.0
/* 025334 801595A4 412024DD */  .float  10.008999824523926
/* 025338 801595A8 41201CAC */  .float  10.006999969482422
/* 02533C 801595AC 3F800000 */  .float  1.0
/* 025340 801595B0 BBE56042 */  .float  -0.007000000216066837
/* 025344 801595B4 00000000 */  .float  0.0
/* 025348 801595B8 80159568 */  .float  -1.982142282981311e-39
/* 02534C 801595BC 80159568 */  .float  -1.982142282981311e-39
/* 025350 801595C0 00020000 */  .float  1.8367099231598242e-40
/* 025354 801595C4 00000000 */  .float  0.0
/* 025358 801595C8 3F800000 */  .float  1.0
/* 02535C 801595CC 3F800000 */  .float  1.0
/* 025360 801595D0 3F800000 */  .float  1.0
/* 025364 801595D4 00000000 */  .float  0.0
/* 025368 801595D8 00000000 */  .float  0.0
/* 02536C 801595DC 00000000 */  .float  0.0
/* 025370 801595E0 00000000 */  .float  0.0
/* 025374 801595E4 00000000 */  .float  0.0
/* 025378 801595E8 00000000 */  .float  0.0
/* 02537C 801595EC 447A0000 */  .float  1000.0
/* 025380 801595F0 00000000 */  .float  0.0
/* 025384 801595F4 00000000 */  .float  0.0
/* 025388 801595F8 04023ED8 */  .float  1.531028299549813e-36
/* 02538C 801595FC 00000000 */  .float  0.0
/* 025390 80159600 BB83126F */  .float  -0.004000000189989805
/* 025394 80159604 3F800000 */  .float  1.0
/* 025398 80159608 BC1374BC */  .float  -0.008999999612569809
/* 02539C 8015960C BBE56042 */  .float  -0.007000000216066837
/* 0253A0 80159610 3F800000 */  .float  1.0
/* 0253A4 80159614 41201CAC */  .float  10.006999969482422
/* 0253A8 80159618 412024DD */  .float  10.008999824523926
/* 0253AC 8015961C 3F800000 */  .float  1.0
/* 0253B0 80159620 41201062 */  .float  10.003999710083008
/* 0253B4 80159624 00000000 */  .float  0.0
/* 0253B8 80159628 BC1374BC */  .float  -0.008999999612569809
/* 0253BC 8015962C 3F800000 */  .float  1.0
/* 0253C0 80159630 BB83126F */  .float  -0.004000000189989805
/* 0253C4 80159634 41201062 */  .float  10.003999710083008
/* 0253C8 80159638 3F800000 */  .float  1.0
/* 0253CC 8015963C 412024DD */  .float  10.008999824523926
/* 0253D0 80159640 41201CAC */  .float  10.006999969482422
/* 0253D4 80159644 3F800000 */  .float  1.0
/* 0253D8 80159648 BBE56042 */  .float  -0.007000000216066837
/* 0253DC 8015964C 00000000 */  .float  0.0
/* 0253E0 80159650 80159600 */  .float  -1.9823552803478884e-39
/* 0253E4 80159654 80159600 */  .float  -1.9823552803478884e-39
/* 0253E8 80159658 00020000 */  .float  1.8367099231598242e-40
/* 0253EC 8015965C 00000000 */  .float  0.0
/* 0253F0 80159660 3F800000 */  .float  1.0
/* 0253F4 80159664 3F800000 */  .float  1.0
/* 0253F8 80159668 3F800000 */  .float  1.0
/* 0253FC 8015966C 00000000 */  .float  0.0
/* 025400 80159670 00000000 */  .float  0.0
/* 025404 80159674 00000000 */  .float  0.0
/* 025408 80159678 00000000 */  .float  0.0
/* 02540C 8015967C 00000000 */  .float  0.0
/* 025410 80159680 00000000 */  .float  0.0
/* 025414 80159684 447A0000 */  .float  1000.0
/* 025418 80159688 00000000 */  .float  0.0
/* 02541C 8015968C 00000000 */  .float  0.0
/* 025420 80159690 04023FC8 */  .float  1.5310713474386372e-36
/* 025424 80159694 00000000 */  .float  0.0
/* 025428 80159698 BB83126F */  .float  -0.004000000189989805
/* 02542C 8015969C 3F800000 */  .float  1.0
/* 025430 801596A0 BC1374BC */  .float  -0.008999999612569809
/* 025434 801596A4 BBE56042 */  .float  -0.007000000216066837
/* 025438 801596A8 3F800000 */  .float  1.0
/* 02543C 801596AC 41201CAC */  .float  10.006999969482422
/* 025440 801596B0 412024DD */  .float  10.008999824523926
/* 025444 801596B4 3F800000 */  .float  1.0
/* 025448 801596B8 41201062 */  .float  10.003999710083008
/* 02544C 801596BC 00000000 */  .float  0.0
/* 025450 801596C0 BC1374BC */  .float  -0.008999999612569809
/* 025454 801596C4 3F800000 */  .float  1.0
/* 025458 801596C8 BB83126F */  .float  -0.004000000189989805
/* 02545C 801596CC 41201062 */  .float  10.003999710083008
/* 025460 801596D0 3F800000 */  .float  1.0
/* 025464 801596D4 412024DD */  .float  10.008999824523926
/* 025468 801596D8 41201CAC */  .float  10.006999969482422
/* 02546C 801596DC 3F800000 */  .float  1.0
/* 025470 801596E0 BBE56042 */  .float  -0.007000000216066837
/* 025474 801596E4 00000000 */  .float  0.0
/* 025478 801596E8 80159698 */  .float  -1.9825682777144658e-39
/* 02547C 801596EC 80159698 */  .float  -1.9825682777144658e-39
/* 025480 801596F0 00020000 */  .float  1.8367099231598242e-40
/* 025484 801596F4 00000000 */  .float  0.0
/* 025488 801596F8 3F800000 */  .float  1.0
/* 02548C 801596FC 3F800000 */  .float  1.0
/* 025490 80159700 3F800000 */  .float  1.0
/* 025494 80159704 00000000 */  .float  0.0
/* 025498 80159708 00000000 */  .float  0.0
/* 02549C 8015970C 00000000 */  .float  0.0
/* 0254A0 80159710 00000000 */  .float  0.0
/* 0254A4 80159714 00000000 */  .float  0.0
/* 0254A8 80159718 00000000 */  .float  0.0
/* 0254AC 8015971C 447A0000 */  .float  1000.0
/* 0254B0 80159720 00000000 */  .float  0.0
/* 0254B4 80159724 00000000 */  .float  0.0
/* 0254B8 80159728 040240B8 */  .float  1.5311143953274613e-36
/* 0254BC 8015972C 00000000 */  .float  0.0
/* 0254C0 80159730 40471AA0 */  .float  3.1110000610351562
/* 0254C4 80159734 402051EC */  .float  2.505000114440918
/* 0254C8 80159738 4105374C */  .float  8.326000213623047
/* 0254CC 8015973C C099D2F2 */  .float  -4.807000160217285
/* 0254D0 80159740 402051EC */  .float  2.505000114440918
/* 0254D4 80159744 410AAC08 */  .float  8.666999816894531
/* 0254D8 80159748 BF2D4FDF */  .float  -0.6769999861717224
/* 0254DC 8015974C 402051EC */  .float  2.505000114440918
/* 0254E0 80159750 41475C29 */  .float  12.460000038146973
/* 0254E4 80159754 00000000 */  .float  0.0
/* 0254E8 80159758 40472B02 */  .float  3.111999988555908
/* 0254EC 8015975C 402051EC */  .float  2.505000114440918
/* 0254F0 80159760 410553F8 */  .float  8.333000183105469
/* 0254F4 80159764 BF824DD3 */  .float  -1.0180000066757202
/* 0254F8 80159768 402051EC */  .float  2.505000114440918
/* 0254FC 8015976C 409147AE */  .float  4.539999961853027
/* 025500 80159770 C099D2F2 */  .float  -4.807000160217285
/* 025504 80159774 402051EC */  .float  2.505000114440918
/* 025508 80159778 410AC49C */  .float  8.67300033569336
/* 02550C 8015977C 00000000 */  .float  0.0
/* 025510 80159780 BF8872B0 */  .float  -1.065999984741211
/* 025514 80159784 3FDA9FBE */  .float  1.7079999446868896
/* 025518 80159788 4052D0E5 */  .float  3.2939999103546143
/* 02551C 8015978C C099BA5E */  .float  -4.803999900817871
/* 025520 80159790 4020624E */  .float  2.50600004196167
/* 025524 80159794 410AD4FE */  .float  8.677000045776367
/* 025528 80159798 BF8126E9 */  .float  -1.0089999437332153
/* 02552C 8015979C 402072B0 */  .float  2.506999969482422
/* 025530 801597A0 40916873 */  .float  4.544000148773193
/* 025534 801597A4 00000000 */  .float  0.0
/* 025538 801597A8 C0C1B22D */  .float  -6.052999973297119
/* 02553C 801597AC 3FDA9FBE */  .float  1.7079999446868896
/* 025540 801597B0 410B7CEE */  .float  8.718000411987305
/* 025544 801597B4 BF2B851F */  .float  -0.6700000166893005
/* 025548 801597B8 4020624E */  .float  2.50600004196167
/* 02554C 801597BC 41474BC7 */  .float  12.456000328063965
/* 025550 801597C0 C099B22D */  .float  -4.802999973297119
/* 025554 801597C4 402072B0 */  .float  2.506999969482422
/* 025558 801597C8 410A978D */  .float  8.661999702453613
/* 02555C 801597CC 00000000 */  .float  0.0
/* 025560 801597D0 BF210625 */  .float  -0.6290000081062317
/* 025564 801597D4 3FDA9FBE */  .float  1.7079999446868896
/* 025568 801597D8 415B47AE */  .float  13.704999923706055
/* 02556C 801597DC 4046E979 */  .float  3.1080000400543213
/* 025570 801597E0 4020624E */  .float  2.50600004196167
/* 025574 801597E4 410526E9 */  .float  8.321999549865723
/* 025578 801597E8 BF2F9DB2 */  .float  -0.6859999895095825
/* 02557C 801597EC 402072B0 */  .float  2.506999969482422
/* 025580 801597F0 414747AE */  .float  12.454999923706055
/* 025584 801597F4 00000000 */  .float  0.0
/* 025588 801597F8 408B74BC */  .float  4.357999801635742
/* 02558C 801597FC 3FDA9FBE */  .float  1.7079999446868896
/* 025590 80159800 41047EFA */  .float  8.281000137329102
/* 025594 80159804 BF833333 */  .float  -1.024999976158142
/* 025598 80159808 4020624E */  .float  2.50600004196167
/* 02559C 8015980C 40916873 */  .float  4.544000148773193
/* 0255A0 80159810 4046E979 */  .float  3.1080000400543213
/* 0255A4 80159814 402072B0 */  .float  2.506999969482422
/* 0255A8 80159818 41056873 */  .float  8.338000297546387
/* 0255AC 8015981C 00000000 */  .float  0.0
/* 0255B0 80159820 BF8851EC */  .float  -1.065000057220459
/* 0255B4 80159824 3FDAE148 */  .float  1.7100000381469727
/* 0255B8 80159828 4052E148 */  .float  3.2950000762939453
/* 0255BC 8015982C C0C1A9FC */  .float  -6.052000045776367
/* 0255C0 80159830 3FDAC083 */  .float  1.7089999914169312
/* 0255C4 80159834 410BAE14 */  .float  8.729999542236328
/* 0255C8 80159838 C099A1CB */  .float  -4.801000118255615
/* 0255CC 8015983C 40208312 */  .float  2.507999897003174
/* 0255D0 80159840 410AD917 */  .float  8.678000450134277
/* 0255D4 80159844 00000000 */  .float  0.0
/* 0255D8 80159848 C0C1A9FC */  .float  -6.052000045776367
/* 0255DC 8015984C 3FDAE148 */  .float  1.7100000381469727
/* 0255E0 80159850 410B78D5 */  .float  8.717000007629395
/* 0255E4 80159854 BF1E353F */  .float  -0.6179999709129333
/* 0255E8 80159858 3FDAC083 */  .float  1.7089999914169312
/* 0255EC 8015985C 415B4396 */  .float  13.704000473022461
/* 0255F0 80159860 BF2B4396 */  .float  -0.6690000295639038
/* 0255F4 80159864 40208312 */  .float  2.507999897003174
/* 0255F8 80159868 41474396 */  .float  12.454000473022461
/* 0255FC 8015986C 00000000 */  .float  0.0
/* 025600 80159870 BF218937 */  .float  -0.6309999823570251
/* 025604 80159874 3FDAE148 */  .float  1.7100000381469727
/* 025608 80159878 415B47AE */  .float  13.704999923706055
/* 02560C 8015987C 408B6C8B */  .float  4.35699987411499
/* 025610 80159880 3FDAC083 */  .float  1.7089999914169312
/* 025614 80159884 410451EC */  .float  8.270000457763672
/* 025618 80159888 4046C8B4 */  .float  3.1059999465942383
/* 02561C 8015988C 40208312 */  .float  2.507999897003174
/* 025620 80159890 410522D1 */  .float  8.321000099182129
/* 025624 80159894 00000000 */  .float  0.0
/* 025628 80159898 408B6C8B */  .float  4.35699987411499
/* 02562C 8015989C 3FDAE148 */  .float  1.7100000381469727
/* 025630 801598A0 4104872B */  .float  8.282999992370605
/* 025634 801598A4 BF89FBE7 */  .float  -1.0779999494552612
/* 025638 801598A8 3FDAC083 */  .float  1.7089999914169312
/* 02563C 801598AC 4052E148 */  .float  3.2950000762939453
/* 025640 801598B0 BF8353F8 */  .float  -1.0260000228881836
/* 025644 801598B4 40208312 */  .float  2.507999897003174
/* 025648 801598B8 409178D5 */  .float  4.546000003814697
/* 02564C 801598BC 00000000 */  .float  0.0
/* 025650 801598C0 BB83126F */  .float  -0.004000000189989805
/* 025654 801598C4 3F800000 */  .float  1.0
/* 025658 801598C8 BC1374BC */  .float  -0.008999999612569809
/* 02565C 801598CC BBE56042 */  .float  -0.007000000216066837
/* 025660 801598D0 3F800000 */  .float  1.0
/* 025664 801598D4 41201CAC */  .float  10.006999969482422
/* 025668 801598D8 412024DD */  .float  10.008999824523926
/* 02566C 801598DC 3F800000 */  .float  1.0
/* 025670 801598E0 41201062 */  .float  10.003999710083008
/* 025674 801598E4 00000000 */  .float  0.0
/* 025678 801598E8 BC1374BC */  .float  -0.008999999612569809
/* 02567C 801598EC 3F800000 */  .float  1.0
/* 025680 801598F0 BB83126F */  .float  -0.004000000189989805
/* 025684 801598F4 41201062 */  .float  10.003999710083008
/* 025688 801598F8 3F800000 */  .float  1.0
/* 02568C 801598FC 412024DD */  .float  10.008999824523926
/* 025690 80159900 41201CAC */  .float  10.006999969482422
/* 025694 80159904 3F800000 */  .float  1.0
/* 025698 80159908 BBE56042 */  .float  -0.007000000216066837
/* 02569C 8015990C 00000000 */  .float  0.0
/* 0256A0 80159910 80159730 */  .float  -1.982781275081043e-39
/* 0256A4 80159914 80159730 */  .float  -1.982781275081043e-39
/* 0256A8 80159918 000C0000 */  .float  1.1020259538958945e-39
/* 0256AC 8015991C 00000000 */  .float  0.0
/* 0256B0 80159920 3F800000 */  .float  1.0
/* 0256B4 80159924 3F800000 */  .float  1.0
/* 0256B8 80159928 3F800000 */  .float  1.0
/* 0256BC 8015992C 00000000 */  .float  0.0
/* 0256C0 80159930 00000000 */  .float  0.0
/* 0256C4 80159934 00000000 */  .float  0.0
/* 0256C8 80159938 00000000 */  .float  0.0
/* 0256CC 8015993C 00000000 */  .float  0.0
/* 0256D0 80159940 00000000 */  .float  0.0
/* 0256D4 80159944 44C89000 */  .float  1604.5
/* 0256D8 80159948 00000000 */  .float  0.0
/* 0256DC 8015994C 00000000 */  .float  0.0
/* 0256E0 80159950 04024268 */  .float  1.5311918815273446e-36
/* 0256E4 80159954 00000000 */  .float  0.0
/* 0256E8 80159958 40471AA0 */  .float  3.1110000610351562
/* 0256EC 8015995C 402051EC */  .float  2.505000114440918
/* 0256F0 80159960 BFD645A2 */  .float  -1.6740000247955322
/* 0256F4 80159964 C099D2F2 */  .float  -4.807000160217285
/* 0256F8 80159968 402051EC */  .float  2.505000114440918
/* 0256FC 8015996C BFAA9FBE */  .float  -1.3329999446868896
/* 025700 80159970 BF2D4FDF */  .float  -0.6769999861717224
/* 025704 80159974 402051EC */  .float  2.505000114440918
/* 025708 80159978 401D70A4 */  .float  2.4600000381469727
/* 02570C 8015997C 00000000 */  .float  0.0
/* 025710 80159980 40472B02 */  .float  3.111999988555908
/* 025714 80159984 402051EC */  .float  2.505000114440918
/* 025718 80159988 BFD56042 */  .float  -1.6670000553131104
/* 02571C 8015998C BF824DD3 */  .float  -1.0180000066757202
/* 025720 80159990 402051EC */  .float  2.505000114440918
/* 025724 80159994 C0AEB852 */  .float  -5.460000038146973
/* 025728 80159998 C099D2F2 */  .float  -4.807000160217285
/* 02572C 8015999C 402051EC */  .float  2.505000114440918
/* 025730 801599A0 BFA9DB23 */  .float  -1.3270000219345093
/* 025734 801599A4 00000000 */  .float  0.0
/* 025738 801599A8 BF8872B0 */  .float  -1.065999984741211
/* 02573C 801599AC 3FDA9FBE */  .float  1.7079999446868896
/* 025740 801599B0 C0D6978D */  .float  -6.705999851226807
/* 025744 801599B4 C099BA5E */  .float  -4.803999900817871
/* 025748 801599B8 4020624E */  .float  2.50600004196167
/* 02574C 801599BC BFA95810 */  .float  -1.3229999542236328
/* 025750 801599C0 BF8126E9 */  .float  -1.0089999437332153
/* 025754 801599C4 402072B0 */  .float  2.506999969482422
/* 025758 801599C8 C0AE978D */  .float  -5.455999851226807
/* 02575C 801599CC 00000000 */  .float  0.0
/* 025760 801599D0 C0C1B22D */  .float  -6.052999973297119
/* 025764 801599D4 3FDA9FBE */  .float  1.7079999446868896
/* 025768 801599D8 BFA41893 */  .float  -1.281999945640564
/* 02576C 801599DC BF2B851F */  .float  -0.6700000166893005
/* 025770 801599E0 4020624E */  .float  2.50600004196167
/* 025774 801599E4 401D2F1B */  .float  2.4560000896453857
/* 025778 801599E8 C099B22D */  .float  -4.802999973297119
/* 02577C 801599EC 402072B0 */  .float  2.506999969482422
/* 025780 801599F0 BFAB4396 */  .float  -1.3380000591278076
/* 025784 801599F4 00000000 */  .float  0.0
/* 025788 801599F8 BF210625 */  .float  -0.6290000081062317
/* 02578C 801599FC 3FDA9FBE */  .float  1.7079999446868896
/* 025790 80159A00 406D1EB8 */  .float  3.7049999237060547
/* 025794 80159A04 4046E979 */  .float  3.1080000400543213
/* 025798 80159A08 4020624E */  .float  2.50600004196167
/* 02579C 80159A0C BFD6C8B4 */  .float  -1.6779999732971191
/* 0257A0 80159A10 BF2F9DB2 */  .float  -0.6859999895095825
/* 0257A4 80159A14 402072B0 */  .float  2.506999969482422
/* 0257A8 80159A18 401D1EB8 */  .float  2.4549999237060547
/* 0257AC 80159A1C 00000000 */  .float  0.0
/* 0257B0 80159A20 408B74BC */  .float  4.357999801635742
/* 0257B4 80159A24 3FDA9FBE */  .float  1.7079999446868896
/* 0257B8 80159A28 BFDC0831 */  .float  -1.718999981880188
/* 0257BC 80159A2C BF833333 */  .float  -1.024999976158142
/* 0257C0 80159A30 4020624E */  .float  2.50600004196167
/* 0257C4 80159A34 C0AE978D */  .float  -5.455999851226807
/* 0257C8 80159A38 4046E979 */  .float  3.1080000400543213
/* 0257CC 80159A3C 402072B0 */  .float  2.506999969482422
/* 0257D0 80159A40 BFD4BC6A */  .float  -1.6619999408721924
/* 0257D4 80159A44 00000000 */  .float  0.0
/* 0257D8 80159A48 BF8851EC */  .float  -1.065000057220459
/* 0257DC 80159A4C 3FDAE148 */  .float  1.7100000381469727
/* 0257E0 80159A50 C0D68F5C */  .float  -6.704999923706055
/* 0257E4 80159A54 C0C1A9FC */  .float  -6.052000045776367
/* 0257E8 80159A58 3FDAC083 */  .float  1.7089999914169312
/* 0257EC 80159A5C BFA28F5C */  .float  -1.2699999809265137
/* 0257F0 80159A60 C099A1CB */  .float  -4.801000118255615
/* 0257F4 80159A64 40208312 */  .float  2.507999897003174
/* 0257F8 80159A68 BFA9374C */  .float  -1.3220000267028809
/* 0257FC 80159A6C 00000000 */  .float  0.0
/* 025800 80159A70 C0C1A9FC */  .float  -6.052000045776367
/* 025804 80159A74 3FDAE148 */  .float  1.7100000381469727
/* 025808 80159A78 BFA43958 */  .float  -1.2829999923706055
/* 02580C 80159A7C BF1E353F */  .float  -0.6179999709129333
/* 025810 80159A80 3FDAC083 */  .float  1.7089999914169312
/* 025814 80159A84 406D0E56 */  .float  3.7039999961853027
/* 025818 80159A88 BF2B4396 */  .float  -0.6690000295639038
/* 02581C 80159A8C 40208312 */  .float  2.507999897003174
/* 025820 80159A90 401D0E56 */  .float  2.4539999961853027
/* 025824 80159A94 00000000 */  .float  0.0
/* 025828 80159A98 BF218937 */  .float  -0.6309999823570251
/* 02582C 80159A9C 3FDAE148 */  .float  1.7100000381469727
/* 025830 80159AA0 406D1EB8 */  .float  3.7049999237060547
/* 025834 80159AA4 408B6C8B */  .float  4.35699987411499
/* 025838 80159AA8 3FDAC083 */  .float  1.7089999914169312
/* 02583C 80159AAC BFDD70A4 */  .float  -1.7300000190734863
/* 025840 80159AB0 4046C8B4 */  .float  3.1059999465942383
/* 025844 80159AB4 40208312 */  .float  2.507999897003174
/* 025848 80159AB8 BFD6E979 */  .float  -1.6790000200271606
/* 02584C 80159ABC 00000000 */  .float  0.0
/* 025850 80159AC0 408B6C8B */  .float  4.35699987411499
/* 025854 80159AC4 3FDAE148 */  .float  1.7100000381469727
/* 025858 80159AC8 BFDBC6A8 */  .float  -1.7170000076293945
/* 02585C 80159ACC BF89FBE7 */  .float  -1.0779999494552612
/* 025860 80159AD0 3FDAC083 */  .float  1.7089999914169312
/* 025864 80159AD4 C0D68F5C */  .float  -6.704999923706055
/* 025868 80159AD8 BF8353F8 */  .float  -1.0260000228881836
/* 02586C 80159ADC 40208312 */  .float  2.507999897003174
/* 025870 80159AE0 C0AE872B */  .float  -5.453999996185303
/* 025874 80159AE4 00000000 */  .float  0.0
/* 025878 80159AE8 BB83126F */  .float  -0.004000000189989805
/* 02587C 80159AEC 3F800000 */  .float  1.0
/* 025880 80159AF0 BC1374BC */  .float  -0.008999999612569809
/* 025884 80159AF4 BBE56042 */  .float  -0.007000000216066837
/* 025888 80159AF8 3F800000 */  .float  1.0
/* 02588C 80159AFC 41201CAC */  .float  10.006999969482422
/* 025890 80159B00 412024DD */  .float  10.008999824523926
/* 025894 80159B04 3F800000 */  .float  1.0
/* 025898 80159B08 41201062 */  .float  10.003999710083008
/* 02589C 80159B0C 00000000 */  .float  0.0
/* 0258A0 80159B10 BC1374BC */  .float  -0.008999999612569809
/* 0258A4 80159B14 3F800000 */  .float  1.0
/* 0258A8 80159B18 BB83126F */  .float  -0.004000000189989805
/* 0258AC 80159B1C 41201062 */  .float  10.003999710083008
/* 0258B0 80159B20 3F800000 */  .float  1.0
/* 0258B4 80159B24 412024DD */  .float  10.008999824523926
/* 0258B8 80159B28 41201CAC */  .float  10.006999969482422
/* 0258BC 80159B2C 3F800000 */  .float  1.0
/* 0258C0 80159B30 BBE56042 */  .float  -0.007000000216066837
/* 0258C4 80159B34 00000000 */  .float  0.0
/* 0258C8 80159B38 80159958 */  .float  -1.9835547918333505e-39
/* 0258CC 80159B3C 80159958 */  .float  -1.9835547918333505e-39
/* 0258D0 80159B40 000C0000 */  .float  1.1020259538958945e-39
/* 0258D4 80159B44 00000000 */  .float  0.0
/* 0258D8 80159B48 3F800000 */  .float  1.0
/* 0258DC 80159B4C 3F800000 */  .float  1.0
/* 0258E0 80159B50 3F800000 */  .float  1.0
/* 0258E4 80159B54 00000000 */  .float  0.0
/* 0258E8 80159B58 00000000 */  .float  0.0
/* 0258EC 80159B5C 00000000 */  .float  0.0
/* 0258F0 80159B60 00000000 */  .float  0.0
/* 0258F4 80159B64 00000000 */  .float  0.0
/* 0258F8 80159B68 00000000 */  .float  0.0
/* 0258FC 80159B6C 44ED8000 */  .float  1900.0
/* 025900 80159B70 00000000 */  .float  0.0
/* 025904 80159B74 00000000 */  .float  0.0
/* 025908 80159B78 04024568 */  .float  1.5313296347715815e-36
/* 02590C 80159B7C 00000000 */  .float  0.0
/* 025910 80159B80 412028F6 */  .float  10.010000228881836
/* 025914 80159B84 40B24DD3 */  .float  5.572000026702881
/* 025918 80159B88 403FDF3B */  .float  2.997999906539917
/* 02591C 80159B8C BC1374BC */  .float  -0.008999999612569809
/* 025920 80159B90 40B24DD3 */  .float  5.572000026702881
/* 025924 80159B94 403FBE77 */  .float  2.996000051498413
/* 025928 80159B98 BC03126F */  .float  -0.00800000037997961
/* 02592C 80159B9C 40B24DD3 */  .float  5.572000026702881
/* 025930 80159BA0 40E0624E */  .float  7.01200008392334
/* 025934 80159BA4 00200000 */  .float  2.938735877055719e-39
/* 025938 80159BA8 412020C5 */  .float  10.008000373840332
/* 02593C 80159BAC 40B24DD3 */  .float  5.572000026702881
/* 025940 80159BB0 403F9DB2 */  .float  2.99399995803833
/* 025944 80159BB4 BC23D70A */  .float  -0.009999999776482582
/* 025948 80159BB8 40B24DD3 */  .float  5.572000026702881
/* 02594C 80159BBC 40E04189 */  .float  7.007999897003174
/* 025950 80159BC0 412024DD */  .float  10.008999824523926
/* 025954 80159BC4 40B24DD3 */  .float  5.572000026702881
/* 025958 80159BC8 40E051EC */  .float  7.010000228881836
/* 02595C 80159BCC 00200000 */  .float  2.938735877055719e-39
/* 025960 80159BD0 412028F6 */  .float  10.010000228881836
/* 025964 80159BD4 40B24DD3 */  .float  5.572000026702881
/* 025968 80159BD8 40E020C5 */  .float  7.004000186920166
/* 02596C 80159BDC BC23D70A */  .float  -0.009999999776482582
/* 025970 80159BE0 40B24DD3 */  .float  5.572000026702881
/* 025974 80159BE4 40E01893 */  .float  7.002999782562256
/* 025978 80159BE8 BC1374BC */  .float  -0.008999999612569809
/* 02597C 80159BEC 40A245A2 */  .float  5.071000099182129
/* 025980 80159BF0 411ADD2F */  .float  9.678999900817871
/* 025984 80159BF4 00200000 */  .float  2.938735877055719e-39
/* 025988 80159BF8 412024DD */  .float  10.008999824523926
/* 02598C 80159BFC 40A245A2 */  .float  5.071000099182129
/* 025990 80159C00 3EFEF9DB */  .float  0.49799999594688416
/* 025994 80159C04 BC23D70A */  .float  -0.009999999776482582
/* 025998 80159C08 40B24DD3 */  .float  5.572000026702881
/* 02599C 80159C0C 40401062 */  .float  3.000999927520752
/* 0259A0 80159C10 412028F6 */  .float  10.010000228881836
/* 0259A4 80159C14 40B24DD3 */  .float  5.572000026702881
/* 0259A8 80159C18 404020C5 */  .float  3.002000093460083
/* 0259AC 80159C1C 00200000 */  .float  2.938735877055719e-39
/* 0259B0 80159C20 412024DD */  .float  10.008999824523926
/* 0259B4 80159C24 40B24DD3 */  .float  5.572000026702881
/* 0259B8 80159C28 40E00831 */  .float  7.000999927520752
/* 0259BC 80159C2C BC23D70A */  .float  -0.009999999776482582
/* 0259C0 80159C30 40A24DD3 */  .float  5.072000026702881
/* 0259C4 80159C34 411AD0E5 */  .float  9.675999641418457
/* 0259C8 80159C38 412028F6 */  .float  10.010000228881836
/* 0259CC 80159C3C 40A245A2 */  .float  5.071000099182129
/* 0259D0 80159C40 411AE148 */  .float  9.680000305175781
/* 0259D4 80159C44 00200000 */  .float  2.938735877055719e-39
/* 0259D8 80159C48 412028F6 */  .float  10.010000228881836
/* 0259DC 80159C4C 40A245A2 */  .float  5.071000099182129
/* 0259E0 80159C50 3F004189 */  .float  0.5009999871253967
/* 0259E4 80159C54 BC23D70A */  .float  -0.009999999776482582
/* 0259E8 80159C58 40A24DD3 */  .float  5.072000026702881
/* 0259EC 80159C5C 3EFF7CEE */  .float  0.49900001287460327
/* 0259F0 80159C60 BC1374BC */  .float  -0.008999999612569809
/* 0259F4 80159C64 40B24DD3 */  .float  5.572000026702881
/* 0259F8 80159C68 40404189 */  .float  3.003999948501587
/* 0259FC 80159C6C 00200000 */  .float  2.938735877055719e-39
/* 025A00 80159C70 412028F6 */  .float  10.010000228881836
/* 025A04 80159C74 409245A2 */  .float  4.571000099182129
/* 025A08 80159C78 BA83126F */  .float  -0.0010000000474974513
/* 025A0C 80159C7C BC23D70A */  .float  -0.009999999776482582
/* 025A10 80159C80 40A25604 */  .float  5.072999954223633
/* 025A14 80159C84 3F004189 */  .float  0.5009999871253967
/* 025A18 80159C88 412028F6 */  .float  10.010000228881836
/* 025A1C 80159C8C 40A24DD3 */  .float  5.072000026702881
/* 025A20 80159C90 3F00C49C */  .float  0.503000020980835
/* 025A24 80159C94 00200000 */  .float  2.938735877055719e-39
/* 025A28 80159C98 412028F6 */  .float  10.010000228881836
/* 025A2C 80159C9C 40A24DD3 */  .float  5.072000026702881
/* 025A30 80159CA0 411AD4FE */  .float  9.677000045776367
/* 025A34 80159CA4 BC23D70A */  .float  -0.009999999776482582
/* 025A38 80159CA8 40A25604 */  .float  5.072999954223633
/* 025A3C 80159CAC 411AC8B4 */  .float  9.673999786376953
/* 025A40 80159CB0 BC23D70A */  .float  -0.009999999776482582
/* 025A44 80159CB4 408D374C */  .float  4.413000106811523
/* 025A48 80159CB8 4122C49C */  .float  10.17300033569336
/* 025A4C 80159CBC 00200000 */  .float  2.938735877055719e-39
/* 025A50 80159CC0 412028F6 */  .float  10.010000228881836
/* 025A54 80159CC4 409245A2 */  .float  4.571000099182129
/* 025A58 80159CC8 BA83126F */  .float  -0.0010000000474974513
/* 025A5C 80159CCC BC23D70A */  .float  -0.009999999776482582
/* 025A60 80159CD0 40924DD3 */  .float  4.572000026702881
/* 025A64 80159CD4 BA83126F */  .float  -0.0010000000474974513
/* 025A68 80159CD8 BC23D70A */  .float  -0.009999999776482582
/* 025A6C 80159CDC 40A25604 */  .float  5.072999954223633
/* 025A70 80159CE0 3F008312 */  .float  0.5019999742507935
/* 025A74 80159CE4 00200000 */  .float  2.938735877055719e-39
/* 025A78 80159CE8 412028F6 */  .float  10.010000228881836
/* 025A7C 80159CEC 40A25604 */  .float  5.072999954223633
/* 025A80 80159CF0 411AD4FE */  .float  9.677000045776367
/* 025A84 80159CF4 BC23D70A */  .float  -0.009999999776482582
/* 025A88 80159CF8 408D3F7D */  .float  4.414000034332275
/* 025A8C 80159CFC 4122C083 */  .float  10.17199993133545
/* 025A90 80159D00 412028F6 */  .float  10.010000228881836
/* 025A94 80159D04 408D374C */  .float  4.413000106811523
/* 025A98 80159D08 4122C083 */  .float  10.17199993133545
/* 025A9C 80159D0C 00200000 */  .float  2.938735877055719e-39
/* 025AA0 80159D10 BB83126F */  .float  -0.004000000189989805
/* 025AA4 80159D14 3F800000 */  .float  1.0
/* 025AA8 80159D18 BC1374BC */  .float  -0.008999999612569809
/* 025AAC 80159D1C BBE56042 */  .float  -0.007000000216066837
/* 025AB0 80159D20 3F800000 */  .float  1.0
/* 025AB4 80159D24 41201CAC */  .float  10.006999969482422
/* 025AB8 80159D28 412024DD */  .float  10.008999824523926
/* 025ABC 80159D2C 3F800000 */  .float  1.0
/* 025AC0 80159D30 41201062 */  .float  10.003999710083008
/* 025AC4 80159D34 00000000 */  .float  0.0
/* 025AC8 80159D38 BC1374BC */  .float  -0.008999999612569809
/* 025ACC 80159D3C 3F800000 */  .float  1.0
/* 025AD0 80159D40 BB83126F */  .float  -0.004000000189989805
/* 025AD4 80159D44 41201062 */  .float  10.003999710083008
/* 025AD8 80159D48 3F800000 */  .float  1.0
/* 025ADC 80159D4C 412024DD */  .float  10.008999824523926
/* 025AE0 80159D50 41201CAC */  .float  10.006999969482422
/* 025AE4 80159D54 3F800000 */  .float  1.0
/* 025AE8 80159D58 BBE56042 */  .float  -0.007000000216066837
/* 025AEC 80159D5C 00000000 */  .float  0.0
/* 025AF0 80159D60 80159B80 */  .float  -1.9843283085856578e-39
/* 025AF4 80159D64 80159B80 */  .float  -1.9843283085856578e-39
/* 025AF8 80159D68 000C0000 */  .float  1.1020259538958945e-39
/* 025AFC 80159D6C 00000000 */  .float  0.0
/* 025B00 80159D70 3F800000 */  .float  1.0
/* 025B04 80159D74 3F800000 */  .float  1.0
/* 025B08 80159D78 3F800000 */  .float  1.0
/* 025B0C 80159D7C 00000000 */  .float  0.0
/* 025B10 80159D80 00000000 */  .float  0.0
/* 025B14 80159D84 00000000 */  .float  0.0
/* 025B18 80159D88 00000000 */  .float  0.0
/* 025B1C 80159D8C 00000000 */  .float  0.0
/* 025B20 80159D90 00000000 */  .float  0.0
/* 025B24 80159D94 44ED8000 */  .float  1900.0
/* 025B28 80159D98 00000000 */  .float  0.0
/* 025B2C 80159D9C 00000000 */  .float  0.0
/* 025B30 80159DA0 04024A08 */  .float  1.531542004356447e-36
/* 025B34 80159DA4 00000000 */  .float  0.0
/* 025B38 80159DA8 BB83126F */  .float  -0.004000000189989805
/* 025B3C 80159DAC 3F800000 */  .float  1.0
/* 025B40 80159DB0 BC1374BC */  .float  -0.008999999612569809
/* 025B44 80159DB4 BBE56042 */  .float  -0.007000000216066837
/* 025B48 80159DB8 3F800000 */  .float  1.0
/* 025B4C 80159DBC 41201CAC */  .float  10.006999969482422
/* 025B50 80159DC0 412024DD */  .float  10.008999824523926
/* 025B54 80159DC4 3F800000 */  .float  1.0
/* 025B58 80159DC8 41201062 */  .float  10.003999710083008
/* 025B5C 80159DCC 00000000 */  .float  0.0
/* 025B60 80159DD0 BC1374BC */  .float  -0.008999999612569809
/* 025B64 80159DD4 3F800000 */  .float  1.0
/* 025B68 80159DD8 BB83126F */  .float  -0.004000000189989805
/* 025B6C 80159DDC 41201062 */  .float  10.003999710083008
/* 025B70 80159DE0 3F800000 */  .float  1.0
/* 025B74 80159DE4 412024DD */  .float  10.008999824523926
/* 025B78 80159DE8 41201CAC */  .float  10.006999969482422
/* 025B7C 80159DEC 3F800000 */  .float  1.0
/* 025B80 80159DF0 BBE56042 */  .float  -0.007000000216066837
/* 025B84 80159DF4 00000000 */  .float  0.0
/* 025B88 80159DF8 80159DA8 */  .float  -1.985101825337965e-39
/* 025B8C 80159DFC 80159DA8 */  .float  -1.985101825337965e-39
/* 025B90 80159E00 00020000 */  .float  1.8367099231598242e-40
/* 025B94 80159E04 00000000 */  .float  0.0
/* 025B98 80159E08 3F800000 */  .float  1.0
/* 025B9C 80159E0C 3F800000 */  .float  1.0
/* 025BA0 80159E10 3F800000 */  .float  1.0
/* 025BA4 80159E14 00000000 */  .float  0.0
/* 025BA8 80159E18 00000000 */  .float  0.0
/* 025BAC 80159E1C 00000000 */  .float  0.0
/* 025BB0 80159E20 00000000 */  .float  0.0
/* 025BB4 80159E24 00000000 */  .float  0.0
/* 025BB8 80159E28 00000000 */  .float  0.0
/* 025BBC 80159E2C 447A0000 */  .float  1000.0
/* 025BC0 80159E30 00000000 */  .float  0.0
/* 025BC4 80159E34 00000000 */  .float  0.0
/* 025BC8 80159E38 04024DF8 */  .float  1.531722805489508e-36
/* 025BCC 80159E3C 00000000 */  .float  0.0
/* 025BD0 80159E40 BB83126F */  .float  -0.004000000189989805
/* 025BD4 80159E44 3F800000 */  .float  1.0
/* 025BD8 80159E48 BC1374BC */  .float  -0.008999999612569809
/* 025BDC 80159E4C BBE56042 */  .float  -0.007000000216066837
/* 025BE0 80159E50 3F800000 */  .float  1.0
/* 025BE4 80159E54 41201CAC */  .float  10.006999969482422
/* 025BE8 80159E58 412024DD */  .float  10.008999824523926
/* 025BEC 80159E5C 3F800000 */  .float  1.0
/* 025BF0 80159E60 41201062 */  .float  10.003999710083008
/* 025BF4 80159E64 00000000 */  .float  0.0
/* 025BF8 80159E68 BC1374BC */  .float  -0.008999999612569809
/* 025BFC 80159E6C 3F800000 */  .float  1.0
/* 025C00 80159E70 BB83126F */  .float  -0.004000000189989805
/* 025C04 80159E74 41201062 */  .float  10.003999710083008
/* 025C08 80159E78 3F800000 */  .float  1.0
/* 025C0C 80159E7C 412024DD */  .float  10.008999824523926
/* 025C10 80159E80 41201CAC */  .float  10.006999969482422
/* 025C14 80159E84 3F800000 */  .float  1.0
/* 025C18 80159E88 BBE56042 */  .float  -0.007000000216066837
/* 025C1C 80159E8C 00000000 */  .float  0.0
/* 025C20 80159E90 80159E40 */  .float  -1.9853148227045424e-39
/* 025C24 80159E94 80159E40 */  .float  -1.9853148227045424e-39
/* 025C28 80159E98 00020000 */  .float  1.8367099231598242e-40
/* 025C2C 80159E9C 00000000 */  .float  0.0
/* 025C30 80159EA0 3F800000 */  .float  1.0
/* 025C34 80159EA4 3F800000 */  .float  1.0
/* 025C38 80159EA8 3F800000 */  .float  1.0
/* 025C3C 80159EAC 00000000 */  .float  0.0
/* 025C40 80159EB0 00000000 */  .float  0.0
/* 025C44 80159EB4 00000000 */  .float  0.0
/* 025C48 80159EB8 00000000 */  .float  0.0
/* 025C4C 80159EBC 00000000 */  .float  0.0
/* 025C50 80159EC0 00000000 */  .float  0.0
/* 025C54 80159EC4 447A0000 */  .float  1000.0
/* 025C58 80159EC8 00000000 */  .float  0.0
/* 025C5C 80159ECC 00000000 */  .float  0.0
/* 025C60 80159ED0 04024EE8 */  .float  1.531765853378332e-36
/* 025C64 80159ED4 00000000 */  .float  0.0
/* 025C68 80159ED8 BB83126F */  .float  -0.004000000189989805
/* 025C6C 80159EDC 3F800000 */  .float  1.0
/* 025C70 80159EE0 BC1374BC */  .float  -0.008999999612569809
/* 025C74 80159EE4 BBE56042 */  .float  -0.007000000216066837
/* 025C78 80159EE8 3F800000 */  .float  1.0
/* 025C7C 80159EEC 41201CAC */  .float  10.006999969482422
/* 025C80 80159EF0 412024DD */  .float  10.008999824523926
/* 025C84 80159EF4 3F800000 */  .float  1.0
/* 025C88 80159EF8 41201062 */  .float  10.003999710083008
/* 025C8C 80159EFC 00000000 */  .float  0.0
/* 025C90 80159F00 BC1374BC */  .float  -0.008999999612569809
/* 025C94 80159F04 3F800000 */  .float  1.0
/* 025C98 80159F08 BB83126F */  .float  -0.004000000189989805
/* 025C9C 80159F0C 41201062 */  .float  10.003999710083008
/* 025CA0 80159F10 3F800000 */  .float  1.0
/* 025CA4 80159F14 412024DD */  .float  10.008999824523926
/* 025CA8 80159F18 41201CAC */  .float  10.006999969482422
/* 025CAC 80159F1C 3F800000 */  .float  1.0
/* 025CB0 80159F20 BBE56042 */  .float  -0.007000000216066837
/* 025CB4 80159F24 00000000 */  .float  0.0
/* 025CB8 80159F28 80159ED8 */  .float  -1.9855278200711198e-39
/* 025CBC 80159F2C 80159ED8 */  .float  -1.9855278200711198e-39
/* 025CC0 80159F30 00020000 */  .float  1.8367099231598242e-40
/* 025CC4 80159F34 00000000 */  .float  0.0
/* 025CC8 80159F38 3F800000 */  .float  1.0
/* 025CCC 80159F3C 3F800000 */  .float  1.0
/* 025CD0 80159F40 3F800000 */  .float  1.0
/* 025CD4 80159F44 00000000 */  .float  0.0
/* 025CD8 80159F48 00000000 */  .float  0.0
/* 025CDC 80159F4C 00000000 */  .float  0.0
/* 025CE0 80159F50 00000000 */  .float  0.0
/* 025CE4 80159F54 00000000 */  .float  0.0
/* 025CE8 80159F58 00000000 */  .float  0.0
/* 025CEC 80159F5C 447A0000 */  .float  1000.0
/* 025CF0 80159F60 00000000 */  .float  0.0
/* 025CF4 80159F64 00000000 */  .float  0.0
/* 025CF8 80159F68 04024FD8 */  .float  1.531808901267156e-36
/* 025CFC 80159F6C 00000000 */  .float  0.0
/* 025D00 80159F70 BB83126F */  .float  -0.004000000189989805
/* 025D04 80159F74 3F800000 */  .float  1.0
/* 025D08 80159F78 BC1374BC */  .float  -0.008999999612569809
/* 025D0C 80159F7C BBE56042 */  .float  -0.007000000216066837
/* 025D10 80159F80 3F800000 */  .float  1.0
/* 025D14 80159F84 41201CAC */  .float  10.006999969482422
/* 025D18 80159F88 412024DD */  .float  10.008999824523926
/* 025D1C 80159F8C 3F800000 */  .float  1.0
/* 025D20 80159F90 41201062 */  .float  10.003999710083008
/* 025D24 80159F94 00000000 */  .float  0.0
/* 025D28 80159F98 BC1374BC */  .float  -0.008999999612569809
/* 025D2C 80159F9C 3F800000 */  .float  1.0
/* 025D30 80159FA0 BB83126F */  .float  -0.004000000189989805
/* 025D34 80159FA4 41201062 */  .float  10.003999710083008
/* 025D38 80159FA8 3F800000 */  .float  1.0
/* 025D3C 80159FAC 412024DD */  .float  10.008999824523926
/* 025D40 80159FB0 41201CAC */  .float  10.006999969482422
/* 025D44 80159FB4 3F800000 */  .float  1.0
/* 025D48 80159FB8 BBE56042 */  .float  -0.007000000216066837
/* 025D4C 80159FBC 00000000 */  .float  0.0
/* 025D50 80159FC0 80159F70 */  .float  -1.9857408174376972e-39
/* 025D54 80159FC4 80159F70 */  .float  -1.9857408174376972e-39
/* 025D58 80159FC8 00020000 */  .float  1.8367099231598242e-40
/* 025D5C 80159FCC 00000000 */  .float  0.0
/* 025D60 80159FD0 3F800000 */  .float  1.0
/* 025D64 80159FD4 3F800000 */  .float  1.0
/* 025D68 80159FD8 3F800000 */  .float  1.0
/* 025D6C 80159FDC 00000000 */  .float  0.0
/* 025D70 80159FE0 00000000 */  .float  0.0
/* 025D74 80159FE4 00000000 */  .float  0.0
/* 025D78 80159FE8 00000000 */  .float  0.0
/* 025D7C 80159FEC 00000000 */  .float  0.0
/* 025D80 80159FF0 00000000 */  .float  0.0
/* 025D84 80159FF4 447A0000 */  .float  1000.0
/* 025D88 80159FF8 00000000 */  .float  0.0
/* 025D8C 80159FFC 00000000 */  .float  0.0
/* 025D90 8015A000 040250C8 */  .float  1.53185194915598e-36
/* 025D94 8015A004 00000000 */  .float  0.0
/* 025D98 8015A008 BB83126F */  .float  -0.004000000189989805
/* 025D9C 8015A00C 3F800000 */  .float  1.0
/* 025DA0 8015A010 BC1374BC */  .float  -0.008999999612569809
/* 025DA4 8015A014 BBE56042 */  .float  -0.007000000216066837
/* 025DA8 8015A018 3F800000 */  .float  1.0
/* 025DAC 8015A01C 41201CAC */  .float  10.006999969482422
/* 025DB0 8015A020 412024DD */  .float  10.008999824523926
/* 025DB4 8015A024 3F800000 */  .float  1.0
/* 025DB8 8015A028 41201062 */  .float  10.003999710083008
/* 025DBC 8015A02C 00000000 */  .float  0.0
/* 025DC0 8015A030 BC1374BC */  .float  -0.008999999612569809
/* 025DC4 8015A034 3F800000 */  .float  1.0
/* 025DC8 8015A038 BB83126F */  .float  -0.004000000189989805
/* 025DCC 8015A03C 41201062 */  .float  10.003999710083008
/* 025DD0 8015A040 3F800000 */  .float  1.0
/* 025DD4 8015A044 412024DD */  .float  10.008999824523926
/* 025DD8 8015A048 41201CAC */  .float  10.006999969482422
/* 025DDC 8015A04C 3F800000 */  .float  1.0
/* 025DE0 8015A050 BBE56042 */  .float  -0.007000000216066837
/* 025DE4 8015A054 00000000 */  .float  0.0
/* 025DE8 8015A058 8015A008 */  .float  -1.9859538148042745e-39
/* 025DEC 8015A05C 8015A008 */  .float  -1.9859538148042745e-39
/* 025DF0 8015A060 00020000 */  .float  1.8367099231598242e-40
/* 025DF4 8015A064 00000000 */  .float  0.0
/* 025DF8 8015A068 3F800000 */  .float  1.0
/* 025DFC 8015A06C 3F800000 */  .float  1.0
/* 025E00 8015A070 3F800000 */  .float  1.0
/* 025E04 8015A074 00000000 */  .float  0.0
/* 025E08 8015A078 00000000 */  .float  0.0
/* 025E0C 8015A07C 00000000 */  .float  0.0
/* 025E10 8015A080 00000000 */  .float  0.0
/* 025E14 8015A084 00000000 */  .float  0.0
/* 025E18 8015A088 00000000 */  .float  0.0
/* 025E1C 8015A08C 44ED8000 */  .float  1900.0
/* 025E20 8015A090 00000000 */  .float  0.0
/* 025E24 8015A094 00000000 */  .float  0.0
/* 025E28 8015A098 04025808 */  .float  1.532184852829553e-36
/* 025E2C 8015A09C 00000000 */  .float  0.0
/* 025E30 8015A0A0 407FDF3B */  .float  3.997999906539917
/* 025E34 8015A0A4 40C51EB8 */  .float  6.159999847412109
/* 025E38 8015A0A8 41203958 */  .float  10.013999938964844
/* 025E3C 8015A0AC 40A00831 */  .float  5.000999927520752
/* 025E40 8015A0B0 40C51EB8 */  .float  6.159999847412109
/* 025E44 8015A0B4 41203958 */  .float  10.013999938964844
/* 025E48 8015A0B8 40A00000 */  .float  5.0
/* 025E4C 8015A0BC 40C51EB8 */  .float  6.159999847412109
/* 025E50 8015A0C0 BBC49BA6 */  .float  -0.006000000052154064
/* 025E54 8015A0C4 00200000 */  .float  2.938735877055719e-39
/* 025E58 8015A0C8 407FEF9E */  .float  3.999000072479248
/* 025E5C 8015A0CC 40C51EB8 */  .float  6.159999847412109
/* 025E60 8015A0D0 41203958 */  .float  10.013999938964844
/* 025E64 8015A0D4 40A01062 */  .float  5.001999855041504
/* 025E68 8015A0D8 40C51EB8 */  .float  6.159999847412109
/* 025E6C 8015A0DC BBC49BA6 */  .float  -0.006000000052154064
/* 025E70 8015A0E0 407FEF9E */  .float  3.999000072479248
/* 025E74 8015A0E4 40C51EB8 */  .float  6.159999847412109
/* 025E78 8015A0E8 BBC49BA6 */  .float  -0.006000000052154064
/* 025E7C 8015A0EC 00200000 */  .float  2.938735877055719e-39
/* 025E80 8015A0F0 BB83126F */  .float  -0.004000000189989805
/* 025E84 8015A0F4 40B24DD3 */  .float  5.572000026702881
/* 025E88 8015A0F8 40E07AE1 */  .float  7.014999866485596
/* 025E8C 8015A0FC 408049BA */  .float  4.008999824523926
/* 025E90 8015A100 40A23D71 */  .float  5.070000171661377
/* 025E94 8015A104 403FAE14 */  .float  2.994999885559082
/* 025E98 8015A108 BBE56042 */  .float  -0.007000000216066837
/* 025E9C 8015A10C 40B24DD3 */  .float  5.572000026702881
/* 025EA0 8015A110 403F8D50 */  .float  2.993000030517578
/* 025EA4 8015A114 00200000 */  .float  2.938735877055719e-39
/* 025EA8 8015A118 408051EC */  .float  4.010000228881836
/* 025EAC 8015A11C 40A245A2 */  .float  5.071000099182129
/* 025EB0 8015A120 3EFF7CEE */  .float  0.49900001287460327
/* 025EB4 8015A124 BC03126F */  .float  -0.00800000037997961
/* 025EB8 8015A128 40A23D71 */  .float  5.070000171661377
/* 025EBC 8015A12C 3EFE76C9 */  .float  0.4970000088214874
/* 025EC0 8015A130 BBC49BA6 */  .float  -0.006000000052154064
/* 025EC4 8015A134 40B25604 */  .float  5.572999954223633
/* 025EC8 8015A138 40408312 */  .float  3.007999897003174
/* 025ECC 8015A13C 00200000 */  .float  2.938735877055719e-39
/* 025ED0 8015A140 40803127 */  .float  4.00600004196167
/* 025ED4 8015A144 40A245A2 */  .float  5.071000099182129
/* 025ED8 8015A148 4118353F */  .float  9.512999534606934
/* 025EDC 8015A14C 40804189 */  .float  4.007999897003174
/* 025EE0 8015A150 40A23D71 */  .float  5.070000171661377
/* 025EE4 8015A154 40E00831 */  .float  7.000999927520752
/* 025EE8 8015A158 BC1374BC */  .float  -0.008999999612569809
/* 025EEC 8015A15C 40B25604 */  .float  5.572999954223633
/* 025EF0 8015A160 40E01893 */  .float  7.002999782562256
/* 025EF4 8015A164 00200000 */  .float  2.938735877055719e-39
/* 025EF8 8015A168 BBC49BA6 */  .float  -0.006000000052154064
/* 025EFC 8015A16C 40B25604 */  .float  5.572999954223633
/* 025F00 8015A170 40DFEF9E */  .float  6.998000144958496
/* 025F04 8015A174 BC03126F */  .float  -0.00800000037997961
/* 025F08 8015A178 40A245A2 */  .float  5.071000099182129
/* 025F0C 8015A17C 411AED91 */  .float  9.682999610900879
/* 025F10 8015A180 408051EC */  .float  4.010000228881836
/* 025F14 8015A184 40A245A2 */  .float  5.071000099182129
/* 025F18 8015A188 411820C5 */  .float  9.508000373840332
/* 025F1C 8015A18C 00200000 */  .float  2.938735877055719e-39
/* 025F20 8015A190 BC1374BC */  .float  -0.008999999612569809
/* 025F24 8015A194 40B25604 */  .float  5.572999954223633
/* 025F28 8015A198 40E051EC */  .float  7.010000228881836
/* 025F2C 8015A19C 40803958 */  .float  4.006999969482422
/* 025F30 8015A1A0 40A245A2 */  .float  5.071000099182129
/* 025F34 8015A1A4 40E06A7F */  .float  7.013000011444092
/* 025F38 8015A1A8 408020C5 */  .float  4.004000186920166
/* 025F3C 8015A1AC 40A245A2 */  .float  5.071000099182129
/* 025F40 8015A1B0 403F6C8B */  .float  2.990999937057495
/* 025F44 8015A1B4 00200000 */  .float  2.938735877055719e-39
/* 025F48 8015A1B8 BC1374BC */  .float  -0.008999999612569809
/* 025F4C 8015A1BC 40B25604 */  .float  5.572999954223633
/* 025F50 8015A1C0 40403127 */  .float  3.003000020980835
/* 025F54 8015A1C4 40804189 */  .float  4.007999897003174
/* 025F58 8015A1C8 40A23D71 */  .float  5.070000171661377
/* 025F5C 8015A1CC 404051EC */  .float  3.005000114440918
/* 025F60 8015A1D0 40803127 */  .float  4.00600004196167
/* 025F64 8015A1D4 40A245A2 */  .float  5.071000099182129
/* 025F68 8015A1D8 3EFD70A4 */  .float  0.4950000047683716
/* 025F6C 8015A1DC 00200000 */  .float  2.938735877055719e-39
/* 025F70 8015A1E0 BC23D70A */  .float  -0.009999999776482582
/* 025F74 8015A1E4 40A24DD3 */  .float  5.072000026702881
/* 025F78 8015A1E8 3F00C49C */  .float  0.503000020980835
/* 025F7C 8015A1EC 408051EC */  .float  4.010000228881836
/* 025F80 8015A1F0 40A25604 */  .float  5.072999954223633
/* 025F84 8015A1F4 3F010625 */  .float  0.5040000081062317
/* 025F88 8015A1F8 408049BA */  .float  4.008999824523926
/* 025F8C 8015A1FC 4092353F */  .float  4.568999767303467
/* 025F90 8015A200 BB449BA6 */  .float  -0.003000000026077032
/* 025F94 8015A204 00200000 */  .float  2.938735877055719e-39
/* 025F98 8015A208 BC1374BC */  .float  -0.008999999612569809
/* 025F9C 8015A20C 408D26E9 */  .float  4.410999774932861
/* 025FA0 8015A210 4122CCCD */  .float  10.175000190734863
/* 025FA4 8015A214 408051EC */  .float  4.010000228881836
/* 025FA8 8015A218 40A24DD3 */  .float  5.072000026702881
/* 025FAC 8015A21C 4118147B */  .float  9.505000114440918
/* 025FB0 8015A220 BC23D70A */  .float  -0.009999999776482582
/* 025FB4 8015A224 40A25604 */  .float  5.072999954223633
/* 025FB8 8015A228 411AD4FE */  .float  9.677000045776367
/* 025FBC 8015A22C 00200000 */  .float  2.938735877055719e-39
/* 025FC0 8015A230 BC1374BC */  .float  -0.008999999612569809
/* 025FC4 8015A234 40A25E35 */  .float  5.073999881744385
/* 025FC8 8015A238 3F0147AE */  .float  0.5049999952316284
/* 025FCC 8015A23C 408051EC */  .float  4.010000228881836
/* 025FD0 8015A240 409245A2 */  .float  4.571000099182129
/* 025FD4 8015A244 BA83126F */  .float  -0.0010000000474974513
/* 025FD8 8015A248 BC23D70A */  .float  -0.009999999776482582
/* 025FDC 8015A24C 40923D71 */  .float  4.570000171661377
/* 025FE0 8015A250 BB03126F */  .float  -0.0020000000949949026
/* 025FE4 8015A254 00200000 */  .float  2.938735877055719e-39
/* 025FE8 8015A258 BC23D70A */  .float  -0.009999999776482582
/* 025FEC 8015A25C 408D374C */  .float  4.413000106811523
/* 025FF0 8015A260 4122C49C */  .float  10.17300033569336
/* 025FF4 8015A264 408051EC */  .float  4.010000228881836
/* 025FF8 8015A268 408D2F1B */  .float  4.4120001792907715
/* 025FFC 8015A26C 41200419 */  .float  10.00100040435791
/* 026000 8015A270 408049BA */  .float  4.008999824523926
/* 026004 8015A274 40A26666 */  .float  5.074999809265137
/* 026008 8015A278 41180C4A */  .float  9.503000259399414
/* 02600C 8015A27C 00200000 */  .float  2.938735877055719e-39
/* 026010 8015A280 40803958 */  .float  4.006999969482422
/* 026014 8015A284 401926E9 */  .float  2.3929998874664307
/* 026018 8015A288 41201062 */  .float  10.003999710083008
/* 02601C 8015A28C 408049BA */  .float  4.008999824523926
/* 026020 8015A290 408D6873 */  .float  4.419000148773193
/* 026024 8015A294 41200000 */  .float  10.0
/* 026028 8015A298 BC23D70A */  .float  -0.009999999776482582
/* 02602C 8015A29C 408D4FDF */  .float  4.415999889373779
/* 026030 8015A2A0 4122C083 */  .float  10.17199993133545
/* 026034 8015A2A4 00200000 */  .float  2.938735877055719e-39
/* 026038 8015A2A8 BB83126F */  .float  -0.004000000189989805
/* 02603C 8015A2AC 3F800000 */  .float  1.0
/* 026040 8015A2B0 BC1374BC */  .float  -0.008999999612569809
/* 026044 8015A2B4 BBE56042 */  .float  -0.007000000216066837
/* 026048 8015A2B8 3F800000 */  .float  1.0
/* 02604C 8015A2BC 41201CAC */  .float  10.006999969482422
/* 026050 8015A2C0 412024DD */  .float  10.008999824523926
/* 026054 8015A2C4 3F800000 */  .float  1.0
/* 026058 8015A2C8 41201062 */  .float  10.003999710083008
/* 02605C 8015A2CC 00000000 */  .float  0.0
/* 026060 8015A2D0 BC1374BC */  .float  -0.008999999612569809
/* 026064 8015A2D4 3F800000 */  .float  1.0
/* 026068 8015A2D8 BB83126F */  .float  -0.004000000189989805
/* 02606C 8015A2DC 41201062 */  .float  10.003999710083008
/* 026070 8015A2E0 3F800000 */  .float  1.0
/* 026074 8015A2E4 412024DD */  .float  10.008999824523926
/* 026078 8015A2E8 41201CAC */  .float  10.006999969482422
/* 02607C 8015A2EC 3F800000 */  .float  1.0
/* 026080 8015A2F0 BBE56042 */  .float  -0.007000000216066837
/* 026084 8015A2F4 00000000 */  .float  0.0
/* 026088 8015A2F8 8015A0A0 */  .float  -1.986166812170852e-39
/* 02608C 8015A2FC 8015A0A0 */  .float  -1.986166812170852e-39
/* 026090 8015A300 000F0000 */  .float  1.3775324423698682e-39
/* 026094 8015A304 00000000 */  .float  0.0
/* 026098 8015A308 3F800000 */  .float  1.0
/* 02609C 8015A30C 3F800000 */  .float  1.0
/* 0260A0 8015A310 3F800000 */  .float  1.0
/* 0260A4 8015A314 00000000 */  .float  0.0
/* 0260A8 8015A318 00000000 */  .float  0.0
/* 0260AC 8015A31C 00000000 */  .float  0.0
/* 0260B0 8015A320 00000000 */  .float  0.0
/* 0260B4 8015A324 00000000 */  .float  0.0
/* 0260B8 8015A328 00000000 */  .float  0.0
/* 0260BC 8015A32C 447E4CCD */  .float  1017.2000122070312
/* 0260C0 8015A330 00000000 */  .float  0.0
/* 0260C4 8015A334 00000000 */  .float  0.0
/* 0260C8 8015A338 04025E68 */  .float  1.5324775784735564e-36
/* 0260CC 8015A33C 00000000 */  .float  0.0
/* 0260D0 8015A340 BB83126F */  .float  -0.004000000189989805
/* 0260D4 8015A344 3F800000 */  .float  1.0
/* 0260D8 8015A348 BC1374BC */  .float  -0.008999999612569809
/* 0260DC 8015A34C BBE56042 */  .float  -0.007000000216066837
/* 0260E0 8015A350 3F800000 */  .float  1.0
/* 0260E4 8015A354 41201CAC */  .float  10.006999969482422
/* 0260E8 8015A358 412024DD */  .float  10.008999824523926
/* 0260EC 8015A35C 3F800000 */  .float  1.0
/* 0260F0 8015A360 41201062 */  .float  10.003999710083008
/* 0260F4 8015A364 00000000 */  .float  0.0
/* 0260F8 8015A368 BC1374BC */  .float  -0.008999999612569809
/* 0260FC 8015A36C 3F800000 */  .float  1.0
/* 026100 8015A370 BB83126F */  .float  -0.004000000189989805
/* 026104 8015A374 41201062 */  .float  10.003999710083008
/* 026108 8015A378 3F800000 */  .float  1.0
/* 02610C 8015A37C 412024DD */  .float  10.008999824523926
/* 026110 8015A380 41201CAC */  .float  10.006999969482422
/* 026114 8015A384 3F800000 */  .float  1.0
/* 026118 8015A388 BBE56042 */  .float  -0.007000000216066837
/* 02611C 8015A38C 00000000 */  .float  0.0
/* 026120 8015A390 8015A340 */  .float  -1.9871084847388782e-39
/* 026124 8015A394 8015A340 */  .float  -1.9871084847388782e-39
/* 026128 8015A398 00020000 */  .float  1.8367099231598242e-40
/* 02612C 8015A39C 00000000 */  .float  0.0
/* 026130 8015A3A0 3F800000 */  .float  1.0
/* 026134 8015A3A4 3F800000 */  .float  1.0
/* 026138 8015A3A8 3F800000 */  .float  1.0
/* 02613C 8015A3AC 00000000 */  .float  0.0
/* 026140 8015A3B0 00000000 */  .float  0.0
/* 026144 8015A3B4 00000000 */  .float  0.0
/* 026148 8015A3B8 00000000 */  .float  0.0
/* 02614C 8015A3BC 00000000 */  .float  0.0
/* 026150 8015A3C0 00000000 */  .float  0.0
/* 026154 8015A3C4 447A0000 */  .float  1000.0
/* 026158 8015A3C8 00000000 */  .float  0.0
/* 02615C 8015A3CC 00000000 */  .float  0.0
/* 026160 8015A3D0 040261E0 */  .float  1.5326368556622055e-36
/* 026164 8015A3D4 00000000 */  .float  0.0
/* 026168 8015A3D8 BB83126F */  .float  -0.004000000189989805
/* 02616C 8015A3DC 3F800000 */  .float  1.0
/* 026170 8015A3E0 BC1374BC */  .float  -0.008999999612569809
/* 026174 8015A3E4 BBE56042 */  .float  -0.007000000216066837
/* 026178 8015A3E8 3F800000 */  .float  1.0
/* 02617C 8015A3EC 41201CAC */  .float  10.006999969482422
/* 026180 8015A3F0 412024DD */  .float  10.008999824523926
/* 026184 8015A3F4 3F800000 */  .float  1.0
/* 026188 8015A3F8 41201062 */  .float  10.003999710083008
/* 02618C 8015A3FC 00000000 */  .float  0.0
/* 026190 8015A400 BC1374BC */  .float  -0.008999999612569809
/* 026194 8015A404 3F800000 */  .float  1.0
/* 026198 8015A408 BB83126F */  .float  -0.004000000189989805
/* 02619C 8015A40C 41201062 */  .float  10.003999710083008
/* 0261A0 8015A410 3F800000 */  .float  1.0
/* 0261A4 8015A414 412024DD */  .float  10.008999824523926
/* 0261A8 8015A418 41201CAC */  .float  10.006999969482422
/* 0261AC 8015A41C 3F800000 */  .float  1.0
/* 0261B0 8015A420 BBE56042 */  .float  -0.007000000216066837
/* 0261B4 8015A424 00000000 */  .float  0.0
/* 0261B8 8015A428 8015A3D8 */  .float  -1.9873214821054556e-39
/* 0261BC 8015A42C 8015A3D8 */  .float  -1.9873214821054556e-39
/* 0261C0 8015A430 00020000 */  .float  1.8367099231598242e-40
/* 0261C4 8015A434 00000000 */  .float  0.0
/* 0261C8 8015A438 3F800000 */  .float  1.0
/* 0261CC 8015A43C 3F800000 */  .float  1.0
/* 0261D0 8015A440 3F800000 */  .float  1.0
/* 0261D4 8015A444 00000000 */  .float  0.0
/* 0261D8 8015A448 00000000 */  .float  0.0
/* 0261DC 8015A44C 00000000 */  .float  0.0
/* 0261E0 8015A450 00000000 */  .float  0.0
/* 0261E4 8015A454 00000000 */  .float  0.0
/* 0261E8 8015A458 00000000 */  .float  0.0
/* 0261EC 8015A45C 447A0000 */  .float  1000.0
/* 0261F0 8015A460 00000000 */  .float  0.0
/* 0261F4 8015A464 00000000 */  .float  0.0
/* 0261F8 8015A468 040262D0 */  .float  1.5326799035510295e-36
/* 0261FC 8015A46C 00000000 */  .float  0.0
/* 026200 8015A470 BB83126F */  .float  -0.004000000189989805
/* 026204 8015A474 3F800000 */  .float  1.0
/* 026208 8015A478 BC1374BC */  .float  -0.008999999612569809
/* 02620C 8015A47C BBE56042 */  .float  -0.007000000216066837
/* 026210 8015A480 3F800000 */  .float  1.0
/* 026214 8015A484 41201CAC */  .float  10.006999969482422
/* 026218 8015A488 412024DD */  .float  10.008999824523926
/* 02621C 8015A48C 3F800000 */  .float  1.0
/* 026220 8015A490 41201062 */  .float  10.003999710083008
/* 026224 8015A494 00000000 */  .float  0.0
/* 026228 8015A498 BC1374BC */  .float  -0.008999999612569809
/* 02622C 8015A49C 3F800000 */  .float  1.0
/* 026230 8015A4A0 BB83126F */  .float  -0.004000000189989805
/* 026234 8015A4A4 41201062 */  .float  10.003999710083008
/* 026238 8015A4A8 3F800000 */  .float  1.0
/* 02623C 8015A4AC 412024DD */  .float  10.008999824523926
/* 026240 8015A4B0 41201CAC */  .float  10.006999969482422
/* 026244 8015A4B4 3F800000 */  .float  1.0
/* 026248 8015A4B8 BBE56042 */  .float  -0.007000000216066837
/* 02624C 8015A4BC 00000000 */  .float  0.0
/* 026250 8015A4C0 8015A470 */  .float  -1.987534479472033e-39
/* 026254 8015A4C4 8015A470 */  .float  -1.987534479472033e-39
/* 026258 8015A4C8 00020000 */  .float  1.8367099231598242e-40
/* 02625C 8015A4CC 00000000 */  .float  0.0
/* 026260 8015A4D0 3F800000 */  .float  1.0
/* 026264 8015A4D4 3F800000 */  .float  1.0
/* 026268 8015A4D8 3F800000 */  .float  1.0
/* 02626C 8015A4DC 00000000 */  .float  0.0
/* 026270 8015A4E0 00000000 */  .float  0.0
/* 026274 8015A4E4 00000000 */  .float  0.0
/* 026278 8015A4E8 00000000 */  .float  0.0
/* 02627C 8015A4EC 00000000 */  .float  0.0
/* 026280 8015A4F0 00000000 */  .float  0.0
/* 026284 8015A4F4 447A0000 */  .float  1000.0
/* 026288 8015A4F8 00000000 */  .float  0.0
/* 02628C 8015A4FC 00000000 */  .float  0.0
/* 026290 8015A500 040263C0 */  .float  1.5327229514398536e-36
/* 026294 8015A504 00000000 */  .float  0.0
/* 026298 8015A508 3F800000 */  .float  1.0
/* 02629C 8015A50C 3F800000 */  .float  1.0
/* 0262A0 8015A510 403DD2F2 */  .float  2.9660000801086426
/* 0262A4 8015A514 403DD2F2 */  .float  2.9660000801086426
/* 0262A8 8015A518 403DD2F2 */  .float  2.9660000801086426
/* 0262AC 8015A51C 403DD2F2 */  .float  2.9660000801086426
/* 0262B0 8015A520 403DD2F2 */  .float  2.9660000801086426
/* 0262B4 8015A524 403DD2F2 */  .float  2.9660000801086426
/* 0262B8 8015A528 403DD2F2 */  .float  2.9660000801086426
/* 0262BC 8015A52C 403DD2F2 */  .float  2.9660000801086426
/* 0262C0 8015A530 403DD2F2 */  .float  2.9660000801086426
/* 0262C4 8015A534 3F800000 */  .float  1.0
/* 0262C8 8015A538 3F800000 */  .float  1.0
/* 0262CC 8015A53C 3F800000 */  .float  1.0
/* 0262D0 8015A540 40441893 */  .float  3.063999891281128
/* 0262D4 8015A544 40443958 */  .float  3.065999984741211
/* 0262D8 8015A548 40443958 */  .float  3.065999984741211
/* 0262DC 8015A54C 40443958 */  .float  3.065999984741211
/* 0262E0 8015A550 404428F6 */  .float  3.065000057220459
/* 0262E4 8015A554 4043E76D */  .float  3.061000108718872
/* 0262E8 8015A558 40423D71 */  .float  3.0350000858306885
/* 0262EC 8015A55C 40400000 */  .float  3.0
/* 0262F0 8015A560 3F800000 */  .float  1.0
/* 0262F4 8015A564 3F800000 */  .float  1.0
/* 0262F8 8015A568 4046B852 */  .float  3.1050000190734863
/* 0262FC 8015A56C 4068B439 */  .float  3.635999917984009
/* 026300 8015A570 4069999A */  .float  3.6500000953674316
/* 026304 8015A574 406A1CAC */  .float  3.6579999923706055
/* 026308 8015A578 4069A9FC */  .float  3.6510000228881836
/* 02630C 8015A57C 4068C49C */  .float  3.63700008392334
/* 026310 8015A580 404B74BC */  .float  3.178999900817871
/* 026314 8015A584 4043A5E3 */  .float  3.056999921798706
/* 026318 8015A588 40422D0E */  .float  3.0339999198913574
/* 02631C 8015A58C 3F800000 */  .float  1.0
/* 026320 8015A590 3F800000 */  .float  1.0
/* 026324 8015A594 405D4FDF */  .float  3.4579999446868896
/* 026328 8015A598 407947AE */  .float  3.8949999809265137
/* 02632C 8015A59C 409F7CEE */  .float  4.984000205993652
/* 026330 8015A5A0 409F7CEE */  .float  4.984000205993652
/* 026334 8015A5A4 409F7CEE */  .float  4.984000205993652
/* 026338 8015A5A8 407947AE */  .float  3.8949999809265137
/* 02633C 8015A5AC 406126E9 */  .float  3.5179998874664307
/* 026340 8015A5B0 4045D2F2 */  .float  3.0910000801086426
/* 026344 8015A5B4 40445A1D */  .float  3.068000078201294
/* 026348 8015A5B8 3F800000 */  .float  1.0
/* 02634C 8015A5BC 3F800000 */  .float  1.0
/* 026350 8015A5C0 3F800000 */  .float  1.0
/* 026354 8015A5C4 406072B0 */  .float  3.506999969482422
/* 026358 8015A5C8 4061999A */  .float  3.5250000953674316
/* 02635C 8015A5CC 40620C4A */  .float  3.5320000648498535
/* 026360 8015A5D0 4061999A */  .float  3.5250000953674316
/* 026364 8015A5D4 40608312 */  .float  3.507999897003174
/* 026368 8015A5D8 3F800000 */  .float  1.0
/* 02636C 8015A5DC 3F800000 */  .float  1.0
/* 026370 8015A5E0 3F800000 */  .float  1.0
/* 026374 8015A5E4 3F800000 */  .float  1.0
/* 026378 8015A5E8 3F800000 */  .float  1.0
/* 02637C 8015A5EC 3F800000 */  .float  1.0
/* 026380 8015A5F0 3F800000 */  .float  1.0
/* 026384 8015A5F4 3F800000 */  .float  1.0
/* 026388 8015A5F8 3F800000 */  .float  1.0
/* 02638C 8015A5FC 3F800000 */  .float  1.0
/* 026390 8015A600 3F800000 */  .float  1.0
/* 026394 8015A604 3F800000 */  .float  1.0
/* 026398 8015A608 3F800000 */  .float  1.0
/* 02639C 8015A60C 3F800000 */  .float  1.0
/* 0263A0 8015A610 3F800000 */  .float  1.0
/* 0263A4 8015A614 3F800000 */  .float  1.0
/* 0263A8 8015A618 3F800000 */  .float  1.0
/* 0263AC 8015A61C 3F800000 */  .float  1.0
/* 0263B0 8015A620 3F800000 */  .float  1.0
/* 0263B4 8015A624 3F800000 */  .float  1.0
/* 0263B8 8015A628 3F800000 */  .float  1.0
/* 0263BC 8015A62C 3F800000 */  .float  1.0
/* 0263C0 8015A630 3F800000 */  .float  1.0
/* 0263C4 8015A634 3F800000 */  .float  1.0
/* 0263C8 8015A638 3F800000 */  .float  1.0
/* 0263CC 8015A63C 3F800000 */  .float  1.0
/* 0263D0 8015A640 3F800000 */  .float  1.0
/* 0263D4 8015A644 3F800000 */  .float  1.0
/* 0263D8 8015A648 3F800000 */  .float  1.0
/* 0263DC 8015A64C 3F800000 */  .float  1.0
/* 0263E0 8015A650 3F800000 */  .float  1.0
/* 0263E4 8015A654 3F800000 */  .float  1.0
/* 0263E8 8015A658 3F800000 */  .float  1.0
/* 0263EC 8015A65C 3F800000 */  .float  1.0
/* 0263F0 8015A660 3F800000 */  .float  1.0
/* 0263F4 8015A664 3F800000 */  .float  1.0
/* 0263F8 8015A668 3F800000 */  .float  1.0
/* 0263FC 8015A66C 3F800000 */  .float  1.0
/* 026400 8015A670 3F800000 */  .float  1.0
/* 026404 8015A674 3F800000 */  .float  1.0
/* 026408 8015A678 3F800000 */  .float  1.0
/* 02640C 8015A67C 3F800000 */  .float  1.0
/* 026410 8015A680 3F800000 */  .float  1.0
/* 026414 8015A684 3F800000 */  .float  1.0
/* 026418 8015A688 3F800000 */  .float  1.0
/* 02641C 8015A68C 3F800000 */  .float  1.0
/* 026420 8015A690 3F800000 */  .float  1.0
/* 026424 8015A694 3F800000 */  .float  1.0
/* 026428 8015A698 3F800000 */  .float  1.0
/* 02642C 8015A69C 3F800000 */  .float  1.0
/* 026430 8015A6A0 3F800000 */  .float  1.0
/* 026434 8015A6A4 3F800000 */  .float  1.0
/* 026438 8015A6A8 3F800000 */  .float  1.0
/* 02643C 8015A6AC 3F800000 */  .float  1.0
/* 026440 8015A6B0 3F800000 */  .float  1.0
/* 026444 8015A6B4 3F800000 */  .float  1.0
/* 026448 8015A6B8 3F800000 */  .float  1.0
/* 02644C 8015A6BC 3F800000 */  .float  1.0
/* 026450 8015A6C0 3F800000 */  .float  1.0
/* 026454 8015A6C4 3F800000 */  .float  1.0
/* 026458 8015A6C8 3F800000 */  .float  1.0
/* 02645C 8015A6CC 3F800000 */  .float  1.0
/* 026460 8015A6D0 3F800000 */  .float  1.0
/* 026464 8015A6D4 3F800000 */  .float  1.0
/* 026468 8015A6D8 3F800000 */  .float  1.0
/* 02646C 8015A6DC 3F800000 */  .float  1.0
/* 026470 8015A6E0 3F800000 */  .float  1.0
/* 026474 8015A6E4 3F800000 */  .float  1.0
/* 026478 8015A6E8 3F800000 */  .float  1.0
/* 02647C 8015A6EC 00000000 */  .float  0.0
/* 026480 8015A6F0 00200020 */  .float  2.938780718606577e-39
/* 026484 8015A6F4 00200020 */  .float  2.938780718606577e-39
/* 026488 8015A6F8 00200020 */  .float  2.938780718606577e-39
/* 02648C 8015A6FC 00200020 */  .float  2.938780718606577e-39
/* 026490 8015A700 00200000 */  .float  2.938735877055719e-39
/* 026494 8015A704 00000000 */  .float  0.0
/* 026498 8015A708 00200020 */  .float  2.938780718606577e-39
/* 02649C 8015A70C 00200020 */  .float  2.938780718606577e-39
/* 0264A0 8015A710 00200020 */  .float  2.938780718606577e-39
/* 0264A4 8015A714 00200020 */  .float  2.938780718606577e-39
/* 0264A8 8015A718 00000000 */  .float  0.0
/* 0264AC 8015A71C 00200020 */  .float  2.938780718606577e-39
/* 0264B0 8015A720 00200020 */  .float  2.938780718606577e-39
/* 0264B4 8015A724 00200020 */  .float  2.938780718606577e-39
/* 0264B8 8015A728 00200020 */  .float  2.938780718606577e-39
/* 0264BC 8015A72C 00200000 */  .float  2.938735877055719e-39
/* 0264C0 8015A730 00000020 */  .float  4.484155085839415e-44
/* 0264C4 8015A734 00200030 */  .float  2.9388031393820064e-39
/* 0264C8 8015A738 00300030 */  .float  4.408171077909866e-39
/* 0264CC 8015A73C 00200020 */  .float  2.938780718606577e-39
/* 0264D0 8015A740 00200020 */  .float  2.938780718606577e-39
/* 0264D4 8015A744 00000000 */  .float  0.0
/* 0264D8 8015A748 00000030 */  .float  6.726232628759122e-44
/* 0264DC 8015A74C 00300030 */  .float  4.408171077909866e-39
/* 0264E0 8015A750 00300030 */  .float  4.408171077909866e-39
/* 0264E4 8015A754 00000000 */  .float  0.0
/* 0264E8 8015A758 00000000 */  .float  0.0
/* 0264EC 8015A75C 00000000 */  .float  0.0
/* 0264F0 8015A760 00000000 */  .float  0.0
/* 0264F4 8015A764 00000000 */  .float  0.0
/* 0264F8 8015A768 00000000 */  .float  0.0
/* 0264FC 8015A76C 00000000 */  .float  0.0
/* 026500 8015A770 00000000 */  .float  0.0
/* 026504 8015A774 00000000 */  .float  0.0
/* 026508 8015A778 00000000 */  .float  0.0
/* 02650C 8015A77C 00000000 */  .float  0.0
/* 026510 8015A780 00000000 */  .float  0.0
/* 026514 8015A784 00000000 */  .float  0.0
/* 026518 8015A788 00000000 */  .float  0.0
/* 02651C 8015A78C 00000000 */  .float  0.0
/* 026520 8015A790 00000000 */  .float  0.0
/* 026524 8015A794 00000000 */  .float  0.0
/* 026528 8015A798 00000000 */  .float  0.0
/* 02652C 8015A79C 00000000 */  .float  0.0
/* 026530 8015A7A0 00000000 */  .float  0.0
/* 026534 8015A7A4 00000000 */  .float  0.0
/* 026538 8015A7A8 00000000 */  .float  0.0
/* 02653C 8015A7AC 00000000 */  .float  0.0
/* 026540 8015A7B0 00000000 */  .float  0.0
/* 026544 8015A7B4 00000000 */  .float  0.0
/* 026548 8015A7B8 00000000 */  .float  0.0
/* 02654C 8015A7BC 00000000 */  .float  0.0
/* 026550 8015A7C0 00000000 */  .float  0.0
/* 026554 8015A7C4 00000000 */  .float  0.0
/* 026558 8015A7C8 00000000 */  .float  0.0
/* 02655C 8015A7CC 00000000 */  .float  0.0
/* 026560 8015A7D0 00000000 */  .float  0.0
/* 026564 8015A7D4 00000000 */  .float  0.0
/* 026568 8015A7D8 00000000 */  .float  0.0
/* 02656C 8015A7DC 00000000 */  .float  0.0
/* 026570 8015A7E0 8015A508 */  .float  -1.9877474768386103e-39
/* 026574 8015A7E4 8015A6EC */  .float  -1.9884257052953435e-39
/* 026578 8015A7E8 000B000B */  .float  1.0102058720210109e-39
/* 02657C 8015A7EC 00000002 */  .float  2.802596928649634e-45
/* 026580 8015A7F0 3F800000 */  .float  1.0
/* 026584 8015A7F4 3F800000 */  .float  1.0
/* 026588 8015A7F8 3F800000 */  .float  1.0
/* 02658C 8015A7FC 00000000 */  .float  0.0
/* 026590 8015A800 00000000 */  .float  0.0
/* 026594 8015A804 00000000 */  .float  0.0
/* 026598 8015A808 00000000 */  .float  0.0
/* 02659C 8015A80C 00000000 */  .float  0.0
/* 0265A0 8015A810 00000000 */  .float  0.0
/* 0265A4 8015A814 447A0000 */  .float  1000.0
/* 0265A8 8015A818 00000000 */  .float  0.0
/* 0265AC 8015A81C 00000000 */  .float  0.0
/* 0265B0 8015A820 04026E60 */  .float  1.533210827513193e-36
/* 0265B4 8015A824 00000000 */  .float  0.0
/* 0265B8 8015A828 BB83126F */  .float  -0.004000000189989805
/* 0265BC 8015A82C 3F800000 */  .float  1.0
/* 0265C0 8015A830 BC1374BC */  .float  -0.008999999612569809
/* 0265C4 8015A834 BBE56042 */  .float  -0.007000000216066837
/* 0265C8 8015A838 3F800000 */  .float  1.0
/* 0265CC 8015A83C 41201CAC */  .float  10.006999969482422
/* 0265D0 8015A840 412024DD */  .float  10.008999824523926
/* 0265D4 8015A844 3F800000 */  .float  1.0
/* 0265D8 8015A848 41201062 */  .float  10.003999710083008
/* 0265DC 8015A84C 00000000 */  .float  0.0
/* 0265E0 8015A850 BC1374BC */  .float  -0.008999999612569809
/* 0265E4 8015A854 3F800000 */  .float  1.0
/* 0265E8 8015A858 BB83126F */  .float  -0.004000000189989805
/* 0265EC 8015A85C 41201062 */  .float  10.003999710083008
/* 0265F0 8015A860 3F800000 */  .float  1.0
/* 0265F4 8015A864 412024DD */  .float  10.008999824523926
/* 0265F8 8015A868 41201CAC */  .float  10.006999969482422
/* 0265FC 8015A86C 3F800000 */  .float  1.0
/* 026600 8015A870 BBE56042 */  .float  -0.007000000216066837
/* 026604 8015A874 00000000 */  .float  0.0
/* 026608 8015A878 8015A828 */  .float  -1.9888685156100702e-39
/* 02660C 8015A87C 8015A828 */  .float  -1.9888685156100702e-39
/* 026610 8015A880 00020000 */  .float  1.8367099231598242e-40
/* 026614 8015A884 00000000 */  .float  0.0
/* 026618 8015A888 3F800000 */  .float  1.0
/* 02661C 8015A88C 3F800000 */  .float  1.0
/* 026620 8015A890 3F800000 */  .float  1.0
/* 026624 8015A894 00000000 */  .float  0.0
/* 026628 8015A898 00000000 */  .float  0.0
/* 02662C 8015A89C 00000000 */  .float  0.0
/* 026630 8015A8A0 00000000 */  .float  0.0
/* 026634 8015A8A4 00000000 */  .float  0.0
/* 026638 8015A8A8 00000000 */  .float  0.0
/* 02663C 8015A8AC 44ED8000 */  .float  1900.0
/* 026640 8015A8B0 8015A8C0 */  .float  -1.9890815129766475e-39
/* 026644 8015A8B4 00000000 */  .float  0.0
/* 026648 8015A8B8 040274A8 */  .float  1.533499248368314e-36
/* 02664C 8015A8BC 00000000 */  .float  0.0
/* 026650 8015A8C0 3F800000 */  .float  1.0
/* 026654 8015A8C4 3F800000 */  .float  1.0
/* 026658 8015A8C8 3F800000 */  .float  1.0
/* 02665C 8015A8CC 42B40000 */  .float  90.0
/* 026660 8015A8D0 00000000 */  .float  0.0
/* 026664 8015A8D4 00000000 */  .float  0.0
/* 026668 8015A8D8 43CE3461 */  .float  412.4092102050781
/* 02666C 8015A8DC 4482947E */  .float  1044.640380859375
/* 026670 8015A8E0 446D6A14 */  .float  949.657470703125
/* 026674 8015A8E4 00000000 */  .float  0.0
/* 026678 8015A8E8 00000000 */  .float  0.0
/* 02667C 8015A8EC 8015A8F8 */  .float  -1.9891599856906497e-39
/* 026680 8015A8F0 00000000 */  .float  0.0
/* 026684 8015A8F4 007E0000 */  .float  1.1571272515906893e-38
/* 026688 8015A8F8 3F800000 */  .float  1.0
/* 02668C 8015A8FC 3F800000 */  .float  1.0
/* 026690 8015A900 3F800000 */  .float  1.0
/* 026694 8015A904 00000000 */  .float  0.0
/* 026698 8015A908 00000000 */  .float  0.0
/* 02669C 8015A90C 00000000 */  .float  0.0
/* 0266A0 8015A910 00000000 */  .float  0.0
/* 0266A4 8015A914 B951B717 */  .float  -0.00019999999494757503
/* 0266A8 8015A918 B951B717 */  .float  -0.00019999999494757503
/* 0266AC 8015A91C 427E0000 */  .float  63.5
/* 0266B0 8015A920 00000000 */  .float  0.0
/* 0266B4 8015A924 00000000 */  .float  0.0
/* 0266B8 8015A928 040278D0 */  .float  1.5336900940087674e-36
/* 0266BC 8015A92C 00820000 */  .float  1.1938614500538858e-38
/* 0266C0 8015A930 BB83126F */  .float  -0.004000000189989805
/* 0266C4 8015A934 3F800000 */  .float  1.0
/* 0266C8 8015A938 BC1374BC */  .float  -0.008999999612569809
/* 0266CC 8015A93C BBE56042 */  .float  -0.007000000216066837
/* 0266D0 8015A940 3F800000 */  .float  1.0
/* 0266D4 8015A944 41201CAC */  .float  10.006999969482422
/* 0266D8 8015A948 412024DD */  .float  10.008999824523926
/* 0266DC 8015A94C 3F800000 */  .float  1.0
/* 0266E0 8015A950 41201062 */  .float  10.003999710083008
/* 0266E4 8015A954 00000000 */  .float  0.0
/* 0266E8 8015A958 BC1374BC */  .float  -0.008999999612569809
/* 0266EC 8015A95C 3F800000 */  .float  1.0
/* 0266F0 8015A960 BB83126F */  .float  -0.004000000189989805
/* 0266F4 8015A964 41201062 */  .float  10.003999710083008
/* 0266F8 8015A968 3F800000 */  .float  1.0
/* 0266FC 8015A96C 412024DD */  .float  10.008999824523926
/* 026700 8015A970 41201CAC */  .float  10.006999969482422
/* 026704 8015A974 3F800000 */  .float  1.0
/* 026708 8015A978 BBE56042 */  .float  -0.007000000216066837
/* 02670C 8015A97C 00000000 */  .float  0.0
/* 026710 8015A980 8015A930 */  .float  -1.989238458404652e-39
/* 026714 8015A984 8015A930 */  .float  -1.989238458404652e-39
/* 026718 8015A988 00020000 */  .float  1.8367099231598242e-40
/* 02671C 8015A98C 00000000 */  .float  0.0
/* 026720 8015A990 3F800000 */  .float  1.0
/* 026724 8015A994 3F800000 */  .float  1.0
/* 026728 8015A998 3F800000 */  .float  1.0
/* 02672C 8015A99C 00000000 */  .float  0.0
/* 026730 8015A9A0 00000000 */  .float  0.0
/* 026734 8015A9A4 00000000 */  .float  0.0
/* 026738 8015A9A8 00000000 */  .float  0.0
/* 02673C 8015A9AC 00000000 */  .float  0.0
/* 026740 8015A9B0 00000000 */  .float  0.0
/* 026744 8015A9B4 447A0000 */  .float  1000.0
/* 026748 8015A9B8 00000000 */  .float  0.0
/* 02674C 8015A9BC 00000000 */  .float  0.0
/* 026750 8015A9C0 04027998 */  .float  1.533725967249454e-36
/* 026754 8015A9C4 00000000 */  .float  0.0
/* 026758 8015A9C8 BB83126F */  .float  -0.004000000189989805
/* 02675C 8015A9CC 3F800000 */  .float  1.0
/* 026760 8015A9D0 BC1374BC */  .float  -0.008999999612569809
/* 026764 8015A9D4 BBE56042 */  .float  -0.007000000216066837
/* 026768 8015A9D8 3F800000 */  .float  1.0
/* 02676C 8015A9DC 41201CAC */  .float  10.006999969482422
/* 026770 8015A9E0 412024DD */  .float  10.008999824523926
/* 026774 8015A9E4 3F800000 */  .float  1.0
/* 026778 8015A9E8 41201062 */  .float  10.003999710083008
/* 02677C 8015A9EC 00000000 */  .float  0.0
/* 026780 8015A9F0 BC1374BC */  .float  -0.008999999612569809
/* 026784 8015A9F4 3F800000 */  .float  1.0
/* 026788 8015A9F8 BB83126F */  .float  -0.004000000189989805
/* 02678C 8015A9FC 41201062 */  .float  10.003999710083008
/* 026790 8015AA00 3F800000 */  .float  1.0
/* 026794 8015AA04 412024DD */  .float  10.008999824523926
/* 026798 8015AA08 41201CAC */  .float  10.006999969482422
/* 02679C 8015AA0C 3F800000 */  .float  1.0
/* 0267A0 8015AA10 BBE56042 */  .float  -0.007000000216066837
/* 0267A4 8015AA14 00000000 */  .float  0.0
/* 0267A8 8015AA18 8015A9C8 */  .float  -1.9894514557712293e-39
/* 0267AC 8015AA1C 8015A9C8 */  .float  -1.9894514557712293e-39
/* 0267B0 8015AA20 00020000 */  .float  1.8367099231598242e-40
/* 0267B4 8015AA24 00000000 */  .float  0.0
/* 0267B8 8015AA28 3F800000 */  .float  1.0
/* 0267BC 8015AA2C 3F800000 */  .float  1.0
/* 0267C0 8015AA30 3F800000 */  .float  1.0
/* 0267C4 8015AA34 00000000 */  .float  0.0
/* 0267C8 8015AA38 00000000 */  .float  0.0
/* 0267CC 8015AA3C 00000000 */  .float  0.0
/* 0267D0 8015AA40 00000000 */  .float  0.0
/* 0267D4 8015AA44 00000000 */  .float  0.0
/* 0267D8 8015AA48 00000000 */  .float  0.0
/* 0267DC 8015AA4C 447A0000 */  .float  1000.0
/* 0267E0 8015AA50 00000000 */  .float  0.0
/* 0267E4 8015AA54 00000000 */  .float  0.0
/* 0267E8 8015AA58 04027A88 */  .float  1.5337690151382782e-36
/* 0267EC 8015AA5C 00000000 */  .float  0.0
/* 0267F0 8015AA60 BB83126F */  .float  -0.004000000189989805
/* 0267F4 8015AA64 3F800000 */  .float  1.0
/* 0267F8 8015AA68 BC1374BC */  .float  -0.008999999612569809
/* 0267FC 8015AA6C BBE56042 */  .float  -0.007000000216066837
/* 026800 8015AA70 3F800000 */  .float  1.0
/* 026804 8015AA74 41201CAC */  .float  10.006999969482422
/* 026808 8015AA78 412024DD */  .float  10.008999824523926
/* 02680C 8015AA7C 3F800000 */  .float  1.0
/* 026810 8015AA80 41201062 */  .float  10.003999710083008
/* 026814 8015AA84 00000000 */  .float  0.0
/* 026818 8015AA88 BC1374BC */  .float  -0.008999999612569809
/* 02681C 8015AA8C 3F800000 */  .float  1.0
/* 026820 8015AA90 BB83126F */  .float  -0.004000000189989805
/* 026824 8015AA94 41201062 */  .float  10.003999710083008
/* 026828 8015AA98 3F800000 */  .float  1.0
/* 02682C 8015AA9C 412024DD */  .float  10.008999824523926
/* 026830 8015AAA0 41201CAC */  .float  10.006999969482422
/* 026834 8015AAA4 3F800000 */  .float  1.0
/* 026838 8015AAA8 BBE56042 */  .float  -0.007000000216066837
/* 02683C 8015AAAC 00000000 */  .float  0.0
/* 026840 8015AAB0 8015AA60 */  .float  -1.9896644531378067e-39
/* 026844 8015AAB4 8015AA60 */  .float  -1.9896644531378067e-39
/* 026848 8015AAB8 00020000 */  .float  1.8367099231598242e-40
/* 02684C 8015AABC 00000000 */  .float  0.0
/* 026850 8015AAC0 3F800000 */  .float  1.0
/* 026854 8015AAC4 3F800000 */  .float  1.0
/* 026858 8015AAC8 3F800000 */  .float  1.0
/* 02685C 8015AACC 00000000 */  .float  0.0
/* 026860 8015AAD0 00000000 */  .float  0.0
/* 026864 8015AAD4 00000000 */  .float  0.0
/* 026868 8015AAD8 00000000 */  .float  0.0
/* 02686C 8015AADC 00000000 */  .float  0.0
/* 026870 8015AAE0 00000000 */  .float  0.0
/* 026874 8015AAE4 447A0000 */  .float  1000.0
/* 026878 8015AAE8 00000000 */  .float  0.0
/* 02687C 8015AAEC 00000000 */  .float  0.0
/* 026880 8015AAF0 04027B78 */  .float  1.5338120630271022e-36
/* 026884 8015AAF4 00000000 */  .float  0.0
/* 026888 8015AAF8 40D570A4 */  .float  6.670000076293945
/* 02688C 8015AAFC 3FF1A9FC */  .float  1.8880000114440918
/* 026890 8015AB00 C00FCED9 */  .float  -2.246999979019165
/* 026894 8015AB04 409E9FBE */  .float  4.956999778747559
/* 026898 8015AB08 3FF1A9FC */  .float  1.8880000114440918
/* 02689C 8015AB0C 3F608312 */  .float  0.8769999742507935
/* 0268A0 8015AB10 40F20419 */  .float  7.563000202178955
/* 0268A4 8015AB14 3FF1A9FC */  .float  1.8880000114440918
/* 0268A8 8015AB18 40134396 */  .float  2.3010001182556152
/* 0268AC 8015AB1C 00000000 */  .float  0.0
/* 0268B0 8015AB20 40D53F7D */  .float  6.664000034332275
/* 0268B4 8015AB24 3FF1A9FC */  .float  1.8880000114440918
/* 0268B8 8015AB28 C00FBE77 */  .float  -2.246000051498413
/* 0268BC 8015AB2C 40F1D2F2 */  .float  7.557000160217285
/* 0268C0 8015AB30 3FF1A9FC */  .float  1.8880000114440918
/* 0268C4 8015AB34 401353F8 */  .float  2.302000045776367
/* 0268C8 8015AB38 411451EC */  .float  9.270000457763672
/* 0268CC 8015AB3C 3FF1A9FC */  .float  1.8880000114440918
/* 0268D0 8015AB40 BF526E98 */  .float  -0.8220000267028809
/* 0268D4 8015AB44 00000000 */  .float  0.0
/* 0268D8 8015AB48 BB83126F */  .float  -0.004000000189989805
/* 0268DC 8015AB4C 3F800000 */  .float  1.0
/* 0268E0 8015AB50 BC1374BC */  .float  -0.008999999612569809
/* 0268E4 8015AB54 BBE56042 */  .float  -0.007000000216066837
/* 0268E8 8015AB58 3F800000 */  .float  1.0
/* 0268EC 8015AB5C 41201CAC */  .float  10.006999969482422
/* 0268F0 8015AB60 412024DD */  .float  10.008999824523926
/* 0268F4 8015AB64 3F800000 */  .float  1.0
/* 0268F8 8015AB68 41201062 */  .float  10.003999710083008
/* 0268FC 8015AB6C 00000000 */  .float  0.0
/* 026900 8015AB70 BC1374BC */  .float  -0.008999999612569809
/* 026904 8015AB74 3F800000 */  .float  1.0
/* 026908 8015AB78 BB83126F */  .float  -0.004000000189989805
/* 02690C 8015AB7C 41201062 */  .float  10.003999710083008
/* 026910 8015AB80 3F800000 */  .float  1.0
/* 026914 8015AB84 412024DD */  .float  10.008999824523926
/* 026918 8015AB88 41201CAC */  .float  10.006999969482422
/* 02691C 8015AB8C 3F800000 */  .float  1.0
/* 026920 8015AB90 BBE56042 */  .float  -0.007000000216066837
/* 026924 8015AB94 00000000 */  .float  0.0
/* 026928 8015AB98 8015AAF8 */  .float  -1.989877450504384e-39
/* 02692C 8015AB9C 8015AAF8 */  .float  -1.989877450504384e-39
/* 026930 8015ABA0 00040000 */  .float  3.6734198463196485e-40
/* 026934 8015ABA4 00000000 */  .float  0.0
/* 026938 8015ABA8 3F800000 */  .float  1.0
/* 02693C 8015ABAC 3F800000 */  .float  1.0
/* 026940 8015ABB0 3F800000 */  .float  1.0
/* 026944 8015ABB4 00000000 */  .float  0.0
/* 026948 8015ABB8 00000000 */  .float  0.0
/* 02694C 8015ABBC 00000000 */  .float  0.0
/* 026950 8015ABC0 00000000 */  .float  0.0
/* 026954 8015ABC4 00000000 */  .float  0.0
/* 026958 8015ABC8 00000000 */  .float  0.0
/* 02695C 8015ABCC 447A0000 */  .float  1000.0
/* 026960 8015ABD0 00000000 */  .float  0.0
/* 026964 8015ABD4 00000000 */  .float  0.0
/* 026968 8015ABD8 04027C68 */  .float  1.5338551109159263e-36
/* 02696C 8015ABDC 00000000 */  .float  0.0
/* 026970 8015ABE0 BC23D70A */  .float  -0.009999999776482582
/* 026974 8015ABE4 41200000 */  .float  10.0
/* 026978 8015ABE8 BB03126F */  .float  -0.0020000000949949026
/* 02697C 8015ABEC 412020C5 */  .float  10.008000373840332
/* 026980 8015ABF0 41200000 */  .float  10.0
/* 026984 8015ABF4 4083645A */  .float  4.105999946594238
/* 026988 8015ABF8 412024DD */  .float  10.008999824523926
/* 02698C 8015ABFC 41200000 */  .float  10.0
/* 026990 8015AC00 BB83126F */  .float  -0.004000000189989805
/* 026994 8015AC04 00200000 */  .float  2.938735877055719e-39
/* 026998 8015AC08 BC03126F */  .float  -0.00800000037997961
/* 02699C 8015AC0C 41200000 */  .float  10.0
/* 0269A0 8015AC10 BBC49BA6 */  .float  -0.006000000052154064
/* 0269A4 8015AC14 BC1374BC */  .float  -0.008999999612569809
/* 0269A8 8015AC18 41200000 */  .float  10.0
/* 0269AC 8015AC1C 408353F8 */  .float  4.104000091552734
/* 0269B0 8015AC20 412028F6 */  .float  10.010000228881836
/* 0269B4 8015AC24 41200000 */  .float  10.0
/* 0269B8 8015AC28 40834396 */  .float  4.1020002365112305
/* 0269BC 8015AC2C 00200000 */  .float  2.938735877055719e-39
/* 0269C0 8015AC30 40D53F7D */  .float  6.664000034332275
/* 0269C4 8015AC34 3FF1A9FC */  .float  1.8880000114440918
/* 0269C8 8015AC38 40F820C5 */  .float  7.754000186920166
/* 0269CC 8015AC3C 40F1D2F2 */  .float  7.557000160217285
/* 0269D0 8015AC40 3FF1A9FC */  .float  1.8880000114440918
/* 0269D4 8015AC44 4144D4FE */  .float  12.302000045776367
/* 0269D8 8015AC48 411451EC */  .float  9.270000457763672
/* 0269DC 8015AC4C 3FF1A9FC */  .float  1.8880000114440918
/* 0269E0 8015AC50 4112D917 */  .float  9.178000450134277
/* 0269E4 8015AC54 00000000 */  .float  0.0
/* 0269E8 8015AC58 40D570A4 */  .float  6.670000076293945
/* 0269EC 8015AC5C 3FF1A9FC */  .float  1.8880000114440918
/* 0269F0 8015AC60 40F81893 */  .float  7.752999782562256
/* 0269F4 8015AC64 409E9FBE */  .float  4.956999778747559
/* 0269F8 8015AC68 3FF1A9FC */  .float  1.8880000114440918
/* 0269FC 8015AC6C 412E0831 */  .float  10.876999855041504
/* 026A00 8015AC70 40F20419 */  .float  7.563000202178955
/* 026A04 8015AC74 3FF1A9FC */  .float  1.8880000114440918
/* 026A08 8015AC78 4144D0E5 */  .float  12.300999641418457
/* 026A0C 8015AC7C 00000000 */  .float  0.0
/* 026A10 8015AC80 BB83126F */  .float  -0.004000000189989805
/* 026A14 8015AC84 3F800000 */  .float  1.0
/* 026A18 8015AC88 BC1374BC */  .float  -0.008999999612569809
/* 026A1C 8015AC8C BBE56042 */  .float  -0.007000000216066837
/* 026A20 8015AC90 3F800000 */  .float  1.0
/* 026A24 8015AC94 41201CAC */  .float  10.006999969482422
/* 026A28 8015AC98 412024DD */  .float  10.008999824523926
/* 026A2C 8015AC9C 3F800000 */  .float  1.0
/* 026A30 8015ACA0 41201062 */  .float  10.003999710083008
/* 026A34 8015ACA4 00000000 */  .float  0.0
/* 026A38 8015ACA8 BC1374BC */  .float  -0.008999999612569809
/* 026A3C 8015ACAC 3F800000 */  .float  1.0
/* 026A40 8015ACB0 BB83126F */  .float  -0.004000000189989805
/* 026A44 8015ACB4 41201062 */  .float  10.003999710083008
/* 026A48 8015ACB8 3F800000 */  .float  1.0
/* 026A4C 8015ACBC 412024DD */  .float  10.008999824523926
/* 026A50 8015ACC0 41201CAC */  .float  10.006999969482422
/* 026A54 8015ACC4 3F800000 */  .float  1.0
/* 026A58 8015ACC8 BBE56042 */  .float  -0.007000000216066837
/* 026A5C 8015ACCC 00000000 */  .float  0.0
/* 026A60 8015ACD0 8015ABE0 */  .float  -1.9902025517481074e-39
/* 026A64 8015ACD4 8015ABE0 */  .float  -1.9902025517481074e-39
/* 026A68 8015ACD8 00060000 */  .float  5.510129769479473e-40
/* 026A6C 8015ACDC 00000000 */  .float  0.0
/* 026A70 8015ACE0 3F800000 */  .float  1.0
/* 026A74 8015ACE4 3F800000 */  .float  1.0
/* 026A78 8015ACE8 3F800000 */  .float  1.0
/* 026A7C 8015ACEC 00000000 */  .float  0.0
/* 026A80 8015ACF0 00000000 */  .float  0.0
/* 026A84 8015ACF4 00000000 */  .float  0.0
/* 026A88 8015ACF8 00000000 */  .float  0.0
/* 026A8C 8015ACFC 00000000 */  .float  0.0
/* 026A90 8015AD00 00000000 */  .float  0.0
/* 026A94 8015AD04 44ED8000 */  .float  1900.0
/* 026A98 8015AD08 8015AD18 */  .float  -1.9906397568689767e-39
/* 026A9C 8015AD0C 00000000 */  .float  0.0
/* 026AA0 8015AD10 0402BE98 */  .float  1.5368942918669048e-36
/* 026AA4 8015AD14 00000000 */  .float  0.0
/* 026AA8 8015AD18 3F800000 */  .float  1.0
/* 026AAC 8015AD1C 3F800000 */  .float  1.0
/* 026AB0 8015AD20 3F800000 */  .float  1.0
/* 026AB4 8015AD24 00000000 */  .float  0.0
/* 026AB8 8015AD28 00000000 */  .float  0.0
/* 026ABC 8015AD2C 00000000 */  .float  0.0
/* 026AC0 8015AD30 44160000 */  .float  600.0
/* 026AC4 8015AD34 448BB77D */  .float  1117.7340087890625
/* 026AC8 8015AD38 435C63DE */  .float  220.39010620117188
/* 026ACC 8015AD3C 42EDCCCD */  .float  118.9000015258789
/* 026AD0 8015AD40 00000000 */  .float  0.0
/* 026AD4 8015AD44 00000000 */  .float  0.0
/* 026AD8 8015AD48 0402D2D8 */  .float  1.5378241262655045e-36
/* 026ADC 8015AD4C 00820000 */  .float  1.1938614500538858e-38
/* 026AE0 8015AD50 412020C5 */  .float  10.008000373840332
/* 026AE4 8015AD54 40951687 */  .float  4.658999919891357
/* 026AE8 8015AD58 41201893 */  .float  10.005999565124512
/* 026AEC 8015AD5C 41158D50 */  .float  9.347000122070312
/* 026AF0 8015AD60 40A072B0 */  .float  5.013999938964844
/* 026AF4 8015AD64 40FC624E */  .float  7.88700008392334
/* 026AF8 8015AD68 40DA1CAC */  .float  6.815999984741211
/* 026AFC 8015AD6C 40A072B0 */  .float  5.013999938964844
/* 026B00 8015AD70 41124DD3 */  .float  9.144000053405762
/* 026B04 8015AD74 00200000 */  .float  2.938735877055719e-39
/* 026B08 8015AD78 40DA24DD */  .float  6.816999912261963
/* 026B0C 8015AD7C 40A072B0 */  .float  5.013999938964844
/* 026B10 8015AD80 4112353F */  .float  9.137999534606934
/* 026B14 8015AD84 40D7851F */  .float  6.735000133514404
/* 026B18 8015AD88 409AC083 */  .float  4.835999965667725
/* 026B1C 8015AD8C 41200831 */  .float  10.001999855041504
/* 026B20 8015AD90 412028F6 */  .float  10.010000228881836
/* 026B24 8015AD94 40951687 */  .float  4.658999919891357
/* 026B28 8015AD98 41200419 */  .float  10.00100040435791
/* 026B2C 8015AD9C 00200000 */  .float  2.938735877055719e-39
/* 026B30 8015ADA0 41200831 */  .float  10.001999855041504
/* 026B34 8015ADA4 40951687 */  .float  4.658999919891357
/* 026B38 8015ADA8 412028F6 */  .float  10.010000228881836
/* 026B3C 8015ADAC 41200C4A */  .float  10.003000259399414
/* 026B40 8015ADB0 40951687 */  .float  4.658999919891357
/* 026B44 8015ADB4 40FC3127 */  .float  7.88100004196167
/* 026B48 8015ADB8 4115645A */  .float  9.336999893188477
/* 026B4C 8015ADBC 40A08312 */  .float  5.015999794006348
/* 026B50 8015ADC0 40FC6A7F */  .float  7.888000011444092
/* 026B54 8015ADC4 00200000 */  .float  2.938735877055719e-39
/* 026B58 8015ADC8 4115A1CB */  .float  9.35200023651123
/* 026B5C 8015ADCC 40A07AE1 */  .float  5.014999866485596
/* 026B60 8015ADD0 40FC9BA6 */  .float  7.894000053405762
/* 026B64 8015ADD4 40D970A4 */  .float  6.795000076293945
/* 026B68 8015ADD8 40825E35 */  .float  4.073999881744385
/* 026B6C 8015ADDC 40F9F3B6 */  .float  7.810999870300293
/* 026B70 8015ADE0 40DA353F */  .float  6.818999767303467
/* 026B74 8015ADE4 40A07AE1 */  .float  5.014999866485596
/* 026B78 8015ADE8 41126666 */  .float  9.149999618530273
/* 026B7C 8015ADEC 00200000 */  .float  2.938735877055719e-39
/* 026B80 8015ADF0 41159DB2 */  .float  9.35099983215332
/* 026B84 8015ADF4 40A08B44 */  .float  5.017000198364258
/* 026B88 8015ADF8 40FCBC6A */  .float  7.8979997634887695
/* 026B8C 8015ADFC 4104D917 */  .float  8.303000450134277
/* 026B90 8015AE00 40826666 */  .float  4.074999809265137
/* 026B94 8015AE04 40E2147B */  .float  7.065000057220459
/* 026B98 8015AE08 40D96042 */  .float  6.793000221252441
/* 026B9C 8015AE0C 408276C9 */  .float  4.077000141143799
/* 026BA0 8015AE10 40FA24DD */  .float  7.816999912261963
/* 026BA4 8015AE14 00200000 */  .float  2.938735877055719e-39
/* 026BA8 8015AE18 40FBD70A */  .float  7.869999885559082
/* 026BAC 8015AE1C 3FE7AE14 */  .float  1.809999942779541
/* 026BB0 8015AE20 40C69FBE */  .float  6.206999778747559
/* 026BB4 8015AE24 4104BC6A */  .float  8.295999526977539
/* 026BB8 8015AE28 4082D917 */  .float  4.089000225067139
/* 026BBC 8015AE2C 40E25604 */  .float  7.072999954223633
/* 026BC0 8015AE30 41158D50 */  .float  9.347000122070312
/* 026BC4 8015AE34 40A0A3D7 */  .float  5.019999980926514
/* 026BC8 8015AE38 40FCD4FE */  .float  7.901000022888184
/* 026BCC 8015AE3C 00200000 */  .float  2.938735877055719e-39
/* 026BD0 8015AE40 40DA76C9 */  .float  6.827000141143799
/* 026BD4 8015AE44 40A0A3D7 */  .float  5.019999980926514
/* 026BD8 8015AE48 4112624E */  .float  9.14900016784668
/* 026BDC 8015AE4C 40D9C28F */  .float  6.804999828338623
/* 026BE0 8015AE50 4082D917 */  .float  4.089000225067139
/* 026BE4 8015AE54 40F9FBE7 */  .float  7.811999797821045
/* 026BE8 8015AE58 40CBF7CF */  .float  6.374000072479248
/* 026BEC 8015AE5C 3FE7AE14 */  .float  1.809999942779541
/* 026BF0 8015AE60 40DE5604 */  .float  6.947999954223633
/* 026BF4 8015AE64 00200000 */  .float  2.938735877055719e-39
/* 026BF8 8015AE68 40FC0000 */  .float  7.875
/* 026BFC 8015AE6C 3FE7AE14 */  .float  1.809999942779541
/* 026C00 8015AE70 40C6978D */  .float  6.205999851226807
/* 026C04 8015AE74 40D978D5 */  .float  6.796000003814697
/* 026C08 8015AE78 4082B852 */  .float  4.085000038146973
/* 026C0C 8015AE7C 40FA45A2 */  .float  7.821000099182129
/* 026C10 8015AE80 4104E979 */  .float  8.307000160217285
/* 026C14 8015AE84 4082C8B4 */  .float  4.086999893188477
/* 026C18 8015AE88 40E25E35 */  .float  7.073999881744385
/* 026C1C 8015AE8C 00200000 */  .float  2.938735877055719e-39
/* 026C20 8015AE90 40E1F3B6 */  .float  7.060999870300293
/* 026C24 8015AE94 4028F5C3 */  .float  2.640000104904175
/* 026C28 8015AE98 401020C5 */  .float  2.252000093460083
/* 026C2C 8015AE9C 409DD2F2 */  .float  4.932000160217285
/* 026C30 8015AEA0 4028F5C3 */  .float  2.640000104904175
/* 026C34 8015AEA4 40BFDF3B */  .float  5.995999813079834
/* 026C38 8015AEA8 40E0ED91 */  .float  7.0289998054504395
/* 026C3C 8015AEAC 4028F5C3 */  .float  2.640000104904175
/* 026C40 8015AEB0 40C08B44 */  .float  6.017000198364258
/* 026C44 8015AEB4 00000000 */  .float  0.0
/* 026C48 8015AEB8 40E2147B */  .float  7.065000057220459
/* 026C4C 8015AEBC 4028F5C3 */  .float  2.640000104904175
/* 026C50 8015AEC0 401051EC */  .float  2.255000114440918
/* 026C54 8015AEC4 409EF9DB */  .float  4.9679999351501465
/* 026C58 8015AEC8 4028F5C3 */  .float  2.640000104904175
/* 026C5C 8015AECC 400EF9DB */  .float  2.2339999675750732
/* 026C60 8015AED0 409DF3B6 */  .float  4.935999870300293
/* 026C64 8015AED4 4028F5C3 */  .float  2.640000104904175
/* 026C68 8015AED8 40BFF7CF */  .float  5.999000072479248
/* 026C6C 8015AEDC 00000000 */  .float  0.0
/* 026C70 8015AEE0 40CBF7CF */  .float  6.374000072479248
/* 026C74 8015AEE4 3FE83127 */  .float  1.8140000104904175
/* 026C78 8015AEE8 40DE3D71 */  .float  6.945000171661377
/* 026C7C 8015AEEC 40C851EC */  .float  6.260000228881836
/* 026C80 8015AEF0 3F7D70A4 */  .float  0.9900000095367432
/* 026C84 8015AEF4 4109C28F */  .float  8.609999656677246
/* 026C88 8015AEF8 40DA76C9 */  .float  6.827000141143799
/* 026C8C 8015AEFC 40A0B439 */  .float  5.021999835968018
/* 026C90 8015AF00 41125604 */  .float  9.145999908447266
/* 026C94 8015AF04 00200000 */  .float  2.938735877055719e-39
/* 026C98 8015AF08 41158106 */  .float  9.343999862670898
/* 026C9C 8015AF0C 40A0B439 */  .float  5.021999835968018
/* 026CA0 8015AF10 40FCC49C */  .float  7.89900016784668
/* 026CA4 8015AF14 41142D0E */  .float  9.26099967956543
/* 026CA8 8015AF18 3F7D70A4 */  .float  0.9900000095367432
/* 026CAC 8015AF1C 40E3EF9E */  .float  7.123000144958496
/* 026CB0 8015AF20 40FBBE77 */  .float  7.867000102996826
/* 026CB4 8015AF24 3FE83127 */  .float  1.8140000104904175
/* 026CB8 8015AF28 40C68F5C */  .float  6.204999923706055
/* 026CBC 8015AF2C 00200000 */  .float  2.938735877055719e-39
/* 026CC0 8015AF30 40FC28F6 */  .float  7.880000114440918
/* 026CC4 8015AF34 3FE81062 */  .float  1.812999963760376
/* 026CC8 8015AF38 40C68F5C */  .float  6.204999923706055
/* 026CCC 8015AF3C 40CBCED9 */  .float  6.36899995803833
/* 026CD0 8015AF40 3FE7CED9 */  .float  1.8109999895095825
/* 026CD4 8015AF44 40DE7EFA */  .float  6.953000068664551
/* 026CD8 8015AF48 40D9A1CB */  .float  6.801000118255615
/* 026CDC 8015AF4C 4082D0E5 */  .float  4.0879998207092285
/* 026CE0 8015AF50 40FA3D71 */  .float  7.820000171661377
/* 026CE4 8015AF54 00200000 */  .float  2.938735877055719e-39
/* 026CE8 8015AF58 BB83126F */  .float  -0.004000000189989805
/* 026CEC 8015AF5C 3F800000 */  .float  1.0
/* 026CF0 8015AF60 BC1374BC */  .float  -0.008999999612569809
/* 026CF4 8015AF64 BBE56042 */  .float  -0.007000000216066837
/* 026CF8 8015AF68 3F800000 */  .float  1.0
/* 026CFC 8015AF6C 41201CAC */  .float  10.006999969482422
/* 026D00 8015AF70 412024DD */  .float  10.008999824523926
/* 026D04 8015AF74 3F800000 */  .float  1.0
/* 026D08 8015AF78 41201062 */  .float  10.003999710083008
/* 026D0C 8015AF7C 00000000 */  .float  0.0
/* 026D10 8015AF80 BC1374BC */  .float  -0.008999999612569809
/* 026D14 8015AF84 3F800000 */  .float  1.0
/* 026D18 8015AF88 BB83126F */  .float  -0.004000000189989805
/* 026D1C 8015AF8C 41201062 */  .float  10.003999710083008
/* 026D20 8015AF90 3F800000 */  .float  1.0
/* 026D24 8015AF94 412024DD */  .float  10.008999824523926
/* 026D28 8015AF98 41201CAC */  .float  10.006999969482422
/* 026D2C 8015AF9C 3F800000 */  .float  1.0
/* 026D30 8015AFA0 BBE56042 */  .float  -0.007000000216066837
/* 026D34 8015AFA4 00000000 */  .float  0.0
/* 026D38 8015AFA8 8015AD50 */  .float  -1.990718229582979e-39
/* 026D3C 8015AFAC 8015AD50 */  .float  -1.990718229582979e-39
/* 026D40 8015AFB0 000F0000 */  .float  1.3775324423698682e-39
/* 026D44 8015AFB4 00000000 */  .float  0.0
/* 026D48 8015AFB8 3F800000 */  .float  1.0
/* 026D4C 8015AFBC 3F800000 */  .float  1.0
/* 026D50 8015AFC0 3F800000 */  .float  1.0
/* 026D54 8015AFC4 00000000 */  .float  0.0
/* 026D58 8015AFC8 00000000 */  .float  0.0
/* 026D5C 8015AFCC 00000000 */  .float  0.0
/* 026D60 8015AFD0 00000000 */  .float  0.0
/* 026D64 8015AFD4 00000000 */  .float  0.0
/* 026D68 8015AFD8 00000000 */  .float  0.0
/* 026D6C 8015AFDC 44ED8333 */  .float  1900.0999755859375
/* 026D70 8015AFE0 00000000 */  .float  0.0
/* 026D74 8015AFE4 00000000 */  .float  0.0
/* 026D78 8015AFE8 0402DAE8 */  .float  1.5381943381093914e-36
/* 026D7C 8015AFEC 00000000 */  .float  0.0
/* 026D80 8015AFF0 BB83126F */  .float  -0.004000000189989805
/* 026D84 8015AFF4 3F800000 */  .float  1.0
/* 026D88 8015AFF8 BC1374BC */  .float  -0.008999999612569809
/* 026D8C 8015AFFC BBE56042 */  .float  -0.007000000216066837
/* 026D90 8015B000 3F800000 */  .float  1.0
/* 026D94 8015B004 41201CAC */  .float  10.006999969482422
/* 026D98 8015B008 412024DD */  .float  10.008999824523926
/* 026D9C 8015B00C 3F800000 */  .float  1.0
/* 026DA0 8015B010 41201062 */  .float  10.003999710083008
/* 026DA4 8015B014 00000000 */  .float  0.0
/* 026DA8 8015B018 BC1374BC */  .float  -0.008999999612569809
/* 026DAC 8015B01C 3F800000 */  .float  1.0
/* 026DB0 8015B020 BB83126F */  .float  -0.004000000189989805
/* 026DB4 8015B024 41201062 */  .float  10.003999710083008
/* 026DB8 8015B028 3F800000 */  .float  1.0
/* 026DBC 8015B02C 412024DD */  .float  10.008999824523926
/* 026DC0 8015B030 41201CAC */  .float  10.006999969482422
/* 026DC4 8015B034 3F800000 */  .float  1.0
/* 026DC8 8015B038 BBE56042 */  .float  -0.007000000216066837
/* 026DCC 8015B03C 00000000 */  .float  0.0
/* 026DD0 8015B040 8015AFF0 */  .float  -1.9916599021510052e-39
/* 026DD4 8015B044 8015AFF0 */  .float  -1.9916599021510052e-39
/* 026DD8 8015B048 00020000 */  .float  1.8367099231598242e-40
/* 026DDC 8015B04C 00000000 */  .float  0.0
/* 026DE0 8015B050 3F800000 */  .float  1.0
/* 026DE4 8015B054 3F800000 */  .float  1.0
/* 026DE8 8015B058 3F800000 */  .float  1.0
/* 026DEC 8015B05C 00000000 */  .float  0.0
/* 026DF0 8015B060 00000000 */  .float  0.0
/* 026DF4 8015B064 00000000 */  .float  0.0
/* 026DF8 8015B068 00000000 */  .float  0.0
/* 026DFC 8015B06C 00000000 */  .float  0.0
/* 026E00 8015B070 00000000 */  .float  0.0
/* 026E04 8015B074 447A0000 */  .float  1000.0
/* 026E08 8015B078 00000000 */  .float  0.0
/* 026E0C 8015B07C 00000000 */  .float  0.0
/* 026E10 8015B080 0402E180 */  .float  1.5384971082607873e-36
/* 026E14 8015B084 00000000 */  .float  0.0
/* 026E18 8015B088 BC23D70A */  .float  -0.009999999776482582
/* 026E1C 8015B08C 41200000 */  .float  10.0
/* 026E20 8015B090 BB03126F */  .float  -0.0020000000949949026
/* 026E24 8015B094 412020C5 */  .float  10.008000373840332
/* 026E28 8015B098 41200000 */  .float  10.0
/* 026E2C 8015B09C 4083645A */  .float  4.105999946594238
/* 026E30 8015B0A0 412024DD */  .float  10.008999824523926
/* 026E34 8015B0A4 41200000 */  .float  10.0
/* 026E38 8015B0A8 BB83126F */  .float  -0.004000000189989805
/* 026E3C 8015B0AC 00200000 */  .float  2.938735877055719e-39
/* 026E40 8015B0B0 BC03126F */  .float  -0.00800000037997961
/* 026E44 8015B0B4 41200000 */  .float  10.0
/* 026E48 8015B0B8 BBC49BA6 */  .float  -0.006000000052154064
/* 026E4C 8015B0BC BC1374BC */  .float  -0.008999999612569809
/* 026E50 8015B0C0 41200000 */  .float  10.0
/* 026E54 8015B0C4 408353F8 */  .float  4.104000091552734
/* 026E58 8015B0C8 412028F6 */  .float  10.010000228881836
/* 026E5C 8015B0CC 41200000 */  .float  10.0
/* 026E60 8015B0D0 40834396 */  .float  4.1020002365112305
/* 026E64 8015B0D4 00200000 */  .float  2.938735877055719e-39
/* 026E68 8015B0D8 411676C9 */  .float  9.404000282287598
/* 026E6C 8015B0DC 4021A9FC */  .float  2.5260000228881836
/* 026E70 8015B0E0 40DDCAC1 */  .float  6.931000232696533
/* 026E74 8015B0E4 409926E9 */  .float  4.785999774932861
/* 026E78 8015B0E8 4021A9FC */  .float  2.5260000228881836
/* 026E7C 8015B0EC 40EA9FBE */  .float  7.331999778747559
/* 026E80 8015B0F0 40F6B021 */  .float  7.709000110626221
/* 026E84 8015B0F4 4021A9FC */  .float  2.5260000228881836
/* 026E88 8015B0F8 4115EB85 */  .float  9.369999885559082
/* 026E8C 8015B0FC 00000000 */  .float  0.0
/* 026E90 8015B100 411676C9 */  .float  9.404000282287598
/* 026E94 8015B104 4021A9FC */  .float  2.5260000228881836
/* 026E98 8015B108 40DDFBE7 */  .float  6.936999797821045
/* 026E9C 8015B10C 40CF6C8B */  .float  6.48199987411499
/* 026EA0 8015B110 4021A9FC */  .float  2.5260000228881836
/* 026EA4 8015B114 409CC49C */  .float  4.89900016784668
/* 026EA8 8015B118 40992F1B */  .float  4.7870001792907715
/* 026EAC 8015B11C 4021A9FC */  .float  2.5260000228881836
/* 026EB0 8015B120 40EAD0E5 */  .float  7.3379998207092285
/* 026EB4 8015B124 00000000 */  .float  0.0
/* 026EB8 8015B128 3F9147AE */  .float  1.1349999904632568
/* 026EBC 8015B12C 3FF1A9FC */  .float  1.8880000114440918
/* 026EC0 8015B130 40BCCCCD */  .float  5.900000095367432
/* 026EC4 8015B134 40460419 */  .float  3.0940001010894775
/* 026EC8 8015B138 3FF1A9FC */  .float  1.8880000114440918
/* 026ECC 8015B13C 41219DB2 */  .float  10.10099983215332
/* 026ED0 8015B140 40803958 */  .float  4.006999969482422
/* 026ED4 8015B144 3FF1A9FC */  .float  1.8880000114440918
/* 026ED8 8015B148 40D50625 */  .float  6.6570000648498535
/* 026EDC 8015B14C 00000000 */  .float  0.0
/* 026EE0 8015B150 3F91EB85 */  .float  1.1399999856948853
/* 026EE4 8015B154 3FF1A9FC */  .float  1.8880000114440918
/* 026EE8 8015B158 40BCB439 */  .float  5.896999835968018
/* 026EEC 8015B15C 3E6872B0 */  .float  0.22699999809265137
/* 026EF0 8015B160 3FF1A9FC */  .float  1.8880000114440918
/* 026EF4 8015B164 411574BC */  .float  9.340999603271484
/* 026EF8 8015B168 40465604 */  .float  3.0989999771118164
/* 026EFC 8015B16C 3FF1A9FC */  .float  1.8880000114440918
/* 026F00 8015B170 41219168 */  .float  10.097999572753906
/* 026F04 8015B174 00000000 */  .float  0.0
/* 026F08 8015B178 40ABEF9E */  .float  5.373000144958496
/* 026F0C 8015B17C 3FF1A9FC */  .float  1.8880000114440918
/* 026F10 8015B180 40AD4FDF */  .float  5.415999889373779
/* 026F14 8015B184 410D645A */  .float  8.836999893188477
/* 026F18 8015B188 3FF1A9FC */  .float  1.8880000114440918
/* 026F1C 8015B18C 4107E76D */  .float  8.494000434875488
/* 026F20 8015B190 4104F1AA */  .float  8.309000015258789
/* 026F24 8015B194 3FF1A9FC */  .float  1.8880000114440918
/* 026F28 8015B198 409F126F */  .float  4.9710001945495605
/* 026F2C 8015B19C 00000000 */  .float  0.0
/* 026F30 8015B1A0 40AC1062 */  .float  5.376999855041504
/* 026F34 8015B1A4 3FF1A9FC */  .float  1.8880000114440918
/* 026F38 8015B1A8 40AD26E9 */  .float  5.410999774932861
/* 026F3C 8015B1AC 40BCF5C3 */  .float  5.90500020980835
/* 026F40 8015B1B0 3FF1A9FC */  .float  1.8880000114440918
/* 026F44 8015B1B4 410EF5C3 */  .float  8.9350004196167
/* 026F48 8015B1B8 410D74BC */  .float  8.840999603271484
/* 026F4C 8015B1BC 3FF1A9FC */  .float  1.8880000114440918
/* 026F50 8015B1C0 4107D70A */  .float  8.489999771118164
/* 026F54 8015B1C4 00000000 */  .float  0.0
/* 026F58 8015B1C8 BB83126F */  .float  -0.004000000189989805
/* 026F5C 8015B1CC 3F800000 */  .float  1.0
/* 026F60 8015B1D0 BC1374BC */  .float  -0.008999999612569809
/* 026F64 8015B1D4 BBE56042 */  .float  -0.007000000216066837
/* 026F68 8015B1D8 3F800000 */  .float  1.0
/* 026F6C 8015B1DC 41201CAC */  .float  10.006999969482422
/* 026F70 8015B1E0 412024DD */  .float  10.008999824523926
/* 026F74 8015B1E4 3F800000 */  .float  1.0
/* 026F78 8015B1E8 41201062 */  .float  10.003999710083008
/* 026F7C 8015B1EC 00000000 */  .float  0.0
/* 026F80 8015B1F0 BC1374BC */  .float  -0.008999999612569809
/* 026F84 8015B1F4 3F800000 */  .float  1.0
/* 026F88 8015B1F8 BB83126F */  .float  -0.004000000189989805
/* 026F8C 8015B1FC 41201062 */  .float  10.003999710083008
/* 026F90 8015B200 3F800000 */  .float  1.0
/* 026F94 8015B204 412024DD */  .float  10.008999824523926
/* 026F98 8015B208 41201CAC */  .float  10.006999969482422
/* 026F9C 8015B20C 3F800000 */  .float  1.0
/* 026FA0 8015B210 BBE56042 */  .float  -0.007000000216066837
/* 026FA4 8015B214 00000000 */  .float  0.0
/* 026FA8 8015B218 8015B088 */  .float  -1.9918728995175826e-39
/* 026FAC 8015B21C 8015B088 */  .float  -1.9918728995175826e-39
/* 026FB0 8015B220 000A0000 */  .float  9.183549615799121e-40
/* 026FB4 8015B224 00000000 */  .float  0.0
/* 026FB8 8015B228 3F800000 */  .float  1.0
/* 026FBC 8015B22C 3F800000 */  .float  1.0
/* 026FC0 8015B230 3F800000 */  .float  1.0
/* 026FC4 8015B234 00000000 */  .float  0.0
/* 026FC8 8015B238 00000000 */  .float  0.0
/* 026FCC 8015B23C 00000000 */  .float  0.0
/* 026FD0 8015B240 00000000 */  .float  0.0
/* 026FD4 8015B244 00000000 */  .float  0.0
/* 026FD8 8015B248 00000000 */  .float  0.0
/* 026FDC 8015B24C 447A0000 */  .float  1000.0
/* 026FE0 8015B250 00000000 */  .float  0.0
/* 026FE4 8015B254 8015B260 */  .float  -1.992534312392744e-39
/* 026FE8 8015B258 0402E270 */  .float  1.5385401561496113e-36
/* 026FEC 8015B25C 00000000 */  .float  0.0
/* 026FF0 8015B260 3F800000 */  .float  1.0
/* 026FF4 8015B264 3F800000 */  .float  1.0
/* 026FF8 8015B268 3F800000 */  .float  1.0
/* 026FFC 8015B26C 00000000 */  .float  0.0
/* 027000 8015B270 00000000 */  .float  0.0
/* 027004 8015B274 00000000 */  .float  0.0
/* 027008 8015B278 00000000 */  .float  0.0
/* 02700C 8015B27C 00000000 */  .float  0.0
/* 027010 8015B280 00000000 */  .float  0.0
/* 027014 8015B284 44ED8000 */  .float  1900.0
/* 027018 8015B288 8015B298 */  .float  -1.992612785106746e-39
/* 02701C 8015B28C 00000000 */  .float  0.0
/* 027020 8015B290 0402E420 */  .float  1.5386176423494946e-36
/* 027024 8015B294 00000000 */  .float  0.0
/* 027028 8015B298 3F800000 */  .float  1.0
/* 02702C 8015B29C 3F800000 */  .float  1.0
/* 027030 8015B2A0 3F800000 */  .float  1.0
/* 027034 8015B2A4 00000000 */  .float  0.0
/* 027038 8015B2A8 00000000 */  .float  0.0
/* 02703C 8015B2AC 00000000 */  .float  0.0
/* 027040 8015B2B0 00000000 */  .float  0.0
/* 027044 8015B2B4 00000000 */  .float  0.0
/* 027048 8015B2B8 00000000 */  .float  0.0
/* 02704C 8015B2BC 447A0000 */  .float  1000.0
/* 027050 8015B2C0 8015B2D0 */  .float  -1.9926912578207483e-39
/* 027054 8015B2C4 00000000 */  .float  0.0
/* 027058 8015B2C8 0402ED78 */  .float  1.5390466863081077e-36
/* 02705C 8015B2CC 00000000 */  .float  0.0
/* 027060 8015B2D0 3F800000 */  .float  1.0
/* 027064 8015B2D4 3F800000 */  .float  1.0
/* 027068 8015B2D8 3F800000 */  .float  1.0
/* 02706C 8015B2DC 00000000 */  .float  0.0
/* 027070 8015B2E0 00000000 */  .float  0.0
/* 027074 8015B2E4 00000000 */  .float  0.0
/* 027078 8015B2E8 00000000 */  .float  0.0
/* 02707C 8015B2EC 00000000 */  .float  0.0
/* 027080 8015B2F0 00000000 */  .float  0.0
/* 027084 8015B2F4 00000000 */  .float  0.0
/* 027088 8015B2F8 8015B308 */  .float  -1.9927697305347505e-39
/* 02708C 8015B2FC 00000000 */  .float  0.0
/* 027090 8015B300 00000000 */  .float  0.0
/* 027094 8015B304 00000000 */  .float  0.0
/* 027098 8015B308 3F800000 */  .float  1.0
/* 02709C 8015B30C 3F800000 */  .float  1.0
/* 0270A0 8015B310 3F800000 */  .float  1.0
/* 0270A4 8015B314 00000000 */  .float  0.0
/* 0270A8 8015B318 00000000 */  .float  0.0
/* 0270AC 8015B31C 00000000 */  .float  0.0
/* 0270B0 8015B320 00000000 */  .float  0.0
/* 0270B4 8015B324 448564EE */  .float  1067.154052734375
/* 0270B8 8015B328 43480000 */  .float  200.0
/* 0270BC 8015B32C 43414CCD */  .float  193.3000030517578
/* 0270C0 8015B330 8015B340 */  .float  -1.9928482032487526e-39
/* 0270C4 8015B334 00000000 */  .float  0.0
/* 0270C8 8015B338 040309D0 */  .float  1.5403481674802218e-36
/* 0270CC 8015B33C 00000000 */  .float  0.0
/* 0270D0 8015B340 3F800000 */  .float  1.0
/* 0270D4 8015B344 3F800000 */  .float  1.0
/* 0270D8 8015B348 3F800000 */  .float  1.0
/* 0270DC 8015B34C 00000000 */  .float  0.0
/* 0270E0 8015B350 00000000 */  .float  0.0
/* 0270E4 8015B354 00000000 */  .float  0.0
/* 0270E8 8015B358 43FA0000 */  .float  500.0
/* 0270EC 8015B35C 448641A2 */  .float  1074.051025390625
/* 0270F0 8015B360 43480000 */  .float  200.0
/* 0270F4 8015B364 4285999A */  .float  66.80000305175781
/* 0270F8 8015B368 8015B500 */  .float  -1.9934759849607702e-39
/* 0270FC 8015B36C 8015B378 */  .float  -1.992926675962755e-39
/* 027100 8015B370 04031150 */  .float  1.5406925505908142e-36
/* 027104 8015B374 00000000 */  .float  0.0
/* 027108 8015B378 3F800000 */  .float  1.0
/* 02710C 8015B37C 3F800000 */  .float  1.0
/* 027110 8015B380 3F800000 */  .float  1.0
/* 027114 8015B384 00000000 */  .float  0.0
/* 027118 8015B388 00000000 */  .float  0.0
/* 02711C 8015B38C 00000000 */  .float  0.0
/* 027120 8015B390 00000000 */  .float  0.0
/* 027124 8015B394 00000000 */  .float  0.0
/* 027128 8015B398 00000000 */  .float  0.0
/* 02712C 8015B39C 42246666 */  .float  41.099998474121094
/* 027130 8015B3A0 8015B3B0 */  .float  -1.993005148676757e-39
/* 027134 8015B3A4 00000000 */  .float  0.0
/* 027138 8015B3A8 040314E0 */  .float  1.5408561325683457e-36
/* 02713C 8015B3AC 00000000 */  .float  0.0
/* 027140 8015B3B0 3F800000 */  .float  1.0
/* 027144 8015B3B4 3F800000 */  .float  1.0
/* 027148 8015B3B8 3F800000 */  .float  1.0
/* 02714C 8015B3BC 00000000 */  .float  0.0
/* 027150 8015B3C0 00000000 */  .float  0.0
/* 027154 8015B3C4 00000000 */  .float  0.0
/* 027158 8015B3C8 00000000 */  .float  0.0
/* 02715C 8015B3CC 00000000 */  .float  0.0
/* 027160 8015B3D0 00000000 */  .float  0.0
/* 027164 8015B3D4 411E6666 */  .float  9.899999618530273
/* 027168 8015B3D8 8015B3E8 */  .float  -1.9930836213907592e-39
/* 02716C 8015B3DC 00000000 */  .float  0.0
/* 027170 8015B3E0 04031648 */  .float  1.5409207044015818e-36
/* 027174 8015B3E4 00000000 */  .float  0.0
/* 027178 8015B3E8 3F800000 */  .float  1.0
/* 02717C 8015B3EC 3F800000 */  .float  1.0
/* 027180 8015B3F0 3F800000 */  .float  1.0
/* 027184 8015B3F4 00000000 */  .float  0.0
/* 027188 8015B3F8 00000000 */  .float  0.0
/* 02718C 8015B3FC 00000000 */  .float  0.0
/* 027190 8015B400 00000000 */  .float  0.0
/* 027194 8015B404 00000000 */  .float  0.0
/* 027198 8015B408 00000000 */  .float  0.0
/* 02719C 8015B40C 42253333 */  .float  41.29999923706055
/* 0271A0 8015B410 8015B420 */  .float  -1.9931620941047614e-39
/* 0271A4 8015B414 00000000 */  .float  0.0
/* 0271A8 8015B418 04031950 */  .float  1.5410598925754462e-36
/* 0271AC 8015B41C 00000000 */  .float  0.0
/* 0271B0 8015B420 3F800000 */  .float  1.0
/* 0271B4 8015B424 3F800000 */  .float  1.0
/* 0271B8 8015B428 3F800000 */  .float  1.0
/* 0271BC 8015B42C 00000000 */  .float  0.0
/* 0271C0 8015B430 00000000 */  .float  0.0
/* 0271C4 8015B434 00000000 */  .float  0.0
/* 0271C8 8015B438 00000000 */  .float  0.0
/* 0271CC 8015B43C 00000000 */  .float  0.0
/* 0271D0 8015B440 00000000 */  .float  0.0
/* 0271D4 8015B444 4114CCCD */  .float  9.300000190734863
/* 0271D8 8015B448 8015B458 */  .float  -1.9932405668187636e-39
/* 0271DC 8015B44C 00000000 */  .float  0.0
/* 0271E0 8015B450 04031A98 */  .float  1.5411187246901724e-36
/* 0271E4 8015B454 00000000 */  .float  0.0
/* 0271E8 8015B458 3F800000 */  .float  1.0
/* 0271EC 8015B45C 3F800000 */  .float  1.0
/* 0271F0 8015B460 3F800000 */  .float  1.0
/* 0271F4 8015B464 00000000 */  .float  0.0
/* 0271F8 8015B468 00000000 */  .float  0.0
/* 0271FC 8015B46C 00000000 */  .float  0.0
/* 027200 8015B470 00000000 */  .float  0.0
/* 027204 8015B474 00000000 */  .float  0.0
/* 027208 8015B478 00000000 */  .float  0.0
/* 02720C 8015B47C 42A7CCCD */  .float  83.9000015258789
/* 027210 8015B480 8015B490 */  .float  -1.9933190395327658e-39
/* 027214 8015B484 00000000 */  .float  0.0
/* 027218 8015B488 04031D70 */  .float  1.541249303286272e-36
/* 02721C 8015B48C 00000000 */  .float  0.0
/* 027220 8015B490 3F800000 */  .float  1.0
/* 027224 8015B494 3F800000 */  .float  1.0
/* 027228 8015B498 3F800000 */  .float  1.0
/* 02722C 8015B49C 00000000 */  .float  0.0
/* 027230 8015B4A0 00000000 */  .float  0.0
/* 027234 8015B4A4 00000000 */  .float  0.0
/* 027238 8015B4A8 00000000 */  .float  0.0
/* 02723C 8015B4AC 00000000 */  .float  0.0
/* 027240 8015B4B0 00000000 */  .float  0.0
/* 027244 8015B4B4 42AB3333 */  .float  85.5999984741211
/* 027248 8015B4B8 8015B4C8 */  .float  -1.993397512246768e-39
/* 02724C 8015B4BC 00000000 */  .float  0.0
/* 027250 8015B4C0 040327E8 */  .float  1.541730004711474e-36
/* 027254 8015B4C4 00000000 */  .float  0.0
/* 027258 8015B4C8 3F800000 */  .float  1.0
/* 02725C 8015B4CC 3F800000 */  .float  1.0
/* 027260 8015B4D0 3F800000 */  .float  1.0
/* 027264 8015B4D4 00000000 */  .float  0.0
/* 027268 8015B4D8 00000000 */  .float  0.0
/* 02726C 8015B4DC 00000000 */  .float  0.0
/* 027270 8015B4E0 00000000 */  .float  0.0
/* 027274 8015B4E4 00000000 */  .float  0.0
/* 027278 8015B4E8 00000000 */  .float  0.0
/* 02727C 8015B4EC 418C0000 */  .float  17.5
/* 027280 8015B4F0 00000000 */  .float  0.0
/* 027284 8015B4F4 00000000 */  .float  0.0
/* 027288 8015B4F8 04032D60 */  .float  1.541981117396281e-36
/* 02728C 8015B4FC 00000000 */  .float  0.0
/* 027290 8015B500 3F800000 */  .float  1.0
/* 027294 8015B504 3F800000 */  .float  1.0
/* 027298 8015B508 3F800000 */  .float  1.0
/* 02729C 8015B50C 00000000 */  .float  0.0
/* 0272A0 8015B510 00000000 */  .float  0.0
/* 0272A4 8015B514 00000000 */  .float  0.0
/* 0272A8 8015B518 44480000 */  .float  800.0
/* 0272AC 8015B51C 4485AE7F */  .float  1069.4530029296875
/* 0272B0 8015B520 43480000 */  .float  200.0
/* 0272B4 8015B524 42FFCCCD */  .float  127.9000015258789
/* 0272B8 8015B528 8015B538 */  .float  -1.9935544576747724e-39
/* 0272BC 8015B52C 00000000 */  .float  0.0
/* 0272C0 8015B530 040354B8 */  .float  1.543787693797264e-36
/* 0272C4 8015B534 00000000 */  .float  0.0
/* 0272C8 8015B538 3F800000 */  .float  1.0
/* 0272CC 8015B53C 3F800000 */  .float  1.0
/* 0272D0 8015B540 3F800000 */  .float  1.0
/* 0272D4 8015B544 00000000 */  .float  0.0
/* 0272D8 8015B548 C1652EB2 */  .float  -14.32390022277832
/* 0272DC 8015B54C 00000000 */  .float  0.0
/* 0272E0 8015B550 43480000 */  .float  200.0
/* 0272E4 8015B554 43065C22 */  .float  134.35989379882812
/* 0272E8 8015B558 44480000 */  .float  800.0
/* 0272EC 8015B55C 43B2C000 */  .float  357.5
/* 0272F0 8015B560 8015B570 */  .float  -1.9936329303887745e-39
/* 0272F4 8015B564 00000000 */  .float  0.0
/* 0272F8 8015B568 04035B28 */  .float  1.5440832893005226e-36
/* 0272FC 8015B56C 00000000 */  .float  0.0
/* 027300 8015B570 3F800000 */  .float  1.0
/* 027304 8015B574 3F800000 */  .float  1.0
/* 027308 8015B578 3F800000 */  .float  1.0
/* 02730C 8015B57C 00000000 */  .float  0.0
/* 027310 8015B580 00000000 */  .float  0.0
/* 027314 8015B584 00000000 */  .float  0.0
/* 027318 8015B588 00000000 */  .float  0.0
/* 02731C 8015B58C 00000000 */  .float  0.0
/* 027320 8015B590 00000000 */  .float  0.0
/* 027324 8015B594 43E5F333 */  .float  459.8999938964844
/* 027328 8015B598 00000000 */  .float  0.0
/* 02732C 8015B59C 00000000 */  .float  0.0
/* 027330 8015B5A0 04036010 */  .float  1.544308573252035e-36
/* 027334 8015B5A4 00000000 */  .float  0.0
/* 027338 8015B5A8 40DE9FBE */  .float  6.956999778747559
/* 02733C 8015B5AC 4003E76D */  .float  2.061000108718872
/* 027340 8015B5B0 40427EFA */  .float  3.0390000343322754
/* 027344 8015B5B4 40427EFA */  .float  3.0390000343322754
/* 027348 8015B5B8 4003E76D */  .float  2.061000108718872
/* 02734C 8015B5BC 40DE9FBE */  .float  6.956999778747559
/* 027350 8015B5C0 40DEB021 */  .float  6.959000110626221
/* 027354 8015B5C4 4003E76D */  .float  2.061000108718872
/* 027358 8015B5C8 40DEB021 */  .float  6.959000110626221
/* 02735C 8015B5CC 00000000 */  .float  0.0
/* 027360 8015B5D0 40DEC083 */  .float  6.960999965667725
/* 027364 8015B5D4 4003E76D */  .float  2.061000108718872
/* 027368 8015B5D8 4042C083 */  .float  3.0429999828338623
/* 02736C 8015B5DC 40429FBE */  .float  3.0409998893737793
/* 027370 8015B5E0 4003E76D */  .float  2.061000108718872
/* 027374 8015B5E4 40429FBE */  .float  3.0409998893737793
/* 027378 8015B5E8 4042C083 */  .float  3.0429999828338623
/* 02737C 8015B5EC 4003E76D */  .float  2.061000108718872
/* 027380 8015B5F0 40DEC083 */  .float  6.960999965667725
/* 027384 8015B5F4 00000000 */  .float  0.0
/* 027388 8015B5F8 401B74BC */  .float  2.428999900817871
/* 02738C 8015B5FC 3FBF5C29 */  .float  1.4950000047683716
/* 027390 8015B600 401B020C */  .float  2.421999931335449
/* 027394 8015B604 4043126F */  .float  3.0480000972747803
/* 027398 8015B608 4003E76D */  .float  2.061000108718872
/* 02739C 8015B60C 40DEC8B4 */  .float  6.961999893188477
/* 0273A0 8015B610 40433333 */  .float  3.049999952316284
/* 0273A4 8015B614 4003F7CF */  .float  2.062000036239624
/* 0273A8 8015B618 40426E98 */  .float  3.0380001068115234
/* 0273AC 8015B61C 00000000 */  .float  0.0
/* 0273B0 8015B620 401B020C */  .float  2.421999931335449
/* 0273B4 8015B624 3FBF5C29 */  .float  1.4950000047683716
/* 0273B8 8015B628 40F245A2 */  .float  7.571000099182129
/* 0273BC 8015B62C 40DEC8B4 */  .float  6.961999893188477
/* 0273C0 8015B630 4003E76D */  .float  2.061000108718872
/* 0273C4 8015B634 40DE76C9 */  .float  6.952000141143799
/* 0273C8 8015B638 40426E98 */  .float  3.0380001068115234
/* 0273CC 8015B63C 4003F7CF */  .float  2.062000036239624
/* 0273D0 8015B640 40DE6666 */  .float  6.949999809265137
/* 0273D4 8015B644 00000000 */  .float  0.0
/* 0273D8 8015B648 40F245A2 */  .float  7.571000099182129
/* 0273DC 8015B64C 3FBF5C29 */  .float  1.4950000047683716
/* 0273E0 8015B650 40F27EFA */  .float  7.578000068664551
/* 0273E4 8015B654 40DE76C9 */  .float  6.952000141143799
/* 0273E8 8015B658 4003E76D */  .float  2.061000108718872
/* 0273EC 8015B65C 40426E98 */  .float  3.0380001068115234
/* 0273F0 8015B660 40DE6666 */  .float  6.949999809265137
/* 0273F4 8015B664 4003F7CF */  .float  2.062000036239624
/* 0273F8 8015B668 40DEC8B4 */  .float  6.961999893188477
/* 0273FC 8015B66C 00000000 */  .float  0.0
/* 027400 8015B670 40F27EFA */  .float  7.578000068664551
/* 027404 8015B674 3FBF5C29 */  .float  1.4950000047683716
/* 027408 8015B678 401B74BC */  .float  2.428999900817871
/* 02740C 8015B67C 40426E98 */  .float  3.0380001068115234
/* 027410 8015B680 4003E76D */  .float  2.061000108718872
/* 027414 8015B684 4043126F */  .float  3.0480000972747803
/* 027418 8015B688 40DEC8B4 */  .float  6.961999893188477
/* 02741C 8015B68C 4003F7CF */  .float  2.062000036239624
/* 027420 8015B690 40433333 */  .float  3.049999952316284
/* 027424 8015B694 00000000 */  .float  0.0
/* 027428 8015B698 401B9581 */  .float  2.430999994277954
/* 02742C 8015B69C 3FBF7CEE */  .float  1.496000051498413
/* 027430 8015B6A0 401AF1AA */  .float  2.4210000038146973
/* 027434 8015B6A4 401B851F */  .float  2.430000066757202
/* 027438 8015B6A8 3FBF7CEE */  .float  1.496000051498413
/* 02743C 8015B6AC 40F2872B */  .float  7.578999996185303
/* 027440 8015B6B0 40434396 */  .float  3.0510001182556152
/* 027444 8015B6B4 40040831 */  .float  2.062999963760376
/* 027448 8015B6B8 40DEC083 */  .float  6.960999965667725
/* 02744C 8015B6BC 00000000 */  .float  0.0
/* 027450 8015B6C0 401AF1AA */  .float  2.4210000038146973
/* 027454 8015B6C4 3FBF7CEE */  .float  1.496000051498413
/* 027458 8015B6C8 40F2353F */  .float  7.568999767303467
/* 02745C 8015B6CC 40F2872B */  .float  7.578999996185303
/* 027460 8015B6D0 3FBF7CEE */  .float  1.496000051498413
/* 027464 8015B6D4 40F23D71 */  .float  7.570000171661377
/* 027468 8015B6D8 40DEC083 */  .float  6.960999965667725
/* 02746C 8015B6DC 40040831 */  .float  2.062999963760376
/* 027470 8015B6E0 40DE5E35 */  .float  6.948999881744385
/* 027474 8015B6E4 00000000 */  .float  0.0
/* 027478 8015B6E8 40F2353F */  .float  7.568999767303467
/* 02747C 8015B6EC 3FBF7CEE */  .float  1.496000051498413
/* 027480 8015B6F0 40F2872B */  .float  7.578999996185303
/* 027484 8015B6F4 40F23D71 */  .float  7.570000171661377
/* 027488 8015B6F8 3FBF7CEE */  .float  1.496000051498413
/* 02748C 8015B6FC 401AF1AA */  .float  2.4210000038146973
/* 027490 8015B700 40DE5E35 */  .float  6.948999881744385
/* 027494 8015B704 40040831 */  .float  2.062999963760376
/* 027498 8015B708 40427EFA */  .float  3.0390000343322754
/* 02749C 8015B70C 00000000 */  .float  0.0
/* 0274A0 8015B710 40F2872B */  .float  7.578999996185303
/* 0274A4 8015B714 3FBF7CEE */  .float  1.496000051498413
/* 0274A8 8015B718 401B9581 */  .float  2.430999994277954
/* 0274AC 8015B71C 401AF1AA */  .float  2.4210000038146973
/* 0274B0 8015B720 3FBF7CEE */  .float  1.496000051498413
/* 0274B4 8015B724 401B851F */  .float  2.430000066757202
/* 0274B8 8015B728 40427EFA */  .float  3.0390000343322754
/* 0274BC 8015B72C 40040831 */  .float  2.062999963760376
/* 0274C0 8015B730 40434396 */  .float  3.0510001182556152
/* 0274C4 8015B734 00000000 */  .float  0.0
/* 0274C8 8015B738 BB83126F */  .float  -0.004000000189989805
/* 0274CC 8015B73C 3F800000 */  .float  1.0
/* 0274D0 8015B740 BC1374BC */  .float  -0.008999999612569809
/* 0274D4 8015B744 BBE56042 */  .float  -0.007000000216066837
/* 0274D8 8015B748 3F800000 */  .float  1.0
/* 0274DC 8015B74C 41201CAC */  .float  10.006999969482422
/* 0274E0 8015B750 412024DD */  .float  10.008999824523926
/* 0274E4 8015B754 3F800000 */  .float  1.0
/* 0274E8 8015B758 41201062 */  .float  10.003999710083008
/* 0274EC 8015B75C 00000000 */  .float  0.0
/* 0274F0 8015B760 BC1374BC */  .float  -0.008999999612569809
/* 0274F4 8015B764 3F800000 */  .float  1.0
/* 0274F8 8015B768 BB83126F */  .float  -0.004000000189989805
/* 0274FC 8015B76C 41201062 */  .float  10.003999710083008
/* 027500 8015B770 3F800000 */  .float  1.0
/* 027504 8015B774 412024DD */  .float  10.008999824523926
/* 027508 8015B778 41201CAC */  .float  10.006999969482422
/* 02750C 8015B77C 3F800000 */  .float  1.0
/* 027510 8015B780 BBE56042 */  .float  -0.007000000216066837
/* 027514 8015B784 00000000 */  .float  0.0
/* 027518 8015B788 8015B5A8 */  .float  -1.9937114031027767e-39
/* 02751C 8015B78C 8015B5A8 */  .float  -1.9937114031027767e-39
/* 027520 8015B790 000C0000 */  .float  1.1020259538958945e-39
/* 027524 8015B794 00000000 */  .float  0.0
/* 027528 8015B798 3F800000 */  .float  1.0
/* 02752C 8015B79C 3F800000 */  .float  1.0
/* 027530 8015B7A0 3F800000 */  .float  1.0
/* 027534 8015B7A4 00000000 */  .float  0.0
/* 027538 8015B7A8 00000000 */  .float  0.0
/* 02753C 8015B7AC 00000000 */  .float  0.0
/* 027540 8015B7B0 00000000 */  .float  0.0
/* 027544 8015B7B4 00000000 */  .float  0.0
/* 027548 8015B7B8 00000000 */  .float  0.0
/* 02754C 8015B7BC 44ED8666 */  .float  1900.199951171875
/* 027550 8015B7C0 00000000 */  .float  0.0
/* 027554 8015B7C4 00000000 */  .float  0.0
/* 027558 8015B7C8 04036430 */  .float  1.544497983962861e-36
/* 02755C 8015B7CC 00000000 */  .float  0.0
/* 027560 8015B7D0 BB83126F */  .float  -0.004000000189989805
/* 027564 8015B7D4 3F800000 */  .float  1.0
/* 027568 8015B7D8 BC1374BC */  .float  -0.008999999612569809
/* 02756C 8015B7DC BBE56042 */  .float  -0.007000000216066837
/* 027570 8015B7E0 3F800000 */  .float  1.0
/* 027574 8015B7E4 41201CAC */  .float  10.006999969482422
/* 027578 8015B7E8 412024DD */  .float  10.008999824523926
/* 02757C 8015B7EC 3F800000 */  .float  1.0
/* 027580 8015B7F0 41201062 */  .float  10.003999710083008
/* 027584 8015B7F4 00000000 */  .float  0.0
/* 027588 8015B7F8 BC1374BC */  .float  -0.008999999612569809
/* 02758C 8015B7FC 3F800000 */  .float  1.0
/* 027590 8015B800 BB83126F */  .float  -0.004000000189989805
/* 027594 8015B804 41201062 */  .float  10.003999710083008
/* 027598 8015B808 3F800000 */  .float  1.0
/* 02759C 8015B80C 412024DD */  .float  10.008999824523926
/* 0275A0 8015B810 41201CAC */  .float  10.006999969482422
/* 0275A4 8015B814 3F800000 */  .float  1.0
/* 0275A8 8015B818 BBE56042 */  .float  -0.007000000216066837
/* 0275AC 8015B81C 00000000 */  .float  0.0
/* 0275B0 8015B820 8015B7D0 */  .float  -1.994484919855084e-39
/* 0275B4 8015B824 8015B7D0 */  .float  -1.994484919855084e-39
/* 0275B8 8015B828 00020000 */  .float  1.8367099231598242e-40
/* 0275BC 8015B82C 00000000 */  .float  0.0
/* 0275C0 8015B830 3F800000 */  .float  1.0
/* 0275C4 8015B834 3F800000 */  .float  1.0
/* 0275C8 8015B838 3F800000 */  .float  1.0
/* 0275CC 8015B83C 00000000 */  .float  0.0
/* 0275D0 8015B840 00000000 */  .float  0.0
/* 0275D4 8015B844 00000000 */  .float  0.0
/* 0275D8 8015B848 00000000 */  .float  0.0
/* 0275DC 8015B84C 00000000 */  .float  0.0
/* 0275E0 8015B850 00000000 */  .float  0.0
/* 0275E4 8015B854 447A0000 */  .float  1000.0
/* 0275E8 8015B858 00000000 */  .float  0.0
/* 0275EC 8015B85C 00000000 */  .float  0.0
/* 0275F0 8015B860 04036710 */  .float  1.544629997488588e-36
/* 0275F4 8015B864 00000000 */  .float  0.0
/* 0275F8 8015B868 BB83126F */  .float  -0.004000000189989805
/* 0275FC 8015B86C 3F800000 */  .float  1.0
/* 027600 8015B870 BC1374BC */  .float  -0.008999999612569809
/* 027604 8015B874 BBE56042 */  .float  -0.007000000216066837
/* 027608 8015B878 3F800000 */  .float  1.0
/* 02760C 8015B87C 41201CAC */  .float  10.006999969482422
/* 027610 8015B880 412024DD */  .float  10.008999824523926
/* 027614 8015B884 3F800000 */  .float  1.0
/* 027618 8015B888 41201062 */  .float  10.003999710083008
/* 02761C 8015B88C 00000000 */  .float  0.0
/* 027620 8015B890 BC1374BC */  .float  -0.008999999612569809
/* 027624 8015B894 3F800000 */  .float  1.0
/* 027628 8015B898 BB83126F */  .float  -0.004000000189989805
/* 02762C 8015B89C 41201062 */  .float  10.003999710083008
/* 027630 8015B8A0 3F800000 */  .float  1.0
/* 027634 8015B8A4 412024DD */  .float  10.008999824523926
/* 027638 8015B8A8 41201CAC */  .float  10.006999969482422
/* 02763C 8015B8AC 3F800000 */  .float  1.0
/* 027640 8015B8B0 BBE56042 */  .float  -0.007000000216066837
/* 027644 8015B8B4 00000000 */  .float  0.0
/* 027648 8015B8B8 8015B868 */  .float  -1.9946979172216614e-39
/* 02764C 8015B8BC 8015B868 */  .float  -1.9946979172216614e-39
/* 027650 8015B8C0 00020000 */  .float  1.8367099231598242e-40
/* 027654 8015B8C4 00000000 */  .float  0.0
/* 027658 8015B8C8 3F800000 */  .float  1.0
/* 02765C 8015B8CC 3F800000 */  .float  1.0
/* 027660 8015B8D0 3F800000 */  .float  1.0
/* 027664 8015B8D4 00000000 */  .float  0.0
/* 027668 8015B8D8 00000000 */  .float  0.0
/* 02766C 8015B8DC 00000000 */  .float  0.0
/* 027670 8015B8E0 00000000 */  .float  0.0
/* 027674 8015B8E4 00000000 */  .float  0.0
/* 027678 8015B8E8 00000000 */  .float  0.0
/* 02767C 8015B8EC 447A0000 */  .float  1000.0
/* 027680 8015B8F0 00000000 */  .float  0.0
/* 027684 8015B8F4 00000000 */  .float  0.0
/* 027688 8015B8F8 04036800 */  .float  1.5446730453774122e-36
/* 02768C 8015B8FC 00000000 */  .float  0.0
/* 027690 8015B900 BB83126F */  .float  -0.004000000189989805
/* 027694 8015B904 3F800000 */  .float  1.0
/* 027698 8015B908 BC1374BC */  .float  -0.008999999612569809
/* 02769C 8015B90C BBE56042 */  .float  -0.007000000216066837
/* 0276A0 8015B910 3F800000 */  .float  1.0
/* 0276A4 8015B914 41201CAC */  .float  10.006999969482422
/* 0276A8 8015B918 412024DD */  .float  10.008999824523926
/* 0276AC 8015B91C 3F800000 */  .float  1.0
/* 0276B0 8015B920 41201062 */  .float  10.003999710083008
/* 0276B4 8015B924 00000000 */  .float  0.0
/* 0276B8 8015B928 BC1374BC */  .float  -0.008999999612569809
/* 0276BC 8015B92C 3F800000 */  .float  1.0
/* 0276C0 8015B930 BB83126F */  .float  -0.004000000189989805
/* 0276C4 8015B934 41201062 */  .float  10.003999710083008
/* 0276C8 8015B938 3F800000 */  .float  1.0
/* 0276CC 8015B93C 412024DD */  .float  10.008999824523926
/* 0276D0 8015B940 41201CAC */  .float  10.006999969482422
/* 0276D4 8015B944 3F800000 */  .float  1.0
/* 0276D8 8015B948 BBE56042 */  .float  -0.007000000216066837
/* 0276DC 8015B94C 00000000 */  .float  0.0
/* 0276E0 8015B950 8015B900 */  .float  -1.9949109145882388e-39
/* 0276E4 8015B954 8015B900 */  .float  -1.9949109145882388e-39
/* 0276E8 8015B958 00020000 */  .float  1.8367099231598242e-40
/* 0276EC 8015B95C 00000000 */  .float  0.0
/* 0276F0 8015B960 3F800000 */  .float  1.0
/* 0276F4 8015B964 3F800000 */  .float  1.0
/* 0276F8 8015B968 3F800000 */  .float  1.0
/* 0276FC 8015B96C 00000000 */  .float  0.0
/* 027700 8015B970 00000000 */  .float  0.0
/* 027704 8015B974 00000000 */  .float  0.0
/* 027708 8015B978 00000000 */  .float  0.0
/* 02770C 8015B97C 00000000 */  .float  0.0
/* 027710 8015B980 00000000 */  .float  0.0
/* 027714 8015B984 44ED8000 */  .float  1900.0
/* 027718 8015B988 00000000 */  .float  0.0
/* 02771C 8015B98C 00000000 */  .float  0.0
/* 027720 8015B990 04036970 */  .float  1.5447390521402757e-36
/* 027724 8015B994 00000000 */  .float  0.0
/* 027728 8015B998 407FDF3B */  .float  3.997999906539917
/* 02772C 8015B99C 41A00000 */  .float  20.0
/* 027730 8015B9A0 40A051EC */  .float  5.010000228881836
/* 027734 8015B9A4 412028F6 */  .float  10.010000228881836
/* 027738 8015B9A8 41A00000 */  .float  20.0
/* 02773C 8015B9AC BB449BA6 */  .float  -0.003000000026077032
/* 027740 8015B9B0 BC1374BC */  .float  -0.008999999612569809
/* 027744 8015B9B4 41A00000 */  .float  20.0
/* 027748 8015B9B8 BB449BA6 */  .float  -0.003000000026077032
/* 02774C 8015B9BC 00300000 */  .float  4.408103815583578e-39
/* 027750 8015B9C0 40804189 */  .float  4.007999897003174
/* 027754 8015B9C4 41A00000 */  .float  20.0
/* 027758 8015B9C8 40A028F6 */  .float  5.005000114440918
/* 02775C 8015B9CC BB83126F */  .float  -0.004000000189989805
/* 027760 8015B9D0 41A00000 */  .float  20.0
/* 027764 8015B9D4 BC1374BC */  .float  -0.008999999612569809
/* 027768 8015B9D8 BBC49BA6 */  .float  -0.006000000052154064
/* 02776C 8015B9DC 41A00000 */  .float  20.0
/* 027770 8015B9E0 40A04189 */  .float  5.007999897003174
/* 027774 8015B9E4 00300000 */  .float  4.408103815583578e-39
/* 027778 8015B9E8 407F5C29 */  .float  3.990000009536743
/* 02777C 8015B9EC 41A00000 */  .float  20.0
/* 027780 8015B9F0 40A00000 */  .float  5.0
/* 027784 8015B9F4 41201062 */  .float  10.003999710083008
/* 027788 8015B9F8 41A00000 */  .float  20.0
/* 02778C 8015B9FC 412024DD */  .float  10.008999824523926
/* 027790 8015BA00 41201062 */  .float  10.003999710083008
/* 027794 8015BA04 41A00000 */  .float  20.0
/* 027798 8015BA08 BC1374BC */  .float  -0.008999999612569809
/* 02779C 8015BA0C 00300000 */  .float  4.408103815583578e-39
/* 0277A0 8015BA10 BB83126F */  .float  -0.004000000189989805
/* 0277A4 8015BA14 40C69FBE */  .float  6.206999778747559
/* 0277A8 8015BA18 412024DD */  .float  10.008999824523926
/* 0277AC 8015BA1C 40804189 */  .float  4.007999897003174
/* 0277B0 8015BA20 40C69FBE */  .float  6.206999778747559
/* 0277B4 8015BA24 409FD70A */  .float  4.994999885559082
/* 0277B8 8015BA28 BBC49BA6 */  .float  -0.006000000052154064
/* 0277BC 8015BA2C 40C69FBE */  .float  6.206999778747559
/* 0277C0 8015BA30 409FBE77 */  .float  4.992000102996826
/* 0277C4 8015BA34 00300000 */  .float  4.408103815583578e-39
/* 0277C8 8015BA38 BC1374BC */  .float  -0.008999999612569809
/* 0277CC 8015BA3C 40C69FBE */  .float  6.206999778747559
/* 0277D0 8015BA40 41200C4A */  .float  10.003000259399414
/* 0277D4 8015BA44 412028F6 */  .float  10.010000228881836
/* 0277D8 8015BA48 40C69FBE */  .float  6.206999778747559
/* 0277DC 8015BA4C 41200C4A */  .float  10.003000259399414
/* 0277E0 8015BA50 407FDF3B */  .float  3.997999906539917
/* 0277E4 8015BA54 40C69FBE */  .float  6.206999778747559
/* 0277E8 8015BA58 409FAE14 */  .float  4.989999771118164
/* 0277EC 8015BA5C 00300000 */  .float  4.408103815583578e-39
/* 0277F0 8015BA60 8015B998 */  .float  -1.995123911954816e-39
/* 0277F4 8015BA64 8015B998 */  .float  -1.995123911954816e-39
/* 0277F8 8015BA68 00050000 */  .float  4.5917748078995606e-40
/* 0277FC 8015BA6C 00000000 */  .float  0.0
/* 027800 8015BA70 3F800000 */  .float  1.0
/* 027804 8015BA74 3F800000 */  .float  1.0
/* 027808 8015BA78 3F800000 */  .float  1.0
/* 02780C 8015BA7C 00000000 */  .float  0.0
/* 027810 8015BA80 00000000 */  .float  0.0
/* 027814 8015BA84 00000000 */  .float  0.0
/* 027818 8015BA88 00000000 */  .float  0.0
/* 02781C 8015BA8C 00000000 */  .float  0.0
/* 027820 8015BA90 00000000 */  .float  0.0
/* 027824 8015BA94 44ED8000 */  .float  1900.0
/* 027828 8015BA98 00000000 */  .float  0.0
/* 02782C 8015BA9C 00000000 */  .float  0.0
/* 027830 8015BAA0 04036F60 */  .float  1.5450116887694948e-36
/* 027834 8015BAA4 00000000 */  .float  0.0
/* 027838 8015BAA8 BC1374BC */  .float  -0.008999999612569809
/* 02783C 8015BAAC 41A00000 */  .float  20.0
/* 027840 8015BAB0 BB83126F */  .float  -0.004000000189989805
/* 027844 8015BAB4 BC23D70A */  .float  -0.009999999776482582
/* 027848 8015BAB8 41A00000 */  .float  20.0
/* 02784C 8015BABC 3F804189 */  .float  1.0019999742507935
/* 027850 8015BAC0 40A051EC */  .float  5.010000228881836
/* 027854 8015BAC4 41A00000 */  .float  20.0
/* 027858 8015BAC8 3F8020C5 */  .float  1.0010000467300415
/* 02785C 8015BACC 00300000 */  .float  4.408103815583578e-39
/* 027860 8015BAD0 BC23D70A */  .float  -0.009999999776482582
/* 027864 8015BAD4 41A00000 */  .float  20.0
/* 027868 8015BAD8 410FF7CF */  .float  8.998000144958496
/* 02786C 8015BADC BC23D70A */  .float  -0.009999999776482582
/* 027870 8015BAE0 41A00000 */  .float  20.0
/* 027874 8015BAE4 41200419 */  .float  10.00100040435791
/* 027878 8015BAE8 412028F6 */  .float  10.010000228881836
/* 02787C 8015BAEC 419FD4FE */  .float  19.979000091552734
/* 027880 8015BAF0 41200000 */  .float  10.0
/* 027884 8015BAF4 00300000 */  .float  4.408103815583578e-39
/* 027888 8015BAF8 40A00000 */  .float  5.0
/* 02788C 8015BAFC 41A00000 */  .float  20.0
/* 027890 8015BB00 410FD70A */  .float  8.989999771118164
/* 027894 8015BB04 BC23D70A */  .float  -0.009999999776482582
/* 027898 8015BB08 41A00000 */  .float  20.0
/* 02789C 8015BB0C 410FFBE7 */  .float  8.99899959564209
/* 0278A0 8015BB10 412028F6 */  .float  10.010000228881836
/* 0278A4 8015BB14 419FD4FE */  .float  19.979000091552734
/* 0278A8 8015BB18 41200419 */  .float  10.00100040435791
/* 0278AC 8015BB1C 00300000 */  .float  4.408103815583578e-39
/* 0278B0 8015BB20 409FE76D */  .float  4.997000217437744
/* 0278B4 8015BB24 41A00000 */  .float  20.0
/* 0278B8 8015BB28 3F7D70A4 */  .float  0.9900000095367432
/* 0278BC 8015BB2C 409FCED9 */  .float  4.99399995803833
/* 0278C0 8015BB30 41A00000 */  .float  20.0
/* 0278C4 8015BB34 411020C5 */  .float  9.008000373840332
/* 0278C8 8015BB38 41201CAC */  .float  10.006999969482422
/* 0278CC 8015BB3C 419FD4FE */  .float  19.979000091552734
/* 0278D0 8015BB40 41201CAC */  .float  10.006999969482422
/* 0278D4 8015BB44 00300000 */  .float  4.408103815583578e-39
/* 0278D8 8015BB48 412028F6 */  .float  10.010000228881836
/* 0278DC 8015BB4C 419FD4FE */  .float  19.979000091552734
/* 0278E0 8015BB50 BA83126F */  .float  -0.0010000000474974513
/* 0278E4 8015BB54 BC23D70A */  .float  -0.009999999776482582
/* 0278E8 8015BB58 41A00000 */  .float  20.0
/* 0278EC 8015BB5C BA83126F */  .float  -0.0010000000474974513
/* 0278F0 8015BB60 40A00000 */  .float  5.0
/* 0278F4 8015BB64 41A00000 */  .float  20.0
/* 0278F8 8015BB68 3F8147AE */  .float  1.0099999904632568
/* 0278FC 8015BB6C 00300000 */  .float  4.408103815583578e-39
/* 027900 8015BB70 41200C4A */  .float  10.003000259399414
/* 027904 8015BB74 419FD4FE */  .float  19.979000091552734
/* 027908 8015BB78 412028F6 */  .float  10.010000228881836
/* 02790C 8015BB7C 41201062 */  .float  10.003999710083008
/* 027910 8015BB80 419FD4FE */  .float  19.979000091552734
/* 027914 8015BB84 BC1374BC */  .float  -0.008999999612569809
/* 027918 8015BB88 409FBE77 */  .float  4.992000102996826
/* 02791C 8015BB8C 41A00000 */  .float  20.0
/* 027920 8015BB90 3F7E76C9 */  .float  0.9940000176429749
/* 027924 8015BB94 00300000 */  .float  4.408103815583578e-39
/* 027928 8015BB98 40A04189 */  .float  5.007999897003174
/* 02792C 8015BB9C 40C420C5 */  .float  6.129000186920166
/* 027930 8015BBA0 3F7E76C9 */  .float  0.9940000176429749
/* 027934 8015BBA4 BBA3D70A */  .float  -0.004999999888241291
/* 027938 8015BBA8 40C420C5 */  .float  6.129000186920166
/* 02793C 8015BBAC 3F7DF3B6 */  .float  0.9919999837875366
/* 027940 8015BBB0 BB449BA6 */  .float  -0.003000000026077032
/* 027944 8015BBB4 40C420C5 */  .float  6.129000186920166
/* 027948 8015BBB8 411028F6 */  .float  9.010000228881836
/* 02794C 8015BBBC 00200000 */  .float  2.938735877055719e-39
/* 027950 8015BBC0 40A01893 */  .float  5.002999782562256
/* 027954 8015BBC4 40C420C5 */  .float  6.129000186920166
/* 027958 8015BBC8 3F7D70A4 */  .float  0.9900000095367432
/* 02795C 8015BBCC BC03126F */  .float  -0.00800000037997961
/* 027960 8015BBD0 40C420C5 */  .float  6.129000186920166
/* 027964 8015BBD4 41101893 */  .float  9.005999565124512
/* 027968 8015BBD8 40A028F6 */  .float  5.005000114440918
/* 02796C 8015BBDC 40C420C5 */  .float  6.129000186920166
/* 027970 8015BBE0 411020C5 */  .float  9.008000373840332
/* 027974 8015BBE4 00200000 */  .float  2.938735877055719e-39
/* 027978 8015BBE8 8015BAA8 */  .float  -1.9955050651371125e-39
/* 02797C 8015BBEC 8015BAA8 */  .float  -1.9955050651371125e-39
/* 027980 8015BBF0 00080000 */  .float  7.346839692639297e-40
/* 027984 8015BBF4 00000000 */  .float  0.0
/* 027988 8015BBF8 3F800000 */  .float  1.0
/* 02798C 8015BBFC 3F800000 */  .float  1.0
/* 027990 8015BC00 3F800000 */  .float  1.0
/* 027994 8015BC04 00000000 */  .float  0.0
/* 027998 8015BC08 00000000 */  .float  0.0
/* 02799C 8015BC0C 00000000 */  .float  0.0
/* 0279A0 8015BC10 00000000 */  .float  0.0
/* 0279A4 8015BC14 00000000 */  .float  0.0
/* 0279A8 8015BC18 00000000 */  .float  0.0
/* 0279AC 8015BC1C 44ED8000 */  .float  1900.0
/* 0279B0 8015BC20 00000000 */  .float  0.0
/* 0279B4 8015BC24 00000000 */  .float  0.0
/* 0279B8 8015BC28 040374A0 */  .float  1.5452527569469095e-36
/* 0279BC 8015BC2C 00000000 */  .float  0.0
/* 0279C0 8015BC30 BB83126F */  .float  -0.004000000189989805
/* 0279C4 8015BC34 41980000 */  .float  19.0
/* 0279C8 8015BC38 BC1374BC */  .float  -0.008999999612569809
/* 0279CC 8015BC3C BBE56042 */  .float  -0.007000000216066837
/* 0279D0 8015BC40 41980000 */  .float  19.0
/* 0279D4 8015BC44 41201CAC */  .float  10.006999969482422
/* 0279D8 8015BC48 412024DD */  .float  10.008999824523926
/* 0279DC 8015BC4C 41980000 */  .float  19.0
/* 0279E0 8015BC50 41201062 */  .float  10.003999710083008
/* 0279E4 8015BC54 00010000 */  .float  9.183549615799121e-41
/* 0279E8 8015BC58 BC1374BC */  .float  -0.008999999612569809
/* 0279EC 8015BC5C 41980000 */  .float  19.0
/* 0279F0 8015BC60 BB83126F */  .float  -0.004000000189989805
/* 0279F4 8015BC64 41201062 */  .float  10.003999710083008
/* 0279F8 8015BC68 41980000 */  .float  19.0
/* 0279FC 8015BC6C 412024DD */  .float  10.008999824523926
/* 027A00 8015BC70 41201CAC */  .float  10.006999969482422
/* 027A04 8015BC74 41980000 */  .float  19.0
/* 027A08 8015BC78 BBE56042 */  .float  -0.007000000216066837
/* 027A0C 8015BC7C 00010000 */  .float  9.183549615799121e-41
/* 027A10 8015BC80 8015BC30 */  .float  -1.9960543741351278e-39
/* 027A14 8015BC84 8015BC30 */  .float  -1.9960543741351278e-39
/* 027A18 8015BC88 00020000 */  .float  1.8367099231598242e-40
/* 027A1C 8015BC8C 00000000 */  .float  0.0
/* 027A20 8015BC90 3F800000 */  .float  1.0
/* 027A24 8015BC94 3F800000 */  .float  1.0
/* 027A28 8015BC98 3F800000 */  .float  1.0
/* 027A2C 8015BC9C 00000000 */  .float  0.0
/* 027A30 8015BCA0 00000000 */  .float  0.0
/* 027A34 8015BCA4 00000000 */  .float  0.0
/* 027A38 8015BCA8 00000000 */  .float  0.0
/* 027A3C 8015BCAC 00000000 */  .float  0.0
/* 027A40 8015BCB0 00000000 */  .float  0.0
/* 027A44 8015BCB4 45034000 */  .float  2100.0
/* 027A48 8015BCB8 00000000 */  .float  0.0
/* 027A4C 8015BCBC 00000000 */  .float  0.0
/* 027A50 8015BCC0 04037920 */  .float  1.545459386813265e-36
/* 027A54 8015BCC4 00000000 */  .float  0.0
/* 027A58 8015BCC8 412024DD */  .float  10.008999824523926
/* 027A5C 8015BCCC 41980000 */  .float  19.0
/* 027A60 8015BCD0 BB83126F */  .float  -0.004000000189989805
/* 027A64 8015BCD4 BBE56042 */  .float  -0.007000000216066837
/* 027A68 8015BCD8 41980000 */  .float  19.0
/* 027A6C 8015BCDC BBE56042 */  .float  -0.007000000216066837
/* 027A70 8015BCE0 BB83126F */  .float  -0.004000000189989805
/* 027A74 8015BCE4 41980000 */  .float  19.0
/* 027A78 8015BCE8 412024DD */  .float  10.008999824523926
/* 027A7C 8015BCEC 00010000 */  .float  9.183549615799121e-41
/* 027A80 8015BCF0 41201062 */  .float  10.003999710083008
/* 027A84 8015BCF4 41980000 */  .float  19.0
/* 027A88 8015BCF8 BC1374BC */  .float  -0.008999999612569809
/* 027A8C 8015BCFC BC1374BC */  .float  -0.008999999612569809
/* 027A90 8015BD00 41980000 */  .float  19.0
/* 027A94 8015BD04 41201062 */  .float  10.003999710083008
/* 027A98 8015BD08 41201CAC */  .float  10.006999969482422
/* 027A9C 8015BD0C 41980000 */  .float  19.0
/* 027AA0 8015BD10 41201CAC */  .float  10.006999969482422
/* 027AA4 8015BD14 00010000 */  .float  9.183549615799121e-41
/* 027AA8 8015BD18 8015BCC8 */  .float  -1.9962673715017052e-39
/* 027AAC 8015BD1C 8015BCC8 */  .float  -1.9962673715017052e-39
/* 027AB0 8015BD20 00020000 */  .float  1.8367099231598242e-40
/* 027AB4 8015BD24 00000000 */  .float  0.0
/* 027AB8 8015BD28 3F800000 */  .float  1.0
/* 027ABC 8015BD2C 3F800000 */  .float  1.0
/* 027AC0 8015BD30 3F800000 */  .float  1.0
/* 027AC4 8015BD34 00000000 */  .float  0.0
/* 027AC8 8015BD38 00000000 */  .float  0.0
/* 027ACC 8015BD3C 00000000 */  .float  0.0
/* 027AD0 8015BD40 00000000 */  .float  0.0
/* 027AD4 8015BD44 00000000 */  .float  0.0
/* 027AD8 8015BD48 00000000 */  .float  0.0
/* 027ADC 8015BD4C 44C80000 */  .float  1600.0
/* 027AE0 8015BD50 00000000 */  .float  0.0
/* 027AE4 8015BD54 00000000 */  .float  0.0
/* 027AE8 8015BD58 04037C40 */  .float  1.545602879776012e-36
/* 027AEC 8015BD5C 00000000 */  .float  0.0
/* 027AF0 8015BD60 BC1374BC */  .float  -0.008999999612569809
/* 027AF4 8015BD64 41980000 */  .float  19.0
/* 027AF8 8015BD68 41201062 */  .float  10.003999710083008
/* 027AFC 8015BD6C 41201CAC */  .float  10.006999969482422
/* 027B00 8015BD70 41980000 */  .float  19.0
/* 027B04 8015BD74 41201CAC */  .float  10.006999969482422
/* 027B08 8015BD78 41201062 */  .float  10.003999710083008
/* 027B0C 8015BD7C 41980000 */  .float  19.0
/* 027B10 8015BD80 BC1374BC */  .float  -0.008999999612569809
/* 027B14 8015BD84 00010000 */  .float  9.183549615799121e-41
/* 027B18 8015BD88 BB83126F */  .float  -0.004000000189989805
/* 027B1C 8015BD8C 41980000 */  .float  19.0
/* 027B20 8015BD90 412024DD */  .float  10.008999824523926
/* 027B24 8015BD94 412024DD */  .float  10.008999824523926
/* 027B28 8015BD98 41980000 */  .float  19.0
/* 027B2C 8015BD9C BB83126F */  .float  -0.004000000189989805
/* 027B30 8015BDA0 BBE56042 */  .float  -0.007000000216066837
/* 027B34 8015BDA4 41980000 */  .float  19.0
/* 027B38 8015BDA8 BBE56042 */  .float  -0.007000000216066837
/* 027B3C 8015BDAC 00010000 */  .float  9.183549615799121e-41
/* 027B40 8015BDB0 8015BD60 */  .float  -1.9964803688682826e-39
/* 027B44 8015BDB4 8015BD60 */  .float  -1.9964803688682826e-39
/* 027B48 8015BDB8 00020000 */  .float  1.8367099231598242e-40
/* 027B4C 8015BDBC 00000000 */  .float  0.0
/* 027B50 8015BDC0 3F800000 */  .float  1.0
/* 027B54 8015BDC4 3F800000 */  .float  1.0
/* 027B58 8015BDC8 3F800000 */  .float  1.0
/* 027B5C 8015BDCC 00000000 */  .float  0.0
/* 027B60 8015BDD0 00000000 */  .float  0.0
/* 027B64 8015BDD4 00000000 */  .float  0.0
/* 027B68 8015BDD8 00000000 */  .float  0.0
/* 027B6C 8015BDDC 00000000 */  .float  0.0
/* 027B70 8015BDE0 00000000 */  .float  0.0
/* 027B74 8015BDE4 44C80000 */  .float  1600.0
/* 027B78 8015BDE8 00000000 */  .float  0.0
/* 027B7C 8015BDEC 00000000 */  .float  0.0
/* 027B80 8015BDF0 04037FC8 */  .float  1.5457650268239158e-36
/* 027B84 8015BDF4 00000000 */  .float  0.0
/* 027B88 8015BDF8 BC1374BC */  .float  -0.008999999612569809
/* 027B8C 8015BDFC 41980000 */  .float  19.0
/* 027B90 8015BE00 41201062 */  .float  10.003999710083008
/* 027B94 8015BE04 41201CAC */  .float  10.006999969482422
/* 027B98 8015BE08 41980000 */  .float  19.0
/* 027B9C 8015BE0C 41201CAC */  .float  10.006999969482422
/* 027BA0 8015BE10 41201062 */  .float  10.003999710083008
/* 027BA4 8015BE14 41980000 */  .float  19.0
/* 027BA8 8015BE18 BC1374BC */  .float  -0.008999999612569809
/* 027BAC 8015BE1C 00010000 */  .float  9.183549615799121e-41
/* 027BB0 8015BE20 BB83126F */  .float  -0.004000000189989805
/* 027BB4 8015BE24 41980000 */  .float  19.0
/* 027BB8 8015BE28 412024DD */  .float  10.008999824523926
/* 027BBC 8015BE2C 412024DD */  .float  10.008999824523926
/* 027BC0 8015BE30 41980000 */  .float  19.0
/* 027BC4 8015BE34 BB83126F */  .float  -0.004000000189989805
/* 027BC8 8015BE38 BBE56042 */  .float  -0.007000000216066837
/* 027BCC 8015BE3C 41980000 */  .float  19.0
/* 027BD0 8015BE40 BBE56042 */  .float  -0.007000000216066837
/* 027BD4 8015BE44 00010000 */  .float  9.183549615799121e-41
/* 027BD8 8015BE48 8015BDF8 */  .float  -1.99669336623486e-39
/* 027BDC 8015BE4C 8015BDF8 */  .float  -1.99669336623486e-39
/* 027BE0 8015BE50 00020000 */  .float  1.8367099231598242e-40
/* 027BE4 8015BE54 00000000 */  .float  0.0
/* 027BE8 8015BE58 3F800000 */  .float  1.0
/* 027BEC 8015BE5C 3F800000 */  .float  1.0
/* 027BF0 8015BE60 3F800000 */  .float  1.0
/* 027BF4 8015BE64 00000000 */  .float  0.0
/* 027BF8 8015BE68 00000000 */  .float  0.0
/* 027BFC 8015BE6C 00000000 */  .float  0.0
/* 027C00 8015BE70 00000000 */  .float  0.0
/* 027C04 8015BE74 00000000 */  .float  0.0
/* 027C08 8015BE78 00000000 */  .float  0.0
/* 027C0C 8015BE7C 44A28000 */  .float  1300.0
/* 027C10 8015BE80 00000000 */  .float  0.0
/* 027C14 8015BE84 00000000 */  .float  0.0
/* 027C18 8015BE88 040382A0 */  .float  1.5458956054200154e-36
/* 027C1C 8015BE8C 00000000 */  .float  0.0
/* 027C20 8015BE90 BB83126F */  .float  -0.004000000189989805
/* 027C24 8015BE94 41980000 */  .float  19.0
/* 027C28 8015BE98 BC1374BC */  .float  -0.008999999612569809
/* 027C2C 8015BE9C BBE56042 */  .float  -0.007000000216066837
/* 027C30 8015BEA0 41980000 */  .float  19.0
/* 027C34 8015BEA4 41201CAC */  .float  10.006999969482422
/* 027C38 8015BEA8 412024DD */  .float  10.008999824523926
/* 027C3C 8015BEAC 41980000 */  .float  19.0
/* 027C40 8015BEB0 41201062 */  .float  10.003999710083008
/* 027C44 8015BEB4 00010000 */  .float  9.183549615799121e-41
/* 027C48 8015BEB8 BC1374BC */  .float  -0.008999999612569809
/* 027C4C 8015BEBC 41980000 */  .float  19.0
/* 027C50 8015BEC0 BB83126F */  .float  -0.004000000189989805
/* 027C54 8015BEC4 41201062 */  .float  10.003999710083008
/* 027C58 8015BEC8 41980000 */  .float  19.0
/* 027C5C 8015BECC 412024DD */  .float  10.008999824523926
/* 027C60 8015BED0 41201CAC */  .float  10.006999969482422
/* 027C64 8015BED4 41980000 */  .float  19.0
/* 027C68 8015BED8 BBE56042 */  .float  -0.007000000216066837
/* 027C6C 8015BEDC 00010000 */  .float  9.183549615799121e-41
/* 027C70 8015BEE0 8015BE90 */  .float  -1.9969063636014373e-39
/* 027C74 8015BEE4 8015BE90 */  .float  -1.9969063636014373e-39
/* 027C78 8015BEE8 00020000 */  .float  1.8367099231598242e-40
/* 027C7C 8015BEEC 00000000 */  .float  0.0
/* 027C80 8015BEF0 3F800000 */  .float  1.0
/* 027C84 8015BEF4 3F800000 */  .float  1.0
/* 027C88 8015BEF8 3F800000 */  .float  1.0
/* 027C8C 8015BEFC 00000000 */  .float  0.0
/* 027C90 8015BF00 00000000 */  .float  0.0
/* 027C94 8015BF04 00000000 */  .float  0.0
/* 027C98 8015BF08 00000000 */  .float  0.0
/* 027C9C 8015BF0C 00000000 */  .float  0.0
/* 027CA0 8015BF10 00000000 */  .float  0.0
/* 027CA4 8015BF14 44C80000 */  .float  1600.0
/* 027CA8 8015BF18 00000000 */  .float  0.0
/* 027CAC 8015BF1C 00000000 */  .float  0.0
/* 027CB0 8015BF20 040385A0 */  .float  1.5460333586642524e-36
/* 027CB4 8015BF24 00000000 */  .float  0.0
/* 027CB8 8015BF28 403FCED9 */  .float  2.996999979019165
/* 027CBC 8015BF2C 42200000 */  .float  40.0
/* 027CC0 8015BF30 BC1374BC */  .float  -0.008999999612569809
/* 027CC4 8015BF34 403F9DB2 */  .float  2.99399995803833
/* 027CC8 8015BF38 42200000 */  .float  40.0
/* 027CCC 8015BF3C 412020C5 */  .float  10.008000373840332
/* 027CD0 8015BF40 412020C5 */  .float  10.008000373840332
/* 027CD4 8015BF44 42200000 */  .float  40.0
/* 027CD8 8015BF48 41201893 */  .float  10.005999565124512
/* 027CDC 8015BF4C 00300000 */  .float  4.408103815583578e-39
/* 027CE0 8015BF50 403F7CEE */  .float  2.992000102996826
/* 027CE4 8015BF54 42200000 */  .float  40.0
/* 027CE8 8015BF58 BBC49BA6 */  .float  -0.006000000052154064
/* 027CEC 8015BF5C 41200C4A */  .float  10.003000259399414
/* 027CF0 8015BF60 42200000 */  .float  40.0
/* 027CF4 8015BF64 412024DD */  .float  10.008999824523926
/* 027CF8 8015BF68 41201893 */  .float  10.005999565124512
/* 027CFC 8015BF6C 42200000 */  .float  40.0
/* 027D00 8015BF70 BC03126F */  .float  -0.00800000037997961
/* 027D04 8015BF74 00300000 */  .float  4.408103815583578e-39
/* 027D08 8015BF78 BB83126F */  .float  -0.004000000189989805
/* 027D0C 8015BF7C 41980000 */  .float  19.0
/* 027D10 8015BF80 BC1374BC */  .float  -0.008999999612569809
/* 027D14 8015BF84 BBE56042 */  .float  -0.007000000216066837
/* 027D18 8015BF88 41980000 */  .float  19.0
/* 027D1C 8015BF8C 41201CAC */  .float  10.006999969482422
/* 027D20 8015BF90 412024DD */  .float  10.008999824523926
/* 027D24 8015BF94 41980000 */  .float  19.0
/* 027D28 8015BF98 41201062 */  .float  10.003999710083008
/* 027D2C 8015BF9C 00010000 */  .float  9.183549615799121e-41
/* 027D30 8015BFA0 BC1374BC */  .float  -0.008999999612569809
/* 027D34 8015BFA4 41980000 */  .float  19.0
/* 027D38 8015BFA8 BB83126F */  .float  -0.004000000189989805
/* 027D3C 8015BFAC 41201062 */  .float  10.003999710083008
/* 027D40 8015BFB0 41980000 */  .float  19.0
/* 027D44 8015BFB4 412024DD */  .float  10.008999824523926
/* 027D48 8015BFB8 41201CAC */  .float  10.006999969482422
/* 027D4C 8015BFBC 41980000 */  .float  19.0
/* 027D50 8015BFC0 BBE56042 */  .float  -0.007000000216066837
/* 027D54 8015BFC4 00010000 */  .float  9.183549615799121e-41
/* 027D58 8015BFC8 8015BF28 */  .float  -1.9971193609680147e-39
/* 027D5C 8015BFCC 8015BF28 */  .float  -1.9971193609680147e-39
/* 027D60 8015BFD0 00040000 */  .float  3.6734198463196485e-40
/* 027D64 8015BFD4 00000000 */  .float  0.0
/* 027D68 8015BFD8 3F800000 */  .float  1.0
/* 027D6C 8015BFDC 3F800000 */  .float  1.0
/* 027D70 8015BFE0 3F800000 */  .float  1.0
/* 027D74 8015BFE4 00000000 */  .float  0.0
/* 027D78 8015BFE8 00000000 */  .float  0.0
/* 027D7C 8015BFEC 00000000 */  .float  0.0
/* 027D80 8015BFF0 00000000 */  .float  0.0
/* 027D84 8015BFF4 00000000 */  .float  0.0
/* 027D88 8015BFF8 00000000 */  .float  0.0
/* 027D8C 8015BFFC 45034000 */  .float  2100.0
/* 027D90 8015C000 00000000 */  .float  0.0
/* 027D94 8015C004 00000000 */  .float  0.0
/* 027D98 8015C008 04038828 */  .float  1.5461495879640774e-36
/* 027D9C 8015C00C 00000000 */  .float  0.0
/* 027DA0 8015C010 BB83126F */  .float  -0.004000000189989805
/* 027DA4 8015C014 41980000 */  .float  19.0
/* 027DA8 8015C018 BC1374BC */  .float  -0.008999999612569809
/* 027DAC 8015C01C BBE56042 */  .float  -0.007000000216066837
/* 027DB0 8015C020 41980000 */  .float  19.0
/* 027DB4 8015C024 41201CAC */  .float  10.006999969482422
/* 027DB8 8015C028 412024DD */  .float  10.008999824523926
/* 027DBC 8015C02C 41980000 */  .float  19.0
/* 027DC0 8015C030 41201062 */  .float  10.003999710083008
/* 027DC4 8015C034 00010000 */  .float  9.183549615799121e-41
/* 027DC8 8015C038 BC1374BC */  .float  -0.008999999612569809
/* 027DCC 8015C03C 41980000 */  .float  19.0
/* 027DD0 8015C040 BB83126F */  .float  -0.004000000189989805
/* 027DD4 8015C044 41201062 */  .float  10.003999710083008
/* 027DD8 8015C048 41980000 */  .float  19.0
/* 027DDC 8015C04C 412024DD */  .float  10.008999824523926
/* 027DE0 8015C050 41201CAC */  .float  10.006999969482422
/* 027DE4 8015C054 41980000 */  .float  19.0
/* 027DE8 8015C058 BBE56042 */  .float  -0.007000000216066837
/* 027DEC 8015C05C 00010000 */  .float  9.183549615799121e-41
/* 027DF0 8015C060 8015C010 */  .float  -1.997444462211738e-39
/* 027DF4 8015C064 8015C010 */  .float  -1.997444462211738e-39
/* 027DF8 8015C068 00020000 */  .float  1.8367099231598242e-40
/* 027DFC 8015C06C 00000000 */  .float  0.0
/* 027E00 8015C070 3F800000 */  .float  1.0
/* 027E04 8015C074 3F800000 */  .float  1.0
/* 027E08 8015C078 3F800000 */  .float  1.0
/* 027E0C 8015C07C 00000000 */  .float  0.0
/* 027E10 8015C080 00000000 */  .float  0.0
/* 027E14 8015C084 00000000 */  .float  0.0
/* 027E18 8015C088 00000000 */  .float  0.0
/* 027E1C 8015C08C 00000000 */  .float  0.0
/* 027E20 8015C090 00000000 */  .float  0.0
/* 027E24 8015C094 447A0000 */  .float  1000.0
/* 027E28 8015C098 00000000 */  .float  0.0
/* 027E2C 8015C09C 00000000 */  .float  0.0
/* 027E30 8015C0A0 040389C0 */  .float  1.5462227693750783e-36
/* 027E34 8015C0A4 00000000 */  .float  0.0
/* 027E38 8015C0A8 BC23D70A */  .float  -0.009999999776482582
/* 027E3C 8015C0AC 41980000 */  .float  19.0
/* 027E40 8015C0B0 41200419 */  .float  10.00100040435791
/* 027E44 8015C0B4 412028F6 */  .float  10.010000228881836
/* 027E48 8015C0B8 41980000 */  .float  19.0
/* 027E4C 8015C0BC 41200419 */  .float  10.00100040435791
/* 027E50 8015C0C0 40A00000 */  .float  5.0
/* 027E54 8015C0C4 41980000 */  .float  19.0
/* 027E58 8015C0C8 410FD70A */  .float  8.989999771118164
/* 027E5C 8015C0CC 00010000 */  .float  9.183549615799121e-41
/* 027E60 8015C0D0 BC03126F */  .float  -0.00800000037997961
/* 027E64 8015C0D4 41980000 */  .float  19.0
/* 027E68 8015C0D8 41201893 */  .float  10.005999565124512
/* 027E6C 8015C0DC 40A051EC */  .float  5.010000228881836
/* 027E70 8015C0E0 41980000 */  .float  19.0
/* 027E74 8015C0E4 41100419 */  .float  9.00100040435791
/* 027E78 8015C0E8 BBE56042 */  .float  -0.007000000216066837
/* 027E7C 8015C0EC 41980000 */  .float  19.0
/* 027E80 8015C0F0 40DFC6A8 */  .float  6.993000030517578
/* 027E84 8015C0F4 00010000 */  .float  9.183549615799121e-41
/* 027E88 8015C0F8 409FC6A8 */  .float  4.993000030517578
/* 027E8C 8015C0FC 41980000 */  .float  19.0
/* 027E90 8015C100 40DFC6A8 */  .float  6.993000030517578
/* 027E94 8015C104 409FAE14 */  .float  4.989999771118164
/* 027E98 8015C108 41980000 */  .float  19.0
/* 027E9C 8015C10C 41100831 */  .float  9.001999855041504
/* 027EA0 8015C110 412024DD */  .float  10.008999824523926
/* 027EA4 8015C114 41980000 */  .float  19.0
/* 027EA8 8015C118 41201062 */  .float  10.003999710083008
/* 027EAC 8015C11C 00000000 */  .float  0.0
/* 027EB0 8015C120 409FB646 */  .float  4.991000175476074
/* 027EB4 8015C124 41980000 */  .float  19.0
/* 027EB8 8015C128 40DFDF3B */  .float  6.995999813079834
/* 027EBC 8015C12C 41201CAC */  .float  10.006999969482422
/* 027EC0 8015C130 41980000 */  .float  19.0
/* 027EC4 8015C134 41201CAC */  .float  10.006999969482422
/* 027EC8 8015C138 412028F6 */  .float  10.010000228881836
/* 027ECC 8015C13C 41980000 */  .float  19.0
/* 027ED0 8015C140 40FFEF9E */  .float  7.998000144958496
/* 027ED4 8015C144 00000000 */  .float  0.0
/* 027ED8 8015C148 40009375 */  .float  2.009000062942505
/* 027EDC 8015C14C 41980000 */  .float  19.0
/* 027EE0 8015C150 BB83126F */  .float  -0.004000000189989805
/* 027EE4 8015C154 BBE56042 */  .float  -0.007000000216066837
/* 027EE8 8015C158 41980000 */  .float  19.0
/* 027EEC 8015C15C BBE56042 */  .float  -0.007000000216066837
/* 027EF0 8015C160 BB83126F */  .float  -0.004000000189989805
/* 027EF4 8015C164 41980000 */  .float  19.0
/* 027EF8 8015C168 40009375 */  .float  2.009000062942505
/* 027EFC 8015C16C 00000000 */  .float  0.0
/* 027F00 8015C170 BBC49BA6 */  .float  -0.006000000052154064
/* 027F04 8015C174 41980000 */  .float  19.0
/* 027F08 8015C178 409FBE77 */  .float  4.992000102996826
/* 027F0C 8015C17C BC23D70A */  .float  -0.009999999776482582
/* 027F10 8015C180 41980000 */  .float  19.0
/* 027F14 8015C184 40E00000 */  .float  7.0
/* 027F18 8015C188 40A049BA */  .float  5.008999824523926
/* 027F1C 8015C18C 41980000 */  .float  19.0
/* 027F20 8015C190 4110147B */  .float  9.005000114440918
/* 027F24 8015C194 00000000 */  .float  0.0
/* 027F28 8015C198 BC1374BC */  .float  -0.008999999612569809
/* 027F2C 8015C19C 41980000 */  .float  19.0
/* 027F30 8015C1A0 409FD70A */  .float  4.994999885559082
/* 027F34 8015C1A4 40A03127 */  .float  5.00600004196167
/* 027F38 8015C1A8 41980000 */  .float  19.0
/* 027F3C 8015C1AC 411020C5 */  .float  9.008000373840332
/* 027F40 8015C1B0 40A051EC */  .float  5.010000228881836
/* 027F44 8015C1B4 41980000 */  .float  19.0
/* 027F48 8015C1B8 40E00000 */  .float  7.0
/* 027F4C 8015C1BC 00000000 */  .float  0.0
/* 027F50 8015C1C0 BBA3D70A */  .float  -0.004999999888241291
/* 027F54 8015C1C4 41980000 */  .float  19.0
/* 027F58 8015C1C8 3FFEF9DB */  .float  1.9919999837875366
/* 027F5C 8015C1CC BC23D70A */  .float  -0.009999999776482582
/* 027F60 8015C1D0 41980000 */  .float  19.0
/* 027F64 8015C1D4 40A01062 */  .float  5.001999855041504
/* 027F68 8015C1D8 40A04189 */  .float  5.007999897003174
/* 027F6C 8015C1DC 41980000 */  .float  19.0
/* 027F70 8015C1E0 40E03127 */  .float  7.00600004196167
/* 027F74 8015C1E4 00000000 */  .float  0.0
/* 027F78 8015C1E8 BC03126F */  .float  -0.00800000037997961
/* 027F7C 8015C1EC 41980000 */  .float  19.0
/* 027F80 8015C1F0 3FFF3B64 */  .float  1.99399995803833
/* 027F84 8015C1F4 40A00000 */  .float  5.0
/* 027F88 8015C1F8 41980000 */  .float  19.0
/* 027F8C 8015C1FC 40E051EC */  .float  7.010000228881836
/* 027F90 8015C200 412024DD */  .float  10.008999824523926
/* 027F94 8015C204 41980000 */  .float  19.0
/* 027F98 8015C208 41001062 */  .float  8.003999710083008
/* 027F9C 8015C20C 00000000 */  .float  0.0
/* 027FA0 8015C210 BC23D70A */  .float  -0.009999999776482582
/* 027FA4 8015C214 41980000 */  .float  19.0
/* 027FA8 8015C218 3FFFBE77 */  .float  1.9980000257492065
/* 027FAC 8015C21C 41201893 */  .float  10.005999565124512
/* 027FB0 8015C220 41980000 */  .float  19.0
/* 027FB4 8015C224 410020C5 */  .float  8.008000373840332
/* 027FB8 8015C228 41201CAC */  .float  10.006999969482422
/* 027FBC 8015C22C 41980000 */  .float  19.0
/* 027FC0 8015C230 BBE56042 */  .float  -0.007000000216066837
/* 027FC4 8015C234 00000000 */  .float  0.0
/* 027FC8 8015C238 BC1374BC */  .float  -0.008999999612569809
/* 027FCC 8015C23C 41980000 */  .float  19.0
/* 027FD0 8015C240 40003127 */  .float  2.003000020980835
/* 027FD4 8015C244 412028F6 */  .float  10.010000228881836
/* 027FD8 8015C248 41980000 */  .float  19.0
/* 027FDC 8015C24C BA83126F */  .float  -0.0010000000474974513
/* 027FE0 8015C250 3FFED917 */  .float  1.9910000562667847
/* 027FE4 8015C254 41980000 */  .float  19.0
/* 027FE8 8015C258 BB449BA6 */  .float  -0.003000000026077032
/* 027FEC 8015C25C 00000000 */  .float  0.0
/* 027FF0 8015C260 8015C0A8 */  .float  -1.9976574595783154e-39
/* 027FF4 8015C264 8015C0A8 */  .float  -1.9976574595783154e-39
/* 027FF8 8015C268 000B0000 */  .float  1.0101904577379033e-39
/* 027FFC 8015C26C 00000000 */  .float  0.0
/* 028000 8015C270 3F800000 */  .float  1.0
/* 028004 8015C274 3F800000 */  .float  1.0
/* 028008 8015C278 3F800000 */  .float  1.0
/* 02800C 8015C27C 00000000 */  .float  0.0
/* 028010 8015C280 00000000 */  .float  0.0
/* 028014 8015C284 00000000 */  .float  0.0
/* 028018 8015C288 00000000 */  .float  0.0
/* 02801C 8015C28C 00000000 */  .float  0.0
/* 028020 8015C290 00000000 */  .float  0.0
/* 028024 8015C294 447A0000 */  .float  1000.0
/* 028028 8015C298 8015C2A8 */  .float  -1.9983749243920497e-39
/* 02802C 8015C29C 00000000 */  .float  0.0
/* 028030 8015C2A0 04038B20 */  .float  1.546285906278687e-36
/* 028034 8015C2A4 00000000 */  .float  0.0
/* 028038 8015C2A8 3F800000 */  .float  1.0
/* 02803C 8015C2AC 3F800000 */  .float  1.0
/* 028040 8015C2B0 3F800000 */  .float  1.0
/* 028044 8015C2B4 00000000 */  .float  0.0
/* 028048 8015C2B8 00000000 */  .float  0.0
/* 02804C 8015C2BC 00000000 */  .float  0.0
/* 028050 8015C2C0 00000000 */  .float  0.0
/* 028054 8015C2C4 00000000 */  .float  0.0
/* 028058 8015C2C8 00000000 */  .float  0.0
/* 02805C 8015C2CC 447A0000 */  .float  1000.0
/* 028060 8015C2D0 00000000 */  .float  0.0
/* 028064 8015C2D4 00000000 */  .float  0.0
/* 028068 8015C2D8 04038C98 */  .float  1.546353347971178e-36
/* 02806C 8015C2DC 00950000 */  .float  1.368348892754069e-38
/* 028070 8015C2E0 3FFED917 */  .float  1.9910000562667847
/* 028074 8015C2E4 41980000 */  .float  19.0
/* 028078 8015C2E8 41201062 */  .float  10.003999710083008
/* 02807C 8015C2EC 412024DD */  .float  10.008999824523926
/* 028080 8015C2F0 41980000 */  .float  19.0
/* 028084 8015C2F4 41201062 */  .float  10.003999710083008
/* 028088 8015C2F8 409FEF9E */  .float  4.998000144958496
/* 02808C 8015C2FC 41980000 */  .float  19.0
/* 028090 8015C300 409FAE14 */  .float  4.989999771118164
/* 028094 8015C304 00000000 */  .float  0.0
/* 028098 8015C308 409FAE14 */  .float  4.989999771118164
/* 02809C 8015C30C 41980000 */  .float  19.0
/* 0280A0 8015C310 409FEF9E */  .float  4.998000144958496
/* 0280A4 8015C314 41201062 */  .float  10.003999710083008
/* 0280A8 8015C318 41980000 */  .float  19.0
/* 0280AC 8015C31C 412024DD */  .float  10.008999824523926
/* 0280B0 8015C320 41201062 */  .float  10.003999710083008
/* 0280B4 8015C324 41980000 */  .float  19.0
/* 0280B8 8015C328 3FFED917 */  .float  1.9910000562667847
/* 0280BC 8015C32C 00000000 */  .float  0.0
/* 0280C0 8015C330 408051EC */  .float  4.010000228881836
/* 0280C4 8015C334 41980000 */  .float  19.0
/* 0280C8 8015C338 407FDF3B */  .float  3.997999906539917
/* 0280CC 8015C33C BB449BA6 */  .float  -0.003000000026077032
/* 0280D0 8015C340 41980000 */  .float  19.0
/* 0280D4 8015C344 BC23D70A */  .float  -0.009999999776482582
/* 0280D8 8015C348 BB03126F */  .float  -0.0020000000949949026
/* 0280DC 8015C34C 41980000 */  .float  19.0
/* 0280E0 8015C350 412028F6 */  .float  10.010000228881836
/* 0280E4 8015C354 00010000 */  .float  9.183549615799121e-41
/* 0280E8 8015C358 412028F6 */  .float  10.010000228881836
/* 0280EC 8015C35C 41980000 */  .float  19.0
/* 0280F0 8015C360 BB03126F */  .float  -0.0020000000949949026
/* 0280F4 8015C364 BC23D70A */  .float  -0.009999999776482582
/* 0280F8 8015C368 41980000 */  .float  19.0
/* 0280FC 8015C36C BB449BA6 */  .float  -0.003000000026077032
/* 028100 8015C370 407FDF3B */  .float  3.997999906539917
/* 028104 8015C374 41980000 */  .float  19.0
/* 028108 8015C378 408051EC */  .float  4.010000228881836
/* 02810C 8015C37C 00010000 */  .float  9.183549615799121e-41
/* 028110 8015C380 407F5C29 */  .float  3.990000009536743
/* 028114 8015C384 41980000 */  .float  19.0
/* 028118 8015C388 40800831 */  .float  4.000999927520752
/* 02811C 8015C38C 409FC6A8 */  .float  4.993000030517578
/* 028120 8015C390 41980000 */  .float  19.0
/* 028124 8015C394 40A03958 */  .float  5.006999969482422
/* 028128 8015C398 412024DD */  .float  10.008999824523926
/* 02812C 8015C39C 41980000 */  .float  19.0
/* 028130 8015C3A0 3FFF7CEE */  .float  1.996000051498413
/* 028134 8015C3A4 00000000 */  .float  0.0
/* 028138 8015C3A8 407F6C8B */  .float  3.990999937057495
/* 02813C 8015C3AC 41980000 */  .float  19.0
/* 028140 8015C3B0 408020C5 */  .float  4.004000186920166
/* 028144 8015C3B4 412028F6 */  .float  10.010000228881836
/* 028148 8015C3B8 41980000 */  .float  19.0
/* 02814C 8015C3BC 40000000 */  .float  2.0
/* 028150 8015C3C0 41201CAC */  .float  10.006999969482422
/* 028154 8015C3C4 41980000 */  .float  19.0
/* 028158 8015C3C8 BBE56042 */  .float  -0.007000000216066837
/* 02815C 8015C3CC 00000000 */  .float  0.0
/* 028160 8015C3D0 40A04189 */  .float  5.007999897003174
/* 028164 8015C3D4 41980000 */  .float  19.0
/* 028168 8015C3D8 409FCED9 */  .float  4.99399995803833
/* 02816C 8015C3DC 408020C5 */  .float  4.004000186920166
/* 028170 8015C3E0 41980000 */  .float  19.0
/* 028174 8015C3E4 407F6C8B */  .float  3.990999937057495
/* 028178 8015C3E8 BBC49BA6 */  .float  -0.006000000052154064
/* 02817C 8015C3EC 41980000 */  .float  19.0
/* 028180 8015C3F0 412020C5 */  .float  10.008000373840332
/* 028184 8015C3F4 00000000 */  .float  0.0
/* 028188 8015C3F8 40A03127 */  .float  5.00600004196167
/* 02818C 8015C3FC 41980000 */  .float  19.0
/* 028190 8015C400 409FBE77 */  .float  4.992000102996826
/* 028194 8015C404 BC03126F */  .float  -0.00800000037997961
/* 028198 8015C408 41980000 */  .float  19.0
/* 02819C 8015C40C 41201893 */  .float  10.005999565124512
/* 0281A0 8015C410 3FFFBE77 */  .float  1.9980000257492065
/* 0281A4 8015C414 41980000 */  .float  19.0
/* 0281A8 8015C418 412028F6 */  .float  10.010000228881836
/* 0281AC 8015C41C 00000000 */  .float  0.0
/* 0281B0 8015C420 8015C2E0 */  .float  -1.998453397106052e-39
/* 0281B4 8015C424 8015C2E0 */  .float  -1.998453397106052e-39
/* 0281B8 8015C428 00080000 */  .float  7.346839692639297e-40
/* 0281BC 8015C42C 00000000 */  .float  0.0
/* 0281C0 8015C430 3F800000 */  .float  1.0
/* 0281C4 8015C434 3F800000 */  .float  1.0
/* 0281C8 8015C438 3F800000 */  .float  1.0
/* 0281CC 8015C43C 00000000 */  .float  0.0
/* 0281D0 8015C440 00000000 */  .float  0.0
/* 0281D4 8015C444 00000000 */  .float  0.0
/* 0281D8 8015C448 00000000 */  .float  0.0
/* 0281DC 8015C44C 00000000 */  .float  0.0
/* 0281E0 8015C450 00000000 */  .float  0.0
/* 0281E4 8015C454 447A0000 */  .float  1000.0
/* 0281E8 8015C458 8015C468 */  .float  -1.9990027061040672e-39
/* 0281EC 8015C45C 00000000 */  .float  0.0
/* 0281F0 8015C460 04038E00 */  .float  1.546417919804414e-36
/* 0281F4 8015C464 00000000 */  .float  0.0
/* 0281F8 8015C468 3F800000 */  .float  1.0
/* 0281FC 8015C46C 3F800000 */  .float  1.0
/* 028200 8015C470 3F800000 */  .float  1.0
/* 028204 8015C474 00000000 */  .float  0.0
/* 028208 8015C478 00000000 */  .float  0.0
/* 02820C 8015C47C 00000000 */  .float  0.0
/* 028210 8015C480 00000000 */  .float  0.0
/* 028214 8015C484 00000000 */  .float  0.0
/* 028218 8015C488 00000000 */  .float  0.0
/* 02821C 8015C48C 447A0000 */  .float  1000.0
/* 028220 8015C490 00000000 */  .float  0.0
/* 028224 8015C494 00000000 */  .float  0.0
/* 028228 8015C498 04038F38 */  .float  1.5464738820598853e-36
/* 02822C 8015C49C 00950000 */  .float  1.368348892754069e-38
/* 028230 8015C4A0 BC23D70A */  .float  -0.009999999776482582
/* 028234 8015C4A4 41980000 */  .float  19.0
/* 028238 8015C4A8 410FF7CF */  .float  8.998000144958496
/* 02823C 8015C4AC BC23D70A */  .float  -0.009999999776482582
/* 028240 8015C4B0 41980000 */  .float  19.0
/* 028244 8015C4B4 41200419 */  .float  10.00100040435791
/* 028248 8015C4B8 412028F6 */  .float  10.010000228881836
/* 02824C 8015C4BC 41980000 */  .float  19.0
/* 028250 8015C4C0 41200419 */  .float  10.00100040435791
/* 028254 8015C4C4 00010000 */  .float  9.183549615799121e-41
/* 028258 8015C4C8 BC23D70A */  .float  -0.009999999776482582
/* 02825C 8015C4CC 41980000 */  .float  19.0
/* 028260 8015C4D0 41100419 */  .float  9.00100040435791
/* 028264 8015C4D4 412024DD */  .float  10.008999824523926
/* 028268 8015C4D8 41980000 */  .float  19.0
/* 02826C 8015C4DC 41201062 */  .float  10.003999710083008
/* 028270 8015C4E0 412024DD */  .float  10.008999824523926
/* 028274 8015C4E4 41980000 */  .float  19.0
/* 028278 8015C4E8 40DFDF3B */  .float  6.995999813079834
/* 02827C 8015C4EC 00010000 */  .float  9.183549615799121e-41
/* 028280 8015C4F0 412028F6 */  .float  10.010000228881836
/* 028284 8015C4F4 41980000 */  .float  19.0
/* 028288 8015C4F8 BA83126F */  .float  -0.0010000000474974513
/* 02828C 8015C4FC BC23D70A */  .float  -0.009999999776482582
/* 028290 8015C500 41980000 */  .float  19.0
/* 028294 8015C504 BB449BA6 */  .float  -0.003000000026077032
/* 028298 8015C508 BC1374BC */  .float  -0.008999999612569809
/* 02829C 8015C50C 41980000 */  .float  19.0
/* 0282A0 8015C510 404051EC */  .float  3.005000114440918
/* 0282A4 8015C514 00010000 */  .float  9.183549615799121e-41
/* 0282A8 8015C518 412028F6 */  .float  10.010000228881836
/* 0282AC 8015C51C 41980000 */  .float  19.0
/* 0282B0 8015C520 40E01062 */  .float  7.001999855041504
/* 0282B4 8015C524 412024DD */  .float  10.008999824523926
/* 0282B8 8015C528 41980000 */  .float  19.0
/* 0282BC 8015C52C 409FDF3B */  .float  4.995999813079834
/* 0282C0 8015C530 BC23D70A */  .float  -0.009999999776482582
/* 0282C4 8015C534 41980000 */  .float  19.0
/* 0282C8 8015C538 40E00831 */  .float  7.000999927520752
/* 0282CC 8015C53C 00000000 */  .float  0.0
/* 0282D0 8015C540 412028F6 */  .float  10.010000228881836
/* 0282D4 8015C544 41980000 */  .float  19.0
/* 0282D8 8015C548 40DFF7CF */  .float  6.999000072479248
/* 0282DC 8015C54C BC23D70A */  .float  -0.009999999776482582
/* 0282E0 8015C550 41980000 */  .float  19.0
/* 0282E4 8015C554 40DFEF9E */  .float  6.998000144958496
/* 0282E8 8015C558 BC1374BC */  .float  -0.008999999612569809
/* 0282EC 8015C55C 41980000 */  .float  19.0
/* 0282F0 8015C560 41101062 */  .float  9.003999710083008
/* 0282F4 8015C564 00000000 */  .float  0.0
/* 0282F8 8015C568 BC23D70A */  .float  -0.009999999776482582
/* 0282FC 8015C56C 41980000 */  .float  19.0
/* 028300 8015C570 409FEF9E */  .float  4.998000144958496
/* 028304 8015C574 BC1374BC */  .float  -0.008999999612569809
/* 028308 8015C578 41980000 */  .float  19.0
/* 02830C 8015C57C 40E020C5 */  .float  7.004000186920166
/* 028310 8015C580 412028F6 */  .float  10.010000228881836
/* 028314 8015C584 41980000 */  .float  19.0
/* 028318 8015C588 409FF7CF */  .float  4.999000072479248
/* 02831C 8015C58C 00000000 */  .float  0.0
/* 028320 8015C590 BC23D70A */  .float  -0.009999999776482582
/* 028324 8015C594 41980000 */  .float  19.0
/* 028328 8015C598 40A00831 */  .float  5.000999927520752
/* 02832C 8015C59C 412028F6 */  .float  10.010000228881836
/* 028330 8015C5A0 41980000 */  .float  19.0
/* 028334 8015C5A4 40A01893 */  .float  5.002999782562256
/* 028338 8015C5A8 412024DD */  .float  10.008999824523926
/* 02833C 8015C5AC 41980000 */  .float  19.0
/* 028340 8015C5B0 3FFF5C29 */  .float  1.9950000047683716
/* 028344 8015C5B4 00000000 */  .float  0.0
/* 028348 8015C5B8 412028F6 */  .float  10.010000228881836
/* 02834C 8015C5BC 41980000 */  .float  19.0
/* 028350 8015C5C0 40001062 */  .float  2.000999927520752
/* 028354 8015C5C4 412024DD */  .float  10.008999824523926
/* 028358 8015C5C8 41980000 */  .float  19.0
/* 02835C 8015C5CC BB83126F */  .float  -0.004000000189989805
/* 028360 8015C5D0 BC23D70A */  .float  -0.009999999776482582
/* 028364 8015C5D4 41980000 */  .float  19.0
/* 028368 8015C5D8 404020C5 */  .float  3.002000093460083
/* 02836C 8015C5DC 00000000 */  .float  0.0
/* 028370 8015C5E0 412028F6 */  .float  10.010000228881836
/* 028374 8015C5E4 41980000 */  .float  19.0
/* 028378 8015C5E8 3FFFBE77 */  .float  1.9980000257492065
/* 02837C 8015C5EC BC23D70A */  .float  -0.009999999776482582
/* 028380 8015C5F0 41980000 */  .float  19.0
/* 028384 8015C5F4 403FEF9E */  .float  2.999000072479248
/* 028388 8015C5F8 BC1374BC */  .float  -0.008999999612569809
/* 02838C 8015C5FC 41980000 */  .float  19.0
/* 028390 8015C600 40A020C5 */  .float  5.004000186920166
/* 028394 8015C604 00000000 */  .float  0.0
/* 028398 8015C608 8015C4A0 */  .float  -1.9990811788180694e-39
/* 02839C 8015C60C 8015C4A0 */  .float  -1.9990811788180694e-39
/* 0283A0 8015C610 00090000 */  .float  8.265194654219209e-40
/* 0283A4 8015C614 00000000 */  .float  0.0
/* 0283A8 8015C618 3F800000 */  .float  1.0
/* 0283AC 8015C61C 3F800000 */  .float  1.0
/* 0283B0 8015C620 3F800000 */  .float  1.0
/* 0283B4 8015C624 00000000 */  .float  0.0
/* 0283B8 8015C628 00000000 */  .float  0.0
/* 0283BC 8015C62C 00000000 */  .float  0.0
/* 0283C0 8015C630 00000000 */  .float  0.0
/* 0283C4 8015C634 00000000 */  .float  0.0
/* 0283C8 8015C638 00000000 */  .float  0.0
/* 0283CC 8015C63C 44C80000 */  .float  1600.0
/* 0283D0 8015C640 8015C650 */  .float  -1.9996865397546578e-39
/* 0283D4 8015C644 00000000 */  .float  0.0
/* 0283D8 8015C648 04039180 */  .float  1.5465786319226905e-36
/* 0283DC 8015C64C 00000000 */  .float  0.0
/* 0283E0 8015C650 3F800000 */  .float  1.0
/* 0283E4 8015C654 3F800000 */  .float  1.0
/* 0283E8 8015C658 3F800000 */  .float  1.0
/* 0283EC 8015C65C 00000000 */  .float  0.0
/* 0283F0 8015C660 00000000 */  .float  0.0
/* 0283F4 8015C664 00000000 */  .float  0.0
/* 0283F8 8015C668 00000000 */  .float  0.0
/* 0283FC 8015C66C 00000000 */  .float  0.0
/* 028400 8015C670 00000000 */  .float  0.0
/* 028404 8015C674 447A0000 */  .float  1000.0
/* 028408 8015C678 00000000 */  .float  0.0
/* 02840C 8015C67C 00000000 */  .float  0.0
/* 028410 8015C680 04039428 */  .float  1.5467006009410253e-36
/* 028414 8015C684 00950000 */  .float  1.368348892754069e-38
/* 028418 8015C688 BC1374BC */  .float  -0.008999999612569809
/* 02841C 8015C68C 41A00000 */  .float  20.0
/* 028420 8015C690 BB83126F */  .float  -0.004000000189989805
/* 028424 8015C694 BC23D70A */  .float  -0.009999999776482582
/* 028428 8015C698 41A00000 */  .float  20.0
/* 02842C 8015C69C 3F804189 */  .float  1.0019999742507935
/* 028430 8015C6A0 40A051EC */  .float  5.010000228881836
/* 028434 8015C6A4 41A00000 */  .float  20.0
/* 028438 8015C6A8 3F8020C5 */  .float  1.0010000467300415
/* 02843C 8015C6AC 00300000 */  .float  4.408103815583578e-39
/* 028440 8015C6B0 BC23D70A */  .float  -0.009999999776482582
/* 028444 8015C6B4 41A00000 */  .float  20.0
/* 028448 8015C6B8 410FF7CF */  .float  8.998000144958496
/* 02844C 8015C6BC BC23D70A */  .float  -0.009999999776482582
/* 028450 8015C6C0 41A00000 */  .float  20.0
/* 028454 8015C6C4 41200419 */  .float  10.00100040435791
/* 028458 8015C6C8 412028F6 */  .float  10.010000228881836
/* 02845C 8015C6CC 419FD4FE */  .float  19.979000091552734
/* 028460 8015C6D0 41200000 */  .float  10.0
/* 028464 8015C6D4 00300000 */  .float  4.408103815583578e-39
/* 028468 8015C6D8 40A00000 */  .float  5.0
/* 02846C 8015C6DC 41A00000 */  .float  20.0
/* 028470 8015C6E0 410FD70A */  .float  8.989999771118164
/* 028474 8015C6E4 BC23D70A */  .float  -0.009999999776482582
/* 028478 8015C6E8 41A00000 */  .float  20.0
/* 02847C 8015C6EC 410FFBE7 */  .float  8.99899959564209
/* 028480 8015C6F0 412028F6 */  .float  10.010000228881836
/* 028484 8015C6F4 419FD4FE */  .float  19.979000091552734
/* 028488 8015C6F8 41200419 */  .float  10.00100040435791
/* 02848C 8015C6FC 00300000 */  .float  4.408103815583578e-39
/* 028490 8015C700 409FE76D */  .float  4.997000217437744
/* 028494 8015C704 41A00000 */  .float  20.0
/* 028498 8015C708 3F7D70A4 */  .float  0.9900000095367432
/* 02849C 8015C70C 409FCED9 */  .float  4.99399995803833
/* 0284A0 8015C710 41A00000 */  .float  20.0
/* 0284A4 8015C714 411020C5 */  .float  9.008000373840332
/* 0284A8 8015C718 41201CAC */  .float  10.006999969482422
/* 0284AC 8015C71C 419FD4FE */  .float  19.979000091552734
/* 0284B0 8015C720 41201CAC */  .float  10.006999969482422
/* 0284B4 8015C724 00300000 */  .float  4.408103815583578e-39
/* 0284B8 8015C728 412028F6 */  .float  10.010000228881836
/* 0284BC 8015C72C 419FD4FE */  .float  19.979000091552734
/* 0284C0 8015C730 BA83126F */  .float  -0.0010000000474974513
/* 0284C4 8015C734 BC23D70A */  .float  -0.009999999776482582
/* 0284C8 8015C738 41A00000 */  .float  20.0
/* 0284CC 8015C73C BA83126F */  .float  -0.0010000000474974513
/* 0284D0 8015C740 40A00000 */  .float  5.0
/* 0284D4 8015C744 41A00000 */  .float  20.0
/* 0284D8 8015C748 3F8147AE */  .float  1.0099999904632568
/* 0284DC 8015C74C 00300000 */  .float  4.408103815583578e-39
/* 0284E0 8015C750 41200C4A */  .float  10.003000259399414
/* 0284E4 8015C754 419FD4FE */  .float  19.979000091552734
/* 0284E8 8015C758 412028F6 */  .float  10.010000228881836
/* 0284EC 8015C75C 41201062 */  .float  10.003999710083008
/* 0284F0 8015C760 419FD4FE */  .float  19.979000091552734
/* 0284F4 8015C764 BC1374BC */  .float  -0.008999999612569809
/* 0284F8 8015C768 409FBE77 */  .float  4.992000102996826
/* 0284FC 8015C76C 41A00000 */  .float  20.0
/* 028500 8015C770 3F7E76C9 */  .float  0.9940000176429749
/* 028504 8015C774 00300000 */  .float  4.408103815583578e-39
/* 028508 8015C778 40A04189 */  .float  5.007999897003174
/* 02850C 8015C77C 40C420C5 */  .float  6.129000186920166
/* 028510 8015C780 3F7E76C9 */  .float  0.9940000176429749
/* 028514 8015C784 BBA3D70A */  .float  -0.004999999888241291
/* 028518 8015C788 40C420C5 */  .float  6.129000186920166
/* 02851C 8015C78C 3F7DF3B6 */  .float  0.9919999837875366
/* 028520 8015C790 BB449BA6 */  .float  -0.003000000026077032
/* 028524 8015C794 40C420C5 */  .float  6.129000186920166
/* 028528 8015C798 411028F6 */  .float  9.010000228881836
/* 02852C 8015C79C 00200000 */  .float  2.938735877055719e-39
/* 028530 8015C7A0 40A01893 */  .float  5.002999782562256
/* 028534 8015C7A4 40C420C5 */  .float  6.129000186920166
/* 028538 8015C7A8 3F7D70A4 */  .float  0.9900000095367432
/* 02853C 8015C7AC BC03126F */  .float  -0.00800000037997961
/* 028540 8015C7B0 40C420C5 */  .float  6.129000186920166
/* 028544 8015C7B4 41101893 */  .float  9.005999565124512
/* 028548 8015C7B8 40A028F6 */  .float  5.005000114440918
/* 02854C 8015C7BC 40C420C5 */  .float  6.129000186920166
/* 028550 8015C7C0 411020C5 */  .float  9.008000373840332
/* 028554 8015C7C4 00200000 */  .float  2.938735877055719e-39
/* 028558 8015C7C8 8015C688 */  .float  -1.99976501246866e-39
/* 02855C 8015C7CC 8015C688 */  .float  -1.99976501246866e-39
/* 028560 8015C7D0 00080000 */  .float  7.346839692639297e-40
/* 028564 8015C7D4 00000000 */  .float  0.0
/* 028568 8015C7D8 3F800000 */  .float  1.0
/* 02856C 8015C7DC 3F800000 */  .float  1.0
/* 028570 8015C7E0 3F800000 */  .float  1.0
/* 028574 8015C7E4 00000000 */  .float  0.0
/* 028578 8015C7E8 00000000 */  .float  0.0
/* 02857C 8015C7EC 00000000 */  .float  0.0
/* 028580 8015C7F0 00000000 */  .float  0.0
/* 028584 8015C7F4 00000000 */  .float  0.0
/* 028588 8015C7F8 00000000 */  .float  0.0
/* 02858C 8015C7FC 44ED8000 */  .float  1900.0
/* 028590 8015C800 00000000 */  .float  0.0
/* 028594 8015C804 00000000 */  .float  0.0
/* 028598 8015C808 04039A70 */  .float  1.5469890217961465e-36
/* 02859C 8015C80C 00000000 */  .float  0.0
/* 0285A0 8015C810 403FEF9E */  .float  2.999000072479248
/* 0285A4 8015C814 419FF9DB */  .float  19.996999740600586
/* 0285A8 8015C818 BC23D70A */  .float  -0.009999999776482582
/* 0285AC 8015C81C 403FDF3B */  .float  2.997999906539917
/* 0285B0 8015C820 419FF9DB */  .float  19.996999740600586
/* 0285B4 8015C824 412028F6 */  .float  10.010000228881836
/* 0285B8 8015C828 40A020C5 */  .float  5.004000186920166
/* 0285BC 8015C82C 419FF7CF */  .float  19.996000289916992
/* 0285C0 8015C830 412024DD */  .float  10.008999824523926
/* 0285C4 8015C834 00300000 */  .float  4.408103815583578e-39
/* 0285C8 8015C838 403FBE77 */  .float  2.996000051498413
/* 0285CC 8015C83C 419FF9DB */  .float  19.996999740600586
/* 0285D0 8015C840 BC1374BC */  .float  -0.008999999612569809
/* 0285D4 8015C844 40A00831 */  .float  5.000999927520752
/* 0285D8 8015C848 419FF7CF */  .float  19.996000289916992
/* 0285DC 8015C84C 412028F6 */  .float  10.010000228881836
/* 0285E0 8015C850 40A01062 */  .float  5.001999855041504
/* 0285E4 8015C854 419FF7CF */  .float  19.996000289916992
/* 0285E8 8015C858 BC23D70A */  .float  -0.009999999776482582
/* 0285EC 8015C85C 00300000 */  .float  4.408103815583578e-39
/* 0285F0 8015C860 40F0CCCD */  .float  7.525000095367432
/* 0285F4 8015C864 402CFDF4 */  .float  2.703000068664551
/* 0285F8 8015C868 40825604 */  .float  4.072999954223633
/* 0285FC 8015C86C 411624DD */  .float  9.383999824523926
/* 028600 8015C870 402CFDF4 */  .float  2.703000068664551
/* 028604 8015C874 40BDCAC1 */  .float  5.931000232696533
/* 028608 8015C878 41162D0E */  .float  9.38599967956543
/* 02860C 8015C87C 402CFDF4 */  .float  2.703000068664551
/* 028610 8015C880 40823D71 */  .float  4.070000171661377
/* 028614 8015C884 00200000 */  .float  2.938735877055719e-39
/* 028618 8015C888 40F0F5C3 */  .float  7.53000020980835
/* 02861C 8015C88C 402CFDF4 */  .float  2.703000068664551
/* 028620 8015C890 4082353F */  .float  4.068999767303467
/* 028624 8015C894 40F0DD2F */  .float  7.5269999504089355
/* 028628 8015C898 402CFDF4 */  .float  2.703000068664551
/* 02862C 8015C89C 40BDC28F */  .float  5.929999828338623
/* 028630 8015C8A0 4116353F */  .float  9.387999534606934
/* 028634 8015C8A4 402CFDF4 */  .float  2.703000068664551
/* 028638 8015C8A8 40BDA9FC */  .float  5.927000045776367
/* 02863C 8015C8AC 00200000 */  .float  2.938735877055719e-39
/* 028640 8015C8B0 40F0CCCD */  .float  7.525000095367432
/* 028644 8015C8B4 402CFDF4 */  .float  2.703000068664551
/* 028648 8015C8B8 40D25604 */  .float  6.572999954223633
/* 02864C 8015C8BC 411624DD */  .float  9.383999824523926
/* 028650 8015C8C0 402CFDF4 */  .float  2.703000068664551
/* 028654 8015C8C4 4106E560 */  .float  8.430999755859375
/* 028658 8015C8C8 41162D0E */  .float  9.38599967956543
/* 02865C 8015C8CC 402CFDF4 */  .float  2.703000068664551
/* 028660 8015C8D0 40D23D71 */  .float  6.570000171661377
/* 028664 8015C8D4 00200000 */  .float  2.938735877055719e-39
/* 028668 8015C8D8 40F0F5C3 */  .float  7.53000020980835
/* 02866C 8015C8DC 402CFDF4 */  .float  2.703000068664551
/* 028670 8015C8E0 40D2353F */  .float  6.568999767303467
/* 028674 8015C8E4 40F0DD2F */  .float  7.5269999504089355
/* 028678 8015C8E8 402CFDF4 */  .float  2.703000068664551
/* 02867C 8015C8EC 4106E148 */  .float  8.430000305175781
/* 028680 8015C8F0 4116353F */  .float  9.387999534606934
/* 028684 8015C8F4 402CFDF4 */  .float  2.703000068664551
/* 028688 8015C8F8 4106D4FE */  .float  8.427000045776367
/* 02868C 8015C8FC 00200000 */  .float  2.938735877055719e-39
/* 028690 8015C900 407FEF9E */  .float  3.999000072479248
/* 028694 8015C904 3F7F3B64 */  .float  0.996999979019165
/* 028698 8015C908 412028F6 */  .float  10.010000228881836
/* 02869C 8015C90C 40A01062 */  .float  5.001999855041504
/* 0286A0 8015C910 3F7EF9DB */  .float  0.9959999918937683
/* 0286A4 8015C914 411028F6 */  .float  9.010000228881836
/* 0286A8 8015C918 407FEF9E */  .float  3.999000072479248
/* 0286AC 8015C91C 3F7F3B64 */  .float  0.996999979019165
/* 0286B0 8015C920 BC23D70A */  .float  -0.009999999776482582
/* 0286B4 8015C924 00300000 */  .float  4.408103815583578e-39
/* 0286B8 8015C928 407F5C29 */  .float  3.990000009536743
/* 0286BC 8015C92C 3F7F3B64 */  .float  0.996999979019165
/* 0286C0 8015C930 41200419 */  .float  10.00100040435791
/* 0286C4 8015C934 412028F6 */  .float  10.010000228881836
/* 0286C8 8015C938 3F7EF9DB */  .float  0.9959999918937683
/* 0286CC 8015C93C 41200419 */  .float  10.00100040435791
/* 0286D0 8015C940 409FB646 */  .float  4.991000175476074
/* 0286D4 8015C944 3F7EF9DB */  .float  0.9959999918937683
/* 0286D8 8015C948 410FEF9E */  .float  8.996000289916992
/* 0286DC 8015C94C 00300000 */  .float  4.408103815583578e-39
/* 0286E0 8015C950 40A00831 */  .float  5.000999927520752
/* 0286E4 8015C954 3F7EF9DB */  .float  0.9959999918937683
/* 0286E8 8015C958 BC23D70A */  .float  -0.009999999776482582
/* 0286EC 8015C95C 407FDF3B */  .float  3.997999906539917
/* 0286F0 8015C960 3F7F3B64 */  .float  0.996999979019165
/* 0286F4 8015C964 BC23D70A */  .float  -0.009999999776482582
/* 0286F8 8015C968 40A00831 */  .float  5.000999927520752
/* 0286FC 8015C96C 3F7EF9DB */  .float  0.9959999918937683
/* 028700 8015C970 411028F6 */  .float  9.010000228881836
/* 028704 8015C974 00300000 */  .float  4.408103815583578e-39
/* 028708 8015C978 409FAE14 */  .float  4.989999771118164
/* 02870C 8015C97C 3F7EF9DB */  .float  0.9959999918937683
/* 028710 8015C980 410FFBE7 */  .float  8.99899959564209
/* 028714 8015C984 412024DD */  .float  10.008999824523926
/* 028718 8015C988 3F7EF9DB */  .float  0.9959999918937683
/* 02871C 8015C98C 41201062 */  .float  10.003999710083008
/* 028720 8015C990 412028F6 */  .float  10.010000228881836
/* 028724 8015C994 3F7EF9DB */  .float  0.9959999918937683
/* 028728 8015C998 410FF7CF */  .float  8.998000144958496
/* 02872C 8015C99C 00300000 */  .float  4.408103815583578e-39
/* 028730 8015C9A0 409FC6A8 */  .float  4.993000030517578
/* 028734 8015C9A4 3F7EF9DB */  .float  0.9959999918937683
/* 028738 8015C9A8 41101CAC */  .float  9.006999969482422
/* 02873C 8015C9AC 4120147B */  .float  10.005000114440918
/* 028740 8015C9B0 3F7EF9DB */  .float  0.9959999918937683
/* 028744 8015C9B4 411024DD */  .float  9.008999824523926
/* 028748 8015C9B8 41200C4A */  .float  10.003000259399414
/* 02874C 8015C9BC 3F7EF9DB */  .float  0.9959999918937683
/* 028750 8015C9C0 BC23D70A */  .float  -0.009999999776482582
/* 028754 8015C9C4 00200000 */  .float  2.938735877055719e-39
/* 028758 8015C9C8 409FE76D */  .float  4.997000217437744
/* 02875C 8015C9CC 3F7EF9DB */  .float  0.9959999918937683
/* 028760 8015C9D0 411028F6 */  .float  9.010000228881836
/* 028764 8015C9D4 41201CAC */  .float  10.006999969482422
/* 028768 8015C9D8 3F7EF9DB */  .float  0.9959999918937683
/* 02876C 8015C9DC BBE56042 */  .float  -0.007000000216066837
/* 028770 8015C9E0 409FD70A */  .float  4.994999885559082
/* 028774 8015C9E4 3F7EF9DB */  .float  0.9959999918937683
/* 028778 8015C9E8 BC1374BC */  .float  -0.008999999612569809
/* 02877C 8015C9EC 00200000 */  .float  2.938735877055719e-39
/* 028780 8015C9F0 BB03126F */  .float  -0.0020000000949949026
/* 028784 8015C9F4 3F12F1AA */  .float  0.5740000009536743
/* 028788 8015C9F8 BC23D70A */  .float  -0.009999999776482582
/* 02878C 8015C9FC BB83126F */  .float  -0.004000000189989805
/* 028790 8015CA00 3F12F1AA */  .float  0.5740000009536743
/* 028794 8015CA04 412024DD */  .float  10.008999824523926
/* 028798 8015CA08 40803127 */  .float  4.00600004196167
/* 02879C 8015CA0C 3F126E98 */  .float  0.5720000267028809
/* 0287A0 8015CA10 412020C5 */  .float  10.008000373840332
/* 0287A4 8015CA14 00200000 */  .float  2.938735877055719e-39
/* 0287A8 8015CA18 BBC49BA6 */  .float  -0.006000000052154064
/* 0287AC 8015CA1C 3F12F1AA */  .float  0.5740000009536743
/* 0287B0 8015CA20 BC03126F */  .float  -0.00800000037997961
/* 0287B4 8015CA24 40801062 */  .float  4.001999855041504
/* 0287B8 8015CA28 3F126E98 */  .float  0.5720000267028809
/* 0287BC 8015CA2C 412028F6 */  .float  10.010000228881836
/* 0287C0 8015CA30 408020C5 */  .float  4.004000186920166
/* 0287C4 8015CA34 3F126E98 */  .float  0.5720000267028809
/* 0287C8 8015CA38 BC1374BC */  .float  -0.008999999612569809
/* 0287CC 8015CA3C 00200000 */  .float  2.938735877055719e-39
/* 0287D0 8015CA40 8015C810 */  .float  -2.0003143214666753e-39
/* 0287D4 8015CA44 8015C810 */  .float  -2.0003143214666753e-39
/* 0287D8 8015CA48 000E0000 */  .float  1.285696946211877e-39
/* 0287DC 8015CA4C 00000000 */  .float  0.0
/* 0287E0 8015CA50 3F800000 */  .float  1.0
/* 0287E4 8015CA54 3F800000 */  .float  1.0
/* 0287E8 8015CA58 3F800000 */  .float  1.0
/* 0287EC 8015CA5C 00000000 */  .float  0.0
/* 0287F0 8015CA60 00000000 */  .float  0.0
/* 0287F4 8015CA64 00000000 */  .float  0.0
/* 0287F8 8015CA68 00000000 */  .float  0.0
/* 0287FC 8015CA6C 00000000 */  .float  0.0
/* 028800 8015CA70 00000000 */  .float  0.0
/* 028804 8015CA74 44F2D99A */  .float  1942.800048828125
/* 028808 8015CA78 00000000 */  .float  0.0
/* 02880C 8015CA7C 00000000 */  .float  0.0
/* 028810 8015CA80 0403A578 */  .float  1.547495551954643e-36
/* 028814 8015CA84 00000000 */  .float  0.0
/* 028818 8015CA88 BC1374BC */  .float  -0.008999999612569809
/* 02881C 8015CA8C 3F666666 */  .float  0.8999999761581421
/* 028820 8015CA90 41201062 */  .float  10.003999710083008
/* 028824 8015CA94 41201CAC */  .float  10.006999969482422
/* 028828 8015CA98 3F666666 */  .float  0.8999999761581421
/* 02882C 8015CA9C 41201CAC */  .float  10.006999969482422
/* 028830 8015CAA0 41201062 */  .float  10.003999710083008
/* 028834 8015CAA4 3F666666 */  .float  0.8999999761581421
/* 028838 8015CAA8 BC1374BC */  .float  -0.008999999612569809
/* 02883C 8015CAAC 00000000 */  .float  0.0
/* 028840 8015CAB0 BBE56042 */  .float  -0.007000000216066837
/* 028844 8015CAB4 3F666666 */  .float  0.8999999761581421
/* 028848 8015CAB8 BBE56042 */  .float  -0.007000000216066837
/* 02884C 8015CABC BB83126F */  .float  -0.004000000189989805
/* 028850 8015CAC0 3F666666 */  .float  0.8999999761581421
/* 028854 8015CAC4 412024DD */  .float  10.008999824523926
/* 028858 8015CAC8 412024DD */  .float  10.008999824523926
/* 02885C 8015CACC 3F666666 */  .float  0.8999999761581421
/* 028860 8015CAD0 BB83126F */  .float  -0.004000000189989805
/* 028864 8015CAD4 00000000 */  .float  0.0
/* 028868 8015CAD8 8015CA88 */  .float  -2.0011999420961286e-39
/* 02886C 8015CADC 8015CA88 */  .float  -2.0011999420961286e-39
/* 028870 8015CAE0 00020000 */  .float  1.8367099231598242e-40
/* 028874 8015CAE4 00000000 */  .float  0.0
/* 028878 8015CAE8 3F800000 */  .float  1.0
/* 02887C 8015CAEC 3F800000 */  .float  1.0
/* 028880 8015CAF0 3F800000 */  .float  1.0
/* 028884 8015CAF4 00000000 */  .float  0.0
/* 028888 8015CAF8 00000000 */  .float  0.0
/* 02888C 8015CAFC 00000000 */  .float  0.0
/* 028890 8015CB00 00000000 */  .float  0.0
/* 028894 8015CB04 00000000 */  .float  0.0
/* 028898 8015CB08 00000000 */  .float  0.0
/* 02889C 8015CB0C 447A0000 */  .float  1000.0
/* 0288A0 8015CB10 00000000 */  .float  0.0
/* 0288A4 8015CB14 00000000 */  .float  0.0
/* 0288A8 8015CB18 0403AB40 */  .float  1.5477610139357246e-36
/* 0288AC 8015CB1C 00000000 */  .float  0.0
/* 0288B0 8015CB20 BC1374BC */  .float  -0.008999999612569809
/* 0288B4 8015CB24 3F666666 */  .float  0.8999999761581421
/* 0288B8 8015CB28 41201062 */  .float  10.003999710083008
/* 0288BC 8015CB2C 41201CAC */  .float  10.006999969482422
/* 0288C0 8015CB30 3F666666 */  .float  0.8999999761581421
/* 0288C4 8015CB34 41201CAC */  .float  10.006999969482422
/* 0288C8 8015CB38 41201062 */  .float  10.003999710083008
/* 0288CC 8015CB3C 3F666666 */  .float  0.8999999761581421
/* 0288D0 8015CB40 BC1374BC */  .float  -0.008999999612569809
/* 0288D4 8015CB44 00000000 */  .float  0.0
/* 0288D8 8015CB48 BBE56042 */  .float  -0.007000000216066837
/* 0288DC 8015CB4C 3F666666 */  .float  0.8999999761581421
/* 0288E0 8015CB50 BBE56042 */  .float  -0.007000000216066837
/* 0288E4 8015CB54 BB83126F */  .float  -0.004000000189989805
/* 0288E8 8015CB58 3F666666 */  .float  0.8999999761581421
/* 0288EC 8015CB5C 412024DD */  .float  10.008999824523926
/* 0288F0 8015CB60 412024DD */  .float  10.008999824523926
/* 0288F4 8015CB64 3F666666 */  .float  0.8999999761581421
/* 0288F8 8015CB68 BB83126F */  .float  -0.004000000189989805
/* 0288FC 8015CB6C 00000000 */  .float  0.0
/* 028900 8015CB70 8015CB20 */  .float  -2.001412939462706e-39
/* 028904 8015CB74 8015CB20 */  .float  -2.001412939462706e-39
/* 028908 8015CB78 00020000 */  .float  1.8367099231598242e-40
/* 02890C 8015CB7C 00000000 */  .float  0.0
/* 028910 8015CB80 3F800000 */  .float  1.0
/* 028914 8015CB84 3F800000 */  .float  1.0
/* 028918 8015CB88 3F800000 */  .float  1.0
/* 02891C 8015CB8C 00000000 */  .float  0.0
/* 028920 8015CB90 00000000 */  .float  0.0
/* 028924 8015CB94 00000000 */  .float  0.0
/* 028928 8015CB98 00000000 */  .float  0.0
/* 02892C 8015CB9C 00000000 */  .float  0.0
/* 028930 8015CBA0 00000000 */  .float  0.0
/* 028934 8015CBA4 447A0000 */  .float  1000.0
/* 028938 8015CBA8 00000000 */  .float  0.0
/* 02893C 8015CBAC 00000000 */  .float  0.0
/* 028940 8015CBB0 0403AC30 */  .float  1.5478040618245487e-36
/* 028944 8015CBB4 00000000 */  .float  0.0
/* 028948 8015CBB8 BC1374BC */  .float  -0.008999999612569809
/* 02894C 8015CBBC 3F666666 */  .float  0.8999999761581421
/* 028950 8015CBC0 41201062 */  .float  10.003999710083008
/* 028954 8015CBC4 41201CAC */  .float  10.006999969482422
/* 028958 8015CBC8 3F666666 */  .float  0.8999999761581421
/* 02895C 8015CBCC 41201CAC */  .float  10.006999969482422
/* 028960 8015CBD0 41201062 */  .float  10.003999710083008
/* 028964 8015CBD4 3F666666 */  .float  0.8999999761581421
/* 028968 8015CBD8 BC1374BC */  .float  -0.008999999612569809
/* 02896C 8015CBDC 00000000 */  .float  0.0
/* 028970 8015CBE0 BBE56042 */  .float  -0.007000000216066837
/* 028974 8015CBE4 3F666666 */  .float  0.8999999761581421
/* 028978 8015CBE8 BBE56042 */  .float  -0.007000000216066837
/* 02897C 8015CBEC BB83126F */  .float  -0.004000000189989805
/* 028980 8015CBF0 3F666666 */  .float  0.8999999761581421
/* 028984 8015CBF4 412024DD */  .float  10.008999824523926
/* 028988 8015CBF8 412024DD */  .float  10.008999824523926
/* 02898C 8015CBFC 3F666666 */  .float  0.8999999761581421
/* 028990 8015CC00 BB83126F */  .float  -0.004000000189989805
/* 028994 8015CC04 00000000 */  .float  0.0
/* 028998 8015CC08 8015CBB8 */  .float  -2.0016259368292833e-39
/* 02899C 8015CC0C 8015CBB8 */  .float  -2.0016259368292833e-39
/* 0289A0 8015CC10 00020000 */  .float  1.8367099231598242e-40
/* 0289A4 8015CC14 00000000 */  .float  0.0
/* 0289A8 8015CC18 3F800000 */  .float  1.0
/* 0289AC 8015CC1C 3F800000 */  .float  1.0
/* 0289B0 8015CC20 3F800000 */  .float  1.0
/* 0289B4 8015CC24 00000000 */  .float  0.0
/* 0289B8 8015CC28 00000000 */  .float  0.0
/* 0289BC 8015CC2C 00000000 */  .float  0.0
/* 0289C0 8015CC30 00000000 */  .float  0.0
/* 0289C4 8015CC34 00000000 */  .float  0.0
/* 0289C8 8015CC38 00000000 */  .float  0.0
/* 0289CC 8015CC3C 447A0000 */  .float  1000.0
/* 0289D0 8015CC40 00000000 */  .float  0.0
/* 0289D4 8015CC44 00000000 */  .float  0.0
/* 0289D8 8015CC48 0403AD20 */  .float  1.5478471097133727e-36
/* 0289DC 8015CC4C 00000000 */  .float  0.0
/* 0289E0 8015CC50 3F12F1AA */  .float  0.5740000009536743
/* 0289E4 8015CC54 3F12F1AA */  .float  0.5740000009536743
/* 0289E8 8015CC58 3F12B021 */  .float  0.5730000138282776
/* 0289EC 8015CC5C 419FF9DB */  .float  19.996999740600586
/* 0289F0 8015CC60 419FF9DB */  .float  19.996999740600586
/* 0289F4 8015CC64 3F7F3B64 */  .float  0.996999979019165
/* 0289F8 8015CC68 3F7F3B64 */  .float  0.996999979019165
/* 0289FC 8015CC6C 3F7F3B64 */  .float  0.996999979019165
/* 028A00 8015CC70 3F7EF9DB */  .float  0.9959999918937683
/* 028A04 8015CC74 3F7EF9DB */  .float  0.9959999918937683
/* 028A08 8015CC78 3F7EF9DB */  .float  0.9959999918937683
/* 028A0C 8015CC7C 3F12F1AA */  .float  0.5740000009536743
/* 028A10 8015CC80 3F12F1AA */  .float  0.5740000009536743
/* 028A14 8015CC84 3F12B021 */  .float  0.5730000138282776
/* 028A18 8015CC88 419FF9DB */  .float  19.996999740600586
/* 028A1C 8015CC8C 419FF9DB */  .float  19.996999740600586
/* 028A20 8015CC90 3F7EF9DB */  .float  0.9959999918937683
/* 028A24 8015CC94 3F7EF9DB */  .float  0.9959999918937683
/* 028A28 8015CC98 3F7EF9DB */  .float  0.9959999918937683
/* 028A2C 8015CC9C 3F7EF9DB */  .float  0.9959999918937683
/* 028A30 8015CCA0 3F7EF9DB */  .float  0.9959999918937683
/* 028A34 8015CCA4 3F7EF9DB */  .float  0.9959999918937683
/* 028A38 8015CCA8 3F12F1AA */  .float  0.5740000009536743
/* 028A3C 8015CCAC 3F12F1AA */  .float  0.5740000009536743
/* 028A40 8015CCB0 3F12B021 */  .float  0.5730000138282776
/* 028A44 8015CCB4 419FF9DB */  .float  19.996999740600586
/* 028A48 8015CCB8 419FF9DB */  .float  19.996999740600586
/* 028A4C 8015CCBC 3F7EF9DB */  .float  0.9959999918937683
/* 028A50 8015CCC0 3F7EF9DB */  .float  0.9959999918937683
/* 028A54 8015CCC4 3F7EF9DB */  .float  0.9959999918937683
/* 028A58 8015CCC8 3F7EF9DB */  .float  0.9959999918937683
/* 028A5C 8015CCCC 3F7EF9DB */  .float  0.9959999918937683
/* 028A60 8015CCD0 3F7EF9DB */  .float  0.9959999918937683
/* 028A64 8015CCD4 3F12F1AA */  .float  0.5740000009536743
/* 028A68 8015CCD8 3F12F1AA */  .float  0.5740000009536743
/* 028A6C 8015CCDC 3F12B021 */  .float  0.5730000138282776
/* 028A70 8015CCE0 419FF9DB */  .float  19.996999740600586
/* 028A74 8015CCE4 419FF9DB */  .float  19.996999740600586
/* 028A78 8015CCE8 3F7EF9DB */  .float  0.9959999918937683
/* 028A7C 8015CCEC 3F7EF9DB */  .float  0.9959999918937683
/* 028A80 8015CCF0 3F7EF9DB */  .float  0.9959999918937683
/* 028A84 8015CCF4 3F7EF9DB */  .float  0.9959999918937683
/* 028A88 8015CCF8 3F7EF9DB */  .float  0.9959999918937683
/* 028A8C 8015CCFC 3F7EF9DB */  .float  0.9959999918937683
/* 028A90 8015CD00 3F12F1AA */  .float  0.5740000009536743
/* 028A94 8015CD04 3F12F1AA */  .float  0.5740000009536743
/* 028A98 8015CD08 3F12B021 */  .float  0.5730000138282776
/* 028A9C 8015CD0C 419FF9DB */  .float  19.996999740600586
/* 028AA0 8015CD10 419FF9DB */  .float  19.996999740600586
/* 028AA4 8015CD14 3F7EF9DB */  .float  0.9959999918937683
/* 028AA8 8015CD18 3F7EF9DB */  .float  0.9959999918937683
/* 028AAC 8015CD1C 3F7EF9DB */  .float  0.9959999918937683
/* 028AB0 8015CD20 3F7EF9DB */  .float  0.9959999918937683
/* 028AB4 8015CD24 3F7EF9DB */  .float  0.9959999918937683
/* 028AB8 8015CD28 3F7EF9DB */  .float  0.9959999918937683
/* 028ABC 8015CD2C 3F12F1AA */  .float  0.5740000009536743
/* 028AC0 8015CD30 3F12F1AA */  .float  0.5740000009536743
/* 028AC4 8015CD34 3F12B021 */  .float  0.5730000138282776
/* 028AC8 8015CD38 419FF9DB */  .float  19.996999740600586
/* 028ACC 8015CD3C 419FF9DB */  .float  19.996999740600586
/* 028AD0 8015CD40 3F7EF9DB */  .float  0.9959999918937683
/* 028AD4 8015CD44 3F7EF9DB */  .float  0.9959999918937683
/* 028AD8 8015CD48 3F7EF9DB */  .float  0.9959999918937683
/* 028ADC 8015CD4C 3F7EF9DB */  .float  0.9959999918937683
/* 028AE0 8015CD50 3F7EF9DB */  .float  0.9959999918937683
/* 028AE4 8015CD54 3F7EF9DB */  .float  0.9959999918937683
/* 028AE8 8015CD58 3F12F1AA */  .float  0.5740000009536743
/* 028AEC 8015CD5C 3F12F1AA */  .float  0.5740000009536743
/* 028AF0 8015CD60 3F12B021 */  .float  0.5730000138282776
/* 028AF4 8015CD64 419FF9DB */  .float  19.996999740600586
/* 028AF8 8015CD68 419FF9DB */  .float  19.996999740600586
/* 028AFC 8015CD6C 3F7EF9DB */  .float  0.9959999918937683
/* 028B00 8015CD70 3F7EF9DB */  .float  0.9959999918937683
/* 028B04 8015CD74 3F7EF9DB */  .float  0.9959999918937683
/* 028B08 8015CD78 3F7EF9DB */  .float  0.9959999918937683
/* 028B0C 8015CD7C 3F7EF9DB */  .float  0.9959999918937683
/* 028B10 8015CD80 3F7EF9DB */  .float  0.9959999918937683
/* 028B14 8015CD84 3F12F1AA */  .float  0.5740000009536743
/* 028B18 8015CD88 3F12F1AA */  .float  0.5740000009536743
/* 028B1C 8015CD8C 3F12B021 */  .float  0.5730000138282776
/* 028B20 8015CD90 419FF9DB */  .float  19.996999740600586
/* 028B24 8015CD94 419FF9DB */  .float  19.996999740600586
/* 028B28 8015CD98 3F7EF9DB */  .float  0.9959999918937683
/* 028B2C 8015CD9C 3F7EF9DB */  .float  0.9959999918937683
/* 028B30 8015CDA0 3F7EF9DB */  .float  0.9959999918937683
/* 028B34 8015CDA4 3F7EF9DB */  .float  0.9959999918937683
/* 028B38 8015CDA8 3F7EF9DB */  .float  0.9959999918937683
/* 028B3C 8015CDAC 3F7EF9DB */  .float  0.9959999918937683
/* 028B40 8015CDB0 3F12F1AA */  .float  0.5740000009536743
/* 028B44 8015CDB4 3F12F1AA */  .float  0.5740000009536743
/* 028B48 8015CDB8 3F12B021 */  .float  0.5730000138282776
/* 028B4C 8015CDBC 419FF9DB */  .float  19.996999740600586
/* 028B50 8015CDC0 419FF9DB */  .float  19.996999740600586
/* 028B54 8015CDC4 3F7EF9DB */  .float  0.9959999918937683
/* 028B58 8015CDC8 3F7EF9DB */  .float  0.9959999918937683
/* 028B5C 8015CDCC 3F7EF9DB */  .float  0.9959999918937683
/* 028B60 8015CDD0 3F7EF9DB */  .float  0.9959999918937683
/* 028B64 8015CDD4 3F7EF9DB */  .float  0.9959999918937683
/* 028B68 8015CDD8 3F7EF9DB */  .float  0.9959999918937683
/* 028B6C 8015CDDC 3F12F1AA */  .float  0.5740000009536743
/* 028B70 8015CDE0 3F12F1AA */  .float  0.5740000009536743
/* 028B74 8015CDE4 3F12B021 */  .float  0.5730000138282776
/* 028B78 8015CDE8 419FF9DB */  .float  19.996999740600586
/* 028B7C 8015CDEC 419FF9DB */  .float  19.996999740600586
/* 028B80 8015CDF0 3F7EF9DB */  .float  0.9959999918937683
/* 028B84 8015CDF4 3F7EF9DB */  .float  0.9959999918937683
/* 028B88 8015CDF8 3F7EF9DB */  .float  0.9959999918937683
/* 028B8C 8015CDFC 3F7EF9DB */  .float  0.9959999918937683
/* 028B90 8015CE00 3F7EF9DB */  .float  0.9959999918937683
/* 028B94 8015CE04 3F7EF9DB */  .float  0.9959999918937683
/* 028B98 8015CE08 3F12F1AA */  .float  0.5740000009536743
/* 028B9C 8015CE0C 3F12F1AA */  .float  0.5740000009536743
/* 028BA0 8015CE10 3F12B021 */  .float  0.5730000138282776
/* 028BA4 8015CE14 419FF9DB */  .float  19.996999740600586
/* 028BA8 8015CE18 419FF9DB */  .float  19.996999740600586
/* 028BAC 8015CE1C 3F7EF9DB */  .float  0.9959999918937683
/* 028BB0 8015CE20 3F7EF9DB */  .float  0.9959999918937683
/* 028BB4 8015CE24 3F7EF9DB */  .float  0.9959999918937683
/* 028BB8 8015CE28 3F7EF9DB */  .float  0.9959999918937683
/* 028BBC 8015CE2C 3F7EF9DB */  .float  0.9959999918937683
/* 028BC0 8015CE30 3F7EF9DB */  .float  0.9959999918937683
/* 028BC4 8015CE34 00200020 */  .float  2.938780718606577e-39
/* 028BC8 8015CE38 00200030 */  .float  2.9388031393820064e-39
/* 028BCC 8015CE3C 00300030 */  .float  4.408171077909866e-39
/* 028BD0 8015CE40 00300030 */  .float  4.408171077909866e-39
/* 028BD4 8015CE44 00300030 */  .float  4.408171077909866e-39
/* 028BD8 8015CE48 00300020 */  .float  4.4081486571344365e-39
/* 028BDC 8015CE4C 00200020 */  .float  2.938780718606577e-39
/* 028BE0 8015CE50 00300030 */  .float  4.408171077909866e-39
/* 028BE4 8015CE54 00200020 */  .float  2.938780718606577e-39
/* 028BE8 8015CE58 00200020 */  .float  2.938780718606577e-39
/* 028BEC 8015CE5C 00200020 */  .float  2.938780718606577e-39
/* 028BF0 8015CE60 00200020 */  .float  2.938780718606577e-39
/* 028BF4 8015CE64 00200030 */  .float  2.9388031393820064e-39
/* 028BF8 8015CE68 00300020 */  .float  4.4081486571344365e-39
/* 028BFC 8015CE6C 00200020 */  .float  2.938780718606577e-39
/* 028C00 8015CE70 00200020 */  .float  2.938780718606577e-39
/* 028C04 8015CE74 00200020 */  .float  2.938780718606577e-39
/* 028C08 8015CE78 00200020 */  .float  2.938780718606577e-39
/* 028C0C 8015CE7C 00300030 */  .float  4.408171077909866e-39
/* 028C10 8015CE80 00200020 */  .float  2.938780718606577e-39
/* 028C14 8015CE84 00200020 */  .float  2.938780718606577e-39
/* 028C18 8015CE88 00200020 */  .float  2.938780718606577e-39
/* 028C1C 8015CE8C 00200020 */  .float  2.938780718606577e-39
/* 028C20 8015CE90 00200030 */  .float  2.9388031393820064e-39
/* 028C24 8015CE94 00300020 */  .float  4.4081486571344365e-39
/* 028C28 8015CE98 00200020 */  .float  2.938780718606577e-39
/* 028C2C 8015CE9C 00200020 */  .float  2.938780718606577e-39
/* 028C30 8015CEA0 00200020 */  .float  2.938780718606577e-39
/* 028C34 8015CEA4 00200020 */  .float  2.938780718606577e-39
/* 028C38 8015CEA8 00300030 */  .float  4.408171077909866e-39
/* 028C3C 8015CEAC 00200020 */  .float  2.938780718606577e-39
/* 028C40 8015CEB0 00200020 */  .float  2.938780718606577e-39
/* 028C44 8015CEB4 00200020 */  .float  2.938780718606577e-39
/* 028C48 8015CEB8 00200020 */  .float  2.938780718606577e-39
/* 028C4C 8015CEBC 00200030 */  .float  2.9388031393820064e-39
/* 028C50 8015CEC0 00300020 */  .float  4.4081486571344365e-39
/* 028C54 8015CEC4 00200020 */  .float  2.938780718606577e-39
/* 028C58 8015CEC8 00200020 */  .float  2.938780718606577e-39
/* 028C5C 8015CECC 00200020 */  .float  2.938780718606577e-39
/* 028C60 8015CED0 00200020 */  .float  2.938780718606577e-39
/* 028C64 8015CED4 00300030 */  .float  4.408171077909866e-39
/* 028C68 8015CED8 00200020 */  .float  2.938780718606577e-39
/* 028C6C 8015CEDC 00200020 */  .float  2.938780718606577e-39
/* 028C70 8015CEE0 00200020 */  .float  2.938780718606577e-39
/* 028C74 8015CEE4 00200020 */  .float  2.938780718606577e-39
/* 028C78 8015CEE8 00200030 */  .float  2.9388031393820064e-39
/* 028C7C 8015CEEC 00300020 */  .float  4.4081486571344365e-39
/* 028C80 8015CEF0 00200020 */  .float  2.938780718606577e-39
/* 028C84 8015CEF4 00200020 */  .float  2.938780718606577e-39
/* 028C88 8015CEF8 00200020 */  .float  2.938780718606577e-39
/* 028C8C 8015CEFC 00200020 */  .float  2.938780718606577e-39
/* 028C90 8015CF00 00300030 */  .float  4.408171077909866e-39
/* 028C94 8015CF04 00200020 */  .float  2.938780718606577e-39
/* 028C98 8015CF08 00200020 */  .float  2.938780718606577e-39
/* 028C9C 8015CF0C 00200020 */  .float  2.938780718606577e-39
/* 028CA0 8015CF10 00200020 */  .float  2.938780718606577e-39
/* 028CA4 8015CF14 00200030 */  .float  2.9388031393820064e-39
/* 028CA8 8015CF18 00300020 */  .float  4.4081486571344365e-39
/* 028CAC 8015CF1C 00200020 */  .float  2.938780718606577e-39
/* 028CB0 8015CF20 00200020 */  .float  2.938780718606577e-39
/* 028CB4 8015CF24 00200000 */  .float  2.938735877055719e-39
/* 028CB8 8015CF28 8015CC50 */  .float  -2.0018389341958607e-39
/* 028CBC 8015CF2C 8015CE34 */  .float  -2.002517162652594e-39
/* 028CC0 8015CF30 000B000B */  .float  1.0102058720210109e-39
/* 028CC4 8015CF34 00000002 */  .float  2.802596928649634e-45
/* 028CC8 8015CF38 3F800000 */  .float  1.0
/* 028CCC 8015CF3C 3F800000 */  .float  1.0
/* 028CD0 8015CF40 3F800000 */  .float  1.0
/* 028CD4 8015CF44 00000000 */  .float  0.0
/* 028CD8 8015CF48 00000000 */  .float  0.0
/* 028CDC 8015CF4C 00000000 */  .float  0.0
/* 028CE0 8015CF50 00000000 */  .float  0.0
/* 028CE4 8015CF54 00000000 */  .float  0.0
/* 028CE8 8015CF58 00000000 */  .float  0.0
/* 028CEC 8015CF5C 44F2D99A */  .float  1942.800048828125
/* 028CF0 8015CF60 00000000 */  .float  0.0
/* 028CF4 8015CF64 00000000 */  .float  0.0
/* 028CF8 8015CF68 0403B400 */  .float  1.548162794231416e-36
/* 028CFC 8015CF6C 00000000 */  .float  0.0
/* 028D00 8015CF70 412024DD */  .float  10.008999824523926
/* 028D04 8015CF74 41A00000 */  .float  20.0
/* 028D08 8015CF78 BB83126F */  .float  -0.004000000189989805
/* 028D0C 8015CF7C BBE56042 */  .float  -0.007000000216066837
/* 028D10 8015CF80 41A00000 */  .float  20.0
/* 028D14 8015CF84 BBE56042 */  .float  -0.007000000216066837
/* 028D18 8015CF88 BB83126F */  .float  -0.004000000189989805
/* 028D1C 8015CF8C 41A00000 */  .float  20.0
/* 028D20 8015CF90 412024DD */  .float  10.008999824523926
/* 028D24 8015CF94 00300000 */  .float  4.408103815583578e-39
/* 028D28 8015CF98 41201CAC */  .float  10.006999969482422
/* 028D2C 8015CF9C 41A00000 */  .float  20.0
/* 028D30 8015CFA0 BBE56042 */  .float  -0.007000000216066837
/* 028D34 8015CFA4 BBE56042 */  .float  -0.007000000216066837
/* 028D38 8015CFA8 41A00000 */  .float  20.0
/* 028D3C 8015CFAC 41201CAC */  .float  10.006999969482422
/* 028D40 8015CFB0 40C051EC */  .float  6.010000228881836
/* 028D44 8015CFB4 41A00000 */  .float  20.0
/* 028D48 8015CFB8 40A00000 */  .float  5.0
/* 028D4C 8015CFBC 00300000 */  .float  4.408103815583578e-39
/* 028D50 8015CFC0 41201062 */  .float  10.003999710083008
/* 028D54 8015CFC4 41A00000 */  .float  20.0
/* 028D58 8015CFC8 BC1374BC */  .float  -0.008999999612569809
/* 028D5C 8015CFCC 40BFBE77 */  .float  5.992000102996826
/* 028D60 8015CFD0 41A00000 */  .float  20.0
/* 028D64 8015CFD4 40A028F6 */  .float  5.005000114440918
/* 028D68 8015CFD8 41201893 */  .float  10.005999565124512
/* 028D6C 8015CFDC 41A00000 */  .float  20.0
/* 028D70 8015CFE0 40A04189 */  .float  5.007999897003174
/* 028D74 8015CFE4 00300000 */  .float  4.408103815583578e-39
/* 028D78 8015CFE8 40971AA0 */  .float  4.7220001220703125
/* 028D7C 8015CFEC 40FCE560 */  .float  7.9029998779296875
/* 028D80 8015CFF0 40EDBA5E */  .float  7.428999900817871
/* 028D84 8015CFF4 40D2978D */  .float  6.580999851226807
/* 028D88 8015CFF8 40FCE560 */  .float  7.9029998779296875
/* 028D8C 8015CFFC 41149BA6 */  .float  9.288000106811523
/* 028D90 8015D000 40D2A7F0 */  .float  6.583000183105469
/* 028D94 8015D004 40FCE560 */  .float  7.9029998779296875
/* 028D98 8015D008 40EDA9FC */  .float  7.427000045776367
/* 028D9C 8015D00C 00300000 */  .float  4.408103815583578e-39
/* 028DA0 8015D010 40974396 */  .float  4.7270002365112305
/* 028DA4 8015D014 40FCE560 */  .float  7.9029998779296875
/* 028DA8 8015D018 40ED999A */  .float  7.425000190734863
/* 028DAC 8015D01C 40972B02 */  .float  4.723999977111816
/* 028DB0 8015D020 40FCE560 */  .float  7.9029998779296875
/* 028DB4 8015D024 41149375 */  .float  9.28600025177002
/* 028DB8 8015D028 40D2B852 */  .float  6.585000038146973
/* 028DBC 8015D02C 40FCE560 */  .float  7.9029998779296875
/* 028DC0 8015D030 4114872B */  .float  9.282999992370605
/* 028DC4 8015D034 00300000 */  .float  4.408103815583578e-39
/* 028DC8 8015D038 412024DD */  .float  10.008999824523926
/* 028DCC 8015D03C 40C69FBE */  .float  6.206999778747559
/* 028DD0 8015D040 409FE76D */  .float  4.997000217437744
/* 028DD4 8015D044 40C020C5 */  .float  6.004000186920166
/* 028DD8 8015D048 40C69FBE */  .float  6.206999778747559
/* 028DDC 8015D04C 409FB646 */  .float  4.991000175476074
/* 028DE0 8015D050 BC03126F */  .float  -0.00800000037997961
/* 028DE4 8015D054 40C69FBE */  .float  6.206999778747559
/* 028DE8 8015D058 4120147B */  .float  10.005000114440918
/* 028DEC 8015D05C 00300000 */  .float  4.408103815583578e-39
/* 028DF0 8015D060 41201CAC */  .float  10.006999969482422
/* 028DF4 8015D064 40C69FBE */  .float  6.206999778747559
/* 028DF8 8015D068 409FC6A8 */  .float  4.993000030517578
/* 028DFC 8015D06C BC23D70A */  .float  -0.009999999776482582
/* 028E00 8015D070 40C69FBE */  .float  6.206999778747559
/* 028E04 8015D074 41200831 */  .float  10.001999855041504
/* 028E08 8015D078 412024DD */  .float  10.008999824523926
/* 028E0C 8015D07C 40C69FBE */  .float  6.206999778747559
/* 028E10 8015D080 41201062 */  .float  10.003999710083008
/* 028E14 8015D084 00300000 */  .float  4.408103815583578e-39
/* 028E18 8015D088 8015CF70 */  .float  -2.0029599729673205e-39
/* 028E1C 8015D08C 8015CF70 */  .float  -2.0029599729673205e-39
/* 028E20 8015D090 00070000 */  .float  6.428484731059385e-40
/* 028E24 8015D094 00000000 */  .float  0.0
/* 028E28 8015D098 3F800000 */  .float  1.0
/* 028E2C 8015D09C 3F800000 */  .float  1.0
/* 028E30 8015D0A0 3F800000 */  .float  1.0
/* 028E34 8015D0A4 00000000 */  .float  0.0
/* 028E38 8015D0A8 00000000 */  .float  0.0
/* 028E3C 8015D0AC 00000000 */  .float  0.0
/* 028E40 8015D0B0 00000000 */  .float  0.0
/* 028E44 8015D0B4 00000000 */  .float  0.0
/* 028E48 8015D0B8 00000000 */  .float  0.0
/* 028E4C 8015D0BC 44ED8000 */  .float  1900.0
/* 028E50 8015D0C0 8015D0D0 */  .float  -2.003453230026763e-39
/* 028E54 8015D0C4 00000000 */  .float  0.0
/* 028E58 8015D0C8 0403BF40 */  .float  1.5486793688973045e-36
/* 028E5C 8015D0CC 00000000 */  .float  0.0
/* 028E60 8015D0D0 3F800000 */  .float  1.0
/* 028E64 8015D0D4 3F800000 */  .float  1.0
/* 028E68 8015D0D8 3F800000 */  .float  1.0
/* 028E6C 8015D0DC 00000000 */  .float  0.0
/* 028E70 8015D0E0 00000000 */  .float  0.0
/* 028E74 8015D0E4 00000000 */  .float  0.0
/* 028E78 8015D0E8 443D6282 */  .float  757.5391845703125
/* 028E7C 8015D0EC 44AFFFF5 */  .float  1407.9986572265625
/* 028E80 8015D0F0 436A2021 */  .float  234.12550354003906
/* 028E84 8015D0F4 00000000 */  .float  0.0
/* 028E88 8015D0F8 00000000 */  .float  0.0
/* 028E8C 8015D0FC 8015D108 */  .float  -2.003531702740765e-39
/* 028E90 8015D100 00000000 */  .float  0.0
/* 028E94 8015D104 00820000 */  .float  1.1938614500538858e-38
/* 028E98 8015D108 3F800000 */  .float  1.0
/* 028E9C 8015D10C 3F800000 */  .float  1.0
/* 028EA0 8015D110 3F800000 */  .float  1.0
/* 028EA4 8015D114 00000000 */  .float  0.0
/* 028EA8 8015D118 00000000 */  .float  0.0
/* 028EAC 8015D11C C2B40000 */  .float  -90.0
/* 028EB0 8015D120 433A52B0 */  .float  186.322998046875
/* 028EB4 8015D124 00000000 */  .float  0.0
/* 028EB8 8015D128 00000000 */  .float  0.0
/* 028EBC 8015D12C 40E9999A */  .float  7.300000190734863
/* 028EC0 8015D130 00000000 */  .float  0.0
/* 028EC4 8015D134 00000000 */  .float  0.0
/* 028EC8 8015D138 0403C330 */  .float  1.5488601700303656e-36
/* 028ECC 8015D13C 00820000 */  .float  1.1938614500538858e-38
/* 028ED0 8015D140 BBA3D70A */  .float  -0.004999999888241291
/* 028ED4 8015D144 3F800000 */  .float  1.0
/* 028ED8 8015D148 3F7DB22D */  .float  0.9909999966621399
/* 028EDC 8015D14C BBE56042 */  .float  -0.007000000216066837
/* 028EE0 8015D150 3F800000 */  .float  1.0
/* 028EE4 8015D154 41201CAC */  .float  10.006999969482422
/* 028EE8 8015D158 412024DD */  .float  10.008999824523926
/* 028EEC 8015D15C 3F800000 */  .float  1.0
/* 028EF0 8015D160 41201062 */  .float  10.003999710083008
/* 028EF4 8015D164 00000000 */  .float  0.0
/* 028EF8 8015D168 BC03126F */  .float  -0.00800000037997961
/* 028EFC 8015D16C 3F800000 */  .float  1.0
/* 028F00 8015D170 3F7E76C9 */  .float  0.9940000176429749
/* 028F04 8015D174 41201CAC */  .float  10.006999969482422
/* 028F08 8015D178 3F800000 */  .float  1.0
/* 028F0C 8015D17C 41201CAC */  .float  10.006999969482422
/* 028F10 8015D180 3F7E353F */  .float  0.9929999709129333
/* 028F14 8015D184 3F800000 */  .float  1.0
/* 028F18 8015D188 3F7E353F */  .float  0.9929999709129333
/* 028F1C 8015D18C 00000000 */  .float  0.0
/* 028F20 8015D190 3F7DB22D */  .float  0.9909999966621399
/* 028F24 8015D194 3F800000 */  .float  1.0
/* 028F28 8015D198 3F7EF9DB */  .float  0.9959999918937683
/* 028F2C 8015D19C 41201062 */  .float  10.003999710083008
/* 028F30 8015D1A0 3F800000 */  .float  1.0
/* 028F34 8015D1A4 412024DD */  .float  10.008999824523926
/* 028F38 8015D1A8 41201893 */  .float  10.005999565124512
/* 028F3C 8015D1AC 3F800000 */  .float  1.0
/* 028F40 8015D1B0 BC03126F */  .float  -0.00800000037997961
/* 028F44 8015D1B4 00000000 */  .float  0.0
/* 028F48 8015D1B8 3F7D70A4 */  .float  0.9900000095367432
/* 028F4C 8015D1BC 3F800000 */  .float  1.0
/* 028F50 8015D1C0 3F804189 */  .float  1.0019999742507935
/* 028F54 8015D1C4 412028F6 */  .float  10.010000228881836
/* 028F58 8015D1C8 3F800000 */  .float  1.0
/* 028F5C 8015D1CC BA83126F */  .float  -0.0010000000474974513
/* 028F60 8015D1D0 3F7D70A4 */  .float  0.9900000095367432
/* 028F64 8015D1D4 3F800000 */  .float  1.0
/* 028F68 8015D1D8 BA83126F */  .float  -0.0010000000474974513
/* 028F6C 8015D1DC 00000000 */  .float  0.0
/* 028F70 8015D1E0 3F80E560 */  .float  1.0069999694824219
/* 028F74 8015D1E4 3F800000 */  .float  1.0
/* 028F78 8015D1E8 BBE56042 */  .float  -0.007000000216066837
/* 028F7C 8015D1EC BC1374BC */  .float  -0.008999999612569809
/* 028F80 8015D1F0 3F800000 */  .float  1.0
/* 028F84 8015D1F4 BB83126F */  .float  -0.004000000189989805
/* 028F88 8015D1F8 3F808312 */  .float  1.003999948501587
/* 028F8C 8015D1FC 3F800000 */  .float  1.0
/* 028F90 8015D200 3F8126E9 */  .float  1.0089999437332153
/* 028F94 8015D204 00300000 */  .float  4.408103815583578e-39
/* 028F98 8015D208 3F8126E9 */  .float  1.0089999437332153
/* 028F9C 8015D20C 3F800000 */  .float  1.0
/* 028FA0 8015D210 3F808312 */  .float  1.003999948501587
/* 028FA4 8015D214 BB83126F */  .float  -0.004000000189989805
/* 028FA8 8015D218 3F800000 */  .float  1.0
/* 028FAC 8015D21C BC1374BC */  .float  -0.008999999612569809
/* 028FB0 8015D220 BBE56042 */  .float  -0.007000000216066837
/* 028FB4 8015D224 3F800000 */  .float  1.0
/* 028FB8 8015D228 3F80E560 */  .float  1.0069999694824219
/* 028FBC 8015D22C 00300000 */  .float  4.408103815583578e-39
/* 028FC0 8015D230 8015D140 */  .float  -2.0036101754547672e-39
/* 028FC4 8015D234 8015D140 */  .float  -2.0036101754547672e-39
/* 028FC8 8015D238 00060000 */  .float  5.510129769479473e-40
/* 028FCC 8015D23C 00000000 */  .float  0.0
/* 028FD0 8015D240 3F800000 */  .float  1.0
/* 028FD4 8015D244 3F800000 */  .float  1.0
/* 028FD8 8015D248 3F800000 */  .float  1.0
/* 028FDC 8015D24C 00000000 */  .float  0.0
/* 028FE0 8015D250 00000000 */  .float  0.0
/* 028FE4 8015D254 00000000 */  .float  0.0
/* 028FE8 8015D258 00000000 */  .float  0.0
/* 028FEC 8015D25C 00000000 */  .float  0.0
/* 028FF0 8015D260 00000000 */  .float  0.0
/* 028FF4 8015D264 447A0000 */  .float  1000.0
/* 028FF8 8015D268 00000000 */  .float  0.0
/* 028FFC 8015D26C 00000000 */  .float  0.0
/* 029000 8015D270 0403C428 */  .float  1.548904652848817e-36
/* 029004 8015D274 00000000 */  .float  0.0
/* 029008 8015D278 BB83126F */  .float  -0.004000000189989805
/* 02900C 8015D27C 3F666666 */  .float  0.8999999761581421
/* 029010 8015D280 BC1374BC */  .float  -0.008999999612569809
/* 029014 8015D284 BBE56042 */  .float  -0.007000000216066837
/* 029018 8015D288 3F666666 */  .float  0.8999999761581421
/* 02901C 8015D28C 41201CAC */  .float  10.006999969482422
/* 029020 8015D290 412024DD */  .float  10.008999824523926
/* 029024 8015D294 3F666666 */  .float  0.8999999761581421
/* 029028 8015D298 41201062 */  .float  10.003999710083008
/* 02902C 8015D29C 00000000 */  .float  0.0
/* 029030 8015D2A0 BC1374BC */  .float  -0.008999999612569809
/* 029034 8015D2A4 3F666666 */  .float  0.8999999761581421
/* 029038 8015D2A8 BB83126F */  .float  -0.004000000189989805
/* 02903C 8015D2AC 41201062 */  .float  10.003999710083008
/* 029040 8015D2B0 3F666666 */  .float  0.8999999761581421
/* 029044 8015D2B4 412024DD */  .float  10.008999824523926
/* 029048 8015D2B8 41201CAC */  .float  10.006999969482422
/* 02904C 8015D2BC 3F666666 */  .float  0.8999999761581421
/* 029050 8015D2C0 BBE56042 */  .float  -0.007000000216066837
/* 029054 8015D2C4 00000000 */  .float  0.0
/* 029058 8015D2C8 8015D278 */  .float  -2.0040473805756366e-39
/* 02905C 8015D2CC 8015D278 */  .float  -2.0040473805756366e-39
/* 029060 8015D2D0 00020000 */  .float  1.8367099231598242e-40
/* 029064 8015D2D4 00000000 */  .float  0.0
/* 029068 8015D2D8 3F800000 */  .float  1.0
/* 02906C 8015D2DC 3F800000 */  .float  1.0
/* 029070 8015D2E0 3F800000 */  .float  1.0
/* 029074 8015D2E4 00000000 */  .float  0.0
/* 029078 8015D2E8 00000000 */  .float  0.0
/* 02907C 8015D2EC 00000000 */  .float  0.0
/* 029080 8015D2F0 00000000 */  .float  0.0
/* 029084 8015D2F4 00000000 */  .float  0.0
/* 029088 8015D2F8 00000000 */  .float  0.0
/* 02908C 8015D2FC 447A0000 */  .float  1000.0
/* 029090 8015D300 00000000 */  .float  0.0
/* 029094 8015D304 00000000 */  .float  0.0
/* 029098 8015D308 0403C5B8 */  .float  1.5489763993301905e-36
/* 02909C 8015D30C 00000000 */  .float  0.0
/* 0290A0 8015D310 BC1374BC */  .float  -0.008999999612569809
/* 0290A4 8015D314 3F666666 */  .float  0.8999999761581421
/* 0290A8 8015D318 41201062 */  .float  10.003999710083008
/* 0290AC 8015D31C 41201CAC */  .float  10.006999969482422
/* 0290B0 8015D320 3F666666 */  .float  0.8999999761581421
/* 0290B4 8015D324 41201CAC */  .float  10.006999969482422
/* 0290B8 8015D328 41201062 */  .float  10.003999710083008
/* 0290BC 8015D32C 3F666666 */  .float  0.8999999761581421
/* 0290C0 8015D330 BC1374BC */  .float  -0.008999999612569809
/* 0290C4 8015D334 00000000 */  .float  0.0
/* 0290C8 8015D338 BBE56042 */  .float  -0.007000000216066837
/* 0290CC 8015D33C 3F666666 */  .float  0.8999999761581421
/* 0290D0 8015D340 BBE56042 */  .float  -0.007000000216066837
/* 0290D4 8015D344 BB83126F */  .float  -0.004000000189989805
/* 0290D8 8015D348 3F666666 */  .float  0.8999999761581421
/* 0290DC 8015D34C 412024DD */  .float  10.008999824523926
/* 0290E0 8015D350 412024DD */  .float  10.008999824523926
/* 0290E4 8015D354 3F666666 */  .float  0.8999999761581421
/* 0290E8 8015D358 BB83126F */  .float  -0.004000000189989805
/* 0290EC 8015D35C 00000000 */  .float  0.0
/* 0290F0 8015D360 8015D310 */  .float  -2.004260377942214e-39
/* 0290F4 8015D364 8015D310 */  .float  -2.004260377942214e-39
/* 0290F8 8015D368 00020000 */  .float  1.8367099231598242e-40
/* 0290FC 8015D36C 00000000 */  .float  0.0
/* 029100 8015D370 3F800000 */  .float  1.0
/* 029104 8015D374 3F800000 */  .float  1.0
/* 029108 8015D378 3F800000 */  .float  1.0
/* 02910C 8015D37C 00000000 */  .float  0.0
/* 029110 8015D380 00000000 */  .float  0.0
/* 029114 8015D384 00000000 */  .float  0.0
/* 029118 8015D388 00000000 */  .float  0.0
/* 02911C 8015D38C 00000000 */  .float  0.0
/* 029120 8015D390 00000000 */  .float  0.0
/* 029124 8015D394 44B4799A */  .float  1443.800048828125
/* 029128 8015D398 00000000 */  .float  0.0
/* 02912C 8015D39C 00000000 */  .float  0.0
/* 029130 8015D3A0 0403C888 */  .float  1.5491055429966627e-36
/* 029134 8015D3A4 00000000 */  .float  0.0

glabel D_8015D3A8
/* 029138 8015D3A8 00000000 */  .word  0x00000000
/* 02913C 8015D3AC 00000000 */  .word  0x00000000
/* 029140 8015D3B0 00000000 */  .word  0x00000000
/* 029144 8015D3B4 00000000 */  .word  0x00000000
/* 029148 8015D3B8 00000000 */  .word  0x00000000
/* 02914C 8015D3BC 801234F4 */  .word  0x801234F4
/* 029150 8015D3C0 00000000 */  .word  0x00000000
/* 029154 8015D3C4 00000000 */  .word  0x00000000
/* 029158 8015D3C8 00000000 */  .word  0x00000000
/* 02915C 8015D3CC 00000000 */  .word  0x00000000
/* 029160 8015D3D0 00000000 */  .word  0x00000000
/* 029164 8015D3D4 00000000 */  .word  0x00000000
/* 029168 8015D3D8 00000000 */  .word  0x00000000
/* 02916C 8015D3DC 00000000 */  .word  0x00000000
/* 029170 8015D3E0 00000000 */  .word  0x00000000
/* 029174 8015D3E4 80158960 */  .word  0x80158960
/* 029178 8015D3E8 00000000 */  .word  0x00000000
/* 02917C 8015D3EC 00000000 */  .word  0x00000000
/* 029180 8015D3F0 80158970 */  .word  0x80158970
/* 029184 8015D3F4 00000000 */  .word  0x00000000
/* 029188 8015D3F8 80158D60 */  .word  0x80158D60
/* 02918C 8015D3FC 00000000 */  .word  0x00000000
/* 029190 8015D400 00000000 */  .word  0x00000000
/* 029194 8015D404 80158D70 */  .word  0x80158D70
/* 029198 8015D408 00000000 */  .word  0x00000000
/* 02919C 8015D40C 80159088 */  .word  0x80159088
/* 0291A0 8015D410 00000000 */  .word  0x00000000
/* 0291A4 8015D414 00000000 */  .word  0x00000000
/* 0291A8 8015D418 80159098 */  .word  0x80159098
/* 0291AC 8015D41C 00000000 */  .word  0x00000000
/* 0291B0 8015D420 80159300 */  .word  0x80159300
/* 0291B4 8015D424 00000000 */  .word  0x00000000
/* 0291B8 8015D428 00000000 */  .word  0x00000000
/* 0291BC 8015D42C 80159310 */  .word  0x80159310
/* 0291C0 8015D430 00000000 */  .word  0x00000000
/* 0291C4 8015D434 80159438 */  .word  0x80159438
/* 0291C8 8015D438 00000000 */  .word  0x00000000
/* 0291CC 8015D43C 00000000 */  .word  0x00000000
/* 0291D0 8015D440 80159448 */  .word  0x80159448
/* 0291D4 8015D444 00000000 */  .word  0x00000000
/* 0291D8 8015D448 80159520 */  .word  0x80159520
/* 0291DC 8015D44C 00000000 */  .word  0x00000000
/* 0291E0 8015D450 00000000 */  .word  0x00000000
/* 0291E4 8015D454 80159530 */  .word  0x80159530
/* 0291E8 8015D458 00000000 */  .word  0x00000000
/* 0291EC 8015D45C 801595B8 */  .word  0x801595B8
/* 0291F0 8015D460 00000000 */  .word  0x00000000
/* 0291F4 8015D464 00000000 */  .word  0x00000000
/* 0291F8 8015D468 801595C8 */  .word  0x801595C8
/* 0291FC 8015D46C 00000000 */  .word  0x00000000
/* 029200 8015D470 80159650 */  .word  0x80159650
/* 029204 8015D474 00000000 */  .word  0x00000000
/* 029208 8015D478 00000000 */  .word  0x00000000
/* 02920C 8015D47C 80159660 */  .word  0x80159660
/* 029210 8015D480 00000000 */  .word  0x00000000
/* 029214 8015D484 801596E8 */  .word  0x801596E8
/* 029218 8015D488 00000000 */  .word  0x00000000
/* 02921C 8015D48C 00000000 */  .word  0x00000000
/* 029220 8015D490 801596F8 */  .word  0x801596F8
/* 029224 8015D494 00000000 */  .word  0x00000000
/* 029228 8015D498 80159910 */  .word  0x80159910
/* 02922C 8015D49C 00000000 */  .word  0x00000000
/* 029230 8015D4A0 00000000 */  .word  0x00000000
/* 029234 8015D4A4 80159920 */  .word  0x80159920
/* 029238 8015D4A8 00000000 */  .word  0x00000000
/* 02923C 8015D4AC 80159B38 */  .word  0x80159B38
/* 029240 8015D4B0 00000000 */  .word  0x00000000
/* 029244 8015D4B4 00000000 */  .word  0x00000000
/* 029248 8015D4B8 80159B48 */  .word  0x80159B48
/* 02924C 8015D4BC 00000000 */  .word  0x00000000
/* 029250 8015D4C0 80159D60 */  .word  0x80159D60
/* 029254 8015D4C4 00000000 */  .word  0x00000000
/* 029258 8015D4C8 00000000 */  .word  0x00000000
/* 02925C 8015D4CC 80159D70 */  .word  0x80159D70
/* 029260 8015D4D0 00000000 */  .word  0x00000000
/* 029264 8015D4D4 80159DF8 */  .word  0x80159DF8
/* 029268 8015D4D8 00000000 */  .word  0x00000000
/* 02926C 8015D4DC 00000000 */  .word  0x00000000
/* 029270 8015D4E0 80159E08 */  .word  0x80159E08
/* 029274 8015D4E4 00000000 */  .word  0x00000000
/* 029278 8015D4E8 80159E90 */  .word  0x80159E90
/* 02927C 8015D4EC 00000000 */  .word  0x00000000
/* 029280 8015D4F0 00000000 */  .word  0x00000000
/* 029284 8015D4F4 80159EA0 */  .word  0x80159EA0
/* 029288 8015D4F8 00000000 */  .word  0x00000000
/* 02928C 8015D4FC 80159F28 */  .word  0x80159F28
/* 029290 8015D500 00000000 */  .word  0x00000000
/* 029294 8015D504 00000000 */  .word  0x00000000
/* 029298 8015D508 80159F38 */  .word  0x80159F38
/* 02929C 8015D50C 00000000 */  .word  0x00000000
/* 0292A0 8015D510 80159FC0 */  .word  0x80159FC0
/* 0292A4 8015D514 00000000 */  .word  0x00000000
/* 0292A8 8015D518 00000000 */  .word  0x00000000
/* 0292AC 8015D51C 80159FD0 */  .word  0x80159FD0
/* 0292B0 8015D520 00000000 */  .word  0x00000000
/* 0292B4 8015D524 8015A058 */  .word  0x8015A058
/* 0292B8 8015D528 00000000 */  .word  0x00000000
/* 0292BC 8015D52C 00000000 */  .word  0x00000000
/* 0292C0 8015D530 8015A068 */  .word  0x8015A068
/* 0292C4 8015D534 00000000 */  .word  0x00000000
/* 0292C8 8015D538 8015A2F8 */  .word  0x8015A2F8
/* 0292CC 8015D53C 00000000 */  .word  0x00000000
/* 0292D0 8015D540 00000000 */  .word  0x00000000
/* 0292D4 8015D544 8015A308 */  .word  0x8015A308
/* 0292D8 8015D548 00000000 */  .word  0x00000000
/* 0292DC 8015D54C 8015A390 */  .word  0x8015A390
/* 0292E0 8015D550 00000000 */  .word  0x00000000
/* 0292E4 8015D554 00000000 */  .word  0x00000000
/* 0292E8 8015D558 8015A3A0 */  .word  0x8015A3A0
/* 0292EC 8015D55C 00000000 */  .word  0x00000000
/* 0292F0 8015D560 8015A428 */  .word  0x8015A428
/* 0292F4 8015D564 00000000 */  .word  0x00000000
/* 0292F8 8015D568 00000000 */  .word  0x00000000
/* 0292FC 8015D56C 8015A438 */  .word  0x8015A438
/* 029300 8015D570 00000000 */  .word  0x00000000
/* 029304 8015D574 8015A4C0 */  .word  0x8015A4C0
/* 029308 8015D578 00000000 */  .word  0x00000000
/* 02930C 8015D57C 00000000 */  .word  0x00000000
/* 029310 8015D580 8015A4D0 */  .word  0x8015A4D0
/* 029314 8015D584 00000000 */  .word  0x00000000
/* 029318 8015D588 8015A7E0 */  .word  0x8015A7E0
/* 02931C 8015D58C 00000000 */  .word  0x00000000
/* 029320 8015D590 00000000 */  .word  0x00000000
/* 029324 8015D594 8015A7F0 */  .word  0x8015A7F0
/* 029328 8015D598 00000000 */  .word  0x00000000
/* 02932C 8015D59C 8015A878 */  .word  0x8015A878
/* 029330 8015D5A0 00000000 */  .word  0x00000000
/* 029334 8015D5A4 00000000 */  .word  0x00000000
/* 029338 8015D5A8 8015A888 */  .word  0x8015A888
/* 02933C 8015D5AC 00000000 */  .word  0x00000000
/* 029340 8015D5B0 8015A980 */  .word  0x8015A980
/* 029344 8015D5B4 00000000 */  .word  0x00000000
/* 029348 8015D5B8 00000000 */  .word  0x00000000
/* 02934C 8015D5BC 8015A990 */  .word  0x8015A990
/* 029350 8015D5C0 00000000 */  .word  0x00000000
/* 029354 8015D5C4 8015AA18 */  .word  0x8015AA18
/* 029358 8015D5C8 00000000 */  .word  0x00000000
/* 02935C 8015D5CC 00000000 */  .word  0x00000000
/* 029360 8015D5D0 8015AA28 */  .word  0x8015AA28
/* 029364 8015D5D4 00000000 */  .word  0x00000000
/* 029368 8015D5D8 8015AAB0 */  .word  0x8015AAB0
/* 02936C 8015D5DC 00000000 */  .word  0x00000000
/* 029370 8015D5E0 00000000 */  .word  0x00000000
/* 029374 8015D5E4 8015AAC0 */  .word  0x8015AAC0
/* 029378 8015D5E8 00000000 */  .word  0x00000000
/* 02937C 8015D5EC 8015AB98 */  .word  0x8015AB98
/* 029380 8015D5F0 00000000 */  .word  0x00000000
/* 029384 8015D5F4 00000000 */  .word  0x00000000
/* 029388 8015D5F8 8015ABA8 */  .word  0x8015ABA8
/* 02938C 8015D5FC 00000000 */  .word  0x00000000
/* 029390 8015D600 8015ACD0 */  .word  0x8015ACD0
/* 029394 8015D604 00000000 */  .word  0x00000000
/* 029398 8015D608 00000000 */  .word  0x00000000
/* 02939C 8015D60C 8015ACE0 */  .word  0x8015ACE0
/* 0293A0 8015D610 00000000 */  .word  0x00000000
/* 0293A4 8015D614 8015AFA8 */  .word  0x8015AFA8
/* 0293A8 8015D618 00000000 */  .word  0x00000000
/* 0293AC 8015D61C 00000000 */  .word  0x00000000
/* 0293B0 8015D620 8015AFB8 */  .word  0x8015AFB8
/* 0293B4 8015D624 00000000 */  .word  0x00000000
/* 0293B8 8015D628 8015B040 */  .word  0x8015B040
/* 0293BC 8015D62C 00000000 */  .word  0x00000000
/* 0293C0 8015D630 00000000 */  .word  0x00000000
/* 0293C4 8015D634 8015B050 */  .word  0x8015B050
/* 0293C8 8015D638 00000000 */  .word  0x00000000
/* 0293CC 8015D63C 8015B218 */  .word  0x8015B218
/* 0293D0 8015D640 00000000 */  .word  0x00000000
/* 0293D4 8015D644 00000000 */  .word  0x00000000
/* 0293D8 8015D648 8015B228 */  .word  0x8015B228
/* 0293DC 8015D64C 00000000 */  .word  0x00000000
/* 0293E0 8015D650 8015B788 */  .word  0x8015B788
/* 0293E4 8015D654 00000000 */  .word  0x00000000
/* 0293E8 8015D658 00000000 */  .word  0x00000000
/* 0293EC 8015D65C 8015B798 */  .word  0x8015B798
/* 0293F0 8015D660 00000000 */  .word  0x00000000
/* 0293F4 8015D664 8015B820 */  .word  0x8015B820
/* 0293F8 8015D668 00000000 */  .word  0x00000000
/* 0293FC 8015D66C 00000000 */  .word  0x00000000
/* 029400 8015D670 8015B830 */  .word  0x8015B830
/* 029404 8015D674 00000000 */  .word  0x00000000
/* 029408 8015D678 8015B8B8 */  .word  0x8015B8B8
/* 02940C 8015D67C 00000000 */  .word  0x00000000
/* 029410 8015D680 00000000 */  .word  0x00000000
/* 029414 8015D684 8015B8C8 */  .word  0x8015B8C8
/* 029418 8015D688 00000000 */  .word  0x00000000
/* 02941C 8015D68C 8015B950 */  .word  0x8015B950
/* 029420 8015D690 00000000 */  .word  0x00000000
/* 029424 8015D694 00000000 */  .word  0x00000000
/* 029428 8015D698 8015B960 */  .word  0x8015B960
/* 02942C 8015D69C 00000000 */  .word  0x00000000
/* 029430 8015D6A0 8015BA60 */  .word  0x8015BA60
/* 029434 8015D6A4 00000000 */  .word  0x00000000
/* 029438 8015D6A8 00000000 */  .word  0x00000000
/* 02943C 8015D6AC 8015BA70 */  .word  0x8015BA70
/* 029440 8015D6B0 00000000 */  .word  0x00000000
/* 029444 8015D6B4 8015BBE8 */  .word  0x8015BBE8
/* 029448 8015D6B8 00000000 */  .word  0x00000000
/* 02944C 8015D6BC 00000000 */  .word  0x00000000
/* 029450 8015D6C0 8015BBF8 */  .word  0x8015BBF8
/* 029454 8015D6C4 00000000 */  .word  0x00000000
/* 029458 8015D6C8 8015BC80 */  .word  0x8015BC80
/* 02945C 8015D6CC 00000000 */  .word  0x00000000
/* 029460 8015D6D0 00000000 */  .word  0x00000000
/* 029464 8015D6D4 8015BC90 */  .word  0x8015BC90
/* 029468 8015D6D8 00000000 */  .word  0x00000000
/* 02946C 8015D6DC 8015BD18 */  .word  0x8015BD18
/* 029470 8015D6E0 00000000 */  .word  0x00000000
/* 029474 8015D6E4 00000000 */  .word  0x00000000
/* 029478 8015D6E8 8015BD28 */  .word  0x8015BD28
/* 02947C 8015D6EC 00000000 */  .word  0x00000000
/* 029480 8015D6F0 8015BDB0 */  .word  0x8015BDB0
/* 029484 8015D6F4 00000000 */  .word  0x00000000
/* 029488 8015D6F8 00000000 */  .word  0x00000000
/* 02948C 8015D6FC 8015BDC0 */  .word  0x8015BDC0
/* 029490 8015D700 00000000 */  .word  0x00000000
/* 029494 8015D704 8015BE48 */  .word  0x8015BE48
/* 029498 8015D708 00000000 */  .word  0x00000000
/* 02949C 8015D70C 00000000 */  .word  0x00000000
/* 0294A0 8015D710 8015BE58 */  .word  0x8015BE58
/* 0294A4 8015D714 00000000 */  .word  0x00000000
/* 0294A8 8015D718 8015BEE0 */  .word  0x8015BEE0
/* 0294AC 8015D71C 00000000 */  .word  0x00000000
/* 0294B0 8015D720 00000000 */  .word  0x00000000
/* 0294B4 8015D724 8015BEF0 */  .word  0x8015BEF0
/* 0294B8 8015D728 00000000 */  .word  0x00000000
/* 0294BC 8015D72C 8015BFC8 */  .word  0x8015BFC8
/* 0294C0 8015D730 00000000 */  .word  0x00000000
/* 0294C4 8015D734 00000000 */  .word  0x00000000
/* 0294C8 8015D738 8015BFD8 */  .word  0x8015BFD8
/* 0294CC 8015D73C 00000000 */  .word  0x00000000
/* 0294D0 8015D740 8015C060 */  .word  0x8015C060
/* 0294D4 8015D744 00000000 */  .word  0x00000000
/* 0294D8 8015D748 00000000 */  .word  0x00000000
/* 0294DC 8015D74C 8015C070 */  .word  0x8015C070
/* 0294E0 8015D750 00000000 */  .word  0x00000000
/* 0294E4 8015D754 8015C260 */  .word  0x8015C260
/* 0294E8 8015D758 00000000 */  .word  0x00000000
/* 0294EC 8015D75C 00000000 */  .word  0x00000000
/* 0294F0 8015D760 8015C270 */  .word  0x8015C270
/* 0294F4 8015D764 00000000 */  .word  0x00000000
/* 0294F8 8015D768 8015C420 */  .word  0x8015C420
/* 0294FC 8015D76C 00000000 */  .word  0x00000000
/* 029500 8015D770 00000000 */  .word  0x00000000
/* 029504 8015D774 8015C430 */  .word  0x8015C430
/* 029508 8015D778 00000000 */  .word  0x00000000
/* 02950C 8015D77C 8015C608 */  .word  0x8015C608
/* 029510 8015D780 00000000 */  .word  0x00000000
/* 029514 8015D784 00000000 */  .word  0x00000000
/* 029518 8015D788 8015C618 */  .word  0x8015C618
/* 02951C 8015D78C 00000000 */  .word  0x00000000
/* 029520 8015D790 8015C7C8 */  .word  0x8015C7C8
/* 029524 8015D794 00000000 */  .word  0x00000000
/* 029528 8015D798 00000000 */  .word  0x00000000
/* 02952C 8015D79C 8015C7D8 */  .word  0x8015C7D8
/* 029530 8015D7A0 00000000 */  .word  0x00000000
/* 029534 8015D7A4 8015CA40 */  .word  0x8015CA40
/* 029538 8015D7A8 00000000 */  .word  0x00000000
/* 02953C 8015D7AC 00000000 */  .word  0x00000000
/* 029540 8015D7B0 8015CA50 */  .word  0x8015CA50
/* 029544 8015D7B4 00000000 */  .word  0x00000000
/* 029548 8015D7B8 8015CAD8 */  .word  0x8015CAD8
/* 02954C 8015D7BC 00000000 */  .word  0x00000000
/* 029550 8015D7C0 00000000 */  .word  0x00000000
/* 029554 8015D7C4 8015CAE8 */  .word  0x8015CAE8
/* 029558 8015D7C8 00000000 */  .word  0x00000000
/* 02955C 8015D7CC 8015CB70 */  .word  0x8015CB70
/* 029560 8015D7D0 00000000 */  .word  0x00000000
/* 029564 8015D7D4 00000000 */  .word  0x00000000
/* 029568 8015D7D8 8015CB80 */  .word  0x8015CB80
/* 02956C 8015D7DC 00000000 */  .word  0x00000000
/* 029570 8015D7E0 8015CC08 */  .word  0x8015CC08
/* 029574 8015D7E4 00000000 */  .word  0x00000000
/* 029578 8015D7E8 00000000 */  .word  0x00000000
/* 02957C 8015D7EC 8015CC18 */  .word  0x8015CC18
/* 029580 8015D7F0 00000000 */  .word  0x00000000
/* 029584 8015D7F4 8015CF28 */  .word  0x8015CF28
/* 029588 8015D7F8 00000000 */  .word  0x00000000
/* 02958C 8015D7FC 00000000 */  .word  0x00000000
/* 029590 8015D800 8015CF38 */  .word  0x8015CF38
/* 029594 8015D804 00000000 */  .word  0x00000000
/* 029598 8015D808 8015D088 */  .word  0x8015D088
/* 02959C 8015D80C 00000000 */  .word  0x00000000
/* 0295A0 8015D810 00000000 */  .word  0x00000000
/* 0295A4 8015D814 8015D098 */  .word  0x8015D098
/* 0295A8 8015D818 00000000 */  .word  0x00000000
/* 0295AC 8015D81C 8015D230 */  .word  0x8015D230
/* 0295B0 8015D820 00000000 */  .word  0x00000000
/* 0295B4 8015D824 00000000 */  .word  0x00000000
/* 0295B8 8015D828 8015D240 */  .word  0x8015D240
/* 0295BC 8015D82C 00000000 */  .word  0x00000000
/* 0295C0 8015D830 8015D2C8 */  .word  0x8015D2C8
/* 0295C4 8015D834 00000000 */  .word  0x00000000
/* 0295C8 8015D838 00000000 */  .word  0x00000000
/* 0295CC 8015D83C 8015D2D8 */  .word  0x8015D2D8
/* 0295D0 8015D840 00000000 */  .word  0x00000000
/* 0295D4 8015D844 8015D360 */  .word  0x8015D360
/* 0295D8 8015D848 00000000 */  .word  0x00000000
/* 0295DC 8015D84C 00000000 */  .word  0x00000000
/* 0295E0 8015D850 8015D370 */  .word  0x8015D370
/* 0295E4 8015D854 00000000 */  .word  0x00000000
/* 0295E8 8015D858 00000000 */  .word  0x00000000
/* 0295EC 8015D85C 00000000 */  .word  0x00000000
/* 0295F0 8015D860 00000000 */  .word  0x00000000
/* 0295F4 8015D864 00000000 */  .word  0x00000000
/* 0295F8 8015D868 00000000 */  .word  0x00000000
/* 0295FC 8015D86C 00000000 */  .word  0x00000000
/* 029600 8015D870 00000000 */  .word  0x00000000
/* 029604 8015D874 00000000 */  .word  0x00000000
/* 029608 8015D878 00000000 */  .word  0x00000000
/* 02960C 8015D87C 00000000 */  .word  0x00000000
/* 029610 8015D880 00000000 */  .word  0x00000000
/* 029614 8015D884 00000000 */  .word  0x00000000
/* 029618 8015D888 00000000 */  .word  0x00000000
/* 02961C 8015D88C 00000000 */  .word  0x00000000
/* 029620 8015D890 00000000 */  .word  0x00000000
/* 029624 8015D894 00000000 */  .word  0x00000000
/* 029628 8015D898 00000000 */  .word  0x00000000
/* 02962C 8015D89C 00000000 */  .word  0x00000000
/* 029630 8015D8A0 00000000 */  .word  0x00000000
/* 029634 8015D8A4 00000000 */  .word  0x00000000
/* 029638 8015D8A8 00000000 */  .word  0x00000000
/* 02963C 8015D8AC 00000000 */  .word  0x00000000
/* 029640 8015D8B0 00000000 */  .word  0x00000000
/* 029644 8015D8B4 00000000 */  .word  0x00000000
/* 029648 8015D8B8 00000000 */  .word  0x00000000
/* 02964C 8015D8BC 00000000 */  .word  0x00000000
/* 029650 8015D8C0 00000000 */  .word  0x00000000
/* 029654 8015D8C4 00000000 */  .word  0x00000000
/* 029658 8015D8C8 00000000 */  .word  0x00000000
/* 02965C 8015D8CC 00000000 */  .word  0x00000000
/* 029660 8015D8D0 00000000 */  .word  0x00000000
/* 029664 8015D8D4 00000000 */  .word  0x00000000
/* 029668 8015D8D8 00000000 */  .word  0x00000000
/* 02966C 8015D8DC 00000000 */  .word  0x00000000
/* 029670 8015D8E0 00000000 */  .word  0x00000000
/* 029674 8015D8E4 00000000 */  .word  0x00000000
/* 029678 8015D8E8 00000000 */  .word  0x00000000
/* 02967C 8015D8EC 00000000 */  .word  0x00000000
/* 029680 8015D8F0 00000000 */  .word  0x00000000
/* 029684 8015D8F4 00000000 */  .word  0x00000000
/* 029688 8015D8F8 00000000 */  .word  0x00000000
/* 02968C 8015D8FC 00000000 */  .word  0x00000000
/* 029690 8015D900 00000000 */  .word  0x00000000
/* 029694 8015D904 00000000 */  .word  0x00000000
/* 029698 8015D908 00000000 */  .word  0x00000000
/* 02969C 8015D90C 00000000 */  .word  0x00000000
/* 0296A0 8015D910 00000000 */  .word  0x00000000
/* 0296A4 8015D914 00000000 */  .word  0x00000000
/* 0296A8 8015D918 00000000 */  .word  0x00000000
/* 0296AC 8015D91C 0000002E */  .word  0x0000002E
/* 0296B0 8015D920 00000028 */  .word  0x00000028
/* 0296B4 8015D924 00000029 */  .word  0x00000029
/* 0296B8 8015D928 00000029 */  .word  0x00000029
/* 0296BC 8015D92C 00000029 */  .word  0x00000029
/* 0296C0 8015D930 00000029 */  .word  0x00000029
/* 0296C4 8015D934 00000029 */  .word  0x00000029
/* 0296C8 8015D938 00000029 */  .word  0x00000029
/* 0296CC 8015D93C 00000029 */  .word  0x00000029
/* 0296D0 8015D940 00000029 */  .word  0x00000029
/* 0296D4 8015D944 00000029 */  .word  0x00000029
/* 0296D8 8015D948 00000000 */  .word  0x00000000
/* 0296DC 8015D94C 00000000 */  .word  0x00000000
/* 0296E0 8015D950 00000000 */  .word  0x00000000
/* 0296E4 8015D954 00000000 */  .word  0x00000000
/* 0296E8 8015D958 00000000 */  .word  0x00000000
/* 0296EC 8015D95C 0000002E */  .word  0x0000002E
/* 0296F0 8015D960 0000002C */  .word  0x0000002C
/* 0296F4 8015D964 0000002E */  .word  0x0000002E
/* 0296F8 8015D968 0000002D */  .word  0x0000002D
/* 0296FC 8015D96C 00000000 */  .word  0x00000000
/* 029700 8015D970 00000000 */  .word  0x00000000
/* 029704 8015D974 00000000 */  .word  0x00000000
/* 029708 8015D978 00000000 */  .word  0x00000000
/* 02970C 8015D97C 00000000 */  .word  0x00000000
/* 029710 8015D980 00000000 */  .word  0x00000000
/* 029714 8015D984 00000000 */  .word  0x00000000
/* 029718 8015D988 00000000 */  .word  0x00000000
/* 02971C 8015D98C 00000000 */  .word  0x00000000
/* 029720 8015D990 00000000 */  .word  0x00000000
/* 029724 8015D994 00000000 */  .word  0x00000000
/* 029728 8015D998 00000000 */  .word  0x00000000
/* 02972C 8015D99C 0000002E */  .word  0x0000002E
/* 029730 8015D9A0 0000002C */  .word  0x0000002C
/* 029734 8015D9A4 0000002E */  .word  0x0000002E
/* 029738 8015D9A8 0000002D */  .word  0x0000002D
/* 02973C 8015D9AC 00000000 */  .word  0x00000000
/* 029740 8015D9B0 00000000 */  .word  0x00000000
/* 029744 8015D9B4 00000000 */  .word  0x00000000
/* 029748 8015D9B8 00000000 */  .word  0x00000000
/* 02974C 8015D9BC 00000000 */  .word  0x00000000
/* 029750 8015D9C0 00000000 */  .word  0x00000000
/* 029754 8015D9C4 00000000 */  .word  0x00000000
/* 029758 8015D9C8 00000000 */  .word  0x00000000
/* 02975C 8015D9CC 00000000 */  .word  0x00000000
/* 029760 8015D9D0 00000000 */  .word  0x00000000
/* 029764 8015D9D4 00000000 */  .word  0x00000000
/* 029768 8015D9D8 00000000 */  .word  0x00000000
/* 02976C 8015D9DC 0000002E */  .word  0x0000002E
/* 029770 8015D9E0 0000002C */  .word  0x0000002C
/* 029774 8015D9E4 0000002E */  .word  0x0000002E
/* 029778 8015D9E8 0000002D */  .word  0x0000002D
/* 02977C 8015D9EC 00000000 */  .word  0x00000000
/* 029780 8015D9F0 00000000 */  .word  0x00000000
/* 029784 8015D9F4 00000000 */  .word  0x00000000
/* 029788 8015D9F8 00000000 */  .word  0x00000000
/* 02978C 8015D9FC 00000000 */  .word  0x00000000
/* 029790 8015DA00 00000000 */  .word  0x00000000
/* 029794 8015DA04 00000000 */  .word  0x00000000
/* 029798 8015DA08 00000000 */  .word  0x00000000
/* 02979C 8015DA0C 00000000 */  .word  0x00000000
/* 0297A0 8015DA10 00000000 */  .word  0x00000000
/* 0297A4 8015DA14 00000000 */  .word  0x00000000
/* 0297A8 8015DA18 00000000 */  .word  0x00000000
/* 0297AC 8015DA1C 0000002E */  .word  0x0000002E
/* 0297B0 8015DA20 0000002C */  .word  0x0000002C
/* 0297B4 8015DA24 00000030 */  .word  0x00000030
/* 0297B8 8015DA28 00000000 */  .word  0x00000000
/* 0297BC 8015DA2C 00000000 */  .word  0x00000000
/* 0297C0 8015DA30 00000000 */  .word  0x00000000
/* 0297C4 8015DA34 00000000 */  .word  0x00000000
/* 0297C8 8015DA38 00000000 */  .word  0x00000000
/* 0297CC 8015DA3C 00000000 */  .word  0x00000000
/* 0297D0 8015DA40 00000000 */  .word  0x00000000
/* 0297D4 8015DA44 00000000 */  .word  0x00000000
/* 0297D8 8015DA48 00000000 */  .word  0x00000000
/* 0297DC 8015DA4C 00000000 */  .word  0x00000000
/* 0297E0 8015DA50 00000000 */  .word  0x00000000
/* 0297E4 8015DA54 00000000 */  .word  0x00000000
/* 0297E8 8015DA58 00000000 */  .word  0x00000000
/* 0297EC 8015DA5C 0000002E */  .word  0x0000002E
/* 0297F0 8015DA60 00000031 */  .word  0x00000031
/* 0297F4 8015DA64 0000002F */  .word  0x0000002F
/* 0297F8 8015DA68 00000000 */  .word  0x00000000
/* 0297FC 8015DA6C 00000000 */  .word  0x00000000
/* 029800 8015DA70 00000000 */  .word  0x00000000
/* 029804 8015DA74 00000000 */  .word  0x00000000
/* 029808 8015DA78 00000000 */  .word  0x00000000
/* 02980C 8015DA7C 00000000 */  .word  0x00000000
/* 029810 8015DA80 00000000 */  .word  0x00000000
/* 029814 8015DA84 00000000 */  .word  0x00000000
/* 029818 8015DA88 00000000 */  .word  0x00000000
/* 02981C 8015DA8C 00000000 */  .word  0x00000000
/* 029820 8015DA90 00000000 */  .word  0x00000000
/* 029824 8015DA94 00000000 */  .word  0x00000000
/* 029828 8015DA98 00000000 */  .word  0x00000000
/* 02982C 8015DA9C 0000002E */  .word  0x0000002E
/* 029830 8015DAA0 0000002C */  .word  0x0000002C
/* 029834 8015DAA4 0000002E */  .word  0x0000002E
/* 029838 8015DAA8 0000002D */  .word  0x0000002D
/* 02983C 8015DAAC 00000000 */  .word  0x00000000
/* 029840 8015DAB0 00000000 */  .word  0x00000000
/* 029844 8015DAB4 00000000 */  .word  0x00000000
/* 029848 8015DAB8 00000000 */  .word  0x00000000
/* 02984C 8015DABC 00000000 */  .word  0x00000000
/* 029850 8015DAC0 00000000 */  .word  0x00000000
/* 029854 8015DAC4 00000000 */  .word  0x00000000
/* 029858 8015DAC8 00000000 */  .word  0x00000000
/* 02985C 8015DACC 00000000 */  .word  0x00000000
/* 029860 8015DAD0 00000000 */  .word  0x00000000
/* 029864 8015DAD4 00000000 */  .word  0x00000000
/* 029868 8015DAD8 00000000 */  .word  0x00000000
/* 02986C 8015DADC 0000002E */  .word  0x0000002E
/* 029870 8015DAE0 0000002C */  .word  0x0000002C
/* 029874 8015DAE4 0000002E */  .word  0x0000002E
/* 029878 8015DAE8 0000002D */  .word  0x0000002D
/* 02987C 8015DAEC 00000000 */  .word  0x00000000
/* 029880 8015DAF0 00000000 */  .word  0x00000000
/* 029884 8015DAF4 00000000 */  .word  0x00000000
/* 029888 8015DAF8 00000000 */  .word  0x00000000
/* 02988C 8015DAFC 00000000 */  .word  0x00000000
/* 029890 8015DB00 00000000 */  .word  0x00000000
/* 029894 8015DB04 00000000 */  .word  0x00000000
/* 029898 8015DB08 00000000 */  .word  0x00000000
/* 02989C 8015DB0C 00000000 */  .word  0x00000000
/* 0298A0 8015DB10 00000000 */  .word  0x00000000
/* 0298A4 8015DB14 00000000 */  .word  0x00000000
/* 0298A8 8015DB18 00000000 */  .word  0x00000000
/* 0298AC 8015DB1C 0000002E */  .word  0x0000002E
/* 0298B0 8015DB20 0000002A */  .word  0x0000002A
/* 0298B4 8015DB24 0000002B */  .word  0x0000002B
/* 0298B8 8015DB28 0000002B */  .word  0x0000002B
/* 0298BC 8015DB2C 00000000 */  .word  0x00000000
/* 0298C0 8015DB30 00000000 */  .word  0x00000000
/* 0298C4 8015DB34 00000000 */  .word  0x00000000
/* 0298C8 8015DB38 00000000 */  .word  0x00000000
/* 0298CC 8015DB3C 00000000 */  .word  0x00000000
/* 0298D0 8015DB40 00000000 */  .word  0x00000000
/* 0298D4 8015DB44 00000000 */  .word  0x00000000
/* 0298D8 8015DB48 00000000 */  .word  0x00000000
/* 0298DC 8015DB4C 00000000 */  .word  0x00000000
/* 0298E0 8015DB50 00000000 */  .word  0x00000000
/* 0298E4 8015DB54 00000000 */  .word  0x00000000
/* 0298E8 8015DB58 00000000 */  .word  0x00000000
/* 0298EC 8015DB5C 00000000 */  .word  0x00000000
/* 0298F0 8015DB60 00000000 */  .word  0x00000000
/* 0298F4 8015DB64 00000000 */  .word  0x00000000
/* 0298F8 8015DB68 00000000 */  .word  0x00000000
/* 0298FC 8015DB6C 00000000 */  .word  0x00000000
/* 029900 8015DB70 00000000 */  .word  0x00000000
/* 029904 8015DB74 00000000 */  .word  0x00000000
/* 029908 8015DB78 00000000 */  .word  0x00000000
/* 02990C 8015DB7C 00000000 */  .word  0x00000000
/* 029910 8015DB80 00000000 */  .word  0x00000000
/* 029914 8015DB84 00000000 */  .word  0x00000000
/* 029918 8015DB88 00000000 */  .word  0x00000000
/* 02991C 8015DB8C 00000000 */  .word  0x00000000
/* 029920 8015DB90 00000000 */  .word  0x00000000
/* 029924 8015DB94 00000000 */  .word  0x00000000
/* 029928 8015DB98 00000000 */  .word  0x00000000
/* 02992C 8015DB9C 00000000 */  .word  0x00000000
/* 029930 8015DBA0 00000000 */  .word  0x00000000
/* 029934 8015DBA4 00000000 */  .word  0x00000000
/* 029938 8015DBA8 00000000 */  .word  0x00000000
/* 02993C 8015DBAC 00000000 */  .word  0x00000000
/* 029940 8015DBB0 00000000 */  .word  0x00000000
/* 029944 8015DBB4 00000000 */  .word  0x00000000
/* 029948 8015DBB8 00000000 */  .word  0x00000000
/* 02994C 8015DBBC 00000000 */  .word  0x00000000
/* 029950 8015DBC0 00000000 */  .word  0x00000000
/* 029954 8015DBC4 00000000 */  .word  0x00000000
/* 029958 8015DBC8 00000000 */  .word  0x00000000
/* 02995C 8015DBCC 00000000 */  .word  0x00000000
/* 029960 8015DBD0 00000000 */  .word  0x00000000
/* 029964 8015DBD4 00000000 */  .word  0x00000000
/* 029968 8015DBD8 00000000 */  .word  0x00000000
/* 02996C 8015DBDC 00000000 */  .word  0x00000000
/* 029970 8015DBE0 00000000 */  .word  0x00000000
/* 029974 8015DBE4 00000000 */  .word  0x00000000
/* 029978 8015DBE8 00000000 */  .word  0x00000000
/* 02997C 8015DBEC 00000000 */  .word  0x00000000
/* 029980 8015DBF0 00000000 */  .word  0x00000000
/* 029984 8015DBF4 00000000 */  .word  0x00000000
/* 029988 8015DBF8 00000000 */  .word  0x00000000
/* 02998C 8015DBFC 00000000 */  .word  0x00000000
/* 029990 8015DC00 00000000 */  .word  0x00000000
/* 029994 8015DC04 00000000 */  .word  0x00000000
/* 029998 8015DC08 00000000 */  .word  0x00000000
/* 02999C 8015DC0C 00000000 */  .word  0x00000000
/* 0299A0 8015DC10 00000000 */  .word  0x00000000
/* 0299A4 8015DC14 00000000 */  .word  0x00000000
/* 0299A8 8015DC18 00000000 */  .word  0x00000000
/* 0299AC 8015DC1C 00000000 */  .word  0x00000000
/* 0299B0 8015DC20 00000000 */  .word  0x00000000
/* 0299B4 8015DC24 00000000 */  .word  0x00000000
/* 0299B8 8015DC28 00000000 */  .word  0x00000000
/* 0299BC 8015DC2C 00000000 */  .word  0x00000000
/* 0299C0 8015DC30 00000000 */  .word  0x00000000
/* 0299C4 8015DC34 00000000 */  .word  0x00000000
/* 0299C8 8015DC38 00000000 */  .word  0x00000000
/* 0299CC 8015DC3C 00000000 */  .word  0x00000000
/* 0299D0 8015DC40 00000000 */  .word  0x00000000
/* 0299D4 8015DC44 00000000 */  .word  0x00000000
/* 0299D8 8015DC48 00000000 */  .word  0x00000000
/* 0299DC 8015DC4C 00000000 */  .word  0x00000000
/* 0299E0 8015DC50 00000000 */  .word  0x00000000
/* 0299E4 8015DC54 00000000 */  .word  0x00000000
/* 0299E8 8015DC58 00000000 */  .word  0x00000000
/* 0299EC 8015DC5C 00000000 */  .word  0x00000000
/* 0299F0 8015DC60 00000000 */  .word  0x00000000
/* 0299F4 8015DC64 00000000 */  .word  0x00000000
/* 0299F8 8015DC68 00000000 */  .word  0x00000000
/* 0299FC 8015DC6C 00000000 */  .word  0x00000000
/* 029A00 8015DC70 00000000 */  .word  0x00000000
/* 029A04 8015DC74 00000000 */  .word  0x00000000
/* 029A08 8015DC78 00000000 */  .word  0x00000000
/* 029A0C 8015DC7C 00000000 */  .word  0x00000000
/* 029A10 8015DC80 00000000 */  .word  0x00000000
/* 029A14 8015DC84 00000000 */  .word  0x00000000
/* 029A18 8015DC88 00000000 */  .word  0x00000000
/* 029A1C 8015DC8C 00000000 */  .word  0x00000000
/* 029A20 8015DC90 00000000 */  .word  0x00000000
/* 029A24 8015DC94 00000000 */  .word  0x00000000
/* 029A28 8015DC98 00000000 */  .word  0x00000000
/* 029A2C 8015DC9C 00000000 */  .word  0x00000000
/* 029A30 8015DCA0 00000000 */  .word  0x00000000
/* 029A34 8015DCA4 00000000 */  .word  0x00000000
/* 029A38 8015DCA8 00000000 */  .word  0x00000000
/* 029A3C 8015DCAC 00000000 */  .word  0x00000000
/* 029A40 8015DCB0 00000000 */  .word  0x00000000
/* 029A44 8015DCB4 00000000 */  .word  0x00000000
/* 029A48 8015DCB8 00000000 */  .word  0x00000000
/* 029A4C 8015DCBC 00000000 */  .word  0x00000000
/* 029A50 8015DCC0 00000000 */  .word  0x00000000
/* 029A54 8015DCC4 00000000 */  .word  0x00000000
/* 029A58 8015DCC8 00000000 */  .word  0x00000000
/* 029A5C 8015DCCC 00000000 */  .word  0x00000000
/* 029A60 8015DCD0 00000000 */  .word  0x00000000
/* 029A64 8015DCD4 00000000 */  .word  0x00000000
/* 029A68 8015DCD8 00000000 */  .word  0x00000000
/* 029A6C 8015DCDC 00000000 */  .word  0x00000000
/* 029A70 8015DCE0 00000000 */  .word  0x00000000
/* 029A74 8015DCE4 00000000 */  .word  0x00000000
/* 029A78 8015DCE8 00000000 */  .word  0x00000000
/* 029A7C 8015DCEC 00000000 */  .word  0x00000000
/* 029A80 8015DCF0 00000000 */  .word  0x00000000
/* 029A84 8015DCF4 00000000 */  .word  0x00000000
/* 029A88 8015DCF8 00000000 */  .word  0x00000000
/* 029A8C 8015DCFC 00000000 */  .word  0x00000000
/* 029A90 8015DD00 00000000 */  .word  0x00000000
/* 029A94 8015DD04 00000000 */  .word  0x00000000
/* 029A98 8015DD08 00000000 */  .word  0x00000000
/* 029A9C 8015DD0C 00000000 */  .word  0x00000000
/* 029AA0 8015DD10 00000000 */  .word  0x00000000
/* 029AA4 8015DD14 00000000 */  .word  0x00000000
/* 029AA8 8015DD18 00000000 */  .word  0x00000000
/* 029AAC 8015DD1C 00000000 */  .word  0x00000000
/* 029AB0 8015DD20 00000000 */  .word  0x00000000
/* 029AB4 8015DD24 00000000 */  .word  0x00000000
/* 029AB8 8015DD28 00000000 */  .word  0x00000000
/* 029ABC 8015DD2C 00000000 */  .word  0x00000000
/* 029AC0 8015DD30 00000000 */  .word  0x00000000
/* 029AC4 8015DD34 00000000 */  .word  0x00000000
/* 029AC8 8015DD38 00000000 */  .word  0x00000000
/* 029ACC 8015DD3C 00000000 */  .word  0x00000000
/* 029AD0 8015DD40 00000000 */  .word  0x00000000
/* 029AD4 8015DD44 00000000 */  .word  0x00000000
/* 029AD8 8015DD48 00000000 */  .word  0x00000000
/* 029ADC 8015DD4C 00000000 */  .word  0x00000000
/* 029AE0 8015DD50 00000000 */  .word  0x00000000
/* 029AE4 8015DD54 00000000 */  .word  0x00000000
/* 029AE8 8015DD58 00000000 */  .word  0x00000000
/* 029AEC 8015DD5C 00000000 */  .word  0x00000000
/* 029AF0 8015DD60 00000000 */  .word  0x00000000
/* 029AF4 8015DD64 00000000 */  .word  0x00000000
/* 029AF8 8015DD68 00000000 */  .word  0x00000000
/* 029AFC 8015DD6C 00000001 */  .word  0x00000001
/* 029B00 8015DD70 00000001 */  .word  0x00000001
/* 029B04 8015DD74 00000038 */  .word  0x00000038
/* 029B08 8015DD78 00000026 */  .word  0x00000026
/* 029B0C 8015DD7C 00000001 */  .word  0x00000001
/* 029B10 8015DD80 00000001 */  .word  0x00000001
/* 029B14 8015DD84 00000000 */  .word  0x00000000
/* 029B18 8015DD88 00000000 */  .word  0x00000000
/* 029B1C 8015DD8C 00000000 */  .word  0x00000000
/* 029B20 8015DD90 00000000 */  .word  0x00000000
/* 029B24 8015DD94 00000000 */  .word  0x00000000
/* 029B28 8015DD98 00000000 */  .word  0x00000000
/* 029B2C 8015DD9C 00000000 */  .word  0x00000000
/* 029B30 8015DDA0 00000000 */  .word  0x00000000
/* 029B34 8015DDA4 00000000 */  .word  0x00000000
/* 029B38 8015DDA8 00000000 */  .word  0x00000000
/* 029B3C 8015DDAC 00000004 */  .word  0x00000004
/* 029B40 8015DDB0 0000000E */  .word  0x0000000E
/* 029B44 8015DDB4 00000014 */  .word  0x00000014
/* 029B48 8015DDB8 00000018 */  .word  0x00000018
/* 029B4C 8015DDBC 0000001E */  .word  0x0000001E
/* 029B50 8015DDC0 00000021 */  .word  0x00000021
/* 029B54 8015DDC4 00000001 */  .word  0x00000001
/* 029B58 8015DDC8 00000000 */  .word  0x00000000
/* 029B5C 8015DDCC 00000000 */  .word  0x00000000
/* 029B60 8015DDD0 00000000 */  .word  0x00000000
/* 029B64 8015DDD4 00000000 */  .word  0x00000000
/* 029B68 8015DDD8 00000000 */  .word  0x00000000
/* 029B6C 8015DDDC 00000000 */  .word  0x00000000
/* 029B70 8015DDE0 00000000 */  .word  0x00000000
/* 029B74 8015DDE4 00000000 */  .word  0x00000000
/* 029B78 8015DDE8 00000000 */  .word  0x00000000
/* 029B7C 8015DDEC 00000008 */  .word  0x00000008
/* 029B80 8015DDF0 0000000B */  .word  0x0000000B
/* 029B84 8015DDF4 0000000F */  .word  0x0000000F
/* 029B88 8015DDF8 00000017 */  .word  0x00000017
/* 029B8C 8015DDFC 0000001D */  .word  0x0000001D
/* 029B90 8015DE00 00000025 */  .word  0x00000025
/* 029B94 8015DE04 00000001 */  .word  0x00000001
/* 029B98 8015DE08 00000000 */  .word  0x00000000
/* 029B9C 8015DE0C 00000000 */  .word  0x00000000
/* 029BA0 8015DE10 00000000 */  .word  0x00000000
/* 029BA4 8015DE14 00000000 */  .word  0x00000000
/* 029BA8 8015DE18 00000000 */  .word  0x00000000
/* 029BAC 8015DE1C 00000000 */  .word  0x00000000
/* 029BB0 8015DE20 00000000 */  .word  0x00000000
/* 029BB4 8015DE24 00000000 */  .word  0x00000000
/* 029BB8 8015DE28 00000037 */  .word  0x00000037
/* 029BBC 8015DE2C 00000039 */  .word  0x00000039
/* 029BC0 8015DE30 00000009 */  .word  0x00000009
/* 029BC4 8015DE34 00000010 */  .word  0x00000010
/* 029BC8 8015DE38 00000016 */  .word  0x00000016
/* 029BCC 8015DE3C 0000001C */  .word  0x0000001C
/* 029BD0 8015DE40 00000024 */  .word  0x00000024
/* 029BD4 8015DE44 00000027 */  .word  0x00000027
/* 029BD8 8015DE48 00000000 */  .word  0x00000000
/* 029BDC 8015DE4C 00000000 */  .word  0x00000000
/* 029BE0 8015DE50 00000000 */  .word  0x00000000
/* 029BE4 8015DE54 00000000 */  .word  0x00000000
/* 029BE8 8015DE58 00000000 */  .word  0x00000000
/* 029BEC 8015DE5C 00000000 */  .word  0x00000000
/* 029BF0 8015DE60 00000000 */  .word  0x00000000
/* 029BF4 8015DE64 00000000 */  .word  0x00000000
/* 029BF8 8015DE68 00000033 */  .word  0x00000033
/* 029BFC 8015DE6C 00000007 */  .word  0x00000007
/* 029C00 8015DE70 0000000A */  .word  0x0000000A
/* 029C04 8015DE74 00000011 */  .word  0x00000011
/* 029C08 8015DE78 00000015 */  .word  0x00000015
/* 029C0C 8015DE7C 0000001B */  .word  0x0000001B
/* 029C10 8015DE80 00000023 */  .word  0x00000023
/* 029C14 8015DE84 00000032 */  .word  0x00000032
/* 029C18 8015DE88 00000000 */  .word  0x00000000
/* 029C1C 8015DE8C 00000000 */  .word  0x00000000
/* 029C20 8015DE90 00000000 */  .word  0x00000000
/* 029C24 8015DE94 00000000 */  .word  0x00000000
/* 029C28 8015DE98 00000000 */  .word  0x00000000
/* 029C2C 8015DE9C 00000000 */  .word  0x00000000
/* 029C30 8015DEA0 00000000 */  .word  0x00000000
/* 029C34 8015DEA4 00000000 */  .word  0x00000000
/* 029C38 8015DEA8 00000000 */  .word  0x00000000
/* 029C3C 8015DEAC 00000006 */  .word  0x00000006
/* 029C40 8015DEB0 0000000C */  .word  0x0000000C
/* 029C44 8015DEB4 00000012 */  .word  0x00000012
/* 029C48 8015DEB8 0000001A */  .word  0x0000001A
/* 029C4C 8015DEBC 00000020 */  .word  0x00000020
/* 029C50 8015DEC0 00000022 */  .word  0x00000022
/* 029C54 8015DEC4 00000001 */  .word  0x00000001
/* 029C58 8015DEC8 00000000 */  .word  0x00000000
/* 029C5C 8015DECC 00000000 */  .word  0x00000000
/* 029C60 8015DED0 00000000 */  .word  0x00000000
/* 029C64 8015DED4 00000000 */  .word  0x00000000
/* 029C68 8015DED8 00000000 */  .word  0x00000000
/* 029C6C 8015DEDC 00000000 */  .word  0x00000000
/* 029C70 8015DEE0 00000000 */  .word  0x00000000
/* 029C74 8015DEE4 00000000 */  .word  0x00000000
/* 029C78 8015DEE8 00000000 */  .word  0x00000000
/* 029C7C 8015DEEC 00000005 */  .word  0x00000005
/* 029C80 8015DEF0 0000000D */  .word  0x0000000D
/* 029C84 8015DEF4 00000013 */  .word  0x00000013
/* 029C88 8015DEF8 00000019 */  .word  0x00000019
/* 029C8C 8015DEFC 0000001F */  .word  0x0000001F
/* 029C90 8015DF00 00000003 */  .word  0x00000003
/* 029C94 8015DF04 00000001 */  .word  0x00000001
/* 029C98 8015DF08 00000000 */  .word  0x00000000
/* 029C9C 8015DF0C 00000000 */  .word  0x00000000
/* 029CA0 8015DF10 00000000 */  .word  0x00000000
/* 029CA4 8015DF14 00000000 */  .word  0x00000000
/* 029CA8 8015DF18 00000000 */  .word  0x00000000
/* 029CAC 8015DF1C 00000000 */  .word  0x00000000
/* 029CB0 8015DF20 00000000 */  .word  0x00000000
/* 029CB4 8015DF24 00000000 */  .word  0x00000000
/* 029CB8 8015DF28 00000000 */  .word  0x00000000
/* 029CBC 8015DF2C 00000001 */  .word  0x00000001
/* 029CC0 8015DF30 00000001 */  .word  0x00000001
/* 029CC4 8015DF34 00000001 */  .word  0x00000001
/* 029CC8 8015DF38 00000001 */  .word  0x00000001
/* 029CCC 8015DF3C 00000001 */  .word  0x00000001
/* 029CD0 8015DF40 00000001 */  .word  0x00000001
/* 029CD4 8015DF44 00000000 */  .word  0x00000000
/* 029CD8 8015DF48 00000000 */  .word  0x00000000
/* 029CDC 8015DF4C 00000000 */  .word  0x00000000
/* 029CE0 8015DF50 00000000 */  .word  0x00000000
/* 029CE4 8015DF54 00000000 */  .word  0x00000000
/* 029CE8 8015DF58 00000000 */  .word  0x00000000
/* 029CEC 8015DF5C 00000000 */  .word  0x00000000
/* 029CF0 8015DF60 00000000 */  .word  0x00000000
/* 029CF4 8015DF64 00000000 */  .word  0x00000000
/* 029CF8 8015DF68 00000000 */  .word  0x00000000
/* 029CFC 8015DF6C 00000000 */  .word  0x00000000
/* 029D00 8015DF70 00000000 */  .word  0x00000000
/* 029D04 8015DF74 00000000 */  .word  0x00000000
/* 029D08 8015DF78 00000000 */  .word  0x00000000
/* 029D0C 8015DF7C 00000000 */  .word  0x00000000
/* 029D10 8015DF80 00000000 */  .word  0x00000000
/* 029D14 8015DF84 00000000 */  .word  0x00000000
/* 029D18 8015DF88 00000000 */  .word  0x00000000
/* 029D1C 8015DF8C 00000000 */  .word  0x00000000
/* 029D20 8015DF90 00000000 */  .word  0x00000000
/* 029D24 8015DF94 00000000 */  .word  0x00000000
/* 029D28 8015DF98 00000000 */  .word  0x00000000
/* 029D2C 8015DF9C 00000000 */  .word  0x00000000
/* 029D30 8015DFA0 00000000 */  .word  0x00000000
/* 029D34 8015DFA4 00000000 */  .word  0x00000000
/* 029D38 8015DFA8 00000000 */  .word  0x00000000
/* 029D3C 8015DFAC 00000000 */  .word  0x00000000
/* 029D40 8015DFB0 00000000 */  .word  0x00000000
/* 029D44 8015DFB4 00000000 */  .word  0x00000000
/* 029D48 8015DFB8 00000000 */  .word  0x00000000
/* 029D4C 8015DFBC 00000000 */  .word  0x00000000
/* 029D50 8015DFC0 00000000 */  .word  0x00000000
/* 029D54 8015DFC4 00000000 */  .word  0x00000000
/* 029D58 8015DFC8 00000000 */  .word  0x00000000
/* 029D5C 8015DFCC 00000000 */  .word  0x00000000
/* 029D60 8015DFD0 00000000 */  .word  0x00000000
/* 029D64 8015DFD4 00000000 */  .word  0x00000000
/* 029D68 8015DFD8 00000000 */  .word  0x00000000
/* 029D6C 8015DFDC 00000000 */  .word  0x00000000
/* 029D70 8015DFE0 00000000 */  .word  0x00000000
/* 029D74 8015DFE4 00000000 */  .word  0x00000000
/* 029D78 8015DFE8 00000000 */  .word  0x00000000
/* 029D7C 8015DFEC 00000000 */  .word  0x00000000
/* 029D80 8015DFF0 00000000 */  .word  0x00000000
/* 029D84 8015DFF4 00000000 */  .word  0x00000000
/* 029D88 8015DFF8 00000000 */  .word  0x00000000
/* 029D8C 8015DFFC 00000000 */  .word  0x00000000
/* 029D90 8015E000 00000000 */  .word  0x00000000
/* 029D94 8015E004 00000000 */  .word  0x00000000
/* 029D98 8015E008 00000000 */  .word  0x00000000
/* 029D9C 8015E00C 00000000 */  .word  0x00000000
/* 029DA0 8015E010 00000000 */  .word  0x00000000
/* 029DA4 8015E014 00000000 */  .word  0x00000000
/* 029DA8 8015E018 00000000 */  .word  0x00000000
/* 029DAC 8015E01C 00000000 */  .word  0x00000000
/* 029DB0 8015E020 00000000 */  .word  0x00000000
/* 029DB4 8015E024 00000000 */  .word  0x00000000
/* 029DB8 8015E028 00000000 */  .word  0x00000000
/* 029DBC 8015E02C 00000000 */  .word  0x00000000
/* 029DC0 8015E030 00000000 */  .word  0x00000000
/* 029DC4 8015E034 00000000 */  .word  0x00000000
/* 029DC8 8015E038 00000000 */  .word  0x00000000
/* 029DCC 8015E03C 00000000 */  .word  0x00000000
/* 029DD0 8015E040 00000000 */  .word  0x00000000
/* 029DD4 8015E044 00000000 */  .word  0x00000000
/* 029DD8 8015E048 00000000 */  .word  0x00000000
/* 029DDC 8015E04C 00000000 */  .word  0x00000000
/* 029DE0 8015E050 00000000 */  .word  0x00000000
/* 029DE4 8015E054 00000000 */  .word  0x00000000
/* 029DE8 8015E058 00000000 */  .word  0x00000000
/* 029DEC 8015E05C 00000000 */  .word  0x00000000
/* 029DF0 8015E060 00000000 */  .word  0x00000000
/* 029DF4 8015E064 00000000 */  .word  0x00000000
/* 029DF8 8015E068 00000000 */  .word  0x00000000
/* 029DFC 8015E06C 00000000 */  .word  0x00000000
/* 029E00 8015E070 00000000 */  .word  0x00000000
/* 029E04 8015E074 00000000 */  .word  0x00000000
/* 029E08 8015E078 00000000 */  .word  0x00000000
/* 029E0C 8015E07C 00000000 */  .word  0x00000000
/* 029E10 8015E080 00000000 */  .word  0x00000000
/* 029E14 8015E084 00000000 */  .word  0x00000000
/* 029E18 8015E088 00000000 */  .word  0x00000000
/* 029E1C 8015E08C 00000000 */  .word  0x00000000
/* 029E20 8015E090 00000000 */  .word  0x00000000
/* 029E24 8015E094 00000000 */  .word  0x00000000
/* 029E28 8015E098 00000000 */  .word  0x00000000
/* 029E2C 8015E09C 00000000 */  .word  0x00000000
/* 029E30 8015E0A0 00000000 */  .word  0x00000000
/* 029E34 8015E0A4 00000000 */  .word  0x00000000
/* 029E38 8015E0A8 00000000 */  .word  0x00000000
/* 029E3C 8015E0AC 00000000 */  .word  0x00000000
/* 029E40 8015E0B0 00000000 */  .word  0x00000000
/* 029E44 8015E0B4 00000000 */  .word  0x00000000
/* 029E48 8015E0B8 00000000 */  .word  0x00000000
/* 029E4C 8015E0BC 00000000 */  .word  0x00000000
/* 029E50 8015E0C0 00000000 */  .word  0x00000000
/* 029E54 8015E0C4 00000000 */  .word  0x00000000
/* 029E58 8015E0C8 00000000 */  .word  0x00000000
/* 029E5C 8015E0CC 00000000 */  .word  0x00000000
/* 029E60 8015E0D0 00000000 */  .word  0x00000000
/* 029E64 8015E0D4 00000000 */  .word  0x00000000
/* 029E68 8015E0D8 00000000 */  .word  0x00000000
/* 029E6C 8015E0DC 00000000 */  .word  0x00000000
/* 029E70 8015E0E0 00000000 */  .word  0x00000000
/* 029E74 8015E0E4 00000000 */  .word  0x00000000
/* 029E78 8015E0E8 00000000 */  .word  0x00000000
/* 029E7C 8015E0EC 00000000 */  .word  0x00000000
/* 029E80 8015E0F0 00000000 */  .word  0x00000000
/* 029E84 8015E0F4 00000000 */  .word  0x00000000
/* 029E88 8015E0F8 00000000 */  .word  0x00000000
/* 029E8C 8015E0FC 00000000 */  .word  0x00000000
/* 029E90 8015E100 00000000 */  .word  0x00000000
/* 029E94 8015E104 00000000 */  .word  0x00000000
/* 029E98 8015E108 00000000 */  .word  0x00000000
/* 029E9C 8015E10C 00000000 */  .word  0x00000000
/* 029EA0 8015E110 00000000 */  .word  0x00000000
/* 029EA4 8015E114 00000000 */  .word  0x00000000
/* 029EA8 8015E118 00000000 */  .word  0x00000000
/* 029EAC 8015E11C 00000000 */  .word  0x00000000
/* 029EB0 8015E120 00000000 */  .word  0x00000000
/* 029EB4 8015E124 00000000 */  .word  0x00000000
/* 029EB8 8015E128 00000000 */  .word  0x00000000
/* 029EBC 8015E12C 00000000 */  .word  0x00000000
/* 029EC0 8015E130 00000000 */  .word  0x00000000
/* 029EC4 8015E134 00000000 */  .word  0x00000000
/* 029EC8 8015E138 00000000 */  .word  0x00000000
/* 029ECC 8015E13C 00000000 */  .word  0x00000000
/* 029ED0 8015E140 00000000 */  .word  0x00000000
/* 029ED4 8015E144 00000000 */  .word  0x00000000
/* 029ED8 8015E148 00000000 */  .word  0x00000000
/* 029EDC 8015E14C 00000000 */  .word  0x00000000
/* 029EE0 8015E150 00000000 */  .word  0x00000000
/* 029EE4 8015E154 00000000 */  .word  0x00000000
/* 029EE8 8015E158 00000000 */  .word  0x00000000
/* 029EEC 8015E15C 00000000 */  .word  0x00000000
/* 029EF0 8015E160 00000000 */  .word  0x00000000
/* 029EF4 8015E164 00000000 */  .word  0x00000000
/* 029EF8 8015E168 00000000 */  .word  0x00000000
/* 029EFC 8015E16C 00000000 */  .word  0x00000000
/* 029F00 8015E170 00000000 */  .word  0x00000000
/* 029F04 8015E174 00000000 */  .word  0x00000000
/* 029F08 8015E178 00000000 */  .word  0x00000000
/* 029F0C 8015E17C 00000000 */  .word  0x00000000
/* 029F10 8015E180 00000000 */  .word  0x00000000
/* 029F14 8015E184 00000000 */  .word  0x00000000
/* 029F18 8015E188 00000000 */  .word  0x00000000
/* 029F1C 8015E18C 00000000 */  .word  0x00000000
/* 029F20 8015E190 00000000 */  .word  0x00000000
/* 029F24 8015E194 00000000 */  .word  0x00000000
/* 029F28 8015E198 00000000 */  .word  0x00000000
/* 029F2C 8015E19C 00000000 */  .word  0x00000000
/* 029F30 8015E1A0 00000000 */  .word  0x00000000
/* 029F34 8015E1A4 00000000 */  .word  0x00000000
/* 029F38 8015E1A8 00000000 */  .word  0x00000000
/* 029F3C 8015E1AC 0000003A */  .word  0x0000003A
/* 029F40 8015E1B0 0000003A */  .word  0x0000003A
/* 029F44 8015E1B4 0000003A */  .word  0x0000003A
/* 029F48 8015E1B8 0000003A */  .word  0x0000003A
/* 029F4C 8015E1BC 0000003A */  .word  0x0000003A
/* 029F50 8015E1C0 0000003A */  .word  0x0000003A
/* 029F54 8015E1C4 00000000 */  .word  0x00000000
/* 029F58 8015E1C8 00000000 */  .word  0x00000000
/* 029F5C 8015E1CC 00000000 */  .word  0x00000000
/* 029F60 8015E1D0 00000000 */  .word  0x00000000
/* 029F64 8015E1D4 00000000 */  .word  0x00000000
/* 029F68 8015E1D8 00000000 */  .word  0x00000000
/* 029F6C 8015E1DC 00000000 */  .word  0x00000000
/* 029F70 8015E1E0 00000000 */  .word  0x00000000
/* 029F74 8015E1E4 00000000 */  .word  0x00000000
/* 029F78 8015E1E8 00000000 */  .word  0x00000000
/* 029F7C 8015E1EC 0000003A */  .word  0x0000003A
/* 029F80 8015E1F0 0000003A */  .word  0x0000003A
/* 029F84 8015E1F4 0000003A */  .word  0x0000003A
/* 029F88 8015E1F8 0000003A */  .word  0x0000003A
/* 029F8C 8015E1FC 0000003A */  .word  0x0000003A
/* 029F90 8015E200 0000003A */  .word  0x0000003A
/* 029F94 8015E204 00000000 */  .word  0x00000000
/* 029F98 8015E208 00000000 */  .word  0x00000000
/* 029F9C 8015E20C 00000000 */  .word  0x00000000
/* 029FA0 8015E210 00000000 */  .word  0x00000000
/* 029FA4 8015E214 00000000 */  .word  0x00000000
/* 029FA8 8015E218 00000000 */  .word  0x00000000
/* 029FAC 8015E21C 00000000 */  .word  0x00000000
/* 029FB0 8015E220 00000000 */  .word  0x00000000
/* 029FB4 8015E224 00000000 */  .word  0x00000000
/* 029FB8 8015E228 00000000 */  .word  0x00000000
/* 029FBC 8015E22C 0000003A */  .word  0x0000003A
/* 029FC0 8015E230 0000003A */  .word  0x0000003A
/* 029FC4 8015E234 00000036 */  .word  0x00000036
/* 029FC8 8015E238 0000003B */  .word  0x0000003B
/* 029FCC 8015E23C 0000003A */  .word  0x0000003A
/* 029FD0 8015E240 0000003A */  .word  0x0000003A
/* 029FD4 8015E244 00000000 */  .word  0x00000000
/* 029FD8 8015E248 00000000 */  .word  0x00000000
/* 029FDC 8015E24C 00000000 */  .word  0x00000000
/* 029FE0 8015E250 00000000 */  .word  0x00000000
/* 029FE4 8015E254 00000000 */  .word  0x00000000
/* 029FE8 8015E258 00000000 */  .word  0x00000000
/* 029FEC 8015E25C 00000000 */  .word  0x00000000
/* 029FF0 8015E260 00000000 */  .word  0x00000000
/* 029FF4 8015E264 00000000 */  .word  0x00000000
/* 029FF8 8015E268 00000000 */  .word  0x00000000
/* 029FFC 8015E26C 0000003A */  .word  0x0000003A
/* 02A000 8015E270 0000003A */  .word  0x0000003A
/* 02A004 8015E274 00000034 */  .word  0x00000034
/* 02A008 8015E278 00000035 */  .word  0x00000035
/* 02A00C 8015E27C 0000003A */  .word  0x0000003A
/* 02A010 8015E280 0000003A */  .word  0x0000003A
/* 02A014 8015E284 00000000 */  .word  0x00000000
/* 02A018 8015E288 00000000 */  .word  0x00000000
/* 02A01C 8015E28C 00000000 */  .word  0x00000000
/* 02A020 8015E290 00000000 */  .word  0x00000000
/* 02A024 8015E294 00000000 */  .word  0x00000000
/* 02A028 8015E298 00000000 */  .word  0x00000000
/* 02A02C 8015E29C 00000000 */  .word  0x00000000
/* 02A030 8015E2A0 00000000 */  .word  0x00000000
/* 02A034 8015E2A4 00000000 */  .word  0x00000000
/* 02A038 8015E2A8 00000000 */  .word  0x00000000
/* 02A03C 8015E2AC 0000003A */  .word  0x0000003A
/* 02A040 8015E2B0 0000003A */  .word  0x0000003A
/* 02A044 8015E2B4 0000003A */  .word  0x0000003A
/* 02A048 8015E2B8 0000003A */  .word  0x0000003A
/* 02A04C 8015E2BC 0000003A */  .word  0x0000003A
/* 02A050 8015E2C0 0000003A */  .word  0x0000003A
/* 02A054 8015E2C4 00000000 */  .word  0x00000000
/* 02A058 8015E2C8 00000000 */  .word  0x00000000
/* 02A05C 8015E2CC 00000000 */  .word  0x00000000
/* 02A060 8015E2D0 00000000 */  .word  0x00000000
/* 02A064 8015E2D4 00000000 */  .word  0x00000000
/* 02A068 8015E2D8 00000000 */  .word  0x00000000
/* 02A06C 8015E2DC 00000000 */  .word  0x00000000
/* 02A070 8015E2E0 00000000 */  .word  0x00000000
/* 02A074 8015E2E4 00000000 */  .word  0x00000000
/* 02A078 8015E2E8 00000000 */  .word  0x00000000
/* 02A07C 8015E2EC 0000003A */  .word  0x0000003A
/* 02A080 8015E2F0 0000003A */  .word  0x0000003A
/* 02A084 8015E2F4 0000003A */  .word  0x0000003A
/* 02A088 8015E2F8 0000003A */  .word  0x0000003A
/* 02A08C 8015E2FC 0000003A */  .word  0x0000003A
/* 02A090 8015E300 0000003A */  .word  0x0000003A
/* 02A094 8015E304 00000000 */  .word  0x00000000
/* 02A098 8015E308 00000000 */  .word  0x00000000
/* 02A09C 8015E30C 00000000 */  .word  0x00000000
/* 02A0A0 8015E310 00000000 */  .word  0x00000000
/* 02A0A4 8015E314 00000000 */  .word  0x00000000
/* 02A0A8 8015E318 00000000 */  .word  0x00000000
/* 02A0AC 8015E31C 00000000 */  .word  0x00000000
/* 02A0B0 8015E320 00000000 */  .word  0x00000000
/* 02A0B4 8015E324 00000000 */  .word  0x00000000
/* 02A0B8 8015E328 00000000 */  .word  0x00000000
/* 02A0BC 8015E32C 00000000 */  .word  0x00000000
/* 02A0C0 8015E330 00000000 */  .word  0x00000000
/* 02A0C4 8015E334 00000000 */  .word  0x00000000
/* 02A0C8 8015E338 00000000 */  .word  0x00000000
/* 02A0CC 8015E33C 00000000 */  .word  0x00000000
/* 02A0D0 8015E340 00000000 */  .word  0x00000000
/* 02A0D4 8015E344 00000000 */  .word  0x00000000
/* 02A0D8 8015E348 00000000 */  .word  0x00000000
/* 02A0DC 8015E34C 00000000 */  .word  0x00000000
/* 02A0E0 8015E350 00000000 */  .word  0x00000000
/* 02A0E4 8015E354 00000000 */  .word  0x00000000
/* 02A0E8 8015E358 00000000 */  .word  0x00000000
/* 02A0EC 8015E35C 00000000 */  .word  0x00000000
/* 02A0F0 8015E360 00000000 */  .word  0x00000000
/* 02A0F4 8015E364 00000000 */  .word  0x00000000
/* 02A0F8 8015E368 00000000 */  .word  0x00000000
/* 02A0FC 8015E36C 00000000 */  .word  0x00000000
/* 02A100 8015E370 00000000 */  .word  0x00000000
/* 02A104 8015E374 00000000 */  .word  0x00000000
/* 02A108 8015E378 00000000 */  .word  0x00000000
/* 02A10C 8015E37C 00000000 */  .word  0x00000000
/* 02A110 8015E380 00000000 */  .word  0x00000000
/* 02A114 8015E384 00000000 */  .word  0x00000000
/* 02A118 8015E388 00000000 */  .word  0x00000000
/* 02A11C 8015E38C 00000000 */  .word  0x00000000
/* 02A120 8015E390 00000000 */  .word  0x00000000
/* 02A124 8015E394 00000000 */  .word  0x00000000
/* 02A128 8015E398 00000000 */  .word  0x00000000
/* 02A12C 8015E39C 00000000 */  .word  0x00000000
/* 02A130 8015E3A0 00000000 */  .word  0x00000000
/* 02A134 8015E3A4 00000000 */  .word  0x00000000
/* 02A138 8015E3A8 00000000 */  .word  0x00000000
/* 02A13C 8015E3AC 00000000 */  .word  0x00000000
/* 02A140 8015E3B0 00000000 */  .word  0x00000000
/* 02A144 8015E3B4 00000000 */  .word  0x00000000
/* 02A148 8015E3B8 00000000 */  .word  0x00000000
/* 02A14C 8015E3BC 00000000 */  .word  0x00000000
/* 02A150 8015E3C0 00000000 */  .word  0x00000000
/* 02A154 8015E3C4 00000000 */  .word  0x00000000
/* 02A158 8015E3C8 00000000 */  .word  0x00000000
/* 02A15C 8015E3CC 00000000 */  .word  0x00000000
/* 02A160 8015E3D0 00000000 */  .word  0x00000000
/* 02A164 8015E3D4 00000000 */  .word  0x00000000
/* 02A168 8015E3D8 00000000 */  .word  0x00000000
/* 02A16C 8015E3DC 00000000 */  .word  0x00000000
/* 02A170 8015E3E0 00000000 */  .word  0x00000000
/* 02A174 8015E3E4 00000000 */  .word  0x00000000
/* 02A178 8015E3E8 00000000 */  .word  0x00000000
/* 02A17C 8015E3EC 00000000 */  .word  0x00000000
/* 02A180 8015E3F0 00000000 */  .word  0x00000000
/* 02A184 8015E3F4 00000000 */  .word  0x00000000
/* 02A188 8015E3F8 00000000 */  .word  0x00000000
/* 02A18C 8015E3FC 00000000 */  .word  0x00000000
/* 02A190 8015E400 00000000 */  .word  0x00000000
/* 02A194 8015E404 00000000 */  .word  0x00000000
/* 02A198 8015E408 00000000 */  .word  0x00000000
/* 02A19C 8015E40C 00000000 */  .word  0x00000000
/* 02A1A0 8015E410 00000000 */  .word  0x00000000
/* 02A1A4 8015E414 00000000 */  .word  0x00000000
/* 02A1A8 8015E418 00000000 */  .word  0x00000000
/* 02A1AC 8015E41C 00000000 */  .word  0x00000000
/* 02A1B0 8015E420 00000000 */  .word  0x00000000
/* 02A1B4 8015E424 00000000 */  .word  0x00000000
/* 02A1B8 8015E428 00000000 */  .word  0x00000000
/* 02A1BC 8015E42C 00000000 */  .word  0x00000000
/* 02A1C0 8015E430 00000000 */  .word  0x00000000
/* 02A1C4 8015E434 00000000 */  .word  0x00000000
/* 02A1C8 8015E438 00000000 */  .word  0x00000000
/* 02A1CC 8015E43C 00000000 */  .word  0x00000000
/* 02A1D0 8015E440 00000000 */  .word  0x00000000
/* 02A1D4 8015E444 00000000 */  .word  0x00000000
/* 02A1D8 8015E448 00000000 */  .word  0x00000000
/* 02A1DC 8015E44C 00000000 */  .word  0x00000000
/* 02A1E0 8015E450 00000000 */  .word  0x00000000
/* 02A1E4 8015E454 00000000 */  .word  0x00000000

glabel D_8015E458
/* 02A1E8 8015E458 8015D858 */  .word  0x8015D858
/* 02A1EC 8015E45C 8015DC58 */  .word  0x8015DC58
/* 02A1F0 8015E460 8015E058 */  .word  0x8015E058
/* 02A1F4 8015E464 00000000 */  .word  0x00000000
/* 02A1F8 8015E468 00000000 */  .word  0x00000000
/* 02A1FC 8015E46C 00000000 */  .word  0x00000000
/* 02A200 8015E470 00000000 */  .word  0x00000000
/* 02A204 8015E474 00000000 */  .word  0x00000000
/* 02A208 8015E478 00000000 */  .word  0x00000000
/* 02A20C 8015E47C 00000000 */  .word  0x00000000
/* 02A210 8015E480 00000000 */  .word  0x00000000
/* 02A214 8015E484 00000000 */  .word  0x00000000
/* 02A218 8015E488 00000000 */  .word  0x00000000
/* 02A21C 8015E48C 00000000 */  .word  0x00000000
/* 02A220 8015E490 00000000 */  .word  0x00000000
/* 02A224 8015E494 00000000 */  .word  0x00000000
/* 02A228 8015E498 00000000 */  .word  0x00000000
/* 02A22C 8015E49C 00000000 */  .word  0x00000000
