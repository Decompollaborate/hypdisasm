.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata

.balign 16

glabel D_800A26A0
/* 0A2250 800A26A0 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A26A4
/* 0A2254 800A26A4 3B5A740E */  .float  0.0033333334140479565
/* 0A2258 800A26A8 00000000 */  .float  0.0
/* 0A225C 800A26AC 00000000 */  .float  0.0

glabel D_800A26B0
/* 0A2260 800A26B0  */  .asciz  "======== Pikachu Info ========\n"
                        .balign 4
/* 0A2280 800A26D0  */  .asciz  "++++++++ Holding Item Info ++++++++\n"
                        .balign 4
/* 0A22A8 800A26F8  */  .asciz  "hold item id = %d\n"
                        .balign 4
/* 0A22BC 800A270C  */  .asciz  "++++++++ haraRot ++++++++\n"
                        .balign 4
/* 0A22D8 800A2728  */  .asciz  "haraRot = (%3.2f, %3.2f, %3.2f)\n"
                        .balign 4
/* 0A22FC 800A274C  */  .asciz  "\n"
                        .balign 4

glabel D_800A2750
/* 0A2300 800A2750 00460002 */  .word  0x00460002
/* 0A2304 800A2754 3EAAAAAB */  .word  0x3EAAAAAB
/* 0A2308 800A2758 004B0002 */  .word  0x004B0002
/* 0A230C 800A275C 3EAAAAAB */  .word  0x3EAAAAAB
/* 0A2310 800A2760 00450002 */  .word  0x00450002
/* 0A2314 800A2764 3EAAAAAB */  .word  0x3EAAAAAB
/* 0A2318 800A2768 004A0002 */  .word  0x004A0002
/* 0A231C 800A276C 3EAAAAAB */  .word  0x3EAAAAAB

glabel D_800A2770
/* 0A2320 800A2770 00000040 */  .word  0x00000040
/* 0A2324 800A2774 00000041 */  .word  0x00000041
/* 0A2328 800A2778 00000000 */  .word  0x00000000

glabel D_800A277C
/* 0A232C 800A277C 00000026 */  .word  0x00000026
/* 0A2330 800A2780 00000027 */  .word  0x00000027
/* 0A2334 800A2784 00000000 */  .word  0x00000000

glabel D_800A2788
/* 0A2338 800A2788 0000003E */  .word  0x0000003E
/* 0A233C 800A278C 0000003F */  .word  0x0000003F
/* 0A2340 800A2790 00000000 */  .word  0x00000000

glabel D_800A2794
/* 0A2344 800A2794 00000028 */  .word  0x00000028
/* 0A2348 800A2798 00000029 */  .word  0x00000029
/* 0A234C 800A279C 00000000 */  .word  0x00000000

glabel D_800A27A0
/* 0A2350 800A27A0 0000002A */  .word  0x0000002A
/* 0A2354 800A27A4 0000002B */  .word  0x0000002B
/* 0A2358 800A27A8 00000000 */  .word  0x00000000
/* 0A235C 800A27AC 00000000 */  .word  0x00000000

glabel D_800A27B0
/* 0A2360 800A27B0 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A27B8
/* 0A2368 800A27B8 3E2AAAAB */  .float  0.1666666716337204

glabel D_800A27BC
/* 0A236C 800A27BC 3A83126F */  .float  0.0010000000474974513

glabel D_800A27C0
/* 0A2370 800A27C0  */  .asciz  "Unknown holdPos:%d\n"
                        .balign 4
/* 0A2384 800A27D4  */  .asciz  "haraType:%d jointTotal:%d jointTableSize:%d\n"
                        .balign 4
/* 0A23B4 800A2804  */  .asciz  "ERROR: model %p(%s) is out of maze\n"
                        .balign 4

glabel D_800A2828
/* 0A23D8 800A2828 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A282C
/* 0A23DC 800A282C BECCCCCD */  .float  -0.4000000059604645

glabel D_800A2830
/* 0A23E0 800A2830 3ECCCCCD */  .float  0.4000000059604645

glabel D_800A2834
/* 0A23E4 800A2834 BF7D70A4 */  .float  -0.9900000095367432

glabel D_800A2838
/* 0A23E8 800A2838 BF4CCCCD */  .float  -0.800000011920929

glabel D_800A283C
/* 0A23EC 800A283C 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A2840
/* 0A23F0 800A2840 3E99999A */  .float  0.30000001192092896

glabel jtbl_800A2844
/* 0A23F4 800A2844 80016540 */  .word  L80016540
/* 0A23F8 800A2848 800165B8 */  .word  L800165B8
/* 0A23FC 800A284C 800165D8 */  .word  L800165D8
/* 0A2400 800A2850 800165F8 */  .word  L800165F8
/* 0A2404 800A2854 8001661C */  .word  L8001661C
/* 0A2408 800A2858 80016634 */  .word  L80016634

glabel D_800A285C
/* 0A240C 800A285C 3A83126F */  .float  0.0010000000474974513

glabel D_800A2860
/* 0A2410 800A2860 40511111 */  .float  3.2666666507720947

glabel D_800A2864
/* 0A2414 800A2864 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A2868
/* 0A2418 800A2868 3CF5C28F */  .float  0.029999999329447746
/* 0A241C 800A286C 00000000 */  .float  0.0

glabel D_800A2870
/* 0A2420 800A2870  */  .asciz  "c_kama"
                        .balign 4

glabel D_800A2878
/* 0A2428 800A2878  */  .asciz  "c_kamamaru"
                        .balign 4

glabel D_800A2884
/* 0A2434 800A2884  */  .asciz  "c_maru"
                        .balign 4

glabel D_800A288C
/* 0A243C 800A288C  */  .asciz  "c_marukama"
                        .balign 4

glabel D_800A2898
/* 0A2448 800A2898  */  .asciz  "c_sleep_ast"
                        .balign 4

glabel D_800A28A4
/* 0A2454 800A28A4  */  .asciz  "c_sleep_blp"
                        .balign 4

glabel D_800A28B0
/* 0A2460 800A28B0  */  .asciz  "c_sleep_ced"
                        .balign 4

glabel D_800A28BC
/* 0A246C 800A28BC  */  .asciz  "c_taberu"
                        .balign 4

glabel D_800A28C8
/* 0A2478 800A28C8  */  .asciz  "doku_kama"
                        .balign 4

glabel D_800A28D4
/* 0A2484 800A28D4  */  .asciz  "doku_oyogu"
                        .balign 4

glabel D_800A28E0
/* 0A2490 800A28E0  */  .asciz  "ff_kama"
                        .balign 4

glabel D_800A28E8
/* 0A2498 800A28E8  */  .asciz  "ff_taberu"
                        .balign 4

glabel D_800A28F4
/* 0A24A4 800A28F4  */  .asciz  "ff_walk_ast"
                        .balign 4

glabel D_800A2900
/* 0A24B0 800A2900  */  .asciz  "ff_walk_blp"
                        .balign 4

glabel D_800A290C
/* 0A24BC 800A290C  */  .asciz  "ff_walk_ced"
                        .balign 4

glabel D_800A2918
/* 0A24C8 800A2918  */  .asciz  "ffus_kama"
                        .balign 4

glabel D_800A2924
/* 0A24D4 800A2924  */  .asciz  "ffus_kuchiake"
                        .balign 4

glabel D_800A2934
/* 0A24E4 800A2934  */  .asciz  "ffus_sleep_ast"
                        .balign 4

glabel D_800A2944
/* 0A24F4 800A2944  */  .asciz  "ffus_sleep_blp"
                        .balign 4

glabel D_800A2954
/* 0A2504 800A2954  */  .asciz  "ffus_sleep_ced"
                        .balign 4

glabel D_800A2964
/* 0A2514 800A2964  */  .asciz  "gho_kama"
                        .balign 4

glabel D_800A2970
/* 0A2520 800A2970  */  .asciz  "gho_odokashi"
                        .balign 4

glabel D_800A2980
/* 0A2530 800A2980  */  .asciz  "gho_why"
                        .balign 4

glabel D_800A2988
/* 0A2538 800A2988  */  .asciz  "gho_yarare"
                        .balign 4

glabel D_800A2994
/* 0A2544 800A2994  */  .asciz  "kingler_kama"
                        .balign 4

glabel D_800A29A4
/* 0A2554 800A29A4  */  .asciz  "kingler_oyogu"
                        .balign 4

glabel D_800A29B4
/* 0A2564 800A29B4  */  .asciz  "koi_kama"
                        .balign 4

glabel D_800A29C0
/* 0A2570 800A29C0  */  .asciz  "koi_oyogu"
                        .balign 4

glabel D_800A29CC
/* 0A257C 800A29CC  */  .asciz  "p_agura_n_m"
                        .balign 4

glabel D_800A29D8
/* 0A2588 800A29D8  */  .asciz  "p_akire_a_m"
                        .balign 4

glabel D_800A29E4
/* 0A2594 800A29E4  */  .asciz  "p_ang_i_l"
                        .balign 4

glabel D_800A29F0
/* 0A25A0 800A29F0  */  .asciz  "p_ang_i_m"
                        .balign 4

glabel D_800A29FC
/* 0A25AC 800A29FC  */  .asciz  "p_army_n_m"
                        .balign 4

glabel D_800A2A08
/* 0A25B8 800A2A08  */  .asciz  "p_ashitonton_i_s_ast"
                        .balign 4

glabel D_800A2A20
/* 0A25D0 800A2A20  */  .asciz  "p_ashitonton_i_s_blp"
                        .balign 4

glabel D_800A2A38
/* 0A25E8 800A2A38  */  .asciz  "p_ashitonton_i_s_ced"
                        .balign 4

glabel D_800A2A50
/* 0A2600 800A2A50  */  .asciz  "p_asibumi_n_m"
                        .balign 4

glabel D_800A2A60
/* 0A2610 800A2A60  */  .asciz  "p_asir_n_m"
                        .balign 4

glabel D_800A2A6C
/* 0A261C 800A2A6C  */  .asciz  "p_awateru_n_m"
                        .balign 4

glabel D_800A2A7C
/* 0A262C 800A2A7C  */  .asciz  "p_back_n_m"
                        .balign 4

glabel D_800A2A88
/* 0A2638 800A2A88  */  .asciz  "p_ballet_n_m"
                        .balign 4

glabel D_800A2A98
/* 0A2648 800A2A98  */  .asciz  "p_bikkuri_o_m"
                        .balign 4

glabel D_800A2AA8
/* 0A2658 800A2AA8  */  .asciz  "p_boo_f_m"
                        .balign 4

glabel D_800A2AB4
/* 0A2664 800A2AB4  */  .asciz  "p_bye_k_s"
                        .balign 4

glabel D_800A2AC0
/* 0A2670 800A2AC0  */  .asciz  "p_cye_f_m"
                        .balign 4

glabel D_800A2ACC
/* 0A267C 800A2ACC  */  .asciz  "p_cyuui_i_s"
                        .balign 4

glabel D_800A2AD8
/* 0A2688 800A2AD8  */  .asciz  "p_dengeki_n_m"
                        .balign 4

glabel D_800A2AE8
/* 0A2698 800A2AE8  */  .asciz  "p_dengekidame_n_m"
                        .balign 4

glabel D_800A2AFC
/* 0A26AC 800A2AFC  */  .asciz  "p_dengekif_n_m"
                        .balign 4

glabel D_800A2B0C
/* 0A26BC 800A2B0C  */  .asciz  "p_dengekifdame_n_m"
                        .balign 4

glabel D_800A2B20
/* 0A26D0 800A2B20  */  .asciz  "p_denki_n_m"
                        .balign 4

glabel D_800A2B2C
/* 0A26DC 800A2B2C  */  .asciz  "p_denkidame_n_m"
                        .balign 4

glabel D_800A2B3C
/* 0A26EC 800A2B3C  */  .asciz  "p_eat_n_m"
                        .balign 4

glabel D_800A2B48
/* 0A26F8 800A2B48  */  .asciz  "p_ekaku_n_m_ast"
                        .balign 4

glabel D_800A2B58
/* 0A2708 800A2B58  */  .asciz  "p_ekaku_n_m_blp"
                        .balign 4

glabel D_800A2B68
/* 0A2718 800A2B68  */  .asciz  "p_ekaku_n_m_ced"
                        .balign 4

glabel D_800A2B78
/* 0A2728 800A2B78  */  .asciz  "p_ekakustop_n_m"
                        .balign 4

glabel D_800A2B88
/* 0A2738 800A2B88  */  .asciz  "p_emiseru_n_m"
                        .balign 4

glabel D_800A2B98
/* 0A2748 800A2B98  */  .asciz  "p_furafura_n_m"
                        .balign 4

glabel D_800A2BA8
/* 0A2758 800A2BA8  */  .asciz  "p_furimukil_n_m"
                        .balign 4

glabel D_800A2BB8
/* 0A2768 800A2BB8  */  .asciz  "p_furimukir_n_m"
                        .balign 4

glabel D_800A2BC8
/* 0A2778 800A2BC8  */  .asciz  "p_furue_b_m"
                        .balign 4

glabel D_800A2BD4
/* 0A2784 800A2BD4  */  .asciz  "p_gakkuri_a_m"
                        .balign 4

glabel D_800A2BE4
/* 0A2794 800A2BE4  */  .asciz  "p_gakkuri_a_s"
                        .balign 4

glabel D_800A2BF4
/* 0A27A4 800A2BF4  */  .asciz  "p_glad_y_m"
                        .balign 4

glabel D_800A2C00
/* 0A27B0 800A2C00  */  .asciz  "p_glad_y_s"
                        .balign 4

glabel D_800A2C0C
/* 0A27BC 800A2C0C  */  .asciz  "p_goso_n_m"
                        .balign 4

glabel D_800A2C18
/* 0A27C8 800A2C18  */  .asciz  "p_gosodasi_n_m_ast"
                        .balign 4

glabel D_800A2C2C
/* 0A27DC 800A2C2C  */  .asciz  "p_gosodasi_n_m_bed"
                        .balign 4

glabel D_800A2C40
/* 0A27F0 800A2C40  */  .asciz  "p_harmonica_n_m"
                        .balign 4

glabel D_800A2C50
/* 0A2800 800A2C50  */  .asciz  "p_hazure_n_m"
                        .balign 4

glabel D_800A2C60
/* 0A2810 800A2C60  */  .asciz  "p_headfuri_y_s"
                        .balign 4

glabel D_800A2C70
/* 0A2820 800A2C70  */  .asciz  "p_hello_n_m"
                        .balign 4

glabel D_800A2C7C
/* 0A282C 800A2C7C  */  .asciz  "p_hipfuri_n_m"
                        .balign 4

glabel D_800A2C8C
/* 0A283C 800A2C8C  */  .asciz  "p_hirou_n_m"
                        .balign 4

glabel D_800A2C98
/* 0A2848 800A2C98  */  .asciz  "p_ikaku_i_m_ast"
                        .balign 4

glabel D_800A2CA8
/* 0A2858 800A2CA8  */  .asciz  "p_ikaku_i_m_blp"
                        .balign 4

glabel D_800A2CB8
/* 0A2868 800A2CB8  */  .asciz  "p_ikaku_i_m_ced"
                        .balign 4

glabel D_800A2CC8
/* 0A2878 800A2CC8  */  .asciz  "p_ikou_n_m"
                        .balign 4

glabel D_800A2CD4
/* 0A2884 800A2CD4  */  .asciz  "p_iranai2_n_m"
                        .balign 4

glabel D_800A2CE4
/* 0A2894 800A2CE4  */  .asciz  "p_iranai_n_m"
                        .balign 4

glabel D_800A2CF4
/* 0A28A4 800A2CF4  */  .asciz  "p_iyaan_h_m"
                        .balign 4

glabel D_800A2D00
/* 0A28B0 800A2D00  */  .asciz  "p_jump50_n_m"
                        .balign 4

glabel D_800A2D10
/* 0A28C0 800A2D10  */  .asciz  "p_jump_n_m"
                        .balign 4

glabel D_800A2D1C
/* 0A28CC 800A2D1C  */  .asciz  "p_jump_n_m_ast"
                        .balign 4

glabel D_800A2D2C
/* 0A28DC 800A2D2C  */  .asciz  "p_jump_n_m_blp"
                        .balign 4

glabel D_800A2D3C
/* 0A28EC 800A2D3C  */  .asciz  "p_jump_n_m_ced"
                        .balign 4

glabel D_800A2D4C
/* 0A28FC 800A2D4C  */  .asciz  "p_jumpshock_n_m_ast"
                        .balign 4

glabel D_800A2D60
/* 0A2910 800A2D60  */  .asciz  "p_jumpshock_n_m_b"
                        .balign 4

glabel D_800A2D74
/* 0A2924 800A2D74  */  .asciz  "p_jumpshock_n_m_c"
                        .balign 4

glabel D_800A2D88
/* 0A2938 800A2D88  */  .asciz  "p_jumpshock_n_m_d"
                        .balign 4

glabel D_800A2D9C
/* 0A294C 800A2D9C  */  .asciz  "p_jumpshock_n_m_eed"
                        .balign 4

glabel D_800A2DB0
/* 0A2960 800A2DB0  */  .asciz  "p_jyouro_n_m"
                        .balign 4

glabel D_800A2DC0
/* 0A2970 800A2DC0  */  .asciz  "p_kakage_n_m_ast"
                        .balign 4

glabel D_800A2DD4
/* 0A2984 800A2DD4  */  .asciz  "p_kakage_n_m_blp"
                        .balign 4

glabel D_800A2DE8
/* 0A2998 800A2DE8  */  .asciz  "p_kakage_n_m_ced"
                        .balign 4

glabel D_800A2DFC
/* 0A29AC 800A2DFC  */  .asciz  "p_kakageue_n_m_ast"
                        .balign 4

glabel D_800A2E10
/* 0A29C0 800A2E10  */  .asciz  "p_kakageue_n_m_blp"
                        .balign 4

glabel D_800A2E24
/* 0A29D4 800A2E24  */  .asciz  "p_kakageue_n_m_ced"
                        .balign 4

glabel D_800A2E38
/* 0A29E8 800A2E38  */  .asciz  "p_kama_n_l"
                        .balign 4

glabel D_800A2E44
/* 0A29F4 800A2E44  */  .asciz  "p_kama_n_m"
                        .balign 4

glabel D_800A2E50
/* 0A2A00 800A2E50  */  .asciz  "p_kamaen_n_m"
                        .balign 4

glabel D_800A2E60
/* 0A2A10 800A2E60  */  .asciz  "p_kamasuwa_n_m_ast"
                        .balign 4

glabel D_800A2E74
/* 0A2A24 800A2E74  */  .asciz  "p_kamasuwa_n_m_blp"
                        .balign 4

glabel D_800A2E88
/* 0A2A38 800A2E88  */  .asciz  "p_kamasuwa_n_m_ced"
                        .balign 4

glabel D_800A2E9C
/* 0A2A4C 800A2E9C  */  .asciz  "p_kamatachi_n_m"
                        .balign 4

glabel D_800A2EAC
/* 0A2A5C 800A2EAC  */  .asciz  "p_kasige_n_m"
                        .balign 4

glabel D_800A2EBC
/* 0A2A6C 800A2EBC  */  .asciz  "p_kazoeru_n_m"
                        .balign 4

glabel D_800A2ECC
/* 0A2A7C 800A2ECC  */  .asciz  "p_kiku_n_m"
                        .balign 4

glabel D_800A2ED8
/* 0A2A88 800A2ED8  */  .asciz  "p_kobaka_a_l"
                        .balign 4

glabel D_800A2EE8
/* 0A2A98 800A2EE8  */  .asciz  "p_korekore_n_m"
                        .balign 4

glabel D_800A2EF8
/* 0A2AA8 800A2EF8  */  .asciz  "p_kure_n_m"
                        .balign 4

glabel D_800A2F04
/* 0A2AB4 800A2F04  */  .asciz  "p_kurekure_n_m"
                        .balign 4

glabel D_800A2F14
/* 0A2AC4 800A2F14  */  .asciz  "p_kusabue_n_m"
                        .balign 4

glabel D_800A2F24
/* 0A2AD4 800A2F24  */  .asciz  "p_kusyami_n_m"
                        .balign 4

glabel D_800A2F34
/* 0A2AE4 800A2F34  */  .asciz  "p_kyoro_n_m"
                        .balign 4

glabel D_800A2F40
/* 0A2AF0 800A2F40  */  .asciz  "p_left_n_m"
                        .balign 4

glabel D_800A2F4C
/* 0A2AFC 800A2F4C  */  .asciz  "p_maedasi_n_m_ast"
                        .balign 4

glabel D_800A2F60
/* 0A2B10 800A2F60  */  .asciz  "p_maedasi_n_m_blp"
                        .balign 4

glabel D_800A2F74
/* 0A2B24 800A2F74  */  .asciz  "p_maedasi_n_m_ced"
                        .balign 4

glabel D_800A2F88
/* 0A2B38 800A2F88  */  .asciz  "p_memai_n_m"
                        .balign 4

glabel D_800A2F94
/* 0A2B44 800A2F94  */  .asciz  "p_miageru_n_m_ast"
                        .balign 4

glabel D_800A2FA8
/* 0A2B58 800A2FA8  */  .asciz  "p_miageru_n_m_blp"
                        .balign 4

glabel D_800A2FBC
/* 0A2B6C 800A2FBC  */  .asciz  "p_miageru_n_m_ced"
                        .balign 4

glabel D_800A2FD0
/* 0A2B80 800A2FD0  */  .asciz  "p_mojimoji_h_s"
                        .balign 4

glabel D_800A2FE0
/* 0A2B90 800A2FE0  */  .asciz  "p_mukatuki_i_s"
                        .balign 4

glabel D_800A2FF0
/* 0A2BA0 800A2FF0  */  .asciz  "p_mushin_n_m"
                        .balign 4

glabel D_800A3000
/* 0A2BB0 800A3000  */  .asciz  "p_musi_i_s"
                        .balign 4

glabel D_800A300C
/* 0A2BBC 800A300C  */  .asciz  "p_nageru_n_m"
                        .balign 4

glabel D_800A301C
/* 0A2BCC 800A301C  */  .asciz  "p_naname_n_m"
                        .balign 4

glabel D_800A302C
/* 0A2BDC 800A302C  */  .asciz  "p_nanda2_n_m_blp"
                        .balign 4

glabel D_800A3040
/* 0A2BF0 800A3040  */  .asciz  "p_nayamu_n_m"
                        .balign 4

glabel D_800A3050
/* 0A2C00 800A3050  */  .asciz  "p_nayamukeepte_n_m"
                        .balign 4

glabel D_800A3064
/* 0A2C14 800A3064  */  .asciz  "p_nioi_n_m"
                        .balign 4

glabel D_800A3070
/* 0A2C20 800A3070  */  .asciz  "p_no_n_m"
                        .balign 4

glabel D_800A307C
/* 0A2C2C 800A307C  */  .asciz  "p_noridasu_n_m"
                        .balign 4

glabel D_800A308C
/* 0A2C3C 800A308C  */  .asciz  "p_noseru_n_m"
                        .balign 4

glabel D_800A309C
/* 0A2C4C 800A309C  */  .asciz  "p_nukenai_n_m"
                        .balign 4

glabel D_800A30AC
/* 0A2C5C 800A30AC  */  .asciz  "p_nukeru_n_m"
                        .balign 4

glabel D_800A30BC
/* 0A2C6C 800A30BC  */  .asciz  "p_nuku_n_m_ast"
                        .balign 4

glabel D_800A30CC
/* 0A2C7C 800A30CC  */  .asciz  "p_nuku_n_m_blp"
                        .balign 4

glabel D_800A30DC
/* 0A2C8C 800A30DC  */  .asciz  "p_ochiru_o_m_ast"
                        .balign 4

glabel D_800A30F0
/* 0A2CA0 800A30F0  */  .asciz  "p_ochiru_o_m_blp"
                        .balign 4

glabel D_800A3104
/* 0A2CB4 800A3104  */  .asciz  "p_okorare_h_s"
                        .balign 4

glabel D_800A3114
/* 0A2CC4 800A3114  */  .asciz  "p_oku_n_m"
                        .balign 4

glabel D_800A3120
/* 0A2CD0 800A3120  */  .asciz  "p_osu_n_m_ast"
                        .balign 4

glabel D_800A3130
/* 0A2CE0 800A3130  */  .asciz  "p_osu_n_m_blp"
                        .balign 4

glabel D_800A3140
/* 0A2CF0 800A3140  */  .asciz  "p_osu_n_m_ced"
                        .balign 4

glabel D_800A3150
/* 0A2D00 800A3150  */  .asciz  "p_peace_n_m"
                        .balign 4

glabel D_800A315C
/* 0A2D0C 800A315C  */  .asciz  "p_rappa_n_m"
                        .balign 4

glabel D_800A3168
/* 0A2D18 800A3168  */  .asciz  "p_really_o_s"
                        .balign 4

glabel D_800A3178
/* 0A2D28 800A3178  */  .asciz  "p_right_n_m"
                        .balign 4

glabel D_800A3184
/* 0A2D34 800A3184  */  .asciz  "p_run_n_m_ast"
                        .balign 4

glabel D_800A3194
/* 0A2D44 800A3194  */  .asciz  "p_run_n_m_blp"
                        .balign 4

glabel D_800A31A4
/* 0A2D54 800A31A4  */  .asciz  "p_run_n_m_ced"
                        .balign 4

glabel D_800A31B4
/* 0A2D64 800A31B4  */  .asciz  "p_runjump_n_m"
                        .balign 4

glabel D_800A31C4
/* 0A2D74 800A31C4  */  .asciz  "p_runwalk_n_m"
                        .balign 4

glabel D_800A31D4
/* 0A2D84 800A31D4  */  .asciz  "p_seki_n_m"
                        .balign 4

glabel D_800A31E0
/* 0A2D90 800A31E0  */  .asciz  "p_sleep_n_m_ast"
                        .balign 4

glabel D_800A31F0
/* 0A2DA0 800A31F0  */  .asciz  "p_sleep_n_m_blp"
                        .balign 4

glabel D_800A3200
/* 0A2DB0 800A3200  */  .asciz  "p_sleep_n_m_ced"
                        .balign 4

glabel D_800A3210
/* 0A2DC0 800A3210  */  .asciz  "p_sleepsuwa_n_m"
                        .balign 4

