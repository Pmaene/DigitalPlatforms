                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Sat Dec  1 20:11:48 2012
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
                            120 	.globl _endBrk
                            121 	.globl _startBrk
                            122 	.globl _i
                            123 ;--------------------------------------------------------
                            124 ; special function registers
                            125 ;--------------------------------------------------------
                            126 	.area RSEG    (DATA)
                    0080    127 _P0	=	0x0080
                    0081    128 _SP	=	0x0081
                    0082    129 _DPL	=	0x0082
                    0083    130 _DPH	=	0x0083
                    0087    131 _PCON	=	0x0087
                    0088    132 _TCON	=	0x0088
                    0089    133 _TMOD	=	0x0089
                    008A    134 _TL0	=	0x008a
                    008B    135 _TL1	=	0x008b
                    008C    136 _TH0	=	0x008c
                    008D    137 _TH1	=	0x008d
                    0090    138 _P1	=	0x0090
                    0098    139 _SCON	=	0x0098
                    0099    140 _SBUF	=	0x0099
                    00A0    141 _P2	=	0x00a0
                    00A8    142 _IE	=	0x00a8
                    00B0    143 _P3	=	0x00b0
                    00B8    144 _IP	=	0x00b8
                    00D0    145 _PSW	=	0x00d0
                    00E0    146 _ACC	=	0x00e0
                    00F0    147 _B	=	0x00f0
                            148 ;--------------------------------------------------------
                            149 ; special function bits
                            150 ;--------------------------------------------------------
                            151 	.area RSEG    (DATA)
                    0080    152 _P0_0	=	0x0080
                    0081    153 _P0_1	=	0x0081
                    0082    154 _P0_2	=	0x0082
                    0083    155 _P0_3	=	0x0083
                    0084    156 _P0_4	=	0x0084
                    0085    157 _P0_5	=	0x0085
                    0086    158 _P0_6	=	0x0086
                    0087    159 _P0_7	=	0x0087
                    0088    160 _IT0	=	0x0088
                    0089    161 _IE0	=	0x0089
                    008A    162 _IT1	=	0x008a
                    008B    163 _IE1	=	0x008b
                    008C    164 _TR0	=	0x008c
                    008D    165 _TF0	=	0x008d
                    008E    166 _TR1	=	0x008e
                    008F    167 _TF1	=	0x008f
                    0090    168 _P1_0	=	0x0090
                    0091    169 _P1_1	=	0x0091
                    0092    170 _P1_2	=	0x0092
                    0093    171 _P1_3	=	0x0093
                    0094    172 _P1_4	=	0x0094
                    0095    173 _P1_5	=	0x0095
                    0096    174 _P1_6	=	0x0096
                    0097    175 _P1_7	=	0x0097
                    0098    176 _RI	=	0x0098
                    0099    177 _TI	=	0x0099
                    009A    178 _RB8	=	0x009a
                    009B    179 _TB8	=	0x009b
                    009C    180 _REN	=	0x009c
                    009D    181 _SM2	=	0x009d
                    009E    182 _SM1	=	0x009e
                    009F    183 _SM0	=	0x009f
                    00A0    184 _P2_0	=	0x00a0
                    00A1    185 _P2_1	=	0x00a1
                    00A2    186 _P2_2	=	0x00a2
                    00A3    187 _P2_3	=	0x00a3
                    00A4    188 _P2_4	=	0x00a4
                    00A5    189 _P2_5	=	0x00a5
                    00A6    190 _P2_6	=	0x00a6
                    00A7    191 _P2_7	=	0x00a7
                    00A8    192 _EX0	=	0x00a8
                    00A9    193 _ET0	=	0x00a9
                    00AA    194 _EX1	=	0x00aa
                    00AB    195 _ET1	=	0x00ab
                    00AC    196 _ES	=	0x00ac
                    00AF    197 _EA	=	0x00af
                    00B0    198 _P3_0	=	0x00b0
                    00B1    199 _P3_1	=	0x00b1
                    00B2    200 _P3_2	=	0x00b2
                    00B3    201 _P3_3	=	0x00b3
                    00B4    202 _P3_4	=	0x00b4
                    00B5    203 _P3_5	=	0x00b5
                    00B6    204 _P3_6	=	0x00b6
                    00B7    205 _P3_7	=	0x00b7
                    00B0    206 _RXD	=	0x00b0
                    00B1    207 _TXD	=	0x00b1
                    00B2    208 _INT0	=	0x00b2
                    00B3    209 _INT1	=	0x00b3
                    00B4    210 _T0	=	0x00b4
                    00B5    211 _T1	=	0x00b5
                    00B6    212 _WR	=	0x00b6
                    00B7    213 _RD	=	0x00b7
                    00B8    214 _PX0	=	0x00b8
                    00B9    215 _PT0	=	0x00b9
                    00BA    216 _PX1	=	0x00ba
                    00BB    217 _PT1	=	0x00bb
                    00BC    218 _PS	=	0x00bc
                    00D0    219 _P	=	0x00d0
                    00D1    220 _F1	=	0x00d1
                    00D2    221 _OV	=	0x00d2
                    00D3    222 _RS0	=	0x00d3
                    00D4    223 _RS1	=	0x00d4
                    00D5    224 _F0	=	0x00d5
                    00D6    225 _AC	=	0x00d6
                    00D7    226 _CY	=	0x00d7
                            227 ;--------------------------------------------------------
                            228 ; overlayable register banks
                            229 ;--------------------------------------------------------
                            230 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     231 	.ds 8
                            232 ;--------------------------------------------------------
                            233 ; internal ram data
                            234 ;--------------------------------------------------------
                            235 	.area DSEG    (DATA)
   0008                     236 _i::
   0008                     237 	.ds 2
                            238 ;--------------------------------------------------------
                            239 ; overlayable items in internal ram 
                            240 ;--------------------------------------------------------
                            241 	.area OSEG    (OVR,DATA)
                            242 ;--------------------------------------------------------
                            243 ; Stack segment in internal ram 
                            244 ;--------------------------------------------------------
                            245 	.area	SSEG	(DATA)
   000A                     246 __start__stack:
   000A                     247 	.ds	1
                            248 
                            249 ;--------------------------------------------------------
                            250 ; indirectly addressable internal ram data
                            251 ;--------------------------------------------------------
                            252 	.area ISEG    (DATA)
                            253 ;--------------------------------------------------------
                            254 ; absolute internal ram data
                            255 ;--------------------------------------------------------
                            256 	.area IABS    (ABS,DATA)
                            257 	.area IABS    (ABS,DATA)
                            258 ;--------------------------------------------------------
                            259 ; bit data
                            260 ;--------------------------------------------------------
                            261 	.area BSEG    (BIT)
                            262 ;--------------------------------------------------------
                            263 ; paged external ram data
                            264 ;--------------------------------------------------------
                            265 	.area PSEG    (PAG,XDATA)
                            266 ;--------------------------------------------------------
                            267 ; external ram data
                            268 ;--------------------------------------------------------
                            269 	.area XSEG    (XDATA)
                    FFFE    270 _startBrk	=	0xfffe
                    FFFF    271 _endBrk	=	0xffff
                    0200    272 _r	=	0x0200
                    4000    273 _shared_a	=	0x4000
                    4080    274 _shared_b	=	0x4080
                    4100    275 _shared_m	=	0x4100
                            276 ;--------------------------------------------------------
                            277 ; absolute external ram data
                            278 ;--------------------------------------------------------
                            279 	.area XABS    (ABS,XDATA)
   0000                     280 	.org 0x0000
   0000                     281 _m::
   0000                     282 	.ds 128
   0080                     283 	.org 0x0080
   0080                     284 _a::
   0080                     285 	.ds 128
   0100                     286 	.org 0x0100
   0100                     287 _b::
   0100                     288 	.ds 128
                            289 ;--------------------------------------------------------
                            290 ; external initialized ram data
                            291 ;--------------------------------------------------------
                            292 	.area XISEG   (XDATA)
                            293 	.area HOME    (CODE)
                            294 	.area GSINIT0 (CODE)
                            295 	.area GSINIT1 (CODE)
                            296 	.area GSINIT2 (CODE)
                            297 	.area GSINIT3 (CODE)
                            298 	.area GSINIT4 (CODE)
                            299 	.area GSINIT5 (CODE)
                            300 	.area GSINIT  (CODE)
                            301 	.area GSFINAL (CODE)
                            302 	.area CSEG    (CODE)
                            303 ;--------------------------------------------------------
                            304 ; interrupt vector 
                            305 ;--------------------------------------------------------
                            306 	.area HOME    (CODE)
   0000                     307 __interrupt_vect:
   0000 02 00 08            308 	ljmp	__sdcc_gsinit_startup
                            309 ;--------------------------------------------------------
                            310 ; global & static initialisations
                            311 ;--------------------------------------------------------
                            312 	.area HOME    (CODE)
                            313 	.area GSINIT  (CODE)
                            314 	.area GSFINAL (CODE)
                            315 	.area GSINIT  (CODE)
                            316 	.globl __sdcc_gsinit_startup
                            317 	.globl __sdcc_program_startup
                            318 	.globl __start__stack
                            319 	.globl __mcs51_genXINIT
                            320 	.globl __mcs51_genXRAMCLEAR
                            321 	.globl __mcs51_genRAMCLEAR
                            322 ;	main.c:11: volatile __xdata __at (0x0000) unsigned char m[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0061 90 00 00            323 	mov	dptr,#_m
   0064 74 D3               324 	mov	a,#0xD3
   0066 F0                  325 	movx	@dptr,a
   0067 90 00 01            326 	mov	dptr,#(_m + 0x0001)
   006A 74 55               327 	mov	a,#0x55
   006C F0                  328 	movx	@dptr,a
   006D 90 00 02            329 	mov	dptr,#(_m + 0x0002)
   0070 74 A4               330 	mov	a,#0xA4
   0072 F0                  331 	movx	@dptr,a
   0073 90 00 03            332 	mov	dptr,#(_m + 0x0003)
   0076 74 5F               333 	mov	a,#0x5F
   0078 F0                  334 	movx	@dptr,a
   0079 90 00 04            335 	mov	dptr,#(_m + 0x0004)
   007C 74 57               336 	mov	a,#0x57
   007E F0                  337 	movx	@dptr,a
   007F 90 00 05            338 	mov	dptr,#(_m + 0x0005)
   0082 74 F3               339 	mov	a,#0xF3
   0084 F0                  340 	movx	@dptr,a
   0085 90 00 06            341 	mov	dptr,#(_m + 0x0006)
   0088 74 F9               342 	mov	a,#0xF9
   008A F0                  343 	movx	@dptr,a
   008B 90 00 07            344 	mov	dptr,#(_m + 0x0007)
   008E 74 3E               345 	mov	a,#0x3E
   0090 F0                  346 	movx	@dptr,a
   0091 90 00 08            347 	mov	dptr,#(_m + 0x0008)
   0094 74 CF               348 	mov	a,#0xCF
   0096 F0                  349 	movx	@dptr,a
   0097 90 00 09            350 	mov	dptr,#(_m + 0x0009)
   009A 74 84               351 	mov	a,#0x84
   009C F0                  352 	movx	@dptr,a
   009D 90 00 0A            353 	mov	dptr,#(_m + 0x000a)
   00A0 74 6D               354 	mov	a,#0x6D
   00A2 F0                  355 	movx	@dptr,a
   00A3 90 00 0B            356 	mov	dptr,#(_m + 0x000b)
   00A6 74 FF               357 	mov	a,#0xFF
   00A8 F0                  358 	movx	@dptr,a
   00A9 90 00 0C            359 	mov	dptr,#(_m + 0x000c)
   00AC 74 20               360 	mov	a,#0x20
   00AE F0                  361 	movx	@dptr,a
   00AF 90 00 0D            362 	mov	dptr,#(_m + 0x000d)
   00B2 74 C1               363 	mov	a,#0xC1
   00B4 F0                  364 	movx	@dptr,a
   00B5 90 00 0E            365 	mov	dptr,#(_m + 0x000e)
   00B8 74 AE               366 	mov	a,#0xAE
   00BA F0                  367 	movx	@dptr,a
   00BB 90 00 0F            368 	mov	dptr,#(_m + 0x000f)
   00BE 74 12               369 	mov	a,#0x12
   00C0 F0                  370 	movx	@dptr,a
   00C1 90 00 10            371 	mov	dptr,#(_m + 0x0010)
   00C4 74 CF               372 	mov	a,#0xCF
   00C6 F0                  373 	movx	@dptr,a
   00C7 90 00 11            374 	mov	dptr,#(_m + 0x0011)
   00CA 74 F1               375 	mov	a,#0xF1
   00CC F0                  376 	movx	@dptr,a
   00CD 90 00 12            377 	mov	dptr,#(_m + 0x0012)
   00D0 E4                  378 	clr	a
   00D1 F0                  379 	movx	@dptr,a
   00D2 90 00 13            380 	mov	dptr,#(_m + 0x0013)
   00D5 74 66               381 	mov	a,#0x66
   00D7 F0                  382 	movx	@dptr,a
   00D8 90 00 14            383 	mov	dptr,#(_m + 0x0014)
   00DB 74 45               384 	mov	a,#0x45
   00DD F0                  385 	movx	@dptr,a
   00DE 90 00 15            386 	mov	dptr,#(_m + 0x0015)
   00E1 74 E2               387 	mov	a,#0xE2
   00E3 F0                  388 	movx	@dptr,a
   00E4 90 00 16            389 	mov	dptr,#(_m + 0x0016)
   00E7 74 34               390 	mov	a,#0x34
   00E9 F0                  391 	movx	@dptr,a
   00EA 90 00 17            392 	mov	dptr,#(_m + 0x0017)
   00ED 74 61               393 	mov	a,#0x61
   00EF F0                  394 	movx	@dptr,a
   00F0 90 00 18            395 	mov	dptr,#(_m + 0x0018)
   00F3 74 27               396 	mov	a,#0x27
   00F5 F0                  397 	movx	@dptr,a
   00F6 90 00 19            398 	mov	dptr,#(_m + 0x0019)
   00F9 74 F2               399 	mov	a,#0xF2
   00FB F0                  400 	movx	@dptr,a
   00FC 90 00 1A            401 	mov	dptr,#(_m + 0x001a)
   00FF 74 57               402 	mov	a,#0x57
   0101 F0                  403 	movx	@dptr,a
   0102 90 00 1B            404 	mov	dptr,#(_m + 0x001b)
   0105 74 B3               405 	mov	a,#0xB3
   0107 F0                  406 	movx	@dptr,a
   0108 90 00 1C            407 	mov	dptr,#(_m + 0x001c)
   010B 74 42               408 	mov	a,#0x42
   010D F0                  409 	movx	@dptr,a
   010E 90 00 1D            410 	mov	dptr,#(_m + 0x001d)
   0111 74 21               411 	mov	a,#0x21
   0113 F0                  412 	movx	@dptr,a
   0114 90 00 1E            413 	mov	dptr,#(_m + 0x001e)
   0117 74 80               414 	mov	a,#0x80
   0119 F0                  415 	movx	@dptr,a
   011A 90 00 1F            416 	mov	dptr,#(_m + 0x001f)
   011D 74 95               417 	mov	a,#0x95
   011F F0                  418 	movx	@dptr,a
   0120 90 00 20            419 	mov	dptr,#(_m + 0x0020)
   0123 74 AB               420 	mov	a,#0xAB
   0125 F0                  421 	movx	@dptr,a
   0126 90 00 21            422 	mov	dptr,#(_m + 0x0021)
   0129 74 15               423 	mov	a,#0x15
   012B F0                  424 	movx	@dptr,a
   012C 90 00 22            425 	mov	dptr,#(_m + 0x0022)
   012F 74 A2               426 	mov	a,#0xA2
   0131 F0                  427 	movx	@dptr,a
   0132 90 00 23            428 	mov	dptr,#(_m + 0x0023)
   0135 74 1D               429 	mov	a,#0x1D
   0137 F0                  430 	movx	@dptr,a
   0138 90 00 24            431 	mov	dptr,#(_m + 0x0024)
   013B 74 53               432 	mov	a,#0x53
   013D F0                  433 	movx	@dptr,a
   013E 90 00 25            434 	mov	dptr,#(_m + 0x0025)
   0141 74 B2               435 	mov	a,#0xB2
   0143 F0                  436 	movx	@dptr,a
   0144 90 00 26            437 	mov	dptr,#(_m + 0x0026)
   0147 74 27               438 	mov	a,#0x27
   0149 F0                  439 	movx	@dptr,a
   014A 90 00 27            440 	mov	dptr,#(_m + 0x0027)
   014D 74 E6               441 	mov	a,#0xE6
   014F F0                  442 	movx	@dptr,a
   0150 90 00 28            443 	mov	dptr,#(_m + 0x0028)
   0153 74 56               444 	mov	a,#0x56
   0155 F0                  445 	movx	@dptr,a
   0156 90 00 29            446 	mov	dptr,#(_m + 0x0029)
   0159 74 93               447 	mov	a,#0x93
   015B F0                  448 	movx	@dptr,a
   015C 90 00 2A            449 	mov	dptr,#(_m + 0x002a)
   015F 74 27               450 	mov	a,#0x27
   0161 F0                  451 	movx	@dptr,a
   0162 90 00 2B            452 	mov	dptr,#(_m + 0x002b)
   0165 74 AF               453 	mov	a,#0xAF
   0167 F0                  454 	movx	@dptr,a
   0168 90 00 2C            455 	mov	dptr,#(_m + 0x002c)
   016B 74 C2               456 	mov	a,#0xC2
   016D F0                  457 	movx	@dptr,a
   016E 90 00 2D            458 	mov	dptr,#(_m + 0x002d)
   0171 74 EE               459 	mov	a,#0xEE
   0173 F0                  460 	movx	@dptr,a
   0174 90 00 2E            461 	mov	dptr,#(_m + 0x002e)
   0177 74 2B               462 	mov	a,#0x2B
   0179 F0                  463 	movx	@dptr,a
   017A 90 00 2F            464 	mov	dptr,#(_m + 0x002f)
   017D 74 2F               465 	mov	a,#0x2F
   017F F0                  466 	movx	@dptr,a
   0180 90 00 30            467 	mov	dptr,#(_m + 0x0030)
   0183 74 9A               468 	mov	a,#0x9A
   0185 F0                  469 	movx	@dptr,a
   0186 90 00 31            470 	mov	dptr,#(_m + 0x0031)
   0189 74 AE               471 	mov	a,#0xAE
   018B F0                  472 	movx	@dptr,a
   018C 90 00 32            473 	mov	dptr,#(_m + 0x0032)
   018F 74 6A               474 	mov	a,#0x6A
   0191 F0                  475 	movx	@dptr,a
   0192 90 00 33            476 	mov	dptr,#(_m + 0x0033)
   0195 74 09               477 	mov	a,#0x09
   0197 F0                  478 	movx	@dptr,a
   0198 90 00 34            479 	mov	dptr,#(_m + 0x0034)
   019B 74 E5               480 	mov	a,#0xE5
   019D F0                  481 	movx	@dptr,a
   019E 90 00 35            482 	mov	dptr,#(_m + 0x0035)
   01A1 74 7F               483 	mov	a,#0x7F
   01A3 F0                  484 	movx	@dptr,a
   01A4 90 00 36            485 	mov	dptr,#(_m + 0x0036)
   01A7 74 AE               486 	mov	a,#0xAE
   01A9 F0                  487 	movx	@dptr,a
   01AA 90 00 37            488 	mov	dptr,#(_m + 0x0037)
   01AD 74 7D               489 	mov	a,#0x7D
   01AF F0                  490 	movx	@dptr,a
   01B0 90 00 38            491 	mov	dptr,#(_m + 0x0038)
   01B3 74 2B               492 	mov	a,#0x2B
   01B5 F0                  493 	movx	@dptr,a
   01B6 90 00 39            494 	mov	dptr,#(_m + 0x0039)
   01B9 74 DD               495 	mov	a,#0xDD
   01BB F0                  496 	movx	@dptr,a
   01BC 90 00 3A            497 	mov	dptr,#(_m + 0x003a)
   01BF 74 58               498 	mov	a,#0x58
   01C1 F0                  499 	movx	@dptr,a
   01C2 90 00 3B            500 	mov	dptr,#(_m + 0x003b)
   01C5 74 2F               501 	mov	a,#0x2F
   01C7 F0                  502 	movx	@dptr,a
   01C8 90 00 3C            503 	mov	dptr,#(_m + 0x003c)
   01CB 74 87               504 	mov	a,#0x87
   01CD F0                  505 	movx	@dptr,a
   01CE 90 00 3D            506 	mov	dptr,#(_m + 0x003d)
   01D1 74 70               507 	mov	a,#0x70
   01D3 F0                  508 	movx	@dptr,a
   01D4 90 00 3E            509 	mov	dptr,#(_m + 0x003e)
   01D7 74 05               510 	mov	a,#0x05
   01D9 F0                  511 	movx	@dptr,a
   01DA 90 00 3F            512 	mov	dptr,#(_m + 0x003f)
   01DD 74 1F               513 	mov	a,#0x1F
   01DF F0                  514 	movx	@dptr,a
   01E0 90 00 40            515 	mov	dptr,#(_m + 0x0040)
   01E3 74 F8               516 	mov	a,#0xF8
   01E5 F0                  517 	movx	@dptr,a
   01E6 90 00 41            518 	mov	dptr,#(_m + 0x0041)
   01E9 74 BD               519 	mov	a,#0xBD
   01EB F0                  520 	movx	@dptr,a
   01EC 90 00 42            521 	mov	dptr,#(_m + 0x0042)
   01EF 74 0B               522 	mov	a,#0x0B
   01F1 F0                  523 	movx	@dptr,a
   01F2 90 00 43            524 	mov	dptr,#(_m + 0x0043)
   01F5 74 E0               525 	mov	a,#0xE0
   01F7 F0                  526 	movx	@dptr,a
   01F8 90 00 44            527 	mov	dptr,#(_m + 0x0044)
   01FB 74 FD               528 	mov	a,#0xFD
   01FD F0                  529 	movx	@dptr,a
   01FE 90 00 45            530 	mov	dptr,#(_m + 0x0045)
   0201 74 F1               531 	mov	a,#0xF1
   0203 F0                  532 	movx	@dptr,a
   0204 90 00 46            533 	mov	dptr,#(_m + 0x0046)
   0207 74 81               534 	mov	a,#0x81
   0209 F0                  535 	movx	@dptr,a
   020A 90 00 47            536 	mov	dptr,#(_m + 0x0047)
   020D 74 60               537 	mov	a,#0x60
   020F F0                  538 	movx	@dptr,a
   0210 90 00 48            539 	mov	dptr,#(_m + 0x0048)
   0213 74 BF               540 	mov	a,#0xBF
   0215 F0                  541 	movx	@dptr,a
   0216 90 00 49            542 	mov	dptr,#(_m + 0x0049)
   0219 74 D2               543 	mov	a,#0xD2
   021B F0                  544 	movx	@dptr,a
   021C 90 00 4A            545 	mov	dptr,#(_m + 0x004a)
   021F 74 FE               546 	mov	a,#0xFE
   0221 F0                  547 	movx	@dptr,a
   0222 90 00 4B            548 	mov	dptr,#(_m + 0x004b)
   0225 74 8F               549 	mov	a,#0x8F
   0227 F0                  550 	movx	@dptr,a
   0228 90 00 4C            551 	mov	dptr,#(_m + 0x004c)
   022B 74 7B               552 	mov	a,#0x7B
   022D F0                  553 	movx	@dptr,a
   022E 90 00 4D            554 	mov	dptr,#(_m + 0x004d)
   0231 74 B9               555 	mov	a,#0xB9
   0233 F0                  556 	movx	@dptr,a
   0234 90 00 4E            557 	mov	dptr,#(_m + 0x004e)
   0237 74 A9               558 	mov	a,#0xA9
   0239 F0                  559 	movx	@dptr,a
   023A 90 00 4F            560 	mov	dptr,#(_m + 0x004f)
   023D 74 A4               561 	mov	a,#0xA4
   023F F0                  562 	movx	@dptr,a
   0240 90 00 50            563 	mov	dptr,#(_m + 0x0050)
   0243 74 6A               564 	mov	a,#0x6A
   0245 F0                  565 	movx	@dptr,a
   0246 90 00 51            566 	mov	dptr,#(_m + 0x0051)
   0249 74 0A               567 	mov	a,#0x0A
   024B F0                  568 	movx	@dptr,a
   024C 90 00 52            569 	mov	dptr,#(_m + 0x0052)
   024F 74 A3               570 	mov	a,#0xA3
   0251 F0                  571 	movx	@dptr,a
   0252 90 00 53            572 	mov	dptr,#(_m + 0x0053)
   0255 74 A3               573 	mov	a,#0xA3
   0257 F0                  574 	movx	@dptr,a
   0258 90 00 54            575 	mov	dptr,#(_m + 0x0054)
   025B 74 70               576 	mov	a,#0x70
   025D F0                  577 	movx	@dptr,a
   025E 90 00 55            578 	mov	dptr,#(_m + 0x0055)
   0261 74 22               579 	mov	a,#0x22
   0263 F0                  580 	movx	@dptr,a
   0264 90 00 56            581 	mov	dptr,#(_m + 0x0056)
   0267 74 BF               582 	mov	a,#0xBF
   0269 F0                  583 	movx	@dptr,a
   026A 90 00 57            584 	mov	dptr,#(_m + 0x0057)
   026D 74 4C               585 	mov	a,#0x4C
   026F F0                  586 	movx	@dptr,a
   0270 90 00 58            587 	mov	dptr,#(_m + 0x0058)
   0273 74 1B               588 	mov	a,#0x1B
   0275 F0                  589 	movx	@dptr,a
   0276 90 00 59            590 	mov	dptr,#(_m + 0x0059)
   0279 74 B0               591 	mov	a,#0xB0
   027B F0                  592 	movx	@dptr,a
   027C 90 00 5A            593 	mov	dptr,#(_m + 0x005a)
   027F 74 41               594 	mov	a,#0x41
   0281 F0                  595 	movx	@dptr,a
   0282 90 00 5B            596 	mov	dptr,#(_m + 0x005b)
   0285 74 24               597 	mov	a,#0x24
   0287 F0                  598 	movx	@dptr,a
   0288 90 00 5C            599 	mov	dptr,#(_m + 0x005c)
   028B 74 4C               600 	mov	a,#0x4C
   028D F0                  601 	movx	@dptr,a
   028E 90 00 5D            602 	mov	dptr,#(_m + 0x005d)
   0291 74 3A               603 	mov	a,#0x3A
   0293 F0                  604 	movx	@dptr,a
   0294 90 00 5E            605 	mov	dptr,#(_m + 0x005e)
   0297 74 08               606 	mov	a,#0x08
   0299 F0                  607 	movx	@dptr,a
   029A 90 00 5F            608 	mov	dptr,#(_m + 0x005f)
   029D 74 EC               609 	mov	a,#0xEC
   029F F0                  610 	movx	@dptr,a
   02A0 90 00 60            611 	mov	dptr,#(_m + 0x0060)
   02A3 74 F4               612 	mov	a,#0xF4
   02A5 F0                  613 	movx	@dptr,a
   02A6 90 00 61            614 	mov	dptr,#(_m + 0x0061)
   02A9 74 91               615 	mov	a,#0x91
   02AB F0                  616 	movx	@dptr,a
   02AC 90 00 62            617 	mov	dptr,#(_m + 0x0062)
   02AF 74 FF               618 	mov	a,#0xFF
   02B1 F0                  619 	movx	@dptr,a
   02B2 90 00 63            620 	mov	dptr,#(_m + 0x0063)
   02B5 74 93               621 	mov	a,#0x93
   02B7 F0                  622 	movx	@dptr,a
   02B8 90 00 64            623 	mov	dptr,#(_m + 0x0064)
   02BB 74 8D               624 	mov	a,#0x8D
   02BD F0                  625 	movx	@dptr,a
   02BE 90 00 65            626 	mov	dptr,#(_m + 0x0065)
   02C1 74 FC               627 	mov	a,#0xFC
   02C3 F0                  628 	movx	@dptr,a
   02C4 90 00 66            629 	mov	dptr,#(_m + 0x0066)
   02C7 74 FA               630 	mov	a,#0xFA
   02C9 F0                  631 	movx	@dptr,a
   02CA 90 00 67            632 	mov	dptr,#(_m + 0x0067)
   02CD 74 4C               633 	mov	a,#0x4C
   02CF F0                  634 	movx	@dptr,a
   02D0 90 00 68            635 	mov	dptr,#(_m + 0x0068)
   02D3 74 26               636 	mov	a,#0x26
   02D5 F0                  637 	movx	@dptr,a
   02D6 90 00 69            638 	mov	dptr,#(_m + 0x0069)
   02D9 74 2D               639 	mov	a,#0x2D
   02DB F0                  640 	movx	@dptr,a
   02DC 90 00 6A            641 	mov	dptr,#(_m + 0x006a)
   02DF 74 D2               642 	mov	a,#0xD2
   02E1 F0                  643 	movx	@dptr,a
   02E2 90 00 6B            644 	mov	dptr,#(_m + 0x006b)
   02E5 74 E9               645 	mov	a,#0xE9
   02E7 F0                  646 	movx	@dptr,a
   02E8 90 00 6C            647 	mov	dptr,#(_m + 0x006c)
   02EB 74 FC               648 	mov	a,#0xFC
   02ED F0                  649 	movx	@dptr,a
   02EE 90 00 6D            650 	mov	dptr,#(_m + 0x006d)
   02F1 74 76               651 	mov	a,#0x76
   02F3 F0                  652 	movx	@dptr,a
   02F4 90 00 6E            653 	mov	dptr,#(_m + 0x006e)
   02F7 74 B1               654 	mov	a,#0xB1
   02F9 F0                  655 	movx	@dptr,a
   02FA 90 00 6F            656 	mov	dptr,#(_m + 0x006f)
   02FD 74 67               657 	mov	a,#0x67
   02FF F0                  658 	movx	@dptr,a
   0300 90 00 70            659 	mov	dptr,#(_m + 0x0070)
   0303 74 5E               660 	mov	a,#0x5E
   0305 F0                  661 	movx	@dptr,a
   0306 90 00 71            662 	mov	dptr,#(_m + 0x0071)
   0309 74 24               663 	mov	a,#0x24
   030B F0                  664 	movx	@dptr,a
   030C 90 00 72            665 	mov	dptr,#(_m + 0x0072)
   030F 74 9E               666 	mov	a,#0x9E
   0311 F0                  667 	movx	@dptr,a
   0312 90 00 73            668 	mov	dptr,#(_m + 0x0073)
   0315 74 31               669 	mov	a,#0x31
   0317 F0                  670 	movx	@dptr,a
   0318 90 00 74            671 	mov	dptr,#(_m + 0x0074)
   031B 74 66               672 	mov	a,#0x66
   031D F0                  673 	movx	@dptr,a
   031E 90 00 75            674 	mov	dptr,#(_m + 0x0075)
   0321 74 5D               675 	mov	a,#0x5D
   0323 F0                  676 	movx	@dptr,a
   0324 90 00 76            677 	mov	dptr,#(_m + 0x0076)
   0327 74 98               678 	mov	a,#0x98
   0329 F0                  679 	movx	@dptr,a
   032A 90 00 77            680 	mov	dptr,#(_m + 0x0077)
   032D 74 4C               681 	mov	a,#0x4C
   032F F0                  682 	movx	@dptr,a
   0330 90 00 78            683 	mov	dptr,#(_m + 0x0078)
   0333 74 0D               684 	mov	a,#0x0D
   0335 F0                  685 	movx	@dptr,a
   0336 90 00 79            686 	mov	dptr,#(_m + 0x0079)
   0339 74 79               687 	mov	a,#0x79
   033B F0                  688 	movx	@dptr,a
   033C 90 00 7A            689 	mov	dptr,#(_m + 0x007a)
   033F 74 81               690 	mov	a,#0x81
   0341 F0                  691 	movx	@dptr,a
   0342 90 00 7B            692 	mov	dptr,#(_m + 0x007b)
   0345 74 76               693 	mov	a,#0x76
   0347 F0                  694 	movx	@dptr,a
   0348 90 00 7C            695 	mov	dptr,#(_m + 0x007c)
   034B 74 AC               696 	mov	a,#0xAC
   034D F0                  697 	movx	@dptr,a
   034E 90 00 7D            698 	mov	dptr,#(_m + 0x007d)
   0351 74 1D               699 	mov	a,#0x1D
   0353 F0                  700 	movx	@dptr,a
   0354 90 00 7E            701 	mov	dptr,#(_m + 0x007e)
   0357 74 E2               702 	mov	a,#0xE2
   0359 F0                  703 	movx	@dptr,a
   035A 90 00 7F            704 	mov	dptr,#(_m + 0x007f)
   035D 74 CA               705 	mov	a,#0xCA
   035F F0                  706 	movx	@dptr,a
                            707 ;	main.c:12: volatile __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0360 90 00 80            708 	mov	dptr,#_a
   0363 74 FF               709 	mov	a,#0xFF
   0365 F0                  710 	movx	@dptr,a
   0366 90 00 81            711 	mov	dptr,#(_a + 0x0001)
   0369 74 7F               712 	mov	a,#0x7F
   036B F0                  713 	movx	@dptr,a
   036C 90 00 82            714 	mov	dptr,#(_a + 0x0002)
   036F 74 14               715 	mov	a,#0x14
   0371 F0                  716 	movx	@dptr,a
   0372 90 00 83            717 	mov	dptr,#(_a + 0x0003)
   0375 74 64               718 	mov	a,#0x64
   0377 F0                  719 	movx	@dptr,a
   0378 90 00 84            720 	mov	dptr,#(_a + 0x0004)
   037B 74 47               721 	mov	a,#0x47
   037D F0                  722 	movx	@dptr,a
   037E 90 00 85            723 	mov	dptr,#(_a + 0x0005)
   0381 74 68               724 	mov	a,#0x68
   0383 F0                  725 	movx	@dptr,a
   0384 90 00 86            726 	mov	dptr,#(_a + 0x0006)
   0387 74 C2               727 	mov	a,#0xC2
   0389 F0                  728 	movx	@dptr,a
   038A 90 00 87            729 	mov	dptr,#(_a + 0x0007)
   038D 74 B6               730 	mov	a,#0xB6
   038F F0                  731 	movx	@dptr,a
   0390 90 00 88            732 	mov	dptr,#(_a + 0x0008)
   0393 74 27               733 	mov	a,#0x27
   0395 F0                  734 	movx	@dptr,a
   0396 90 00 89            735 	mov	dptr,#(_a + 0x0009)
   0399 74 32               736 	mov	a,#0x32
   039B F0                  737 	movx	@dptr,a
   039C 90 00 8A            738 	mov	dptr,#(_a + 0x000a)
   039F 74 63               739 	mov	a,#0x63
   03A1 F0                  740 	movx	@dptr,a
   03A2 90 00 8B            741 	mov	dptr,#(_a + 0x000b)
   03A5 74 2C               742 	mov	a,#0x2C
   03A7 F0                  743 	movx	@dptr,a
   03A8 90 00 8C            744 	mov	dptr,#(_a + 0x000c)
   03AB 74 B0               745 	mov	a,#0xB0
   03AD F0                  746 	movx	@dptr,a
   03AE 90 00 8D            747 	mov	dptr,#(_a + 0x000d)
   03B1 74 C3               748 	mov	a,#0xC3
   03B3 F0                  749 	movx	@dptr,a
   03B4 90 00 8E            750 	mov	dptr,#(_a + 0x000e)
   03B7 74 95               751 	mov	a,#0x95
   03B9 F0                  752 	movx	@dptr,a
   03BA 90 00 8F            753 	mov	dptr,#(_a + 0x000f)
   03BD 74 13               754 	mov	a,#0x13
   03BF F0                  755 	movx	@dptr,a
   03C0 90 00 90            756 	mov	dptr,#(_a + 0x0010)
   03C3 74 C5               757 	mov	a,#0xC5
   03C5 F0                  758 	movx	@dptr,a
   03C6 90 00 91            759 	mov	dptr,#(_a + 0x0011)
   03C9 74 7E               760 	mov	a,#0x7E
   03CB F0                  761 	movx	@dptr,a
   03CC 90 00 92            762 	mov	dptr,#(_a + 0x0012)
   03CF 74 17               763 	mov	a,#0x17
   03D1 F0                  764 	movx	@dptr,a
   03D2 90 00 93            765 	mov	dptr,#(_a + 0x0013)
   03D5 74 22               766 	mov	a,#0x22
   03D7 F0                  767 	movx	@dptr,a
   03D8 90 00 94            768 	mov	dptr,#(_a + 0x0014)
   03DB 74 F3               769 	mov	a,#0xF3
   03DD F0                  770 	movx	@dptr,a
   03DE 90 00 95            771 	mov	dptr,#(_a + 0x0015)
   03E1 74 7C               772 	mov	a,#0x7C
   03E3 F0                  773 	movx	@dptr,a
   03E4 90 00 96            774 	mov	dptr,#(_a + 0x0016)
   03E7 74 2D               775 	mov	a,#0x2D
   03E9 F0                  776 	movx	@dptr,a
   03EA 90 00 97            777 	mov	dptr,#(_a + 0x0017)
   03ED 74 E8               778 	mov	a,#0xE8
   03EF F0                  779 	movx	@dptr,a
   03F0 90 00 98            780 	mov	dptr,#(_a + 0x0018)
   03F3 74 13               781 	mov	a,#0x13
   03F5 F0                  782 	movx	@dptr,a
   03F6 90 00 99            783 	mov	dptr,#(_a + 0x0019)
   03F9 74 47               784 	mov	a,#0x47
   03FB F0                  785 	movx	@dptr,a
   03FC 90 00 9A            786 	mov	dptr,#(_a + 0x001a)
   03FF 74 5E               787 	mov	a,#0x5E
   0401 F0                  788 	movx	@dptr,a
   0402 90 00 9B            789 	mov	dptr,#(_a + 0x001b)
   0405 74 15               790 	mov	a,#0x15
   0407 F0                  791 	movx	@dptr,a
   0408 90 00 9C            792 	mov	dptr,#(_a + 0x001c)
   040B 74 4E               793 	mov	a,#0x4E
   040D F0                  794 	movx	@dptr,a
   040E 90 00 9D            795 	mov	dptr,#(_a + 0x001d)
   0411 74 EF               796 	mov	a,#0xEF
   0413 F0                  797 	movx	@dptr,a
   0414 90 00 9E            798 	mov	dptr,#(_a + 0x001e)
   0417 74 83               799 	mov	a,#0x83
   0419 F0                  800 	movx	@dptr,a
   041A 90 00 9F            801 	mov	dptr,#(_a + 0x001f)
   041D 74 81               802 	mov	a,#0x81
   041F F0                  803 	movx	@dptr,a
   0420 90 00 A0            804 	mov	dptr,#(_a + 0x0020)
   0423 74 DF               805 	mov	a,#0xDF
   0425 F0                  806 	movx	@dptr,a
   0426 90 00 A1            807 	mov	dptr,#(_a + 0x0021)
   0429 74 C3               808 	mov	a,#0xC3
   042B F0                  809 	movx	@dptr,a
   042C 90 00 A2            810 	mov	dptr,#(_a + 0x0022)
   042F 74 47               811 	mov	a,#0x47
   0431 F0                  812 	movx	@dptr,a
   0432 90 00 A3            813 	mov	dptr,#(_a + 0x0023)
   0435 74 D3               814 	mov	a,#0xD3
   0437 F0                  815 	movx	@dptr,a
   0438 90 00 A4            816 	mov	dptr,#(_a + 0x0024)
   043B 74 60               817 	mov	a,#0x60
   043D F0                  818 	movx	@dptr,a
   043E 90 00 A5            819 	mov	dptr,#(_a + 0x0025)
   0441 74 BB               820 	mov	a,#0xBB
   0443 F0                  821 	movx	@dptr,a
   0444 90 00 A6            822 	mov	dptr,#(_a + 0x0026)
   0447 74 8B               823 	mov	a,#0x8B
   0449 F0                  824 	movx	@dptr,a
   044A 90 00 A7            825 	mov	dptr,#(_a + 0x0027)
   044D 74 3E               826 	mov	a,#0x3E
   044F F0                  827 	movx	@dptr,a
   0450 90 00 A8            828 	mov	dptr,#(_a + 0x0028)
   0453 74 B6               829 	mov	a,#0xB6
   0455 F0                  830 	movx	@dptr,a
   0456 90 00 A9            831 	mov	dptr,#(_a + 0x0029)
   0459 74 35               832 	mov	a,#0x35
   045B F0                  833 	movx	@dptr,a
   045C 90 00 AA            834 	mov	dptr,#(_a + 0x002a)
   045F 74 B1               835 	mov	a,#0xB1
   0461 F0                  836 	movx	@dptr,a
   0462 90 00 AB            837 	mov	dptr,#(_a + 0x002b)
   0465 74 6E               838 	mov	a,#0x6E
   0467 F0                  839 	movx	@dptr,a
   0468 90 00 AC            840 	mov	dptr,#(_a + 0x002c)
   046B 74 D1               841 	mov	a,#0xD1
   046D F0                  842 	movx	@dptr,a
   046E 90 00 AD            843 	mov	dptr,#(_a + 0x002d)
   0471 74 D5               844 	mov	a,#0xD5
   0473 F0                  845 	movx	@dptr,a
   0474 90 00 AE            846 	mov	dptr,#(_a + 0x002e)
   0477 74 DA               847 	mov	a,#0xDA
   0479 F0                  848 	movx	@dptr,a
   047A 90 00 AF            849 	mov	dptr,#(_a + 0x002f)
   047D 74 6F               850 	mov	a,#0x6F
   047F F0                  851 	movx	@dptr,a
   0480 90 00 B0            852 	mov	dptr,#(_a + 0x0030)
   0483 74 28               853 	mov	a,#0x28
   0485 F0                  854 	movx	@dptr,a
   0486 90 00 B1            855 	mov	dptr,#(_a + 0x0031)
   0489 74 16               856 	mov	a,#0x16
   048B F0                  857 	movx	@dptr,a
   048C 90 00 B2            858 	mov	dptr,#(_a + 0x0032)
   048F 74 2C               859 	mov	a,#0x2C
   0491 F0                  860 	movx	@dptr,a
   0492 90 00 B3            861 	mov	dptr,#(_a + 0x0033)
   0495 74 74               862 	mov	a,#0x74
   0497 F0                  863 	movx	@dptr,a
   0498 90 00 B4            864 	mov	dptr,#(_a + 0x0034)
   049B 74 36               865 	mov	a,#0x36
   049D F0                  866 	movx	@dptr,a
   049E 90 00 B5            867 	mov	dptr,#(_a + 0x0035)
   04A1 74 F9               868 	mov	a,#0xF9
   04A3 F0                  869 	movx	@dptr,a
   04A4 90 00 B6            870 	mov	dptr,#(_a + 0x0036)
   04A7 74 04               871 	mov	a,#0x04
   04A9 F0                  872 	movx	@dptr,a
   04AA 90 00 B7            873 	mov	dptr,#(_a + 0x0037)
   04AD 74 79               874 	mov	a,#0x79
   04AF F0                  875 	movx	@dptr,a
   04B0 90 00 B8            876 	mov	dptr,#(_a + 0x0038)
   04B3 74 F9               877 	mov	a,#0xF9
   04B5 F0                  878 	movx	@dptr,a
   04B6 90 00 B9            879 	mov	dptr,#(_a + 0x0039)
   04B9 74 76               880 	mov	a,#0x76
   04BB F0                  881 	movx	@dptr,a
   04BC 90 00 BA            882 	mov	dptr,#(_a + 0x003a)
   04BF 74 E2               883 	mov	a,#0xE2
   04C1 F0                  884 	movx	@dptr,a
   04C2 90 00 BB            885 	mov	dptr,#(_a + 0x003b)
   04C5 74 CC               886 	mov	a,#0xCC
   04C7 F0                  887 	movx	@dptr,a
   04C8 90 00 BC            888 	mov	dptr,#(_a + 0x003c)
   04CB 74 A4               889 	mov	a,#0xA4
   04CD F0                  890 	movx	@dptr,a
   04CE 90 00 BD            891 	mov	dptr,#(_a + 0x003d)
   04D1 74 82               892 	mov	a,#0x82
   04D3 F0                  893 	movx	@dptr,a
   04D4 90 00 BE            894 	mov	dptr,#(_a + 0x003e)
   04D7 74 A7               895 	mov	a,#0xA7
   04D9 F0                  896 	movx	@dptr,a
   04DA 90 00 BF            897 	mov	dptr,#(_a + 0x003f)
   04DD 74 A4               898 	mov	a,#0xA4
   04DF F0                  899 	movx	@dptr,a
   04E0 90 00 C0            900 	mov	dptr,#(_a + 0x0040)
   04E3 74 68               901 	mov	a,#0x68
   04E5 F0                  902 	movx	@dptr,a
   04E6 90 00 C1            903 	mov	dptr,#(_a + 0x0041)
   04E9 74 4E               904 	mov	a,#0x4E
   04EB F0                  905 	movx	@dptr,a
   04EC 90 00 C2            906 	mov	dptr,#(_a + 0x0042)
   04EF 74 24               907 	mov	a,#0x24
   04F1 F0                  908 	movx	@dptr,a
   04F2 90 00 C3            909 	mov	dptr,#(_a + 0x0043)
   04F5 74 A6               910 	mov	a,#0xA6
   04F7 F0                  911 	movx	@dptr,a
   04F8 90 00 C4            912 	mov	dptr,#(_a + 0x0044)
   04FB 74 C1               913 	mov	a,#0xC1
   04FD F0                  914 	movx	@dptr,a
   04FE 90 00 C5            915 	mov	dptr,#(_a + 0x0045)
   0501 74 58               916 	mov	a,#0x58
   0503 F0                  917 	movx	@dptr,a
   0504 90 00 C6            918 	mov	dptr,#(_a + 0x0046)
   0507 74 68               919 	mov	a,#0x68
   0509 F0                  920 	movx	@dptr,a
   050A 90 00 C7            921 	mov	dptr,#(_a + 0x0047)
   050D 74 24               922 	mov	a,#0x24
   050F F0                  923 	movx	@dptr,a
   0510 90 00 C8            924 	mov	dptr,#(_a + 0x0048)
   0513 74 58               925 	mov	a,#0x58
   0515 F0                  926 	movx	@dptr,a
   0516 90 00 C9            927 	mov	dptr,#(_a + 0x0049)
   0519 74 DC               928 	mov	a,#0xDC
   051B F0                  929 	movx	@dptr,a
   051C 90 00 CA            930 	mov	dptr,#(_a + 0x004a)
   051F 74 14               931 	mov	a,#0x14
   0521 F0                  932 	movx	@dptr,a
   0522 90 00 CB            933 	mov	dptr,#(_a + 0x004b)
   0525 74 F9               934 	mov	a,#0xF9
   0527 F0                  935 	movx	@dptr,a
   0528 90 00 CC            936 	mov	dptr,#(_a + 0x004c)
   052B 74 FF               937 	mov	a,#0xFF
   052D F0                  938 	movx	@dptr,a
   052E 90 00 CD            939 	mov	dptr,#(_a + 0x004d)
   0531 74 4D               940 	mov	a,#0x4D
   0533 F0                  941 	movx	@dptr,a
   0534 90 00 CE            942 	mov	dptr,#(_a + 0x004e)
   0537 74 A1               943 	mov	a,#0xA1
   0539 F0                  944 	movx	@dptr,a
   053A 90 00 CF            945 	mov	dptr,#(_a + 0x004f)
   053D 74 EF               946 	mov	a,#0xEF
   053F F0                  947 	movx	@dptr,a
   0540 90 00 D0            948 	mov	dptr,#(_a + 0x0050)
   0543 74 53               949 	mov	a,#0x53
   0545 F0                  950 	movx	@dptr,a
   0546 90 00 D1            951 	mov	dptr,#(_a + 0x0051)
   0549 74 A3               952 	mov	a,#0xA3
   054B F0                  953 	movx	@dptr,a
   054C 90 00 D2            954 	mov	dptr,#(_a + 0x0052)
   054F 74 C2               955 	mov	a,#0xC2
   0551 F0                  956 	movx	@dptr,a
   0552 90 00 D3            957 	mov	dptr,#(_a + 0x0053)
   0555 74 84               958 	mov	a,#0x84
   0557 F0                  959 	movx	@dptr,a
   0558 90 00 D4            960 	mov	dptr,#(_a + 0x0054)
   055B 74 1B               961 	mov	a,#0x1B
   055D F0                  962 	movx	@dptr,a
   055E 90 00 D5            963 	mov	dptr,#(_a + 0x0055)
   0561 74 81               964 	mov	a,#0x81
   0563 F0                  965 	movx	@dptr,a
   0564 90 00 D6            966 	mov	dptr,#(_a + 0x0056)
   0567 74 16               967 	mov	a,#0x16
   0569 F0                  968 	movx	@dptr,a
   056A 90 00 D7            969 	mov	dptr,#(_a + 0x0057)
   056D 74 6C               970 	mov	a,#0x6C
   056F F0                  971 	movx	@dptr,a
   0570 90 00 D8            972 	mov	dptr,#(_a + 0x0058)
   0573 74 DD               973 	mov	a,#0xDD
   0575 F0                  974 	movx	@dptr,a
   0576 90 00 D9            975 	mov	dptr,#(_a + 0x0059)
   0579 74 E3               976 	mov	a,#0xE3
   057B F0                  977 	movx	@dptr,a
   057C 90 00 DA            978 	mov	dptr,#(_a + 0x005a)
   057F 74 DB               979 	mov	a,#0xDB
   0581 F0                  980 	movx	@dptr,a
   0582 90 00 DB            981 	mov	dptr,#(_a + 0x005b)
   0585 74 A8               982 	mov	a,#0xA8
   0587 F0                  983 	movx	@dptr,a
   0588 90 00 DC            984 	mov	dptr,#(_a + 0x005c)
   058B 74 03               985 	mov	a,#0x03
   058D F0                  986 	movx	@dptr,a
   058E 90 00 DD            987 	mov	dptr,#(_a + 0x005d)
   0591 74 8F               988 	mov	a,#0x8F
   0593 F0                  989 	movx	@dptr,a
   0594 90 00 DE            990 	mov	dptr,#(_a + 0x005e)
   0597 74 F2               991 	mov	a,#0xF2
   0599 F0                  992 	movx	@dptr,a
   059A 90 00 DF            993 	mov	dptr,#(_a + 0x005f)
   059D 74 31               994 	mov	a,#0x31
   059F F0                  995 	movx	@dptr,a
   05A0 90 00 E0            996 	mov	dptr,#(_a + 0x0060)
   05A3 74 FD               997 	mov	a,#0xFD
   05A5 F0                  998 	movx	@dptr,a
   05A6 90 00 E1            999 	mov	dptr,#(_a + 0x0061)
   05A9 74 94              1000 	mov	a,#0x94
   05AB F0                 1001 	movx	@dptr,a
   05AC 90 00 E2           1002 	mov	dptr,#(_a + 0x0062)
   05AF 74 5D              1003 	mov	a,#0x5D
   05B1 F0                 1004 	movx	@dptr,a
   05B2 90 00 E3           1005 	mov	dptr,#(_a + 0x0063)
   05B5 74 26              1006 	mov	a,#0x26
   05B7 F0                 1007 	movx	@dptr,a
   05B8 90 00 E4           1008 	mov	dptr,#(_a + 0x0064)
   05BB 74 13              1009 	mov	a,#0x13
   05BD F0                 1010 	movx	@dptr,a
   05BE 90 00 E5           1011 	mov	dptr,#(_a + 0x0065)
   05C1 74 C6              1012 	mov	a,#0xC6
   05C3 F0                 1013 	movx	@dptr,a
   05C4 90 00 E6           1014 	mov	dptr,#(_a + 0x0066)
   05C7 74 68              1015 	mov	a,#0x68
   05C9 F0                 1016 	movx	@dptr,a
   05CA 90 00 E7           1017 	mov	dptr,#(_a + 0x0067)
   05CD 74 B4              1018 	mov	a,#0xB4
   05CF F0                 1019 	movx	@dptr,a
   05D0 90 00 E8           1020 	mov	dptr,#(_a + 0x0068)
   05D3 74 0D              1021 	mov	a,#0x0D
   05D5 F0                 1022 	movx	@dptr,a
   05D6 90 00 E9           1023 	mov	dptr,#(_a + 0x0069)
   05D9 74 CD              1024 	mov	a,#0xCD
   05DB F0                 1025 	movx	@dptr,a
   05DC 90 00 EA           1026 	mov	dptr,#(_a + 0x006a)
   05DF 74 F1              1027 	mov	a,#0xF1
   05E1 F0                 1028 	movx	@dptr,a
   05E2 90 00 EB           1029 	mov	dptr,#(_a + 0x006b)
   05E5 74 B8              1030 	mov	a,#0xB8
   05E7 F0                 1031 	movx	@dptr,a
   05E8 90 00 EC           1032 	mov	dptr,#(_a + 0x006c)
   05EB 74 66              1033 	mov	a,#0x66
   05ED F0                 1034 	movx	@dptr,a
   05EE 90 00 ED           1035 	mov	dptr,#(_a + 0x006d)
   05F1 74 0D              1036 	mov	a,#0x0D
   05F3 F0                 1037 	movx	@dptr,a
   05F4 90 00 EE           1038 	mov	dptr,#(_a + 0x006e)
   05F7 74 5D              1039 	mov	a,#0x5D
   05F9 F0                 1040 	movx	@dptr,a
   05FA 90 00 EF           1041 	mov	dptr,#(_a + 0x006f)
   05FD 74 3B              1042 	mov	a,#0x3B
   05FF F0                 1043 	movx	@dptr,a
   0600 90 00 F0           1044 	mov	dptr,#(_a + 0x0070)
   0603 74 2F              1045 	mov	a,#0x2F
   0605 F0                 1046 	movx	@dptr,a
   0606 90 00 F1           1047 	mov	dptr,#(_a + 0x0071)
   0609 74 C4              1048 	mov	a,#0xC4
   060B F0                 1049 	movx	@dptr,a
   060C 90 00 F2           1050 	mov	dptr,#(_a + 0x0072)
   060F 74 4A              1051 	mov	a,#0x4A
   0611 F0                 1052 	movx	@dptr,a
   0612 90 00 F3           1053 	mov	dptr,#(_a + 0x0073)
   0615 74 D1              1054 	mov	a,#0xD1
   0617 F0                 1055 	movx	@dptr,a
   0618 90 00 F4           1056 	mov	dptr,#(_a + 0x0074)
   061B 74 0B              1057 	mov	a,#0x0B
   061D F0                 1058 	movx	@dptr,a
   061E 90 00 F5           1059 	mov	dptr,#(_a + 0x0075)
   0621 74 36              1060 	mov	a,#0x36
   0623 F0                 1061 	movx	@dptr,a
   0624 90 00 F6           1062 	mov	dptr,#(_a + 0x0076)
   0627 74 C6              1063 	mov	a,#0xC6
   0629 F0                 1064 	movx	@dptr,a
   062A 90 00 F7           1065 	mov	dptr,#(_a + 0x0077)
   062D 74 10              1066 	mov	a,#0x10
   062F F0                 1067 	movx	@dptr,a
   0630 90 00 F8           1068 	mov	dptr,#(_a + 0x0078)
   0633 74 1A              1069 	mov	a,#0x1A
   0635 F0                 1070 	movx	@dptr,a
   0636 90 00 F9           1071 	mov	dptr,#(_a + 0x0079)
   0639 74 2F              1072 	mov	a,#0x2F
   063B F0                 1073 	movx	@dptr,a
   063C 90 00 FA           1074 	mov	dptr,#(_a + 0x007a)
   063F 74 72              1075 	mov	a,#0x72
   0641 F0                 1076 	movx	@dptr,a
   0642 90 00 FB           1077 	mov	dptr,#(_a + 0x007b)
   0645 74 D1              1078 	mov	a,#0xD1
   0647 F0                 1079 	movx	@dptr,a
   0648 90 00 FC           1080 	mov	dptr,#(_a + 0x007c)
   064B 74 BB              1081 	mov	a,#0xBB
   064D F0                 1082 	movx	@dptr,a
   064E 90 00 FD           1083 	mov	dptr,#(_a + 0x007d)
   0651 74 15              1084 	mov	a,#0x15
   0653 F0                 1085 	movx	@dptr,a
   0654 90 00 FE           1086 	mov	dptr,#(_a + 0x007e)
   0657 74 29              1087 	mov	a,#0x29
   0659 F0                 1088 	movx	@dptr,a
   065A 90 00 FF           1089 	mov	dptr,#(_a + 0x007f)
   065D 74 CA              1090 	mov	a,#0xCA
   065F F0                 1091 	movx	@dptr,a
                           1092 ;	main.c:13: volatile __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0660 90 01 00           1093 	mov	dptr,#_b
   0663 74 E1              1094 	mov	a,#0xE1
   0665 F0                 1095 	movx	@dptr,a
   0666 90 01 01           1096 	mov	dptr,#(_b + 0x0001)
   0669 74 8A              1097 	mov	a,#0x8A
   066B F0                 1098 	movx	@dptr,a
   066C 90 01 02           1099 	mov	dptr,#(_b + 0x0002)
   066F 74 03              1100 	mov	a,#0x03
   0671 F0                 1101 	movx	@dptr,a
   0672 90 01 03           1102 	mov	dptr,#(_b + 0x0003)
   0675 74 DB              1103 	mov	a,#0xDB
   0677 F0                 1104 	movx	@dptr,a
   0678 90 01 04           1105 	mov	dptr,#(_b + 0x0004)
   067B 74 E0              1106 	mov	a,#0xE0
   067D F0                 1107 	movx	@dptr,a
   067E 90 01 05           1108 	mov	dptr,#(_b + 0x0005)
   0681 74 D9              1109 	mov	a,#0xD9
   0683 F0                 1110 	movx	@dptr,a
   0684 90 01 06           1111 	mov	dptr,#(_b + 0x0006)
   0687 74 F6              1112 	mov	a,#0xF6
   0689 F0                 1113 	movx	@dptr,a
   068A 90 01 07           1114 	mov	dptr,#(_b + 0x0007)
   068D 74 55              1115 	mov	a,#0x55
   068F F0                 1116 	movx	@dptr,a
   0690 90 01 08           1117 	mov	dptr,#(_b + 0x0008)
   0693 74 B6              1118 	mov	a,#0xB6
   0695 F0                 1119 	movx	@dptr,a
   0696 90 01 09           1120 	mov	dptr,#(_b + 0x0009)
   0699 74 27              1121 	mov	a,#0x27
   069B F0                 1122 	movx	@dptr,a
   069C 90 01 0A           1123 	mov	dptr,#(_b + 0x000a)
   069F 74 0A              1124 	mov	a,#0x0A
   06A1 F0                 1125 	movx	@dptr,a
   06A2 90 01 0B           1126 	mov	dptr,#(_b + 0x000b)
   06A5 74 28              1127 	mov	a,#0x28
   06A7 F0                 1128 	movx	@dptr,a
   06A8 90 01 0C           1129 	mov	dptr,#(_b + 0x000c)
   06AB 74 F0              1130 	mov	a,#0xF0
   06AD F0                 1131 	movx	@dptr,a
   06AE 90 01 0D           1132 	mov	dptr,#(_b + 0x000d)
   06B1 74 5E              1133 	mov	a,#0x5E
   06B3 F0                 1134 	movx	@dptr,a
   06B4 90 01 0E           1135 	mov	dptr,#(_b + 0x000e)
   06B7 74 74              1136 	mov	a,#0x74
   06B9 F0                 1137 	movx	@dptr,a
   06BA 90 01 0F           1138 	mov	dptr,#(_b + 0x000f)
   06BD 74 7F              1139 	mov	a,#0x7F
   06BF F0                 1140 	movx	@dptr,a
   06C0 90 01 10           1141 	mov	dptr,#(_b + 0x0010)
   06C3 74 E6              1142 	mov	a,#0xE6
   06C5 F0                 1143 	movx	@dptr,a
   06C6 90 01 11           1144 	mov	dptr,#(_b + 0x0011)
   06C9 74 9F              1145 	mov	a,#0x9F
   06CB F0                 1146 	movx	@dptr,a
   06CC 90 01 12           1147 	mov	dptr,#(_b + 0x0012)
   06CF 74 4C              1148 	mov	a,#0x4C
   06D1 F0                 1149 	movx	@dptr,a
   06D2 90 01 13           1150 	mov	dptr,#(_b + 0x0013)
   06D5 74 FB              1151 	mov	a,#0xFB
   06D7 F0                 1152 	movx	@dptr,a
   06D8 90 01 14           1153 	mov	dptr,#(_b + 0x0014)
   06DB 74 26              1154 	mov	a,#0x26
   06DD F0                 1155 	movx	@dptr,a
   06DE 90 01 15           1156 	mov	dptr,#(_b + 0x0015)
   06E1 74 8C              1157 	mov	a,#0x8C
   06E3 F0                 1158 	movx	@dptr,a
   06E4 90 01 16           1159 	mov	dptr,#(_b + 0x0016)
   06E7 74 9E              1160 	mov	a,#0x9E
   06E9 F0                 1161 	movx	@dptr,a
   06EA 90 01 17           1162 	mov	dptr,#(_b + 0x0017)
   06ED 74 87              1163 	mov	a,#0x87
   06EF F0                 1164 	movx	@dptr,a
   06F0 90 01 18           1165 	mov	dptr,#(_b + 0x0018)
   06F3 74 83              1166 	mov	a,#0x83
   06F5 F0                 1167 	movx	@dptr,a
   06F6 90 01 19           1168 	mov	dptr,#(_b + 0x0019)
   06F9 74 22              1169 	mov	a,#0x22
   06FB F0                 1170 	movx	@dptr,a
   06FC 90 01 1A           1171 	mov	dptr,#(_b + 0x001a)
   06FF 74 F2              1172 	mov	a,#0xF2
   0701 F0                 1173 	movx	@dptr,a
   0702 90 01 1B           1174 	mov	dptr,#(_b + 0x001b)
   0705 74 75              1175 	mov	a,#0x75
   0707 F0                 1176 	movx	@dptr,a
   0708 90 01 1C           1177 	mov	dptr,#(_b + 0x001c)
   070B 74 D2              1178 	mov	a,#0xD2
   070D F0                 1179 	movx	@dptr,a
   070E 90 01 1D           1180 	mov	dptr,#(_b + 0x001d)
   0711 74 B3              1181 	mov	a,#0xB3
   0713 F0                 1182 	movx	@dptr,a
   0714 90 01 1E           1183 	mov	dptr,#(_b + 0x001e)
   0717 74 61              1184 	mov	a,#0x61
   0719 F0                 1185 	movx	@dptr,a
   071A 90 01 1F           1186 	mov	dptr,#(_b + 0x001f)
   071D 74 A2              1187 	mov	a,#0xA2
   071F F0                 1188 	movx	@dptr,a
   0720 90 01 20           1189 	mov	dptr,#(_b + 0x0020)
   0723 74 9D              1190 	mov	a,#0x9D
   0725 F0                 1191 	movx	@dptr,a
   0726 90 01 21           1192 	mov	dptr,#(_b + 0x0021)
   0729 74 50              1193 	mov	a,#0x50
   072B F0                 1194 	movx	@dptr,a
   072C 90 01 22           1195 	mov	dptr,#(_b + 0x0022)
   072F 74 71              1196 	mov	a,#0x71
   0731 F0                 1197 	movx	@dptr,a
   0732 90 01 23           1198 	mov	dptr,#(_b + 0x0023)
   0735 74 5E              1199 	mov	a,#0x5E
   0737 F0                 1200 	movx	@dptr,a
   0738 90 01 24           1201 	mov	dptr,#(_b + 0x0024)
   073B 74 C9              1202 	mov	a,#0xC9
   073D F0                 1203 	movx	@dptr,a
   073E 90 01 25           1204 	mov	dptr,#(_b + 0x0025)
   0741 74 DD              1205 	mov	a,#0xDD
   0743 F0                 1206 	movx	@dptr,a
   0744 90 01 26           1207 	mov	dptr,#(_b + 0x0026)
   0747 74 DD              1208 	mov	a,#0xDD
   0749 F0                 1209 	movx	@dptr,a
   074A 90 01 27           1210 	mov	dptr,#(_b + 0x0027)
   074D 74 74              1211 	mov	a,#0x74
   074F F0                 1212 	movx	@dptr,a
   0750 90 01 28           1213 	mov	dptr,#(_b + 0x0028)
   0753 74 0A              1214 	mov	a,#0x0A
   0755 F0                 1215 	movx	@dptr,a
   0756 90 01 29           1216 	mov	dptr,#(_b + 0x0029)
   0759 74 3C              1217 	mov	a,#0x3C
   075B F0                 1218 	movx	@dptr,a
   075C 90 01 2A           1219 	mov	dptr,#(_b + 0x002a)
   075F 74 C0              1220 	mov	a,#0xC0
   0761 F0                 1221 	movx	@dptr,a
   0762 90 01 2B           1222 	mov	dptr,#(_b + 0x002b)
   0765 74 30              1223 	mov	a,#0x30
   0767 F0                 1224 	movx	@dptr,a
   0768 90 01 2C           1225 	mov	dptr,#(_b + 0x002c)
   076B 74 3E              1226 	mov	a,#0x3E
   076D F0                 1227 	movx	@dptr,a
   076E 90 01 2D           1228 	mov	dptr,#(_b + 0x002d)
   0771 74 E5              1229 	mov	a,#0xE5
   0773 F0                 1230 	movx	@dptr,a
   0774 90 01 2E           1231 	mov	dptr,#(_b + 0x002e)
   0777 74 20              1232 	mov	a,#0x20
   0779 F0                 1233 	movx	@dptr,a
   077A 90 01 2F           1234 	mov	dptr,#(_b + 0x002f)
   077D 74 02              1235 	mov	a,#0x02
   077F F0                 1236 	movx	@dptr,a
   0780 90 01 30           1237 	mov	dptr,#(_b + 0x0030)
   0783 74 B3              1238 	mov	a,#0xB3
   0785 F0                 1239 	movx	@dptr,a
   0786 90 01 31           1240 	mov	dptr,#(_b + 0x0031)
   0789 74 12              1241 	mov	a,#0x12
   078B F0                 1242 	movx	@dptr,a
   078C 90 01 32           1243 	mov	dptr,#(_b + 0x0032)
   078F 74 4F              1244 	mov	a,#0x4F
   0791 F0                 1245 	movx	@dptr,a
   0792 90 01 33           1246 	mov	dptr,#(_b + 0x0033)
   0795 74 AB              1247 	mov	a,#0xAB
   0797 F0                 1248 	movx	@dptr,a
   0798 90 01 34           1249 	mov	dptr,#(_b + 0x0034)
   079B 74 60              1250 	mov	a,#0x60
   079D F0                 1251 	movx	@dptr,a
   079E 90 01 35           1252 	mov	dptr,#(_b + 0x0035)
   07A1 74 27              1253 	mov	a,#0x27
   07A3 F0                 1254 	movx	@dptr,a
   07A4 90 01 36           1255 	mov	dptr,#(_b + 0x0036)
   07A7 74 07              1256 	mov	a,#0x07
   07A9 F0                 1257 	movx	@dptr,a
   07AA 90 01 37           1258 	mov	dptr,#(_b + 0x0037)
   07AD 74 17              1259 	mov	a,#0x17
   07AF F0                 1260 	movx	@dptr,a
   07B0 90 01 38           1261 	mov	dptr,#(_b + 0x0038)
   07B3 74 DD              1262 	mov	a,#0xDD
   07B5 F0                 1263 	movx	@dptr,a
   07B6 90 01 39           1264 	mov	dptr,#(_b + 0x0039)
   07B9 E4                 1265 	clr	a
   07BA F0                 1266 	movx	@dptr,a
   07BB 90 01 3A           1267 	mov	dptr,#(_b + 0x003a)
   07BE 74 C2              1268 	mov	a,#0xC2
   07C0 F0                 1269 	movx	@dptr,a
   07C1 90 01 3B           1270 	mov	dptr,#(_b + 0x003b)
   07C4 74 E1              1271 	mov	a,#0xE1
   07C6 F0                 1272 	movx	@dptr,a
   07C7 90 01 3C           1273 	mov	dptr,#(_b + 0x003c)
   07CA 74 BC              1274 	mov	a,#0xBC
   07CC F0                 1275 	movx	@dptr,a
   07CD 90 01 3D           1276 	mov	dptr,#(_b + 0x003d)
   07D0 74 04              1277 	mov	a,#0x04
   07D2 F0                 1278 	movx	@dptr,a
   07D3 90 01 3E           1279 	mov	dptr,#(_b + 0x003e)
   07D6 74 AE              1280 	mov	a,#0xAE
   07D8 F0                 1281 	movx	@dptr,a
   07D9 90 01 3F           1282 	mov	dptr,#(_b + 0x003f)
   07DC 74 21              1283 	mov	a,#0x21
   07DE F0                 1284 	movx	@dptr,a
   07DF 90 01 40           1285 	mov	dptr,#(_b + 0x0040)
   07E2 74 38              1286 	mov	a,#0x38
   07E4 F0                 1287 	movx	@dptr,a
   07E5 90 01 41           1288 	mov	dptr,#(_b + 0x0041)
   07E8 74 CA              1289 	mov	a,#0xCA
   07EA F0                 1290 	movx	@dptr,a
   07EB 90 01 42           1291 	mov	dptr,#(_b + 0x0042)
   07EE 74 AA              1292 	mov	a,#0xAA
   07F0 F0                 1293 	movx	@dptr,a
   07F1 90 01 43           1294 	mov	dptr,#(_b + 0x0043)
   07F4 74 8F              1295 	mov	a,#0x8F
   07F6 F0                 1296 	movx	@dptr,a
   07F7 90 01 44           1297 	mov	dptr,#(_b + 0x0044)
   07FA 74 74              1298 	mov	a,#0x74
   07FC F0                 1299 	movx	@dptr,a
   07FD 90 01 45           1300 	mov	dptr,#(_b + 0x0045)
   0800 74 D5              1301 	mov	a,#0xD5
   0802 F0                 1302 	movx	@dptr,a
   0803 90 01 46           1303 	mov	dptr,#(_b + 0x0046)
   0806 74 02              1304 	mov	a,#0x02
   0808 F0                 1305 	movx	@dptr,a
   0809 90 01 47           1306 	mov	dptr,#(_b + 0x0047)
   080C 74 10              1307 	mov	a,#0x10
   080E F0                 1308 	movx	@dptr,a
   080F 90 01 48           1309 	mov	dptr,#(_b + 0x0048)
   0812 74 15              1310 	mov	a,#0x15
   0814 F0                 1311 	movx	@dptr,a
   0815 90 01 49           1312 	mov	dptr,#(_b + 0x0049)
   0818 74 87              1313 	mov	a,#0x87
   081A F0                 1314 	movx	@dptr,a
   081B 90 01 4A           1315 	mov	dptr,#(_b + 0x004a)
   081E 74 58              1316 	mov	a,#0x58
   0820 F0                 1317 	movx	@dptr,a
   0821 90 01 4B           1318 	mov	dptr,#(_b + 0x004b)
   0824 74 08              1319 	mov	a,#0x08
   0826 F0                 1320 	movx	@dptr,a
   0827 90 01 4C           1321 	mov	dptr,#(_b + 0x004c)
   082A 74 CC              1322 	mov	a,#0xCC
   082C F0                 1323 	movx	@dptr,a
   082D 90 01 4D           1324 	mov	dptr,#(_b + 0x004d)
   0830 74 9A              1325 	mov	a,#0x9A
   0832 F0                 1326 	movx	@dptr,a
   0833 90 01 4E           1327 	mov	dptr,#(_b + 0x004e)
   0836 74 42              1328 	mov	a,#0x42
   0838 F0                 1329 	movx	@dptr,a
   0839 90 01 4F           1330 	mov	dptr,#(_b + 0x004f)
   083C 74 BD              1331 	mov	a,#0xBD
   083E F0                 1332 	movx	@dptr,a
   083F 90 01 50           1333 	mov	dptr,#(_b + 0x0050)
   0842 74 02              1334 	mov	a,#0x02
   0844 F0                 1335 	movx	@dptr,a
   0845 90 01 51           1336 	mov	dptr,#(_b + 0x0051)
   0848 74 97              1337 	mov	a,#0x97
   084A F0                 1338 	movx	@dptr,a
   084B 90 01 52           1339 	mov	dptr,#(_b + 0x0052)
   084E 74 CE              1340 	mov	a,#0xCE
   0850 F0                 1341 	movx	@dptr,a
   0851 90 01 53           1342 	mov	dptr,#(_b + 0x0053)
   0854 74 2B              1343 	mov	a,#0x2B
   0856 F0                 1344 	movx	@dptr,a
   0857 90 01 54           1345 	mov	dptr,#(_b + 0x0054)
   085A 74 39              1346 	mov	a,#0x39
   085C F0                 1347 	movx	@dptr,a
   085D 90 01 55           1348 	mov	dptr,#(_b + 0x0055)
   0860 74 38              1349 	mov	a,#0x38
   0862 F0                 1350 	movx	@dptr,a
   0863 90 01 56           1351 	mov	dptr,#(_b + 0x0056)
   0866 74 99              1352 	mov	a,#0x99
   0868 F0                 1353 	movx	@dptr,a
   0869 90 01 57           1354 	mov	dptr,#(_b + 0x0057)
   086C 74 AC              1355 	mov	a,#0xAC
   086E F0                 1356 	movx	@dptr,a
   086F 90 01 58           1357 	mov	dptr,#(_b + 0x0058)
   0872 74 81              1358 	mov	a,#0x81
   0874 F0                 1359 	movx	@dptr,a
   0875 90 01 59           1360 	mov	dptr,#(_b + 0x0059)
   0878 74 BB              1361 	mov	a,#0xBB
   087A F0                 1362 	movx	@dptr,a
   087B 90 01 5A           1363 	mov	dptr,#(_b + 0x005a)
   087E 74 C3              1364 	mov	a,#0xC3
   0880 F0                 1365 	movx	@dptr,a
   0881 90 01 5B           1366 	mov	dptr,#(_b + 0x005b)
   0884 74 FF              1367 	mov	a,#0xFF
   0886 F0                 1368 	movx	@dptr,a
   0887 90 01 5C           1369 	mov	dptr,#(_b + 0x005c)
   088A 74 BC              1370 	mov	a,#0xBC
   088C F0                 1371 	movx	@dptr,a
   088D 90 01 5D           1372 	mov	dptr,#(_b + 0x005d)
   0890 74 C1              1373 	mov	a,#0xC1
   0892 F0                 1374 	movx	@dptr,a
   0893 90 01 5E           1375 	mov	dptr,#(_b + 0x005e)
   0896 74 B8              1376 	mov	a,#0xB8
   0898 F0                 1377 	movx	@dptr,a
   0899 90 01 5F           1378 	mov	dptr,#(_b + 0x005f)
   089C 74 E1              1379 	mov	a,#0xE1
   089E F0                 1380 	movx	@dptr,a
   089F 90 01 60           1381 	mov	dptr,#(_b + 0x0060)
   08A2 74 24              1382 	mov	a,#0x24
   08A4 F0                 1383 	movx	@dptr,a
   08A5 90 01 61           1384 	mov	dptr,#(_b + 0x0061)
   08A8 74 8D              1385 	mov	a,#0x8D
   08AA F0                 1386 	movx	@dptr,a
   08AB 90 01 62           1387 	mov	dptr,#(_b + 0x0062)
   08AE 74 C5              1388 	mov	a,#0xC5
   08B0 F0                 1389 	movx	@dptr,a
   08B1 90 01 63           1390 	mov	dptr,#(_b + 0x0063)
   08B4 74 20              1391 	mov	a,#0x20
   08B6 F0                 1392 	movx	@dptr,a
   08B7 90 01 64           1393 	mov	dptr,#(_b + 0x0064)
   08BA 74 89              1394 	mov	a,#0x89
   08BC F0                 1395 	movx	@dptr,a
   08BD 90 01 65           1396 	mov	dptr,#(_b + 0x0065)
   08C0 74 98              1397 	mov	a,#0x98
   08C2 F0                 1398 	movx	@dptr,a
   08C3 90 01 66           1399 	mov	dptr,#(_b + 0x0066)
   08C6 74 0B              1400 	mov	a,#0x0B
   08C8 F0                 1401 	movx	@dptr,a
   08C9 90 01 67           1402 	mov	dptr,#(_b + 0x0067)
   08CC 74 50              1403 	mov	a,#0x50
   08CE F0                 1404 	movx	@dptr,a
   08CF 90 01 68           1405 	mov	dptr,#(_b + 0x0068)
   08D2 74 B1              1406 	mov	a,#0xB1
   08D4 F0                 1407 	movx	@dptr,a
   08D5 90 01 69           1408 	mov	dptr,#(_b + 0x0069)
   08D8 74 16              1409 	mov	a,#0x16
   08DA F0                 1410 	movx	@dptr,a
   08DB 90 01 6A           1411 	mov	dptr,#(_b + 0x006a)
   08DE 74 9A              1412 	mov	a,#0x9A
   08E0 F0                 1413 	movx	@dptr,a
   08E1 90 01 6B           1414 	mov	dptr,#(_b + 0x006b)
   08E4 74 2D              1415 	mov	a,#0x2D
   08E6 F0                 1416 	movx	@dptr,a
   08E7 90 01 6C           1417 	mov	dptr,#(_b + 0x006c)
   08EA 74 6E              1418 	mov	a,#0x6E
   08EC F0                 1419 	movx	@dptr,a
   08ED 90 01 6D           1420 	mov	dptr,#(_b + 0x006d)
   08F0 74 5A              1421 	mov	a,#0x5A
   08F2 F0                 1422 	movx	@dptr,a
   08F3 90 01 6E           1423 	mov	dptr,#(_b + 0x006e)
   08F6 74 7B              1424 	mov	a,#0x7B
   08F8 F0                 1425 	movx	@dptr,a
   08F9 90 01 6F           1426 	mov	dptr,#(_b + 0x006f)
   08FC 74 2F              1427 	mov	a,#0x2F
   08FE F0                 1428 	movx	@dptr,a
   08FF 90 01 70           1429 	mov	dptr,#(_b + 0x0070)
   0902 74 D4              1430 	mov	a,#0xD4
   0904 F0                 1431 	movx	@dptr,a
   0905 90 01 71           1432 	mov	dptr,#(_b + 0x0071)
   0908 74 92              1433 	mov	a,#0x92
   090A F0                 1434 	movx	@dptr,a
   090B 90 01 72           1435 	mov	dptr,#(_b + 0x0072)
   090E 74 A1              1436 	mov	a,#0xA1
   0910 F0                 1437 	movx	@dptr,a
   0911 90 01 73           1438 	mov	dptr,#(_b + 0x0073)
   0914 74 AA              1439 	mov	a,#0xAA
   0916 F0                 1440 	movx	@dptr,a
   0917 90 01 74           1441 	mov	dptr,#(_b + 0x0074)
   091A 74 A6              1442 	mov	a,#0xA6
   091C F0                 1443 	movx	@dptr,a
   091D 90 01 75           1444 	mov	dptr,#(_b + 0x0075)
   0920 74 E5              1445 	mov	a,#0xE5
   0922 F0                 1446 	movx	@dptr,a
   0923 90 01 76           1447 	mov	dptr,#(_b + 0x0076)
   0926 74 A6              1448 	mov	a,#0xA6
   0928 F0                 1449 	movx	@dptr,a
   0929 90 01 77           1450 	mov	dptr,#(_b + 0x0077)
   092C 74 D2              1451 	mov	a,#0xD2
   092E F0                 1452 	movx	@dptr,a
   092F 90 01 78           1453 	mov	dptr,#(_b + 0x0078)
   0932 74 0D              1454 	mov	a,#0x0D
   0934 F0                 1455 	movx	@dptr,a
   0935 90 01 79           1456 	mov	dptr,#(_b + 0x0079)
   0938 74 0B              1457 	mov	a,#0x0B
   093A F0                 1458 	movx	@dptr,a
   093B 90 01 7A           1459 	mov	dptr,#(_b + 0x007a)
   093E 74 B7              1460 	mov	a,#0xB7
   0940 F0                 1461 	movx	@dptr,a
   0941 90 01 7B           1462 	mov	dptr,#(_b + 0x007b)
   0944 74 B2              1463 	mov	a,#0xB2
   0946 F0                 1464 	movx	@dptr,a
   0947 90 01 7C           1465 	mov	dptr,#(_b + 0x007c)
   094A 74 25              1466 	mov	a,#0x25
   094C F0                 1467 	movx	@dptr,a
   094D 90 01 7D           1468 	mov	dptr,#(_b + 0x007d)
   0950 74 23              1469 	mov	a,#0x23
   0952 F0                 1470 	movx	@dptr,a
   0953 90 01 7E           1471 	mov	dptr,#(_b + 0x007e)
   0956 74 23              1472 	mov	a,#0x23
   0958 F0                 1473 	movx	@dptr,a
   0959 90 01 7F           1474 	mov	dptr,#(_b + 0x007f)
   095C 74 BE              1475 	mov	a,#0xBE
   095E F0                 1476 	movx	@dptr,a
                           1477 	.area GSFINAL (CODE)
   095F 02 00 03           1478 	ljmp	__sdcc_program_startup
                           1479 ;--------------------------------------------------------
                           1480 ; Home
                           1481 ;--------------------------------------------------------
                           1482 	.area HOME    (CODE)
                           1483 	.area HOME    (CODE)
   0003                    1484 __sdcc_program_startup:
   0003 12 0A 24           1485 	lcall	_main
                           1486 ;	return from main will lock up
   0006 80 FE              1487 	sjmp .
                           1488 ;--------------------------------------------------------
                           1489 ; code
                           1490 ;--------------------------------------------------------
                           1491 	.area CSEG    (CODE)
                           1492 ;------------------------------------------------------------
                           1493 ;Allocation info for local variables in function 'write_montgomery'
                           1494 ;------------------------------------------------------------
                           1495 ;------------------------------------------------------------
                           1496 ;	main.c:23: void write_montgomery() {
                           1497 ;	-----------------------------------------
                           1498 ;	 function write_montgomery
                           1499 ;	-----------------------------------------
   0962                    1500 _write_montgomery:
                    0002   1501 	ar2 = 0x02
                    0003   1502 	ar3 = 0x03
                    0004   1503 	ar4 = 0x04
                    0005   1504 	ar5 = 0x05
                    0006   1505 	ar6 = 0x06
                    0007   1506 	ar7 = 0x07
                    0000   1507 	ar0 = 0x00
                    0001   1508 	ar1 = 0x01
                           1509 ;	main.c:24: P1 = 0;
                           1510 ;	main.c:26: for (i = 0; i < SIZE; i++) {
   0962 E4                 1511 	clr	a
   0963 F5 90              1512 	mov	_P1,a
   0965 F5 08              1513 	mov	_i,a
   0967 F5 09              1514 	mov	(_i + 1),a
   0969                    1515 00104$:
   0969 C3                 1516 	clr	c
   096A E5 08              1517 	mov	a,_i
   096C 94 80              1518 	subb	a,#0x80
   096E E5 09              1519 	mov	a,(_i + 1)
   0970 94 00              1520 	subb	a,#0x00
   0972 50 24              1521 	jnc	00107$
                           1522 ;	main.c:27: shared_a[i] = a[i];
   0974 AA 08              1523 	mov	r2,_i
   0976 74 40              1524 	mov	a,#(_shared_a >> 8)
   0978 25 09              1525 	add	a,(_i + 1)
   097A FB                 1526 	mov	r3,a
   097B E5 08              1527 	mov	a,_i
   097D 24 80              1528 	add	a,#_a
   097F F5 82              1529 	mov	dpl,a
   0981 E5 09              1530 	mov	a,(_i + 1)
   0983 34 00              1531 	addc	a,#(_a >> 8)
   0985 F5 83              1532 	mov	dph,a
   0987 E0                 1533 	movx	a,@dptr
   0988 FC                 1534 	mov	r4,a
   0989 8A 82              1535 	mov	dpl,r2
   098B 8B 83              1536 	mov	dph,r3
   098D F0                 1537 	movx	@dptr,a
                           1538 ;	main.c:26: for (i = 0; i < SIZE; i++) {
   098E 05 08              1539 	inc	_i
   0990 E4                 1540 	clr	a
   0991 B5 08 D5           1541 	cjne	a,_i,00104$
   0994 05 09              1542 	inc	(_i + 1)
   0996 80 D1              1543 	sjmp	00104$
   0998                    1544 00107$:
                           1545 ;	main.c:30: for (i = 0; i < SIZE; i++) {
   0998 E4                 1546 	clr	a
   0999 F5 08              1547 	mov	_i,a
   099B F5 09              1548 	mov	(_i + 1),a
   099D                    1549 00108$:
   099D C3                 1550 	clr	c
   099E E5 08              1551 	mov	a,_i
   09A0 94 80              1552 	subb	a,#0x80
   09A2 E5 09              1553 	mov	a,(_i + 1)
   09A4 94 00              1554 	subb	a,#0x00
   09A6 50 24              1555 	jnc	00111$
                           1556 ;	main.c:31: shared_b[i] = b[i];
   09A8 E5 08              1557 	mov	a,_i
   09AA 24 80              1558 	add	a,#_shared_b
   09AC FA                 1559 	mov	r2,a
   09AD E5 09              1560 	mov	a,(_i + 1)
   09AF 34 40              1561 	addc	a,#(_shared_b >> 8)
   09B1 FB                 1562 	mov	r3,a
   09B2 85 08 82           1563 	mov	dpl,_i
   09B5 74 01              1564 	mov	a,#(_b >> 8)
   09B7 25 09              1565 	add	a,(_i + 1)
   09B9 F5 83              1566 	mov	dph,a
   09BB E0                 1567 	movx	a,@dptr
   09BC FC                 1568 	mov	r4,a
   09BD 8A 82              1569 	mov	dpl,r2
   09BF 8B 83              1570 	mov	dph,r3
   09C1 F0                 1571 	movx	@dptr,a
                           1572 ;	main.c:30: for (i = 0; i < SIZE; i++) {
   09C2 05 08              1573 	inc	_i
   09C4 E4                 1574 	clr	a
   09C5 B5 08 D5           1575 	cjne	a,_i,00108$
   09C8 05 09              1576 	inc	(_i + 1)
   09CA 80 D1              1577 	sjmp	00108$
   09CC                    1578 00111$:
                           1579 ;	main.c:34: for (i = 0; i < SIZE; i++) {
   09CC E4                 1580 	clr	a
   09CD F5 08              1581 	mov	_i,a
   09CF F5 09              1582 	mov	(_i + 1),a
   09D1                    1583 00112$:
   09D1 C3                 1584 	clr	c
   09D2 E5 08              1585 	mov	a,_i
   09D4 94 80              1586 	subb	a,#0x80
   09D6 E5 09              1587 	mov	a,(_i + 1)
   09D8 94 00              1588 	subb	a,#0x00
   09DA 50 21              1589 	jnc	00115$
                           1590 ;	main.c:35: shared_m[i] = m[i];
   09DC AA 08              1591 	mov	r2,_i
   09DE 74 41              1592 	mov	a,#(_shared_m >> 8)
   09E0 25 09              1593 	add	a,(_i + 1)
   09E2 FB                 1594 	mov	r3,a
   09E3 85 08 82           1595 	mov	dpl,_i
   09E6 74 00              1596 	mov	a,#(_m >> 8)
   09E8 25 09              1597 	add	a,(_i + 1)
   09EA F5 83              1598 	mov	dph,a
   09EC E0                 1599 	movx	a,@dptr
   09ED FC                 1600 	mov	r4,a
   09EE 8A 82              1601 	mov	dpl,r2
   09F0 8B 83              1602 	mov	dph,r3
   09F2 F0                 1603 	movx	@dptr,a
                           1604 ;	main.c:34: for (i = 0; i < SIZE; i++) {
   09F3 05 08              1605 	inc	_i
   09F5 E4                 1606 	clr	a
   09F6 B5 08 D8           1607 	cjne	a,_i,00112$
   09F9 05 09              1608 	inc	(_i + 1)
   09FB 80 D4              1609 	sjmp	00112$
   09FD                    1610 00115$:
                           1611 ;	main.c:38: P0 = ins_write_data;
   09FD 75 80 01           1612 	mov	_P0,#0x01
                           1613 ;	main.c:39: P0 = ins_idle;
   0A00 75 80 00           1614 	mov	_P0,#0x00
                           1615 ;	main.c:41: while (P1 == 0) {}
   0A03                    1616 00101$:
   0A03 E5 90              1617 	mov	a,_P1
   0A05 60 FC              1618 	jz	00101$
                           1619 ;	main.c:42: P0 = ins_ack;
   0A07 75 80 04           1620 	mov	_P0,#0x04
   0A0A 22                 1621 	ret
                           1622 ;------------------------------------------------------------
                           1623 ;Allocation info for local variables in function 'read_r'
                           1624 ;------------------------------------------------------------
                           1625 ;------------------------------------------------------------
                           1626 ;	main.c:45: void read_r() {
                           1627 ;	-----------------------------------------
                           1628 ;	 function read_r
                           1629 ;	-----------------------------------------
   0A0B                    1630 _read_r:
                           1631 ;	main.c:46: P0 = ins_read_r;
   0A0B 75 80 03           1632 	mov	_P0,#0x03
                           1633 ;	main.c:47: while (P1 == 0) {}
   0A0E                    1634 00101$:
   0A0E E5 90              1635 	mov	a,_P1
   0A10 60 FC              1636 	jz	00101$
                           1637 ;	main.c:48: P0 = ins_ack;
   0A12 75 80 04           1638 	mov	_P0,#0x04
                           1639 ;	main.c:50: P0 = ins_idle;
   0A15 75 80 00           1640 	mov	_P0,#0x00
   0A18 22                 1641 	ret
                           1642 ;------------------------------------------------------------
                           1643 ;Allocation info for local variables in function 'montgomery'
                           1644 ;------------------------------------------------------------
                           1645 ;------------------------------------------------------------
                           1646 ;	main.c:53: void montgomery() {
                           1647 ;	-----------------------------------------
                           1648 ;	 function montgomery
                           1649 ;	-----------------------------------------
   0A19                    1650 _montgomery:
                           1651 ;	main.c:54: P0 = ins_montgomery;
   0A19 75 80 02           1652 	mov	_P0,#0x02
                           1653 ;	main.c:55: P0 = ins_idle;
   0A1C 75 80 00           1654 	mov	_P0,#0x00
   0A1F 22                 1655 	ret
                           1656 ;------------------------------------------------------------
                           1657 ;Allocation info for local variables in function 'terminate'
                           1658 ;------------------------------------------------------------
                           1659 ;------------------------------------------------------------
                           1660 ;	main.c:58: void terminate() {
                           1661 ;	-----------------------------------------
                           1662 ;	 function terminate
                           1663 ;	-----------------------------------------
   0A20                    1664 _terminate:
                           1665 ;	main.c:59: P3 = 0x55;
   0A20 75 B0 55           1666 	mov	_P3,#0x55
   0A23 22                 1667 	ret
                           1668 ;------------------------------------------------------------
                           1669 ;Allocation info for local variables in function 'main'
                           1670 ;------------------------------------------------------------
                           1671 ;------------------------------------------------------------
                           1672 ;	main.c:62: int main() {
                           1673 ;	-----------------------------------------
                           1674 ;	 function main
                           1675 ;	-----------------------------------------
   0A24                    1676 _main:
                           1677 ;	main.c:63: write_montgomery();
   0A24 12 09 62           1678 	lcall	_write_montgomery
                           1679 ;	main.c:65: startBrk=1;
   0A27 90 FF FE           1680 	mov	dptr,#_startBrk
   0A2A 74 01              1681 	mov	a,#0x01
   0A2C F0                 1682 	movx	@dptr,a
                           1683 ;	main.c:67: montgomery();
   0A2D 12 0A 19           1684 	lcall	_montgomery
                           1685 ;	main.c:69: endBrk=1;
   0A30 90 FF FF           1686 	mov	dptr,#_endBrk
   0A33 74 01              1687 	mov	a,#0x01
   0A35 F0                 1688 	movx	@dptr,a
                           1689 ;	main.c:71: read_r();
   0A36 12 0A 0B           1690 	lcall	_read_r
                           1691 ;	main.c:73: P1 = 0;
                           1692 ;	main.c:75: for (i = 0; i < SIZE; i++) {
   0A39 E4                 1693 	clr	a
   0A3A F5 90              1694 	mov	_P1,a
   0A3C F5 08              1695 	mov	_i,a
   0A3E F5 09              1696 	mov	(_i + 1),a
   0A40                    1697 00104$:
   0A40 C3                 1698 	clr	c
   0A41 E5 08              1699 	mov	a,_i
   0A43 94 80              1700 	subb	a,#0x80
   0A45 E5 09              1701 	mov	a,(_i + 1)
   0A47 94 00              1702 	subb	a,#0x00
   0A49 50 21              1703 	jnc	00107$
                           1704 ;	main.c:76: shared_a[i] = r[i];
   0A4B AA 08              1705 	mov	r2,_i
   0A4D 74 40              1706 	mov	a,#(_shared_a >> 8)
   0A4F 25 09              1707 	add	a,(_i + 1)
   0A51 FB                 1708 	mov	r3,a
   0A52 85 08 82           1709 	mov	dpl,_i
   0A55 74 02              1710 	mov	a,#(_r >> 8)
   0A57 25 09              1711 	add	a,(_i + 1)
   0A59 F5 83              1712 	mov	dph,a
   0A5B E0                 1713 	movx	a,@dptr
   0A5C FC                 1714 	mov	r4,a
   0A5D 8A 82              1715 	mov	dpl,r2
   0A5F 8B 83              1716 	mov	dph,r3
   0A61 F0                 1717 	movx	@dptr,a
                           1718 ;	main.c:75: for (i = 0; i < SIZE; i++) {
   0A62 05 08              1719 	inc	_i
   0A64 E4                 1720 	clr	a
   0A65 B5 08 D8           1721 	cjne	a,_i,00104$
   0A68 05 09              1722 	inc	(_i + 1)
   0A6A 80 D4              1723 	sjmp	00104$
   0A6C                    1724 00107$:
                           1725 ;	main.c:79: P0 = ins_write_data;
   0A6C 75 80 01           1726 	mov	_P0,#0x01
                           1727 ;	main.c:80: P0 = ins_idle;
   0A6F 75 80 00           1728 	mov	_P0,#0x00
                           1729 ;	main.c:82: while (P1 == 0) {}
   0A72                    1730 00101$:
   0A72 E5 90              1731 	mov	a,_P1
   0A74 60 FC              1732 	jz	00101$
                           1733 ;	main.c:83: P0 = ins_ack;
   0A76 75 80 04           1734 	mov	_P0,#0x04
                           1735 ;	main.c:85: terminate();
   0A79 12 0A 20           1736 	lcall	_terminate
                           1737 ;	main.c:86: return 0;
   0A7C 90 00 00           1738 	mov	dptr,#0x0000
   0A7F 22                 1739 	ret
                           1740 	.area CSEG    (CODE)
                           1741 	.area CONST   (CODE)
                           1742 	.area XINIT   (CODE)
                           1743 	.area CABS    (ABS,CODE)
