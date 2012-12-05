                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Sun Dec  2 14:20:21 2012
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
                            318 ;	main.c:10: volatile __xdata __at (0x0000) unsigned char m[SIZE] = {0x0D,0xD5,0x0F,0x26,0x8F,0x95,0xAD,0x59,0x24,0xA0,0xDA,0x8F,0xAE,0x27,0x9F,0xD4,0x7A,0xE7,0x7E,0xBF,0xDF,0x2D,0x12,0xDA,0x43,0x14,0x0F,0x20,0xFA,0x90,0x46,0xD5,0x39,0xF1,0xAA,0x90,0x02,0xE4,0xDC,0xA3,0x9C,0xA4,0xF2,0xFF,0x30,0xC1,0x14,0x22,0x7E,0x11,0xE3,0x77,0x00,0x1A,0xAD,0x50,0xE1,0x7B,0x91,0x4A,0x92,0x08,0x65,0x20,0x75,0x68,0x74,0xB3,0x65,0xB0,0x0C,0xC6,0x8B,0xC9,0x10,0xEF,0xC4,0x4E,0x45,0xAD,0xFA,0xD2,0x4F,0x06,0xEC,0x29,0x5C,0xF3,0xAA,0x97,0x82,0x70,0xB8,0x44,0x06,0x86,0xE0,0x67,0xFC,0x70,0x79,0xA4,0xF0,0xB3,0x0B,0x48,0xCD,0xF0,0x6C,0x6F,0x0B,0x8B,0x25,0x67,0x46,0x8F,0xEC,0xA4,0xC1,0xE3,0x6A,0x47,0x0D,0xEB,0xA3,0x81,0xB5,0xBA};
   0061 90 00 00            319 	mov	dptr,#_m
   0064 74 0D               320 	mov	a,#0x0D
   0066 F0                  321 	movx	@dptr,a
   0067 90 00 01            322 	mov	dptr,#(_m + 0x0001)
   006A 74 D5               323 	mov	a,#0xD5
   006C F0                  324 	movx	@dptr,a
   006D 90 00 02            325 	mov	dptr,#(_m + 0x0002)
   0070 74 0F               326 	mov	a,#0x0F
   0072 F0                  327 	movx	@dptr,a
   0073 90 00 03            328 	mov	dptr,#(_m + 0x0003)
   0076 74 26               329 	mov	a,#0x26
   0078 F0                  330 	movx	@dptr,a
   0079 90 00 04            331 	mov	dptr,#(_m + 0x0004)
   007C 74 8F               332 	mov	a,#0x8F
   007E F0                  333 	movx	@dptr,a
   007F 90 00 05            334 	mov	dptr,#(_m + 0x0005)
   0082 74 95               335 	mov	a,#0x95
   0084 F0                  336 	movx	@dptr,a
   0085 90 00 06            337 	mov	dptr,#(_m + 0x0006)
   0088 74 AD               338 	mov	a,#0xAD
   008A F0                  339 	movx	@dptr,a
   008B 90 00 07            340 	mov	dptr,#(_m + 0x0007)
   008E 74 59               341 	mov	a,#0x59
   0090 F0                  342 	movx	@dptr,a
   0091 90 00 08            343 	mov	dptr,#(_m + 0x0008)
   0094 74 24               344 	mov	a,#0x24
   0096 F0                  345 	movx	@dptr,a
   0097 90 00 09            346 	mov	dptr,#(_m + 0x0009)
   009A 74 A0               347 	mov	a,#0xA0
   009C F0                  348 	movx	@dptr,a
   009D 90 00 0A            349 	mov	dptr,#(_m + 0x000a)
   00A0 74 DA               350 	mov	a,#0xDA
   00A2 F0                  351 	movx	@dptr,a
   00A3 90 00 0B            352 	mov	dptr,#(_m + 0x000b)
   00A6 74 8F               353 	mov	a,#0x8F
   00A8 F0                  354 	movx	@dptr,a
   00A9 90 00 0C            355 	mov	dptr,#(_m + 0x000c)
   00AC 74 AE               356 	mov	a,#0xAE
   00AE F0                  357 	movx	@dptr,a
   00AF 90 00 0D            358 	mov	dptr,#(_m + 0x000d)
   00B2 74 27               359 	mov	a,#0x27
   00B4 F0                  360 	movx	@dptr,a
   00B5 90 00 0E            361 	mov	dptr,#(_m + 0x000e)
   00B8 74 9F               362 	mov	a,#0x9F
   00BA F0                  363 	movx	@dptr,a
   00BB 90 00 0F            364 	mov	dptr,#(_m + 0x000f)
   00BE 74 D4               365 	mov	a,#0xD4
   00C0 F0                  366 	movx	@dptr,a
   00C1 90 00 10            367 	mov	dptr,#(_m + 0x0010)
   00C4 74 7A               368 	mov	a,#0x7A
   00C6 F0                  369 	movx	@dptr,a
   00C7 90 00 11            370 	mov	dptr,#(_m + 0x0011)
   00CA 74 E7               371 	mov	a,#0xE7
   00CC F0                  372 	movx	@dptr,a
   00CD 90 00 12            373 	mov	dptr,#(_m + 0x0012)
   00D0 74 7E               374 	mov	a,#0x7E
   00D2 F0                  375 	movx	@dptr,a
   00D3 90 00 13            376 	mov	dptr,#(_m + 0x0013)
   00D6 74 BF               377 	mov	a,#0xBF
   00D8 F0                  378 	movx	@dptr,a
   00D9 90 00 14            379 	mov	dptr,#(_m + 0x0014)
   00DC 74 DF               380 	mov	a,#0xDF
   00DE F0                  381 	movx	@dptr,a
   00DF 90 00 15            382 	mov	dptr,#(_m + 0x0015)
   00E2 74 2D               383 	mov	a,#0x2D
   00E4 F0                  384 	movx	@dptr,a
   00E5 90 00 16            385 	mov	dptr,#(_m + 0x0016)
   00E8 74 12               386 	mov	a,#0x12
   00EA F0                  387 	movx	@dptr,a
   00EB 90 00 17            388 	mov	dptr,#(_m + 0x0017)
   00EE 74 DA               389 	mov	a,#0xDA
   00F0 F0                  390 	movx	@dptr,a
   00F1 90 00 18            391 	mov	dptr,#(_m + 0x0018)
   00F4 74 43               392 	mov	a,#0x43
   00F6 F0                  393 	movx	@dptr,a
   00F7 90 00 19            394 	mov	dptr,#(_m + 0x0019)
   00FA 74 14               395 	mov	a,#0x14
   00FC F0                  396 	movx	@dptr,a
   00FD 90 00 1A            397 	mov	dptr,#(_m + 0x001a)
   0100 74 0F               398 	mov	a,#0x0F
   0102 F0                  399 	movx	@dptr,a
   0103 90 00 1B            400 	mov	dptr,#(_m + 0x001b)
   0106 74 20               401 	mov	a,#0x20
   0108 F0                  402 	movx	@dptr,a
   0109 90 00 1C            403 	mov	dptr,#(_m + 0x001c)
   010C 74 FA               404 	mov	a,#0xFA
   010E F0                  405 	movx	@dptr,a
   010F 90 00 1D            406 	mov	dptr,#(_m + 0x001d)
   0112 74 90               407 	mov	a,#0x90
   0114 F0                  408 	movx	@dptr,a
   0115 90 00 1E            409 	mov	dptr,#(_m + 0x001e)
   0118 74 46               410 	mov	a,#0x46
   011A F0                  411 	movx	@dptr,a
   011B 90 00 1F            412 	mov	dptr,#(_m + 0x001f)
   011E 74 D5               413 	mov	a,#0xD5
   0120 F0                  414 	movx	@dptr,a
   0121 90 00 20            415 	mov	dptr,#(_m + 0x0020)
   0124 74 39               416 	mov	a,#0x39
   0126 F0                  417 	movx	@dptr,a
   0127 90 00 21            418 	mov	dptr,#(_m + 0x0021)
   012A 74 F1               419 	mov	a,#0xF1
   012C F0                  420 	movx	@dptr,a
   012D 90 00 22            421 	mov	dptr,#(_m + 0x0022)
   0130 74 AA               422 	mov	a,#0xAA
   0132 F0                  423 	movx	@dptr,a
   0133 90 00 23            424 	mov	dptr,#(_m + 0x0023)
   0136 74 90               425 	mov	a,#0x90
   0138 F0                  426 	movx	@dptr,a
   0139 90 00 24            427 	mov	dptr,#(_m + 0x0024)
   013C 74 02               428 	mov	a,#0x02
   013E F0                  429 	movx	@dptr,a
   013F 90 00 25            430 	mov	dptr,#(_m + 0x0025)
   0142 74 E4               431 	mov	a,#0xE4
   0144 F0                  432 	movx	@dptr,a
   0145 90 00 26            433 	mov	dptr,#(_m + 0x0026)
   0148 74 DC               434 	mov	a,#0xDC
   014A F0                  435 	movx	@dptr,a
   014B 90 00 27            436 	mov	dptr,#(_m + 0x0027)
   014E 74 A3               437 	mov	a,#0xA3
   0150 F0                  438 	movx	@dptr,a
   0151 90 00 28            439 	mov	dptr,#(_m + 0x0028)
   0154 74 9C               440 	mov	a,#0x9C
   0156 F0                  441 	movx	@dptr,a
   0157 90 00 29            442 	mov	dptr,#(_m + 0x0029)
   015A 74 A4               443 	mov	a,#0xA4
   015C F0                  444 	movx	@dptr,a
   015D 90 00 2A            445 	mov	dptr,#(_m + 0x002a)
   0160 74 F2               446 	mov	a,#0xF2
   0162 F0                  447 	movx	@dptr,a
   0163 90 00 2B            448 	mov	dptr,#(_m + 0x002b)
   0166 74 FF               449 	mov	a,#0xFF
   0168 F0                  450 	movx	@dptr,a
   0169 90 00 2C            451 	mov	dptr,#(_m + 0x002c)
   016C 74 30               452 	mov	a,#0x30
   016E F0                  453 	movx	@dptr,a
   016F 90 00 2D            454 	mov	dptr,#(_m + 0x002d)
   0172 74 C1               455 	mov	a,#0xC1
   0174 F0                  456 	movx	@dptr,a
   0175 90 00 2E            457 	mov	dptr,#(_m + 0x002e)
   0178 74 14               458 	mov	a,#0x14
   017A F0                  459 	movx	@dptr,a
   017B 90 00 2F            460 	mov	dptr,#(_m + 0x002f)
   017E 74 22               461 	mov	a,#0x22
   0180 F0                  462 	movx	@dptr,a
   0181 90 00 30            463 	mov	dptr,#(_m + 0x0030)
   0184 74 7E               464 	mov	a,#0x7E
   0186 F0                  465 	movx	@dptr,a
   0187 90 00 31            466 	mov	dptr,#(_m + 0x0031)
   018A 74 11               467 	mov	a,#0x11
   018C F0                  468 	movx	@dptr,a
   018D 90 00 32            469 	mov	dptr,#(_m + 0x0032)
   0190 74 E3               470 	mov	a,#0xE3
   0192 F0                  471 	movx	@dptr,a
   0193 90 00 33            472 	mov	dptr,#(_m + 0x0033)
   0196 74 77               473 	mov	a,#0x77
   0198 F0                  474 	movx	@dptr,a
   0199 90 00 34            475 	mov	dptr,#(_m + 0x0034)
   019C E4                  476 	clr	a
   019D F0                  477 	movx	@dptr,a
   019E 90 00 35            478 	mov	dptr,#(_m + 0x0035)
   01A1 74 1A               479 	mov	a,#0x1A
   01A3 F0                  480 	movx	@dptr,a
   01A4 90 00 36            481 	mov	dptr,#(_m + 0x0036)
   01A7 74 AD               482 	mov	a,#0xAD
   01A9 F0                  483 	movx	@dptr,a
   01AA 90 00 37            484 	mov	dptr,#(_m + 0x0037)
   01AD 74 50               485 	mov	a,#0x50
   01AF F0                  486 	movx	@dptr,a
   01B0 90 00 38            487 	mov	dptr,#(_m + 0x0038)
   01B3 74 E1               488 	mov	a,#0xE1
   01B5 F0                  489 	movx	@dptr,a
   01B6 90 00 39            490 	mov	dptr,#(_m + 0x0039)
   01B9 74 7B               491 	mov	a,#0x7B
   01BB F0                  492 	movx	@dptr,a
   01BC 90 00 3A            493 	mov	dptr,#(_m + 0x003a)
   01BF 74 91               494 	mov	a,#0x91
   01C1 F0                  495 	movx	@dptr,a
   01C2 90 00 3B            496 	mov	dptr,#(_m + 0x003b)
   01C5 74 4A               497 	mov	a,#0x4A
   01C7 F0                  498 	movx	@dptr,a
   01C8 90 00 3C            499 	mov	dptr,#(_m + 0x003c)
   01CB 74 92               500 	mov	a,#0x92
   01CD F0                  501 	movx	@dptr,a
   01CE 90 00 3D            502 	mov	dptr,#(_m + 0x003d)
   01D1 74 08               503 	mov	a,#0x08
   01D3 F0                  504 	movx	@dptr,a
   01D4 90 00 3E            505 	mov	dptr,#(_m + 0x003e)
   01D7 74 65               506 	mov	a,#0x65
   01D9 F0                  507 	movx	@dptr,a
   01DA 90 00 3F            508 	mov	dptr,#(_m + 0x003f)
   01DD 74 20               509 	mov	a,#0x20
   01DF F0                  510 	movx	@dptr,a
   01E0 90 00 40            511 	mov	dptr,#(_m + 0x0040)
   01E3 74 75               512 	mov	a,#0x75
   01E5 F0                  513 	movx	@dptr,a
   01E6 90 00 41            514 	mov	dptr,#(_m + 0x0041)
   01E9 74 68               515 	mov	a,#0x68
   01EB F0                  516 	movx	@dptr,a
   01EC 90 00 42            517 	mov	dptr,#(_m + 0x0042)
   01EF 74 74               518 	mov	a,#0x74
   01F1 F0                  519 	movx	@dptr,a
   01F2 90 00 43            520 	mov	dptr,#(_m + 0x0043)
   01F5 74 B3               521 	mov	a,#0xB3
   01F7 F0                  522 	movx	@dptr,a
   01F8 90 00 44            523 	mov	dptr,#(_m + 0x0044)
   01FB 74 65               524 	mov	a,#0x65
   01FD F0                  525 	movx	@dptr,a
   01FE 90 00 45            526 	mov	dptr,#(_m + 0x0045)
   0201 74 B0               527 	mov	a,#0xB0
   0203 F0                  528 	movx	@dptr,a
   0204 90 00 46            529 	mov	dptr,#(_m + 0x0046)
   0207 74 0C               530 	mov	a,#0x0C
   0209 F0                  531 	movx	@dptr,a
   020A 90 00 47            532 	mov	dptr,#(_m + 0x0047)
   020D 74 C6               533 	mov	a,#0xC6
   020F F0                  534 	movx	@dptr,a
   0210 90 00 48            535 	mov	dptr,#(_m + 0x0048)
   0213 74 8B               536 	mov	a,#0x8B
   0215 F0                  537 	movx	@dptr,a
   0216 90 00 49            538 	mov	dptr,#(_m + 0x0049)
   0219 74 C9               539 	mov	a,#0xC9
   021B F0                  540 	movx	@dptr,a
   021C 90 00 4A            541 	mov	dptr,#(_m + 0x004a)
   021F 74 10               542 	mov	a,#0x10
   0221 F0                  543 	movx	@dptr,a
   0222 90 00 4B            544 	mov	dptr,#(_m + 0x004b)
   0225 74 EF               545 	mov	a,#0xEF
   0227 F0                  546 	movx	@dptr,a
   0228 90 00 4C            547 	mov	dptr,#(_m + 0x004c)
   022B 74 C4               548 	mov	a,#0xC4
   022D F0                  549 	movx	@dptr,a
   022E 90 00 4D            550 	mov	dptr,#(_m + 0x004d)
   0231 74 4E               551 	mov	a,#0x4E
   0233 F0                  552 	movx	@dptr,a
   0234 90 00 4E            553 	mov	dptr,#(_m + 0x004e)
   0237 74 45               554 	mov	a,#0x45
   0239 F0                  555 	movx	@dptr,a
   023A 90 00 4F            556 	mov	dptr,#(_m + 0x004f)
   023D 74 AD               557 	mov	a,#0xAD
   023F F0                  558 	movx	@dptr,a
   0240 90 00 50            559 	mov	dptr,#(_m + 0x0050)
   0243 74 FA               560 	mov	a,#0xFA
   0245 F0                  561 	movx	@dptr,a
   0246 90 00 51            562 	mov	dptr,#(_m + 0x0051)
   0249 74 D2               563 	mov	a,#0xD2
   024B F0                  564 	movx	@dptr,a
   024C 90 00 52            565 	mov	dptr,#(_m + 0x0052)
   024F 74 4F               566 	mov	a,#0x4F
   0251 F0                  567 	movx	@dptr,a
   0252 90 00 53            568 	mov	dptr,#(_m + 0x0053)
   0255 74 06               569 	mov	a,#0x06
   0257 F0                  570 	movx	@dptr,a
   0258 90 00 54            571 	mov	dptr,#(_m + 0x0054)
   025B 74 EC               572 	mov	a,#0xEC
   025D F0                  573 	movx	@dptr,a
   025E 90 00 55            574 	mov	dptr,#(_m + 0x0055)
   0261 74 29               575 	mov	a,#0x29
   0263 F0                  576 	movx	@dptr,a
   0264 90 00 56            577 	mov	dptr,#(_m + 0x0056)
   0267 74 5C               578 	mov	a,#0x5C
   0269 F0                  579 	movx	@dptr,a
   026A 90 00 57            580 	mov	dptr,#(_m + 0x0057)
   026D 74 F3               581 	mov	a,#0xF3
   026F F0                  582 	movx	@dptr,a
   0270 90 00 58            583 	mov	dptr,#(_m + 0x0058)
   0273 74 AA               584 	mov	a,#0xAA
   0275 F0                  585 	movx	@dptr,a
   0276 90 00 59            586 	mov	dptr,#(_m + 0x0059)
   0279 74 97               587 	mov	a,#0x97
   027B F0                  588 	movx	@dptr,a
   027C 90 00 5A            589 	mov	dptr,#(_m + 0x005a)
   027F 74 82               590 	mov	a,#0x82
   0281 F0                  591 	movx	@dptr,a
   0282 90 00 5B            592 	mov	dptr,#(_m + 0x005b)
   0285 74 70               593 	mov	a,#0x70
   0287 F0                  594 	movx	@dptr,a
   0288 90 00 5C            595 	mov	dptr,#(_m + 0x005c)
   028B 74 B8               596 	mov	a,#0xB8
   028D F0                  597 	movx	@dptr,a
   028E 90 00 5D            598 	mov	dptr,#(_m + 0x005d)
   0291 74 44               599 	mov	a,#0x44
   0293 F0                  600 	movx	@dptr,a
   0294 90 00 5E            601 	mov	dptr,#(_m + 0x005e)
   0297 74 06               602 	mov	a,#0x06
   0299 F0                  603 	movx	@dptr,a
   029A 90 00 5F            604 	mov	dptr,#(_m + 0x005f)
   029D 74 86               605 	mov	a,#0x86
   029F F0                  606 	movx	@dptr,a
   02A0 90 00 60            607 	mov	dptr,#(_m + 0x0060)
   02A3 74 E0               608 	mov	a,#0xE0
   02A5 F0                  609 	movx	@dptr,a
   02A6 90 00 61            610 	mov	dptr,#(_m + 0x0061)
   02A9 74 67               611 	mov	a,#0x67
   02AB F0                  612 	movx	@dptr,a
   02AC 90 00 62            613 	mov	dptr,#(_m + 0x0062)
   02AF 74 FC               614 	mov	a,#0xFC
   02B1 F0                  615 	movx	@dptr,a
   02B2 90 00 63            616 	mov	dptr,#(_m + 0x0063)
   02B5 74 70               617 	mov	a,#0x70
   02B7 F0                  618 	movx	@dptr,a
   02B8 90 00 64            619 	mov	dptr,#(_m + 0x0064)
   02BB 74 79               620 	mov	a,#0x79
   02BD F0                  621 	movx	@dptr,a
   02BE 90 00 65            622 	mov	dptr,#(_m + 0x0065)
   02C1 74 A4               623 	mov	a,#0xA4
   02C3 F0                  624 	movx	@dptr,a
   02C4 90 00 66            625 	mov	dptr,#(_m + 0x0066)
   02C7 74 F0               626 	mov	a,#0xF0
   02C9 F0                  627 	movx	@dptr,a
   02CA 90 00 67            628 	mov	dptr,#(_m + 0x0067)
   02CD 74 B3               629 	mov	a,#0xB3
   02CF F0                  630 	movx	@dptr,a
   02D0 90 00 68            631 	mov	dptr,#(_m + 0x0068)
   02D3 74 0B               632 	mov	a,#0x0B
   02D5 F0                  633 	movx	@dptr,a
   02D6 90 00 69            634 	mov	dptr,#(_m + 0x0069)
   02D9 74 48               635 	mov	a,#0x48
   02DB F0                  636 	movx	@dptr,a
   02DC 90 00 6A            637 	mov	dptr,#(_m + 0x006a)
   02DF 74 CD               638 	mov	a,#0xCD
   02E1 F0                  639 	movx	@dptr,a
   02E2 90 00 6B            640 	mov	dptr,#(_m + 0x006b)
   02E5 74 F0               641 	mov	a,#0xF0
   02E7 F0                  642 	movx	@dptr,a
   02E8 90 00 6C            643 	mov	dptr,#(_m + 0x006c)
   02EB 74 6C               644 	mov	a,#0x6C
   02ED F0                  645 	movx	@dptr,a
   02EE 90 00 6D            646 	mov	dptr,#(_m + 0x006d)
   02F1 74 6F               647 	mov	a,#0x6F
   02F3 F0                  648 	movx	@dptr,a
   02F4 90 00 6E            649 	mov	dptr,#(_m + 0x006e)
   02F7 74 0B               650 	mov	a,#0x0B
   02F9 F0                  651 	movx	@dptr,a
   02FA 90 00 6F            652 	mov	dptr,#(_m + 0x006f)
   02FD 74 8B               653 	mov	a,#0x8B
   02FF F0                  654 	movx	@dptr,a
   0300 90 00 70            655 	mov	dptr,#(_m + 0x0070)
   0303 74 25               656 	mov	a,#0x25
   0305 F0                  657 	movx	@dptr,a
   0306 90 00 71            658 	mov	dptr,#(_m + 0x0071)
   0309 74 67               659 	mov	a,#0x67
   030B F0                  660 	movx	@dptr,a
   030C 90 00 72            661 	mov	dptr,#(_m + 0x0072)
   030F 74 46               662 	mov	a,#0x46
   0311 F0                  663 	movx	@dptr,a
   0312 90 00 73            664 	mov	dptr,#(_m + 0x0073)
   0315 74 8F               665 	mov	a,#0x8F
   0317 F0                  666 	movx	@dptr,a
   0318 90 00 74            667 	mov	dptr,#(_m + 0x0074)
   031B 74 EC               668 	mov	a,#0xEC
   031D F0                  669 	movx	@dptr,a
   031E 90 00 75            670 	mov	dptr,#(_m + 0x0075)
   0321 74 A4               671 	mov	a,#0xA4
   0323 F0                  672 	movx	@dptr,a
   0324 90 00 76            673 	mov	dptr,#(_m + 0x0076)
   0327 74 C1               674 	mov	a,#0xC1
   0329 F0                  675 	movx	@dptr,a
   032A 90 00 77            676 	mov	dptr,#(_m + 0x0077)
   032D 74 E3               677 	mov	a,#0xE3
   032F F0                  678 	movx	@dptr,a
   0330 90 00 78            679 	mov	dptr,#(_m + 0x0078)
   0333 74 6A               680 	mov	a,#0x6A
   0335 F0                  681 	movx	@dptr,a
   0336 90 00 79            682 	mov	dptr,#(_m + 0x0079)
   0339 74 47               683 	mov	a,#0x47
   033B F0                  684 	movx	@dptr,a
   033C 90 00 7A            685 	mov	dptr,#(_m + 0x007a)
   033F 74 0D               686 	mov	a,#0x0D
   0341 F0                  687 	movx	@dptr,a
   0342 90 00 7B            688 	mov	dptr,#(_m + 0x007b)
   0345 74 EB               689 	mov	a,#0xEB
   0347 F0                  690 	movx	@dptr,a
   0348 90 00 7C            691 	mov	dptr,#(_m + 0x007c)
   034B 74 A3               692 	mov	a,#0xA3
   034D F0                  693 	movx	@dptr,a
   034E 90 00 7D            694 	mov	dptr,#(_m + 0x007d)
   0351 74 81               695 	mov	a,#0x81
   0353 F0                  696 	movx	@dptr,a
   0354 90 00 7E            697 	mov	dptr,#(_m + 0x007e)
   0357 74 B5               698 	mov	a,#0xB5
   0359 F0                  699 	movx	@dptr,a
   035A 90 00 7F            700 	mov	dptr,#(_m + 0x007f)
   035D 74 BA               701 	mov	a,#0xBA
   035F F0                  702 	movx	@dptr,a
                            703 ;	main.c:11: volatile __xdata __at (0x0080) unsigned char a[SIZE] = {0xA3,0x71,0x79,0x01,0xFC,0xF2,0x93,0xC7,0x1C,0x69,0x2D,0x67,0x38,0x2B,0x7C,0x1A,0x40,0x88,0xBA,0x9B,0x10,0x53,0x65,0xED,0xFE,0x39,0xB4,0x77,0x3B,0xC8,0x9B,0xB2,0xE4,0xB1,0xA3,0xC9,0xCD,0xC8,0xF2,0x69,0x01,0x91,0x87,0x67,0xAC,0x6E,0x56,0xF1,0x60,0xBF,0x1E,0x0F,0x53,0xA8,0xAF,0x40,0xDB,0x76,0xB2,0xEA,0x90,0xDD,0xFF,0x40,0x0C,0xD2,0x4D,0xDC,0x5E,0xB3,0xE7,0xFA,0xB4,0x53,0x5E,0x75,0x0B,0x91,0x92,0x14,0x7E,0xD8,0xB8,0xA7,0x05,0x95,0xD0,0x55,0x97,0x30,0x78,0x41,0x81,0xEF,0xC6,0x64,0x9F,0x4A,0x9C,0x4A,0x3A,0x0B,0xCA,0xD8,0x9C,0x1A,0x64,0xA7,0xA9,0x6E,0xC8,0x0A,0xE5,0xCE,0xE2,0x3B,0x73,0x8A,0xEF,0xF0,0xE4,0xA6,0x40,0x26,0xF3,0xD9,0x50,0x1F};
   0360 90 00 80            704 	mov	dptr,#_a
   0363 74 A3               705 	mov	a,#0xA3
   0365 F0                  706 	movx	@dptr,a
   0366 90 00 81            707 	mov	dptr,#(_a + 0x0001)
   0369 74 71               708 	mov	a,#0x71
   036B F0                  709 	movx	@dptr,a
   036C 90 00 82            710 	mov	dptr,#(_a + 0x0002)
   036F 74 79               711 	mov	a,#0x79
   0371 F0                  712 	movx	@dptr,a
   0372 90 00 83            713 	mov	dptr,#(_a + 0x0003)
   0375 74 01               714 	mov	a,#0x01
   0377 F0                  715 	movx	@dptr,a
   0378 90 00 84            716 	mov	dptr,#(_a + 0x0004)
   037B 74 FC               717 	mov	a,#0xFC
   037D F0                  718 	movx	@dptr,a
   037E 90 00 85            719 	mov	dptr,#(_a + 0x0005)
   0381 74 F2               720 	mov	a,#0xF2
   0383 F0                  721 	movx	@dptr,a
   0384 90 00 86            722 	mov	dptr,#(_a + 0x0006)
   0387 74 93               723 	mov	a,#0x93
   0389 F0                  724 	movx	@dptr,a
   038A 90 00 87            725 	mov	dptr,#(_a + 0x0007)
   038D 74 C7               726 	mov	a,#0xC7
   038F F0                  727 	movx	@dptr,a
   0390 90 00 88            728 	mov	dptr,#(_a + 0x0008)
   0393 74 1C               729 	mov	a,#0x1C
   0395 F0                  730 	movx	@dptr,a
   0396 90 00 89            731 	mov	dptr,#(_a + 0x0009)
   0399 74 69               732 	mov	a,#0x69
   039B F0                  733 	movx	@dptr,a
   039C 90 00 8A            734 	mov	dptr,#(_a + 0x000a)
   039F 74 2D               735 	mov	a,#0x2D
   03A1 F0                  736 	movx	@dptr,a
   03A2 90 00 8B            737 	mov	dptr,#(_a + 0x000b)
   03A5 74 67               738 	mov	a,#0x67
   03A7 F0                  739 	movx	@dptr,a
   03A8 90 00 8C            740 	mov	dptr,#(_a + 0x000c)
   03AB 74 38               741 	mov	a,#0x38
   03AD F0                  742 	movx	@dptr,a
   03AE 90 00 8D            743 	mov	dptr,#(_a + 0x000d)
   03B1 74 2B               744 	mov	a,#0x2B
   03B3 F0                  745 	movx	@dptr,a
   03B4 90 00 8E            746 	mov	dptr,#(_a + 0x000e)
   03B7 74 7C               747 	mov	a,#0x7C
   03B9 F0                  748 	movx	@dptr,a
   03BA 90 00 8F            749 	mov	dptr,#(_a + 0x000f)
   03BD 74 1A               750 	mov	a,#0x1A
   03BF F0                  751 	movx	@dptr,a
   03C0 90 00 90            752 	mov	dptr,#(_a + 0x0010)
   03C3 74 40               753 	mov	a,#0x40
   03C5 F0                  754 	movx	@dptr,a
   03C6 90 00 91            755 	mov	dptr,#(_a + 0x0011)
   03C9 74 88               756 	mov	a,#0x88
   03CB F0                  757 	movx	@dptr,a
   03CC 90 00 92            758 	mov	dptr,#(_a + 0x0012)
   03CF 74 BA               759 	mov	a,#0xBA
   03D1 F0                  760 	movx	@dptr,a
   03D2 90 00 93            761 	mov	dptr,#(_a + 0x0013)
   03D5 74 9B               762 	mov	a,#0x9B
   03D7 F0                  763 	movx	@dptr,a
   03D8 90 00 94            764 	mov	dptr,#(_a + 0x0014)
   03DB 74 10               765 	mov	a,#0x10
   03DD F0                  766 	movx	@dptr,a
   03DE 90 00 95            767 	mov	dptr,#(_a + 0x0015)
   03E1 74 53               768 	mov	a,#0x53
   03E3 F0                  769 	movx	@dptr,a
   03E4 90 00 96            770 	mov	dptr,#(_a + 0x0016)
   03E7 74 65               771 	mov	a,#0x65
   03E9 F0                  772 	movx	@dptr,a
   03EA 90 00 97            773 	mov	dptr,#(_a + 0x0017)
   03ED 74 ED               774 	mov	a,#0xED
   03EF F0                  775 	movx	@dptr,a
   03F0 90 00 98            776 	mov	dptr,#(_a + 0x0018)
   03F3 74 FE               777 	mov	a,#0xFE
   03F5 F0                  778 	movx	@dptr,a
   03F6 90 00 99            779 	mov	dptr,#(_a + 0x0019)
   03F9 74 39               780 	mov	a,#0x39
   03FB F0                  781 	movx	@dptr,a
   03FC 90 00 9A            782 	mov	dptr,#(_a + 0x001a)
   03FF 74 B4               783 	mov	a,#0xB4
   0401 F0                  784 	movx	@dptr,a
   0402 90 00 9B            785 	mov	dptr,#(_a + 0x001b)
   0405 74 77               786 	mov	a,#0x77
   0407 F0                  787 	movx	@dptr,a
   0408 90 00 9C            788 	mov	dptr,#(_a + 0x001c)
   040B 74 3B               789 	mov	a,#0x3B
   040D F0                  790 	movx	@dptr,a
   040E 90 00 9D            791 	mov	dptr,#(_a + 0x001d)
   0411 74 C8               792 	mov	a,#0xC8
   0413 F0                  793 	movx	@dptr,a
   0414 90 00 9E            794 	mov	dptr,#(_a + 0x001e)
   0417 74 9B               795 	mov	a,#0x9B
   0419 F0                  796 	movx	@dptr,a
   041A 90 00 9F            797 	mov	dptr,#(_a + 0x001f)
   041D 74 B2               798 	mov	a,#0xB2
   041F F0                  799 	movx	@dptr,a
   0420 90 00 A0            800 	mov	dptr,#(_a + 0x0020)
   0423 74 E4               801 	mov	a,#0xE4
   0425 F0                  802 	movx	@dptr,a
   0426 90 00 A1            803 	mov	dptr,#(_a + 0x0021)
   0429 74 B1               804 	mov	a,#0xB1
   042B F0                  805 	movx	@dptr,a
   042C 90 00 A2            806 	mov	dptr,#(_a + 0x0022)
   042F 74 A3               807 	mov	a,#0xA3
   0431 F0                  808 	movx	@dptr,a
   0432 90 00 A3            809 	mov	dptr,#(_a + 0x0023)
   0435 74 C9               810 	mov	a,#0xC9
   0437 F0                  811 	movx	@dptr,a
   0438 90 00 A4            812 	mov	dptr,#(_a + 0x0024)
   043B 74 CD               813 	mov	a,#0xCD
   043D F0                  814 	movx	@dptr,a
   043E 90 00 A5            815 	mov	dptr,#(_a + 0x0025)
   0441 74 C8               816 	mov	a,#0xC8
   0443 F0                  817 	movx	@dptr,a
   0444 90 00 A6            818 	mov	dptr,#(_a + 0x0026)
   0447 74 F2               819 	mov	a,#0xF2
   0449 F0                  820 	movx	@dptr,a
   044A 90 00 A7            821 	mov	dptr,#(_a + 0x0027)
   044D 74 69               822 	mov	a,#0x69
   044F F0                  823 	movx	@dptr,a
   0450 90 00 A8            824 	mov	dptr,#(_a + 0x0028)
   0453 74 01               825 	mov	a,#0x01
   0455 F0                  826 	movx	@dptr,a
   0456 90 00 A9            827 	mov	dptr,#(_a + 0x0029)
   0459 74 91               828 	mov	a,#0x91
   045B F0                  829 	movx	@dptr,a
   045C 90 00 AA            830 	mov	dptr,#(_a + 0x002a)
   045F 74 87               831 	mov	a,#0x87
   0461 F0                  832 	movx	@dptr,a
   0462 90 00 AB            833 	mov	dptr,#(_a + 0x002b)
   0465 74 67               834 	mov	a,#0x67
   0467 F0                  835 	movx	@dptr,a
   0468 90 00 AC            836 	mov	dptr,#(_a + 0x002c)
   046B 74 AC               837 	mov	a,#0xAC
   046D F0                  838 	movx	@dptr,a
   046E 90 00 AD            839 	mov	dptr,#(_a + 0x002d)
   0471 74 6E               840 	mov	a,#0x6E
   0473 F0                  841 	movx	@dptr,a
   0474 90 00 AE            842 	mov	dptr,#(_a + 0x002e)
   0477 74 56               843 	mov	a,#0x56
   0479 F0                  844 	movx	@dptr,a
   047A 90 00 AF            845 	mov	dptr,#(_a + 0x002f)
   047D 74 F1               846 	mov	a,#0xF1
   047F F0                  847 	movx	@dptr,a
   0480 90 00 B0            848 	mov	dptr,#(_a + 0x0030)
   0483 74 60               849 	mov	a,#0x60
   0485 F0                  850 	movx	@dptr,a
   0486 90 00 B1            851 	mov	dptr,#(_a + 0x0031)
   0489 74 BF               852 	mov	a,#0xBF
   048B F0                  853 	movx	@dptr,a
   048C 90 00 B2            854 	mov	dptr,#(_a + 0x0032)
   048F 74 1E               855 	mov	a,#0x1E
   0491 F0                  856 	movx	@dptr,a
   0492 90 00 B3            857 	mov	dptr,#(_a + 0x0033)
   0495 74 0F               858 	mov	a,#0x0F
   0497 F0                  859 	movx	@dptr,a
   0498 90 00 B4            860 	mov	dptr,#(_a + 0x0034)
   049B 74 53               861 	mov	a,#0x53
   049D F0                  862 	movx	@dptr,a
   049E 90 00 B5            863 	mov	dptr,#(_a + 0x0035)
   04A1 74 A8               864 	mov	a,#0xA8
   04A3 F0                  865 	movx	@dptr,a
   04A4 90 00 B6            866 	mov	dptr,#(_a + 0x0036)
   04A7 74 AF               867 	mov	a,#0xAF
   04A9 F0                  868 	movx	@dptr,a
   04AA 90 00 B7            869 	mov	dptr,#(_a + 0x0037)
   04AD 74 40               870 	mov	a,#0x40
   04AF F0                  871 	movx	@dptr,a
   04B0 90 00 B8            872 	mov	dptr,#(_a + 0x0038)
   04B3 74 DB               873 	mov	a,#0xDB
   04B5 F0                  874 	movx	@dptr,a
   04B6 90 00 B9            875 	mov	dptr,#(_a + 0x0039)
   04B9 74 76               876 	mov	a,#0x76
   04BB F0                  877 	movx	@dptr,a
   04BC 90 00 BA            878 	mov	dptr,#(_a + 0x003a)
   04BF 74 B2               879 	mov	a,#0xB2
   04C1 F0                  880 	movx	@dptr,a
   04C2 90 00 BB            881 	mov	dptr,#(_a + 0x003b)
   04C5 74 EA               882 	mov	a,#0xEA
   04C7 F0                  883 	movx	@dptr,a
   04C8 90 00 BC            884 	mov	dptr,#(_a + 0x003c)
   04CB 74 90               885 	mov	a,#0x90
   04CD F0                  886 	movx	@dptr,a
   04CE 90 00 BD            887 	mov	dptr,#(_a + 0x003d)
   04D1 74 DD               888 	mov	a,#0xDD
   04D3 F0                  889 	movx	@dptr,a
   04D4 90 00 BE            890 	mov	dptr,#(_a + 0x003e)
   04D7 74 FF               891 	mov	a,#0xFF
   04D9 F0                  892 	movx	@dptr,a
   04DA 90 00 BF            893 	mov	dptr,#(_a + 0x003f)
   04DD 74 40               894 	mov	a,#0x40
   04DF F0                  895 	movx	@dptr,a
   04E0 90 00 C0            896 	mov	dptr,#(_a + 0x0040)
   04E3 74 0C               897 	mov	a,#0x0C
   04E5 F0                  898 	movx	@dptr,a
   04E6 90 00 C1            899 	mov	dptr,#(_a + 0x0041)
   04E9 74 D2               900 	mov	a,#0xD2
   04EB F0                  901 	movx	@dptr,a
   04EC 90 00 C2            902 	mov	dptr,#(_a + 0x0042)
   04EF 74 4D               903 	mov	a,#0x4D
   04F1 F0                  904 	movx	@dptr,a
   04F2 90 00 C3            905 	mov	dptr,#(_a + 0x0043)
   04F5 74 DC               906 	mov	a,#0xDC
   04F7 F0                  907 	movx	@dptr,a
   04F8 90 00 C4            908 	mov	dptr,#(_a + 0x0044)
   04FB 74 5E               909 	mov	a,#0x5E
   04FD F0                  910 	movx	@dptr,a
   04FE 90 00 C5            911 	mov	dptr,#(_a + 0x0045)
   0501 74 B3               912 	mov	a,#0xB3
   0503 F0                  913 	movx	@dptr,a
   0504 90 00 C6            914 	mov	dptr,#(_a + 0x0046)
   0507 74 E7               915 	mov	a,#0xE7
   0509 F0                  916 	movx	@dptr,a
   050A 90 00 C7            917 	mov	dptr,#(_a + 0x0047)
   050D 74 FA               918 	mov	a,#0xFA
   050F F0                  919 	movx	@dptr,a
   0510 90 00 C8            920 	mov	dptr,#(_a + 0x0048)
   0513 74 B4               921 	mov	a,#0xB4
   0515 F0                  922 	movx	@dptr,a
   0516 90 00 C9            923 	mov	dptr,#(_a + 0x0049)
   0519 74 53               924 	mov	a,#0x53
   051B F0                  925 	movx	@dptr,a
   051C 90 00 CA            926 	mov	dptr,#(_a + 0x004a)
   051F 74 5E               927 	mov	a,#0x5E
   0521 F0                  928 	movx	@dptr,a
   0522 90 00 CB            929 	mov	dptr,#(_a + 0x004b)
   0525 74 75               930 	mov	a,#0x75
   0527 F0                  931 	movx	@dptr,a
   0528 90 00 CC            932 	mov	dptr,#(_a + 0x004c)
   052B 74 0B               933 	mov	a,#0x0B
   052D F0                  934 	movx	@dptr,a
   052E 90 00 CD            935 	mov	dptr,#(_a + 0x004d)
   0531 74 91               936 	mov	a,#0x91
   0533 F0                  937 	movx	@dptr,a
   0534 90 00 CE            938 	mov	dptr,#(_a + 0x004e)
   0537 74 92               939 	mov	a,#0x92
   0539 F0                  940 	movx	@dptr,a
   053A 90 00 CF            941 	mov	dptr,#(_a + 0x004f)
   053D 74 14               942 	mov	a,#0x14
   053F F0                  943 	movx	@dptr,a
   0540 90 00 D0            944 	mov	dptr,#(_a + 0x0050)
   0543 74 7E               945 	mov	a,#0x7E
   0545 F0                  946 	movx	@dptr,a
   0546 90 00 D1            947 	mov	dptr,#(_a + 0x0051)
   0549 74 D8               948 	mov	a,#0xD8
   054B F0                  949 	movx	@dptr,a
   054C 90 00 D2            950 	mov	dptr,#(_a + 0x0052)
   054F 74 B8               951 	mov	a,#0xB8
   0551 F0                  952 	movx	@dptr,a
   0552 90 00 D3            953 	mov	dptr,#(_a + 0x0053)
   0555 74 A7               954 	mov	a,#0xA7
   0557 F0                  955 	movx	@dptr,a
   0558 90 00 D4            956 	mov	dptr,#(_a + 0x0054)
   055B 74 05               957 	mov	a,#0x05
   055D F0                  958 	movx	@dptr,a
   055E 90 00 D5            959 	mov	dptr,#(_a + 0x0055)
   0561 74 95               960 	mov	a,#0x95
   0563 F0                  961 	movx	@dptr,a
   0564 90 00 D6            962 	mov	dptr,#(_a + 0x0056)
   0567 74 D0               963 	mov	a,#0xD0
   0569 F0                  964 	movx	@dptr,a
   056A 90 00 D7            965 	mov	dptr,#(_a + 0x0057)
   056D 74 55               966 	mov	a,#0x55
   056F F0                  967 	movx	@dptr,a
   0570 90 00 D8            968 	mov	dptr,#(_a + 0x0058)
   0573 74 97               969 	mov	a,#0x97
   0575 F0                  970 	movx	@dptr,a
   0576 90 00 D9            971 	mov	dptr,#(_a + 0x0059)
   0579 74 30               972 	mov	a,#0x30
   057B F0                  973 	movx	@dptr,a
   057C 90 00 DA            974 	mov	dptr,#(_a + 0x005a)
   057F 74 78               975 	mov	a,#0x78
   0581 F0                  976 	movx	@dptr,a
   0582 90 00 DB            977 	mov	dptr,#(_a + 0x005b)
   0585 74 41               978 	mov	a,#0x41
   0587 F0                  979 	movx	@dptr,a
   0588 90 00 DC            980 	mov	dptr,#(_a + 0x005c)
   058B 74 81               981 	mov	a,#0x81
   058D F0                  982 	movx	@dptr,a
   058E 90 00 DD            983 	mov	dptr,#(_a + 0x005d)
   0591 74 EF               984 	mov	a,#0xEF
   0593 F0                  985 	movx	@dptr,a
   0594 90 00 DE            986 	mov	dptr,#(_a + 0x005e)
   0597 74 C6               987 	mov	a,#0xC6
   0599 F0                  988 	movx	@dptr,a
   059A 90 00 DF            989 	mov	dptr,#(_a + 0x005f)
   059D 74 64               990 	mov	a,#0x64
   059F F0                  991 	movx	@dptr,a
   05A0 90 00 E0            992 	mov	dptr,#(_a + 0x0060)
   05A3 74 9F               993 	mov	a,#0x9F
   05A5 F0                  994 	movx	@dptr,a
   05A6 90 00 E1            995 	mov	dptr,#(_a + 0x0061)
   05A9 74 4A               996 	mov	a,#0x4A
   05AB F0                  997 	movx	@dptr,a
   05AC 90 00 E2            998 	mov	dptr,#(_a + 0x0062)
   05AF 74 9C               999 	mov	a,#0x9C
   05B1 F0                 1000 	movx	@dptr,a
   05B2 90 00 E3           1001 	mov	dptr,#(_a + 0x0063)
   05B5 74 4A              1002 	mov	a,#0x4A
   05B7 F0                 1003 	movx	@dptr,a
   05B8 90 00 E4           1004 	mov	dptr,#(_a + 0x0064)
   05BB 74 3A              1005 	mov	a,#0x3A
   05BD F0                 1006 	movx	@dptr,a
   05BE 90 00 E5           1007 	mov	dptr,#(_a + 0x0065)
   05C1 74 0B              1008 	mov	a,#0x0B
   05C3 F0                 1009 	movx	@dptr,a
   05C4 90 00 E6           1010 	mov	dptr,#(_a + 0x0066)
   05C7 74 CA              1011 	mov	a,#0xCA
   05C9 F0                 1012 	movx	@dptr,a
   05CA 90 00 E7           1013 	mov	dptr,#(_a + 0x0067)
   05CD 74 D8              1014 	mov	a,#0xD8
   05CF F0                 1015 	movx	@dptr,a
   05D0 90 00 E8           1016 	mov	dptr,#(_a + 0x0068)
   05D3 74 9C              1017 	mov	a,#0x9C
   05D5 F0                 1018 	movx	@dptr,a
   05D6 90 00 E9           1019 	mov	dptr,#(_a + 0x0069)
   05D9 74 1A              1020 	mov	a,#0x1A
   05DB F0                 1021 	movx	@dptr,a
   05DC 90 00 EA           1022 	mov	dptr,#(_a + 0x006a)
   05DF 74 64              1023 	mov	a,#0x64
   05E1 F0                 1024 	movx	@dptr,a
   05E2 90 00 EB           1025 	mov	dptr,#(_a + 0x006b)
   05E5 74 A7              1026 	mov	a,#0xA7
   05E7 F0                 1027 	movx	@dptr,a
   05E8 90 00 EC           1028 	mov	dptr,#(_a + 0x006c)
   05EB 74 A9              1029 	mov	a,#0xA9
   05ED F0                 1030 	movx	@dptr,a
   05EE 90 00 ED           1031 	mov	dptr,#(_a + 0x006d)
   05F1 74 6E              1032 	mov	a,#0x6E
   05F3 F0                 1033 	movx	@dptr,a
   05F4 90 00 EE           1034 	mov	dptr,#(_a + 0x006e)
   05F7 74 C8              1035 	mov	a,#0xC8
   05F9 F0                 1036 	movx	@dptr,a
   05FA 90 00 EF           1037 	mov	dptr,#(_a + 0x006f)
   05FD 74 0A              1038 	mov	a,#0x0A
   05FF F0                 1039 	movx	@dptr,a
   0600 90 00 F0           1040 	mov	dptr,#(_a + 0x0070)
   0603 74 E5              1041 	mov	a,#0xE5
   0605 F0                 1042 	movx	@dptr,a
   0606 90 00 F1           1043 	mov	dptr,#(_a + 0x0071)
   0609 74 CE              1044 	mov	a,#0xCE
   060B F0                 1045 	movx	@dptr,a
   060C 90 00 F2           1046 	mov	dptr,#(_a + 0x0072)
   060F 74 E2              1047 	mov	a,#0xE2
   0611 F0                 1048 	movx	@dptr,a
   0612 90 00 F3           1049 	mov	dptr,#(_a + 0x0073)
   0615 74 3B              1050 	mov	a,#0x3B
   0617 F0                 1051 	movx	@dptr,a
   0618 90 00 F4           1052 	mov	dptr,#(_a + 0x0074)
   061B 74 73              1053 	mov	a,#0x73
   061D F0                 1054 	movx	@dptr,a
   061E 90 00 F5           1055 	mov	dptr,#(_a + 0x0075)
   0621 74 8A              1056 	mov	a,#0x8A
   0623 F0                 1057 	movx	@dptr,a
   0624 90 00 F6           1058 	mov	dptr,#(_a + 0x0076)
   0627 74 EF              1059 	mov	a,#0xEF
   0629 F0                 1060 	movx	@dptr,a
   062A 90 00 F7           1061 	mov	dptr,#(_a + 0x0077)
   062D 74 F0              1062 	mov	a,#0xF0
   062F F0                 1063 	movx	@dptr,a
   0630 90 00 F8           1064 	mov	dptr,#(_a + 0x0078)
   0633 74 E4              1065 	mov	a,#0xE4
   0635 F0                 1066 	movx	@dptr,a
   0636 90 00 F9           1067 	mov	dptr,#(_a + 0x0079)
   0639 74 A6              1068 	mov	a,#0xA6
   063B F0                 1069 	movx	@dptr,a
   063C 90 00 FA           1070 	mov	dptr,#(_a + 0x007a)
   063F 74 40              1071 	mov	a,#0x40
   0641 F0                 1072 	movx	@dptr,a
   0642 90 00 FB           1073 	mov	dptr,#(_a + 0x007b)
   0645 74 26              1074 	mov	a,#0x26
   0647 F0                 1075 	movx	@dptr,a
   0648 90 00 FC           1076 	mov	dptr,#(_a + 0x007c)
   064B 74 F3              1077 	mov	a,#0xF3
   064D F0                 1078 	movx	@dptr,a
   064E 90 00 FD           1079 	mov	dptr,#(_a + 0x007d)
   0651 74 D9              1080 	mov	a,#0xD9
   0653 F0                 1081 	movx	@dptr,a
   0654 90 00 FE           1082 	mov	dptr,#(_a + 0x007e)
   0657 74 50              1083 	mov	a,#0x50
   0659 F0                 1084 	movx	@dptr,a
   065A 90 00 FF           1085 	mov	dptr,#(_a + 0x007f)
   065D 74 1F              1086 	mov	a,#0x1F
   065F F0                 1087 	movx	@dptr,a
                           1088 ;	main.c:12: volatile __xdata __at (0x0100) unsigned char b[SIZE] = {0x08,0xA2,0x1A,0xDB,0xCB,0x27,0x58,0x66,0x6C,0xC0,0xA2,0x58,0x7E,0x96,0x9D,0x15,0xAD,0x00,0xF5,0xAD,0xBD,0xC6,0x62,0xDE,0xB3,0xC9,0xF9,0x5C,0xB8,0xC8,0x3A,0xD1,0x2A,0xCE,0x1C,0xFA,0x3F,0x88,0x60,0xC6,0xFA,0x04,0xC9,0x08,0x68,0xB5,0x2F,0x01,0x88,0x67,0xDC,0xFA,0xD2,0xF3,0x3E,0xF6,0x80,0x97,0xA0,0x7F,0x9D,0x98,0x4D,0x1B,0x20,0xEA,0xAE,0x9A,0xF8,0x5C,0x53,0x71,0xC4,0x4C,0xBD,0xDA,0xBB,0x4F,0x03,0x14,0x30,0xE4,0x94,0x72,0x49,0xAF,0x02,0xFF,0x68,0x73,0xED,0x8B,0x46,0xCF,0xD0,0x89,0xA7,0xB5,0x64,0x76,0xC2,0xBD,0x68,0xD3,0xAC,0x0F,0xD1,0x80,0xE8,0x3E,0x02,0x27,0x82,0xB3,0xEA,0x8E,0x32,0x7A,0xD0,0xE9,0x9C,0x59,0x68,0x81,0x0F,0x3C,0x9E,0xBA};
   0660 90 01 00           1089 	mov	dptr,#_b
   0663 74 08              1090 	mov	a,#0x08
   0665 F0                 1091 	movx	@dptr,a
   0666 90 01 01           1092 	mov	dptr,#(_b + 0x0001)
   0669 74 A2              1093 	mov	a,#0xA2
   066B F0                 1094 	movx	@dptr,a
   066C 90 01 02           1095 	mov	dptr,#(_b + 0x0002)
   066F 74 1A              1096 	mov	a,#0x1A
   0671 F0                 1097 	movx	@dptr,a
   0672 90 01 03           1098 	mov	dptr,#(_b + 0x0003)
   0675 74 DB              1099 	mov	a,#0xDB
   0677 F0                 1100 	movx	@dptr,a
   0678 90 01 04           1101 	mov	dptr,#(_b + 0x0004)
   067B 74 CB              1102 	mov	a,#0xCB
   067D F0                 1103 	movx	@dptr,a
   067E 90 01 05           1104 	mov	dptr,#(_b + 0x0005)
   0681 74 27              1105 	mov	a,#0x27
   0683 F0                 1106 	movx	@dptr,a
   0684 90 01 06           1107 	mov	dptr,#(_b + 0x0006)
   0687 74 58              1108 	mov	a,#0x58
   0689 F0                 1109 	movx	@dptr,a
   068A 90 01 07           1110 	mov	dptr,#(_b + 0x0007)
   068D 74 66              1111 	mov	a,#0x66
   068F F0                 1112 	movx	@dptr,a
   0690 90 01 08           1113 	mov	dptr,#(_b + 0x0008)
   0693 74 6C              1114 	mov	a,#0x6C
   0695 F0                 1115 	movx	@dptr,a
   0696 90 01 09           1116 	mov	dptr,#(_b + 0x0009)
   0699 74 C0              1117 	mov	a,#0xC0
   069B F0                 1118 	movx	@dptr,a
   069C 90 01 0A           1119 	mov	dptr,#(_b + 0x000a)
   069F 74 A2              1120 	mov	a,#0xA2
   06A1 F0                 1121 	movx	@dptr,a
   06A2 90 01 0B           1122 	mov	dptr,#(_b + 0x000b)
   06A5 74 58              1123 	mov	a,#0x58
   06A7 F0                 1124 	movx	@dptr,a
   06A8 90 01 0C           1125 	mov	dptr,#(_b + 0x000c)
   06AB 74 7E              1126 	mov	a,#0x7E
   06AD F0                 1127 	movx	@dptr,a
   06AE 90 01 0D           1128 	mov	dptr,#(_b + 0x000d)
   06B1 74 96              1129 	mov	a,#0x96
   06B3 F0                 1130 	movx	@dptr,a
   06B4 90 01 0E           1131 	mov	dptr,#(_b + 0x000e)
   06B7 74 9D              1132 	mov	a,#0x9D
   06B9 F0                 1133 	movx	@dptr,a
   06BA 90 01 0F           1134 	mov	dptr,#(_b + 0x000f)
   06BD 74 15              1135 	mov	a,#0x15
   06BF F0                 1136 	movx	@dptr,a
   06C0 90 01 10           1137 	mov	dptr,#(_b + 0x0010)
   06C3 74 AD              1138 	mov	a,#0xAD
   06C5 F0                 1139 	movx	@dptr,a
   06C6 90 01 11           1140 	mov	dptr,#(_b + 0x0011)
   06C9 E4                 1141 	clr	a
   06CA F0                 1142 	movx	@dptr,a
   06CB 90 01 12           1143 	mov	dptr,#(_b + 0x0012)
   06CE 74 F5              1144 	mov	a,#0xF5
   06D0 F0                 1145 	movx	@dptr,a
   06D1 90 01 13           1146 	mov	dptr,#(_b + 0x0013)
   06D4 74 AD              1147 	mov	a,#0xAD
   06D6 F0                 1148 	movx	@dptr,a
   06D7 90 01 14           1149 	mov	dptr,#(_b + 0x0014)
   06DA 74 BD              1150 	mov	a,#0xBD
   06DC F0                 1151 	movx	@dptr,a
   06DD 90 01 15           1152 	mov	dptr,#(_b + 0x0015)
   06E0 74 C6              1153 	mov	a,#0xC6
   06E2 F0                 1154 	movx	@dptr,a
   06E3 90 01 16           1155 	mov	dptr,#(_b + 0x0016)
   06E6 74 62              1156 	mov	a,#0x62
   06E8 F0                 1157 	movx	@dptr,a
   06E9 90 01 17           1158 	mov	dptr,#(_b + 0x0017)
   06EC 74 DE              1159 	mov	a,#0xDE
   06EE F0                 1160 	movx	@dptr,a
   06EF 90 01 18           1161 	mov	dptr,#(_b + 0x0018)
   06F2 74 B3              1162 	mov	a,#0xB3
   06F4 F0                 1163 	movx	@dptr,a
   06F5 90 01 19           1164 	mov	dptr,#(_b + 0x0019)
   06F8 74 C9              1165 	mov	a,#0xC9
   06FA F0                 1166 	movx	@dptr,a
   06FB 90 01 1A           1167 	mov	dptr,#(_b + 0x001a)
   06FE 74 F9              1168 	mov	a,#0xF9
   0700 F0                 1169 	movx	@dptr,a
   0701 90 01 1B           1170 	mov	dptr,#(_b + 0x001b)
   0704 74 5C              1171 	mov	a,#0x5C
   0706 F0                 1172 	movx	@dptr,a
   0707 90 01 1C           1173 	mov	dptr,#(_b + 0x001c)
   070A 74 B8              1174 	mov	a,#0xB8
   070C F0                 1175 	movx	@dptr,a
   070D 90 01 1D           1176 	mov	dptr,#(_b + 0x001d)
   0710 74 C8              1177 	mov	a,#0xC8
   0712 F0                 1178 	movx	@dptr,a
   0713 90 01 1E           1179 	mov	dptr,#(_b + 0x001e)
   0716 74 3A              1180 	mov	a,#0x3A
   0718 F0                 1181 	movx	@dptr,a
   0719 90 01 1F           1182 	mov	dptr,#(_b + 0x001f)
   071C 74 D1              1183 	mov	a,#0xD1
   071E F0                 1184 	movx	@dptr,a
   071F 90 01 20           1185 	mov	dptr,#(_b + 0x0020)
   0722 74 2A              1186 	mov	a,#0x2A
   0724 F0                 1187 	movx	@dptr,a
   0725 90 01 21           1188 	mov	dptr,#(_b + 0x0021)
   0728 74 CE              1189 	mov	a,#0xCE
   072A F0                 1190 	movx	@dptr,a
   072B 90 01 22           1191 	mov	dptr,#(_b + 0x0022)
   072E 74 1C              1192 	mov	a,#0x1C
   0730 F0                 1193 	movx	@dptr,a
   0731 90 01 23           1194 	mov	dptr,#(_b + 0x0023)
   0734 74 FA              1195 	mov	a,#0xFA
   0736 F0                 1196 	movx	@dptr,a
   0737 90 01 24           1197 	mov	dptr,#(_b + 0x0024)
   073A 74 3F              1198 	mov	a,#0x3F
   073C F0                 1199 	movx	@dptr,a
   073D 90 01 25           1200 	mov	dptr,#(_b + 0x0025)
   0740 74 88              1201 	mov	a,#0x88
   0742 F0                 1202 	movx	@dptr,a
   0743 90 01 26           1203 	mov	dptr,#(_b + 0x0026)
   0746 74 60              1204 	mov	a,#0x60
   0748 F0                 1205 	movx	@dptr,a
   0749 90 01 27           1206 	mov	dptr,#(_b + 0x0027)
   074C 74 C6              1207 	mov	a,#0xC6
   074E F0                 1208 	movx	@dptr,a
   074F 90 01 28           1209 	mov	dptr,#(_b + 0x0028)
   0752 74 FA              1210 	mov	a,#0xFA
   0754 F0                 1211 	movx	@dptr,a
   0755 90 01 29           1212 	mov	dptr,#(_b + 0x0029)
   0758 74 04              1213 	mov	a,#0x04
   075A F0                 1214 	movx	@dptr,a
   075B 90 01 2A           1215 	mov	dptr,#(_b + 0x002a)
   075E 74 C9              1216 	mov	a,#0xC9
   0760 F0                 1217 	movx	@dptr,a
   0761 90 01 2B           1218 	mov	dptr,#(_b + 0x002b)
   0764 74 08              1219 	mov	a,#0x08
   0766 F0                 1220 	movx	@dptr,a
   0767 90 01 2C           1221 	mov	dptr,#(_b + 0x002c)
   076A 74 68              1222 	mov	a,#0x68
   076C F0                 1223 	movx	@dptr,a
   076D 90 01 2D           1224 	mov	dptr,#(_b + 0x002d)
   0770 74 B5              1225 	mov	a,#0xB5
   0772 F0                 1226 	movx	@dptr,a
   0773 90 01 2E           1227 	mov	dptr,#(_b + 0x002e)
   0776 74 2F              1228 	mov	a,#0x2F
   0778 F0                 1229 	movx	@dptr,a
   0779 90 01 2F           1230 	mov	dptr,#(_b + 0x002f)
   077C 74 01              1231 	mov	a,#0x01
   077E F0                 1232 	movx	@dptr,a
   077F 90 01 30           1233 	mov	dptr,#(_b + 0x0030)
   0782 74 88              1234 	mov	a,#0x88
   0784 F0                 1235 	movx	@dptr,a
   0785 90 01 31           1236 	mov	dptr,#(_b + 0x0031)
   0788 74 67              1237 	mov	a,#0x67
   078A F0                 1238 	movx	@dptr,a
   078B 90 01 32           1239 	mov	dptr,#(_b + 0x0032)
   078E 74 DC              1240 	mov	a,#0xDC
   0790 F0                 1241 	movx	@dptr,a
   0791 90 01 33           1242 	mov	dptr,#(_b + 0x0033)
   0794 74 FA              1243 	mov	a,#0xFA
   0796 F0                 1244 	movx	@dptr,a
   0797 90 01 34           1245 	mov	dptr,#(_b + 0x0034)
   079A 74 D2              1246 	mov	a,#0xD2
   079C F0                 1247 	movx	@dptr,a
   079D 90 01 35           1248 	mov	dptr,#(_b + 0x0035)
   07A0 74 F3              1249 	mov	a,#0xF3
   07A2 F0                 1250 	movx	@dptr,a
   07A3 90 01 36           1251 	mov	dptr,#(_b + 0x0036)
   07A6 74 3E              1252 	mov	a,#0x3E
   07A8 F0                 1253 	movx	@dptr,a
   07A9 90 01 37           1254 	mov	dptr,#(_b + 0x0037)
   07AC 74 F6              1255 	mov	a,#0xF6
   07AE F0                 1256 	movx	@dptr,a
   07AF 90 01 38           1257 	mov	dptr,#(_b + 0x0038)
   07B2 74 80              1258 	mov	a,#0x80
   07B4 F0                 1259 	movx	@dptr,a
   07B5 90 01 39           1260 	mov	dptr,#(_b + 0x0039)
   07B8 74 97              1261 	mov	a,#0x97
   07BA F0                 1262 	movx	@dptr,a
   07BB 90 01 3A           1263 	mov	dptr,#(_b + 0x003a)
   07BE 74 A0              1264 	mov	a,#0xA0
   07C0 F0                 1265 	movx	@dptr,a
   07C1 90 01 3B           1266 	mov	dptr,#(_b + 0x003b)
   07C4 74 7F              1267 	mov	a,#0x7F
   07C6 F0                 1268 	movx	@dptr,a
   07C7 90 01 3C           1269 	mov	dptr,#(_b + 0x003c)
   07CA 74 9D              1270 	mov	a,#0x9D
   07CC F0                 1271 	movx	@dptr,a
   07CD 90 01 3D           1272 	mov	dptr,#(_b + 0x003d)
   07D0 74 98              1273 	mov	a,#0x98
   07D2 F0                 1274 	movx	@dptr,a
   07D3 90 01 3E           1275 	mov	dptr,#(_b + 0x003e)
   07D6 74 4D              1276 	mov	a,#0x4D
   07D8 F0                 1277 	movx	@dptr,a
   07D9 90 01 3F           1278 	mov	dptr,#(_b + 0x003f)
   07DC 74 1B              1279 	mov	a,#0x1B
   07DE F0                 1280 	movx	@dptr,a
   07DF 90 01 40           1281 	mov	dptr,#(_b + 0x0040)
   07E2 74 20              1282 	mov	a,#0x20
   07E4 F0                 1283 	movx	@dptr,a
   07E5 90 01 41           1284 	mov	dptr,#(_b + 0x0041)
   07E8 74 EA              1285 	mov	a,#0xEA
   07EA F0                 1286 	movx	@dptr,a
   07EB 90 01 42           1287 	mov	dptr,#(_b + 0x0042)
   07EE 74 AE              1288 	mov	a,#0xAE
   07F0 F0                 1289 	movx	@dptr,a
   07F1 90 01 43           1290 	mov	dptr,#(_b + 0x0043)
   07F4 74 9A              1291 	mov	a,#0x9A
   07F6 F0                 1292 	movx	@dptr,a
   07F7 90 01 44           1293 	mov	dptr,#(_b + 0x0044)
   07FA 74 F8              1294 	mov	a,#0xF8
   07FC F0                 1295 	movx	@dptr,a
   07FD 90 01 45           1296 	mov	dptr,#(_b + 0x0045)
   0800 74 5C              1297 	mov	a,#0x5C
   0802 F0                 1298 	movx	@dptr,a
   0803 90 01 46           1299 	mov	dptr,#(_b + 0x0046)
   0806 74 53              1300 	mov	a,#0x53
   0808 F0                 1301 	movx	@dptr,a
   0809 90 01 47           1302 	mov	dptr,#(_b + 0x0047)
   080C 74 71              1303 	mov	a,#0x71
   080E F0                 1304 	movx	@dptr,a
   080F 90 01 48           1305 	mov	dptr,#(_b + 0x0048)
   0812 74 C4              1306 	mov	a,#0xC4
   0814 F0                 1307 	movx	@dptr,a
   0815 90 01 49           1308 	mov	dptr,#(_b + 0x0049)
   0818 74 4C              1309 	mov	a,#0x4C
   081A F0                 1310 	movx	@dptr,a
   081B 90 01 4A           1311 	mov	dptr,#(_b + 0x004a)
   081E 74 BD              1312 	mov	a,#0xBD
   0820 F0                 1313 	movx	@dptr,a
   0821 90 01 4B           1314 	mov	dptr,#(_b + 0x004b)
   0824 74 DA              1315 	mov	a,#0xDA
   0826 F0                 1316 	movx	@dptr,a
   0827 90 01 4C           1317 	mov	dptr,#(_b + 0x004c)
   082A 74 BB              1318 	mov	a,#0xBB
   082C F0                 1319 	movx	@dptr,a
   082D 90 01 4D           1320 	mov	dptr,#(_b + 0x004d)
   0830 74 4F              1321 	mov	a,#0x4F
   0832 F0                 1322 	movx	@dptr,a
   0833 90 01 4E           1323 	mov	dptr,#(_b + 0x004e)
   0836 74 03              1324 	mov	a,#0x03
   0838 F0                 1325 	movx	@dptr,a
   0839 90 01 4F           1326 	mov	dptr,#(_b + 0x004f)
   083C 74 14              1327 	mov	a,#0x14
   083E F0                 1328 	movx	@dptr,a
   083F 90 01 50           1329 	mov	dptr,#(_b + 0x0050)
   0842 74 30              1330 	mov	a,#0x30
   0844 F0                 1331 	movx	@dptr,a
   0845 90 01 51           1332 	mov	dptr,#(_b + 0x0051)
   0848 74 E4              1333 	mov	a,#0xE4
   084A F0                 1334 	movx	@dptr,a
   084B 90 01 52           1335 	mov	dptr,#(_b + 0x0052)
   084E 74 94              1336 	mov	a,#0x94
   0850 F0                 1337 	movx	@dptr,a
   0851 90 01 53           1338 	mov	dptr,#(_b + 0x0053)
   0854 74 72              1339 	mov	a,#0x72
   0856 F0                 1340 	movx	@dptr,a
   0857 90 01 54           1341 	mov	dptr,#(_b + 0x0054)
   085A 74 49              1342 	mov	a,#0x49
   085C F0                 1343 	movx	@dptr,a
   085D 90 01 55           1344 	mov	dptr,#(_b + 0x0055)
   0860 74 AF              1345 	mov	a,#0xAF
   0862 F0                 1346 	movx	@dptr,a
   0863 90 01 56           1347 	mov	dptr,#(_b + 0x0056)
   0866 74 02              1348 	mov	a,#0x02
   0868 F0                 1349 	movx	@dptr,a
   0869 90 01 57           1350 	mov	dptr,#(_b + 0x0057)
   086C 74 FF              1351 	mov	a,#0xFF
   086E F0                 1352 	movx	@dptr,a
   086F 90 01 58           1353 	mov	dptr,#(_b + 0x0058)
   0872 74 68              1354 	mov	a,#0x68
   0874 F0                 1355 	movx	@dptr,a
   0875 90 01 59           1356 	mov	dptr,#(_b + 0x0059)
   0878 74 73              1357 	mov	a,#0x73
   087A F0                 1358 	movx	@dptr,a
   087B 90 01 5A           1359 	mov	dptr,#(_b + 0x005a)
   087E 74 ED              1360 	mov	a,#0xED
   0880 F0                 1361 	movx	@dptr,a
   0881 90 01 5B           1362 	mov	dptr,#(_b + 0x005b)
   0884 74 8B              1363 	mov	a,#0x8B
   0886 F0                 1364 	movx	@dptr,a
   0887 90 01 5C           1365 	mov	dptr,#(_b + 0x005c)
   088A 74 46              1366 	mov	a,#0x46
   088C F0                 1367 	movx	@dptr,a
   088D 90 01 5D           1368 	mov	dptr,#(_b + 0x005d)
   0890 74 CF              1369 	mov	a,#0xCF
   0892 F0                 1370 	movx	@dptr,a
   0893 90 01 5E           1371 	mov	dptr,#(_b + 0x005e)
   0896 74 D0              1372 	mov	a,#0xD0
   0898 F0                 1373 	movx	@dptr,a
   0899 90 01 5F           1374 	mov	dptr,#(_b + 0x005f)
   089C 74 89              1375 	mov	a,#0x89
   089E F0                 1376 	movx	@dptr,a
   089F 90 01 60           1377 	mov	dptr,#(_b + 0x0060)
   08A2 74 A7              1378 	mov	a,#0xA7
   08A4 F0                 1379 	movx	@dptr,a
   08A5 90 01 61           1380 	mov	dptr,#(_b + 0x0061)
   08A8 74 B5              1381 	mov	a,#0xB5
   08AA F0                 1382 	movx	@dptr,a
   08AB 90 01 62           1383 	mov	dptr,#(_b + 0x0062)
   08AE 74 64              1384 	mov	a,#0x64
   08B0 F0                 1385 	movx	@dptr,a
   08B1 90 01 63           1386 	mov	dptr,#(_b + 0x0063)
   08B4 74 76              1387 	mov	a,#0x76
   08B6 F0                 1388 	movx	@dptr,a
   08B7 90 01 64           1389 	mov	dptr,#(_b + 0x0064)
   08BA 74 C2              1390 	mov	a,#0xC2
   08BC F0                 1391 	movx	@dptr,a
   08BD 90 01 65           1392 	mov	dptr,#(_b + 0x0065)
   08C0 74 BD              1393 	mov	a,#0xBD
   08C2 F0                 1394 	movx	@dptr,a
   08C3 90 01 66           1395 	mov	dptr,#(_b + 0x0066)
   08C6 74 68              1396 	mov	a,#0x68
   08C8 F0                 1397 	movx	@dptr,a
   08C9 90 01 67           1398 	mov	dptr,#(_b + 0x0067)
   08CC 74 D3              1399 	mov	a,#0xD3
   08CE F0                 1400 	movx	@dptr,a
   08CF 90 01 68           1401 	mov	dptr,#(_b + 0x0068)
   08D2 74 AC              1402 	mov	a,#0xAC
   08D4 F0                 1403 	movx	@dptr,a
   08D5 90 01 69           1404 	mov	dptr,#(_b + 0x0069)
   08D8 74 0F              1405 	mov	a,#0x0F
   08DA F0                 1406 	movx	@dptr,a
   08DB 90 01 6A           1407 	mov	dptr,#(_b + 0x006a)
   08DE 74 D1              1408 	mov	a,#0xD1
   08E0 F0                 1409 	movx	@dptr,a
   08E1 90 01 6B           1410 	mov	dptr,#(_b + 0x006b)
   08E4 74 80              1411 	mov	a,#0x80
   08E6 F0                 1412 	movx	@dptr,a
   08E7 90 01 6C           1413 	mov	dptr,#(_b + 0x006c)
   08EA 74 E8              1414 	mov	a,#0xE8
   08EC F0                 1415 	movx	@dptr,a
   08ED 90 01 6D           1416 	mov	dptr,#(_b + 0x006d)
   08F0 74 3E              1417 	mov	a,#0x3E
   08F2 F0                 1418 	movx	@dptr,a
   08F3 90 01 6E           1419 	mov	dptr,#(_b + 0x006e)
   08F6 74 02              1420 	mov	a,#0x02
   08F8 F0                 1421 	movx	@dptr,a
   08F9 90 01 6F           1422 	mov	dptr,#(_b + 0x006f)
   08FC 74 27              1423 	mov	a,#0x27
   08FE F0                 1424 	movx	@dptr,a
   08FF 90 01 70           1425 	mov	dptr,#(_b + 0x0070)
   0902 74 82              1426 	mov	a,#0x82
   0904 F0                 1427 	movx	@dptr,a
   0905 90 01 71           1428 	mov	dptr,#(_b + 0x0071)
   0908 74 B3              1429 	mov	a,#0xB3
   090A F0                 1430 	movx	@dptr,a
   090B 90 01 72           1431 	mov	dptr,#(_b + 0x0072)
   090E 74 EA              1432 	mov	a,#0xEA
   0910 F0                 1433 	movx	@dptr,a
   0911 90 01 73           1434 	mov	dptr,#(_b + 0x0073)
   0914 74 8E              1435 	mov	a,#0x8E
   0916 F0                 1436 	movx	@dptr,a
   0917 90 01 74           1437 	mov	dptr,#(_b + 0x0074)
   091A 74 32              1438 	mov	a,#0x32
   091C F0                 1439 	movx	@dptr,a
   091D 90 01 75           1440 	mov	dptr,#(_b + 0x0075)
   0920 74 7A              1441 	mov	a,#0x7A
   0922 F0                 1442 	movx	@dptr,a
   0923 90 01 76           1443 	mov	dptr,#(_b + 0x0076)
   0926 74 D0              1444 	mov	a,#0xD0
   0928 F0                 1445 	movx	@dptr,a
   0929 90 01 77           1446 	mov	dptr,#(_b + 0x0077)
   092C 74 E9              1447 	mov	a,#0xE9
   092E F0                 1448 	movx	@dptr,a
   092F 90 01 78           1449 	mov	dptr,#(_b + 0x0078)
   0932 74 9C              1450 	mov	a,#0x9C
   0934 F0                 1451 	movx	@dptr,a
   0935 90 01 79           1452 	mov	dptr,#(_b + 0x0079)
   0938 74 59              1453 	mov	a,#0x59
   093A F0                 1454 	movx	@dptr,a
   093B 90 01 7A           1455 	mov	dptr,#(_b + 0x007a)
   093E 74 68              1456 	mov	a,#0x68
   0940 F0                 1457 	movx	@dptr,a
   0941 90 01 7B           1458 	mov	dptr,#(_b + 0x007b)
   0944 74 81              1459 	mov	a,#0x81
   0946 F0                 1460 	movx	@dptr,a
   0947 90 01 7C           1461 	mov	dptr,#(_b + 0x007c)
   094A 74 0F              1462 	mov	a,#0x0F
   094C F0                 1463 	movx	@dptr,a
   094D 90 01 7D           1464 	mov	dptr,#(_b + 0x007d)
   0950 74 3C              1465 	mov	a,#0x3C
   0952 F0                 1466 	movx	@dptr,a
   0953 90 01 7E           1467 	mov	dptr,#(_b + 0x007e)
   0956 74 9E              1468 	mov	a,#0x9E
   0958 F0                 1469 	movx	@dptr,a
   0959 90 01 7F           1470 	mov	dptr,#(_b + 0x007f)
   095C 74 BA              1471 	mov	a,#0xBA
   095E F0                 1472 	movx	@dptr,a
                           1473 	.area GSFINAL (CODE)
   095F 02 00 03           1474 	ljmp	__sdcc_program_startup
                           1475 ;--------------------------------------------------------
                           1476 ; Home
                           1477 ;--------------------------------------------------------
                           1478 	.area HOME    (CODE)
                           1479 	.area HOME    (CODE)
   0003                    1480 __sdcc_program_startup:
   0003 12 0A 33           1481 	lcall	_main
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
                           1492 ;	main.c:22: void write_montgomery() {
                           1493 ;	-----------------------------------------
                           1494 ;	 function write_montgomery
                           1495 ;	-----------------------------------------
   0962                    1496 _write_montgomery:
                    0002   1497 	ar2 = 0x02
                    0003   1498 	ar3 = 0x03
                    0004   1499 	ar4 = 0x04
                    0005   1500 	ar5 = 0x05
                    0006   1501 	ar6 = 0x06
                    0007   1502 	ar7 = 0x07
                    0000   1503 	ar0 = 0x00
                    0001   1504 	ar1 = 0x01
                           1505 ;	main.c:23: P1 = 0;
                           1506 ;	main.c:25: for (i = 0; i < SIZE; i++) {
   0962 E4                 1507 	clr	a
   0963 F5 90              1508 	mov	_P1,a
   0965 F5 08              1509 	mov	_i,a
   0967 F5 09              1510 	mov	(_i + 1),a
   0969                    1511 00104$:
   0969 C3                 1512 	clr	c
   096A E5 08              1513 	mov	a,_i
   096C 94 80              1514 	subb	a,#0x80
   096E E5 09              1515 	mov	a,(_i + 1)
   0970 94 00              1516 	subb	a,#0x00
   0972 50 27              1517 	jnc	00107$
                           1518 ;	main.c:26: shared_a[i] = a[SIZE-1-i];
   0974 AA 08              1519 	mov	r2,_i
   0976 74 40              1520 	mov	a,#(_shared_a >> 8)
   0978 25 09              1521 	add	a,(_i + 1)
   097A FB                 1522 	mov	r3,a
   097B AC 08              1523 	mov	r4,_i
   097D 74 7F              1524 	mov	a,#0x7F
   097F C3                 1525 	clr	c
   0980 9C                 1526 	subb	a,r4
   0981 24 80              1527 	add	a,#_a
   0983 F5 82              1528 	mov	dpl,a
   0985 E4                 1529 	clr	a
   0986 34 00              1530 	addc	a,#(_a >> 8)
   0988 F5 83              1531 	mov	dph,a
   098A E0                 1532 	movx	a,@dptr
   098B FC                 1533 	mov	r4,a
   098C 8A 82              1534 	mov	dpl,r2
   098E 8B 83              1535 	mov	dph,r3
   0990 F0                 1536 	movx	@dptr,a
                           1537 ;	main.c:25: for (i = 0; i < SIZE; i++) {
   0991 05 08              1538 	inc	_i
   0993 E4                 1539 	clr	a
   0994 B5 08 D2           1540 	cjne	a,_i,00104$
   0997 05 09              1541 	inc	(_i + 1)
   0999 80 CE              1542 	sjmp	00104$
   099B                    1543 00107$:
                           1544 ;	main.c:29: for (i = 0; i < SIZE; i++) {
   099B E4                 1545 	clr	a
   099C F5 08              1546 	mov	_i,a
   099E F5 09              1547 	mov	(_i + 1),a
   09A0                    1548 00108$:
   09A0 C3                 1549 	clr	c
   09A1 E5 08              1550 	mov	a,_i
   09A3 94 80              1551 	subb	a,#0x80
   09A5 E5 09              1552 	mov	a,(_i + 1)
   09A7 94 00              1553 	subb	a,#0x00
   09A9 50 2A              1554 	jnc	00111$
                           1555 ;	main.c:30: shared_b[i] = b[SIZE-1-i];
   09AB E5 08              1556 	mov	a,_i
   09AD 24 80              1557 	add	a,#_shared_b
   09AF FA                 1558 	mov	r2,a
   09B0 E5 09              1559 	mov	a,(_i + 1)
   09B2 34 40              1560 	addc	a,#(_shared_b >> 8)
   09B4 FB                 1561 	mov	r3,a
   09B5 AC 08              1562 	mov	r4,_i
   09B7 74 7F              1563 	mov	a,#0x7F
   09B9 C3                 1564 	clr	c
   09BA 9C                 1565 	subb	a,r4
   09BB 24 00              1566 	add	a,#_b
   09BD F5 82              1567 	mov	dpl,a
   09BF E4                 1568 	clr	a
   09C0 34 01              1569 	addc	a,#(_b >> 8)
   09C2 F5 83              1570 	mov	dph,a
   09C4 E0                 1571 	movx	a,@dptr
   09C5 FC                 1572 	mov	r4,a
   09C6 8A 82              1573 	mov	dpl,r2
   09C8 8B 83              1574 	mov	dph,r3
   09CA F0                 1575 	movx	@dptr,a
                           1576 ;	main.c:29: for (i = 0; i < SIZE; i++) {
   09CB 05 08              1577 	inc	_i
   09CD E4                 1578 	clr	a
   09CE B5 08 CF           1579 	cjne	a,_i,00108$
   09D1 05 09              1580 	inc	(_i + 1)
   09D3 80 CB              1581 	sjmp	00108$
   09D5                    1582 00111$:
                           1583 ;	main.c:33: for (i = 0; i < SIZE; i++) {
   09D5 E4                 1584 	clr	a
   09D6 F5 08              1585 	mov	_i,a
   09D8 F5 09              1586 	mov	(_i + 1),a
   09DA                    1587 00112$:
   09DA C3                 1588 	clr	c
   09DB E5 08              1589 	mov	a,_i
   09DD 94 80              1590 	subb	a,#0x80
   09DF E5 09              1591 	mov	a,(_i + 1)
   09E1 94 00              1592 	subb	a,#0x00
   09E3 50 27              1593 	jnc	00115$
                           1594 ;	main.c:34: shared_m[i] = m[SIZE-1-i];
   09E5 AA 08              1595 	mov	r2,_i
   09E7 74 41              1596 	mov	a,#(_shared_m >> 8)
   09E9 25 09              1597 	add	a,(_i + 1)
   09EB FB                 1598 	mov	r3,a
   09EC AC 08              1599 	mov	r4,_i
   09EE 74 7F              1600 	mov	a,#0x7F
   09F0 C3                 1601 	clr	c
   09F1 9C                 1602 	subb	a,r4
   09F2 24 00              1603 	add	a,#_m
   09F4 F5 82              1604 	mov	dpl,a
   09F6 E4                 1605 	clr	a
   09F7 34 00              1606 	addc	a,#(_m >> 8)
   09F9 F5 83              1607 	mov	dph,a
   09FB E0                 1608 	movx	a,@dptr
   09FC FC                 1609 	mov	r4,a
   09FD 8A 82              1610 	mov	dpl,r2
   09FF 8B 83              1611 	mov	dph,r3
   0A01 F0                 1612 	movx	@dptr,a
                           1613 ;	main.c:33: for (i = 0; i < SIZE; i++) {
   0A02 05 08              1614 	inc	_i
   0A04 E4                 1615 	clr	a
   0A05 B5 08 D2           1616 	cjne	a,_i,00112$
   0A08 05 09              1617 	inc	(_i + 1)
   0A0A 80 CE              1618 	sjmp	00112$
   0A0C                    1619 00115$:
                           1620 ;	main.c:37: P0 = ins_write_data;
   0A0C 75 80 01           1621 	mov	_P0,#0x01
                           1622 ;	main.c:38: P0 = ins_idle;
   0A0F 75 80 00           1623 	mov	_P0,#0x00
                           1624 ;	main.c:40: while (P1 == 0) {}
   0A12                    1625 00101$:
   0A12 E5 90              1626 	mov	a,_P1
   0A14 60 FC              1627 	jz	00101$
                           1628 ;	main.c:41: P0 = ins_ack;
   0A16 75 80 04           1629 	mov	_P0,#0x04
   0A19 22                 1630 	ret
                           1631 ;------------------------------------------------------------
                           1632 ;Allocation info for local variables in function 'read_r'
                           1633 ;------------------------------------------------------------
                           1634 ;------------------------------------------------------------
                           1635 ;	main.c:44: void read_r() {
                           1636 ;	-----------------------------------------
                           1637 ;	 function read_r
                           1638 ;	-----------------------------------------
   0A1A                    1639 _read_r:
                           1640 ;	main.c:45: P0 = ins_read_r;
   0A1A 75 80 03           1641 	mov	_P0,#0x03
                           1642 ;	main.c:46: while (P1 == 0) {}
   0A1D                    1643 00101$:
   0A1D E5 90              1644 	mov	a,_P1
   0A1F 60 FC              1645 	jz	00101$
                           1646 ;	main.c:47: P0 = ins_ack;
   0A21 75 80 04           1647 	mov	_P0,#0x04
                           1648 ;	main.c:49: P0 = ins_idle;
   0A24 75 80 00           1649 	mov	_P0,#0x00
   0A27 22                 1650 	ret
                           1651 ;------------------------------------------------------------
                           1652 ;Allocation info for local variables in function 'montgomery'
                           1653 ;------------------------------------------------------------
                           1654 ;------------------------------------------------------------
                           1655 ;	main.c:52: void montgomery() {
                           1656 ;	-----------------------------------------
                           1657 ;	 function montgomery
                           1658 ;	-----------------------------------------
   0A28                    1659 _montgomery:
                           1660 ;	main.c:53: P0 = ins_montgomery;
   0A28 75 80 02           1661 	mov	_P0,#0x02
                           1662 ;	main.c:54: P0 = ins_idle;
   0A2B 75 80 00           1663 	mov	_P0,#0x00
   0A2E 22                 1664 	ret
                           1665 ;------------------------------------------------------------
                           1666 ;Allocation info for local variables in function 'terminate'
                           1667 ;------------------------------------------------------------
                           1668 ;------------------------------------------------------------
                           1669 ;	main.c:57: void terminate() {
                           1670 ;	-----------------------------------------
                           1671 ;	 function terminate
                           1672 ;	-----------------------------------------
   0A2F                    1673 _terminate:
                           1674 ;	main.c:58: P3 = 0x55;
   0A2F 75 B0 55           1675 	mov	_P3,#0x55
   0A32 22                 1676 	ret
                           1677 ;------------------------------------------------------------
                           1678 ;Allocation info for local variables in function 'main'
                           1679 ;------------------------------------------------------------
                           1680 ;------------------------------------------------------------
                           1681 ;	main.c:61: int main() {
                           1682 ;	-----------------------------------------
                           1683 ;	 function main
                           1684 ;	-----------------------------------------
   0A33                    1685 _main:
                           1686 ;	main.c:62: write_montgomery();
   0A33 12 09 62           1687 	lcall	_write_montgomery
                           1688 ;	main.c:63: montgomery();
   0A36 12 0A 28           1689 	lcall	_montgomery
                           1690 ;	main.c:64: read_r();
   0A39 12 0A 1A           1691 	lcall	_read_r
                           1692 ;	main.c:66: P1 = 0;
                           1693 ;	main.c:68: for (i = 0; i < SIZE; i++) {
   0A3C E4                 1694 	clr	a
   0A3D F5 90              1695 	mov	_P1,a
   0A3F F5 08              1696 	mov	_i,a
   0A41 F5 09              1697 	mov	(_i + 1),a
   0A43                    1698 00104$:
   0A43 C3                 1699 	clr	c
   0A44 E5 08              1700 	mov	a,_i
   0A46 94 80              1701 	subb	a,#0x80
   0A48 E5 09              1702 	mov	a,(_i + 1)
   0A4A 94 00              1703 	subb	a,#0x00
   0A4C 50 21              1704 	jnc	00107$
                           1705 ;	main.c:69: shared_a[i] = r[i];
   0A4E AA 08              1706 	mov	r2,_i
   0A50 74 40              1707 	mov	a,#(_shared_a >> 8)
   0A52 25 09              1708 	add	a,(_i + 1)
   0A54 FB                 1709 	mov	r3,a
   0A55 85 08 82           1710 	mov	dpl,_i
   0A58 74 02              1711 	mov	a,#(_r >> 8)
   0A5A 25 09              1712 	add	a,(_i + 1)
   0A5C F5 83              1713 	mov	dph,a
   0A5E E0                 1714 	movx	a,@dptr
   0A5F FC                 1715 	mov	r4,a
   0A60 8A 82              1716 	mov	dpl,r2
   0A62 8B 83              1717 	mov	dph,r3
   0A64 F0                 1718 	movx	@dptr,a
                           1719 ;	main.c:68: for (i = 0; i < SIZE; i++) {
   0A65 05 08              1720 	inc	_i
   0A67 E4                 1721 	clr	a
   0A68 B5 08 D8           1722 	cjne	a,_i,00104$
   0A6B 05 09              1723 	inc	(_i + 1)
   0A6D 80 D4              1724 	sjmp	00104$
   0A6F                    1725 00107$:
                           1726 ;	main.c:72: P0 = ins_write_data;
   0A6F 75 80 01           1727 	mov	_P0,#0x01
                           1728 ;	main.c:73: P0 = ins_idle;
   0A72 75 80 00           1729 	mov	_P0,#0x00
                           1730 ;	main.c:75: while (P1 == 0) {}
   0A75                    1731 00101$:
   0A75 E5 90              1732 	mov	a,_P1
   0A77 60 FC              1733 	jz	00101$
                           1734 ;	main.c:76: P0 = ins_ack;
   0A79 75 80 04           1735 	mov	_P0,#0x04
                           1736 ;	main.c:78: terminate();
   0A7C 12 0A 2F           1737 	lcall	_terminate
                           1738 ;	main.c:79: return 0;
   0A7F 90 00 00           1739 	mov	dptr,#0x0000
   0A82 22                 1740 	ret
                           1741 	.area CSEG    (CODE)
                           1742 	.area CONST   (CODE)
                           1743 	.area XINIT   (CODE)
                           1744 	.area CABS    (ABS,CODE)