glabel D_800A3220
/* 0A2DD0 800A3220  */  .asciz  "p_suikama_n_m"
                        .balign 4

glabel D_800A3230
/* 0A2DE0 800A3230  */  .asciz  "p_suikashibumi_n_m"
                        .balign 4

glabel D_800A3244
/* 0A2DF4 800A3244  */  .asciz  "p_suikawalk_n_m"
                        .balign 4

glabel D_800A3254
/* 0A2E04 800A3254  */  .asciz  "p_suikawari_n_m_ast"
                        .balign 4

glabel D_800A3268
/* 0A2E18 800A3268  */  .asciz  "p_suikawari_n_m_blp"
                        .balign 4

glabel D_800A327C
/* 0A2E2C 800A327C  */  .asciz  "p_suikawari_n_m_ced"
                        .balign 4

glabel D_800A3290
/* 0A2E40 800A3290  */  .asciz  "p_suikayameru_n_m"
                        .balign 4

glabel D_800A32A4
/* 0A2E54 800A32A4  */  .asciz  "p_suteki_y_m"
                        .balign 4

glabel D_800A32B4
/* 0A2E64 800A32B4  */  .asciz  "p_suwamimikaki_n_m"
                        .balign 4

glabel D_800A32C8
/* 0A2E78 800A32C8  */  .asciz  "p_tachikama_n_m"
                        .balign 4

glabel D_800A32D8
/* 0A2E88 800A32D8  */  .asciz  "p_tereru_h_m"
                        .balign 4

glabel D_800A32E8
/* 0A2E98 800A32E8  */  .asciz  "p_tokui_n_m"
                        .balign 4

glabel D_800A32F4
/* 0A2EA4 800A32F4  */  .asciz  "p_torou_n_m"
                        .balign 4

glabel D_800A3300
/* 0A2EB0 800A3300  */  .asciz  "p_tumazuku_n_m_ast"
                        .balign 4

glabel D_800A3314
/* 0A2EC4 800A3314  */  .asciz  "p_tumazuku_n_m_blp"
                        .balign 4

glabel D_800A3328
/* 0A2ED8 800A3328  */  .asciz  "p_tumazuku_n_m_ced"
                        .balign 4

glabel D_800A333C
/* 0A2EEC 800A333C  */  .asciz  "p_tutuku_n_m"
                        .balign 4

glabel D_800A334C
/* 0A2EFC 800A334C  */  .asciz  "p_tv_n_m"
                        .balign 4

glabel D_800A3358
/* 0A2F08 800A3358  */  .asciz  "p_unadare_k_m_ast"
                        .balign 4

glabel D_800A336C
/* 0A2F1C 800A336C  */  .asciz  "p_unadare_k_m_blp"
                        .balign 4

glabel D_800A3380
/* 0A2F30 800A3380  */  .asciz  "p_unadare_k_m_ced"
                        .balign 4

glabel D_800A3394
/* 0A2F44 800A3394  */  .asciz  "p_unun_n_m"
                        .balign 4

glabel D_800A33A0
/* 0A2F50 800A33A0  */  .asciz  "p_voiceloud_n_m"
                        .balign 4

glabel D_800A33B0
/* 0A2F60 800A33B0  */  .asciz  "p_voicelow_n_m"
                        .balign 4

glabel D_800A33C0
/* 0A2F70 800A33C0  */  .asciz  "p_walk_n_m_ast"
                        .balign 4

glabel D_800A33D0
/* 0A2F80 800A33D0  */  .asciz  "p_walk_n_m_blp"
                        .balign 4

glabel D_800A33E0
/* 0A2F90 800A33E0  */  .asciz  "p_walk_n_m_ced"
                        .balign 4

glabel D_800A33F0
/* 0A2FA0 800A33F0  */  .asciz  "p_walkrun_n_m"
                        .balign 4

glabel D_800A3400
/* 0A2FB0 800A3400  */  .asciz  "p_warai_y_m"
                        .balign 4

glabel D_800A340C
/* 0A2FBC 800A340C  */  .asciz  "p_warai_y_s"
                        .balign 4

glabel D_800A3418
/* 0A2FC8 800A3418  */  .asciz  "p_watasu2_n_l_blp"
                        .balign 4

glabel D_800A342C
/* 0A2FDC 800A342C  */  .asciz  "p_watasu_n_m_ast"
                        .balign 4

glabel D_800A3440
/* 0A2FF0 800A3440  */  .asciz  "p_watasu_n_m_blp"
                        .balign 4

glabel D_800A3454
/* 0A3004 800A3454  */  .asciz  "p_watasu_n_m_ced"
                        .balign 4

glabel D_800A3468
/* 0A3018 800A3468  */  .asciz  "p_whatl_n_m"
                        .balign 4

glabel D_800A3474
/* 0A3024 800A3474  */  .asciz  "p_whatrl_n_m"
                        .balign 4

glabel D_800A3484
/* 0A3034 800A3484  */  .asciz  "p_yes_n_m"
                        .balign 4

glabel D_800A3490
/* 0A3040 800A3490  */  .asciz  "p_yosiyosi_n_m"
                        .balign 4

glabel D_800A34A0
/* 0A3050 800A34A0  */  .asciz  "p_yotsunbai_n_m_ast"
                        .balign 4

glabel D_800A34B4
/* 0A3064 800A34B4  */  .asciz  "p_yotsunbai_n_m_bed"
                        .balign 4

glabel D_800A34C8
/* 0A3078 800A34C8  */  .asciz  "starmie_oyogu"
                        .balign 4

glabel D_800A34D8
/* 0A3088 800A34D8  */  .asciz  "tbf_kama"
                        .balign 4

glabel D_800A34E4
/* 0A3094 800A34E4  */  .asciz  "th_taberu"
                        .balign 4

glabel D_800A34F0
/* 0A30A0 800A34F0  */  .asciz  "tk_run_ast"
                        .balign 4

glabel D_800A34FC
/* 0A30AC 800A34FC  */  .asciz  "tk_run_blp"
                        .balign 4

glabel D_800A3508
/* 0A30B8 800A3508  */  .asciz  "tk_run_ced"
                        .balign 4

glabel D_800A3514
/* 0A30C4 800A3514  */  .asciz  "tkc_kama"
                        .balign 4

glabel D_800A3520
/* 0A30D0 800A3520  */  .asciz  "tn_freeze"
                        .balign 4

glabel D_800A352C
/* 0A30DC 800A352C  */  .asciz  "tn_hairu"
                        .balign 4

glabel D_800A3538
/* 0A30E8 800A3538  */  .asciz  "tn_hakoaku"
                        .balign 4

glabel D_800A3544
/* 0A30F4 800A3544  */  .asciz  "tn_run_ast"
                        .balign 4

glabel D_800A3550
/* 0A3100 800A3550  */  .asciz  "tn_run_blp"
                        .balign 4

glabel D_800A355C
/* 0A310C 800A355C  */  .asciz  "tn_run_ced"
                        .balign 4

glabel D_800A3568
/* 0A3118 800A3568  */  .asciz  "tn_tobiagari"
                        .balign 4

glabel D_800A3578
/* 0A3128 800A3578  */  .asciz  "tny_deru"
                        .balign 4

glabel D_800A3584
/* 0A3134 800A3584  */  .asciz  "tny_uku"
                        .balign 4

glabel D_800A358C
/* 0A313C 800A358C  */  .asciz  "tny_unun"
                        .balign 4

glabel D_800A3598
/* 0A3148 800A3598  */  .asciz  "tny_walk_ast"
                        .balign 4

glabel D_800A35A8
/* 0A3158 800A35A8  */  .asciz  "tny_walk_blp"
                        .balign 4

glabel D_800A35B8
/* 0A3168 800A35B8  */  .asciz  "tny_walk_ced"
                        .balign 4

glabel D_800A35C8
/* 0A3178 800A35C8  */  .asciz  "tz_hello"
                        .balign 4

glabel D_800A35D4
/* 0A3184 800A35D4  */  .asciz  "tz_kama"
                        .balign 4

glabel D_800A35DC
/* 0A318C 800A35DC  */  .asciz  "tz_mazui"
                        .balign 4

glabel D_800A35E8
/* 0A3198 800A35E8  */  .asciz  "tz_mimiuchi"
                        .balign 4

glabel D_800A35F4
/* 0A31A4 800A35F4  */  .asciz  "tz_run_ast"
                        .balign 4

glabel D_800A3600
/* 0A31B0 800A3600  */  .asciz  "tz_run_blp"
                        .balign 4

glabel D_800A360C
/* 0A31BC 800A360C  */  .asciz  "tz_run_ced"
                        .balign 4

glabel D_800A3618
/* 0A31C8 800A3618  */  .asciz  "tz_taberu"
                        .balign 4

glabel D_800A3624
/* 0A31D4 800A3624  */  .asciz  "NO_MOTION"
                        .balign 4
/* 0A31E0 800A3630  */  .asciz  "Unknown smokeType(%d)\n"
                        .balign 4
/* 0A31F8 800A3648  */  .asciz  "wispType:%d\n"
                        .balign 4

glabel D_800A3658
/* 0A3208 800A3658 3F847AE140000000 */  .double  0.009999999776482582

glabel D_800A3660
/* 0A3210 800A3660 3F847AE140000000 */  .double  0.009999999776482582

glabel D_800A3668
/* 0A3218 800A3668 3F847AE140000000 */  .double  0.009999999776482582

glabel jtbl_800A3670
/* 0A3220 800A3670 80017A7C */  .word  L80017A7C
/* 0A3224 800A3674 80017AA8 */  .word  L80017AA8
/* 0A3228 800A3678 80017AE8 */  .word  L80017AE8
/* 0A322C 800A367C 80017B1C */  .word  L80017B1C
/* 0A3230 800A3680 80017BF8 */  .word  L80017BF8
/* 0A3234 800A3684 80017C24 */  .word  L80017C24
/* 0A3238 800A3688 80017C50 */  .word  L80017C50
/* 0A323C 800A368C 80017C7C */  .word  L80017C7C
/* 0A3240 800A3690 80017CA8 */  .word  L80017CA8
/* 0A3244 800A3694 80017CD4 */  .word  L80017CD4

glabel D_800A3698
/* 0A3248 800A3698 3C23D70A */  .float  0.009999999776482582

glabel D_800A369C
/* 0A324C 800A369C 3C23D70A */  .float  0.009999999776482582

glabel D_800A36A0
/* 0A3250 800A36A0 3C23D70A */  .float  0.009999999776482582

glabel D_800A36A4
/* 0A3254 800A36A4 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A36A8
/* 0A3258 800A36A8 3FA99999A0000000 */  .double  0.05000000074505806

glabel D_800A36B0
/* 0A3260 800A36B0 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A36B8
/* 0A3268 800A36B8 3FA99999A0000000 */  .double  0.05000000074505806

glabel D_800A36C0
/* 0A3270 800A36C0 3B449BA6 */  .float  0.003000000026077032

glabel D_800A36C4
/* 0A3274 800A36C4 3CA3D70A */  .float  0.019999999552965164

glabel D_800A36C8
/* 0A3278 800A36C8 3CF5C28F */  .float  0.029999999329447746

glabel D_800A36CC
/* 0A327C 800A36CC 3CF5C28F */  .float  0.029999999329447746

glabel D_800A36D0
/* 0A3280 800A36D0 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A36D4
/* 0A3284 800A36D4 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A36D8
/* 0A3288 800A36D8 3F99999A */  .float  1.2000000476837158

glabel D_800A36DC
/* 0A328C 800A36DC 3C23D70A */  .float  0.009999999776482582

glabel D_800A36E0
/* 0A3290 800A36E0 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A36E8
/* 0A3298 800A36E8 3FE3333340000000 */  .double  0.6000000238418579

glabel D_800A36F0
/* 0A32A0 800A36F0 3FE99999A0000000 */  .double  0.800000011920929

glabel D_800A36F8
/* 0A32A8 800A36F8 3F847AE140000000 */  .double  0.009999999776482582

glabel D_800A3700
/* 0A32B0 800A3700 3F847AE140000000 */  .double  0.009999999776482582

glabel D_800A3708
/* 0A32B8 800A3708 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A3710
/* 0A32C0 800A3710 3FF99999A0000000 */  .double  1.600000023841858

glabel jtbl_800A3718
/* 0A32C8 800A3718 80019444 */  .word  L80019444
/* 0A32CC 800A371C 80019470 */  .word  L80019470
/* 0A32D0 800A3720 8001949C */  .word  L8001949C
/* 0A32D4 800A3724 800194C8 */  .word  L800194C8
/* 0A32D8 800A3728 800194F4 */  .word  L800194F4
/* 0A32DC 800A372C 80019520 */  .word  L80019520
/* 0A32E0 800A3730 8001954C */  .word  L8001954C
/* 0A32E4 800A3734 80019578 */  .word  L80019578

glabel D_800A3738
/* 0A32E8 800A3738 3CF5C28F */  .float  0.029999999329447746

glabel D_800A373C
/* 0A32EC 800A373C 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A3740
/* 0A32F0 800A3740 40511111 */  .float  3.2666666507720947

glabel D_800A3744
/* 0A32F4 800A3744 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A3748
/* 0A32F8 800A3748 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A374C
/* 0A32FC 800A374C 3F4CCCCD */  .float  0.800000011920929

glabel D_800A3750
/* 0A3300 800A3750 3F19999A */  .float  0.6000000238418579

glabel D_800A3754
/* 0A3304 800A3754 3E19999A */  .float  0.15000000596046448

glabel D_800A3758
/* 0A3308 800A3758 3E19999A */  .float  0.15000000596046448
/* 0A330C 800A375C 00000000 */  .float  0.0

glabel D_800A3760
/* 0A3310 800A3760 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A3768
/* 0A3318 800A3768 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A3770
/* 0A3320 800A3770 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A3774
/* 0A3324 800A3774 43098000 */  .float  137.5

glabel D_800A3778
/* 0A3328 800A3778 3F8147AE */  .float  1.0099999904632568

glabel D_800A377C
/* 0A332C 800A377C 3D75C28F */  .float  0.05999999865889549

glabel D_800A3780
/* 0A3330 800A3780 3E99999A */  .float  0.30000001192092896
/* 0A3334 800A3784 00000000 */  .float  0.0
/* 0A3338 800A3788 00000000 */  .float  0.0
/* 0A333C 800A378C 00000000 */  .float  0.0

glabel D_800A3790
/* 0A3340 800A3790  */  .asciz  "door object was made, (%3.2f, %3.2f, %3.2f), type = %d, area = %d, entrance = %d\n, lock = %s \n"
                        .balign 4
/* 0A33A0 800A37F0  */  .asciz  "TRUE"
                        .balign 4
/* 0A33A8 800A37F8  */  .asciz  "FALSE"
                        .balign 4

glabel D_800A3800
/* 0A33B0 800A3800  */  .asciz  "Sliding Door\nThis leads to\n^6PIKACHU^^'s Discovery Days\nwhere you can play."
                        .balign 4

glabel D_800A384C
/* 0A33FC 800A384C  */  .asciz  "Front Gate\nThis leads to\n^6PIKACHU^^'s Play Days\nwhere you can play."
                        .balign 4

glabel D_800A3894
/* 0A3444 800A3894  */  .asciz  "Side Gate\nThis leads to\n^6PIKACHU^^'s Daring Days\nwhere you can play."
                        .balign 4

glabel D_800A38DC
/* 0A348C 800A38DC  */  .asciz  "Bedroom Door\nThis leads to \n%s."
                        .balign 4

glabel D_800A38FC
/* 0A34AC 800A38FC  */  .asciz  "Sign\nIt says,\n\"This way to %s.\""
                        .balign 4

glabel D_800A391C
/* 0A34CC 800A391C  */  .asciz  "\nPress @I@J to go on."
                        .balign 4

glabel D_800A3934
/* 0A34E4 800A3934  */  .asciz  "\nIt's locked."
                        .balign 4

glabel D_800A3944
/* 0A34F4 800A3944  */  .asciz  "\nYou can't go through here yet."
                        .balign 4

glabel D_800A3964
/* 0A3514 800A3964  */  .asciz  "\nYou can go through\nwhen ^6PIKACHU^^ is near."
                        .balign 4

glabel D_800A3994
/* 0A3544 800A3994  */  .asciz  "\n^4SQUIRTLE^^ is blocking the way."
                        .balign 4
/* 0A3568 800A39B8  */  .asciz  "\nYou can't get by for some reason."
                        .balign 4

glabel jtbl_800A39DC
/* 0A358C 800A39DC 8001C398 */  .word  L8001C398
/* 0A3590 800A39E0 8001C3B4 */  .word  L8001C3B4
/* 0A3594 800A39E4 8001C3D0 */  .word  L8001C3D0
/* 0A3598 800A39E8 8001C3EC */  .word  L8001C3EC
/* 0A359C 800A39EC 8001C408 */  .word  L8001C408

glabel D_800A39F0
/* 0A35A0 800A39F0  */  .asciz  "-------- Object Message Info --------\n"
                        .balign 4
/* 0A35C8 800A3A18  */  .asciz  "\n"
                        .balign 4
/* 0A35CC 800A3A1C  */  .asciz  ""
                        .balign 4

glabel D_800A3A20
/* 0A35D0 800A3A20 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A3A28
/* 0A35D8 800A3A28 3FE3333340000000 */  .double  0.6000000238418579

glabel D_800A3A30
/* 0A35E0 800A3A30 3F4CCCCD */  .float  0.800000011920929

glabel D_800A3A34
/* 0A35E4 800A3A34 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A3A38
/* 0A35E8 800A3A38 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A3A40
/* 0A35F0 800A3A40 3FC99999A0000000 */  .double  0.20000000298023224

glabel D_800A3A48
/* 0A35F8 800A3A48 3E99999A */  .float  0.30000001192092896

glabel D_800A3A4C
/* 0A35FC 800A3A4C 43098000 */  .float  137.5
/* 0A3600 800A3A50 6C616E64 */  .float  1.0901184576032584e+27
/* 0A3604 800A3A54 4D696E65 */  .float  244770384.0
/* 0A3608 800A3A58 4E657728 */  .float  962447872.0
/* 0A360C 800A3A5C 25662C25 */  .float  1.996427672269722e-16
/* 0A3610 800A3A60 662C2566 */  .float  2.0323422861472452e+23
/* 0A3614 800A3A64 290A0000 */  .float  3.064215547965432e-14

glabel D_800A3A68
/* 0A3618 800A3A68 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A3A6C
/* 0A361C 800A3A6C 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A3A70
/* 0A3620 800A3A70 3D8F5C29 */  .float  0.07000000029802322

glabel D_800A3A74
/* 0A3624 800A3A74 3F4CCCCD */  .float  0.800000011920929
/* 0A3628 800A3A78 00000000 */  .float  0.0
/* 0A362C 800A3A7C 00000000 */  .float  0.0

glabel D_800A3A80
/* 0A3630 800A3A80  */  .asciz  "BULBASAUR"
                        .balign 4

glabel D_800A3A8C
/* 0A363C 800A3A8C  */  .asciz  "BULBASAUR"
                        .balign 4

glabel D_800A3A98
/* 0A3648 800A3A98  */  .asciz  "^dSeed Pok´mon^^\nHas a plant bulb\non its back.\n^6PIKACHU^^'s friend."
                        .balign 4

glabel D_800A3AE0
/* 0A3690 800A3AE0  */  .asciz  "VENUSAUR"
                        .balign 4

glabel D_800A3AEC
/* 0A369C 800A3AEC  */  .asciz  "VENUSAUR"
                        .balign 4

glabel D_800A3AF8
/* 0A36A8 800A3AF8  */  .asciz  "^dSeed Pok´mon^^\nUses solar energy\nfor nourishment.\nLikes to sun itself."
                        .balign 4

glabel D_800A3B44
/* 0A36F4 800A3B44  */  .asciz  "SQUIRTLE"
                        .balign 4

glabel D_800A3B50
/* 0A3700 800A3B50  */  .asciz  "SQUIRTLE"
                        .balign 4

glabel D_800A3B5C
/* 0A370C 800A3B5C  */  .asciz  "^dTiny Turtle Pok´mon^^\nLikes water.\n^6PIKACHU^^'s friend."
                        .balign 4

glabel D_800A3B98
/* 0A3748 800A3B98  */  .asciz  "CHARMANDER"
                        .balign 4

glabel D_800A3BA4
/* 0A3754 800A3BA4  */  .asciz  "CHARMANDER"
                        .balign 4

glabel D_800A3BB0
/* 0A3760 800A3BB0  */  .asciz  "^dLizard Pok´mon^^\nUses the flame at the tip of\nits tail to show its vitality.\n^6PIKACHU^^'s friend."
                        .balign 4

glabel D_800A3C18
/* 0A37C8 800A3C18  */  .asciz  "ODDISH"
                        .balign 4

glabel D_800A3C20
/* 0A37D0 800A3C20  */  .asciz  "May grow when\nsprinkled with water."
                        .balign 4

glabel D_800A3C44
/* 0A37F4 800A3C44  */  .asciz  "ODDISH"
                        .balign 4

glabel D_800A3C4C
/* 0A37FC 800A3C4C  */  .asciz  "^dWeed Pok´mon^^\nLikes sunny places."
                        .balign 4

glabel D_800A3C74
/* 0A3824 800A3C74  */  .asciz  "GLOOM"
                        .balign 4

glabel D_800A3C7C
/* 0A382C 800A3C7C  */  .asciz  "May grow when\nsprinkled with water."
                        .balign 4

glabel D_800A3CA0
/* 0A3850 800A3CA0  */  .asciz  "GLOOM"
                        .balign 4

glabel D_800A3CA8
/* 0A3858 800A3CA8  */  .asciz  "^dWeed Pok´mon^^\nAn evolution of ^4ODDISH^^.\nStuns opponents with\nits terrible smell."
                        .balign 4

glabel D_800A3D00
/* 0A38B0 800A3D00  */  .asciz  "VILEPLUME"
                        .balign 4

glabel D_800A3D0C
/* 0A38BC 800A3D0C  */  .asciz  "VILEPLUME"
                        .balign 4

glabel D_800A3D18
/* 0A38C8 800A3D18  */  .asciz  "^dFlower Pok´mon^^\nAn evolution of ^4GLOOM^^.\nIs said to have the world's\nlargest petals."
                        .balign 4

glabel D_800A3D74
/* 0A3924 800A3D74  */  .asciz  "CATERPIE"
                        .balign 4

glabel D_800A3D80
/* 0A3930 800A3D80  */  .asciz  "CATERPIE"
                        .balign 4

glabel D_800A3D8C
/* 0A393C 800A3D8C  */  .asciz  "^dWorm Pok´mon^^\nIs said to become a pupa when\nit sheds its skin and evolves."
                        .balign 4

glabel D_800A3DDC
/* 0A398C 800A3DDC  */  .asciz  "METAPOD"
                        .balign 4

glabel D_800A3DE4
/* 0A3994 800A3DE4  */  .asciz  "METAPOD"
                        .balign 4

glabel D_800A3DEC
/* 0A399C 800A3DEC  */  .asciz  "^dCocoon Pok´mon^^\nIs encased in a hard shell\nin preparation for evolution."
                        .balign 4

glabel D_800A3E3C
/* 0A39EC 800A3E3C  */  .asciz  "DIGLETT"
                        .balign 4

glabel D_800A3E44
/* 0A39F4 800A3E44  */  .asciz  "DIGLETT"
                        .balign 4

glabel D_800A3E4C
/* 0A39FC 800A3E4C  */  .asciz  "^dMole Pok´mon^^\nUsually found underground.\nKnown to surface when\nplaying tricks."
                        .balign 4

glabel D_800A3EA0
/* 0A3A50 800A3EA0  */  .asciz  "LAPRAS"
                        .balign 4

glabel D_800A3EA8
/* 0A3A58 800A3EA8  */  .asciz  "LAPRAS"
                        .balign 4

glabel D_800A3EB0
/* 0A3A60 800A3EB0  */  .asciz  "^dTransport Pok´mon^^\nA very intelligent Pok´mon.\nEnjoys carrying people across\nthe seas on its back."
                        .balign 4

glabel D_800A3F18
/* 0A3AC8 800A3F18  */  .asciz  "POLIWAG"
                        .balign 4

glabel D_800A3F20
/* 0A3AD0 800A3F20  */  .asciz  "POLIWAG"
                        .balign 4

glabel D_800A3F28
/* 0A3AD8 800A3F28  */  .asciz  "^dTadpole Pok´mon^^\nCan't walk well since it just\ngot its legs.\nNote: Runs away when startled."
                        .balign 4

glabel D_800A3F88
/* 0A3B38 800A3F88  */  .asciz  "POLIWHIRL"
                        .balign 4

glabel D_800A3F94
/* 0A3B44 800A3F94  */  .asciz  "POLIWHIRL"
                        .balign 4

glabel D_800A3FA0
/* 0A3B50 800A3FA0  */  .asciz  "^dTadpole Pok´mon^^\nLives both on land and in\nthe water.\nEvolution of ^4POLIWAG^^."
                        .balign 4

glabel D_800A3FF4
/* 0A3BA4 800A3FF4  */  .asciz  "BUTTERFREE"
                        .balign 4

glabel D_800A4000
/* 0A3BB0 800A4000  */  .asciz  "BUTTERFREE"
                        .balign 4

glabel D_800A400C
/* 0A3BBC 800A400C  */  .asciz  "^dButterfly Pok´mon^^\nFlutters about as it flies\nover many areas.\nIs an excellent caretaker."
                        .balign 4

glabel D_800A406C
/* 0A3C1C 800A406C  */  .asciz  "ABRA"
                        .balign 4

glabel D_800A4074
/* 0A3C24 800A4074  */  .asciz  "ABRA"
                        .balign 4

glabel D_800A407C
/* 0A3C2C 800A407C  */  .asciz  "^dPsi Pok´mon^^"
                        .balign 4

glabel D_800A4090
/* 0A3C40 800A4090  */  .asciz  "Treasure chest"
                        .balign 4

glabel D_800A40A0
/* 0A3C50 800A40A0  */  .asciz  "Treasure chest"
                        .balign 4

glabel D_800A40B0
/* 0A3C60 800A40B0  */  .asciz  "A mysterious wooden chest\nburied by pirates."
                        .balign 4

glabel D_800A40E0
/* 0A3C90 800A40E0  */  .asciz  "HAUNTER"
                        .balign 4

glabel D_800A40E8
/* 0A3C98 800A40E8  */  .asciz  "HAUNTER"
                        .balign 4

