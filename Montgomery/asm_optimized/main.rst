                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Wed Dec  5 17:59:12 2012
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
                            116 	.globl _stack
                            117 	.globl _t
                            118 	.globl _j
                            119 	.globl _i
                            120 	.globl _tmp
                            121 	.globl _fips
                            122 ;--------------------------------------------------------
                            123 ; special function registers
                            124 ;--------------------------------------------------------
                            125 	.area RSEG    (DATA)
                    0080    126 _P0	=	0x0080
                    0081    127 _SP	=	0x0081
                    0082    128 _DPL	=	0x0082
                    0083    129 _DPH	=	0x0083
                    0087    130 _PCON	=	0x0087
                    0088    131 _TCON	=	0x0088
                    0089    132 _TMOD	=	0x0089
                    008A    133 _TL0	=	0x008a
                    008B    134 _TL1	=	0x008b
                    008C    135 _TH0	=	0x008c
                    008D    136 _TH1	=	0x008d
                    0090    137 _P1	=	0x0090
                    0098    138 _SCON	=	0x0098
                    0099    139 _SBUF	=	0x0099
                    00A0    140 _P2	=	0x00a0
                    00A8    141 _IE	=	0x00a8
                    00B0    142 _P3	=	0x00b0
                    00B8    143 _IP	=	0x00b8
                    00D0    144 _PSW	=	0x00d0
                    00E0    145 _ACC	=	0x00e0
                    00F0    146 _B	=	0x00f0
                            147 ;--------------------------------------------------------
                            148 ; special function bits
                            149 ;--------------------------------------------------------
                            150 	.area RSEG    (DATA)
                    0080    151 _P0_0	=	0x0080
                    0081    152 _P0_1	=	0x0081
                    0082    153 _P0_2	=	0x0082
                    0083    154 _P0_3	=	0x0083
                    0084    155 _P0_4	=	0x0084
                    0085    156 _P0_5	=	0x0085
                    0086    157 _P0_6	=	0x0086
                    0087    158 _P0_7	=	0x0087
                    0088    159 _IT0	=	0x0088
                    0089    160 _IE0	=	0x0089
                    008A    161 _IT1	=	0x008a
                    008B    162 _IE1	=	0x008b
                    008C    163 _TR0	=	0x008c
                    008D    164 _TF0	=	0x008d
                    008E    165 _TR1	=	0x008e
                    008F    166 _TF1	=	0x008f
                    0090    167 _P1_0	=	0x0090
                    0091    168 _P1_1	=	0x0091
                    0092    169 _P1_2	=	0x0092
                    0093    170 _P1_3	=	0x0093
                    0094    171 _P1_4	=	0x0094
                    0095    172 _P1_5	=	0x0095
                    0096    173 _P1_6	=	0x0096
                    0097    174 _P1_7	=	0x0097
                    0098    175 _RI	=	0x0098
                    0099    176 _TI	=	0x0099
                    009A    177 _RB8	=	0x009a
                    009B    178 _TB8	=	0x009b
                    009C    179 _REN	=	0x009c
                    009D    180 _SM2	=	0x009d
                    009E    181 _SM1	=	0x009e
                    009F    182 _SM0	=	0x009f
                    00A0    183 _P2_0	=	0x00a0
                    00A1    184 _P2_1	=	0x00a1
                    00A2    185 _P2_2	=	0x00a2
                    00A3    186 _P2_3	=	0x00a3
                    00A4    187 _P2_4	=	0x00a4
                    00A5    188 _P2_5	=	0x00a5
                    00A6    189 _P2_6	=	0x00a6
                    00A7    190 _P2_7	=	0x00a7
                    00A8    191 _EX0	=	0x00a8
                    00A9    192 _ET0	=	0x00a9
                    00AA    193 _EX1	=	0x00aa
                    00AB    194 _ET1	=	0x00ab
                    00AC    195 _ES	=	0x00ac
                    00AF    196 _EA	=	0x00af
                    00B0    197 _P3_0	=	0x00b0
                    00B1    198 _P3_1	=	0x00b1
                    00B2    199 _P3_2	=	0x00b2
                    00B3    200 _P3_3	=	0x00b3
                    00B4    201 _P3_4	=	0x00b4
                    00B5    202 _P3_5	=	0x00b5
                    00B6    203 _P3_6	=	0x00b6
                    00B7    204 _P3_7	=	0x00b7
                    00B0    205 _RXD	=	0x00b0
                    00B1    206 _TXD	=	0x00b1
                    00B2    207 _INT0	=	0x00b2
                    00B3    208 _INT1	=	0x00b3
                    00B4    209 _T0	=	0x00b4
                    00B5    210 _T1	=	0x00b5
                    00B6    211 _WR	=	0x00b6
                    00B7    212 _RD	=	0x00b7
                    00B8    213 _PX0	=	0x00b8
                    00B9    214 _PT0	=	0x00b9
                    00BA    215 _PX1	=	0x00ba
                    00BB    216 _PT1	=	0x00bb
                    00BC    217 _PS	=	0x00bc
                    00D0    218 _P	=	0x00d0
                    00D1    219 _F1	=	0x00d1
                    00D2    220 _OV	=	0x00d2
                    00D3    221 _RS0	=	0x00d3
                    00D4    222 _RS1	=	0x00d4
                    00D5    223 _F0	=	0x00d5
                    00D6    224 _AC	=	0x00d6
                    00D7    225 _CY	=	0x00d7
                            226 ;--------------------------------------------------------
                            227 ; overlayable register banks
                            228 ;--------------------------------------------------------
                            229 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     230 	.ds 8
                            231 ;--------------------------------------------------------
                            232 ; internal ram data
                            233 ;--------------------------------------------------------
                            234 	.area DSEG    (DATA)
   0008                     235 _tmp::
   0008                     236 	.ds 2
   000A                     237 _i::
   000A                     238 	.ds 1
   000B                     239 _j::
   000B                     240 	.ds 1
   000C                     241 _t::
   000C                     242 	.ds 2
   000E                     243 _stack::
   000E                     244 	.ds 1
                            245 ;--------------------------------------------------------
                            246 ; overlayable items in internal ram 
                            247 ;--------------------------------------------------------
                            248 	.area OSEG    (OVR,DATA)
                            249 ;--------------------------------------------------------
                            250 ; Stack segment in internal ram 
                            251 ;--------------------------------------------------------
                            252 	.area	SSEG	(DATA)
   000F                     253 __start__stack:
   000F                     254 	.ds	1
                            255 
                            256 ;--------------------------------------------------------
                            257 ; indirectly addressable internal ram data
                            258 ;--------------------------------------------------------
                            259 	.area ISEG    (DATA)
                            260 ;--------------------------------------------------------
                            261 ; absolute internal ram data
                            262 ;--------------------------------------------------------
                            263 	.area IABS    (ABS,DATA)
                            264 	.area IABS    (ABS,DATA)
                            265 ;--------------------------------------------------------
                            266 ; bit data
                            267 ;--------------------------------------------------------
                            268 	.area BSEG    (BIT)
                            269 ;--------------------------------------------------------
                            270 ; paged external ram data
                            271 ;--------------------------------------------------------
                            272 	.area PSEG    (PAG,XDATA)
                            273 ;--------------------------------------------------------
                            274 ; external ram data
                            275 ;--------------------------------------------------------
                            276 	.area XSEG    (XDATA)
                    FFFE    277 _startBrk	=	0xfffe
                    FFFF    278 _endBrk	=	0xffff
                    0400    279 _m	=	0x0400
                    0500    280 _u	=	0x0500
                            281 ;--------------------------------------------------------
                            282 ; absolute external ram data
                            283 ;--------------------------------------------------------
                            284 	.area XABS    (ABS,XDATA)
   0100                     285 	.org 0x0100
   0100                     286 _n::
   0100                     287 	.ds 128
   0200                     288 	.org 0x0200
   0200                     289 _a::
   0200                     290 	.ds 128
   0000                     291 	.org 0x0000
   0000                     292 _b::
   0000                     293 	.ds 128
                            294 ;--------------------------------------------------------
                            295 ; external initialized ram data
                            296 ;--------------------------------------------------------
                            297 	.area XISEG   (XDATA)
                            298 	.area HOME    (CODE)
                            299 	.area GSINIT0 (CODE)
                            300 	.area GSINIT1 (CODE)
                            301 	.area GSINIT2 (CODE)
                            302 	.area GSINIT3 (CODE)
                            303 	.area GSINIT4 (CODE)
                            304 	.area GSINIT5 (CODE)
                            305 	.area GSINIT  (CODE)
                            306 	.area GSFINAL (CODE)
                            307 	.area CSEG    (CODE)
                            308 ;--------------------------------------------------------
                            309 ; interrupt vector 
                            310 ;--------------------------------------------------------
                            311 	.area HOME    (CODE)
   0000                     312 __interrupt_vect:
   0000 02 00 08            313 	ljmp	__sdcc_gsinit_startup
                            314 ;--------------------------------------------------------
                            315 ; global & static initialisations
                            316 ;--------------------------------------------------------
                            317 	.area HOME    (CODE)
                            318 	.area GSINIT  (CODE)
                            319 	.area GSFINAL (CODE)
                            320 	.area GSINIT  (CODE)
                            321 	.globl __sdcc_gsinit_startup
                            322 	.globl __sdcc_program_startup
                            323 	.globl __start__stack
                            324 	.globl __mcs51_genXINIT
                            325 	.globl __mcs51_genXRAMCLEAR
                            326 	.globl __mcs51_genRAMCLEAR
                            327 ;	main.c:32: unsigned short tmp   = 0;
   0061 E4                  328 	clr	a
   0062 F5 08               329 	mov	_tmp,a
   0064 F5 09               330 	mov	(_tmp + 1),a
                            331 ;	main.c:33: unsigned char i      = 0;
   0066 75 0A 00            332 	mov	_i,#0x00
                            333 ;	main.c:34: unsigned char j      = 0;
   0069 75 0B 00            334 	mov	_j,#0x00
                            335 ;	main.c:36: unsigned short t     = 0;
   006C E4                  336 	clr	a
   006D F5 0C               337 	mov	_t,a
   006F F5 0D               338 	mov	(_t + 1),a
                            339 ;	main.c:24: __xdata __at (0x0100) unsigned char n[SIZE] = {0x5D,0xEF,0x94,0x7C,0x83,0xBF,0x40,0x4D,0xAB,0xD7,0xDF,0xB2,0x4D,0x2B,0x07,0x59,0x1A,0x48,0xAE,0x45,0x17,0x2E,0x6A,0x65,0x01,0x54,0xF5,0xB7,0xDC,0x5D,0x8F,0x4C,0x33,0x84,0x70,0xBB,0x0B,0xA4,0xAC,0x87,0x82,0x1D,0x0D,0x50,0x2D,0x45,0xF9,0xF0,0x11,0x5B,0xC8,0xF9,0x18,0xFB,0xD3,0x6F,0xC3,0x74,0x02,0xAB,0x32,0x46,0x6B,0x52,0x9B,0x71,0xD9,0x21,0x73,0x3A,0xCC,0x6D,0xDB,0x10,0x89,0xCB,0x3B,0x47,0x13,0x0E,0x65,0x86,0x9E,0x7F,0x3E,0x43,0x92,0xFC,0xB6,0x6A,0x6B,0x37,0x90,0xEB,0x4F,0xE9,0xEB,0x9C,0x2F,0x6B,0x26,0xEF,0xB4,0xBB,0xFC,0x3D,0x33,0xFB,0x97,0x67,0x93,0x26,0x96,0x38,0xE5,0xF0,0x3A,0xC6,0xA3,0x95,0xA5,0x98,0xF4,0xB8,0x0B,0x88,0xE1,0xD4};
   0071 90 01 00            340 	mov	dptr,#_n
   0074 74 5D               341 	mov	a,#0x5D
   0076 F0                  342 	movx	@dptr,a
   0077 90 01 01            343 	mov	dptr,#(_n + 0x0001)
   007A 74 EF               344 	mov	a,#0xEF
   007C F0                  345 	movx	@dptr,a
   007D 90 01 02            346 	mov	dptr,#(_n + 0x0002)
   0080 74 94               347 	mov	a,#0x94
   0082 F0                  348 	movx	@dptr,a
   0083 90 01 03            349 	mov	dptr,#(_n + 0x0003)
   0086 74 7C               350 	mov	a,#0x7C
   0088 F0                  351 	movx	@dptr,a
   0089 90 01 04            352 	mov	dptr,#(_n + 0x0004)
   008C 74 83               353 	mov	a,#0x83
   008E F0                  354 	movx	@dptr,a
   008F 90 01 05            355 	mov	dptr,#(_n + 0x0005)
   0092 74 BF               356 	mov	a,#0xBF
   0094 F0                  357 	movx	@dptr,a
   0095 90 01 06            358 	mov	dptr,#(_n + 0x0006)
   0098 74 40               359 	mov	a,#0x40
   009A F0                  360 	movx	@dptr,a
   009B 90 01 07            361 	mov	dptr,#(_n + 0x0007)
   009E 74 4D               362 	mov	a,#0x4D
   00A0 F0                  363 	movx	@dptr,a
   00A1 90 01 08            364 	mov	dptr,#(_n + 0x0008)
   00A4 74 AB               365 	mov	a,#0xAB
   00A6 F0                  366 	movx	@dptr,a
   00A7 90 01 09            367 	mov	dptr,#(_n + 0x0009)
   00AA 74 D7               368 	mov	a,#0xD7
   00AC F0                  369 	movx	@dptr,a
   00AD 90 01 0A            370 	mov	dptr,#(_n + 0x000a)
   00B0 74 DF               371 	mov	a,#0xDF
   00B2 F0                  372 	movx	@dptr,a
   00B3 90 01 0B            373 	mov	dptr,#(_n + 0x000b)
   00B6 74 B2               374 	mov	a,#0xB2
   00B8 F0                  375 	movx	@dptr,a
   00B9 90 01 0C            376 	mov	dptr,#(_n + 0x000c)
   00BC 74 4D               377 	mov	a,#0x4D
   00BE F0                  378 	movx	@dptr,a
   00BF 90 01 0D            379 	mov	dptr,#(_n + 0x000d)
   00C2 74 2B               380 	mov	a,#0x2B
   00C4 F0                  381 	movx	@dptr,a
   00C5 90 01 0E            382 	mov	dptr,#(_n + 0x000e)
   00C8 74 07               383 	mov	a,#0x07
   00CA F0                  384 	movx	@dptr,a
   00CB 90 01 0F            385 	mov	dptr,#(_n + 0x000f)
   00CE 74 59               386 	mov	a,#0x59
   00D0 F0                  387 	movx	@dptr,a
   00D1 90 01 10            388 	mov	dptr,#(_n + 0x0010)
   00D4 74 1A               389 	mov	a,#0x1A
   00D6 F0                  390 	movx	@dptr,a
   00D7 90 01 11            391 	mov	dptr,#(_n + 0x0011)
   00DA 74 48               392 	mov	a,#0x48
   00DC F0                  393 	movx	@dptr,a
   00DD 90 01 12            394 	mov	dptr,#(_n + 0x0012)
   00E0 74 AE               395 	mov	a,#0xAE
   00E2 F0                  396 	movx	@dptr,a
   00E3 90 01 13            397 	mov	dptr,#(_n + 0x0013)
   00E6 74 45               398 	mov	a,#0x45
   00E8 F0                  399 	movx	@dptr,a
   00E9 90 01 14            400 	mov	dptr,#(_n + 0x0014)
   00EC 74 17               401 	mov	a,#0x17
   00EE F0                  402 	movx	@dptr,a
   00EF 90 01 15            403 	mov	dptr,#(_n + 0x0015)
   00F2 74 2E               404 	mov	a,#0x2E
   00F4 F0                  405 	movx	@dptr,a
   00F5 90 01 16            406 	mov	dptr,#(_n + 0x0016)
   00F8 74 6A               407 	mov	a,#0x6A
   00FA F0                  408 	movx	@dptr,a
   00FB 90 01 17            409 	mov	dptr,#(_n + 0x0017)
   00FE 74 65               410 	mov	a,#0x65
   0100 F0                  411 	movx	@dptr,a
   0101 90 01 18            412 	mov	dptr,#(_n + 0x0018)
   0104 74 01               413 	mov	a,#0x01
   0106 F0                  414 	movx	@dptr,a
   0107 90 01 19            415 	mov	dptr,#(_n + 0x0019)
   010A 74 54               416 	mov	a,#0x54
   010C F0                  417 	movx	@dptr,a
   010D 90 01 1A            418 	mov	dptr,#(_n + 0x001a)
   0110 74 F5               419 	mov	a,#0xF5
   0112 F0                  420 	movx	@dptr,a
   0113 90 01 1B            421 	mov	dptr,#(_n + 0x001b)
   0116 74 B7               422 	mov	a,#0xB7
   0118 F0                  423 	movx	@dptr,a
   0119 90 01 1C            424 	mov	dptr,#(_n + 0x001c)
   011C 74 DC               425 	mov	a,#0xDC
   011E F0                  426 	movx	@dptr,a
   011F 90 01 1D            427 	mov	dptr,#(_n + 0x001d)
   0122 74 5D               428 	mov	a,#0x5D
   0124 F0                  429 	movx	@dptr,a
   0125 90 01 1E            430 	mov	dptr,#(_n + 0x001e)
   0128 74 8F               431 	mov	a,#0x8F
   012A F0                  432 	movx	@dptr,a
   012B 90 01 1F            433 	mov	dptr,#(_n + 0x001f)
   012E 74 4C               434 	mov	a,#0x4C
   0130 F0                  435 	movx	@dptr,a
   0131 90 01 20            436 	mov	dptr,#(_n + 0x0020)
   0134 74 33               437 	mov	a,#0x33
   0136 F0                  438 	movx	@dptr,a
   0137 90 01 21            439 	mov	dptr,#(_n + 0x0021)
   013A 74 84               440 	mov	a,#0x84
   013C F0                  441 	movx	@dptr,a
   013D 90 01 22            442 	mov	dptr,#(_n + 0x0022)
   0140 74 70               443 	mov	a,#0x70
   0142 F0                  444 	movx	@dptr,a
   0143 90 01 23            445 	mov	dptr,#(_n + 0x0023)
   0146 74 BB               446 	mov	a,#0xBB
   0148 F0                  447 	movx	@dptr,a
   0149 90 01 24            448 	mov	dptr,#(_n + 0x0024)
   014C 74 0B               449 	mov	a,#0x0B
   014E F0                  450 	movx	@dptr,a
   014F 90 01 25            451 	mov	dptr,#(_n + 0x0025)
   0152 74 A4               452 	mov	a,#0xA4
   0154 F0                  453 	movx	@dptr,a
   0155 90 01 26            454 	mov	dptr,#(_n + 0x0026)
   0158 74 AC               455 	mov	a,#0xAC
   015A F0                  456 	movx	@dptr,a
   015B 90 01 27            457 	mov	dptr,#(_n + 0x0027)
   015E 74 87               458 	mov	a,#0x87
   0160 F0                  459 	movx	@dptr,a
   0161 90 01 28            460 	mov	dptr,#(_n + 0x0028)
   0164 74 82               461 	mov	a,#0x82
   0166 F0                  462 	movx	@dptr,a
   0167 90 01 29            463 	mov	dptr,#(_n + 0x0029)
   016A 74 1D               464 	mov	a,#0x1D
   016C F0                  465 	movx	@dptr,a
   016D 90 01 2A            466 	mov	dptr,#(_n + 0x002a)
   0170 74 0D               467 	mov	a,#0x0D
   0172 F0                  468 	movx	@dptr,a
   0173 90 01 2B            469 	mov	dptr,#(_n + 0x002b)
   0176 74 50               470 	mov	a,#0x50
   0178 F0                  471 	movx	@dptr,a
   0179 90 01 2C            472 	mov	dptr,#(_n + 0x002c)
   017C 74 2D               473 	mov	a,#0x2D
   017E F0                  474 	movx	@dptr,a
   017F 90 01 2D            475 	mov	dptr,#(_n + 0x002d)
   0182 74 45               476 	mov	a,#0x45
   0184 F0                  477 	movx	@dptr,a
   0185 90 01 2E            478 	mov	dptr,#(_n + 0x002e)
   0188 74 F9               479 	mov	a,#0xF9
   018A F0                  480 	movx	@dptr,a
   018B 90 01 2F            481 	mov	dptr,#(_n + 0x002f)
   018E 74 F0               482 	mov	a,#0xF0
   0190 F0                  483 	movx	@dptr,a
   0191 90 01 30            484 	mov	dptr,#(_n + 0x0030)
   0194 74 11               485 	mov	a,#0x11
   0196 F0                  486 	movx	@dptr,a
   0197 90 01 31            487 	mov	dptr,#(_n + 0x0031)
   019A 74 5B               488 	mov	a,#0x5B
   019C F0                  489 	movx	@dptr,a
   019D 90 01 32            490 	mov	dptr,#(_n + 0x0032)
   01A0 74 C8               491 	mov	a,#0xC8
   01A2 F0                  492 	movx	@dptr,a
   01A3 90 01 33            493 	mov	dptr,#(_n + 0x0033)
   01A6 74 F9               494 	mov	a,#0xF9
   01A8 F0                  495 	movx	@dptr,a
   01A9 90 01 34            496 	mov	dptr,#(_n + 0x0034)
   01AC 74 18               497 	mov	a,#0x18
   01AE F0                  498 	movx	@dptr,a
   01AF 90 01 35            499 	mov	dptr,#(_n + 0x0035)
   01B2 74 FB               500 	mov	a,#0xFB
   01B4 F0                  501 	movx	@dptr,a
   01B5 90 01 36            502 	mov	dptr,#(_n + 0x0036)
   01B8 74 D3               503 	mov	a,#0xD3
   01BA F0                  504 	movx	@dptr,a
   01BB 90 01 37            505 	mov	dptr,#(_n + 0x0037)
   01BE 74 6F               506 	mov	a,#0x6F
   01C0 F0                  507 	movx	@dptr,a
   01C1 90 01 38            508 	mov	dptr,#(_n + 0x0038)
   01C4 74 C3               509 	mov	a,#0xC3
   01C6 F0                  510 	movx	@dptr,a
   01C7 90 01 39            511 	mov	dptr,#(_n + 0x0039)
   01CA 74 74               512 	mov	a,#0x74
   01CC F0                  513 	movx	@dptr,a
   01CD 90 01 3A            514 	mov	dptr,#(_n + 0x003a)
   01D0 74 02               515 	mov	a,#0x02
   01D2 F0                  516 	movx	@dptr,a
   01D3 90 01 3B            517 	mov	dptr,#(_n + 0x003b)
   01D6 74 AB               518 	mov	a,#0xAB
   01D8 F0                  519 	movx	@dptr,a
   01D9 90 01 3C            520 	mov	dptr,#(_n + 0x003c)
   01DC 74 32               521 	mov	a,#0x32
   01DE F0                  522 	movx	@dptr,a
   01DF 90 01 3D            523 	mov	dptr,#(_n + 0x003d)
   01E2 74 46               524 	mov	a,#0x46
   01E4 F0                  525 	movx	@dptr,a
   01E5 90 01 3E            526 	mov	dptr,#(_n + 0x003e)
   01E8 74 6B               527 	mov	a,#0x6B
   01EA F0                  528 	movx	@dptr,a
   01EB 90 01 3F            529 	mov	dptr,#(_n + 0x003f)
   01EE 74 52               530 	mov	a,#0x52
   01F0 F0                  531 	movx	@dptr,a
   01F1 90 01 40            532 	mov	dptr,#(_n + 0x0040)
   01F4 74 9B               533 	mov	a,#0x9B
   01F6 F0                  534 	movx	@dptr,a
   01F7 90 01 41            535 	mov	dptr,#(_n + 0x0041)
   01FA 74 71               536 	mov	a,#0x71
   01FC F0                  537 	movx	@dptr,a
   01FD 90 01 42            538 	mov	dptr,#(_n + 0x0042)
   0200 74 D9               539 	mov	a,#0xD9
   0202 F0                  540 	movx	@dptr,a
   0203 90 01 43            541 	mov	dptr,#(_n + 0x0043)
   0206 74 21               542 	mov	a,#0x21
   0208 F0                  543 	movx	@dptr,a
   0209 90 01 44            544 	mov	dptr,#(_n + 0x0044)
   020C 74 73               545 	mov	a,#0x73
   020E F0                  546 	movx	@dptr,a
   020F 90 01 45            547 	mov	dptr,#(_n + 0x0045)
   0212 74 3A               548 	mov	a,#0x3A
   0214 F0                  549 	movx	@dptr,a
   0215 90 01 46            550 	mov	dptr,#(_n + 0x0046)
   0218 74 CC               551 	mov	a,#0xCC
   021A F0                  552 	movx	@dptr,a
   021B 90 01 47            553 	mov	dptr,#(_n + 0x0047)
   021E 74 6D               554 	mov	a,#0x6D
   0220 F0                  555 	movx	@dptr,a
   0221 90 01 48            556 	mov	dptr,#(_n + 0x0048)
   0224 74 DB               557 	mov	a,#0xDB
   0226 F0                  558 	movx	@dptr,a
   0227 90 01 49            559 	mov	dptr,#(_n + 0x0049)
   022A 74 10               560 	mov	a,#0x10
   022C F0                  561 	movx	@dptr,a
   022D 90 01 4A            562 	mov	dptr,#(_n + 0x004a)
   0230 74 89               563 	mov	a,#0x89
   0232 F0                  564 	movx	@dptr,a
   0233 90 01 4B            565 	mov	dptr,#(_n + 0x004b)
   0236 74 CB               566 	mov	a,#0xCB
   0238 F0                  567 	movx	@dptr,a
   0239 90 01 4C            568 	mov	dptr,#(_n + 0x004c)
   023C 74 3B               569 	mov	a,#0x3B
   023E F0                  570 	movx	@dptr,a
   023F 90 01 4D            571 	mov	dptr,#(_n + 0x004d)
   0242 74 47               572 	mov	a,#0x47
   0244 F0                  573 	movx	@dptr,a
   0245 90 01 4E            574 	mov	dptr,#(_n + 0x004e)
   0248 74 13               575 	mov	a,#0x13
   024A F0                  576 	movx	@dptr,a
   024B 90 01 4F            577 	mov	dptr,#(_n + 0x004f)
   024E 74 0E               578 	mov	a,#0x0E
   0250 F0                  579 	movx	@dptr,a
   0251 90 01 50            580 	mov	dptr,#(_n + 0x0050)
   0254 74 65               581 	mov	a,#0x65
   0256 F0                  582 	movx	@dptr,a
   0257 90 01 51            583 	mov	dptr,#(_n + 0x0051)
   025A 74 86               584 	mov	a,#0x86
   025C F0                  585 	movx	@dptr,a
   025D 90 01 52            586 	mov	dptr,#(_n + 0x0052)
   0260 74 9E               587 	mov	a,#0x9E
   0262 F0                  588 	movx	@dptr,a
   0263 90 01 53            589 	mov	dptr,#(_n + 0x0053)
   0266 74 7F               590 	mov	a,#0x7F
   0268 F0                  591 	movx	@dptr,a
   0269 90 01 54            592 	mov	dptr,#(_n + 0x0054)
   026C 74 3E               593 	mov	a,#0x3E
   026E F0                  594 	movx	@dptr,a
   026F 90 01 55            595 	mov	dptr,#(_n + 0x0055)
   0272 74 43               596 	mov	a,#0x43
   0274 F0                  597 	movx	@dptr,a
   0275 90 01 56            598 	mov	dptr,#(_n + 0x0056)
   0278 74 92               599 	mov	a,#0x92
   027A F0                  600 	movx	@dptr,a
   027B 90 01 57            601 	mov	dptr,#(_n + 0x0057)
   027E 74 FC               602 	mov	a,#0xFC
   0280 F0                  603 	movx	@dptr,a
   0281 90 01 58            604 	mov	dptr,#(_n + 0x0058)
   0284 74 B6               605 	mov	a,#0xB6
   0286 F0                  606 	movx	@dptr,a
   0287 90 01 59            607 	mov	dptr,#(_n + 0x0059)
   028A 74 6A               608 	mov	a,#0x6A
   028C F0                  609 	movx	@dptr,a
   028D 90 01 5A            610 	mov	dptr,#(_n + 0x005a)
   0290 74 6B               611 	mov	a,#0x6B
   0292 F0                  612 	movx	@dptr,a
   0293 90 01 5B            613 	mov	dptr,#(_n + 0x005b)
   0296 74 37               614 	mov	a,#0x37
   0298 F0                  615 	movx	@dptr,a
   0299 90 01 5C            616 	mov	dptr,#(_n + 0x005c)
   029C 74 90               617 	mov	a,#0x90
   029E F0                  618 	movx	@dptr,a
   029F 90 01 5D            619 	mov	dptr,#(_n + 0x005d)
   02A2 74 EB               620 	mov	a,#0xEB
   02A4 F0                  621 	movx	@dptr,a
   02A5 90 01 5E            622 	mov	dptr,#(_n + 0x005e)
   02A8 74 4F               623 	mov	a,#0x4F
   02AA F0                  624 	movx	@dptr,a
   02AB 90 01 5F            625 	mov	dptr,#(_n + 0x005f)
   02AE 74 E9               626 	mov	a,#0xE9
   02B0 F0                  627 	movx	@dptr,a
   02B1 90 01 60            628 	mov	dptr,#(_n + 0x0060)
   02B4 74 EB               629 	mov	a,#0xEB
   02B6 F0                  630 	movx	@dptr,a
   02B7 90 01 61            631 	mov	dptr,#(_n + 0x0061)
   02BA 74 9C               632 	mov	a,#0x9C
   02BC F0                  633 	movx	@dptr,a
   02BD 90 01 62            634 	mov	dptr,#(_n + 0x0062)
   02C0 74 2F               635 	mov	a,#0x2F
   02C2 F0                  636 	movx	@dptr,a
   02C3 90 01 63            637 	mov	dptr,#(_n + 0x0063)
   02C6 74 6B               638 	mov	a,#0x6B
   02C8 F0                  639 	movx	@dptr,a
   02C9 90 01 64            640 	mov	dptr,#(_n + 0x0064)
   02CC 74 26               641 	mov	a,#0x26
   02CE F0                  642 	movx	@dptr,a
   02CF 90 01 65            643 	mov	dptr,#(_n + 0x0065)
   02D2 74 EF               644 	mov	a,#0xEF
   02D4 F0                  645 	movx	@dptr,a
   02D5 90 01 66            646 	mov	dptr,#(_n + 0x0066)
   02D8 74 B4               647 	mov	a,#0xB4
   02DA F0                  648 	movx	@dptr,a
   02DB 90 01 67            649 	mov	dptr,#(_n + 0x0067)
   02DE 74 BB               650 	mov	a,#0xBB
   02E0 F0                  651 	movx	@dptr,a
   02E1 90 01 68            652 	mov	dptr,#(_n + 0x0068)
   02E4 74 FC               653 	mov	a,#0xFC
   02E6 F0                  654 	movx	@dptr,a
   02E7 90 01 69            655 	mov	dptr,#(_n + 0x0069)
   02EA 74 3D               656 	mov	a,#0x3D
   02EC F0                  657 	movx	@dptr,a
   02ED 90 01 6A            658 	mov	dptr,#(_n + 0x006a)
   02F0 74 33               659 	mov	a,#0x33
   02F2 F0                  660 	movx	@dptr,a
   02F3 90 01 6B            661 	mov	dptr,#(_n + 0x006b)
   02F6 74 FB               662 	mov	a,#0xFB
   02F8 F0                  663 	movx	@dptr,a
   02F9 90 01 6C            664 	mov	dptr,#(_n + 0x006c)
   02FC 74 97               665 	mov	a,#0x97
   02FE F0                  666 	movx	@dptr,a
   02FF 90 01 6D            667 	mov	dptr,#(_n + 0x006d)
   0302 74 67               668 	mov	a,#0x67
   0304 F0                  669 	movx	@dptr,a
   0305 90 01 6E            670 	mov	dptr,#(_n + 0x006e)
   0308 74 93               671 	mov	a,#0x93
   030A F0                  672 	movx	@dptr,a
   030B 90 01 6F            673 	mov	dptr,#(_n + 0x006f)
   030E 74 26               674 	mov	a,#0x26
   0310 F0                  675 	movx	@dptr,a
   0311 90 01 70            676 	mov	dptr,#(_n + 0x0070)
   0314 74 96               677 	mov	a,#0x96
   0316 F0                  678 	movx	@dptr,a
   0317 90 01 71            679 	mov	dptr,#(_n + 0x0071)
   031A 74 38               680 	mov	a,#0x38
   031C F0                  681 	movx	@dptr,a
   031D 90 01 72            682 	mov	dptr,#(_n + 0x0072)
   0320 74 E5               683 	mov	a,#0xE5
   0322 F0                  684 	movx	@dptr,a
   0323 90 01 73            685 	mov	dptr,#(_n + 0x0073)
   0326 74 F0               686 	mov	a,#0xF0
   0328 F0                  687 	movx	@dptr,a
   0329 90 01 74            688 	mov	dptr,#(_n + 0x0074)
   032C 74 3A               689 	mov	a,#0x3A
   032E F0                  690 	movx	@dptr,a
   032F 90 01 75            691 	mov	dptr,#(_n + 0x0075)
   0332 74 C6               692 	mov	a,#0xC6
   0334 F0                  693 	movx	@dptr,a
   0335 90 01 76            694 	mov	dptr,#(_n + 0x0076)
   0338 74 A3               695 	mov	a,#0xA3
   033A F0                  696 	movx	@dptr,a
   033B 90 01 77            697 	mov	dptr,#(_n + 0x0077)
   033E 74 95               698 	mov	a,#0x95
   0340 F0                  699 	movx	@dptr,a
   0341 90 01 78            700 	mov	dptr,#(_n + 0x0078)
   0344 74 A5               701 	mov	a,#0xA5
   0346 F0                  702 	movx	@dptr,a
   0347 90 01 79            703 	mov	dptr,#(_n + 0x0079)
   034A 74 98               704 	mov	a,#0x98
   034C F0                  705 	movx	@dptr,a
   034D 90 01 7A            706 	mov	dptr,#(_n + 0x007a)
   0350 74 F4               707 	mov	a,#0xF4
   0352 F0                  708 	movx	@dptr,a
   0353 90 01 7B            709 	mov	dptr,#(_n + 0x007b)
   0356 74 B8               710 	mov	a,#0xB8
   0358 F0                  711 	movx	@dptr,a
   0359 90 01 7C            712 	mov	dptr,#(_n + 0x007c)
   035C 74 0B               713 	mov	a,#0x0B
   035E F0                  714 	movx	@dptr,a
   035F 90 01 7D            715 	mov	dptr,#(_n + 0x007d)
   0362 74 88               716 	mov	a,#0x88
   0364 F0                  717 	movx	@dptr,a
   0365 90 01 7E            718 	mov	dptr,#(_n + 0x007e)
   0368 74 E1               719 	mov	a,#0xE1
   036A F0                  720 	movx	@dptr,a
   036B 90 01 7F            721 	mov	dptr,#(_n + 0x007f)
   036E 74 D4               722 	mov	a,#0xD4
   0370 F0                  723 	movx	@dptr,a
                            724 ;	main.c:25: __xdata __at (0x0200) unsigned char a[SIZE]   = {0xA3,0x10,0x6B,0x83,0x7C,0x40,0xBF,0xB2,0x54,0x28,0x20,0x4D,0xB2,0xD4,0xF8,0xA6,0xE5,0xB7,0x51,0xBA,0xE8,0xD1,0x95,0x9A,0xFE,0xAB,0x0A,0x48,0x23,0xA2,0x70,0xB3,0xCC,0x7B,0x8F,0x44,0xF4,0x5B,0x53,0x78,0x7D,0xE2,0xF2,0xAF,0xD2,0xBA,0x06,0x0F,0xEE,0xA4,0x37,0x06,0xE7,0x04,0x2C,0x90,0x3C,0x8B,0xFD,0x54,0xCD,0xB9,0x94,0xAD,0x64,0x8E,0x26,0xDE,0x8C,0xC5,0x33,0x92,0x24,0xEF,0x76,0x34,0xC4,0xB8,0xEC,0xF1,0x9A,0x79,0x61,0x80,0xC1,0xBC,0x6D,0x03,0x49,0x95,0x94,0xC8,0x6F,0x14,0xB0,0x16,0x14,0x63,0xD0,0x94,0xD9,0x10,0x4B,0x44,0x03,0xC2,0xCC,0x04,0x68,0x98,0x6C,0xD9,0x69,0xC7,0x1A,0x0F,0xC5,0x39,0x5C,0x6A,0x5A,0x67,0x0B,0x47,0xF4,0x77,0x1E,0x2B};
   0371 90 02 00            725 	mov	dptr,#_a
   0374 74 A3               726 	mov	a,#0xA3
   0376 F0                  727 	movx	@dptr,a
   0377 90 02 01            728 	mov	dptr,#(_a + 0x0001)
   037A 74 10               729 	mov	a,#0x10
   037C F0                  730 	movx	@dptr,a
   037D 90 02 02            731 	mov	dptr,#(_a + 0x0002)
   0380 74 6B               732 	mov	a,#0x6B
   0382 F0                  733 	movx	@dptr,a
   0383 90 02 03            734 	mov	dptr,#(_a + 0x0003)
   0386 74 83               735 	mov	a,#0x83
   0388 F0                  736 	movx	@dptr,a
   0389 90 02 04            737 	mov	dptr,#(_a + 0x0004)
   038C 74 7C               738 	mov	a,#0x7C
   038E F0                  739 	movx	@dptr,a
   038F 90 02 05            740 	mov	dptr,#(_a + 0x0005)
   0392 74 40               741 	mov	a,#0x40
   0394 F0                  742 	movx	@dptr,a
   0395 90 02 06            743 	mov	dptr,#(_a + 0x0006)
   0398 74 BF               744 	mov	a,#0xBF
   039A F0                  745 	movx	@dptr,a
   039B 90 02 07            746 	mov	dptr,#(_a + 0x0007)
   039E 74 B2               747 	mov	a,#0xB2
   03A0 F0                  748 	movx	@dptr,a
   03A1 90 02 08            749 	mov	dptr,#(_a + 0x0008)
   03A4 74 54               750 	mov	a,#0x54
   03A6 F0                  751 	movx	@dptr,a
   03A7 90 02 09            752 	mov	dptr,#(_a + 0x0009)
   03AA 74 28               753 	mov	a,#0x28
   03AC F0                  754 	movx	@dptr,a
   03AD 90 02 0A            755 	mov	dptr,#(_a + 0x000a)
   03B0 74 20               756 	mov	a,#0x20
   03B2 F0                  757 	movx	@dptr,a
   03B3 90 02 0B            758 	mov	dptr,#(_a + 0x000b)
   03B6 74 4D               759 	mov	a,#0x4D
   03B8 F0                  760 	movx	@dptr,a
   03B9 90 02 0C            761 	mov	dptr,#(_a + 0x000c)
   03BC 74 B2               762 	mov	a,#0xB2
   03BE F0                  763 	movx	@dptr,a
   03BF 90 02 0D            764 	mov	dptr,#(_a + 0x000d)
   03C2 74 D4               765 	mov	a,#0xD4
   03C4 F0                  766 	movx	@dptr,a
   03C5 90 02 0E            767 	mov	dptr,#(_a + 0x000e)
   03C8 74 F8               768 	mov	a,#0xF8
   03CA F0                  769 	movx	@dptr,a
   03CB 90 02 0F            770 	mov	dptr,#(_a + 0x000f)
   03CE 74 A6               771 	mov	a,#0xA6
   03D0 F0                  772 	movx	@dptr,a
   03D1 90 02 10            773 	mov	dptr,#(_a + 0x0010)
   03D4 74 E5               774 	mov	a,#0xE5
   03D6 F0                  775 	movx	@dptr,a
   03D7 90 02 11            776 	mov	dptr,#(_a + 0x0011)
   03DA 74 B7               777 	mov	a,#0xB7
   03DC F0                  778 	movx	@dptr,a
   03DD 90 02 12            779 	mov	dptr,#(_a + 0x0012)
   03E0 74 51               780 	mov	a,#0x51
   03E2 F0                  781 	movx	@dptr,a
   03E3 90 02 13            782 	mov	dptr,#(_a + 0x0013)
   03E6 74 BA               783 	mov	a,#0xBA
   03E8 F0                  784 	movx	@dptr,a
   03E9 90 02 14            785 	mov	dptr,#(_a + 0x0014)
   03EC 74 E8               786 	mov	a,#0xE8
   03EE F0                  787 	movx	@dptr,a
   03EF 90 02 15            788 	mov	dptr,#(_a + 0x0015)
   03F2 74 D1               789 	mov	a,#0xD1
   03F4 F0                  790 	movx	@dptr,a
   03F5 90 02 16            791 	mov	dptr,#(_a + 0x0016)
   03F8 74 95               792 	mov	a,#0x95
   03FA F0                  793 	movx	@dptr,a
   03FB 90 02 17            794 	mov	dptr,#(_a + 0x0017)
   03FE 74 9A               795 	mov	a,#0x9A
   0400 F0                  796 	movx	@dptr,a
   0401 90 02 18            797 	mov	dptr,#(_a + 0x0018)
   0404 74 FE               798 	mov	a,#0xFE
   0406 F0                  799 	movx	@dptr,a
   0407 90 02 19            800 	mov	dptr,#(_a + 0x0019)
   040A 74 AB               801 	mov	a,#0xAB
   040C F0                  802 	movx	@dptr,a
   040D 90 02 1A            803 	mov	dptr,#(_a + 0x001a)
   0410 74 0A               804 	mov	a,#0x0A
   0412 F0                  805 	movx	@dptr,a
   0413 90 02 1B            806 	mov	dptr,#(_a + 0x001b)
   0416 74 48               807 	mov	a,#0x48
   0418 F0                  808 	movx	@dptr,a
   0419 90 02 1C            809 	mov	dptr,#(_a + 0x001c)
   041C 74 23               810 	mov	a,#0x23
   041E F0                  811 	movx	@dptr,a
   041F 90 02 1D            812 	mov	dptr,#(_a + 0x001d)
   0422 74 A2               813 	mov	a,#0xA2
   0424 F0                  814 	movx	@dptr,a
   0425 90 02 1E            815 	mov	dptr,#(_a + 0x001e)
   0428 74 70               816 	mov	a,#0x70
   042A F0                  817 	movx	@dptr,a
   042B 90 02 1F            818 	mov	dptr,#(_a + 0x001f)
   042E 74 B3               819 	mov	a,#0xB3
   0430 F0                  820 	movx	@dptr,a
   0431 90 02 20            821 	mov	dptr,#(_a + 0x0020)
   0434 74 CC               822 	mov	a,#0xCC
   0436 F0                  823 	movx	@dptr,a
   0437 90 02 21            824 	mov	dptr,#(_a + 0x0021)
   043A 74 7B               825 	mov	a,#0x7B
   043C F0                  826 	movx	@dptr,a
   043D 90 02 22            827 	mov	dptr,#(_a + 0x0022)
   0440 74 8F               828 	mov	a,#0x8F
   0442 F0                  829 	movx	@dptr,a
   0443 90 02 23            830 	mov	dptr,#(_a + 0x0023)
   0446 74 44               831 	mov	a,#0x44
   0448 F0                  832 	movx	@dptr,a
   0449 90 02 24            833 	mov	dptr,#(_a + 0x0024)
   044C 74 F4               834 	mov	a,#0xF4
   044E F0                  835 	movx	@dptr,a
   044F 90 02 25            836 	mov	dptr,#(_a + 0x0025)
   0452 74 5B               837 	mov	a,#0x5B
   0454 F0                  838 	movx	@dptr,a
   0455 90 02 26            839 	mov	dptr,#(_a + 0x0026)
   0458 74 53               840 	mov	a,#0x53
   045A F0                  841 	movx	@dptr,a
   045B 90 02 27            842 	mov	dptr,#(_a + 0x0027)
   045E 74 78               843 	mov	a,#0x78
   0460 F0                  844 	movx	@dptr,a
   0461 90 02 28            845 	mov	dptr,#(_a + 0x0028)
   0464 74 7D               846 	mov	a,#0x7D
   0466 F0                  847 	movx	@dptr,a
   0467 90 02 29            848 	mov	dptr,#(_a + 0x0029)
   046A 74 E2               849 	mov	a,#0xE2
   046C F0                  850 	movx	@dptr,a
   046D 90 02 2A            851 	mov	dptr,#(_a + 0x002a)
   0470 74 F2               852 	mov	a,#0xF2
   0472 F0                  853 	movx	@dptr,a
   0473 90 02 2B            854 	mov	dptr,#(_a + 0x002b)
   0476 74 AF               855 	mov	a,#0xAF
   0478 F0                  856 	movx	@dptr,a
   0479 90 02 2C            857 	mov	dptr,#(_a + 0x002c)
   047C 74 D2               858 	mov	a,#0xD2
   047E F0                  859 	movx	@dptr,a
   047F 90 02 2D            860 	mov	dptr,#(_a + 0x002d)
   0482 74 BA               861 	mov	a,#0xBA
   0484 F0                  862 	movx	@dptr,a
   0485 90 02 2E            863 	mov	dptr,#(_a + 0x002e)
   0488 74 06               864 	mov	a,#0x06
   048A F0                  865 	movx	@dptr,a
   048B 90 02 2F            866 	mov	dptr,#(_a + 0x002f)
   048E 74 0F               867 	mov	a,#0x0F
   0490 F0                  868 	movx	@dptr,a
   0491 90 02 30            869 	mov	dptr,#(_a + 0x0030)
   0494 74 EE               870 	mov	a,#0xEE
   0496 F0                  871 	movx	@dptr,a
   0497 90 02 31            872 	mov	dptr,#(_a + 0x0031)
   049A 74 A4               873 	mov	a,#0xA4
   049C F0                  874 	movx	@dptr,a
   049D 90 02 32            875 	mov	dptr,#(_a + 0x0032)
   04A0 74 37               876 	mov	a,#0x37
   04A2 F0                  877 	movx	@dptr,a
   04A3 90 02 33            878 	mov	dptr,#(_a + 0x0033)
   04A6 74 06               879 	mov	a,#0x06
   04A8 F0                  880 	movx	@dptr,a
   04A9 90 02 34            881 	mov	dptr,#(_a + 0x0034)
   04AC 74 E7               882 	mov	a,#0xE7
   04AE F0                  883 	movx	@dptr,a
   04AF 90 02 35            884 	mov	dptr,#(_a + 0x0035)
   04B2 74 04               885 	mov	a,#0x04
   04B4 F0                  886 	movx	@dptr,a
   04B5 90 02 36            887 	mov	dptr,#(_a + 0x0036)
   04B8 74 2C               888 	mov	a,#0x2C
   04BA F0                  889 	movx	@dptr,a
   04BB 90 02 37            890 	mov	dptr,#(_a + 0x0037)
   04BE 74 90               891 	mov	a,#0x90
   04C0 F0                  892 	movx	@dptr,a
   04C1 90 02 38            893 	mov	dptr,#(_a + 0x0038)
   04C4 74 3C               894 	mov	a,#0x3C
   04C6 F0                  895 	movx	@dptr,a
   04C7 90 02 39            896 	mov	dptr,#(_a + 0x0039)
   04CA 74 8B               897 	mov	a,#0x8B
   04CC F0                  898 	movx	@dptr,a
   04CD 90 02 3A            899 	mov	dptr,#(_a + 0x003a)
   04D0 74 FD               900 	mov	a,#0xFD
   04D2 F0                  901 	movx	@dptr,a
   04D3 90 02 3B            902 	mov	dptr,#(_a + 0x003b)
   04D6 74 54               903 	mov	a,#0x54
   04D8 F0                  904 	movx	@dptr,a
   04D9 90 02 3C            905 	mov	dptr,#(_a + 0x003c)
   04DC 74 CD               906 	mov	a,#0xCD
   04DE F0                  907 	movx	@dptr,a
   04DF 90 02 3D            908 	mov	dptr,#(_a + 0x003d)
   04E2 74 B9               909 	mov	a,#0xB9
   04E4 F0                  910 	movx	@dptr,a
   04E5 90 02 3E            911 	mov	dptr,#(_a + 0x003e)
   04E8 74 94               912 	mov	a,#0x94
   04EA F0                  913 	movx	@dptr,a
   04EB 90 02 3F            914 	mov	dptr,#(_a + 0x003f)
   04EE 74 AD               915 	mov	a,#0xAD
   04F0 F0                  916 	movx	@dptr,a
   04F1 90 02 40            917 	mov	dptr,#(_a + 0x0040)
   04F4 74 64               918 	mov	a,#0x64
   04F6 F0                  919 	movx	@dptr,a
   04F7 90 02 41            920 	mov	dptr,#(_a + 0x0041)
   04FA 74 8E               921 	mov	a,#0x8E
   04FC F0                  922 	movx	@dptr,a
   04FD 90 02 42            923 	mov	dptr,#(_a + 0x0042)
   0500 74 26               924 	mov	a,#0x26
   0502 F0                  925 	movx	@dptr,a
   0503 90 02 43            926 	mov	dptr,#(_a + 0x0043)
   0506 74 DE               927 	mov	a,#0xDE
   0508 F0                  928 	movx	@dptr,a
   0509 90 02 44            929 	mov	dptr,#(_a + 0x0044)
   050C 74 8C               930 	mov	a,#0x8C
   050E F0                  931 	movx	@dptr,a
   050F 90 02 45            932 	mov	dptr,#(_a + 0x0045)
   0512 74 C5               933 	mov	a,#0xC5
   0514 F0                  934 	movx	@dptr,a
   0515 90 02 46            935 	mov	dptr,#(_a + 0x0046)
   0518 74 33               936 	mov	a,#0x33
   051A F0                  937 	movx	@dptr,a
   051B 90 02 47            938 	mov	dptr,#(_a + 0x0047)
   051E 74 92               939 	mov	a,#0x92
   0520 F0                  940 	movx	@dptr,a
   0521 90 02 48            941 	mov	dptr,#(_a + 0x0048)
   0524 74 24               942 	mov	a,#0x24
   0526 F0                  943 	movx	@dptr,a
   0527 90 02 49            944 	mov	dptr,#(_a + 0x0049)
   052A 74 EF               945 	mov	a,#0xEF
   052C F0                  946 	movx	@dptr,a
   052D 90 02 4A            947 	mov	dptr,#(_a + 0x004a)
   0530 74 76               948 	mov	a,#0x76
   0532 F0                  949 	movx	@dptr,a
   0533 90 02 4B            950 	mov	dptr,#(_a + 0x004b)
   0536 74 34               951 	mov	a,#0x34
   0538 F0                  952 	movx	@dptr,a
   0539 90 02 4C            953 	mov	dptr,#(_a + 0x004c)
   053C 74 C4               954 	mov	a,#0xC4
   053E F0                  955 	movx	@dptr,a
   053F 90 02 4D            956 	mov	dptr,#(_a + 0x004d)
   0542 74 B8               957 	mov	a,#0xB8
   0544 F0                  958 	movx	@dptr,a
   0545 90 02 4E            959 	mov	dptr,#(_a + 0x004e)
   0548 74 EC               960 	mov	a,#0xEC
   054A F0                  961 	movx	@dptr,a
   054B 90 02 4F            962 	mov	dptr,#(_a + 0x004f)
   054E 74 F1               963 	mov	a,#0xF1
   0550 F0                  964 	movx	@dptr,a
   0551 90 02 50            965 	mov	dptr,#(_a + 0x0050)
   0554 74 9A               966 	mov	a,#0x9A
   0556 F0                  967 	movx	@dptr,a
   0557 90 02 51            968 	mov	dptr,#(_a + 0x0051)
   055A 74 79               969 	mov	a,#0x79
   055C F0                  970 	movx	@dptr,a
   055D 90 02 52            971 	mov	dptr,#(_a + 0x0052)
   0560 74 61               972 	mov	a,#0x61
   0562 F0                  973 	movx	@dptr,a
   0563 90 02 53            974 	mov	dptr,#(_a + 0x0053)
   0566 74 80               975 	mov	a,#0x80
   0568 F0                  976 	movx	@dptr,a
   0569 90 02 54            977 	mov	dptr,#(_a + 0x0054)
   056C 74 C1               978 	mov	a,#0xC1
   056E F0                  979 	movx	@dptr,a
   056F 90 02 55            980 	mov	dptr,#(_a + 0x0055)
   0572 74 BC               981 	mov	a,#0xBC
   0574 F0                  982 	movx	@dptr,a
   0575 90 02 56            983 	mov	dptr,#(_a + 0x0056)
   0578 74 6D               984 	mov	a,#0x6D
   057A F0                  985 	movx	@dptr,a
   057B 90 02 57            986 	mov	dptr,#(_a + 0x0057)
   057E 74 03               987 	mov	a,#0x03
   0580 F0                  988 	movx	@dptr,a
   0581 90 02 58            989 	mov	dptr,#(_a + 0x0058)
   0584 74 49               990 	mov	a,#0x49
   0586 F0                  991 	movx	@dptr,a
   0587 90 02 59            992 	mov	dptr,#(_a + 0x0059)
   058A 74 95               993 	mov	a,#0x95
   058C F0                  994 	movx	@dptr,a
   058D 90 02 5A            995 	mov	dptr,#(_a + 0x005a)
   0590 74 94               996 	mov	a,#0x94
   0592 F0                  997 	movx	@dptr,a
   0593 90 02 5B            998 	mov	dptr,#(_a + 0x005b)
   0596 74 C8               999 	mov	a,#0xC8
   0598 F0                 1000 	movx	@dptr,a
   0599 90 02 5C           1001 	mov	dptr,#(_a + 0x005c)
   059C 74 6F              1002 	mov	a,#0x6F
   059E F0                 1003 	movx	@dptr,a
   059F 90 02 5D           1004 	mov	dptr,#(_a + 0x005d)
   05A2 74 14              1005 	mov	a,#0x14
   05A4 F0                 1006 	movx	@dptr,a
   05A5 90 02 5E           1007 	mov	dptr,#(_a + 0x005e)
   05A8 74 B0              1008 	mov	a,#0xB0
   05AA F0                 1009 	movx	@dptr,a
   05AB 90 02 5F           1010 	mov	dptr,#(_a + 0x005f)
   05AE 74 16              1011 	mov	a,#0x16
   05B0 F0                 1012 	movx	@dptr,a
   05B1 90 02 60           1013 	mov	dptr,#(_a + 0x0060)
   05B4 74 14              1014 	mov	a,#0x14
   05B6 F0                 1015 	movx	@dptr,a
   05B7 90 02 61           1016 	mov	dptr,#(_a + 0x0061)
   05BA 74 63              1017 	mov	a,#0x63
   05BC F0                 1018 	movx	@dptr,a
   05BD 90 02 62           1019 	mov	dptr,#(_a + 0x0062)
   05C0 74 D0              1020 	mov	a,#0xD0
   05C2 F0                 1021 	movx	@dptr,a
   05C3 90 02 63           1022 	mov	dptr,#(_a + 0x0063)
   05C6 74 94              1023 	mov	a,#0x94
   05C8 F0                 1024 	movx	@dptr,a
   05C9 90 02 64           1025 	mov	dptr,#(_a + 0x0064)
   05CC 74 D9              1026 	mov	a,#0xD9
   05CE F0                 1027 	movx	@dptr,a
   05CF 90 02 65           1028 	mov	dptr,#(_a + 0x0065)
   05D2 74 10              1029 	mov	a,#0x10
   05D4 F0                 1030 	movx	@dptr,a
   05D5 90 02 66           1031 	mov	dptr,#(_a + 0x0066)
   05D8 74 4B              1032 	mov	a,#0x4B
   05DA F0                 1033 	movx	@dptr,a
   05DB 90 02 67           1034 	mov	dptr,#(_a + 0x0067)
   05DE 74 44              1035 	mov	a,#0x44
   05E0 F0                 1036 	movx	@dptr,a
   05E1 90 02 68           1037 	mov	dptr,#(_a + 0x0068)
   05E4 74 03              1038 	mov	a,#0x03
   05E6 F0                 1039 	movx	@dptr,a
   05E7 90 02 69           1040 	mov	dptr,#(_a + 0x0069)
   05EA 74 C2              1041 	mov	a,#0xC2
   05EC F0                 1042 	movx	@dptr,a
   05ED 90 02 6A           1043 	mov	dptr,#(_a + 0x006a)
   05F0 74 CC              1044 	mov	a,#0xCC
   05F2 F0                 1045 	movx	@dptr,a
   05F3 90 02 6B           1046 	mov	dptr,#(_a + 0x006b)
   05F6 74 04              1047 	mov	a,#0x04
   05F8 F0                 1048 	movx	@dptr,a
   05F9 90 02 6C           1049 	mov	dptr,#(_a + 0x006c)
   05FC 74 68              1050 	mov	a,#0x68
   05FE F0                 1051 	movx	@dptr,a
   05FF 90 02 6D           1052 	mov	dptr,#(_a + 0x006d)
   0602 74 98              1053 	mov	a,#0x98
   0604 F0                 1054 	movx	@dptr,a
   0605 90 02 6E           1055 	mov	dptr,#(_a + 0x006e)
   0608 74 6C              1056 	mov	a,#0x6C
   060A F0                 1057 	movx	@dptr,a
   060B 90 02 6F           1058 	mov	dptr,#(_a + 0x006f)
   060E 74 D9              1059 	mov	a,#0xD9
   0610 F0                 1060 	movx	@dptr,a
   0611 90 02 70           1061 	mov	dptr,#(_a + 0x0070)
   0614 74 69              1062 	mov	a,#0x69
   0616 F0                 1063 	movx	@dptr,a
   0617 90 02 71           1064 	mov	dptr,#(_a + 0x0071)
   061A 74 C7              1065 	mov	a,#0xC7
   061C F0                 1066 	movx	@dptr,a
   061D 90 02 72           1067 	mov	dptr,#(_a + 0x0072)
   0620 74 1A              1068 	mov	a,#0x1A
   0622 F0                 1069 	movx	@dptr,a
   0623 90 02 73           1070 	mov	dptr,#(_a + 0x0073)
   0626 74 0F              1071 	mov	a,#0x0F
   0628 F0                 1072 	movx	@dptr,a
   0629 90 02 74           1073 	mov	dptr,#(_a + 0x0074)
   062C 74 C5              1074 	mov	a,#0xC5
   062E F0                 1075 	movx	@dptr,a
   062F 90 02 75           1076 	mov	dptr,#(_a + 0x0075)
   0632 74 39              1077 	mov	a,#0x39
   0634 F0                 1078 	movx	@dptr,a
   0635 90 02 76           1079 	mov	dptr,#(_a + 0x0076)
   0638 74 5C              1080 	mov	a,#0x5C
   063A F0                 1081 	movx	@dptr,a
   063B 90 02 77           1082 	mov	dptr,#(_a + 0x0077)
   063E 74 6A              1083 	mov	a,#0x6A
   0640 F0                 1084 	movx	@dptr,a
   0641 90 02 78           1085 	mov	dptr,#(_a + 0x0078)
   0644 74 5A              1086 	mov	a,#0x5A
   0646 F0                 1087 	movx	@dptr,a
   0647 90 02 79           1088 	mov	dptr,#(_a + 0x0079)
   064A 74 67              1089 	mov	a,#0x67
   064C F0                 1090 	movx	@dptr,a
   064D 90 02 7A           1091 	mov	dptr,#(_a + 0x007a)
   0650 74 0B              1092 	mov	a,#0x0B
   0652 F0                 1093 	movx	@dptr,a
   0653 90 02 7B           1094 	mov	dptr,#(_a + 0x007b)
   0656 74 47              1095 	mov	a,#0x47
   0658 F0                 1096 	movx	@dptr,a
   0659 90 02 7C           1097 	mov	dptr,#(_a + 0x007c)
   065C 74 F4              1098 	mov	a,#0xF4
   065E F0                 1099 	movx	@dptr,a
   065F 90 02 7D           1100 	mov	dptr,#(_a + 0x007d)
   0662 74 77              1101 	mov	a,#0x77
   0664 F0                 1102 	movx	@dptr,a
   0665 90 02 7E           1103 	mov	dptr,#(_a + 0x007e)
   0668 74 1E              1104 	mov	a,#0x1E
   066A F0                 1105 	movx	@dptr,a
   066B 90 02 7F           1106 	mov	dptr,#(_a + 0x007f)
   066E 74 2B              1107 	mov	a,#0x2B
   0670 F0                 1108 	movx	@dptr,a
                           1109 ;	main.c:26: __xdata __at (0x0000) unsigned char b[SIZE]   = {0xA3,0x10,0x6B,0x83,0x7C,0x40,0xBF,0xB2,0x54,0x28,0x20,0x4D,0xB2,0xD4,0xF8,0xA6,0xE5,0xB7,0x51,0xBA,0xE8,0xD1,0x95,0x9A,0xFE,0xAB,0x0A,0x48,0x23,0xA2,0x70,0xB3,0xCC,0x7B,0x8F,0x44,0xF4,0x5B,0x53,0x78,0x7D,0xE2,0xF2,0xAF,0xD2,0xBA,0x06,0x0F,0xEE,0xA4,0x37,0x06,0xE7,0x04,0x2C,0x90,0x3C,0x8B,0xFD,0x54,0xCD,0xB9,0x94,0xAD,0x64,0x8E,0x26,0xDE,0x8C,0xC5,0x33,0x92,0x24,0xEF,0x76,0x34,0xC4,0xB8,0xEC,0xF1,0x9A,0x79,0x61,0x80,0xC1,0xBC,0x6D,0x03,0x49,0x95,0x94,0xC8,0x6F,0x14,0xB0,0x16,0x14,0x63,0xD0,0x94,0xD9,0x10,0x4B,0x44,0x03,0xC2,0xCC,0x04,0x68,0x98,0x6C,0xD9,0x69,0xC7,0x1A,0x0F,0xC5,0x39,0x5C,0x6A,0x5A,0x67,0x0B,0x47,0xF4,0x77,0x1E,0x2B};
   0671 90 00 00           1110 	mov	dptr,#_b
   0674 74 A3              1111 	mov	a,#0xA3
   0676 F0                 1112 	movx	@dptr,a
   0677 90 00 01           1113 	mov	dptr,#(_b + 0x0001)
   067A 74 10              1114 	mov	a,#0x10
   067C F0                 1115 	movx	@dptr,a
   067D 90 00 02           1116 	mov	dptr,#(_b + 0x0002)
   0680 74 6B              1117 	mov	a,#0x6B
   0682 F0                 1118 	movx	@dptr,a
   0683 90 00 03           1119 	mov	dptr,#(_b + 0x0003)
   0686 74 83              1120 	mov	a,#0x83
   0688 F0                 1121 	movx	@dptr,a
   0689 90 00 04           1122 	mov	dptr,#(_b + 0x0004)
   068C 74 7C              1123 	mov	a,#0x7C
   068E F0                 1124 	movx	@dptr,a
   068F 90 00 05           1125 	mov	dptr,#(_b + 0x0005)
   0692 74 40              1126 	mov	a,#0x40
   0694 F0                 1127 	movx	@dptr,a
   0695 90 00 06           1128 	mov	dptr,#(_b + 0x0006)
   0698 74 BF              1129 	mov	a,#0xBF
   069A F0                 1130 	movx	@dptr,a
   069B 90 00 07           1131 	mov	dptr,#(_b + 0x0007)
   069E 74 B2              1132 	mov	a,#0xB2
   06A0 F0                 1133 	movx	@dptr,a
   06A1 90 00 08           1134 	mov	dptr,#(_b + 0x0008)
   06A4 74 54              1135 	mov	a,#0x54
   06A6 F0                 1136 	movx	@dptr,a
   06A7 90 00 09           1137 	mov	dptr,#(_b + 0x0009)
   06AA 74 28              1138 	mov	a,#0x28
   06AC F0                 1139 	movx	@dptr,a
   06AD 90 00 0A           1140 	mov	dptr,#(_b + 0x000a)
   06B0 74 20              1141 	mov	a,#0x20
   06B2 F0                 1142 	movx	@dptr,a
   06B3 90 00 0B           1143 	mov	dptr,#(_b + 0x000b)
   06B6 74 4D              1144 	mov	a,#0x4D
   06B8 F0                 1145 	movx	@dptr,a
   06B9 90 00 0C           1146 	mov	dptr,#(_b + 0x000c)
   06BC 74 B2              1147 	mov	a,#0xB2
   06BE F0                 1148 	movx	@dptr,a
   06BF 90 00 0D           1149 	mov	dptr,#(_b + 0x000d)
   06C2 74 D4              1150 	mov	a,#0xD4
   06C4 F0                 1151 	movx	@dptr,a
   06C5 90 00 0E           1152 	mov	dptr,#(_b + 0x000e)
   06C8 74 F8              1153 	mov	a,#0xF8
   06CA F0                 1154 	movx	@dptr,a
   06CB 90 00 0F           1155 	mov	dptr,#(_b + 0x000f)
   06CE 74 A6              1156 	mov	a,#0xA6
   06D0 F0                 1157 	movx	@dptr,a
   06D1 90 00 10           1158 	mov	dptr,#(_b + 0x0010)
   06D4 74 E5              1159 	mov	a,#0xE5
   06D6 F0                 1160 	movx	@dptr,a
   06D7 90 00 11           1161 	mov	dptr,#(_b + 0x0011)
   06DA 74 B7              1162 	mov	a,#0xB7
   06DC F0                 1163 	movx	@dptr,a
   06DD 90 00 12           1164 	mov	dptr,#(_b + 0x0012)
   06E0 74 51              1165 	mov	a,#0x51
   06E2 F0                 1166 	movx	@dptr,a
   06E3 90 00 13           1167 	mov	dptr,#(_b + 0x0013)
   06E6 74 BA              1168 	mov	a,#0xBA
   06E8 F0                 1169 	movx	@dptr,a
   06E9 90 00 14           1170 	mov	dptr,#(_b + 0x0014)
   06EC 74 E8              1171 	mov	a,#0xE8
   06EE F0                 1172 	movx	@dptr,a
   06EF 90 00 15           1173 	mov	dptr,#(_b + 0x0015)
   06F2 74 D1              1174 	mov	a,#0xD1
   06F4 F0                 1175 	movx	@dptr,a
   06F5 90 00 16           1176 	mov	dptr,#(_b + 0x0016)
   06F8 74 95              1177 	mov	a,#0x95
   06FA F0                 1178 	movx	@dptr,a
   06FB 90 00 17           1179 	mov	dptr,#(_b + 0x0017)
   06FE 74 9A              1180 	mov	a,#0x9A
   0700 F0                 1181 	movx	@dptr,a
   0701 90 00 18           1182 	mov	dptr,#(_b + 0x0018)
   0704 74 FE              1183 	mov	a,#0xFE
   0706 F0                 1184 	movx	@dptr,a
   0707 90 00 19           1185 	mov	dptr,#(_b + 0x0019)
   070A 74 AB              1186 	mov	a,#0xAB
   070C F0                 1187 	movx	@dptr,a
   070D 90 00 1A           1188 	mov	dptr,#(_b + 0x001a)
   0710 74 0A              1189 	mov	a,#0x0A
   0712 F0                 1190 	movx	@dptr,a
   0713 90 00 1B           1191 	mov	dptr,#(_b + 0x001b)
   0716 74 48              1192 	mov	a,#0x48
   0718 F0                 1193 	movx	@dptr,a
   0719 90 00 1C           1194 	mov	dptr,#(_b + 0x001c)
   071C 74 23              1195 	mov	a,#0x23
   071E F0                 1196 	movx	@dptr,a
   071F 90 00 1D           1197 	mov	dptr,#(_b + 0x001d)
   0722 74 A2              1198 	mov	a,#0xA2
   0724 F0                 1199 	movx	@dptr,a
   0725 90 00 1E           1200 	mov	dptr,#(_b + 0x001e)
   0728 74 70              1201 	mov	a,#0x70
   072A F0                 1202 	movx	@dptr,a
   072B 90 00 1F           1203 	mov	dptr,#(_b + 0x001f)
   072E 74 B3              1204 	mov	a,#0xB3
   0730 F0                 1205 	movx	@dptr,a
   0731 90 00 20           1206 	mov	dptr,#(_b + 0x0020)
   0734 74 CC              1207 	mov	a,#0xCC
   0736 F0                 1208 	movx	@dptr,a
   0737 90 00 21           1209 	mov	dptr,#(_b + 0x0021)
   073A 74 7B              1210 	mov	a,#0x7B
   073C F0                 1211 	movx	@dptr,a
   073D 90 00 22           1212 	mov	dptr,#(_b + 0x0022)
   0740 74 8F              1213 	mov	a,#0x8F
   0742 F0                 1214 	movx	@dptr,a
   0743 90 00 23           1215 	mov	dptr,#(_b + 0x0023)
   0746 74 44              1216 	mov	a,#0x44
   0748 F0                 1217 	movx	@dptr,a
   0749 90 00 24           1218 	mov	dptr,#(_b + 0x0024)
   074C 74 F4              1219 	mov	a,#0xF4
   074E F0                 1220 	movx	@dptr,a
   074F 90 00 25           1221 	mov	dptr,#(_b + 0x0025)
   0752 74 5B              1222 	mov	a,#0x5B
   0754 F0                 1223 	movx	@dptr,a
   0755 90 00 26           1224 	mov	dptr,#(_b + 0x0026)
   0758 74 53              1225 	mov	a,#0x53
   075A F0                 1226 	movx	@dptr,a
   075B 90 00 27           1227 	mov	dptr,#(_b + 0x0027)
   075E 74 78              1228 	mov	a,#0x78
   0760 F0                 1229 	movx	@dptr,a
   0761 90 00 28           1230 	mov	dptr,#(_b + 0x0028)
   0764 74 7D              1231 	mov	a,#0x7D
   0766 F0                 1232 	movx	@dptr,a
   0767 90 00 29           1233 	mov	dptr,#(_b + 0x0029)
   076A 74 E2              1234 	mov	a,#0xE2
   076C F0                 1235 	movx	@dptr,a
   076D 90 00 2A           1236 	mov	dptr,#(_b + 0x002a)
   0770 74 F2              1237 	mov	a,#0xF2
   0772 F0                 1238 	movx	@dptr,a
   0773 90 00 2B           1239 	mov	dptr,#(_b + 0x002b)
   0776 74 AF              1240 	mov	a,#0xAF
   0778 F0                 1241 	movx	@dptr,a
   0779 90 00 2C           1242 	mov	dptr,#(_b + 0x002c)
   077C 74 D2              1243 	mov	a,#0xD2
   077E F0                 1244 	movx	@dptr,a
   077F 90 00 2D           1245 	mov	dptr,#(_b + 0x002d)
   0782 74 BA              1246 	mov	a,#0xBA
   0784 F0                 1247 	movx	@dptr,a
   0785 90 00 2E           1248 	mov	dptr,#(_b + 0x002e)
   0788 74 06              1249 	mov	a,#0x06
   078A F0                 1250 	movx	@dptr,a
   078B 90 00 2F           1251 	mov	dptr,#(_b + 0x002f)
   078E 74 0F              1252 	mov	a,#0x0F
   0790 F0                 1253 	movx	@dptr,a
   0791 90 00 30           1254 	mov	dptr,#(_b + 0x0030)
   0794 74 EE              1255 	mov	a,#0xEE
   0796 F0                 1256 	movx	@dptr,a
   0797 90 00 31           1257 	mov	dptr,#(_b + 0x0031)
   079A 74 A4              1258 	mov	a,#0xA4
   079C F0                 1259 	movx	@dptr,a
   079D 90 00 32           1260 	mov	dptr,#(_b + 0x0032)
   07A0 74 37              1261 	mov	a,#0x37
   07A2 F0                 1262 	movx	@dptr,a
   07A3 90 00 33           1263 	mov	dptr,#(_b + 0x0033)
   07A6 74 06              1264 	mov	a,#0x06
   07A8 F0                 1265 	movx	@dptr,a
   07A9 90 00 34           1266 	mov	dptr,#(_b + 0x0034)
   07AC 74 E7              1267 	mov	a,#0xE7
   07AE F0                 1268 	movx	@dptr,a
   07AF 90 00 35           1269 	mov	dptr,#(_b + 0x0035)
   07B2 74 04              1270 	mov	a,#0x04
   07B4 F0                 1271 	movx	@dptr,a
   07B5 90 00 36           1272 	mov	dptr,#(_b + 0x0036)
   07B8 74 2C              1273 	mov	a,#0x2C
   07BA F0                 1274 	movx	@dptr,a
   07BB 90 00 37           1275 	mov	dptr,#(_b + 0x0037)
   07BE 74 90              1276 	mov	a,#0x90
   07C0 F0                 1277 	movx	@dptr,a
   07C1 90 00 38           1278 	mov	dptr,#(_b + 0x0038)
   07C4 74 3C              1279 	mov	a,#0x3C
   07C6 F0                 1280 	movx	@dptr,a
   07C7 90 00 39           1281 	mov	dptr,#(_b + 0x0039)
   07CA 74 8B              1282 	mov	a,#0x8B
   07CC F0                 1283 	movx	@dptr,a
   07CD 90 00 3A           1284 	mov	dptr,#(_b + 0x003a)
   07D0 74 FD              1285 	mov	a,#0xFD
   07D2 F0                 1286 	movx	@dptr,a
   07D3 90 00 3B           1287 	mov	dptr,#(_b + 0x003b)
   07D6 74 54              1288 	mov	a,#0x54
   07D8 F0                 1289 	movx	@dptr,a
   07D9 90 00 3C           1290 	mov	dptr,#(_b + 0x003c)
   07DC 74 CD              1291 	mov	a,#0xCD
   07DE F0                 1292 	movx	@dptr,a
   07DF 90 00 3D           1293 	mov	dptr,#(_b + 0x003d)
   07E2 74 B9              1294 	mov	a,#0xB9
   07E4 F0                 1295 	movx	@dptr,a
   07E5 90 00 3E           1296 	mov	dptr,#(_b + 0x003e)
   07E8 74 94              1297 	mov	a,#0x94
   07EA F0                 1298 	movx	@dptr,a
   07EB 90 00 3F           1299 	mov	dptr,#(_b + 0x003f)
   07EE 74 AD              1300 	mov	a,#0xAD
   07F0 F0                 1301 	movx	@dptr,a
   07F1 90 00 40           1302 	mov	dptr,#(_b + 0x0040)
   07F4 74 64              1303 	mov	a,#0x64
   07F6 F0                 1304 	movx	@dptr,a
   07F7 90 00 41           1305 	mov	dptr,#(_b + 0x0041)
   07FA 74 8E              1306 	mov	a,#0x8E
   07FC F0                 1307 	movx	@dptr,a
   07FD 90 00 42           1308 	mov	dptr,#(_b + 0x0042)
   0800 74 26              1309 	mov	a,#0x26
   0802 F0                 1310 	movx	@dptr,a
   0803 90 00 43           1311 	mov	dptr,#(_b + 0x0043)
   0806 74 DE              1312 	mov	a,#0xDE
   0808 F0                 1313 	movx	@dptr,a
   0809 90 00 44           1314 	mov	dptr,#(_b + 0x0044)
   080C 74 8C              1315 	mov	a,#0x8C
   080E F0                 1316 	movx	@dptr,a
   080F 90 00 45           1317 	mov	dptr,#(_b + 0x0045)
   0812 74 C5              1318 	mov	a,#0xC5
   0814 F0                 1319 	movx	@dptr,a
   0815 90 00 46           1320 	mov	dptr,#(_b + 0x0046)
   0818 74 33              1321 	mov	a,#0x33
   081A F0                 1322 	movx	@dptr,a
   081B 90 00 47           1323 	mov	dptr,#(_b + 0x0047)
   081E 74 92              1324 	mov	a,#0x92
   0820 F0                 1325 	movx	@dptr,a
   0821 90 00 48           1326 	mov	dptr,#(_b + 0x0048)
   0824 74 24              1327 	mov	a,#0x24
   0826 F0                 1328 	movx	@dptr,a
   0827 90 00 49           1329 	mov	dptr,#(_b + 0x0049)
   082A 74 EF              1330 	mov	a,#0xEF
   082C F0                 1331 	movx	@dptr,a
   082D 90 00 4A           1332 	mov	dptr,#(_b + 0x004a)
   0830 74 76              1333 	mov	a,#0x76
   0832 F0                 1334 	movx	@dptr,a
   0833 90 00 4B           1335 	mov	dptr,#(_b + 0x004b)
   0836 74 34              1336 	mov	a,#0x34
   0838 F0                 1337 	movx	@dptr,a
   0839 90 00 4C           1338 	mov	dptr,#(_b + 0x004c)
   083C 74 C4              1339 	mov	a,#0xC4
   083E F0                 1340 	movx	@dptr,a
   083F 90 00 4D           1341 	mov	dptr,#(_b + 0x004d)
   0842 74 B8              1342 	mov	a,#0xB8
   0844 F0                 1343 	movx	@dptr,a
   0845 90 00 4E           1344 	mov	dptr,#(_b + 0x004e)
   0848 74 EC              1345 	mov	a,#0xEC
   084A F0                 1346 	movx	@dptr,a
   084B 90 00 4F           1347 	mov	dptr,#(_b + 0x004f)
   084E 74 F1              1348 	mov	a,#0xF1
   0850 F0                 1349 	movx	@dptr,a
   0851 90 00 50           1350 	mov	dptr,#(_b + 0x0050)
   0854 74 9A              1351 	mov	a,#0x9A
   0856 F0                 1352 	movx	@dptr,a
   0857 90 00 51           1353 	mov	dptr,#(_b + 0x0051)
   085A 74 79              1354 	mov	a,#0x79
   085C F0                 1355 	movx	@dptr,a
   085D 90 00 52           1356 	mov	dptr,#(_b + 0x0052)
   0860 74 61              1357 	mov	a,#0x61
   0862 F0                 1358 	movx	@dptr,a
   0863 90 00 53           1359 	mov	dptr,#(_b + 0x0053)
   0866 74 80              1360 	mov	a,#0x80
   0868 F0                 1361 	movx	@dptr,a
   0869 90 00 54           1362 	mov	dptr,#(_b + 0x0054)
   086C 74 C1              1363 	mov	a,#0xC1
   086E F0                 1364 	movx	@dptr,a
   086F 90 00 55           1365 	mov	dptr,#(_b + 0x0055)
   0872 74 BC              1366 	mov	a,#0xBC
   0874 F0                 1367 	movx	@dptr,a
   0875 90 00 56           1368 	mov	dptr,#(_b + 0x0056)
   0878 74 6D              1369 	mov	a,#0x6D
   087A F0                 1370 	movx	@dptr,a
   087B 90 00 57           1371 	mov	dptr,#(_b + 0x0057)
   087E 74 03              1372 	mov	a,#0x03
   0880 F0                 1373 	movx	@dptr,a
   0881 90 00 58           1374 	mov	dptr,#(_b + 0x0058)
   0884 74 49              1375 	mov	a,#0x49
   0886 F0                 1376 	movx	@dptr,a
   0887 90 00 59           1377 	mov	dptr,#(_b + 0x0059)
   088A 74 95              1378 	mov	a,#0x95
   088C F0                 1379 	movx	@dptr,a
   088D 90 00 5A           1380 	mov	dptr,#(_b + 0x005a)
   0890 74 94              1381 	mov	a,#0x94
   0892 F0                 1382 	movx	@dptr,a
   0893 90 00 5B           1383 	mov	dptr,#(_b + 0x005b)
   0896 74 C8              1384 	mov	a,#0xC8
   0898 F0                 1385 	movx	@dptr,a
   0899 90 00 5C           1386 	mov	dptr,#(_b + 0x005c)
   089C 74 6F              1387 	mov	a,#0x6F
   089E F0                 1388 	movx	@dptr,a
   089F 90 00 5D           1389 	mov	dptr,#(_b + 0x005d)
   08A2 74 14              1390 	mov	a,#0x14
   08A4 F0                 1391 	movx	@dptr,a
   08A5 90 00 5E           1392 	mov	dptr,#(_b + 0x005e)
   08A8 74 B0              1393 	mov	a,#0xB0
   08AA F0                 1394 	movx	@dptr,a
   08AB 90 00 5F           1395 	mov	dptr,#(_b + 0x005f)
   08AE 74 16              1396 	mov	a,#0x16
   08B0 F0                 1397 	movx	@dptr,a
   08B1 90 00 60           1398 	mov	dptr,#(_b + 0x0060)
   08B4 74 14              1399 	mov	a,#0x14
   08B6 F0                 1400 	movx	@dptr,a
   08B7 90 00 61           1401 	mov	dptr,#(_b + 0x0061)
   08BA 74 63              1402 	mov	a,#0x63
   08BC F0                 1403 	movx	@dptr,a
   08BD 90 00 62           1404 	mov	dptr,#(_b + 0x0062)
   08C0 74 D0              1405 	mov	a,#0xD0
   08C2 F0                 1406 	movx	@dptr,a
   08C3 90 00 63           1407 	mov	dptr,#(_b + 0x0063)
   08C6 74 94              1408 	mov	a,#0x94
   08C8 F0                 1409 	movx	@dptr,a
   08C9 90 00 64           1410 	mov	dptr,#(_b + 0x0064)
   08CC 74 D9              1411 	mov	a,#0xD9
   08CE F0                 1412 	movx	@dptr,a
   08CF 90 00 65           1413 	mov	dptr,#(_b + 0x0065)
   08D2 74 10              1414 	mov	a,#0x10
   08D4 F0                 1415 	movx	@dptr,a
   08D5 90 00 66           1416 	mov	dptr,#(_b + 0x0066)
   08D8 74 4B              1417 	mov	a,#0x4B
   08DA F0                 1418 	movx	@dptr,a
   08DB 90 00 67           1419 	mov	dptr,#(_b + 0x0067)
   08DE 74 44              1420 	mov	a,#0x44
   08E0 F0                 1421 	movx	@dptr,a
   08E1 90 00 68           1422 	mov	dptr,#(_b + 0x0068)
   08E4 74 03              1423 	mov	a,#0x03
   08E6 F0                 1424 	movx	@dptr,a
   08E7 90 00 69           1425 	mov	dptr,#(_b + 0x0069)
   08EA 74 C2              1426 	mov	a,#0xC2
   08EC F0                 1427 	movx	@dptr,a
   08ED 90 00 6A           1428 	mov	dptr,#(_b + 0x006a)
   08F0 74 CC              1429 	mov	a,#0xCC
   08F2 F0                 1430 	movx	@dptr,a
   08F3 90 00 6B           1431 	mov	dptr,#(_b + 0x006b)
   08F6 74 04              1432 	mov	a,#0x04
   08F8 F0                 1433 	movx	@dptr,a
   08F9 90 00 6C           1434 	mov	dptr,#(_b + 0x006c)
   08FC 74 68              1435 	mov	a,#0x68
   08FE F0                 1436 	movx	@dptr,a
   08FF 90 00 6D           1437 	mov	dptr,#(_b + 0x006d)
   0902 74 98              1438 	mov	a,#0x98
   0904 F0                 1439 	movx	@dptr,a
   0905 90 00 6E           1440 	mov	dptr,#(_b + 0x006e)
   0908 74 6C              1441 	mov	a,#0x6C
   090A F0                 1442 	movx	@dptr,a
   090B 90 00 6F           1443 	mov	dptr,#(_b + 0x006f)
   090E 74 D9              1444 	mov	a,#0xD9
   0910 F0                 1445 	movx	@dptr,a
   0911 90 00 70           1446 	mov	dptr,#(_b + 0x0070)
   0914 74 69              1447 	mov	a,#0x69
   0916 F0                 1448 	movx	@dptr,a
   0917 90 00 71           1449 	mov	dptr,#(_b + 0x0071)
   091A 74 C7              1450 	mov	a,#0xC7
   091C F0                 1451 	movx	@dptr,a
   091D 90 00 72           1452 	mov	dptr,#(_b + 0x0072)
   0920 74 1A              1453 	mov	a,#0x1A
   0922 F0                 1454 	movx	@dptr,a
   0923 90 00 73           1455 	mov	dptr,#(_b + 0x0073)
   0926 74 0F              1456 	mov	a,#0x0F
   0928 F0                 1457 	movx	@dptr,a
   0929 90 00 74           1458 	mov	dptr,#(_b + 0x0074)
   092C 74 C5              1459 	mov	a,#0xC5
   092E F0                 1460 	movx	@dptr,a
   092F 90 00 75           1461 	mov	dptr,#(_b + 0x0075)
   0932 74 39              1462 	mov	a,#0x39
   0934 F0                 1463 	movx	@dptr,a
   0935 90 00 76           1464 	mov	dptr,#(_b + 0x0076)
   0938 74 5C              1465 	mov	a,#0x5C
   093A F0                 1466 	movx	@dptr,a
   093B 90 00 77           1467 	mov	dptr,#(_b + 0x0077)
   093E 74 6A              1468 	mov	a,#0x6A
   0940 F0                 1469 	movx	@dptr,a
   0941 90 00 78           1470 	mov	dptr,#(_b + 0x0078)
   0944 74 5A              1471 	mov	a,#0x5A
   0946 F0                 1472 	movx	@dptr,a
   0947 90 00 79           1473 	mov	dptr,#(_b + 0x0079)
   094A 74 67              1474 	mov	a,#0x67
   094C F0                 1475 	movx	@dptr,a
   094D 90 00 7A           1476 	mov	dptr,#(_b + 0x007a)
   0950 74 0B              1477 	mov	a,#0x0B
   0952 F0                 1478 	movx	@dptr,a
   0953 90 00 7B           1479 	mov	dptr,#(_b + 0x007b)
   0956 74 47              1480 	mov	a,#0x47
   0958 F0                 1481 	movx	@dptr,a
   0959 90 00 7C           1482 	mov	dptr,#(_b + 0x007c)
   095C 74 F4              1483 	mov	a,#0xF4
   095E F0                 1484 	movx	@dptr,a
   095F 90 00 7D           1485 	mov	dptr,#(_b + 0x007d)
   0962 74 77              1486 	mov	a,#0x77
   0964 F0                 1487 	movx	@dptr,a
   0965 90 00 7E           1488 	mov	dptr,#(_b + 0x007e)
   0968 74 1E              1489 	mov	a,#0x1E
   096A F0                 1490 	movx	@dptr,a
   096B 90 00 7F           1491 	mov	dptr,#(_b + 0x007f)
   096E 74 2B              1492 	mov	a,#0x2B
   0970 F0                 1493 	movx	@dptr,a
                           1494 	.area GSFINAL (CODE)
   0971 02 00 03           1495 	ljmp	__sdcc_program_startup
                           1496 ;--------------------------------------------------------
                           1497 ; Home
                           1498 ;--------------------------------------------------------
                           1499 	.area HOME    (CODE)
                           1500 	.area HOME    (CODE)
   0003                    1501 __sdcc_program_startup:
   0003 12 09 74           1502 	lcall	_main
                           1503 ;	return from main will lock up
   0006 80 FE              1504 	sjmp .
                           1505 ;--------------------------------------------------------
                           1506 ; code
                           1507 ;--------------------------------------------------------
                           1508 	.area CSEG    (CODE)
                           1509 ;------------------------------------------------------------
                           1510 ;Allocation info for local variables in function 'main'
                           1511 ;------------------------------------------------------------
                           1512 ;------------------------------------------------------------
                           1513 ;	main.c:40: int main() {
                           1514 ;	-----------------------------------------
                           1515 ;	 function main
                           1516 ;	-----------------------------------------
   0974                    1517 _main:
                    0002   1518 	ar2 = 0x02
                    0003   1519 	ar3 = 0x03
                    0004   1520 	ar4 = 0x04
                    0005   1521 	ar5 = 0x05
                    0006   1522 	ar6 = 0x06
                    0007   1523 	ar7 = 0x07
                    0000   1524 	ar0 = 0x00
                    0001   1525 	ar1 = 0x01
                           1526 ;	main.c:41: startBrk=1;
   0974 90 FF FE           1527 	mov	dptr,#_startBrk
   0977 74 01              1528 	mov	a,#0x01
   0979 F0                 1529 	movx	@dptr,a
                           1530 ;	main.c:42: fips();
   097A 12 09 87           1531 	lcall	_fips
                           1532 ;	main.c:43: endBrk=1;
   097D 90 FF FF           1533 	mov	dptr,#_endBrk
   0980 74 01              1534 	mov	a,#0x01
   0982 F0                 1535 	movx	@dptr,a
                           1536 ;	main.c:44: return 0;
   0983 90 00 00           1537 	mov	dptr,#0x0000
   0986 22                 1538 	ret
                           1539 ;------------------------------------------------------------
                           1540 ;Allocation info for local variables in function 'fips'
                           1541 ;------------------------------------------------------------
                           1542 ;------------------------------------------------------------
                           1543 ;	main.c:47: void fips()
                           1544 ;	-----------------------------------------
                           1545 ;	 function fips
                           1546 ;	-----------------------------------------
   0987                    1547 _fips:
                           1548 ;	main.c:55: __endasm;
                           1549 	
   0987 85 00 82           1550 	        mov dpl, 0x00
   098A 75 83 01           1551 	        mov dph, #(_n >> 8)
   098D E0                 1552 	        movx a, @dptr
   098E FA                 1553 	        mov r2, a
                           1554 	    
                           1555 ;	main.c:63: __endasm;
                           1556 	
   098F 85 00 82           1557 	        mov dpl, 0x00
   0992 75 83 00           1558 	        mov dph, #(_b >> 8)
   0995 E0                 1559 	        movx a, @dptr
   0996 FB                 1560 	        mov r3, a
                           1561 	    
                           1562 ;	main.c:133: _endasm;
                           1563 	
                           1564         ; write registers to stack
   0997 89 0E              1565 	        mov _stack, r1
   0999 C0 0E              1566 	        push _stack
                           1567 	
                           1568         ; load a[0]
   099B 75 82 00           1569 	        mov dpl, #0x00
   099E 75 83 02           1570 	        mov dph, #(_a >> 8)
   09A1 E0                 1571 	        movx a,@dptr
   09A2 F5 F0              1572 	        mov b, a
                           1573 	
                           1574         ; load b0
   09A4 EB                 1575 	        mov a, r3
                           1576 	
                           1577         ; a[0]*b[0]
   09A5 A4                 1578 	        mul ab
                           1579 	
                           1580         ; tmp = (unsigned char)(tmp) + a[0]*b0
   09A6 25 08              1581 	        add a, _tmp
   09A8 F5 08              1582 	        mov _tmp, a
                           1583 	
                           1584         ; t = t + (tmp >> 8)
   09AA E5 F0              1585 	        mov a, b
   09AC 35 0C              1586 	        addc a, _t
   09AE F5 0C              1587 	        mov _t, a
   09B0 E4                 1588 	        clr a
   09B1 35 0D              1589 	        addc a, (_t + 1)
   09B3 F5 0D              1590 	        mov (_t + 1), a
                           1591 	
                           1592         ; c = (unsigned char)(tmp)*0xA5
   09B5 74 A5              1593 	        mov a, #0xA5
   09B7 85 08 F0           1594 	        mov b, _tmp
   09BA A4                 1595 	        mul ab
   09BB F9                 1596 	        mov r1, a
                           1597 	
                           1598         ;n[0] ophalen
   09BC EA                 1599 	        mov a, r2
                           1600 	
                           1601         ; c*n[0]
   09BD 89 F0              1602 	        mov b, r1
   09BF A4                 1603 	        mul ab
                           1604 	
                           1605         ; tmp = (unsigned char)(tmp) + c*n0
   09C0 25 08              1606 	        add a, _tmp
   09C2 F5 08              1607 	        mov _tmp, a
                           1608 	
                           1609         ; m[0] = c
   09C4 75 82 00           1610 	        mov dpl, #0x00
   09C7 75 83 04           1611 	        mov dph, #(_m >> 8)
   09CA E9                 1612 	        mov a,r1
   09CB F0                 1613 	        movx @dptr,a
                           1614 	
                           1615         ; tmp = t + (tmp >> 8)
   09CC E5 F0              1616 	        mov a, b
   09CE 35 0C              1617 	        addc a, _t
   09D0 F5 0C              1618 	        mov _t, a
   09D2 E4                 1619 	        clr a
   09D3 35 0D              1620 	        addc a, (_t + 1)
   09D5 F5 0D              1621 	        mov (_t + 1), a
                           1622 	
                           1623         ; t = tmp >> 8;
   09D7 85 0C 08           1624 	        mov _tmp, _t
   09DA 85 0D 0C           1625 	        mov _t, (_t + 1)
   09DD 75 0D 00           1626 	        mov (_t + 1), #0x00
                           1627 	
   09E0 D0 0E              1628 	        pop _stack
   09E2 A9 0E              1629 	        mov r1, _stack
                           1630 	    
                           1631 ;	main.c:135: for(i = 1; i < SIZE; i++) {
   09E4 75 0A 01           1632 	mov	_i,#0x01
   09E7                    1633 00101$:
   09E7 74 80              1634 	mov	a,#0x100 - 0x80
   09E9 25 0A              1635 	add	a,_i
   09EB 50 03              1636 	jnc	00120$
   09ED 02 0A 94           1637 	ljmp	00104$
   09F0                    1638 00120$:
                           1639 ;	main.c:136: stack = i;
   09F0 85 0A 0E           1640 	mov	_stack,_i
                           1641 ;	main.c:268: _endasm;
                           1642 	
   09F3 75 0B 00           1643 	            mov _j, #0x00
                           1644 	
   09F6 89 0E              1645 	            mov _stack, r1
   09F8 C0 0E              1646 	            push _stack
                           1647 	
   09FA                    1648 	            00001$:
                           1649             ; load a[j]
   09FA 85 0B 82           1650 	            mov dpl,_j
   09FD 75 83 02           1651 	            mov dph, #(_a >> 8)
   0A00 E0                 1652 	            movx a,@dptr
   0A01 F5 F0              1653 	            mov b, a
                           1654 	
                           1655             ; load b[i-j]
   0A03 E5 0A              1656 	            mov a, _i
   0A05 C3                 1657 	            clr c
   0A06 95 0B              1658 	            subb a, _j
   0A08 F5 82              1659 	            mov dpl, a
   0A0A FC                 1660 	            mov r4, a
   0A0B 75 83 00           1661 	            mov dph, #(_b >> 8)
   0A0E E0                 1662 	            movx a,@dptr
                           1663 	
                           1664             ; a[j]*b[i-j]
   0A0F A4                 1665 	            mul ab
                           1666 	
                           1667             ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
   0A10 25 08              1668 	            add a, _tmp
   0A12 F5 08              1669 	            mov _tmp, a
                           1670 	
                           1671             ; t = t + (tmp >> 8)
   0A14 E5 F0              1672 	            mov a, b
   0A16 35 0C              1673 	            addc a, _t
   0A18 F5 0C              1674 	            mov _t, a
   0A1A E4                 1675 	            clr a
   0A1B 35 0D              1676 	            addc a, (_t + 1)
   0A1D F5 0D              1677 	            mov (_t + 1), a
                           1678 	
                           1679             ; load m[j]
   0A1F 85 0B 82           1680 	            mov dpl, _j
   0A22 75 83 04           1681 	            mov dph, #(_m >> 8)
   0A25 E0                 1682 	            movx a,@dptr
   0A26 F5 F0              1683 	            mov b, a
                           1684 	
                           1685             ; load n[i-j]
   0A28 8C 82              1686 	            mov dpl, r4
   0A2A 75 83 01           1687 	            mov dph, #(_n >> 8)
   0A2D E0                 1688 	            movx a,@dptr
                           1689 	
                           1690             ; m[j]*n[i-j]
   0A2E A4                 1691 	            mul ab
                           1692 	
                           1693             ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
   0A2F 25 08              1694 	            add a, _tmp
   0A31 F5 08              1695 	            mov _tmp, a
                           1696 	
                           1697             ; t = t + (tmp >> 8)
   0A33 E5 F0              1698 	            mov a, b
   0A35 35 0C              1699 	            addc a, _t
   0A37 F5 0C              1700 	            mov _t, a
   0A39 E4                 1701 	            clr a
   0A3A 35 0D              1702 	            addc a, (_t + 1)
   0A3C F5 0D              1703 	            mov (_t + 1), a
                           1704 	
                           1705             ; for (j = 0; j < i; j++)
   0A3E E5 0A              1706 	            mov a, _i
   0A40 05 0B              1707 	            inc _j
   0A42 95 0B              1708 	            subb a, _j
   0A44 70 B4              1709 	            jnz 00001$
                           1710 	
                           1711             ; load a[i]
   0A46 85 0A 82           1712 	            mov dpl, _i
   0A49 75 83 02           1713 	            mov dph, #(_a >> 8)
   0A4C E0                 1714 	            movx a, @dptr
   0A4D F5 F0              1715 	            mov b, a
                           1716 	
                           1717             ; load b0
   0A4F EB                 1718 	            mov a, r3
                           1719 	
                           1720             ; a[i]*b[0]
   0A50 A4                 1721 	            mul ab
                           1722 	
                           1723             ; tmp = (unsigned char)(tmp) + a[i]*b0
   0A51 25 08              1724 	            add a, _tmp
   0A53 F5 08              1725 	            mov _tmp, a
                           1726 	
                           1727             ; t = t + (tmp >> 8)
   0A55 E5 F0              1728 	            mov a, b
   0A57 35 0C              1729 	            addc a, _t
   0A59 F5 0C              1730 	            mov _t, a
   0A5B E4                 1731 	            clr a
   0A5C 35 0D              1732 	            addc a, (_t + 1)
   0A5E F5 0D              1733 	            mov (_t + 1), a
                           1734 	
                           1735             ; c = (unsigned char)(tmp)*0xA5
   0A60 74 A5              1736 	            mov a, #0xA5
   0A62 85 08 F0           1737 	            mov b, _tmp
   0A65 A4                 1738 	            mul ab
   0A66 F9                 1739 	            mov r1, a
                           1740 	
                           1741             ; load n[0]
   0A67 EA                 1742 	            mov a, r2
                           1743 	
                           1744             ; c*n[0]
   0A68 89 F0              1745 	            mov b, r1
   0A6A A4                 1746 	            mul ab
                           1747 	
                           1748             ; tmp = (unsigned char)(tmp) + c*n0
   0A6B 25 08              1749 	            add a, _tmp
   0A6D F5 08              1750 	            mov _tmp, a
                           1751 	
                           1752             ; m[i] = c
   0A6F 85 0A 82           1753 	            mov dpl, _i
   0A72 75 83 04           1754 	            mov dph, #(_m >> 8)
   0A75 E9                 1755 	            mov a, r1
   0A76 F0                 1756 	            movx @dptr,a
                           1757 	
                           1758             ; tmp = t + (tmp >> 8)
   0A77 E5 F0              1759 	            mov a, b
   0A79 35 0C              1760 	            addc a, _t
   0A7B F5 0C              1761 	            mov _t, a
   0A7D E4                 1762 	            clr a
   0A7E 35 0D              1763 	            addc a, (_t + 1)
   0A80 F5 0D              1764 	            mov (_t + 1), a
                           1765 	
                           1766             ; t = tmp >> 8;
   0A82 85 0C 08           1767 	            mov _tmp, _t
   0A85 85 0D 0C           1768 	            mov _t, (_t + 1)
   0A88 75 0D 00           1769 	            mov (_t + 1), #0x00
                           1770 	
   0A8B D0 0E              1771 	            pop _stack
   0A8D A9 0E              1772 	            mov r1, _stack
                           1773 	        
                           1774 ;	main.c:135: for(i = 1; i < SIZE; i++) {
   0A8F 05 0A              1775 	inc	_i
   0A91 02 09 E7           1776 	ljmp	00101$
   0A94                    1777 00104$:
                           1778 ;	main.c:289: for(i = SIZE; i < 255; i++) {
   0A94 75 0A 80           1779 	mov	_i,#0x80
   0A97                    1780 00105$:
   0A97 74 01              1781 	mov	a,#0x100 - 0xFF
   0A99 25 0A              1782 	add	a,_i
   0A9B 50 03              1783 	jnc	00121$
   0A9D 02 0B 11           1784 	ljmp	00108$
   0AA0                    1785 00121$:
                           1786 ;	main.c:290: stack = i;
   0AA0 85 0A 0E           1787 	mov	_stack,_i
                           1788 ;	main.c:375: _endasm;
                           1789 	
                           1790             ; i - 128 + 1
   0AA3 E5 0A              1791 	            mov a, _i
   0AA5 C3                 1792 	            clr c
   0AA6 94 81              1793 	            subb a, #0x81
   0AA8 F5 0B              1794 	            mov _j, a
                           1795 	
   0AAA                    1796 	            00002$:
                           1797 	
                           1798             ; load a[j]
   0AAA 85 0B 82           1799 	            mov dpl, _j
   0AAD 75 83 02           1800 	            mov dph, #(_a >> 8)
   0AB0 E0                 1801 	            movx a,@dptr
   0AB1 F5 F0              1802 	            mov b, a
                           1803 	
                           1804             ; load b[i-j]
   0AB3 C3                 1805 	            clr c
   0AB4 E5 0A              1806 	            mov a, _i
   0AB6 95 0B              1807 	            subb a, _j
   0AB8 FC                 1808 	            mov r4, a
   0AB9 F5 82              1809 	            mov dpl, a
   0ABB 75 83 00           1810 	            mov dph, #(_b >> 8)
   0ABE E0                 1811 	            movx a,@dptr
                           1812 	
                           1813             ; a[j]*b[i-j]
   0ABF A4                 1814 	            mul ab
                           1815 	
                           1816             ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
   0AC0 25 08              1817 	            add a, _tmp
   0AC2 F5 08              1818 	            mov _tmp, a
                           1819 	
                           1820             ; t = t + (tmp >> 8)
   0AC4 E5 F0              1821 	            mov a, b
   0AC6 35 0C              1822 	            addc a, _t
   0AC8 F5 0C              1823 	            mov _t, a
   0ACA E4                 1824 	            clr a
   0ACB 35 0D              1825 	            addc a, (_t + 1)
   0ACD F5 0D              1826 	            mov (_t + 1), a
                           1827 	
                           1828             ; load m[j]
   0ACF 85 0B 82           1829 	            mov dpl, _j
   0AD2 75 83 04           1830 	            mov dph, #(_m >> 8)
   0AD5 E0                 1831 	            movx a,@dptr
   0AD6 F5 F0              1832 	            mov b, a
                           1833 	
                           1834             ; load n[i-j]
   0AD8 8C 82              1835 	            mov dpl, r4
   0ADA 75 83 01           1836 	            mov dph, #(_n >> 8)
   0ADD E0                 1837 	            movx a, @dptr
                           1838 	
                           1839             ; m[j]*n[i-j]
   0ADE A4                 1840 	            mul ab
                           1841 	
                           1842             ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
   0ADF 25 08              1843 	            add a, _tmp
   0AE1 F5 08              1844 	            mov _tmp, a
                           1845 	
                           1846             ; t = t + (tmp >> 8)
   0AE3 E5 F0              1847 	            mov a, b
   0AE5 35 0C              1848 	            addc a, _t
   0AE7 F5 0C              1849 	            mov _t, a
   0AE9 E4                 1850 	            clr a
   0AEA 35 0D              1851 	            addc a, (_t + 1)
   0AEC F5 0D              1852 	            mov (_t + 1), a
                           1853 	
                           1854             ; for (j = i-128 +1; j < 128; j++)
   0AEE 05 0B              1855 	            inc _j
   0AF0 74 80              1856 	            mov a, #0x80
   0AF2 95 0B              1857 	            subb a, _j
   0AF4 70 B4              1858 	            jnz 00002$
                           1859 	
                           1860             ; m[i-128] = (unsigned char)tmp
   0AF6 E5 0A              1861 	            mov a, _i
   0AF8 C3                 1862 	            clr c
   0AF9 94 80              1863 	            subb a, #0x80
   0AFB F5 82              1864 	            mov dpl, a
   0AFD 75 83 04           1865 	            mov dph, #(_m >> 8)
   0B00 E5 08              1866 	            mov a, _tmp
   0B02 F0                 1867 	            movx @dptr, a
                           1868 	
                           1869             ; tmp = (unsigned char)t
   0B03 85 0C 08           1870 	            mov _tmp, _t
   0B06 85 0D 0C           1871 	            mov _t, (_t + 1)
   0B09 75 0D 00           1872 	            mov (_t + 1), #0x00
                           1873 	        
                           1874 ;	main.c:289: for(i = SIZE; i < 255; i++) {
   0B0C 05 0A              1875 	inc	_i
   0B0E 02 0A 97           1876 	ljmp	00105$
   0B11                    1877 00108$:
                           1878 ;	main.c:409: _endasm;
                           1879 	
                           1880         ; m[127] = (unsigned char)(tmp);
   0B11 75 82 7F           1881 	        mov dpl, #0x7F
   0B14 E5 08              1882 	        mov a, _tmp
   0B16 F0                 1883 	        movx @dptr, a
                           1884 	
                           1885         ; m[128] = (unsigned char)(t);
   0B17 75 82 80           1886 	        mov dpl, #0x80
   0B1A E5 0C              1887 	        mov a, _t
   0B1C F0                 1888 	        movx @dptr, a
                           1889 	
                           1890         ; load m[0]
   0B1D 75 82 00           1891 	        mov dpl, #0x00
   0B20 E0                 1892 	        movx a, @dptr
                           1893 	
                           1894         ; tmp = m[0] - n[0]
   0B21 C3                 1895 	        clr c
   0B22 9A                 1896 	        subb a, r2
   0B23 F5 08              1897 	        mov _tmp, a
                           1898 	    
                           1899 ;	main.c:415: for(i = 1; i <= SIZE; i++) {
   0B25 75 0A 80           1900 	mov	_i,#0x80
   0B28                    1901 00111$:
                           1902 ;	main.c:439: _endasm;
                           1903 	
   0B28 89 0E              1904 	            mov _stack, r1
   0B2A C0 0E              1905 	            push _stack
                           1906 	
                           1907             ; load m[i]
   0B2C 85 0A 82           1908 	            mov dpl, _i
   0B2F 75 83 04           1909 	            mov dph, #(_m >> 8)
   0B32 E0                 1910 	            movx a, @dptr
   0B33 F9                 1911 	            mov r1, a
                           1912 	
                           1913             ; load n[i]
   0B34 75 83 01           1914 	            mov dph, #(_n >> 8)
   0B37 E0                 1915 	            movx a, @dptr
                           1916 	
                           1917             ; m[i] - n[i]
   0B38 99                 1918 	            subb a, r1
                           1919 	
                           1920             ; u[i] = (unsigned char)tmp;
   0B39 75 83 05           1921 	            mov dph, #(_u >> 8)
   0B3C F0                 1922 	            movx @dptr, a
                           1923 	
   0B3D D0 0E              1924 	            pop _stack
   0B3F A9 0E              1925 	            mov r1, _stack
                           1926 	        
   0B41 15 0A              1927 	dec	_i
                           1928 ;	main.c:415: for(i = 1; i <= SIZE; i++) {
   0B43 E5 0A              1929 	mov	a,_i
   0B45 60 03              1930 	jz	00122$
   0B47 02 0B 28           1931 	ljmp	00111$
   0B4A                    1932 00122$:
   0B4A 75 0A 81           1933 	mov	_i,#0x81
                           1934 ;	main.c:591: _endasm;
                           1935 	
   0B4D E4                 1936 	        clr a
   0B4E 34 00              1937 	        addc a, #0x00
   0B50 F5 08              1938 	        mov _tmp, a
                           1939 	
   0B52 70 01              1940 	        jnz 00003$
   0B54 22                 1941 	        ret
                           1942 	
   0B55                    1943 	        00003$:
   0B55 85 00 82 75 83 05  1944 	        mov dpl, 0x00 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B60 85 01 82 75 83 05  1945 	        mov dpl, 0x01 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B6B 85 02 82 75 83 05  1946 	        mov dpl, 0x02 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B76 85 03 82 75 83 05  1947 	        mov dpl, 0x03 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B81 85 04 82 75 83 05  1948 	        mov dpl, 0x04 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B8C 85 05 82 75 83 05  1949 	        mov dpl, 0x05 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B97 85 06 82 75 83 05  1950 	        mov dpl, 0x06 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BA2 85 07 82 75 83 05  1951 	        mov dpl, 0x07 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BAD 85 08 82 75 83 05  1952 	        mov dpl, 0x08 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BB8 85 09 82 75 83 05  1953 	        mov dpl, 0x09 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BC3 85 0A 82 75 83 05  1954 	        mov dpl, 0x0A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BCE 85 0B 82 75 83 05  1955 	        mov dpl, 0x0B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BD9 85 0C 82 75 83 05  1956 	        mov dpl, 0x0C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BE4 85 0D 82 75 83 05  1957 	        mov dpl, 0x0D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BEF 85 0E 82 75 83 05  1958 	        mov dpl, 0x0E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BFA 85 0F 82 75 83 05  1959 	        mov dpl, 0x0F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C05 85 10 82 75 83 05  1960 	        mov dpl, 0x10 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C10 85 11 82 75 83 05  1961 	        mov dpl, 0x11 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C1B 85 12 82 75 83 05  1962 	        mov dpl, 0x12 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C26 85 13 82 75 83 05  1963 	        mov dpl, 0x13 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C31 85 14 82 75 83 05  1964 	        mov dpl, 0x14 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C3C 85 15 82 75 83 05  1965 	        mov dpl, 0x15 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C47 85 16 82 75 83 05  1966 	        mov dpl, 0x16 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C52 85 17 82 75 83 05  1967 	        mov dpl, 0x17 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C5D 85 18 82 75 83 05  1968 	        mov dpl, 0x18 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C68 85 19 82 75 83 05  1969 	        mov dpl, 0x19 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C73 85 1A 82 75 83 05  1970 	        mov dpl, 0x1A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C7E 85 1B 82 75 83 05  1971 	        mov dpl, 0x1B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C89 85 1C 82 75 83 05  1972 	        mov dpl, 0x1C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C94 85 1D 82 75 83 05  1973 	        mov dpl, 0x1D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C9F 85 1E 82 75 83 05  1974 	        mov dpl, 0x1E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CAA 85 1F 82 75 83 05  1975 	        mov dpl, 0x1F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CB5 85 20 82 75 83 05  1976 	        mov dpl, 0x20 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CC0 85 21 82 75 83 05  1977 	        mov dpl, 0x21 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CCB 85 22 82 75 83 05  1978 	        mov dpl, 0x22 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CD6 85 23 82 75 83 05  1979 	        mov dpl, 0x23 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CE1 85 24 82 75 83 05  1980 	        mov dpl, 0x24 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CEC 85 25 82 75 83 05  1981 	        mov dpl, 0x25 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CF7 85 26 82 75 83 05  1982 	        mov dpl, 0x26 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D02 85 27 82 75 83 05  1983 	        mov dpl, 0x27 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D0D 85 28 82 75 83 05  1984 	        mov dpl, 0x28 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D18 85 29 82 75 83 05  1985 	        mov dpl, 0x29 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D23 85 2A 82 75 83 05  1986 	        mov dpl, 0x2A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D2E 85 2B 82 75 83 05  1987 	        mov dpl, 0x2B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D39 85 2C 82 75 83 05  1988 	        mov dpl, 0x2C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D44 85 2D 82 75 83 05  1989 	        mov dpl, 0x2D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D4F 85 2E 82 75 83 05  1990 	        mov dpl, 0x2E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D5A 85 2F 82 75 83 05  1991 	        mov dpl, 0x2F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D65 85 30 82 75 83 05  1992 	        mov dpl, 0x30 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D70 85 31 82 75 83 05  1993 	        mov dpl, 0x31 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D7B 85 32 82 75 83 05  1994 	        mov dpl, 0x32 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D86 85 33 82 75 83 05  1995 	        mov dpl, 0x33 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D91 85 34 82 75 83 05  1996 	        mov dpl, 0x34 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D9C 85 35 82 75 83 05  1997 	        mov dpl, 0x35 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DA7 85 36 82 75 83 05  1998 	        mov dpl, 0x36 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DB2 85 37 82 75 83 05  1999 	        mov dpl, 0x37 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DBD 85 38 82 75 83 05  2000 	        mov dpl, 0x38 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DC8 85 39 82 75 83 05  2001 	        mov dpl, 0x39 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DD3 85 3A 82 75 83 05  2002 	        mov dpl, 0x3A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DDE 85 3B 82 75 83 05  2003 	        mov dpl, 0x3B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DE9 85 3C 82 75 83 05  2004 	        mov dpl, 0x3C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DF4 85 3D 82 75 83 05  2005 	        mov dpl, 0x3D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DFF 85 3E 82 75 83 05  2006 	        mov dpl, 0x3E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E0A 85 3F 82 75 83 05  2007 	        mov dpl, 0x3F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E15 85 40 82 75 83 05  2008 	        mov dpl, 0x40 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E20 85 41 82 75 83 05  2009 	        mov dpl, 0x41 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E2B 85 42 82 75 83 05  2010 	        mov dpl, 0x42 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E36 85 43 82 75 83 05  2011 	        mov dpl, 0x43 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E41 85 44 82 75 83 05  2012 	        mov dpl, 0x44 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E4C 85 45 82 75 83 05  2013 	        mov dpl, 0x45 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E57 85 46 82 75 83 05  2014 	        mov dpl, 0x46 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E62 85 47 82 75 83 05  2015 	        mov dpl, 0x47 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E6D 85 48 82 75 83 05  2016 	        mov dpl, 0x48 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E78 85 49 82 75 83 05  2017 	        mov dpl, 0x49 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E83 85 4A 82 75 83 05  2018 	        mov dpl, 0x4A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E8E 85 4B 82 75 83 05  2019 	        mov dpl, 0x4B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E99 85 4C 82 75 83 05  2020 	        mov dpl, 0x4C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EA4 85 4D 82 75 83 05  2021 	        mov dpl, 0x4D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EAF 85 4E 82 75 83 05  2022 	        mov dpl, 0x4E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EBA 85 4F 82 75 83 05  2023 	        mov dpl, 0x4F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EC5 85 50 82 75 83 05  2024 	        mov dpl, 0x50 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0ED0 85 51 82 75 83 05  2025 	        mov dpl, 0x51 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EDB 85 52 82 75 83 05  2026 	        mov dpl, 0x52 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EE6 85 53 82 75 83 05  2027 	        mov dpl, 0x53 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EF1 85 54 82 75 83 05  2028 	        mov dpl, 0x54 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EFC 85 55 82 75 83 05  2029 	        mov dpl, 0x55 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F07 85 56 82 75 83 05  2030 	        mov dpl, 0x56 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F12 85 57 82 75 83 05  2031 	        mov dpl, 0x57 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F1D 85 58 82 75 83 05  2032 	        mov dpl, 0x58 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F28 85 59 82 75 83 05  2033 	        mov dpl, 0x59 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F33 85 5A 82 75 83 05  2034 	        mov dpl, 0x5A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F3E 85 5B 82 75 83 05  2035 	        mov dpl, 0x5B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F49 85 5C 82 75 83 05  2036 	        mov dpl, 0x5C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F54 85 5D 82 75 83 05  2037 	        mov dpl, 0x5D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F5F 85 5E 82 75 83 05  2038 	        mov dpl, 0x5E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F6A 85 5F 82 75 83 05  2039 	        mov dpl, 0x5F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F75 85 60 82 75 83 05  2040 	        mov dpl, 0x60 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F80 85 61 82 75 83 05  2041 	        mov dpl, 0x61 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F8B 85 62 82 75 83 05  2042 	        mov dpl, 0x62 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F96 85 63 82 75 83 05  2043 	        mov dpl, 0x63 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FA1 85 64 82 75 83 05  2044 	        mov dpl, 0x64 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FAC 85 65 82 75 83 05  2045 	        mov dpl, 0x65 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FB7 85 66 82 75 83 05  2046 	        mov dpl, 0x66 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FC2 85 67 82 75 83 05  2047 	        mov dpl, 0x67 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FCD 85 68 82 75 83 05  2048 	        mov dpl, 0x68 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FD8 85 69 82 75 83 05  2049 	        mov dpl, 0x69 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FE3 85 6A 82 75 83 05  2050 	        mov dpl, 0x6A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FEE 85 6B 82 75 83 05  2051 	        mov dpl, 0x6B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FF9 85 6C 82 75 83 05  2052 	        mov dpl, 0x6C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1004 85 6D 82 75 83 05  2053 	        mov dpl, 0x6D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   100F 85 6E 82 75 83 05  2054 	        mov dpl, 0x6E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   101A 85 6F 82 75 83 05  2055 	        mov dpl, 0x6F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1025 85 70 82 75 83 05  2056 	        mov dpl, 0x70 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1030 85 71 82 75 83 05  2057 	        mov dpl, 0x71 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   103B 85 72 82 75 83 05  2058 	        mov dpl, 0x72 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1046 85 73 82 75 83 05  2059 	        mov dpl, 0x73 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1051 85 74 82 75 83 05  2060 	        mov dpl, 0x74 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   105C 85 75 82 75 83 05  2061 	        mov dpl, 0x75 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1067 85 76 82 75 83 05  2062 	        mov dpl, 0x76 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1072 85 77 82 75 83 05  2063 	        mov dpl, 0x77 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   107D 85 78 82 75 83 05  2064 	        mov dpl, 0x78 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1088 85 79 82 75 83 05  2065 	        mov dpl, 0x79 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1093 85 7A 82 75 83 05  2066 	        mov dpl, 0x7A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   109E 85 7B 82 75 83 05  2067 	        mov dpl, 0x7B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10A9 85 7C 82 75 83 05  2068 	        mov dpl, 0x7C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10B4 85 7D 82 75 83 05  2069 	        mov dpl, 0x7D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10BF 85 7E 82 75 83 05  2070 	        mov dpl, 0x7E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10CA 85 7F 82 75 83 05  2071 	        mov dpl, 0x7F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10D5 22                 2072 	        ret
                           2073 	    
   10D6 22                 2074 	ret
                           2075 	.area CSEG    (CODE)
                           2076 	.area CONST   (CODE)
                           2077 	.area XINIT   (CODE)
                           2078 	.area CABS    (ABS,CODE)
