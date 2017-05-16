type :: libxc_funcs_m_type
  logical :: is_alloc = .false.
  logical :: is_init = .false.
  integer :: XC_LDA_X = 1
  integer :: XC_LDA_C_WIGNER = 2
  integer :: XC_LDA_C_RPA = 3
  integer :: XC_LDA_C_HL = 4
  integer :: XC_LDA_C_GL = 5
  integer :: XC_LDA_C_XALPHA = 6
  integer :: XC_LDA_C_VWN = 7
  integer :: XC_LDA_C_VWN_RPA = 8
  integer :: XC_LDA_C_PZ = 9
  integer :: XC_LDA_C_PZ_MOD = 10
  integer :: XC_LDA_C_OB_PZ = 11
  integer :: XC_LDA_C_PW = 12
  integer :: XC_LDA_C_PW_MOD = 13
  integer :: XC_LDA_C_OB_PW = 14
  integer :: XC_LDA_C_2D_AMGB = 15
  integer :: XC_LDA_C_2D_PRM = 16
  integer :: XC_LDA_C_vBH = 17
  integer :: XC_LDA_C_1D_CSC = 18
  integer :: XC_LDA_X_2D = 19
  integer :: XC_LDA_XC_TETER93 = 20
  integer :: XC_LDA_X_1D = 21
  integer :: XC_LDA_C_ML1 = 22
  integer :: XC_LDA_C_ML2 = 23
  integer :: XC_LDA_C_GOMBAS = 24
  integer :: XC_LDA_C_PW_RPA = 25
  integer :: XC_LDA_C_1D_LOOS = 26
  integer :: XC_LDA_C_RC04 = 27
  integer :: XC_LDA_C_VWN_1 = 28
  integer :: XC_LDA_C_VWN_2 = 29
  integer :: XC_LDA_C_VWN_3 = 30
  integer :: XC_LDA_C_VWN_4 = 31
  integer :: XC_LDA_K_TF = 50
  integer :: XC_LDA_K_LP = 51
  integer :: XC_GGA_C_Q2D = 47
  integer :: XC_GGA_X_Q2D = 48
  integer :: XC_GGA_X_PBE_MOL = 49
  integer :: XC_GGA_K_TFVW = 52
  integer :: XC_GGA_K_REVAPBEINT = 53
  integer :: XC_GGA_K_APBEINT = 54
  integer :: XC_GGA_K_REVAPBE = 55
  integer :: XC_GGA_X_AK13 = 56
  integer :: XC_GGA_K_MEYER = 57
  integer :: XC_GGA_X_LV_RPW86 = 58
  integer :: XC_GGA_X_PBE_TCA = 59
  integer :: XC_GGA_X_PBEINT = 60
  integer :: XC_GGA_C_ZPBEINT = 61
  integer :: XC_GGA_C_PBEINT = 62
  integer :: XC_GGA_C_ZPBESOL = 63
  integer :: XC_GGA_XC_OPBE_D = 65
  integer :: XC_GGA_XC_OPWLYP_D = 66
  integer :: XC_GGA_XC_OBLYP_D = 67
  integer :: XC_GGA_X_VMT84_GE = 68
  integer :: XC_GGA_X_VMT84_PBE = 69
  integer :: XC_GGA_X_VMT_GE = 70
  integer :: XC_GGA_X_VMT_PBE = 71
  integer :: XC_GGA_C_N12_SX = 79
  integer :: XC_GGA_C_N12 = 80
  integer :: XC_GGA_X_N12 = 82
  integer :: XC_GGA_C_VPBE = 83
  integer :: XC_GGA_C_OP_XALPHA = 84
  integer :: XC_GGA_C_OP_G96 = 85
  integer :: XC_GGA_C_OP_PBE = 86
  integer :: XC_GGA_C_OP_B88 = 87
  integer :: XC_GGA_C_FT97 = 88
  integer :: XC_GGA_C_SPBE = 89
  integer :: XC_GGA_X_SSB_SW = 90
  integer :: XC_GGA_X_SSB = 91
  integer :: XC_GGA_X_SSB_D = 92
  integer :: XC_GGA_XC_HCTH_407P = 93
  integer :: XC_GGA_XC_HCTH_P76 = 94
  integer :: XC_GGA_XC_HCTH_P14 = 95
  integer :: XC_GGA_XC_B97_GGA1 = 96
  integer :: XC_GGA_XC_HCTH_A = 97
  integer :: XC_GGA_X_BPCCAC = 98
  integer :: XC_GGA_C_REVTCA = 99
  integer :: XC_GGA_C_TCA = 100
  integer :: XC_GGA_X_PBE = 101
  integer :: XC_GGA_X_PBE_R = 102
  integer :: XC_GGA_X_B86 = 103
  integer :: XC_GGA_X_HERMAN = 104
  integer :: XC_GGA_X_B86_MGC = 105
  integer :: XC_GGA_X_B88 = 106
  integer :: XC_GGA_X_G96 = 107
  integer :: XC_GGA_X_PW86 = 108
  integer :: XC_GGA_X_PW91 = 109
  integer :: XC_GGA_X_OPTX = 110
  integer :: XC_GGA_X_DK87_R1 = 111
  integer :: XC_GGA_X_DK87_R2 = 112
  integer :: XC_GGA_X_LG93 = 113
  integer :: XC_GGA_X_FT97_A = 114
  integer :: XC_GGA_X_FT97_B = 115
  integer :: XC_GGA_X_PBE_SOL = 116
  integer :: XC_GGA_X_RPBE = 117
  integer :: XC_GGA_X_WC = 118
  integer :: XC_GGA_X_MPW91 = 119
  integer :: XC_GGA_X_AM05 = 120
  integer :: XC_GGA_X_PBEA = 121
  integer :: XC_GGA_X_MPBE = 122
  integer :: XC_GGA_X_XPBE = 123
  integer :: XC_GGA_X_2D_B86_MGC = 124
  integer :: XC_GGA_X_BAYESIAN = 125
  integer :: XC_GGA_X_PBE_JSJR = 126
  integer :: XC_GGA_X_2D_B88 = 127
  integer :: XC_GGA_X_2D_B86 = 128
  integer :: XC_GGA_X_2D_PBE = 129
  integer :: XC_GGA_C_PBE = 130
  integer :: XC_GGA_C_LYP = 131
  integer :: XC_GGA_C_P86 = 132
  integer :: XC_GGA_C_PBE_SOL = 133
  integer :: XC_GGA_C_PW91 = 134
  integer :: XC_GGA_C_AM05 = 135
  integer :: XC_GGA_C_XPBE = 136
  integer :: XC_GGA_C_LM = 137
  integer :: XC_GGA_C_PBE_JRGX = 138
  integer :: XC_GGA_X_OPTB88_VDW = 139
  integer :: XC_GGA_X_PBEK1_VDW = 140
  integer :: XC_GGA_X_OPTPBE_VDW = 141
  integer :: XC_GGA_X_RGE2 = 142
  integer :: XC_GGA_C_RGE2 = 143
  integer :: XC_GGA_X_RPW86 = 144
  integer :: XC_GGA_X_KT1 = 145
  integer :: XC_GGA_XC_KT2 = 146
  integer :: XC_GGA_C_WL = 147
  integer :: XC_GGA_C_WI = 148
  integer :: XC_GGA_X_MB88 = 149
  integer :: XC_GGA_X_SOGGA = 150
  integer :: XC_GGA_X_SOGGA11 = 151
  integer :: XC_GGA_C_SOGGA11 = 152
  integer :: XC_GGA_C_WI0 = 153
  integer :: XC_GGA_XC_TH1 = 154
  integer :: XC_GGA_XC_TH2 = 155
  integer :: XC_GGA_XC_TH3 = 156
  integer :: XC_GGA_XC_TH4 = 157
  integer :: XC_GGA_X_C09X = 158
  integer :: XC_GGA_C_SOGGA11_X = 159
  integer :: XC_GGA_X_LB = 160
  integer :: XC_GGA_XC_HCTH_93 = 161
  integer :: XC_GGA_XC_HCTH_120 = 162
  integer :: XC_GGA_XC_HCTH_147 = 163
  integer :: XC_GGA_XC_HCTH_407 = 164
  integer :: XC_GGA_XC_EDF1 = 165
  integer :: XC_GGA_XC_XLYP = 166
  integer :: XC_GGA_XC_B97 = 167
  integer :: XC_GGA_XC_B97_1 = 168
  integer :: XC_GGA_XC_B97_2 = 169
  integer :: XC_GGA_XC_B97_D = 170
  integer :: XC_GGA_XC_B97_K = 171
  integer :: XC_GGA_XC_B97_3 = 172
  integer :: XC_GGA_XC_PBE1W = 173
  integer :: XC_GGA_XC_MPWLYP1W = 174
  integer :: XC_GGA_XC_PBELYP1W = 175
  integer :: XC_GGA_XC_SB98_1a = 176
  integer :: XC_GGA_XC_SB98_1b = 177
  integer :: XC_GGA_XC_SB98_1c = 178
  integer :: XC_GGA_XC_SB98_2a = 179
  integer :: XC_GGA_XC_SB98_2b = 180
  integer :: XC_GGA_XC_SB98_2c = 181
  integer :: XC_GGA_X_LBM = 182
  integer :: XC_GGA_X_OL2 = 183
  integer :: XC_GGA_X_APBE = 184
  integer :: XC_GGA_K_APBE = 185
  integer :: XC_GGA_C_APBE = 186
  integer :: XC_GGA_K_TW1 = 187
  integer :: XC_GGA_K_TW2 = 188
  integer :: XC_GGA_K_TW3 = 189
  integer :: XC_GGA_K_TW4 = 190
  integer :: XC_GGA_X_HTBS = 191
  integer :: XC_GGA_X_AIRY = 192
  integer :: XC_GGA_X_LAG = 193
  integer :: XC_GGA_XC_MOHLYP = 194
  integer :: XC_GGA_XC_MOHLYP2 = 195
  integer :: XC_GGA_XC_TH_FL = 196
  integer :: XC_GGA_XC_TH_FC = 197
  integer :: XC_GGA_XC_TH_FCFO = 198
  integer :: XC_GGA_XC_TH_FCO = 199
  integer :: XC_GGA_C_OPTC = 200
  integer :: XC_GGA_K_VW = 500
  integer :: XC_GGA_K_GE2 = 501
  integer :: XC_GGA_K_GOLDEN = 502
  integer :: XC_GGA_K_YT65 = 503
  integer :: XC_GGA_K_BALTIN = 504
  integer :: XC_GGA_K_LIEB = 505
  integer :: XC_GGA_K_ABSP1 = 506
  integer :: XC_GGA_K_ABSP2 = 507
  integer :: XC_GGA_K_GR = 508
  integer :: XC_GGA_K_LUDENA = 509
  integer :: XC_GGA_K_GP85 = 510
  integer :: XC_GGA_K_PEARSON = 511
  integer :: XC_GGA_K_OL1 = 512
  integer :: XC_GGA_K_OL2 = 513
  integer :: XC_GGA_K_FR_B88 = 514
  integer :: XC_GGA_K_FR_PW86 = 515
  integer :: XC_GGA_K_DK = 516
  integer :: XC_GGA_K_PERDEW = 517
  integer :: XC_GGA_K_VSK = 518
  integer :: XC_GGA_K_VJKS = 519
  integer :: XC_GGA_K_ERNZERHOF = 520
  integer :: XC_GGA_K_LC94 = 521
  integer :: XC_GGA_K_LLP = 522
  integer :: XC_GGA_K_THAKKAR = 523
  integer :: XC_GGA_X_WPBEH = 524
  integer :: XC_GGA_X_HJS_PBE = 525
  integer :: XC_GGA_X_HJS_PBE_SOL = 526
  integer :: XC_GGA_X_HJS_B88 = 527
  integer :: XC_GGA_X_HJS_B97X = 528
  integer :: XC_GGA_X_ITYH = 529
  integer :: XC_GGA_X_SFAT = 530
  integer :: XC_HYB_GGA_X_N12_SX = 81
  integer :: XC_HYB_GGA_XC_B3PW91 = 401
  integer :: XC_HYB_GGA_XC_B3LYP = 402
  integer :: XC_HYB_GGA_XC_B3P86 = 403
  integer :: XC_HYB_GGA_XC_O3LYP = 404
  integer :: XC_HYB_GGA_XC_mPW1K = 405
  integer :: XC_HYB_GGA_XC_PBEH = 406
  integer :: XC_HYB_GGA_XC_B97 = 407
  integer :: XC_HYB_GGA_XC_B97_1 = 408
  integer :: XC_HYB_GGA_XC_B97_2 = 410
  integer :: XC_HYB_GGA_XC_X3LYP = 411
  integer :: XC_HYB_GGA_XC_B1WC = 412
  integer :: XC_HYB_GGA_XC_B97_K = 413
  integer :: XC_HYB_GGA_XC_B97_3 = 414
  integer :: XC_HYB_GGA_XC_MPW3PW = 415
  integer :: XC_HYB_GGA_XC_B1LYP = 416
  integer :: XC_HYB_GGA_XC_B1PW91 = 417
  integer :: XC_HYB_GGA_XC_mPW1PW = 418
  integer :: XC_HYB_GGA_XC_MPW3LYP = 419
  integer :: XC_HYB_GGA_XC_SB98_1a = 420
  integer :: XC_HYB_GGA_XC_SB98_1b = 421
  integer :: XC_HYB_GGA_XC_SB98_1c = 422
  integer :: XC_HYB_GGA_XC_SB98_2a = 423
  integer :: XC_HYB_GGA_XC_SB98_2b = 424
  integer :: XC_HYB_GGA_XC_SB98_2c = 425
  integer :: XC_HYB_GGA_X_SOGGA11_X = 426
  integer :: XC_HYB_GGA_XC_HSE03 = 427
  integer :: XC_HYB_GGA_XC_HSE06 = 428
  integer :: XC_HYB_GGA_XC_HJS_PBE = 429
  integer :: XC_HYB_GGA_XC_HJS_PBE_SOL = 430
  integer :: XC_HYB_GGA_XC_HJS_B88 = 431
  integer :: XC_HYB_GGA_XC_HJS_B97X = 432
  integer :: XC_HYB_GGA_XC_CAM_B3LYP = 433
  integer :: XC_HYB_GGA_XC_TUNED_CAM_B3LYP = 434
  integer :: XC_HYB_GGA_XC_BHANDH = 435
  integer :: XC_HYB_GGA_XC_BHANDHLYP = 436
  integer :: XC_HYB_GGA_XC_MB3LYP_RC04 = 437
  integer :: XC_HYB_GGA_XC_MPWLYP1M = 453
  integer :: XC_HYB_GGA_XC_REVB3LYP = 454
  integer :: XC_HYB_GGA_XC_CAMY_BLYP = 455
  integer :: XC_HYB_GGA_XC_PBE0_13 = 456
  integer :: XC_MGGA_XC_OTPSS_D = 64
  integer :: XC_MGGA_C_CS = 72
  integer :: XC_MGGA_C_MN12_SX = 73
  integer :: XC_MGGA_C_MN12_L = 74
  integer :: XC_MGGA_C_M11_L = 75
  integer :: XC_MGGA_C_M11 = 76
  integer :: XC_MGGA_C_M08_SO = 77
  integer :: XC_MGGA_C_M08_HX = 78
  integer :: XC_MGGA_X_LTA = 201
  integer :: XC_MGGA_X_TPSS = 202
  integer :: XC_MGGA_X_M06_L = 203
  integer :: XC_MGGA_X_GVT4 = 204
  integer :: XC_MGGA_X_TAU_HCTH = 205
  integer :: XC_MGGA_X_BR89 = 206
  integer :: XC_MGGA_X_BJ06 = 207
  integer :: XC_MGGA_X_TB09 = 208
  integer :: XC_MGGA_X_RPP09 = 209
  integer :: XC_MGGA_X_2D_PRHG07 = 210
  integer :: XC_MGGA_X_2D_PRHG07_PRP10 = 211
  integer :: XC_MGGA_X_REVTPSS = 212
  integer :: XC_MGGA_X_PKZB = 213
  integer :: XC_MGGA_X_M05 = 214
  integer :: XC_MGGA_X_M05_2X = 215
  integer :: XC_MGGA_X_M06_HF = 216
  integer :: XC_MGGA_X_M06 = 217
  integer :: XC_MGGA_X_M06_2X = 218
  integer :: XC_MGGA_X_M08_HX = 219
  integer :: XC_MGGA_X_M08_SO = 220
  integer :: XC_MGGA_X_MS0 = 221
  integer :: XC_MGGA_X_MS1 = 222
  integer :: XC_MGGA_X_MS2 = 223
  integer :: XC_MGGA_X_MS2H = 224
  integer :: XC_MGGA_X_M11_L = 226
  integer :: XC_MGGA_X_MN12_L = 227
  integer :: XC_MGGA_X_MN12_SX = 228
  integer :: XC_MGGA_C_CC06 = 229
  integer :: XC_MGGA_X_MK00 = 230
  integer :: XC_MGGA_C_TPSS = 231
  integer :: XC_MGGA_C_VSXC = 232
  integer :: XC_MGGA_C_M06_L = 233
  integer :: XC_MGGA_C_M06_HF = 234
  integer :: XC_MGGA_C_M06 = 235
  integer :: XC_MGGA_C_M06_2X = 236
  integer :: XC_MGGA_C_M05 = 237
  integer :: XC_MGGA_C_M05_2X = 238
  integer :: XC_MGGA_C_PKZB = 239
  integer :: XC_MGGA_C_BC95 = 240
  integer :: XC_MGGA_C_REVTPSS = 241
  integer :: XC_MGGA_XC_TPSSLYP1W = 242
  integer :: XC_MGGA_X_MK00B = 243
  integer :: XC_MGGA_X_BLOC = 244
  integer :: XC_MGGA_X_MODTPSS = 245
  integer :: XC_HYB_MGGA_X_M11 = 225
  integer :: XC_HYB_MGGA_XC_M05 = 438
  integer :: XC_HYB_MGGA_XC_M05_2X = 439
  integer :: XC_HYB_MGGA_XC_B88B95 = 440
  integer :: XC_HYB_MGGA_XC_B86B95 = 441
  integer :: XC_HYB_MGGA_XC_PW86B95 = 442
  integer :: XC_HYB_MGGA_XC_BB1K = 443
  integer :: XC_HYB_MGGA_XC_M06_HF = 444
  integer :: XC_HYB_MGGA_XC_MPW1B95 = 445
  integer :: XC_HYB_MGGA_XC_MPWB1K = 446
  integer :: XC_HYB_MGGA_XC_X1B95 = 447
  integer :: XC_HYB_MGGA_XC_XB1K = 448
  integer :: XC_HYB_MGGA_XC_M06 = 449
  integer :: XC_HYB_MGGA_XC_M06_2X = 450
  integer :: XC_HYB_MGGA_XC_PW6B95 = 451
  integer :: XC_HYB_MGGA_XC_PWB6K = 452
  integer :: XC_HYB_MGGA_XC_TPSSH = 457
  integer :: XC_HYB_MGGA_XC_REVTPSSH = 458
  integer :: XC_HYB_MGGA_XC_REVTPSSH = 458
contains
  procedure, pass :: alloc
  procedure, pass :: init
end type libxc_funcs_m_type