glabel D_800A40F0
/* 0A3CA0 800A40F0  */  .asciz  "^dGas Pok´mon^^\nEnjoys quietly forming behind\npeople and then startling.\n"
                        .balign 4

glabel D_800A413C
/* 0A3CEC 800A413C  */  .asciz  "SLOWPOKE"
                        .balign 4

glabel D_800A4148
/* 0A3CF8 800A4148  */  .asciz  "SLOWPOKE"
                        .balign 4

glabel D_800A4154
/* 0A3D04 800A4154  */  .asciz  "^dDopey Pok´mon^^\nAlways staring blankly.\nTalented at using its tail\nto fish with."
                        .balign 4

glabel D_800A41A8
/* 0A3D58 800A41A8  */  .asciz  "MAGNEMITE"
                        .balign 4

glabel D_800A41B4
/* 0A3D64 800A41B4  */  .asciz  "MAGNEMITE"
                        .balign 4

glabel D_800A41C0
/* 0A3D70 800A41C0  */  .asciz  "^dMagnet Pok´mon^^\nBelieved to use its magnetic\npowers to float in midair.\n^6PIKACHU^^'s friend."
                        .balign 4

glabel D_800A4224
/* 0A3DD4 800A4224  */  .asciz  "Fishing rod"
                        .balign 4

glabel D_800A4230
/* 0A3DE0 800A4230  */  .asciz  "Fishing rod"
                        .balign 4

glabel D_800A423C
/* 0A3DEC 800A423C  */  .asciz  "^6PIKACHU^^'s fishing rod."
                        .balign 4

glabel D_800A4258
/* 0A3E08 800A4258  */  .asciz  "Telescope"
                        .balign 4

glabel D_800A4264
/* 0A3E14 800A4264  */  .asciz  "Telescope"
                        .balign 4

glabel D_800A4270
/* 0A3E20 800A4270  */  .asciz  "An item used to view the\nnight sky."
                        .balign 4

glabel D_800A4294
/* 0A3E44 800A4294  */  .asciz  "TOGEPI"
                        .balign 4

glabel D_800A429C
/* 0A3E4C 800A429C  */  .asciz  "TOGEPI"
                        .balign 4

glabel D_800A42A4
/* 0A3E54 800A42A4  */  .asciz  "An unknown Pok´mon - not\nlisted in the Pok´dex."
                        .balign 4

glabel D_800A42D8
/* 0A3E88 800A42D8  */  .asciz  "TOGEPI Egg"
                        .balign 4

glabel D_800A42E4
/* 0A3E94 800A42E4  */  .asciz  "TOGEPI Egg"
                        .balign 4

glabel D_800A42F0
/* 0A3EA0 800A42F0  */  .asciz  "??????"
                        .balign 4

glabel D_800A42F8
/* 0A3EA8 800A42F8  */  .asciz  "SEAKING"
                        .balign 4

glabel D_800A4300
/* 0A3EB0 800A4300  */  .asciz  "SEAKING"
                        .balign 4

glabel D_800A4308
/* 0A3EB8 800A4308  */  .asciz  "^d^dGoldfish Pok´mon^^"
                        .balign 4

glabel D_800A4320
/* 0A3ED0 800A4320  */  .asciz  "KRABBY"
                        .balign 4

glabel D_800A4328
/* 0A3ED8 800A4328  */  .asciz  "KRABBY"
                        .balign 4

glabel D_800A4330
/* 0A3EE0 800A4330  */  .asciz  "^dRiver Crab Pok´mon^^"
                        .balign 4

glabel D_800A4348
/* 0A3EF8 800A4348  */  .asciz  "TENTACRUEL"
                        .balign 4

glabel D_800A4354
/* 0A3F04 800A4354  */  .asciz  "TENTACRUEL"
                        .balign 4

glabel D_800A4360
/* 0A3F10 800A4360  */  .asciz  "^dJellyfish Pok´mon^^"
                        .balign 4

glabel D_800A4378
/* 0A3F28 800A4378  */  .asciz  "STAREYU"
                        .balign 4

glabel D_800A4380
/* 0A3F30 800A4380  */  .asciz  "STARYU"
                        .balign 4

glabel D_800A4388
/* 0A3F38 800A4388  */  .asciz  "^dStarshaped Pok´mon^^"
                        .balign 4

glabel D_800A43A0
/* 0A3F50 800A43A0  */  .asciz  "KINGLER"
                        .balign 4

glabel D_800A43A8
/* 0A3F58 800A43A8  */  .asciz  "KINGLER"
                        .balign 4

glabel D_800A43B0
/* 0A3F60 800A43B0  */  .asciz  "^dPincer Pok´mon^^"
                        .balign 4

glabel D_800A43C4
/* 0A3F74 800A43C4  */  .asciz  "MAGIKARP"
                        .balign 4

glabel D_800A43D0
/* 0A3F80 800A43D0  */  .asciz  "MAGIKARP"
                        .balign 4

glabel D_800A43DC
/* 0A3F8C 800A43DC  */  .asciz  "^dFish Pok´mon^^"
                        .balign 4

glabel D_800A43F0
/* 0A3FA0 800A43F0  */  .asciz  "TENTACOOL"
                        .balign 4

glabel D_800A43FC
/* 0A3FAC 800A43FC  */  .asciz  "TENTACOOL"
                        .balign 4

glabel D_800A4408
/* 0A3FB8 800A4408  */  .asciz  "^dJellyfish Pok´mon^^"
                        .balign 4

glabel D_800A4420
/* 0A3FD0 800A4420  */  .asciz  "DRATINI"
                        .balign 4

glabel D_800A4428
/* 0A3FD8 800A4428  */  .asciz  "DRATINI"
                        .balign 4

glabel D_800A4430
/* 0A3FE0 800A4430  */  .asciz  "^dDragon Pok´mon^^"
                        .balign 4

glabel D_800A4444
/* 0A3FF4 800A4444  */  .asciz  "SEADRA"
                        .balign 4

glabel D_800A444C
/* 0A3FFC 800A444C  */  .asciz  "SEADRA"
                        .balign 4

glabel D_800A4454
/* 0A4004 800A4454  */  .asciz  "^dDragon Pok´mon^^"
                        .balign 4

glabel D_800A4468
/* 0A4018 800A4468  */  .asciz  "STARMIE"
                        .balign 4

glabel D_800A4470
/* 0A4020 800A4470  */  .asciz  "STARMIE"
                        .balign 4

glabel D_800A4478
/* 0A4028 800A4478  */  .asciz  "^dMysterious Pok´mon^^"
                        .balign 4

glabel D_800A4490
/* 0A4040 800A4490  */  .asciz  "HORSEA"
                        .balign 4

glabel D_800A4498
/* 0A4048 800A4498  */  .asciz  "HORSEA"
                        .balign 4

glabel D_800A44A0
/* 0A4050 800A44A0  */  .asciz  "^dDragon Pok´mon^^"
                        .balign 4

glabel D_800A44B4
/* 0A4064 800A44B4  */  .asciz  "GOLDEEN"
                        .balign 4

glabel D_800A44BC
/* 0A406C 800A44BC  */  .asciz  "GOLDEEN"
                        .balign 4

glabel D_800A44C4
/* 0A4074 800A44C4  */  .asciz  "^dGoldfish Pok´mon^^"
                        .balign 4

glabel D_800A44DC
/* 0A408C 800A44DC  */  .asciz  "PIKACHU"
                        .balign 4

glabel D_800A44E4
/* 0A4094 800A44E4  */  .asciz  "PIKACHU"
                        .balign 4

glabel D_800A44EC
/* 0A409C 800A44EC  */  .asciz  "^dMouse Pok´mon^^"
                        .balign 4

glabel D_800A4500
/* 0A40B0 800A4500  */  .asciz  "PIKACHU"
                        .balign 4

glabel D_800A4508
/* 0A40B8 800A4508  */  .asciz  "PIKACHU"
                        .balign 4

glabel D_800A4510
/* 0A40C0 800A4510  */  .asciz  "^dMouse Pok´mon^^"
                        .balign 4
/* 0A40D4 800A4524  */  .asciz  "ERROR: Invalid _segmentData\n_segmentData[%d].segmentIdx != %d\n"
                        .balign 4
/* 0A4114 800A4564  */  .asciz  "modelsRequestLoad(%d)\n"
                        .balign 4
/* 0A412C 800A457C  */  .asciz  "type(%d):%s\n"
                        .balign 4
/* 0A413C 800A458C  */  .asciz  "segmentIdx:%d\n"
                        .balign 4
/* 0A414C 800A459C  */  .asciz  "zipType : ZIPTYPE_RAW  size:%d\n"
                        .balign 4
/* 0A416C 800A45BC  */  .asciz  "zipType : ZIPTYPE_ZIP  bufferSize:%d "
                        .balign 4
/* 0A4194 800A45E4  */  .asciz  "size:%d\n"
                        .balign 4
/* 0A41A0 800A45F0  */  .asciz  "rom start:%p end:%p size:%d _buffer:%p\n"
                        .balign 4
/* 0A41C8 800A4618  */  .asciz  "ERROR: Hara(%s) is not loaded. Execute modelsRequestLoad() first.\n"
                        .balign 4

glabel D_800A465C
/* 0A420C 800A465C 7072655F */  .word  0x7072655F
/* 0A4210 800A4660 6D6F6465 */  .word  0x6D6F6465
/* 0A4214 800A4664 6C734E65 */  .word  0x6C734E65
/* 0A4218 800A4668 77000000 */  .word  0x77000000
/* 0A421C 800A466C 73697A65 */  .word  0x73697A65
/* 0A4220 800A4670 6F66286A */  .word  0x6F66286A
/* 0A4224 800A4674 6F696E74 */  .word  0x6F696E74
/* 0A4228 800A4678 54293A25 */  .word  0x54293A25
/* 0A422C 800A467C 640A7369 */  .word  0x640A7369
/* 0A4230 800A4680 7A656F66 */  .word  0x7A656F66
/* 0A4234 800A4684 28686172 */  .word  0x28686172
/* 0A4238 800A4688 6154293A */  .word  0x6154293A
/* 0A423C 800A468C 25640A73 */  .word  0x25640A73
/* 0A4240 800A4690 697A656F */  .word  0x697A656F
/* 0A4244 800A4694 66286F62 */  .word  0x66286F62
/* 0A4248 800A4698 6A54293A */  .word  0x6A54293A
/* 0A424C 800A469C 25640A00 */  .word  0x25640A00
/* 0A4250 800A46A0 6D6F6465 */  .word  0x6D6F6465
/* 0A4254 800A46A4 6C734E65 */  .word  0x6C734E65
/* 0A4258 800A46A8 77282564 */  .word  0x77282564
/* 0A425C 800A46AC 2C20252E */  .word  0x2C20252E
/* 0A4260 800A46B0 33662C25 */  .word  0x33662C25
/* 0A4264 800A46B4 2E33662C */  .word  0x2E33662C
/* 0A4268 800A46B8 252E3366 */  .word  0x252E3366
/* 0A426C 800A46BC 2C20252E */  .word  0x2C20252E
/* 0A4270 800A46C0 33662C25 */  .word  0x33662C25
/* 0A4274 800A46C4 2E33662C */  .word  0x2E33662C
/* 0A4278 800A46C8 20252E33 */  .word  0x20252E33
/* 0A427C 800A46CC 66290A00 */  .word  0x66290A00

glabel D_800A46D0
/* 0A4280 800A46D0 6166745F */  .word  0x6166745F
/* 0A4284 800A46D4 6D6F6465 */  .word  0x6D6F6465
/* 0A4288 800A46D8 6C735265 */  .word  0x6C735265
/* 0A428C 800A46DC 71756573 */  .word  0x71756573
/* 0A4290 800A46E0 744C6F61 */  .word  0x744C6F61
/* 0A4294 800A46E4 64000000 */  .word  0x64000000

glabel D_800A46E8
/* 0A4298 800A46E8 6166745F */  .word  0x6166745F
/* 0A429C 800A46EC 6F6D4872 */  .word  0x6F6D4872
/* 0A42A0 800A46F0 63416C6C */  .word  0x63416C6C
/* 0A42A4 800A46F4 6F630000 */  .word  0x6F630000

glabel D_800A46F8
/* 0A42A8 800A46F8 6166745F */  .word  0x6166745F
/* 0A42AC 800A46FC 6F6D4872 */  .word  0x6F6D4872
/* 0A42B0 800A4700 63416C6C */  .word  0x63416C6C
/* 0A42B4 800A4704 6F634D74 */  .word  0x6F634D74
/* 0A42B8 800A4708 78000000 */  .word  0x78000000

glabel D_800A470C
/* 0A42BC 800A470C 6166745F */  .word  0x6166745F
/* 0A42C0 800A4710 6A6F5365 */  .word  0x6A6F5365
/* 0A42C4 800A4714 744A6F69 */  .word  0x744A6F69
/* 0A42C8 800A4718 6E745462 */  .word  0x6E745462
/* 0A42CC 800A471C 6C000000 */  .word  0x6C000000
/* 0A42D0 800A4720 73657470 */  .word  0x73657470
/* 0A42D4 800A4724 7075202D */  .word  0x7075202D
/* 0A42D8 800A4728 206F626A */  .word  0x206F626A
/* 0A42DC 800A472C 3A257020 */  .word  0x3A257020
/* 0A42E0 800A4730 6F626A54 */  .word  0x6F626A54
/* 0A42E4 800A4734 7970653A */  .word  0x7970653A
/* 0A42E8 800A4738 25642020 */  .word  0x25642020
/* 0A42EC 800A473C 7070753A */  .word  0x7070753A
/* 0A42F0 800A4740 25700A00 */  .word  0x25700A00

glabel D_800A4744
/* 0A42F4 800A4744 7072655F */  .word  0x7072655F
/* 0A42F8 800A4748 66726565 */  .word  0x66726565
/* 0A42FC 800A474C 42756666 */  .word  0x42756666
/* 0A4300 800A4750 65720000 */  .word  0x65720000

glabel D_800A4754
/* 0A4304 800A4754 6166745F */  .word  0x6166745F
/* 0A4308 800A4758 66726565 */  .word  0x66726565
/* 0A430C 800A475C 42756666 */  .word  0x42756666
/* 0A4310 800A4760 65720000 */  .word  0x65720000

glabel D_800A4764
/* 0A4314 800A4764 6166745F */  .word  0x6166745F
/* 0A4318 800A4768 6D6F6465 */  .word  0x6D6F6465
/* 0A431C 800A476C 6C734E65 */  .word  0x6C734E65
/* 0A4320 800A4770 77000000 */  .word  0x77000000

glabel D_800A4774
/* 0A4324 800A4774 40966666 */  .float  4.699999809265137

glabel D_800A4778
/* 0A4328 800A4778 3F8CCCCD */  .float  1.100000023841858

glabel D_800A477C
/* 0A432C 800A477C 3FE66666 */  .float  1.7999999523162842

glabel D_800A4780
/* 0A4330 800A4780 00000002 */  .word  0x00000002
/* 0A4334 800A4784 00000001 */  .word  0x00000001
/* 0A4338 800A4788 74617267 */  .word  0x74617267
/* 0A433C 800A478C 65744963 */  .word  0x65744963
/* 0A4340 800A4790 6F6E2063 */  .word  0x6F6E2063
/* 0A4344 800A4794 68616E67 */  .word  0x68616E67
/* 0A4348 800A4798 653A2025 */  .word  0x653A2025
/* 0A434C 800A479C 64202D3E */  .word  0x64202D3E
/* 0A4350 800A47A0 2025640A */  .word  0x2025640A
/* 0A4354 800A47A4 00000000 */  .word  0x00000000

glabel D_800A47A8
/* 0A4358 800A47A8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A47AC
/* 0A435C 800A47AC 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A47B0
/* 0A4360 800A47B0 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A47B4
/* 0A4364 800A47B4 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A47B8
/* 0A4368 800A47B8 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A47BC
/* 0A436C 800A47BC 3DCCCCCD */  .float  0.10000000149011612

glabel _string_landMarkNew
/* 0A4370 800A47C0  */  .asciz  "landMarkNew(%f,%f,%f)\n"
                        .balign 4

glabel D_800A47D8
/* 0A4388 800A47D8  */  .asciz  "^4Cannon^^\nA weapon once used by pirates."
                        .balign 4

glabel D_800A4804
/* 0A43B4 800A4804 3DCCCCCD */  .float  0.10000000149011612
/* 0A43B8 800A4808 00000000 */  .float  0.0
/* 0A43BC 800A480C 00000000 */  .float  0.0

glabel _string_carpet_object
/* 0A43C0 800A4810  */  .asciz  "carpet object was made, (%3.2f, %3.2f, %3.2f), xside = %f, zside = %f\n"
                        .balign 4
/* 0A4408 800A4858  */  .asciz  ""
                        .balign 4
/* 0A440C 800A485C  */  .asciz  ""
                        .balign 4

glabel D_800A4860
/* 0A4410 800A4860  */  .asciz  "The cave\n leads somewhere."
                        .balign 4
/* 0A442C 800A487C  */  .asciz  ""
                        .balign 4

glabel D_800A4880
/* 0A4430 800A4880 40EFFFE000000000 */  .double  65535.0

glabel D_800A4888
/* 0A4438 800A4888 3FD3333333333333 */  .double  0.3

glabel D_800A4890
/* 0A4440 800A4890 3FD3333333333333 */  .double  0.3
/* 0A4448 800A4898 0000000000000000 */  .double  0.0

glabel D_800A48A0
/* 0A4450 800A48A0 45B3B000 */  .float  5750.0
/* 0A4454 800A48A4 00000000 */  .float  0.0
/* 0A4458 800A48A8 00000000 */  .float  0.0
/* 0A445C 800A48AC 00000000 */  .float  0.0

glabel D_800A48B0
/* 0A4460 800A48B0  */  .asciz  "You"
                        .balign 4
/* 0A4464 800A48B4  */  .asciz  ""
                        .balign 4
/* 0A4468 800A48B8  */  .asciz  ""
                        .balign 4
/* 0A446C 800A48BC  */  .asciz  ""
                        .balign 4

glabel _string_micStateChange
/* 0A4470 800A48C0  */  .asciz  "micStateChange: %d -> %d\n"
                        .balign 4
/* 0A448C 800A48DC  */  .asciz  ""
                        .balign 4

glabel D_800A48E0
/* 0A4490 800A48E0 3FC3333340000000 */  .double  0.15000000596046448

glabel D_800A48E8
/* 0A4498 800A48E8 3FA99999A0000000 */  .double  0.05000000074505806

glabel D_800A48F0
/* 0A44A0 800A48F0 3F4CCCCD */  .float  0.800000011920929

glabel D_800A48F4
/* 0A44A4 800A48F4 3E4CCCCD */  .float  0.20000000298023224

glabel D_800A48F8
/* 0A44A8 800A48F8 3F333333 */  .float  0.699999988079071

glabel D_800A48FC
/* 0A44AC 800A48FC 3F4CCCCD */  .float  0.800000011920929

glabel D_800A4900
/* 0A44B0 800A4900 3F59999A */  .float  0.8500000238418579
/* 0A44B4 800A4904 00000000 */  .float  0.0

glabel D_800A4908
/* 0A44B8 800A4908 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A4910
/* 0A44C0 800A4910 3FEE666660000000 */  .double  0.949999988079071

glabel D_800A4918
/* 0A44C8 800A4918 3EA3D70A */  .float  0.3199999928474426
/* 0A44CC 800A491C 00000000 */  .float  0.0
/* 0A44D0 800A4920 556E6B6E */  .float  16384073400320.0
/* 0A44D4 800A4924 6F776E20 */  .float  7.657593038175729e+28
/* 0A44D8 800A4928 7468726F */  .float  7.366539674077975e+31
/* 0A44DC 800A492C 775F6469 */  .float  4.53093265379178e+33
/* 0A44E0 800A4930 723A2564 */  .float  3.6870025163996295e+30
/* 0A44E4 800A4934 0A000000 */  .float  6.162975822039155e-33

glabel D_800A4938
/* 0A44E8 800A4938 C1F00000 */  .float  -30.0
/* 0A44EC 800A493C C1F00000 */  .float  -30.0
/* 0A44F0 800A4940 C2700000 */  .float  -60.0
/* 0A44F4 800A4944 C4160000 */  .float  -600.0
/* 0A44F8 800A4948 43960000 */  .float  300.0
/* 0A44FC 800A494C C1F00000 */  .float  -30.0
/* 0A4500 800A4950 C2700000 */  .float  -60.0
/* 0A4504 800A4954 BECCCCCD */  .float  -0.4000000059604645

glabel D_800A4958
/* 0A4508 800A4958 00000000 */  .float  0.0
/* 0A450C 800A495C 00000000 */  .float  0.0
/* 0A4510 800A4960 43700000 */  .float  240.0
/* 0A4514 800A4964 00000000 */  .float  0.0
/* 0A4518 800A4968 00000000 */  .float  0.0
/* 0A451C 800A496C 00000000 */  .float  0.0
/* 0A4520 800A4970 43480000 */  .float  200.0
/* 0A4524 800A4974 00000000 */  .float  0.0

glabel D_800A4978
/* 0A4528 800A4978 00000001 */  .word  0x00000001
/* 0A452C 800A497C 00000001 */  .word  0x00000001
/* 0A4530 800A4980 00000001 */  .word  0x00000001
/* 0A4534 800A4984 00000001 */  .word  0x00000001
/* 0A4538 800A4988 00000001 */  .word  0x00000001
/* 0A453C 800A498C 00000001 */  .word  0x00000001
/* 0A4540 800A4990 00000001 */  .word  0x00000001
/* 0A4544 800A4994 00000000 */  .word  0x00000000
/* 0A4548 800A4998 4552524F */  .word  0x4552524F
/* 0A454C 800A499C 523A2049 */  .word  0x523A2049
/* 0A4550 800A49A0 6C6C6567 */  .word  0x6C6C6567
/* 0A4554 800A49A4 616C2070 */  .word  0x616C2070
/* 0A4558 800A49A8 6F735479 */  .word  0x6F735479
/* 0A455C 800A49AC 70652825 */  .word  0x70652825
/* 0A4560 800A49B0 64290A00 */  .word  0x64290A00
/* 0A4564 800A49B4 4552524F */  .word  0x4552524F
/* 0A4568 800A49B8 523A2049 */  .word  0x523A2049
/* 0A456C 800A49BC 6C6C6567 */  .word  0x6C6C6567
/* 0A4570 800A49C0 616C2070 */  .word  0x616C2070
/* 0A4574 800A49C4 6F735479 */  .word  0x6F735479
/* 0A4578 800A49C8 70652825 */  .word  0x70652825
/* 0A457C 800A49CC 64290A00 */  .word  0x64290A00
/* 0A4580 800A49D0 7665633A */  .word  0x7665633A
/* 0A4584 800A49D4 25662C25 */  .word  0x25662C25
/* 0A4588 800A49D8 662C2566 */  .word  0x662C2566
/* 0A458C 800A49DC 206C656E */  .word  0x206C656E
/* 0A4590 800A49E0 3A256620 */  .word  0x3A256620
/* 0A4594 800A49E4 20737475 */  .word  0x20737475
/* 0A4598 800A49E8 6E52616E */  .word  0x6E52616E
/* 0A459C 800A49EC 67653A25 */  .word  0x67653A25
/* 0A45A0 800A49F0 660A0000 */  .word  0x660A0000
/* 0A45A4 800A49F4 5761726E */  .word  0x5761726E
/* 0A45A8 800A49F8 696E673A */  .word  0x696E673A
/* 0A45AC 800A49FC 20547269 */  .word  0x20547269
/* 0A45B0 800A4A00 65642074 */  .word  0x65642074
/* 0A45B4 800A4A04 6F206368 */  .word  0x6F206368
/* 0A45B8 800A4A08 616E6765 */  .word  0x616E6765
/* 0A45BC 800A4A0C 206E6F6E */  .word  0x206E6F6E
/* 0A45C0 800A4A10 5F697465 */  .word  0x5F697465
/* 0A45C4 800A4A14 6D5F676F */  .word  0x6D5F676F
/* 0A45C8 800A4A18 616C5F6F */  .word  0x616C5F6F
/* 0A45CC 800A4A1C 626A0A00 */  .word  0x626A0A00

glabel jtbl_800A4A20
/* 0A45D0 800A4A20 80023808 */  .word  L80023808
/* 0A45D4 800A4A24 800238B8 */  .word  L800238B8
/* 0A45D8 800A4A28 800238B8 */  .word  L800238B8
/* 0A45DC 800A4A2C 800238B8 */  .word  L800238B8
/* 0A45E0 800A4A30 800238B8 */  .word  L800238B8
/* 0A45E4 800A4A34 80023D64 */  .word  L80023D64
/* 0A45E8 800A4A38 80023924 */  .word  L80023924
/* 0A45EC 800A4A3C 80023A40 */  .word  L80023A40

glabel D_800A4A40
/* 0A45F0 800A4A40 4056800000000000 */  .double  90.0

glabel D_800A4A48
/* 0A45F8 800A4A48 3DCCCCCD */  .float  0.10000000149011612
/* 0A45FC 800A4A4C 00000000 */  .float  0.0

glabel D_800A4A50
/* 0A4600 800A4A50 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A4A58
/* 0A4608 800A4A58 3F9EB851E0000000 */  .double  0.029999999329447746

glabel D_800A4A60
/* 0A4610 800A4A60 3F4CCCCD */  .float  0.800000011920929
/* 0A4614 800A4A64 00000000 */  .float  0.0

glabel D_800A4A68
/* 0A4618 800A4A68 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A4A70
/* 0A4620 800A4A70 3FE99999A0000000 */  .double  0.800000011920929

glabel D_800A4A78
/* 0A4628 800A4A78 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A4A80
/* 0A4630 800A4A80 3FE99999A0000000 */  .double  0.800000011920929

glabel D_800A4A88
/* 0A4638 800A4A88 4076800000000000 */  .double  360.0

glabel D_800A4A90
/* 0A4640 800A4A90 3FD3333340000000 */  .double  0.30000001192092896

glabel D_800A4A98
/* 0A4648 800A4A98 3FD99999A0000000 */  .double  0.4000000059604645

glabel D_800A4AA0
/* 0A4650 800A4AA0 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A4AA8
/* 0A4658 800A4AA8 BA83126F */  .float  -0.0010000000474974513

