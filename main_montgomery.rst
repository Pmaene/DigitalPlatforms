                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Fri Nov  2 17:37:26 2012
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
                            116 	.globl _t
                            117 	.globl _s
                            118 	.globl _j
                            119 	.globl _i
                            120 	.globl _fips
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
   000A                     236 _j::
   000A                     237 	.ds 2
   000C                     238 _s::
   000C                     239 	.ds 1
   000D                     240 _t::
   000D                     241 	.ds 3
                            242 ;--------------------------------------------------------
                            243 ; overlayable items in internal ram 
                            244 ;--------------------------------------------------------
                            245 	.area OSEG    (OVR,DATA)
                            246 ;--------------------------------------------------------
                            247 ; Stack segment in internal ram 
                            248 ;--------------------------------------------------------
                            249 	.area	SSEG	(DATA)
   0010                     250 __start__stack:
   0010                     251 	.ds	1
                            252 
                            253 ;--------------------------------------------------------
                            254 ; indirectly addressable internal ram data
                            255 ;--------------------------------------------------------
                            256 	.area ISEG    (DATA)
                            257 ;--------------------------------------------------------
                            258 ; absolute internal ram data
                            259 ;--------------------------------------------------------
                            260 	.area IABS    (ABS,DATA)
                            261 	.area IABS    (ABS,DATA)
                            262 ;--------------------------------------------------------
                            263 ; bit data
                            264 ;--------------------------------------------------------
                            265 	.area BSEG    (BIT)
                            266 ;--------------------------------------------------------
                            267 ; paged external ram data
                            268 ;--------------------------------------------------------
                            269 	.area PSEG    (PAG,XDATA)
                            270 ;--------------------------------------------------------
                            271 ; external ram data
                            272 ;--------------------------------------------------------
                            273 	.area XSEG    (XDATA)
                    FFFE    274 _startBrk	=	0xfffe
                    FFFF    275 _endBrk	=	0xffff
                    0400    276 _m	=	0x0400
                            277 ;--------------------------------------------------------
                            278 ; absolute external ram data
                            279 ;--------------------------------------------------------
                            280 	.area XABS    (ABS,XDATA)
   0000                     281 	.org 0x0000
   0000                     282 _n::
   0000                     283 	.ds 128
   0080                     284 	.org 0x0080
   0080                     285 _a::
   0080                     286 	.ds 128
   0100                     287 	.org 0x0100
   0100                     288 _b::
   0100                     289 	.ds 128
   0300                     290 	.org 0x0300
   0300                     291 _n_prime::
   0300                     292 	.ds 1
                            293 ;--------------------------------------------------------
                            294 ; external initialized ram data
                            295 ;--------------------------------------------------------
                            296 	.area XISEG   (XDATA)
                            297 	.area HOME    (CODE)
                            298 	.area GSINIT0 (CODE)
                            299 	.area GSINIT1 (CODE)
                            300 	.area GSINIT2 (CODE)
                            301 	.area GSINIT3 (CODE)
                            302 	.area GSINIT4 (CODE)
                            303 	.area GSINIT5 (CODE)
                            304 	.area GSINIT  (CODE)
                            305 	.area GSFINAL (CODE)
                            306 	.area CSEG    (CODE)
                            307 ;--------------------------------------------------------
                            308 ; interrupt vector 
                            309 ;--------------------------------------------------------
                            310 	.area HOME    (CODE)
   0000                     311 __interrupt_vect:
   0000 02 00 08            312 	ljmp	__sdcc_gsinit_startup
                            313 ;--------------------------------------------------------
                            314 ; global & static initialisations
                            315 ;--------------------------------------------------------
                            316 	.area HOME    (CODE)
                            317 	.area GSINIT  (CODE)
                            318 	.area GSFINAL (CODE)
                            319 	.area GSINIT  (CODE)
                            320 	.globl __sdcc_gsinit_startup
                            321 	.globl __sdcc_program_startup
                            322 	.globl __start__stack
                            323 	.globl __mcs51_genXINIT
                            324 	.globl __mcs51_genXRAMCLEAR
                            325 	.globl __mcs51_genRAMCLEAR
                            326 ;	main_montgomery.c:16: unsigned short i = 0;
   0061 E4                  327 	clr	a
   0062 F5 08               328 	mov	_i,a
   0064 F5 09               329 	mov	(_i + 1),a
                            330 ;	main_montgomery.c:17: unsigned short j = 0;
   0066 E4                  331 	clr	a
   0067 F5 0A               332 	mov	_j,a
   0069 F5 0B               333 	mov	(_j + 1),a
                            334 ;	main_montgomery.c:18: unsigned char s = 0;
   006B 75 0C 00            335 	mov	_s,#0x00
                            336 ;	main_montgomery.c:20: unsigned char t[3] = {0, 0, 0};
   006E 75 0D 00            337 	mov	_t,#0x00
   0071 75 0E 00            338 	mov	(_t + 0x0001),#0x00
   0074 75 0F 00            339 	mov	(_t + 0x0002),#0x00
                            340 ;	main_montgomery.c:10: volatile __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0077 90 00 00            341 	mov	dptr,#_n
   007A 74 D3               342 	mov	a,#0xD3
   007C F0                  343 	movx	@dptr,a
   007D 90 00 01            344 	mov	dptr,#(_n + 0x0001)
   0080 74 55               345 	mov	a,#0x55
   0082 F0                  346 	movx	@dptr,a
   0083 90 00 02            347 	mov	dptr,#(_n + 0x0002)
   0086 74 A4               348 	mov	a,#0xA4
   0088 F0                  349 	movx	@dptr,a
   0089 90 00 03            350 	mov	dptr,#(_n + 0x0003)
   008C 74 5F               351 	mov	a,#0x5F
   008E F0                  352 	movx	@dptr,a
   008F 90 00 04            353 	mov	dptr,#(_n + 0x0004)
   0092 74 57               354 	mov	a,#0x57
   0094 F0                  355 	movx	@dptr,a
   0095 90 00 05            356 	mov	dptr,#(_n + 0x0005)
   0098 74 F3               357 	mov	a,#0xF3
   009A F0                  358 	movx	@dptr,a
   009B 90 00 06            359 	mov	dptr,#(_n + 0x0006)
   009E 74 F9               360 	mov	a,#0xF9
   00A0 F0                  361 	movx	@dptr,a
   00A1 90 00 07            362 	mov	dptr,#(_n + 0x0007)
   00A4 74 3E               363 	mov	a,#0x3E
   00A6 F0                  364 	movx	@dptr,a
   00A7 90 00 08            365 	mov	dptr,#(_n + 0x0008)
   00AA 74 CF               366 	mov	a,#0xCF
   00AC F0                  367 	movx	@dptr,a
   00AD 90 00 09            368 	mov	dptr,#(_n + 0x0009)
   00B0 74 84               369 	mov	a,#0x84
   00B2 F0                  370 	movx	@dptr,a
   00B3 90 00 0A            371 	mov	dptr,#(_n + 0x000a)
   00B6 74 6D               372 	mov	a,#0x6D
   00B8 F0                  373 	movx	@dptr,a
   00B9 90 00 0B            374 	mov	dptr,#(_n + 0x000b)
   00BC 74 FF               375 	mov	a,#0xFF
   00BE F0                  376 	movx	@dptr,a
   00BF 90 00 0C            377 	mov	dptr,#(_n + 0x000c)
   00C2 74 20               378 	mov	a,#0x20
   00C4 F0                  379 	movx	@dptr,a
   00C5 90 00 0D            380 	mov	dptr,#(_n + 0x000d)
   00C8 74 C1               381 	mov	a,#0xC1
   00CA F0                  382 	movx	@dptr,a
   00CB 90 00 0E            383 	mov	dptr,#(_n + 0x000e)
   00CE 74 AE               384 	mov	a,#0xAE
   00D0 F0                  385 	movx	@dptr,a
   00D1 90 00 0F            386 	mov	dptr,#(_n + 0x000f)
   00D4 74 12               387 	mov	a,#0x12
   00D6 F0                  388 	movx	@dptr,a
   00D7 90 00 10            389 	mov	dptr,#(_n + 0x0010)
   00DA 74 CF               390 	mov	a,#0xCF
   00DC F0                  391 	movx	@dptr,a
   00DD 90 00 11            392 	mov	dptr,#(_n + 0x0011)
   00E0 74 F1               393 	mov	a,#0xF1
   00E2 F0                  394 	movx	@dptr,a
   00E3 90 00 12            395 	mov	dptr,#(_n + 0x0012)
   00E6 E4                  396 	clr	a
   00E7 F0                  397 	movx	@dptr,a
   00E8 90 00 13            398 	mov	dptr,#(_n + 0x0013)
   00EB 74 66               399 	mov	a,#0x66
   00ED F0                  400 	movx	@dptr,a
   00EE 90 00 14            401 	mov	dptr,#(_n + 0x0014)
   00F1 74 45               402 	mov	a,#0x45
   00F3 F0                  403 	movx	@dptr,a
   00F4 90 00 15            404 	mov	dptr,#(_n + 0x0015)
   00F7 74 E2               405 	mov	a,#0xE2
   00F9 F0                  406 	movx	@dptr,a
   00FA 90 00 16            407 	mov	dptr,#(_n + 0x0016)
   00FD 74 34               408 	mov	a,#0x34
   00FF F0                  409 	movx	@dptr,a
   0100 90 00 17            410 	mov	dptr,#(_n + 0x0017)
   0103 74 61               411 	mov	a,#0x61
   0105 F0                  412 	movx	@dptr,a
   0106 90 00 18            413 	mov	dptr,#(_n + 0x0018)
   0109 74 27               414 	mov	a,#0x27
   010B F0                  415 	movx	@dptr,a
   010C 90 00 19            416 	mov	dptr,#(_n + 0x0019)
   010F 74 F2               417 	mov	a,#0xF2
   0111 F0                  418 	movx	@dptr,a
   0112 90 00 1A            419 	mov	dptr,#(_n + 0x001a)
   0115 74 57               420 	mov	a,#0x57
   0117 F0                  421 	movx	@dptr,a
   0118 90 00 1B            422 	mov	dptr,#(_n + 0x001b)
   011B 74 B3               423 	mov	a,#0xB3
   011D F0                  424 	movx	@dptr,a
   011E 90 00 1C            425 	mov	dptr,#(_n + 0x001c)
   0121 74 42               426 	mov	a,#0x42
   0123 F0                  427 	movx	@dptr,a
   0124 90 00 1D            428 	mov	dptr,#(_n + 0x001d)
   0127 74 21               429 	mov	a,#0x21
   0129 F0                  430 	movx	@dptr,a
   012A 90 00 1E            431 	mov	dptr,#(_n + 0x001e)
   012D 74 80               432 	mov	a,#0x80
   012F F0                  433 	movx	@dptr,a
   0130 90 00 1F            434 	mov	dptr,#(_n + 0x001f)
   0133 74 95               435 	mov	a,#0x95
   0135 F0                  436 	movx	@dptr,a
   0136 90 00 20            437 	mov	dptr,#(_n + 0x0020)
   0139 74 AB               438 	mov	a,#0xAB
   013B F0                  439 	movx	@dptr,a
   013C 90 00 21            440 	mov	dptr,#(_n + 0x0021)
   013F 74 15               441 	mov	a,#0x15
   0141 F0                  442 	movx	@dptr,a
   0142 90 00 22            443 	mov	dptr,#(_n + 0x0022)
   0145 74 A2               444 	mov	a,#0xA2
   0147 F0                  445 	movx	@dptr,a
   0148 90 00 23            446 	mov	dptr,#(_n + 0x0023)
   014B 74 1D               447 	mov	a,#0x1D
   014D F0                  448 	movx	@dptr,a
   014E 90 00 24            449 	mov	dptr,#(_n + 0x0024)
   0151 74 53               450 	mov	a,#0x53
   0153 F0                  451 	movx	@dptr,a
   0154 90 00 25            452 	mov	dptr,#(_n + 0x0025)
   0157 74 B2               453 	mov	a,#0xB2
   0159 F0                  454 	movx	@dptr,a
   015A 90 00 26            455 	mov	dptr,#(_n + 0x0026)
   015D 74 27               456 	mov	a,#0x27
   015F F0                  457 	movx	@dptr,a
   0160 90 00 27            458 	mov	dptr,#(_n + 0x0027)
   0163 74 E6               459 	mov	a,#0xE6
   0165 F0                  460 	movx	@dptr,a
   0166 90 00 28            461 	mov	dptr,#(_n + 0x0028)
   0169 74 56               462 	mov	a,#0x56
   016B F0                  463 	movx	@dptr,a
   016C 90 00 29            464 	mov	dptr,#(_n + 0x0029)
   016F 74 93               465 	mov	a,#0x93
   0171 F0                  466 	movx	@dptr,a
   0172 90 00 2A            467 	mov	dptr,#(_n + 0x002a)
   0175 74 27               468 	mov	a,#0x27
   0177 F0                  469 	movx	@dptr,a
   0178 90 00 2B            470 	mov	dptr,#(_n + 0x002b)
   017B 74 AF               471 	mov	a,#0xAF
   017D F0                  472 	movx	@dptr,a
   017E 90 00 2C            473 	mov	dptr,#(_n + 0x002c)
   0181 74 C2               474 	mov	a,#0xC2
   0183 F0                  475 	movx	@dptr,a
   0184 90 00 2D            476 	mov	dptr,#(_n + 0x002d)
   0187 74 EE               477 	mov	a,#0xEE
   0189 F0                  478 	movx	@dptr,a
   018A 90 00 2E            479 	mov	dptr,#(_n + 0x002e)
   018D 74 2B               480 	mov	a,#0x2B
   018F F0                  481 	movx	@dptr,a
   0190 90 00 2F            482 	mov	dptr,#(_n + 0x002f)
   0193 74 2F               483 	mov	a,#0x2F
   0195 F0                  484 	movx	@dptr,a
   0196 90 00 30            485 	mov	dptr,#(_n + 0x0030)
   0199 74 9A               486 	mov	a,#0x9A
   019B F0                  487 	movx	@dptr,a
   019C 90 00 31            488 	mov	dptr,#(_n + 0x0031)
   019F 74 AE               489 	mov	a,#0xAE
   01A1 F0                  490 	movx	@dptr,a
   01A2 90 00 32            491 	mov	dptr,#(_n + 0x0032)
   01A5 74 6A               492 	mov	a,#0x6A
   01A7 F0                  493 	movx	@dptr,a
   01A8 90 00 33            494 	mov	dptr,#(_n + 0x0033)
   01AB 74 09               495 	mov	a,#0x09
   01AD F0                  496 	movx	@dptr,a
   01AE 90 00 34            497 	mov	dptr,#(_n + 0x0034)
   01B1 74 E5               498 	mov	a,#0xE5
   01B3 F0                  499 	movx	@dptr,a
   01B4 90 00 35            500 	mov	dptr,#(_n + 0x0035)
   01B7 74 7F               501 	mov	a,#0x7F
   01B9 F0                  502 	movx	@dptr,a
   01BA 90 00 36            503 	mov	dptr,#(_n + 0x0036)
   01BD 74 AE               504 	mov	a,#0xAE
   01BF F0                  505 	movx	@dptr,a
   01C0 90 00 37            506 	mov	dptr,#(_n + 0x0037)
   01C3 74 7D               507 	mov	a,#0x7D
   01C5 F0                  508 	movx	@dptr,a
   01C6 90 00 38            509 	mov	dptr,#(_n + 0x0038)
   01C9 74 2B               510 	mov	a,#0x2B
   01CB F0                  511 	movx	@dptr,a
   01CC 90 00 39            512 	mov	dptr,#(_n + 0x0039)
   01CF 74 DD               513 	mov	a,#0xDD
   01D1 F0                  514 	movx	@dptr,a
   01D2 90 00 3A            515 	mov	dptr,#(_n + 0x003a)
   01D5 74 58               516 	mov	a,#0x58
   01D7 F0                  517 	movx	@dptr,a
   01D8 90 00 3B            518 	mov	dptr,#(_n + 0x003b)
   01DB 74 2F               519 	mov	a,#0x2F
   01DD F0                  520 	movx	@dptr,a
   01DE 90 00 3C            521 	mov	dptr,#(_n + 0x003c)
   01E1 74 87               522 	mov	a,#0x87
   01E3 F0                  523 	movx	@dptr,a
   01E4 90 00 3D            524 	mov	dptr,#(_n + 0x003d)
   01E7 74 70               525 	mov	a,#0x70
   01E9 F0                  526 	movx	@dptr,a
   01EA 90 00 3E            527 	mov	dptr,#(_n + 0x003e)
   01ED 74 05               528 	mov	a,#0x05
   01EF F0                  529 	movx	@dptr,a
   01F0 90 00 3F            530 	mov	dptr,#(_n + 0x003f)
   01F3 74 1F               531 	mov	a,#0x1F
   01F5 F0                  532 	movx	@dptr,a
   01F6 90 00 40            533 	mov	dptr,#(_n + 0x0040)
   01F9 74 F8               534 	mov	a,#0xF8
   01FB F0                  535 	movx	@dptr,a
   01FC 90 00 41            536 	mov	dptr,#(_n + 0x0041)
   01FF 74 BD               537 	mov	a,#0xBD
   0201 F0                  538 	movx	@dptr,a
   0202 90 00 42            539 	mov	dptr,#(_n + 0x0042)
   0205 74 0B               540 	mov	a,#0x0B
   0207 F0                  541 	movx	@dptr,a
   0208 90 00 43            542 	mov	dptr,#(_n + 0x0043)
   020B 74 E0               543 	mov	a,#0xE0
   020D F0                  544 	movx	@dptr,a
   020E 90 00 44            545 	mov	dptr,#(_n + 0x0044)
   0211 74 FD               546 	mov	a,#0xFD
   0213 F0                  547 	movx	@dptr,a
   0214 90 00 45            548 	mov	dptr,#(_n + 0x0045)
   0217 74 F1               549 	mov	a,#0xF1
   0219 F0                  550 	movx	@dptr,a
   021A 90 00 46            551 	mov	dptr,#(_n + 0x0046)
   021D 74 81               552 	mov	a,#0x81
   021F F0                  553 	movx	@dptr,a
   0220 90 00 47            554 	mov	dptr,#(_n + 0x0047)
   0223 74 60               555 	mov	a,#0x60
   0225 F0                  556 	movx	@dptr,a
   0226 90 00 48            557 	mov	dptr,#(_n + 0x0048)
   0229 74 BF               558 	mov	a,#0xBF
   022B F0                  559 	movx	@dptr,a
   022C 90 00 49            560 	mov	dptr,#(_n + 0x0049)
   022F 74 D2               561 	mov	a,#0xD2
   0231 F0                  562 	movx	@dptr,a
   0232 90 00 4A            563 	mov	dptr,#(_n + 0x004a)
   0235 74 FE               564 	mov	a,#0xFE
   0237 F0                  565 	movx	@dptr,a
   0238 90 00 4B            566 	mov	dptr,#(_n + 0x004b)
   023B 74 8F               567 	mov	a,#0x8F
   023D F0                  568 	movx	@dptr,a
   023E 90 00 4C            569 	mov	dptr,#(_n + 0x004c)
   0241 74 7B               570 	mov	a,#0x7B
   0243 F0                  571 	movx	@dptr,a
   0244 90 00 4D            572 	mov	dptr,#(_n + 0x004d)
   0247 74 B9               573 	mov	a,#0xB9
   0249 F0                  574 	movx	@dptr,a
   024A 90 00 4E            575 	mov	dptr,#(_n + 0x004e)
   024D 74 A9               576 	mov	a,#0xA9
   024F F0                  577 	movx	@dptr,a
   0250 90 00 4F            578 	mov	dptr,#(_n + 0x004f)
   0253 74 A4               579 	mov	a,#0xA4
   0255 F0                  580 	movx	@dptr,a
   0256 90 00 50            581 	mov	dptr,#(_n + 0x0050)
   0259 74 6A               582 	mov	a,#0x6A
   025B F0                  583 	movx	@dptr,a
   025C 90 00 51            584 	mov	dptr,#(_n + 0x0051)
   025F 74 0A               585 	mov	a,#0x0A
   0261 F0                  586 	movx	@dptr,a
   0262 90 00 52            587 	mov	dptr,#(_n + 0x0052)
   0265 74 A3               588 	mov	a,#0xA3
   0267 F0                  589 	movx	@dptr,a
   0268 90 00 53            590 	mov	dptr,#(_n + 0x0053)
   026B 74 A3               591 	mov	a,#0xA3
   026D F0                  592 	movx	@dptr,a
   026E 90 00 54            593 	mov	dptr,#(_n + 0x0054)
   0271 74 70               594 	mov	a,#0x70
   0273 F0                  595 	movx	@dptr,a
   0274 90 00 55            596 	mov	dptr,#(_n + 0x0055)
   0277 74 22               597 	mov	a,#0x22
   0279 F0                  598 	movx	@dptr,a
   027A 90 00 56            599 	mov	dptr,#(_n + 0x0056)
   027D 74 BF               600 	mov	a,#0xBF
   027F F0                  601 	movx	@dptr,a
   0280 90 00 57            602 	mov	dptr,#(_n + 0x0057)
   0283 74 4C               603 	mov	a,#0x4C
   0285 F0                  604 	movx	@dptr,a
   0286 90 00 58            605 	mov	dptr,#(_n + 0x0058)
   0289 74 1B               606 	mov	a,#0x1B
   028B F0                  607 	movx	@dptr,a
   028C 90 00 59            608 	mov	dptr,#(_n + 0x0059)
   028F 74 B0               609 	mov	a,#0xB0
   0291 F0                  610 	movx	@dptr,a
   0292 90 00 5A            611 	mov	dptr,#(_n + 0x005a)
   0295 74 41               612 	mov	a,#0x41
   0297 F0                  613 	movx	@dptr,a
   0298 90 00 5B            614 	mov	dptr,#(_n + 0x005b)
   029B 74 24               615 	mov	a,#0x24
   029D F0                  616 	movx	@dptr,a
   029E 90 00 5C            617 	mov	dptr,#(_n + 0x005c)
   02A1 74 4C               618 	mov	a,#0x4C
   02A3 F0                  619 	movx	@dptr,a
   02A4 90 00 5D            620 	mov	dptr,#(_n + 0x005d)
   02A7 74 3A               621 	mov	a,#0x3A
   02A9 F0                  622 	movx	@dptr,a
   02AA 90 00 5E            623 	mov	dptr,#(_n + 0x005e)
   02AD 74 08               624 	mov	a,#0x08
   02AF F0                  625 	movx	@dptr,a
   02B0 90 00 5F            626 	mov	dptr,#(_n + 0x005f)
   02B3 74 EC               627 	mov	a,#0xEC
   02B5 F0                  628 	movx	@dptr,a
   02B6 90 00 60            629 	mov	dptr,#(_n + 0x0060)
   02B9 74 F4               630 	mov	a,#0xF4
   02BB F0                  631 	movx	@dptr,a
   02BC 90 00 61            632 	mov	dptr,#(_n + 0x0061)
   02BF 74 91               633 	mov	a,#0x91
   02C1 F0                  634 	movx	@dptr,a
   02C2 90 00 62            635 	mov	dptr,#(_n + 0x0062)
   02C5 74 FF               636 	mov	a,#0xFF
   02C7 F0                  637 	movx	@dptr,a
   02C8 90 00 63            638 	mov	dptr,#(_n + 0x0063)
   02CB 74 93               639 	mov	a,#0x93
   02CD F0                  640 	movx	@dptr,a
   02CE 90 00 64            641 	mov	dptr,#(_n + 0x0064)
   02D1 74 8D               642 	mov	a,#0x8D
   02D3 F0                  643 	movx	@dptr,a
   02D4 90 00 65            644 	mov	dptr,#(_n + 0x0065)
   02D7 74 FC               645 	mov	a,#0xFC
   02D9 F0                  646 	movx	@dptr,a
   02DA 90 00 66            647 	mov	dptr,#(_n + 0x0066)
   02DD 74 FA               648 	mov	a,#0xFA
   02DF F0                  649 	movx	@dptr,a
   02E0 90 00 67            650 	mov	dptr,#(_n + 0x0067)
   02E3 74 4C               651 	mov	a,#0x4C
   02E5 F0                  652 	movx	@dptr,a
   02E6 90 00 68            653 	mov	dptr,#(_n + 0x0068)
   02E9 74 26               654 	mov	a,#0x26
   02EB F0                  655 	movx	@dptr,a
   02EC 90 00 69            656 	mov	dptr,#(_n + 0x0069)
   02EF 74 2D               657 	mov	a,#0x2D
   02F1 F0                  658 	movx	@dptr,a
   02F2 90 00 6A            659 	mov	dptr,#(_n + 0x006a)
   02F5 74 D2               660 	mov	a,#0xD2
   02F7 F0                  661 	movx	@dptr,a
   02F8 90 00 6B            662 	mov	dptr,#(_n + 0x006b)
   02FB 74 E9               663 	mov	a,#0xE9
   02FD F0                  664 	movx	@dptr,a
   02FE 90 00 6C            665 	mov	dptr,#(_n + 0x006c)
   0301 74 FC               666 	mov	a,#0xFC
   0303 F0                  667 	movx	@dptr,a
   0304 90 00 6D            668 	mov	dptr,#(_n + 0x006d)
   0307 74 76               669 	mov	a,#0x76
   0309 F0                  670 	movx	@dptr,a
   030A 90 00 6E            671 	mov	dptr,#(_n + 0x006e)
   030D 74 B1               672 	mov	a,#0xB1
   030F F0                  673 	movx	@dptr,a
   0310 90 00 6F            674 	mov	dptr,#(_n + 0x006f)
   0313 74 67               675 	mov	a,#0x67
   0315 F0                  676 	movx	@dptr,a
   0316 90 00 70            677 	mov	dptr,#(_n + 0x0070)
   0319 74 5E               678 	mov	a,#0x5E
   031B F0                  679 	movx	@dptr,a
   031C 90 00 71            680 	mov	dptr,#(_n + 0x0071)
   031F 74 24               681 	mov	a,#0x24
   0321 F0                  682 	movx	@dptr,a
   0322 90 00 72            683 	mov	dptr,#(_n + 0x0072)
   0325 74 9E               684 	mov	a,#0x9E
   0327 F0                  685 	movx	@dptr,a
   0328 90 00 73            686 	mov	dptr,#(_n + 0x0073)
   032B 74 31               687 	mov	a,#0x31
   032D F0                  688 	movx	@dptr,a
   032E 90 00 74            689 	mov	dptr,#(_n + 0x0074)
   0331 74 66               690 	mov	a,#0x66
   0333 F0                  691 	movx	@dptr,a
   0334 90 00 75            692 	mov	dptr,#(_n + 0x0075)
   0337 74 5D               693 	mov	a,#0x5D
   0339 F0                  694 	movx	@dptr,a
   033A 90 00 76            695 	mov	dptr,#(_n + 0x0076)
   033D 74 98               696 	mov	a,#0x98
   033F F0                  697 	movx	@dptr,a
   0340 90 00 77            698 	mov	dptr,#(_n + 0x0077)
   0343 74 4C               699 	mov	a,#0x4C
   0345 F0                  700 	movx	@dptr,a
   0346 90 00 78            701 	mov	dptr,#(_n + 0x0078)
   0349 74 0D               702 	mov	a,#0x0D
   034B F0                  703 	movx	@dptr,a
   034C 90 00 79            704 	mov	dptr,#(_n + 0x0079)
   034F 74 79               705 	mov	a,#0x79
   0351 F0                  706 	movx	@dptr,a
   0352 90 00 7A            707 	mov	dptr,#(_n + 0x007a)
   0355 74 81               708 	mov	a,#0x81
   0357 F0                  709 	movx	@dptr,a
   0358 90 00 7B            710 	mov	dptr,#(_n + 0x007b)
   035B 74 76               711 	mov	a,#0x76
   035D F0                  712 	movx	@dptr,a
   035E 90 00 7C            713 	mov	dptr,#(_n + 0x007c)
   0361 74 AC               714 	mov	a,#0xAC
   0363 F0                  715 	movx	@dptr,a
   0364 90 00 7D            716 	mov	dptr,#(_n + 0x007d)
   0367 74 1D               717 	mov	a,#0x1D
   0369 F0                  718 	movx	@dptr,a
   036A 90 00 7E            719 	mov	dptr,#(_n + 0x007e)
   036D 74 E2               720 	mov	a,#0xE2
   036F F0                  721 	movx	@dptr,a
   0370 90 00 7F            722 	mov	dptr,#(_n + 0x007f)
   0373 74 CA               723 	mov	a,#0xCA
   0375 F0                  724 	movx	@dptr,a
                            725 ;	main_montgomery.c:11: volatile __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0376 90 00 80            726 	mov	dptr,#_a
   0379 74 FF               727 	mov	a,#0xFF
   037B F0                  728 	movx	@dptr,a
   037C 90 00 81            729 	mov	dptr,#(_a + 0x0001)
   037F 74 7F               730 	mov	a,#0x7F
   0381 F0                  731 	movx	@dptr,a
   0382 90 00 82            732 	mov	dptr,#(_a + 0x0002)
   0385 74 14               733 	mov	a,#0x14
   0387 F0                  734 	movx	@dptr,a
   0388 90 00 83            735 	mov	dptr,#(_a + 0x0003)
   038B 74 64               736 	mov	a,#0x64
   038D F0                  737 	movx	@dptr,a
   038E 90 00 84            738 	mov	dptr,#(_a + 0x0004)
   0391 74 47               739 	mov	a,#0x47
   0393 F0                  740 	movx	@dptr,a
   0394 90 00 85            741 	mov	dptr,#(_a + 0x0005)
   0397 74 68               742 	mov	a,#0x68
   0399 F0                  743 	movx	@dptr,a
   039A 90 00 86            744 	mov	dptr,#(_a + 0x0006)
   039D 74 C2               745 	mov	a,#0xC2
   039F F0                  746 	movx	@dptr,a
   03A0 90 00 87            747 	mov	dptr,#(_a + 0x0007)
   03A3 74 B6               748 	mov	a,#0xB6
   03A5 F0                  749 	movx	@dptr,a
   03A6 90 00 88            750 	mov	dptr,#(_a + 0x0008)
   03A9 74 27               751 	mov	a,#0x27
   03AB F0                  752 	movx	@dptr,a
   03AC 90 00 89            753 	mov	dptr,#(_a + 0x0009)
   03AF 74 32               754 	mov	a,#0x32
   03B1 F0                  755 	movx	@dptr,a
   03B2 90 00 8A            756 	mov	dptr,#(_a + 0x000a)
   03B5 74 63               757 	mov	a,#0x63
   03B7 F0                  758 	movx	@dptr,a
   03B8 90 00 8B            759 	mov	dptr,#(_a + 0x000b)
   03BB 74 2C               760 	mov	a,#0x2C
   03BD F0                  761 	movx	@dptr,a
   03BE 90 00 8C            762 	mov	dptr,#(_a + 0x000c)
   03C1 74 B0               763 	mov	a,#0xB0
   03C3 F0                  764 	movx	@dptr,a
   03C4 90 00 8D            765 	mov	dptr,#(_a + 0x000d)
   03C7 74 C3               766 	mov	a,#0xC3
   03C9 F0                  767 	movx	@dptr,a
   03CA 90 00 8E            768 	mov	dptr,#(_a + 0x000e)
   03CD 74 95               769 	mov	a,#0x95
   03CF F0                  770 	movx	@dptr,a
   03D0 90 00 8F            771 	mov	dptr,#(_a + 0x000f)
   03D3 74 13               772 	mov	a,#0x13
   03D5 F0                  773 	movx	@dptr,a
   03D6 90 00 90            774 	mov	dptr,#(_a + 0x0010)
   03D9 74 C5               775 	mov	a,#0xC5
   03DB F0                  776 	movx	@dptr,a
   03DC 90 00 91            777 	mov	dptr,#(_a + 0x0011)
   03DF 74 7E               778 	mov	a,#0x7E
   03E1 F0                  779 	movx	@dptr,a
   03E2 90 00 92            780 	mov	dptr,#(_a + 0x0012)
   03E5 74 17               781 	mov	a,#0x17
   03E7 F0                  782 	movx	@dptr,a
   03E8 90 00 93            783 	mov	dptr,#(_a + 0x0013)
   03EB 74 22               784 	mov	a,#0x22
   03ED F0                  785 	movx	@dptr,a
   03EE 90 00 94            786 	mov	dptr,#(_a + 0x0014)
   03F1 74 F3               787 	mov	a,#0xF3
   03F3 F0                  788 	movx	@dptr,a
   03F4 90 00 95            789 	mov	dptr,#(_a + 0x0015)
   03F7 74 7C               790 	mov	a,#0x7C
   03F9 F0                  791 	movx	@dptr,a
   03FA 90 00 96            792 	mov	dptr,#(_a + 0x0016)
   03FD 74 2D               793 	mov	a,#0x2D
   03FF F0                  794 	movx	@dptr,a
   0400 90 00 97            795 	mov	dptr,#(_a + 0x0017)
   0403 74 E8               796 	mov	a,#0xE8
   0405 F0                  797 	movx	@dptr,a
   0406 90 00 98            798 	mov	dptr,#(_a + 0x0018)
   0409 74 13               799 	mov	a,#0x13
   040B F0                  800 	movx	@dptr,a
   040C 90 00 99            801 	mov	dptr,#(_a + 0x0019)
   040F 74 47               802 	mov	a,#0x47
   0411 F0                  803 	movx	@dptr,a
   0412 90 00 9A            804 	mov	dptr,#(_a + 0x001a)
   0415 74 5E               805 	mov	a,#0x5E
   0417 F0                  806 	movx	@dptr,a
   0418 90 00 9B            807 	mov	dptr,#(_a + 0x001b)
   041B 74 15               808 	mov	a,#0x15
   041D F0                  809 	movx	@dptr,a
   041E 90 00 9C            810 	mov	dptr,#(_a + 0x001c)
   0421 74 4E               811 	mov	a,#0x4E
   0423 F0                  812 	movx	@dptr,a
   0424 90 00 9D            813 	mov	dptr,#(_a + 0x001d)
   0427 74 EF               814 	mov	a,#0xEF
   0429 F0                  815 	movx	@dptr,a
   042A 90 00 9E            816 	mov	dptr,#(_a + 0x001e)
   042D 74 83               817 	mov	a,#0x83
   042F F0                  818 	movx	@dptr,a
   0430 90 00 9F            819 	mov	dptr,#(_a + 0x001f)
   0433 74 81               820 	mov	a,#0x81
   0435 F0                  821 	movx	@dptr,a
   0436 90 00 A0            822 	mov	dptr,#(_a + 0x0020)
   0439 74 DF               823 	mov	a,#0xDF
   043B F0                  824 	movx	@dptr,a
   043C 90 00 A1            825 	mov	dptr,#(_a + 0x0021)
   043F 74 C3               826 	mov	a,#0xC3
   0441 F0                  827 	movx	@dptr,a
   0442 90 00 A2            828 	mov	dptr,#(_a + 0x0022)
   0445 74 47               829 	mov	a,#0x47
   0447 F0                  830 	movx	@dptr,a
   0448 90 00 A3            831 	mov	dptr,#(_a + 0x0023)
   044B 74 D3               832 	mov	a,#0xD3
   044D F0                  833 	movx	@dptr,a
   044E 90 00 A4            834 	mov	dptr,#(_a + 0x0024)
   0451 74 60               835 	mov	a,#0x60
   0453 F0                  836 	movx	@dptr,a
   0454 90 00 A5            837 	mov	dptr,#(_a + 0x0025)
   0457 74 BB               838 	mov	a,#0xBB
   0459 F0                  839 	movx	@dptr,a
   045A 90 00 A6            840 	mov	dptr,#(_a + 0x0026)
   045D 74 8B               841 	mov	a,#0x8B
   045F F0                  842 	movx	@dptr,a
   0460 90 00 A7            843 	mov	dptr,#(_a + 0x0027)
   0463 74 3E               844 	mov	a,#0x3E
   0465 F0                  845 	movx	@dptr,a
   0466 90 00 A8            846 	mov	dptr,#(_a + 0x0028)
   0469 74 B6               847 	mov	a,#0xB6
   046B F0                  848 	movx	@dptr,a
   046C 90 00 A9            849 	mov	dptr,#(_a + 0x0029)
   046F 74 35               850 	mov	a,#0x35
   0471 F0                  851 	movx	@dptr,a
   0472 90 00 AA            852 	mov	dptr,#(_a + 0x002a)
   0475 74 B1               853 	mov	a,#0xB1
   0477 F0                  854 	movx	@dptr,a
   0478 90 00 AB            855 	mov	dptr,#(_a + 0x002b)
   047B 74 6E               856 	mov	a,#0x6E
   047D F0                  857 	movx	@dptr,a
   047E 90 00 AC            858 	mov	dptr,#(_a + 0x002c)
   0481 74 D1               859 	mov	a,#0xD1
   0483 F0                  860 	movx	@dptr,a
   0484 90 00 AD            861 	mov	dptr,#(_a + 0x002d)
   0487 74 D5               862 	mov	a,#0xD5
   0489 F0                  863 	movx	@dptr,a
   048A 90 00 AE            864 	mov	dptr,#(_a + 0x002e)
   048D 74 DA               865 	mov	a,#0xDA
   048F F0                  866 	movx	@dptr,a
   0490 90 00 AF            867 	mov	dptr,#(_a + 0x002f)
   0493 74 6F               868 	mov	a,#0x6F
   0495 F0                  869 	movx	@dptr,a
   0496 90 00 B0            870 	mov	dptr,#(_a + 0x0030)
   0499 74 28               871 	mov	a,#0x28
   049B F0                  872 	movx	@dptr,a
   049C 90 00 B1            873 	mov	dptr,#(_a + 0x0031)
   049F 74 16               874 	mov	a,#0x16
   04A1 F0                  875 	movx	@dptr,a
   04A2 90 00 B2            876 	mov	dptr,#(_a + 0x0032)
   04A5 74 2C               877 	mov	a,#0x2C
   04A7 F0                  878 	movx	@dptr,a
   04A8 90 00 B3            879 	mov	dptr,#(_a + 0x0033)
   04AB 74 74               880 	mov	a,#0x74
   04AD F0                  881 	movx	@dptr,a
   04AE 90 00 B4            882 	mov	dptr,#(_a + 0x0034)
   04B1 74 36               883 	mov	a,#0x36
   04B3 F0                  884 	movx	@dptr,a
   04B4 90 00 B5            885 	mov	dptr,#(_a + 0x0035)
   04B7 74 F9               886 	mov	a,#0xF9
   04B9 F0                  887 	movx	@dptr,a
   04BA 90 00 B6            888 	mov	dptr,#(_a + 0x0036)
   04BD 74 04               889 	mov	a,#0x04
   04BF F0                  890 	movx	@dptr,a
   04C0 90 00 B7            891 	mov	dptr,#(_a + 0x0037)
   04C3 74 79               892 	mov	a,#0x79
   04C5 F0                  893 	movx	@dptr,a
   04C6 90 00 B8            894 	mov	dptr,#(_a + 0x0038)
   04C9 74 F9               895 	mov	a,#0xF9
   04CB F0                  896 	movx	@dptr,a
   04CC 90 00 B9            897 	mov	dptr,#(_a + 0x0039)
   04CF 74 76               898 	mov	a,#0x76
   04D1 F0                  899 	movx	@dptr,a
   04D2 90 00 BA            900 	mov	dptr,#(_a + 0x003a)
   04D5 74 E2               901 	mov	a,#0xE2
   04D7 F0                  902 	movx	@dptr,a
   04D8 90 00 BB            903 	mov	dptr,#(_a + 0x003b)
   04DB 74 CC               904 	mov	a,#0xCC
   04DD F0                  905 	movx	@dptr,a
   04DE 90 00 BC            906 	mov	dptr,#(_a + 0x003c)
   04E1 74 A4               907 	mov	a,#0xA4
   04E3 F0                  908 	movx	@dptr,a
   04E4 90 00 BD            909 	mov	dptr,#(_a + 0x003d)
   04E7 74 82               910 	mov	a,#0x82
   04E9 F0                  911 	movx	@dptr,a
   04EA 90 00 BE            912 	mov	dptr,#(_a + 0x003e)
   04ED 74 A7               913 	mov	a,#0xA7
   04EF F0                  914 	movx	@dptr,a
   04F0 90 00 BF            915 	mov	dptr,#(_a + 0x003f)
   04F3 74 A4               916 	mov	a,#0xA4
   04F5 F0                  917 	movx	@dptr,a
   04F6 90 00 C0            918 	mov	dptr,#(_a + 0x0040)
   04F9 74 68               919 	mov	a,#0x68
   04FB F0                  920 	movx	@dptr,a
   04FC 90 00 C1            921 	mov	dptr,#(_a + 0x0041)
   04FF 74 4E               922 	mov	a,#0x4E
   0501 F0                  923 	movx	@dptr,a
   0502 90 00 C2            924 	mov	dptr,#(_a + 0x0042)
   0505 74 24               925 	mov	a,#0x24
   0507 F0                  926 	movx	@dptr,a
   0508 90 00 C3            927 	mov	dptr,#(_a + 0x0043)
   050B 74 A6               928 	mov	a,#0xA6
   050D F0                  929 	movx	@dptr,a
   050E 90 00 C4            930 	mov	dptr,#(_a + 0x0044)
   0511 74 C1               931 	mov	a,#0xC1
   0513 F0                  932 	movx	@dptr,a
   0514 90 00 C5            933 	mov	dptr,#(_a + 0x0045)
   0517 74 58               934 	mov	a,#0x58
   0519 F0                  935 	movx	@dptr,a
   051A 90 00 C6            936 	mov	dptr,#(_a + 0x0046)
   051D 74 68               937 	mov	a,#0x68
   051F F0                  938 	movx	@dptr,a
   0520 90 00 C7            939 	mov	dptr,#(_a + 0x0047)
   0523 74 24               940 	mov	a,#0x24
   0525 F0                  941 	movx	@dptr,a
   0526 90 00 C8            942 	mov	dptr,#(_a + 0x0048)
   0529 74 58               943 	mov	a,#0x58
   052B F0                  944 	movx	@dptr,a
   052C 90 00 C9            945 	mov	dptr,#(_a + 0x0049)
   052F 74 DC               946 	mov	a,#0xDC
   0531 F0                  947 	movx	@dptr,a
   0532 90 00 CA            948 	mov	dptr,#(_a + 0x004a)
   0535 74 14               949 	mov	a,#0x14
   0537 F0                  950 	movx	@dptr,a
   0538 90 00 CB            951 	mov	dptr,#(_a + 0x004b)
   053B 74 F9               952 	mov	a,#0xF9
   053D F0                  953 	movx	@dptr,a
   053E 90 00 CC            954 	mov	dptr,#(_a + 0x004c)
   0541 74 FF               955 	mov	a,#0xFF
   0543 F0                  956 	movx	@dptr,a
   0544 90 00 CD            957 	mov	dptr,#(_a + 0x004d)
   0547 74 4D               958 	mov	a,#0x4D
   0549 F0                  959 	movx	@dptr,a
   054A 90 00 CE            960 	mov	dptr,#(_a + 0x004e)
   054D 74 A1               961 	mov	a,#0xA1
   054F F0                  962 	movx	@dptr,a
   0550 90 00 CF            963 	mov	dptr,#(_a + 0x004f)
   0553 74 EF               964 	mov	a,#0xEF
   0555 F0                  965 	movx	@dptr,a
   0556 90 00 D0            966 	mov	dptr,#(_a + 0x0050)
   0559 74 53               967 	mov	a,#0x53
   055B F0                  968 	movx	@dptr,a
   055C 90 00 D1            969 	mov	dptr,#(_a + 0x0051)
   055F 74 A3               970 	mov	a,#0xA3
   0561 F0                  971 	movx	@dptr,a
   0562 90 00 D2            972 	mov	dptr,#(_a + 0x0052)
   0565 74 C2               973 	mov	a,#0xC2
   0567 F0                  974 	movx	@dptr,a
   0568 90 00 D3            975 	mov	dptr,#(_a + 0x0053)
   056B 74 84               976 	mov	a,#0x84
   056D F0                  977 	movx	@dptr,a
   056E 90 00 D4            978 	mov	dptr,#(_a + 0x0054)
   0571 74 1B               979 	mov	a,#0x1B
   0573 F0                  980 	movx	@dptr,a
   0574 90 00 D5            981 	mov	dptr,#(_a + 0x0055)
   0577 74 81               982 	mov	a,#0x81
   0579 F0                  983 	movx	@dptr,a
   057A 90 00 D6            984 	mov	dptr,#(_a + 0x0056)
   057D 74 16               985 	mov	a,#0x16
   057F F0                  986 	movx	@dptr,a
   0580 90 00 D7            987 	mov	dptr,#(_a + 0x0057)
   0583 74 6C               988 	mov	a,#0x6C
   0585 F0                  989 	movx	@dptr,a
   0586 90 00 D8            990 	mov	dptr,#(_a + 0x0058)
   0589 74 DD               991 	mov	a,#0xDD
   058B F0                  992 	movx	@dptr,a
   058C 90 00 D9            993 	mov	dptr,#(_a + 0x0059)
   058F 74 E3               994 	mov	a,#0xE3
   0591 F0                  995 	movx	@dptr,a
   0592 90 00 DA            996 	mov	dptr,#(_a + 0x005a)
   0595 74 DB               997 	mov	a,#0xDB
   0597 F0                  998 	movx	@dptr,a
   0598 90 00 DB            999 	mov	dptr,#(_a + 0x005b)
   059B 74 A8              1000 	mov	a,#0xA8
   059D F0                 1001 	movx	@dptr,a
   059E 90 00 DC           1002 	mov	dptr,#(_a + 0x005c)
   05A1 74 03              1003 	mov	a,#0x03
   05A3 F0                 1004 	movx	@dptr,a
   05A4 90 00 DD           1005 	mov	dptr,#(_a + 0x005d)
   05A7 74 8F              1006 	mov	a,#0x8F
   05A9 F0                 1007 	movx	@dptr,a
   05AA 90 00 DE           1008 	mov	dptr,#(_a + 0x005e)
   05AD 74 F2              1009 	mov	a,#0xF2
   05AF F0                 1010 	movx	@dptr,a
   05B0 90 00 DF           1011 	mov	dptr,#(_a + 0x005f)
   05B3 74 31              1012 	mov	a,#0x31
   05B5 F0                 1013 	movx	@dptr,a
   05B6 90 00 E0           1014 	mov	dptr,#(_a + 0x0060)
   05B9 74 FD              1015 	mov	a,#0xFD
   05BB F0                 1016 	movx	@dptr,a
   05BC 90 00 E1           1017 	mov	dptr,#(_a + 0x0061)
   05BF 74 94              1018 	mov	a,#0x94
   05C1 F0                 1019 	movx	@dptr,a
   05C2 90 00 E2           1020 	mov	dptr,#(_a + 0x0062)
   05C5 74 5D              1021 	mov	a,#0x5D
   05C7 F0                 1022 	movx	@dptr,a
   05C8 90 00 E3           1023 	mov	dptr,#(_a + 0x0063)
   05CB 74 26              1024 	mov	a,#0x26
   05CD F0                 1025 	movx	@dptr,a
   05CE 90 00 E4           1026 	mov	dptr,#(_a + 0x0064)
   05D1 74 13              1027 	mov	a,#0x13
   05D3 F0                 1028 	movx	@dptr,a
   05D4 90 00 E5           1029 	mov	dptr,#(_a + 0x0065)
   05D7 74 C6              1030 	mov	a,#0xC6
   05D9 F0                 1031 	movx	@dptr,a
   05DA 90 00 E6           1032 	mov	dptr,#(_a + 0x0066)
   05DD 74 68              1033 	mov	a,#0x68
   05DF F0                 1034 	movx	@dptr,a
   05E0 90 00 E7           1035 	mov	dptr,#(_a + 0x0067)
   05E3 74 B4              1036 	mov	a,#0xB4
   05E5 F0                 1037 	movx	@dptr,a
   05E6 90 00 E8           1038 	mov	dptr,#(_a + 0x0068)
   05E9 74 0D              1039 	mov	a,#0x0D
   05EB F0                 1040 	movx	@dptr,a
   05EC 90 00 E9           1041 	mov	dptr,#(_a + 0x0069)
   05EF 74 CD              1042 	mov	a,#0xCD
   05F1 F0                 1043 	movx	@dptr,a
   05F2 90 00 EA           1044 	mov	dptr,#(_a + 0x006a)
   05F5 74 F1              1045 	mov	a,#0xF1
   05F7 F0                 1046 	movx	@dptr,a
   05F8 90 00 EB           1047 	mov	dptr,#(_a + 0x006b)
   05FB 74 B8              1048 	mov	a,#0xB8
   05FD F0                 1049 	movx	@dptr,a
   05FE 90 00 EC           1050 	mov	dptr,#(_a + 0x006c)
   0601 74 66              1051 	mov	a,#0x66
   0603 F0                 1052 	movx	@dptr,a
   0604 90 00 ED           1053 	mov	dptr,#(_a + 0x006d)
   0607 74 0D              1054 	mov	a,#0x0D
   0609 F0                 1055 	movx	@dptr,a
   060A 90 00 EE           1056 	mov	dptr,#(_a + 0x006e)
   060D 74 5D              1057 	mov	a,#0x5D
   060F F0                 1058 	movx	@dptr,a
   0610 90 00 EF           1059 	mov	dptr,#(_a + 0x006f)
   0613 74 3B              1060 	mov	a,#0x3B
   0615 F0                 1061 	movx	@dptr,a
   0616 90 00 F0           1062 	mov	dptr,#(_a + 0x0070)
   0619 74 2F              1063 	mov	a,#0x2F
   061B F0                 1064 	movx	@dptr,a
   061C 90 00 F1           1065 	mov	dptr,#(_a + 0x0071)
   061F 74 C4              1066 	mov	a,#0xC4
   0621 F0                 1067 	movx	@dptr,a
   0622 90 00 F2           1068 	mov	dptr,#(_a + 0x0072)
   0625 74 4A              1069 	mov	a,#0x4A
   0627 F0                 1070 	movx	@dptr,a
   0628 90 00 F3           1071 	mov	dptr,#(_a + 0x0073)
   062B 74 D1              1072 	mov	a,#0xD1
   062D F0                 1073 	movx	@dptr,a
   062E 90 00 F4           1074 	mov	dptr,#(_a + 0x0074)
   0631 74 0B              1075 	mov	a,#0x0B
   0633 F0                 1076 	movx	@dptr,a
   0634 90 00 F5           1077 	mov	dptr,#(_a + 0x0075)
   0637 74 36              1078 	mov	a,#0x36
   0639 F0                 1079 	movx	@dptr,a
   063A 90 00 F6           1080 	mov	dptr,#(_a + 0x0076)
   063D 74 C6              1081 	mov	a,#0xC6
   063F F0                 1082 	movx	@dptr,a
   0640 90 00 F7           1083 	mov	dptr,#(_a + 0x0077)
   0643 74 10              1084 	mov	a,#0x10
   0645 F0                 1085 	movx	@dptr,a
   0646 90 00 F8           1086 	mov	dptr,#(_a + 0x0078)
   0649 74 1A              1087 	mov	a,#0x1A
   064B F0                 1088 	movx	@dptr,a
   064C 90 00 F9           1089 	mov	dptr,#(_a + 0x0079)
   064F 74 2F              1090 	mov	a,#0x2F
   0651 F0                 1091 	movx	@dptr,a
   0652 90 00 FA           1092 	mov	dptr,#(_a + 0x007a)
   0655 74 72              1093 	mov	a,#0x72
   0657 F0                 1094 	movx	@dptr,a
   0658 90 00 FB           1095 	mov	dptr,#(_a + 0x007b)
   065B 74 D1              1096 	mov	a,#0xD1
   065D F0                 1097 	movx	@dptr,a
   065E 90 00 FC           1098 	mov	dptr,#(_a + 0x007c)
   0661 74 BB              1099 	mov	a,#0xBB
   0663 F0                 1100 	movx	@dptr,a
   0664 90 00 FD           1101 	mov	dptr,#(_a + 0x007d)
   0667 74 15              1102 	mov	a,#0x15
   0669 F0                 1103 	movx	@dptr,a
   066A 90 00 FE           1104 	mov	dptr,#(_a + 0x007e)
   066D 74 29              1105 	mov	a,#0x29
   066F F0                 1106 	movx	@dptr,a
   0670 90 00 FF           1107 	mov	dptr,#(_a + 0x007f)
   0673 74 CA              1108 	mov	a,#0xCA
   0675 F0                 1109 	movx	@dptr,a
                           1110 ;	main_montgomery.c:12: volatile __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0676 90 01 00           1111 	mov	dptr,#_b
   0679 74 E1              1112 	mov	a,#0xE1
   067B F0                 1113 	movx	@dptr,a
   067C 90 01 01           1114 	mov	dptr,#(_b + 0x0001)
   067F 74 8A              1115 	mov	a,#0x8A
   0681 F0                 1116 	movx	@dptr,a
   0682 90 01 02           1117 	mov	dptr,#(_b + 0x0002)
   0685 74 03              1118 	mov	a,#0x03
   0687 F0                 1119 	movx	@dptr,a
   0688 90 01 03           1120 	mov	dptr,#(_b + 0x0003)
   068B 74 DB              1121 	mov	a,#0xDB
   068D F0                 1122 	movx	@dptr,a
   068E 90 01 04           1123 	mov	dptr,#(_b + 0x0004)
   0691 74 E0              1124 	mov	a,#0xE0
   0693 F0                 1125 	movx	@dptr,a
   0694 90 01 05           1126 	mov	dptr,#(_b + 0x0005)
   0697 74 D9              1127 	mov	a,#0xD9
   0699 F0                 1128 	movx	@dptr,a
   069A 90 01 06           1129 	mov	dptr,#(_b + 0x0006)
   069D 74 F6              1130 	mov	a,#0xF6
   069F F0                 1131 	movx	@dptr,a
   06A0 90 01 07           1132 	mov	dptr,#(_b + 0x0007)
   06A3 74 55              1133 	mov	a,#0x55
   06A5 F0                 1134 	movx	@dptr,a
   06A6 90 01 08           1135 	mov	dptr,#(_b + 0x0008)
   06A9 74 B6              1136 	mov	a,#0xB6
   06AB F0                 1137 	movx	@dptr,a
   06AC 90 01 09           1138 	mov	dptr,#(_b + 0x0009)
   06AF 74 27              1139 	mov	a,#0x27
   06B1 F0                 1140 	movx	@dptr,a
   06B2 90 01 0A           1141 	mov	dptr,#(_b + 0x000a)
   06B5 74 0A              1142 	mov	a,#0x0A
   06B7 F0                 1143 	movx	@dptr,a
   06B8 90 01 0B           1144 	mov	dptr,#(_b + 0x000b)
   06BB 74 28              1145 	mov	a,#0x28
   06BD F0                 1146 	movx	@dptr,a
   06BE 90 01 0C           1147 	mov	dptr,#(_b + 0x000c)
   06C1 74 F0              1148 	mov	a,#0xF0
   06C3 F0                 1149 	movx	@dptr,a
   06C4 90 01 0D           1150 	mov	dptr,#(_b + 0x000d)
   06C7 74 5E              1151 	mov	a,#0x5E
   06C9 F0                 1152 	movx	@dptr,a
   06CA 90 01 0E           1153 	mov	dptr,#(_b + 0x000e)
   06CD 74 74              1154 	mov	a,#0x74
   06CF F0                 1155 	movx	@dptr,a
   06D0 90 01 0F           1156 	mov	dptr,#(_b + 0x000f)
   06D3 74 7F              1157 	mov	a,#0x7F
   06D5 F0                 1158 	movx	@dptr,a
   06D6 90 01 10           1159 	mov	dptr,#(_b + 0x0010)
   06D9 74 E6              1160 	mov	a,#0xE6
   06DB F0                 1161 	movx	@dptr,a
   06DC 90 01 11           1162 	mov	dptr,#(_b + 0x0011)
   06DF 74 9F              1163 	mov	a,#0x9F
   06E1 F0                 1164 	movx	@dptr,a
   06E2 90 01 12           1165 	mov	dptr,#(_b + 0x0012)
   06E5 74 4C              1166 	mov	a,#0x4C
   06E7 F0                 1167 	movx	@dptr,a
   06E8 90 01 13           1168 	mov	dptr,#(_b + 0x0013)
   06EB 74 FB              1169 	mov	a,#0xFB
   06ED F0                 1170 	movx	@dptr,a
   06EE 90 01 14           1171 	mov	dptr,#(_b + 0x0014)
   06F1 74 26              1172 	mov	a,#0x26
   06F3 F0                 1173 	movx	@dptr,a
   06F4 90 01 15           1174 	mov	dptr,#(_b + 0x0015)
   06F7 74 8C              1175 	mov	a,#0x8C
   06F9 F0                 1176 	movx	@dptr,a
   06FA 90 01 16           1177 	mov	dptr,#(_b + 0x0016)
   06FD 74 9E              1178 	mov	a,#0x9E
   06FF F0                 1179 	movx	@dptr,a
   0700 90 01 17           1180 	mov	dptr,#(_b + 0x0017)
   0703 74 87              1181 	mov	a,#0x87
   0705 F0                 1182 	movx	@dptr,a
   0706 90 01 18           1183 	mov	dptr,#(_b + 0x0018)
   0709 74 83              1184 	mov	a,#0x83
   070B F0                 1185 	movx	@dptr,a
   070C 90 01 19           1186 	mov	dptr,#(_b + 0x0019)
   070F 74 22              1187 	mov	a,#0x22
   0711 F0                 1188 	movx	@dptr,a
   0712 90 01 1A           1189 	mov	dptr,#(_b + 0x001a)
   0715 74 F2              1190 	mov	a,#0xF2
   0717 F0                 1191 	movx	@dptr,a
   0718 90 01 1B           1192 	mov	dptr,#(_b + 0x001b)
   071B 74 75              1193 	mov	a,#0x75
   071D F0                 1194 	movx	@dptr,a
   071E 90 01 1C           1195 	mov	dptr,#(_b + 0x001c)
   0721 74 D2              1196 	mov	a,#0xD2
   0723 F0                 1197 	movx	@dptr,a
   0724 90 01 1D           1198 	mov	dptr,#(_b + 0x001d)
   0727 74 B3              1199 	mov	a,#0xB3
   0729 F0                 1200 	movx	@dptr,a
   072A 90 01 1E           1201 	mov	dptr,#(_b + 0x001e)
   072D 74 61              1202 	mov	a,#0x61
   072F F0                 1203 	movx	@dptr,a
   0730 90 01 1F           1204 	mov	dptr,#(_b + 0x001f)
   0733 74 A2              1205 	mov	a,#0xA2
   0735 F0                 1206 	movx	@dptr,a
   0736 90 01 20           1207 	mov	dptr,#(_b + 0x0020)
   0739 74 9D              1208 	mov	a,#0x9D
   073B F0                 1209 	movx	@dptr,a
   073C 90 01 21           1210 	mov	dptr,#(_b + 0x0021)
   073F 74 50              1211 	mov	a,#0x50
   0741 F0                 1212 	movx	@dptr,a
   0742 90 01 22           1213 	mov	dptr,#(_b + 0x0022)
   0745 74 71              1214 	mov	a,#0x71
   0747 F0                 1215 	movx	@dptr,a
   0748 90 01 23           1216 	mov	dptr,#(_b + 0x0023)
   074B 74 5E              1217 	mov	a,#0x5E
   074D F0                 1218 	movx	@dptr,a
   074E 90 01 24           1219 	mov	dptr,#(_b + 0x0024)
   0751 74 C9              1220 	mov	a,#0xC9
   0753 F0                 1221 	movx	@dptr,a
   0754 90 01 25           1222 	mov	dptr,#(_b + 0x0025)
   0757 74 DD              1223 	mov	a,#0xDD
   0759 F0                 1224 	movx	@dptr,a
   075A 90 01 26           1225 	mov	dptr,#(_b + 0x0026)
   075D 74 DD              1226 	mov	a,#0xDD
   075F F0                 1227 	movx	@dptr,a
   0760 90 01 27           1228 	mov	dptr,#(_b + 0x0027)
   0763 74 74              1229 	mov	a,#0x74
   0765 F0                 1230 	movx	@dptr,a
   0766 90 01 28           1231 	mov	dptr,#(_b + 0x0028)
   0769 74 0A              1232 	mov	a,#0x0A
   076B F0                 1233 	movx	@dptr,a
   076C 90 01 29           1234 	mov	dptr,#(_b + 0x0029)
   076F 74 3C              1235 	mov	a,#0x3C
   0771 F0                 1236 	movx	@dptr,a
   0772 90 01 2A           1237 	mov	dptr,#(_b + 0x002a)
   0775 74 C0              1238 	mov	a,#0xC0
   0777 F0                 1239 	movx	@dptr,a
   0778 90 01 2B           1240 	mov	dptr,#(_b + 0x002b)
   077B 74 30              1241 	mov	a,#0x30
   077D F0                 1242 	movx	@dptr,a
   077E 90 01 2C           1243 	mov	dptr,#(_b + 0x002c)
   0781 74 3E              1244 	mov	a,#0x3E
   0783 F0                 1245 	movx	@dptr,a
   0784 90 01 2D           1246 	mov	dptr,#(_b + 0x002d)
   0787 74 E5              1247 	mov	a,#0xE5
   0789 F0                 1248 	movx	@dptr,a
   078A 90 01 2E           1249 	mov	dptr,#(_b + 0x002e)
   078D 74 20              1250 	mov	a,#0x20
   078F F0                 1251 	movx	@dptr,a
   0790 90 01 2F           1252 	mov	dptr,#(_b + 0x002f)
   0793 74 02              1253 	mov	a,#0x02
   0795 F0                 1254 	movx	@dptr,a
   0796 90 01 30           1255 	mov	dptr,#(_b + 0x0030)
   0799 74 B3              1256 	mov	a,#0xB3
   079B F0                 1257 	movx	@dptr,a
   079C 90 01 31           1258 	mov	dptr,#(_b + 0x0031)
   079F 74 12              1259 	mov	a,#0x12
   07A1 F0                 1260 	movx	@dptr,a
   07A2 90 01 32           1261 	mov	dptr,#(_b + 0x0032)
   07A5 74 4F              1262 	mov	a,#0x4F
   07A7 F0                 1263 	movx	@dptr,a
   07A8 90 01 33           1264 	mov	dptr,#(_b + 0x0033)
   07AB 74 AB              1265 	mov	a,#0xAB
   07AD F0                 1266 	movx	@dptr,a
   07AE 90 01 34           1267 	mov	dptr,#(_b + 0x0034)
   07B1 74 60              1268 	mov	a,#0x60
   07B3 F0                 1269 	movx	@dptr,a
   07B4 90 01 35           1270 	mov	dptr,#(_b + 0x0035)
   07B7 74 27              1271 	mov	a,#0x27
   07B9 F0                 1272 	movx	@dptr,a
   07BA 90 01 36           1273 	mov	dptr,#(_b + 0x0036)
   07BD 74 07              1274 	mov	a,#0x07
   07BF F0                 1275 	movx	@dptr,a
   07C0 90 01 37           1276 	mov	dptr,#(_b + 0x0037)
   07C3 74 17              1277 	mov	a,#0x17
   07C5 F0                 1278 	movx	@dptr,a
   07C6 90 01 38           1279 	mov	dptr,#(_b + 0x0038)
   07C9 74 DD              1280 	mov	a,#0xDD
   07CB F0                 1281 	movx	@dptr,a
   07CC 90 01 39           1282 	mov	dptr,#(_b + 0x0039)
   07CF E4                 1283 	clr	a
   07D0 F0                 1284 	movx	@dptr,a
   07D1 90 01 3A           1285 	mov	dptr,#(_b + 0x003a)
   07D4 74 C2              1286 	mov	a,#0xC2
   07D6 F0                 1287 	movx	@dptr,a
   07D7 90 01 3B           1288 	mov	dptr,#(_b + 0x003b)
   07DA 74 E1              1289 	mov	a,#0xE1
   07DC F0                 1290 	movx	@dptr,a
   07DD 90 01 3C           1291 	mov	dptr,#(_b + 0x003c)
   07E0 74 BC              1292 	mov	a,#0xBC
   07E2 F0                 1293 	movx	@dptr,a
   07E3 90 01 3D           1294 	mov	dptr,#(_b + 0x003d)
   07E6 74 04              1295 	mov	a,#0x04
   07E8 F0                 1296 	movx	@dptr,a
   07E9 90 01 3E           1297 	mov	dptr,#(_b + 0x003e)
   07EC 74 AE              1298 	mov	a,#0xAE
   07EE F0                 1299 	movx	@dptr,a
   07EF 90 01 3F           1300 	mov	dptr,#(_b + 0x003f)
   07F2 74 21              1301 	mov	a,#0x21
   07F4 F0                 1302 	movx	@dptr,a
   07F5 90 01 40           1303 	mov	dptr,#(_b + 0x0040)
   07F8 74 38              1304 	mov	a,#0x38
   07FA F0                 1305 	movx	@dptr,a
   07FB 90 01 41           1306 	mov	dptr,#(_b + 0x0041)
   07FE 74 CA              1307 	mov	a,#0xCA
   0800 F0                 1308 	movx	@dptr,a
   0801 90 01 42           1309 	mov	dptr,#(_b + 0x0042)
   0804 74 AA              1310 	mov	a,#0xAA
   0806 F0                 1311 	movx	@dptr,a
   0807 90 01 43           1312 	mov	dptr,#(_b + 0x0043)
   080A 74 8F              1313 	mov	a,#0x8F
   080C F0                 1314 	movx	@dptr,a
   080D 90 01 44           1315 	mov	dptr,#(_b + 0x0044)
   0810 74 74              1316 	mov	a,#0x74
   0812 F0                 1317 	movx	@dptr,a
   0813 90 01 45           1318 	mov	dptr,#(_b + 0x0045)
   0816 74 D5              1319 	mov	a,#0xD5
   0818 F0                 1320 	movx	@dptr,a
   0819 90 01 46           1321 	mov	dptr,#(_b + 0x0046)
   081C 74 02              1322 	mov	a,#0x02
   081E F0                 1323 	movx	@dptr,a
   081F 90 01 47           1324 	mov	dptr,#(_b + 0x0047)
   0822 74 10              1325 	mov	a,#0x10
   0824 F0                 1326 	movx	@dptr,a
   0825 90 01 48           1327 	mov	dptr,#(_b + 0x0048)
   0828 74 15              1328 	mov	a,#0x15
   082A F0                 1329 	movx	@dptr,a
   082B 90 01 49           1330 	mov	dptr,#(_b + 0x0049)
   082E 74 87              1331 	mov	a,#0x87
   0830 F0                 1332 	movx	@dptr,a
   0831 90 01 4A           1333 	mov	dptr,#(_b + 0x004a)
   0834 74 58              1334 	mov	a,#0x58
   0836 F0                 1335 	movx	@dptr,a
   0837 90 01 4B           1336 	mov	dptr,#(_b + 0x004b)
   083A 74 08              1337 	mov	a,#0x08
   083C F0                 1338 	movx	@dptr,a
   083D 90 01 4C           1339 	mov	dptr,#(_b + 0x004c)
   0840 74 CC              1340 	mov	a,#0xCC
   0842 F0                 1341 	movx	@dptr,a
   0843 90 01 4D           1342 	mov	dptr,#(_b + 0x004d)
   0846 74 9A              1343 	mov	a,#0x9A
   0848 F0                 1344 	movx	@dptr,a
   0849 90 01 4E           1345 	mov	dptr,#(_b + 0x004e)
   084C 74 42              1346 	mov	a,#0x42
   084E F0                 1347 	movx	@dptr,a
   084F 90 01 4F           1348 	mov	dptr,#(_b + 0x004f)
   0852 74 BD              1349 	mov	a,#0xBD
   0854 F0                 1350 	movx	@dptr,a
   0855 90 01 50           1351 	mov	dptr,#(_b + 0x0050)
   0858 74 02              1352 	mov	a,#0x02
   085A F0                 1353 	movx	@dptr,a
   085B 90 01 51           1354 	mov	dptr,#(_b + 0x0051)
   085E 74 97              1355 	mov	a,#0x97
   0860 F0                 1356 	movx	@dptr,a
   0861 90 01 52           1357 	mov	dptr,#(_b + 0x0052)
   0864 74 CE              1358 	mov	a,#0xCE
   0866 F0                 1359 	movx	@dptr,a
   0867 90 01 53           1360 	mov	dptr,#(_b + 0x0053)
   086A 74 2B              1361 	mov	a,#0x2B
   086C F0                 1362 	movx	@dptr,a
   086D 90 01 54           1363 	mov	dptr,#(_b + 0x0054)
   0870 74 39              1364 	mov	a,#0x39
   0872 F0                 1365 	movx	@dptr,a
   0873 90 01 55           1366 	mov	dptr,#(_b + 0x0055)
   0876 74 38              1367 	mov	a,#0x38
   0878 F0                 1368 	movx	@dptr,a
   0879 90 01 56           1369 	mov	dptr,#(_b + 0x0056)
   087C 74 99              1370 	mov	a,#0x99
   087E F0                 1371 	movx	@dptr,a
   087F 90 01 57           1372 	mov	dptr,#(_b + 0x0057)
   0882 74 AC              1373 	mov	a,#0xAC
   0884 F0                 1374 	movx	@dptr,a
   0885 90 01 58           1375 	mov	dptr,#(_b + 0x0058)
   0888 74 81              1376 	mov	a,#0x81
   088A F0                 1377 	movx	@dptr,a
   088B 90 01 59           1378 	mov	dptr,#(_b + 0x0059)
   088E 74 BB              1379 	mov	a,#0xBB
   0890 F0                 1380 	movx	@dptr,a
   0891 90 01 5A           1381 	mov	dptr,#(_b + 0x005a)
   0894 74 C3              1382 	mov	a,#0xC3
   0896 F0                 1383 	movx	@dptr,a
   0897 90 01 5B           1384 	mov	dptr,#(_b + 0x005b)
   089A 74 FF              1385 	mov	a,#0xFF
   089C F0                 1386 	movx	@dptr,a
   089D 90 01 5C           1387 	mov	dptr,#(_b + 0x005c)
   08A0 74 BC              1388 	mov	a,#0xBC
   08A2 F0                 1389 	movx	@dptr,a
   08A3 90 01 5D           1390 	mov	dptr,#(_b + 0x005d)
   08A6 74 C1              1391 	mov	a,#0xC1
   08A8 F0                 1392 	movx	@dptr,a
   08A9 90 01 5E           1393 	mov	dptr,#(_b + 0x005e)
   08AC 74 B8              1394 	mov	a,#0xB8
   08AE F0                 1395 	movx	@dptr,a
   08AF 90 01 5F           1396 	mov	dptr,#(_b + 0x005f)
   08B2 74 E1              1397 	mov	a,#0xE1
   08B4 F0                 1398 	movx	@dptr,a
   08B5 90 01 60           1399 	mov	dptr,#(_b + 0x0060)
   08B8 74 24              1400 	mov	a,#0x24
   08BA F0                 1401 	movx	@dptr,a
   08BB 90 01 61           1402 	mov	dptr,#(_b + 0x0061)
   08BE 74 8D              1403 	mov	a,#0x8D
   08C0 F0                 1404 	movx	@dptr,a
   08C1 90 01 62           1405 	mov	dptr,#(_b + 0x0062)
   08C4 74 C5              1406 	mov	a,#0xC5
   08C6 F0                 1407 	movx	@dptr,a
   08C7 90 01 63           1408 	mov	dptr,#(_b + 0x0063)
   08CA 74 20              1409 	mov	a,#0x20
   08CC F0                 1410 	movx	@dptr,a
   08CD 90 01 64           1411 	mov	dptr,#(_b + 0x0064)
   08D0 74 89              1412 	mov	a,#0x89
   08D2 F0                 1413 	movx	@dptr,a
   08D3 90 01 65           1414 	mov	dptr,#(_b + 0x0065)
   08D6 74 98              1415 	mov	a,#0x98
   08D8 F0                 1416 	movx	@dptr,a
   08D9 90 01 66           1417 	mov	dptr,#(_b + 0x0066)
   08DC 74 0B              1418 	mov	a,#0x0B
   08DE F0                 1419 	movx	@dptr,a
   08DF 90 01 67           1420 	mov	dptr,#(_b + 0x0067)
   08E2 74 50              1421 	mov	a,#0x50
   08E4 F0                 1422 	movx	@dptr,a
   08E5 90 01 68           1423 	mov	dptr,#(_b + 0x0068)
   08E8 74 B1              1424 	mov	a,#0xB1
   08EA F0                 1425 	movx	@dptr,a
   08EB 90 01 69           1426 	mov	dptr,#(_b + 0x0069)
   08EE 74 16              1427 	mov	a,#0x16
   08F0 F0                 1428 	movx	@dptr,a
   08F1 90 01 6A           1429 	mov	dptr,#(_b + 0x006a)
   08F4 74 9A              1430 	mov	a,#0x9A
   08F6 F0                 1431 	movx	@dptr,a
   08F7 90 01 6B           1432 	mov	dptr,#(_b + 0x006b)
   08FA 74 2D              1433 	mov	a,#0x2D
   08FC F0                 1434 	movx	@dptr,a
   08FD 90 01 6C           1435 	mov	dptr,#(_b + 0x006c)
   0900 74 6E              1436 	mov	a,#0x6E
   0902 F0                 1437 	movx	@dptr,a
   0903 90 01 6D           1438 	mov	dptr,#(_b + 0x006d)
   0906 74 5A              1439 	mov	a,#0x5A
   0908 F0                 1440 	movx	@dptr,a
   0909 90 01 6E           1441 	mov	dptr,#(_b + 0x006e)
   090C 74 7B              1442 	mov	a,#0x7B
   090E F0                 1443 	movx	@dptr,a
   090F 90 01 6F           1444 	mov	dptr,#(_b + 0x006f)
   0912 74 2F              1445 	mov	a,#0x2F
   0914 F0                 1446 	movx	@dptr,a
   0915 90 01 70           1447 	mov	dptr,#(_b + 0x0070)
   0918 74 D4              1448 	mov	a,#0xD4
   091A F0                 1449 	movx	@dptr,a
   091B 90 01 71           1450 	mov	dptr,#(_b + 0x0071)
   091E 74 92              1451 	mov	a,#0x92
   0920 F0                 1452 	movx	@dptr,a
   0921 90 01 72           1453 	mov	dptr,#(_b + 0x0072)
   0924 74 A1              1454 	mov	a,#0xA1
   0926 F0                 1455 	movx	@dptr,a
   0927 90 01 73           1456 	mov	dptr,#(_b + 0x0073)
   092A 74 AA              1457 	mov	a,#0xAA
   092C F0                 1458 	movx	@dptr,a
   092D 90 01 74           1459 	mov	dptr,#(_b + 0x0074)
   0930 74 A6              1460 	mov	a,#0xA6
   0932 F0                 1461 	movx	@dptr,a
   0933 90 01 75           1462 	mov	dptr,#(_b + 0x0075)
   0936 74 E5              1463 	mov	a,#0xE5
   0938 F0                 1464 	movx	@dptr,a
   0939 90 01 76           1465 	mov	dptr,#(_b + 0x0076)
   093C 74 A6              1466 	mov	a,#0xA6
   093E F0                 1467 	movx	@dptr,a
   093F 90 01 77           1468 	mov	dptr,#(_b + 0x0077)
   0942 74 D2              1469 	mov	a,#0xD2
   0944 F0                 1470 	movx	@dptr,a
   0945 90 01 78           1471 	mov	dptr,#(_b + 0x0078)
   0948 74 0D              1472 	mov	a,#0x0D
   094A F0                 1473 	movx	@dptr,a
   094B 90 01 79           1474 	mov	dptr,#(_b + 0x0079)
   094E 74 0B              1475 	mov	a,#0x0B
   0950 F0                 1476 	movx	@dptr,a
   0951 90 01 7A           1477 	mov	dptr,#(_b + 0x007a)
   0954 74 B7              1478 	mov	a,#0xB7
   0956 F0                 1479 	movx	@dptr,a
   0957 90 01 7B           1480 	mov	dptr,#(_b + 0x007b)
   095A 74 B2              1481 	mov	a,#0xB2
   095C F0                 1482 	movx	@dptr,a
   095D 90 01 7C           1483 	mov	dptr,#(_b + 0x007c)
   0960 74 25              1484 	mov	a,#0x25
   0962 F0                 1485 	movx	@dptr,a
   0963 90 01 7D           1486 	mov	dptr,#(_b + 0x007d)
   0966 74 23              1487 	mov	a,#0x23
   0968 F0                 1488 	movx	@dptr,a
   0969 90 01 7E           1489 	mov	dptr,#(_b + 0x007e)
   096C 74 23              1490 	mov	a,#0x23
   096E F0                 1491 	movx	@dptr,a
   096F 90 01 7F           1492 	mov	dptr,#(_b + 0x007f)
   0972 74 BE              1493 	mov	a,#0xBE
   0974 F0                 1494 	movx	@dptr,a
                           1495 ;	main_montgomery.c:13: volatile __xdata __at (0x0300) unsigned char n_prime = 0xA5;
   0975 90 03 00           1496 	mov	dptr,#_n_prime
   0978 74 A5              1497 	mov	a,#0xA5
   097A F0                 1498 	movx	@dptr,a
                           1499 	.area GSFINAL (CODE)
   097B 02 00 03           1500 	ljmp	__sdcc_program_startup
                           1501 ;--------------------------------------------------------
                           1502 ; Home
                           1503 ;--------------------------------------------------------
                           1504 	.area HOME    (CODE)
                           1505 	.area HOME    (CODE)
   0003                    1506 __sdcc_program_startup:
   0003 12 09 7E           1507 	lcall	_main
                           1508 ;	return from main will lock up
   0006 80 FE              1509 	sjmp .
                           1510 ;--------------------------------------------------------
                           1511 ; code
                           1512 ;--------------------------------------------------------
                           1513 	.area CSEG    (CODE)
                           1514 ;------------------------------------------------------------
                           1515 ;Allocation info for local variables in function 'main'
                           1516 ;------------------------------------------------------------
                           1517 ;------------------------------------------------------------
                           1518 ;	main_montgomery.c:24: int main() {
                           1519 ;	-----------------------------------------
                           1520 ;	 function main
                           1521 ;	-----------------------------------------
   097E                    1522 _main:
                    0002   1523 	ar2 = 0x02
                    0003   1524 	ar3 = 0x03
                    0004   1525 	ar4 = 0x04
                    0005   1526 	ar5 = 0x05
                    0006   1527 	ar6 = 0x06
                    0007   1528 	ar7 = 0x07
                    0000   1529 	ar0 = 0x00
                    0001   1530 	ar1 = 0x01
                           1531 ;	main_montgomery.c:25: startBrk=1;
   097E 90 FF FE           1532 	mov	dptr,#_startBrk
   0981 74 01              1533 	mov	a,#0x01
   0983 F0                 1534 	movx	@dptr,a
                           1535 ;	main_montgomery.c:27: fips();
   0984 12 09 91           1536 	lcall	_fips
                           1537 ;	main_montgomery.c:29: endBrk=1;
   0987 90 FF FF           1538 	mov	dptr,#_endBrk
   098A 74 01              1539 	mov	a,#0x01
   098C F0                 1540 	movx	@dptr,a
                           1541 ;	main_montgomery.c:30: return 0;
   098D 90 00 00           1542 	mov	dptr,#0x0000
   0990 22                 1543 	ret
                           1544 ;------------------------------------------------------------
                           1545 ;Allocation info for local variables in function 'fips'
                           1546 ;------------------------------------------------------------
                           1547 ;------------------------------------------------------------
                           1548 ;	main_montgomery.c:33: void fips() {
                           1549 ;	-----------------------------------------
                           1550 ;	 function fips
                           1551 ;	-----------------------------------------
   0991                    1552 _fips:
                           1553 ;	main_montgomery.c:34: for (i = 0; i < SIZE; i++) {
   0991 E4                 1554 	clr	a
   0992 F5 08              1555 	mov	_i,a
   0994 F5 09              1556 	mov	(_i + 1),a
   0996                    1557 00105$:
   0996 C3                 1558 	clr	c
   0997 E5 08              1559 	mov	a,_i
   0999 94 80              1560 	subb	a,#0x80
   099B E5 09              1561 	mov	a,(_i + 1)
   099D 94 00              1562 	subb	a,#0x00
   099F 40 03              1563 	jc	00126$
   09A1 02 0A 63           1564 	ljmp	00108$
   09A4                    1565 00126$:
                           1566 ;	main_montgomery.c:35: for (j = 0; j < i; j++) {
   09A4 E4                 1567 	clr	a
   09A5 F5 0A              1568 	mov	_j,a
   09A7 F5 0B              1569 	mov	(_j + 1),a
   09A9                    1570 00101$:
   09A9 C3                 1571 	clr	c
   09AA E5 0A              1572 	mov	a,_j
   09AC 95 08              1573 	subb	a,_i
   09AE E5 0B              1574 	mov	a,(_j + 1)
   09B0 95 09              1575 	subb	a,(_i + 1)
   09B2 40 03              1576 	jc	00127$
   09B4 02 0A 0F           1577 	ljmp	00104$
   09B7                    1578 00127$:
                           1579 ;	main_montgomery.c:135: __endasm;
                           1580 	
                           1581     ; load j in lower
   09B7 85 0A 82           1582 	    mov dpl, _j
                           1583 	
                           1584     ; set address of a in higher
   09BA 75 83 00           1585 	    mov dph, #(_a >> 8)
                           1586     ; load a[j]
   09BD E0                 1587 	    movx a, @dptr
   09BE F5 F0              1588 	    mov b, a
                           1589 	
                           1590     ; load m[j] in r0
   09C0 75 83 04           1591 	    mov dph, #(_m >> 8)
   09C3 E0                 1592 	    movx a, @dptr
   09C4 F8                 1593 	    mov r0, a
                           1594 	
                           1595     ; calculate i-j and store in r5
   09C5 E5 08              1596 	    mov a, _i
   09C7 C3                 1597 	    clr c
   09C8 95 0A              1598 	    subb a, _j
   09CA FD                 1599 	    mov r5, a
                           1600 	
                           1601     ; load b[i-j]
   09CB 24 00              1602 	    add a, #_b
   09CD F5 82              1603 	    mov dpl, a
   09CF E4                 1604 	    clr a
   09D0 34 01              1605 	    addc a, #(_b >> 8)
   09D2 F5 83              1606 	    mov dph, a
   09D4 E0                 1607 	    movx a, @dptr
                           1608 	
                           1609     ; a[j]*b[i-j]
   09D5 A4                 1610 	    mul ab
                           1611 	
                           1612     ; t[0] + a[j]*b[i-j]
   09D6 25 0D              1613 	    add a, _t
                           1614 	
                           1615     ; store result in r2 (this is s)
   09D8 FA                 1616 	    mov r2, a
                           1617     ; load t[1]
   09D9 E5 0E              1618 	    mov a, (_t + 0x0001)
                           1619 	
                           1620     ; add carry to t[1]
   09DB 35 F0              1621 	    addc a, b
   09DD F5 0E              1622 	    mov (_t + 0x0001), a
                           1623     ; load t[2]
   09DF E5 0F              1624 	    mov a, (_t + 0x0002)
                           1625     ; add carry to t[2]
   09E1 34 00              1626 	    addc a, #0x00
   09E3 F5 0F              1627 	    mov (_t + 0x0002), a
                           1628 	
                           1629     ; load i-j
   09E5 ED                 1630 	    mov a, r5
                           1631 	
                           1632     ; load n[i-j]
   09E6 24 00              1633 	    add a, #_n
   09E8 F5 82              1634 	    mov dpl, a
   09EA E4                 1635 	    clr a
   09EB 34 00              1636 	    addc a, #(_n >> 8)
   09ED F5 83              1637 	    mov dph, a
   09EF E0                 1638 	    movx a, @dptr
                           1639 	
                           1640     ; load r0 (this is m[j])
   09F0 88 F0              1641 	    mov b, r0
                           1642     ; m[j] * n[i-j]
   09F2 A4                 1643 	    mul ab
                           1644     ; s + m[j] * n[i-j]
   09F3 2A                 1645 	    add a, r2
                           1646 	
                           1647     ; t[0] = s
   09F4 F5 0D              1648 	    mov _t, a
                           1649 	
                           1650     ; load carry to a
   09F6 74 00              1651 	    mov a, #0x00
   09F8 35 F0              1652 	    addc a, b
                           1653 	
                           1654     ; t[1] + c
   09FA 25 0E              1655 	    add a, (_t + 0x0001)
   09FC F5 0E              1656 	    mov (_t + 0x0001), a
   09FE E5 0F              1657 	    mov a, (_t + 0x0002)
   0A00 35 00              1658 	    addc a, 0x00
   0A02 F5 0F              1659 	    mov (_t + 0x0002), a
                           1660 	    
                           1661 ;	main_montgomery.c:35: for (j = 0; j < i; j++) {
   0A04 05 0A              1662 	inc	_j
   0A06 E4                 1663 	clr	a
   0A07 B5 0A 9F           1664 	cjne	a,_j,00101$
   0A0A 05 0B              1665 	inc	(_j + 1)
   0A0C 02 09 A9           1666 	ljmp	00101$
   0A0F                    1667 00104$:
                           1668 ;	main_montgomery.c:220: __endasm;
                           1669 	
                           1670    ; load i in higher
   0A0F 85 08 82           1671 	   mov dpl, _i
                           1672 	
                           1673    ; load a[i]
   0A12 75 83 00           1674 	   mov dph, #(_a >> 8)
   0A15 E0                 1675 	   movx a, @dptr
   0A16 F5 F0              1676 	   mov b, a
                           1677 	
                           1678    ; load b[0]
   0A18 E4                 1679 	   clr a
   0A19 75 83 01           1680 	   mov dph, #(_b >> 8)
   0A1C E0                 1681 	   movx a, @dptr
                           1682 	
                           1683    ; a[i] * b[0]
   0A1D A4                 1684 	   mul ab
                           1685 	
                           1686    ; t[0] + a[i] * b[0]
   0A1E 25 0D              1687 	   add a, _t
                           1688 	
                           1689    ; save result in variable s
   0A20 F5 0C              1690 	   mov _s, a
                           1691    ; reset a
   0A22 74 00              1692 	   mov a, #0x00
                           1693    ; save b in a
   0A24 35 F0              1694 	   addc a, b
                           1695 	
                           1696    ; t[1] = t[1] + c
   0A26 25 0E              1697 	   add a, (_t + 0x0001)
   0A28 F5 0E              1698 	   mov (_t + 0x0001), a
                           1699    ; t[2] = t[2] + carry
   0A2A E5 0F              1700 	   mov a, (_t + 0x0002)
   0A2C 34 00              1701 	   addc a, #0x00
   0A2E F5 0F              1702 	   mov (_t + 0x0002), a
                           1703 	
                           1704    ; m[i] = (s*n_prime)%256
   0A30 90 03 00           1705 	   mov dptr, #_n_prime
   0A33 E0                 1706 	   movx a, @dptr
   0A34 85 0C F0           1707 	   mov b, _s
   0A37 A4                 1708 	   mul ab
   0A38 85 08 82           1709 	   mov dpl, _i
   0A3B 75 83 04           1710 	   mov dph, #(_m >> 8)
   0A3E F0                 1711 	   movx @dptr, a
   0A3F F5 F0              1712 	   mov b, a
                           1713 	
                           1714    ; s + m[i] * n[0]
   0A41 75 82 00           1715 	   mov dpl, #0x00
   0A44 75 83 00           1716 	   mov dph, #_n
   0A47 E0                 1717 	   movx a, @dptr
   0A48 A4                 1718 	   mul ab
   0A49 25 0C              1719 	   add a, _s
                           1720 	
   0A4B 25 0E              1721 	   add a, (_t + 0x0001)
   0A4D F5 0D              1722 	   mov _t, a
   0A4F E5 0F              1723 	   mov a, (_t + 0x0002)
   0A51 34 00              1724 	   addc a, #0x00
   0A53 F5 0E              1725 	   mov (_t + 0x0001), a
   0A55 85 00 0F           1726 	   mov (_t + 0x0002), 0x00
                           1727 	  
                           1728 ;	main_montgomery.c:34: for (i = 0; i < SIZE; i++) {
   0A58 05 08              1729 	inc	_i
   0A5A E4                 1730 	clr	a
   0A5B B5 08 02           1731 	cjne	a,_i,00128$
   0A5E 05 09              1732 	inc	(_i + 1)
   0A60                    1733 00128$:
   0A60 02 09 96           1734 	ljmp	00105$
   0A63                    1735 00108$:
                           1736 ;	main_montgomery.c:223: for (i = SIZE; i < 2*SIZE; i++) {
   0A63 75 08 80           1737 	mov	_i,#0x80
   0A66 E4                 1738 	clr	a
   0A67 F5 09              1739 	mov	(_i + 1),a
   0A69                    1740 00112$:
   0A69 74 FF              1741 	mov	a,#0x100 - 0x01
   0A6B 25 09              1742 	add	a,(_i + 1)
   0A6D 50 03              1743 	jnc	00129$
   0A6F 02 0B 0B           1744 	ljmp	00115$
   0A72                    1745 00129$:
                           1746 ;	main_montgomery.c:224: for (j = i-SIZE+1; j < SIZE; j++) {
   0A72 74 81              1747 	mov	a,#0x81
   0A74 25 08              1748 	add	a,_i
   0A76 FA                 1749 	mov	r2,a
   0A77 74 FF              1750 	mov	a,#0xFF
   0A79 35 09              1751 	addc	a,(_i + 1)
   0A7B FB                 1752 	mov	r3,a
   0A7C 74 80              1753 	mov	a,#0x80
   0A7E C3                 1754 	clr	c
   0A7F 9A                 1755 	subb	a,r2
   0A80 F5 0A              1756 	mov	_j,a
   0A82 E4                 1757 	clr	a
   0A83 9B                 1758 	subb	a,r3
   0A84 F5 0B              1759 	mov	(_j + 1),a
   0A86                    1760 00111$:
                           1761 ;	main_montgomery.c:323: __endasm;
                           1762 	
   0A86 85 0A 82           1763 	    mov dpl, _j
                           1764 	
                           1765     ; load a[j]
   0A89 75 83 00           1766 	    mov dph, #(_a >> 8)
   0A8C E0                 1767 	    movx a, @dptr
   0A8D F5 F0              1768 	    mov b, a
                           1769 	
                           1770     ; load m[j]
   0A8F 75 83 04           1771 	    mov dph, #(_m >> 8)
   0A92 E0                 1772 	    movx a, @dptr
   0A93 F8                 1773 	    mov r0, a
                           1774 	
                           1775     ; calculate i-j and store in r5
   0A94 E5 08              1776 	    mov a, _i
   0A96 C3                 1777 	    clr c
   0A97 95 0A              1778 	    subb a, _j
   0A99 FD                 1779 	    mov r5, a
                           1780 	
                           1781     ; load b[i-j]
   0A9A 24 00              1782 	    add a, #_b
   0A9C F5 82              1783 	    mov dpl, a
   0A9E E4                 1784 	    clr a
   0A9F 34 01              1785 	    addc a, #(_b >> 8)
   0AA1 F5 83              1786 	    mov dph, a
   0AA3 E0                 1787 	    movx a, @dptr
                           1788 	
                           1789     ; a[j] * b[i-j]
   0AA4 A4                 1790 	    mul ab
                           1791 	
                           1792     ; t[0] + a[j]*b[i-j]
   0AA5 25 0D              1793 	    add a, _t
                           1794 	
                           1795     ; store result in r2 (this is s)
   0AA7 FA                 1796 	    mov r2, a
                           1797     ; load t[1]
   0AA8 E5 0E              1798 	    mov a, (_t + 0x0001)
                           1799 	
                           1800     ; add carry to t[1]
   0AAA 35 F0              1801 	    addc a, b
   0AAC F5 0E              1802 	    mov (_t + 0x0001), a
                           1803     ; load t[2]
   0AAE E5 0F              1804 	    mov a, (_t + 0x0002)
                           1805     ; add carry to t[2]
   0AB0 34 00              1806 	    addc a, #0x00
   0AB2 F5 0F              1807 	    mov (_t + 0x0002), a
                           1808 	
                           1809     ; load i-j
   0AB4 ED                 1810 	    mov a, r5
                           1811 	
                           1812     ; load n[i-j]
   0AB5 24 00              1813 	    add a, #_n
   0AB7 F5 82              1814 	    mov dpl, a
   0AB9 E4                 1815 	    clr a
   0ABA 34 00              1816 	    addc a, #(_n >> 8)
   0ABC F5 83              1817 	    mov dph, a
   0ABE E0                 1818 	    movx a, @dptr
                           1819 	
                           1820     ; load r0 (this is m[j])
   0ABF 88 F0              1821 	    mov b, r0
                           1822     ; m[j] * n[i-j]
   0AC1 A4                 1823 	    mul ab
                           1824     ; s + m[j] * n[i-j]
   0AC2 2A                 1825 	    add a, r2
                           1826 	
                           1827     ; t[0] = s
   0AC3 F5 0D              1828 	    mov _t, a
                           1829 	
                           1830     ; load carry to a
   0AC5 74 00              1831 	    mov a, #0x00
   0AC7 35 F0              1832 	    addc a, b
                           1833 	
                           1834     ; t[1] + c
   0AC9 25 0E              1835 	    add a, (_t + 0x0001)
   0ACB F5 0E              1836 	    mov (_t + 0x0001), a
   0ACD E5 0F              1837 	    mov a, (_t + 0x0002)
   0ACF 35 00              1838 	    addc a, 0x00
   0AD1 F5 0F              1839 	    mov (_t + 0x0002), a
                           1840 	   
   0AD3 15 0A              1841 	dec	_j
   0AD5 74 FF              1842 	mov	a,#0xff
   0AD7 B5 0A 02           1843 	cjne	a,_j,00130$
   0ADA 15 0B              1844 	dec	(_j + 1)
   0ADC                    1845 00130$:
                           1846 ;	main_montgomery.c:224: for (j = i-SIZE+1; j < SIZE; j++) {
   0ADC E5 0A              1847 	mov	a,_j
   0ADE 45 0B              1848 	orl	a,(_j + 1)
   0AE0 60 03              1849 	jz	00131$
   0AE2 02 0A 86           1850 	ljmp	00111$
   0AE5                    1851 00131$:
   0AE5 75 0A 80           1852 	mov	_j,#0x80
   0AE8 E4                 1853 	clr	a
   0AE9 F5 0B              1854 	mov	(_j + 1),a
                           1855 ;	main_montgomery.c:346: __endasm;
                           1856 	
                           1857    ; calculate i - 128
   0AEB E5 08              1858 	   mov a, _i
   0AED 94 80              1859 	   subb a, #0x80
                           1860 	
                           1861    ; m[i - 128] = t[0]
   0AEF F5 82              1862 	   mov dpl, a
   0AF1 85 04 83           1863 	   mov dph, (#_m >> 8)
   0AF4 E5 0D              1864 	   mov a, _t
   0AF6 F0                 1865 	   movx @dptr, a
                           1866 	
                           1867    ; t[0] = t[1]
   0AF7 85 0E 0D           1868 	   mov _t, (_t + 0x0001)
   0AFA 85 0F 0E           1869 	   mov (_t + 0x0001), (_t + 0x0002)
   0AFD 75 0F 00           1870 	   mov (_t + 0x0002), #0x00
                           1871 	  
                           1872 ;	main_montgomery.c:223: for (i = SIZE; i < 2*SIZE; i++) {
   0B00 05 08              1873 	inc	_i
   0B02 E4                 1874 	clr	a
   0B03 B5 08 02           1875 	cjne	a,_i,00132$
   0B06 05 09              1876 	inc	(_i + 1)
   0B08                    1877 00132$:
   0B08 02 0A 69           1878 	ljmp	00112$
   0B0B                    1879 00115$:
                           1880 ;	main_montgomery.c:349: return;
   0B0B 22                 1881 	ret
                           1882 	.area CSEG    (CODE)
                           1883 	.area CONST   (CODE)
                           1884 	.area XINIT   (CODE)
                           1885 	.area CABS    (ABS,CODE)
