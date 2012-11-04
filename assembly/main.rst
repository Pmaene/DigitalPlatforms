                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Sun Nov  4 11:40:01 2012
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
                            112 	.globl _m
                            113 	.globl _endBrk
                            114 	.globl _startBrk
                            115 	.globl _fips
                            116 ;--------------------------------------------------------
                            117 ; special function registers
                            118 ;--------------------------------------------------------
                            119 	.area RSEG    (DATA)
                    0080    120 _P0	=	0x0080
                    0081    121 _SP	=	0x0081
                    0082    122 _DPL	=	0x0082
                    0083    123 _DPH	=	0x0083
                    0087    124 _PCON	=	0x0087
                    0088    125 _TCON	=	0x0088
                    0089    126 _TMOD	=	0x0089
                    008A    127 _TL0	=	0x008a
                    008B    128 _TL1	=	0x008b
                    008C    129 _TH0	=	0x008c
                    008D    130 _TH1	=	0x008d
                    0090    131 _P1	=	0x0090
                    0098    132 _SCON	=	0x0098
                    0099    133 _SBUF	=	0x0099
                    00A0    134 _P2	=	0x00a0
                    00A8    135 _IE	=	0x00a8
                    00B0    136 _P3	=	0x00b0
                    00B8    137 _IP	=	0x00b8
                    00D0    138 _PSW	=	0x00d0
                    00E0    139 _ACC	=	0x00e0
                    00F0    140 _B	=	0x00f0
                            141 ;--------------------------------------------------------
                            142 ; special function bits
                            143 ;--------------------------------------------------------
                            144 	.area RSEG    (DATA)
                    0080    145 _P0_0	=	0x0080
                    0081    146 _P0_1	=	0x0081
                    0082    147 _P0_2	=	0x0082
                    0083    148 _P0_3	=	0x0083
                    0084    149 _P0_4	=	0x0084
                    0085    150 _P0_5	=	0x0085
                    0086    151 _P0_6	=	0x0086
                    0087    152 _P0_7	=	0x0087
                    0088    153 _IT0	=	0x0088
                    0089    154 _IE0	=	0x0089
                    008A    155 _IT1	=	0x008a
                    008B    156 _IE1	=	0x008b
                    008C    157 _TR0	=	0x008c
                    008D    158 _TF0	=	0x008d
                    008E    159 _TR1	=	0x008e
                    008F    160 _TF1	=	0x008f
                    0090    161 _P1_0	=	0x0090
                    0091    162 _P1_1	=	0x0091
                    0092    163 _P1_2	=	0x0092
                    0093    164 _P1_3	=	0x0093
                    0094    165 _P1_4	=	0x0094
                    0095    166 _P1_5	=	0x0095
                    0096    167 _P1_6	=	0x0096
                    0097    168 _P1_7	=	0x0097
                    0098    169 _RI	=	0x0098
                    0099    170 _TI	=	0x0099
                    009A    171 _RB8	=	0x009a
                    009B    172 _TB8	=	0x009b
                    009C    173 _REN	=	0x009c
                    009D    174 _SM2	=	0x009d
                    009E    175 _SM1	=	0x009e
                    009F    176 _SM0	=	0x009f
                    00A0    177 _P2_0	=	0x00a0
                    00A1    178 _P2_1	=	0x00a1
                    00A2    179 _P2_2	=	0x00a2
                    00A3    180 _P2_3	=	0x00a3
                    00A4    181 _P2_4	=	0x00a4
                    00A5    182 _P2_5	=	0x00a5
                    00A6    183 _P2_6	=	0x00a6
                    00A7    184 _P2_7	=	0x00a7
                    00A8    185 _EX0	=	0x00a8
                    00A9    186 _ET0	=	0x00a9
                    00AA    187 _EX1	=	0x00aa
                    00AB    188 _ET1	=	0x00ab
                    00AC    189 _ES	=	0x00ac
                    00AF    190 _EA	=	0x00af
                    00B0    191 _P3_0	=	0x00b0
                    00B1    192 _P3_1	=	0x00b1
                    00B2    193 _P3_2	=	0x00b2
                    00B3    194 _P3_3	=	0x00b3
                    00B4    195 _P3_4	=	0x00b4
                    00B5    196 _P3_5	=	0x00b5
                    00B6    197 _P3_6	=	0x00b6
                    00B7    198 _P3_7	=	0x00b7
                    00B0    199 _RXD	=	0x00b0
                    00B1    200 _TXD	=	0x00b1
                    00B2    201 _INT0	=	0x00b2
                    00B3    202 _INT1	=	0x00b3
                    00B4    203 _T0	=	0x00b4
                    00B5    204 _T1	=	0x00b5
                    00B6    205 _WR	=	0x00b6
                    00B7    206 _RD	=	0x00b7
                    00B8    207 _PX0	=	0x00b8
                    00B9    208 _PT0	=	0x00b9
                    00BA    209 _PX1	=	0x00ba
                    00BB    210 _PT1	=	0x00bb
                    00BC    211 _PS	=	0x00bc
                    00D0    212 _P	=	0x00d0
                    00D1    213 _F1	=	0x00d1
                    00D2    214 _OV	=	0x00d2
                    00D3    215 _RS0	=	0x00d3
                    00D4    216 _RS1	=	0x00d4
                    00D5    217 _F0	=	0x00d5
                    00D6    218 _AC	=	0x00d6
                    00D7    219 _CY	=	0x00d7
                            220 ;--------------------------------------------------------
                            221 ; overlayable register banks
                            222 ;--------------------------------------------------------
                            223 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     224 	.ds 8
                            225 ;--------------------------------------------------------
                            226 ; internal ram data
                            227 ;--------------------------------------------------------
                            228 	.area DSEG    (DATA)
                            229 ;--------------------------------------------------------
                            230 ; overlayable items in internal ram 
                            231 ;--------------------------------------------------------
                            232 	.area	OSEG    (OVR,DATA)
   0008                     233 _fips_i_1_1::
   0008                     234 	.ds 2
   000A                     235 _fips_j_1_1::
   000A                     236 	.ds 2
   000C                     237 _fips_t_1_1::
   000C                     238 	.ds 2
   000E                     239 _fips_n0_1_1::
   000E                     240 	.ds 1
   000F                     241 _fips_b0_1_1::
   000F                     242 	.ds 1
   0010                     243 _fips_sloc0_1_0::
   0010                     244 	.ds 1
   0011                     245 _fips_sloc1_1_0::
   0011                     246 	.ds 1
                            247 ;--------------------------------------------------------
                            248 ; Stack segment in internal ram 
                            249 ;--------------------------------------------------------
                            250 	.area	SSEG	(DATA)
   0012                     251 __start__stack:
   0012                     252 	.ds	1
                            253 
                            254 ;--------------------------------------------------------
                            255 ; indirectly addressable internal ram data
                            256 ;--------------------------------------------------------
                            257 	.area ISEG    (DATA)
                            258 ;--------------------------------------------------------
                            259 ; absolute internal ram data
                            260 ;--------------------------------------------------------
                            261 	.area IABS    (ABS,DATA)
                            262 	.area IABS    (ABS,DATA)
                            263 ;--------------------------------------------------------
                            264 ; bit data
                            265 ;--------------------------------------------------------
                            266 	.area BSEG    (BIT)
                            267 ;--------------------------------------------------------
                            268 ; paged external ram data
                            269 ;--------------------------------------------------------
                            270 	.area PSEG    (PAG,XDATA)
                            271 ;--------------------------------------------------------
                            272 ; external ram data
                            273 ;--------------------------------------------------------
                            274 	.area XSEG    (XDATA)
                    FFFE    275 _startBrk	=	0xfffe
                    FFFF    276 _endBrk	=	0xffff
                    0200    277 _m	=	0x0200
                    0400    278 _fips_u_1_1	=	0x0400
                            279 ;--------------------------------------------------------
                            280 ; absolute external ram data
                            281 ;--------------------------------------------------------
                            282 	.area XABS    (ABS,XDATA)
   0000                     283 	.org 0x0000
   0000                     284 _n::
   0000                     285 	.ds 128
   0080                     286 	.org 0x0080
   0080                     287 _a::
   0080                     288 	.ds 128
   0100                     289 	.org 0x0100
   0100                     290 _b::
   0100                     291 	.ds 128
                            292 ;--------------------------------------------------------
                            293 ; external initialized ram data
                            294 ;--------------------------------------------------------
                            295 	.area XISEG   (XDATA)
                            296 	.area HOME    (CODE)
                            297 	.area GSINIT0 (CODE)
                            298 	.area GSINIT1 (CODE)
                            299 	.area GSINIT2 (CODE)
                            300 	.area GSINIT3 (CODE)
                            301 	.area GSINIT4 (CODE)
                            302 	.area GSINIT5 (CODE)
                            303 	.area GSINIT  (CODE)
                            304 	.area GSFINAL (CODE)
                            305 	.area CSEG    (CODE)
                            306 ;--------------------------------------------------------
                            307 ; interrupt vector 
                            308 ;--------------------------------------------------------
                            309 	.area HOME    (CODE)
   0000                     310 __interrupt_vect:
   0000 02 00 08            311 	ljmp	__sdcc_gsinit_startup
                            312 ;--------------------------------------------------------
                            313 ; global & static initialisations
                            314 ;--------------------------------------------------------
                            315 	.area HOME    (CODE)
                            316 	.area GSINIT  (CODE)
                            317 	.area GSFINAL (CODE)
                            318 	.area GSINIT  (CODE)
                            319 	.globl __sdcc_gsinit_startup
                            320 	.globl __sdcc_program_startup
                            321 	.globl __start__stack
                            322 	.globl __mcs51_genXINIT
                            323 	.globl __mcs51_genXRAMCLEAR
                            324 	.globl __mcs51_genRAMCLEAR
                            325 ;	main.c:13: __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0061 90 00 00            326 	mov	dptr,#_n
   0064 74 D3               327 	mov	a,#0xD3
   0066 F0                  328 	movx	@dptr,a
   0067 90 00 01            329 	mov	dptr,#(_n + 0x0001)
   006A 74 55               330 	mov	a,#0x55
   006C F0                  331 	movx	@dptr,a
   006D 90 00 02            332 	mov	dptr,#(_n + 0x0002)
   0070 74 A4               333 	mov	a,#0xA4
   0072 F0                  334 	movx	@dptr,a
   0073 90 00 03            335 	mov	dptr,#(_n + 0x0003)
   0076 74 5F               336 	mov	a,#0x5F
   0078 F0                  337 	movx	@dptr,a
   0079 90 00 04            338 	mov	dptr,#(_n + 0x0004)
   007C 74 57               339 	mov	a,#0x57
   007E F0                  340 	movx	@dptr,a
   007F 90 00 05            341 	mov	dptr,#(_n + 0x0005)
   0082 74 F3               342 	mov	a,#0xF3
   0084 F0                  343 	movx	@dptr,a
   0085 90 00 06            344 	mov	dptr,#(_n + 0x0006)
   0088 74 F9               345 	mov	a,#0xF9
   008A F0                  346 	movx	@dptr,a
   008B 90 00 07            347 	mov	dptr,#(_n + 0x0007)
   008E 74 3E               348 	mov	a,#0x3E
   0090 F0                  349 	movx	@dptr,a
   0091 90 00 08            350 	mov	dptr,#(_n + 0x0008)
   0094 74 CF               351 	mov	a,#0xCF
   0096 F0                  352 	movx	@dptr,a
   0097 90 00 09            353 	mov	dptr,#(_n + 0x0009)
   009A 74 84               354 	mov	a,#0x84
   009C F0                  355 	movx	@dptr,a
   009D 90 00 0A            356 	mov	dptr,#(_n + 0x000a)
   00A0 74 6D               357 	mov	a,#0x6D
   00A2 F0                  358 	movx	@dptr,a
   00A3 90 00 0B            359 	mov	dptr,#(_n + 0x000b)
   00A6 74 FF               360 	mov	a,#0xFF
   00A8 F0                  361 	movx	@dptr,a
   00A9 90 00 0C            362 	mov	dptr,#(_n + 0x000c)
   00AC 74 20               363 	mov	a,#0x20
   00AE F0                  364 	movx	@dptr,a
   00AF 90 00 0D            365 	mov	dptr,#(_n + 0x000d)
   00B2 74 C1               366 	mov	a,#0xC1
   00B4 F0                  367 	movx	@dptr,a
   00B5 90 00 0E            368 	mov	dptr,#(_n + 0x000e)
   00B8 74 AE               369 	mov	a,#0xAE
   00BA F0                  370 	movx	@dptr,a
   00BB 90 00 0F            371 	mov	dptr,#(_n + 0x000f)
   00BE 74 12               372 	mov	a,#0x12
   00C0 F0                  373 	movx	@dptr,a
   00C1 90 00 10            374 	mov	dptr,#(_n + 0x0010)
   00C4 74 CF               375 	mov	a,#0xCF
   00C6 F0                  376 	movx	@dptr,a
   00C7 90 00 11            377 	mov	dptr,#(_n + 0x0011)
   00CA 74 F1               378 	mov	a,#0xF1
   00CC F0                  379 	movx	@dptr,a
   00CD 90 00 12            380 	mov	dptr,#(_n + 0x0012)
   00D0 E4                  381 	clr	a
   00D1 F0                  382 	movx	@dptr,a
   00D2 90 00 13            383 	mov	dptr,#(_n + 0x0013)
   00D5 74 66               384 	mov	a,#0x66
   00D7 F0                  385 	movx	@dptr,a
   00D8 90 00 14            386 	mov	dptr,#(_n + 0x0014)
   00DB 74 45               387 	mov	a,#0x45
   00DD F0                  388 	movx	@dptr,a
   00DE 90 00 15            389 	mov	dptr,#(_n + 0x0015)
   00E1 74 E2               390 	mov	a,#0xE2
   00E3 F0                  391 	movx	@dptr,a
   00E4 90 00 16            392 	mov	dptr,#(_n + 0x0016)
   00E7 74 34               393 	mov	a,#0x34
   00E9 F0                  394 	movx	@dptr,a
   00EA 90 00 17            395 	mov	dptr,#(_n + 0x0017)
   00ED 74 61               396 	mov	a,#0x61
   00EF F0                  397 	movx	@dptr,a
   00F0 90 00 18            398 	mov	dptr,#(_n + 0x0018)
   00F3 74 27               399 	mov	a,#0x27
   00F5 F0                  400 	movx	@dptr,a
   00F6 90 00 19            401 	mov	dptr,#(_n + 0x0019)
   00F9 74 F2               402 	mov	a,#0xF2
   00FB F0                  403 	movx	@dptr,a
   00FC 90 00 1A            404 	mov	dptr,#(_n + 0x001a)
   00FF 74 57               405 	mov	a,#0x57
   0101 F0                  406 	movx	@dptr,a
   0102 90 00 1B            407 	mov	dptr,#(_n + 0x001b)
   0105 74 B3               408 	mov	a,#0xB3
   0107 F0                  409 	movx	@dptr,a
   0108 90 00 1C            410 	mov	dptr,#(_n + 0x001c)
   010B 74 42               411 	mov	a,#0x42
   010D F0                  412 	movx	@dptr,a
   010E 90 00 1D            413 	mov	dptr,#(_n + 0x001d)
   0111 74 21               414 	mov	a,#0x21
   0113 F0                  415 	movx	@dptr,a
   0114 90 00 1E            416 	mov	dptr,#(_n + 0x001e)
   0117 74 80               417 	mov	a,#0x80
   0119 F0                  418 	movx	@dptr,a
   011A 90 00 1F            419 	mov	dptr,#(_n + 0x001f)
   011D 74 95               420 	mov	a,#0x95
   011F F0                  421 	movx	@dptr,a
   0120 90 00 20            422 	mov	dptr,#(_n + 0x0020)
   0123 74 AB               423 	mov	a,#0xAB
   0125 F0                  424 	movx	@dptr,a
   0126 90 00 21            425 	mov	dptr,#(_n + 0x0021)
   0129 74 15               426 	mov	a,#0x15
   012B F0                  427 	movx	@dptr,a
   012C 90 00 22            428 	mov	dptr,#(_n + 0x0022)
   012F 74 A2               429 	mov	a,#0xA2
   0131 F0                  430 	movx	@dptr,a
   0132 90 00 23            431 	mov	dptr,#(_n + 0x0023)
   0135 74 1D               432 	mov	a,#0x1D
   0137 F0                  433 	movx	@dptr,a
   0138 90 00 24            434 	mov	dptr,#(_n + 0x0024)
   013B 74 53               435 	mov	a,#0x53
   013D F0                  436 	movx	@dptr,a
   013E 90 00 25            437 	mov	dptr,#(_n + 0x0025)
   0141 74 B2               438 	mov	a,#0xB2
   0143 F0                  439 	movx	@dptr,a
   0144 90 00 26            440 	mov	dptr,#(_n + 0x0026)
   0147 74 27               441 	mov	a,#0x27
   0149 F0                  442 	movx	@dptr,a
   014A 90 00 27            443 	mov	dptr,#(_n + 0x0027)
   014D 74 E6               444 	mov	a,#0xE6
   014F F0                  445 	movx	@dptr,a
   0150 90 00 28            446 	mov	dptr,#(_n + 0x0028)
   0153 74 56               447 	mov	a,#0x56
   0155 F0                  448 	movx	@dptr,a
   0156 90 00 29            449 	mov	dptr,#(_n + 0x0029)
   0159 74 93               450 	mov	a,#0x93
   015B F0                  451 	movx	@dptr,a
   015C 90 00 2A            452 	mov	dptr,#(_n + 0x002a)
   015F 74 27               453 	mov	a,#0x27
   0161 F0                  454 	movx	@dptr,a
   0162 90 00 2B            455 	mov	dptr,#(_n + 0x002b)
   0165 74 AF               456 	mov	a,#0xAF
   0167 F0                  457 	movx	@dptr,a
   0168 90 00 2C            458 	mov	dptr,#(_n + 0x002c)
   016B 74 C2               459 	mov	a,#0xC2
   016D F0                  460 	movx	@dptr,a
   016E 90 00 2D            461 	mov	dptr,#(_n + 0x002d)
   0171 74 EE               462 	mov	a,#0xEE
   0173 F0                  463 	movx	@dptr,a
   0174 90 00 2E            464 	mov	dptr,#(_n + 0x002e)
   0177 74 2B               465 	mov	a,#0x2B
   0179 F0                  466 	movx	@dptr,a
   017A 90 00 2F            467 	mov	dptr,#(_n + 0x002f)
   017D 74 2F               468 	mov	a,#0x2F
   017F F0                  469 	movx	@dptr,a
   0180 90 00 30            470 	mov	dptr,#(_n + 0x0030)
   0183 74 9A               471 	mov	a,#0x9A
   0185 F0                  472 	movx	@dptr,a
   0186 90 00 31            473 	mov	dptr,#(_n + 0x0031)
   0189 74 AE               474 	mov	a,#0xAE
   018B F0                  475 	movx	@dptr,a
   018C 90 00 32            476 	mov	dptr,#(_n + 0x0032)
   018F 74 6A               477 	mov	a,#0x6A
   0191 F0                  478 	movx	@dptr,a
   0192 90 00 33            479 	mov	dptr,#(_n + 0x0033)
   0195 74 09               480 	mov	a,#0x09
   0197 F0                  481 	movx	@dptr,a
   0198 90 00 34            482 	mov	dptr,#(_n + 0x0034)
   019B 74 E5               483 	mov	a,#0xE5
   019D F0                  484 	movx	@dptr,a
   019E 90 00 35            485 	mov	dptr,#(_n + 0x0035)
   01A1 74 7F               486 	mov	a,#0x7F
   01A3 F0                  487 	movx	@dptr,a
   01A4 90 00 36            488 	mov	dptr,#(_n + 0x0036)
   01A7 74 AE               489 	mov	a,#0xAE
   01A9 F0                  490 	movx	@dptr,a
   01AA 90 00 37            491 	mov	dptr,#(_n + 0x0037)
   01AD 74 7D               492 	mov	a,#0x7D
   01AF F0                  493 	movx	@dptr,a
   01B0 90 00 38            494 	mov	dptr,#(_n + 0x0038)
   01B3 74 2B               495 	mov	a,#0x2B
   01B5 F0                  496 	movx	@dptr,a
   01B6 90 00 39            497 	mov	dptr,#(_n + 0x0039)
   01B9 74 DD               498 	mov	a,#0xDD
   01BB F0                  499 	movx	@dptr,a
   01BC 90 00 3A            500 	mov	dptr,#(_n + 0x003a)
   01BF 74 58               501 	mov	a,#0x58
   01C1 F0                  502 	movx	@dptr,a
   01C2 90 00 3B            503 	mov	dptr,#(_n + 0x003b)
   01C5 74 2F               504 	mov	a,#0x2F
   01C7 F0                  505 	movx	@dptr,a
   01C8 90 00 3C            506 	mov	dptr,#(_n + 0x003c)
   01CB 74 87               507 	mov	a,#0x87
   01CD F0                  508 	movx	@dptr,a
   01CE 90 00 3D            509 	mov	dptr,#(_n + 0x003d)
   01D1 74 70               510 	mov	a,#0x70
   01D3 F0                  511 	movx	@dptr,a
   01D4 90 00 3E            512 	mov	dptr,#(_n + 0x003e)
   01D7 74 05               513 	mov	a,#0x05
   01D9 F0                  514 	movx	@dptr,a
   01DA 90 00 3F            515 	mov	dptr,#(_n + 0x003f)
   01DD 74 1F               516 	mov	a,#0x1F
   01DF F0                  517 	movx	@dptr,a
   01E0 90 00 40            518 	mov	dptr,#(_n + 0x0040)
   01E3 74 F8               519 	mov	a,#0xF8
   01E5 F0                  520 	movx	@dptr,a
   01E6 90 00 41            521 	mov	dptr,#(_n + 0x0041)
   01E9 74 BD               522 	mov	a,#0xBD
   01EB F0                  523 	movx	@dptr,a
   01EC 90 00 42            524 	mov	dptr,#(_n + 0x0042)
   01EF 74 0B               525 	mov	a,#0x0B
   01F1 F0                  526 	movx	@dptr,a
   01F2 90 00 43            527 	mov	dptr,#(_n + 0x0043)
   01F5 74 E0               528 	mov	a,#0xE0
   01F7 F0                  529 	movx	@dptr,a
   01F8 90 00 44            530 	mov	dptr,#(_n + 0x0044)
   01FB 74 FD               531 	mov	a,#0xFD
   01FD F0                  532 	movx	@dptr,a
   01FE 90 00 45            533 	mov	dptr,#(_n + 0x0045)
   0201 74 F1               534 	mov	a,#0xF1
   0203 F0                  535 	movx	@dptr,a
   0204 90 00 46            536 	mov	dptr,#(_n + 0x0046)
   0207 74 81               537 	mov	a,#0x81
   0209 F0                  538 	movx	@dptr,a
   020A 90 00 47            539 	mov	dptr,#(_n + 0x0047)
   020D 74 60               540 	mov	a,#0x60
   020F F0                  541 	movx	@dptr,a
   0210 90 00 48            542 	mov	dptr,#(_n + 0x0048)
   0213 74 BF               543 	mov	a,#0xBF
   0215 F0                  544 	movx	@dptr,a
   0216 90 00 49            545 	mov	dptr,#(_n + 0x0049)
   0219 74 D2               546 	mov	a,#0xD2
   021B F0                  547 	movx	@dptr,a
   021C 90 00 4A            548 	mov	dptr,#(_n + 0x004a)
   021F 74 FE               549 	mov	a,#0xFE
   0221 F0                  550 	movx	@dptr,a
   0222 90 00 4B            551 	mov	dptr,#(_n + 0x004b)
   0225 74 8F               552 	mov	a,#0x8F
   0227 F0                  553 	movx	@dptr,a
   0228 90 00 4C            554 	mov	dptr,#(_n + 0x004c)
   022B 74 7B               555 	mov	a,#0x7B
   022D F0                  556 	movx	@dptr,a
   022E 90 00 4D            557 	mov	dptr,#(_n + 0x004d)
   0231 74 B9               558 	mov	a,#0xB9
   0233 F0                  559 	movx	@dptr,a
   0234 90 00 4E            560 	mov	dptr,#(_n + 0x004e)
   0237 74 A9               561 	mov	a,#0xA9
   0239 F0                  562 	movx	@dptr,a
   023A 90 00 4F            563 	mov	dptr,#(_n + 0x004f)
   023D 74 A4               564 	mov	a,#0xA4
   023F F0                  565 	movx	@dptr,a
   0240 90 00 50            566 	mov	dptr,#(_n + 0x0050)
   0243 74 6A               567 	mov	a,#0x6A
   0245 F0                  568 	movx	@dptr,a
   0246 90 00 51            569 	mov	dptr,#(_n + 0x0051)
   0249 74 0A               570 	mov	a,#0x0A
   024B F0                  571 	movx	@dptr,a
   024C 90 00 52            572 	mov	dptr,#(_n + 0x0052)
   024F 74 A3               573 	mov	a,#0xA3
   0251 F0                  574 	movx	@dptr,a
   0252 90 00 53            575 	mov	dptr,#(_n + 0x0053)
   0255 74 A3               576 	mov	a,#0xA3
   0257 F0                  577 	movx	@dptr,a
   0258 90 00 54            578 	mov	dptr,#(_n + 0x0054)
   025B 74 70               579 	mov	a,#0x70
   025D F0                  580 	movx	@dptr,a
   025E 90 00 55            581 	mov	dptr,#(_n + 0x0055)
   0261 74 22               582 	mov	a,#0x22
   0263 F0                  583 	movx	@dptr,a
   0264 90 00 56            584 	mov	dptr,#(_n + 0x0056)
   0267 74 BF               585 	mov	a,#0xBF
   0269 F0                  586 	movx	@dptr,a
   026A 90 00 57            587 	mov	dptr,#(_n + 0x0057)
   026D 74 4C               588 	mov	a,#0x4C
   026F F0                  589 	movx	@dptr,a
   0270 90 00 58            590 	mov	dptr,#(_n + 0x0058)
   0273 74 1B               591 	mov	a,#0x1B
   0275 F0                  592 	movx	@dptr,a
   0276 90 00 59            593 	mov	dptr,#(_n + 0x0059)
   0279 74 B0               594 	mov	a,#0xB0
   027B F0                  595 	movx	@dptr,a
   027C 90 00 5A            596 	mov	dptr,#(_n + 0x005a)
   027F 74 41               597 	mov	a,#0x41
   0281 F0                  598 	movx	@dptr,a
   0282 90 00 5B            599 	mov	dptr,#(_n + 0x005b)
   0285 74 24               600 	mov	a,#0x24
   0287 F0                  601 	movx	@dptr,a
   0288 90 00 5C            602 	mov	dptr,#(_n + 0x005c)
   028B 74 4C               603 	mov	a,#0x4C
   028D F0                  604 	movx	@dptr,a
   028E 90 00 5D            605 	mov	dptr,#(_n + 0x005d)
   0291 74 3A               606 	mov	a,#0x3A
   0293 F0                  607 	movx	@dptr,a
   0294 90 00 5E            608 	mov	dptr,#(_n + 0x005e)
   0297 74 08               609 	mov	a,#0x08
   0299 F0                  610 	movx	@dptr,a
   029A 90 00 5F            611 	mov	dptr,#(_n + 0x005f)
   029D 74 EC               612 	mov	a,#0xEC
   029F F0                  613 	movx	@dptr,a
   02A0 90 00 60            614 	mov	dptr,#(_n + 0x0060)
   02A3 74 F4               615 	mov	a,#0xF4
   02A5 F0                  616 	movx	@dptr,a
   02A6 90 00 61            617 	mov	dptr,#(_n + 0x0061)
   02A9 74 91               618 	mov	a,#0x91
   02AB F0                  619 	movx	@dptr,a
   02AC 90 00 62            620 	mov	dptr,#(_n + 0x0062)
   02AF 74 FF               621 	mov	a,#0xFF
   02B1 F0                  622 	movx	@dptr,a
   02B2 90 00 63            623 	mov	dptr,#(_n + 0x0063)
   02B5 74 93               624 	mov	a,#0x93
   02B7 F0                  625 	movx	@dptr,a
   02B8 90 00 64            626 	mov	dptr,#(_n + 0x0064)
   02BB 74 8D               627 	mov	a,#0x8D
   02BD F0                  628 	movx	@dptr,a
   02BE 90 00 65            629 	mov	dptr,#(_n + 0x0065)
   02C1 74 FC               630 	mov	a,#0xFC
   02C3 F0                  631 	movx	@dptr,a
   02C4 90 00 66            632 	mov	dptr,#(_n + 0x0066)
   02C7 74 FA               633 	mov	a,#0xFA
   02C9 F0                  634 	movx	@dptr,a
   02CA 90 00 67            635 	mov	dptr,#(_n + 0x0067)
   02CD 74 4C               636 	mov	a,#0x4C
   02CF F0                  637 	movx	@dptr,a
   02D0 90 00 68            638 	mov	dptr,#(_n + 0x0068)
   02D3 74 26               639 	mov	a,#0x26
   02D5 F0                  640 	movx	@dptr,a
   02D6 90 00 69            641 	mov	dptr,#(_n + 0x0069)
   02D9 74 2D               642 	mov	a,#0x2D
   02DB F0                  643 	movx	@dptr,a
   02DC 90 00 6A            644 	mov	dptr,#(_n + 0x006a)
   02DF 74 D2               645 	mov	a,#0xD2
   02E1 F0                  646 	movx	@dptr,a
   02E2 90 00 6B            647 	mov	dptr,#(_n + 0x006b)
   02E5 74 E9               648 	mov	a,#0xE9
   02E7 F0                  649 	movx	@dptr,a
   02E8 90 00 6C            650 	mov	dptr,#(_n + 0x006c)
   02EB 74 FC               651 	mov	a,#0xFC
   02ED F0                  652 	movx	@dptr,a
   02EE 90 00 6D            653 	mov	dptr,#(_n + 0x006d)
   02F1 74 76               654 	mov	a,#0x76
   02F3 F0                  655 	movx	@dptr,a
   02F4 90 00 6E            656 	mov	dptr,#(_n + 0x006e)
   02F7 74 B1               657 	mov	a,#0xB1
   02F9 F0                  658 	movx	@dptr,a
   02FA 90 00 6F            659 	mov	dptr,#(_n + 0x006f)
   02FD 74 67               660 	mov	a,#0x67
   02FF F0                  661 	movx	@dptr,a
   0300 90 00 70            662 	mov	dptr,#(_n + 0x0070)
   0303 74 5E               663 	mov	a,#0x5E
   0305 F0                  664 	movx	@dptr,a
   0306 90 00 71            665 	mov	dptr,#(_n + 0x0071)
   0309 74 24               666 	mov	a,#0x24
   030B F0                  667 	movx	@dptr,a
   030C 90 00 72            668 	mov	dptr,#(_n + 0x0072)
   030F 74 9E               669 	mov	a,#0x9E
   0311 F0                  670 	movx	@dptr,a
   0312 90 00 73            671 	mov	dptr,#(_n + 0x0073)
   0315 74 31               672 	mov	a,#0x31
   0317 F0                  673 	movx	@dptr,a
   0318 90 00 74            674 	mov	dptr,#(_n + 0x0074)
   031B 74 66               675 	mov	a,#0x66
   031D F0                  676 	movx	@dptr,a
   031E 90 00 75            677 	mov	dptr,#(_n + 0x0075)
   0321 74 5D               678 	mov	a,#0x5D
   0323 F0                  679 	movx	@dptr,a
   0324 90 00 76            680 	mov	dptr,#(_n + 0x0076)
   0327 74 98               681 	mov	a,#0x98
   0329 F0                  682 	movx	@dptr,a
   032A 90 00 77            683 	mov	dptr,#(_n + 0x0077)
   032D 74 4C               684 	mov	a,#0x4C
   032F F0                  685 	movx	@dptr,a
   0330 90 00 78            686 	mov	dptr,#(_n + 0x0078)
   0333 74 0D               687 	mov	a,#0x0D
   0335 F0                  688 	movx	@dptr,a
   0336 90 00 79            689 	mov	dptr,#(_n + 0x0079)
   0339 74 79               690 	mov	a,#0x79
   033B F0                  691 	movx	@dptr,a
   033C 90 00 7A            692 	mov	dptr,#(_n + 0x007a)
   033F 74 81               693 	mov	a,#0x81
   0341 F0                  694 	movx	@dptr,a
   0342 90 00 7B            695 	mov	dptr,#(_n + 0x007b)
   0345 74 76               696 	mov	a,#0x76
   0347 F0                  697 	movx	@dptr,a
   0348 90 00 7C            698 	mov	dptr,#(_n + 0x007c)
   034B 74 AC               699 	mov	a,#0xAC
   034D F0                  700 	movx	@dptr,a
   034E 90 00 7D            701 	mov	dptr,#(_n + 0x007d)
   0351 74 1D               702 	mov	a,#0x1D
   0353 F0                  703 	movx	@dptr,a
   0354 90 00 7E            704 	mov	dptr,#(_n + 0x007e)
   0357 74 E2               705 	mov	a,#0xE2
   0359 F0                  706 	movx	@dptr,a
   035A 90 00 7F            707 	mov	dptr,#(_n + 0x007f)
   035D 74 CA               708 	mov	a,#0xCA
   035F F0                  709 	movx	@dptr,a
                            710 ;	main.c:14: __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0360 90 00 80            711 	mov	dptr,#_a
   0363 74 FF               712 	mov	a,#0xFF
   0365 F0                  713 	movx	@dptr,a
   0366 90 00 81            714 	mov	dptr,#(_a + 0x0001)
   0369 74 7F               715 	mov	a,#0x7F
   036B F0                  716 	movx	@dptr,a
   036C 90 00 82            717 	mov	dptr,#(_a + 0x0002)
   036F 74 14               718 	mov	a,#0x14
   0371 F0                  719 	movx	@dptr,a
   0372 90 00 83            720 	mov	dptr,#(_a + 0x0003)
   0375 74 64               721 	mov	a,#0x64
   0377 F0                  722 	movx	@dptr,a
   0378 90 00 84            723 	mov	dptr,#(_a + 0x0004)
   037B 74 47               724 	mov	a,#0x47
   037D F0                  725 	movx	@dptr,a
   037E 90 00 85            726 	mov	dptr,#(_a + 0x0005)
   0381 74 68               727 	mov	a,#0x68
   0383 F0                  728 	movx	@dptr,a
   0384 90 00 86            729 	mov	dptr,#(_a + 0x0006)
   0387 74 C2               730 	mov	a,#0xC2
   0389 F0                  731 	movx	@dptr,a
   038A 90 00 87            732 	mov	dptr,#(_a + 0x0007)
   038D 74 B6               733 	mov	a,#0xB6
   038F F0                  734 	movx	@dptr,a
   0390 90 00 88            735 	mov	dptr,#(_a + 0x0008)
   0393 74 27               736 	mov	a,#0x27
   0395 F0                  737 	movx	@dptr,a
   0396 90 00 89            738 	mov	dptr,#(_a + 0x0009)
   0399 74 32               739 	mov	a,#0x32
   039B F0                  740 	movx	@dptr,a
   039C 90 00 8A            741 	mov	dptr,#(_a + 0x000a)
   039F 74 63               742 	mov	a,#0x63
   03A1 F0                  743 	movx	@dptr,a
   03A2 90 00 8B            744 	mov	dptr,#(_a + 0x000b)
   03A5 74 2C               745 	mov	a,#0x2C
   03A7 F0                  746 	movx	@dptr,a
   03A8 90 00 8C            747 	mov	dptr,#(_a + 0x000c)
   03AB 74 B0               748 	mov	a,#0xB0
   03AD F0                  749 	movx	@dptr,a
   03AE 90 00 8D            750 	mov	dptr,#(_a + 0x000d)
   03B1 74 C3               751 	mov	a,#0xC3
   03B3 F0                  752 	movx	@dptr,a
   03B4 90 00 8E            753 	mov	dptr,#(_a + 0x000e)
   03B7 74 95               754 	mov	a,#0x95
   03B9 F0                  755 	movx	@dptr,a
   03BA 90 00 8F            756 	mov	dptr,#(_a + 0x000f)
   03BD 74 13               757 	mov	a,#0x13
   03BF F0                  758 	movx	@dptr,a
   03C0 90 00 90            759 	mov	dptr,#(_a + 0x0010)
   03C3 74 C5               760 	mov	a,#0xC5
   03C5 F0                  761 	movx	@dptr,a
   03C6 90 00 91            762 	mov	dptr,#(_a + 0x0011)
   03C9 74 7E               763 	mov	a,#0x7E
   03CB F0                  764 	movx	@dptr,a
   03CC 90 00 92            765 	mov	dptr,#(_a + 0x0012)
   03CF 74 17               766 	mov	a,#0x17
   03D1 F0                  767 	movx	@dptr,a
   03D2 90 00 93            768 	mov	dptr,#(_a + 0x0013)
   03D5 74 22               769 	mov	a,#0x22
   03D7 F0                  770 	movx	@dptr,a
   03D8 90 00 94            771 	mov	dptr,#(_a + 0x0014)
   03DB 74 F3               772 	mov	a,#0xF3
   03DD F0                  773 	movx	@dptr,a
   03DE 90 00 95            774 	mov	dptr,#(_a + 0x0015)
   03E1 74 7C               775 	mov	a,#0x7C
   03E3 F0                  776 	movx	@dptr,a
   03E4 90 00 96            777 	mov	dptr,#(_a + 0x0016)
   03E7 74 2D               778 	mov	a,#0x2D
   03E9 F0                  779 	movx	@dptr,a
   03EA 90 00 97            780 	mov	dptr,#(_a + 0x0017)
   03ED 74 E8               781 	mov	a,#0xE8
   03EF F0                  782 	movx	@dptr,a
   03F0 90 00 98            783 	mov	dptr,#(_a + 0x0018)
   03F3 74 13               784 	mov	a,#0x13
   03F5 F0                  785 	movx	@dptr,a
   03F6 90 00 99            786 	mov	dptr,#(_a + 0x0019)
   03F9 74 47               787 	mov	a,#0x47
   03FB F0                  788 	movx	@dptr,a
   03FC 90 00 9A            789 	mov	dptr,#(_a + 0x001a)
   03FF 74 5E               790 	mov	a,#0x5E
   0401 F0                  791 	movx	@dptr,a
   0402 90 00 9B            792 	mov	dptr,#(_a + 0x001b)
   0405 74 15               793 	mov	a,#0x15
   0407 F0                  794 	movx	@dptr,a
   0408 90 00 9C            795 	mov	dptr,#(_a + 0x001c)
   040B 74 4E               796 	mov	a,#0x4E
   040D F0                  797 	movx	@dptr,a
   040E 90 00 9D            798 	mov	dptr,#(_a + 0x001d)
   0411 74 EF               799 	mov	a,#0xEF
   0413 F0                  800 	movx	@dptr,a
   0414 90 00 9E            801 	mov	dptr,#(_a + 0x001e)
   0417 74 83               802 	mov	a,#0x83
   0419 F0                  803 	movx	@dptr,a
   041A 90 00 9F            804 	mov	dptr,#(_a + 0x001f)
   041D 74 81               805 	mov	a,#0x81
   041F F0                  806 	movx	@dptr,a
   0420 90 00 A0            807 	mov	dptr,#(_a + 0x0020)
   0423 74 DF               808 	mov	a,#0xDF
   0425 F0                  809 	movx	@dptr,a
   0426 90 00 A1            810 	mov	dptr,#(_a + 0x0021)
   0429 74 C3               811 	mov	a,#0xC3
   042B F0                  812 	movx	@dptr,a
   042C 90 00 A2            813 	mov	dptr,#(_a + 0x0022)
   042F 74 47               814 	mov	a,#0x47
   0431 F0                  815 	movx	@dptr,a
   0432 90 00 A3            816 	mov	dptr,#(_a + 0x0023)
   0435 74 D3               817 	mov	a,#0xD3
   0437 F0                  818 	movx	@dptr,a
   0438 90 00 A4            819 	mov	dptr,#(_a + 0x0024)
   043B 74 60               820 	mov	a,#0x60
   043D F0                  821 	movx	@dptr,a
   043E 90 00 A5            822 	mov	dptr,#(_a + 0x0025)
   0441 74 BB               823 	mov	a,#0xBB
   0443 F0                  824 	movx	@dptr,a
   0444 90 00 A6            825 	mov	dptr,#(_a + 0x0026)
   0447 74 8B               826 	mov	a,#0x8B
   0449 F0                  827 	movx	@dptr,a
   044A 90 00 A7            828 	mov	dptr,#(_a + 0x0027)
   044D 74 3E               829 	mov	a,#0x3E
   044F F0                  830 	movx	@dptr,a
   0450 90 00 A8            831 	mov	dptr,#(_a + 0x0028)
   0453 74 B6               832 	mov	a,#0xB6
   0455 F0                  833 	movx	@dptr,a
   0456 90 00 A9            834 	mov	dptr,#(_a + 0x0029)
   0459 74 35               835 	mov	a,#0x35
   045B F0                  836 	movx	@dptr,a
   045C 90 00 AA            837 	mov	dptr,#(_a + 0x002a)
   045F 74 B1               838 	mov	a,#0xB1
   0461 F0                  839 	movx	@dptr,a
   0462 90 00 AB            840 	mov	dptr,#(_a + 0x002b)
   0465 74 6E               841 	mov	a,#0x6E
   0467 F0                  842 	movx	@dptr,a
   0468 90 00 AC            843 	mov	dptr,#(_a + 0x002c)
   046B 74 D1               844 	mov	a,#0xD1
   046D F0                  845 	movx	@dptr,a
   046E 90 00 AD            846 	mov	dptr,#(_a + 0x002d)
   0471 74 D5               847 	mov	a,#0xD5
   0473 F0                  848 	movx	@dptr,a
   0474 90 00 AE            849 	mov	dptr,#(_a + 0x002e)
   0477 74 DA               850 	mov	a,#0xDA
   0479 F0                  851 	movx	@dptr,a
   047A 90 00 AF            852 	mov	dptr,#(_a + 0x002f)
   047D 74 6F               853 	mov	a,#0x6F
   047F F0                  854 	movx	@dptr,a
   0480 90 00 B0            855 	mov	dptr,#(_a + 0x0030)
   0483 74 28               856 	mov	a,#0x28
   0485 F0                  857 	movx	@dptr,a
   0486 90 00 B1            858 	mov	dptr,#(_a + 0x0031)
   0489 74 16               859 	mov	a,#0x16
   048B F0                  860 	movx	@dptr,a
   048C 90 00 B2            861 	mov	dptr,#(_a + 0x0032)
   048F 74 2C               862 	mov	a,#0x2C
   0491 F0                  863 	movx	@dptr,a
   0492 90 00 B3            864 	mov	dptr,#(_a + 0x0033)
   0495 74 74               865 	mov	a,#0x74
   0497 F0                  866 	movx	@dptr,a
   0498 90 00 B4            867 	mov	dptr,#(_a + 0x0034)
   049B 74 36               868 	mov	a,#0x36
   049D F0                  869 	movx	@dptr,a
   049E 90 00 B5            870 	mov	dptr,#(_a + 0x0035)
   04A1 74 F9               871 	mov	a,#0xF9
   04A3 F0                  872 	movx	@dptr,a
   04A4 90 00 B6            873 	mov	dptr,#(_a + 0x0036)
   04A7 74 04               874 	mov	a,#0x04
   04A9 F0                  875 	movx	@dptr,a
   04AA 90 00 B7            876 	mov	dptr,#(_a + 0x0037)
   04AD 74 79               877 	mov	a,#0x79
   04AF F0                  878 	movx	@dptr,a
   04B0 90 00 B8            879 	mov	dptr,#(_a + 0x0038)
   04B3 74 F9               880 	mov	a,#0xF9
   04B5 F0                  881 	movx	@dptr,a
   04B6 90 00 B9            882 	mov	dptr,#(_a + 0x0039)
   04B9 74 76               883 	mov	a,#0x76
   04BB F0                  884 	movx	@dptr,a
   04BC 90 00 BA            885 	mov	dptr,#(_a + 0x003a)
   04BF 74 E2               886 	mov	a,#0xE2
   04C1 F0                  887 	movx	@dptr,a
   04C2 90 00 BB            888 	mov	dptr,#(_a + 0x003b)
   04C5 74 CC               889 	mov	a,#0xCC
   04C7 F0                  890 	movx	@dptr,a
   04C8 90 00 BC            891 	mov	dptr,#(_a + 0x003c)
   04CB 74 A4               892 	mov	a,#0xA4
   04CD F0                  893 	movx	@dptr,a
   04CE 90 00 BD            894 	mov	dptr,#(_a + 0x003d)
   04D1 74 82               895 	mov	a,#0x82
   04D3 F0                  896 	movx	@dptr,a
   04D4 90 00 BE            897 	mov	dptr,#(_a + 0x003e)
   04D7 74 A7               898 	mov	a,#0xA7
   04D9 F0                  899 	movx	@dptr,a
   04DA 90 00 BF            900 	mov	dptr,#(_a + 0x003f)
   04DD 74 A4               901 	mov	a,#0xA4
   04DF F0                  902 	movx	@dptr,a
   04E0 90 00 C0            903 	mov	dptr,#(_a + 0x0040)
   04E3 74 68               904 	mov	a,#0x68
   04E5 F0                  905 	movx	@dptr,a
   04E6 90 00 C1            906 	mov	dptr,#(_a + 0x0041)
   04E9 74 4E               907 	mov	a,#0x4E
   04EB F0                  908 	movx	@dptr,a
   04EC 90 00 C2            909 	mov	dptr,#(_a + 0x0042)
   04EF 74 24               910 	mov	a,#0x24
   04F1 F0                  911 	movx	@dptr,a
   04F2 90 00 C3            912 	mov	dptr,#(_a + 0x0043)
   04F5 74 A6               913 	mov	a,#0xA6
   04F7 F0                  914 	movx	@dptr,a
   04F8 90 00 C4            915 	mov	dptr,#(_a + 0x0044)
   04FB 74 C1               916 	mov	a,#0xC1
   04FD F0                  917 	movx	@dptr,a
   04FE 90 00 C5            918 	mov	dptr,#(_a + 0x0045)
   0501 74 58               919 	mov	a,#0x58
   0503 F0                  920 	movx	@dptr,a
   0504 90 00 C6            921 	mov	dptr,#(_a + 0x0046)
   0507 74 68               922 	mov	a,#0x68
   0509 F0                  923 	movx	@dptr,a
   050A 90 00 C7            924 	mov	dptr,#(_a + 0x0047)
   050D 74 24               925 	mov	a,#0x24
   050F F0                  926 	movx	@dptr,a
   0510 90 00 C8            927 	mov	dptr,#(_a + 0x0048)
   0513 74 58               928 	mov	a,#0x58
   0515 F0                  929 	movx	@dptr,a
   0516 90 00 C9            930 	mov	dptr,#(_a + 0x0049)
   0519 74 DC               931 	mov	a,#0xDC
   051B F0                  932 	movx	@dptr,a
   051C 90 00 CA            933 	mov	dptr,#(_a + 0x004a)
   051F 74 14               934 	mov	a,#0x14
   0521 F0                  935 	movx	@dptr,a
   0522 90 00 CB            936 	mov	dptr,#(_a + 0x004b)
   0525 74 F9               937 	mov	a,#0xF9
   0527 F0                  938 	movx	@dptr,a
   0528 90 00 CC            939 	mov	dptr,#(_a + 0x004c)
   052B 74 FF               940 	mov	a,#0xFF
   052D F0                  941 	movx	@dptr,a
   052E 90 00 CD            942 	mov	dptr,#(_a + 0x004d)
   0531 74 4D               943 	mov	a,#0x4D
   0533 F0                  944 	movx	@dptr,a
   0534 90 00 CE            945 	mov	dptr,#(_a + 0x004e)
   0537 74 A1               946 	mov	a,#0xA1
   0539 F0                  947 	movx	@dptr,a
   053A 90 00 CF            948 	mov	dptr,#(_a + 0x004f)
   053D 74 EF               949 	mov	a,#0xEF
   053F F0                  950 	movx	@dptr,a
   0540 90 00 D0            951 	mov	dptr,#(_a + 0x0050)
   0543 74 53               952 	mov	a,#0x53
   0545 F0                  953 	movx	@dptr,a
   0546 90 00 D1            954 	mov	dptr,#(_a + 0x0051)
   0549 74 A3               955 	mov	a,#0xA3
   054B F0                  956 	movx	@dptr,a
   054C 90 00 D2            957 	mov	dptr,#(_a + 0x0052)
   054F 74 C2               958 	mov	a,#0xC2
   0551 F0                  959 	movx	@dptr,a
   0552 90 00 D3            960 	mov	dptr,#(_a + 0x0053)
   0555 74 84               961 	mov	a,#0x84
   0557 F0                  962 	movx	@dptr,a
   0558 90 00 D4            963 	mov	dptr,#(_a + 0x0054)
   055B 74 1B               964 	mov	a,#0x1B
   055D F0                  965 	movx	@dptr,a
   055E 90 00 D5            966 	mov	dptr,#(_a + 0x0055)
   0561 74 81               967 	mov	a,#0x81
   0563 F0                  968 	movx	@dptr,a
   0564 90 00 D6            969 	mov	dptr,#(_a + 0x0056)
   0567 74 16               970 	mov	a,#0x16
   0569 F0                  971 	movx	@dptr,a
   056A 90 00 D7            972 	mov	dptr,#(_a + 0x0057)
   056D 74 6C               973 	mov	a,#0x6C
   056F F0                  974 	movx	@dptr,a
   0570 90 00 D8            975 	mov	dptr,#(_a + 0x0058)
   0573 74 DD               976 	mov	a,#0xDD
   0575 F0                  977 	movx	@dptr,a
   0576 90 00 D9            978 	mov	dptr,#(_a + 0x0059)
   0579 74 E3               979 	mov	a,#0xE3
   057B F0                  980 	movx	@dptr,a
   057C 90 00 DA            981 	mov	dptr,#(_a + 0x005a)
   057F 74 DB               982 	mov	a,#0xDB
   0581 F0                  983 	movx	@dptr,a
   0582 90 00 DB            984 	mov	dptr,#(_a + 0x005b)
   0585 74 A8               985 	mov	a,#0xA8
   0587 F0                  986 	movx	@dptr,a
   0588 90 00 DC            987 	mov	dptr,#(_a + 0x005c)
   058B 74 03               988 	mov	a,#0x03
   058D F0                  989 	movx	@dptr,a
   058E 90 00 DD            990 	mov	dptr,#(_a + 0x005d)
   0591 74 8F               991 	mov	a,#0x8F
   0593 F0                  992 	movx	@dptr,a
   0594 90 00 DE            993 	mov	dptr,#(_a + 0x005e)
   0597 74 F2               994 	mov	a,#0xF2
   0599 F0                  995 	movx	@dptr,a
   059A 90 00 DF            996 	mov	dptr,#(_a + 0x005f)
   059D 74 31               997 	mov	a,#0x31
   059F F0                  998 	movx	@dptr,a
   05A0 90 00 E0            999 	mov	dptr,#(_a + 0x0060)
   05A3 74 FD              1000 	mov	a,#0xFD
   05A5 F0                 1001 	movx	@dptr,a
   05A6 90 00 E1           1002 	mov	dptr,#(_a + 0x0061)
   05A9 74 94              1003 	mov	a,#0x94
   05AB F0                 1004 	movx	@dptr,a
   05AC 90 00 E2           1005 	mov	dptr,#(_a + 0x0062)
   05AF 74 5D              1006 	mov	a,#0x5D
   05B1 F0                 1007 	movx	@dptr,a
   05B2 90 00 E3           1008 	mov	dptr,#(_a + 0x0063)
   05B5 74 26              1009 	mov	a,#0x26
   05B7 F0                 1010 	movx	@dptr,a
   05B8 90 00 E4           1011 	mov	dptr,#(_a + 0x0064)
   05BB 74 13              1012 	mov	a,#0x13
   05BD F0                 1013 	movx	@dptr,a
   05BE 90 00 E5           1014 	mov	dptr,#(_a + 0x0065)
   05C1 74 C6              1015 	mov	a,#0xC6
   05C3 F0                 1016 	movx	@dptr,a
   05C4 90 00 E6           1017 	mov	dptr,#(_a + 0x0066)
   05C7 74 68              1018 	mov	a,#0x68
   05C9 F0                 1019 	movx	@dptr,a
   05CA 90 00 E7           1020 	mov	dptr,#(_a + 0x0067)
   05CD 74 B4              1021 	mov	a,#0xB4
   05CF F0                 1022 	movx	@dptr,a
   05D0 90 00 E8           1023 	mov	dptr,#(_a + 0x0068)
   05D3 74 0D              1024 	mov	a,#0x0D
   05D5 F0                 1025 	movx	@dptr,a
   05D6 90 00 E9           1026 	mov	dptr,#(_a + 0x0069)
   05D9 74 CD              1027 	mov	a,#0xCD
   05DB F0                 1028 	movx	@dptr,a
   05DC 90 00 EA           1029 	mov	dptr,#(_a + 0x006a)
   05DF 74 F1              1030 	mov	a,#0xF1
   05E1 F0                 1031 	movx	@dptr,a
   05E2 90 00 EB           1032 	mov	dptr,#(_a + 0x006b)
   05E5 74 B8              1033 	mov	a,#0xB8
   05E7 F0                 1034 	movx	@dptr,a
   05E8 90 00 EC           1035 	mov	dptr,#(_a + 0x006c)
   05EB 74 66              1036 	mov	a,#0x66
   05ED F0                 1037 	movx	@dptr,a
   05EE 90 00 ED           1038 	mov	dptr,#(_a + 0x006d)
   05F1 74 0D              1039 	mov	a,#0x0D
   05F3 F0                 1040 	movx	@dptr,a
   05F4 90 00 EE           1041 	mov	dptr,#(_a + 0x006e)
   05F7 74 5D              1042 	mov	a,#0x5D
   05F9 F0                 1043 	movx	@dptr,a
   05FA 90 00 EF           1044 	mov	dptr,#(_a + 0x006f)
   05FD 74 3B              1045 	mov	a,#0x3B
   05FF F0                 1046 	movx	@dptr,a
   0600 90 00 F0           1047 	mov	dptr,#(_a + 0x0070)
   0603 74 2F              1048 	mov	a,#0x2F
   0605 F0                 1049 	movx	@dptr,a
   0606 90 00 F1           1050 	mov	dptr,#(_a + 0x0071)
   0609 74 C4              1051 	mov	a,#0xC4
   060B F0                 1052 	movx	@dptr,a
   060C 90 00 F2           1053 	mov	dptr,#(_a + 0x0072)
   060F 74 4A              1054 	mov	a,#0x4A
   0611 F0                 1055 	movx	@dptr,a
   0612 90 00 F3           1056 	mov	dptr,#(_a + 0x0073)
   0615 74 D1              1057 	mov	a,#0xD1
   0617 F0                 1058 	movx	@dptr,a
   0618 90 00 F4           1059 	mov	dptr,#(_a + 0x0074)
   061B 74 0B              1060 	mov	a,#0x0B
   061D F0                 1061 	movx	@dptr,a
   061E 90 00 F5           1062 	mov	dptr,#(_a + 0x0075)
   0621 74 36              1063 	mov	a,#0x36
   0623 F0                 1064 	movx	@dptr,a
   0624 90 00 F6           1065 	mov	dptr,#(_a + 0x0076)
   0627 74 C6              1066 	mov	a,#0xC6
   0629 F0                 1067 	movx	@dptr,a
   062A 90 00 F7           1068 	mov	dptr,#(_a + 0x0077)
   062D 74 10              1069 	mov	a,#0x10
   062F F0                 1070 	movx	@dptr,a
   0630 90 00 F8           1071 	mov	dptr,#(_a + 0x0078)
   0633 74 1A              1072 	mov	a,#0x1A
   0635 F0                 1073 	movx	@dptr,a
   0636 90 00 F9           1074 	mov	dptr,#(_a + 0x0079)
   0639 74 2F              1075 	mov	a,#0x2F
   063B F0                 1076 	movx	@dptr,a
   063C 90 00 FA           1077 	mov	dptr,#(_a + 0x007a)
   063F 74 72              1078 	mov	a,#0x72
   0641 F0                 1079 	movx	@dptr,a
   0642 90 00 FB           1080 	mov	dptr,#(_a + 0x007b)
   0645 74 D1              1081 	mov	a,#0xD1
   0647 F0                 1082 	movx	@dptr,a
   0648 90 00 FC           1083 	mov	dptr,#(_a + 0x007c)
   064B 74 BB              1084 	mov	a,#0xBB
   064D F0                 1085 	movx	@dptr,a
   064E 90 00 FD           1086 	mov	dptr,#(_a + 0x007d)
   0651 74 15              1087 	mov	a,#0x15
   0653 F0                 1088 	movx	@dptr,a
   0654 90 00 FE           1089 	mov	dptr,#(_a + 0x007e)
   0657 74 29              1090 	mov	a,#0x29
   0659 F0                 1091 	movx	@dptr,a
   065A 90 00 FF           1092 	mov	dptr,#(_a + 0x007f)
   065D 74 CA              1093 	mov	a,#0xCA
   065F F0                 1094 	movx	@dptr,a
                           1095 ;	main.c:15: __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0660 90 01 00           1096 	mov	dptr,#_b
   0663 74 E1              1097 	mov	a,#0xE1
   0665 F0                 1098 	movx	@dptr,a
   0666 90 01 01           1099 	mov	dptr,#(_b + 0x0001)
   0669 74 8A              1100 	mov	a,#0x8A
   066B F0                 1101 	movx	@dptr,a
   066C 90 01 02           1102 	mov	dptr,#(_b + 0x0002)
   066F 74 03              1103 	mov	a,#0x03
   0671 F0                 1104 	movx	@dptr,a
   0672 90 01 03           1105 	mov	dptr,#(_b + 0x0003)
   0675 74 DB              1106 	mov	a,#0xDB
   0677 F0                 1107 	movx	@dptr,a
   0678 90 01 04           1108 	mov	dptr,#(_b + 0x0004)
   067B 74 E0              1109 	mov	a,#0xE0
   067D F0                 1110 	movx	@dptr,a
   067E 90 01 05           1111 	mov	dptr,#(_b + 0x0005)
   0681 74 D9              1112 	mov	a,#0xD9
   0683 F0                 1113 	movx	@dptr,a
   0684 90 01 06           1114 	mov	dptr,#(_b + 0x0006)
   0687 74 F6              1115 	mov	a,#0xF6
   0689 F0                 1116 	movx	@dptr,a
   068A 90 01 07           1117 	mov	dptr,#(_b + 0x0007)
   068D 74 55              1118 	mov	a,#0x55
   068F F0                 1119 	movx	@dptr,a
   0690 90 01 08           1120 	mov	dptr,#(_b + 0x0008)
   0693 74 B6              1121 	mov	a,#0xB6
   0695 F0                 1122 	movx	@dptr,a
   0696 90 01 09           1123 	mov	dptr,#(_b + 0x0009)
   0699 74 27              1124 	mov	a,#0x27
   069B F0                 1125 	movx	@dptr,a
   069C 90 01 0A           1126 	mov	dptr,#(_b + 0x000a)
   069F 74 0A              1127 	mov	a,#0x0A
   06A1 F0                 1128 	movx	@dptr,a
   06A2 90 01 0B           1129 	mov	dptr,#(_b + 0x000b)
   06A5 74 28              1130 	mov	a,#0x28
   06A7 F0                 1131 	movx	@dptr,a
   06A8 90 01 0C           1132 	mov	dptr,#(_b + 0x000c)
   06AB 74 F0              1133 	mov	a,#0xF0
   06AD F0                 1134 	movx	@dptr,a
   06AE 90 01 0D           1135 	mov	dptr,#(_b + 0x000d)
   06B1 74 5E              1136 	mov	a,#0x5E
   06B3 F0                 1137 	movx	@dptr,a
   06B4 90 01 0E           1138 	mov	dptr,#(_b + 0x000e)
   06B7 74 74              1139 	mov	a,#0x74
   06B9 F0                 1140 	movx	@dptr,a
   06BA 90 01 0F           1141 	mov	dptr,#(_b + 0x000f)
   06BD 74 7F              1142 	mov	a,#0x7F
   06BF F0                 1143 	movx	@dptr,a
   06C0 90 01 10           1144 	mov	dptr,#(_b + 0x0010)
   06C3 74 E6              1145 	mov	a,#0xE6
   06C5 F0                 1146 	movx	@dptr,a
   06C6 90 01 11           1147 	mov	dptr,#(_b + 0x0011)
   06C9 74 9F              1148 	mov	a,#0x9F
   06CB F0                 1149 	movx	@dptr,a
   06CC 90 01 12           1150 	mov	dptr,#(_b + 0x0012)
   06CF 74 4C              1151 	mov	a,#0x4C
   06D1 F0                 1152 	movx	@dptr,a
   06D2 90 01 13           1153 	mov	dptr,#(_b + 0x0013)
   06D5 74 FB              1154 	mov	a,#0xFB
   06D7 F0                 1155 	movx	@dptr,a
   06D8 90 01 14           1156 	mov	dptr,#(_b + 0x0014)
   06DB 74 26              1157 	mov	a,#0x26
   06DD F0                 1158 	movx	@dptr,a
   06DE 90 01 15           1159 	mov	dptr,#(_b + 0x0015)
   06E1 74 8C              1160 	mov	a,#0x8C
   06E3 F0                 1161 	movx	@dptr,a
   06E4 90 01 16           1162 	mov	dptr,#(_b + 0x0016)
   06E7 74 9E              1163 	mov	a,#0x9E
   06E9 F0                 1164 	movx	@dptr,a
   06EA 90 01 17           1165 	mov	dptr,#(_b + 0x0017)
   06ED 74 87              1166 	mov	a,#0x87
   06EF F0                 1167 	movx	@dptr,a
   06F0 90 01 18           1168 	mov	dptr,#(_b + 0x0018)
   06F3 74 83              1169 	mov	a,#0x83
   06F5 F0                 1170 	movx	@dptr,a
   06F6 90 01 19           1171 	mov	dptr,#(_b + 0x0019)
   06F9 74 22              1172 	mov	a,#0x22
   06FB F0                 1173 	movx	@dptr,a
   06FC 90 01 1A           1174 	mov	dptr,#(_b + 0x001a)
   06FF 74 F2              1175 	mov	a,#0xF2
   0701 F0                 1176 	movx	@dptr,a
   0702 90 01 1B           1177 	mov	dptr,#(_b + 0x001b)
   0705 74 75              1178 	mov	a,#0x75
   0707 F0                 1179 	movx	@dptr,a
   0708 90 01 1C           1180 	mov	dptr,#(_b + 0x001c)
   070B 74 D2              1181 	mov	a,#0xD2
   070D F0                 1182 	movx	@dptr,a
   070E 90 01 1D           1183 	mov	dptr,#(_b + 0x001d)
   0711 74 B3              1184 	mov	a,#0xB3
   0713 F0                 1185 	movx	@dptr,a
   0714 90 01 1E           1186 	mov	dptr,#(_b + 0x001e)
   0717 74 61              1187 	mov	a,#0x61
   0719 F0                 1188 	movx	@dptr,a
   071A 90 01 1F           1189 	mov	dptr,#(_b + 0x001f)
   071D 74 A2              1190 	mov	a,#0xA2
   071F F0                 1191 	movx	@dptr,a
   0720 90 01 20           1192 	mov	dptr,#(_b + 0x0020)
   0723 74 9D              1193 	mov	a,#0x9D
   0725 F0                 1194 	movx	@dptr,a
   0726 90 01 21           1195 	mov	dptr,#(_b + 0x0021)
   0729 74 50              1196 	mov	a,#0x50
   072B F0                 1197 	movx	@dptr,a
   072C 90 01 22           1198 	mov	dptr,#(_b + 0x0022)
   072F 74 71              1199 	mov	a,#0x71
   0731 F0                 1200 	movx	@dptr,a
   0732 90 01 23           1201 	mov	dptr,#(_b + 0x0023)
   0735 74 5E              1202 	mov	a,#0x5E
   0737 F0                 1203 	movx	@dptr,a
   0738 90 01 24           1204 	mov	dptr,#(_b + 0x0024)
   073B 74 C9              1205 	mov	a,#0xC9
   073D F0                 1206 	movx	@dptr,a
   073E 90 01 25           1207 	mov	dptr,#(_b + 0x0025)
   0741 74 DD              1208 	mov	a,#0xDD
   0743 F0                 1209 	movx	@dptr,a
   0744 90 01 26           1210 	mov	dptr,#(_b + 0x0026)
   0747 74 DD              1211 	mov	a,#0xDD
   0749 F0                 1212 	movx	@dptr,a
   074A 90 01 27           1213 	mov	dptr,#(_b + 0x0027)
   074D 74 74              1214 	mov	a,#0x74
   074F F0                 1215 	movx	@dptr,a
   0750 90 01 28           1216 	mov	dptr,#(_b + 0x0028)
   0753 74 0A              1217 	mov	a,#0x0A
   0755 F0                 1218 	movx	@dptr,a
   0756 90 01 29           1219 	mov	dptr,#(_b + 0x0029)
   0759 74 3C              1220 	mov	a,#0x3C
   075B F0                 1221 	movx	@dptr,a
   075C 90 01 2A           1222 	mov	dptr,#(_b + 0x002a)
   075F 74 C0              1223 	mov	a,#0xC0
   0761 F0                 1224 	movx	@dptr,a
   0762 90 01 2B           1225 	mov	dptr,#(_b + 0x002b)
   0765 74 30              1226 	mov	a,#0x30
   0767 F0                 1227 	movx	@dptr,a
   0768 90 01 2C           1228 	mov	dptr,#(_b + 0x002c)
   076B 74 3E              1229 	mov	a,#0x3E
   076D F0                 1230 	movx	@dptr,a
   076E 90 01 2D           1231 	mov	dptr,#(_b + 0x002d)
   0771 74 E5              1232 	mov	a,#0xE5
   0773 F0                 1233 	movx	@dptr,a
   0774 90 01 2E           1234 	mov	dptr,#(_b + 0x002e)
   0777 74 20              1235 	mov	a,#0x20
   0779 F0                 1236 	movx	@dptr,a
   077A 90 01 2F           1237 	mov	dptr,#(_b + 0x002f)
   077D 74 02              1238 	mov	a,#0x02
   077F F0                 1239 	movx	@dptr,a
   0780 90 01 30           1240 	mov	dptr,#(_b + 0x0030)
   0783 74 B3              1241 	mov	a,#0xB3
   0785 F0                 1242 	movx	@dptr,a
   0786 90 01 31           1243 	mov	dptr,#(_b + 0x0031)
   0789 74 12              1244 	mov	a,#0x12
   078B F0                 1245 	movx	@dptr,a
   078C 90 01 32           1246 	mov	dptr,#(_b + 0x0032)
   078F 74 4F              1247 	mov	a,#0x4F
   0791 F0                 1248 	movx	@dptr,a
   0792 90 01 33           1249 	mov	dptr,#(_b + 0x0033)
   0795 74 AB              1250 	mov	a,#0xAB
   0797 F0                 1251 	movx	@dptr,a
   0798 90 01 34           1252 	mov	dptr,#(_b + 0x0034)
   079B 74 60              1253 	mov	a,#0x60
   079D F0                 1254 	movx	@dptr,a
   079E 90 01 35           1255 	mov	dptr,#(_b + 0x0035)
   07A1 74 27              1256 	mov	a,#0x27
   07A3 F0                 1257 	movx	@dptr,a
   07A4 90 01 36           1258 	mov	dptr,#(_b + 0x0036)
   07A7 74 07              1259 	mov	a,#0x07
   07A9 F0                 1260 	movx	@dptr,a
   07AA 90 01 37           1261 	mov	dptr,#(_b + 0x0037)
   07AD 74 17              1262 	mov	a,#0x17
   07AF F0                 1263 	movx	@dptr,a
   07B0 90 01 38           1264 	mov	dptr,#(_b + 0x0038)
   07B3 74 DD              1265 	mov	a,#0xDD
   07B5 F0                 1266 	movx	@dptr,a
   07B6 90 01 39           1267 	mov	dptr,#(_b + 0x0039)
   07B9 E4                 1268 	clr	a
   07BA F0                 1269 	movx	@dptr,a
   07BB 90 01 3A           1270 	mov	dptr,#(_b + 0x003a)
   07BE 74 C2              1271 	mov	a,#0xC2
   07C0 F0                 1272 	movx	@dptr,a
   07C1 90 01 3B           1273 	mov	dptr,#(_b + 0x003b)
   07C4 74 E1              1274 	mov	a,#0xE1
   07C6 F0                 1275 	movx	@dptr,a
   07C7 90 01 3C           1276 	mov	dptr,#(_b + 0x003c)
   07CA 74 BC              1277 	mov	a,#0xBC
   07CC F0                 1278 	movx	@dptr,a
   07CD 90 01 3D           1279 	mov	dptr,#(_b + 0x003d)
   07D0 74 04              1280 	mov	a,#0x04
   07D2 F0                 1281 	movx	@dptr,a
   07D3 90 01 3E           1282 	mov	dptr,#(_b + 0x003e)
   07D6 74 AE              1283 	mov	a,#0xAE
   07D8 F0                 1284 	movx	@dptr,a
   07D9 90 01 3F           1285 	mov	dptr,#(_b + 0x003f)
   07DC 74 21              1286 	mov	a,#0x21
   07DE F0                 1287 	movx	@dptr,a
   07DF 90 01 40           1288 	mov	dptr,#(_b + 0x0040)
   07E2 74 38              1289 	mov	a,#0x38
   07E4 F0                 1290 	movx	@dptr,a
   07E5 90 01 41           1291 	mov	dptr,#(_b + 0x0041)
   07E8 74 CA              1292 	mov	a,#0xCA
   07EA F0                 1293 	movx	@dptr,a
   07EB 90 01 42           1294 	mov	dptr,#(_b + 0x0042)
   07EE 74 AA              1295 	mov	a,#0xAA
   07F0 F0                 1296 	movx	@dptr,a
   07F1 90 01 43           1297 	mov	dptr,#(_b + 0x0043)
   07F4 74 8F              1298 	mov	a,#0x8F
   07F6 F0                 1299 	movx	@dptr,a
   07F7 90 01 44           1300 	mov	dptr,#(_b + 0x0044)
   07FA 74 74              1301 	mov	a,#0x74
   07FC F0                 1302 	movx	@dptr,a
   07FD 90 01 45           1303 	mov	dptr,#(_b + 0x0045)
   0800 74 D5              1304 	mov	a,#0xD5
   0802 F0                 1305 	movx	@dptr,a
   0803 90 01 46           1306 	mov	dptr,#(_b + 0x0046)
   0806 74 02              1307 	mov	a,#0x02
   0808 F0                 1308 	movx	@dptr,a
   0809 90 01 47           1309 	mov	dptr,#(_b + 0x0047)
   080C 74 10              1310 	mov	a,#0x10
   080E F0                 1311 	movx	@dptr,a
   080F 90 01 48           1312 	mov	dptr,#(_b + 0x0048)
   0812 74 15              1313 	mov	a,#0x15
   0814 F0                 1314 	movx	@dptr,a
   0815 90 01 49           1315 	mov	dptr,#(_b + 0x0049)
   0818 74 87              1316 	mov	a,#0x87
   081A F0                 1317 	movx	@dptr,a
   081B 90 01 4A           1318 	mov	dptr,#(_b + 0x004a)
   081E 74 58              1319 	mov	a,#0x58
   0820 F0                 1320 	movx	@dptr,a
   0821 90 01 4B           1321 	mov	dptr,#(_b + 0x004b)
   0824 74 08              1322 	mov	a,#0x08
   0826 F0                 1323 	movx	@dptr,a
   0827 90 01 4C           1324 	mov	dptr,#(_b + 0x004c)
   082A 74 CC              1325 	mov	a,#0xCC
   082C F0                 1326 	movx	@dptr,a
   082D 90 01 4D           1327 	mov	dptr,#(_b + 0x004d)
   0830 74 9A              1328 	mov	a,#0x9A
   0832 F0                 1329 	movx	@dptr,a
   0833 90 01 4E           1330 	mov	dptr,#(_b + 0x004e)
   0836 74 42              1331 	mov	a,#0x42
   0838 F0                 1332 	movx	@dptr,a
   0839 90 01 4F           1333 	mov	dptr,#(_b + 0x004f)
   083C 74 BD              1334 	mov	a,#0xBD
   083E F0                 1335 	movx	@dptr,a
   083F 90 01 50           1336 	mov	dptr,#(_b + 0x0050)
   0842 74 02              1337 	mov	a,#0x02
   0844 F0                 1338 	movx	@dptr,a
   0845 90 01 51           1339 	mov	dptr,#(_b + 0x0051)
   0848 74 97              1340 	mov	a,#0x97
   084A F0                 1341 	movx	@dptr,a
   084B 90 01 52           1342 	mov	dptr,#(_b + 0x0052)
   084E 74 CE              1343 	mov	a,#0xCE
   0850 F0                 1344 	movx	@dptr,a
   0851 90 01 53           1345 	mov	dptr,#(_b + 0x0053)
   0854 74 2B              1346 	mov	a,#0x2B
   0856 F0                 1347 	movx	@dptr,a
   0857 90 01 54           1348 	mov	dptr,#(_b + 0x0054)
   085A 74 39              1349 	mov	a,#0x39
   085C F0                 1350 	movx	@dptr,a
   085D 90 01 55           1351 	mov	dptr,#(_b + 0x0055)
   0860 74 38              1352 	mov	a,#0x38
   0862 F0                 1353 	movx	@dptr,a
   0863 90 01 56           1354 	mov	dptr,#(_b + 0x0056)
   0866 74 99              1355 	mov	a,#0x99
   0868 F0                 1356 	movx	@dptr,a
   0869 90 01 57           1357 	mov	dptr,#(_b + 0x0057)
   086C 74 AC              1358 	mov	a,#0xAC
   086E F0                 1359 	movx	@dptr,a
   086F 90 01 58           1360 	mov	dptr,#(_b + 0x0058)
   0872 74 81              1361 	mov	a,#0x81
   0874 F0                 1362 	movx	@dptr,a
   0875 90 01 59           1363 	mov	dptr,#(_b + 0x0059)
   0878 74 BB              1364 	mov	a,#0xBB
   087A F0                 1365 	movx	@dptr,a
   087B 90 01 5A           1366 	mov	dptr,#(_b + 0x005a)
   087E 74 C3              1367 	mov	a,#0xC3
   0880 F0                 1368 	movx	@dptr,a
   0881 90 01 5B           1369 	mov	dptr,#(_b + 0x005b)
   0884 74 FF              1370 	mov	a,#0xFF
   0886 F0                 1371 	movx	@dptr,a
   0887 90 01 5C           1372 	mov	dptr,#(_b + 0x005c)
   088A 74 BC              1373 	mov	a,#0xBC
   088C F0                 1374 	movx	@dptr,a
   088D 90 01 5D           1375 	mov	dptr,#(_b + 0x005d)
   0890 74 C1              1376 	mov	a,#0xC1
   0892 F0                 1377 	movx	@dptr,a
   0893 90 01 5E           1378 	mov	dptr,#(_b + 0x005e)
   0896 74 B8              1379 	mov	a,#0xB8
   0898 F0                 1380 	movx	@dptr,a
   0899 90 01 5F           1381 	mov	dptr,#(_b + 0x005f)
   089C 74 E1              1382 	mov	a,#0xE1
   089E F0                 1383 	movx	@dptr,a
   089F 90 01 60           1384 	mov	dptr,#(_b + 0x0060)
   08A2 74 24              1385 	mov	a,#0x24
   08A4 F0                 1386 	movx	@dptr,a
   08A5 90 01 61           1387 	mov	dptr,#(_b + 0x0061)
   08A8 74 8D              1388 	mov	a,#0x8D
   08AA F0                 1389 	movx	@dptr,a
   08AB 90 01 62           1390 	mov	dptr,#(_b + 0x0062)
   08AE 74 C5              1391 	mov	a,#0xC5
   08B0 F0                 1392 	movx	@dptr,a
   08B1 90 01 63           1393 	mov	dptr,#(_b + 0x0063)
   08B4 74 20              1394 	mov	a,#0x20
   08B6 F0                 1395 	movx	@dptr,a
   08B7 90 01 64           1396 	mov	dptr,#(_b + 0x0064)
   08BA 74 89              1397 	mov	a,#0x89
   08BC F0                 1398 	movx	@dptr,a
   08BD 90 01 65           1399 	mov	dptr,#(_b + 0x0065)
   08C0 74 98              1400 	mov	a,#0x98
   08C2 F0                 1401 	movx	@dptr,a
   08C3 90 01 66           1402 	mov	dptr,#(_b + 0x0066)
   08C6 74 0B              1403 	mov	a,#0x0B
   08C8 F0                 1404 	movx	@dptr,a
   08C9 90 01 67           1405 	mov	dptr,#(_b + 0x0067)
   08CC 74 50              1406 	mov	a,#0x50
   08CE F0                 1407 	movx	@dptr,a
   08CF 90 01 68           1408 	mov	dptr,#(_b + 0x0068)
   08D2 74 B1              1409 	mov	a,#0xB1
   08D4 F0                 1410 	movx	@dptr,a
   08D5 90 01 69           1411 	mov	dptr,#(_b + 0x0069)
   08D8 74 16              1412 	mov	a,#0x16
   08DA F0                 1413 	movx	@dptr,a
   08DB 90 01 6A           1414 	mov	dptr,#(_b + 0x006a)
   08DE 74 9A              1415 	mov	a,#0x9A
   08E0 F0                 1416 	movx	@dptr,a
   08E1 90 01 6B           1417 	mov	dptr,#(_b + 0x006b)
   08E4 74 2D              1418 	mov	a,#0x2D
   08E6 F0                 1419 	movx	@dptr,a
   08E7 90 01 6C           1420 	mov	dptr,#(_b + 0x006c)
   08EA 74 6E              1421 	mov	a,#0x6E
   08EC F0                 1422 	movx	@dptr,a
   08ED 90 01 6D           1423 	mov	dptr,#(_b + 0x006d)
   08F0 74 5A              1424 	mov	a,#0x5A
   08F2 F0                 1425 	movx	@dptr,a
   08F3 90 01 6E           1426 	mov	dptr,#(_b + 0x006e)
   08F6 74 7B              1427 	mov	a,#0x7B
   08F8 F0                 1428 	movx	@dptr,a
   08F9 90 01 6F           1429 	mov	dptr,#(_b + 0x006f)
   08FC 74 2F              1430 	mov	a,#0x2F
   08FE F0                 1431 	movx	@dptr,a
   08FF 90 01 70           1432 	mov	dptr,#(_b + 0x0070)
   0902 74 D4              1433 	mov	a,#0xD4
   0904 F0                 1434 	movx	@dptr,a
   0905 90 01 71           1435 	mov	dptr,#(_b + 0x0071)
   0908 74 92              1436 	mov	a,#0x92
   090A F0                 1437 	movx	@dptr,a
   090B 90 01 72           1438 	mov	dptr,#(_b + 0x0072)
   090E 74 A1              1439 	mov	a,#0xA1
   0910 F0                 1440 	movx	@dptr,a
   0911 90 01 73           1441 	mov	dptr,#(_b + 0x0073)
   0914 74 AA              1442 	mov	a,#0xAA
   0916 F0                 1443 	movx	@dptr,a
   0917 90 01 74           1444 	mov	dptr,#(_b + 0x0074)
   091A 74 A6              1445 	mov	a,#0xA6
   091C F0                 1446 	movx	@dptr,a
   091D 90 01 75           1447 	mov	dptr,#(_b + 0x0075)
   0920 74 E5              1448 	mov	a,#0xE5
   0922 F0                 1449 	movx	@dptr,a
   0923 90 01 76           1450 	mov	dptr,#(_b + 0x0076)
   0926 74 A6              1451 	mov	a,#0xA6
   0928 F0                 1452 	movx	@dptr,a
   0929 90 01 77           1453 	mov	dptr,#(_b + 0x0077)
   092C 74 D2              1454 	mov	a,#0xD2
   092E F0                 1455 	movx	@dptr,a
   092F 90 01 78           1456 	mov	dptr,#(_b + 0x0078)
   0932 74 0D              1457 	mov	a,#0x0D
   0934 F0                 1458 	movx	@dptr,a
   0935 90 01 79           1459 	mov	dptr,#(_b + 0x0079)
   0938 74 0B              1460 	mov	a,#0x0B
   093A F0                 1461 	movx	@dptr,a
   093B 90 01 7A           1462 	mov	dptr,#(_b + 0x007a)
   093E 74 B7              1463 	mov	a,#0xB7
   0940 F0                 1464 	movx	@dptr,a
   0941 90 01 7B           1465 	mov	dptr,#(_b + 0x007b)
   0944 74 B2              1466 	mov	a,#0xB2
   0946 F0                 1467 	movx	@dptr,a
   0947 90 01 7C           1468 	mov	dptr,#(_b + 0x007c)
   094A 74 25              1469 	mov	a,#0x25
   094C F0                 1470 	movx	@dptr,a
   094D 90 01 7D           1471 	mov	dptr,#(_b + 0x007d)
   0950 74 23              1472 	mov	a,#0x23
   0952 F0                 1473 	movx	@dptr,a
   0953 90 01 7E           1474 	mov	dptr,#(_b + 0x007e)
   0956 74 23              1475 	mov	a,#0x23
   0958 F0                 1476 	movx	@dptr,a
   0959 90 01 7F           1477 	mov	dptr,#(_b + 0x007f)
   095C 74 BE              1478 	mov	a,#0xBE
   095E F0                 1479 	movx	@dptr,a
                           1480 	.area GSFINAL (CODE)
   095F 02 00 03           1481 	ljmp	__sdcc_program_startup
                           1482 ;--------------------------------------------------------
                           1483 ; Home
                           1484 ;--------------------------------------------------------
                           1485 	.area HOME    (CODE)
                           1486 	.area HOME    (CODE)
   0003                    1487 __sdcc_program_startup:
   0003 12 09 62           1488 	lcall	_main
                           1489 ;	return from main will lock up
   0006 80 FE              1490 	sjmp .
                           1491 ;--------------------------------------------------------
                           1492 ; code
                           1493 ;--------------------------------------------------------
                           1494 	.area CSEG    (CODE)
                           1495 ;------------------------------------------------------------
                           1496 ;Allocation info for local variables in function 'main'
                           1497 ;------------------------------------------------------------
                           1498 ;------------------------------------------------------------
                           1499 ;	main.c:19: int main() {
                           1500 ;	-----------------------------------------
                           1501 ;	 function main
                           1502 ;	-----------------------------------------
   0962                    1503 _main:
                    0002   1504 	ar2 = 0x02
                    0003   1505 	ar3 = 0x03
                    0004   1506 	ar4 = 0x04
                    0005   1507 	ar5 = 0x05
                    0006   1508 	ar6 = 0x06
                    0007   1509 	ar7 = 0x07
                    0000   1510 	ar0 = 0x00
                    0001   1511 	ar1 = 0x01
                           1512 ;	main.c:20: startBrk=1;
   0962 90 FF FE           1513 	mov	dptr,#_startBrk
   0965 74 01              1514 	mov	a,#0x01
   0967 F0                 1515 	movx	@dptr,a
                           1516 ;	main.c:21: fips();
   0968 12 09 75           1517 	lcall	_fips
                           1518 ;	main.c:22: endBrk=1;
   096B 90 FF FF           1519 	mov	dptr,#_endBrk
   096E 74 01              1520 	mov	a,#0x01
   0970 F0                 1521 	movx	@dptr,a
                           1522 ;	main.c:24: return 0;
   0971 90 00 00           1523 	mov	dptr,#0x0000
   0974 22                 1524 	ret
                           1525 ;------------------------------------------------------------
                           1526 ;Allocation info for local variables in function 'fips'
                           1527 ;------------------------------------------------------------
                           1528 ;u                         Allocated with name '_fips_u_1_1'
                           1529 ;tmp                       Allocated to registers r2 r3 
                           1530 ;i                         Allocated with name '_fips_i_1_1'
                           1531 ;j                         Allocated with name '_fips_j_1_1'
                           1532 ;c                         Allocated to registers r5 
                           1533 ;t                         Allocated with name '_fips_t_1_1'
                           1534 ;n0                        Allocated with name '_fips_n0_1_1'
                           1535 ;b0                        Allocated with name '_fips_b0_1_1'
                           1536 ;sloc0                     Allocated with name '_fips_sloc0_1_0'
                           1537 ;sloc1                     Allocated with name '_fips_sloc1_1_0'
                           1538 ;------------------------------------------------------------
                           1539 ;	main.c:27: void fips() {
                           1540 ;	-----------------------------------------
                           1541 ;	 function fips
                           1542 ;	-----------------------------------------
   0975                    1543 _fips:
                           1544 ;	main.c:28: unsigned short tmp  = 0;
                           1545 ;	main.c:34: unsigned short t    = 0;
   0975 E4                 1546 	clr	a
   0976 FA                 1547 	mov	r2,a
   0977 FB                 1548 	mov	r3,a
   0978 F5 0C              1549 	mov	_fips_t_1_1,a
   097A F5 0D              1550 	mov	(_fips_t_1_1 + 1),a
                           1551 ;	main.c:36: unsigned char n0    = n[0];
   097C 90 00 00           1552 	mov	dptr,#_n
   097F E0                 1553 	movx	a,@dptr
   0980 F5 0E              1554 	mov	_fips_n0_1_1,a
                           1555 ;	main.c:37: unsigned char b0    = b[0];
   0982 90 01 00           1556 	mov	dptr,#_b
   0985 E0                 1557 	movx	a,@dptr
   0986 F5 0F              1558 	mov	_fips_b0_1_1,a
                           1559 ;	main.c:41: for (i = 0; i < SIZE; i++) {
   0988 E4                 1560 	clr	a
   0989 F5 08              1561 	mov	_fips_i_1_1,a
   098B F5 09              1562 	mov	(_fips_i_1_1 + 1),a
   098D                    1563 00107$:
   098D C3                 1564 	clr	c
   098E E5 08              1565 	mov	a,_fips_i_1_1
   0990 94 80              1566 	subb	a,#0x80
   0992 E5 09              1567 	mov	a,(_fips_i_1_1 + 1)
   0994 94 00              1568 	subb	a,#0x00
   0996 40 03              1569 	jc	00148$
   0998 02 0A 74           1570 	ljmp	00110$
   099B                    1571 00148$:
                           1572 ;	main.c:42: for (j = 0; j < i; j++) {
   099B E4                 1573 	clr	a
   099C F5 0A              1574 	mov	_fips_j_1_1,a
   099E F5 0B              1575 	mov	(_fips_j_1_1 + 1),a
   09A0                    1576 00103$:
   09A0 C3                 1577 	clr	c
   09A1 E5 0A              1578 	mov	a,_fips_j_1_1
   09A3 95 08              1579 	subb	a,_fips_i_1_1
   09A5 E5 0B              1580 	mov	a,(_fips_j_1_1 + 1)
   09A7 95 09              1581 	subb	a,(_fips_i_1_1 + 1)
   09A9 40 03              1582 	jc	00149$
   09AB 02 0A 16           1583 	ljmp	00106$
   09AE                    1584 00149$:
                           1585 ;	main.c:43: tmp = (unsigned char)(tmp) + a[j]*b[i-j];
   09AE 8A 04              1586 	mov	ar4,r2
   09B0 7D 00              1587 	mov	r5,#0x00
   09B2 E5 0A              1588 	mov	a,_fips_j_1_1
   09B4 24 80              1589 	add	a,#_a
   09B6 F5 82              1590 	mov	dpl,a
   09B8 E5 0B              1591 	mov	a,(_fips_j_1_1 + 1)
   09BA 34 00              1592 	addc	a,#(_a >> 8)
   09BC F5 83              1593 	mov	dph,a
   09BE E0                 1594 	movx	a,@dptr
   09BF F8                 1595 	mov	r0,a
   09C0 A9 08              1596 	mov	r1,_fips_i_1_1
   09C2 AE 0A              1597 	mov	r6,_fips_j_1_1
   09C4 E9                 1598 	mov	a,r1
   09C5 C3                 1599 	clr	c
   09C6 9E                 1600 	subb	a,r6
   09C7 F9                 1601 	mov	r1,a
   09C8 F5 82              1602 	mov	dpl,a
   09CA 75 83 01           1603 	mov	dph,#(_b >> 8)
   09CD E0                 1604 	movx	a,@dptr
   09CE 88 F0              1605 	mov	b,r0
   09D0 A4                 1606 	mul	ab
   09D1 2C                 1607 	add	a,r4
   09D2 FA                 1608 	mov	r2,a
   09D3 ED                 1609 	mov	a,r5
   09D4 35 F0              1610 	addc	a,b
                           1611 ;	main.c:45: t = t + (tmp >> 8);
   09D6 7D 00              1612 	mov	r5,#0x00
   09D8 25 0C              1613 	add	a,_fips_t_1_1
   09DA F5 0C              1614 	mov	_fips_t_1_1,a
   09DC ED                 1615 	mov	a,r5
   09DD 35 0D              1616 	addc	a,(_fips_t_1_1 + 1)
   09DF F5 0D              1617 	mov	(_fips_t_1_1 + 1),a
                           1618 ;	main.c:47: tmp = (unsigned char)(tmp) + m[j]*n[i-j];
   09E1 8A 04              1619 	mov	ar4,r2
   09E3 7D 00              1620 	mov	r5,#0x00
   09E5 85 0A 82           1621 	mov	dpl,_fips_j_1_1
   09E8 74 02              1622 	mov	a,#(_m >> 8)
   09EA 25 0B              1623 	add	a,(_fips_j_1_1 + 1)
   09EC F5 83              1624 	mov	dph,a
   09EE E0                 1625 	movx	a,@dptr
   09EF FE                 1626 	mov	r6,a
   09F0 89 82              1627 	mov	dpl,r1
   09F2 75 83 00           1628 	mov	dph,#(_n >> 8)
   09F5 E0                 1629 	movx	a,@dptr
   09F6 FF                 1630 	mov	r7,a
   09F7 8E F0              1631 	mov	b,r6
   09F9 A4                 1632 	mul	ab
   09FA 2C                 1633 	add	a,r4
   09FB FA                 1634 	mov	r2,a
   09FC ED                 1635 	mov	a,r5
   09FD 35 F0              1636 	addc	a,b
   09FF FB                 1637 	mov	r3,a
                           1638 ;	main.c:58: __endasm;
                           1639 	
   0A00 FB                 1640 	                mov r3,a
   0A01 F8                 1641 	                mov r0,a
   0A02 25 0C              1642 	                add a,_fips_t_1_1
   0A04 F5 0C              1643 	                mov _fips_t_1_1,a
   0A06 E4                 1644 	                clr a
   0A07 35 0D              1645 	                addc a,(_fips_t_1_1 + 1)
   0A09 F5 0D              1646 	                mov (_fips_t_1_1 + 1),a
                           1647 	            
                           1648 ;	main.c:42: for (j = 0; j < i; j++) {
   0A0B 05 0A              1649 	inc	_fips_j_1_1
   0A0D E4                 1650 	clr	a
   0A0E B5 0A 02           1651 	cjne	a,_fips_j_1_1,00150$
   0A11 05 0B              1652 	inc	(_fips_j_1_1 + 1)
   0A13                    1653 00150$:
   0A13 02 09 A0           1654 	ljmp	00103$
   0A16                    1655 00106$:
                           1656 ;	main.c:61: tmp = (unsigned char)(tmp) + a[i]*b0;
   0A16 8A 04              1657 	mov	ar4,r2
   0A18 7D 00              1658 	mov	r5,#0x00
   0A1A E5 08              1659 	mov	a,_fips_i_1_1
   0A1C 24 80              1660 	add	a,#_a
   0A1E F5 82              1661 	mov	dpl,a
   0A20 E5 09              1662 	mov	a,(_fips_i_1_1 + 1)
   0A22 34 00              1663 	addc	a,#(_a >> 8)
   0A24 F5 83              1664 	mov	dph,a
   0A26 E0                 1665 	movx	a,@dptr
   0A27 FE                 1666 	mov	r6,a
   0A28 8E F0              1667 	mov	b,r6
   0A2A E5 0F              1668 	mov	a,_fips_b0_1_1
   0A2C A4                 1669 	mul	ab
   0A2D 2C                 1670 	add	a,r4
   0A2E FA                 1671 	mov	r2,a
   0A2F ED                 1672 	mov	a,r5
   0A30 35 F0              1673 	addc	a,b
   0A32 FB                 1674 	mov	r3,a
                           1675 ;	main.c:70: __endasm;
                           1676 	
   0A33 25 0C              1677 	            add a,_fips_t_1_1
   0A35 F5 0C              1678 	            mov _fips_t_1_1,a
   0A37 E4                 1679 	            clr a
   0A38 35 0D              1680 	            addc a,(_fips_t_1_1 + 1)
   0A3A F5 0D              1681 	            mov (_fips_t_1_1 + 1),a
                           1682 	        
                           1683 ;	main.c:72: c = (unsigned char)(tmp)*n_prime;
   0A3C 8A 04              1684 	mov	ar4,r2
   0A3E EC                 1685 	mov	a,r4
   0A3F 75 F0 A5           1686 	mov	b,#0xA5
   0A42 A4                 1687 	mul	ab
   0A43 FD                 1688 	mov	r5,a
                           1689 ;	main.c:73: m[i] = c;
   0A44 85 08 82           1690 	mov	dpl,_fips_i_1_1
   0A47 74 02              1691 	mov	a,#(_m >> 8)
   0A49 25 09              1692 	add	a,(_fips_i_1_1 + 1)
   0A4B F5 83              1693 	mov	dph,a
   0A4D ED                 1694 	mov	a,r5
   0A4E F0                 1695 	movx	@dptr,a
                           1696 ;	main.c:75: tmp = (unsigned char)(tmp) + c*n0;
   0A4F 7E 00              1697 	mov	r6,#0x00
   0A51 8D F0              1698 	mov	b,r5
   0A53 E5 0E              1699 	mov	a,_fips_n0_1_1
   0A55 A4                 1700 	mul	ab
   0A56 2C                 1701 	add	a,r4
   0A57 FA                 1702 	mov	r2,a
   0A58 EE                 1703 	mov	a,r6
   0A59 35 F0              1704 	addc	a,b
   0A5B FB                 1705 	mov	r3,a
                           1706 ;	main.c:85: __endasm;
                           1707 	
   0A5C F8                 1708 	            mov r0,a
   0A5D 25 0C              1709 	            add a,_fips_t_1_1
   0A5F FA                 1710 	            mov r2,a
   0A60 E4                 1711 	            clr a
   0A61 35 0D              1712 	            addc a,(_fips_t_1_1 + 1)
   0A63 FB                 1713 	            mov r3,a
                           1714 	        
                           1715 ;	main.c:87: t = tmp >> 8;
   0A64 8B 0C              1716 	mov	_fips_t_1_1,r3
   0A66 75 0D 00           1717 	mov	(_fips_t_1_1 + 1),#0x00
                           1718 ;	main.c:41: for (i = 0; i < SIZE; i++) {
   0A69 05 08              1719 	inc	_fips_i_1_1
   0A6B E4                 1720 	clr	a
   0A6C B5 08 02           1721 	cjne	a,_fips_i_1_1,00151$
   0A6F 05 09              1722 	inc	(_fips_i_1_1 + 1)
   0A71                    1723 00151$:
   0A71 02 09 8D           1724 	ljmp	00107$
   0A74                    1725 00110$:
                           1726 ;	main.c:90: for (i = SIZE; i < 2*SIZE; i++) {
   0A74 75 08 80           1727 	mov	_fips_i_1_1,#0x80
   0A77 E4                 1728 	clr	a
   0A78 F5 09              1729 	mov	(_fips_i_1_1 + 1),a
   0A7A                    1730 00115$:
   0A7A 74 FF              1731 	mov	a,#0x100 - 0x01
   0A7C 25 09              1732 	add	a,(_fips_i_1_1 + 1)
   0A7E 50 03              1733 	jnc	00152$
   0A80 02 0B 23           1734 	ljmp	00118$
   0A83                    1735 00152$:
                           1736 ;	main.c:91: for (j = i-SIZE+1; j < SIZE; j++) {
   0A83 74 81              1737 	mov	a,#0x81
   0A85 25 08              1738 	add	a,_fips_i_1_1
   0A87 FE                 1739 	mov	r6,a
   0A88 74 FF              1740 	mov	a,#0xFF
   0A8A 35 09              1741 	addc	a,(_fips_i_1_1 + 1)
   0A8C FF                 1742 	mov	r7,a
   0A8D                    1743 00111$:
   0A8D C3                 1744 	clr	c
   0A8E EE                 1745 	mov	a,r6
   0A8F 94 80              1746 	subb	a,#0x80
   0A91 EF                 1747 	mov	a,r7
   0A92 94 00              1748 	subb	a,#0x00
   0A94 40 03              1749 	jc	00153$
   0A96 02 0A FD           1750 	ljmp	00114$
   0A99                    1751 00153$:
                           1752 ;	main.c:92: tmp = (unsigned char)(tmp)  + a[j]*b[i-j];
   0A99 8A 00              1753 	mov	ar0,r2
   0A9B 79 00              1754 	mov	r1,#0x00
   0A9D EE                 1755 	mov	a,r6
   0A9E 24 80              1756 	add	a,#_a
   0AA0 F5 82              1757 	mov	dpl,a
   0AA2 EF                 1758 	mov	a,r7
   0AA3 34 00              1759 	addc	a,#(_a >> 8)
   0AA5 F5 83              1760 	mov	dph,a
   0AA7 E0                 1761 	movx	a,@dptr
   0AA8 F5 11              1762 	mov	_fips_sloc1_1_0,a
   0AAA 85 08 10           1763 	mov	_fips_sloc0_1_0,_fips_i_1_1
   0AAD 8E 05              1764 	mov	ar5,r6
   0AAF E5 10              1765 	mov	a,_fips_sloc0_1_0
   0AB1 C3                 1766 	clr	c
   0AB2 9D                 1767 	subb	a,r5
   0AB3 FD                 1768 	mov	r5,a
   0AB4 F5 82              1769 	mov	dpl,a
   0AB6 75 83 01           1770 	mov	dph,#(_b >> 8)
   0AB9 E0                 1771 	movx	a,@dptr
   0ABA 85 11 F0           1772 	mov	b,_fips_sloc1_1_0
   0ABD A4                 1773 	mul	ab
   0ABE 28                 1774 	add	a,r0
   0ABF FA                 1775 	mov	r2,a
   0AC0 E9                 1776 	mov	a,r1
   0AC1 35 F0              1777 	addc	a,b
                           1778 ;	main.c:93: t = t + (tmp >> 8);
   0AC3 78 00              1779 	mov	r0,#0x00
   0AC5 25 0C              1780 	add	a,_fips_t_1_1
   0AC7 F5 0C              1781 	mov	_fips_t_1_1,a
   0AC9 E8                 1782 	mov	a,r0
   0ACA 35 0D              1783 	addc	a,(_fips_t_1_1 + 1)
   0ACC F5 0D              1784 	mov	(_fips_t_1_1 + 1),a
                           1785 ;	main.c:95: tmp = (unsigned char)(tmp) + m[j]*n[i-j];
   0ACE 8A 04              1786 	mov	ar4,r2
   0AD0 78 00              1787 	mov	r0,#0x00
   0AD2 8E 82              1788 	mov	dpl,r6
   0AD4 74 02              1789 	mov	a,#(_m >> 8)
   0AD6 2F                 1790 	add	a,r7
   0AD7 F5 83              1791 	mov	dph,a
   0AD9 E0                 1792 	movx	a,@dptr
   0ADA F9                 1793 	mov	r1,a
   0ADB 8D 82              1794 	mov	dpl,r5
   0ADD 75 83 00           1795 	mov	dph,#(_n >> 8)
   0AE0 E0                 1796 	movx	a,@dptr
   0AE1 FD                 1797 	mov	r5,a
   0AE2 89 F0              1798 	mov	b,r1
   0AE4 A4                 1799 	mul	ab
   0AE5 2C                 1800 	add	a,r4
   0AE6 FA                 1801 	mov	r2,a
   0AE7 E8                 1802 	mov	a,r0
   0AE8 35 F0              1803 	addc	a,b
   0AEA FB                 1804 	mov	r3,a
                           1805 ;	main.c:105: __endasm;
                           1806 	
   0AEB F8                 1807 	                mov r0,a
   0AEC 25 0C              1808 	                add a,_fips_t_1_1
   0AEE F5 0C              1809 	                mov _fips_t_1_1,a
   0AF0 E4                 1810 	                clr a
   0AF1 35 0D              1811 	                addc a,(_fips_t_1_1 + 1)
   0AF3 F5 0D              1812 	                mov (_fips_t_1_1 + 1),a
                           1813 	            
                           1814 ;	main.c:91: for (j = i-SIZE+1; j < SIZE; j++) {
   0AF5 0E                 1815 	inc	r6
   0AF6 BE 00 01           1816 	cjne	r6,#0x00,00154$
   0AF9 0F                 1817 	inc	r7
   0AFA                    1818 00154$:
   0AFA 02 0A 8D           1819 	ljmp	00111$
   0AFD                    1820 00114$:
                           1821 ;	main.c:108: m[i-SIZE] = (unsigned char)(tmp);
   0AFD E5 08              1822 	mov	a,_fips_i_1_1
   0AFF 24 80              1823 	add	a,#0x80+_m
   0B01 F5 82              1824 	mov	dpl,a
   0B03 E4                 1825 	clr	a
   0B04 34 02              1826 	addc	a,#(_m >> 8)
   0B06 F5 83              1827 	mov	dph,a
   0B08 8A 04              1828 	mov	ar4,r2
   0B0A EC                 1829 	mov	a,r4
   0B0B F0                 1830 	movx	@dptr,a
                           1831 ;	main.c:109: tmp = (unsigned char)(t);
   0B0C AC 0C              1832 	mov	r4,_fips_t_1_1
   0B0E 8C 02              1833 	mov	ar2,r4
   0B10 7B 00              1834 	mov	r3,#0x00
                           1835 ;	main.c:110: t = t >> 8;
   0B12 85 0D 0C           1836 	mov	_fips_t_1_1,(_fips_t_1_1 + 1)
   0B15 75 0D 00           1837 	mov	(_fips_t_1_1 + 1),#0x00
                           1838 ;	main.c:90: for (i = SIZE; i < 2*SIZE; i++) {
   0B18 05 08              1839 	inc	_fips_i_1_1
   0B1A E4                 1840 	clr	a
   0B1B B5 08 02           1841 	cjne	a,_fips_i_1_1,00155$
   0B1E 05 09              1842 	inc	(_fips_i_1_1 + 1)
   0B20                    1843 00155$:
   0B20 02 0A 7A           1844 	ljmp	00115$
   0B23                    1845 00118$:
                           1846 ;	main.c:113: m[SIZE] = tmp;
   0B23 8A 04              1847 	mov	ar4,r2
   0B25 90 02 80           1848 	mov	dptr,#(_m + 0x0080)
   0B28 EC                 1849 	mov	a,r4
   0B29 F0                 1850 	movx	@dptr,a
                           1851 ;	main.c:114: tmp = m[0] - n[0];
   0B2A 90 02 00           1852 	mov	dptr,#_m
   0B2D E0                 1853 	movx	a,@dptr
   0B2E FC                 1854 	mov	r4,a
   0B2F 7D 00              1855 	mov	r5,#0x00
   0B31 90 00 00           1856 	mov	dptr,#_n
   0B34 E0                 1857 	movx	a,@dptr
   0B35 FE                 1858 	mov	r6,a
   0B36 7F 00              1859 	mov	r7,#0x00
   0B38 EC                 1860 	mov	a,r4
   0B39 C3                 1861 	clr	c
   0B3A 9E                 1862 	subb	a,r6
   0B3B FA                 1863 	mov	r2,a
   0B3C ED                 1864 	mov	a,r5
   0B3D 9F                 1865 	subb	a,r7
   0B3E FB                 1866 	mov	r3,a
                           1867 ;	main.c:116: for (i=0; i < SIZE; i++) {
   0B3F 7C 00              1868 	mov	r4,#0x00
   0B41 7D 00              1869 	mov	r5,#0x00
   0B43                    1870 00119$:
   0B43 C3                 1871 	clr	c
   0B44 EC                 1872 	mov	a,r4
   0B45 94 80              1873 	subb	a,#0x80
   0B47 ED                 1874 	mov	a,r5
   0B48 94 00              1875 	subb	a,#0x00
   0B4A 50 3A              1876 	jnc	00122$
                           1877 ;	main.c:117: tmp = m[i] - n[i] - (tmp >> 8);
   0B4C 8C 82              1878 	mov	dpl,r4
   0B4E 74 02              1879 	mov	a,#(_m >> 8)
   0B50 2D                 1880 	add	a,r5
   0B51 F5 83              1881 	mov	dph,a
   0B53 E0                 1882 	movx	a,@dptr
   0B54 FE                 1883 	mov	r6,a
   0B55 7F 00              1884 	mov	r7,#0x00
   0B57 8C 82              1885 	mov	dpl,r4
   0B59 74 00              1886 	mov	a,#(_n >> 8)
   0B5B 2D                 1887 	add	a,r5
   0B5C F5 83              1888 	mov	dph,a
   0B5E E0                 1889 	movx	a,@dptr
   0B5F F8                 1890 	mov	r0,a
   0B60 79 00              1891 	mov	r1,#0x00
   0B62 EE                 1892 	mov	a,r6
   0B63 C3                 1893 	clr	c
   0B64 98                 1894 	subb	a,r0
   0B65 FE                 1895 	mov	r6,a
   0B66 EF                 1896 	mov	a,r7
   0B67 99                 1897 	subb	a,r1
   0B68 FF                 1898 	mov	r7,a
   0B69 8B 00              1899 	mov	ar0,r3
   0B6B 79 00              1900 	mov	r1,#0x00
   0B6D EE                 1901 	mov	a,r6
   0B6E C3                 1902 	clr	c
   0B6F 98                 1903 	subb	a,r0
   0B70 FA                 1904 	mov	r2,a
   0B71 EF                 1905 	mov	a,r7
   0B72 99                 1906 	subb	a,r1
   0B73 FB                 1907 	mov	r3,a
                           1908 ;	main.c:118: u[i] = tmp;
   0B74 8C 82              1909 	mov	dpl,r4
   0B76 74 04              1910 	mov	a,#(_fips_u_1_1 >> 8)
   0B78 2D                 1911 	add	a,r5
   0B79 F5 83              1912 	mov	dph,a
   0B7B 8A 06              1913 	mov	ar6,r2
   0B7D EE                 1914 	mov	a,r6
   0B7E F0                 1915 	movx	@dptr,a
                           1916 ;	main.c:116: for (i=0; i < SIZE; i++) {
   0B7F 0C                 1917 	inc	r4
   0B80 BC 00 C0           1918 	cjne	r4,#0x00,00119$
   0B83 0D                 1919 	inc	r5
   0B84 80 BD              1920 	sjmp	00119$
   0B86                    1921 00122$:
                           1922 ;	main.c:121: if ((tmp >> 8) == 0) {
   0B86 8B 02              1923 	mov	ar2,r3
   0B88 7B 00              1924 	mov	r3,#0x00
   0B8A EA                 1925 	mov	a,r2
   0B8B 4B                 1926 	orl	a,r3
                           1927 ;	main.c:122: for (i = 0; i < SIZE; i++) {
   0B8C 70 26              1928 	jnz	00127$
   0B8E FA                 1929 	mov	r2,a
   0B8F FB                 1930 	mov	r3,a
   0B90                    1931 00123$:
   0B90 C3                 1932 	clr	c
   0B91 EA                 1933 	mov	a,r2
   0B92 94 80              1934 	subb	a,#0x80
   0B94 EB                 1935 	mov	a,r3
   0B95 94 00              1936 	subb	a,#0x00
   0B97 50 1B              1937 	jnc	00127$
                           1938 ;	main.c:123: m[i] = u[i];
   0B99 8A 04              1939 	mov	ar4,r2
   0B9B 74 02              1940 	mov	a,#(_m >> 8)
   0B9D 2B                 1941 	add	a,r3
   0B9E FD                 1942 	mov	r5,a
   0B9F 8A 82              1943 	mov	dpl,r2
   0BA1 74 04              1944 	mov	a,#(_fips_u_1_1 >> 8)
   0BA3 2B                 1945 	add	a,r3
   0BA4 F5 83              1946 	mov	dph,a
   0BA6 E0                 1947 	movx	a,@dptr
   0BA7 FE                 1948 	mov	r6,a
   0BA8 8C 82              1949 	mov	dpl,r4
   0BAA 8D 83              1950 	mov	dph,r5
   0BAC F0                 1951 	movx	@dptr,a
                           1952 ;	main.c:122: for (i = 0; i < SIZE; i++) {
   0BAD 0A                 1953 	inc	r2
   0BAE BA 00 DF           1954 	cjne	r2,#0x00,00123$
   0BB1 0B                 1955 	inc	r3
   0BB2 80 DC              1956 	sjmp	00123$
   0BB4                    1957 00127$:
   0BB4 22                 1958 	ret
                           1959 	.area CSEG    (CODE)
                           1960 	.area CONST   (CODE)
                           1961 	.area XINIT   (CODE)
                           1962 	.area CABS    (ABS,CODE)