glabel D_800A4AAC
/* 0A465C 800A4AAC 3A83126F */  .float  0.0010000000474974513
/* 0A4660 800A4AB0 73626449 */  .float  1.7936601480790707e+31
/* 0A4664 800A4AB4 6E697428 */  .float  1.8062607894527003e+28
/* 0A4668 800A4AB8 25702C20 */  .float  2.0831631843240724e-16
/* 0A466C 800A4ABC 25642C20 */  .float  1.979079775765464e-16
/* 0A4670 800A4AC0 2564290A */  .float  1.9789752201360372e-16
/* 0A4674 800A4AC4 00000000 */  .float  0.0
/* 0A4678 800A4AC8 7362642D */  .float  1.7936567630867757e+31
/* 0A467C 800A4ACC 3E6C696E */  .float  0.23087093234062195
/* 0A4680 800A4AD0 653A2564 */  .float  5.494061881899282e+22
/* 0A4684 800A4AD4 0A000000 */  .float  6.162975822039155e-33
/* 0A4688 800A4AD8 76747849 */  .float  1.239609478799609e+33
/* 0A468C 800A4ADC 64783A25 */  .float  1.8315929141233228e+22
/* 0A4690 800A4AE0 64202076 */  .float  1.1815272435399975e+22
/* 0A4694 800A4AE4 74784D61 */  .float  7.869012766039321e+31
/* 0A4698 800A4AE8 783A2564 */  .float  1.5101962307172882e+34
/* 0A469C 800A4AEC 20207674 */  .float  1.3591720007467334e-19
/* 0A46A0 800A4AF0 784C6566 */  .float  1.6582580684119533e+34
/* 0A46A4 800A4AF4 743A2564 */  .float  5.899204026239407e+31
/* 0A46A8 800A4AF8 0A000000 */  .float  6.162975822039155e-33
/* 0A46AC 800A4AFC 4552524F */  .float  3365.144287109375
/* 0A46B0 800A4B00 523A2067 */  .float  199851884544.0
/* 0A46B4 800A4B04 7053697A */  .float  2.6171540164829702e+29
/* 0A46B8 800A4B08 65206F76 */  .float  4.735217054046384e+22
/* 0A46BC 800A4B0C 65723A25 */  .float  7.149282913385679e+22
/* 0A46C0 800A4B10 640A0000 */  .float  1.0182602728687672e+22
/* 0A46C4 800A4B14 64726177 */  .float  1.7884540591926476e+22
/* 0A46C8 800A4B18 4964783A */  .float  935811.625
/* 0A46CC 800A4B1C 25640A00 */  .float  1.9779235757924618e-16
/* 0A46D0 800A4B20 776F726B */  .float  4.856561020695426e+33
/* 0A46D4 800A4B24 4964783A */  .float  935811.625
/* 0A46D8 800A4B28 25640A00 */  .float  1.9779235757924618e-16
/* 0A46DC 800A4B2C 4552524F */  .float  3365.144287109375
/* 0A46E0 800A4B30 523A2067 */  .float  199851884544.0
/* 0A46E4 800A4B34 7053697A */  .float  2.6171540164829702e+29
/* 0A46E8 800A4B38 65206F76 */  .float  4.735217054046384e+22
/* 0A46EC 800A4B3C 65723A25 */  .float  7.149282913385679e+22
/* 0A46F0 800A4B40 640A0000 */  .float  1.0182602728687672e+22
/* 0A46F4 800A4B44 73626441 */  .float  1.793659180938415e+31
/* 0A46F8 800A4B48 70706C79 */  .float  2.976301510079425e+29
/* 0A46FC 800A4B4C 2825702C */  .float  9.183663351270896e-15
/* 0A4700 800A4B50 2025702C */  .float  1.4013158189805444e-19
/* 0A4704 800A4B54 20256429 */  .float  1.4009183845456068e-19
/* 0A4708 800A4B58 0A000000 */  .float  6.162975822039155e-33
/* 0A470C 800A4B5C 20417070 */  .float  1.638493833005757e-19
/* 0A4710 800A4B60 6C793A28 */  .float  1.2051886568392482e+27
/* 0A4714 800A4B64 2573290A */  .float  2.1090794808342978e-16
/* 0A4718 800A4B68 00000000 */  .float  0.0
/* 0A471C 800A4B6C 6E657754 */  .float  1.775408152510168e+28
/* 0A4720 800A4B70 65787449 */  .float  7.333074814178669e+22
/* 0A4724 800A4B74 64783A25 */  .float  1.8315929141233228e+22
/* 0A4728 800A4B78 640A0000 */  .float  1.0182602728687672e+22
/* 0A472C 800A4B7C 4572726F */  .float  3879.152099609375
/* 0A4730 800A4B80 723A2074 */  .float  3.6866204958406313e+30
/* 0A4734 800A4B84 65787444 */  .float  7.333072562378856e+22
/* 0A4738 800A4B88 6174615F */  .float  2.8175136754559982e+20
/* 0A473C 800A4B8C 6C696E65 */  .float  1.1288041576179028e+27
/* 0A4740 800A4B90 733A2564 */  .float  1.4748010065598518e+31
/* 0A4744 800A4B94 203C2025 */  .float  1.5934855141600688e-19
/* 0A4748 800A4B98 640A0000 */  .float  1.0182602728687672e+22
/* 0A474C 800A4B9C 73626453 */  .float  1.7936613570048903e+31
/* 0A4750 800A4BA0 63726F6C */  .float  4.472140858073406e+21
/* 0A4754 800A4BA4 6C426F61 */  .float  9.40230324076047e+26
/* 0A4758 800A4BA8 72644E65 */  .float  4.522070746381529e+30
/* 0A475C 800A4BAC 77282564 */  .float  3.4104072039274905e+33
/* 0A4760 800A4BB0 2C202564 */  .float  2.275812351071327e-12
/* 0A4764 800A4BB4 290A0000 */  .float  3.064215547965432e-14
/* 0A4768 800A4BB8 00000000 */  .float  0.0
/* 0A476C 800A4BBC 00000000 */  .float  0.0
/* 0A4770 800A4BC0 4552524F */  .float  3365.144287109375
/* 0A4774 800A4BC4 523A2055 */  .float  199851589632.0
/* 0A4778 800A4BC8 6E6B6E6F */  .float  1.8215620832713325e+28
/* 0A477C 800A4BCC 776E2073 */  .float  4.8297843776456835e+33
/* 0A4780 800A4BD0 74617475 */  .float  7.144951308467859e+31
/* 0A4784 800A4BD4 733A2564 */  .float  1.4748010065598518e+31
/* 0A4788 800A4BD8 0A000000 */  .float  6.162975822039155e-33
/* 0A478C 800A4BDC 73656E64 */  .float  1.8177413459428843e+31
/* 0A4790 800A4BE0 4D657373 */  .float  240596784.0
/* 0A4794 800A4BE4 656E6765 */  .float  7.036440721122284e+22
/* 0A4798 800A4BE8 72282564 */  .float  3.33047578508544e+30
/* 0A479C 800A4BEC 2C202825 */  .float  2.2759652235776473e-12
/* 0A47A0 800A4BF0 2E33662C */  .float  4.079063475881384e-11
/* 0A47A4 800A4BF4 20252E33 */  .float  1.3991329668921994e-19
/* 0A47A8 800A4BF8 662C2025 */  .float  2.0320999924872927e+23
/* 0A47AC 800A4BFC 2E336629 */  .float  4.079062435047298e-11
/* 0A47B0 800A4C00 2C202825 */  .float  2.2759652235776473e-12
/* 0A47B4 800A4C04 2E33662C */  .float  4.079063475881384e-11
/* 0A47B8 800A4C08 20252E33 */  .float  1.3991329668921994e-19
/* 0A47BC 800A4C0C 662C2025 */  .float  2.0320999924872927e+23
/* 0A47C0 800A4C10 2E336629 */  .float  4.079062435047298e-11
/* 0A47C4 800A4C14 2C20252E */  .float  2.275800641687864e-12
/* 0A47C8 800A4C18 33662C0A */  .float  5.359110133440481e-08
/* 0A47CC 800A4C1C 09092825 */  .float  1.650965101669602e-33
/* 0A47D0 800A4C20 642C2025 */  .float  1.270062495304558e+22
/* 0A47D4 800A4C24 642C2030 */  .float  1.2700637337944555e+22
/* 0A47D8 800A4C28 7825782C */  .float  1.3424474325778678e+34
/* 0A47DC 800A4C2C 2025642C */  .float  1.400918772286519e-19
/* 0A47E0 800A4C30 20256429 */  .float  1.4009183845456068e-19
/* 0A47E4 800A4C34 2C202564 */  .float  2.275812351071327e-12
/* 0A47E8 800A4C38 2C202564 */  .float  2.275812351071327e-12
/* 0A47EC 800A4C3C 290A0000 */  .float  3.064215547965432e-14

glabel D_800A4C40
/* 0A47F0 800A4C40 3ECCCCCD */  .float  0.4000000059604645

glabel D_800A4C44
/* 0A47F4 800A4C44 3F4CCCCD */  .float  0.800000011920929

glabel D_800A4C48
/* 0A47F8 800A4C48 3DCCCCCD */  .float  0.10000000149011612

glabel jtbl_800A4C4C
/* 0A47FC 800A4C4C 80026804 */  .word  L80026804
/* 0A4800 800A4C50 80026814 */  .word  L80026814
/* 0A4804 800A4C54 80026824 */  .word  L80026824
/* 0A4808 800A4C58 80026834 */  .word  L80026834
/* 0A480C 800A4C5C 80026844 */  .word  L80026844

glabel D_800A4C60
/* 0A4810 800A4C60 3EB33333 */  .float  0.3499999940395355

glabel D_800A4C64
/* 0A4814 800A4C64 3E99999A */  .float  0.30000001192092896

glabel D_800A4C68
/* 0A4818 800A4C68 3CF5C28F */  .float  0.029999999329447746

glabel D_800A4C6C
/* 0A481C 800A4C6C 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A4C70
/* 0A4820 800A4C70 3F333333 */  .float  0.699999988079071
/* 0A4824 800A4C74 3DCCCCCD */  .float  0.10000000149011612
/* 0A4828 800A4C78 00000000 */  .float  0.0
/* 0A482C 800A4C7C 00000000 */  .float  0.0

glabel _string_ActorType_ActorPikachu
/* 0A4830 800A4C80  */  .asciz  "actor type : ACTOR_PIKACHU\n"
                        .balign 4

glabel _string_ActorType_ActorPokemon
/* 0A484C 800A4C9C  */  .asciz  "actor type : ACTOR_POKEMON\n"
                        .balign 4

glabel D_800A4CB8
/* 0A4868 800A4CB8 3A83126F */  .float  0.0010000000474974513

glabel D_800A4CBC
/* 0A486C 800A4CBC BA83126F */  .float  -0.0010000000474974513

glabel _string_SetSprite
/* 0A4870 800A4CC0  */  .asciz  "_setSprite:(%s) idx:%d\n"
                        .balign 4
/* 0A4888 800A4CD8  */  .asciz  "_next: getIdx:%d setIdx:%d drawIdx:%d workIdx:%d\n"
                        .balign 4
/* 0A48BC 800A4D0C  */  .asciz  "elEchoMessage(%d, %f, %s)\n"
                        .balign 4
/* 0A48D8 800A4D28  */  .asciz  "setIdx:%d nextIdx:%d\n"
                        .balign 4
/* 0A48F0 800A4D40  */  .asciz  "drawIdx:%d\n"
                        .balign 4

glabel D_800A4D4C
/* 0A48FC 800A4D4C 3D4CCCCD */  .float  0.05000000074505806

glabel D_800A4D50
/* 0A4900 800A4D50 40333333 */  .float  2.799999952316284

glabel D_800A4D54
/* 0A4904 800A4D54 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A4D58
/* 0A4908 800A4D58 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A4D5C
/* 0A490C 800A4D5C 3F333333 */  .float  0.699999988079071

glabel D_800A4D60
/* 0A4910 800A4D60 43878000 */  .float  271.0
/* 0A4914 800A4D64 00000000 */  .float  0.0
/* 0A4918 800A4D68 00000000 */  .float  0.0
/* 0A491C 800A4D6C 00000000 */  .float  0.0

glabel D_800A4D70
/* 0A4920 800A4D70  */  .asciz  "You talked to ^6PIKACHU^^!\n\n^6PIKACHU^^ wants to do more\nfun things together.\n"
                        .balign 4

glabel D_800A4DC0
/* 0A4970 800A4DC0  */  .asciz  "You and ^6PIKACHU^^ are\nstarting to become friends!\n^6PIKACHU^^ is friends with\na lot of Pok´mon.\n"
                        .balign 4

glabel D_800A4E24
/* 0A49D4 800A4E24  */  .asciz  "You and ^6PIKACHU^^ are friends!\n\n^6PIKACHU^^ really enjoys\nfield trips."
                        .balign 4

glabel D_800A4E70
/* 0A4A20 800A4E70  */  .asciz  "You and ^6PIKACHU^^ have\nsomething in common!\n^6PIKACHU^^ loves having\npicnics."
                        .balign 4

glabel D_800A4EC0
/* 0A4A70 800A4EC0  */  .asciz  "You had great fun fishing\nwith ^6PIKACHU^^!\n\n^6PIKACHU^^ knows lots of ways\nto have fun."
                        .balign 4

glabel D_800A4F1C
/* 0A4ACC 800A4F1C  */  .asciz  "You and ^6PIKACHU^^ caught\na really big one!\n\n^6PIKACHU^^ loves to fish.\n"
                        .balign 4

glabel D_800A4F68
/* 0A4B18 800A4F68  */  .asciz  "You and ^6PIKACHU^^ caught\na whole lot of fish!\n\n^6PIKACHU^^ caught a big one,\nso it's in a good mood.\n"
                        .balign 4

glabel D_800A4FD0
/* 0A4B80 800A4FD0  */  .asciz  "You're getting along even\nbetter with ^6PIKACHU^^!\n\n^6PIKACHU^^ enjoys sprinkling\nwater on ^4ODDISH^^.\n"
                        .balign 4

glabel D_800A5038
/* 0A4BE8 800A5038  */  .asciz  "You went on a picnic\nwith ^6PIKACHU^^!\n\n^6PIKACHU^^ filled its tummy\nwith a very tasty meal!\n"
                        .balign 4

glabel D_800A5098
/* 0A4C48 800A5098  */  .asciz  "You and ^6PIKACHU^^ helped\nthe lost ^4POLIWAG^^\ntogether!\n^6PIKACHU^^ is happy because\n^4SQUIRTLE^^ thanked it.\n"
                        .balign 4

glabel D_800A510C
/* 0A4CBC 800A510C  */  .asciz  "You and ^6PIKACHU^^ traveled\nvery far together!\n\n^6PIKACHU^^ can't wait to\nopen more ^4treasure chest^^s.\n"
                        .balign 4

glabel D_800A5178
/* 0A4D28 800A5178  */  .asciz  "You and ^6PIKACHU^^ had fun at\nthe pi￣ata party!\n\n^6PIKACHU^^ feels sick from\neating too many treats.\n"
                        .balign 4

glabel D_800A51E0
/* 0A4D90 800A51E0  */  .asciz  "^6PIKACHU^^ understands your\nfeelings!\n^6PIKACHU^^ wants to talk\nwith you some more.\n"
                        .balign 4

glabel D_800A5238
/* 0A4DE8 800A5238  */  .asciz  "You and ^6PIKACHU^^ worked\nhard together!\n^6PIKACHU^^ has become quite\ngood at caring for\n^4CATERPIE^^.\n"
                        .balign 4

glabel D_800A52A4
/* 0A4E54 800A52A4  */  .asciz  "You and ^6PIKACHU^^ have\nbecome good friends!\n^6PIKACHU^^ is very happy that\nit found the legendary\n^4ODDISH^^.\n"
                        .balign 4

glabel D_800A5318
/* 0A4EC8 800A5318  */  .asciz  "Your friendship with\n^6PIKACHU^^ has grown!\n^6PIKACHU^^ is relieved that it\ncould help all of the lost\n^4POLIWAG^^.\n"
                        .balign 4

glabel D_800A5390
/* 0A4F40 800A5390  */  .asciz  "You had a great adventure\nwith ^6PIKACHU^^!\n^6PIKACHU^^'s ears are still\nringing from the cannon's\nblast.\n"
                        .balign 4

glabel D_800A53FC
/* 0A4FAC 800A53FC  */  .asciz  "You and ^6PIKACHU^^ are pals!\n\n^6PIKACHU^^ is very pleased\nthat it had the chance to\neat something special.\n"
                        .balign 4

glabel D_800A546C
/* 0A501C 800A546C  */  .asciz  "You strengthened your\nfriendship with ^6PIKACHU^^!\n\nIt looks like ^6PIKACHU^^'s mood\nhas improved.\n"
                        .balign 4

glabel D_800A54D0
/* 0A5080 800A54D0  */  .asciz  "You gazed at the stars\nwith ^6PIKACHU^^!\n\n^6PIKACHU^^ had no idea there\nwere so many stars in the sky.\n"
                        .balign 4
/* 0A50E8 800A5538  */  .asciz  "keeping item found, %s\n"
                        .balign 4
/* 0A5100 800A5550  */  .asciz  "Strange area. curAreaNum = %d\n"
                        .balign 4
/* 0A5120 800A5570  */  .asciz  "title image changed, to %d\n"
                        .balign 4

glabel D_800A558C
/* 0A513C 800A558C 25730000 */  .word  0x25730000

glabel D_800A5590
/* 0A5140 800A5590 2573203A */  .word  0x2573203A
/* 0A5144 800A5594 20405940 */  .word  0x20405940
/* 0A5148 800A5598 5A256400 */  .word  0x5A256400

glabel D_800A559C
/* 0A514C 800A559C 4059405A */  .word  0x4059405A
/* 0A5150 800A55A0 25640000 */  .word  0x25640000
/* 0A5154 800A55A4 76616C75 */  .word  0x76616C75
/* 0A5158 800A55A8 65203D20 */  .word  0x65203D20
/* 0A515C 800A55AC 25640A00 */  .word  0x25640A00
/* 0A5160 800A55B0 69656465 */  .word  0x69656465
/* 0A5164 800A55B4 54696D65 */  .word  0x54696D65
/* 0A5168 800A55B8 723A2564 */  .word  0x723A2564
/* 0A516C 800A55BC 206F7475 */  .word  0x206F7475
/* 0A5170 800A55C0 6B616954 */  .word  0x6B616954
/* 0A5174 800A55C4 696D6572 */  .word  0x696D6572
/* 0A5178 800A55C8 3A25640A */  .word  0x3A25640A
/* 0A517C 800A55CC 00000000 */  .word  0x00000000
/* 0A5180 800A55D0 67616D65 */  .word  0x67616D65
/* 0A5184 800A55D4 436C6561 */  .word  0x436C6561
/* 0A5188 800A55D8 723A2564 */  .word  0x723A2564
/* 0A518C 800A55DC 2074696D */  .word  0x2074696D
/* 0A5190 800A55E0 65723A25 */  .word  0x65723A25
/* 0A5194 800A55E4 6420723A */  .word  0x6420723A
/* 0A5198 800A55E8 25640A00 */  .word  0x25640A00
/* 0A519C 800A55EC 4552524F */  .word  0x4552524F
/* 0A51A0 800A55F0 523A2053 */  .word  0x523A2053
/* 0A51A4 800A55F4 7472616E */  .word  0x7472616E
/* 0A51A8 800A55F8 67652066 */  .word  0x67652066
/* 0A51AC 800A55FC 6C6F772E */  .word  0x6C6F772E
/* 0A51B0 800A5600 20636861 */  .word  0x20636861
/* 0A51B4 800A5604 70746572 */  .word  0x70746572
/* 0A51B8 800A5608 3A25640A */  .word  0x3A25640A
/* 0A51BC 800A560C 00000000 */  .word  0x00000000
/* 0A51C0 800A5610 4552524F */  .word  0x4552524F
/* 0A51C4 800A5614 523A2053 */  .word  0x523A2053
/* 0A51C8 800A5618 7472616E */  .word  0x7472616E
/* 0A51CC 800A561C 67652066 */  .word  0x67652066
/* 0A51D0 800A5620 6C6F772E */  .word  0x6C6F772E
/* 0A51D4 800A5624 20636861 */  .word  0x20636861
/* 0A51D8 800A5628 70746572 */  .word  0x70746572
/* 0A51DC 800A562C 3A25640A */  .word  0x3A25640A
/* 0A51E0 800A5630 00000000 */  .word  0x00000000
/* 0A51E4 800A5634 4552524F */  .word  0x4552524F
/* 0A51E8 800A5638 523A2053 */  .word  0x523A2053
/* 0A51EC 800A563C 7472616E */  .word  0x7472616E
/* 0A51F0 800A5640 67652066 */  .word  0x67652066
/* 0A51F4 800A5644 6C6F772E */  .word  0x6C6F772E
/* 0A51F8 800A5648 20636861 */  .word  0x20636861
/* 0A51FC 800A564C 70746572 */  .word  0x70746572
/* 0A5200 800A5650 3A25640A */  .word  0x3A25640A
/* 0A5204 800A5654 00000000 */  .word  0x00000000
/* 0A5208 800A5658 4552524F */  .word  0x4552524F
/* 0A520C 800A565C 523A2053 */  .word  0x523A2053
/* 0A5210 800A5660 7472616E */  .word  0x7472616E
/* 0A5214 800A5664 67652066 */  .word  0x67652066
/* 0A5218 800A5668 6C6F772E */  .word  0x6C6F772E
/* 0A521C 800A566C 20636861 */  .word  0x20636861
/* 0A5220 800A5670 70746572 */  .word  0x70746572
/* 0A5224 800A5674 3A25640A */  .word  0x3A25640A
/* 0A5228 800A5678 00000000 */  .word  0x00000000
/* 0A522C 800A567C 4552524F */  .word  0x4552524F
/* 0A5230 800A5680 523A2053 */  .word  0x523A2053
/* 0A5234 800A5684 7472616E */  .word  0x7472616E
/* 0A5238 800A5688 67652066 */  .word  0x67652066
/* 0A523C 800A568C 6C6F772E */  .word  0x6C6F772E
/* 0A5240 800A5690 20636861 */  .word  0x20636861
/* 0A5244 800A5694 70746572 */  .word  0x70746572
/* 0A5248 800A5698 3A25640A */  .word  0x3A25640A
/* 0A524C 800A569C 00000000 */  .word  0x00000000
/* 0A5250 800A56A0 4552524F */  .word  0x4552524F
/* 0A5254 800A56A4 523A2053 */  .word  0x523A2053
/* 0A5258 800A56A8 7472616E */  .word  0x7472616E
/* 0A525C 800A56AC 67652066 */  .word  0x67652066
/* 0A5260 800A56B0 6C6F772E */  .word  0x6C6F772E
/* 0A5264 800A56B4 20636861 */  .word  0x20636861
/* 0A5268 800A56B8 70746572 */  .word  0x70746572
/* 0A526C 800A56BC 3A25640A */  .word  0x3A25640A
/* 0A5270 800A56C0 00000000 */  .word  0x00000000
/* 0A5274 800A56C4 4552524F */  .word  0x4552524F
/* 0A5278 800A56C8 523A2053 */  .word  0x523A2053
/* 0A527C 800A56CC 7472616E */  .word  0x7472616E
/* 0A5280 800A56D0 67652066 */  .word  0x67652066
/* 0A5284 800A56D4 6C6F772E */  .word  0x6C6F772E
/* 0A5288 800A56D8 20636861 */  .word  0x20636861
/* 0A528C 800A56DC 70746572 */  .word  0x70746572
/* 0A5290 800A56E0 3A25640A */  .word  0x3A25640A
/* 0A5294 800A56E4 00000000 */  .word  0x00000000
/* 0A5298 800A56E8 4552524F */  .word  0x4552524F
/* 0A529C 800A56EC 52203A20 */  .word  0x52203A20
/* 0A52A0 800A56F0 756E6B6E */  .word  0x756E6B6E
/* 0A52A4 800A56F4 6F776E20 */  .word  0x6F776E20
/* 0A52A8 800A56F8 61726561 */  .word  0x61726561
/* 0A52AC 800A56FC 20282564 */  .word  0x20282564
/* 0A52B0 800A5700 29203F0A */  .word  0x29203F0A
/* 0A52B4 800A5704 00000000 */  .word  0x00000000
/* 0A52B8 800A5708 63686170 */  .word  0x63686170
/* 0A52BC 800A570C 74657247 */  .word  0x74657247
/* 0A52C0 800A5710 6F282564 */  .word  0x6F282564
/* 0A52C4 800A5714 290A0000 */  .word  0x290A0000

glabel D_800A5718
/* 0A52C8 800A5718 3F19999A */  .float  0.6000000238418579
/* 0A52CC 800A571C 00000000 */  .float  0.0

glabel D_800A5720
/* 0A52D0 800A5720 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A5728
/* 0A52D8 800A5728 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A5730
/* 0A52E0 800A5730 3F4CCCCD */  .float  0.800000011920929
/* 0A52E4 800A5734 00000000 */  .float  0.0

glabel D_800A5738
/* 0A52E8 800A5738 3FD3333333333333 */  .double  0.3

glabel jtbl_800A5740
/* 0A52F0 800A5740 80029D3C */  .word  L80029D3C
/* 0A52F4 800A5744 80029E1C */  .word  L80029E1C
/* 0A52F8 800A5748 80029E54 */  .word  L80029E54
/* 0A52FC 800A574C 80029F38 */  .word  L80029F38
/* 0A5300 800A5750 80029F94 */  .word  L80029F94
/* 0A5304 800A5754 80029FFC */  .word  L80029FFC
/* 0A5308 800A5758 8002A094 */  .word  L8002A094

glabel D_800A575C
/* 0A530C 800A575C 3F19999A */  .float  0.6000000238418579

glabel D_800A5760
/* 0A5310 800A5760 3FE33333 */  .word  0x3FE33333

glabel D_800A5764
/* 0A5314 800A5764 40000000 */  .word  0x40000000

glabel D_800A5768
/* 0A5318 800A5768 3FB99999 */  .word  0x3FB99999

glabel D_800A576C
/* 0A531C 800A576C A0000000 */  .word  0xA0000000

