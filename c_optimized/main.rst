                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Fri Nov  2 17:40:06 2012
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
   0008                     233 _main_tmp_1_1::
   0008                     234 	.ds 2
   000A                     235 _main_i_1_1::
   000A                     236 	.ds 2
   000C                     237 _main_j_1_1::
   000C                     238 	.ds 2
   000E                     239 _main_t_1_1::
   000E                     240 	.ds 2
   0010                     241 _main_n0_1_1::
   0010                     242 	.ds 1
   0011                     243 _main_b0_1_1::
   0011                     244 	.ds 1
   0012                     245 _main_sloc0_1_0::
   0012                     246 	.ds 2
   0014                     247 _main_sloc1_1_0::
   0014                     248 	.ds 1
   0015                     249 _main_sloc2_1_0::
   0015                     250 	.ds 1
                            251 ;--------------------------------------------------------
                            252 ; Stack segment in internal ram 
                            253 ;--------------------------------------------------------
                            254 	.area	SSEG	(DATA)
   0016                     255 __start__stack:
   0016                     256 	.ds	1
                            257 
                            258 ;--------------------------------------------------------
                            259 ; indirectly addressable internal ram data
                            260 ;--------------------------------------------------------
                            261 	.area ISEG    (DATA)
                            262 ;--------------------------------------------------------
                            263 ; absolute internal ram data
                            264 ;--------------------------------------------------------
                            265 	.area IABS    (ABS,DATA)
                            266 	.area IABS    (ABS,DATA)
                            267 ;--------------------------------------------------------
                            268 ; bit data
                            269 ;--------------------------------------------------------
                            270 	.area BSEG    (BIT)
                            271 ;--------------------------------------------------------
                            272 ; paged external ram data
                            273 ;--------------------------------------------------------
                            274 	.area PSEG    (PAG,XDATA)
                            275 ;--------------------------------------------------------
                            276 ; external ram data
                            277 ;--------------------------------------------------------
                            278 	.area XSEG    (XDATA)
                    FFFE    279 _startBrk	=	0xfffe
                    FFFF    280 _endBrk	=	0xffff
                    0200    281 _m	=	0x0200
                    0200    282 _u	=	0x0200
                            283 ;--------------------------------------------------------
                            284 ; absolute external ram data
                            285 ;--------------------------------------------------------
                            286 	.area XABS    (ABS,XDATA)
   0000                     287 	.org 0x0000
   0000                     288 _n::
   0000                     289 	.ds 128
   0080                     290 	.org 0x0080
   0080                     291 _a::
   0080                     292 	.ds 128
   0100                     293 	.org 0x0100
   0100                     294 _b::
   0100                     295 	.ds 128
                            296 ;--------------------------------------------------------
                            297 ; external initialized ram data
                            298 ;--------------------------------------------------------
                            299 	.area XISEG   (XDATA)
                            300 	.area HOME    (CODE)
                            301 	.area GSINIT0 (CODE)
                            302 	.area GSINIT1 (CODE)
                            303 	.area GSINIT2 (CODE)
                            304 	.area GSINIT3 (CODE)
                            305 	.area GSINIT4 (CODE)
                            306 	.area GSINIT5 (CODE)
                            307 	.area GSINIT  (CODE)
                            308 	.area GSFINAL (CODE)
                            309 	.area CSEG    (CODE)
                            310 ;--------------------------------------------------------
                            311 ; interrupt vector 
                            312 ;--------------------------------------------------------
                            313 	.area HOME    (CODE)
   0000                     314 __interrupt_vect:
   0000 02 00 08            315 	ljmp	__sdcc_gsinit_startup
                            316 ;--------------------------------------------------------
                            317 ; global & static initialisations
                            318 ;--------------------------------------------------------
                            319 	.area HOME    (CODE)
                            320 	.area GSINIT  (CODE)
                            321 	.area GSFINAL (CODE)
                            322 	.area GSINIT  (CODE)
                            323 	.globl __sdcc_gsinit_startup
                            324 	.globl __sdcc_program_startup
                            325 	.globl __start__stack
                            326 	.globl __mcs51_genXINIT
                            327 	.globl __mcs51_genXRAMCLEAR
                            328 	.globl __mcs51_genRAMCLEAR
                            329 ;	main.c:13: __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0061 90 00 00            330 	mov	dptr,#_n
   0064 74 D3               331 	mov	a,#0xD3
   0066 F0                  332 	movx	@dptr,a
   0067 90 00 01            333 	mov	dptr,#(_n + 0x0001)
   006A 74 55               334 	mov	a,#0x55
   006C F0                  335 	movx	@dptr,a
   006D 90 00 02            336 	mov	dptr,#(_n + 0x0002)
   0070 74 A4               337 	mov	a,#0xA4
   0072 F0                  338 	movx	@dptr,a
   0073 90 00 03            339 	mov	dptr,#(_n + 0x0003)
   0076 74 5F               340 	mov	a,#0x5F
   0078 F0                  341 	movx	@dptr,a
   0079 90 00 04            342 	mov	dptr,#(_n + 0x0004)
   007C 74 57               343 	mov	a,#0x57
   007E F0                  344 	movx	@dptr,a
   007F 90 00 05            345 	mov	dptr,#(_n + 0x0005)
   0082 74 F3               346 	mov	a,#0xF3
   0084 F0                  347 	movx	@dptr,a
   0085 90 00 06            348 	mov	dptr,#(_n + 0x0006)
   0088 74 F9               349 	mov	a,#0xF9
   008A F0                  350 	movx	@dptr,a
   008B 90 00 07            351 	mov	dptr,#(_n + 0x0007)
   008E 74 3E               352 	mov	a,#0x3E
   0090 F0                  353 	movx	@dptr,a
   0091 90 00 08            354 	mov	dptr,#(_n + 0x0008)
   0094 74 CF               355 	mov	a,#0xCF
   0096 F0                  356 	movx	@dptr,a
   0097 90 00 09            357 	mov	dptr,#(_n + 0x0009)
   009A 74 84               358 	mov	a,#0x84
   009C F0                  359 	movx	@dptr,a
   009D 90 00 0A            360 	mov	dptr,#(_n + 0x000a)
   00A0 74 6D               361 	mov	a,#0x6D
   00A2 F0                  362 	movx	@dptr,a
   00A3 90 00 0B            363 	mov	dptr,#(_n + 0x000b)
   00A6 74 FF               364 	mov	a,#0xFF
   00A8 F0                  365 	movx	@dptr,a
   00A9 90 00 0C            366 	mov	dptr,#(_n + 0x000c)
   00AC 74 20               367 	mov	a,#0x20
   00AE F0                  368 	movx	@dptr,a
   00AF 90 00 0D            369 	mov	dptr,#(_n + 0x000d)
   00B2 74 C1               370 	mov	a,#0xC1
   00B4 F0                  371 	movx	@dptr,a
   00B5 90 00 0E            372 	mov	dptr,#(_n + 0x000e)
   00B8 74 AE               373 	mov	a,#0xAE
   00BA F0                  374 	movx	@dptr,a
   00BB 90 00 0F            375 	mov	dptr,#(_n + 0x000f)
   00BE 74 12               376 	mov	a,#0x12
   00C0 F0                  377 	movx	@dptr,a
   00C1 90 00 10            378 	mov	dptr,#(_n + 0x0010)
   00C4 74 CF               379 	mov	a,#0xCF
   00C6 F0                  380 	movx	@dptr,a
   00C7 90 00 11            381 	mov	dptr,#(_n + 0x0011)
   00CA 74 F1               382 	mov	a,#0xF1
   00CC F0                  383 	movx	@dptr,a
   00CD 90 00 12            384 	mov	dptr,#(_n + 0x0012)
   00D0 E4                  385 	clr	a
   00D1 F0                  386 	movx	@dptr,a
   00D2 90 00 13            387 	mov	dptr,#(_n + 0x0013)
   00D5 74 66               388 	mov	a,#0x66
   00D7 F0                  389 	movx	@dptr,a
   00D8 90 00 14            390 	mov	dptr,#(_n + 0x0014)
   00DB 74 45               391 	mov	a,#0x45
   00DD F0                  392 	movx	@dptr,a
   00DE 90 00 15            393 	mov	dptr,#(_n + 0x0015)
   00E1 74 E2               394 	mov	a,#0xE2
   00E3 F0                  395 	movx	@dptr,a
   00E4 90 00 16            396 	mov	dptr,#(_n + 0x0016)
   00E7 74 34               397 	mov	a,#0x34
   00E9 F0                  398 	movx	@dptr,a
   00EA 90 00 17            399 	mov	dptr,#(_n + 0x0017)
   00ED 74 61               400 	mov	a,#0x61
   00EF F0                  401 	movx	@dptr,a
   00F0 90 00 18            402 	mov	dptr,#(_n + 0x0018)
   00F3 74 27               403 	mov	a,#0x27
   00F5 F0                  404 	movx	@dptr,a
   00F6 90 00 19            405 	mov	dptr,#(_n + 0x0019)
   00F9 74 F2               406 	mov	a,#0xF2
   00FB F0                  407 	movx	@dptr,a
   00FC 90 00 1A            408 	mov	dptr,#(_n + 0x001a)
   00FF 74 57               409 	mov	a,#0x57
   0101 F0                  410 	movx	@dptr,a
   0102 90 00 1B            411 	mov	dptr,#(_n + 0x001b)
   0105 74 B3               412 	mov	a,#0xB3
   0107 F0                  413 	movx	@dptr,a
   0108 90 00 1C            414 	mov	dptr,#(_n + 0x001c)
   010B 74 42               415 	mov	a,#0x42
   010D F0                  416 	movx	@dptr,a
   010E 90 00 1D            417 	mov	dptr,#(_n + 0x001d)
   0111 74 21               418 	mov	a,#0x21
   0113 F0                  419 	movx	@dptr,a
   0114 90 00 1E            420 	mov	dptr,#(_n + 0x001e)
   0117 74 80               421 	mov	a,#0x80
   0119 F0                  422 	movx	@dptr,a
   011A 90 00 1F            423 	mov	dptr,#(_n + 0x001f)
   011D 74 95               424 	mov	a,#0x95
   011F F0                  425 	movx	@dptr,a
   0120 90 00 20            426 	mov	dptr,#(_n + 0x0020)
   0123 74 AB               427 	mov	a,#0xAB
   0125 F0                  428 	movx	@dptr,a
   0126 90 00 21            429 	mov	dptr,#(_n + 0x0021)
   0129 74 15               430 	mov	a,#0x15
   012B F0                  431 	movx	@dptr,a
   012C 90 00 22            432 	mov	dptr,#(_n + 0x0022)
   012F 74 A2               433 	mov	a,#0xA2
   0131 F0                  434 	movx	@dptr,a
   0132 90 00 23            435 	mov	dptr,#(_n + 0x0023)
   0135 74 1D               436 	mov	a,#0x1D
   0137 F0                  437 	movx	@dptr,a
   0138 90 00 24            438 	mov	dptr,#(_n + 0x0024)
   013B 74 53               439 	mov	a,#0x53
   013D F0                  440 	movx	@dptr,a
   013E 90 00 25            441 	mov	dptr,#(_n + 0x0025)
   0141 74 B2               442 	mov	a,#0xB2
   0143 F0                  443 	movx	@dptr,a
   0144 90 00 26            444 	mov	dptr,#(_n + 0x0026)
   0147 74 27               445 	mov	a,#0x27
   0149 F0                  446 	movx	@dptr,a
   014A 90 00 27            447 	mov	dptr,#(_n + 0x0027)
   014D 74 E6               448 	mov	a,#0xE6
   014F F0                  449 	movx	@dptr,a
   0150 90 00 28            450 	mov	dptr,#(_n + 0x0028)
   0153 74 56               451 	mov	a,#0x56
   0155 F0                  452 	movx	@dptr,a
   0156 90 00 29            453 	mov	dptr,#(_n + 0x0029)
   0159 74 93               454 	mov	a,#0x93
   015B F0                  455 	movx	@dptr,a
   015C 90 00 2A            456 	mov	dptr,#(_n + 0x002a)
   015F 74 27               457 	mov	a,#0x27
   0161 F0                  458 	movx	@dptr,a
   0162 90 00 2B            459 	mov	dptr,#(_n + 0x002b)
   0165 74 AF               460 	mov	a,#0xAF
   0167 F0                  461 	movx	@dptr,a
   0168 90 00 2C            462 	mov	dptr,#(_n + 0x002c)
   016B 74 C2               463 	mov	a,#0xC2
   016D F0                  464 	movx	@dptr,a
   016E 90 00 2D            465 	mov	dptr,#(_n + 0x002d)
   0171 74 EE               466 	mov	a,#0xEE
   0173 F0                  467 	movx	@dptr,a
   0174 90 00 2E            468 	mov	dptr,#(_n + 0x002e)
   0177 74 2B               469 	mov	a,#0x2B
   0179 F0                  470 	movx	@dptr,a
   017A 90 00 2F            471 	mov	dptr,#(_n + 0x002f)
   017D 74 2F               472 	mov	a,#0x2F
   017F F0                  473 	movx	@dptr,a
   0180 90 00 30            474 	mov	dptr,#(_n + 0x0030)
   0183 74 9A               475 	mov	a,#0x9A
   0185 F0                  476 	movx	@dptr,a
   0186 90 00 31            477 	mov	dptr,#(_n + 0x0031)
   0189 74 AE               478 	mov	a,#0xAE
   018B F0                  479 	movx	@dptr,a
   018C 90 00 32            480 	mov	dptr,#(_n + 0x0032)
   018F 74 6A               481 	mov	a,#0x6A
   0191 F0                  482 	movx	@dptr,a
   0192 90 00 33            483 	mov	dptr,#(_n + 0x0033)
   0195 74 09               484 	mov	a,#0x09
   0197 F0                  485 	movx	@dptr,a
   0198 90 00 34            486 	mov	dptr,#(_n + 0x0034)
   019B 74 E5               487 	mov	a,#0xE5
   019D F0                  488 	movx	@dptr,a
   019E 90 00 35            489 	mov	dptr,#(_n + 0x0035)
   01A1 74 7F               490 	mov	a,#0x7F
   01A3 F0                  491 	movx	@dptr,a
   01A4 90 00 36            492 	mov	dptr,#(_n + 0x0036)
   01A7 74 AE               493 	mov	a,#0xAE
   01A9 F0                  494 	movx	@dptr,a
   01AA 90 00 37            495 	mov	dptr,#(_n + 0x0037)
   01AD 74 7D               496 	mov	a,#0x7D
   01AF F0                  497 	movx	@dptr,a
   01B0 90 00 38            498 	mov	dptr,#(_n + 0x0038)
   01B3 74 2B               499 	mov	a,#0x2B
   01B5 F0                  500 	movx	@dptr,a
   01B6 90 00 39            501 	mov	dptr,#(_n + 0x0039)
   01B9 74 DD               502 	mov	a,#0xDD
   01BB F0                  503 	movx	@dptr,a
   01BC 90 00 3A            504 	mov	dptr,#(_n + 0x003a)
   01BF 74 58               505 	mov	a,#0x58
   01C1 F0                  506 	movx	@dptr,a
   01C2 90 00 3B            507 	mov	dptr,#(_n + 0x003b)
   01C5 74 2F               508 	mov	a,#0x2F
   01C7 F0                  509 	movx	@dptr,a
   01C8 90 00 3C            510 	mov	dptr,#(_n + 0x003c)
   01CB 74 87               511 	mov	a,#0x87
   01CD F0                  512 	movx	@dptr,a
   01CE 90 00 3D            513 	mov	dptr,#(_n + 0x003d)
   01D1 74 70               514 	mov	a,#0x70
   01D3 F0                  515 	movx	@dptr,a
   01D4 90 00 3E            516 	mov	dptr,#(_n + 0x003e)
   01D7 74 05               517 	mov	a,#0x05
   01D9 F0                  518 	movx	@dptr,a
   01DA 90 00 3F            519 	mov	dptr,#(_n + 0x003f)
   01DD 74 1F               520 	mov	a,#0x1F
   01DF F0                  521 	movx	@dptr,a
   01E0 90 00 40            522 	mov	dptr,#(_n + 0x0040)
   01E3 74 F8               523 	mov	a,#0xF8
   01E5 F0                  524 	movx	@dptr,a
   01E6 90 00 41            525 	mov	dptr,#(_n + 0x0041)
   01E9 74 BD               526 	mov	a,#0xBD
   01EB F0                  527 	movx	@dptr,a
   01EC 90 00 42            528 	mov	dptr,#(_n + 0x0042)
   01EF 74 0B               529 	mov	a,#0x0B
   01F1 F0                  530 	movx	@dptr,a
   01F2 90 00 43            531 	mov	dptr,#(_n + 0x0043)
   01F5 74 E0               532 	mov	a,#0xE0
   01F7 F0                  533 	movx	@dptr,a
   01F8 90 00 44            534 	mov	dptr,#(_n + 0x0044)
   01FB 74 FD               535 	mov	a,#0xFD
   01FD F0                  536 	movx	@dptr,a
   01FE 90 00 45            537 	mov	dptr,#(_n + 0x0045)
   0201 74 F1               538 	mov	a,#0xF1
   0203 F0                  539 	movx	@dptr,a
   0204 90 00 46            540 	mov	dptr,#(_n + 0x0046)
   0207 74 81               541 	mov	a,#0x81
   0209 F0                  542 	movx	@dptr,a
   020A 90 00 47            543 	mov	dptr,#(_n + 0x0047)
   020D 74 60               544 	mov	a,#0x60
   020F F0                  545 	movx	@dptr,a
   0210 90 00 48            546 	mov	dptr,#(_n + 0x0048)
   0213 74 BF               547 	mov	a,#0xBF
   0215 F0                  548 	movx	@dptr,a
   0216 90 00 49            549 	mov	dptr,#(_n + 0x0049)
   0219 74 D2               550 	mov	a,#0xD2
   021B F0                  551 	movx	@dptr,a
   021C 90 00 4A            552 	mov	dptr,#(_n + 0x004a)
   021F 74 FE               553 	mov	a,#0xFE
   0221 F0                  554 	movx	@dptr,a
   0222 90 00 4B            555 	mov	dptr,#(_n + 0x004b)
   0225 74 8F               556 	mov	a,#0x8F
   0227 F0                  557 	movx	@dptr,a
   0228 90 00 4C            558 	mov	dptr,#(_n + 0x004c)
   022B 74 7B               559 	mov	a,#0x7B
   022D F0                  560 	movx	@dptr,a
   022E 90 00 4D            561 	mov	dptr,#(_n + 0x004d)
   0231 74 B9               562 	mov	a,#0xB9
   0233 F0                  563 	movx	@dptr,a
   0234 90 00 4E            564 	mov	dptr,#(_n + 0x004e)
   0237 74 A9               565 	mov	a,#0xA9
   0239 F0                  566 	movx	@dptr,a
   023A 90 00 4F            567 	mov	dptr,#(_n + 0x004f)
   023D 74 A4               568 	mov	a,#0xA4
   023F F0                  569 	movx	@dptr,a
   0240 90 00 50            570 	mov	dptr,#(_n + 0x0050)
   0243 74 6A               571 	mov	a,#0x6A
   0245 F0                  572 	movx	@dptr,a
   0246 90 00 51            573 	mov	dptr,#(_n + 0x0051)
   0249 74 0A               574 	mov	a,#0x0A
   024B F0                  575 	movx	@dptr,a
   024C 90 00 52            576 	mov	dptr,#(_n + 0x0052)
   024F 74 A3               577 	mov	a,#0xA3
   0251 F0                  578 	movx	@dptr,a
   0252 90 00 53            579 	mov	dptr,#(_n + 0x0053)
   0255 74 A3               580 	mov	a,#0xA3
   0257 F0                  581 	movx	@dptr,a
   0258 90 00 54            582 	mov	dptr,#(_n + 0x0054)
   025B 74 70               583 	mov	a,#0x70
   025D F0                  584 	movx	@dptr,a
   025E 90 00 55            585 	mov	dptr,#(_n + 0x0055)
   0261 74 22               586 	mov	a,#0x22
   0263 F0                  587 	movx	@dptr,a
   0264 90 00 56            588 	mov	dptr,#(_n + 0x0056)
   0267 74 BF               589 	mov	a,#0xBF
   0269 F0                  590 	movx	@dptr,a
   026A 90 00 57            591 	mov	dptr,#(_n + 0x0057)
   026D 74 4C               592 	mov	a,#0x4C
   026F F0                  593 	movx	@dptr,a
   0270 90 00 58            594 	mov	dptr,#(_n + 0x0058)
   0273 74 1B               595 	mov	a,#0x1B
   0275 F0                  596 	movx	@dptr,a
   0276 90 00 59            597 	mov	dptr,#(_n + 0x0059)
   0279 74 B0               598 	mov	a,#0xB0
   027B F0                  599 	movx	@dptr,a
   027C 90 00 5A            600 	mov	dptr,#(_n + 0x005a)
   027F 74 41               601 	mov	a,#0x41
   0281 F0                  602 	movx	@dptr,a
   0282 90 00 5B            603 	mov	dptr,#(_n + 0x005b)
   0285 74 24               604 	mov	a,#0x24
   0287 F0                  605 	movx	@dptr,a
   0288 90 00 5C            606 	mov	dptr,#(_n + 0x005c)
   028B 74 4C               607 	mov	a,#0x4C
   028D F0                  608 	movx	@dptr,a
   028E 90 00 5D            609 	mov	dptr,#(_n + 0x005d)
   0291 74 3A               610 	mov	a,#0x3A
   0293 F0                  611 	movx	@dptr,a
   0294 90 00 5E            612 	mov	dptr,#(_n + 0x005e)
   0297 74 08               613 	mov	a,#0x08
   0299 F0                  614 	movx	@dptr,a
   029A 90 00 5F            615 	mov	dptr,#(_n + 0x005f)
   029D 74 EC               616 	mov	a,#0xEC
   029F F0                  617 	movx	@dptr,a
   02A0 90 00 60            618 	mov	dptr,#(_n + 0x0060)
   02A3 74 F4               619 	mov	a,#0xF4
   02A5 F0                  620 	movx	@dptr,a
   02A6 90 00 61            621 	mov	dptr,#(_n + 0x0061)
   02A9 74 91               622 	mov	a,#0x91
   02AB F0                  623 	movx	@dptr,a
   02AC 90 00 62            624 	mov	dptr,#(_n + 0x0062)
   02AF 74 FF               625 	mov	a,#0xFF
   02B1 F0                  626 	movx	@dptr,a
   02B2 90 00 63            627 	mov	dptr,#(_n + 0x0063)
   02B5 74 93               628 	mov	a,#0x93
   02B7 F0                  629 	movx	@dptr,a
   02B8 90 00 64            630 	mov	dptr,#(_n + 0x0064)
   02BB 74 8D               631 	mov	a,#0x8D
   02BD F0                  632 	movx	@dptr,a
   02BE 90 00 65            633 	mov	dptr,#(_n + 0x0065)
   02C1 74 FC               634 	mov	a,#0xFC
   02C3 F0                  635 	movx	@dptr,a
   02C4 90 00 66            636 	mov	dptr,#(_n + 0x0066)
   02C7 74 FA               637 	mov	a,#0xFA
   02C9 F0                  638 	movx	@dptr,a
   02CA 90 00 67            639 	mov	dptr,#(_n + 0x0067)
   02CD 74 4C               640 	mov	a,#0x4C
   02CF F0                  641 	movx	@dptr,a
   02D0 90 00 68            642 	mov	dptr,#(_n + 0x0068)
   02D3 74 26               643 	mov	a,#0x26
   02D5 F0                  644 	movx	@dptr,a
   02D6 90 00 69            645 	mov	dptr,#(_n + 0x0069)
   02D9 74 2D               646 	mov	a,#0x2D
   02DB F0                  647 	movx	@dptr,a
   02DC 90 00 6A            648 	mov	dptr,#(_n + 0x006a)
   02DF 74 D2               649 	mov	a,#0xD2
   02E1 F0                  650 	movx	@dptr,a
   02E2 90 00 6B            651 	mov	dptr,#(_n + 0x006b)
   02E5 74 E9               652 	mov	a,#0xE9
   02E7 F0                  653 	movx	@dptr,a
   02E8 90 00 6C            654 	mov	dptr,#(_n + 0x006c)
   02EB 74 FC               655 	mov	a,#0xFC
   02ED F0                  656 	movx	@dptr,a
   02EE 90 00 6D            657 	mov	dptr,#(_n + 0x006d)
   02F1 74 76               658 	mov	a,#0x76
   02F3 F0                  659 	movx	@dptr,a
   02F4 90 00 6E            660 	mov	dptr,#(_n + 0x006e)
   02F7 74 B1               661 	mov	a,#0xB1
   02F9 F0                  662 	movx	@dptr,a
   02FA 90 00 6F            663 	mov	dptr,#(_n + 0x006f)
   02FD 74 67               664 	mov	a,#0x67
   02FF F0                  665 	movx	@dptr,a
   0300 90 00 70            666 	mov	dptr,#(_n + 0x0070)
   0303 74 5E               667 	mov	a,#0x5E
   0305 F0                  668 	movx	@dptr,a
   0306 90 00 71            669 	mov	dptr,#(_n + 0x0071)
   0309 74 24               670 	mov	a,#0x24
   030B F0                  671 	movx	@dptr,a
   030C 90 00 72            672 	mov	dptr,#(_n + 0x0072)
   030F 74 9E               673 	mov	a,#0x9E
   0311 F0                  674 	movx	@dptr,a
   0312 90 00 73            675 	mov	dptr,#(_n + 0x0073)
   0315 74 31               676 	mov	a,#0x31
   0317 F0                  677 	movx	@dptr,a
   0318 90 00 74            678 	mov	dptr,#(_n + 0x0074)
   031B 74 66               679 	mov	a,#0x66
   031D F0                  680 	movx	@dptr,a
   031E 90 00 75            681 	mov	dptr,#(_n + 0x0075)
   0321 74 5D               682 	mov	a,#0x5D
   0323 F0                  683 	movx	@dptr,a
   0324 90 00 76            684 	mov	dptr,#(_n + 0x0076)
   0327 74 98               685 	mov	a,#0x98
   0329 F0                  686 	movx	@dptr,a
   032A 90 00 77            687 	mov	dptr,#(_n + 0x0077)
   032D 74 4C               688 	mov	a,#0x4C
   032F F0                  689 	movx	@dptr,a
   0330 90 00 78            690 	mov	dptr,#(_n + 0x0078)
   0333 74 0D               691 	mov	a,#0x0D
   0335 F0                  692 	movx	@dptr,a
   0336 90 00 79            693 	mov	dptr,#(_n + 0x0079)
   0339 74 79               694 	mov	a,#0x79
   033B F0                  695 	movx	@dptr,a
   033C 90 00 7A            696 	mov	dptr,#(_n + 0x007a)
   033F 74 81               697 	mov	a,#0x81
   0341 F0                  698 	movx	@dptr,a
   0342 90 00 7B            699 	mov	dptr,#(_n + 0x007b)
   0345 74 76               700 	mov	a,#0x76
   0347 F0                  701 	movx	@dptr,a
   0348 90 00 7C            702 	mov	dptr,#(_n + 0x007c)
   034B 74 AC               703 	mov	a,#0xAC
   034D F0                  704 	movx	@dptr,a
   034E 90 00 7D            705 	mov	dptr,#(_n + 0x007d)
   0351 74 1D               706 	mov	a,#0x1D
   0353 F0                  707 	movx	@dptr,a
   0354 90 00 7E            708 	mov	dptr,#(_n + 0x007e)
   0357 74 E2               709 	mov	a,#0xE2
   0359 F0                  710 	movx	@dptr,a
   035A 90 00 7F            711 	mov	dptr,#(_n + 0x007f)
   035D 74 CA               712 	mov	a,#0xCA
   035F F0                  713 	movx	@dptr,a
                            714 ;	main.c:14: __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0360 90 00 80            715 	mov	dptr,#_a
   0363 74 FF               716 	mov	a,#0xFF
   0365 F0                  717 	movx	@dptr,a
   0366 90 00 81            718 	mov	dptr,#(_a + 0x0001)
   0369 74 7F               719 	mov	a,#0x7F
   036B F0                  720 	movx	@dptr,a
   036C 90 00 82            721 	mov	dptr,#(_a + 0x0002)
   036F 74 14               722 	mov	a,#0x14
   0371 F0                  723 	movx	@dptr,a
   0372 90 00 83            724 	mov	dptr,#(_a + 0x0003)
   0375 74 64               725 	mov	a,#0x64
   0377 F0                  726 	movx	@dptr,a
   0378 90 00 84            727 	mov	dptr,#(_a + 0x0004)
   037B 74 47               728 	mov	a,#0x47
   037D F0                  729 	movx	@dptr,a
   037E 90 00 85            730 	mov	dptr,#(_a + 0x0005)
   0381 74 68               731 	mov	a,#0x68
   0383 F0                  732 	movx	@dptr,a
   0384 90 00 86            733 	mov	dptr,#(_a + 0x0006)
   0387 74 C2               734 	mov	a,#0xC2
   0389 F0                  735 	movx	@dptr,a
   038A 90 00 87            736 	mov	dptr,#(_a + 0x0007)
   038D 74 B6               737 	mov	a,#0xB6
   038F F0                  738 	movx	@dptr,a
   0390 90 00 88            739 	mov	dptr,#(_a + 0x0008)
   0393 74 27               740 	mov	a,#0x27
   0395 F0                  741 	movx	@dptr,a
   0396 90 00 89            742 	mov	dptr,#(_a + 0x0009)
   0399 74 32               743 	mov	a,#0x32
   039B F0                  744 	movx	@dptr,a
   039C 90 00 8A            745 	mov	dptr,#(_a + 0x000a)
   039F 74 63               746 	mov	a,#0x63
   03A1 F0                  747 	movx	@dptr,a
   03A2 90 00 8B            748 	mov	dptr,#(_a + 0x000b)
   03A5 74 2C               749 	mov	a,#0x2C
   03A7 F0                  750 	movx	@dptr,a
   03A8 90 00 8C            751 	mov	dptr,#(_a + 0x000c)
   03AB 74 B0               752 	mov	a,#0xB0
   03AD F0                  753 	movx	@dptr,a
   03AE 90 00 8D            754 	mov	dptr,#(_a + 0x000d)
   03B1 74 C3               755 	mov	a,#0xC3
   03B3 F0                  756 	movx	@dptr,a
   03B4 90 00 8E            757 	mov	dptr,#(_a + 0x000e)
   03B7 74 95               758 	mov	a,#0x95
   03B9 F0                  759 	movx	@dptr,a
   03BA 90 00 8F            760 	mov	dptr,#(_a + 0x000f)
   03BD 74 13               761 	mov	a,#0x13
   03BF F0                  762 	movx	@dptr,a
   03C0 90 00 90            763 	mov	dptr,#(_a + 0x0010)
   03C3 74 C5               764 	mov	a,#0xC5
   03C5 F0                  765 	movx	@dptr,a
   03C6 90 00 91            766 	mov	dptr,#(_a + 0x0011)
   03C9 74 7E               767 	mov	a,#0x7E
   03CB F0                  768 	movx	@dptr,a
   03CC 90 00 92            769 	mov	dptr,#(_a + 0x0012)
   03CF 74 17               770 	mov	a,#0x17
   03D1 F0                  771 	movx	@dptr,a
   03D2 90 00 93            772 	mov	dptr,#(_a + 0x0013)
   03D5 74 22               773 	mov	a,#0x22
   03D7 F0                  774 	movx	@dptr,a
   03D8 90 00 94            775 	mov	dptr,#(_a + 0x0014)
   03DB 74 F3               776 	mov	a,#0xF3
   03DD F0                  777 	movx	@dptr,a
   03DE 90 00 95            778 	mov	dptr,#(_a + 0x0015)
   03E1 74 7C               779 	mov	a,#0x7C
   03E3 F0                  780 	movx	@dptr,a
   03E4 90 00 96            781 	mov	dptr,#(_a + 0x0016)
   03E7 74 2D               782 	mov	a,#0x2D
   03E9 F0                  783 	movx	@dptr,a
   03EA 90 00 97            784 	mov	dptr,#(_a + 0x0017)
   03ED 74 E8               785 	mov	a,#0xE8
   03EF F0                  786 	movx	@dptr,a
   03F0 90 00 98            787 	mov	dptr,#(_a + 0x0018)
   03F3 74 13               788 	mov	a,#0x13
   03F5 F0                  789 	movx	@dptr,a
   03F6 90 00 99            790 	mov	dptr,#(_a + 0x0019)
   03F9 74 47               791 	mov	a,#0x47
   03FB F0                  792 	movx	@dptr,a
   03FC 90 00 9A            793 	mov	dptr,#(_a + 0x001a)
   03FF 74 5E               794 	mov	a,#0x5E
   0401 F0                  795 	movx	@dptr,a
   0402 90 00 9B            796 	mov	dptr,#(_a + 0x001b)
   0405 74 15               797 	mov	a,#0x15
   0407 F0                  798 	movx	@dptr,a
   0408 90 00 9C            799 	mov	dptr,#(_a + 0x001c)
   040B 74 4E               800 	mov	a,#0x4E
   040D F0                  801 	movx	@dptr,a
   040E 90 00 9D            802 	mov	dptr,#(_a + 0x001d)
   0411 74 EF               803 	mov	a,#0xEF
   0413 F0                  804 	movx	@dptr,a
   0414 90 00 9E            805 	mov	dptr,#(_a + 0x001e)
   0417 74 83               806 	mov	a,#0x83
   0419 F0                  807 	movx	@dptr,a
   041A 90 00 9F            808 	mov	dptr,#(_a + 0x001f)
   041D 74 81               809 	mov	a,#0x81
   041F F0                  810 	movx	@dptr,a
   0420 90 00 A0            811 	mov	dptr,#(_a + 0x0020)
   0423 74 DF               812 	mov	a,#0xDF
   0425 F0                  813 	movx	@dptr,a
   0426 90 00 A1            814 	mov	dptr,#(_a + 0x0021)
   0429 74 C3               815 	mov	a,#0xC3
   042B F0                  816 	movx	@dptr,a
   042C 90 00 A2            817 	mov	dptr,#(_a + 0x0022)
   042F 74 47               818 	mov	a,#0x47
   0431 F0                  819 	movx	@dptr,a
   0432 90 00 A3            820 	mov	dptr,#(_a + 0x0023)
   0435 74 D3               821 	mov	a,#0xD3
   0437 F0                  822 	movx	@dptr,a
   0438 90 00 A4            823 	mov	dptr,#(_a + 0x0024)
   043B 74 60               824 	mov	a,#0x60
   043D F0                  825 	movx	@dptr,a
   043E 90 00 A5            826 	mov	dptr,#(_a + 0x0025)
   0441 74 BB               827 	mov	a,#0xBB
   0443 F0                  828 	movx	@dptr,a
   0444 90 00 A6            829 	mov	dptr,#(_a + 0x0026)
   0447 74 8B               830 	mov	a,#0x8B
   0449 F0                  831 	movx	@dptr,a
   044A 90 00 A7            832 	mov	dptr,#(_a + 0x0027)
   044D 74 3E               833 	mov	a,#0x3E
   044F F0                  834 	movx	@dptr,a
   0450 90 00 A8            835 	mov	dptr,#(_a + 0x0028)
   0453 74 B6               836 	mov	a,#0xB6
   0455 F0                  837 	movx	@dptr,a
   0456 90 00 A9            838 	mov	dptr,#(_a + 0x0029)
   0459 74 35               839 	mov	a,#0x35
   045B F0                  840 	movx	@dptr,a
   045C 90 00 AA            841 	mov	dptr,#(_a + 0x002a)
   045F 74 B1               842 	mov	a,#0xB1
   0461 F0                  843 	movx	@dptr,a
   0462 90 00 AB            844 	mov	dptr,#(_a + 0x002b)
   0465 74 6E               845 	mov	a,#0x6E
   0467 F0                  846 	movx	@dptr,a
   0468 90 00 AC            847 	mov	dptr,#(_a + 0x002c)
   046B 74 D1               848 	mov	a,#0xD1
   046D F0                  849 	movx	@dptr,a
   046E 90 00 AD            850 	mov	dptr,#(_a + 0x002d)
   0471 74 D5               851 	mov	a,#0xD5
   0473 F0                  852 	movx	@dptr,a
   0474 90 00 AE            853 	mov	dptr,#(_a + 0x002e)
   0477 74 DA               854 	mov	a,#0xDA
   0479 F0                  855 	movx	@dptr,a
   047A 90 00 AF            856 	mov	dptr,#(_a + 0x002f)
   047D 74 6F               857 	mov	a,#0x6F
   047F F0                  858 	movx	@dptr,a
   0480 90 00 B0            859 	mov	dptr,#(_a + 0x0030)
   0483 74 28               860 	mov	a,#0x28
   0485 F0                  861 	movx	@dptr,a
   0486 90 00 B1            862 	mov	dptr,#(_a + 0x0031)
   0489 74 16               863 	mov	a,#0x16
   048B F0                  864 	movx	@dptr,a
   048C 90 00 B2            865 	mov	dptr,#(_a + 0x0032)
   048F 74 2C               866 	mov	a,#0x2C
   0491 F0                  867 	movx	@dptr,a
   0492 90 00 B3            868 	mov	dptr,#(_a + 0x0033)
   0495 74 74               869 	mov	a,#0x74
   0497 F0                  870 	movx	@dptr,a
   0498 90 00 B4            871 	mov	dptr,#(_a + 0x0034)
   049B 74 36               872 	mov	a,#0x36
   049D F0                  873 	movx	@dptr,a
   049E 90 00 B5            874 	mov	dptr,#(_a + 0x0035)
   04A1 74 F9               875 	mov	a,#0xF9
   04A3 F0                  876 	movx	@dptr,a
   04A4 90 00 B6            877 	mov	dptr,#(_a + 0x0036)
   04A7 74 04               878 	mov	a,#0x04
   04A9 F0                  879 	movx	@dptr,a
   04AA 90 00 B7            880 	mov	dptr,#(_a + 0x0037)
   04AD 74 79               881 	mov	a,#0x79
   04AF F0                  882 	movx	@dptr,a
   04B0 90 00 B8            883 	mov	dptr,#(_a + 0x0038)
   04B3 74 F9               884 	mov	a,#0xF9
   04B5 F0                  885 	movx	@dptr,a
   04B6 90 00 B9            886 	mov	dptr,#(_a + 0x0039)
   04B9 74 76               887 	mov	a,#0x76
   04BB F0                  888 	movx	@dptr,a
   04BC 90 00 BA            889 	mov	dptr,#(_a + 0x003a)
   04BF 74 E2               890 	mov	a,#0xE2
   04C1 F0                  891 	movx	@dptr,a
   04C2 90 00 BB            892 	mov	dptr,#(_a + 0x003b)
   04C5 74 CC               893 	mov	a,#0xCC
   04C7 F0                  894 	movx	@dptr,a
   04C8 90 00 BC            895 	mov	dptr,#(_a + 0x003c)
   04CB 74 A4               896 	mov	a,#0xA4
   04CD F0                  897 	movx	@dptr,a
   04CE 90 00 BD            898 	mov	dptr,#(_a + 0x003d)
   04D1 74 82               899 	mov	a,#0x82
   04D3 F0                  900 	movx	@dptr,a
   04D4 90 00 BE            901 	mov	dptr,#(_a + 0x003e)
   04D7 74 A7               902 	mov	a,#0xA7
   04D9 F0                  903 	movx	@dptr,a
   04DA 90 00 BF            904 	mov	dptr,#(_a + 0x003f)
   04DD 74 A4               905 	mov	a,#0xA4
   04DF F0                  906 	movx	@dptr,a
   04E0 90 00 C0            907 	mov	dptr,#(_a + 0x0040)
   04E3 74 68               908 	mov	a,#0x68
   04E5 F0                  909 	movx	@dptr,a
   04E6 90 00 C1            910 	mov	dptr,#(_a + 0x0041)
   04E9 74 4E               911 	mov	a,#0x4E
   04EB F0                  912 	movx	@dptr,a
   04EC 90 00 C2            913 	mov	dptr,#(_a + 0x0042)
   04EF 74 24               914 	mov	a,#0x24
   04F1 F0                  915 	movx	@dptr,a
   04F2 90 00 C3            916 	mov	dptr,#(_a + 0x0043)
   04F5 74 A6               917 	mov	a,#0xA6
   04F7 F0                  918 	movx	@dptr,a
   04F8 90 00 C4            919 	mov	dptr,#(_a + 0x0044)
   04FB 74 C1               920 	mov	a,#0xC1
   04FD F0                  921 	movx	@dptr,a
   04FE 90 00 C5            922 	mov	dptr,#(_a + 0x0045)
   0501 74 58               923 	mov	a,#0x58
   0503 F0                  924 	movx	@dptr,a
   0504 90 00 C6            925 	mov	dptr,#(_a + 0x0046)
   0507 74 68               926 	mov	a,#0x68
   0509 F0                  927 	movx	@dptr,a
   050A 90 00 C7            928 	mov	dptr,#(_a + 0x0047)
   050D 74 24               929 	mov	a,#0x24
   050F F0                  930 	movx	@dptr,a
   0510 90 00 C8            931 	mov	dptr,#(_a + 0x0048)
   0513 74 58               932 	mov	a,#0x58
   0515 F0                  933 	movx	@dptr,a
   0516 90 00 C9            934 	mov	dptr,#(_a + 0x0049)
   0519 74 DC               935 	mov	a,#0xDC
   051B F0                  936 	movx	@dptr,a
   051C 90 00 CA            937 	mov	dptr,#(_a + 0x004a)
   051F 74 14               938 	mov	a,#0x14
   0521 F0                  939 	movx	@dptr,a
   0522 90 00 CB            940 	mov	dptr,#(_a + 0x004b)
   0525 74 F9               941 	mov	a,#0xF9
   0527 F0                  942 	movx	@dptr,a
   0528 90 00 CC            943 	mov	dptr,#(_a + 0x004c)
   052B 74 FF               944 	mov	a,#0xFF
   052D F0                  945 	movx	@dptr,a
   052E 90 00 CD            946 	mov	dptr,#(_a + 0x004d)
   0531 74 4D               947 	mov	a,#0x4D
   0533 F0                  948 	movx	@dptr,a
   0534 90 00 CE            949 	mov	dptr,#(_a + 0x004e)
   0537 74 A1               950 	mov	a,#0xA1
   0539 F0                  951 	movx	@dptr,a
   053A 90 00 CF            952 	mov	dptr,#(_a + 0x004f)
   053D 74 EF               953 	mov	a,#0xEF
   053F F0                  954 	movx	@dptr,a
   0540 90 00 D0            955 	mov	dptr,#(_a + 0x0050)
   0543 74 53               956 	mov	a,#0x53
   0545 F0                  957 	movx	@dptr,a
   0546 90 00 D1            958 	mov	dptr,#(_a + 0x0051)
   0549 74 A3               959 	mov	a,#0xA3
   054B F0                  960 	movx	@dptr,a
   054C 90 00 D2            961 	mov	dptr,#(_a + 0x0052)
   054F 74 C2               962 	mov	a,#0xC2
   0551 F0                  963 	movx	@dptr,a
   0552 90 00 D3            964 	mov	dptr,#(_a + 0x0053)
   0555 74 84               965 	mov	a,#0x84
   0557 F0                  966 	movx	@dptr,a
   0558 90 00 D4            967 	mov	dptr,#(_a + 0x0054)
   055B 74 1B               968 	mov	a,#0x1B
   055D F0                  969 	movx	@dptr,a
   055E 90 00 D5            970 	mov	dptr,#(_a + 0x0055)
   0561 74 81               971 	mov	a,#0x81
   0563 F0                  972 	movx	@dptr,a
   0564 90 00 D6            973 	mov	dptr,#(_a + 0x0056)
   0567 74 16               974 	mov	a,#0x16
   0569 F0                  975 	movx	@dptr,a
   056A 90 00 D7            976 	mov	dptr,#(_a + 0x0057)
   056D 74 6C               977 	mov	a,#0x6C
   056F F0                  978 	movx	@dptr,a
   0570 90 00 D8            979 	mov	dptr,#(_a + 0x0058)
   0573 74 DD               980 	mov	a,#0xDD
   0575 F0                  981 	movx	@dptr,a
   0576 90 00 D9            982 	mov	dptr,#(_a + 0x0059)
   0579 74 E3               983 	mov	a,#0xE3
   057B F0                  984 	movx	@dptr,a
   057C 90 00 DA            985 	mov	dptr,#(_a + 0x005a)
   057F 74 DB               986 	mov	a,#0xDB
   0581 F0                  987 	movx	@dptr,a
   0582 90 00 DB            988 	mov	dptr,#(_a + 0x005b)
   0585 74 A8               989 	mov	a,#0xA8
   0587 F0                  990 	movx	@dptr,a
   0588 90 00 DC            991 	mov	dptr,#(_a + 0x005c)
   058B 74 03               992 	mov	a,#0x03
   058D F0                  993 	movx	@dptr,a
   058E 90 00 DD            994 	mov	dptr,#(_a + 0x005d)
   0591 74 8F               995 	mov	a,#0x8F
   0593 F0                  996 	movx	@dptr,a
   0594 90 00 DE            997 	mov	dptr,#(_a + 0x005e)
   0597 74 F2               998 	mov	a,#0xF2
   0599 F0                  999 	movx	@dptr,a
   059A 90 00 DF           1000 	mov	dptr,#(_a + 0x005f)
   059D 74 31              1001 	mov	a,#0x31
   059F F0                 1002 	movx	@dptr,a
   05A0 90 00 E0           1003 	mov	dptr,#(_a + 0x0060)
   05A3 74 FD              1004 	mov	a,#0xFD
   05A5 F0                 1005 	movx	@dptr,a
   05A6 90 00 E1           1006 	mov	dptr,#(_a + 0x0061)
   05A9 74 94              1007 	mov	a,#0x94
   05AB F0                 1008 	movx	@dptr,a
   05AC 90 00 E2           1009 	mov	dptr,#(_a + 0x0062)
   05AF 74 5D              1010 	mov	a,#0x5D
   05B1 F0                 1011 	movx	@dptr,a
   05B2 90 00 E3           1012 	mov	dptr,#(_a + 0x0063)
   05B5 74 26              1013 	mov	a,#0x26
   05B7 F0                 1014 	movx	@dptr,a
   05B8 90 00 E4           1015 	mov	dptr,#(_a + 0x0064)
   05BB 74 13              1016 	mov	a,#0x13
   05BD F0                 1017 	movx	@dptr,a
   05BE 90 00 E5           1018 	mov	dptr,#(_a + 0x0065)
   05C1 74 C6              1019 	mov	a,#0xC6
   05C3 F0                 1020 	movx	@dptr,a
   05C4 90 00 E6           1021 	mov	dptr,#(_a + 0x0066)
   05C7 74 68              1022 	mov	a,#0x68
   05C9 F0                 1023 	movx	@dptr,a
   05CA 90 00 E7           1024 	mov	dptr,#(_a + 0x0067)
   05CD 74 B4              1025 	mov	a,#0xB4
   05CF F0                 1026 	movx	@dptr,a
   05D0 90 00 E8           1027 	mov	dptr,#(_a + 0x0068)
   05D3 74 0D              1028 	mov	a,#0x0D
   05D5 F0                 1029 	movx	@dptr,a
   05D6 90 00 E9           1030 	mov	dptr,#(_a + 0x0069)
   05D9 74 CD              1031 	mov	a,#0xCD
   05DB F0                 1032 	movx	@dptr,a
   05DC 90 00 EA           1033 	mov	dptr,#(_a + 0x006a)
   05DF 74 F1              1034 	mov	a,#0xF1
   05E1 F0                 1035 	movx	@dptr,a
   05E2 90 00 EB           1036 	mov	dptr,#(_a + 0x006b)
   05E5 74 B8              1037 	mov	a,#0xB8
   05E7 F0                 1038 	movx	@dptr,a
   05E8 90 00 EC           1039 	mov	dptr,#(_a + 0x006c)
   05EB 74 66              1040 	mov	a,#0x66
   05ED F0                 1041 	movx	@dptr,a
   05EE 90 00 ED           1042 	mov	dptr,#(_a + 0x006d)
   05F1 74 0D              1043 	mov	a,#0x0D
   05F3 F0                 1044 	movx	@dptr,a
   05F4 90 00 EE           1045 	mov	dptr,#(_a + 0x006e)
   05F7 74 5D              1046 	mov	a,#0x5D
   05F9 F0                 1047 	movx	@dptr,a
   05FA 90 00 EF           1048 	mov	dptr,#(_a + 0x006f)
   05FD 74 3B              1049 	mov	a,#0x3B
   05FF F0                 1050 	movx	@dptr,a
   0600 90 00 F0           1051 	mov	dptr,#(_a + 0x0070)
   0603 74 2F              1052 	mov	a,#0x2F
   0605 F0                 1053 	movx	@dptr,a
   0606 90 00 F1           1054 	mov	dptr,#(_a + 0x0071)
   0609 74 C4              1055 	mov	a,#0xC4
   060B F0                 1056 	movx	@dptr,a
   060C 90 00 F2           1057 	mov	dptr,#(_a + 0x0072)
   060F 74 4A              1058 	mov	a,#0x4A
   0611 F0                 1059 	movx	@dptr,a
   0612 90 00 F3           1060 	mov	dptr,#(_a + 0x0073)
   0615 74 D1              1061 	mov	a,#0xD1
   0617 F0                 1062 	movx	@dptr,a
   0618 90 00 F4           1063 	mov	dptr,#(_a + 0x0074)
   061B 74 0B              1064 	mov	a,#0x0B
   061D F0                 1065 	movx	@dptr,a
   061E 90 00 F5           1066 	mov	dptr,#(_a + 0x0075)
   0621 74 36              1067 	mov	a,#0x36
   0623 F0                 1068 	movx	@dptr,a
   0624 90 00 F6           1069 	mov	dptr,#(_a + 0x0076)
   0627 74 C6              1070 	mov	a,#0xC6
   0629 F0                 1071 	movx	@dptr,a
   062A 90 00 F7           1072 	mov	dptr,#(_a + 0x0077)
   062D 74 10              1073 	mov	a,#0x10
   062F F0                 1074 	movx	@dptr,a
   0630 90 00 F8           1075 	mov	dptr,#(_a + 0x0078)
   0633 74 1A              1076 	mov	a,#0x1A
   0635 F0                 1077 	movx	@dptr,a
   0636 90 00 F9           1078 	mov	dptr,#(_a + 0x0079)
   0639 74 2F              1079 	mov	a,#0x2F
   063B F0                 1080 	movx	@dptr,a
   063C 90 00 FA           1081 	mov	dptr,#(_a + 0x007a)
   063F 74 72              1082 	mov	a,#0x72
   0641 F0                 1083 	movx	@dptr,a
   0642 90 00 FB           1084 	mov	dptr,#(_a + 0x007b)
   0645 74 D1              1085 	mov	a,#0xD1
   0647 F0                 1086 	movx	@dptr,a
   0648 90 00 FC           1087 	mov	dptr,#(_a + 0x007c)
   064B 74 BB              1088 	mov	a,#0xBB
   064D F0                 1089 	movx	@dptr,a
   064E 90 00 FD           1090 	mov	dptr,#(_a + 0x007d)
   0651 74 15              1091 	mov	a,#0x15
   0653 F0                 1092 	movx	@dptr,a
   0654 90 00 FE           1093 	mov	dptr,#(_a + 0x007e)
   0657 74 29              1094 	mov	a,#0x29
   0659 F0                 1095 	movx	@dptr,a
   065A 90 00 FF           1096 	mov	dptr,#(_a + 0x007f)
   065D 74 CA              1097 	mov	a,#0xCA
   065F F0                 1098 	movx	@dptr,a
                           1099 ;	main.c:15: __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0660 90 01 00           1100 	mov	dptr,#_b
   0663 74 E1              1101 	mov	a,#0xE1
   0665 F0                 1102 	movx	@dptr,a
   0666 90 01 01           1103 	mov	dptr,#(_b + 0x0001)
   0669 74 8A              1104 	mov	a,#0x8A
   066B F0                 1105 	movx	@dptr,a
   066C 90 01 02           1106 	mov	dptr,#(_b + 0x0002)
   066F 74 03              1107 	mov	a,#0x03
   0671 F0                 1108 	movx	@dptr,a
   0672 90 01 03           1109 	mov	dptr,#(_b + 0x0003)
   0675 74 DB              1110 	mov	a,#0xDB
   0677 F0                 1111 	movx	@dptr,a
   0678 90 01 04           1112 	mov	dptr,#(_b + 0x0004)
   067B 74 E0              1113 	mov	a,#0xE0
   067D F0                 1114 	movx	@dptr,a
   067E 90 01 05           1115 	mov	dptr,#(_b + 0x0005)
   0681 74 D9              1116 	mov	a,#0xD9
   0683 F0                 1117 	movx	@dptr,a
   0684 90 01 06           1118 	mov	dptr,#(_b + 0x0006)
   0687 74 F6              1119 	mov	a,#0xF6
   0689 F0                 1120 	movx	@dptr,a
   068A 90 01 07           1121 	mov	dptr,#(_b + 0x0007)
   068D 74 55              1122 	mov	a,#0x55
   068F F0                 1123 	movx	@dptr,a
   0690 90 01 08           1124 	mov	dptr,#(_b + 0x0008)
   0693 74 B6              1125 	mov	a,#0xB6
   0695 F0                 1126 	movx	@dptr,a
   0696 90 01 09           1127 	mov	dptr,#(_b + 0x0009)
   0699 74 27              1128 	mov	a,#0x27
   069B F0                 1129 	movx	@dptr,a
   069C 90 01 0A           1130 	mov	dptr,#(_b + 0x000a)
   069F 74 0A              1131 	mov	a,#0x0A
   06A1 F0                 1132 	movx	@dptr,a
   06A2 90 01 0B           1133 	mov	dptr,#(_b + 0x000b)
   06A5 74 28              1134 	mov	a,#0x28
   06A7 F0                 1135 	movx	@dptr,a
   06A8 90 01 0C           1136 	mov	dptr,#(_b + 0x000c)
   06AB 74 F0              1137 	mov	a,#0xF0
   06AD F0                 1138 	movx	@dptr,a
   06AE 90 01 0D           1139 	mov	dptr,#(_b + 0x000d)
   06B1 74 5E              1140 	mov	a,#0x5E
   06B3 F0                 1141 	movx	@dptr,a
   06B4 90 01 0E           1142 	mov	dptr,#(_b + 0x000e)
   06B7 74 74              1143 	mov	a,#0x74
   06B9 F0                 1144 	movx	@dptr,a
   06BA 90 01 0F           1145 	mov	dptr,#(_b + 0x000f)
   06BD 74 7F              1146 	mov	a,#0x7F
   06BF F0                 1147 	movx	@dptr,a
   06C0 90 01 10           1148 	mov	dptr,#(_b + 0x0010)
   06C3 74 E6              1149 	mov	a,#0xE6
   06C5 F0                 1150 	movx	@dptr,a
   06C6 90 01 11           1151 	mov	dptr,#(_b + 0x0011)
   06C9 74 9F              1152 	mov	a,#0x9F
   06CB F0                 1153 	movx	@dptr,a
   06CC 90 01 12           1154 	mov	dptr,#(_b + 0x0012)
   06CF 74 4C              1155 	mov	a,#0x4C
   06D1 F0                 1156 	movx	@dptr,a
   06D2 90 01 13           1157 	mov	dptr,#(_b + 0x0013)
   06D5 74 FB              1158 	mov	a,#0xFB
   06D7 F0                 1159 	movx	@dptr,a
   06D8 90 01 14           1160 	mov	dptr,#(_b + 0x0014)
   06DB 74 26              1161 	mov	a,#0x26
   06DD F0                 1162 	movx	@dptr,a
   06DE 90 01 15           1163 	mov	dptr,#(_b + 0x0015)
   06E1 74 8C              1164 	mov	a,#0x8C
   06E3 F0                 1165 	movx	@dptr,a
   06E4 90 01 16           1166 	mov	dptr,#(_b + 0x0016)
   06E7 74 9E              1167 	mov	a,#0x9E
   06E9 F0                 1168 	movx	@dptr,a
   06EA 90 01 17           1169 	mov	dptr,#(_b + 0x0017)
   06ED 74 87              1170 	mov	a,#0x87
   06EF F0                 1171 	movx	@dptr,a
   06F0 90 01 18           1172 	mov	dptr,#(_b + 0x0018)
   06F3 74 83              1173 	mov	a,#0x83
   06F5 F0                 1174 	movx	@dptr,a
   06F6 90 01 19           1175 	mov	dptr,#(_b + 0x0019)
   06F9 74 22              1176 	mov	a,#0x22
   06FB F0                 1177 	movx	@dptr,a
   06FC 90 01 1A           1178 	mov	dptr,#(_b + 0x001a)
   06FF 74 F2              1179 	mov	a,#0xF2
   0701 F0                 1180 	movx	@dptr,a
   0702 90 01 1B           1181 	mov	dptr,#(_b + 0x001b)
   0705 74 75              1182 	mov	a,#0x75
   0707 F0                 1183 	movx	@dptr,a
   0708 90 01 1C           1184 	mov	dptr,#(_b + 0x001c)
   070B 74 D2              1185 	mov	a,#0xD2
   070D F0                 1186 	movx	@dptr,a
   070E 90 01 1D           1187 	mov	dptr,#(_b + 0x001d)
   0711 74 B3              1188 	mov	a,#0xB3
   0713 F0                 1189 	movx	@dptr,a
   0714 90 01 1E           1190 	mov	dptr,#(_b + 0x001e)
   0717 74 61              1191 	mov	a,#0x61
   0719 F0                 1192 	movx	@dptr,a
   071A 90 01 1F           1193 	mov	dptr,#(_b + 0x001f)
   071D 74 A2              1194 	mov	a,#0xA2
   071F F0                 1195 	movx	@dptr,a
   0720 90 01 20           1196 	mov	dptr,#(_b + 0x0020)
   0723 74 9D              1197 	mov	a,#0x9D
   0725 F0                 1198 	movx	@dptr,a
   0726 90 01 21           1199 	mov	dptr,#(_b + 0x0021)
   0729 74 50              1200 	mov	a,#0x50
   072B F0                 1201 	movx	@dptr,a
   072C 90 01 22           1202 	mov	dptr,#(_b + 0x0022)
   072F 74 71              1203 	mov	a,#0x71
   0731 F0                 1204 	movx	@dptr,a
   0732 90 01 23           1205 	mov	dptr,#(_b + 0x0023)
   0735 74 5E              1206 	mov	a,#0x5E
   0737 F0                 1207 	movx	@dptr,a
   0738 90 01 24           1208 	mov	dptr,#(_b + 0x0024)
   073B 74 C9              1209 	mov	a,#0xC9
   073D F0                 1210 	movx	@dptr,a
   073E 90 01 25           1211 	mov	dptr,#(_b + 0x0025)
   0741 74 DD              1212 	mov	a,#0xDD
   0743 F0                 1213 	movx	@dptr,a
   0744 90 01 26           1214 	mov	dptr,#(_b + 0x0026)
   0747 74 DD              1215 	mov	a,#0xDD
   0749 F0                 1216 	movx	@dptr,a
   074A 90 01 27           1217 	mov	dptr,#(_b + 0x0027)
   074D 74 74              1218 	mov	a,#0x74
   074F F0                 1219 	movx	@dptr,a
   0750 90 01 28           1220 	mov	dptr,#(_b + 0x0028)
   0753 74 0A              1221 	mov	a,#0x0A
   0755 F0                 1222 	movx	@dptr,a
   0756 90 01 29           1223 	mov	dptr,#(_b + 0x0029)
   0759 74 3C              1224 	mov	a,#0x3C
   075B F0                 1225 	movx	@dptr,a
   075C 90 01 2A           1226 	mov	dptr,#(_b + 0x002a)
   075F 74 C0              1227 	mov	a,#0xC0
   0761 F0                 1228 	movx	@dptr,a
   0762 90 01 2B           1229 	mov	dptr,#(_b + 0x002b)
   0765 74 30              1230 	mov	a,#0x30
   0767 F0                 1231 	movx	@dptr,a
   0768 90 01 2C           1232 	mov	dptr,#(_b + 0x002c)
   076B 74 3E              1233 	mov	a,#0x3E
   076D F0                 1234 	movx	@dptr,a
   076E 90 01 2D           1235 	mov	dptr,#(_b + 0x002d)
   0771 74 E5              1236 	mov	a,#0xE5
   0773 F0                 1237 	movx	@dptr,a
   0774 90 01 2E           1238 	mov	dptr,#(_b + 0x002e)
   0777 74 20              1239 	mov	a,#0x20
   0779 F0                 1240 	movx	@dptr,a
   077A 90 01 2F           1241 	mov	dptr,#(_b + 0x002f)
   077D 74 02              1242 	mov	a,#0x02
   077F F0                 1243 	movx	@dptr,a
   0780 90 01 30           1244 	mov	dptr,#(_b + 0x0030)
   0783 74 B3              1245 	mov	a,#0xB3
   0785 F0                 1246 	movx	@dptr,a
   0786 90 01 31           1247 	mov	dptr,#(_b + 0x0031)
   0789 74 12              1248 	mov	a,#0x12
   078B F0                 1249 	movx	@dptr,a
   078C 90 01 32           1250 	mov	dptr,#(_b + 0x0032)
   078F 74 4F              1251 	mov	a,#0x4F
   0791 F0                 1252 	movx	@dptr,a
   0792 90 01 33           1253 	mov	dptr,#(_b + 0x0033)
   0795 74 AB              1254 	mov	a,#0xAB
   0797 F0                 1255 	movx	@dptr,a
   0798 90 01 34           1256 	mov	dptr,#(_b + 0x0034)
   079B 74 60              1257 	mov	a,#0x60
   079D F0                 1258 	movx	@dptr,a
   079E 90 01 35           1259 	mov	dptr,#(_b + 0x0035)
   07A1 74 27              1260 	mov	a,#0x27
   07A3 F0                 1261 	movx	@dptr,a
   07A4 90 01 36           1262 	mov	dptr,#(_b + 0x0036)
   07A7 74 07              1263 	mov	a,#0x07
   07A9 F0                 1264 	movx	@dptr,a
   07AA 90 01 37           1265 	mov	dptr,#(_b + 0x0037)
   07AD 74 17              1266 	mov	a,#0x17
   07AF F0                 1267 	movx	@dptr,a
   07B0 90 01 38           1268 	mov	dptr,#(_b + 0x0038)
   07B3 74 DD              1269 	mov	a,#0xDD
   07B5 F0                 1270 	movx	@dptr,a
   07B6 90 01 39           1271 	mov	dptr,#(_b + 0x0039)
   07B9 E4                 1272 	clr	a
   07BA F0                 1273 	movx	@dptr,a
   07BB 90 01 3A           1274 	mov	dptr,#(_b + 0x003a)
   07BE 74 C2              1275 	mov	a,#0xC2
   07C0 F0                 1276 	movx	@dptr,a
   07C1 90 01 3B           1277 	mov	dptr,#(_b + 0x003b)
   07C4 74 E1              1278 	mov	a,#0xE1
   07C6 F0                 1279 	movx	@dptr,a
   07C7 90 01 3C           1280 	mov	dptr,#(_b + 0x003c)
   07CA 74 BC              1281 	mov	a,#0xBC
   07CC F0                 1282 	movx	@dptr,a
   07CD 90 01 3D           1283 	mov	dptr,#(_b + 0x003d)
   07D0 74 04              1284 	mov	a,#0x04
   07D2 F0                 1285 	movx	@dptr,a
   07D3 90 01 3E           1286 	mov	dptr,#(_b + 0x003e)
   07D6 74 AE              1287 	mov	a,#0xAE
   07D8 F0                 1288 	movx	@dptr,a
   07D9 90 01 3F           1289 	mov	dptr,#(_b + 0x003f)
   07DC 74 21              1290 	mov	a,#0x21
   07DE F0                 1291 	movx	@dptr,a
   07DF 90 01 40           1292 	mov	dptr,#(_b + 0x0040)
   07E2 74 38              1293 	mov	a,#0x38
   07E4 F0                 1294 	movx	@dptr,a
   07E5 90 01 41           1295 	mov	dptr,#(_b + 0x0041)
   07E8 74 CA              1296 	mov	a,#0xCA
   07EA F0                 1297 	movx	@dptr,a
   07EB 90 01 42           1298 	mov	dptr,#(_b + 0x0042)
   07EE 74 AA              1299 	mov	a,#0xAA
   07F0 F0                 1300 	movx	@dptr,a
   07F1 90 01 43           1301 	mov	dptr,#(_b + 0x0043)
   07F4 74 8F              1302 	mov	a,#0x8F
   07F6 F0                 1303 	movx	@dptr,a
   07F7 90 01 44           1304 	mov	dptr,#(_b + 0x0044)
   07FA 74 74              1305 	mov	a,#0x74
   07FC F0                 1306 	movx	@dptr,a
   07FD 90 01 45           1307 	mov	dptr,#(_b + 0x0045)
   0800 74 D5              1308 	mov	a,#0xD5
   0802 F0                 1309 	movx	@dptr,a
   0803 90 01 46           1310 	mov	dptr,#(_b + 0x0046)
   0806 74 02              1311 	mov	a,#0x02
   0808 F0                 1312 	movx	@dptr,a
   0809 90 01 47           1313 	mov	dptr,#(_b + 0x0047)
   080C 74 10              1314 	mov	a,#0x10
   080E F0                 1315 	movx	@dptr,a
   080F 90 01 48           1316 	mov	dptr,#(_b + 0x0048)
   0812 74 15              1317 	mov	a,#0x15
   0814 F0                 1318 	movx	@dptr,a
   0815 90 01 49           1319 	mov	dptr,#(_b + 0x0049)
   0818 74 87              1320 	mov	a,#0x87
   081A F0                 1321 	movx	@dptr,a
   081B 90 01 4A           1322 	mov	dptr,#(_b + 0x004a)
   081E 74 58              1323 	mov	a,#0x58
   0820 F0                 1324 	movx	@dptr,a
   0821 90 01 4B           1325 	mov	dptr,#(_b + 0x004b)
   0824 74 08              1326 	mov	a,#0x08
   0826 F0                 1327 	movx	@dptr,a
   0827 90 01 4C           1328 	mov	dptr,#(_b + 0x004c)
   082A 74 CC              1329 	mov	a,#0xCC
   082C F0                 1330 	movx	@dptr,a
   082D 90 01 4D           1331 	mov	dptr,#(_b + 0x004d)
   0830 74 9A              1332 	mov	a,#0x9A
   0832 F0                 1333 	movx	@dptr,a
   0833 90 01 4E           1334 	mov	dptr,#(_b + 0x004e)
   0836 74 42              1335 	mov	a,#0x42
   0838 F0                 1336 	movx	@dptr,a
   0839 90 01 4F           1337 	mov	dptr,#(_b + 0x004f)
   083C 74 BD              1338 	mov	a,#0xBD
   083E F0                 1339 	movx	@dptr,a
   083F 90 01 50           1340 	mov	dptr,#(_b + 0x0050)
   0842 74 02              1341 	mov	a,#0x02
   0844 F0                 1342 	movx	@dptr,a
   0845 90 01 51           1343 	mov	dptr,#(_b + 0x0051)
   0848 74 97              1344 	mov	a,#0x97
   084A F0                 1345 	movx	@dptr,a
   084B 90 01 52           1346 	mov	dptr,#(_b + 0x0052)
   084E 74 CE              1347 	mov	a,#0xCE
   0850 F0                 1348 	movx	@dptr,a
   0851 90 01 53           1349 	mov	dptr,#(_b + 0x0053)
   0854 74 2B              1350 	mov	a,#0x2B
   0856 F0                 1351 	movx	@dptr,a
   0857 90 01 54           1352 	mov	dptr,#(_b + 0x0054)
   085A 74 39              1353 	mov	a,#0x39
   085C F0                 1354 	movx	@dptr,a
   085D 90 01 55           1355 	mov	dptr,#(_b + 0x0055)
   0860 74 38              1356 	mov	a,#0x38
   0862 F0                 1357 	movx	@dptr,a
   0863 90 01 56           1358 	mov	dptr,#(_b + 0x0056)
   0866 74 99              1359 	mov	a,#0x99
   0868 F0                 1360 	movx	@dptr,a
   0869 90 01 57           1361 	mov	dptr,#(_b + 0x0057)
   086C 74 AC              1362 	mov	a,#0xAC
   086E F0                 1363 	movx	@dptr,a
   086F 90 01 58           1364 	mov	dptr,#(_b + 0x0058)
   0872 74 81              1365 	mov	a,#0x81
   0874 F0                 1366 	movx	@dptr,a
   0875 90 01 59           1367 	mov	dptr,#(_b + 0x0059)
   0878 74 BB              1368 	mov	a,#0xBB
   087A F0                 1369 	movx	@dptr,a
   087B 90 01 5A           1370 	mov	dptr,#(_b + 0x005a)
   087E 74 C3              1371 	mov	a,#0xC3
   0880 F0                 1372 	movx	@dptr,a
   0881 90 01 5B           1373 	mov	dptr,#(_b + 0x005b)
   0884 74 FF              1374 	mov	a,#0xFF
   0886 F0                 1375 	movx	@dptr,a
   0887 90 01 5C           1376 	mov	dptr,#(_b + 0x005c)
   088A 74 BC              1377 	mov	a,#0xBC
   088C F0                 1378 	movx	@dptr,a
   088D 90 01 5D           1379 	mov	dptr,#(_b + 0x005d)
   0890 74 C1              1380 	mov	a,#0xC1
   0892 F0                 1381 	movx	@dptr,a
   0893 90 01 5E           1382 	mov	dptr,#(_b + 0x005e)
   0896 74 B8              1383 	mov	a,#0xB8
   0898 F0                 1384 	movx	@dptr,a
   0899 90 01 5F           1385 	mov	dptr,#(_b + 0x005f)
   089C 74 E1              1386 	mov	a,#0xE1
   089E F0                 1387 	movx	@dptr,a
   089F 90 01 60           1388 	mov	dptr,#(_b + 0x0060)
   08A2 74 24              1389 	mov	a,#0x24
   08A4 F0                 1390 	movx	@dptr,a
   08A5 90 01 61           1391 	mov	dptr,#(_b + 0x0061)
   08A8 74 8D              1392 	mov	a,#0x8D
   08AA F0                 1393 	movx	@dptr,a
   08AB 90 01 62           1394 	mov	dptr,#(_b + 0x0062)
   08AE 74 C5              1395 	mov	a,#0xC5
   08B0 F0                 1396 	movx	@dptr,a
   08B1 90 01 63           1397 	mov	dptr,#(_b + 0x0063)
   08B4 74 20              1398 	mov	a,#0x20
   08B6 F0                 1399 	movx	@dptr,a
   08B7 90 01 64           1400 	mov	dptr,#(_b + 0x0064)
   08BA 74 89              1401 	mov	a,#0x89
   08BC F0                 1402 	movx	@dptr,a
   08BD 90 01 65           1403 	mov	dptr,#(_b + 0x0065)
   08C0 74 98              1404 	mov	a,#0x98
   08C2 F0                 1405 	movx	@dptr,a
   08C3 90 01 66           1406 	mov	dptr,#(_b + 0x0066)
   08C6 74 0B              1407 	mov	a,#0x0B
   08C8 F0                 1408 	movx	@dptr,a
   08C9 90 01 67           1409 	mov	dptr,#(_b + 0x0067)
   08CC 74 50              1410 	mov	a,#0x50
   08CE F0                 1411 	movx	@dptr,a
   08CF 90 01 68           1412 	mov	dptr,#(_b + 0x0068)
   08D2 74 B1              1413 	mov	a,#0xB1
   08D4 F0                 1414 	movx	@dptr,a
   08D5 90 01 69           1415 	mov	dptr,#(_b + 0x0069)
   08D8 74 16              1416 	mov	a,#0x16
   08DA F0                 1417 	movx	@dptr,a
   08DB 90 01 6A           1418 	mov	dptr,#(_b + 0x006a)
   08DE 74 9A              1419 	mov	a,#0x9A
   08E0 F0                 1420 	movx	@dptr,a
   08E1 90 01 6B           1421 	mov	dptr,#(_b + 0x006b)
   08E4 74 2D              1422 	mov	a,#0x2D
   08E6 F0                 1423 	movx	@dptr,a
   08E7 90 01 6C           1424 	mov	dptr,#(_b + 0x006c)
   08EA 74 6E              1425 	mov	a,#0x6E
   08EC F0                 1426 	movx	@dptr,a
   08ED 90 01 6D           1427 	mov	dptr,#(_b + 0x006d)
   08F0 74 5A              1428 	mov	a,#0x5A
   08F2 F0                 1429 	movx	@dptr,a
   08F3 90 01 6E           1430 	mov	dptr,#(_b + 0x006e)
   08F6 74 7B              1431 	mov	a,#0x7B
   08F8 F0                 1432 	movx	@dptr,a
   08F9 90 01 6F           1433 	mov	dptr,#(_b + 0x006f)
   08FC 74 2F              1434 	mov	a,#0x2F
   08FE F0                 1435 	movx	@dptr,a
   08FF 90 01 70           1436 	mov	dptr,#(_b + 0x0070)
   0902 74 D4              1437 	mov	a,#0xD4
   0904 F0                 1438 	movx	@dptr,a
   0905 90 01 71           1439 	mov	dptr,#(_b + 0x0071)
   0908 74 92              1440 	mov	a,#0x92
   090A F0                 1441 	movx	@dptr,a
   090B 90 01 72           1442 	mov	dptr,#(_b + 0x0072)
   090E 74 A1              1443 	mov	a,#0xA1
   0910 F0                 1444 	movx	@dptr,a
   0911 90 01 73           1445 	mov	dptr,#(_b + 0x0073)
   0914 74 AA              1446 	mov	a,#0xAA
   0916 F0                 1447 	movx	@dptr,a
   0917 90 01 74           1448 	mov	dptr,#(_b + 0x0074)
   091A 74 A6              1449 	mov	a,#0xA6
   091C F0                 1450 	movx	@dptr,a
   091D 90 01 75           1451 	mov	dptr,#(_b + 0x0075)
   0920 74 E5              1452 	mov	a,#0xE5
   0922 F0                 1453 	movx	@dptr,a
   0923 90 01 76           1454 	mov	dptr,#(_b + 0x0076)
   0926 74 A6              1455 	mov	a,#0xA6
   0928 F0                 1456 	movx	@dptr,a
   0929 90 01 77           1457 	mov	dptr,#(_b + 0x0077)
   092C 74 D2              1458 	mov	a,#0xD2
   092E F0                 1459 	movx	@dptr,a
   092F 90 01 78           1460 	mov	dptr,#(_b + 0x0078)
   0932 74 0D              1461 	mov	a,#0x0D
   0934 F0                 1462 	movx	@dptr,a
   0935 90 01 79           1463 	mov	dptr,#(_b + 0x0079)
   0938 74 0B              1464 	mov	a,#0x0B
   093A F0                 1465 	movx	@dptr,a
   093B 90 01 7A           1466 	mov	dptr,#(_b + 0x007a)
   093E 74 B7              1467 	mov	a,#0xB7
   0940 F0                 1468 	movx	@dptr,a
   0941 90 01 7B           1469 	mov	dptr,#(_b + 0x007b)
   0944 74 B2              1470 	mov	a,#0xB2
   0946 F0                 1471 	movx	@dptr,a
   0947 90 01 7C           1472 	mov	dptr,#(_b + 0x007c)
   094A 74 25              1473 	mov	a,#0x25
   094C F0                 1474 	movx	@dptr,a
   094D 90 01 7D           1475 	mov	dptr,#(_b + 0x007d)
   0950 74 23              1476 	mov	a,#0x23
   0952 F0                 1477 	movx	@dptr,a
   0953 90 01 7E           1478 	mov	dptr,#(_b + 0x007e)
   0956 74 23              1479 	mov	a,#0x23
   0958 F0                 1480 	movx	@dptr,a
   0959 90 01 7F           1481 	mov	dptr,#(_b + 0x007f)
   095C 74 BE              1482 	mov	a,#0xBE
   095E F0                 1483 	movx	@dptr,a
                           1484 	.area GSFINAL (CODE)
   095F 02 00 03           1485 	ljmp	__sdcc_program_startup
                           1486 ;--------------------------------------------------------
                           1487 ; Home
                           1488 ;--------------------------------------------------------
                           1489 	.area HOME    (CODE)
                           1490 	.area HOME    (CODE)
   0003                    1491 __sdcc_program_startup:
   0003 12 09 62           1492 	lcall	_main
                           1493 ;	return from main will lock up
   0006 80 FE              1494 	sjmp .
                           1495 ;--------------------------------------------------------
                           1496 ; code
                           1497 ;--------------------------------------------------------
                           1498 	.area CSEG    (CODE)
                           1499 ;------------------------------------------------------------
                           1500 ;Allocation info for local variables in function 'main'
                           1501 ;------------------------------------------------------------
                           1502 ;tmp                       Allocated with name '_main_tmp_1_1'
                           1503 ;i                         Allocated with name '_main_i_1_1'
                           1504 ;j                         Allocated with name '_main_j_1_1'
                           1505 ;c                         Allocated to registers r6 
                           1506 ;t                         Allocated with name '_main_t_1_1'
                           1507 ;bd                        Allocated to registers 
                           1508 ;n0                        Allocated with name '_main_n0_1_1'
                           1509 ;b0                        Allocated with name '_main_b0_1_1'
                           1510 ;sloc0                     Allocated with name '_main_sloc0_1_0'
                           1511 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                           1512 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                           1513 ;------------------------------------------------------------
                           1514 ;	main.c:20: int main() {
                           1515 ;	-----------------------------------------
                           1516 ;	 function main
                           1517 ;	-----------------------------------------
   0962                    1518 _main:
                    0002   1519 	ar2 = 0x02
                    0003   1520 	ar3 = 0x03
                    0004   1521 	ar4 = 0x04
                    0005   1522 	ar5 = 0x05
                    0006   1523 	ar6 = 0x06
                    0007   1524 	ar7 = 0x07
                    0000   1525 	ar0 = 0x00
                    0001   1526 	ar1 = 0x01
                           1527 ;	main.c:21: unsigned short tmp  = 0;
                           1528 ;	main.c:27: unsigned short t    = 0;
   0962 E4                 1529 	clr	a
   0963 F5 08              1530 	mov	_main_tmp_1_1,a
   0965 F5 09              1531 	mov	(_main_tmp_1_1 + 1),a
   0967 F5 0E              1532 	mov	_main_t_1_1,a
   0969 F5 0F              1533 	mov	(_main_t_1_1 + 1),a
                           1534 ;	main.c:31: unsigned char n0    = n[0];
   096B 90 00 00           1535 	mov	dptr,#_n
   096E E0                 1536 	movx	a,@dptr
   096F F5 10              1537 	mov	_main_n0_1_1,a
                           1538 ;	main.c:32: unsigned char b0    = b[0];
   0971 90 01 00           1539 	mov	dptr,#_b
   0974 E0                 1540 	movx	a,@dptr
   0975 F5 11              1541 	mov	_main_b0_1_1,a
                           1542 ;	main.c:34: startBrk=1;
   0977 90 FF FE           1543 	mov	dptr,#_startBrk
   097A 74 01              1544 	mov	a,#0x01
   097C F0                 1545 	movx	@dptr,a
                           1546 ;	main.c:36: for (i = 0; i < SIZE; i++) {
   097D E4                 1547 	clr	a
   097E F5 0A              1548 	mov	_main_i_1_1,a
   0980 F5 0B              1549 	mov	(_main_i_1_1 + 1),a
   0982                    1550 00107$:
   0982 C3                 1551 	clr	c
   0983 E5 0A              1552 	mov	a,_main_i_1_1
   0985 94 80              1553 	subb	a,#0x80
   0987 E5 0B              1554 	mov	a,(_main_i_1_1 + 1)
   0989 94 00              1555 	subb	a,#0x00
   098B 40 03              1556 	jc	00148$
   098D 02 0A 83           1557 	ljmp	00110$
   0990                    1558 00148$:
                           1559 ;	main.c:37: for (j = 0; j < i; j++) {
   0990 E4                 1560 	clr	a
   0991 F5 0C              1561 	mov	_main_j_1_1,a
   0993 F5 0D              1562 	mov	(_main_j_1_1 + 1),a
   0995                    1563 00103$:
   0995 C3                 1564 	clr	c
   0996 E5 0C              1565 	mov	a,_main_j_1_1
   0998 95 0A              1566 	subb	a,_main_i_1_1
   099A E5 0D              1567 	mov	a,(_main_j_1_1 + 1)
   099C 95 0B              1568 	subb	a,(_main_i_1_1 + 1)
   099E 50 72              1569 	jnc	00106$
                           1570 ;	main.c:38: tmp = (tmp & 0xFF) + a[j]*b[i-j];
   09A0 A8 08              1571 	mov	r0,_main_tmp_1_1
   09A2 79 00              1572 	mov	r1,#0x00
   09A4 E5 0C              1573 	mov	a,_main_j_1_1
   09A6 24 80              1574 	add	a,#_a
   09A8 F5 82              1575 	mov	dpl,a
   09AA E5 0D              1576 	mov	a,(_main_j_1_1 + 1)
   09AC 34 00              1577 	addc	a,#(_a >> 8)
   09AE F5 83              1578 	mov	dph,a
   09B0 E0                 1579 	movx	a,@dptr
   09B1 FE                 1580 	mov	r6,a
   09B2 AF 0A              1581 	mov	r7,_main_i_1_1
   09B4 AC 0C              1582 	mov	r4,_main_j_1_1
   09B6 EF                 1583 	mov	a,r7
   09B7 C3                 1584 	clr	c
   09B8 9C                 1585 	subb	a,r4
   09B9 FF                 1586 	mov	r7,a
   09BA F5 82              1587 	mov	dpl,a
   09BC 75 83 01           1588 	mov	dph,#(_b >> 8)
   09BF E0                 1589 	movx	a,@dptr
   09C0 8E F0              1590 	mov	b,r6
   09C2 A4                 1591 	mul	ab
   09C3 28                 1592 	add	a,r0
   09C4 F5 08              1593 	mov	_main_tmp_1_1,a
   09C6 E9                 1594 	mov	a,r1
   09C7 35 F0              1595 	addc	a,b
   09C9 F5 09              1596 	mov	(_main_tmp_1_1 + 1),a
                           1597 ;	main.c:39: t = t + (tmp >> 8);
   09CB AC 09              1598 	mov	r4,(_main_tmp_1_1 + 1)
   09CD 7D 00              1599 	mov	r5,#0x00
   09CF EC                 1600 	mov	a,r4
   09D0 25 0E              1601 	add	a,_main_t_1_1
   09D2 F5 0E              1602 	mov	_main_t_1_1,a
   09D4 ED                 1603 	mov	a,r5
   09D5 35 0F              1604 	addc	a,(_main_t_1_1 + 1)
   09D7 F5 0F              1605 	mov	(_main_t_1_1 + 1),a
                           1606 ;	main.c:41: tmp = (tmp & 0xFF) + m[j]*n[i-j];
   09D9 AC 08              1607 	mov	r4,_main_tmp_1_1
   09DB 7D 00              1608 	mov	r5,#0x00
   09DD 85 0C 82           1609 	mov	dpl,_main_j_1_1
   09E0 74 02              1610 	mov	a,#(_m >> 8)
   09E2 25 0D              1611 	add	a,(_main_j_1_1 + 1)
   09E4 F5 83              1612 	mov	dph,a
   09E6 E0                 1613 	movx	a,@dptr
   09E7 FE                 1614 	mov	r6,a
   09E8 8F 82              1615 	mov	dpl,r7
   09EA 75 83 00           1616 	mov	dph,#(_n >> 8)
   09ED E0                 1617 	movx	a,@dptr
   09EE FF                 1618 	mov	r7,a
   09EF 8E F0              1619 	mov	b,r6
   09F1 A4                 1620 	mul	ab
   09F2 2C                 1621 	add	a,r4
   09F3 F5 08              1622 	mov	_main_tmp_1_1,a
   09F5 ED                 1623 	mov	a,r5
   09F6 35 F0              1624 	addc	a,b
   09F8 F5 09              1625 	mov	(_main_tmp_1_1 + 1),a
                           1626 ;	main.c:42: t = t + (tmp >> 8);
   09FA AC 09              1627 	mov	r4,(_main_tmp_1_1 + 1)
   09FC 7D 00              1628 	mov	r5,#0x00
   09FE EC                 1629 	mov	a,r4
   09FF 25 0E              1630 	add	a,_main_t_1_1
   0A01 F5 0E              1631 	mov	_main_t_1_1,a
   0A03 ED                 1632 	mov	a,r5
   0A04 35 0F              1633 	addc	a,(_main_t_1_1 + 1)
   0A06 F5 0F              1634 	mov	(_main_t_1_1 + 1),a
                           1635 ;	main.c:37: for (j = 0; j < i; j++) {
   0A08 05 0C              1636 	inc	_main_j_1_1
   0A0A E4                 1637 	clr	a
   0A0B B5 0C 87           1638 	cjne	a,_main_j_1_1,00103$
   0A0E 05 0D              1639 	inc	(_main_j_1_1 + 1)
   0A10 80 83              1640 	sjmp	00103$
   0A12                    1641 00106$:
                           1642 ;	main.c:45: tmp = (tmp & 0xFF)  + a[i]*b0;
   0A12 AC 08              1643 	mov	r4,_main_tmp_1_1
   0A14 7D 00              1644 	mov	r5,#0x00
   0A16 E5 0A              1645 	mov	a,_main_i_1_1
   0A18 24 80              1646 	add	a,#_a
   0A1A F5 82              1647 	mov	dpl,a
   0A1C E5 0B              1648 	mov	a,(_main_i_1_1 + 1)
   0A1E 34 00              1649 	addc	a,#(_a >> 8)
   0A20 F5 83              1650 	mov	dph,a
   0A22 E0                 1651 	movx	a,@dptr
   0A23 FE                 1652 	mov	r6,a
   0A24 8E F0              1653 	mov	b,r6
   0A26 E5 11              1654 	mov	a,_main_b0_1_1
   0A28 A4                 1655 	mul	ab
   0A29 2C                 1656 	add	a,r4
   0A2A F5 08              1657 	mov	_main_tmp_1_1,a
   0A2C ED                 1658 	mov	a,r5
   0A2D 35 F0              1659 	addc	a,b
   0A2F F5 09              1660 	mov	(_main_tmp_1_1 + 1),a
                           1661 ;	main.c:47: t = t + (tmp >> 8);
   0A31 AC 09              1662 	mov	r4,(_main_tmp_1_1 + 1)
   0A33 7D 00              1663 	mov	r5,#0x00
   0A35 EC                 1664 	mov	a,r4
   0A36 25 0E              1665 	add	a,_main_t_1_1
   0A38 F5 0E              1666 	mov	_main_t_1_1,a
   0A3A ED                 1667 	mov	a,r5
   0A3B 35 0F              1668 	addc	a,(_main_t_1_1 + 1)
   0A3D F5 0F              1669 	mov	(_main_t_1_1 + 1),a
                           1670 ;	main.c:49: c = (tmp & 0xFF)*n_prime;
   0A3F AC 08              1671 	mov	r4,_main_tmp_1_1
   0A41 7D 00              1672 	mov	r5,#0x00
   0A43 8C 06              1673 	mov	ar6,r4
   0A45 EE                 1674 	mov	a,r6
   0A46 75 F0 A5           1675 	mov	b,#0xA5
   0A49 A4                 1676 	mul	ab
   0A4A FE                 1677 	mov	r6,a
                           1678 ;	main.c:50: m[i] = c;
   0A4B 85 0A 82           1679 	mov	dpl,_main_i_1_1
   0A4E 74 02              1680 	mov	a,#(_m >> 8)
   0A50 25 0B              1681 	add	a,(_main_i_1_1 + 1)
   0A52 F5 83              1682 	mov	dph,a
   0A54 EE                 1683 	mov	a,r6
   0A55 F0                 1684 	movx	@dptr,a
                           1685 ;	main.c:52: tmp = (tmp & 0xFF) + c*n0;
   0A56 8E F0              1686 	mov	b,r6
   0A58 E5 10              1687 	mov	a,_main_n0_1_1
   0A5A A4                 1688 	mul	ab
   0A5B 2C                 1689 	add	a,r4
   0A5C F5 08              1690 	mov	_main_tmp_1_1,a
   0A5E ED                 1691 	mov	a,r5
   0A5F 35 F0              1692 	addc	a,b
   0A61 F5 09              1693 	mov	(_main_tmp_1_1 + 1),a
                           1694 ;	main.c:54: tmp = t + (tmp >> 8);
   0A63 AC 09              1695 	mov	r4,(_main_tmp_1_1 + 1)
   0A65 7D 00              1696 	mov	r5,#0x00
   0A67 EC                 1697 	mov	a,r4
   0A68 25 0E              1698 	add	a,_main_t_1_1
   0A6A F5 08              1699 	mov	_main_tmp_1_1,a
   0A6C ED                 1700 	mov	a,r5
   0A6D 35 0F              1701 	addc	a,(_main_t_1_1 + 1)
   0A6F F5 09              1702 	mov	(_main_tmp_1_1 + 1),a
                           1703 ;	main.c:55: t = ((tmp >> 8) & 0xFF);
   0A71 AC 09              1704 	mov	r4,(_main_tmp_1_1 + 1)
   0A73 8C 0E              1705 	mov	_main_t_1_1,r4
   0A75 75 0F 00           1706 	mov	(_main_t_1_1 + 1),#0x00
                           1707 ;	main.c:36: for (i = 0; i < SIZE; i++) {
   0A78 05 0A              1708 	inc	_main_i_1_1
   0A7A E4                 1709 	clr	a
   0A7B B5 0A 02           1710 	cjne	a,_main_i_1_1,00151$
   0A7E 05 0B              1711 	inc	(_main_i_1_1 + 1)
   0A80                    1712 00151$:
   0A80 02 09 82           1713 	ljmp	00107$
   0A83                    1714 00110$:
                           1715 ;	main.c:58: for (i = SIZE; i < 2*SIZE; i++) {
   0A83 75 0A 80           1716 	mov	_main_i_1_1,#0x80
   0A86 E4                 1717 	clr	a
   0A87 F5 0B              1718 	mov	(_main_i_1_1 + 1),a
   0A89                    1719 00115$:
   0A89 74 FF              1720 	mov	a,#0x100 - 0x01
   0A8B 25 0B              1721 	add	a,(_main_i_1_1 + 1)
   0A8D 50 03              1722 	jnc	00152$
   0A8F 02 0B 46           1723 	ljmp	00118$
   0A92                    1724 00152$:
                           1725 ;	main.c:59: for (j = i-SIZE+1; j < SIZE; j++) {
   0A92 74 81              1726 	mov	a,#0x81
   0A94 25 0A              1727 	add	a,_main_i_1_1
   0A96 FE                 1728 	mov	r6,a
   0A97 74 FF              1729 	mov	a,#0xFF
   0A99 35 0B              1730 	addc	a,(_main_i_1_1 + 1)
   0A9B FF                 1731 	mov	r7,a
   0A9C 8E 00              1732 	mov	ar0,r6
   0A9E 8F 01              1733 	mov	ar1,r7
   0AA0                    1734 00111$:
   0AA0 C3                 1735 	clr	c
   0AA1 E8                 1736 	mov	a,r0
   0AA2 94 80              1737 	subb	a,#0x80
   0AA4 E9                 1738 	mov	a,r1
   0AA5 94 00              1739 	subb	a,#0x00
   0AA7 50 73              1740 	jnc	00114$
                           1741 ;	main.c:60: tmp = (tmp & 0xFF)  + a[j]*b[i-j];
   0AA9 85 08 12           1742 	mov	_main_sloc0_1_0,_main_tmp_1_1
   0AAC 75 13 00           1743 	mov	(_main_sloc0_1_0 + 1),#0x00
   0AAF E8                 1744 	mov	a,r0
   0AB0 24 80              1745 	add	a,#_a
   0AB2 F5 82              1746 	mov	dpl,a
   0AB4 E9                 1747 	mov	a,r1
   0AB5 34 00              1748 	addc	a,#(_a >> 8)
   0AB7 F5 83              1749 	mov	dph,a
   0AB9 E0                 1750 	movx	a,@dptr
   0ABA F5 15              1751 	mov	_main_sloc2_1_0,a
   0ABC 85 0A 14           1752 	mov	_main_sloc1_1_0,_main_i_1_1
   0ABF 88 05              1753 	mov	ar5,r0
   0AC1 E5 14              1754 	mov	a,_main_sloc1_1_0
   0AC3 C3                 1755 	clr	c
   0AC4 9D                 1756 	subb	a,r5
   0AC5 FD                 1757 	mov	r5,a
   0AC6 F5 82              1758 	mov	dpl,a
   0AC8 75 83 01           1759 	mov	dph,#(_b >> 8)
   0ACB E0                 1760 	movx	a,@dptr
   0ACC 85 15 F0           1761 	mov	b,_main_sloc2_1_0
   0ACF A4                 1762 	mul	ab
   0AD0 25 12              1763 	add	a,_main_sloc0_1_0
   0AD2 F5 08              1764 	mov	_main_tmp_1_1,a
   0AD4 E5 13              1765 	mov	a,(_main_sloc0_1_0 + 1)
   0AD6 35 F0              1766 	addc	a,b
   0AD8 F5 09              1767 	mov	(_main_tmp_1_1 + 1),a
                           1768 ;	main.c:61: t = t + (tmp >> 8);
   0ADA AC 09              1769 	mov	r4,(_main_tmp_1_1 + 1)
   0ADC 7A 00              1770 	mov	r2,#0x00
   0ADE EC                 1771 	mov	a,r4
   0ADF 25 0E              1772 	add	a,_main_t_1_1
   0AE1 F5 0E              1773 	mov	_main_t_1_1,a
   0AE3 EA                 1774 	mov	a,r2
   0AE4 35 0F              1775 	addc	a,(_main_t_1_1 + 1)
   0AE6 F5 0F              1776 	mov	(_main_t_1_1 + 1),a
                           1777 ;	main.c:63: tmp = (tmp & 0xFF) + m[j]*n[i-j];
   0AE8 AA 08              1778 	mov	r2,_main_tmp_1_1
   0AEA 7B 00              1779 	mov	r3,#0x00
   0AEC 88 82              1780 	mov	dpl,r0
   0AEE 74 02              1781 	mov	a,#(_m >> 8)
   0AF0 29                 1782 	add	a,r1
   0AF1 F5 83              1783 	mov	dph,a
   0AF3 E0                 1784 	movx	a,@dptr
   0AF4 FC                 1785 	mov	r4,a
   0AF5 8D 82              1786 	mov	dpl,r5
   0AF7 75 83 00           1787 	mov	dph,#(_n >> 8)
   0AFA E0                 1788 	movx	a,@dptr
   0AFB FD                 1789 	mov	r5,a
   0AFC 8C F0              1790 	mov	b,r4
   0AFE A4                 1791 	mul	ab
   0AFF 2A                 1792 	add	a,r2
   0B00 F5 08              1793 	mov	_main_tmp_1_1,a
   0B02 EB                 1794 	mov	a,r3
   0B03 35 F0              1795 	addc	a,b
   0B05 F5 09              1796 	mov	(_main_tmp_1_1 + 1),a
                           1797 ;	main.c:64: t = t + (tmp >> 8);
   0B07 AA 09              1798 	mov	r2,(_main_tmp_1_1 + 1)
   0B09 7B 00              1799 	mov	r3,#0x00
   0B0B EA                 1800 	mov	a,r2
   0B0C 25 0E              1801 	add	a,_main_t_1_1
   0B0E F5 0E              1802 	mov	_main_t_1_1,a
   0B10 EB                 1803 	mov	a,r3
   0B11 35 0F              1804 	addc	a,(_main_t_1_1 + 1)
   0B13 F5 0F              1805 	mov	(_main_t_1_1 + 1),a
                           1806 ;	main.c:59: for (j = i-SIZE+1; j < SIZE; j++) {
   0B15 08                 1807 	inc	r0
   0B16 B8 00 87           1808 	cjne	r0,#0x00,00111$
   0B19 09                 1809 	inc	r1
   0B1A 80 84              1810 	sjmp	00111$
   0B1C                    1811 00114$:
                           1812 ;	main.c:67: m[i-SIZE] = (tmp & 0xFF);
   0B1C E5 0A              1813 	mov	a,_main_i_1_1
   0B1E FC                 1814 	mov	r4,a
   0B1F 24 80              1815 	add	a,#0x80+_m
   0B21 F5 82              1816 	mov	dpl,a
   0B23 E4                 1817 	clr	a
   0B24 34 02              1818 	addc	a,#(_m >> 8)
   0B26 F5 83              1819 	mov	dph,a
   0B28 AA 08              1820 	mov	r2,_main_tmp_1_1
   0B2A 7B 00              1821 	mov	r3,#0x00
   0B2C EA                 1822 	mov	a,r2
   0B2D F0                 1823 	movx	@dptr,a
                           1824 ;	main.c:68: tmp = (t & 0xFF);
   0B2E 85 0E 08           1825 	mov	_main_tmp_1_1,_main_t_1_1
   0B31 75 09 00           1826 	mov	(_main_tmp_1_1 + 1),#0x00
                           1827 ;	main.c:69: t = ((t >> 8) & 0xFF);
   0B34 AA 0F              1828 	mov	r2,(_main_t_1_1 + 1)
   0B36 8A 0E              1829 	mov	_main_t_1_1,r2
   0B38 75 0F 00           1830 	mov	(_main_t_1_1 + 1),#0x00
                           1831 ;	main.c:58: for (i = SIZE; i < 2*SIZE; i++) {
   0B3B 05 0A              1832 	inc	_main_i_1_1
   0B3D E4                 1833 	clr	a
   0B3E B5 0A 02           1834 	cjne	a,_main_i_1_1,00155$
   0B41 05 0B              1835 	inc	(_main_i_1_1 + 1)
   0B43                    1836 00155$:
   0B43 02 0A 89           1837 	ljmp	00115$
   0B46                    1838 00118$:
                           1839 ;	main.c:72: m[SIZE] = tmp;
   0B46 AA 08              1840 	mov	r2,_main_tmp_1_1
   0B48 90 02 80           1841 	mov	dptr,#(_m + 0x0080)
   0B4B EA                 1842 	mov	a,r2
   0B4C F0                 1843 	movx	@dptr,a
                           1844 ;	main.c:73: tmp = m[0] - n[0];
   0B4D 90 02 00           1845 	mov	dptr,#_m
   0B50 E0                 1846 	movx	a,@dptr
   0B51 FA                 1847 	mov	r2,a
   0B52 7B 00              1848 	mov	r3,#0x00
   0B54 90 00 00           1849 	mov	dptr,#_n
   0B57 E0                 1850 	movx	a,@dptr
   0B58 FC                 1851 	mov	r4,a
   0B59 7D 00              1852 	mov	r5,#0x00
   0B5B EA                 1853 	mov	a,r2
   0B5C C3                 1854 	clr	c
   0B5D 9C                 1855 	subb	a,r4
   0B5E F5 08              1856 	mov	_main_tmp_1_1,a
   0B60 EB                 1857 	mov	a,r3
   0B61 9D                 1858 	subb	a,r5
   0B62 F5 09              1859 	mov	(_main_tmp_1_1 + 1),a
                           1860 ;	main.c:75: for (i=0; i < SIZE; i++) {
   0B64 7A 00              1861 	mov	r2,#0x00
   0B66 7B 00              1862 	mov	r3,#0x00
   0B68                    1863 00119$:
   0B68 C3                 1864 	clr	c
   0B69 EA                 1865 	mov	a,r2
   0B6A 94 80              1866 	subb	a,#0x80
   0B6C EB                 1867 	mov	a,r3
   0B6D 94 00              1868 	subb	a,#0x00
   0B6F 50 3C              1869 	jnc	00122$
                           1870 ;	main.c:76: tmp = m[i] - n[i] - (tmp >> 8);
   0B71 8A 82              1871 	mov	dpl,r2
   0B73 74 02              1872 	mov	a,#(_m >> 8)
   0B75 2B                 1873 	add	a,r3
   0B76 F5 83              1874 	mov	dph,a
   0B78 E0                 1875 	movx	a,@dptr
   0B79 FC                 1876 	mov	r4,a
   0B7A 7D 00              1877 	mov	r5,#0x00
   0B7C 8A 82              1878 	mov	dpl,r2
   0B7E 74 00              1879 	mov	a,#(_n >> 8)
   0B80 2B                 1880 	add	a,r3
   0B81 F5 83              1881 	mov	dph,a
   0B83 E0                 1882 	movx	a,@dptr
   0B84 F8                 1883 	mov	r0,a
   0B85 79 00              1884 	mov	r1,#0x00
   0B87 EC                 1885 	mov	a,r4
   0B88 C3                 1886 	clr	c
   0B89 98                 1887 	subb	a,r0
   0B8A FC                 1888 	mov	r4,a
   0B8B ED                 1889 	mov	a,r5
   0B8C 99                 1890 	subb	a,r1
   0B8D FD                 1891 	mov	r5,a
   0B8E A8 09              1892 	mov	r0,(_main_tmp_1_1 + 1)
   0B90 79 00              1893 	mov	r1,#0x00
   0B92 EC                 1894 	mov	a,r4
   0B93 C3                 1895 	clr	c
   0B94 98                 1896 	subb	a,r0
   0B95 F5 08              1897 	mov	_main_tmp_1_1,a
   0B97 ED                 1898 	mov	a,r5
   0B98 99                 1899 	subb	a,r1
   0B99 F5 09              1900 	mov	(_main_tmp_1_1 + 1),a
                           1901 ;	main.c:77: u[i] = tmp;
   0B9B 8A 82              1902 	mov	dpl,r2
   0B9D 74 02              1903 	mov	a,#(_u >> 8)
   0B9F 2B                 1904 	add	a,r3
   0BA0 F5 83              1905 	mov	dph,a
   0BA2 E5 08              1906 	mov	a,_main_tmp_1_1
   0BA4 FC                 1907 	mov	r4,a
   0BA5 F0                 1908 	movx	@dptr,a
                           1909 ;	main.c:75: for (i=0; i < SIZE; i++) {
   0BA6 0A                 1910 	inc	r2
   0BA7 BA 00 BE           1911 	cjne	r2,#0x00,00119$
   0BAA 0B                 1912 	inc	r3
   0BAB 80 BB              1913 	sjmp	00119$
   0BAD                    1914 00122$:
                           1915 ;	main.c:80: j = m[SIZE] - (tmp >> 8);
   0BAD 90 02 80           1916 	mov	dptr,#(_m + 0x0080)
   0BB0 E0                 1917 	movx	a,@dptr
   0BB1 FA                 1918 	mov	r2,a
   0BB2 7B 00              1919 	mov	r3,#0x00
   0BB4 AC 09              1920 	mov	r4,(_main_tmp_1_1 + 1)
   0BB6 7D 00              1921 	mov	r5,#0x00
   0BB8 EA                 1922 	mov	a,r2
   0BB9 C3                 1923 	clr	c
   0BBA 9C                 1924 	subb	a,r4
   0BBB EB                 1925 	mov	a,r3
   0BBC 9D                 1926 	subb	a,r5
                           1927 ;	main.c:82: if ((j >> 8) == 0) {
   0BBD FE                 1928 	mov	r6,a
   0BBE 7F 00              1929 	mov	r7,#0x00
   0BC0 4F                 1930 	orl	a,r7
                           1931 ;	main.c:83: for (i = 0; i < SIZE; i++) {
   0BC1 70 26              1932 	jnz	00102$
   0BC3 FA                 1933 	mov	r2,a
   0BC4 FB                 1934 	mov	r3,a
   0BC5                    1935 00123$:
   0BC5 C3                 1936 	clr	c
   0BC6 EA                 1937 	mov	a,r2
   0BC7 94 80              1938 	subb	a,#0x80
   0BC9 EB                 1939 	mov	a,r3
   0BCA 94 00              1940 	subb	a,#0x00
   0BCC 50 1B              1941 	jnc	00102$
                           1942 ;	main.c:84: m[i] = u[i];
   0BCE 8A 04              1943 	mov	ar4,r2
   0BD0 74 02              1944 	mov	a,#(_m >> 8)
   0BD2 2B                 1945 	add	a,r3
   0BD3 FD                 1946 	mov	r5,a
   0BD4 8A 82              1947 	mov	dpl,r2
   0BD6 74 02              1948 	mov	a,#(_u >> 8)
   0BD8 2B                 1949 	add	a,r3
   0BD9 F5 83              1950 	mov	dph,a
   0BDB E0                 1951 	movx	a,@dptr
   0BDC FE                 1952 	mov	r6,a
   0BDD 8C 82              1953 	mov	dpl,r4
   0BDF 8D 83              1954 	mov	dph,r5
   0BE1 F0                 1955 	movx	@dptr,a
                           1956 ;	main.c:83: for (i = 0; i < SIZE; i++) {
   0BE2 0A                 1957 	inc	r2
   0BE3 BA 00 DF           1958 	cjne	r2,#0x00,00123$
   0BE6 0B                 1959 	inc	r3
   0BE7 80 DC              1960 	sjmp	00123$
   0BE9                    1961 00102$:
                           1962 ;	main.c:88: endBrk = 1;
   0BE9 90 FF FF           1963 	mov	dptr,#_endBrk
   0BEC 74 01              1964 	mov	a,#0x01
   0BEE F0                 1965 	movx	@dptr,a
                           1966 ;	main.c:89: return 0;
   0BEF 90 00 00           1967 	mov	dptr,#0x0000
   0BF2 22                 1968 	ret
                           1969 	.area CSEG    (CODE)
                           1970 	.area CONST   (CODE)
                           1971 	.area XINIT   (CODE)
                           1972 	.area CABS    (ABS,CODE)
