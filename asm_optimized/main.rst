                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Sun Nov  4 13:39:55 2012
                              5 ;--------------------------------------------------------
                              6 	.module main
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
                            109 	.globl _b
                            110 	.globl _a
                            111 	.globl _n
                            112 	.globl _u
                            113 	.globl _m
                            114 	.globl _endBrk
                            115 	.globl _startBrk
                            116 	.globl _b0
                            117 	.globl _n0
                            118 	.globl _stack
                            119 	.globl _t
                            120 	.globl _c
                            121 	.globl _j
                            122 	.globl _i
                            123 	.globl _tmp
                            124 ;--------------------------------------------------------
                            125 ; special function registers
                            126 ;--------------------------------------------------------
                            127 	.area RSEG    (DATA)
                    0080    128 _P0	=	0x0080
                    0081    129 _SP	=	0x0081
                    0082    130 _DPL	=	0x0082
                    0083    131 _DPH	=	0x0083
                    0087    132 _PCON	=	0x0087
                    0088    133 _TCON	=	0x0088
                    0089    134 _TMOD	=	0x0089
                    008A    135 _TL0	=	0x008a
                    008B    136 _TL1	=	0x008b
                    008C    137 _TH0	=	0x008c
                    008D    138 _TH1	=	0x008d
                    0090    139 _P1	=	0x0090
                    0098    140 _SCON	=	0x0098
                    0099    141 _SBUF	=	0x0099
                    00A0    142 _P2	=	0x00a0
                    00A8    143 _IE	=	0x00a8
                    00B0    144 _P3	=	0x00b0
                    00B8    145 _IP	=	0x00b8
                    00D0    146 _PSW	=	0x00d0
                    00E0    147 _ACC	=	0x00e0
                    00F0    148 _B	=	0x00f0
                            149 ;--------------------------------------------------------
                            150 ; special function bits
                            151 ;--------------------------------------------------------
                            152 	.area RSEG    (DATA)
                    0080    153 _P0_0	=	0x0080
                    0081    154 _P0_1	=	0x0081
                    0082    155 _P0_2	=	0x0082
                    0083    156 _P0_3	=	0x0083
                    0084    157 _P0_4	=	0x0084
                    0085    158 _P0_5	=	0x0085
                    0086    159 _P0_6	=	0x0086
                    0087    160 _P0_7	=	0x0087
                    0088    161 _IT0	=	0x0088
                    0089    162 _IE0	=	0x0089
                    008A    163 _IT1	=	0x008a
                    008B    164 _IE1	=	0x008b
                    008C    165 _TR0	=	0x008c
                    008D    166 _TF0	=	0x008d
                    008E    167 _TR1	=	0x008e
                    008F    168 _TF1	=	0x008f
                    0090    169 _P1_0	=	0x0090
                    0091    170 _P1_1	=	0x0091
                    0092    171 _P1_2	=	0x0092
                    0093    172 _P1_3	=	0x0093
                    0094    173 _P1_4	=	0x0094
                    0095    174 _P1_5	=	0x0095
                    0096    175 _P1_6	=	0x0096
                    0097    176 _P1_7	=	0x0097
                    0098    177 _RI	=	0x0098
                    0099    178 _TI	=	0x0099
                    009A    179 _RB8	=	0x009a
                    009B    180 _TB8	=	0x009b
                    009C    181 _REN	=	0x009c
                    009D    182 _SM2	=	0x009d
                    009E    183 _SM1	=	0x009e
                    009F    184 _SM0	=	0x009f
                    00A0    185 _P2_0	=	0x00a0
                    00A1    186 _P2_1	=	0x00a1
                    00A2    187 _P2_2	=	0x00a2
                    00A3    188 _P2_3	=	0x00a3
                    00A4    189 _P2_4	=	0x00a4
                    00A5    190 _P2_5	=	0x00a5
                    00A6    191 _P2_6	=	0x00a6
                    00A7    192 _P2_7	=	0x00a7
                    00A8    193 _EX0	=	0x00a8
                    00A9    194 _ET0	=	0x00a9
                    00AA    195 _EX1	=	0x00aa
                    00AB    196 _ET1	=	0x00ab
                    00AC    197 _ES	=	0x00ac
                    00AF    198 _EA	=	0x00af
                    00B0    199 _P3_0	=	0x00b0
                    00B1    200 _P3_1	=	0x00b1
                    00B2    201 _P3_2	=	0x00b2
                    00B3    202 _P3_3	=	0x00b3
                    00B4    203 _P3_4	=	0x00b4
                    00B5    204 _P3_5	=	0x00b5
                    00B6    205 _P3_6	=	0x00b6
                    00B7    206 _P3_7	=	0x00b7
                    00B0    207 _RXD	=	0x00b0
                    00B1    208 _TXD	=	0x00b1
                    00B2    209 _INT0	=	0x00b2
                    00B3    210 _INT1	=	0x00b3
                    00B4    211 _T0	=	0x00b4
                    00B5    212 _T1	=	0x00b5
                    00B6    213 _WR	=	0x00b6
                    00B7    214 _RD	=	0x00b7
                    00B8    215 _PX0	=	0x00b8
                    00B9    216 _PT0	=	0x00b9
                    00BA    217 _PX1	=	0x00ba
                    00BB    218 _PT1	=	0x00bb
                    00BC    219 _PS	=	0x00bc
                    00D0    220 _P	=	0x00d0
                    00D1    221 _F1	=	0x00d1
                    00D2    222 _OV	=	0x00d2
                    00D3    223 _RS0	=	0x00d3
                    00D4    224 _RS1	=	0x00d4
                    00D5    225 _F0	=	0x00d5
                    00D6    226 _AC	=	0x00d6
                    00D7    227 _CY	=	0x00d7
                            228 ;--------------------------------------------------------
                            229 ; overlayable register banks
                            230 ;--------------------------------------------------------
                            231 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     232 	.ds 8
                            233 ;--------------------------------------------------------
                            234 ; internal ram data
                            235 ;--------------------------------------------------------
                            236 	.area DSEG    (DATA)
   0008                     237 _tmp::
   0008                     238 	.ds 2
   000A                     239 _i::
   000A                     240 	.ds 2
   000C                     241 _j::
   000C                     242 	.ds 2
   000E                     243 _c::
   000E                     244 	.ds 1
   000F                     245 _t::
   000F                     246 	.ds 2
   0011                     247 _stack::
   0011                     248 	.ds 1
   0012                     249 _n0::
   0012                     250 	.ds 1
   0013                     251 _b0::
   0013                     252 	.ds 1
                            253 ;--------------------------------------------------------
                            254 ; overlayable items in internal ram 
                            255 ;--------------------------------------------------------
                            256 	.area OSEG    (OVR,DATA)
                            257 ;--------------------------------------------------------
                            258 ; Stack segment in internal ram 
                            259 ;--------------------------------------------------------
                            260 	.area	SSEG	(DATA)
   0014                     261 __start__stack:
   0014                     262 	.ds	1
                            263 
                            264 ;--------------------------------------------------------
                            265 ; indirectly addressable internal ram data
                            266 ;--------------------------------------------------------
                            267 	.area ISEG    (DATA)
                            268 ;--------------------------------------------------------
                            269 ; absolute internal ram data
                            270 ;--------------------------------------------------------
                            271 	.area IABS    (ABS,DATA)
                            272 	.area IABS    (ABS,DATA)
                            273 ;--------------------------------------------------------
                            274 ; bit data
                            275 ;--------------------------------------------------------
                            276 	.area BSEG    (BIT)
                            277 ;--------------------------------------------------------
                            278 ; paged external ram data
                            279 ;--------------------------------------------------------
                            280 	.area PSEG    (PAG,XDATA)
                            281 ;--------------------------------------------------------
                            282 ; external ram data
                            283 ;--------------------------------------------------------
                            284 	.area XSEG    (XDATA)
                    FFFE    285 _startBrk	=	0xfffe
                    FFFF    286 _endBrk	=	0xffff
                    0300    287 _m	=	0x0300
                    0400    288 _u	=	0x0400
                            289 ;--------------------------------------------------------
                            290 ; absolute external ram data
                            291 ;--------------------------------------------------------
                            292 	.area XABS    (ABS,XDATA)
   0000                     293 	.org 0x0000
   0000                     294 _n::
   0000                     295 	.ds 128
   0100                     296 	.org 0x0100
   0100                     297 _a::
   0100                     298 	.ds 128
   0200                     299 	.org 0x0200
   0200                     300 _b::
   0200                     301 	.ds 128
                            302 ;--------------------------------------------------------
                            303 ; external initialized ram data
                            304 ;--------------------------------------------------------
                            305 	.area XISEG   (XDATA)
                            306 	.area HOME    (CODE)
                            307 	.area GSINIT0 (CODE)
                            308 	.area GSINIT1 (CODE)
                            309 	.area GSINIT2 (CODE)
                            310 	.area GSINIT3 (CODE)
                            311 	.area GSINIT4 (CODE)
                            312 	.area GSINIT5 (CODE)
                            313 	.area GSINIT  (CODE)
                            314 	.area GSFINAL (CODE)
                            315 	.area CSEG    (CODE)
                            316 ;--------------------------------------------------------
                            317 ; interrupt vector 
                            318 ;--------------------------------------------------------
                            319 	.area HOME    (CODE)
   0000                     320 __interrupt_vect:
   0000 02 00 08            321 	ljmp	__sdcc_gsinit_startup
                            322 ;--------------------------------------------------------
                            323 ; global & static initialisations
                            324 ;--------------------------------------------------------
                            325 	.area HOME    (CODE)
                            326 	.area GSINIT  (CODE)
                            327 	.area GSFINAL (CODE)
                            328 	.area GSINIT  (CODE)
                            329 	.globl __sdcc_gsinit_startup
                            330 	.globl __sdcc_program_startup
                            331 	.globl __start__stack
                            332 	.globl __mcs51_genXINIT
                            333 	.globl __mcs51_genXRAMCLEAR
                            334 	.globl __mcs51_genRAMCLEAR
                            335 ;	main.c:18: unsigned short tmp  = 0;
   0061 E4                  336 	clr	a
   0062 F5 08               337 	mov	_tmp,a
   0064 F5 09               338 	mov	(_tmp + 1),a
                            339 ;	main.c:19: unsigned short i    = 0;
   0066 E4                  340 	clr	a
   0067 F5 0A               341 	mov	_i,a
   0069 F5 0B               342 	mov	(_i + 1),a
                            343 ;	main.c:20: unsigned short j    = 0;
   006B E4                  344 	clr	a
   006C F5 0C               345 	mov	_j,a
   006E F5 0D               346 	mov	(_j + 1),a
                            347 ;	main.c:22: unsigned char  c    = 0;
   0070 75 0E 00            348 	mov	_c,#0x00
                            349 ;	main.c:23: unsigned short t    = 0;
   0073 E4                  350 	clr	a
   0074 F5 0F               351 	mov	_t,a
   0076 F5 10               352 	mov	(_t + 1),a
                            353 ;	main.c:11: __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0078 90 00 00            354 	mov	dptr,#_n
   007B 74 D3               355 	mov	a,#0xD3
   007D F0                  356 	movx	@dptr,a
   007E 90 00 01            357 	mov	dptr,#(_n + 0x0001)
   0081 74 55               358 	mov	a,#0x55
   0083 F0                  359 	movx	@dptr,a
   0084 90 00 02            360 	mov	dptr,#(_n + 0x0002)
   0087 74 A4               361 	mov	a,#0xA4
   0089 F0                  362 	movx	@dptr,a
   008A 90 00 03            363 	mov	dptr,#(_n + 0x0003)
   008D 74 5F               364 	mov	a,#0x5F
   008F F0                  365 	movx	@dptr,a
   0090 90 00 04            366 	mov	dptr,#(_n + 0x0004)
   0093 74 57               367 	mov	a,#0x57
   0095 F0                  368 	movx	@dptr,a
   0096 90 00 05            369 	mov	dptr,#(_n + 0x0005)
   0099 74 F3               370 	mov	a,#0xF3
   009B F0                  371 	movx	@dptr,a
   009C 90 00 06            372 	mov	dptr,#(_n + 0x0006)
   009F 74 F9               373 	mov	a,#0xF9
   00A1 F0                  374 	movx	@dptr,a
   00A2 90 00 07            375 	mov	dptr,#(_n + 0x0007)
   00A5 74 3E               376 	mov	a,#0x3E
   00A7 F0                  377 	movx	@dptr,a
   00A8 90 00 08            378 	mov	dptr,#(_n + 0x0008)
   00AB 74 CF               379 	mov	a,#0xCF
   00AD F0                  380 	movx	@dptr,a
   00AE 90 00 09            381 	mov	dptr,#(_n + 0x0009)
   00B1 74 84               382 	mov	a,#0x84
   00B3 F0                  383 	movx	@dptr,a
   00B4 90 00 0A            384 	mov	dptr,#(_n + 0x000a)
   00B7 74 6D               385 	mov	a,#0x6D
   00B9 F0                  386 	movx	@dptr,a
   00BA 90 00 0B            387 	mov	dptr,#(_n + 0x000b)
   00BD 74 FF               388 	mov	a,#0xFF
   00BF F0                  389 	movx	@dptr,a
   00C0 90 00 0C            390 	mov	dptr,#(_n + 0x000c)
   00C3 74 20               391 	mov	a,#0x20
   00C5 F0                  392 	movx	@dptr,a
   00C6 90 00 0D            393 	mov	dptr,#(_n + 0x000d)
   00C9 74 C1               394 	mov	a,#0xC1
   00CB F0                  395 	movx	@dptr,a
   00CC 90 00 0E            396 	mov	dptr,#(_n + 0x000e)
   00CF 74 AE               397 	mov	a,#0xAE
   00D1 F0                  398 	movx	@dptr,a
   00D2 90 00 0F            399 	mov	dptr,#(_n + 0x000f)
   00D5 74 12               400 	mov	a,#0x12
   00D7 F0                  401 	movx	@dptr,a
   00D8 90 00 10            402 	mov	dptr,#(_n + 0x0010)
   00DB 74 CF               403 	mov	a,#0xCF
   00DD F0                  404 	movx	@dptr,a
   00DE 90 00 11            405 	mov	dptr,#(_n + 0x0011)
   00E1 74 F1               406 	mov	a,#0xF1
   00E3 F0                  407 	movx	@dptr,a
   00E4 90 00 12            408 	mov	dptr,#(_n + 0x0012)
   00E7 E4                  409 	clr	a
   00E8 F0                  410 	movx	@dptr,a
   00E9 90 00 13            411 	mov	dptr,#(_n + 0x0013)
   00EC 74 66               412 	mov	a,#0x66
   00EE F0                  413 	movx	@dptr,a
   00EF 90 00 14            414 	mov	dptr,#(_n + 0x0014)
   00F2 74 45               415 	mov	a,#0x45
   00F4 F0                  416 	movx	@dptr,a
   00F5 90 00 15            417 	mov	dptr,#(_n + 0x0015)
   00F8 74 E2               418 	mov	a,#0xE2
   00FA F0                  419 	movx	@dptr,a
   00FB 90 00 16            420 	mov	dptr,#(_n + 0x0016)
   00FE 74 34               421 	mov	a,#0x34
   0100 F0                  422 	movx	@dptr,a
   0101 90 00 17            423 	mov	dptr,#(_n + 0x0017)
   0104 74 61               424 	mov	a,#0x61
   0106 F0                  425 	movx	@dptr,a
   0107 90 00 18            426 	mov	dptr,#(_n + 0x0018)
   010A 74 27               427 	mov	a,#0x27
   010C F0                  428 	movx	@dptr,a
   010D 90 00 19            429 	mov	dptr,#(_n + 0x0019)
   0110 74 F2               430 	mov	a,#0xF2
   0112 F0                  431 	movx	@dptr,a
   0113 90 00 1A            432 	mov	dptr,#(_n + 0x001a)
   0116 74 57               433 	mov	a,#0x57
   0118 F0                  434 	movx	@dptr,a
   0119 90 00 1B            435 	mov	dptr,#(_n + 0x001b)
   011C 74 B3               436 	mov	a,#0xB3
   011E F0                  437 	movx	@dptr,a
   011F 90 00 1C            438 	mov	dptr,#(_n + 0x001c)
   0122 74 42               439 	mov	a,#0x42
   0124 F0                  440 	movx	@dptr,a
   0125 90 00 1D            441 	mov	dptr,#(_n + 0x001d)
   0128 74 21               442 	mov	a,#0x21
   012A F0                  443 	movx	@dptr,a
   012B 90 00 1E            444 	mov	dptr,#(_n + 0x001e)
   012E 74 80               445 	mov	a,#0x80
   0130 F0                  446 	movx	@dptr,a
   0131 90 00 1F            447 	mov	dptr,#(_n + 0x001f)
   0134 74 95               448 	mov	a,#0x95
   0136 F0                  449 	movx	@dptr,a
   0137 90 00 20            450 	mov	dptr,#(_n + 0x0020)
   013A 74 AB               451 	mov	a,#0xAB
   013C F0                  452 	movx	@dptr,a
   013D 90 00 21            453 	mov	dptr,#(_n + 0x0021)
   0140 74 15               454 	mov	a,#0x15
   0142 F0                  455 	movx	@dptr,a
   0143 90 00 22            456 	mov	dptr,#(_n + 0x0022)
   0146 74 A2               457 	mov	a,#0xA2
   0148 F0                  458 	movx	@dptr,a
   0149 90 00 23            459 	mov	dptr,#(_n + 0x0023)
   014C 74 1D               460 	mov	a,#0x1D
   014E F0                  461 	movx	@dptr,a
   014F 90 00 24            462 	mov	dptr,#(_n + 0x0024)
   0152 74 53               463 	mov	a,#0x53
   0154 F0                  464 	movx	@dptr,a
   0155 90 00 25            465 	mov	dptr,#(_n + 0x0025)
   0158 74 B2               466 	mov	a,#0xB2
   015A F0                  467 	movx	@dptr,a
   015B 90 00 26            468 	mov	dptr,#(_n + 0x0026)
   015E 74 27               469 	mov	a,#0x27
   0160 F0                  470 	movx	@dptr,a
   0161 90 00 27            471 	mov	dptr,#(_n + 0x0027)
   0164 74 E6               472 	mov	a,#0xE6
   0166 F0                  473 	movx	@dptr,a
   0167 90 00 28            474 	mov	dptr,#(_n + 0x0028)
   016A 74 56               475 	mov	a,#0x56
   016C F0                  476 	movx	@dptr,a
   016D 90 00 29            477 	mov	dptr,#(_n + 0x0029)
   0170 74 93               478 	mov	a,#0x93
   0172 F0                  479 	movx	@dptr,a
   0173 90 00 2A            480 	mov	dptr,#(_n + 0x002a)
   0176 74 27               481 	mov	a,#0x27
   0178 F0                  482 	movx	@dptr,a
   0179 90 00 2B            483 	mov	dptr,#(_n + 0x002b)
   017C 74 AF               484 	mov	a,#0xAF
   017E F0                  485 	movx	@dptr,a
   017F 90 00 2C            486 	mov	dptr,#(_n + 0x002c)
   0182 74 C2               487 	mov	a,#0xC2
   0184 F0                  488 	movx	@dptr,a
   0185 90 00 2D            489 	mov	dptr,#(_n + 0x002d)
   0188 74 EE               490 	mov	a,#0xEE
   018A F0                  491 	movx	@dptr,a
   018B 90 00 2E            492 	mov	dptr,#(_n + 0x002e)
   018E 74 2B               493 	mov	a,#0x2B
   0190 F0                  494 	movx	@dptr,a
   0191 90 00 2F            495 	mov	dptr,#(_n + 0x002f)
   0194 74 2F               496 	mov	a,#0x2F
   0196 F0                  497 	movx	@dptr,a
   0197 90 00 30            498 	mov	dptr,#(_n + 0x0030)
   019A 74 9A               499 	mov	a,#0x9A
   019C F0                  500 	movx	@dptr,a
   019D 90 00 31            501 	mov	dptr,#(_n + 0x0031)
   01A0 74 AE               502 	mov	a,#0xAE
   01A2 F0                  503 	movx	@dptr,a
   01A3 90 00 32            504 	mov	dptr,#(_n + 0x0032)
   01A6 74 6A               505 	mov	a,#0x6A
   01A8 F0                  506 	movx	@dptr,a
   01A9 90 00 33            507 	mov	dptr,#(_n + 0x0033)
   01AC 74 09               508 	mov	a,#0x09
   01AE F0                  509 	movx	@dptr,a
   01AF 90 00 34            510 	mov	dptr,#(_n + 0x0034)
   01B2 74 E5               511 	mov	a,#0xE5
   01B4 F0                  512 	movx	@dptr,a
   01B5 90 00 35            513 	mov	dptr,#(_n + 0x0035)
   01B8 74 7F               514 	mov	a,#0x7F
   01BA F0                  515 	movx	@dptr,a
   01BB 90 00 36            516 	mov	dptr,#(_n + 0x0036)
   01BE 74 AE               517 	mov	a,#0xAE
   01C0 F0                  518 	movx	@dptr,a
   01C1 90 00 37            519 	mov	dptr,#(_n + 0x0037)
   01C4 74 7D               520 	mov	a,#0x7D
   01C6 F0                  521 	movx	@dptr,a
   01C7 90 00 38            522 	mov	dptr,#(_n + 0x0038)
   01CA 74 2B               523 	mov	a,#0x2B
   01CC F0                  524 	movx	@dptr,a
   01CD 90 00 39            525 	mov	dptr,#(_n + 0x0039)
   01D0 74 DD               526 	mov	a,#0xDD
   01D2 F0                  527 	movx	@dptr,a
   01D3 90 00 3A            528 	mov	dptr,#(_n + 0x003a)
   01D6 74 58               529 	mov	a,#0x58
   01D8 F0                  530 	movx	@dptr,a
   01D9 90 00 3B            531 	mov	dptr,#(_n + 0x003b)
   01DC 74 2F               532 	mov	a,#0x2F
   01DE F0                  533 	movx	@dptr,a
   01DF 90 00 3C            534 	mov	dptr,#(_n + 0x003c)
   01E2 74 87               535 	mov	a,#0x87
   01E4 F0                  536 	movx	@dptr,a
   01E5 90 00 3D            537 	mov	dptr,#(_n + 0x003d)
   01E8 74 70               538 	mov	a,#0x70
   01EA F0                  539 	movx	@dptr,a
   01EB 90 00 3E            540 	mov	dptr,#(_n + 0x003e)
   01EE 74 05               541 	mov	a,#0x05
   01F0 F0                  542 	movx	@dptr,a
   01F1 90 00 3F            543 	mov	dptr,#(_n + 0x003f)
   01F4 74 1F               544 	mov	a,#0x1F
   01F6 F0                  545 	movx	@dptr,a
   01F7 90 00 40            546 	mov	dptr,#(_n + 0x0040)
   01FA 74 F8               547 	mov	a,#0xF8
   01FC F0                  548 	movx	@dptr,a
   01FD 90 00 41            549 	mov	dptr,#(_n + 0x0041)
   0200 74 BD               550 	mov	a,#0xBD
   0202 F0                  551 	movx	@dptr,a
   0203 90 00 42            552 	mov	dptr,#(_n + 0x0042)
   0206 74 0B               553 	mov	a,#0x0B
   0208 F0                  554 	movx	@dptr,a
   0209 90 00 43            555 	mov	dptr,#(_n + 0x0043)
   020C 74 E0               556 	mov	a,#0xE0
   020E F0                  557 	movx	@dptr,a
   020F 90 00 44            558 	mov	dptr,#(_n + 0x0044)
   0212 74 FD               559 	mov	a,#0xFD
   0214 F0                  560 	movx	@dptr,a
   0215 90 00 45            561 	mov	dptr,#(_n + 0x0045)
   0218 74 F1               562 	mov	a,#0xF1
   021A F0                  563 	movx	@dptr,a
   021B 90 00 46            564 	mov	dptr,#(_n + 0x0046)
   021E 74 81               565 	mov	a,#0x81
   0220 F0                  566 	movx	@dptr,a
   0221 90 00 47            567 	mov	dptr,#(_n + 0x0047)
   0224 74 60               568 	mov	a,#0x60
   0226 F0                  569 	movx	@dptr,a
   0227 90 00 48            570 	mov	dptr,#(_n + 0x0048)
   022A 74 BF               571 	mov	a,#0xBF
   022C F0                  572 	movx	@dptr,a
   022D 90 00 49            573 	mov	dptr,#(_n + 0x0049)
   0230 74 D2               574 	mov	a,#0xD2
   0232 F0                  575 	movx	@dptr,a
   0233 90 00 4A            576 	mov	dptr,#(_n + 0x004a)
   0236 74 FE               577 	mov	a,#0xFE
   0238 F0                  578 	movx	@dptr,a
   0239 90 00 4B            579 	mov	dptr,#(_n + 0x004b)
   023C 74 8F               580 	mov	a,#0x8F
   023E F0                  581 	movx	@dptr,a
   023F 90 00 4C            582 	mov	dptr,#(_n + 0x004c)
   0242 74 7B               583 	mov	a,#0x7B
   0244 F0                  584 	movx	@dptr,a
   0245 90 00 4D            585 	mov	dptr,#(_n + 0x004d)
   0248 74 B9               586 	mov	a,#0xB9
   024A F0                  587 	movx	@dptr,a
   024B 90 00 4E            588 	mov	dptr,#(_n + 0x004e)
   024E 74 A9               589 	mov	a,#0xA9
   0250 F0                  590 	movx	@dptr,a
   0251 90 00 4F            591 	mov	dptr,#(_n + 0x004f)
   0254 74 A4               592 	mov	a,#0xA4
   0256 F0                  593 	movx	@dptr,a
   0257 90 00 50            594 	mov	dptr,#(_n + 0x0050)
   025A 74 6A               595 	mov	a,#0x6A
   025C F0                  596 	movx	@dptr,a
   025D 90 00 51            597 	mov	dptr,#(_n + 0x0051)
   0260 74 0A               598 	mov	a,#0x0A
   0262 F0                  599 	movx	@dptr,a
   0263 90 00 52            600 	mov	dptr,#(_n + 0x0052)
   0266 74 A3               601 	mov	a,#0xA3
   0268 F0                  602 	movx	@dptr,a
   0269 90 00 53            603 	mov	dptr,#(_n + 0x0053)
   026C 74 A3               604 	mov	a,#0xA3
   026E F0                  605 	movx	@dptr,a
   026F 90 00 54            606 	mov	dptr,#(_n + 0x0054)
   0272 74 70               607 	mov	a,#0x70
   0274 F0                  608 	movx	@dptr,a
   0275 90 00 55            609 	mov	dptr,#(_n + 0x0055)
   0278 74 22               610 	mov	a,#0x22
   027A F0                  611 	movx	@dptr,a
   027B 90 00 56            612 	mov	dptr,#(_n + 0x0056)
   027E 74 BF               613 	mov	a,#0xBF
   0280 F0                  614 	movx	@dptr,a
   0281 90 00 57            615 	mov	dptr,#(_n + 0x0057)
   0284 74 4C               616 	mov	a,#0x4C
   0286 F0                  617 	movx	@dptr,a
   0287 90 00 58            618 	mov	dptr,#(_n + 0x0058)
   028A 74 1B               619 	mov	a,#0x1B
   028C F0                  620 	movx	@dptr,a
   028D 90 00 59            621 	mov	dptr,#(_n + 0x0059)
   0290 74 B0               622 	mov	a,#0xB0
   0292 F0                  623 	movx	@dptr,a
   0293 90 00 5A            624 	mov	dptr,#(_n + 0x005a)
   0296 74 41               625 	mov	a,#0x41
   0298 F0                  626 	movx	@dptr,a
   0299 90 00 5B            627 	mov	dptr,#(_n + 0x005b)
   029C 74 24               628 	mov	a,#0x24
   029E F0                  629 	movx	@dptr,a
   029F 90 00 5C            630 	mov	dptr,#(_n + 0x005c)
   02A2 74 4C               631 	mov	a,#0x4C
   02A4 F0                  632 	movx	@dptr,a
   02A5 90 00 5D            633 	mov	dptr,#(_n + 0x005d)
   02A8 74 3A               634 	mov	a,#0x3A
   02AA F0                  635 	movx	@dptr,a
   02AB 90 00 5E            636 	mov	dptr,#(_n + 0x005e)
   02AE 74 08               637 	mov	a,#0x08
   02B0 F0                  638 	movx	@dptr,a
   02B1 90 00 5F            639 	mov	dptr,#(_n + 0x005f)
   02B4 74 EC               640 	mov	a,#0xEC
   02B6 F0                  641 	movx	@dptr,a
   02B7 90 00 60            642 	mov	dptr,#(_n + 0x0060)
   02BA 74 F4               643 	mov	a,#0xF4
   02BC F0                  644 	movx	@dptr,a
   02BD 90 00 61            645 	mov	dptr,#(_n + 0x0061)
   02C0 74 91               646 	mov	a,#0x91
   02C2 F0                  647 	movx	@dptr,a
   02C3 90 00 62            648 	mov	dptr,#(_n + 0x0062)
   02C6 74 FF               649 	mov	a,#0xFF
   02C8 F0                  650 	movx	@dptr,a
   02C9 90 00 63            651 	mov	dptr,#(_n + 0x0063)
   02CC 74 93               652 	mov	a,#0x93
   02CE F0                  653 	movx	@dptr,a
   02CF 90 00 64            654 	mov	dptr,#(_n + 0x0064)
   02D2 74 8D               655 	mov	a,#0x8D
   02D4 F0                  656 	movx	@dptr,a
   02D5 90 00 65            657 	mov	dptr,#(_n + 0x0065)
   02D8 74 FC               658 	mov	a,#0xFC
   02DA F0                  659 	movx	@dptr,a
   02DB 90 00 66            660 	mov	dptr,#(_n + 0x0066)
   02DE 74 FA               661 	mov	a,#0xFA
   02E0 F0                  662 	movx	@dptr,a
   02E1 90 00 67            663 	mov	dptr,#(_n + 0x0067)
   02E4 74 4C               664 	mov	a,#0x4C
   02E6 F0                  665 	movx	@dptr,a
   02E7 90 00 68            666 	mov	dptr,#(_n + 0x0068)
   02EA 74 26               667 	mov	a,#0x26
   02EC F0                  668 	movx	@dptr,a
   02ED 90 00 69            669 	mov	dptr,#(_n + 0x0069)
   02F0 74 2D               670 	mov	a,#0x2D
   02F2 F0                  671 	movx	@dptr,a
   02F3 90 00 6A            672 	mov	dptr,#(_n + 0x006a)
   02F6 74 D2               673 	mov	a,#0xD2
   02F8 F0                  674 	movx	@dptr,a
   02F9 90 00 6B            675 	mov	dptr,#(_n + 0x006b)
   02FC 74 E9               676 	mov	a,#0xE9
   02FE F0                  677 	movx	@dptr,a
   02FF 90 00 6C            678 	mov	dptr,#(_n + 0x006c)
   0302 74 FC               679 	mov	a,#0xFC
   0304 F0                  680 	movx	@dptr,a
   0305 90 00 6D            681 	mov	dptr,#(_n + 0x006d)
   0308 74 76               682 	mov	a,#0x76
   030A F0                  683 	movx	@dptr,a
   030B 90 00 6E            684 	mov	dptr,#(_n + 0x006e)
   030E 74 B1               685 	mov	a,#0xB1
   0310 F0                  686 	movx	@dptr,a
   0311 90 00 6F            687 	mov	dptr,#(_n + 0x006f)
   0314 74 67               688 	mov	a,#0x67
   0316 F0                  689 	movx	@dptr,a
   0317 90 00 70            690 	mov	dptr,#(_n + 0x0070)
   031A 74 5E               691 	mov	a,#0x5E
   031C F0                  692 	movx	@dptr,a
   031D 90 00 71            693 	mov	dptr,#(_n + 0x0071)
   0320 74 24               694 	mov	a,#0x24
   0322 F0                  695 	movx	@dptr,a
   0323 90 00 72            696 	mov	dptr,#(_n + 0x0072)
   0326 74 9E               697 	mov	a,#0x9E
   0328 F0                  698 	movx	@dptr,a
   0329 90 00 73            699 	mov	dptr,#(_n + 0x0073)
   032C 74 31               700 	mov	a,#0x31
   032E F0                  701 	movx	@dptr,a
   032F 90 00 74            702 	mov	dptr,#(_n + 0x0074)
   0332 74 66               703 	mov	a,#0x66
   0334 F0                  704 	movx	@dptr,a
   0335 90 00 75            705 	mov	dptr,#(_n + 0x0075)
   0338 74 5D               706 	mov	a,#0x5D
   033A F0                  707 	movx	@dptr,a
   033B 90 00 76            708 	mov	dptr,#(_n + 0x0076)
   033E 74 98               709 	mov	a,#0x98
   0340 F0                  710 	movx	@dptr,a
   0341 90 00 77            711 	mov	dptr,#(_n + 0x0077)
   0344 74 4C               712 	mov	a,#0x4C
   0346 F0                  713 	movx	@dptr,a
   0347 90 00 78            714 	mov	dptr,#(_n + 0x0078)
   034A 74 0D               715 	mov	a,#0x0D
   034C F0                  716 	movx	@dptr,a
   034D 90 00 79            717 	mov	dptr,#(_n + 0x0079)
   0350 74 79               718 	mov	a,#0x79
   0352 F0                  719 	movx	@dptr,a
   0353 90 00 7A            720 	mov	dptr,#(_n + 0x007a)
   0356 74 81               721 	mov	a,#0x81
   0358 F0                  722 	movx	@dptr,a
   0359 90 00 7B            723 	mov	dptr,#(_n + 0x007b)
   035C 74 76               724 	mov	a,#0x76
   035E F0                  725 	movx	@dptr,a
   035F 90 00 7C            726 	mov	dptr,#(_n + 0x007c)
   0362 74 AC               727 	mov	a,#0xAC
   0364 F0                  728 	movx	@dptr,a
   0365 90 00 7D            729 	mov	dptr,#(_n + 0x007d)
   0368 74 1D               730 	mov	a,#0x1D
   036A F0                  731 	movx	@dptr,a
   036B 90 00 7E            732 	mov	dptr,#(_n + 0x007e)
   036E 74 E2               733 	mov	a,#0xE2
   0370 F0                  734 	movx	@dptr,a
   0371 90 00 7F            735 	mov	dptr,#(_n + 0x007f)
   0374 74 CA               736 	mov	a,#0xCA
   0376 F0                  737 	movx	@dptr,a
                            738 ;	main.c:12: __xdata __at (0x0100) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0377 90 01 00            739 	mov	dptr,#_a
   037A 74 FF               740 	mov	a,#0xFF
   037C F0                  741 	movx	@dptr,a
   037D 90 01 01            742 	mov	dptr,#(_a + 0x0001)
   0380 74 7F               743 	mov	a,#0x7F
   0382 F0                  744 	movx	@dptr,a
   0383 90 01 02            745 	mov	dptr,#(_a + 0x0002)
   0386 74 14               746 	mov	a,#0x14
   0388 F0                  747 	movx	@dptr,a
   0389 90 01 03            748 	mov	dptr,#(_a + 0x0003)
   038C 74 64               749 	mov	a,#0x64
   038E F0                  750 	movx	@dptr,a
   038F 90 01 04            751 	mov	dptr,#(_a + 0x0004)
   0392 74 47               752 	mov	a,#0x47
   0394 F0                  753 	movx	@dptr,a
   0395 90 01 05            754 	mov	dptr,#(_a + 0x0005)
   0398 74 68               755 	mov	a,#0x68
   039A F0                  756 	movx	@dptr,a
   039B 90 01 06            757 	mov	dptr,#(_a + 0x0006)
   039E 74 C2               758 	mov	a,#0xC2
   03A0 F0                  759 	movx	@dptr,a
   03A1 90 01 07            760 	mov	dptr,#(_a + 0x0007)
   03A4 74 B6               761 	mov	a,#0xB6
   03A6 F0                  762 	movx	@dptr,a
   03A7 90 01 08            763 	mov	dptr,#(_a + 0x0008)
   03AA 74 27               764 	mov	a,#0x27
   03AC F0                  765 	movx	@dptr,a
   03AD 90 01 09            766 	mov	dptr,#(_a + 0x0009)
   03B0 74 32               767 	mov	a,#0x32
   03B2 F0                  768 	movx	@dptr,a
   03B3 90 01 0A            769 	mov	dptr,#(_a + 0x000a)
   03B6 74 63               770 	mov	a,#0x63
   03B8 F0                  771 	movx	@dptr,a
   03B9 90 01 0B            772 	mov	dptr,#(_a + 0x000b)
   03BC 74 2C               773 	mov	a,#0x2C
   03BE F0                  774 	movx	@dptr,a
   03BF 90 01 0C            775 	mov	dptr,#(_a + 0x000c)
   03C2 74 B0               776 	mov	a,#0xB0
   03C4 F0                  777 	movx	@dptr,a
   03C5 90 01 0D            778 	mov	dptr,#(_a + 0x000d)
   03C8 74 C3               779 	mov	a,#0xC3
   03CA F0                  780 	movx	@dptr,a
   03CB 90 01 0E            781 	mov	dptr,#(_a + 0x000e)
   03CE 74 95               782 	mov	a,#0x95
   03D0 F0                  783 	movx	@dptr,a
   03D1 90 01 0F            784 	mov	dptr,#(_a + 0x000f)
   03D4 74 13               785 	mov	a,#0x13
   03D6 F0                  786 	movx	@dptr,a
   03D7 90 01 10            787 	mov	dptr,#(_a + 0x0010)
   03DA 74 C5               788 	mov	a,#0xC5
   03DC F0                  789 	movx	@dptr,a
   03DD 90 01 11            790 	mov	dptr,#(_a + 0x0011)
   03E0 74 7E               791 	mov	a,#0x7E
   03E2 F0                  792 	movx	@dptr,a
   03E3 90 01 12            793 	mov	dptr,#(_a + 0x0012)
   03E6 74 17               794 	mov	a,#0x17
   03E8 F0                  795 	movx	@dptr,a
   03E9 90 01 13            796 	mov	dptr,#(_a + 0x0013)
   03EC 74 22               797 	mov	a,#0x22
   03EE F0                  798 	movx	@dptr,a
   03EF 90 01 14            799 	mov	dptr,#(_a + 0x0014)
   03F2 74 F3               800 	mov	a,#0xF3
   03F4 F0                  801 	movx	@dptr,a
   03F5 90 01 15            802 	mov	dptr,#(_a + 0x0015)
   03F8 74 7C               803 	mov	a,#0x7C
   03FA F0                  804 	movx	@dptr,a
   03FB 90 01 16            805 	mov	dptr,#(_a + 0x0016)
   03FE 74 2D               806 	mov	a,#0x2D
   0400 F0                  807 	movx	@dptr,a
   0401 90 01 17            808 	mov	dptr,#(_a + 0x0017)
   0404 74 E8               809 	mov	a,#0xE8
   0406 F0                  810 	movx	@dptr,a
   0407 90 01 18            811 	mov	dptr,#(_a + 0x0018)
   040A 74 13               812 	mov	a,#0x13
   040C F0                  813 	movx	@dptr,a
   040D 90 01 19            814 	mov	dptr,#(_a + 0x0019)
   0410 74 47               815 	mov	a,#0x47
   0412 F0                  816 	movx	@dptr,a
   0413 90 01 1A            817 	mov	dptr,#(_a + 0x001a)
   0416 74 5E               818 	mov	a,#0x5E
   0418 F0                  819 	movx	@dptr,a
   0419 90 01 1B            820 	mov	dptr,#(_a + 0x001b)
   041C 74 15               821 	mov	a,#0x15
   041E F0                  822 	movx	@dptr,a
   041F 90 01 1C            823 	mov	dptr,#(_a + 0x001c)
   0422 74 4E               824 	mov	a,#0x4E
   0424 F0                  825 	movx	@dptr,a
   0425 90 01 1D            826 	mov	dptr,#(_a + 0x001d)
   0428 74 EF               827 	mov	a,#0xEF
   042A F0                  828 	movx	@dptr,a
   042B 90 01 1E            829 	mov	dptr,#(_a + 0x001e)
   042E 74 83               830 	mov	a,#0x83
   0430 F0                  831 	movx	@dptr,a
   0431 90 01 1F            832 	mov	dptr,#(_a + 0x001f)
   0434 74 81               833 	mov	a,#0x81
   0436 F0                  834 	movx	@dptr,a
   0437 90 01 20            835 	mov	dptr,#(_a + 0x0020)
   043A 74 DF               836 	mov	a,#0xDF
   043C F0                  837 	movx	@dptr,a
   043D 90 01 21            838 	mov	dptr,#(_a + 0x0021)
   0440 74 C3               839 	mov	a,#0xC3
   0442 F0                  840 	movx	@dptr,a
   0443 90 01 22            841 	mov	dptr,#(_a + 0x0022)
   0446 74 47               842 	mov	a,#0x47
   0448 F0                  843 	movx	@dptr,a
   0449 90 01 23            844 	mov	dptr,#(_a + 0x0023)
   044C 74 D3               845 	mov	a,#0xD3
   044E F0                  846 	movx	@dptr,a
   044F 90 01 24            847 	mov	dptr,#(_a + 0x0024)
   0452 74 60               848 	mov	a,#0x60
   0454 F0                  849 	movx	@dptr,a
   0455 90 01 25            850 	mov	dptr,#(_a + 0x0025)
   0458 74 BB               851 	mov	a,#0xBB
   045A F0                  852 	movx	@dptr,a
   045B 90 01 26            853 	mov	dptr,#(_a + 0x0026)
   045E 74 8B               854 	mov	a,#0x8B
   0460 F0                  855 	movx	@dptr,a
   0461 90 01 27            856 	mov	dptr,#(_a + 0x0027)
   0464 74 3E               857 	mov	a,#0x3E
   0466 F0                  858 	movx	@dptr,a
   0467 90 01 28            859 	mov	dptr,#(_a + 0x0028)
   046A 74 B6               860 	mov	a,#0xB6
   046C F0                  861 	movx	@dptr,a
   046D 90 01 29            862 	mov	dptr,#(_a + 0x0029)
   0470 74 35               863 	mov	a,#0x35
   0472 F0                  864 	movx	@dptr,a
   0473 90 01 2A            865 	mov	dptr,#(_a + 0x002a)
   0476 74 B1               866 	mov	a,#0xB1
   0478 F0                  867 	movx	@dptr,a
   0479 90 01 2B            868 	mov	dptr,#(_a + 0x002b)
   047C 74 6E               869 	mov	a,#0x6E
   047E F0                  870 	movx	@dptr,a
   047F 90 01 2C            871 	mov	dptr,#(_a + 0x002c)
   0482 74 D1               872 	mov	a,#0xD1
   0484 F0                  873 	movx	@dptr,a
   0485 90 01 2D            874 	mov	dptr,#(_a + 0x002d)
   0488 74 D5               875 	mov	a,#0xD5
   048A F0                  876 	movx	@dptr,a
   048B 90 01 2E            877 	mov	dptr,#(_a + 0x002e)
   048E 74 DA               878 	mov	a,#0xDA
   0490 F0                  879 	movx	@dptr,a
   0491 90 01 2F            880 	mov	dptr,#(_a + 0x002f)
   0494 74 6F               881 	mov	a,#0x6F
   0496 F0                  882 	movx	@dptr,a
   0497 90 01 30            883 	mov	dptr,#(_a + 0x0030)
   049A 74 28               884 	mov	a,#0x28
   049C F0                  885 	movx	@dptr,a
   049D 90 01 31            886 	mov	dptr,#(_a + 0x0031)
   04A0 74 16               887 	mov	a,#0x16
   04A2 F0                  888 	movx	@dptr,a
   04A3 90 01 32            889 	mov	dptr,#(_a + 0x0032)
   04A6 74 2C               890 	mov	a,#0x2C
   04A8 F0                  891 	movx	@dptr,a
   04A9 90 01 33            892 	mov	dptr,#(_a + 0x0033)
   04AC 74 74               893 	mov	a,#0x74
   04AE F0                  894 	movx	@dptr,a
   04AF 90 01 34            895 	mov	dptr,#(_a + 0x0034)
   04B2 74 36               896 	mov	a,#0x36
   04B4 F0                  897 	movx	@dptr,a
   04B5 90 01 35            898 	mov	dptr,#(_a + 0x0035)
   04B8 74 F9               899 	mov	a,#0xF9
   04BA F0                  900 	movx	@dptr,a
   04BB 90 01 36            901 	mov	dptr,#(_a + 0x0036)
   04BE 74 04               902 	mov	a,#0x04
   04C0 F0                  903 	movx	@dptr,a
   04C1 90 01 37            904 	mov	dptr,#(_a + 0x0037)
   04C4 74 79               905 	mov	a,#0x79
   04C6 F0                  906 	movx	@dptr,a
   04C7 90 01 38            907 	mov	dptr,#(_a + 0x0038)
   04CA 74 F9               908 	mov	a,#0xF9
   04CC F0                  909 	movx	@dptr,a
   04CD 90 01 39            910 	mov	dptr,#(_a + 0x0039)
   04D0 74 76               911 	mov	a,#0x76
   04D2 F0                  912 	movx	@dptr,a
   04D3 90 01 3A            913 	mov	dptr,#(_a + 0x003a)
   04D6 74 E2               914 	mov	a,#0xE2
   04D8 F0                  915 	movx	@dptr,a
   04D9 90 01 3B            916 	mov	dptr,#(_a + 0x003b)
   04DC 74 CC               917 	mov	a,#0xCC
   04DE F0                  918 	movx	@dptr,a
   04DF 90 01 3C            919 	mov	dptr,#(_a + 0x003c)
   04E2 74 A4               920 	mov	a,#0xA4
   04E4 F0                  921 	movx	@dptr,a
   04E5 90 01 3D            922 	mov	dptr,#(_a + 0x003d)
   04E8 74 82               923 	mov	a,#0x82
   04EA F0                  924 	movx	@dptr,a
   04EB 90 01 3E            925 	mov	dptr,#(_a + 0x003e)
   04EE 74 A7               926 	mov	a,#0xA7
   04F0 F0                  927 	movx	@dptr,a
   04F1 90 01 3F            928 	mov	dptr,#(_a + 0x003f)
   04F4 74 A4               929 	mov	a,#0xA4
   04F6 F0                  930 	movx	@dptr,a
   04F7 90 01 40            931 	mov	dptr,#(_a + 0x0040)
   04FA 74 68               932 	mov	a,#0x68
   04FC F0                  933 	movx	@dptr,a
   04FD 90 01 41            934 	mov	dptr,#(_a + 0x0041)
   0500 74 4E               935 	mov	a,#0x4E
   0502 F0                  936 	movx	@dptr,a
   0503 90 01 42            937 	mov	dptr,#(_a + 0x0042)
   0506 74 24               938 	mov	a,#0x24
   0508 F0                  939 	movx	@dptr,a
   0509 90 01 43            940 	mov	dptr,#(_a + 0x0043)
   050C 74 A6               941 	mov	a,#0xA6
   050E F0                  942 	movx	@dptr,a
   050F 90 01 44            943 	mov	dptr,#(_a + 0x0044)
   0512 74 C1               944 	mov	a,#0xC1
   0514 F0                  945 	movx	@dptr,a
   0515 90 01 45            946 	mov	dptr,#(_a + 0x0045)
   0518 74 58               947 	mov	a,#0x58
   051A F0                  948 	movx	@dptr,a
   051B 90 01 46            949 	mov	dptr,#(_a + 0x0046)
   051E 74 68               950 	mov	a,#0x68
   0520 F0                  951 	movx	@dptr,a
   0521 90 01 47            952 	mov	dptr,#(_a + 0x0047)
   0524 74 24               953 	mov	a,#0x24
   0526 F0                  954 	movx	@dptr,a
   0527 90 01 48            955 	mov	dptr,#(_a + 0x0048)
   052A 74 58               956 	mov	a,#0x58
   052C F0                  957 	movx	@dptr,a
   052D 90 01 49            958 	mov	dptr,#(_a + 0x0049)
   0530 74 DC               959 	mov	a,#0xDC
   0532 F0                  960 	movx	@dptr,a
   0533 90 01 4A            961 	mov	dptr,#(_a + 0x004a)
   0536 74 14               962 	mov	a,#0x14
   0538 F0                  963 	movx	@dptr,a
   0539 90 01 4B            964 	mov	dptr,#(_a + 0x004b)
   053C 74 F9               965 	mov	a,#0xF9
   053E F0                  966 	movx	@dptr,a
   053F 90 01 4C            967 	mov	dptr,#(_a + 0x004c)
   0542 74 FF               968 	mov	a,#0xFF
   0544 F0                  969 	movx	@dptr,a
   0545 90 01 4D            970 	mov	dptr,#(_a + 0x004d)
   0548 74 4D               971 	mov	a,#0x4D
   054A F0                  972 	movx	@dptr,a
   054B 90 01 4E            973 	mov	dptr,#(_a + 0x004e)
   054E 74 A1               974 	mov	a,#0xA1
   0550 F0                  975 	movx	@dptr,a
   0551 90 01 4F            976 	mov	dptr,#(_a + 0x004f)
   0554 74 EF               977 	mov	a,#0xEF
   0556 F0                  978 	movx	@dptr,a
   0557 90 01 50            979 	mov	dptr,#(_a + 0x0050)
   055A 74 53               980 	mov	a,#0x53
   055C F0                  981 	movx	@dptr,a
   055D 90 01 51            982 	mov	dptr,#(_a + 0x0051)
   0560 74 A3               983 	mov	a,#0xA3
   0562 F0                  984 	movx	@dptr,a
   0563 90 01 52            985 	mov	dptr,#(_a + 0x0052)
   0566 74 C2               986 	mov	a,#0xC2
   0568 F0                  987 	movx	@dptr,a
   0569 90 01 53            988 	mov	dptr,#(_a + 0x0053)
   056C 74 84               989 	mov	a,#0x84
   056E F0                  990 	movx	@dptr,a
   056F 90 01 54            991 	mov	dptr,#(_a + 0x0054)
   0572 74 1B               992 	mov	a,#0x1B
   0574 F0                  993 	movx	@dptr,a
   0575 90 01 55            994 	mov	dptr,#(_a + 0x0055)
   0578 74 81               995 	mov	a,#0x81
   057A F0                  996 	movx	@dptr,a
   057B 90 01 56            997 	mov	dptr,#(_a + 0x0056)
   057E 74 16               998 	mov	a,#0x16
   0580 F0                  999 	movx	@dptr,a
   0581 90 01 57           1000 	mov	dptr,#(_a + 0x0057)
   0584 74 6C              1001 	mov	a,#0x6C
   0586 F0                 1002 	movx	@dptr,a
   0587 90 01 58           1003 	mov	dptr,#(_a + 0x0058)
   058A 74 DD              1004 	mov	a,#0xDD
   058C F0                 1005 	movx	@dptr,a
   058D 90 01 59           1006 	mov	dptr,#(_a + 0x0059)
   0590 74 E3              1007 	mov	a,#0xE3
   0592 F0                 1008 	movx	@dptr,a
   0593 90 01 5A           1009 	mov	dptr,#(_a + 0x005a)
   0596 74 DB              1010 	mov	a,#0xDB
   0598 F0                 1011 	movx	@dptr,a
   0599 90 01 5B           1012 	mov	dptr,#(_a + 0x005b)
   059C 74 A8              1013 	mov	a,#0xA8
   059E F0                 1014 	movx	@dptr,a
   059F 90 01 5C           1015 	mov	dptr,#(_a + 0x005c)
   05A2 74 03              1016 	mov	a,#0x03
   05A4 F0                 1017 	movx	@dptr,a
   05A5 90 01 5D           1018 	mov	dptr,#(_a + 0x005d)
   05A8 74 8F              1019 	mov	a,#0x8F
   05AA F0                 1020 	movx	@dptr,a
   05AB 90 01 5E           1021 	mov	dptr,#(_a + 0x005e)
   05AE 74 F2              1022 	mov	a,#0xF2
   05B0 F0                 1023 	movx	@dptr,a
   05B1 90 01 5F           1024 	mov	dptr,#(_a + 0x005f)
   05B4 74 31              1025 	mov	a,#0x31
   05B6 F0                 1026 	movx	@dptr,a
   05B7 90 01 60           1027 	mov	dptr,#(_a + 0x0060)
   05BA 74 FD              1028 	mov	a,#0xFD
   05BC F0                 1029 	movx	@dptr,a
   05BD 90 01 61           1030 	mov	dptr,#(_a + 0x0061)
   05C0 74 94              1031 	mov	a,#0x94
   05C2 F0                 1032 	movx	@dptr,a
   05C3 90 01 62           1033 	mov	dptr,#(_a + 0x0062)
   05C6 74 5D              1034 	mov	a,#0x5D
   05C8 F0                 1035 	movx	@dptr,a
   05C9 90 01 63           1036 	mov	dptr,#(_a + 0x0063)
   05CC 74 26              1037 	mov	a,#0x26
   05CE F0                 1038 	movx	@dptr,a
   05CF 90 01 64           1039 	mov	dptr,#(_a + 0x0064)
   05D2 74 13              1040 	mov	a,#0x13
   05D4 F0                 1041 	movx	@dptr,a
   05D5 90 01 65           1042 	mov	dptr,#(_a + 0x0065)
   05D8 74 C6              1043 	mov	a,#0xC6
   05DA F0                 1044 	movx	@dptr,a
   05DB 90 01 66           1045 	mov	dptr,#(_a + 0x0066)
   05DE 74 68              1046 	mov	a,#0x68
   05E0 F0                 1047 	movx	@dptr,a
   05E1 90 01 67           1048 	mov	dptr,#(_a + 0x0067)
   05E4 74 B4              1049 	mov	a,#0xB4
   05E6 F0                 1050 	movx	@dptr,a
   05E7 90 01 68           1051 	mov	dptr,#(_a + 0x0068)
   05EA 74 0D              1052 	mov	a,#0x0D
   05EC F0                 1053 	movx	@dptr,a
   05ED 90 01 69           1054 	mov	dptr,#(_a + 0x0069)
   05F0 74 CD              1055 	mov	a,#0xCD
   05F2 F0                 1056 	movx	@dptr,a
   05F3 90 01 6A           1057 	mov	dptr,#(_a + 0x006a)
   05F6 74 F1              1058 	mov	a,#0xF1
   05F8 F0                 1059 	movx	@dptr,a
   05F9 90 01 6B           1060 	mov	dptr,#(_a + 0x006b)
   05FC 74 B8              1061 	mov	a,#0xB8
   05FE F0                 1062 	movx	@dptr,a
   05FF 90 01 6C           1063 	mov	dptr,#(_a + 0x006c)
   0602 74 66              1064 	mov	a,#0x66
   0604 F0                 1065 	movx	@dptr,a
   0605 90 01 6D           1066 	mov	dptr,#(_a + 0x006d)
   0608 74 0D              1067 	mov	a,#0x0D
   060A F0                 1068 	movx	@dptr,a
   060B 90 01 6E           1069 	mov	dptr,#(_a + 0x006e)
   060E 74 5D              1070 	mov	a,#0x5D
   0610 F0                 1071 	movx	@dptr,a
   0611 90 01 6F           1072 	mov	dptr,#(_a + 0x006f)
   0614 74 3B              1073 	mov	a,#0x3B
   0616 F0                 1074 	movx	@dptr,a
   0617 90 01 70           1075 	mov	dptr,#(_a + 0x0070)
   061A 74 2F              1076 	mov	a,#0x2F
   061C F0                 1077 	movx	@dptr,a
   061D 90 01 71           1078 	mov	dptr,#(_a + 0x0071)
   0620 74 C4              1079 	mov	a,#0xC4
   0622 F0                 1080 	movx	@dptr,a
   0623 90 01 72           1081 	mov	dptr,#(_a + 0x0072)
   0626 74 4A              1082 	mov	a,#0x4A
   0628 F0                 1083 	movx	@dptr,a
   0629 90 01 73           1084 	mov	dptr,#(_a + 0x0073)
   062C 74 D1              1085 	mov	a,#0xD1
   062E F0                 1086 	movx	@dptr,a
   062F 90 01 74           1087 	mov	dptr,#(_a + 0x0074)
   0632 74 0B              1088 	mov	a,#0x0B
   0634 F0                 1089 	movx	@dptr,a
   0635 90 01 75           1090 	mov	dptr,#(_a + 0x0075)
   0638 74 36              1091 	mov	a,#0x36
   063A F0                 1092 	movx	@dptr,a
   063B 90 01 76           1093 	mov	dptr,#(_a + 0x0076)
   063E 74 C6              1094 	mov	a,#0xC6
   0640 F0                 1095 	movx	@dptr,a
   0641 90 01 77           1096 	mov	dptr,#(_a + 0x0077)
   0644 74 10              1097 	mov	a,#0x10
   0646 F0                 1098 	movx	@dptr,a
   0647 90 01 78           1099 	mov	dptr,#(_a + 0x0078)
   064A 74 1A              1100 	mov	a,#0x1A
   064C F0                 1101 	movx	@dptr,a
   064D 90 01 79           1102 	mov	dptr,#(_a + 0x0079)
   0650 74 2F              1103 	mov	a,#0x2F
   0652 F0                 1104 	movx	@dptr,a
   0653 90 01 7A           1105 	mov	dptr,#(_a + 0x007a)
   0656 74 72              1106 	mov	a,#0x72
   0658 F0                 1107 	movx	@dptr,a
   0659 90 01 7B           1108 	mov	dptr,#(_a + 0x007b)
   065C 74 D1              1109 	mov	a,#0xD1
   065E F0                 1110 	movx	@dptr,a
   065F 90 01 7C           1111 	mov	dptr,#(_a + 0x007c)
   0662 74 BB              1112 	mov	a,#0xBB
   0664 F0                 1113 	movx	@dptr,a
   0665 90 01 7D           1114 	mov	dptr,#(_a + 0x007d)
   0668 74 15              1115 	mov	a,#0x15
   066A F0                 1116 	movx	@dptr,a
   066B 90 01 7E           1117 	mov	dptr,#(_a + 0x007e)
   066E 74 29              1118 	mov	a,#0x29
   0670 F0                 1119 	movx	@dptr,a
   0671 90 01 7F           1120 	mov	dptr,#(_a + 0x007f)
   0674 74 CA              1121 	mov	a,#0xCA
   0676 F0                 1122 	movx	@dptr,a
                           1123 ;	main.c:13: __xdata __at (0x0200) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0677 90 02 00           1124 	mov	dptr,#_b
   067A 74 E1              1125 	mov	a,#0xE1
   067C F0                 1126 	movx	@dptr,a
   067D 90 02 01           1127 	mov	dptr,#(_b + 0x0001)
   0680 74 8A              1128 	mov	a,#0x8A
   0682 F0                 1129 	movx	@dptr,a
   0683 90 02 02           1130 	mov	dptr,#(_b + 0x0002)
   0686 74 03              1131 	mov	a,#0x03
   0688 F0                 1132 	movx	@dptr,a
   0689 90 02 03           1133 	mov	dptr,#(_b + 0x0003)
   068C 74 DB              1134 	mov	a,#0xDB
   068E F0                 1135 	movx	@dptr,a
   068F 90 02 04           1136 	mov	dptr,#(_b + 0x0004)
   0692 74 E0              1137 	mov	a,#0xE0
   0694 F0                 1138 	movx	@dptr,a
   0695 90 02 05           1139 	mov	dptr,#(_b + 0x0005)
   0698 74 D9              1140 	mov	a,#0xD9
   069A F0                 1141 	movx	@dptr,a
   069B 90 02 06           1142 	mov	dptr,#(_b + 0x0006)
   069E 74 F6              1143 	mov	a,#0xF6
   06A0 F0                 1144 	movx	@dptr,a
   06A1 90 02 07           1145 	mov	dptr,#(_b + 0x0007)
   06A4 74 55              1146 	mov	a,#0x55
   06A6 F0                 1147 	movx	@dptr,a
   06A7 90 02 08           1148 	mov	dptr,#(_b + 0x0008)
   06AA 74 B6              1149 	mov	a,#0xB6
   06AC F0                 1150 	movx	@dptr,a
   06AD 90 02 09           1151 	mov	dptr,#(_b + 0x0009)
   06B0 74 27              1152 	mov	a,#0x27
   06B2 F0                 1153 	movx	@dptr,a
   06B3 90 02 0A           1154 	mov	dptr,#(_b + 0x000a)
   06B6 74 0A              1155 	mov	a,#0x0A
   06B8 F0                 1156 	movx	@dptr,a
   06B9 90 02 0B           1157 	mov	dptr,#(_b + 0x000b)
   06BC 74 28              1158 	mov	a,#0x28
   06BE F0                 1159 	movx	@dptr,a
   06BF 90 02 0C           1160 	mov	dptr,#(_b + 0x000c)
   06C2 74 F0              1161 	mov	a,#0xF0
   06C4 F0                 1162 	movx	@dptr,a
   06C5 90 02 0D           1163 	mov	dptr,#(_b + 0x000d)
   06C8 74 5E              1164 	mov	a,#0x5E
   06CA F0                 1165 	movx	@dptr,a
   06CB 90 02 0E           1166 	mov	dptr,#(_b + 0x000e)
   06CE 74 74              1167 	mov	a,#0x74
   06D0 F0                 1168 	movx	@dptr,a
   06D1 90 02 0F           1169 	mov	dptr,#(_b + 0x000f)
   06D4 74 7F              1170 	mov	a,#0x7F
   06D6 F0                 1171 	movx	@dptr,a
   06D7 90 02 10           1172 	mov	dptr,#(_b + 0x0010)
   06DA 74 E6              1173 	mov	a,#0xE6
   06DC F0                 1174 	movx	@dptr,a
   06DD 90 02 11           1175 	mov	dptr,#(_b + 0x0011)
   06E0 74 9F              1176 	mov	a,#0x9F
   06E2 F0                 1177 	movx	@dptr,a
   06E3 90 02 12           1178 	mov	dptr,#(_b + 0x0012)
   06E6 74 4C              1179 	mov	a,#0x4C
   06E8 F0                 1180 	movx	@dptr,a
   06E9 90 02 13           1181 	mov	dptr,#(_b + 0x0013)
   06EC 74 FB              1182 	mov	a,#0xFB
   06EE F0                 1183 	movx	@dptr,a
   06EF 90 02 14           1184 	mov	dptr,#(_b + 0x0014)
   06F2 74 26              1185 	mov	a,#0x26
   06F4 F0                 1186 	movx	@dptr,a
   06F5 90 02 15           1187 	mov	dptr,#(_b + 0x0015)
   06F8 74 8C              1188 	mov	a,#0x8C
   06FA F0                 1189 	movx	@dptr,a
   06FB 90 02 16           1190 	mov	dptr,#(_b + 0x0016)
   06FE 74 9E              1191 	mov	a,#0x9E
   0700 F0                 1192 	movx	@dptr,a
   0701 90 02 17           1193 	mov	dptr,#(_b + 0x0017)
   0704 74 87              1194 	mov	a,#0x87
   0706 F0                 1195 	movx	@dptr,a
   0707 90 02 18           1196 	mov	dptr,#(_b + 0x0018)
   070A 74 83              1197 	mov	a,#0x83
   070C F0                 1198 	movx	@dptr,a
   070D 90 02 19           1199 	mov	dptr,#(_b + 0x0019)
   0710 74 22              1200 	mov	a,#0x22
   0712 F0                 1201 	movx	@dptr,a
   0713 90 02 1A           1202 	mov	dptr,#(_b + 0x001a)
   0716 74 F2              1203 	mov	a,#0xF2
   0718 F0                 1204 	movx	@dptr,a
   0719 90 02 1B           1205 	mov	dptr,#(_b + 0x001b)
   071C 74 75              1206 	mov	a,#0x75
   071E F0                 1207 	movx	@dptr,a
   071F 90 02 1C           1208 	mov	dptr,#(_b + 0x001c)
   0722 74 D2              1209 	mov	a,#0xD2
   0724 F0                 1210 	movx	@dptr,a
   0725 90 02 1D           1211 	mov	dptr,#(_b + 0x001d)
   0728 74 B3              1212 	mov	a,#0xB3
   072A F0                 1213 	movx	@dptr,a
   072B 90 02 1E           1214 	mov	dptr,#(_b + 0x001e)
   072E 74 61              1215 	mov	a,#0x61
   0730 F0                 1216 	movx	@dptr,a
   0731 90 02 1F           1217 	mov	dptr,#(_b + 0x001f)
   0734 74 A2              1218 	mov	a,#0xA2
   0736 F0                 1219 	movx	@dptr,a
   0737 90 02 20           1220 	mov	dptr,#(_b + 0x0020)
   073A 74 9D              1221 	mov	a,#0x9D
   073C F0                 1222 	movx	@dptr,a
   073D 90 02 21           1223 	mov	dptr,#(_b + 0x0021)
   0740 74 50              1224 	mov	a,#0x50
   0742 F0                 1225 	movx	@dptr,a
   0743 90 02 22           1226 	mov	dptr,#(_b + 0x0022)
   0746 74 71              1227 	mov	a,#0x71
   0748 F0                 1228 	movx	@dptr,a
   0749 90 02 23           1229 	mov	dptr,#(_b + 0x0023)
   074C 74 5E              1230 	mov	a,#0x5E
   074E F0                 1231 	movx	@dptr,a
   074F 90 02 24           1232 	mov	dptr,#(_b + 0x0024)
   0752 74 C9              1233 	mov	a,#0xC9
   0754 F0                 1234 	movx	@dptr,a
   0755 90 02 25           1235 	mov	dptr,#(_b + 0x0025)
   0758 74 DD              1236 	mov	a,#0xDD
   075A F0                 1237 	movx	@dptr,a
   075B 90 02 26           1238 	mov	dptr,#(_b + 0x0026)
   075E 74 DD              1239 	mov	a,#0xDD
   0760 F0                 1240 	movx	@dptr,a
   0761 90 02 27           1241 	mov	dptr,#(_b + 0x0027)
   0764 74 74              1242 	mov	a,#0x74
   0766 F0                 1243 	movx	@dptr,a
   0767 90 02 28           1244 	mov	dptr,#(_b + 0x0028)
   076A 74 0A              1245 	mov	a,#0x0A
   076C F0                 1246 	movx	@dptr,a
   076D 90 02 29           1247 	mov	dptr,#(_b + 0x0029)
   0770 74 3C              1248 	mov	a,#0x3C
   0772 F0                 1249 	movx	@dptr,a
   0773 90 02 2A           1250 	mov	dptr,#(_b + 0x002a)
   0776 74 C0              1251 	mov	a,#0xC0
   0778 F0                 1252 	movx	@dptr,a
   0779 90 02 2B           1253 	mov	dptr,#(_b + 0x002b)
   077C 74 30              1254 	mov	a,#0x30
   077E F0                 1255 	movx	@dptr,a
   077F 90 02 2C           1256 	mov	dptr,#(_b + 0x002c)
   0782 74 3E              1257 	mov	a,#0x3E
   0784 F0                 1258 	movx	@dptr,a
   0785 90 02 2D           1259 	mov	dptr,#(_b + 0x002d)
   0788 74 E5              1260 	mov	a,#0xE5
   078A F0                 1261 	movx	@dptr,a
   078B 90 02 2E           1262 	mov	dptr,#(_b + 0x002e)
   078E 74 20              1263 	mov	a,#0x20
   0790 F0                 1264 	movx	@dptr,a
   0791 90 02 2F           1265 	mov	dptr,#(_b + 0x002f)
   0794 74 02              1266 	mov	a,#0x02
   0796 F0                 1267 	movx	@dptr,a
   0797 90 02 30           1268 	mov	dptr,#(_b + 0x0030)
   079A 74 B3              1269 	mov	a,#0xB3
   079C F0                 1270 	movx	@dptr,a
   079D 90 02 31           1271 	mov	dptr,#(_b + 0x0031)
   07A0 74 12              1272 	mov	a,#0x12
   07A2 F0                 1273 	movx	@dptr,a
   07A3 90 02 32           1274 	mov	dptr,#(_b + 0x0032)
   07A6 74 4F              1275 	mov	a,#0x4F
   07A8 F0                 1276 	movx	@dptr,a
   07A9 90 02 33           1277 	mov	dptr,#(_b + 0x0033)
   07AC 74 AB              1278 	mov	a,#0xAB
   07AE F0                 1279 	movx	@dptr,a
   07AF 90 02 34           1280 	mov	dptr,#(_b + 0x0034)
   07B2 74 60              1281 	mov	a,#0x60
   07B4 F0                 1282 	movx	@dptr,a
   07B5 90 02 35           1283 	mov	dptr,#(_b + 0x0035)
   07B8 74 27              1284 	mov	a,#0x27
   07BA F0                 1285 	movx	@dptr,a
   07BB 90 02 36           1286 	mov	dptr,#(_b + 0x0036)
   07BE 74 07              1287 	mov	a,#0x07
   07C0 F0                 1288 	movx	@dptr,a
   07C1 90 02 37           1289 	mov	dptr,#(_b + 0x0037)
   07C4 74 17              1290 	mov	a,#0x17
   07C6 F0                 1291 	movx	@dptr,a
   07C7 90 02 38           1292 	mov	dptr,#(_b + 0x0038)
   07CA 74 DD              1293 	mov	a,#0xDD
   07CC F0                 1294 	movx	@dptr,a
   07CD 90 02 39           1295 	mov	dptr,#(_b + 0x0039)
   07D0 E4                 1296 	clr	a
   07D1 F0                 1297 	movx	@dptr,a
   07D2 90 02 3A           1298 	mov	dptr,#(_b + 0x003a)
   07D5 74 C2              1299 	mov	a,#0xC2
   07D7 F0                 1300 	movx	@dptr,a
   07D8 90 02 3B           1301 	mov	dptr,#(_b + 0x003b)
   07DB 74 E1              1302 	mov	a,#0xE1
   07DD F0                 1303 	movx	@dptr,a
   07DE 90 02 3C           1304 	mov	dptr,#(_b + 0x003c)
   07E1 74 BC              1305 	mov	a,#0xBC
   07E3 F0                 1306 	movx	@dptr,a
   07E4 90 02 3D           1307 	mov	dptr,#(_b + 0x003d)
   07E7 74 04              1308 	mov	a,#0x04
   07E9 F0                 1309 	movx	@dptr,a
   07EA 90 02 3E           1310 	mov	dptr,#(_b + 0x003e)
   07ED 74 AE              1311 	mov	a,#0xAE
   07EF F0                 1312 	movx	@dptr,a
   07F0 90 02 3F           1313 	mov	dptr,#(_b + 0x003f)
   07F3 74 21              1314 	mov	a,#0x21
   07F5 F0                 1315 	movx	@dptr,a
   07F6 90 02 40           1316 	mov	dptr,#(_b + 0x0040)
   07F9 74 38              1317 	mov	a,#0x38
   07FB F0                 1318 	movx	@dptr,a
   07FC 90 02 41           1319 	mov	dptr,#(_b + 0x0041)
   07FF 74 CA              1320 	mov	a,#0xCA
   0801 F0                 1321 	movx	@dptr,a
   0802 90 02 42           1322 	mov	dptr,#(_b + 0x0042)
   0805 74 AA              1323 	mov	a,#0xAA
   0807 F0                 1324 	movx	@dptr,a
   0808 90 02 43           1325 	mov	dptr,#(_b + 0x0043)
   080B 74 8F              1326 	mov	a,#0x8F
   080D F0                 1327 	movx	@dptr,a
   080E 90 02 44           1328 	mov	dptr,#(_b + 0x0044)
   0811 74 74              1329 	mov	a,#0x74
   0813 F0                 1330 	movx	@dptr,a
   0814 90 02 45           1331 	mov	dptr,#(_b + 0x0045)
   0817 74 D5              1332 	mov	a,#0xD5
   0819 F0                 1333 	movx	@dptr,a
   081A 90 02 46           1334 	mov	dptr,#(_b + 0x0046)
   081D 74 02              1335 	mov	a,#0x02
   081F F0                 1336 	movx	@dptr,a
   0820 90 02 47           1337 	mov	dptr,#(_b + 0x0047)
   0823 74 10              1338 	mov	a,#0x10
   0825 F0                 1339 	movx	@dptr,a
   0826 90 02 48           1340 	mov	dptr,#(_b + 0x0048)
   0829 74 15              1341 	mov	a,#0x15
   082B F0                 1342 	movx	@dptr,a
   082C 90 02 49           1343 	mov	dptr,#(_b + 0x0049)
   082F 74 87              1344 	mov	a,#0x87
   0831 F0                 1345 	movx	@dptr,a
   0832 90 02 4A           1346 	mov	dptr,#(_b + 0x004a)
   0835 74 58              1347 	mov	a,#0x58
   0837 F0                 1348 	movx	@dptr,a
   0838 90 02 4B           1349 	mov	dptr,#(_b + 0x004b)
   083B 74 08              1350 	mov	a,#0x08
   083D F0                 1351 	movx	@dptr,a
   083E 90 02 4C           1352 	mov	dptr,#(_b + 0x004c)
   0841 74 CC              1353 	mov	a,#0xCC
   0843 F0                 1354 	movx	@dptr,a
   0844 90 02 4D           1355 	mov	dptr,#(_b + 0x004d)
   0847 74 9A              1356 	mov	a,#0x9A
   0849 F0                 1357 	movx	@dptr,a
   084A 90 02 4E           1358 	mov	dptr,#(_b + 0x004e)
   084D 74 42              1359 	mov	a,#0x42
   084F F0                 1360 	movx	@dptr,a
   0850 90 02 4F           1361 	mov	dptr,#(_b + 0x004f)
   0853 74 BD              1362 	mov	a,#0xBD
   0855 F0                 1363 	movx	@dptr,a
   0856 90 02 50           1364 	mov	dptr,#(_b + 0x0050)
   0859 74 02              1365 	mov	a,#0x02
   085B F0                 1366 	movx	@dptr,a
   085C 90 02 51           1367 	mov	dptr,#(_b + 0x0051)
   085F 74 97              1368 	mov	a,#0x97
   0861 F0                 1369 	movx	@dptr,a
   0862 90 02 52           1370 	mov	dptr,#(_b + 0x0052)
   0865 74 CE              1371 	mov	a,#0xCE
   0867 F0                 1372 	movx	@dptr,a
   0868 90 02 53           1373 	mov	dptr,#(_b + 0x0053)
   086B 74 2B              1374 	mov	a,#0x2B
   086D F0                 1375 	movx	@dptr,a
   086E 90 02 54           1376 	mov	dptr,#(_b + 0x0054)
   0871 74 39              1377 	mov	a,#0x39
   0873 F0                 1378 	movx	@dptr,a
   0874 90 02 55           1379 	mov	dptr,#(_b + 0x0055)
   0877 74 38              1380 	mov	a,#0x38
   0879 F0                 1381 	movx	@dptr,a
   087A 90 02 56           1382 	mov	dptr,#(_b + 0x0056)
   087D 74 99              1383 	mov	a,#0x99
   087F F0                 1384 	movx	@dptr,a
   0880 90 02 57           1385 	mov	dptr,#(_b + 0x0057)
   0883 74 AC              1386 	mov	a,#0xAC
   0885 F0                 1387 	movx	@dptr,a
   0886 90 02 58           1388 	mov	dptr,#(_b + 0x0058)
   0889 74 81              1389 	mov	a,#0x81
   088B F0                 1390 	movx	@dptr,a
   088C 90 02 59           1391 	mov	dptr,#(_b + 0x0059)
   088F 74 BB              1392 	mov	a,#0xBB
   0891 F0                 1393 	movx	@dptr,a
   0892 90 02 5A           1394 	mov	dptr,#(_b + 0x005a)
   0895 74 C3              1395 	mov	a,#0xC3
   0897 F0                 1396 	movx	@dptr,a
   0898 90 02 5B           1397 	mov	dptr,#(_b + 0x005b)
   089B 74 FF              1398 	mov	a,#0xFF
   089D F0                 1399 	movx	@dptr,a
   089E 90 02 5C           1400 	mov	dptr,#(_b + 0x005c)
   08A1 74 BC              1401 	mov	a,#0xBC
   08A3 F0                 1402 	movx	@dptr,a
   08A4 90 02 5D           1403 	mov	dptr,#(_b + 0x005d)
   08A7 74 C1              1404 	mov	a,#0xC1
   08A9 F0                 1405 	movx	@dptr,a
   08AA 90 02 5E           1406 	mov	dptr,#(_b + 0x005e)
   08AD 74 B8              1407 	mov	a,#0xB8
   08AF F0                 1408 	movx	@dptr,a
   08B0 90 02 5F           1409 	mov	dptr,#(_b + 0x005f)
   08B3 74 E1              1410 	mov	a,#0xE1
   08B5 F0                 1411 	movx	@dptr,a
   08B6 90 02 60           1412 	mov	dptr,#(_b + 0x0060)
   08B9 74 24              1413 	mov	a,#0x24
   08BB F0                 1414 	movx	@dptr,a
   08BC 90 02 61           1415 	mov	dptr,#(_b + 0x0061)
   08BF 74 8D              1416 	mov	a,#0x8D
   08C1 F0                 1417 	movx	@dptr,a
   08C2 90 02 62           1418 	mov	dptr,#(_b + 0x0062)
   08C5 74 C5              1419 	mov	a,#0xC5
   08C7 F0                 1420 	movx	@dptr,a
   08C8 90 02 63           1421 	mov	dptr,#(_b + 0x0063)
   08CB 74 20              1422 	mov	a,#0x20
   08CD F0                 1423 	movx	@dptr,a
   08CE 90 02 64           1424 	mov	dptr,#(_b + 0x0064)
   08D1 74 89              1425 	mov	a,#0x89
   08D3 F0                 1426 	movx	@dptr,a
   08D4 90 02 65           1427 	mov	dptr,#(_b + 0x0065)
   08D7 74 98              1428 	mov	a,#0x98
   08D9 F0                 1429 	movx	@dptr,a
   08DA 90 02 66           1430 	mov	dptr,#(_b + 0x0066)
   08DD 74 0B              1431 	mov	a,#0x0B
   08DF F0                 1432 	movx	@dptr,a
   08E0 90 02 67           1433 	mov	dptr,#(_b + 0x0067)
   08E3 74 50              1434 	mov	a,#0x50
   08E5 F0                 1435 	movx	@dptr,a
   08E6 90 02 68           1436 	mov	dptr,#(_b + 0x0068)
   08E9 74 B1              1437 	mov	a,#0xB1
   08EB F0                 1438 	movx	@dptr,a
   08EC 90 02 69           1439 	mov	dptr,#(_b + 0x0069)
   08EF 74 16              1440 	mov	a,#0x16
   08F1 F0                 1441 	movx	@dptr,a
   08F2 90 02 6A           1442 	mov	dptr,#(_b + 0x006a)
   08F5 74 9A              1443 	mov	a,#0x9A
   08F7 F0                 1444 	movx	@dptr,a
   08F8 90 02 6B           1445 	mov	dptr,#(_b + 0x006b)
   08FB 74 2D              1446 	mov	a,#0x2D
   08FD F0                 1447 	movx	@dptr,a
   08FE 90 02 6C           1448 	mov	dptr,#(_b + 0x006c)
   0901 74 6E              1449 	mov	a,#0x6E
   0903 F0                 1450 	movx	@dptr,a
   0904 90 02 6D           1451 	mov	dptr,#(_b + 0x006d)
   0907 74 5A              1452 	mov	a,#0x5A
   0909 F0                 1453 	movx	@dptr,a
   090A 90 02 6E           1454 	mov	dptr,#(_b + 0x006e)
   090D 74 7B              1455 	mov	a,#0x7B
   090F F0                 1456 	movx	@dptr,a
   0910 90 02 6F           1457 	mov	dptr,#(_b + 0x006f)
   0913 74 2F              1458 	mov	a,#0x2F
   0915 F0                 1459 	movx	@dptr,a
   0916 90 02 70           1460 	mov	dptr,#(_b + 0x0070)
   0919 74 D4              1461 	mov	a,#0xD4
   091B F0                 1462 	movx	@dptr,a
   091C 90 02 71           1463 	mov	dptr,#(_b + 0x0071)
   091F 74 92              1464 	mov	a,#0x92
   0921 F0                 1465 	movx	@dptr,a
   0922 90 02 72           1466 	mov	dptr,#(_b + 0x0072)
   0925 74 A1              1467 	mov	a,#0xA1
   0927 F0                 1468 	movx	@dptr,a
   0928 90 02 73           1469 	mov	dptr,#(_b + 0x0073)
   092B 74 AA              1470 	mov	a,#0xAA
   092D F0                 1471 	movx	@dptr,a
   092E 90 02 74           1472 	mov	dptr,#(_b + 0x0074)
   0931 74 A6              1473 	mov	a,#0xA6
   0933 F0                 1474 	movx	@dptr,a
   0934 90 02 75           1475 	mov	dptr,#(_b + 0x0075)
   0937 74 E5              1476 	mov	a,#0xE5
   0939 F0                 1477 	movx	@dptr,a
   093A 90 02 76           1478 	mov	dptr,#(_b + 0x0076)
   093D 74 A6              1479 	mov	a,#0xA6
   093F F0                 1480 	movx	@dptr,a
   0940 90 02 77           1481 	mov	dptr,#(_b + 0x0077)
   0943 74 D2              1482 	mov	a,#0xD2
   0945 F0                 1483 	movx	@dptr,a
   0946 90 02 78           1484 	mov	dptr,#(_b + 0x0078)
   0949 74 0D              1485 	mov	a,#0x0D
   094B F0                 1486 	movx	@dptr,a
   094C 90 02 79           1487 	mov	dptr,#(_b + 0x0079)
   094F 74 0B              1488 	mov	a,#0x0B
   0951 F0                 1489 	movx	@dptr,a
   0952 90 02 7A           1490 	mov	dptr,#(_b + 0x007a)
   0955 74 B7              1491 	mov	a,#0xB7
   0957 F0                 1492 	movx	@dptr,a
   0958 90 02 7B           1493 	mov	dptr,#(_b + 0x007b)
   095B 74 B2              1494 	mov	a,#0xB2
   095D F0                 1495 	movx	@dptr,a
   095E 90 02 7C           1496 	mov	dptr,#(_b + 0x007c)
   0961 74 25              1497 	mov	a,#0x25
   0963 F0                 1498 	movx	@dptr,a
   0964 90 02 7D           1499 	mov	dptr,#(_b + 0x007d)
   0967 74 23              1500 	mov	a,#0x23
   0969 F0                 1501 	movx	@dptr,a
   096A 90 02 7E           1502 	mov	dptr,#(_b + 0x007e)
   096D 74 23              1503 	mov	a,#0x23
   096F F0                 1504 	movx	@dptr,a
   0970 90 02 7F           1505 	mov	dptr,#(_b + 0x007f)
   0973 74 BE              1506 	mov	a,#0xBE
   0975 F0                 1507 	movx	@dptr,a
                           1508 	.area GSFINAL (CODE)
   0976 02 00 03           1509 	ljmp	__sdcc_program_startup
                           1510 ;--------------------------------------------------------
                           1511 ; Home
                           1512 ;--------------------------------------------------------
                           1513 	.area HOME    (CODE)
                           1514 	.area HOME    (CODE)
   0003                    1515 __sdcc_program_startup:
   0003 12 09 79           1516 	lcall	_main
                           1517 ;	return from main will lock up
   0006 80 FE              1518 	sjmp .
                           1519 ;--------------------------------------------------------
                           1520 ; code
                           1521 ;--------------------------------------------------------
                           1522 	.area CSEG    (CODE)
                           1523 ;------------------------------------------------------------
                           1524 ;Allocation info for local variables in function 'main'
                           1525 ;------------------------------------------------------------
                           1526 ;------------------------------------------------------------
                           1527 ;	main.c:29: int main() {
                           1528 ;	-----------------------------------------
                           1529 ;	 function main
                           1530 ;	-----------------------------------------
   0979                    1531 _main:
                    0002   1532 	ar2 = 0x02
                    0003   1533 	ar3 = 0x03
                    0004   1534 	ar4 = 0x04
                    0005   1535 	ar5 = 0x05
                    0006   1536 	ar6 = 0x06
                    0007   1537 	ar7 = 0x07
                    0000   1538 	ar0 = 0x00
                    0001   1539 	ar1 = 0x01
                           1540 ;	main.c:30: startBrk=1;
   0979 90 FF FE           1541 	mov	dptr,#_startBrk
   097C 74 01              1542 	mov	a,#0x01
   097E F0                 1543 	movx	@dptr,a
                           1544 ;	main.c:38: __endasm;
                           1545 	
   097F 85 00 82           1546 	        mov dpl, 0x00
   0982 75 83 00           1547 	        mov dph,#(_n >> 8)
   0985 E0                 1548 	        movx a,@dptr
   0986 FA                 1549 	        mov r2, a
                           1550 	    
                           1551 ;	main.c:46: __endasm;
                           1552 	
   0987 85 00 82           1553 	        mov dpl, 0x00
   098A 75 83 02           1554 	        mov dph,#(_b >> 8)
   098D E0                 1555 	        movx a,@dptr
   098E FB                 1556 	        mov r3, a
                           1557 	    
                           1558 ;	main.c:112: __endasm;
                           1559 	
   098F 89 11              1560 	        mov _stack, r1
   0991 C0 11              1561 	        push _stack
                           1562 	
                           1563         ; load a[0]
   0993 75 82 00           1564 	        mov dpl, #0x00
   0996 75 83 01           1565 	        mov dph, #(_a >> 8)
   0999 E0                 1566 	        movx a, @dptr
   099A F5 F0              1567 	        mov b, a
                           1568 	
                           1569         ; load b0
   099C EB                 1570 	        mov a, r3
                           1571 	
                           1572         ; a[0]*b0
   099D A4                 1573 	        mul ab
                           1574 	
                           1575         ; tmp = (unsigned char)(tmp) + a[0]*b0
   099E 25 08              1576 	        add a, _tmp
   09A0 F5 08              1577 	        mov _tmp, a
                           1578 	
                           1579         ; t = t + (tmp >> 8)
   09A2 E5 F0              1580 	        mov a, b
   09A4 35 0F              1581 	        addc a, _t
   09A6 F5 0F              1582 	        mov _t, a
   09A8 E4                 1583 	        clr a
   09A9 35 10              1584 	        addc a, (_t + 1)
   09AB F5 10              1585 	        mov (_t + 1), a
                           1586 	
                           1587         ; c = (unsigned char)(tmp)*0xA5
   09AD 74 A5              1588 	        mov a, #0xA5
   09AF 85 08 F0           1589 	        mov b, _tmp
   09B2 A4                 1590 	        mul ab
   09B3 F9                 1591 	        mov r1, a
                           1592 	
                           1593         ; m[0] = c
   09B4 75 82 00           1594 	        mov dpl, #0x00
   09B7 75 83 03           1595 	        mov dph, #(_m >> 8)
   09BA E9                 1596 	        mov a, r1
   09BB F0                 1597 	        movx @dptr, a
                           1598 	
                           1599         ; c*n0
   09BC 8A F0              1600 	        mov b, r2
   09BE EB                 1601 	        mov a, r3
   09BF A4                 1602 	        mul ab
                           1603 	
                           1604         ; tmp = (unsigned char)(tmp) + c*n0
   09C0 25 08              1605 	        add a, _tmp
   09C2 F5 08              1606 	        mov _tmp, a
                           1607 	
                           1608         ; tmp = t + (tmp >> 8)
   09C4 E5 F0              1609 	        mov a, b
   09C6 35 08              1610 	        addc a, _tmp
   09C8 F5 08              1611 	        mov _tmp, a
   09CA E4                 1612 	        clr a
   09CB 35 09              1613 	        addc a, (_tmp + 1)
   09CD F5 09              1614 	        mov (_tmp + 1), a
                           1615 	
                           1616         ; t = tmp >> 8;
   09CF 85 09 0F           1617 	        mov _t, (_tmp + 1)
   09D2 75 10 00           1618 	        mov (_t + 1), #0x00
                           1619 	
   09D5 D0 11              1620 	        pop _stack
   09D7 A9 11              1621 	        mov r1, _stack
                           1622 	    
                           1623 ;	main.c:114: for (i = 1; i < SIZE; i++) {
   09D9 75 0A 7F           1624 	mov	_i,#0x7F
   09DC E4                 1625 	clr	a
   09DD F5 0B              1626 	mov	(_i + 1),a
   09DF                    1627 00105$:
                           1628 ;	main.c:245: __endasm;
                           1629 	
   09DF 89 11              1630 	            mov _stack, r1
   09E1 C0 11              1631 	            push _stack
                           1632 	
   09E3 75 0C 00           1633 	            mov _j, #0x00
                           1634 	
   09E6                    1635 	            00001$:
                           1636                 ; load a[j]
   09E6 85 0C 82           1637 	                mov dpl, _j
   09E9 75 83 01           1638 	                mov dph, #(_a >> 8)
   09EC E0                 1639 	                movx a, @dptr
   09ED F5 F0              1640 	                mov b, a
                           1641 	
                           1642                 ; load b[i-j]
   09EF E5 0A              1643 	                mov a, _i
   09F1 C3                 1644 	                clr c
   09F2 95 0C              1645 	                subb a, _j
   09F4 F5 82              1646 	                mov dpl, a
   09F6 75 83 02           1647 	                mov dph, #(_b >> 8)
   09F9 E0                 1648 	                movx a, @dptr
                           1649 	
                           1650                 ; a[j]*b[i-j]
   09FA A4                 1651 	                mul ab
                           1652 	
                           1653                 ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
   09FB 25 08              1654 	                add a, _tmp
   09FD F5 08              1655 	                mov _tmp, a
                           1656 	
                           1657                 ; t = t + (tmp >> 8)
   09FF E5 F0              1658 	                mov a, b
   0A01 35 0F              1659 	                addc a, _t
   0A03 F5 0F              1660 	                mov _t, a
   0A05 E4                 1661 	                clr a
   0A06 35 10              1662 	                addc a, (_t + 1)
   0A08 F5 10              1663 	                mov (_t + 1), a
                           1664 	
                           1665                 ; load m[j]
   0A0A 85 0C 82           1666 	                mov dpl, _j
   0A0D 75 83 03           1667 	                mov dph, #(_m >> 8)
   0A10 E0                 1668 	                movx a, @dptr
   0A11 F5 F0              1669 	                mov b, a
                           1670 	
                           1671                 ; load n[i-j]
   0A13 E5 0A              1672 	                mov a, _i
   0A15 C3                 1673 	                clr c
   0A16 95 0C              1674 	                subb a, _j
   0A18 F5 82              1675 	                mov dpl, a
   0A1A 75 83 00           1676 	                mov dph, #(_n >> 8)
   0A1D E0                 1677 	                movx a, @dptr
                           1678 	
                           1679                 ; m[j]*n[i-j]
   0A1E A4                 1680 	                mul ab
                           1681 	
                           1682                 ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
   0A1F 25 08              1683 	                add a, _tmp
   0A21 F5 08              1684 	                mov _tmp, a
                           1685 	
                           1686                 ; t = t + (tmp >> 8)
   0A23 E5 F0              1687 	                mov a, b
   0A25 35 0F              1688 	                addc a, _t
   0A27 F5 0F              1689 	                mov _t, a
   0A29 E4                 1690 	                clr a
   0A2A 35 10              1691 	                addc a, (_t + 1)
   0A2C F5 10              1692 	                mov (_t + 1), a
                           1693 	
                           1694                 ; for (j = 1; i < j; j++)
   0A2E E5 0A              1695 	                mov a, _i
   0A30 05 0C              1696 	                inc _j
   0A32 95 0C              1697 	                subb a, _j
   0A34 70 B0              1698 	                jnz 00001$
                           1699 	
                           1700             ; load a[i]
   0A36 85 0A 82           1701 	            mov dpl, _i
   0A39 75 83 01           1702 	            mov dph, #(_a >> 8)
   0A3C E0                 1703 	            movx a, @dptr
   0A3D F5 F0              1704 	            mov b, a
                           1705 	
                           1706             ; load b0
   0A3F EB                 1707 	            mov a, r3
                           1708 	
                           1709             ; a[i]*b0
   0A40 A4                 1710 	            mul ab
                           1711 	
                           1712             ; tmp = (unsigned char)(tmp) + a[i]*b0
   0A41 25 08              1713 	            add a, _tmp
   0A43 F5 08              1714 	            mov _tmp, a
                           1715 	
                           1716             ; t = t + (tmp >> 8)
   0A45 E5 F0              1717 	            mov a, b
   0A47 35 0F              1718 	            addc a, _t
   0A49 F5 0F              1719 	            mov _t, a
   0A4B E4                 1720 	            clr a
   0A4C 35 10              1721 	            addc a, (_t + 1)
   0A4E F5 10              1722 	            mov (_t + 1), a
                           1723 	
                           1724             ; c = (unsigned char)(tmp)*0xA5
   0A50 74 A5              1725 	            mov a, #0xA5
   0A52 85 08 F0           1726 	            mov b, _tmp
   0A55 A4                 1727 	            mul ab
   0A56 F9                 1728 	            mov r1, a
                           1729 	
                           1730             ; m[i] = c
   0A57 85 0A 82           1731 	            mov dpl, _i
   0A5A 75 83 03           1732 	            mov dph, #(_m >> 8)
   0A5D E9                 1733 	            mov a, r1
   0A5E F0                 1734 	            movx @dptr, a
                           1735 	
                           1736             ; c*n0
   0A5F 8A F0              1737 	            mov b, r2
   0A61 EB                 1738 	            mov a, r3
   0A62 A4                 1739 	            mul ab
                           1740 	
                           1741             ; tmp = (unsigned char)(tmp) + c*n0
   0A63 25 08              1742 	            add a, _tmp
   0A65 F5 08              1743 	            mov _tmp, a
                           1744 	
                           1745             ; tmp = t + (tmp >> 8)
   0A67 E5 F0              1746 	            mov a, b
   0A69 35 08              1747 	            addc a, _tmp
   0A6B F5 08              1748 	            mov _tmp, a
   0A6D E4                 1749 	            clr a
   0A6E 35 09              1750 	            addc a, (_tmp + 1)
   0A70 F5 09              1751 	            mov (_tmp + 1), a
                           1752 	
                           1753             ; t = tmp >> 8;
   0A72 85 09 0F           1754 	            mov _t, (_tmp + 1)
   0A75 75 10 00           1755 	            mov (_t + 1), #0x00
                           1756 	
   0A78 D0 11              1757 	            pop _stack
   0A7A A9 11              1758 	            mov r1, _stack
                           1759 	        
   0A7C 15 0A              1760 	dec	_i
   0A7E 74 FF              1761 	mov	a,#0xff
   0A80 B5 0A 02           1762 	cjne	a,_i,00129$
   0A83 15 0B              1763 	dec	(_i + 1)
   0A85                    1764 00129$:
                           1765 ;	main.c:114: for (i = 1; i < SIZE; i++) {
   0A85 E5 0A              1766 	mov	a,_i
   0A87 45 0B              1767 	orl	a,(_i + 1)
   0A89 60 03              1768 	jz	00130$
   0A8B 02 09 DF           1769 	ljmp	00105$
   0A8E                    1770 00130$:
                           1771 ;	main.c:248: for (i = SIZE; i < 2*SIZE; i++) {
   0A8E 75 0A 80           1772 	mov	_i,#0x80
   0A91 E4                 1773 	clr	a
   0A92 F5 0B              1774 	mov	(_i + 1),a
   0A94                    1775 00106$:
   0A94 74 FF              1776 	mov	a,#0x100 - 0x01
   0A96 25 0B              1777 	add	a,(_i + 1)
   0A98 50 03              1778 	jnc	00131$
   0A9A 02 0B 1A           1779 	ljmp	00109$
   0A9D                    1780 00131$:
                           1781 ;	main.c:320: __endasm;
                           1782 	
                           1783             ; j = i-128 +1
   0A9D E5 0A              1784 	            mov a, _i
   0A9F 94 80              1785 	            subb a, #0x80
   0AA1 04                 1786 	            inc a
   0AA2 F5 0C              1787 	            mov _j, a
                           1788 	
   0AA4                    1789 	            00002$:
                           1790                 ; load a[j]
   0AA4 85 0C 82           1791 	                mov dpl, _j
   0AA7 75 83 01           1792 	                mov dph, #(_a >> 8)
   0AAA E0                 1793 	                movx a, @dptr
   0AAB F5 F0              1794 	                mov b, a
                           1795 	
                           1796                 ; load b[i-j]
   0AAD E5 0A              1797 	                mov a, _i
   0AAF C3                 1798 	                clr c
   0AB0 95 0C              1799 	                subb a, _j
   0AB2 F5 82              1800 	                mov dpl, a
   0AB4 75 83 02           1801 	                mov dph, #(_b >> 8)
   0AB7 E0                 1802 	                movx a, @dptr
                           1803 	
                           1804                 ; a[j]*b[i-j]
   0AB8 A4                 1805 	                mul ab
                           1806 	
                           1807                 ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
   0AB9 25 08              1808 	                add a, _tmp
   0ABB F5 08              1809 	                mov _tmp, a
                           1810 	
                           1811                 ; t = t + (tmp >> 8)
   0ABD E5 F0              1812 	                mov a, b
   0ABF 35 0F              1813 	                addc a, _t
   0AC1 F5 0F              1814 	                mov _t, a
   0AC3 E4                 1815 	                clr a
   0AC4 35 10              1816 	                addc a, (_t + 1)
   0AC6 F5 10              1817 	                mov (_t + 1), a
                           1818 	
                           1819                 ; load m[j]
   0AC8 85 0C 82           1820 	                mov dpl, _j
   0ACB 75 83 03           1821 	                mov dph, #(_m >> 8)
   0ACE E0                 1822 	                movx a, @dptr
   0ACF F5 F0              1823 	                mov b, a
                           1824 	
                           1825                 ; load n[i-j]
   0AD1 E5 0A              1826 	                mov a, _i
   0AD3 C3                 1827 	                clr c
   0AD4 95 0C              1828 	                subb a, _j
   0AD6 F5 82              1829 	                mov dpl, a
   0AD8 75 83 00           1830 	                mov dph, #(_n >> 8)
   0ADB E0                 1831 	                movx a, @dptr
                           1832 	
                           1833                 ; a[j]*b[i-j]
   0ADC A4                 1834 	                mul ab
                           1835 	
                           1836                 ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
   0ADD 25 08              1837 	                add a, _tmp
   0ADF F5 08              1838 	                mov _tmp, a
                           1839 	
                           1840                 ; t = t + (tmp >> 8)
   0AE1 E5 F0              1841 	                mov a, b
   0AE3 35 0F              1842 	                addc a, _t
   0AE5 F5 0F              1843 	                mov _t, a
   0AE7 E4                 1844 	                clr a
   0AE8 35 10              1845 	                addc a, (_t + 1)
   0AEA F5 10              1846 	                mov (_t + 1), a
                           1847 	
                           1848                 ; for (j = i-128 +1; j < 128; j++)
   0AEC 74 80              1849 	                mov a, #0x80
   0AEE 05 0C              1850 	                inc _j
   0AF0 95 0C              1851 	                subb a, _j
   0AF2 70 B0              1852 	                jnz 00002$
                           1853 	        
                           1854 ;	main.c:322: m[i-SIZE] = (unsigned char)(tmp);
   0AF4 E5 0A              1855 	mov	a,_i
   0AF6 24 80              1856 	add	a,#0x80+_m
   0AF8 F5 82              1857 	mov	dpl,a
   0AFA E4                 1858 	clr	a
   0AFB 34 03              1859 	addc	a,#(_m >> 8)
   0AFD F5 83              1860 	mov	dph,a
   0AFF E5 08              1861 	mov	a,_tmp
   0B01 F0                 1862 	movx	@dptr,a
                           1863 ;	main.c:323: tmp = (unsigned char)(t);
   0B02 AA 0F              1864 	mov	r2,_t
   0B04 8A 08              1865 	mov	_tmp,r2
   0B06 75 09 00           1866 	mov	(_tmp + 1),#0x00
                           1867 ;	main.c:324: t = t >> 8;
   0B09 85 10 0F           1868 	mov	_t,(_t + 1)
   0B0C 75 10 00           1869 	mov	(_t + 1),#0x00
                           1870 ;	main.c:248: for (i = SIZE; i < 2*SIZE; i++) {
   0B0F 05 0A              1871 	inc	_i
   0B11 E4                 1872 	clr	a
   0B12 B5 0A 02           1873 	cjne	a,_i,00132$
   0B15 05 0B              1874 	inc	(_i + 1)
   0B17                    1875 00132$:
   0B17 02 0A 94           1876 	ljmp	00106$
   0B1A                    1877 00109$:
                           1878 ;	main.c:327: m[SIZE] = tmp;
   0B1A AA 08              1879 	mov	r2,_tmp
   0B1C 90 03 80           1880 	mov	dptr,#(_m + 0x0080)
   0B1F EA                 1881 	mov	a,r2
   0B20 F0                 1882 	movx	@dptr,a
                           1883 ;	main.c:328: tmp = m[0] - n0;
   0B21 90 03 00           1884 	mov	dptr,#_m
   0B24 E0                 1885 	movx	a,@dptr
   0B25 FA                 1886 	mov	r2,a
   0B26 7B 00              1887 	mov	r3,#0x00
   0B28 AC 12              1888 	mov	r4,_n0
   0B2A 7D 00              1889 	mov	r5,#0x00
   0B2C EA                 1890 	mov	a,r2
   0B2D C3                 1891 	clr	c
   0B2E 9C                 1892 	subb	a,r4
   0B2F F5 08              1893 	mov	_tmp,a
   0B31 EB                 1894 	mov	a,r3
   0B32 9D                 1895 	subb	a,r5
   0B33 F5 09              1896 	mov	(_tmp + 1),a
                           1897 ;	main.c:330: for (i = 0; i < SIZE; i++) {
   0B35 E4                 1898 	clr	a
   0B36 F5 0A              1899 	mov	_i,a
   0B38 F5 0B              1900 	mov	(_i + 1),a
   0B3A                    1901 00110$:
   0B3A C3                 1902 	clr	c
   0B3B E5 0A              1903 	mov	a,_i
   0B3D 94 80              1904 	subb	a,#0x80
   0B3F E5 0B              1905 	mov	a,(_i + 1)
   0B41 94 00              1906 	subb	a,#0x00
   0B43 50 45              1907 	jnc	00113$
                           1908 ;	main.c:331: tmp = m[i] - n[i] - (tmp >> 8);
   0B45 85 0A 82           1909 	mov	dpl,_i
   0B48 74 03              1910 	mov	a,#(_m >> 8)
   0B4A 25 0B              1911 	add	a,(_i + 1)
   0B4C F5 83              1912 	mov	dph,a
   0B4E E0                 1913 	movx	a,@dptr
   0B4F FA                 1914 	mov	r2,a
   0B50 7B 00              1915 	mov	r3,#0x00
   0B52 85 0A 82           1916 	mov	dpl,_i
   0B55 74 00              1917 	mov	a,#(_n >> 8)
   0B57 25 0B              1918 	add	a,(_i + 1)
   0B59 F5 83              1919 	mov	dph,a
   0B5B E0                 1920 	movx	a,@dptr
   0B5C FC                 1921 	mov	r4,a
   0B5D 7D 00              1922 	mov	r5,#0x00
   0B5F EA                 1923 	mov	a,r2
   0B60 C3                 1924 	clr	c
   0B61 9C                 1925 	subb	a,r4
   0B62 FA                 1926 	mov	r2,a
   0B63 EB                 1927 	mov	a,r3
   0B64 9D                 1928 	subb	a,r5
   0B65 FB                 1929 	mov	r3,a
   0B66 AC 09              1930 	mov	r4,(_tmp + 1)
   0B68 7D 00              1931 	mov	r5,#0x00
   0B6A EA                 1932 	mov	a,r2
   0B6B C3                 1933 	clr	c
   0B6C 9C                 1934 	subb	a,r4
   0B6D F5 08              1935 	mov	_tmp,a
   0B6F EB                 1936 	mov	a,r3
   0B70 9D                 1937 	subb	a,r5
   0B71 F5 09              1938 	mov	(_tmp + 1),a
                           1939 ;	main.c:332: u[i] = tmp;
   0B73 85 0A 82           1940 	mov	dpl,_i
   0B76 74 04              1941 	mov	a,#(_u >> 8)
   0B78 25 0B              1942 	add	a,(_i + 1)
   0B7A F5 83              1943 	mov	dph,a
   0B7C E5 08              1944 	mov	a,_tmp
   0B7E FA                 1945 	mov	r2,a
   0B7F F0                 1946 	movx	@dptr,a
                           1947 ;	main.c:330: for (i = 0; i < SIZE; i++) {
   0B80 05 0A              1948 	inc	_i
   0B82 E4                 1949 	clr	a
   0B83 B5 0A B4           1950 	cjne	a,_i,00110$
   0B86 05 0B              1951 	inc	(_i + 1)
   0B88 80 B0              1952 	sjmp	00110$
   0B8A                    1953 00113$:
                           1954 ;	main.c:335: if ((tmp >> 8) == 0) {
   0B8A AA 09              1955 	mov	r2,(_tmp + 1)
   0B8C 7B 00              1956 	mov	r3,#0x00
   0B8E EA                 1957 	mov	a,r2
   0B8F 4B                 1958 	orl	a,r3
                           1959 ;	main.c:336: for (i = 0; i < SIZE; i++) {
   0B90 70 30              1960 	jnz	00102$
   0B92 F5 0A              1961 	mov	_i,a
   0B94 F5 0B              1962 	mov	(_i + 1),a
   0B96                    1963 00114$:
   0B96 C3                 1964 	clr	c
   0B97 E5 0A              1965 	mov	a,_i
   0B99 94 80              1966 	subb	a,#0x80
   0B9B E5 0B              1967 	mov	a,(_i + 1)
   0B9D 94 00              1968 	subb	a,#0x00
   0B9F 50 21              1969 	jnc	00102$
                           1970 ;	main.c:337: m[i] = u[i];
   0BA1 AA 0A              1971 	mov	r2,_i
   0BA3 74 03              1972 	mov	a,#(_m >> 8)
   0BA5 25 0B              1973 	add	a,(_i + 1)
   0BA7 FB                 1974 	mov	r3,a
   0BA8 85 0A 82           1975 	mov	dpl,_i
   0BAB 74 04              1976 	mov	a,#(_u >> 8)
   0BAD 25 0B              1977 	add	a,(_i + 1)
   0BAF F5 83              1978 	mov	dph,a
   0BB1 E0                 1979 	movx	a,@dptr
   0BB2 FC                 1980 	mov	r4,a
   0BB3 8A 82              1981 	mov	dpl,r2
   0BB5 8B 83              1982 	mov	dph,r3
   0BB7 F0                 1983 	movx	@dptr,a
                           1984 ;	main.c:336: for (i = 0; i < SIZE; i++) {
   0BB8 05 0A              1985 	inc	_i
   0BBA E4                 1986 	clr	a
   0BBB B5 0A D8           1987 	cjne	a,_i,00114$
   0BBE 05 0B              1988 	inc	(_i + 1)
   0BC0 80 D4              1989 	sjmp	00114$
   0BC2                    1990 00102$:
                           1991 ;	main.c:341: endBrk=1;
   0BC2 90 FF FF           1992 	mov	dptr,#_endBrk
   0BC5 74 01              1993 	mov	a,#0x01
   0BC7 F0                 1994 	movx	@dptr,a
                           1995 ;	main.c:343: return 0;
   0BC8 90 00 00           1996 	mov	dptr,#0x0000
   0BCB 22                 1997 	ret
                           1998 	.area CSEG    (CODE)
                           1999 	.area CONST   (CODE)
                           2000 	.area XINIT   (CODE)
                           2001 	.area CABS    (ABS,CODE)