glabel D_800A5770
/* 0A5320 800A5770 3F4CCCCD */  .float  0.800000011920929
/* 0A5324 800A5774 00000000 */  .float  0.0

glabel D_800A5778
/* 0A5328 800A5778 3FB99999 */  .word  0x3FB99999

glabel D_800A577C
/* 0A532C 800A577C A0000000 */  .word  0xA0000000

glabel D_800A5780
/* 0A5330 800A5780 3F4CCCCD */  .float  0.800000011920929

glabel jtbl_800A5784
/* 0A5334 800A5784 8002A334 */  .word  L8002A334
/* 0A5338 800A5788 8002A348 */  .word  L8002A348
/* 0A533C 800A578C 8002A35C */  .word  L8002A35C
/* 0A5340 800A5790 8002A370 */  .word  L8002A370
/* 0A5344 800A5794 8002A384 */  .word  L8002A384
/* 0A5348 800A5798 8002A398 */  .word  L8002A398
/* 0A534C 800A579C 8002A3AC */  .word  L8002A3AC
/* 0A5350 800A57A0 8002A3C0 */  .word  L8002A3C0
/* 0A5354 800A57A4 8002A3E0 */  .word  L8002A3E0

glabel jtbl_800A57A8
/* 0A5358 800A57A8 8002A4A0 */  .word  L8002A4A0
/* 0A535C 800A57AC 8002A440 */  .word  L8002A440
/* 0A5360 800A57B0 8002A4C0 */  .word  L8002A4C0
/* 0A5364 800A57B4 8002A450 */  .word  L8002A450
/* 0A5368 800A57B8 8002A4D0 */  .word  L8002A4D0
/* 0A536C 800A57BC 8002A460 */  .word  L8002A460
/* 0A5370 800A57C0 8002A480 */  .word  L8002A480

glabel jtbl_800A57C4
/* 0A5374 800A57C4 8002AAA0 */  .word  L8002AAA0
/* 0A5378 800A57C8 8002AAB8 */  .word  L8002AAB8
/* 0A537C 800A57CC 8002AAD0 */  .word  L8002AAD0
/* 0A5380 800A57D0 8002AAE8 */  .word  L8002AAE8
/* 0A5384 800A57D4 8002AB00 */  .word  L8002AB00
/* 0A5388 800A57D8 8002AB18 */  .word  L8002AB18
/* 0A538C 800A57DC 8002AB30 */  .word  L8002AB30
/* 0A5390 800A57E0 8002AB30 */  .word  L8002AB30
/* 0A5394 800A57E4 8002AB30 */  .word  L8002AB30
/* 0A5398 800A57E8 8002AB48 */  .word  L8002AB48
/* 0A539C 800A57EC 8002AB48 */  .word  L8002AB48
/* 0A53A0 800A57F0 8002AB60 */  .word  L8002AB60
/* 0A53A4 800A57F4 8002AB60 */  .word  L8002AB60
/* 0A53A8 800A57F8 8002AB78 */  .word  L8002AB78
/* 0A53AC 800A57FC 8002AB90 */  .word  L8002AB90
/* 0A53B0 800A5800 8002ABA8 */  .word  L8002ABA8
/* 0A53B4 800A5804 8002ABC0 */  .word  L8002ABC0
/* 0A53B8 800A5808 8002ABD8 */  .word  L8002ABD8
/* 0A53BC 800A580C 8002ABD8 */  .word  L8002ABD8
/* 0A53C0 800A5810 8002ABD8 */  .word  L8002ABD8
/* 0A53C4 800A5814 8002ABF0 */  .word  L8002ABF0
/* 0A53C8 800A5818 8002AC08 */  .word  L8002AC08
/* 0A53CC 800A581C 8002AC20 */  .word  L8002AC20

glabel jtbl_800A5820
/* 0A53D0 800A5820 8002ADD8 */  .word  L8002ADD8
/* 0A53D4 800A5824 8002AF30 */  .word  L8002AF30
/* 0A53D8 800A5828 8002AE00 */  .word  L8002AE00
/* 0A53DC 800A582C 8002AF30 */  .word  L8002AF30
/* 0A53E0 800A5830 8002AE74 */  .word  L8002AE74
/* 0A53E4 800A5834 8002AEF8 */  .word  L8002AEF8
/* 0A53E8 800A5838 8002AF18 */  .word  L8002AF18
/* 0A53EC 800A583C 00000000 */  .word  0x00000000
/* 0A53F0 800A5840 6D657368 */  .word  0x6D657368
/* 0A53F4 800A5844 526F6F74 */  .word  0x526F6F74
/* 0A53F8 800A5848 496E6974 */  .word  0x496E6974
/* 0A53FC 800A584C 3A25700A */  .word  0x3A25700A
/* 0A5400 800A5850 00000000 */  .word  0x00000000
/* 0A5404 800A5854 4552524F */  .word  0x4552524F
/* 0A5408 800A5858 523A2055 */  .word  0x523A2055
/* 0A540C 800A585C 6E6B6E6F */  .word  0x6E6B6E6F
/* 0A5410 800A5860 776E206D */  .word  0x776E206D
/* 0A5414 800A5864 65736854 */  .word  0x65736854
/* 0A5418 800A5868 7970653A */  .word  0x7970653A
/* 0A541C 800A586C 25640A00 */  .word  0x25640A00
/* 0A5420 800A5870 6D657368 */  .word  0x6D657368
/* 0A5424 800A5874 4E756D3A */  .word  0x4E756D3A
/* 0A5428 800A5878 25640A00 */  .word  0x25640A00

glabel D_800A587C
/* 0A542C 800A587C 3DCCCCCD */  .float  0.10000000149011612
/* 0A5430 800A5880 70616765 */  .float  2.7903649411295087e+29
/* 0A5434 800A5884 20737461 */  .float  2.0621407168263549e-19
/* 0A5438 800A5888 636B206F */  .float  4.337321944053373e+21
/* 0A543C 800A588C 76657266 */  .float  1.1634338443084651e+33
/* 0A5440 800A5890 6C6F772E */  .float  1.157984324198341e+27
/* 0A5444 800A5894 0A000000 */  .float  6.162975822039155e-33
/* 0A5448 800A5898 70616765 */  .float  2.7903649411295087e+29
/* 0A544C 800A589C 20737461 */  .float  2.0621407168263549e-19
/* 0A5450 800A58A0 636B2065 */  .float  4.337319129303606e+21
/* 0A5454 800A58A4 78686175 */  .float  1.885296147822888e+34
/* 0A5458 800A58A8 73746564 */  .float  1.9363050532054416e+31
/* 0A545C 800A58AC 2E0A0000 */  .float  3.1377567211166024e-11
/* 0A5460 800A58B0 616C7068 */  .float  2.7259570783283e+20
/* 0A5464 800A58B4 613A2564 */  .float  2.146117922616907e+20
/* 0A5468 800A58B8 0A000000 */  .float  6.162975822039155e-33
/* 0A546C 800A58BC 6C696E65 */  .float  1.1288041576179028e+27
/* 0A5470 800A58C0 20256420 */  .float  1.4009172213228704e-19
/* 0A5474 800A58C4 6D657373 */  .float  4.438227299405577e+27
/* 0A5478 800A58C8 61676520 */  .float  2.667802940764995e+20
/* 0A547C 800A58CC 27257327 */  .float  2.2960774093524127e-15
/* 0A5480 800A58D0 0A000000 */  .float  6.162975822039155e-33

glabel D_800A58D4
/* 0A5484 800A58D4 50726573 */  .word  0x50726573
/* 0A5488 800A58D8 73207468 */  .word  0x73207468
/* 0A548C 800A58DC 65204049 */  .word  0x65204049
/* 0A5490 800A58E0 404A2042 */  .word  0x404A2042
/* 0A5494 800A58E4 7574746F */  .word  0x7574746F
/* 0A5498 800A58E8 6E2E0000 */  .word  0x6E2E0000

glabel jtbl_800A58EC
/* 0A549C 800A58EC 8002C550 */  .word  L8002C550
/* 0A54A0 800A58F0 8002C4F8 */  .word  L8002C4F8
/* 0A54A4 800A58F4 8002C528 */  .word  L8002C528
/* 0A54A8 800A58F8 8002C5E8 */  .word  L8002C5E8
/* 0A54AC 800A58FC 8002C690 */  .word  L8002C690

glabel jtbl_800A5900
/* 0A54B0 800A5900 8002C794 */  .word  L8002C794
/* 0A54B4 800A5904 8002C6D8 */  .word  L8002C6D8
/* 0A54B8 800A5908 8002C73C */  .word  L8002C73C
/* 0A54BC 800A590C 8002C7E0 */  .word  L8002C7E0
/* 0A54C0 800A5910 8002C81C */  .word  L8002C81C
/* 0A54C4 800A5914 00000000 */  .word  0x00000000
/* 0A54C8 800A5918 00000000 */  .word  0x00000000
/* 0A54CC 800A591C 00000000 */  .word  0x00000000
/* 0A54D0 800A5920 2D2D2D2D */  .word  0x2D2D2D2D
/* 0A54D4 800A5924 2D2D2D2D */  .word  0x2D2D2D2D
/* 0A54D8 800A5928 20636F6C */  .word  0x20636F6C
/* 0A54DC 800A592C 6C697369 */  .word  0x6C697369
/* 0A54E0 800A5930 6F6E5462 */  .word  0x6F6E5462
/* 0A54E4 800A5934 6C20496E */  .word  0x6C20496E
/* 0A54E8 800A5938 666F202D */  .word  0x666F202D
/* 0A54EC 800A593C 2D2D2D2D */  .word  0x2D2D2D2D
/* 0A54F0 800A5940 2D2D2D0A */  .word  0x2D2D2D0A
/* 0A54F4 800A5944 00000000 */  .word  0x00000000

glabel D_800A5948
/* 0A54F8 800A5948 3A83126F */  .float  0.0010000000474974513
/* 0A54FC 800A594C 00000000 */  .float  0.0

glabel D_800A5950
/* 0A5500 800A5950 3FF3333340000000 */  .double  1.2000000476837158

glabel D_800A5958
/* 0A5508 800A5958 3FF3333340000000 */  .double  1.2000000476837158

glabel D_800A5960
/* 0A5510 800A5960 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800A5968
/* 0A5518 800A5968 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800A5970
/* 0A5520 800A5970 3F50624DE0000000 */  .double  0.0010000000474974513

glabel D_800A5978
/* 0A5528 800A5978 3A83126F */  .float  0.0010000000474974513

glabel D_800A597C
/* 0A552C 800A597C 3A83126F */  .float  0.0010000000474974513

glabel D_800A5980
/* 0A5530 800A5980 3A83126F */  .float  0.0010000000474974513
/* 0A5534 800A5984 00000000 */  .float  0.0
/* 0A5538 800A5988 00000000 */  .float  0.0
/* 0A553C 800A598C 00000000 */  .float  0.0
/* 0A5540 800A5990 65787472 */  .float  7.3330932789371415e+22
/* 0A5544 800A5994 61637465 */  .float  2.6223737591331973e+20
/* 0A5548 800A5998 64202575 */  .float  1.1816712461380827e+22
/* 0A554C 800A599C 20627974 */  .float  1.918313007608078e-19
/* 0A5550 800A59A0 65732E0A */  .float  7.1774020383790925e+22
/* 0A5554 800A59A4 00000000 */  .float  0.0
/* 0A5558 800A59A8 72656C4F */  .float  4.544192275491747e+30
/* 0A555C 800A59AC 6673203D */  .float  2.870324366652297e+23
/* 0A5560 800A59B0 2025752C */  .float  1.401481255103055e-19
/* 0A5564 800A59B4 2072656C */  .float  2.053175500702958e-19
/* 0A5568 800A59B8 4E756D20 */  .float  1029392384.0
/* 0A556C 800A59BC 3D202575 */  .float  0.03909822180867195
/* 0A5570 800A59C0 0A000000 */  .float  6.162975822039155e-33
/* 0A5574 800A59C4 726F6D43 */  .float  4.7423364262524044e+30
/* 0A5578 800A59C8 6F707920 */  .float  7.442283349702364e+28
/* 0A557C 800A59CC 636F6D70 */  .float  4.4166576365641086e+21
/* 0A5580 800A59D0 6C657465 */  .float  1.1095746812996576e+27
/* 0A5584 800A59D4 2E0A0000 */  .float  3.1377567211166024e-11
/* 0A5588 800A59D8 00000000 */  .float  0.0
/* 0A558C 800A59DC 00000000 */  .float  0.0
/* 0A5590 800A59E0 766F6963 */  .float  1.2139613728381798e+33
/* 0A5594 800A59E4 65202564 */  .float  4.726677328432964e+22
/* 0A5598 800A59E8 0A000000 */  .float  6.162975822039155e-33
/* 0A559C 800A59EC 696E6465 */  .float  1.801240280235751e+25
/* 0A55A0 800A59F0 78203D20 */  .float  1.3000113432071807e+34
/* 0A55A4 800A59F4 25642C20 */  .float  1.979079775765464e-16
/* 0A55A8 800A59F8 6D617020 */  .float  4.360604876082933e+27
/* 0A55AC 800A59FC 3D202564 */  .float  0.03909815847873688
/* 0A55B0 800A5A00 0A000000 */  .float  6.162975822039155e-33
/* 0A55B4 800A5A04 72657374 */  .float  4.544745056822766e+30
/* 0A55B8 800A5A08 61727420 */  .float  2.7952998462158537e+20
/* 0A55BC 800A5A0C 736B6974 */  .float  1.8651254352278436e+31
/* 0A55C0 800A5A10 2E0A0000 */  .float  3.1377567211166024e-11
/* 0A55C4 800A5A14 496C6C65 */  .float  968390.3125
/* 0A55C8 800A5A18 67616C20 */  .float  1.06452701284864e+24
/* 0A55CC 800A5A1C 64696666 */  .float  1.7221879816855275e+22
/* 0A55D0 800A5A20 6963756C */  .float  1.7186291886211033e+25
/* 0A55D4 800A5A24 74793A25 */  .float  7.8983229307507135e+31
/* 0A55D8 800A5A28 640A0000 */  .float  1.0182602728687672e+22
/* 0A55DC 800A5A2C 77686F6C */  .float  4.7143467784673316e+33
/* 0A55E0 800A5A30 65206D61 */  .float  4.734977012186245e+22
/* 0A55E4 800A5A34 7020696E */  .float  1.9858023297115145e+29
/* 0A55E8 800A5A38 69746961 */  .float  1.8467221112552874e+25
/* 0A55EC 800A5A3C 6C697A65 */  .float  1.1290308312090806e+27
/* 0A55F0 800A5A40 642E0A00 */  .float  1.2841816179063365e+22
/* 0A55F4 800A5A44 77686F6C */  .float  4.7143467784673316e+33
/* 0A55F8 800A5A48 65206D61 */  .float  4.734977012186245e+22
/* 0A55FC 800A5A4C 70206361 */  .float  1.985509731884236e+29
/* 0A5600 800A5A50 6E63656C */  .float  1.759392718820164e+28
/* 0A5604 800A5A54 65642E0A */  .float  6.734680180610063e+22
/* 0A5608 800A5A58 00000000 */  .float  0.0
/* 0A560C 800A5A5C 77686F6C */  .float  4.7143467784673316e+33
/* 0A5610 800A5A60 65206D61 */  .float  4.734977012186245e+22
/* 0A5614 800A5A64 70206669 */  .float  1.9856563141398642e+29
/* 0A5618 800A5A68 6E697368 */  .float  1.8062381220935825e+28
/* 0A561C 800A5A6C 65642E0A */  .float  6.734680180610063e+22
/* 0A5620 800A5A70 00000000 */  .float  0.0

glabel D_800A5A74
/* 0A5624 800A5A74 BC23D70A */  .float  -0.009999999776482582

glabel D_800A5A78
/* 0A5628 800A5A78 3C23D70A */  .float  0.009999999776482582

glabel D_800A5A7C
/* 0A562C 800A5A7C 3F19999A */  .float  0.6000000238418579

glabel D_800A5A80
/* 0A5630 800A5A80 3FB99999 */  .word  0x3FB99999

glabel D_800A5A84
/* 0A5634 800A5A84 9999999A */  .word  0x9999999A

glabel jtbl_800A5A88
/* 0A5638 800A5A88 8002E568 */  .word  L8002E568
/* 0A563C 800A5A8C 8002E568 */  .word  L8002E568
/* 0A5640 800A5A90 8002E568 */  .word  L8002E568
/* 0A5644 800A5A94 8002E568 */  .word  L8002E568
/* 0A5648 800A5A98 8002E568 */  .word  L8002E568
/* 0A564C 800A5A9C 8002E568 */  .word  L8002E568
/* 0A5650 800A5AA0 8002E574 */  .word  L8002E574
/* 0A5654 800A5AA4 8002E574 */  .word  L8002E574
/* 0A5658 800A5AA8 8002E574 */  .word  L8002E574
/* 0A565C 800A5AAC 8002E594 */  .word  L8002E594
/* 0A5660 800A5AB0 8002E594 */  .word  L8002E594
/* 0A5664 800A5AB4 8002E584 */  .word  L8002E584
/* 0A5668 800A5AB8 8002E584 */  .word  L8002E584
/* 0A566C 800A5ABC 8002E5A4 */  .word  L8002E5A4
/* 0A5670 800A5AC0 8002E5A4 */  .word  L8002E5A4
/* 0A5674 800A5AC4 8002E5B4 */  .word  L8002E5B4
/* 0A5678 800A5AC8 8002E5A4 */  .word  L8002E5A4

glabel jtbl_800A5ACC
/* 0A567C 800A5ACC 8002E7BC */  .word  L8002E7BC
/* 0A5680 800A5AD0 8002E8DC */  .word  L8002E8DC
/* 0A5684 800A5AD4 8002E91C */  .word  L8002E91C
/* 0A5688 800A5AD8 8002E93C */  .word  L8002E93C
/* 0A568C 800A5ADC 8002E9D4 */  .word  L8002E9D4
/* 0A5690 800A5AE0 8002EAA8 */  .word  L8002EAA8

glabel D_800A5AE4
/* 0A5694 800A5AE4 3ECCCCCD */  .float  0.4000000059604645

glabel D_800A5AE8
/* 0A5698 800A5AE8 3FB999999999999A */  .double  0.1

glabel D_800A5AF0
/* 0A56A0 800A5AF0 3FB999999999999A */  .double  0.1

glabel D_800A5AF8
/* 0A56A8 800A5AF8 3FB999999999999A */  .double  0.1

glabel D_800A5B00
/* 0A56B0 800A5B00 3F19999A */  .float  0.6000000238418579
/* 0A56B4 800A5B04 00000000 */  .float  0.0

glabel D_800A5B08
/* 0A56B8 800A5B08 3FB999999999999A */  .double  0.1

glabel D_800A5B10
/* 0A56C0 800A5B10  */  .asciz  "\n"
                        .balign 4

glabel D_800A5B14
/* 0A56C4 800A5B14  */  .asciz  "\nPress @I@J to take it out."
                        .balign 4

glabel D_800A5B30
/* 0A56E0 800A5B30  */  .asciz  "\n(You can't take it out.)"
                        .balign 4

glabel D_800A5B4C
/* 0A56FC 800A5B4C  */  .asciz  "\nPress @I@J to take it out."
                        .balign 4

glabel D_800A5B68
/* 0A5718 800A5B68  */  .asciz  "\nPress @I@J to take it out."
                        .balign 4

glabel D_800A5B84
/* 0A5734 800A5B84  */  .asciz  "\nPress @I@J to open the menu."
                        .balign 4

glabel D_800A5BA4
/* 0A5754 800A5BA4  */  .asciz  "\n???"
                        .balign 4

glabel D_800A5BAC
/* 0A575C 800A5BAC  */  .asciz  "Press @I@J to store or remove an item."
                        .balign 4

glabel D_800A5BD4
/* 0A5784 800A5BD4  */  .asciz  "Press @K@L to read a description."
                        .balign 4

glabel D_800A5BF8
/* 0A57A8 800A5BF8  */  .asciz  "Press @U@V to close the tool box."
                        .balign 4

glabel D_800A5C1C
/* 0A57CC 800A5C1C  */  .asciz  "Tilt @k@l up to open the Collection."
                        .balign 4

glabel D_800A5C44
/* 0A57F4 800A5C44  */  .asciz  "Tilt @k@l down to open the Item Storage."
                        .balign 4

glabel D_800A5C70
/* 0A5820 800A5C70  */  .asciz  "Tilt @k@l left or right to choose an item."
                        .balign 4

glabel D_800A5C9C
/* 0A584C 800A5C9C  */  .asciz  "Collection"
                        .balign 4

glabel D_800A5CA8
/* 0A5858 800A5CA8  */  .asciz  "Item Storage"
                        .balign 4
/* 0A5868 800A5CB8  */  .asciz  "putItemBoxIntoContent(%p, %p(%s))\n"
                        .balign 4
/* 0A588C 800A5CDC  */  .asciz  "putItemIntoBox(%s)\n"
                        .balign 4
/* 0A58A0 800A5CF0  */  .asciz  "itembox full.\n"
                        .balign 4
/* 0A58B0 800A5D00  */  .asciz  "putBonusItemIntoBox(%s)\n"
                        .balign 4
/* 0A58CC 800A5D1C  */  .asciz  "putPurchaseItemIntoBox(%s)\n"
                        .balign 4
/* 0A58E8 800A5D38  */  .asciz  "keeping supply item, %s\n"
                        .balign 4

glabel D_800A5D54
/* 0A5904 800A5D54 20000000 */  .word  0x20000000

glabel D_800A5D58
/* 0A5908 800A5D58 596F7520 */  .word  0x596F7520
/* 0A590C 800A5D5C 63616E27 */  .word  0x63616E27
/* 0A5910 800A5D60 74207461 */  .word  0x74207461
/* 0A5914 800A5D64 6B65206F */  .word  0x6B65206F
/* 0A5918 800A5D68 75742074 */  .word  0x75742074
/* 0A591C 800A5D6C 6865205E */  .word  0x6865205E
/* 0A5920 800A5D70 3425735E */  .word  0x3425735E
/* 0A5924 800A5D74 5E2E0000 */  .word  0x5E2E0000

glabel D_800A5D78
/* 0A5928 800A5D78 50757420 */  .word  0x50757420
/* 0A592C 800A5D7C 74686520 */  .word  0x74686520
/* 0A5930 800A5D80 5E342573 */  .word  0x5E342573
/* 0A5934 800A5D84 5E5E2069 */  .word  0x5E5E2069
/* 0A5938 800A5D88 6E207468 */  .word  0x6E207468
/* 0A593C 800A5D8C 6520436F */  .word  0x6520436F
/* 0A5940 800A5D90 6C6C6563 */  .word  0x6C6C6563
/* 0A5944 800A5D94 74696F6E */  .word  0x74696F6E
/* 0A5948 800A5D98 2E000000 */  .word  0x2E000000
/* 0A594C 800A5D9C 50757420 */  .word  0x50757420
/* 0A5950 800A5DA0 74686520 */  .word  0x74686520
/* 0A5954 800A5DA4 5E342573 */  .word  0x5E342573
/* 0A5958 800A5DA8 5E5E2069 */  .word  0x5E5E2069
/* 0A595C 800A5DAC 6E207468 */  .word  0x6E207468
/* 0A5960 800A5DB0 65204974 */  .word  0x65204974
/* 0A5964 800A5DB4 656D2053 */  .word  0x656D2053
/* 0A5968 800A5DB8 746F7261 */  .word  0x746F7261
/* 0A596C 800A5DBC 67652E00 */  .word  0x67652E00

glabel D_800A5DC0
/* 0A5970 800A5DC0 596F7520 */  .word  0x596F7520
/* 0A5974 800A5DC4 616C7265 */  .word  0x616C7265
/* 0A5978 800A5DC8 61647920 */  .word  0x61647920
/* 0A597C 800A5DCC 68617665 */  .word  0x68617665
/* 0A5980 800A5DD0 20746865 */  .word  0x20746865
/* 0A5984 800A5DD4 205E3425 */  .word  0x205E3425
/* 0A5988 800A5DD8 735E5E2E */  .word  0x735E5E2E
/* 0A598C 800A5DDC 00000000 */  .word  0x00000000

glabel D_800A5DE0
/* 0A5990 800A5DE0 596F7520 */  .word  0x596F7520
/* 0A5994 800A5DE4 73746F72 */  .word  0x73746F72
/* 0A5998 800A5DE8 65642074 */  .word  0x65642074
/* 0A599C 800A5DEC 6865205E */  .word  0x6865205E
/* 0A59A0 800A5DF0 3425735E */  .word  0x3425735E
/* 0A59A4 800A5DF4 5E2E0000 */  .word  0x5E2E0000

glabel D_800A5DF8
/* 0A59A8 800A5DF8 496E7374 */  .word  0x496E7374
/* 0A59AC 800A5DFC 6561642C */  .word  0x6561642C
/* 0A59B0 800A5E00 20796F75 */  .word  0x20796F75
/* 0A59B4 800A5E04 20746F6F */  .word  0x20746F6F
/* 0A59B8 800A5E08 6B206F75 */  .word  0x6B206F75
/* 0A59BC 800A5E0C 74207468 */  .word  0x74207468
/* 0A59C0 800A5E10 65205E34 */  .word  0x65205E34
/* 0A59C4 800A5E14 25735E5E */  .word  0x25735E5E
/* 0A59C8 800A5E18 2E000000 */  .word  0x2E000000

glabel D_800A5E1C
/* 0A59CC 800A5E1C 596F7520 */  .word  0x596F7520
/* 0A59D0 800A5E20 746F6F6B */  .word  0x746F6F6B
/* 0A59D4 800A5E24 206F7574 */  .word  0x206F7574
/* 0A59D8 800A5E28 20746865 */  .word  0x20746865
/* 0A59DC 800A5E2C 205E3425 */  .word  0x205E3425
/* 0A59E0 800A5E30 735E5E2E */  .word  0x735E5E2E
/* 0A59E4 800A5E34 00000000 */  .word  0x00000000

glabel D_800A5E38
/* 0A59E8 800A5E38 596F7520 */  .word  0x596F7520
/* 0A59EC 800A5E3C 73746F72 */  .word  0x73746F72
/* 0A59F0 800A5E40 65642074 */  .word  0x65642074
/* 0A59F4 800A5E44 6865205E */  .word  0x6865205E
/* 0A59F8 800A5E48 3425735E */  .word  0x3425735E
/* 0A59FC 800A5E4C 5E2E0000 */  .word  0x5E2E0000

