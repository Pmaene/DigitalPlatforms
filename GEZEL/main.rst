                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Wed Dec  5 17:53:13 2012
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _terminate
                             14 	.globl _montgomery
                             15 	.globl _read_r
                             16 	.globl _write_montgomery
                             17 	.globl _CY
                             18 	.globl _AC
                             19 	.globl _F0
                             20 	.globl _RS1
                             21 	.globl _RS0
                             22 	.globl _OV
                             23 	.globl _F1
                             24 	.globl _P
                             25 	.globl _PS
                             26 	.globl _PT1
                             27 	.globl _PX1
                             28 	.globl _PT0
                             29 	.globl _PX0
                             30 	.globl _RD
                             31 	.globl _WR
                             32 	.globl _T1
                             33 	.globl _T0
                             34 	.globl _INT1
                             35 	.globl _INT0
                             36 	.globl _TXD
                             37 	.globl _RXD
                             38 	.globl _P3_7
                             39 	.globl _P3_6
                             40 	.globl _P3_5
                             41 	.globl _P3_4
                             42 	.globl _P3_3
                             43 	.globl _P3_2
                             44 	.globl _P3_1
                             45 	.globl _P3_0
                             46 	.globl _EA
                             47 	.globl _ES
                             48 	.globl _ET1
                             49 	.globl _EX1
                             50 	.globl _ET0
                             51 	.globl _EX0
                             52 	.globl _P2_7
                             53 	.globl _P2_6
                             54 	.globl _P2_5
                             55 	.globl _P2_4
                             56 	.globl _P2_3
                             57 	.globl _P2_2
                             58 	.globl _P2_1
                             59 	.globl _P2_0
                             60 	.globl _SM0
                             61 	.globl _SM1
                             62 	.globl _SM2
                             63 	.globl _REN
                             64 	.globl _TB8
                             65 	.globl _RB8
                             66 	.globl _TI
                             67 	.globl _RI
                             68 	.globl _P1_7
                             69 	.globl _P1_6
                             70 	.globl _P1_5
                             71 	.globl _P1_4
                             72 	.globl _P1_3
                             73 	.globl _P1_2
                             74 	.globl _P1_1
                             75 	.globl _P1_0
                             76 	.globl _TF1
                             77 	.globl _TR1
                             78 	.globl _TF0
                             79 	.globl _TR0
                             80 	.globl _IE1
                             81 	.globl _IT1
                             82 	.globl _IE0
                             83 	.globl _IT0
                             84 	.globl _P0_7
                             85 	.globl _P0_6
                             86 	.globl _P0_5
                             87 	.globl _P0_4
                             88 	.globl _P0_3
                             89 	.globl _P0_2
                             90 	.globl _P0_1
                             91 	.globl _P0_0
                             92 	.globl _B
                             93 	.globl _ACC
                             94 	.globl _PSW
                             95 	.globl _IP
                             96 	.globl _P3
                             97 	.globl _IE
                             98 	.globl _P2
                             99 	.globl _SBUF
                            100 	.globl _SCON
                            101 	.globl _P1
                            102 	.globl _TH1
                            103 	.globl _TH0
                            104 	.globl _TL1
                            105 	.globl _TL0
                            106 	.globl _TMOD
                            107 	.globl _TCON
                            108 	.globl _PCON
                            109 	.globl _DPH
                            110 	.globl _DPL
                            111 	.globl _SP
                            112 	.globl _P0
                            113 	.globl _b
                            114 	.globl _a
                            115 	.globl _m
                            116 	.globl _shared_m
                            117 	.globl _shared_b
                            118 	.globl _shared_a
                            119 	.globl _r
                            120 	.globl _i
                            121 ;--------------------------------------------------------
                            122 ; special function registers
                            123 ;--------------------------------------------------------
                            124 	.area RSEG    (DATA)
                    0080    125 _P0	=	0x0080
                    0081    126 _SP	=	0x0081
                    0082    127 _DPL	=	0x0082
                    0083    128 _DPH	=	0x0083
                    0087    129 _PCON	=	0x0087
                    0088    130 _TCON	=	0x0088
                    0089    131 _TMOD	=	0x0089
                    008A    132 _TL0	=	0x008a
                    008B    133 _TL1	=	0x008b
                    008C    134 _TH0	=	0x008c
                    008D    135 _TH1	=	0x008d
                    0090    136 _P1	=	0x0090
                    0098    137 _SCON	=	0x0098
                    0099    138 _SBUF	=	0x0099
                    00A0    139 _P2	=	0x00a0
                    00A8    140 _IE	=	0x00a8
                    00B0    141 _P3	=	0x00b0
                    00B8    142 _IP	=	0x00b8
                    00D0    143 _PSW	=	0x00d0
                    00E0    144 _ACC	=	0x00e0
                    00F0    145 _B	=	0x00f0
                            146 ;--------------------------------------------------------
                            147 ; special function bits
                            148 ;--------------------------------------------------------
                            149 	.area RSEG    (DATA)
                    0080    150 _P0_0	=	0x0080
                    0081    151 _P0_1	=	0x0081
                    0082    152 _P0_2	=	0x0082
                    0083    153 _P0_3	=	0x0083
                    0084    154 _P0_4	=	0x0084
                    0085    155 _P0_5	=	0x0085
                    0086    156 _P0_6	=	0x0086
                    0087    157 _P0_7	=	0x0087
                    0088    158 _IT0	=	0x0088
                    0089    159 _IE0	=	0x0089
                    008A    160 _IT1	=	0x008a
                    008B    161 _IE1	=	0x008b
                    008C    162 _TR0	=	0x008c
                    008D    163 _TF0	=	0x008d
                    008E    164 _TR1	=	0x008e
                    008F    165 _TF1	=	0x008f
                    0090    166 _P1_0	=	0x0090
                    0091    167 _P1_1	=	0x0091
                    0092    168 _P1_2	=	0x0092
                    0093    169 _P1_3	=	0x0093
                    0094    170 _P1_4	=	0x0094
                    0095    171 _P1_5	=	0x0095
                    0096    172 _P1_6	=	0x0096
                    0097    173 _P1_7	=	0x0097
                    0098    174 _RI	=	0x0098
                    0099    175 _TI	=	0x0099
                    009A    176 _RB8	=	0x009a
                    009B    177 _TB8	=	0x009b
                    009C    178 _REN	=	0x009c
                    009D    179 _SM2	=	0x009d
                    009E    180 _SM1	=	0x009e
                    009F    181 _SM0	=	0x009f
                    00A0    182 _P2_0	=	0x00a0
                    00A1    183 _P2_1	=	0x00a1
                    00A2    184 _P2_2	=	0x00a2
                    00A3    185 _P2_3	=	0x00a3
                    00A4    186 _P2_4	=	0x00a4
                    00A5    187 _P2_5	=	0x00a5
                    00A6    188 _P2_6	=	0x00a6
                    00A7    189 _P2_7	=	0x00a7
                    00A8    190 _EX0	=	0x00a8
                    00A9    191 _ET0	=	0x00a9
                    00AA    192 _EX1	=	0x00aa
                    00AB    193 _ET1	=	0x00ab
                    00AC    194 _ES	=	0x00ac
                    00AF    195 _EA	=	0x00af
                    00B0    196 _P3_0	=	0x00b0
                    00B1    197 _P3_1	=	0x00b1
                    00B2    198 _P3_2	=	0x00b2
                    00B3    199 _P3_3	=	0x00b3
                    00B4    200 _P3_4	=	0x00b4
                    00B5    201 _P3_5	=	0x00b5
                    00B6    202 _P3_6	=	0x00b6
                    00B7    203 _P3_7	=	0x00b7
                    00B0    204 _RXD	=	0x00b0
                    00B1    205 _TXD	=	0x00b1
                    00B2    206 _INT0	=	0x00b2
                    00B3    207 _INT1	=	0x00b3
                    00B4    208 _T0	=	0x00b4
                    00B5    209 _T1	=	0x00b5
                    00B6    210 _WR	=	0x00b6
                    00B7    211 _RD	=	0x00b7
                    00B8    212 _PX0	=	0x00b8
                    00B9    213 _PT0	=	0x00b9
                    00BA    214 _PX1	=	0x00ba
                    00BB    215 _PT1	=	0x00bb
                    00BC    216 _PS	=	0x00bc
                    00D0    217 _P	=	0x00d0
                    00D1    218 _F1	=	0x00d1
                    00D2    219 _OV	=	0x00d2
                    00D3    220 _RS0	=	0x00d3
                    00D4    221 _RS1	=	0x00d4
                    00D5    222 _F0	=	0x00d5
                    00D6    223 _AC	=	0x00d6
                    00D7    224 _CY	=	0x00d7
                            225 ;--------------------------------------------------------
                            226 ; overlayable register banks
                            227 ;--------------------------------------------------------
                            228 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     229 	.ds 8
                            230 ;--------------------------------------------------------
                            231 ; internal ram data
                            232 ;--------------------------------------------------------
                            233 	.area DSEG    (DATA)
   0008                     234 _i::
   0008                     235 	.ds 2
                            236 ;--------------------------------------------------------
                            237 ; overlayable items in internal ram 
                            238 ;--------------------------------------------------------
                            239 	.area OSEG    (OVR,DATA)
                            240 ;--------------------------------------------------------
                            241 ; Stack segment in internal ram 
                            242 ;--------------------------------------------------------
                            243 	.area	SSEG	(DATA)
   000A                     244 __start__stack:
   000A                     245 	.ds	1
                            246 
                            247 ;--------------------------------------------------------
                            248 ; indirectly addressable internal ram data
                            249 ;--------------------------------------------------------
                            250 	.area ISEG    (DATA)
                            251 ;--------------------------------------------------------
                            252 ; absolute internal ram data
                            253 ;--------------------------------------------------------
                            254 	.area IABS    (ABS,DATA)
                            255 	.area IABS    (ABS,DATA)
                            256 ;--------------------------------------------------------
                            257 ; bit data
                            258 ;--------------------------------------------------------
                            259 	.area BSEG    (BIT)
                            260 ;--------------------------------------------------------
                            261 ; paged external ram data
                            262 ;--------------------------------------------------------
                            263 	.area PSEG    (PAG,XDATA)
                            264 ;--------------------------------------------------------
                            265 ; external ram data
                            266 ;--------------------------------------------------------
                            267 	.area XSEG    (XDATA)
                    0200    268 _r	=	0x0200
                    4000    269 _shared_a	=	0x4000
                    4080    270 _shared_b	=	0x4080
                    4100    271 _shared_m	=	0x4100
                            272 ;--------------------------------------------------------
                            273 ; absolute external ram data
                            274 ;--------------------------------------------------------
                            275 	.area XABS    (ABS,XDATA)
   0000                     276 	.org 0x0000
   0000                     277 _m::
   0000                     278 	.ds 128
   0080                     279 	.org 0x0080
   0080                     280 _a::
   0080                     281 	.ds 128
   0100                     282 	.org 0x0100
   0100                     283 _b::
   0100                     284 	.ds 128
                            285 ;--------------------------------------------------------
                            286 ; external initialized ram data
                            287 ;--------------------------------------------------------
                            288 	.area XISEG   (XDATA)
                            289 	.area HOME    (CODE)
                            290 	.area GSINIT0 (CODE)
                            291 	.area GSINIT1 (CODE)
                            292 	.area GSINIT2 (CODE)
                            293 	.area GSINIT3 (CODE)
                            294 	.area GSINIT4 (CODE)
                            295 	.area GSINIT5 (CODE)
                            296 	.area GSINIT  (CODE)
                            297 	.area GSFINAL (CODE)
                            298 	.area CSEG    (CODE)
                            299 ;--------------------------------------------------------
                            300 ; interrupt vector 
                            301 ;--------------------------------------------------------
                            302 	.area HOME    (CODE)
   0000                     303 __interrupt_vect:
   0000 02 00 08            304 	ljmp	__sdcc_gsinit_startup
                            305 ;--------------------------------------------------------
                            306 ; global & static initialisations
                            307 ;--------------------------------------------------------
                            308 	.area HOME    (CODE)
                            309 	.area GSINIT  (CODE)
                            310 	.area GSFINAL (CODE)
                            311 	.area GSINIT  (CODE)
                            312 	.globl __sdcc_gsinit_startup
                            313 	.globl __sdcc_program_startup
                            314 	.globl __start__stack
                            315 	.globl __mcs51_genXINIT
                            316 	.globl __mcs51_genXRAMCLEAR
                            317 	.globl __mcs51_genRAMCLEAR
                            318 ;	main.c:13: volatile __xdata __at (0x0000) unsigned char m[SIZE] = {0x5D,0xEF,0x94,0x7C,0x83,0xBF,0x40,0x4D,0xAB,0xD7,0xDF,0xB2,0x4D,0x2B,0x07,0x59,0x1A,0x48,0xAE,0x45,0x17,0x2E,0x6A,0x65,0x01,0x54,0xF5,0xB7,0xDC,0x5D,0x8F,0x4C,0x33,0x84,0x70,0xBB,0x0B,0xA4,0xAC,0x87,0x82,0x1D,0x0D,0x50,0x2D,0x45,0xF9,0xF0,0x11,0x5B,0xC8,0xF9,0x18,0xFB,0xD3,0x6F,0xC3,0x74,0x02,0xAB,0x32,0x46,0x6B,0x52,0x9B,0x71,0xD9,0x21,0x73,0x3A,0xCC,0x6D,0xDB,0x10,0x89,0xCB,0x3B,0x47,0x13,0x0E,0x65,0x86,0x9E,0x7F,0x3E,0x43,0x92,0xFC,0xB6,0x6A,0x6B,0x37,0x90,0xEB,0x4F,0xE9,0xEB,0x9C,0x2F,0x6B,0x26,0xEF,0xB4,0xBB,0xFC,0x3D,0x33,0xFB,0x97,0x67,0x93,0x26,0x96,0x38,0xE5,0xF0,0x3A,0xC6,0xA3,0x95,0xA5,0x98,0xF4,0xB8,0x0B,0x88,0xE1,0xD4};
   0061 90 00 00            319 	mov	dptr,#_m
   0064 74 5D               320 	mov	a,#0x5D
   0066 F0                  321 	movx	@dptr,a
   0067 90 00 01            322 	mov	dptr,#(_m + 0x0001)
   006A 74 EF               323 	mov	a,#0xEF
   006C F0                  324 	movx	@dptr,a
   006D 90 00 02            325 	mov	dptr,#(_m + 0x0002)
   0070 74 94               326 	mov	a,#0x94
   0072 F0                  327 	movx	@dptr,a
   0073 90 00 03            328 	mov	dptr,#(_m + 0x0003)
   0076 74 7C               329 	mov	a,#0x7C
   0078 F0                  330 	movx	@dptr,a
   0079 90 00 04            331 	mov	dptr,#(_m + 0x0004)
   007C 74 83               332 	mov	a,#0x83
   007E F0                  333 	movx	@dptr,a
   007F 90 00 05            334 	mov	dptr,#(_m + 0x0005)
   0082 74 BF               335 	mov	a,#0xBF
   0084 F0                  336 	movx	@dptr,a
   0085 90 00 06            337 	mov	dptr,#(_m + 0x0006)
   0088 74 40               338 	mov	a,#0x40
   008A F0                  339 	movx	@dptr,a
   008B 90 00 07            340 	mov	dptr,#(_m + 0x0007)
   008E 74 4D               341 	mov	a,#0x4D
   0090 F0                  342 	movx	@dptr,a
   0091 90 00 08            343 	mov	dptr,#(_m + 0x0008)
   0094 74 AB               344 	mov	a,#0xAB
   0096 F0                  345 	movx	@dptr,a
   0097 90 00 09            346 	mov	dptr,#(_m + 0x0009)
   009A 74 D7               347 	mov	a,#0xD7
   009C F0                  348 	movx	@dptr,a
   009D 90 00 0A            349 	mov	dptr,#(_m + 0x000a)
   00A0 74 DF               350 	mov	a,#0xDF
   00A2 F0                  351 	movx	@dptr,a
   00A3 90 00 0B            352 	mov	dptr,#(_m + 0x000b)
   00A6 74 B2               353 	mov	a,#0xB2
   00A8 F0                  354 	movx	@dptr,a
   00A9 90 00 0C            355 	mov	dptr,#(_m + 0x000c)
   00AC 74 4D               356 	mov	a,#0x4D
   00AE F0                  357 	movx	@dptr,a
   00AF 90 00 0D            358 	mov	dptr,#(_m + 0x000d)
   00B2 74 2B               359 	mov	a,#0x2B
   00B4 F0                  360 	movx	@dptr,a
   00B5 90 00 0E            361 	mov	dptr,#(_m + 0x000e)
   00B8 74 07               362 	mov	a,#0x07
   00BA F0                  363 	movx	@dptr,a
   00BB 90 00 0F            364 	mov	dptr,#(_m + 0x000f)
   00BE 74 59               365 	mov	a,#0x59
   00C0 F0                  366 	movx	@dptr,a
   00C1 90 00 10            367 	mov	dptr,#(_m + 0x0010)
   00C4 74 1A               368 	mov	a,#0x1A
   00C6 F0                  369 	movx	@dptr,a
   00C7 90 00 11            370 	mov	dptr,#(_m + 0x0011)
   00CA 74 48               371 	mov	a,#0x48
   00CC F0                  372 	movx	@dptr,a
   00CD 90 00 12            373 	mov	dptr,#(_m + 0x0012)
   00D0 74 AE               374 	mov	a,#0xAE
   00D2 F0                  375 	movx	@dptr,a
   00D3 90 00 13            376 	mov	dptr,#(_m + 0x0013)
   00D6 74 45               377 	mov	a,#0x45
   00D8 F0                  378 	movx	@dptr,a
   00D9 90 00 14            379 	mov	dptr,#(_m + 0x0014)
   00DC 74 17               380 	mov	a,#0x17
   00DE F0                  381 	movx	@dptr,a
   00DF 90 00 15            382 	mov	dptr,#(_m + 0x0015)
   00E2 74 2E               383 	mov	a,#0x2E
   00E4 F0                  384 	movx	@dptr,a
   00E5 90 00 16            385 	mov	dptr,#(_m + 0x0016)
   00E8 74 6A               386 	mov	a,#0x6A
   00EA F0                  387 	movx	@dptr,a
   00EB 90 00 17            388 	mov	dptr,#(_m + 0x0017)
   00EE 74 65               389 	mov	a,#0x65
   00F0 F0                  390 	movx	@dptr,a
   00F1 90 00 18            391 	mov	dptr,#(_m + 0x0018)
   00F4 74 01               392 	mov	a,#0x01
   00F6 F0                  393 	movx	@dptr,a
   00F7 90 00 19            394 	mov	dptr,#(_m + 0x0019)
   00FA 74 54               395 	mov	a,#0x54
   00FC F0                  396 	movx	@dptr,a
   00FD 90 00 1A            397 	mov	dptr,#(_m + 0x001a)
   0100 74 F5               398 	mov	a,#0xF5
   0102 F0                  399 	movx	@dptr,a
   0103 90 00 1B            400 	mov	dptr,#(_m + 0x001b)
   0106 74 B7               401 	mov	a,#0xB7
   0108 F0                  402 	movx	@dptr,a
   0109 90 00 1C            403 	mov	dptr,#(_m + 0x001c)
   010C 74 DC               404 	mov	a,#0xDC
   010E F0                  405 	movx	@dptr,a
   010F 90 00 1D            406 	mov	dptr,#(_m + 0x001d)
   0112 74 5D               407 	mov	a,#0x5D
   0114 F0                  408 	movx	@dptr,a
   0115 90 00 1E            409 	mov	dptr,#(_m + 0x001e)
   0118 74 8F               410 	mov	a,#0x8F
   011A F0                  411 	movx	@dptr,a
   011B 90 00 1F            412 	mov	dptr,#(_m + 0x001f)
   011E 74 4C               413 	mov	a,#0x4C
   0120 F0                  414 	movx	@dptr,a
   0121 90 00 20            415 	mov	dptr,#(_m + 0x0020)
   0124 74 33               416 	mov	a,#0x33
   0126 F0                  417 	movx	@dptr,a
   0127 90 00 21            418 	mov	dptr,#(_m + 0x0021)
   012A 74 84               419 	mov	a,#0x84
   012C F0                  420 	movx	@dptr,a
   012D 90 00 22            421 	mov	dptr,#(_m + 0x0022)
   0130 74 70               422 	mov	a,#0x70
   0132 F0                  423 	movx	@dptr,a
   0133 90 00 23            424 	mov	dptr,#(_m + 0x0023)
   0136 74 BB               425 	mov	a,#0xBB
   0138 F0                  426 	movx	@dptr,a
   0139 90 00 24            427 	mov	dptr,#(_m + 0x0024)
   013C 74 0B               428 	mov	a,#0x0B
   013E F0                  429 	movx	@dptr,a
   013F 90 00 25            430 	mov	dptr,#(_m + 0x0025)
   0142 74 A4               431 	mov	a,#0xA4
   0144 F0                  432 	movx	@dptr,a
   0145 90 00 26            433 	mov	dptr,#(_m + 0x0026)
   0148 74 AC               434 	mov	a,#0xAC
   014A F0                  435 	movx	@dptr,a
   014B 90 00 27            436 	mov	dptr,#(_m + 0x0027)
   014E 74 87               437 	mov	a,#0x87
   0150 F0                  438 	movx	@dptr,a
   0151 90 00 28            439 	mov	dptr,#(_m + 0x0028)
   0154 74 82               440 	mov	a,#0x82
   0156 F0                  441 	movx	@dptr,a
   0157 90 00 29            442 	mov	dptr,#(_m + 0x0029)
   015A 74 1D               443 	mov	a,#0x1D
   015C F0                  444 	movx	@dptr,a
   015D 90 00 2A            445 	mov	dptr,#(_m + 0x002a)
   0160 74 0D               446 	mov	a,#0x0D
   0162 F0                  447 	movx	@dptr,a
   0163 90 00 2B            448 	mov	dptr,#(_m + 0x002b)
   0166 74 50               449 	mov	a,#0x50
   0168 F0                  450 	movx	@dptr,a
   0169 90 00 2C            451 	mov	dptr,#(_m + 0x002c)
   016C 74 2D               452 	mov	a,#0x2D
   016E F0                  453 	movx	@dptr,a
   016F 90 00 2D            454 	mov	dptr,#(_m + 0x002d)
   0172 74 45               455 	mov	a,#0x45
   0174 F0                  456 	movx	@dptr,a
   0175 90 00 2E            457 	mov	dptr,#(_m + 0x002e)
   0178 74 F9               458 	mov	a,#0xF9
   017A F0                  459 	movx	@dptr,a
   017B 90 00 2F            460 	mov	dptr,#(_m + 0x002f)
   017E 74 F0               461 	mov	a,#0xF0
   0180 F0                  462 	movx	@dptr,a
   0181 90 00 30            463 	mov	dptr,#(_m + 0x0030)
   0184 74 11               464 	mov	a,#0x11
   0186 F0                  465 	movx	@dptr,a
   0187 90 00 31            466 	mov	dptr,#(_m + 0x0031)
   018A 74 5B               467 	mov	a,#0x5B
   018C F0                  468 	movx	@dptr,a
   018D 90 00 32            469 	mov	dptr,#(_m + 0x0032)
   0190 74 C8               470 	mov	a,#0xC8
   0192 F0                  471 	movx	@dptr,a
   0193 90 00 33            472 	mov	dptr,#(_m + 0x0033)
   0196 74 F9               473 	mov	a,#0xF9
   0198 F0                  474 	movx	@dptr,a
   0199 90 00 34            475 	mov	dptr,#(_m + 0x0034)
   019C 74 18               476 	mov	a,#0x18
   019E F0                  477 	movx	@dptr,a
   019F 90 00 35            478 	mov	dptr,#(_m + 0x0035)
   01A2 74 FB               479 	mov	a,#0xFB
   01A4 F0                  480 	movx	@dptr,a
   01A5 90 00 36            481 	mov	dptr,#(_m + 0x0036)
   01A8 74 D3               482 	mov	a,#0xD3
   01AA F0                  483 	movx	@dptr,a
   01AB 90 00 37            484 	mov	dptr,#(_m + 0x0037)
   01AE 74 6F               485 	mov	a,#0x6F
   01B0 F0                  486 	movx	@dptr,a
   01B1 90 00 38            487 	mov	dptr,#(_m + 0x0038)
   01B4 74 C3               488 	mov	a,#0xC3
   01B6 F0                  489 	movx	@dptr,a
   01B7 90 00 39            490 	mov	dptr,#(_m + 0x0039)
   01BA 74 74               491 	mov	a,#0x74
   01BC F0                  492 	movx	@dptr,a
   01BD 90 00 3A            493 	mov	dptr,#(_m + 0x003a)
   01C0 74 02               494 	mov	a,#0x02
   01C2 F0                  495 	movx	@dptr,a
   01C3 90 00 3B            496 	mov	dptr,#(_m + 0x003b)
   01C6 74 AB               497 	mov	a,#0xAB
   01C8 F0                  498 	movx	@dptr,a
   01C9 90 00 3C            499 	mov	dptr,#(_m + 0x003c)
   01CC 74 32               500 	mov	a,#0x32
   01CE F0                  501 	movx	@dptr,a
   01CF 90 00 3D            502 	mov	dptr,#(_m + 0x003d)
   01D2 74 46               503 	mov	a,#0x46
   01D4 F0                  504 	movx	@dptr,a
   01D5 90 00 3E            505 	mov	dptr,#(_m + 0x003e)
   01D8 74 6B               506 	mov	a,#0x6B
   01DA F0                  507 	movx	@dptr,a
   01DB 90 00 3F            508 	mov	dptr,#(_m + 0x003f)
   01DE 74 52               509 	mov	a,#0x52
   01E0 F0                  510 	movx	@dptr,a
   01E1 90 00 40            511 	mov	dptr,#(_m + 0x0040)
   01E4 74 9B               512 	mov	a,#0x9B
   01E6 F0                  513 	movx	@dptr,a
   01E7 90 00 41            514 	mov	dptr,#(_m + 0x0041)
   01EA 74 71               515 	mov	a,#0x71
   01EC F0                  516 	movx	@dptr,a
   01ED 90 00 42            517 	mov	dptr,#(_m + 0x0042)
   01F0 74 D9               518 	mov	a,#0xD9
   01F2 F0                  519 	movx	@dptr,a
   01F3 90 00 43            520 	mov	dptr,#(_m + 0x0043)
   01F6 74 21               521 	mov	a,#0x21
   01F8 F0                  522 	movx	@dptr,a
   01F9 90 00 44            523 	mov	dptr,#(_m + 0x0044)
   01FC 74 73               524 	mov	a,#0x73
   01FE F0                  525 	movx	@dptr,a
   01FF 90 00 45            526 	mov	dptr,#(_m + 0x0045)
   0202 74 3A               527 	mov	a,#0x3A
   0204 F0                  528 	movx	@dptr,a
   0205 90 00 46            529 	mov	dptr,#(_m + 0x0046)
   0208 74 CC               530 	mov	a,#0xCC
   020A F0                  531 	movx	@dptr,a
   020B 90 00 47            532 	mov	dptr,#(_m + 0x0047)
   020E 74 6D               533 	mov	a,#0x6D
   0210 F0                  534 	movx	@dptr,a
   0211 90 00 48            535 	mov	dptr,#(_m + 0x0048)
   0214 74 DB               536 	mov	a,#0xDB
   0216 F0                  537 	movx	@dptr,a
   0217 90 00 49            538 	mov	dptr,#(_m + 0x0049)
   021A 74 10               539 	mov	a,#0x10
   021C F0                  540 	movx	@dptr,a
   021D 90 00 4A            541 	mov	dptr,#(_m + 0x004a)
   0220 74 89               542 	mov	a,#0x89
   0222 F0                  543 	movx	@dptr,a
   0223 90 00 4B            544 	mov	dptr,#(_m + 0x004b)
   0226 74 CB               545 	mov	a,#0xCB
   0228 F0                  546 	movx	@dptr,a
   0229 90 00 4C            547 	mov	dptr,#(_m + 0x004c)
   022C 74 3B               548 	mov	a,#0x3B
   022E F0                  549 	movx	@dptr,a
   022F 90 00 4D            550 	mov	dptr,#(_m + 0x004d)
   0232 74 47               551 	mov	a,#0x47
   0234 F0                  552 	movx	@dptr,a
   0235 90 00 4E            553 	mov	dptr,#(_m + 0x004e)
   0238 74 13               554 	mov	a,#0x13
   023A F0                  555 	movx	@dptr,a
   023B 90 00 4F            556 	mov	dptr,#(_m + 0x004f)
   023E 74 0E               557 	mov	a,#0x0E
   0240 F0                  558 	movx	@dptr,a
   0241 90 00 50            559 	mov	dptr,#(_m + 0x0050)
   0244 74 65               560 	mov	a,#0x65
   0246 F0                  561 	movx	@dptr,a
   0247 90 00 51            562 	mov	dptr,#(_m + 0x0051)
   024A 74 86               563 	mov	a,#0x86
   024C F0                  564 	movx	@dptr,a
   024D 90 00 52            565 	mov	dptr,#(_m + 0x0052)
   0250 74 9E               566 	mov	a,#0x9E
   0252 F0                  567 	movx	@dptr,a
   0253 90 00 53            568 	mov	dptr,#(_m + 0x0053)
   0256 74 7F               569 	mov	a,#0x7F
   0258 F0                  570 	movx	@dptr,a
   0259 90 00 54            571 	mov	dptr,#(_m + 0x0054)
   025C 74 3E               572 	mov	a,#0x3E
   025E F0                  573 	movx	@dptr,a
   025F 90 00 55            574 	mov	dptr,#(_m + 0x0055)
   0262 74 43               575 	mov	a,#0x43
   0264 F0                  576 	movx	@dptr,a
   0265 90 00 56            577 	mov	dptr,#(_m + 0x0056)
   0268 74 92               578 	mov	a,#0x92
   026A F0                  579 	movx	@dptr,a
   026B 90 00 57            580 	mov	dptr,#(_m + 0x0057)
   026E 74 FC               581 	mov	a,#0xFC
   0270 F0                  582 	movx	@dptr,a
   0271 90 00 58            583 	mov	dptr,#(_m + 0x0058)
   0274 74 B6               584 	mov	a,#0xB6
   0276 F0                  585 	movx	@dptr,a
   0277 90 00 59            586 	mov	dptr,#(_m + 0x0059)
   027A 74 6A               587 	mov	a,#0x6A
   027C F0                  588 	movx	@dptr,a
   027D 90 00 5A            589 	mov	dptr,#(_m + 0x005a)
   0280 74 6B               590 	mov	a,#0x6B
   0282 F0                  591 	movx	@dptr,a
   0283 90 00 5B            592 	mov	dptr,#(_m + 0x005b)
   0286 74 37               593 	mov	a,#0x37
   0288 F0                  594 	movx	@dptr,a
   0289 90 00 5C            595 	mov	dptr,#(_m + 0x005c)
   028C 74 90               596 	mov	a,#0x90
   028E F0                  597 	movx	@dptr,a
   028F 90 00 5D            598 	mov	dptr,#(_m + 0x005d)
   0292 74 EB               599 	mov	a,#0xEB
   0294 F0                  600 	movx	@dptr,a
   0295 90 00 5E            601 	mov	dptr,#(_m + 0x005e)
   0298 74 4F               602 	mov	a,#0x4F
   029A F0                  603 	movx	@dptr,a
   029B 90 00 5F            604 	mov	dptr,#(_m + 0x005f)
   029E 74 E9               605 	mov	a,#0xE9
   02A0 F0                  606 	movx	@dptr,a
   02A1 90 00 60            607 	mov	dptr,#(_m + 0x0060)
   02A4 74 EB               608 	mov	a,#0xEB
   02A6 F0                  609 	movx	@dptr,a
   02A7 90 00 61            610 	mov	dptr,#(_m + 0x0061)
   02AA 74 9C               611 	mov	a,#0x9C
   02AC F0                  612 	movx	@dptr,a
   02AD 90 00 62            613 	mov	dptr,#(_m + 0x0062)
   02B0 74 2F               614 	mov	a,#0x2F
   02B2 F0                  615 	movx	@dptr,a
   02B3 90 00 63            616 	mov	dptr,#(_m + 0x0063)
   02B6 74 6B               617 	mov	a,#0x6B
   02B8 F0                  618 	movx	@dptr,a
   02B9 90 00 64            619 	mov	dptr,#(_m + 0x0064)
   02BC 74 26               620 	mov	a,#0x26
   02BE F0                  621 	movx	@dptr,a
   02BF 90 00 65            622 	mov	dptr,#(_m + 0x0065)
   02C2 74 EF               623 	mov	a,#0xEF
   02C4 F0                  624 	movx	@dptr,a
   02C5 90 00 66            625 	mov	dptr,#(_m + 0x0066)
   02C8 74 B4               626 	mov	a,#0xB4
   02CA F0                  627 	movx	@dptr,a
   02CB 90 00 67            628 	mov	dptr,#(_m + 0x0067)
   02CE 74 BB               629 	mov	a,#0xBB
   02D0 F0                  630 	movx	@dptr,a
   02D1 90 00 68            631 	mov	dptr,#(_m + 0x0068)
   02D4 74 FC               632 	mov	a,#0xFC
   02D6 F0                  633 	movx	@dptr,a
   02D7 90 00 69            634 	mov	dptr,#(_m + 0x0069)
   02DA 74 3D               635 	mov	a,#0x3D
   02DC F0                  636 	movx	@dptr,a
   02DD 90 00 6A            637 	mov	dptr,#(_m + 0x006a)
   02E0 74 33               638 	mov	a,#0x33
   02E2 F0                  639 	movx	@dptr,a
   02E3 90 00 6B            640 	mov	dptr,#(_m + 0x006b)
   02E6 74 FB               641 	mov	a,#0xFB
   02E8 F0                  642 	movx	@dptr,a
   02E9 90 00 6C            643 	mov	dptr,#(_m + 0x006c)
   02EC 74 97               644 	mov	a,#0x97
   02EE F0                  645 	movx	@dptr,a
   02EF 90 00 6D            646 	mov	dptr,#(_m + 0x006d)
   02F2 74 67               647 	mov	a,#0x67
   02F4 F0                  648 	movx	@dptr,a
   02F5 90 00 6E            649 	mov	dptr,#(_m + 0x006e)
   02F8 74 93               650 	mov	a,#0x93
   02FA F0                  651 	movx	@dptr,a
   02FB 90 00 6F            652 	mov	dptr,#(_m + 0x006f)
   02FE 74 26               653 	mov	a,#0x26
   0300 F0                  654 	movx	@dptr,a
   0301 90 00 70            655 	mov	dptr,#(_m + 0x0070)
   0304 74 96               656 	mov	a,#0x96
   0306 F0                  657 	movx	@dptr,a
   0307 90 00 71            658 	mov	dptr,#(_m + 0x0071)
   030A 74 38               659 	mov	a,#0x38
   030C F0                  660 	movx	@dptr,a
   030D 90 00 72            661 	mov	dptr,#(_m + 0x0072)
   0310 74 E5               662 	mov	a,#0xE5
   0312 F0                  663 	movx	@dptr,a
   0313 90 00 73            664 	mov	dptr,#(_m + 0x0073)
   0316 74 F0               665 	mov	a,#0xF0
   0318 F0                  666 	movx	@dptr,a
   0319 90 00 74            667 	mov	dptr,#(_m + 0x0074)
   031C 74 3A               668 	mov	a,#0x3A
   031E F0                  669 	movx	@dptr,a
   031F 90 00 75            670 	mov	dptr,#(_m + 0x0075)
   0322 74 C6               671 	mov	a,#0xC6
   0324 F0                  672 	movx	@dptr,a
   0325 90 00 76            673 	mov	dptr,#(_m + 0x0076)
   0328 74 A3               674 	mov	a,#0xA3
   032A F0                  675 	movx	@dptr,a
   032B 90 00 77            676 	mov	dptr,#(_m + 0x0077)
   032E 74 95               677 	mov	a,#0x95
   0330 F0                  678 	movx	@dptr,a
   0331 90 00 78            679 	mov	dptr,#(_m + 0x0078)
   0334 74 A5               680 	mov	a,#0xA5
   0336 F0                  681 	movx	@dptr,a
   0337 90 00 79            682 	mov	dptr,#(_m + 0x0079)
   033A 74 98               683 	mov	a,#0x98
   033C F0                  684 	movx	@dptr,a
   033D 90 00 7A            685 	mov	dptr,#(_m + 0x007a)
   0340 74 F4               686 	mov	a,#0xF4
   0342 F0                  687 	movx	@dptr,a
   0343 90 00 7B            688 	mov	dptr,#(_m + 0x007b)
   0346 74 B8               689 	mov	a,#0xB8
   0348 F0                  690 	movx	@dptr,a
   0349 90 00 7C            691 	mov	dptr,#(_m + 0x007c)
   034C 74 0B               692 	mov	a,#0x0B
   034E F0                  693 	movx	@dptr,a
   034F 90 00 7D            694 	mov	dptr,#(_m + 0x007d)
   0352 74 88               695 	mov	a,#0x88
   0354 F0                  696 	movx	@dptr,a
   0355 90 00 7E            697 	mov	dptr,#(_m + 0x007e)
   0358 74 E1               698 	mov	a,#0xE1
   035A F0                  699 	movx	@dptr,a
   035B 90 00 7F            700 	mov	dptr,#(_m + 0x007f)
   035E 74 D4               701 	mov	a,#0xD4
   0360 F0                  702 	movx	@dptr,a
                            703 ;	main.c:14: volatile __xdata __at (0x0080) unsigned char a[SIZE]   = {0xA3,0x10,0x6B,0x83,0x7C,0x40,0xBF,0xB2,0x54,0x28,0x20,0x4D,0xB2,0xD4,0xF8,0xA6,0xE5,0xB7,0x51,0xBA,0xE8,0xD1,0x95,0x9A,0xFE,0xAB,0x0A,0x48,0x23,0xA2,0x70,0xB3,0xCC,0x7B,0x8F,0x44,0xF4,0x5B,0x53,0x78,0x7D,0xE2,0xF2,0xAF,0xD2,0xBA,0x06,0x0F,0xEE,0xA4,0x37,0x06,0xE7,0x04,0x2C,0x90,0x3C,0x8B,0xFD,0x54,0xCD,0xB9,0x94,0xAD,0x64,0x8E,0x26,0xDE,0x8C,0xC5,0x33,0x92,0x24,0xEF,0x76,0x34,0xC4,0xB8,0xEC,0xF1,0x9A,0x79,0x61,0x80,0xC1,0xBC,0x6D,0x03,0x49,0x95,0x94,0xC8,0x6F,0x14,0xB0,0x16,0x14,0x63,0xD0,0x94,0xD9,0x10,0x4B,0x44,0x03,0xC2,0xCC,0x04,0x68,0x98,0x6C,0xD9,0x69,0xC7,0x1A,0x0F,0xC5,0x39,0x5C,0x6A,0x5A,0x67,0x0B,0x47,0xF4,0x77,0x1E,0x2B};
   0361 90 00 80            704 	mov	dptr,#_a
   0364 74 A3               705 	mov	a,#0xA3
   0366 F0                  706 	movx	@dptr,a
   0367 90 00 81            707 	mov	dptr,#(_a + 0x0001)
   036A 74 10               708 	mov	a,#0x10
   036C F0                  709 	movx	@dptr,a
   036D 90 00 82            710 	mov	dptr,#(_a + 0x0002)
   0370 74 6B               711 	mov	a,#0x6B
   0372 F0                  712 	movx	@dptr,a
   0373 90 00 83            713 	mov	dptr,#(_a + 0x0003)
   0376 74 83               714 	mov	a,#0x83
   0378 F0                  715 	movx	@dptr,a
   0379 90 00 84            716 	mov	dptr,#(_a + 0x0004)
   037C 74 7C               717 	mov	a,#0x7C
   037E F0                  718 	movx	@dptr,a
   037F 90 00 85            719 	mov	dptr,#(_a + 0x0005)
   0382 74 40               720 	mov	a,#0x40
   0384 F0                  721 	movx	@dptr,a
   0385 90 00 86            722 	mov	dptr,#(_a + 0x0006)
   0388 74 BF               723 	mov	a,#0xBF
   038A F0                  724 	movx	@dptr,a
   038B 90 00 87            725 	mov	dptr,#(_a + 0x0007)
   038E 74 B2               726 	mov	a,#0xB2
   0390 F0                  727 	movx	@dptr,a
   0391 90 00 88            728 	mov	dptr,#(_a + 0x0008)
   0394 74 54               729 	mov	a,#0x54
   0396 F0                  730 	movx	@dptr,a
   0397 90 00 89            731 	mov	dptr,#(_a + 0x0009)
   039A 74 28               732 	mov	a,#0x28
   039C F0                  733 	movx	@dptr,a
   039D 90 00 8A            734 	mov	dptr,#(_a + 0x000a)
   03A0 74 20               735 	mov	a,#0x20
   03A2 F0                  736 	movx	@dptr,a
   03A3 90 00 8B            737 	mov	dptr,#(_a + 0x000b)
   03A6 74 4D               738 	mov	a,#0x4D
   03A8 F0                  739 	movx	@dptr,a
   03A9 90 00 8C            740 	mov	dptr,#(_a + 0x000c)
   03AC 74 B2               741 	mov	a,#0xB2
   03AE F0                  742 	movx	@dptr,a
   03AF 90 00 8D            743 	mov	dptr,#(_a + 0x000d)
   03B2 74 D4               744 	mov	a,#0xD4
   03B4 F0                  745 	movx	@dptr,a
   03B5 90 00 8E            746 	mov	dptr,#(_a + 0x000e)
   03B8 74 F8               747 	mov	a,#0xF8
   03BA F0                  748 	movx	@dptr,a
   03BB 90 00 8F            749 	mov	dptr,#(_a + 0x000f)
   03BE 74 A6               750 	mov	a,#0xA6
   03C0 F0                  751 	movx	@dptr,a
   03C1 90 00 90            752 	mov	dptr,#(_a + 0x0010)
   03C4 74 E5               753 	mov	a,#0xE5
   03C6 F0                  754 	movx	@dptr,a
   03C7 90 00 91            755 	mov	dptr,#(_a + 0x0011)
   03CA 74 B7               756 	mov	a,#0xB7
   03CC F0                  757 	movx	@dptr,a
   03CD 90 00 92            758 	mov	dptr,#(_a + 0x0012)
   03D0 74 51               759 	mov	a,#0x51
   03D2 F0                  760 	movx	@dptr,a
   03D3 90 00 93            761 	mov	dptr,#(_a + 0x0013)
   03D6 74 BA               762 	mov	a,#0xBA
   03D8 F0                  763 	movx	@dptr,a
   03D9 90 00 94            764 	mov	dptr,#(_a + 0x0014)
   03DC 74 E8               765 	mov	a,#0xE8
   03DE F0                  766 	movx	@dptr,a
   03DF 90 00 95            767 	mov	dptr,#(_a + 0x0015)
   03E2 74 D1               768 	mov	a,#0xD1
   03E4 F0                  769 	movx	@dptr,a
   03E5 90 00 96            770 	mov	dptr,#(_a + 0x0016)
   03E8 74 95               771 	mov	a,#0x95
   03EA F0                  772 	movx	@dptr,a
   03EB 90 00 97            773 	mov	dptr,#(_a + 0x0017)
   03EE 74 9A               774 	mov	a,#0x9A
   03F0 F0                  775 	movx	@dptr,a
   03F1 90 00 98            776 	mov	dptr,#(_a + 0x0018)
   03F4 74 FE               777 	mov	a,#0xFE
   03F6 F0                  778 	movx	@dptr,a
   03F7 90 00 99            779 	mov	dptr,#(_a + 0x0019)
   03FA 74 AB               780 	mov	a,#0xAB
   03FC F0                  781 	movx	@dptr,a
   03FD 90 00 9A            782 	mov	dptr,#(_a + 0x001a)
   0400 74 0A               783 	mov	a,#0x0A
   0402 F0                  784 	movx	@dptr,a
   0403 90 00 9B            785 	mov	dptr,#(_a + 0x001b)
   0406 74 48               786 	mov	a,#0x48
   0408 F0                  787 	movx	@dptr,a
   0409 90 00 9C            788 	mov	dptr,#(_a + 0x001c)
   040C 74 23               789 	mov	a,#0x23
   040E F0                  790 	movx	@dptr,a
   040F 90 00 9D            791 	mov	dptr,#(_a + 0x001d)
   0412 74 A2               792 	mov	a,#0xA2
   0414 F0                  793 	movx	@dptr,a
   0415 90 00 9E            794 	mov	dptr,#(_a + 0x001e)
   0418 74 70               795 	mov	a,#0x70
   041A F0                  796 	movx	@dptr,a
   041B 90 00 9F            797 	mov	dptr,#(_a + 0x001f)
   041E 74 B3               798 	mov	a,#0xB3
   0420 F0                  799 	movx	@dptr,a
   0421 90 00 A0            800 	mov	dptr,#(_a + 0x0020)
   0424 74 CC               801 	mov	a,#0xCC
   0426 F0                  802 	movx	@dptr,a
   0427 90 00 A1            803 	mov	dptr,#(_a + 0x0021)
   042A 74 7B               804 	mov	a,#0x7B
   042C F0                  805 	movx	@dptr,a
   042D 90 00 A2            806 	mov	dptr,#(_a + 0x0022)
   0430 74 8F               807 	mov	a,#0x8F
   0432 F0                  808 	movx	@dptr,a
   0433 90 00 A3            809 	mov	dptr,#(_a + 0x0023)
   0436 74 44               810 	mov	a,#0x44
   0438 F0                  811 	movx	@dptr,a
   0439 90 00 A4            812 	mov	dptr,#(_a + 0x0024)
   043C 74 F4               813 	mov	a,#0xF4
   043E F0                  814 	movx	@dptr,a
   043F 90 00 A5            815 	mov	dptr,#(_a + 0x0025)
   0442 74 5B               816 	mov	a,#0x5B
   0444 F0                  817 	movx	@dptr,a
   0445 90 00 A6            818 	mov	dptr,#(_a + 0x0026)
   0448 74 53               819 	mov	a,#0x53
   044A F0                  820 	movx	@dptr,a
   044B 90 00 A7            821 	mov	dptr,#(_a + 0x0027)
   044E 74 78               822 	mov	a,#0x78
   0450 F0                  823 	movx	@dptr,a
   0451 90 00 A8            824 	mov	dptr,#(_a + 0x0028)
   0454 74 7D               825 	mov	a,#0x7D
   0456 F0                  826 	movx	@dptr,a
   0457 90 00 A9            827 	mov	dptr,#(_a + 0x0029)
   045A 74 E2               828 	mov	a,#0xE2
   045C F0                  829 	movx	@dptr,a
   045D 90 00 AA            830 	mov	dptr,#(_a + 0x002a)
   0460 74 F2               831 	mov	a,#0xF2
   0462 F0                  832 	movx	@dptr,a
   0463 90 00 AB            833 	mov	dptr,#(_a + 0x002b)
   0466 74 AF               834 	mov	a,#0xAF
   0468 F0                  835 	movx	@dptr,a
   0469 90 00 AC            836 	mov	dptr,#(_a + 0x002c)
   046C 74 D2               837 	mov	a,#0xD2
   046E F0                  838 	movx	@dptr,a
   046F 90 00 AD            839 	mov	dptr,#(_a + 0x002d)
   0472 74 BA               840 	mov	a,#0xBA
   0474 F0                  841 	movx	@dptr,a
   0475 90 00 AE            842 	mov	dptr,#(_a + 0x002e)
   0478 74 06               843 	mov	a,#0x06
   047A F0                  844 	movx	@dptr,a
   047B 90 00 AF            845 	mov	dptr,#(_a + 0x002f)
   047E 74 0F               846 	mov	a,#0x0F
   0480 F0                  847 	movx	@dptr,a
   0481 90 00 B0            848 	mov	dptr,#(_a + 0x0030)
   0484 74 EE               849 	mov	a,#0xEE
   0486 F0                  850 	movx	@dptr,a
   0487 90 00 B1            851 	mov	dptr,#(_a + 0x0031)
   048A 74 A4               852 	mov	a,#0xA4
   048C F0                  853 	movx	@dptr,a
   048D 90 00 B2            854 	mov	dptr,#(_a + 0x0032)
   0490 74 37               855 	mov	a,#0x37
   0492 F0                  856 	movx	@dptr,a
   0493 90 00 B3            857 	mov	dptr,#(_a + 0x0033)
   0496 74 06               858 	mov	a,#0x06
   0498 F0                  859 	movx	@dptr,a
   0499 90 00 B4            860 	mov	dptr,#(_a + 0x0034)
   049C 74 E7               861 	mov	a,#0xE7
   049E F0                  862 	movx	@dptr,a
   049F 90 00 B5            863 	mov	dptr,#(_a + 0x0035)
   04A2 74 04               864 	mov	a,#0x04
   04A4 F0                  865 	movx	@dptr,a
   04A5 90 00 B6            866 	mov	dptr,#(_a + 0x0036)
   04A8 74 2C               867 	mov	a,#0x2C
   04AA F0                  868 	movx	@dptr,a
   04AB 90 00 B7            869 	mov	dptr,#(_a + 0x0037)
   04AE 74 90               870 	mov	a,#0x90
   04B0 F0                  871 	movx	@dptr,a
   04B1 90 00 B8            872 	mov	dptr,#(_a + 0x0038)
   04B4 74 3C               873 	mov	a,#0x3C
   04B6 F0                  874 	movx	@dptr,a
   04B7 90 00 B9            875 	mov	dptr,#(_a + 0x0039)
   04BA 74 8B               876 	mov	a,#0x8B
   04BC F0                  877 	movx	@dptr,a
   04BD 90 00 BA            878 	mov	dptr,#(_a + 0x003a)
   04C0 74 FD               879 	mov	a,#0xFD
   04C2 F0                  880 	movx	@dptr,a
   04C3 90 00 BB            881 	mov	dptr,#(_a + 0x003b)
   04C6 74 54               882 	mov	a,#0x54
   04C8 F0                  883 	movx	@dptr,a
   04C9 90 00 BC            884 	mov	dptr,#(_a + 0x003c)
   04CC 74 CD               885 	mov	a,#0xCD
   04CE F0                  886 	movx	@dptr,a
   04CF 90 00 BD            887 	mov	dptr,#(_a + 0x003d)
   04D2 74 B9               888 	mov	a,#0xB9
   04D4 F0                  889 	movx	@dptr,a
   04D5 90 00 BE            890 	mov	dptr,#(_a + 0x003e)
   04D8 74 94               891 	mov	a,#0x94
   04DA F0                  892 	movx	@dptr,a
   04DB 90 00 BF            893 	mov	dptr,#(_a + 0x003f)
   04DE 74 AD               894 	mov	a,#0xAD
   04E0 F0                  895 	movx	@dptr,a
   04E1 90 00 C0            896 	mov	dptr,#(_a + 0x0040)
   04E4 74 64               897 	mov	a,#0x64
   04E6 F0                  898 	movx	@dptr,a
   04E7 90 00 C1            899 	mov	dptr,#(_a + 0x0041)
   04EA 74 8E               900 	mov	a,#0x8E
   04EC F0                  901 	movx	@dptr,a
   04ED 90 00 C2            902 	mov	dptr,#(_a + 0x0042)
   04F0 74 26               903 	mov	a,#0x26
   04F2 F0                  904 	movx	@dptr,a
   04F3 90 00 C3            905 	mov	dptr,#(_a + 0x0043)
   04F6 74 DE               906 	mov	a,#0xDE
   04F8 F0                  907 	movx	@dptr,a
   04F9 90 00 C4            908 	mov	dptr,#(_a + 0x0044)
   04FC 74 8C               909 	mov	a,#0x8C
   04FE F0                  910 	movx	@dptr,a
   04FF 90 00 C5            911 	mov	dptr,#(_a + 0x0045)
   0502 74 C5               912 	mov	a,#0xC5
   0504 F0                  913 	movx	@dptr,a
   0505 90 00 C6            914 	mov	dptr,#(_a + 0x0046)
   0508 74 33               915 	mov	a,#0x33
   050A F0                  916 	movx	@dptr,a
   050B 90 00 C7            917 	mov	dptr,#(_a + 0x0047)
   050E 74 92               918 	mov	a,#0x92
   0510 F0                  919 	movx	@dptr,a
   0511 90 00 C8            920 	mov	dptr,#(_a + 0x0048)
   0514 74 24               921 	mov	a,#0x24
   0516 F0                  922 	movx	@dptr,a
   0517 90 00 C9            923 	mov	dptr,#(_a + 0x0049)
   051A 74 EF               924 	mov	a,#0xEF
   051C F0                  925 	movx	@dptr,a
   051D 90 00 CA            926 	mov	dptr,#(_a + 0x004a)
   0520 74 76               927 	mov	a,#0x76
   0522 F0                  928 	movx	@dptr,a
   0523 90 00 CB            929 	mov	dptr,#(_a + 0x004b)
   0526 74 34               930 	mov	a,#0x34
   0528 F0                  931 	movx	@dptr,a
   0529 90 00 CC            932 	mov	dptr,#(_a + 0x004c)
   052C 74 C4               933 	mov	a,#0xC4
   052E F0                  934 	movx	@dptr,a
   052F 90 00 CD            935 	mov	dptr,#(_a + 0x004d)
   0532 74 B8               936 	mov	a,#0xB8
   0534 F0                  937 	movx	@dptr,a
   0535 90 00 CE            938 	mov	dptr,#(_a + 0x004e)
   0538 74 EC               939 	mov	a,#0xEC
   053A F0                  940 	movx	@dptr,a
   053B 90 00 CF            941 	mov	dptr,#(_a + 0x004f)
   053E 74 F1               942 	mov	a,#0xF1
   0540 F0                  943 	movx	@dptr,a
   0541 90 00 D0            944 	mov	dptr,#(_a + 0x0050)
   0544 74 9A               945 	mov	a,#0x9A
   0546 F0                  946 	movx	@dptr,a
   0547 90 00 D1            947 	mov	dptr,#(_a + 0x0051)
   054A 74 79               948 	mov	a,#0x79
   054C F0                  949 	movx	@dptr,a
   054D 90 00 D2            950 	mov	dptr,#(_a + 0x0052)
   0550 74 61               951 	mov	a,#0x61
   0552 F0                  952 	movx	@dptr,a
   0553 90 00 D3            953 	mov	dptr,#(_a + 0x0053)
   0556 74 80               954 	mov	a,#0x80
   0558 F0                  955 	movx	@dptr,a
   0559 90 00 D4            956 	mov	dptr,#(_a + 0x0054)
   055C 74 C1               957 	mov	a,#0xC1
   055E F0                  958 	movx	@dptr,a
   055F 90 00 D5            959 	mov	dptr,#(_a + 0x0055)
   0562 74 BC               960 	mov	a,#0xBC
   0564 F0                  961 	movx	@dptr,a
   0565 90 00 D6            962 	mov	dptr,#(_a + 0x0056)
   0568 74 6D               963 	mov	a,#0x6D
   056A F0                  964 	movx	@dptr,a
   056B 90 00 D7            965 	mov	dptr,#(_a + 0x0057)
   056E 74 03               966 	mov	a,#0x03
   0570 F0                  967 	movx	@dptr,a
   0571 90 00 D8            968 	mov	dptr,#(_a + 0x0058)
   0574 74 49               969 	mov	a,#0x49
   0576 F0                  970 	movx	@dptr,a
   0577 90 00 D9            971 	mov	dptr,#(_a + 0x0059)
   057A 74 95               972 	mov	a,#0x95
   057C F0                  973 	movx	@dptr,a
   057D 90 00 DA            974 	mov	dptr,#(_a + 0x005a)
   0580 74 94               975 	mov	a,#0x94
   0582 F0                  976 	movx	@dptr,a
   0583 90 00 DB            977 	mov	dptr,#(_a + 0x005b)
   0586 74 C8               978 	mov	a,#0xC8
   0588 F0                  979 	movx	@dptr,a
   0589 90 00 DC            980 	mov	dptr,#(_a + 0x005c)
   058C 74 6F               981 	mov	a,#0x6F
   058E F0                  982 	movx	@dptr,a
   058F 90 00 DD            983 	mov	dptr,#(_a + 0x005d)
   0592 74 14               984 	mov	a,#0x14
   0594 F0                  985 	movx	@dptr,a
   0595 90 00 DE            986 	mov	dptr,#(_a + 0x005e)
   0598 74 B0               987 	mov	a,#0xB0
   059A F0                  988 	movx	@dptr,a
   059B 90 00 DF            989 	mov	dptr,#(_a + 0x005f)
   059E 74 16               990 	mov	a,#0x16
   05A0 F0                  991 	movx	@dptr,a
   05A1 90 00 E0            992 	mov	dptr,#(_a + 0x0060)
   05A4 74 14               993 	mov	a,#0x14
   05A6 F0                  994 	movx	@dptr,a
   05A7 90 00 E1            995 	mov	dptr,#(_a + 0x0061)
   05AA 74 63               996 	mov	a,#0x63
   05AC F0                  997 	movx	@dptr,a
   05AD 90 00 E2            998 	mov	dptr,#(_a + 0x0062)
   05B0 74 D0               999 	mov	a,#0xD0
   05B2 F0                 1000 	movx	@dptr,a
   05B3 90 00 E3           1001 	mov	dptr,#(_a + 0x0063)
   05B6 74 94              1002 	mov	a,#0x94
   05B8 F0                 1003 	movx	@dptr,a
   05B9 90 00 E4           1004 	mov	dptr,#(_a + 0x0064)
   05BC 74 D9              1005 	mov	a,#0xD9
   05BE F0                 1006 	movx	@dptr,a
   05BF 90 00 E5           1007 	mov	dptr,#(_a + 0x0065)
   05C2 74 10              1008 	mov	a,#0x10
   05C4 F0                 1009 	movx	@dptr,a
   05C5 90 00 E6           1010 	mov	dptr,#(_a + 0x0066)
   05C8 74 4B              1011 	mov	a,#0x4B
   05CA F0                 1012 	movx	@dptr,a
   05CB 90 00 E7           1013 	mov	dptr,#(_a + 0x0067)
   05CE 74 44              1014 	mov	a,#0x44
   05D0 F0                 1015 	movx	@dptr,a
   05D1 90 00 E8           1016 	mov	dptr,#(_a + 0x0068)
   05D4 74 03              1017 	mov	a,#0x03
   05D6 F0                 1018 	movx	@dptr,a
   05D7 90 00 E9           1019 	mov	dptr,#(_a + 0x0069)
   05DA 74 C2              1020 	mov	a,#0xC2
   05DC F0                 1021 	movx	@dptr,a
   05DD 90 00 EA           1022 	mov	dptr,#(_a + 0x006a)
   05E0 74 CC              1023 	mov	a,#0xCC
   05E2 F0                 1024 	movx	@dptr,a
   05E3 90 00 EB           1025 	mov	dptr,#(_a + 0x006b)
   05E6 74 04              1026 	mov	a,#0x04
   05E8 F0                 1027 	movx	@dptr,a
   05E9 90 00 EC           1028 	mov	dptr,#(_a + 0x006c)
   05EC 74 68              1029 	mov	a,#0x68
   05EE F0                 1030 	movx	@dptr,a
   05EF 90 00 ED           1031 	mov	dptr,#(_a + 0x006d)
   05F2 74 98              1032 	mov	a,#0x98
   05F4 F0                 1033 	movx	@dptr,a
   05F5 90 00 EE           1034 	mov	dptr,#(_a + 0x006e)
   05F8 74 6C              1035 	mov	a,#0x6C
   05FA F0                 1036 	movx	@dptr,a
   05FB 90 00 EF           1037 	mov	dptr,#(_a + 0x006f)
   05FE 74 D9              1038 	mov	a,#0xD9
   0600 F0                 1039 	movx	@dptr,a
   0601 90 00 F0           1040 	mov	dptr,#(_a + 0x0070)
   0604 74 69              1041 	mov	a,#0x69
   0606 F0                 1042 	movx	@dptr,a
   0607 90 00 F1           1043 	mov	dptr,#(_a + 0x0071)
   060A 74 C7              1044 	mov	a,#0xC7
   060C F0                 1045 	movx	@dptr,a
   060D 90 00 F2           1046 	mov	dptr,#(_a + 0x0072)
   0610 74 1A              1047 	mov	a,#0x1A
   0612 F0                 1048 	movx	@dptr,a
   0613 90 00 F3           1049 	mov	dptr,#(_a + 0x0073)
   0616 74 0F              1050 	mov	a,#0x0F
   0618 F0                 1051 	movx	@dptr,a
   0619 90 00 F4           1052 	mov	dptr,#(_a + 0x0074)
   061C 74 C5              1053 	mov	a,#0xC5
   061E F0                 1054 	movx	@dptr,a
   061F 90 00 F5           1055 	mov	dptr,#(_a + 0x0075)
   0622 74 39              1056 	mov	a,#0x39
   0624 F0                 1057 	movx	@dptr,a
   0625 90 00 F6           1058 	mov	dptr,#(_a + 0x0076)
   0628 74 5C              1059 	mov	a,#0x5C
   062A F0                 1060 	movx	@dptr,a
   062B 90 00 F7           1061 	mov	dptr,#(_a + 0x0077)
   062E 74 6A              1062 	mov	a,#0x6A
   0630 F0                 1063 	movx	@dptr,a
   0631 90 00 F8           1064 	mov	dptr,#(_a + 0x0078)
   0634 74 5A              1065 	mov	a,#0x5A
   0636 F0                 1066 	movx	@dptr,a
   0637 90 00 F9           1067 	mov	dptr,#(_a + 0x0079)
   063A 74 67              1068 	mov	a,#0x67
   063C F0                 1069 	movx	@dptr,a
   063D 90 00 FA           1070 	mov	dptr,#(_a + 0x007a)
   0640 74 0B              1071 	mov	a,#0x0B
   0642 F0                 1072 	movx	@dptr,a
   0643 90 00 FB           1073 	mov	dptr,#(_a + 0x007b)
   0646 74 47              1074 	mov	a,#0x47
   0648 F0                 1075 	movx	@dptr,a
   0649 90 00 FC           1076 	mov	dptr,#(_a + 0x007c)
   064C 74 F4              1077 	mov	a,#0xF4
   064E F0                 1078 	movx	@dptr,a
   064F 90 00 FD           1079 	mov	dptr,#(_a + 0x007d)
   0652 74 77              1080 	mov	a,#0x77
   0654 F0                 1081 	movx	@dptr,a
   0655 90 00 FE           1082 	mov	dptr,#(_a + 0x007e)
   0658 74 1E              1083 	mov	a,#0x1E
   065A F0                 1084 	movx	@dptr,a
   065B 90 00 FF           1085 	mov	dptr,#(_a + 0x007f)
   065E 74 2B              1086 	mov	a,#0x2B
   0660 F0                 1087 	movx	@dptr,a
                           1088 ;	main.c:15: volatile __xdata __at (0x0100) unsigned char b[SIZE]   = {0xA3,0x10,0x6B,0x83,0x7C,0x40,0xBF,0xB2,0x54,0x28,0x20,0x4D,0xB2,0xD4,0xF8,0xA6,0xE5,0xB7,0x51,0xBA,0xE8,0xD1,0x95,0x9A,0xFE,0xAB,0x0A,0x48,0x23,0xA2,0x70,0xB3,0xCC,0x7B,0x8F,0x44,0xF4,0x5B,0x53,0x78,0x7D,0xE2,0xF2,0xAF,0xD2,0xBA,0x06,0x0F,0xEE,0xA4,0x37,0x06,0xE7,0x04,0x2C,0x90,0x3C,0x8B,0xFD,0x54,0xCD,0xB9,0x94,0xAD,0x64,0x8E,0x26,0xDE,0x8C,0xC5,0x33,0x92,0x24,0xEF,0x76,0x34,0xC4,0xB8,0xEC,0xF1,0x9A,0x79,0x61,0x80,0xC1,0xBC,0x6D,0x03,0x49,0x95,0x94,0xC8,0x6F,0x14,0xB0,0x16,0x14,0x63,0xD0,0x94,0xD9,0x10,0x4B,0x44,0x03,0xC2,0xCC,0x04,0x68,0x98,0x6C,0xD9,0x69,0xC7,0x1A,0x0F,0xC5,0x39,0x5C,0x6A,0x5A,0x67,0x0B,0x47,0xF4,0x77,0x1E,0x2B};
   0661 90 01 00           1089 	mov	dptr,#_b
   0664 74 A3              1090 	mov	a,#0xA3
   0666 F0                 1091 	movx	@dptr,a
   0667 90 01 01           1092 	mov	dptr,#(_b + 0x0001)
   066A 74 10              1093 	mov	a,#0x10
   066C F0                 1094 	movx	@dptr,a
   066D 90 01 02           1095 	mov	dptr,#(_b + 0x0002)
   0670 74 6B              1096 	mov	a,#0x6B
   0672 F0                 1097 	movx	@dptr,a
   0673 90 01 03           1098 	mov	dptr,#(_b + 0x0003)
   0676 74 83              1099 	mov	a,#0x83
   0678 F0                 1100 	movx	@dptr,a
   0679 90 01 04           1101 	mov	dptr,#(_b + 0x0004)
   067C 74 7C              1102 	mov	a,#0x7C
   067E F0                 1103 	movx	@dptr,a
   067F 90 01 05           1104 	mov	dptr,#(_b + 0x0005)
   0682 74 40              1105 	mov	a,#0x40
   0684 F0                 1106 	movx	@dptr,a
   0685 90 01 06           1107 	mov	dptr,#(_b + 0x0006)
   0688 74 BF              1108 	mov	a,#0xBF
   068A F0                 1109 	movx	@dptr,a
   068B 90 01 07           1110 	mov	dptr,#(_b + 0x0007)
   068E 74 B2              1111 	mov	a,#0xB2
   0690 F0                 1112 	movx	@dptr,a
   0691 90 01 08           1113 	mov	dptr,#(_b + 0x0008)
   0694 74 54              1114 	mov	a,#0x54
   0696 F0                 1115 	movx	@dptr,a
   0697 90 01 09           1116 	mov	dptr,#(_b + 0x0009)
   069A 74 28              1117 	mov	a,#0x28
   069C F0                 1118 	movx	@dptr,a
   069D 90 01 0A           1119 	mov	dptr,#(_b + 0x000a)
   06A0 74 20              1120 	mov	a,#0x20
   06A2 F0                 1121 	movx	@dptr,a
   06A3 90 01 0B           1122 	mov	dptr,#(_b + 0x000b)
   06A6 74 4D              1123 	mov	a,#0x4D
   06A8 F0                 1124 	movx	@dptr,a
   06A9 90 01 0C           1125 	mov	dptr,#(_b + 0x000c)
   06AC 74 B2              1126 	mov	a,#0xB2
   06AE F0                 1127 	movx	@dptr,a
   06AF 90 01 0D           1128 	mov	dptr,#(_b + 0x000d)
   06B2 74 D4              1129 	mov	a,#0xD4
   06B4 F0                 1130 	movx	@dptr,a
   06B5 90 01 0E           1131 	mov	dptr,#(_b + 0x000e)
   06B8 74 F8              1132 	mov	a,#0xF8
   06BA F0                 1133 	movx	@dptr,a
   06BB 90 01 0F           1134 	mov	dptr,#(_b + 0x000f)
   06BE 74 A6              1135 	mov	a,#0xA6
   06C0 F0                 1136 	movx	@dptr,a
   06C1 90 01 10           1137 	mov	dptr,#(_b + 0x0010)
   06C4 74 E5              1138 	mov	a,#0xE5
   06C6 F0                 1139 	movx	@dptr,a
   06C7 90 01 11           1140 	mov	dptr,#(_b + 0x0011)
   06CA 74 B7              1141 	mov	a,#0xB7
   06CC F0                 1142 	movx	@dptr,a
   06CD 90 01 12           1143 	mov	dptr,#(_b + 0x0012)
   06D0 74 51              1144 	mov	a,#0x51
   06D2 F0                 1145 	movx	@dptr,a
   06D3 90 01 13           1146 	mov	dptr,#(_b + 0x0013)
   06D6 74 BA              1147 	mov	a,#0xBA
   06D8 F0                 1148 	movx	@dptr,a
   06D9 90 01 14           1149 	mov	dptr,#(_b + 0x0014)
   06DC 74 E8              1150 	mov	a,#0xE8
   06DE F0                 1151 	movx	@dptr,a
   06DF 90 01 15           1152 	mov	dptr,#(_b + 0x0015)
   06E2 74 D1              1153 	mov	a,#0xD1
   06E4 F0                 1154 	movx	@dptr,a
   06E5 90 01 16           1155 	mov	dptr,#(_b + 0x0016)
   06E8 74 95              1156 	mov	a,#0x95
   06EA F0                 1157 	movx	@dptr,a
   06EB 90 01 17           1158 	mov	dptr,#(_b + 0x0017)
   06EE 74 9A              1159 	mov	a,#0x9A
   06F0 F0                 1160 	movx	@dptr,a
   06F1 90 01 18           1161 	mov	dptr,#(_b + 0x0018)
   06F4 74 FE              1162 	mov	a,#0xFE
   06F6 F0                 1163 	movx	@dptr,a
   06F7 90 01 19           1164 	mov	dptr,#(_b + 0x0019)
   06FA 74 AB              1165 	mov	a,#0xAB
   06FC F0                 1166 	movx	@dptr,a
   06FD 90 01 1A           1167 	mov	dptr,#(_b + 0x001a)
   0700 74 0A              1168 	mov	a,#0x0A
   0702 F0                 1169 	movx	@dptr,a
   0703 90 01 1B           1170 	mov	dptr,#(_b + 0x001b)
   0706 74 48              1171 	mov	a,#0x48
   0708 F0                 1172 	movx	@dptr,a
   0709 90 01 1C           1173 	mov	dptr,#(_b + 0x001c)
   070C 74 23              1174 	mov	a,#0x23
   070E F0                 1175 	movx	@dptr,a
   070F 90 01 1D           1176 	mov	dptr,#(_b + 0x001d)
   0712 74 A2              1177 	mov	a,#0xA2
   0714 F0                 1178 	movx	@dptr,a
   0715 90 01 1E           1179 	mov	dptr,#(_b + 0x001e)
   0718 74 70              1180 	mov	a,#0x70
   071A F0                 1181 	movx	@dptr,a
   071B 90 01 1F           1182 	mov	dptr,#(_b + 0x001f)
   071E 74 B3              1183 	mov	a,#0xB3
   0720 F0                 1184 	movx	@dptr,a
   0721 90 01 20           1185 	mov	dptr,#(_b + 0x0020)
   0724 74 CC              1186 	mov	a,#0xCC
   0726 F0                 1187 	movx	@dptr,a
   0727 90 01 21           1188 	mov	dptr,#(_b + 0x0021)
   072A 74 7B              1189 	mov	a,#0x7B
   072C F0                 1190 	movx	@dptr,a
   072D 90 01 22           1191 	mov	dptr,#(_b + 0x0022)
   0730 74 8F              1192 	mov	a,#0x8F
   0732 F0                 1193 	movx	@dptr,a
   0733 90 01 23           1194 	mov	dptr,#(_b + 0x0023)
   0736 74 44              1195 	mov	a,#0x44
   0738 F0                 1196 	movx	@dptr,a
   0739 90 01 24           1197 	mov	dptr,#(_b + 0x0024)
   073C 74 F4              1198 	mov	a,#0xF4
   073E F0                 1199 	movx	@dptr,a
   073F 90 01 25           1200 	mov	dptr,#(_b + 0x0025)
   0742 74 5B              1201 	mov	a,#0x5B
   0744 F0                 1202 	movx	@dptr,a
   0745 90 01 26           1203 	mov	dptr,#(_b + 0x0026)
   0748 74 53              1204 	mov	a,#0x53
   074A F0                 1205 	movx	@dptr,a
   074B 90 01 27           1206 	mov	dptr,#(_b + 0x0027)
   074E 74 78              1207 	mov	a,#0x78
   0750 F0                 1208 	movx	@dptr,a
   0751 90 01 28           1209 	mov	dptr,#(_b + 0x0028)
   0754 74 7D              1210 	mov	a,#0x7D
   0756 F0                 1211 	movx	@dptr,a
   0757 90 01 29           1212 	mov	dptr,#(_b + 0x0029)
   075A 74 E2              1213 	mov	a,#0xE2
   075C F0                 1214 	movx	@dptr,a
   075D 90 01 2A           1215 	mov	dptr,#(_b + 0x002a)
   0760 74 F2              1216 	mov	a,#0xF2
   0762 F0                 1217 	movx	@dptr,a
   0763 90 01 2B           1218 	mov	dptr,#(_b + 0x002b)
   0766 74 AF              1219 	mov	a,#0xAF
   0768 F0                 1220 	movx	@dptr,a
   0769 90 01 2C           1221 	mov	dptr,#(_b + 0x002c)
   076C 74 D2              1222 	mov	a,#0xD2
   076E F0                 1223 	movx	@dptr,a
   076F 90 01 2D           1224 	mov	dptr,#(_b + 0x002d)
   0772 74 BA              1225 	mov	a,#0xBA
   0774 F0                 1226 	movx	@dptr,a
   0775 90 01 2E           1227 	mov	dptr,#(_b + 0x002e)
   0778 74 06              1228 	mov	a,#0x06
   077A F0                 1229 	movx	@dptr,a
   077B 90 01 2F           1230 	mov	dptr,#(_b + 0x002f)
   077E 74 0F              1231 	mov	a,#0x0F
   0780 F0                 1232 	movx	@dptr,a
   0781 90 01 30           1233 	mov	dptr,#(_b + 0x0030)
   0784 74 EE              1234 	mov	a,#0xEE
   0786 F0                 1235 	movx	@dptr,a
   0787 90 01 31           1236 	mov	dptr,#(_b + 0x0031)
   078A 74 A4              1237 	mov	a,#0xA4
   078C F0                 1238 	movx	@dptr,a
   078D 90 01 32           1239 	mov	dptr,#(_b + 0x0032)
   0790 74 37              1240 	mov	a,#0x37
   0792 F0                 1241 	movx	@dptr,a
   0793 90 01 33           1242 	mov	dptr,#(_b + 0x0033)
   0796 74 06              1243 	mov	a,#0x06
   0798 F0                 1244 	movx	@dptr,a
   0799 90 01 34           1245 	mov	dptr,#(_b + 0x0034)
   079C 74 E7              1246 	mov	a,#0xE7
   079E F0                 1247 	movx	@dptr,a
   079F 90 01 35           1248 	mov	dptr,#(_b + 0x0035)
   07A2 74 04              1249 	mov	a,#0x04
   07A4 F0                 1250 	movx	@dptr,a
   07A5 90 01 36           1251 	mov	dptr,#(_b + 0x0036)
   07A8 74 2C              1252 	mov	a,#0x2C
   07AA F0                 1253 	movx	@dptr,a
   07AB 90 01 37           1254 	mov	dptr,#(_b + 0x0037)
   07AE 74 90              1255 	mov	a,#0x90
   07B0 F0                 1256 	movx	@dptr,a
   07B1 90 01 38           1257 	mov	dptr,#(_b + 0x0038)
   07B4 74 3C              1258 	mov	a,#0x3C
   07B6 F0                 1259 	movx	@dptr,a
   07B7 90 01 39           1260 	mov	dptr,#(_b + 0x0039)
   07BA 74 8B              1261 	mov	a,#0x8B
   07BC F0                 1262 	movx	@dptr,a
   07BD 90 01 3A           1263 	mov	dptr,#(_b + 0x003a)
   07C0 74 FD              1264 	mov	a,#0xFD
   07C2 F0                 1265 	movx	@dptr,a
   07C3 90 01 3B           1266 	mov	dptr,#(_b + 0x003b)
   07C6 74 54              1267 	mov	a,#0x54
   07C8 F0                 1268 	movx	@dptr,a
   07C9 90 01 3C           1269 	mov	dptr,#(_b + 0x003c)
   07CC 74 CD              1270 	mov	a,#0xCD
   07CE F0                 1271 	movx	@dptr,a
   07CF 90 01 3D           1272 	mov	dptr,#(_b + 0x003d)
   07D2 74 B9              1273 	mov	a,#0xB9
   07D4 F0                 1274 	movx	@dptr,a
   07D5 90 01 3E           1275 	mov	dptr,#(_b + 0x003e)
   07D8 74 94              1276 	mov	a,#0x94
   07DA F0                 1277 	movx	@dptr,a
   07DB 90 01 3F           1278 	mov	dptr,#(_b + 0x003f)
   07DE 74 AD              1279 	mov	a,#0xAD
   07E0 F0                 1280 	movx	@dptr,a
   07E1 90 01 40           1281 	mov	dptr,#(_b + 0x0040)
   07E4 74 64              1282 	mov	a,#0x64
   07E6 F0                 1283 	movx	@dptr,a
   07E7 90 01 41           1284 	mov	dptr,#(_b + 0x0041)
   07EA 74 8E              1285 	mov	a,#0x8E
   07EC F0                 1286 	movx	@dptr,a
   07ED 90 01 42           1287 	mov	dptr,#(_b + 0x0042)
   07F0 74 26              1288 	mov	a,#0x26
   07F2 F0                 1289 	movx	@dptr,a
   07F3 90 01 43           1290 	mov	dptr,#(_b + 0x0043)
   07F6 74 DE              1291 	mov	a,#0xDE
   07F8 F0                 1292 	movx	@dptr,a
   07F9 90 01 44           1293 	mov	dptr,#(_b + 0x0044)
   07FC 74 8C              1294 	mov	a,#0x8C
   07FE F0                 1295 	movx	@dptr,a
   07FF 90 01 45           1296 	mov	dptr,#(_b + 0x0045)
   0802 74 C5              1297 	mov	a,#0xC5
   0804 F0                 1298 	movx	@dptr,a
   0805 90 01 46           1299 	mov	dptr,#(_b + 0x0046)
   0808 74 33              1300 	mov	a,#0x33
   080A F0                 1301 	movx	@dptr,a
   080B 90 01 47           1302 	mov	dptr,#(_b + 0x0047)
   080E 74 92              1303 	mov	a,#0x92
   0810 F0                 1304 	movx	@dptr,a
   0811 90 01 48           1305 	mov	dptr,#(_b + 0x0048)
   0814 74 24              1306 	mov	a,#0x24
   0816 F0                 1307 	movx	@dptr,a
   0817 90 01 49           1308 	mov	dptr,#(_b + 0x0049)
   081A 74 EF              1309 	mov	a,#0xEF
   081C F0                 1310 	movx	@dptr,a
   081D 90 01 4A           1311 	mov	dptr,#(_b + 0x004a)
   0820 74 76              1312 	mov	a,#0x76
   0822 F0                 1313 	movx	@dptr,a
   0823 90 01 4B           1314 	mov	dptr,#(_b + 0x004b)
   0826 74 34              1315 	mov	a,#0x34
   0828 F0                 1316 	movx	@dptr,a
   0829 90 01 4C           1317 	mov	dptr,#(_b + 0x004c)
   082C 74 C4              1318 	mov	a,#0xC4
   082E F0                 1319 	movx	@dptr,a
   082F 90 01 4D           1320 	mov	dptr,#(_b + 0x004d)
   0832 74 B8              1321 	mov	a,#0xB8
   0834 F0                 1322 	movx	@dptr,a
   0835 90 01 4E           1323 	mov	dptr,#(_b + 0x004e)
   0838 74 EC              1324 	mov	a,#0xEC
   083A F0                 1325 	movx	@dptr,a
   083B 90 01 4F           1326 	mov	dptr,#(_b + 0x004f)
   083E 74 F1              1327 	mov	a,#0xF1
   0840 F0                 1328 	movx	@dptr,a
   0841 90 01 50           1329 	mov	dptr,#(_b + 0x0050)
   0844 74 9A              1330 	mov	a,#0x9A
   0846 F0                 1331 	movx	@dptr,a
   0847 90 01 51           1332 	mov	dptr,#(_b + 0x0051)
   084A 74 79              1333 	mov	a,#0x79
   084C F0                 1334 	movx	@dptr,a
   084D 90 01 52           1335 	mov	dptr,#(_b + 0x0052)
   0850 74 61              1336 	mov	a,#0x61
   0852 F0                 1337 	movx	@dptr,a
   0853 90 01 53           1338 	mov	dptr,#(_b + 0x0053)
   0856 74 80              1339 	mov	a,#0x80
   0858 F0                 1340 	movx	@dptr,a
   0859 90 01 54           1341 	mov	dptr,#(_b + 0x0054)
   085C 74 C1              1342 	mov	a,#0xC1
   085E F0                 1343 	movx	@dptr,a
   085F 90 01 55           1344 	mov	dptr,#(_b + 0x0055)
   0862 74 BC              1345 	mov	a,#0xBC
   0864 F0                 1346 	movx	@dptr,a
   0865 90 01 56           1347 	mov	dptr,#(_b + 0x0056)
   0868 74 6D              1348 	mov	a,#0x6D
   086A F0                 1349 	movx	@dptr,a
   086B 90 01 57           1350 	mov	dptr,#(_b + 0x0057)
   086E 74 03              1351 	mov	a,#0x03
   0870 F0                 1352 	movx	@dptr,a
   0871 90 01 58           1353 	mov	dptr,#(_b + 0x0058)
   0874 74 49              1354 	mov	a,#0x49
   0876 F0                 1355 	movx	@dptr,a
   0877 90 01 59           1356 	mov	dptr,#(_b + 0x0059)
   087A 74 95              1357 	mov	a,#0x95
   087C F0                 1358 	movx	@dptr,a
   087D 90 01 5A           1359 	mov	dptr,#(_b + 0x005a)
   0880 74 94              1360 	mov	a,#0x94
   0882 F0                 1361 	movx	@dptr,a
   0883 90 01 5B           1362 	mov	dptr,#(_b + 0x005b)
   0886 74 C8              1363 	mov	a,#0xC8
   0888 F0                 1364 	movx	@dptr,a
   0889 90 01 5C           1365 	mov	dptr,#(_b + 0x005c)
   088C 74 6F              1366 	mov	a,#0x6F
   088E F0                 1367 	movx	@dptr,a
   088F 90 01 5D           1368 	mov	dptr,#(_b + 0x005d)
   0892 74 14              1369 	mov	a,#0x14
   0894 F0                 1370 	movx	@dptr,a
   0895 90 01 5E           1371 	mov	dptr,#(_b + 0x005e)
   0898 74 B0              1372 	mov	a,#0xB0
   089A F0                 1373 	movx	@dptr,a
   089B 90 01 5F           1374 	mov	dptr,#(_b + 0x005f)
   089E 74 16              1375 	mov	a,#0x16
   08A0 F0                 1376 	movx	@dptr,a
   08A1 90 01 60           1377 	mov	dptr,#(_b + 0x0060)
   08A4 74 14              1378 	mov	a,#0x14
   08A6 F0                 1379 	movx	@dptr,a
   08A7 90 01 61           1380 	mov	dptr,#(_b + 0x0061)
   08AA 74 63              1381 	mov	a,#0x63
   08AC F0                 1382 	movx	@dptr,a
   08AD 90 01 62           1383 	mov	dptr,#(_b + 0x0062)
   08B0 74 D0              1384 	mov	a,#0xD0
   08B2 F0                 1385 	movx	@dptr,a
   08B3 90 01 63           1386 	mov	dptr,#(_b + 0x0063)
   08B6 74 94              1387 	mov	a,#0x94
   08B8 F0                 1388 	movx	@dptr,a
   08B9 90 01 64           1389 	mov	dptr,#(_b + 0x0064)
   08BC 74 D9              1390 	mov	a,#0xD9
   08BE F0                 1391 	movx	@dptr,a
   08BF 90 01 65           1392 	mov	dptr,#(_b + 0x0065)
   08C2 74 10              1393 	mov	a,#0x10
   08C4 F0                 1394 	movx	@dptr,a
   08C5 90 01 66           1395 	mov	dptr,#(_b + 0x0066)
   08C8 74 4B              1396 	mov	a,#0x4B
   08CA F0                 1397 	movx	@dptr,a
   08CB 90 01 67           1398 	mov	dptr,#(_b + 0x0067)
   08CE 74 44              1399 	mov	a,#0x44
   08D0 F0                 1400 	movx	@dptr,a
   08D1 90 01 68           1401 	mov	dptr,#(_b + 0x0068)
   08D4 74 03              1402 	mov	a,#0x03
   08D6 F0                 1403 	movx	@dptr,a
   08D7 90 01 69           1404 	mov	dptr,#(_b + 0x0069)
   08DA 74 C2              1405 	mov	a,#0xC2
   08DC F0                 1406 	movx	@dptr,a
   08DD 90 01 6A           1407 	mov	dptr,#(_b + 0x006a)
   08E0 74 CC              1408 	mov	a,#0xCC
   08E2 F0                 1409 	movx	@dptr,a
   08E3 90 01 6B           1410 	mov	dptr,#(_b + 0x006b)
   08E6 74 04              1411 	mov	a,#0x04
   08E8 F0                 1412 	movx	@dptr,a
   08E9 90 01 6C           1413 	mov	dptr,#(_b + 0x006c)
   08EC 74 68              1414 	mov	a,#0x68
   08EE F0                 1415 	movx	@dptr,a
   08EF 90 01 6D           1416 	mov	dptr,#(_b + 0x006d)
   08F2 74 98              1417 	mov	a,#0x98
   08F4 F0                 1418 	movx	@dptr,a
   08F5 90 01 6E           1419 	mov	dptr,#(_b + 0x006e)
   08F8 74 6C              1420 	mov	a,#0x6C
   08FA F0                 1421 	movx	@dptr,a
   08FB 90 01 6F           1422 	mov	dptr,#(_b + 0x006f)
   08FE 74 D9              1423 	mov	a,#0xD9
   0900 F0                 1424 	movx	@dptr,a
   0901 90 01 70           1425 	mov	dptr,#(_b + 0x0070)
   0904 74 69              1426 	mov	a,#0x69
   0906 F0                 1427 	movx	@dptr,a
   0907 90 01 71           1428 	mov	dptr,#(_b + 0x0071)
   090A 74 C7              1429 	mov	a,#0xC7
   090C F0                 1430 	movx	@dptr,a
   090D 90 01 72           1431 	mov	dptr,#(_b + 0x0072)
   0910 74 1A              1432 	mov	a,#0x1A
   0912 F0                 1433 	movx	@dptr,a
   0913 90 01 73           1434 	mov	dptr,#(_b + 0x0073)
   0916 74 0F              1435 	mov	a,#0x0F
   0918 F0                 1436 	movx	@dptr,a
   0919 90 01 74           1437 	mov	dptr,#(_b + 0x0074)
   091C 74 C5              1438 	mov	a,#0xC5
   091E F0                 1439 	movx	@dptr,a
   091F 90 01 75           1440 	mov	dptr,#(_b + 0x0075)
   0922 74 39              1441 	mov	a,#0x39
   0924 F0                 1442 	movx	@dptr,a
   0925 90 01 76           1443 	mov	dptr,#(_b + 0x0076)
   0928 74 5C              1444 	mov	a,#0x5C
   092A F0                 1445 	movx	@dptr,a
   092B 90 01 77           1446 	mov	dptr,#(_b + 0x0077)
   092E 74 6A              1447 	mov	a,#0x6A
   0930 F0                 1448 	movx	@dptr,a
   0931 90 01 78           1449 	mov	dptr,#(_b + 0x0078)
   0934 74 5A              1450 	mov	a,#0x5A
   0936 F0                 1451 	movx	@dptr,a
   0937 90 01 79           1452 	mov	dptr,#(_b + 0x0079)
   093A 74 67              1453 	mov	a,#0x67
   093C F0                 1454 	movx	@dptr,a
   093D 90 01 7A           1455 	mov	dptr,#(_b + 0x007a)
   0940 74 0B              1456 	mov	a,#0x0B
   0942 F0                 1457 	movx	@dptr,a
   0943 90 01 7B           1458 	mov	dptr,#(_b + 0x007b)
   0946 74 47              1459 	mov	a,#0x47
   0948 F0                 1460 	movx	@dptr,a
   0949 90 01 7C           1461 	mov	dptr,#(_b + 0x007c)
   094C 74 F4              1462 	mov	a,#0xF4
   094E F0                 1463 	movx	@dptr,a
   094F 90 01 7D           1464 	mov	dptr,#(_b + 0x007d)
   0952 74 77              1465 	mov	a,#0x77
   0954 F0                 1466 	movx	@dptr,a
   0955 90 01 7E           1467 	mov	dptr,#(_b + 0x007e)
   0958 74 1E              1468 	mov	a,#0x1E
   095A F0                 1469 	movx	@dptr,a
   095B 90 01 7F           1470 	mov	dptr,#(_b + 0x007f)
   095E 74 2B              1471 	mov	a,#0x2B
   0960 F0                 1472 	movx	@dptr,a
                           1473 	.area GSFINAL (CODE)
   0961 02 00 03           1474 	ljmp	__sdcc_program_startup
                           1475 ;--------------------------------------------------------
                           1476 ; Home
                           1477 ;--------------------------------------------------------
                           1478 	.area HOME    (CODE)
                           1479 	.area HOME    (CODE)
   0003                    1480 __sdcc_program_startup:
   0003 12 0A 35           1481 	lcall	_main
                           1482 ;	return from main will lock up
   0006 80 FE              1483 	sjmp .
                           1484 ;--------------------------------------------------------
                           1485 ; code
                           1486 ;--------------------------------------------------------
                           1487 	.area CSEG    (CODE)
                           1488 ;------------------------------------------------------------
                           1489 ;Allocation info for local variables in function 'write_montgomery'
                           1490 ;------------------------------------------------------------
                           1491 ;------------------------------------------------------------
                           1492 ;	main.c:25: void write_montgomery() {
                           1493 ;	-----------------------------------------
                           1494 ;	 function write_montgomery
                           1495 ;	-----------------------------------------
   0964                    1496 _write_montgomery:
                    0002   1497 	ar2 = 0x02
                    0003   1498 	ar3 = 0x03
                    0004   1499 	ar4 = 0x04
                    0005   1500 	ar5 = 0x05
                    0006   1501 	ar6 = 0x06
                    0007   1502 	ar7 = 0x07
                    0000   1503 	ar0 = 0x00
                    0001   1504 	ar1 = 0x01
                           1505 ;	main.c:26: P1 = 0;
                           1506 ;	main.c:28: for (i = 0; i < SIZE; i++) {
   0964 E4                 1507 	clr	a
   0965 F5 90              1508 	mov	_P1,a
   0967 F5 08              1509 	mov	_i,a
   0969 F5 09              1510 	mov	(_i + 1),a
   096B                    1511 00104$:
   096B C3                 1512 	clr	c
   096C E5 08              1513 	mov	a,_i
   096E 94 80              1514 	subb	a,#0x80
   0970 E5 09              1515 	mov	a,(_i + 1)
   0972 94 00              1516 	subb	a,#0x00
   0974 50 27              1517 	jnc	00107$
                           1518 ;	main.c:29: shared_a[i] = a[SIZE-1-i];
   0976 AA 08              1519 	mov	r2,_i
   0978 74 40              1520 	mov	a,#(_shared_a >> 8)
   097A 25 09              1521 	add	a,(_i + 1)
   097C FB                 1522 	mov	r3,a
   097D AC 08              1523 	mov	r4,_i
   097F 74 7F              1524 	mov	a,#0x7F
   0981 C3                 1525 	clr	c
   0982 9C                 1526 	subb	a,r4
   0983 24 80              1527 	add	a,#_a
   0985 F5 82              1528 	mov	dpl,a
   0987 E4                 1529 	clr	a
   0988 34 00              1530 	addc	a,#(_a >> 8)
   098A F5 83              1531 	mov	dph,a
   098C E0                 1532 	movx	a,@dptr
   098D FC                 1533 	mov	r4,a
   098E 8A 82              1534 	mov	dpl,r2
   0990 8B 83              1535 	mov	dph,r3
   0992 F0                 1536 	movx	@dptr,a
                           1537 ;	main.c:28: for (i = 0; i < SIZE; i++) {
   0993 05 08              1538 	inc	_i
   0995 E4                 1539 	clr	a
   0996 B5 08 D2           1540 	cjne	a,_i,00104$
   0999 05 09              1541 	inc	(_i + 1)
   099B 80 CE              1542 	sjmp	00104$
   099D                    1543 00107$:
                           1544 ;	main.c:32: for (i = 0; i < SIZE; i++) {
   099D E4                 1545 	clr	a
   099E F5 08              1546 	mov	_i,a
   09A0 F5 09              1547 	mov	(_i + 1),a
   09A2                    1548 00108$:
   09A2 C3                 1549 	clr	c
   09A3 E5 08              1550 	mov	a,_i
   09A5 94 80              1551 	subb	a,#0x80
   09A7 E5 09              1552 	mov	a,(_i + 1)
   09A9 94 00              1553 	subb	a,#0x00
   09AB 50 2A              1554 	jnc	00111$
                           1555 ;	main.c:33: shared_b[i] = b[SIZE-1-i];
   09AD E5 08              1556 	mov	a,_i
   09AF 24 80              1557 	add	a,#_shared_b
   09B1 FA                 1558 	mov	r2,a
   09B2 E5 09              1559 	mov	a,(_i + 1)
   09B4 34 40              1560 	addc	a,#(_shared_b >> 8)
   09B6 FB                 1561 	mov	r3,a
   09B7 AC 08              1562 	mov	r4,_i
   09B9 74 7F              1563 	mov	a,#0x7F
   09BB C3                 1564 	clr	c
   09BC 9C                 1565 	subb	a,r4
   09BD 24 00              1566 	add	a,#_b
   09BF F5 82              1567 	mov	dpl,a
   09C1 E4                 1568 	clr	a
   09C2 34 01              1569 	addc	a,#(_b >> 8)
   09C4 F5 83              1570 	mov	dph,a
   09C6 E0                 1571 	movx	a,@dptr
   09C7 FC                 1572 	mov	r4,a
   09C8 8A 82              1573 	mov	dpl,r2
   09CA 8B 83              1574 	mov	dph,r3
   09CC F0                 1575 	movx	@dptr,a
                           1576 ;	main.c:32: for (i = 0; i < SIZE; i++) {
   09CD 05 08              1577 	inc	_i
   09CF E4                 1578 	clr	a
   09D0 B5 08 CF           1579 	cjne	a,_i,00108$
   09D3 05 09              1580 	inc	(_i + 1)
   09D5 80 CB              1581 	sjmp	00108$
   09D7                    1582 00111$:
                           1583 ;	main.c:36: for (i = 0; i < SIZE; i++) {
   09D7 E4                 1584 	clr	a
   09D8 F5 08              1585 	mov	_i,a
   09DA F5 09              1586 	mov	(_i + 1),a
   09DC                    1587 00112$:
   09DC C3                 1588 	clr	c
   09DD E5 08              1589 	mov	a,_i
   09DF 94 80              1590 	subb	a,#0x80
   09E1 E5 09              1591 	mov	a,(_i + 1)
   09E3 94 00              1592 	subb	a,#0x00
   09E5 50 27              1593 	jnc	00115$
                           1594 ;	main.c:37: shared_m[i] = m[SIZE-1-i];
   09E7 AA 08              1595 	mov	r2,_i
   09E9 74 41              1596 	mov	a,#(_shared_m >> 8)
   09EB 25 09              1597 	add	a,(_i + 1)
   09ED FB                 1598 	mov	r3,a
   09EE AC 08              1599 	mov	r4,_i
   09F0 74 7F              1600 	mov	a,#0x7F
   09F2 C3                 1601 	clr	c
   09F3 9C                 1602 	subb	a,r4
   09F4 24 00              1603 	add	a,#_m
   09F6 F5 82              1604 	mov	dpl,a
   09F8 E4                 1605 	clr	a
   09F9 34 00              1606 	addc	a,#(_m >> 8)
   09FB F5 83              1607 	mov	dph,a
   09FD E0                 1608 	movx	a,@dptr
   09FE FC                 1609 	mov	r4,a
   09FF 8A 82              1610 	mov	dpl,r2
   0A01 8B 83              1611 	mov	dph,r3
   0A03 F0                 1612 	movx	@dptr,a
                           1613 ;	main.c:36: for (i = 0; i < SIZE; i++) {
   0A04 05 08              1614 	inc	_i
   0A06 E4                 1615 	clr	a
   0A07 B5 08 D2           1616 	cjne	a,_i,00112$
   0A0A 05 09              1617 	inc	(_i + 1)
   0A0C 80 CE              1618 	sjmp	00112$
   0A0E                    1619 00115$:
                           1620 ;	main.c:40: P0 = ins_write_data;
   0A0E 75 80 01           1621 	mov	_P0,#0x01
                           1622 ;	main.c:41: P0 = ins_idle;
   0A11 75 80 00           1623 	mov	_P0,#0x00
                           1624 ;	main.c:43: while (P1 == 0) {}
   0A14                    1625 00101$:
   0A14 E5 90              1626 	mov	a,_P1
   0A16 60 FC              1627 	jz	00101$
                           1628 ;	main.c:44: P0 = ins_ack;
   0A18 75 80 04           1629 	mov	_P0,#0x04
   0A1B 22                 1630 	ret
                           1631 ;------------------------------------------------------------
                           1632 ;Allocation info for local variables in function 'read_r'
                           1633 ;------------------------------------------------------------
                           1634 ;------------------------------------------------------------
                           1635 ;	main.c:47: void read_r() {
                           1636 ;	-----------------------------------------
                           1637 ;	 function read_r
                           1638 ;	-----------------------------------------
   0A1C                    1639 _read_r:
                           1640 ;	main.c:48: P0 = ins_read_r;
   0A1C 75 80 03           1641 	mov	_P0,#0x03
                           1642 ;	main.c:49: while (P1 == 0) {}
   0A1F                    1643 00101$:
   0A1F E5 90              1644 	mov	a,_P1
   0A21 60 FC              1645 	jz	00101$
                           1646 ;	main.c:50: P0 = ins_ack;
   0A23 75 80 04           1647 	mov	_P0,#0x04
                           1648 ;	main.c:52: P0 = ins_idle;
   0A26 75 80 00           1649 	mov	_P0,#0x00
   0A29 22                 1650 	ret
                           1651 ;------------------------------------------------------------
                           1652 ;Allocation info for local variables in function 'montgomery'
                           1653 ;------------------------------------------------------------
                           1654 ;------------------------------------------------------------
                           1655 ;	main.c:55: void montgomery() {
                           1656 ;	-----------------------------------------
                           1657 ;	 function montgomery
                           1658 ;	-----------------------------------------
   0A2A                    1659 _montgomery:
                           1660 ;	main.c:56: P0 = ins_montgomery;
   0A2A 75 80 02           1661 	mov	_P0,#0x02
                           1662 ;	main.c:57: P0 = ins_idle;
   0A2D 75 80 00           1663 	mov	_P0,#0x00
   0A30 22                 1664 	ret
                           1665 ;------------------------------------------------------------
                           1666 ;Allocation info for local variables in function 'terminate'
                           1667 ;------------------------------------------------------------
                           1668 ;------------------------------------------------------------
                           1669 ;	main.c:60: void terminate() {
                           1670 ;	-----------------------------------------
                           1671 ;	 function terminate
                           1672 ;	-----------------------------------------
   0A31                    1673 _terminate:
                           1674 ;	main.c:61: P3 = 0x55;
   0A31 75 B0 55           1675 	mov	_P3,#0x55
   0A34 22                 1676 	ret
                           1677 ;------------------------------------------------------------
                           1678 ;Allocation info for local variables in function 'main'
                           1679 ;------------------------------------------------------------
                           1680 ;------------------------------------------------------------
                           1681 ;	main.c:64: int main() {
                           1682 ;	-----------------------------------------
                           1683 ;	 function main
                           1684 ;	-----------------------------------------
   0A35                    1685 _main:
                           1686 ;	main.c:65: write_montgomery();
   0A35 12 09 64           1687 	lcall	_write_montgomery
                           1688 ;	main.c:66: montgomery();
   0A38 12 0A 2A           1689 	lcall	_montgomery
                           1690 ;	main.c:67: read_r();
   0A3B 12 0A 1C           1691 	lcall	_read_r
                           1692 ;	main.c:69: P1 = 0;
                           1693 ;	main.c:71: for (i = 0; i < SIZE; i++) {
   0A3E E4                 1694 	clr	a
   0A3F F5 90              1695 	mov	_P1,a
   0A41 F5 08              1696 	mov	_i,a
   0A43 F5 09              1697 	mov	(_i + 1),a
   0A45                    1698 00104$:
   0A45 C3                 1699 	clr	c
   0A46 E5 08              1700 	mov	a,_i
   0A48 94 80              1701 	subb	a,#0x80
   0A4A E5 09              1702 	mov	a,(_i + 1)
   0A4C 94 00              1703 	subb	a,#0x00
   0A4E 50 21              1704 	jnc	00107$
                           1705 ;	main.c:72: shared_a[i] = r[i];
   0A50 AA 08              1706 	mov	r2,_i
   0A52 74 40              1707 	mov	a,#(_shared_a >> 8)
   0A54 25 09              1708 	add	a,(_i + 1)
   0A56 FB                 1709 	mov	r3,a
   0A57 85 08 82           1710 	mov	dpl,_i
   0A5A 74 02              1711 	mov	a,#(_r >> 8)
   0A5C 25 09              1712 	add	a,(_i + 1)
   0A5E F5 83              1713 	mov	dph,a
   0A60 E0                 1714 	movx	a,@dptr
   0A61 FC                 1715 	mov	r4,a
   0A62 8A 82              1716 	mov	dpl,r2
   0A64 8B 83              1717 	mov	dph,r3
   0A66 F0                 1718 	movx	@dptr,a
                           1719 ;	main.c:71: for (i = 0; i < SIZE; i++) {
   0A67 05 08              1720 	inc	_i
   0A69 E4                 1721 	clr	a
   0A6A B5 08 D8           1722 	cjne	a,_i,00104$
   0A6D 05 09              1723 	inc	(_i + 1)
   0A6F 80 D4              1724 	sjmp	00104$
   0A71                    1725 00107$:
                           1726 ;	main.c:75: P0 = ins_write_data;
   0A71 75 80 01           1727 	mov	_P0,#0x01
                           1728 ;	main.c:76: P0 = ins_idle;
   0A74 75 80 00           1729 	mov	_P0,#0x00
                           1730 ;	main.c:78: while (P1 == 0) {}
   0A77                    1731 00101$:
   0A77 E5 90              1732 	mov	a,_P1
   0A79 60 FC              1733 	jz	00101$
                           1734 ;	main.c:79: P0 = ins_ack;
   0A7B 75 80 04           1735 	mov	_P0,#0x04
                           1736 ;	main.c:81: terminate();
   0A7E 12 0A 31           1737 	lcall	_terminate
                           1738 ;	main.c:82: return 0;
   0A81 90 00 00           1739 	mov	dptr,#0x0000
   0A84 22                 1740 	ret
                           1741 	.area CSEG    (CODE)
                           1742 	.area CONST   (CODE)
                           1743 	.area XINIT   (CODE)
                           1744 	.area CABS    (ABS,CODE)
