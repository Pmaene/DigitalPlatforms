                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Sat Oct 27 13:34:01 2012
                              5 ;--------------------------------------------------------
                              6 	.module main_montgomery
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _CY
                             14 	.globl _AC
                             15 	.globl _F0
                             16 	.globl _RS1
                             17 	.globl _RS0
                             18 	.globl _OV
                             19 	.globl _F1
                             20 	.globl _P
                             21 	.globl _PS
                             22 	.globl _PT1
                             23 	.globl _PX1
                             24 	.globl _PT0
                             25 	.globl _PX0
                             26 	.globl _RD
                             27 	.globl _WR
                             28 	.globl _T1
                             29 	.globl _T0
                             30 	.globl _INT1
                             31 	.globl _INT0
                             32 	.globl _TXD
                             33 	.globl _RXD
                             34 	.globl _P3_7
                             35 	.globl _P3_6
                             36 	.globl _P3_5
                             37 	.globl _P3_4
                             38 	.globl _P3_3
                             39 	.globl _P3_2
                             40 	.globl _P3_1
                             41 	.globl _P3_0
                             42 	.globl _EA
                             43 	.globl _ES
                             44 	.globl _ET1
                             45 	.globl _EX1
                             46 	.globl _ET0
                             47 	.globl _EX0
                             48 	.globl _P2_7
                             49 	.globl _P2_6
                             50 	.globl _P2_5
                             51 	.globl _P2_4
                             52 	.globl _P2_3
                             53 	.globl _P2_2
                             54 	.globl _P2_1
                             55 	.globl _P2_0
                             56 	.globl _SM0
                             57 	.globl _SM1
                             58 	.globl _SM2
                             59 	.globl _REN
                             60 	.globl _TB8
                             61 	.globl _RB8
                             62 	.globl _TI
                             63 	.globl _RI
                             64 	.globl _P1_7
                             65 	.globl _P1_6
                             66 	.globl _P1_5
                             67 	.globl _P1_4
                             68 	.globl _P1_3
                             69 	.globl _P1_2
                             70 	.globl _P1_1
                             71 	.globl _P1_0
                             72 	.globl _TF1
                             73 	.globl _TR1
                             74 	.globl _TF0
                             75 	.globl _TR0
                             76 	.globl _IE1
                             77 	.globl _IT1
                             78 	.globl _IE0
                             79 	.globl _IT0
                             80 	.globl _P0_7
                             81 	.globl _P0_6
                             82 	.globl _P0_5
                             83 	.globl _P0_4
                             84 	.globl _P0_3
                             85 	.globl _P0_2
                             86 	.globl _P0_1
                             87 	.globl _P0_0
                             88 	.globl _B
                             89 	.globl _ACC
                             90 	.globl _PSW
                             91 	.globl _IP
                             92 	.globl _P3
                             93 	.globl _IE
                             94 	.globl _P2
                             95 	.globl _SBUF
                             96 	.globl _SCON
                             97 	.globl _P1
                             98 	.globl _TH1
                             99 	.globl _TH0
                            100 	.globl _TL1
                            101 	.globl _TL0
                            102 	.globl _TMOD
                            103 	.globl _TCON
                            104 	.globl _PCON
                            105 	.globl _DPH
                            106 	.globl _DPL
                            107 	.globl _SP
                            108 	.globl _P0
                            109 	.globl _n_prime
                            110 	.globl _b
                            111 	.globl _a
                            112 	.globl _n
                            113 	.globl _m
                            114 	.globl _endBrk
                            115 	.globl _startBrk
                            116 	.globl _fips_PARM_5
                            117 	.globl _fips_PARM_4
                            118 	.globl _fips_PARM_3
                            119 	.globl _fips_PARM_2
                            120 	.globl _t
                            121 	.globl _s
                            122 	.globl _j
                            123 	.globl _i
                            124 	.globl _fips
                            125 ;--------------------------------------------------------
                            126 ; special function registers
                            127 ;--------------------------------------------------------
                            128 	.area RSEG    (DATA)
                    0080    129 _P0	=	0x0080
                    0081    130 _SP	=	0x0081
                    0082    131 _DPL	=	0x0082
                    0083    132 _DPH	=	0x0083
                    0087    133 _PCON	=	0x0087
                    0088    134 _TCON	=	0x0088
                    0089    135 _TMOD	=	0x0089
                    008A    136 _TL0	=	0x008a
                    008B    137 _TL1	=	0x008b
                    008C    138 _TH0	=	0x008c
                    008D    139 _TH1	=	0x008d
                    0090    140 _P1	=	0x0090
                    0098    141 _SCON	=	0x0098
                    0099    142 _SBUF	=	0x0099
                    00A0    143 _P2	=	0x00a0
                    00A8    144 _IE	=	0x00a8
                    00B0    145 _P3	=	0x00b0
                    00B8    146 _IP	=	0x00b8
                    00D0    147 _PSW	=	0x00d0
                    00E0    148 _ACC	=	0x00e0
                    00F0    149 _B	=	0x00f0
                            150 ;--------------------------------------------------------
                            151 ; special function bits
                            152 ;--------------------------------------------------------
                            153 	.area RSEG    (DATA)
                    0080    154 _P0_0	=	0x0080
                    0081    155 _P0_1	=	0x0081
                    0082    156 _P0_2	=	0x0082
                    0083    157 _P0_3	=	0x0083
                    0084    158 _P0_4	=	0x0084
                    0085    159 _P0_5	=	0x0085
                    0086    160 _P0_6	=	0x0086
                    0087    161 _P0_7	=	0x0087
                    0088    162 _IT0	=	0x0088
                    0089    163 _IE0	=	0x0089
                    008A    164 _IT1	=	0x008a
                    008B    165 _IE1	=	0x008b
                    008C    166 _TR0	=	0x008c
                    008D    167 _TF0	=	0x008d
                    008E    168 _TR1	=	0x008e
                    008F    169 _TF1	=	0x008f
                    0090    170 _P1_0	=	0x0090
                    0091    171 _P1_1	=	0x0091
                    0092    172 _P1_2	=	0x0092
                    0093    173 _P1_3	=	0x0093
                    0094    174 _P1_4	=	0x0094
                    0095    175 _P1_5	=	0x0095
                    0096    176 _P1_6	=	0x0096
                    0097    177 _P1_7	=	0x0097
                    0098    178 _RI	=	0x0098
                    0099    179 _TI	=	0x0099
                    009A    180 _RB8	=	0x009a
                    009B    181 _TB8	=	0x009b
                    009C    182 _REN	=	0x009c
                    009D    183 _SM2	=	0x009d
                    009E    184 _SM1	=	0x009e
                    009F    185 _SM0	=	0x009f
                    00A0    186 _P2_0	=	0x00a0
                    00A1    187 _P2_1	=	0x00a1
                    00A2    188 _P2_2	=	0x00a2
                    00A3    189 _P2_3	=	0x00a3
                    00A4    190 _P2_4	=	0x00a4
                    00A5    191 _P2_5	=	0x00a5
                    00A6    192 _P2_6	=	0x00a6
                    00A7    193 _P2_7	=	0x00a7
                    00A8    194 _EX0	=	0x00a8
                    00A9    195 _ET0	=	0x00a9
                    00AA    196 _EX1	=	0x00aa
                    00AB    197 _ET1	=	0x00ab
                    00AC    198 _ES	=	0x00ac
                    00AF    199 _EA	=	0x00af
                    00B0    200 _P3_0	=	0x00b0
                    00B1    201 _P3_1	=	0x00b1
                    00B2    202 _P3_2	=	0x00b2
                    00B3    203 _P3_3	=	0x00b3
                    00B4    204 _P3_4	=	0x00b4
                    00B5    205 _P3_5	=	0x00b5
                    00B6    206 _P3_6	=	0x00b6
                    00B7    207 _P3_7	=	0x00b7
                    00B0    208 _RXD	=	0x00b0
                    00B1    209 _TXD	=	0x00b1
                    00B2    210 _INT0	=	0x00b2
                    00B3    211 _INT1	=	0x00b3
                    00B4    212 _T0	=	0x00b4
                    00B5    213 _T1	=	0x00b5
                    00B6    214 _WR	=	0x00b6
                    00B7    215 _RD	=	0x00b7
                    00B8    216 _PX0	=	0x00b8
                    00B9    217 _PT0	=	0x00b9
                    00BA    218 _PX1	=	0x00ba
                    00BB    219 _PT1	=	0x00bb
                    00BC    220 _PS	=	0x00bc
                    00D0    221 _P	=	0x00d0
                    00D1    222 _F1	=	0x00d1
                    00D2    223 _OV	=	0x00d2
                    00D3    224 _RS0	=	0x00d3
                    00D4    225 _RS1	=	0x00d4
                    00D5    226 _F0	=	0x00d5
                    00D6    227 _AC	=	0x00d6
                    00D7    228 _CY	=	0x00d7
                            229 ;--------------------------------------------------------
                            230 ; overlayable register banks
                            231 ;--------------------------------------------------------
                            232 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     233 	.ds 8
                            234 ;--------------------------------------------------------
                            235 ; internal ram data
                            236 ;--------------------------------------------------------
                            237 	.area DSEG    (DATA)
   0008                     238 _i::
   0008                     239 	.ds 2
   000A                     240 _j::
   000A                     241 	.ds 2
   000C                     242 _s::
   000C                     243 	.ds 1
   000D                     244 _t::
   000D                     245 	.ds 3
   0010                     246 _fips_PARM_2:
   0010                     247 	.ds 3
   0013                     248 _fips_PARM_3:
   0013                     249 	.ds 3
   0016                     250 _fips_PARM_4:
   0016                     251 	.ds 1
   0017                     252 _fips_PARM_5:
   0017                     253 	.ds 3
   001A                     254 _fips_a_1_1:
   001A                     255 	.ds 3
   001D                     256 _fips_c_1_1:
   001D                     257 	.ds 1
   001E                     258 _fips_s_1_1:
   001E                     259 	.ds 1
   001F                     260 _fips_sloc0_1_0:
   001F                     261 	.ds 3
   0022                     262 _fips_sloc1_1_0:
   0022                     263 	.ds 2
   0024                     264 _fips_sloc2_1_0:
   0024                     265 	.ds 3
   0027                     266 _fips_sloc3_1_0:
   0027                     267 	.ds 3
   002A                     268 _fips_sloc4_1_0:
   002A                     269 	.ds 2
   002C                     270 _fips_sloc5_1_0:
   002C                     271 	.ds 1
                            272 ;--------------------------------------------------------
                            273 ; overlayable items in internal ram 
                            274 ;--------------------------------------------------------
                            275 	.area OSEG    (OVR,DATA)
                            276 ;--------------------------------------------------------
                            277 ; Stack segment in internal ram 
                            278 ;--------------------------------------------------------
                            279 	.area	SSEG	(DATA)
   002F                     280 __start__stack:
   002F                     281 	.ds	1
                            282 
                            283 ;--------------------------------------------------------
                            284 ; indirectly addressable internal ram data
                            285 ;--------------------------------------------------------
                            286 	.area ISEG    (DATA)
                            287 ;--------------------------------------------------------
                            288 ; absolute internal ram data
                            289 ;--------------------------------------------------------
                            290 	.area IABS    (ABS,DATA)
                            291 	.area IABS    (ABS,DATA)
                            292 ;--------------------------------------------------------
                            293 ; bit data
                            294 ;--------------------------------------------------------
                            295 	.area BSEG    (BIT)
                            296 ;--------------------------------------------------------
                            297 ; paged external ram data
                            298 ;--------------------------------------------------------
                            299 	.area PSEG    (PAG,XDATA)
                            300 ;--------------------------------------------------------
                            301 ; external ram data
                            302 ;--------------------------------------------------------
                            303 	.area XSEG    (XDATA)
                    FFFE    304 _startBrk	=	0xfffe
                    FFFF    305 _endBrk	=	0xffff
                    0400    306 _m	=	0x0400
                    0500    307 _fips_result_1_1	=	0x0500
                            308 ;--------------------------------------------------------
                            309 ; absolute external ram data
                            310 ;--------------------------------------------------------
                            311 	.area XABS    (ABS,XDATA)
   0000                     312 	.org 0x0000
   0000                     313 _n::
   0000                     314 	.ds 128
   0080                     315 	.org 0x0080
   0080                     316 _a::
   0080                     317 	.ds 128
   0100                     318 	.org 0x0100
   0100                     319 _b::
   0100                     320 	.ds 128
   0300                     321 	.org 0x0300
   0300                     322 _n_prime::
   0300                     323 	.ds 1
                            324 ;--------------------------------------------------------
                            325 ; external initialized ram data
                            326 ;--------------------------------------------------------
                            327 	.area XISEG   (XDATA)
                            328 	.area HOME    (CODE)
                            329 	.area GSINIT0 (CODE)
                            330 	.area GSINIT1 (CODE)
                            331 	.area GSINIT2 (CODE)
                            332 	.area GSINIT3 (CODE)
                            333 	.area GSINIT4 (CODE)
                            334 	.area GSINIT5 (CODE)
                            335 	.area GSINIT  (CODE)
                            336 	.area GSFINAL (CODE)
                            337 	.area CSEG    (CODE)
                            338 ;--------------------------------------------------------
                            339 ; interrupt vector 
                            340 ;--------------------------------------------------------
                            341 	.area HOME    (CODE)
   0000                     342 __interrupt_vect:
   0000 02 00 08            343 	ljmp	__sdcc_gsinit_startup
                            344 ;--------------------------------------------------------
                            345 ; global & static initialisations
                            346 ;--------------------------------------------------------
                            347 	.area HOME    (CODE)
                            348 	.area GSINIT  (CODE)
                            349 	.area GSFINAL (CODE)
                            350 	.area GSINIT  (CODE)
                            351 	.globl __sdcc_gsinit_startup
                            352 	.globl __sdcc_program_startup
                            353 	.globl __start__stack
                            354 	.globl __mcs51_genXINIT
                            355 	.globl __mcs51_genXRAMCLEAR
                            356 	.globl __mcs51_genRAMCLEAR
                            357 ;	main_montgomery.c:16: unsigned short i = 0;
   0061 E4                  358 	clr	a
   0062 F5 08               359 	mov	_i,a
   0064 F5 09               360 	mov	(_i + 1),a
                            361 ;	main_montgomery.c:17: unsigned short j = 0;
   0066 E4                  362 	clr	a
   0067 F5 0A               363 	mov	_j,a
   0069 F5 0B               364 	mov	(_j + 1),a
                            365 ;	main_montgomery.c:18: unsigned char s = 0;
   006B 75 0C 00            366 	mov	_s,#0x00
                            367 ;	main_montgomery.c:20: unsigned char t[3] = {0, 0, 0};
   006E 75 0D 00            368 	mov	_t,#0x00
   0071 75 0E 00            369 	mov	(_t + 0x0001),#0x00
   0074 75 0F 00            370 	mov	(_t + 0x0002),#0x00
                            371 ;	main_montgomery.c:10: volatile __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0077 90 00 00            372 	mov	dptr,#_n
   007A 74 D3               373 	mov	a,#0xD3
   007C F0                  374 	movx	@dptr,a
   007D 90 00 01            375 	mov	dptr,#(_n + 0x0001)
   0080 74 55               376 	mov	a,#0x55
   0082 F0                  377 	movx	@dptr,a
   0083 90 00 02            378 	mov	dptr,#(_n + 0x0002)
   0086 74 A4               379 	mov	a,#0xA4
   0088 F0                  380 	movx	@dptr,a
   0089 90 00 03            381 	mov	dptr,#(_n + 0x0003)
   008C 74 5F               382 	mov	a,#0x5F
   008E F0                  383 	movx	@dptr,a
   008F 90 00 04            384 	mov	dptr,#(_n + 0x0004)
   0092 74 57               385 	mov	a,#0x57
   0094 F0                  386 	movx	@dptr,a
   0095 90 00 05            387 	mov	dptr,#(_n + 0x0005)
   0098 74 F3               388 	mov	a,#0xF3
   009A F0                  389 	movx	@dptr,a
   009B 90 00 06            390 	mov	dptr,#(_n + 0x0006)
   009E 74 F9               391 	mov	a,#0xF9
   00A0 F0                  392 	movx	@dptr,a
   00A1 90 00 07            393 	mov	dptr,#(_n + 0x0007)
   00A4 74 3E               394 	mov	a,#0x3E
   00A6 F0                  395 	movx	@dptr,a
   00A7 90 00 08            396 	mov	dptr,#(_n + 0x0008)
   00AA 74 CF               397 	mov	a,#0xCF
   00AC F0                  398 	movx	@dptr,a
   00AD 90 00 09            399 	mov	dptr,#(_n + 0x0009)
   00B0 74 84               400 	mov	a,#0x84
   00B2 F0                  401 	movx	@dptr,a
   00B3 90 00 0A            402 	mov	dptr,#(_n + 0x000a)
   00B6 74 6D               403 	mov	a,#0x6D
   00B8 F0                  404 	movx	@dptr,a
   00B9 90 00 0B            405 	mov	dptr,#(_n + 0x000b)
   00BC 74 FF               406 	mov	a,#0xFF
   00BE F0                  407 	movx	@dptr,a
   00BF 90 00 0C            408 	mov	dptr,#(_n + 0x000c)
   00C2 74 20               409 	mov	a,#0x20
   00C4 F0                  410 	movx	@dptr,a
   00C5 90 00 0D            411 	mov	dptr,#(_n + 0x000d)
   00C8 74 C1               412 	mov	a,#0xC1
   00CA F0                  413 	movx	@dptr,a
   00CB 90 00 0E            414 	mov	dptr,#(_n + 0x000e)
   00CE 74 AE               415 	mov	a,#0xAE
   00D0 F0                  416 	movx	@dptr,a
   00D1 90 00 0F            417 	mov	dptr,#(_n + 0x000f)
   00D4 74 12               418 	mov	a,#0x12
   00D6 F0                  419 	movx	@dptr,a
   00D7 90 00 10            420 	mov	dptr,#(_n + 0x0010)
   00DA 74 CF               421 	mov	a,#0xCF
   00DC F0                  422 	movx	@dptr,a
   00DD 90 00 11            423 	mov	dptr,#(_n + 0x0011)
   00E0 74 F1               424 	mov	a,#0xF1
   00E2 F0                  425 	movx	@dptr,a
   00E3 90 00 12            426 	mov	dptr,#(_n + 0x0012)
   00E6 E4                  427 	clr	a
   00E7 F0                  428 	movx	@dptr,a
   00E8 90 00 13            429 	mov	dptr,#(_n + 0x0013)
   00EB 74 66               430 	mov	a,#0x66
   00ED F0                  431 	movx	@dptr,a
   00EE 90 00 14            432 	mov	dptr,#(_n + 0x0014)
   00F1 74 45               433 	mov	a,#0x45
   00F3 F0                  434 	movx	@dptr,a
   00F4 90 00 15            435 	mov	dptr,#(_n + 0x0015)
   00F7 74 E2               436 	mov	a,#0xE2
   00F9 F0                  437 	movx	@dptr,a
   00FA 90 00 16            438 	mov	dptr,#(_n + 0x0016)
   00FD 74 34               439 	mov	a,#0x34
   00FF F0                  440 	movx	@dptr,a
   0100 90 00 17            441 	mov	dptr,#(_n + 0x0017)
   0103 74 61               442 	mov	a,#0x61
   0105 F0                  443 	movx	@dptr,a
   0106 90 00 18            444 	mov	dptr,#(_n + 0x0018)
   0109 74 27               445 	mov	a,#0x27
   010B F0                  446 	movx	@dptr,a
   010C 90 00 19            447 	mov	dptr,#(_n + 0x0019)
   010F 74 F2               448 	mov	a,#0xF2
   0111 F0                  449 	movx	@dptr,a
   0112 90 00 1A            450 	mov	dptr,#(_n + 0x001a)
   0115 74 57               451 	mov	a,#0x57
   0117 F0                  452 	movx	@dptr,a
   0118 90 00 1B            453 	mov	dptr,#(_n + 0x001b)
   011B 74 B3               454 	mov	a,#0xB3
   011D F0                  455 	movx	@dptr,a
   011E 90 00 1C            456 	mov	dptr,#(_n + 0x001c)
   0121 74 42               457 	mov	a,#0x42
   0123 F0                  458 	movx	@dptr,a
   0124 90 00 1D            459 	mov	dptr,#(_n + 0x001d)
   0127 74 21               460 	mov	a,#0x21
   0129 F0                  461 	movx	@dptr,a
   012A 90 00 1E            462 	mov	dptr,#(_n + 0x001e)
   012D 74 80               463 	mov	a,#0x80
   012F F0                  464 	movx	@dptr,a
   0130 90 00 1F            465 	mov	dptr,#(_n + 0x001f)
   0133 74 95               466 	mov	a,#0x95
   0135 F0                  467 	movx	@dptr,a
   0136 90 00 20            468 	mov	dptr,#(_n + 0x0020)
   0139 74 AB               469 	mov	a,#0xAB
   013B F0                  470 	movx	@dptr,a
   013C 90 00 21            471 	mov	dptr,#(_n + 0x0021)
   013F 74 15               472 	mov	a,#0x15
   0141 F0                  473 	movx	@dptr,a
   0142 90 00 22            474 	mov	dptr,#(_n + 0x0022)
   0145 74 A2               475 	mov	a,#0xA2
   0147 F0                  476 	movx	@dptr,a
   0148 90 00 23            477 	mov	dptr,#(_n + 0x0023)
   014B 74 1D               478 	mov	a,#0x1D
   014D F0                  479 	movx	@dptr,a
   014E 90 00 24            480 	mov	dptr,#(_n + 0x0024)
   0151 74 53               481 	mov	a,#0x53
   0153 F0                  482 	movx	@dptr,a
   0154 90 00 25            483 	mov	dptr,#(_n + 0x0025)
   0157 74 B2               484 	mov	a,#0xB2
   0159 F0                  485 	movx	@dptr,a
   015A 90 00 26            486 	mov	dptr,#(_n + 0x0026)
   015D 74 27               487 	mov	a,#0x27
   015F F0                  488 	movx	@dptr,a
   0160 90 00 27            489 	mov	dptr,#(_n + 0x0027)
   0163 74 E6               490 	mov	a,#0xE6
   0165 F0                  491 	movx	@dptr,a
   0166 90 00 28            492 	mov	dptr,#(_n + 0x0028)
   0169 74 56               493 	mov	a,#0x56
   016B F0                  494 	movx	@dptr,a
   016C 90 00 29            495 	mov	dptr,#(_n + 0x0029)
   016F 74 93               496 	mov	a,#0x93
   0171 F0                  497 	movx	@dptr,a
   0172 90 00 2A            498 	mov	dptr,#(_n + 0x002a)
   0175 74 27               499 	mov	a,#0x27
   0177 F0                  500 	movx	@dptr,a
   0178 90 00 2B            501 	mov	dptr,#(_n + 0x002b)
   017B 74 AF               502 	mov	a,#0xAF
   017D F0                  503 	movx	@dptr,a
   017E 90 00 2C            504 	mov	dptr,#(_n + 0x002c)
   0181 74 C2               505 	mov	a,#0xC2
   0183 F0                  506 	movx	@dptr,a
   0184 90 00 2D            507 	mov	dptr,#(_n + 0x002d)
   0187 74 EE               508 	mov	a,#0xEE
   0189 F0                  509 	movx	@dptr,a
   018A 90 00 2E            510 	mov	dptr,#(_n + 0x002e)
   018D 74 2B               511 	mov	a,#0x2B
   018F F0                  512 	movx	@dptr,a
   0190 90 00 2F            513 	mov	dptr,#(_n + 0x002f)
   0193 74 2F               514 	mov	a,#0x2F
   0195 F0                  515 	movx	@dptr,a
   0196 90 00 30            516 	mov	dptr,#(_n + 0x0030)
   0199 74 9A               517 	mov	a,#0x9A
   019B F0                  518 	movx	@dptr,a
   019C 90 00 31            519 	mov	dptr,#(_n + 0x0031)
   019F 74 AE               520 	mov	a,#0xAE
   01A1 F0                  521 	movx	@dptr,a
   01A2 90 00 32            522 	mov	dptr,#(_n + 0x0032)
   01A5 74 6A               523 	mov	a,#0x6A
   01A7 F0                  524 	movx	@dptr,a
   01A8 90 00 33            525 	mov	dptr,#(_n + 0x0033)
   01AB 74 09               526 	mov	a,#0x09
   01AD F0                  527 	movx	@dptr,a
   01AE 90 00 34            528 	mov	dptr,#(_n + 0x0034)
   01B1 74 E5               529 	mov	a,#0xE5
   01B3 F0                  530 	movx	@dptr,a
   01B4 90 00 35            531 	mov	dptr,#(_n + 0x0035)
   01B7 74 7F               532 	mov	a,#0x7F
   01B9 F0                  533 	movx	@dptr,a
   01BA 90 00 36            534 	mov	dptr,#(_n + 0x0036)
   01BD 74 AE               535 	mov	a,#0xAE
   01BF F0                  536 	movx	@dptr,a
   01C0 90 00 37            537 	mov	dptr,#(_n + 0x0037)
   01C3 74 7D               538 	mov	a,#0x7D
   01C5 F0                  539 	movx	@dptr,a
   01C6 90 00 38            540 	mov	dptr,#(_n + 0x0038)
   01C9 74 2B               541 	mov	a,#0x2B
   01CB F0                  542 	movx	@dptr,a
   01CC 90 00 39            543 	mov	dptr,#(_n + 0x0039)
   01CF 74 DD               544 	mov	a,#0xDD
   01D1 F0                  545 	movx	@dptr,a
   01D2 90 00 3A            546 	mov	dptr,#(_n + 0x003a)
   01D5 74 58               547 	mov	a,#0x58
   01D7 F0                  548 	movx	@dptr,a
   01D8 90 00 3B            549 	mov	dptr,#(_n + 0x003b)
   01DB 74 2F               550 	mov	a,#0x2F
   01DD F0                  551 	movx	@dptr,a
   01DE 90 00 3C            552 	mov	dptr,#(_n + 0x003c)
   01E1 74 87               553 	mov	a,#0x87
   01E3 F0                  554 	movx	@dptr,a
   01E4 90 00 3D            555 	mov	dptr,#(_n + 0x003d)
   01E7 74 70               556 	mov	a,#0x70
   01E9 F0                  557 	movx	@dptr,a
   01EA 90 00 3E            558 	mov	dptr,#(_n + 0x003e)
   01ED 74 05               559 	mov	a,#0x05
   01EF F0                  560 	movx	@dptr,a
   01F0 90 00 3F            561 	mov	dptr,#(_n + 0x003f)
   01F3 74 1F               562 	mov	a,#0x1F
   01F5 F0                  563 	movx	@dptr,a
   01F6 90 00 40            564 	mov	dptr,#(_n + 0x0040)
   01F9 74 F8               565 	mov	a,#0xF8
   01FB F0                  566 	movx	@dptr,a
   01FC 90 00 41            567 	mov	dptr,#(_n + 0x0041)
   01FF 74 BD               568 	mov	a,#0xBD
   0201 F0                  569 	movx	@dptr,a
   0202 90 00 42            570 	mov	dptr,#(_n + 0x0042)
   0205 74 0B               571 	mov	a,#0x0B
   0207 F0                  572 	movx	@dptr,a
   0208 90 00 43            573 	mov	dptr,#(_n + 0x0043)
   020B 74 E0               574 	mov	a,#0xE0
   020D F0                  575 	movx	@dptr,a
   020E 90 00 44            576 	mov	dptr,#(_n + 0x0044)
   0211 74 FD               577 	mov	a,#0xFD
   0213 F0                  578 	movx	@dptr,a
   0214 90 00 45            579 	mov	dptr,#(_n + 0x0045)
   0217 74 F1               580 	mov	a,#0xF1
   0219 F0                  581 	movx	@dptr,a
   021A 90 00 46            582 	mov	dptr,#(_n + 0x0046)
   021D 74 81               583 	mov	a,#0x81
   021F F0                  584 	movx	@dptr,a
   0220 90 00 47            585 	mov	dptr,#(_n + 0x0047)
   0223 74 60               586 	mov	a,#0x60
   0225 F0                  587 	movx	@dptr,a
   0226 90 00 48            588 	mov	dptr,#(_n + 0x0048)
   0229 74 BF               589 	mov	a,#0xBF
   022B F0                  590 	movx	@dptr,a
   022C 90 00 49            591 	mov	dptr,#(_n + 0x0049)
   022F 74 D2               592 	mov	a,#0xD2
   0231 F0                  593 	movx	@dptr,a
   0232 90 00 4A            594 	mov	dptr,#(_n + 0x004a)
   0235 74 FE               595 	mov	a,#0xFE
   0237 F0                  596 	movx	@dptr,a
   0238 90 00 4B            597 	mov	dptr,#(_n + 0x004b)
   023B 74 8F               598 	mov	a,#0x8F
   023D F0                  599 	movx	@dptr,a
   023E 90 00 4C            600 	mov	dptr,#(_n + 0x004c)
   0241 74 7B               601 	mov	a,#0x7B
   0243 F0                  602 	movx	@dptr,a
   0244 90 00 4D            603 	mov	dptr,#(_n + 0x004d)
   0247 74 B9               604 	mov	a,#0xB9
   0249 F0                  605 	movx	@dptr,a
   024A 90 00 4E            606 	mov	dptr,#(_n + 0x004e)
   024D 74 A9               607 	mov	a,#0xA9
   024F F0                  608 	movx	@dptr,a
   0250 90 00 4F            609 	mov	dptr,#(_n + 0x004f)
   0253 74 A4               610 	mov	a,#0xA4
   0255 F0                  611 	movx	@dptr,a
   0256 90 00 50            612 	mov	dptr,#(_n + 0x0050)
   0259 74 6A               613 	mov	a,#0x6A
   025B F0                  614 	movx	@dptr,a
   025C 90 00 51            615 	mov	dptr,#(_n + 0x0051)
   025F 74 0A               616 	mov	a,#0x0A
   0261 F0                  617 	movx	@dptr,a
   0262 90 00 52            618 	mov	dptr,#(_n + 0x0052)
   0265 74 A3               619 	mov	a,#0xA3
   0267 F0                  620 	movx	@dptr,a
   0268 90 00 53            621 	mov	dptr,#(_n + 0x0053)
   026B 74 A3               622 	mov	a,#0xA3
   026D F0                  623 	movx	@dptr,a
   026E 90 00 54            624 	mov	dptr,#(_n + 0x0054)
   0271 74 70               625 	mov	a,#0x70
   0273 F0                  626 	movx	@dptr,a
   0274 90 00 55            627 	mov	dptr,#(_n + 0x0055)
   0277 74 22               628 	mov	a,#0x22
   0279 F0                  629 	movx	@dptr,a
   027A 90 00 56            630 	mov	dptr,#(_n + 0x0056)
   027D 74 BF               631 	mov	a,#0xBF
   027F F0                  632 	movx	@dptr,a
   0280 90 00 57            633 	mov	dptr,#(_n + 0x0057)
   0283 74 4C               634 	mov	a,#0x4C
   0285 F0                  635 	movx	@dptr,a
   0286 90 00 58            636 	mov	dptr,#(_n + 0x0058)
   0289 74 1B               637 	mov	a,#0x1B
   028B F0                  638 	movx	@dptr,a
   028C 90 00 59            639 	mov	dptr,#(_n + 0x0059)
   028F 74 B0               640 	mov	a,#0xB0
   0291 F0                  641 	movx	@dptr,a
   0292 90 00 5A            642 	mov	dptr,#(_n + 0x005a)
   0295 74 41               643 	mov	a,#0x41
   0297 F0                  644 	movx	@dptr,a
   0298 90 00 5B            645 	mov	dptr,#(_n + 0x005b)
   029B 74 24               646 	mov	a,#0x24
   029D F0                  647 	movx	@dptr,a
   029E 90 00 5C            648 	mov	dptr,#(_n + 0x005c)
   02A1 74 4C               649 	mov	a,#0x4C
   02A3 F0                  650 	movx	@dptr,a
   02A4 90 00 5D            651 	mov	dptr,#(_n + 0x005d)
   02A7 74 3A               652 	mov	a,#0x3A
   02A9 F0                  653 	movx	@dptr,a
   02AA 90 00 5E            654 	mov	dptr,#(_n + 0x005e)
   02AD 74 08               655 	mov	a,#0x08
   02AF F0                  656 	movx	@dptr,a
   02B0 90 00 5F            657 	mov	dptr,#(_n + 0x005f)
   02B3 74 EC               658 	mov	a,#0xEC
   02B5 F0                  659 	movx	@dptr,a
   02B6 90 00 60            660 	mov	dptr,#(_n + 0x0060)
   02B9 74 F4               661 	mov	a,#0xF4
   02BB F0                  662 	movx	@dptr,a
   02BC 90 00 61            663 	mov	dptr,#(_n + 0x0061)
   02BF 74 91               664 	mov	a,#0x91
   02C1 F0                  665 	movx	@dptr,a
   02C2 90 00 62            666 	mov	dptr,#(_n + 0x0062)
   02C5 74 FF               667 	mov	a,#0xFF
   02C7 F0                  668 	movx	@dptr,a
   02C8 90 00 63            669 	mov	dptr,#(_n + 0x0063)
   02CB 74 93               670 	mov	a,#0x93
   02CD F0                  671 	movx	@dptr,a
   02CE 90 00 64            672 	mov	dptr,#(_n + 0x0064)
   02D1 74 8D               673 	mov	a,#0x8D
   02D3 F0                  674 	movx	@dptr,a
   02D4 90 00 65            675 	mov	dptr,#(_n + 0x0065)
   02D7 74 FC               676 	mov	a,#0xFC
   02D9 F0                  677 	movx	@dptr,a
   02DA 90 00 66            678 	mov	dptr,#(_n + 0x0066)
   02DD 74 FA               679 	mov	a,#0xFA
   02DF F0                  680 	movx	@dptr,a
   02E0 90 00 67            681 	mov	dptr,#(_n + 0x0067)
   02E3 74 4C               682 	mov	a,#0x4C
   02E5 F0                  683 	movx	@dptr,a
   02E6 90 00 68            684 	mov	dptr,#(_n + 0x0068)
   02E9 74 26               685 	mov	a,#0x26
   02EB F0                  686 	movx	@dptr,a
   02EC 90 00 69            687 	mov	dptr,#(_n + 0x0069)
   02EF 74 2D               688 	mov	a,#0x2D
   02F1 F0                  689 	movx	@dptr,a
   02F2 90 00 6A            690 	mov	dptr,#(_n + 0x006a)
   02F5 74 D2               691 	mov	a,#0xD2
   02F7 F0                  692 	movx	@dptr,a
   02F8 90 00 6B            693 	mov	dptr,#(_n + 0x006b)
   02FB 74 E9               694 	mov	a,#0xE9
   02FD F0                  695 	movx	@dptr,a
   02FE 90 00 6C            696 	mov	dptr,#(_n + 0x006c)
   0301 74 FC               697 	mov	a,#0xFC
   0303 F0                  698 	movx	@dptr,a
   0304 90 00 6D            699 	mov	dptr,#(_n + 0x006d)
   0307 74 76               700 	mov	a,#0x76
   0309 F0                  701 	movx	@dptr,a
   030A 90 00 6E            702 	mov	dptr,#(_n + 0x006e)
   030D 74 B1               703 	mov	a,#0xB1
   030F F0                  704 	movx	@dptr,a
   0310 90 00 6F            705 	mov	dptr,#(_n + 0x006f)
   0313 74 67               706 	mov	a,#0x67
   0315 F0                  707 	movx	@dptr,a
   0316 90 00 70            708 	mov	dptr,#(_n + 0x0070)
   0319 74 5E               709 	mov	a,#0x5E
   031B F0                  710 	movx	@dptr,a
   031C 90 00 71            711 	mov	dptr,#(_n + 0x0071)
   031F 74 24               712 	mov	a,#0x24
   0321 F0                  713 	movx	@dptr,a
   0322 90 00 72            714 	mov	dptr,#(_n + 0x0072)
   0325 74 9E               715 	mov	a,#0x9E
   0327 F0                  716 	movx	@dptr,a
   0328 90 00 73            717 	mov	dptr,#(_n + 0x0073)
   032B 74 31               718 	mov	a,#0x31
   032D F0                  719 	movx	@dptr,a
   032E 90 00 74            720 	mov	dptr,#(_n + 0x0074)
   0331 74 66               721 	mov	a,#0x66
   0333 F0                  722 	movx	@dptr,a
   0334 90 00 75            723 	mov	dptr,#(_n + 0x0075)
   0337 74 5D               724 	mov	a,#0x5D
   0339 F0                  725 	movx	@dptr,a
   033A 90 00 76            726 	mov	dptr,#(_n + 0x0076)
   033D 74 98               727 	mov	a,#0x98
   033F F0                  728 	movx	@dptr,a
   0340 90 00 77            729 	mov	dptr,#(_n + 0x0077)
   0343 74 4C               730 	mov	a,#0x4C
   0345 F0                  731 	movx	@dptr,a
   0346 90 00 78            732 	mov	dptr,#(_n + 0x0078)
   0349 74 0D               733 	mov	a,#0x0D
   034B F0                  734 	movx	@dptr,a
   034C 90 00 79            735 	mov	dptr,#(_n + 0x0079)
   034F 74 79               736 	mov	a,#0x79
   0351 F0                  737 	movx	@dptr,a
   0352 90 00 7A            738 	mov	dptr,#(_n + 0x007a)
   0355 74 81               739 	mov	a,#0x81
   0357 F0                  740 	movx	@dptr,a
   0358 90 00 7B            741 	mov	dptr,#(_n + 0x007b)
   035B 74 76               742 	mov	a,#0x76
   035D F0                  743 	movx	@dptr,a
   035E 90 00 7C            744 	mov	dptr,#(_n + 0x007c)
   0361 74 AC               745 	mov	a,#0xAC
   0363 F0                  746 	movx	@dptr,a
   0364 90 00 7D            747 	mov	dptr,#(_n + 0x007d)
   0367 74 1D               748 	mov	a,#0x1D
   0369 F0                  749 	movx	@dptr,a
   036A 90 00 7E            750 	mov	dptr,#(_n + 0x007e)
   036D 74 E2               751 	mov	a,#0xE2
   036F F0                  752 	movx	@dptr,a
   0370 90 00 7F            753 	mov	dptr,#(_n + 0x007f)
   0373 74 CA               754 	mov	a,#0xCA
   0375 F0                  755 	movx	@dptr,a
                            756 ;	main_montgomery.c:11: volatile __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0376 90 00 80            757 	mov	dptr,#_a
   0379 74 FF               758 	mov	a,#0xFF
   037B F0                  759 	movx	@dptr,a
   037C 90 00 81            760 	mov	dptr,#(_a + 0x0001)
   037F 74 7F               761 	mov	a,#0x7F
   0381 F0                  762 	movx	@dptr,a
   0382 90 00 82            763 	mov	dptr,#(_a + 0x0002)
   0385 74 14               764 	mov	a,#0x14
   0387 F0                  765 	movx	@dptr,a
   0388 90 00 83            766 	mov	dptr,#(_a + 0x0003)
   038B 74 64               767 	mov	a,#0x64
   038D F0                  768 	movx	@dptr,a
   038E 90 00 84            769 	mov	dptr,#(_a + 0x0004)
   0391 74 47               770 	mov	a,#0x47
   0393 F0                  771 	movx	@dptr,a
   0394 90 00 85            772 	mov	dptr,#(_a + 0x0005)
   0397 74 68               773 	mov	a,#0x68
   0399 F0                  774 	movx	@dptr,a
   039A 90 00 86            775 	mov	dptr,#(_a + 0x0006)
   039D 74 C2               776 	mov	a,#0xC2
   039F F0                  777 	movx	@dptr,a
   03A0 90 00 87            778 	mov	dptr,#(_a + 0x0007)
   03A3 74 B6               779 	mov	a,#0xB6
   03A5 F0                  780 	movx	@dptr,a
   03A6 90 00 88            781 	mov	dptr,#(_a + 0x0008)
   03A9 74 27               782 	mov	a,#0x27
   03AB F0                  783 	movx	@dptr,a
   03AC 90 00 89            784 	mov	dptr,#(_a + 0x0009)
   03AF 74 32               785 	mov	a,#0x32
   03B1 F0                  786 	movx	@dptr,a
   03B2 90 00 8A            787 	mov	dptr,#(_a + 0x000a)
   03B5 74 63               788 	mov	a,#0x63
   03B7 F0                  789 	movx	@dptr,a
   03B8 90 00 8B            790 	mov	dptr,#(_a + 0x000b)
   03BB 74 2C               791 	mov	a,#0x2C
   03BD F0                  792 	movx	@dptr,a
   03BE 90 00 8C            793 	mov	dptr,#(_a + 0x000c)
   03C1 74 B0               794 	mov	a,#0xB0
   03C3 F0                  795 	movx	@dptr,a
   03C4 90 00 8D            796 	mov	dptr,#(_a + 0x000d)
   03C7 74 C3               797 	mov	a,#0xC3
   03C9 F0                  798 	movx	@dptr,a
   03CA 90 00 8E            799 	mov	dptr,#(_a + 0x000e)
   03CD 74 95               800 	mov	a,#0x95
   03CF F0                  801 	movx	@dptr,a
   03D0 90 00 8F            802 	mov	dptr,#(_a + 0x000f)
   03D3 74 13               803 	mov	a,#0x13
   03D5 F0                  804 	movx	@dptr,a
   03D6 90 00 90            805 	mov	dptr,#(_a + 0x0010)
   03D9 74 C5               806 	mov	a,#0xC5
   03DB F0                  807 	movx	@dptr,a
   03DC 90 00 91            808 	mov	dptr,#(_a + 0x0011)
   03DF 74 7E               809 	mov	a,#0x7E
   03E1 F0                  810 	movx	@dptr,a
   03E2 90 00 92            811 	mov	dptr,#(_a + 0x0012)
   03E5 74 17               812 	mov	a,#0x17
   03E7 F0                  813 	movx	@dptr,a
   03E8 90 00 93            814 	mov	dptr,#(_a + 0x0013)
   03EB 74 22               815 	mov	a,#0x22
   03ED F0                  816 	movx	@dptr,a
   03EE 90 00 94            817 	mov	dptr,#(_a + 0x0014)
   03F1 74 F3               818 	mov	a,#0xF3
   03F3 F0                  819 	movx	@dptr,a
   03F4 90 00 95            820 	mov	dptr,#(_a + 0x0015)
   03F7 74 7C               821 	mov	a,#0x7C
   03F9 F0                  822 	movx	@dptr,a
   03FA 90 00 96            823 	mov	dptr,#(_a + 0x0016)
   03FD 74 2D               824 	mov	a,#0x2D
   03FF F0                  825 	movx	@dptr,a
   0400 90 00 97            826 	mov	dptr,#(_a + 0x0017)
   0403 74 E8               827 	mov	a,#0xE8
   0405 F0                  828 	movx	@dptr,a
   0406 90 00 98            829 	mov	dptr,#(_a + 0x0018)
   0409 74 13               830 	mov	a,#0x13
   040B F0                  831 	movx	@dptr,a
   040C 90 00 99            832 	mov	dptr,#(_a + 0x0019)
   040F 74 47               833 	mov	a,#0x47
   0411 F0                  834 	movx	@dptr,a
   0412 90 00 9A            835 	mov	dptr,#(_a + 0x001a)
   0415 74 5E               836 	mov	a,#0x5E
   0417 F0                  837 	movx	@dptr,a
   0418 90 00 9B            838 	mov	dptr,#(_a + 0x001b)
   041B 74 15               839 	mov	a,#0x15
   041D F0                  840 	movx	@dptr,a
   041E 90 00 9C            841 	mov	dptr,#(_a + 0x001c)
   0421 74 4E               842 	mov	a,#0x4E
   0423 F0                  843 	movx	@dptr,a
   0424 90 00 9D            844 	mov	dptr,#(_a + 0x001d)
   0427 74 EF               845 	mov	a,#0xEF
   0429 F0                  846 	movx	@dptr,a
   042A 90 00 9E            847 	mov	dptr,#(_a + 0x001e)
   042D 74 83               848 	mov	a,#0x83
   042F F0                  849 	movx	@dptr,a
   0430 90 00 9F            850 	mov	dptr,#(_a + 0x001f)
   0433 74 81               851 	mov	a,#0x81
   0435 F0                  852 	movx	@dptr,a
   0436 90 00 A0            853 	mov	dptr,#(_a + 0x0020)
   0439 74 DF               854 	mov	a,#0xDF
   043B F0                  855 	movx	@dptr,a
   043C 90 00 A1            856 	mov	dptr,#(_a + 0x0021)
   043F 74 C3               857 	mov	a,#0xC3
   0441 F0                  858 	movx	@dptr,a
   0442 90 00 A2            859 	mov	dptr,#(_a + 0x0022)
   0445 74 47               860 	mov	a,#0x47
   0447 F0                  861 	movx	@dptr,a
   0448 90 00 A3            862 	mov	dptr,#(_a + 0x0023)
   044B 74 D3               863 	mov	a,#0xD3
   044D F0                  864 	movx	@dptr,a
   044E 90 00 A4            865 	mov	dptr,#(_a + 0x0024)
   0451 74 60               866 	mov	a,#0x60
   0453 F0                  867 	movx	@dptr,a
   0454 90 00 A5            868 	mov	dptr,#(_a + 0x0025)
   0457 74 BB               869 	mov	a,#0xBB
   0459 F0                  870 	movx	@dptr,a
   045A 90 00 A6            871 	mov	dptr,#(_a + 0x0026)
   045D 74 8B               872 	mov	a,#0x8B
   045F F0                  873 	movx	@dptr,a
   0460 90 00 A7            874 	mov	dptr,#(_a + 0x0027)
   0463 74 3E               875 	mov	a,#0x3E
   0465 F0                  876 	movx	@dptr,a
   0466 90 00 A8            877 	mov	dptr,#(_a + 0x0028)
   0469 74 B6               878 	mov	a,#0xB6
   046B F0                  879 	movx	@dptr,a
   046C 90 00 A9            880 	mov	dptr,#(_a + 0x0029)
   046F 74 35               881 	mov	a,#0x35
   0471 F0                  882 	movx	@dptr,a
   0472 90 00 AA            883 	mov	dptr,#(_a + 0x002a)
   0475 74 B1               884 	mov	a,#0xB1
   0477 F0                  885 	movx	@dptr,a
   0478 90 00 AB            886 	mov	dptr,#(_a + 0x002b)
   047B 74 6E               887 	mov	a,#0x6E
   047D F0                  888 	movx	@dptr,a
   047E 90 00 AC            889 	mov	dptr,#(_a + 0x002c)
   0481 74 D1               890 	mov	a,#0xD1
   0483 F0                  891 	movx	@dptr,a
   0484 90 00 AD            892 	mov	dptr,#(_a + 0x002d)
   0487 74 D5               893 	mov	a,#0xD5
   0489 F0                  894 	movx	@dptr,a
   048A 90 00 AE            895 	mov	dptr,#(_a + 0x002e)
   048D 74 DA               896 	mov	a,#0xDA
   048F F0                  897 	movx	@dptr,a
   0490 90 00 AF            898 	mov	dptr,#(_a + 0x002f)
   0493 74 6F               899 	mov	a,#0x6F
   0495 F0                  900 	movx	@dptr,a
   0496 90 00 B0            901 	mov	dptr,#(_a + 0x0030)
   0499 74 28               902 	mov	a,#0x28
   049B F0                  903 	movx	@dptr,a
   049C 90 00 B1            904 	mov	dptr,#(_a + 0x0031)
   049F 74 16               905 	mov	a,#0x16
   04A1 F0                  906 	movx	@dptr,a
   04A2 90 00 B2            907 	mov	dptr,#(_a + 0x0032)
   04A5 74 2C               908 	mov	a,#0x2C
   04A7 F0                  909 	movx	@dptr,a
   04A8 90 00 B3            910 	mov	dptr,#(_a + 0x0033)
   04AB 74 74               911 	mov	a,#0x74
   04AD F0                  912 	movx	@dptr,a
   04AE 90 00 B4            913 	mov	dptr,#(_a + 0x0034)
   04B1 74 36               914 	mov	a,#0x36
   04B3 F0                  915 	movx	@dptr,a
   04B4 90 00 B5            916 	mov	dptr,#(_a + 0x0035)
   04B7 74 F9               917 	mov	a,#0xF9
   04B9 F0                  918 	movx	@dptr,a
   04BA 90 00 B6            919 	mov	dptr,#(_a + 0x0036)
   04BD 74 04               920 	mov	a,#0x04
   04BF F0                  921 	movx	@dptr,a
   04C0 90 00 B7            922 	mov	dptr,#(_a + 0x0037)
   04C3 74 79               923 	mov	a,#0x79
   04C5 F0                  924 	movx	@dptr,a
   04C6 90 00 B8            925 	mov	dptr,#(_a + 0x0038)
   04C9 74 F9               926 	mov	a,#0xF9
   04CB F0                  927 	movx	@dptr,a
   04CC 90 00 B9            928 	mov	dptr,#(_a + 0x0039)
   04CF 74 76               929 	mov	a,#0x76
   04D1 F0                  930 	movx	@dptr,a
   04D2 90 00 BA            931 	mov	dptr,#(_a + 0x003a)
   04D5 74 E2               932 	mov	a,#0xE2
   04D7 F0                  933 	movx	@dptr,a
   04D8 90 00 BB            934 	mov	dptr,#(_a + 0x003b)
   04DB 74 CC               935 	mov	a,#0xCC
   04DD F0                  936 	movx	@dptr,a
   04DE 90 00 BC            937 	mov	dptr,#(_a + 0x003c)
   04E1 74 A4               938 	mov	a,#0xA4
   04E3 F0                  939 	movx	@dptr,a
   04E4 90 00 BD            940 	mov	dptr,#(_a + 0x003d)
   04E7 74 82               941 	mov	a,#0x82
   04E9 F0                  942 	movx	@dptr,a
   04EA 90 00 BE            943 	mov	dptr,#(_a + 0x003e)
   04ED 74 A7               944 	mov	a,#0xA7
   04EF F0                  945 	movx	@dptr,a
   04F0 90 00 BF            946 	mov	dptr,#(_a + 0x003f)
   04F3 74 A4               947 	mov	a,#0xA4
   04F5 F0                  948 	movx	@dptr,a
   04F6 90 00 C0            949 	mov	dptr,#(_a + 0x0040)
   04F9 74 68               950 	mov	a,#0x68
   04FB F0                  951 	movx	@dptr,a
   04FC 90 00 C1            952 	mov	dptr,#(_a + 0x0041)
   04FF 74 4E               953 	mov	a,#0x4E
   0501 F0                  954 	movx	@dptr,a
   0502 90 00 C2            955 	mov	dptr,#(_a + 0x0042)
   0505 74 24               956 	mov	a,#0x24
   0507 F0                  957 	movx	@dptr,a
   0508 90 00 C3            958 	mov	dptr,#(_a + 0x0043)
   050B 74 A6               959 	mov	a,#0xA6
   050D F0                  960 	movx	@dptr,a
   050E 90 00 C4            961 	mov	dptr,#(_a + 0x0044)
   0511 74 C1               962 	mov	a,#0xC1
   0513 F0                  963 	movx	@dptr,a
   0514 90 00 C5            964 	mov	dptr,#(_a + 0x0045)
   0517 74 58               965 	mov	a,#0x58
   0519 F0                  966 	movx	@dptr,a
   051A 90 00 C6            967 	mov	dptr,#(_a + 0x0046)
   051D 74 68               968 	mov	a,#0x68
   051F F0                  969 	movx	@dptr,a
   0520 90 00 C7            970 	mov	dptr,#(_a + 0x0047)
   0523 74 24               971 	mov	a,#0x24
   0525 F0                  972 	movx	@dptr,a
   0526 90 00 C8            973 	mov	dptr,#(_a + 0x0048)
   0529 74 58               974 	mov	a,#0x58
   052B F0                  975 	movx	@dptr,a
   052C 90 00 C9            976 	mov	dptr,#(_a + 0x0049)
   052F 74 DC               977 	mov	a,#0xDC
   0531 F0                  978 	movx	@dptr,a
   0532 90 00 CA            979 	mov	dptr,#(_a + 0x004a)
   0535 74 14               980 	mov	a,#0x14
   0537 F0                  981 	movx	@dptr,a
   0538 90 00 CB            982 	mov	dptr,#(_a + 0x004b)
   053B 74 F9               983 	mov	a,#0xF9
   053D F0                  984 	movx	@dptr,a
   053E 90 00 CC            985 	mov	dptr,#(_a + 0x004c)
   0541 74 FF               986 	mov	a,#0xFF
   0543 F0                  987 	movx	@dptr,a
   0544 90 00 CD            988 	mov	dptr,#(_a + 0x004d)
   0547 74 4D               989 	mov	a,#0x4D
   0549 F0                  990 	movx	@dptr,a
   054A 90 00 CE            991 	mov	dptr,#(_a + 0x004e)
   054D 74 A1               992 	mov	a,#0xA1
   054F F0                  993 	movx	@dptr,a
   0550 90 00 CF            994 	mov	dptr,#(_a + 0x004f)
   0553 74 EF               995 	mov	a,#0xEF
   0555 F0                  996 	movx	@dptr,a
   0556 90 00 D0            997 	mov	dptr,#(_a + 0x0050)
   0559 74 53               998 	mov	a,#0x53
   055B F0                  999 	movx	@dptr,a
   055C 90 00 D1           1000 	mov	dptr,#(_a + 0x0051)
   055F 74 A3              1001 	mov	a,#0xA3
   0561 F0                 1002 	movx	@dptr,a
   0562 90 00 D2           1003 	mov	dptr,#(_a + 0x0052)
   0565 74 C2              1004 	mov	a,#0xC2
   0567 F0                 1005 	movx	@dptr,a
   0568 90 00 D3           1006 	mov	dptr,#(_a + 0x0053)
   056B 74 84              1007 	mov	a,#0x84
   056D F0                 1008 	movx	@dptr,a
   056E 90 00 D4           1009 	mov	dptr,#(_a + 0x0054)
   0571 74 1B              1010 	mov	a,#0x1B
   0573 F0                 1011 	movx	@dptr,a
   0574 90 00 D5           1012 	mov	dptr,#(_a + 0x0055)
   0577 74 81              1013 	mov	a,#0x81
   0579 F0                 1014 	movx	@dptr,a
   057A 90 00 D6           1015 	mov	dptr,#(_a + 0x0056)
   057D 74 16              1016 	mov	a,#0x16
   057F F0                 1017 	movx	@dptr,a
   0580 90 00 D7           1018 	mov	dptr,#(_a + 0x0057)
   0583 74 6C              1019 	mov	a,#0x6C
   0585 F0                 1020 	movx	@dptr,a
   0586 90 00 D8           1021 	mov	dptr,#(_a + 0x0058)
   0589 74 DD              1022 	mov	a,#0xDD
   058B F0                 1023 	movx	@dptr,a
   058C 90 00 D9           1024 	mov	dptr,#(_a + 0x0059)
   058F 74 E3              1025 	mov	a,#0xE3
   0591 F0                 1026 	movx	@dptr,a
   0592 90 00 DA           1027 	mov	dptr,#(_a + 0x005a)
   0595 74 DB              1028 	mov	a,#0xDB
   0597 F0                 1029 	movx	@dptr,a
   0598 90 00 DB           1030 	mov	dptr,#(_a + 0x005b)
   059B 74 A8              1031 	mov	a,#0xA8
   059D F0                 1032 	movx	@dptr,a
   059E 90 00 DC           1033 	mov	dptr,#(_a + 0x005c)
   05A1 74 03              1034 	mov	a,#0x03
   05A3 F0                 1035 	movx	@dptr,a
   05A4 90 00 DD           1036 	mov	dptr,#(_a + 0x005d)
   05A7 74 8F              1037 	mov	a,#0x8F
   05A9 F0                 1038 	movx	@dptr,a
   05AA 90 00 DE           1039 	mov	dptr,#(_a + 0x005e)
   05AD 74 F2              1040 	mov	a,#0xF2
   05AF F0                 1041 	movx	@dptr,a
   05B0 90 00 DF           1042 	mov	dptr,#(_a + 0x005f)
   05B3 74 31              1043 	mov	a,#0x31
   05B5 F0                 1044 	movx	@dptr,a
   05B6 90 00 E0           1045 	mov	dptr,#(_a + 0x0060)
   05B9 74 FD              1046 	mov	a,#0xFD
   05BB F0                 1047 	movx	@dptr,a
   05BC 90 00 E1           1048 	mov	dptr,#(_a + 0x0061)
   05BF 74 94              1049 	mov	a,#0x94
   05C1 F0                 1050 	movx	@dptr,a
   05C2 90 00 E2           1051 	mov	dptr,#(_a + 0x0062)
   05C5 74 5D              1052 	mov	a,#0x5D
   05C7 F0                 1053 	movx	@dptr,a
   05C8 90 00 E3           1054 	mov	dptr,#(_a + 0x0063)
   05CB 74 26              1055 	mov	a,#0x26
   05CD F0                 1056 	movx	@dptr,a
   05CE 90 00 E4           1057 	mov	dptr,#(_a + 0x0064)
   05D1 74 13              1058 	mov	a,#0x13
   05D3 F0                 1059 	movx	@dptr,a
   05D4 90 00 E5           1060 	mov	dptr,#(_a + 0x0065)
   05D7 74 C6              1061 	mov	a,#0xC6
   05D9 F0                 1062 	movx	@dptr,a
   05DA 90 00 E6           1063 	mov	dptr,#(_a + 0x0066)
   05DD 74 68              1064 	mov	a,#0x68
   05DF F0                 1065 	movx	@dptr,a
   05E0 90 00 E7           1066 	mov	dptr,#(_a + 0x0067)
   05E3 74 B4              1067 	mov	a,#0xB4
   05E5 F0                 1068 	movx	@dptr,a
   05E6 90 00 E8           1069 	mov	dptr,#(_a + 0x0068)
   05E9 74 0D              1070 	mov	a,#0x0D
   05EB F0                 1071 	movx	@dptr,a
   05EC 90 00 E9           1072 	mov	dptr,#(_a + 0x0069)
   05EF 74 CD              1073 	mov	a,#0xCD
   05F1 F0                 1074 	movx	@dptr,a
   05F2 90 00 EA           1075 	mov	dptr,#(_a + 0x006a)
   05F5 74 F1              1076 	mov	a,#0xF1
   05F7 F0                 1077 	movx	@dptr,a
   05F8 90 00 EB           1078 	mov	dptr,#(_a + 0x006b)
   05FB 74 B8              1079 	mov	a,#0xB8
   05FD F0                 1080 	movx	@dptr,a
   05FE 90 00 EC           1081 	mov	dptr,#(_a + 0x006c)
   0601 74 66              1082 	mov	a,#0x66
   0603 F0                 1083 	movx	@dptr,a
   0604 90 00 ED           1084 	mov	dptr,#(_a + 0x006d)
   0607 74 0D              1085 	mov	a,#0x0D
   0609 F0                 1086 	movx	@dptr,a
   060A 90 00 EE           1087 	mov	dptr,#(_a + 0x006e)
   060D 74 5D              1088 	mov	a,#0x5D
   060F F0                 1089 	movx	@dptr,a
   0610 90 00 EF           1090 	mov	dptr,#(_a + 0x006f)
   0613 74 3B              1091 	mov	a,#0x3B
   0615 F0                 1092 	movx	@dptr,a
   0616 90 00 F0           1093 	mov	dptr,#(_a + 0x0070)
   0619 74 2F              1094 	mov	a,#0x2F
   061B F0                 1095 	movx	@dptr,a
   061C 90 00 F1           1096 	mov	dptr,#(_a + 0x0071)
   061F 74 C4              1097 	mov	a,#0xC4
   0621 F0                 1098 	movx	@dptr,a
   0622 90 00 F2           1099 	mov	dptr,#(_a + 0x0072)
   0625 74 4A              1100 	mov	a,#0x4A
   0627 F0                 1101 	movx	@dptr,a
   0628 90 00 F3           1102 	mov	dptr,#(_a + 0x0073)
   062B 74 D1              1103 	mov	a,#0xD1
   062D F0                 1104 	movx	@dptr,a
   062E 90 00 F4           1105 	mov	dptr,#(_a + 0x0074)
   0631 74 0B              1106 	mov	a,#0x0B
   0633 F0                 1107 	movx	@dptr,a
   0634 90 00 F5           1108 	mov	dptr,#(_a + 0x0075)
   0637 74 36              1109 	mov	a,#0x36
   0639 F0                 1110 	movx	@dptr,a
   063A 90 00 F6           1111 	mov	dptr,#(_a + 0x0076)
   063D 74 C6              1112 	mov	a,#0xC6
   063F F0                 1113 	movx	@dptr,a
   0640 90 00 F7           1114 	mov	dptr,#(_a + 0x0077)
   0643 74 10              1115 	mov	a,#0x10
   0645 F0                 1116 	movx	@dptr,a
   0646 90 00 F8           1117 	mov	dptr,#(_a + 0x0078)
   0649 74 1A              1118 	mov	a,#0x1A
   064B F0                 1119 	movx	@dptr,a
   064C 90 00 F9           1120 	mov	dptr,#(_a + 0x0079)
   064F 74 2F              1121 	mov	a,#0x2F
   0651 F0                 1122 	movx	@dptr,a
   0652 90 00 FA           1123 	mov	dptr,#(_a + 0x007a)
   0655 74 72              1124 	mov	a,#0x72
   0657 F0                 1125 	movx	@dptr,a
   0658 90 00 FB           1126 	mov	dptr,#(_a + 0x007b)
   065B 74 D1              1127 	mov	a,#0xD1
   065D F0                 1128 	movx	@dptr,a
   065E 90 00 FC           1129 	mov	dptr,#(_a + 0x007c)
   0661 74 BB              1130 	mov	a,#0xBB
   0663 F0                 1131 	movx	@dptr,a
   0664 90 00 FD           1132 	mov	dptr,#(_a + 0x007d)
   0667 74 15              1133 	mov	a,#0x15
   0669 F0                 1134 	movx	@dptr,a
   066A 90 00 FE           1135 	mov	dptr,#(_a + 0x007e)
   066D 74 29              1136 	mov	a,#0x29
   066F F0                 1137 	movx	@dptr,a
   0670 90 00 FF           1138 	mov	dptr,#(_a + 0x007f)
   0673 74 CA              1139 	mov	a,#0xCA
   0675 F0                 1140 	movx	@dptr,a
                           1141 ;	main_montgomery.c:12: volatile __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0676 90 01 00           1142 	mov	dptr,#_b
   0679 74 E1              1143 	mov	a,#0xE1
   067B F0                 1144 	movx	@dptr,a
   067C 90 01 01           1145 	mov	dptr,#(_b + 0x0001)
   067F 74 8A              1146 	mov	a,#0x8A
   0681 F0                 1147 	movx	@dptr,a
   0682 90 01 02           1148 	mov	dptr,#(_b + 0x0002)
   0685 74 03              1149 	mov	a,#0x03
   0687 F0                 1150 	movx	@dptr,a
   0688 90 01 03           1151 	mov	dptr,#(_b + 0x0003)
   068B 74 DB              1152 	mov	a,#0xDB
   068D F0                 1153 	movx	@dptr,a
   068E 90 01 04           1154 	mov	dptr,#(_b + 0x0004)
   0691 74 E0              1155 	mov	a,#0xE0
   0693 F0                 1156 	movx	@dptr,a
   0694 90 01 05           1157 	mov	dptr,#(_b + 0x0005)
   0697 74 D9              1158 	mov	a,#0xD9
   0699 F0                 1159 	movx	@dptr,a
   069A 90 01 06           1160 	mov	dptr,#(_b + 0x0006)
   069D 74 F6              1161 	mov	a,#0xF6
   069F F0                 1162 	movx	@dptr,a
   06A0 90 01 07           1163 	mov	dptr,#(_b + 0x0007)
   06A3 74 55              1164 	mov	a,#0x55
   06A5 F0                 1165 	movx	@dptr,a
   06A6 90 01 08           1166 	mov	dptr,#(_b + 0x0008)
   06A9 74 B6              1167 	mov	a,#0xB6
   06AB F0                 1168 	movx	@dptr,a
   06AC 90 01 09           1169 	mov	dptr,#(_b + 0x0009)
   06AF 74 27              1170 	mov	a,#0x27
   06B1 F0                 1171 	movx	@dptr,a
   06B2 90 01 0A           1172 	mov	dptr,#(_b + 0x000a)
   06B5 74 0A              1173 	mov	a,#0x0A
   06B7 F0                 1174 	movx	@dptr,a
   06B8 90 01 0B           1175 	mov	dptr,#(_b + 0x000b)
   06BB 74 28              1176 	mov	a,#0x28
   06BD F0                 1177 	movx	@dptr,a
   06BE 90 01 0C           1178 	mov	dptr,#(_b + 0x000c)
   06C1 74 F0              1179 	mov	a,#0xF0
   06C3 F0                 1180 	movx	@dptr,a
   06C4 90 01 0D           1181 	mov	dptr,#(_b + 0x000d)
   06C7 74 5E              1182 	mov	a,#0x5E
   06C9 F0                 1183 	movx	@dptr,a
   06CA 90 01 0E           1184 	mov	dptr,#(_b + 0x000e)
   06CD 74 74              1185 	mov	a,#0x74
   06CF F0                 1186 	movx	@dptr,a
   06D0 90 01 0F           1187 	mov	dptr,#(_b + 0x000f)
   06D3 74 7F              1188 	mov	a,#0x7F
   06D5 F0                 1189 	movx	@dptr,a
   06D6 90 01 10           1190 	mov	dptr,#(_b + 0x0010)
   06D9 74 E6              1191 	mov	a,#0xE6
   06DB F0                 1192 	movx	@dptr,a
   06DC 90 01 11           1193 	mov	dptr,#(_b + 0x0011)
   06DF 74 9F              1194 	mov	a,#0x9F
   06E1 F0                 1195 	movx	@dptr,a
   06E2 90 01 12           1196 	mov	dptr,#(_b + 0x0012)
   06E5 74 4C              1197 	mov	a,#0x4C
   06E7 F0                 1198 	movx	@dptr,a
   06E8 90 01 13           1199 	mov	dptr,#(_b + 0x0013)
   06EB 74 FB              1200 	mov	a,#0xFB
   06ED F0                 1201 	movx	@dptr,a
   06EE 90 01 14           1202 	mov	dptr,#(_b + 0x0014)
   06F1 74 26              1203 	mov	a,#0x26
   06F3 F0                 1204 	movx	@dptr,a
   06F4 90 01 15           1205 	mov	dptr,#(_b + 0x0015)
   06F7 74 8C              1206 	mov	a,#0x8C
   06F9 F0                 1207 	movx	@dptr,a
   06FA 90 01 16           1208 	mov	dptr,#(_b + 0x0016)
   06FD 74 9E              1209 	mov	a,#0x9E
   06FF F0                 1210 	movx	@dptr,a
   0700 90 01 17           1211 	mov	dptr,#(_b + 0x0017)
   0703 74 87              1212 	mov	a,#0x87
   0705 F0                 1213 	movx	@dptr,a
   0706 90 01 18           1214 	mov	dptr,#(_b + 0x0018)
   0709 74 83              1215 	mov	a,#0x83
   070B F0                 1216 	movx	@dptr,a
   070C 90 01 19           1217 	mov	dptr,#(_b + 0x0019)
   070F 74 22              1218 	mov	a,#0x22
   0711 F0                 1219 	movx	@dptr,a
   0712 90 01 1A           1220 	mov	dptr,#(_b + 0x001a)
   0715 74 F2              1221 	mov	a,#0xF2
   0717 F0                 1222 	movx	@dptr,a
   0718 90 01 1B           1223 	mov	dptr,#(_b + 0x001b)
   071B 74 75              1224 	mov	a,#0x75
   071D F0                 1225 	movx	@dptr,a
   071E 90 01 1C           1226 	mov	dptr,#(_b + 0x001c)
   0721 74 D2              1227 	mov	a,#0xD2
   0723 F0                 1228 	movx	@dptr,a
   0724 90 01 1D           1229 	mov	dptr,#(_b + 0x001d)
   0727 74 B3              1230 	mov	a,#0xB3
   0729 F0                 1231 	movx	@dptr,a
   072A 90 01 1E           1232 	mov	dptr,#(_b + 0x001e)
   072D 74 61              1233 	mov	a,#0x61
   072F F0                 1234 	movx	@dptr,a
   0730 90 01 1F           1235 	mov	dptr,#(_b + 0x001f)
   0733 74 A2              1236 	mov	a,#0xA2
   0735 F0                 1237 	movx	@dptr,a
   0736 90 01 20           1238 	mov	dptr,#(_b + 0x0020)
   0739 74 9D              1239 	mov	a,#0x9D
   073B F0                 1240 	movx	@dptr,a
   073C 90 01 21           1241 	mov	dptr,#(_b + 0x0021)
   073F 74 50              1242 	mov	a,#0x50
   0741 F0                 1243 	movx	@dptr,a
   0742 90 01 22           1244 	mov	dptr,#(_b + 0x0022)
   0745 74 71              1245 	mov	a,#0x71
   0747 F0                 1246 	movx	@dptr,a
   0748 90 01 23           1247 	mov	dptr,#(_b + 0x0023)
   074B 74 5E              1248 	mov	a,#0x5E
   074D F0                 1249 	movx	@dptr,a
   074E 90 01 24           1250 	mov	dptr,#(_b + 0x0024)
   0751 74 C9              1251 	mov	a,#0xC9
   0753 F0                 1252 	movx	@dptr,a
   0754 90 01 25           1253 	mov	dptr,#(_b + 0x0025)
   0757 74 DD              1254 	mov	a,#0xDD
   0759 F0                 1255 	movx	@dptr,a
   075A 90 01 26           1256 	mov	dptr,#(_b + 0x0026)
   075D 74 DD              1257 	mov	a,#0xDD
   075F F0                 1258 	movx	@dptr,a
   0760 90 01 27           1259 	mov	dptr,#(_b + 0x0027)
   0763 74 74              1260 	mov	a,#0x74
   0765 F0                 1261 	movx	@dptr,a
   0766 90 01 28           1262 	mov	dptr,#(_b + 0x0028)
   0769 74 0A              1263 	mov	a,#0x0A
   076B F0                 1264 	movx	@dptr,a
   076C 90 01 29           1265 	mov	dptr,#(_b + 0x0029)
   076F 74 3C              1266 	mov	a,#0x3C
   0771 F0                 1267 	movx	@dptr,a
   0772 90 01 2A           1268 	mov	dptr,#(_b + 0x002a)
   0775 74 C0              1269 	mov	a,#0xC0
   0777 F0                 1270 	movx	@dptr,a
   0778 90 01 2B           1271 	mov	dptr,#(_b + 0x002b)
   077B 74 30              1272 	mov	a,#0x30
   077D F0                 1273 	movx	@dptr,a
   077E 90 01 2C           1274 	mov	dptr,#(_b + 0x002c)
   0781 74 3E              1275 	mov	a,#0x3E
   0783 F0                 1276 	movx	@dptr,a
   0784 90 01 2D           1277 	mov	dptr,#(_b + 0x002d)
   0787 74 E5              1278 	mov	a,#0xE5
   0789 F0                 1279 	movx	@dptr,a
   078A 90 01 2E           1280 	mov	dptr,#(_b + 0x002e)
   078D 74 20              1281 	mov	a,#0x20
   078F F0                 1282 	movx	@dptr,a
   0790 90 01 2F           1283 	mov	dptr,#(_b + 0x002f)
   0793 74 02              1284 	mov	a,#0x02
   0795 F0                 1285 	movx	@dptr,a
   0796 90 01 30           1286 	mov	dptr,#(_b + 0x0030)
   0799 74 B3              1287 	mov	a,#0xB3
   079B F0                 1288 	movx	@dptr,a
   079C 90 01 31           1289 	mov	dptr,#(_b + 0x0031)
   079F 74 12              1290 	mov	a,#0x12
   07A1 F0                 1291 	movx	@dptr,a
   07A2 90 01 32           1292 	mov	dptr,#(_b + 0x0032)
   07A5 74 4F              1293 	mov	a,#0x4F
   07A7 F0                 1294 	movx	@dptr,a
   07A8 90 01 33           1295 	mov	dptr,#(_b + 0x0033)
   07AB 74 AB              1296 	mov	a,#0xAB
   07AD F0                 1297 	movx	@dptr,a
   07AE 90 01 34           1298 	mov	dptr,#(_b + 0x0034)
   07B1 74 60              1299 	mov	a,#0x60
   07B3 F0                 1300 	movx	@dptr,a
   07B4 90 01 35           1301 	mov	dptr,#(_b + 0x0035)
   07B7 74 27              1302 	mov	a,#0x27
   07B9 F0                 1303 	movx	@dptr,a
   07BA 90 01 36           1304 	mov	dptr,#(_b + 0x0036)
   07BD 74 07              1305 	mov	a,#0x07
   07BF F0                 1306 	movx	@dptr,a
   07C0 90 01 37           1307 	mov	dptr,#(_b + 0x0037)
   07C3 74 17              1308 	mov	a,#0x17
   07C5 F0                 1309 	movx	@dptr,a
   07C6 90 01 38           1310 	mov	dptr,#(_b + 0x0038)
   07C9 74 DD              1311 	mov	a,#0xDD
   07CB F0                 1312 	movx	@dptr,a
   07CC 90 01 39           1313 	mov	dptr,#(_b + 0x0039)
   07CF E4                 1314 	clr	a
   07D0 F0                 1315 	movx	@dptr,a
   07D1 90 01 3A           1316 	mov	dptr,#(_b + 0x003a)
   07D4 74 C2              1317 	mov	a,#0xC2
   07D6 F0                 1318 	movx	@dptr,a
   07D7 90 01 3B           1319 	mov	dptr,#(_b + 0x003b)
   07DA 74 E1              1320 	mov	a,#0xE1
   07DC F0                 1321 	movx	@dptr,a
   07DD 90 01 3C           1322 	mov	dptr,#(_b + 0x003c)
   07E0 74 BC              1323 	mov	a,#0xBC
   07E2 F0                 1324 	movx	@dptr,a
   07E3 90 01 3D           1325 	mov	dptr,#(_b + 0x003d)
   07E6 74 04              1326 	mov	a,#0x04
   07E8 F0                 1327 	movx	@dptr,a
   07E9 90 01 3E           1328 	mov	dptr,#(_b + 0x003e)
   07EC 74 AE              1329 	mov	a,#0xAE
   07EE F0                 1330 	movx	@dptr,a
   07EF 90 01 3F           1331 	mov	dptr,#(_b + 0x003f)
   07F2 74 21              1332 	mov	a,#0x21
   07F4 F0                 1333 	movx	@dptr,a
   07F5 90 01 40           1334 	mov	dptr,#(_b + 0x0040)
   07F8 74 38              1335 	mov	a,#0x38
   07FA F0                 1336 	movx	@dptr,a
   07FB 90 01 41           1337 	mov	dptr,#(_b + 0x0041)
   07FE 74 CA              1338 	mov	a,#0xCA
   0800 F0                 1339 	movx	@dptr,a
   0801 90 01 42           1340 	mov	dptr,#(_b + 0x0042)
   0804 74 AA              1341 	mov	a,#0xAA
   0806 F0                 1342 	movx	@dptr,a
   0807 90 01 43           1343 	mov	dptr,#(_b + 0x0043)
   080A 74 8F              1344 	mov	a,#0x8F
   080C F0                 1345 	movx	@dptr,a
   080D 90 01 44           1346 	mov	dptr,#(_b + 0x0044)
   0810 74 74              1347 	mov	a,#0x74
   0812 F0                 1348 	movx	@dptr,a
   0813 90 01 45           1349 	mov	dptr,#(_b + 0x0045)
   0816 74 D5              1350 	mov	a,#0xD5
   0818 F0                 1351 	movx	@dptr,a
   0819 90 01 46           1352 	mov	dptr,#(_b + 0x0046)
   081C 74 02              1353 	mov	a,#0x02
   081E F0                 1354 	movx	@dptr,a
   081F 90 01 47           1355 	mov	dptr,#(_b + 0x0047)
   0822 74 10              1356 	mov	a,#0x10
   0824 F0                 1357 	movx	@dptr,a
   0825 90 01 48           1358 	mov	dptr,#(_b + 0x0048)
   0828 74 15              1359 	mov	a,#0x15
   082A F0                 1360 	movx	@dptr,a
   082B 90 01 49           1361 	mov	dptr,#(_b + 0x0049)
   082E 74 87              1362 	mov	a,#0x87
   0830 F0                 1363 	movx	@dptr,a
   0831 90 01 4A           1364 	mov	dptr,#(_b + 0x004a)
   0834 74 58              1365 	mov	a,#0x58
   0836 F0                 1366 	movx	@dptr,a
   0837 90 01 4B           1367 	mov	dptr,#(_b + 0x004b)
   083A 74 08              1368 	mov	a,#0x08
   083C F0                 1369 	movx	@dptr,a
   083D 90 01 4C           1370 	mov	dptr,#(_b + 0x004c)
   0840 74 CC              1371 	mov	a,#0xCC
   0842 F0                 1372 	movx	@dptr,a
   0843 90 01 4D           1373 	mov	dptr,#(_b + 0x004d)
   0846 74 9A              1374 	mov	a,#0x9A
   0848 F0                 1375 	movx	@dptr,a
   0849 90 01 4E           1376 	mov	dptr,#(_b + 0x004e)
   084C 74 42              1377 	mov	a,#0x42
   084E F0                 1378 	movx	@dptr,a
   084F 90 01 4F           1379 	mov	dptr,#(_b + 0x004f)
   0852 74 BD              1380 	mov	a,#0xBD
   0854 F0                 1381 	movx	@dptr,a
   0855 90 01 50           1382 	mov	dptr,#(_b + 0x0050)
   0858 74 02              1383 	mov	a,#0x02
   085A F0                 1384 	movx	@dptr,a
   085B 90 01 51           1385 	mov	dptr,#(_b + 0x0051)
   085E 74 97              1386 	mov	a,#0x97
   0860 F0                 1387 	movx	@dptr,a
   0861 90 01 52           1388 	mov	dptr,#(_b + 0x0052)
   0864 74 CE              1389 	mov	a,#0xCE
   0866 F0                 1390 	movx	@dptr,a
   0867 90 01 53           1391 	mov	dptr,#(_b + 0x0053)
   086A 74 2B              1392 	mov	a,#0x2B
   086C F0                 1393 	movx	@dptr,a
   086D 90 01 54           1394 	mov	dptr,#(_b + 0x0054)
   0870 74 39              1395 	mov	a,#0x39
   0872 F0                 1396 	movx	@dptr,a
   0873 90 01 55           1397 	mov	dptr,#(_b + 0x0055)
   0876 74 38              1398 	mov	a,#0x38
   0878 F0                 1399 	movx	@dptr,a
   0879 90 01 56           1400 	mov	dptr,#(_b + 0x0056)
   087C 74 99              1401 	mov	a,#0x99
   087E F0                 1402 	movx	@dptr,a
   087F 90 01 57           1403 	mov	dptr,#(_b + 0x0057)
   0882 74 AC              1404 	mov	a,#0xAC
   0884 F0                 1405 	movx	@dptr,a
   0885 90 01 58           1406 	mov	dptr,#(_b + 0x0058)
   0888 74 81              1407 	mov	a,#0x81
   088A F0                 1408 	movx	@dptr,a
   088B 90 01 59           1409 	mov	dptr,#(_b + 0x0059)
   088E 74 BB              1410 	mov	a,#0xBB
   0890 F0                 1411 	movx	@dptr,a
   0891 90 01 5A           1412 	mov	dptr,#(_b + 0x005a)
   0894 74 C3              1413 	mov	a,#0xC3
   0896 F0                 1414 	movx	@dptr,a
   0897 90 01 5B           1415 	mov	dptr,#(_b + 0x005b)
   089A 74 FF              1416 	mov	a,#0xFF
   089C F0                 1417 	movx	@dptr,a
   089D 90 01 5C           1418 	mov	dptr,#(_b + 0x005c)
   08A0 74 BC              1419 	mov	a,#0xBC
   08A2 F0                 1420 	movx	@dptr,a
   08A3 90 01 5D           1421 	mov	dptr,#(_b + 0x005d)
   08A6 74 C1              1422 	mov	a,#0xC1
   08A8 F0                 1423 	movx	@dptr,a
   08A9 90 01 5E           1424 	mov	dptr,#(_b + 0x005e)
   08AC 74 B8              1425 	mov	a,#0xB8
   08AE F0                 1426 	movx	@dptr,a
   08AF 90 01 5F           1427 	mov	dptr,#(_b + 0x005f)
   08B2 74 E1              1428 	mov	a,#0xE1
   08B4 F0                 1429 	movx	@dptr,a
   08B5 90 01 60           1430 	mov	dptr,#(_b + 0x0060)
   08B8 74 24              1431 	mov	a,#0x24
   08BA F0                 1432 	movx	@dptr,a
   08BB 90 01 61           1433 	mov	dptr,#(_b + 0x0061)
   08BE 74 8D              1434 	mov	a,#0x8D
   08C0 F0                 1435 	movx	@dptr,a
   08C1 90 01 62           1436 	mov	dptr,#(_b + 0x0062)
   08C4 74 C5              1437 	mov	a,#0xC5
   08C6 F0                 1438 	movx	@dptr,a
   08C7 90 01 63           1439 	mov	dptr,#(_b + 0x0063)
   08CA 74 20              1440 	mov	a,#0x20
   08CC F0                 1441 	movx	@dptr,a
   08CD 90 01 64           1442 	mov	dptr,#(_b + 0x0064)
   08D0 74 89              1443 	mov	a,#0x89
   08D2 F0                 1444 	movx	@dptr,a
   08D3 90 01 65           1445 	mov	dptr,#(_b + 0x0065)
   08D6 74 98              1446 	mov	a,#0x98
   08D8 F0                 1447 	movx	@dptr,a
   08D9 90 01 66           1448 	mov	dptr,#(_b + 0x0066)
   08DC 74 0B              1449 	mov	a,#0x0B
   08DE F0                 1450 	movx	@dptr,a
   08DF 90 01 67           1451 	mov	dptr,#(_b + 0x0067)
   08E2 74 50              1452 	mov	a,#0x50
   08E4 F0                 1453 	movx	@dptr,a
   08E5 90 01 68           1454 	mov	dptr,#(_b + 0x0068)
   08E8 74 B1              1455 	mov	a,#0xB1
   08EA F0                 1456 	movx	@dptr,a
   08EB 90 01 69           1457 	mov	dptr,#(_b + 0x0069)
   08EE 74 16              1458 	mov	a,#0x16
   08F0 F0                 1459 	movx	@dptr,a
   08F1 90 01 6A           1460 	mov	dptr,#(_b + 0x006a)
   08F4 74 9A              1461 	mov	a,#0x9A
   08F6 F0                 1462 	movx	@dptr,a
   08F7 90 01 6B           1463 	mov	dptr,#(_b + 0x006b)
   08FA 74 2D              1464 	mov	a,#0x2D
   08FC F0                 1465 	movx	@dptr,a
   08FD 90 01 6C           1466 	mov	dptr,#(_b + 0x006c)
   0900 74 6E              1467 	mov	a,#0x6E
   0902 F0                 1468 	movx	@dptr,a
   0903 90 01 6D           1469 	mov	dptr,#(_b + 0x006d)
   0906 74 5A              1470 	mov	a,#0x5A
   0908 F0                 1471 	movx	@dptr,a
   0909 90 01 6E           1472 	mov	dptr,#(_b + 0x006e)
   090C 74 7B              1473 	mov	a,#0x7B
   090E F0                 1474 	movx	@dptr,a
   090F 90 01 6F           1475 	mov	dptr,#(_b + 0x006f)
   0912 74 2F              1476 	mov	a,#0x2F
   0914 F0                 1477 	movx	@dptr,a
   0915 90 01 70           1478 	mov	dptr,#(_b + 0x0070)
   0918 74 D4              1479 	mov	a,#0xD4
   091A F0                 1480 	movx	@dptr,a
   091B 90 01 71           1481 	mov	dptr,#(_b + 0x0071)
   091E 74 92              1482 	mov	a,#0x92
   0920 F0                 1483 	movx	@dptr,a
   0921 90 01 72           1484 	mov	dptr,#(_b + 0x0072)
   0924 74 A1              1485 	mov	a,#0xA1
   0926 F0                 1486 	movx	@dptr,a
   0927 90 01 73           1487 	mov	dptr,#(_b + 0x0073)
   092A 74 AA              1488 	mov	a,#0xAA
   092C F0                 1489 	movx	@dptr,a
   092D 90 01 74           1490 	mov	dptr,#(_b + 0x0074)
   0930 74 A6              1491 	mov	a,#0xA6
   0932 F0                 1492 	movx	@dptr,a
   0933 90 01 75           1493 	mov	dptr,#(_b + 0x0075)
   0936 74 E5              1494 	mov	a,#0xE5
   0938 F0                 1495 	movx	@dptr,a
   0939 90 01 76           1496 	mov	dptr,#(_b + 0x0076)
   093C 74 A6              1497 	mov	a,#0xA6
   093E F0                 1498 	movx	@dptr,a
   093F 90 01 77           1499 	mov	dptr,#(_b + 0x0077)
   0942 74 D2              1500 	mov	a,#0xD2
   0944 F0                 1501 	movx	@dptr,a
   0945 90 01 78           1502 	mov	dptr,#(_b + 0x0078)
   0948 74 0D              1503 	mov	a,#0x0D
   094A F0                 1504 	movx	@dptr,a
   094B 90 01 79           1505 	mov	dptr,#(_b + 0x0079)
   094E 74 0B              1506 	mov	a,#0x0B
   0950 F0                 1507 	movx	@dptr,a
   0951 90 01 7A           1508 	mov	dptr,#(_b + 0x007a)
   0954 74 B7              1509 	mov	a,#0xB7
   0956 F0                 1510 	movx	@dptr,a
   0957 90 01 7B           1511 	mov	dptr,#(_b + 0x007b)
   095A 74 B2              1512 	mov	a,#0xB2
   095C F0                 1513 	movx	@dptr,a
   095D 90 01 7C           1514 	mov	dptr,#(_b + 0x007c)
   0960 74 25              1515 	mov	a,#0x25
   0962 F0                 1516 	movx	@dptr,a
   0963 90 01 7D           1517 	mov	dptr,#(_b + 0x007d)
   0966 74 23              1518 	mov	a,#0x23
   0968 F0                 1519 	movx	@dptr,a
   0969 90 01 7E           1520 	mov	dptr,#(_b + 0x007e)
   096C 74 23              1521 	mov	a,#0x23
   096E F0                 1522 	movx	@dptr,a
   096F 90 01 7F           1523 	mov	dptr,#(_b + 0x007f)
   0972 74 BE              1524 	mov	a,#0xBE
   0974 F0                 1525 	movx	@dptr,a
                           1526 ;	main_montgomery.c:13: volatile __xdata __at (0x0300) unsigned char n_prime = 0xA5;
   0975 90 03 00           1527 	mov	dptr,#_n_prime
   0978 74 A5              1528 	mov	a,#0xA5
   097A F0                 1529 	movx	@dptr,a
                           1530 	.area GSFINAL (CODE)
   097B 02 00 03           1531 	ljmp	__sdcc_program_startup
                           1532 ;--------------------------------------------------------
                           1533 ; Home
                           1534 ;--------------------------------------------------------
                           1535 	.area HOME    (CODE)
                           1536 	.area HOME    (CODE)
   0003                    1537 __sdcc_program_startup:
   0003 12 09 7E           1538 	lcall	_main
                           1539 ;	return from main will lock up
   0006 80 FE              1540 	sjmp .
                           1541 ;--------------------------------------------------------
                           1542 ; code
                           1543 ;--------------------------------------------------------
                           1544 	.area CSEG    (CODE)
                           1545 ;------------------------------------------------------------
                           1546 ;Allocation info for local variables in function 'main'
                           1547 ;------------------------------------------------------------
                           1548 ;------------------------------------------------------------
                           1549 ;	main_montgomery.c:24: int main() {
                           1550 ;	-----------------------------------------
                           1551 ;	 function main
                           1552 ;	-----------------------------------------
   097E                    1553 _main:
                    0002   1554 	ar2 = 0x02
                    0003   1555 	ar3 = 0x03
                    0004   1556 	ar4 = 0x04
                    0005   1557 	ar5 = 0x05
                    0006   1558 	ar6 = 0x06
                    0007   1559 	ar7 = 0x07
                    0000   1560 	ar0 = 0x00
                    0001   1561 	ar1 = 0x01
                           1562 ;	main_montgomery.c:25: startBrk=1;
   097E 90 FF FE           1563 	mov	dptr,#_startBrk
   0981 74 01              1564 	mov	a,#0x01
   0983 F0                 1565 	movx	@dptr,a
                           1566 ;	main_montgomery.c:27: fips(a, b, n, n_prime, m);
   0984 75 10 00           1567 	mov	_fips_PARM_2,#_b
   0987 75 11 01           1568 	mov	(_fips_PARM_2 + 1),#(_b >> 8)
   098A 75 12 00           1569 	mov	(_fips_PARM_2 + 2),#0x00
   098D 75 13 00           1570 	mov	_fips_PARM_3,#_n
   0990 75 14 00           1571 	mov	(_fips_PARM_3 + 1),#(_n >> 8)
   0993 75 15 00           1572 	mov	(_fips_PARM_3 + 2),#0x00
   0996 90 03 00           1573 	mov	dptr,#_n_prime
   0999 E0                 1574 	movx	a,@dptr
   099A F5 16              1575 	mov	_fips_PARM_4,a
   099C 75 17 00           1576 	mov	_fips_PARM_5,#_m
   099F 75 18 04           1577 	mov	(_fips_PARM_5 + 1),#(_m >> 8)
   09A2 75 19 00           1578 	mov	(_fips_PARM_5 + 2),#0x00
   09A5 90 00 80           1579 	mov	dptr,#_a
   09A8 75 F0 00           1580 	mov	b,#0x00
   09AB 12 09 B8           1581 	lcall	_fips
                           1582 ;	main_montgomery.c:29: endBrk=1;
   09AE 90 FF FF           1583 	mov	dptr,#_endBrk
   09B1 74 01              1584 	mov	a,#0x01
   09B3 F0                 1585 	movx	@dptr,a
                           1586 ;	main_montgomery.c:30: return 0;
   09B4 90 00 00           1587 	mov	dptr,#0x0000
   09B7 22                 1588 	ret
                           1589 ;------------------------------------------------------------
                           1590 ;Allocation info for local variables in function 'fips'
                           1591 ;------------------------------------------------------------
                           1592 ;b                         Allocated with name '_fips_PARM_2'
                           1593 ;n                         Allocated with name '_fips_PARM_3'
                           1594 ;n_prime                   Allocated with name '_fips_PARM_4'
                           1595 ;m                         Allocated with name '_fips_PARM_5'
                           1596 ;a                         Allocated with name '_fips_a_1_1'
                           1597 ;tmp                       Allocated to registers r2 r3 
                           1598 ;c                         Allocated with name '_fips_c_1_1'
                           1599 ;s                         Allocated with name '_fips_s_1_1'
                           1600 ;u                         Allocated to registers 
                           1601 ;v                         Allocated to registers 
                           1602 ;sloc0                     Allocated with name '_fips_sloc0_1_0'
                           1603 ;sloc1                     Allocated with name '_fips_sloc1_1_0'
                           1604 ;sloc2                     Allocated with name '_fips_sloc2_1_0'
                           1605 ;sloc3                     Allocated with name '_fips_sloc3_1_0'
                           1606 ;sloc4                     Allocated with name '_fips_sloc4_1_0'
                           1607 ;sloc5                     Allocated with name '_fips_sloc5_1_0'
                           1608 ;result                    Allocated with name '_fips_result_1_1'
                           1609 ;------------------------------------------------------------
                           1610 ;	main_montgomery.c:33: void fips(unsigned char *a, unsigned char *b, unsigned char *n, unsigned char n_prime, unsigned char *m) {
                           1611 ;	-----------------------------------------
                           1612 ;	 function fips
                           1613 ;	-----------------------------------------
   09B8                    1614 _fips:
   09B8 85 82 1A           1615 	mov	_fips_a_1_1,dpl
   09BB 85 83 1B           1616 	mov	(_fips_a_1_1 + 1),dph
   09BE 85 F0 1C           1617 	mov	(_fips_a_1_1 + 2),b
                           1618 ;	main_montgomery.c:44: for (i = 0; i < SIZE; i++) {
   09C1 E4                 1619 	clr	a
   09C2 F5 08              1620 	mov	_i,a
   09C4 F5 09              1621 	mov	(_i + 1),a
   09C6 85 10 27           1622 	mov	_fips_sloc3_1_0,_fips_PARM_2
   09C9 85 11 28           1623 	mov	(_fips_sloc3_1_0 + 1),(_fips_PARM_2 + 1)
   09CC 85 12 29           1624 	mov	(_fips_sloc3_1_0 + 2),(_fips_PARM_2 + 2)
   09CF 85 13 1F           1625 	mov	_fips_sloc0_1_0,_fips_PARM_3
   09D2 85 14 20           1626 	mov	(_fips_sloc0_1_0 + 1),(_fips_PARM_3 + 1)
   09D5 85 15 21           1627 	mov	(_fips_sloc0_1_0 + 2),(_fips_PARM_3 + 2)
   09D8                    1628 00105$:
   09D8 C3                 1629 	clr	c
   09D9 E5 08              1630 	mov	a,_i
   09DB 94 80              1631 	subb	a,#0x80
   09DD E5 09              1632 	mov	a,(_i + 1)
   09DF 94 00              1633 	subb	a,#0x00
   09E1 40 03              1634 	jc	00127$
   09E3 02 0B 1E           1635 	ljmp	00108$
   09E6                    1636 00127$:
                           1637 ;	main_montgomery.c:45: for (j = 0; j < i; j++) {
   09E6 E4                 1638 	clr	a
   09E7 F5 0A              1639 	mov	_j,a
   09E9 F5 0B              1640 	mov	(_j + 1),a
   09EB                    1641 00101$:
   09EB C3                 1642 	clr	c
   09EC E5 0A              1643 	mov	a,_j
   09EE 95 08              1644 	subb	a,_i
   09F0 E5 0B              1645 	mov	a,(_j + 1)
   09F2 95 09              1646 	subb	a,(_i + 1)
   09F4 40 03              1647 	jc	00128$
   09F6 02 0A 51           1648 	ljmp	00104$
   09F9                    1649 00128$:
                           1650 ;	main_montgomery.c:145: __endasm;
                           1651 	
                           1652     ; load j in lower
   09F9 85 0A 82           1653 	    mov dpl, _j
                           1654 	
                           1655     ; set address of a in higher
   09FC 75 83 00           1656 	    mov dph, #(_a >> 8)
                           1657     ; load a[j]
   09FF E0                 1658 	    movx a, @dptr
   0A00 F5 F0              1659 	    mov b, a
                           1660 	
                           1661     ; load m[j] in r0
   0A02 75 83 04           1662 	    mov dph, #(_m >> 8)
   0A05 E0                 1663 	    movx a, @dptr
   0A06 F8                 1664 	    mov r0, a
                           1665 	
                           1666     ; calculate i-j and store in r5
   0A07 E5 08              1667 	    mov a, _i
   0A09 C3                 1668 	    clr c
   0A0A 95 0A              1669 	    subb a, _j
   0A0C FD                 1670 	    mov r5, a
                           1671 	
                           1672     ; load b[i-j]
   0A0D 24 00              1673 	    add a, #_b
   0A0F F5 82              1674 	    mov dpl, a
   0A11 E4                 1675 	    clr a
   0A12 34 01              1676 	    addc a, #(_b >> 8)
   0A14 F5 83              1677 	    mov dph, a
   0A16 E0                 1678 	    movx a, @dptr
                           1679 	
                           1680     ; a[j]*b[i-j]
   0A17 A4                 1681 	    mul ab
                           1682 	
                           1683     ; t[0] + a[j]*b[i-j]
   0A18 25 0D              1684 	    add a, _t
                           1685 	
                           1686     ; store result in r2 (this is s)
   0A1A FA                 1687 	    mov r2, a
                           1688     ; load t[1]
   0A1B E5 0E              1689 	    mov a, (_t + 0x0001)
                           1690 	
                           1691     ; add carry to t[1]
   0A1D 35 F0              1692 	    addc a, b
   0A1F F5 0E              1693 	    mov (_t + 0x0001), a
                           1694     ; load t[2]
   0A21 E5 0F              1695 	    mov a, (_t + 0x0002)
                           1696     ; add carry to t[2]
   0A23 34 00              1697 	    addc a, #0x00
   0A25 F5 0F              1698 	    mov (_t + 0x0002), a
                           1699 	
                           1700     ; load i-j
   0A27 ED                 1701 	    mov a, r5
                           1702 	
                           1703     ; load n[i-j]
   0A28 24 00              1704 	    add a, #_n
   0A2A F5 82              1705 	    mov dpl, a
   0A2C E4                 1706 	    clr a
   0A2D 34 00              1707 	    addc a, #(_n >> 8)
   0A2F F5 83              1708 	    mov dph, a
   0A31 E0                 1709 	    movx a, @dptr
                           1710 	
                           1711     ; load r0 (this is m[j])
   0A32 88 F0              1712 	    mov b, r0
                           1713     ; m[j] * n[i-j]
   0A34 A4                 1714 	    mul ab
                           1715     ; s + m[j] * n[i-j]
   0A35 2A                 1716 	    add a, r2
                           1717 	
                           1718     ; t[0] = s
   0A36 F5 0D              1719 	    mov _t, a
                           1720 	
                           1721     ; load c
   0A38 74 00              1722 	    mov a, #0x00
   0A3A 35 F0              1723 	    addc a, b
                           1724 	
                           1725     ; t[1] + c
   0A3C 25 0E              1726 	    add a, (_t + 0x0001)
   0A3E F5 0E              1727 	    mov (_t + 0x0001), a
   0A40 E5 0F              1728 	    mov a, (_t + 0x0002)
   0A42 35 00              1729 	    addc a, 0x00
   0A44 F5 0F              1730 	    mov (_t + 0x0002), a
                           1731 	    
                           1732 ;	main_montgomery.c:45: for (j = 0; j < i; j++) {
   0A46 05 0A              1733 	inc	_j
   0A48 E4                 1734 	clr	a
   0A49 B5 0A 9F           1735 	cjne	a,_j,00101$
   0A4C 05 0B              1736 	inc	(_j + 1)
   0A4E 02 09 EB           1737 	ljmp	00101$
   0A51                    1738 00104$:
                           1739 ;	main_montgomery.c:148: tmp = t[0] + a[i]*b[0];
   0A51 85 0D 22           1740 	mov	_fips_sloc1_1_0,_t
   0A54 75 23 00           1741 	mov	(_fips_sloc1_1_0 + 1),#0x00
   0A57 E5 08              1742 	mov	a,_i
   0A59 25 1A              1743 	add	a,_fips_a_1_1
   0A5B FC                 1744 	mov	r4,a
   0A5C E5 09              1745 	mov	a,(_i + 1)
   0A5E 35 1B              1746 	addc	a,(_fips_a_1_1 + 1)
   0A60 FA                 1747 	mov	r2,a
   0A61 AB 1C              1748 	mov	r3,(_fips_a_1_1 + 2)
   0A63 8C 82              1749 	mov	dpl,r4
   0A65 8A 83              1750 	mov	dph,r2
   0A67 8B F0              1751 	mov	b,r3
   0A69 12 0C B0           1752 	lcall	__gptrget
   0A6C FC                 1753 	mov	r4,a
   0A6D 85 27 82           1754 	mov	dpl,_fips_sloc3_1_0
   0A70 85 28 83           1755 	mov	dph,(_fips_sloc3_1_0 + 1)
   0A73 85 29 F0           1756 	mov	b,(_fips_sloc3_1_0 + 2)
   0A76 12 0C B0           1757 	lcall	__gptrget
   0A79 8C F0              1758 	mov	b,r4
   0A7B A4                 1759 	mul	ab
   0A7C 25 22              1760 	add	a,_fips_sloc1_1_0
   0A7E FA                 1761 	mov	r2,a
   0A7F E5 23              1762 	mov	a,(_fips_sloc1_1_0 + 1)
   0A81 35 F0              1763 	addc	a,b
   0A83 FB                 1764 	mov	r3,a
                           1765 ;	main_montgomery.c:149: s = tmp;
   0A84 8A 1E              1766 	mov	_fips_s_1_1,r2
                           1767 ;	main_montgomery.c:150: c = tmp >> 8;
   0A86 8B 1D              1768 	mov	_fips_c_1_1,r3
                           1769 ;	main_montgomery.c:153: tmp = t[1] + c;
   0A88 AC 0E              1770 	mov	r4,(_t + 0x0001)
   0A8A 7D 00              1771 	mov	r5,#0x00
   0A8C AE 1D              1772 	mov	r6,_fips_c_1_1
   0A8E 7F 00              1773 	mov	r7,#0x00
   0A90 EE                 1774 	mov	a,r6
   0A91 2C                 1775 	add	a,r4
   0A92 FA                 1776 	mov	r2,a
   0A93 EF                 1777 	mov	a,r7
   0A94 3D                 1778 	addc	a,r5
   0A95 FB                 1779 	mov	r3,a
                           1780 ;	main_montgomery.c:154: t[1] = tmp;
   0A96 8A 04              1781 	mov	ar4,r2
   0A98 8C 0E              1782 	mov	(_t + 0x0001),r4
                           1783 ;	main_montgomery.c:155: t[2] = t[2] + (tmp >> 8);
   0A9A EB                 1784 	mov	a,r3
   0A9B 25 0F              1785 	add	a,(_t + 0x0002)
   0A9D F5 22              1786 	mov	_fips_sloc1_1_0,a
   0A9F 85 22 0F           1787 	mov	(_t + 0x0002),_fips_sloc1_1_0
                           1788 ;	main_montgomery.c:157: m[i] = (s*n_prime)%256;
   0AA2 E5 08              1789 	mov	a,_i
   0AA4 25 17              1790 	add	a,_fips_PARM_5
   0AA6 F5 24              1791 	mov	_fips_sloc2_1_0,a
   0AA8 E5 09              1792 	mov	a,(_i + 1)
   0AAA 35 18              1793 	addc	a,(_fips_PARM_5 + 1)
   0AAC F5 25              1794 	mov	(_fips_sloc2_1_0 + 1),a
   0AAE 85 19 26           1795 	mov	(_fips_sloc2_1_0 + 2),(_fips_PARM_5 + 2)
   0AB1 85 1E F0           1796 	mov	b,_fips_s_1_1
   0AB4 E5 16              1797 	mov	a,_fips_PARM_4
   0AB6 A4                 1798 	mul	ab
   0AB7 F5 82              1799 	mov	dpl,a
   0AB9 85 F0 83           1800 	mov	dph,b
   0ABC 75 2D 00           1801 	mov	__modsint_PARM_2,#0x00
   0ABF 75 2E 01           1802 	mov	(__modsint_PARM_2 + 1),#0x01
   0AC2 C0 04              1803 	push	ar4
   0AC4 12 0C CC           1804 	lcall	__modsint
   0AC7 AD 82              1805 	mov	r5,dpl
   0AC9 D0 04              1806 	pop	ar4
   0ACB 85 24 82           1807 	mov	dpl,_fips_sloc2_1_0
   0ACE 85 25 83           1808 	mov	dph,(_fips_sloc2_1_0 + 1)
   0AD1 85 26 F0           1809 	mov	b,(_fips_sloc2_1_0 + 2)
   0AD4 ED                 1810 	mov	a,r5
   0AD5 12 0C 4A           1811 	lcall	__gptrput
                           1812 ;	main_montgomery.c:159: tmp = s + m[i]*n[0];
   0AD8 85 1E 24           1813 	mov	_fips_sloc2_1_0,_fips_s_1_1
   0ADB 75 25 00           1814 	mov	(_fips_sloc2_1_0 + 1),#0x00
   0ADE 85 1F 82           1815 	mov	dpl,_fips_sloc0_1_0
   0AE1 85 20 83           1816 	mov	dph,(_fips_sloc0_1_0 + 1)
   0AE4 85 21 F0           1817 	mov	b,(_fips_sloc0_1_0 + 2)
   0AE7 12 0C B0           1818 	lcall	__gptrget
   0AEA 8D F0              1819 	mov	b,r5
   0AEC A4                 1820 	mul	ab
   0AED 25 24              1821 	add	a,_fips_sloc2_1_0
   0AEF E5 25              1822 	mov	a,(_fips_sloc2_1_0 + 1)
   0AF1 35 F0              1823 	addc	a,b
   0AF3 FB                 1824 	mov	r3,a
                           1825 ;	main_montgomery.c:161: c = tmp >> 8;
   0AF4 8B 1D              1826 	mov	_fips_c_1_1,r3
                           1827 ;	main_montgomery.c:164: tmp = t[1] + c;
   0AF6 7D 00              1828 	mov	r5,#0x00
   0AF8 AE 1D              1829 	mov	r6,_fips_c_1_1
   0AFA 7F 00              1830 	mov	r7,#0x00
   0AFC EE                 1831 	mov	a,r6
   0AFD 2C                 1832 	add	a,r4
   0AFE FA                 1833 	mov	r2,a
   0AFF EF                 1834 	mov	a,r7
   0B00 3D                 1835 	addc	a,r5
   0B01 FB                 1836 	mov	r3,a
                           1837 ;	main_montgomery.c:165: t[1] = tmp;
   0B02 8A 04              1838 	mov	ar4,r2
   0B04 8C 0E              1839 	mov	(_t + 0x0001),r4
                           1840 ;	main_montgomery.c:166: t[2] = t[2] + (tmp >> 8);
   0B06 EB                 1841 	mov	a,r3
   0B07 25 22              1842 	add	a,_fips_sloc1_1_0
   0B09 FD                 1843 	mov	r5,a
   0B0A 8D 0F              1844 	mov	(_t + 0x0002),r5
                           1845 ;	main_montgomery.c:168: t[0] = t[1];
   0B0C 8C 0D              1846 	mov	_t,r4
                           1847 ;	main_montgomery.c:169: t[1] = t[2];
   0B0E 8D 0E              1848 	mov	(_t + 0x0001),r5
                           1849 ;	main_montgomery.c:170: t[2] = 0;
   0B10 75 0F 00           1850 	mov	(_t + 0x0002),#0x00
                           1851 ;	main_montgomery.c:44: for (i = 0; i < SIZE; i++) {
   0B13 05 08              1852 	inc	_i
   0B15 E4                 1853 	clr	a
   0B16 B5 08 02           1854 	cjne	a,_i,00129$
   0B19 05 09              1855 	inc	(_i + 1)
   0B1B                    1856 00129$:
   0B1B 02 09 D8           1857 	ljmp	00105$
   0B1E                    1858 00108$:
                           1859 ;	main_montgomery.c:233: for (i = SIZE; i < 2*SIZE; i++) {
   0B1E 75 08 80           1860 	mov	_i,#0x80
   0B21 E4                 1861 	clr	a
   0B22 F5 09              1862 	mov	(_i + 1),a
   0B24                    1863 00113$:
   0B24 74 FF              1864 	mov	a,#0x100 - 0x01
   0B26 25 09              1865 	add	a,(_i + 1)
   0B28 50 01              1866 	jnc	00130$
   0B2A 22                 1867 	ret
   0B2B                    1868 00130$:
                           1869 ;	main_montgomery.c:234: for (j = i-SIZE+1; j < SIZE; j++) {
   0B2B 74 81              1870 	mov	a,#0x81
   0B2D 25 08              1871 	add	a,_i
   0B2F F5 0A              1872 	mov	_j,a
   0B31 74 FF              1873 	mov	a,#0xFF
   0B33 35 09              1874 	addc	a,(_i + 1)
   0B35 F5 0B              1875 	mov	(_j + 1),a
   0B37                    1876 00109$:
   0B37 C3                 1877 	clr	c
   0B38 E5 0A              1878 	mov	a,_j
   0B3A 94 80              1879 	subb	a,#0x80
   0B3C E5 0B              1880 	mov	a,(_j + 1)
   0B3E 94 00              1881 	subb	a,#0x00
   0B40 40 03              1882 	jc	00131$
   0B42 02 0C 14           1883 	ljmp	00112$
   0B45                    1884 00131$:
                           1885 ;	main_montgomery.c:235: tmp = t[0] + a[j]*b[i-j];
   0B45 85 0D 24           1886 	mov	_fips_sloc2_1_0,_t
   0B48 75 25 00           1887 	mov	(_fips_sloc2_1_0 + 1),#0x00
   0B4B E5 0A              1888 	mov	a,_j
   0B4D 25 1A              1889 	add	a,_fips_a_1_1
   0B4F FE                 1890 	mov	r6,a
   0B50 E5 0B              1891 	mov	a,(_j + 1)
   0B52 35 1B              1892 	addc	a,(_fips_a_1_1 + 1)
   0B54 FF                 1893 	mov	r7,a
   0B55 AC 1C              1894 	mov	r4,(_fips_a_1_1 + 2)
   0B57 8E 82              1895 	mov	dpl,r6
   0B59 8F 83              1896 	mov	dph,r7
   0B5B 8C F0              1897 	mov	b,r4
   0B5D 12 0C B0           1898 	lcall	__gptrget
   0B60 F5 22              1899 	mov	_fips_sloc1_1_0,a
   0B62 E5 08              1900 	mov	a,_i
   0B64 C3                 1901 	clr	c
   0B65 95 0A              1902 	subb	a,_j
   0B67 F5 2A              1903 	mov	_fips_sloc4_1_0,a
   0B69 E5 09              1904 	mov	a,(_i + 1)
   0B6B 95 0B              1905 	subb	a,(_j + 1)
   0B6D F5 2B              1906 	mov	(_fips_sloc4_1_0 + 1),a
   0B6F E5 2A              1907 	mov	a,_fips_sloc4_1_0
   0B71 25 27              1908 	add	a,_fips_sloc3_1_0
   0B73 FF                 1909 	mov	r7,a
   0B74 E5 2B              1910 	mov	a,(_fips_sloc4_1_0 + 1)
   0B76 35 28              1911 	addc	a,(_fips_sloc3_1_0 + 1)
   0B78 FE                 1912 	mov	r6,a
   0B79 AC 29              1913 	mov	r4,(_fips_sloc3_1_0 + 2)
   0B7B 8F 82              1914 	mov	dpl,r7
   0B7D 8E 83              1915 	mov	dph,r6
   0B7F 8C F0              1916 	mov	b,r4
   0B81 12 0C B0           1917 	lcall	__gptrget
   0B84 85 22 F0           1918 	mov	b,_fips_sloc1_1_0
   0B87 A4                 1919 	mul	ab
   0B88 25 24              1920 	add	a,_fips_sloc2_1_0
   0B8A FA                 1921 	mov	r2,a
   0B8B E5 25              1922 	mov	a,(_fips_sloc2_1_0 + 1)
   0B8D 35 F0              1923 	addc	a,b
   0B8F FB                 1924 	mov	r3,a
                           1925 ;	main_montgomery.c:236: s = tmp;
   0B90 8A 1E              1926 	mov	_fips_s_1_1,r2
                           1927 ;	main_montgomery.c:237: c = tmp >> 8;
   0B92 8B 1D              1928 	mov	_fips_c_1_1,r3
                           1929 ;	main_montgomery.c:240: tmp = t[1] + c;
   0B94 AC 0E              1930 	mov	r4,(_t + 0x0001)
   0B96 7D 00              1931 	mov	r5,#0x00
   0B98 AE 1D              1932 	mov	r6,_fips_c_1_1
   0B9A 7F 00              1933 	mov	r7,#0x00
   0B9C EE                 1934 	mov	a,r6
   0B9D 2C                 1935 	add	a,r4
   0B9E FA                 1936 	mov	r2,a
   0B9F EF                 1937 	mov	a,r7
   0BA0 3D                 1938 	addc	a,r5
   0BA1 FB                 1939 	mov	r3,a
                           1940 ;	main_montgomery.c:241: t[1] = tmp;
   0BA2 8A 04              1941 	mov	ar4,r2
   0BA4 8C 0E              1942 	mov	(_t + 0x0001),r4
                           1943 ;	main_montgomery.c:242: t[2] = t[2] + (tmp >> 8);
   0BA6 EB                 1944 	mov	a,r3
   0BA7 25 0F              1945 	add	a,(_t + 0x0002)
   0BA9 F5 22              1946 	mov	_fips_sloc1_1_0,a
   0BAB 85 22 0F           1947 	mov	(_t + 0x0002),_fips_sloc1_1_0
                           1948 ;	main_montgomery.c:244: tmp = s + m[j]*n[i-j];
   0BAE 85 1E 24           1949 	mov	_fips_sloc2_1_0,_fips_s_1_1
   0BB1 75 25 00           1950 	mov	(_fips_sloc2_1_0 + 1),#0x00
   0BB4 E5 0A              1951 	mov	a,_j
   0BB6 25 17              1952 	add	a,_fips_PARM_5
   0BB8 FE                 1953 	mov	r6,a
   0BB9 E5 0B              1954 	mov	a,(_j + 1)
   0BBB 35 18              1955 	addc	a,(_fips_PARM_5 + 1)
   0BBD FF                 1956 	mov	r7,a
   0BBE AD 19              1957 	mov	r5,(_fips_PARM_5 + 2)
   0BC0 8E 82              1958 	mov	dpl,r6
   0BC2 8F 83              1959 	mov	dph,r7
   0BC4 8D F0              1960 	mov	b,r5
   0BC6 12 0C B0           1961 	lcall	__gptrget
   0BC9 F5 2C              1962 	mov	_fips_sloc5_1_0,a
   0BCB E5 2A              1963 	mov	a,_fips_sloc4_1_0
   0BCD 25 1F              1964 	add	a,_fips_sloc0_1_0
   0BCF FD                 1965 	mov	r5,a
   0BD0 E5 2B              1966 	mov	a,(_fips_sloc4_1_0 + 1)
   0BD2 35 20              1967 	addc	a,(_fips_sloc0_1_0 + 1)
   0BD4 FF                 1968 	mov	r7,a
   0BD5 AE 21              1969 	mov	r6,(_fips_sloc0_1_0 + 2)
   0BD7 8D 82              1970 	mov	dpl,r5
   0BD9 8F 83              1971 	mov	dph,r7
   0BDB 8E F0              1972 	mov	b,r6
   0BDD 12 0C B0           1973 	lcall	__gptrget
   0BE0 85 2C F0           1974 	mov	b,_fips_sloc5_1_0
   0BE3 A4                 1975 	mul	ab
   0BE4 25 24              1976 	add	a,_fips_sloc2_1_0
   0BE6 FA                 1977 	mov	r2,a
   0BE7 E5 25              1978 	mov	a,(_fips_sloc2_1_0 + 1)
   0BE9 35 F0              1979 	addc	a,b
   0BEB FB                 1980 	mov	r3,a
                           1981 ;	main_montgomery.c:245: s = tmp;
   0BEC 8A 1E              1982 	mov	_fips_s_1_1,r2
                           1983 ;	main_montgomery.c:246: c = tmp >> 8;
   0BEE 8B 1D              1984 	mov	_fips_c_1_1,r3
                           1985 ;	main_montgomery.c:248: t[0] = s;
   0BF0 85 1E 0D           1986 	mov	_t,_fips_s_1_1
                           1987 ;	main_montgomery.c:251: tmp = t[1] + c;
   0BF3 7D 00              1988 	mov	r5,#0x00
   0BF5 AE 1D              1989 	mov	r6,_fips_c_1_1
   0BF7 7F 00              1990 	mov	r7,#0x00
   0BF9 EE                 1991 	mov	a,r6
   0BFA 2C                 1992 	add	a,r4
   0BFB FA                 1993 	mov	r2,a
   0BFC EF                 1994 	mov	a,r7
   0BFD 3D                 1995 	addc	a,r5
   0BFE FB                 1996 	mov	r3,a
                           1997 ;	main_montgomery.c:252: t[1] = tmp;
   0BFF 8A 04              1998 	mov	ar4,r2
   0C01 8C 0E              1999 	mov	(_t + 0x0001),r4
                           2000 ;	main_montgomery.c:253: t[2] = t[2] + (tmp >> 8);
   0C03 EB                 2001 	mov	a,r3
   0C04 FA                 2002 	mov	r2,a
   0C05 25 22              2003 	add	a,_fips_sloc1_1_0
   0C07 F5 0F              2004 	mov	(_t + 0x0002),a
                           2005 ;	main_montgomery.c:234: for (j = i-SIZE+1; j < SIZE; j++) {
   0C09 05 0A              2006 	inc	_j
   0C0B E4                 2007 	clr	a
   0C0C B5 0A 02           2008 	cjne	a,_j,00132$
   0C0F 05 0B              2009 	inc	(_j + 1)
   0C11                    2010 00132$:
   0C11 02 0B 37           2011 	ljmp	00109$
   0C14                    2012 00112$:
                           2013 ;	main_montgomery.c:256: m[i - SIZE] = t[0];
   0C14 E5 08              2014 	mov	a,_i
   0C16 24 80              2015 	add	a,#0x80
   0C18 FA                 2016 	mov	r2,a
   0C19 E5 09              2017 	mov	a,(_i + 1)
   0C1B 34 FF              2018 	addc	a,#0xff
   0C1D FB                 2019 	mov	r3,a
   0C1E EA                 2020 	mov	a,r2
   0C1F 25 17              2021 	add	a,_fips_PARM_5
   0C21 FA                 2022 	mov	r2,a
   0C22 EB                 2023 	mov	a,r3
   0C23 35 18              2024 	addc	a,(_fips_PARM_5 + 1)
   0C25 FB                 2025 	mov	r3,a
   0C26 AC 19              2026 	mov	r4,(_fips_PARM_5 + 2)
   0C28 AD 0D              2027 	mov	r5,_t
   0C2A 8A 82              2028 	mov	dpl,r2
   0C2C 8B 83              2029 	mov	dph,r3
   0C2E 8C F0              2030 	mov	b,r4
   0C30 ED                 2031 	mov	a,r5
   0C31 12 0C 4A           2032 	lcall	__gptrput
                           2033 ;	main_montgomery.c:257: t[0] = t[1];
   0C34 AA 0E              2034 	mov	r2,(_t + 0x0001)
   0C36 8A 0D              2035 	mov	_t,r2
                           2036 ;	main_montgomery.c:258: t[1] = t[2];
   0C38 AA 0F              2037 	mov	r2,(_t + 0x0002)
   0C3A 8A 0E              2038 	mov	(_t + 0x0001),r2
                           2039 ;	main_montgomery.c:259: t[2] = 0;
   0C3C 75 0F 00           2040 	mov	(_t + 0x0002),#0x00
                           2041 ;	main_montgomery.c:233: for (i = SIZE; i < 2*SIZE; i++) {
   0C3F 05 08              2042 	inc	_i
   0C41 E4                 2043 	clr	a
   0C42 B5 08 02           2044 	cjne	a,_i,00133$
   0C45 05 09              2045 	inc	(_i + 1)
   0C47                    2046 00133$:
                           2047 ;	main_montgomery.c:277: return;
   0C47 02 0B 24           2048 	ljmp	00113$
                           2049 	.area CSEG    (CODE)
                           2050 	.area CONST   (CODE)
                           2051 	.area XINIT   (CODE)
                           2052 	.area CABS    (ABS,CODE)