glabel D_800A5E50
/* 0A5A00 800A5E50 54686572 */  .word  0x54686572
/* 0A5A04 800A5E54 65206973 */  .word  0x65206973
/* 0A5A08 800A5E58 6E277420 */  .word  0x6E277420
/* 0A5A0C 800A5E5C 616E7974 */  .word  0x616E7974
/* 0A5A10 800A5E60 68696E67 */  .word  0x68696E67
/* 0A5A14 800A5E64 20746865 */  .word  0x20746865
/* 0A5A18 800A5E68 72652E00 */  .word  0x72652E00
/* 0A5A1C 800A5E6C 636F6E74 */  .word  0x636F6E74
/* 0A5A20 800A5E70 656E7473 */  .word  0x656E7473
/* 0A5A24 800A5E74 5B25645D */  .word  0x5B25645D
/* 0A5A28 800A5E78 5B25645D */  .word  0x5B25645D
/* 0A5A2C 800A5E7C 2E6F626A */  .word  0x2E6F626A
/* 0A5A30 800A5E80 4944203D */  .word  0x4944203D
/* 0A5A34 800A5E84 2025640A */  .word  0x2025640A
/* 0A5A38 800A5E88 00000000 */  .word  0x00000000
/* 0A5A3C 800A5E8C 4552524F */  .word  0x4552524F
/* 0A5A40 800A5E90 523A2043 */  .word  0x523A2043
/* 0A5A44 800A5E94 616E6E6F */  .word  0x616E6E6F
/* 0A5A48 800A5E98 74206368 */  .word  0x74206368
/* 0A5A4C 800A5E9C 616E6765 */  .word  0x616E6765
/* 0A5A50 800A5EA0 206D6F64 */  .word  0x206D6F64
/* 0A5A54 800A5EA4 6520746F */  .word  0x6520746F
/* 0A5A58 800A5EA8 2025640A */  .word  0x2025640A
/* 0A5A5C 800A5EAC 00000000 */  .word  0x00000000

glabel D_800A5EB0
/* 0A5A60 800A5EB0 596F7520 */  .word  0x596F7520
/* 0A5A64 800A5EB4 636C6F73 */  .word  0x636C6F73
/* 0A5A68 800A5EB8 65642074 */  .word  0x65642074
/* 0A5A6C 800A5EBC 68652074 */  .word  0x68652074
/* 0A5A70 800A5EC0 6F6F6C20 */  .word  0x6F6F6C20
/* 0A5A74 800A5EC4 626F782E */  .word  0x626F782E
/* 0A5A78 800A5EC8 00000000 */  .word  0x00000000
/* 0A5A7C 800A5ECC 6974656D */  .word  0x6974656D
/* 0A5A80 800A5ED0 626F7820 */  .word  0x626F7820
/* 0A5A84 800A5ED4 68656C70 */  .word  0x68656C70
/* 0A5A88 800A5ED8 206D6F64 */  .word  0x206D6F64
/* 0A5A8C 800A5EDC 652E0A00 */  .word  0x652E0A00

glabel D_800A5EE0
/* 0A5A90 800A5EE0 28546865 */  .word  0x28546865
/* 0A5A94 800A5EE4 72652069 */  .word  0x72652069
/* 0A5A98 800A5EE8 736E2774 */  .word  0x736E2774
/* 0A5A9C 800A5EEC 20616E79 */  .word  0x20616E79
/* 0A5AA0 800A5EF0 7468696E */  .word  0x7468696E
/* 0A5AA4 800A5EF4 67207468 */  .word  0x67207468
/* 0A5AA8 800A5EF8 6572652E */  .word  0x6572652E
/* 0A5AAC 800A5EFC 290A5768 */  .word  0x290A5768
/* 0A5AB0 800A5F00 656E2079 */  .word  0x656E2079
/* 0A5AB4 800A5F04 6F752073 */  .word  0x6F752073
/* 0A5AB8 800A5F08 65652061 */  .word  0x65652061
/* 0A5ABC 800A5F0C 6E206974 */  .word  0x6E206974
/* 0A5AC0 800A5F10 656D2C0A */  .word  0x656D2C0A
/* 0A5AC4 800A5F14 70726573 */  .word  0x70726573
/* 0A5AC8 800A5F18 7320404B */  .word  0x7320404B
/* 0A5ACC 800A5F1C 404C2074 */  .word  0x404C2074
/* 0A5AD0 800A5F20 6F207265 */  .word  0x6F207265
/* 0A5AD4 800A5F24 61642061 */  .word  0x61642061
/* 0A5AD8 800A5F28 0A646573 */  .word  0x0A646573
/* 0A5ADC 800A5F2C 63726970 */  .word  0x63726970
/* 0A5AE0 800A5F30 74696F6E */  .word  0x74696F6E
/* 0A5AE4 800A5F34 206F6620 */  .word  0x206F6620
/* 0A5AE8 800A5F38 69742E00 */  .word  0x69742E00

glabel D_800A5F3C
/* 0A5AEC 800A5F3C 2573252D */  .word  0x2573252D
/* 0A5AF0 800A5F40 3232735E */  .word  0x3232735E
/* 0A5AF4 800A5F44 5E25730A */  .word  0x5E25730A
/* 0A5AF8 800A5F48 00000000 */  .word  0x00000000

glabel D_800A5F4C
/* 0A5AFC 800A5F4C 5E5E0000 */  .word  0x5E5E0000

glabel D_800A5F50
/* 0A5B00 800A5F50 5E340000 */  .word  0x5E340000

glabel D_800A5F54
/* 0A5B04 800A5F54 3E99999A */  .float  0.30000001192092896

glabel D_800A5F58
/* 0A5B08 800A5F58 3E99999A */  .float  0.30000001192092896

glabel jtbl_800A5F5C
/* 0A5B0C 800A5F5C 80031F08 */  .word  L80031F08
/* 0A5B10 800A5F60 80031F18 */  .word  L80031F18
/* 0A5B14 800A5F64 80031F28 */  .word  L80031F28
/* 0A5B18 800A5F68 80031F38 */  .word  L80031F38
/* 0A5B1C 800A5F6C 80031F08 */  .word  L80031F08
/* 0A5B20 800A5F70 80031F28 */  .word  L80031F28
/* 0A5B24 800A5F74 00000000 */  .word  0x00000000
/* 0A5B28 800A5F78 00000000 */  .word  0x00000000
/* 0A5B2C 800A5F7C 00000000 */  .word  0x00000000
/* 0A5B30 800A5F80 696E7661 */  .word  0x696E7661
/* 0A5B34 800A5F84 6C696420 */  .word  0x6C696420
/* 0A5B38 800A5F88 61727261 */  .word  0x61727261
/* 0A5B3C 800A5F8C 79206F66 */  .word  0x79206F66
/* 0A5B40 800A5F90 20697465 */  .word  0x20697465
/* 0A5B44 800A5F94 6D467265 */  .word  0x6D467265
/* 0A5B48 800A5F98 71543A25 */  .word  0x71543A25
/* 0A5B4C 800A5F9C 64203E20 */  .word  0x64203E20
/* 0A5B50 800A5FA0 25640A00 */  .word  0x25640A00
/* 0A5B54 800A5FA4 00000000 */  .word  0x00000000
/* 0A5B58 800A5FA8 00000000 */  .word  0x00000000
/* 0A5B5C 800A5FAC 00000000 */  .word  0x00000000
/* 0A5B60 800A5FB0 205F6565 */  .word  0x205F6565
/* 0A5B64 800A5FB4 70726F6D */  .word  0x70726F6D
/* 0A5B68 800A5FB8 4964785B */  .word  0x4964785B
/* 0A5B6C 800A5FBC 25645D20 */  .word  0x25645D20
/* 0A5B70 800A5FC0 3D202564 */  .word  0x3D202564
/* 0A5B74 800A5FC4 0A000000 */  .word  0x0A000000
/* 0A5B78 800A5FC8 0A707265 */  .word  0x0A707265
/* 0A5B7C 800A5FCC 73657276 */  .word  0x73657276
/* 0A5B80 800A5FD0 65642064 */  .word  0x65642064
/* 0A5B84 800A5FD4 61746120 */  .word  0x61746120
/* 0A5B88 800A5FD8 20207369 */  .word  0x20207369
/* 0A5B8C 800A5FDC 7A653A20 */  .word  0x7A653A20
/* 0A5B90 800A5FE0 25640A00 */  .word  0x25640A00
/* 0A5B94 800A5FE4 556E6B6E */  .word  0x556E6B6E
/* 0A5B98 800A5FE8 6F776E20 */  .word  0x6F776E20
/* 0A5B9C 800A5FEC 74797065 */  .word  0x74797065
/* 0A5BA0 800A5FF0 3A25640A */  .word  0x3A25640A
/* 0A5BA4 800A5FF4 00000000 */  .word  0x00000000
/* 0A5BA8 800A5FF8 556E6B6E */  .word  0x556E6B6E
/* 0A5BAC 800A5FFC 6F776E20 */  .word  0x6F776E20
/* 0A5BB0 800A6000 74797065 */  .word  0x74797065
/* 0A5BB4 800A6004 3A25640A */  .word  0x3A25640A
/* 0A5BB8 800A6008 00000000 */  .word  0x00000000
/* 0A5BBC 800A600C 70645361 */  .word  0x70645361
/* 0A5BC0 800A6010 76654643 */  .word  0x76654643
/* 0A5BC4 800A6014 425F4545 */  .word  0x425F4545
/* 0A5BC8 800A6018 50524F4D */  .word  0x50524F4D
/* 0A5BCC 800A601C 3A206565 */  .word  0x3A206565
/* 0A5BD0 800A6020 70726F6D */  .word  0x70726F6D
/* 0A5BD4 800A6024 57726974 */  .word  0x57726974
/* 0A5BD8 800A6028 6520616E */  .word  0x6520616E
/* 0A5BDC 800A602C 733A2564 */  .word  0x733A2564
/* 0A5BE0 800A6030 0A000000 */  .word  0x0A000000
/* 0A5BE4 800A6034 70644C6F */  .word  0x70644C6F
/* 0A5BE8 800A6038 61644643 */  .word  0x61644643
/* 0A5BEC 800A603C 425F4545 */  .word  0x425F4545
/* 0A5BF0 800A6040 50524F4D */  .word  0x50524F4D
/* 0A5BF4 800A6044 3A206565 */  .word  0x3A206565
/* 0A5BF8 800A6048 70726F6D */  .word  0x70726F6D
/* 0A5BFC 800A604C 57726974 */  .word  0x57726974
/* 0A5C00 800A6050 6520616E */  .word  0x6520616E
/* 0A5C04 800A6054 733A2564 */  .word  0x733A2564
/* 0A5C08 800A6058 0A000000 */  .word  0x0A000000
/* 0A5C0C 800A605C 70645361 */  .word  0x70645361
/* 0A5C10 800A6060 76654545 */  .word  0x76654545
/* 0A5C14 800A6064 50524F4D */  .word  0x50524F4D
/* 0A5C18 800A6068 3A206565 */  .word  0x3A206565
/* 0A5C1C 800A606C 70726F6D */  .word  0x70726F6D
/* 0A5C20 800A6070 57726974 */  .word  0x57726974
/* 0A5C24 800A6074 6520616E */  .word  0x6520616E
/* 0A5C28 800A6078 733A2564 */  .word  0x733A2564
/* 0A5C2C 800A607C 0A000000 */  .word  0x0A000000
/* 0A5C30 800A6080 70644C6F */  .word  0x70644C6F
/* 0A5C34 800A6084 61644545 */  .word  0x61644545
/* 0A5C38 800A6088 50524F4D */  .word  0x50524F4D
/* 0A5C3C 800A608C 3A206565 */  .word  0x3A206565
/* 0A5C40 800A6090 70726F6D */  .word  0x70726F6D
/* 0A5C44 800A6094 52656164 */  .word  0x52656164
/* 0A5C48 800A6098 20616E73 */  .word  0x20616E73
/* 0A5C4C 800A609C 3A25640A */  .word  0x3A25640A
/* 0A5C50 800A60A0 00000000 */  .word  0x00000000

glabel jtbl_800A60A4
/* 0A5C54 800A60A4 80032864 */  .word  L80032864
/* 0A5C58 800A60A8 80032884 */  .word  L80032884
/* 0A5C5C 800A60AC 800328A4 */  .word  L800328A4
/* 0A5C60 800A60B0 800328C4 */  .word  L800328C4
/* 0A5C64 800A60B4 800328E4 */  .word  L800328E4
/* 0A5C68 800A60B8 80032904 */  .word  L80032904
/* 0A5C6C 800A60BC 80032904 */  .word  L80032904
/* 0A5C70 800A60C0 80032904 */  .word  L80032904

glabel jtbl_800A60C4
/* 0A5C74 800A60C4 800329E0 */  .word  L800329E0
/* 0A5C78 800A60C8 80032A08 */  .word  L80032A08
/* 0A5C7C 800A60CC 80032A30 */  .word  L80032A30
/* 0A5C80 800A60D0 80032A58 */  .word  L80032A58
/* 0A5C84 800A60D4 80032A80 */  .word  L80032A80
/* 0A5C88 800A60D8 80032AA8 */  .word  L80032AA8
/* 0A5C8C 800A60DC 80032AA8 */  .word  L80032AA8
/* 0A5C90 800A60E0 80032AA8 */  .word  L80032AA8
/* 0A5C94 800A60E4 00000000 */  .word  0x00000000
/* 0A5C98 800A60E8 00000000 */  .word  0x00000000
/* 0A5C9C 800A60EC 00000000 */  .word  0x00000000
/* 0A5CA0 800A60F0 616C6C6F */  .word  0x616C6C6F
/* 0A5CA4 800A60F4 63617465 */  .word  0x63617465
/* 0A5CA8 800A60F8 64202575 */  .word  0x64202575
/* 0A5CAC 800A60FC 20627974 */  .word  0x20627974
/* 0A5CB0 800A6100 65732066 */  .word  0x65732066
/* 0A5CB4 800A6104 6F722042 */  .word  0x6F722042
/* 0A5CB8 800A6108 470A0000 */  .word  0x470A0000
/* 0A5CBC 800A610C 73656753 */  .word  0x73656753
/* 0A5CC0 800A6110 74617274 */  .word  0x74617274
/* 0A5CC4 800A6114 3A202025 */  .word  0x3A202025
/* 0A5CC8 800A6118 700A7365 */  .word  0x700A7365
/* 0A5CCC 800A611C 67456E64 */  .word  0x67456E64
/* 0A5CD0 800A6120 3A202020 */  .word  0x3A202020
/* 0A5CD4 800A6124 2025700A */  .word  0x2025700A
/* 0A5CD8 800A6128 64617461 */  .word  0x64617461
/* 0A5CDC 800A612C 48656164 */  .word  0x48656164
/* 0A5CE0 800A6130 3A202025 */  .word  0x3A202025
/* 0A5CE4 800A6134 700A6461 */  .word  0x700A6461
/* 0A5CE8 800A6138 74615461 */  .word  0x74615461
/* 0A5CEC 800A613C 696C3A20 */  .word  0x696C3A20
/* 0A5CF0 800A6140 2025700A */  .word  0x2025700A
/* 0A5CF4 800A6144 64617461 */  .word  0x64617461
/* 0A5CF8 800A6148 5A69703A */  .word  0x5A69703A
/* 0A5CFC 800A614C 20202025 */  .word  0x20202025
/* 0A5D00 800A6150 700A6461 */  .word  0x700A6461
/* 0A5D04 800A6154 7461526F */  .word  0x7461526F
/* 0A5D08 800A6158 66733A20 */  .word  0x66733A20
/* 0A5D0C 800A615C 2025700A */  .word  0x2025700A
/* 0A5D10 800A6160 64617461 */  .word  0x64617461
/* 0A5D14 800A6164 526E756D */  .word  0x526E756D
/* 0A5D18 800A6168 3A202025 */  .word  0x3A202025
/* 0A5D1C 800A616C 700A0000 */  .word  0x700A0000
/* 0A5D20 800A6170 64617461 */  .word  0x64617461
/* 0A5D24 800A6174 53697A65 */  .word  0x53697A65
/* 0A5D28 800A6178 3A256420 */  .word  0x3A256420
/* 0A5D2C 800A617C 62675465 */  .word  0x62675465
/* 0A5D30 800A6180 78747572 */  .word  0x78747572
/* 0A5D34 800A6184 6553697A */  .word  0x6553697A
/* 0A5D38 800A6188 653A2564 */  .word  0x653A2564
/* 0A5D3C 800A618C 0A000000 */  .word  0x0A000000
/* 0A5D40 800A6190 25642062 */  .word  0x25642062
/* 0A5D44 800A6194 79746573 */  .word  0x79746573
/* 0A5D48 800A6198 20627566 */  .word  0x20627566
/* 0A5D4C 800A619C 66657220 */  .word  0x66657220
/* 0A5D50 800A61A0 6E656564 */  .word  0x6E656564
/* 0A5D54 800A61A4 65642066 */  .word  0x65642066
/* 0A5D58 800A61A8 6F72206D */  .word  0x6F72206D
/* 0A5D5C 800A61AC 656C7469 */  .word  0x656C7469
/* 0A5D60 800A61B0 6E672042 */  .word  0x6E672042
/* 0A5D64 800A61B4 472E0A00 */  .word  0x472E0A00
/* 0A5D68 800A61B8 636E743A */  .word  0x636E743A
/* 0A5D6C 800A61BC 25640A00 */  .word  0x25640A00

glabel D_800A61C0
/* 0A5D70 800A61C0 3A83126F */  .float  0.0010000000474974513

glabel D_800A61C4
/* 0A5D74 800A61C4 3C98EAD6 */  .float  0.018666666001081467

glabel D_800A61C8
/* 0A5D78 800A61C8 40B60B61 */  .float  5.688889026641846
/* 0A5D7C 800A61CC 00000000 */  .float  0.0
/* 0A5D80 800A61D0 556E6B6E */  .float  16384073400320.0
/* 0A5D84 800A61D4 6F776E20 */  .float  7.657593038175729e+28
/* 0A5D88 800A61D8 73706561 */  .float  1.90461342552199e+31
/* 0A5D8C 800A61DC 6B657254 */  .float  2.773839119972994e+26
/* 0A5D90 800A61E0 79706520 */  .float  7.801264404497049e+34
/* 0A5D94 800A61E4 25640A00 */  .float  1.9779235757924618e-16

glabel D_800A61E8
/* 0A5D98 800A61E8 3F19999A */  .float  0.6000000238418579
/* 0A5D9C 800A61EC 00000000 */  .float  0.0

glabel D_800A61F0
/* 0A5DA0 800A61F0  */  .asciz  " "
                        .balign 4

glabel D_800A61F4
/* 0A5DA4 800A61F4  */  .asciz  "^cSaved data has been lost.^^"
                        .balign 4

glabel D_800A6214
/* 0A5DC4 800A6214  */  .asciz  " "
                        .balign 4

glabel D_800A6218
/* 0A5DC8 800A6218  */  .asciz  " "
                        .balign 4

glabel D_800A621C
/* 0A5DCC 800A621C  */  .asciz  "Press @U@V to return to the"
                        .balign 4

glabel D_800A6238
/* 0A5DE8 800A6238  */  .asciz  "Title Screen."
                        .balign 4

glabel D_800A6248
/* 0A5DF8 800A6248  */  .asciz  " "
                        .balign 4

glabel D_800A624C
/* 0A5DFC 800A624C  */  .asciz  "^cNo controller is connected.^^"
                        .balign 4

glabel D_800A626C
/* 0A5E1C 800A626C  */  .asciz  " "
                        .balign 4

glabel D_800A6270
/* 0A5E20 800A6270  */  .asciz  "Please turn your N64 Control"
                        .balign 4

glabel D_800A6290
/* 0A5E40 800A6290  */  .asciz  "Deck OFF and insert a controller"
                        .balign 4

glabel D_800A62B4
/* 0A5E64 800A62B4  */  .asciz  "in the Player One controller socket."
                        .balign 4

glabel D_800A62DC
/* 0A5E8C 800A62DC  */  .asciz  "The microphone is not connected."
                        .balign 4

glabel D_800A6300
/* 0A5EB0 800A6300  */  .asciz  " "
                        .balign 4

glabel D_800A6304
/* 0A5EB4 800A6304  */  .asciz  "Please turn the power OFF and"
                        .balign 4

glabel D_800A6324
/* 0A5ED4 800A6324  */  .asciz  "confirm that the VRU is"
                        .balign 4

glabel D_800A633C
/* 0A5EEC 800A633C  */  .asciz  "inserted in the Player Four"
                        .balign 4

glabel D_800A6358
/* 0A5F08 800A6358  */  .asciz  "controller socket."
                        .balign 4

glabel D_800A636C
/* 0A5F1C 800A636C  */  .asciz  "Press @U@V to continue."
                        .balign 4

glabel D_800A6384
/* 0A5F34 800A6384  */  .asciz  "Game data is already saved."
                        .balign 4

glabel D_800A63A0
/* 0A5F50 800A63A0  */  .asciz  "If you start a new game, your"
                        .balign 4

glabel D_800A63C0
/* 0A5F70 800A63C0  */  .asciz  "previously saved data will be lost."
                        .balign 4

glabel D_800A63E4
/* 0A5F94 800A63E4  */  .asciz  "Is this OK?"
                        .balign 4

glabel D_800A63F0
/* 0A5FA0 800A63F0  */  .asciz  "@e"
                        .balign 4

glabel D_800A63F4
/* 0A5FA4 800A63F4  */  .asciz  "@f"
                        .balign 4

glabel D_800A63F8
/* 0A5FA8 800A63F8  */  .asciz  "@g"
                        .balign 4

glabel D_800A63FC
/* 0A5FAC 800A63FC  */  .asciz  "@h"
                        .balign 4

glabel D_800A6400
/* 0A5FB0 800A6400  */  .asciz  "New Game"
                        .balign 4

glabel D_800A640C
/* 0A5FBC 800A640C  */  .asciz  "Continue"
                        .balign 4

glabel D_800A6418
/* 0A5FC8 800A6418  */  .asciz  "New Game: File 1"
                        .balign 4

glabel D_800A642C
/* 0A5FDC 800A642C  */  .asciz  "New Game: File 2"
                        .balign 4

glabel D_800A6440
/* 0A5FF0 800A6440  */  .asciz  "Continue: File 1"
                        .balign 4

glabel D_800A6454
/* 0A6004 800A6454  */  .asciz  "Continue: File 2"
                        .balign 4

glabel D_800A6468
/* 0A6018 800A6468  */  .asciz  "I Quit"
                        .balign 4

glabel D_800A6470
/* 0A6020 800A6470  */  .asciz  "Begin"
                        .balign 4
/* 0A6028 800A6478  */  .asciz  "ERROR: Invalid titleStat:%d\n"
                        .balign 4
/* 0A6048 800A6498  */  .asciz  "_setVolume(%f) vol:%d\n"
                        .balign 4
/* 0A6060 800A64B0  */  .asciz  "Invalid loadSelNum:%d\n"
                        .balign 4
/* 0A6078 800A64C8  */  .asciz  "Invalid loadSelNum:%d\n"
                        .balign 4
/* 0A6090 800A64E0  */  .asciz  "pdFCB:%x\n"
                        .balign 4
/* 0A609C 800A64EC  */  .asciz  "eepromGetState:%d\n"
                        .balign 4
/* 0A60B0 800A6500  */  .asciz  "fileSelAttr:%x\n"
                        .balign 4
/* 0A60C0 800A6510  */  .asciz  "eepromState:%d\n"
                        .balign 4

glabel D_800A6520
/* 0A60D0 800A6520 3B449BA6 */  .float  0.003000000026077032

glabel jtbl_800A6524
/* 0A60D4 800A6524 80035190 */  .word  L80035190
/* 0A60D8 800A6528 80035190 */  .word  L80035190
/* 0A60DC 800A652C 80035190 */  .word  L80035190
/* 0A60E0 800A6530 80034FA4 */  .word  L80034FA4
/* 0A60E4 800A6534 80034FA4 */  .word  L80034FA4
/* 0A60E8 800A6538 80034FBC */  .word  L80034FBC
/* 0A60EC 800A653C 80034FD4 */  .word  L80034FD4
/* 0A60F0 800A6540 80034FBC */  .word  L80034FBC
/* 0A60F4 800A6544 80034FD4 */  .word  L80034FD4
/* 0A60F8 800A6548 80034FD4 */  .word  L80034FD4
/* 0A60FC 800A654C 80034FE4 */  .word  L80034FE4
/* 0A6100 800A6550 80034FE4 */  .word  L80034FE4
/* 0A6104 800A6554 80034FF4 */  .word  L80034FF4
/* 0A6108 800A6558 8003504C */  .word  L8003504C
/* 0A610C 800A655C 800350B8 */  .word  L800350B8
/* 0A6110 800A6560 80035138 */  .word  L80035138
/* 0A6114 800A6564 80034FF4 */  .word  L80034FF4
/* 0A6118 800A6568 80035024 */  .word  L80035024
/* 0A611C 800A656C 80035180 */  .word  L80035180

glabel D_800A6570
/* 0A6120 800A6570 3FB99999 */  .word  0x3FB99999

glabel D_800A6574
/* 0A6124 800A6574 A0000000 */  .word  0xA0000000

glabel D_800A6578
/* 0A6128 800A6578 46FFFE00 */  .float  32767.0

glabel jtbl_800A657C
/* 0A612C 800A657C 800357F4 */  .word  L800357F4
/* 0A6130 800A6580 8003580C */  .word  L8003580C
/* 0A6134 800A6584 8003596C */  .word  L8003596C
/* 0A6138 800A6588 80036318 */  .word  L80036318
/* 0A613C 800A658C 80035928 */  .word  L80035928
/* 0A6140 800A6590 80035A4C */  .word  L80035A4C
/* 0A6144 800A6594 80035AE8 */  .word  L80035AE8
/* 0A6148 800A6598 800359CC */  .word  L800359CC
/* 0A614C 800A659C 80035B74 */  .word  L80035B74
/* 0A6150 800A65A0 80035BF0 */  .word  L80035BF0
/* 0A6154 800A65A4 80035C58 */  .word  L80035C58
/* 0A6158 800A65A8 80035CF8 */  .word  L80035CF8
/* 0A615C 800A65AC 80035D70 */  .word  L80035D70
/* 0A6160 800A65B0 80035ED8 */  .word  L80035ED8
/* 0A6164 800A65B4 8003607C */  .word  L8003607C
/* 0A6168 800A65B8 800360D4 */  .word  L800360D4
/* 0A616C 800A65BC 80035E3C */  .word  L80035E3C
/* 0A6170 800A65C0 80036168 */  .word  L80036168
/* 0A6174 800A65C4 800362D8 */  .word  L800362D8

glabel D_800A65C8
/* 0A6178 800A65C8 3ECCCCCD */  .float  0.4000000059604645
/* 0A617C 800A65CC 00000000 */  .float  0.0

glabel D_800A65D0
/* 0A6180 800A65D0 3FB99999 */  .word  0x3FB99999

glabel D_800A65D4
/* 0A6184 800A65D4 A0000000 */  .word  0xA0000000

glabel D_800A65D8
/* 0A6188 800A65D8 3FB99999 */  .word  0x3FB99999

glabel D_800A65DC
/* 0A618C 800A65DC A0000000 */  .word  0xA0000000

glabel D_800A65E0
/* 0A6190 800A65E0 3E2E147B */  .float  0.17000000178813934

glabel D_800A65E4
/* 0A6194 800A65E4 3E99999A */  .float  0.30000001192092896
/* 0A6198 800A65E8 00000000 */  .float  0.0
/* 0A619C 800A65EC 00000000 */  .float  0.0
/* 0A61A0 800A65F0 496E7661 */  .float  976742.0625
/* 0A61A4 800A65F4 6C696420 */  .float  1.1286101716572237e+27
/* 0A61A8 800A65F8 65796543 */  .float  7.360857520279918e+22
/* 0A61AC 800A65FC 61746368 */  .float  2.8176053307452896e+20
/* 0A61B0 800A6600 20746162 */  .float  2.0699825182803283e-19
/* 0A61B4 800A6604 6C652E0A */  .float  1.1082457040696113e+27
/* 0A61B8 800A6608 5F657965 */  .float  1.6535358557541892e+19
/* 0A61BC 800A660C 43617463 */  .float  225.4546356201172
/* 0A61C0 800A6610 6854626C */  .float  4.0118290300309777e+24
/* 0A61C4 800A6614 5B25645D */  .float  4.655372175199437e+16
/* 0A61C8 800A6618 2E636174 */  .float  5.1700380088171016e-11
/* 0A61CC 800A661C 6368203D */  .float  4.281967638083409e+21
/* 0A61D0 800A6620 2025640A */  .float  1.4009143778895148e-19
/* 0A61D4 800A6624 00000000 */  .float  0.0
/* 0A61D8 800A6628 6563496E */  .float  6.70832331415084e+22
/* 0A61DC 800A662C 69742825 */  .float  1.844796732342594e+25
/* 0A61E0 800A6630 64290A00 */  .float  1.2472881297589174e+22
/* 0A61E4 800A6634 63686970 */  .float  4.28724219767199e+21
/* 0A61E8 800A6638 3A25642F */  .float  0.0006309179007075727
/* 0A61EC 800A663C 25640A00 */  .float  1.9779235757924618e-16

glabel D_800A6640
/* 0A61F0 800A6640 3DCCCCCD */  .float  0.10000000149011612

glabel D_800A6644
/* 0A61F4 800A6644 3F99999A */  .float  1.2000000476837158

glabel D_800A6648
/* 0A61F8 800A6648 3FB99999A0000000 */  .double  0.10000000149011612

glabel D_800A6650
/* 0A6200 800A6650 407147AE */  .float  3.7699999809265137

glabel D_800A6654
/* 0A6204 800A6654 3F4CCCCD */  .float  0.800000011920929

glabel D_800A6658
/* 0A6208 800A6658 3FE99999 */  .word  0x3FE99999

glabel D_800A665C
/* 0A620C 800A665C A0000000 */  .word  0xA0000000

glabel D_800A6660
/* 0A6210 800A6660  */  .asciz  "alloc dmaMessageBufp:%p size:%d\n"
                        .balign 4
/* 0A6234 800A6684  */  .asciz  "alloc dmaIoMesgFifo:%p size:%d\n"
                        .balign 4
/* 0A6254 800A66A4  */  .asciz  "free dmaIoMesgFifo:%p\n"
                        .balign 4
/* 0A626C 800A66BC  */  .asciz  "free dmaMessageBufp:%p\n"
                        .balign 4
/* 0A6284 800A66D4  */  .asciz  ""
                        .balign 4
/* 0A6288 800A66D8  */  .asciz  ""
                        .balign 4
/* 0A628C 800A66DC  */  .asciz  ""
                        .balign 4
/* 0A6290 800A66E0  */  .asciz  "heapRegion:%p heapHead:%p\nheapSize:0x%x align_mask:0x%x sizeof(heapHeaderT):%d\n"
                        .balign 4
/* 0A62E0 800A6730  */  .asciz  "hp:%p memp:%p\n"
                        .balign 4
/* 0A62F0 800A6740  */  .asciz  "prev:%p next:%p size:%d\n"
                        .balign 4
/* 0A630C 800A675C  */  .asciz  "owner:%d checker:0x%x useFlag:%d\n"
                        .balign 4
/* 0A6330 800A6780  */  .asciz  "regionSize:%d heapRegion:%p heapEntry:%p\n\n"
                        .balign 4
/* 0A635C 800A67AC  */  .asciz  "----------------\nHeap_Display_All(\n"
                        .balign 4
/* 0A6380 800A67D0  */  .asciz  "regionSize:%d heapRegion:%p heapEntry:%p\n\n"
                        .balign 4
/* 0A63AC 800A67FC  */  .asciz  "heap:%p owner:%d size:%d checker:0x%x useFlag:%d\n"
                        .balign 4
/* 0A63E0 800A6830  */  .asciz  "prev:%p next:%p\n"
                        .balign 4
/* 0A63F4 800A6844  */  .asciz  ")----------------\n"
                        .balign 4
/* 0A6408 800A6858  */  .asciz  "  curr owner thread: %d\n  prev owner thread: %d\n  next owner thread: %d\n"
                        .balign 4
/* 0A6454 800A68A4  */  .asciz  "heapCheckLocal(%p, %s, %p, %d)\n"
                        .balign 4
/* 0A6474 800A68C4  */  .asciz  "%s: Error: Strange boundary of memory.(%p)\n"
                        .balign 4
/* 0A64A0 800A68F0  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4
/* 0A64C8 800A6918  */  .asciz  "%s: Error: Heap is %sused at %p\n"
                        .balign 4
/* 0A64EC 800A693C  */  .asciz  ""
                        .balign 4
/* 0A64F0 800A6940  */  .asciz  "un"
                        .balign 4

glabel D_800A6944
/* 0A64F4 800A6944  */  .asciz  "_divide"
                        .balign 4
/* 0A64FC 800A694C  */  .asciz  "_divide(%p,%d)\n"
                        .balign 4
/* 0A650C 800A695C  */  .asciz  "_divide: not divide %p(%d/%d)\n"
                        .balign 4
/* 0A652C 800A697C  */  .asciz  "hp:%p prev:%p next:%p size:%d\ndp:%p prev:%p next:%p size:%d\n\n"
                        .balign 4

glabel D_800A69BC
/* 0A656C 800A69BC  */  .asciz  "heapAllocLocal"
                        .balign 4
/* 0A657C 800A69CC  */  .asciz  "heapAllocLocal(%p, %d, %d)\n"
                        .balign 4
/* 0A6598 800A69E8  */  .asciz  "heapAllocLocal: Warning: Not enough memory.\n"
                        .balign 4
/* 0A65C8 800A6A18  */  .asciz  "hp:%p owner:%d\n"
                        .balign 4
/* 0A65D8 800A6A28  */  .asciz  "heapAllocLocal: %p\n"
                        .balign 4

glabel D_800A6A3C
/* 0A65EC 800A6A3C  */  .asciz  "heapAllocLocal"
                        .balign 4
/* 0A65FC 800A6A4C  */  .asciz  "heapAllocTail(%d,%d)\n"
                        .balign 4
/* 0A6614 800A6A64  */  .asciz  "heapAllocTailLocal: Warning: Not enough memory.\n"
                        .balign 4
/* 0A6648 800A6A98  */  .asciz  "hp:%p owner:%d\n"
                        .balign 4

glabel D_800A6AA8
/* 0A6658 800A6AA8  */  .asciz  "heapPrevCombine"
                        .balign 4
/* 0A6668 800A6AB8  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4

glabel D_800A6AE0
/* 0A6690 800A6AE0  */  .asciz  "heapNextCombine"
                        .balign 4
/* 0A66A0 800A6AF0  */  .asciz  "%s: Error: Heap chain is broken at %p\n"
                        .balign 4

glabel D_800A6B18
/* 0A66C8 800A6B18  */  .asciz  "heapShrinkLocal"
                        .balign 4
/* 0A66D8 800A6B28  */  .asciz  "%s: warning: tried to shrink NULL\n"
                        .balign 4

glabel D_800A6B4C
/* 0A66FC 800A6B4C  */  .asciz  "heapCheckSize"
                        .balign 4
/* 0A670C 800A6B5C  */  .asciz  "%s: warning: tried to check NULL\n"
                        .balign 4

glabel D_800A6B80
/* 0A6730 800A6B80  */  .asciz  "heapFreeLocal"
                        .balign 4
/* 0A6740 800A6B90  */  .asciz  "heapFreeLocal(%p, %p)\n"
                        .balign 4
/* 0A6758 800A6BA8  */  .asciz  "%s: warning: tried to free NULL\n"
                        .balign 4
/* 0A677C 800A6BCC  */  .asciz  "free: hp:%p prev:%p next:%p size:%d owner:%d\n"
                        .balign 4

glabel D_800A6BFC
/* 0A67AC 800A6BFC  */  .asciz  "heapGetSize"
                        .balign 4
/* 0A67B8 800A6C08  */  .asciz  "heapRegion:%p "
                        .balign 4
/* 0A67C8 800A6C18  */  .asciz  "globalHeap "
                        .balign 4
/* 0A67D4 800A6C24  */  .asciz  "%s total 0x%x  max 0x%x\n"
                        .balign 4

glabel D_800A6C40
/* 0A67F0 800A6C40  */  .asciz  "setHeapEntryNext"
                        .balign 4
/* 0A6804 800A6C54  */  .asciz  "%s: warning: tried to set entry to NULL\n"
                        .balign 4

glabel D_800A6C80
/* 0A6830 800A6C80  */  .asciz  "setHeapEntryMax"
                        .balign 4
/* 0A6840 800A6C90  */  .asciz  "use:%d sz:%d (%d-%d)\n"
                        .balign 4
/* 0A6858 800A6CA8  */  .asciz  "use:%d size:%d\n"
                        .balign 4
/* 0A6868 800A6CB8  */  .asciz  ""
                        .balign 4
/* 0A686C 800A6CBC  */  .asciz  ""
                        .balign 4

glabel D_800A6CC0
/* 0A6870 800A6CC0 3F800000 */  .float  1.0
/* 0A6874 800A6CC4 00000000 */  .float  0.0
/* 0A6878 800A6CC8 00000000 */  .float  0.0
/* 0A687C 800A6CCC 00000000 */  .float  0.0
/* 0A6880 800A6CD0 00000000 */  .float  0.0
/* 0A6884 800A6CD4 3F800000 */  .float  1.0
/* 0A6888 800A6CD8 00000000 */  .float  0.0
/* 0A688C 800A6CDC 00000000 */  .float  0.0
/* 0A6890 800A6CE0 00000000 */  .float  0.0
/* 0A6894 800A6CE4 00000000 */  .float  0.0
/* 0A6898 800A6CE8 3F800000 */  .float  1.0
/* 0A689C 800A6CEC 00000000 */  .float  0.0
/* 0A68A0 800A6CF0 00000000 */  .float  0.0
/* 0A68A4 800A6CF4 00000000 */  .float  0.0
/* 0A68A8 800A6CF8 00000000 */  .float  0.0
/* 0A68AC 800A6CFC 3F800000 */  .float  1.0

glabel D_800A6D00
/* 0A68B0 800A6D00 3F800000 */  .float  1.0
/* 0A68B4 800A6D04 00000000 */  .float  0.0
/* 0A68B8 800A6D08 00000000 */  .float  0.0
/* 0A68BC 800A6D0C 00000000 */  .float  0.0
/* 0A68C0 800A6D10 3F800000 */  .float  1.0
/* 0A68C4 800A6D14 00000000 */  .float  0.0
/* 0A68C8 800A6D18 00000000 */  .float  0.0
/* 0A68CC 800A6D1C 00000000 */  .float  0.0
/* 0A68D0 800A6D20 3F800000 */  .float  1.0
/* 0A68D4 800A6D24 00000000 */  .float  0.0
/* 0A68D8 800A6D28 00000000 */  .float  0.0
/* 0A68DC 800A6D2C 00000000 */  .float  0.0
/* 0A68E0 800A6D30 00000001 */  .float  1.401298464324817e-45
/* 0A68E4 800A6D34 00000001 */  .float  1.401298464324817e-45
/* 0A68E8 800A6D38 00000000 */  .float  0.0
/* 0A68EC 800A6D3C 00000001 */  .float  1.401298464324817e-45
/* 0A68F0 800A6D40 00000001 */  .float  1.401298464324817e-45
/* 0A68F4 800A6D44 00000001 */  .float  1.401298464324817e-45
/* 0A68F8 800A6D48 00000000 */  .float  0.0
/* 0A68FC 800A6D4C 00000001 */  .float  1.401298464324817e-45
/* 0A6900 800A6D50 00000001 */  .float  1.401298464324817e-45

glabel D_800A6D54
/* 0A6904 800A6D54  */  .asciz  "Matrix34 %p\n"
                        .balign 4
/* 0A6914 800A6D64  */  .asciz  "%5.3f "
                        .balign 4
/* 0A691C 800A6D6C  */  .asciz  "\n"
                        .balign 4
/* 0A6920 800A6D70  */  .asciz  "Matrix %p\n"
                        .balign 4
/* 0A692C 800A6D7C  */  .asciz  "%5.3f "
                        .balign 4
/* 0A6934 800A6D84  */  .asciz  "\n"
                        .balign 4
/* 0A6938 800A6D88  */  .asciz  "Mtx %p\n"
                        .balign 4
/* 0A6940 800A6D90  */  .asciz  "%5.3f "
                        .balign 4
/* 0A6948 800A6D98  */  .asciz  "\n"
                        .balign 4

glabel D_800A6D9C
/* 0A694C 800A6D9C BDDD6712 */  .float  -0.10810674726963043

glabel D_800A6DA0
/* 0A6950 800A6DA0 C23249A5 */  .float  -44.57191848754883

glabel D_800A6DA4
/* 0A6954 800A6DA4 BE25CB3D */  .float  -0.1619081050157547

glabel D_800A6DA8
/* 0A6958 800A6DA8 C17C6261 */  .float  -15.774018287658691

glabel D_800A6DAC
/* 0A695C 800A6DAC BF0E39D2 */  .float  -0.5555697679519653

glabel D_800A6DB0
/* 0A6960 800A6DB0 C040000D */  .float  -3.0000030994415283
/* 0A6964 800A6DB4 00000000 */  .float  0.0

glabel D_800A6DB8
/* 0A6968 800A6DB8 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800A6DC0
/* 0A6970 800A6DC0 BFF921FB54442D18 */  .double  -1.5707963267948966

glabel D_800A6DC8
/* 0A6978 800A6DC8 400921FB54442D18 */  .double  3.141592653589793

glabel D_800A6DD0
/* 0A6980 800A6DD0 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800A6DD8
/* 0A6988 800A6DD8 3FEFFFEB074A771D */  .double  0.99999

glabel D_800A6DE0
/* 0A6990 800A6DE0 3FC90FDB */  .float  1.5707963705062866
/* 0A6994 800A6DE4 00000000 */  .float  0.0

glabel D_800A6DE8
/* 0A6998 800A6DE8 BFEFFFEB074A771D */  .double  -0.99999

glabel D_800A6DF0
/* 0A69A0 800A6DF0 BFC90FDB */  .float  -1.5707963705062866
/* 0A69A4 800A6DF4 00000000 */  .float  0.0

glabel D_800A6DF8
/* 0A69A8 800A6DF8 3FEFFFEB074A771D */  .double  0.99999

glabel D_800A6E00
/* 0A69B0 800A6E00 BFEFFFEB074A771D */  .double  -0.99999

glabel D_800A6E08
/* 0A69B8 800A6E08 40490FDB */  .float  3.1415927410125732
/* 0A69BC 800A6E0C 00000000 */  .float  0.0

glabel D_800A6E10
/* 0A69C0 800A6E10 3FF921FB54442D18 */  .double  1.5707963267948966

glabel D_800A6E18
/* 0A69C8 800A6E18 40C45F07AF68ECEF */  .double  10430.060040584269

glabel D_800A6E20
/* 0A69D0 800A6E20 38000100 */  .float  3.0518509447574615e-05
/* 0A69D4 800A6E24 00000000 */  .float  0.0

glabel D_800A6E28
/* 0A69D8 800A6E28 40C45F07AF68ECEF */  .double  10430.060040584269

glabel D_800A6E30
/* 0A69E0 800A6E30 38000100 */  .float  3.0518509447574615e-05

glabel D_800A6E34
/* 0A69E4 800A6E34 3C010204 */  .float  0.007874015718698502

glabel D_800A6E38
/* 0A69E8 800A6E38 3A83126F */  .float  0.0010000000474974513

glabel jtbl_800A6E3C
/* 0A69EC 800A6E3C 8003AC88 */  .word  L8003AC88
/* 0A69F0 800A6E40 8003ACE4 */  .word  L8003ACE4
/* 0A69F4 800A6E44 8003AD40 */  .word  L8003AD40
/* 0A69F8 800A6E48 8003ADA0 */  .word  L8003ADA0
/* 0A69FC 800A6E4C 8003AE00 */  .word  L8003AE00
/* 0A6A00 800A6E50 8003AE5C */  .word  L8003AE5C

glabel D_800A6E54
/* 0A6A04 800A6E54 40233333 */  .float  2.549999952316284

glabel D_800A6E58
/* 0A6A08 800A6E58 3BA3D70A */  .float  0.004999999888241291

glabel D_800A6E5C
/* 0A6A0C 800A6E5C 40233333 */  .float  2.549999952316284

glabel D_800A6E60
/* 0A6A10 800A6E60 3F350529 */  .float  0.7071099877357483

glabel D_800A6E64
/* 0A6A14 800A6E64 44B504BD */  .float  1448.1480712890625
/* 0A6A18 800A6E68 44B504BD */  .float  1448.1480712890625

glabel D_800A6E6C
/* 0A6A1C 800A6E6C 3A83126F */  .float  0.0010000000474974513

glabel D_800A6E70
/* 0A6A20 800A6E70 BA83126F */  .float  -0.0010000000474974513

glabel D_800A6E74
/* 0A6A24 800A6E74 BA83126F */  .float  -0.0010000000474974513

glabel D_800A6E78
/* 0A6A28 800A6E78 3A83126F */  .float  0.0010000000474974513

glabel D_800A6E7C
/* 0A6A2C 800A6E7C 3A83126F */  .float  0.0010000000474974513

glabel D_800A6E80
/* 0A6A30 800A6E80 3F7FBE77 */  .float  0.9990000128746033

glabel D_800A6E84
/* 0A6A34 800A6E84 BF7FBE77 */  .float  -0.9990000128746033

glabel D_800A6E88
/* 0A6A38 800A6E88 3A83126F */  .float  0.0010000000474974513

glabel D_800A6E8C
/* 0A6A3C 800A6E8C BA83126F */  .float  -0.0010000000474974513

glabel D_800A6E90
/* 0A6A40 800A6E90 BA83126F */  .float  -0.0010000000474974513

glabel D_800A6E94
/* 0A6A44 800A6E94 3A83126F */  .float  0.0010000000474974513

glabel D_800A6E98
/* 0A6A48 800A6E98 40B60B61 */  .float  5.688889026641846
/* 0A6A4C 800A6E9C 00000000 */  .float  0.0

glabel D_800A6EA0
/* 0A6A50 800A6EA0  */  .asciz  "viStatus(%x)\npixel size: %s\ngamma_dither:%s\ngamma:%s\ndivot:%s\nserrate:%s\nantialias_mode: %s\ndither_filter:%s\n"
                        .balign 4
/* 0A6AC0 800A6F10  */  .asciz  "0: blank (no data, no sync)"
                        .balign 4
/* 0A6ADC 800A6F2C  */  .asciz  "1: reserved"
                        .balign 4
/* 0A6AE8 800A6F38  */  .asciz  "2: 5/5/5/3 (16 bit)"
                        .balign 4
/* 0A6AFC 800A6F4C  */  .asciz  "3: 8/8/8/8 (32 bit)"
                        .balign 4
/* 0A6B10 800A6F60  */  .asciz  "on"
                        .balign 4
/* 0A6B14 800A6F64  */  .asciz  "off"
                        .balign 4
/* 0A6B18 800A6F68  */  .asciz  "on"
                        .balign 4
/* 0A6B1C 800A6F6C  */  .asciz  "off"
                        .balign 4
/* 0A6B20 800A6F70  */  .asciz  "on"
                        .balign 4
/* 0A6B24 800A6F74  */  .asciz  "off"
                        .balign 4
/* 0A6B28 800A6F78  */  .asciz  "on"
                        .balign 4
/* 0A6B2C 800A6F7C  */  .asciz  "off"
                        .balign 4
/* 0A6B30 800A6F80  */  .asciz  "0: aa & resamp (always fetch extra lines)"
                        .balign 4
/* 0A6B5C 800A6FAC  */  .asciz  "1: aa & resamp (fetch extra lines if needed)"
                        .balign 4
/* 0A6B8C 800A6FDC  */  .asciz  "2: resamp only (treat as all fully covered)"
                        .balign 4
/* 0A6BB8 800A7008  */  .asciz  "3: neither (replicate pixels, no interpolate)"
                        .balign 4
/* 0A6BE8 800A7038  */  .asciz  "on"
                        .balign 4
/* 0A6BEC 800A703C  */  .asciz  "off"
                        .balign 4

glabel D_800A7040
/* 0A6BF0 800A7040 0000003F */  .word  0x0000003F
/* 0A6BF4 800A7044 07C107FF */  .word  0x07C107FF
/* 0A6BF8 800A7048 F801F83F */  .word  0xF801F83F
/* 0A6BFC 800A704C FFC1DEF7 */  .word  0xFFC1DEF7
/* 0A6C00 800A7050 084318C7 */  .word  0x084318C7
/* 0A6C04 800A7054 39CF5AD7 */  .word  0x39CF5AD7
/* 0A6C08 800A7058 7BDF9CE7 */  .word  0x7BDF9CE7
/* 0A6C0C 800A705C BDEFFFFF */  .word  0xBDEFFFFF

glabel D_800A7060
/* 0A6C10 800A7060  */  .asciz  "_drawSprite(%p, %p, (%d,%d)-(%d,%d) (%d,%d) (%f,%f)\n"
                        .balign 4
/* 0A6C48 800A7098  */  .asciz  " width:%d height:%d ht:%d  uly:%d ult:%d\n"
                        .balign 4
/* 0A6C74 800A70C4  */  .asciz  "%s\n"
                        .balign 4
/* 0A6C78 800A70C8  */  .asciz  "Warning:Too Long String(len > %d)\n"
                        .balign 4
/* 0A6C9C 800A70EC  */  .asciz  "%s\n"
                        .balign 4
/* 0A6CA0 800A70F0  */  .asciz  "Warning:Too Long String"
                        .balign 4
/* 0A6CB8 800A7108  */  .asciz  "FONTDATA(0x%04X) NOT EXISTANCE!\n"
                        .balign 4
/* 0A6CDC 800A712C  */  .asciz  "COLUMN RANGE ERROR(%d <= %d)!\n"
                        .balign 4
/* 0A6CFC 800A714C  */  .asciz  "ERROR : Too large sprite!\n"
                        .balign 4
/* 0A6D18 800A7168  */  .asciz  "EXTRA CODE ERROR!\n"
                        .balign 4
/* 0A6D2C 800A717C  */  .asciz  "COLUMN CODE ERROR!\n"
                        .balign 4
/* 0A6D40 800A7190  */  .asciz  "COLOR CODE ERROR!\n"
                        .balign 4

glabel jtbl_800A71A4
/* 0A6D54 800A71A4 8003F15C */  .word  L8003F15C
/* 0A6D58 800A71A8 8003F1A4 */  .word  L8003F1A4
/* 0A6D5C 800A71AC 8003F1BC */  .word  L8003F1BC
/* 0A6D60 800A71B0 8003F24C */  .word  L8003F24C
/* 0A6D64 800A71B4 8003F21C */  .word  L8003F21C
/* 0A6D68 800A71B8 8003F228 */  .word  L8003F228
/* 0A6D6C 800A71BC 8003F234 */  .word  L8003F234
/* 0A6D70 800A71C0 8003F1B0 */  .word  L8003F1B0
/* 0A6D74 800A71C4 8003F1C8 */  .word  L8003F1C8
/* 0A6D78 800A71C8 8003F1D4 */  .word  L8003F1D4
/* 0A6D7C 800A71CC 8003F240 */  .word  L8003F240
/* 0A6D80 800A71D0 8003F1E0 */  .word  L8003F1E0
/* 0A6D84 800A71D4 8003F168 */  .word  L8003F168
/* 0A6D88 800A71D8 8003F1EC */  .word  L8003F1EC
/* 0A6D8C 800A71DC 8003F174 */  .word  L8003F174
/* 0A6D90 800A71E0 8003F24C */  .word  L8003F24C
/* 0A6D94 800A71E4 8003F24C */  .word  L8003F24C
/* 0A6D98 800A71E8 8003F24C */  .word  L8003F24C
/* 0A6D9C 800A71EC 8003F24C */  .word  L8003F24C
/* 0A6DA0 800A71F0 8003F24C */  .word  L8003F24C
/* 0A6DA4 800A71F4 8003F24C */  .word  L8003F24C
/* 0A6DA8 800A71F8 8003F24C */  .word  L8003F24C
/* 0A6DAC 800A71FC 8003F24C */  .word  L8003F24C
/* 0A6DB0 800A7200 8003F24C */  .word  L8003F24C
/* 0A6DB4 800A7204 8003F24C */  .word  L8003F24C
/* 0A6DB8 800A7208 8003F24C */  .word  L8003F24C
/* 0A6DBC 800A720C 8003F180 */  .word  L8003F180
/* 0A6DC0 800A7210 8003F18C */  .word  L8003F18C
/* 0A6DC4 800A7214 8003F204 */  .word  L8003F204
/* 0A6DC8 800A7218 8003F1F8 */  .word  L8003F1F8
/* 0A6DCC 800A721C 8003F210 */  .word  L8003F210
/* 0A6DD0 800A7220 8003F198 */  .word  L8003F198
/* 0A6DD4 800A7224 00000000 */  .word  0x00000000
/* 0A6DD8 800A7228 00000000 */  .word  0x00000000
/* 0A6DDC 800A722C 00000000 */  .word  0x00000000

glabel D_800A7230
/* 0A6DE0 800A7230  */  .asciz  "Conflict using of ROM: %p(size 0x%x) and %p(size 0x%x)\n"
                        .balign 4
/* 0A6E18 800A7268  */  .asciz  "Out of cache_memory.\n"
                        .balign 4
/* 0A6E30 800A7280  */  .asciz  "Shortage of Cache_block_num.\n"
                        .balign 4
/* 0A6E50 800A72A0  */  .asciz  "caRequestRomCopy(%p, %p, 0x%x, %p)\n"
                        .balign 4
/* 0A6E74 800A72C4  */  .asciz  "Conflict using of cache: %p(size 0x%x) and 0x%x(size 0x%x)\n"
                        .balign 4
/* 0A6EB0 800A7300  */  .asciz  "Out of cache_memory.\n"
                        .balign 4
/* 0A6EC8 800A7318  */  .asciz  "Shortage of Cache_block_num.\n"
                        .balign 4
/* 0A6EE8 800A7338  */  .asciz  "caRequestMemory(%p, 0x%x, 0x%x, %p)\n"
                        .balign 4
/* 0A6F10 800A7360  */  .asciz  "mic64Error:%d osEngVoiceUnitType:%d\n"
                        .balign 4
/* 0A6F38 800A7388  */  .asciz  "Initializing Mic failed.\n"
                        .balign 4
/* 0A6F54 800A73A4  */  .asciz  "mic64Init() End\n"
                        .balign 4
/* 0A6F68 800A73B8  */  .asciz  "%d:%s\n"
                        .balign 4
/* 0A6F70 800A73C0  */  .asciz  "All Words Downloaded.\n"
                        .balign 4

glabel D_800A73D8
/* 0A6F88 800A73D8 00000000 */  .word  0x00000000

glabel D_800A73DC
/* 0A6F8C 800A73DC  */  .asciz  "MIC64_ERROR: Invalid flag: %d\n"
                        .balign 4

glabel jtbl_800A73FC
/* 0A6FAC 800A73FC 80040B90 */  .word  L80040B90
/* 0A6FB0 800A7400 80040B20 */  .word  L80040B20
/* 0A6FB4 800A7404 80040B90 */  .word  L80040B90
/* 0A6FB8 800A7408 80040B20 */  .word  L80040B20
/* 0A6FBC 800A740C 80040B90 */  .word  L80040B90
/* 0A6FC0 800A7410 80040B90 */  .word  L80040B90
/* 0A6FC4 800A7414 80040B90 */  .word  L80040B90
/* 0A6FC8 800A7418 80040B90 */  .word  L80040B90
/* 0A6FCC 800A741C 00000000 */  .word  0x00000000
/* 0A6FD0 800A7420 0A000000 */  .word  0x0A000000
/* 0A6FD4 800A7424 7C202020 */  .word  0x7C202020
/* 0A6FD8 800A7428 20000000 */  .word  0x20000000

glabel D_800A742C
/* 0A6FDC 800A742C  */  .asciz  "root:%p\n"
                        .balign 4
/* 0A6FE8 800A7438  */  .asciz  "\n\n"
                        .balign 4
/* 0A6FEC 800A743C  */  .asciz  "node %p  link: %p, %p  data: %p\n"
                        .balign 4

glabel D_800A7460
/* 0A7010 800A7460  */  .asciz  "BD"
                        .balign 4

glabel D_800A7464
/* 0A7014 800A7464  */  .asciz  "IP8"
                        .balign 4

glabel D_800A7468
/* 0A7018 800A7468  */  .asciz  "IP7"
                        .balign 4

glabel D_800A746C
/* 0A701C 800A746C  */  .asciz  "IP6"
                        .balign 4

glabel D_800A7470
/* 0A7020 800A7470  */  .asciz  "IP5"
                        .balign 4

glabel D_800A7474
/* 0A7024 800A7474  */  .asciz  "IP4"
                        .balign 4

glabel D_800A7478
/* 0A7028 800A7478  */  .asciz  "IP3"
                        .balign 4

glabel D_800A747C
/* 0A702C 800A747C  */  .asciz  "IP2"
                        .balign 4

glabel D_800A7480
/* 0A7030 800A7480  */  .asciz  "IP1"
                        .balign 4

glabel D_800A7484
/* 0A7034 800A7484  */  .asciz  "Interrupt"
                        .balign 4

glabel D_800A7490
/* 0A7040 800A7490  */  .asciz  "TLB modification exception"
                        .balign 4

glabel D_800A74AC
/* 0A705C 800A74AC  */  .asciz  "TLB exception on load or instruction fetch"
                        .balign 4

glabel D_800A74D8
/* 0A7088 800A74D8  */  .asciz  "TLB exception on store"
                        .balign 4

glabel D_800A74F0
/* 0A70A0 800A74F0  */  .asciz  "Address error on load or instruction fetch"
                        .balign 4

glabel D_800A751C
/* 0A70CC 800A751C  */  .asciz  "Address error on store"
                        .balign 4

glabel D_800A7534
/* 0A70E4 800A7534  */  .asciz  "Bus error exception on instruction fetch"
                        .balign 4

glabel D_800A7560
/* 0A7110 800A7560  */  .asciz  "Bus error exception on data reference"
                        .balign 4

glabel D_800A7588
/* 0A7138 800A7588  */  .asciz  "System call exception"
                        .balign 4

glabel D_800A75A0
/* 0A7150 800A75A0  */  .asciz  "Breakpoint exception"
                        .balign 4

glabel D_800A75B8
/* 0A7168 800A75B8  */  .asciz  "Reserved instruction exception"
                        .balign 4

glabel D_800A75D8
/* 0A7188 800A75D8  */  .asciz  "Coprocessor unusable exception"
                        .balign 4

glabel D_800A75F8
/* 0A71A8 800A75F8  */  .asciz  "Arithmetic overflow exception"
                        .balign 4

glabel D_800A7618
/* 0A71C8 800A7618  */  .asciz  "Trap exception"
                        .balign 4

glabel D_800A7628
/* 0A71D8 800A7628  */  .asciz  "Virtual coherency exception on intruction fetch"
                        .balign 4

glabel D_800A7658
/* 0A7208 800A7658  */  .asciz  "Floating point exception (see fpcsr)"
                        .balign 4

glabel D_800A7680
/* 0A7230 800A7680  */  .asciz  "Watchpoint exception"
                        .balign 4

glabel D_800A7698
/* 0A7248 800A7698  */  .asciz  "Virtual coherency exception on data reference"
                        .balign 4

glabel D_800A76C8
/* 0A7278 800A76C8 00000000 */  .word  0x00000000

glabel D_800A76CC
/* 0A727C 800A76CC  */  .asciz  "CU3"
                        .balign 4

glabel D_800A76D0
/* 0A7280 800A76D0  */  .asciz  "CU2"
                        .balign 4

glabel D_800A76D4
/* 0A7284 800A76D4  */  .asciz  "CU1"
                        .balign 4

glabel D_800A76D8
/* 0A7288 800A76D8  */  .asciz  "CU0"
                        .balign 4

glabel D_800A76DC
/* 0A728C 800A76DC  */  .asciz  "RP"
                        .balign 4

glabel D_800A76E0
/* 0A7290 800A76E0  */  .asciz  "FR"
                        .balign 4

glabel D_800A76E4
/* 0A7294 800A76E4  */  .asciz  "RE"
                        .balign 4

glabel D_800A76E8
/* 0A7298 800A76E8  */  .asciz  "BEV"
                        .balign 4

glabel D_800A76EC
/* 0A729C 800A76EC  */  .asciz  "TS"
                        .balign 4

glabel D_800A76F0
/* 0A72A0 800A76F0  */  .asciz  "SR"
                        .balign 4

glabel D_800A76F4
/* 0A72A4 800A76F4  */  .asciz  "CH"
                        .balign 4

glabel D_800A76F8
/* 0A72A8 800A76F8  */  .asciz  "CE"
                        .balign 4

glabel D_800A76FC
/* 0A72AC 800A76FC  */  .asciz  "DE"
                        .balign 4

glabel D_800A7700
/* 0A72B0 800A7700  */  .asciz  "IM8"
                        .balign 4

glabel D_800A7704
/* 0A72B4 800A7704  */  .asciz  "IM7"
                        .balign 4

glabel D_800A7708
/* 0A72B8 800A7708  */  .asciz  "IM6"
                        .balign 4

glabel D_800A770C
/* 0A72BC 800A770C  */  .asciz  "IM5"
                        .balign 4

glabel D_800A7710
/* 0A72C0 800A7710  */  .asciz  "IM4"
                        .balign 4

glabel D_800A7714
/* 0A72C4 800A7714  */  .asciz  "IM3"
                        .balign 4

glabel D_800A7718
/* 0A72C8 800A7718  */  .asciz  "IM2"
                        .balign 4

glabel D_800A771C
/* 0A72CC 800A771C  */  .asciz  "IM1"
                        .balign 4

glabel D_800A7720
/* 0A72D0 800A7720  */  .asciz  "KX"
                        .balign 4

glabel D_800A7724
/* 0A72D4 800A7724  */  .asciz  "SX"
                        .balign 4

glabel D_800A7728
/* 0A72D8 800A7728  */  .asciz  "UX"
                        .balign 4

glabel D_800A772C
/* 0A72DC 800A772C  */  .asciz  "USR"
                        .balign 4

glabel D_800A7730
/* 0A72E0 800A7730  */  .asciz  "SUP"
                        .balign 4

glabel D_800A7734
/* 0A72E4 800A7734  */  .asciz  "KER"
                        .balign 4

glabel D_800A7738
/* 0A72E8 800A7738  */  .asciz  "ERL"
                        .balign 4

glabel D_800A773C
/* 0A72EC 800A773C  */  .asciz  "EXL"
                        .balign 4

glabel D_800A7740
/* 0A72F0 800A7740  */  .asciz  "IE"
                        .balign 4

glabel D_800A7744
/* 0A72F4 800A7744 00000000 */  .word  0x00000000

glabel D_800A7748
/* 0A72F8 800A7748  */  .asciz  "FS"
                        .balign 4

glabel D_800A774C
/* 0A72FC 800A774C  */  .asciz  "C"
                        .balign 4

glabel D_800A7750
/* 0A7300 800A7750  */  .asciz  "Unimplemented operation"
                        .balign 4

glabel D_800A7768
/* 0A7318 800A7768  */  .asciz  "Invalid operation"
                        .balign 4

glabel D_800A777C
/* 0A732C 800A777C  */  .asciz  "Division by zero"
                        .balign 4

glabel D_800A7790
/* 0A7340 800A7790  */  .asciz  "Overflow"
                        .balign 4

glabel D_800A779C
/* 0A734C 800A779C  */  .asciz  "Underflow"
                        .balign 4

glabel D_800A77A8
/* 0A7358 800A77A8  */  .asciz  "Inexact operation"
                        .balign 4

glabel D_800A77BC
/* 0A736C 800A77BC  */  .asciz  "EV"
                        .balign 4

glabel D_800A77C0
/* 0A7370 800A77C0  */  .asciz  "EZ"
                        .balign 4

glabel D_800A77C4
/* 0A7374 800A77C4  */  .asciz  "EO"
                        .balign 4

glabel D_800A77C8
/* 0A7378 800A77C8  */  .asciz  "EU"
                        .balign 4

glabel D_800A77CC
/* 0A737C 800A77CC  */  .asciz  "EI"
                        .balign 4

glabel D_800A77D0
/* 0A7380 800A77D0  */  .asciz  "FV"
                        .balign 4

glabel D_800A77D4
/* 0A7384 800A77D4  */  .asciz  "FZ"
                        .balign 4

glabel D_800A77D8
/* 0A7388 800A77D8  */  .asciz  "FO"
                        .balign 4

glabel D_800A77DC
/* 0A738C 800A77DC  */  .asciz  "FU"
                        .balign 4

glabel D_800A77E0
/* 0A7390 800A77E0  */  .asciz  "FI"
                        .balign 4

glabel D_800A77E4
/* 0A7394 800A77E4  */  .asciz  "RN"
                        .balign 4

glabel D_800A77E8
/* 0A7398 800A77E8  */  .asciz  "RZ"
                        .balign 4

glabel D_800A77EC
/* 0A739C 800A77EC  */  .asciz  "RP"
                        .balign 4

glabel D_800A77F0
/* 0A73A0 800A77F0  */  .asciz  "RM"
                        .balign 4

glabel D_800A77F4
/* 0A73A4 800A77F4 00000000 */  .word  0x00000000

glabel D_800A77F8
/* 0A73A8 800A77F8  */  .asciz  "%s\t\t0x%08x "
                        .balign 4
/* 0A73B4 800A7804  */  .asciz  "<"
                        .balign 4
/* 0A73B8 800A7808  */  .asciz  ","
                        .balign 4
/* 0A73BC 800A780C  */  .asciz  "%s"
                        .balign 4
/* 0A73C0 800A7810  */  .asciz  ">\n"
                        .balign 4
/* 0A73C4 800A7814  */  .asciz  "%s  NaN           "
                        .balign 4
/* 0A73D8 800A7828  */  .asciz  "%s  Inf           "
                        .balign 4
/* 0A73EC 800A783C  */  .asciz  "%s  Denorm        "
                        .balign 4
/* 0A7400 800A7850  */  .asciz  "%s  %.7e "
                        .balign 4
/* 0A740C 800A785C  */  .asciz  "%s  NaN                   "
                        .balign 4
/* 0A7428 800A7878  */  .asciz  "%s  Inf                   "
                        .balign 4
/* 0A7444 800A7894  */  .asciz  "%s  Denorm                "
                        .balign 4
/* 0A7460 800A78B0  */  .asciz  "%s  %.15e "
                        .balign 4
/* 0A746C 800A78BC  */  .asciz  "\nFault in thread %d:\n\n"
                        .balign 4
/* 0A7484 800A78D4  */  .asciz  "epc\t\t0x%08x\n"
                        .balign 4

glabel _faultstring_cause
/* 0A7494 800A78E4  */  .asciz  "cause"
                        .balign 4

glabel D_800A78EC
/* 0A749C 800A78EC  */  .asciz  "sr"
                        .balign 4
/* 0A74A0 800A78F0  */  .asciz  "badvaddr\t0x%08x\n"
                        .balign 4
/* 0A74B4 800A7904  */  .asciz  "rcp\t\t0x%08x\n\n"
                        .balign 4
/* 0A74C4 800A7914  */  .asciz  "at 0x%016llx v0 0x%016llx v1 0x%016llx\n"
                        .balign 4
/* 0A74EC 800A793C  */  .asciz  "a0 0x%016llx a1 0x%016llx a2 0x%016llx\n"
                        .balign 4
/* 0A7514 800A7964  */  .asciz  "a3 0x%016llx t0 0x%016llx t1 0x%016llx\n"
                        .balign 4
/* 0A753C 800A798C  */  .asciz  "t2 0x%016llx t3 0x%016llx t4 0x%016llx\n"
                        .balign 4
/* 0A7564 800A79B4  */  .asciz  "t5 0x%016llx t6 0x%016llx t7 0x%016llx\n"
                        .balign 4
/* 0A758C 800A79DC  */  .asciz  "s0 0x%016llx s1 0x%016llx s2 0x%016llx\n"
                        .balign 4
/* 0A75B4 800A7A04  */  .asciz  "s3 0x%016llx s4 0x%016llx s5 0x%016llx\n"
                        .balign 4
/* 0A75DC 800A7A2C  */  .asciz  "s6 0x%016llx s7 0x%016llx t8 0x%016llx\n"
                        .balign 4
/* 0A7604 800A7A54  */  .asciz  "t9 0x%016llx gp 0x%016llx sp 0x%016llx\n"
                        .balign 4
/* 0A762C 800A7A7C  */  .asciz  "s8 0x%016llx ra 0x%016llx\n"
                        .balign 4
/* 0A7648 800A7A98  */  .asciz  "lo 0x%016llx hi 0x%016llx\n\n"
                        .balign 4

glabel D_800A7AB4
/* 0A7664 800A7AB4  */  .asciz  "fpcsr"
                        .balign 4

glabel D_800A7ABC
/* 0A766C 800A7ABC  */  .asciz  "\nd0 "
                        .balign 4

glabel D_800A7AC4
/* 0A7674 800A7AC4  */  .asciz  "d2 "
                        .balign 4

glabel D_800A7AC8
/* 0A7678 800A7AC8  */  .asciz  "\nd4 "
                        .balign 4

glabel D_800A7AD0
/* 0A7680 800A7AD0  */  .asciz  "d6 "
                        .balign 4

glabel D_800A7AD4
/* 0A7684 800A7AD4  */  .asciz  "\nd8 "
                        .balign 4

glabel D_800A7ADC
/* 0A768C 800A7ADC  */  .asciz  "d10"
                        .balign 4

glabel D_800A7AE0
/* 0A7690 800A7AE0  */  .asciz  "\nd12"
                        .balign 4

glabel D_800A7AE8
/* 0A7698 800A7AE8  */  .asciz  "d14"
                        .balign 4

glabel D_800A7AEC
/* 0A769C 800A7AEC  */  .asciz  "\nd16"
                        .balign 4

glabel D_800A7AF4
/* 0A76A4 800A7AF4  */  .asciz  "d18"
                        .balign 4

glabel D_800A7AF8
/* 0A76A8 800A7AF8  */  .asciz  "\nd20"
                        .balign 4

glabel D_800A7B00
/* 0A76B0 800A7B00  */  .asciz  "d22"
                        .balign 4

glabel D_800A7B04
/* 0A76B4 800A7B04  */  .asciz  "\nd24"
                        .balign 4

glabel D_800A7B0C
/* 0A76BC 800A7B0C  */  .asciz  "d26"
                        .balign 4

glabel D_800A7B10
/* 0A76C0 800A7B10  */  .asciz  "\nd28"
                        .balign 4

glabel D_800A7B18
/* 0A76C8 800A7B18  */  .asciz  "d30"
                        .balign 4
/* 0A76CC 800A7B1C  */  .asciz  "\n"
                        .balign 4

glabel D_800A7B20
/* 0A76D0 800A7B20  */  .asciz  "\nf0 "
                        .balign 4

glabel D_800A7B28
/* 0A76D8 800A7B28  */  .asciz  "f2 "
                        .balign 4

glabel D_800A7B2C
/* 0A76DC 800A7B2C  */  .asciz  "f4 "
                        .balign 4

glabel D_800A7B30
/* 0A76E0 800A7B30  */  .asciz  "f6 "
                        .balign 4

glabel D_800A7B34
/* 0A76E4 800A7B34  */  .asciz  "\nf8 "
                        .balign 4

glabel D_800A7B3C
/* 0A76EC 800A7B3C  */  .asciz  "f10"
                        .balign 4

glabel D_800A7B40
/* 0A76F0 800A7B40  */  .asciz  "f12"
                        .balign 4

glabel D_800A7B44
/* 0A76F4 800A7B44  */  .asciz  "f14"
                        .balign 4

glabel D_800A7B48
/* 0A76F8 800A7B48  */  .asciz  "\nf16"
                        .balign 4

glabel D_800A7B50
/* 0A7700 800A7B50  */  .asciz  "f18"
                        .balign 4

glabel D_800A7B54
/* 0A7704 800A7B54  */  .asciz  "f20"
                        .balign 4

glabel D_800A7B58
/* 0A7708 800A7B58  */  .asciz  "f22"
                        .balign 4

glabel D_800A7B5C
/* 0A770C 800A7B5C  */  .asciz  "\nf24"
                        .balign 4

glabel D_800A7B64
/* 0A7714 800A7B64  */  .asciz  "f26"
                        .balign 4

glabel D_800A7B68
/* 0A7718 800A7B68  */  .asciz  "f28"
                        .balign 4

glabel D_800A7B6C
/* 0A771C 800A7B6C  */  .asciz  "f30"
                        .balign 4
/* 0A7720 800A7B70  */  .asciz  "\n"
                        .balign 4

glabel _faultstring_FiT
/* 0A7724 800A7B74  */  .asciz  "FiT"
                        .balign 4

glabel D_800A7B78
/* 0A7728 800A7B78  */  .asciz  "%d"
                        .balign 4

glabel D_800A7B7C
/* 0A772C 800A7B7C  */  .asciz  "%08x"
                        .balign 4

glabel D_800A7B84
/* 0A7734 800A7B84  */  .asciz  "%08x"
                        .balign 4
/* 0A773C 800A7B8C  */  .asciz  "\n (flPass: file %s line %d)\n"
                        .balign 4
/* 0A775C 800A7BAC  */  .asciz  "halt: %s: %d\n"
                        .balign 4

glabel D_800A7BBC
/* 0A776C 800A7BBC  */  .asciz  "%d"
                        .balign 4
/* 0A7770 800A7BC0  */  .asciz  "ERROR: Can't alloc %d bytes from heap.\n"
                        .balign 4
/* 0A7798 800A7BE8  */  .asciz  ""
                        .balign 4
/* 0A779C 800A7BEC  */  .asciz  ""
                        .balign 4
/* 0A77A0 800A7BF0  */  .asciz  "error: strcpy: dst or src is NULL pointer. dst:%p src:%p\n"
                        .balign 4
/* 0A77DC 800A7C2C  */  .asciz  ""
                        .balign 4

glabel D_800A7C30
/* 0A77E0 800A7C30 7FFFFFFF */  .word  0x7FFFFFFF
/* 0A77E4 800A7C34 FFFFFFFF */  .word  0xFFFFFFFF
/* 0A77E8 800A7C38 0000000000000000 */  .double  0.0

glabel D_800A7C40
/* 0A77F0 800A7C40  */  .asciz  "none"
                        .balign 4
/* 0A77F8 800A7C48  */  .asciz  ""
                        .balign 4
/* 0A77FC 800A7C4C  */  .asciz  ""
                        .balign 4

glabel D_800A7C50
/* 0A7800 800A7C50 412E848000000000 */  .double  1000000.0
/* 0A7808 800A7C58 0000000000000000 */  .double  0.0

glabel jtbl_800A7C60
/* 0A7810 800A7C60 8004E498 */  .word  L8004E498
/* 0A7814 800A7C64 8004E538 */  .word  L8004E538
/* 0A7818 800A7C68 8004E538 */  .word  L8004E538
/* 0A781C 800A7C6C 8004E538 */  .word  L8004E538
/* 0A7820 800A7C70 8004E538 */  .word  L8004E538
/* 0A7824 800A7C74 8004E500 */  .word  L8004E500
/* 0A7828 800A7C78 8004E538 */  .word  L8004E538
/* 0A782C 800A7C7C 8004E4B0 */  .word  L8004E4B0
/* 0A7830 800A7C80 8004E4DC */  .word  L8004E4DC
/* 0A7834 800A7C84 8004E538 */  .word  L8004E538
/* 0A7838 800A7C88 8004E538 */  .word  L8004E538
/* 0A783C 800A7C8C 8004E294 */  .word  L8004E294
/* 0A7840 800A7C90 8004E294 */  .word  L8004E294
/* 0A7844 800A7C94 8004E170 */  .word  L8004E170
/* 0A7848 800A7C98 8004E43C */  .word  L8004E43C
/* 0A784C 800A7C9C 8004E464 */  .word  L8004E464
/* 0A7850 800A7CA0 8004E294 */  .word  L8004E294
/* 0A7854 800A7CA4 00000000 */  .word  0x00000000

glabel D_800A7CA8
/* 0A7858 800A7CA8 40EFFFE000000000 */  .double  65535.0

glabel jtbl_800A7CB0
/* 0A7860 800A7CB0 8004EE90 */  .word  L8004EE90
/* 0A7864 800A7CB4 8004EEC4 */  .word  L8004EEC4
/* 0A7868 800A7CB8 8004EF24 */  .word  L8004EF24
/* 0A786C 800A7CBC 8004EEF8 */  .word  L8004EEF8
/* 0A7870 800A7CC0 8004EF50 */  .word  L8004EF50
/* 0A7874 800A7CC4 8004EF7C */  .word  L8004EF7C
/* 0A7878 800A7CC8 8004EFE4 */  .word  L8004EFE4
/* 0A787C 800A7CCC 8004F05C */  .word  L8004F05C

glabel D_800A7CD0
/* 0A7880 800A7CD0 4105221B3D3FB61B */  .double  173123.404906676
/* 0A7888 800A7CD8 0000000000000000 */  .double  0.0

glabel jtbl_800A7CE0
/* 0A7890 800A7CE0 8004F73C */  .word  L8004F73C
/* 0A7894 800A7CE4 8004F748 */  .word  L8004F748
/* 0A7898 800A7CE8 8004F760 */  .word  L8004F760
/* 0A789C 800A7CEC 8004F76C */  .word  L8004F76C
/* 0A78A0 800A7CF0 8004F754 */  .word  L8004F754
/* 0A78A4 800A7CF4 8004F778 */  .word  L8004F778

glabel D_800A7CF8
/* 0A78A8 800A7CF8 4105221B3D3FB61B */  .double  173123.404906676

glabel D_800A7D00
/* 0A78B0 800A7D00 3FFFFFD60E94EE39 */  .double  1.99996

glabel D_800A7D08
/* 0A78B8 800A7D08 3FFFFEB0 */  .float  1.999959945678711
/* 0A78BC 800A7D0C 00000000 */  .float  0.0

glabel D_800A7D10
/* 0A78C0 800A7D10 3F91DF469D353918 */  .double  0.017453292222222222
/* 0A78C8 800A7D18 0000000000000000 */  .double  0.0
