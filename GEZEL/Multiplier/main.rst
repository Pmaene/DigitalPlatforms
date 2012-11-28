                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Wed Nov 21 18:34:50 2012
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
                             15 	.globl _write_r
                             16 	.globl _read_m
                             17 	.globl _read_b
                             18 	.globl _read_a
                             19 	.globl _CY
                             20 	.globl _AC
                             21 	.globl _F0
                             22 	.globl _RS1
                             23 	.globl _RS0
                             24 	.globl _OV
                             25 	.globl _F1
                             26 	.globl _P
                             27 	.globl _PS
                             28 	.globl _PT1
                             29 	.globl _PX1
                             30 	.globl _PT0
                             31 	.globl _PX0
                             32 	.globl _RD
                             33 	.globl _WR
                             34 	.globl _T1
                             35 	.globl _T0
                             36 	.globl _INT1
                             37 	.globl _INT0
                             38 	.globl _TXD
                             39 	.globl _RXD
                             40 	.globl _P3_7
                             41 	.globl _P3_6
                             42 	.globl _P3_5
                             43 	.globl _P3_4
                             44 	.globl _P3_3
                             45 	.globl _P3_2
                             46 	.globl _P3_1
                             47 	.globl _P3_0
                             48 	.globl _EA
                             49 	.globl _ES
                             50 	.globl _ET1
                             51 	.globl _EX1
                             52 	.globl _ET0
                             53 	.globl _EX0
                             54 	.globl _P2_7
                             55 	.globl _P2_6
                             56 	.globl _P2_5
                             57 	.globl _P2_4
                             58 	.globl _P2_3
                             59 	.globl _P2_2
                             60 	.globl _P2_1
                             61 	.globl _P2_0
                             62 	.globl _SM0
                             63 	.globl _SM1
                             64 	.globl _SM2
                             65 	.globl _REN
                             66 	.globl _TB8
                             67 	.globl _RB8
                             68 	.globl _TI
                             69 	.globl _RI
                             70 	.globl _P1_7
                             71 	.globl _P1_6
                             72 	.globl _P1_5
                             73 	.globl _P1_4
                             74 	.globl _P1_3
                             75 	.globl _P1_2
                             76 	.globl _P1_1
                             77 	.globl _P1_0
                             78 	.globl _TF1
                             79 	.globl _TR1
                             80 	.globl _TF0
                             81 	.globl _TR0
                             82 	.globl _IE1
                             83 	.globl _IT1
                             84 	.globl _IE0
                             85 	.globl _IT0
                             86 	.globl _P0_7
                             87 	.globl _P0_6
                             88 	.globl _P0_5
                             89 	.globl _P0_4
                             90 	.globl _P0_3
                             91 	.globl _P0_2
                             92 	.globl _P0_1
                             93 	.globl _P0_0
                             94 	.globl _B
                             95 	.globl _ACC
                             96 	.globl _PSW
                             97 	.globl _IP
                             98 	.globl _P3
                             99 	.globl _IE
                            100 	.globl _P2
                            101 	.globl _SBUF
                            102 	.globl _SCON
                            103 	.globl _P1
                            104 	.globl _TH1
                            105 	.globl _TH0
                            106 	.globl _TL1
                            107 	.globl _TL0
                            108 	.globl _TMOD
                            109 	.globl _TCON
                            110 	.globl _PCON
                            111 	.globl _DPH
                            112 	.globl _DPL
                            113 	.globl _SP
                            114 	.globl _P0
                            115 	.globl _b
                            116 	.globl _a
                            117 	.globl _m
                            118 	.globl _shared
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
   0008                     237 	.ds 1
                            238 ;--------------------------------------------------------
                            239 ; overlayable items in internal ram 
                            240 ;--------------------------------------------------------
                            241 	.area OSEG    (OVR,DATA)
                            242 ;--------------------------------------------------------
                            243 ; Stack segment in internal ram 
                            244 ;--------------------------------------------------------
                            245 	.area	SSEG	(DATA)
   0009                     246 __start__stack:
   0009                     247 	.ds	1
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
                    4000    273 _shared	=	0x4000
                            274 ;--------------------------------------------------------
                            275 ; absolute external ram data
                            276 ;--------------------------------------------------------
                            277 	.area XABS    (ABS,XDATA)
   0000                     278 	.org 0x0000
   0000                     279 _m::
   0000                     280 	.ds 128
   0080                     281 	.org 0x0080
   0080                     282 _a::
   0080                     283 	.ds 128
   0100                     284 	.org 0x0100
   0100                     285 _b::
   0100                     286 	.ds 128
                            287 ;--------------------------------------------------------
                            288 ; external initialized ram data
                            289 ;--------------------------------------------------------
                            290 	.area XISEG   (XDATA)
                            291 	.area HOME    (CODE)
                            292 	.area GSINIT0 (CODE)
                            293 	.area GSINIT1 (CODE)
                            294 	.area GSINIT2 (CODE)
                            295 	.area GSINIT3 (CODE)
                            296 	.area GSINIT4 (CODE)
                            297 	.area GSINIT5 (CODE)
                            298 	.area GSINIT  (CODE)
                            299 	.area GSFINAL (CODE)
                            300 	.area CSEG    (CODE)
                            301 ;--------------------------------------------------------
                            302 ; interrupt vector 
                            303 ;--------------------------------------------------------
                            304 	.area HOME    (CODE)
   0000                     305 __interrupt_vect:
   0000 02 00 08            306 	ljmp	__sdcc_gsinit_startup
                            307 ;--------------------------------------------------------
                            308 ; global & static initialisations
                            309 ;--------------------------------------------------------
                            310 	.area HOME    (CODE)
                            311 	.area GSINIT  (CODE)
                            312 	.area GSFINAL (CODE)
                            313 	.area GSINIT  (CODE)
                            314 	.globl __sdcc_gsinit_startup
                            315 	.globl __sdcc_program_startup
                            316 	.globl __start__stack
                            317 	.globl __mcs51_genXINIT
                            318 	.globl __mcs51_genXRAMCLEAR
                            319 	.globl __mcs51_genRAMCLEAR
                            320 ;	main.c:11: volatile __xdata __at (0x0000) unsigned char m[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0061 90 00 00            321 	mov	dptr,#_m
   0064 74 D3               322 	mov	a,#0xD3
   0066 F0                  323 	movx	@dptr,a
   0067 90 00 01            324 	mov	dptr,#(_m + 0x0001)
   006A 74 55               325 	mov	a,#0x55
   006C F0                  326 	movx	@dptr,a
   006D 90 00 02            327 	mov	dptr,#(_m + 0x0002)
   0070 74 A4               328 	mov	a,#0xA4
   0072 F0                  329 	movx	@dptr,a
   0073 90 00 03            330 	mov	dptr,#(_m + 0x0003)
   0076 74 5F               331 	mov	a,#0x5F
   0078 F0                  332 	movx	@dptr,a
   0079 90 00 04            333 	mov	dptr,#(_m + 0x0004)
   007C 74 57               334 	mov	a,#0x57
   007E F0                  335 	movx	@dptr,a
   007F 90 00 05            336 	mov	dptr,#(_m + 0x0005)
   0082 74 F3               337 	mov	a,#0xF3
   0084 F0                  338 	movx	@dptr,a
   0085 90 00 06            339 	mov	dptr,#(_m + 0x0006)
   0088 74 F9               340 	mov	a,#0xF9
   008A F0                  341 	movx	@dptr,a
   008B 90 00 07            342 	mov	dptr,#(_m + 0x0007)
   008E 74 3E               343 	mov	a,#0x3E
   0090 F0                  344 	movx	@dptr,a
   0091 90 00 08            345 	mov	dptr,#(_m + 0x0008)
   0094 74 CF               346 	mov	a,#0xCF
   0096 F0                  347 	movx	@dptr,a
   0097 90 00 09            348 	mov	dptr,#(_m + 0x0009)
   009A 74 84               349 	mov	a,#0x84
   009C F0                  350 	movx	@dptr,a
   009D 90 00 0A            351 	mov	dptr,#(_m + 0x000a)
   00A0 74 6D               352 	mov	a,#0x6D
   00A2 F0                  353 	movx	@dptr,a
   00A3 90 00 0B            354 	mov	dptr,#(_m + 0x000b)
   00A6 74 FF               355 	mov	a,#0xFF
   00A8 F0                  356 	movx	@dptr,a
   00A9 90 00 0C            357 	mov	dptr,#(_m + 0x000c)
   00AC 74 20               358 	mov	a,#0x20
   00AE F0                  359 	movx	@dptr,a
   00AF 90 00 0D            360 	mov	dptr,#(_m + 0x000d)
   00B2 74 C1               361 	mov	a,#0xC1
   00B4 F0                  362 	movx	@dptr,a
   00B5 90 00 0E            363 	mov	dptr,#(_m + 0x000e)
   00B8 74 AE               364 	mov	a,#0xAE
   00BA F0                  365 	movx	@dptr,a
   00BB 90 00 0F            366 	mov	dptr,#(_m + 0x000f)
   00BE 74 12               367 	mov	a,#0x12
   00C0 F0                  368 	movx	@dptr,a
   00C1 90 00 10            369 	mov	dptr,#(_m + 0x0010)
   00C4 74 CF               370 	mov	a,#0xCF
   00C6 F0                  371 	movx	@dptr,a
   00C7 90 00 11            372 	mov	dptr,#(_m + 0x0011)
   00CA 74 F1               373 	mov	a,#0xF1
   00CC F0                  374 	movx	@dptr,a
   00CD 90 00 12            375 	mov	dptr,#(_m + 0x0012)
   00D0 E4                  376 	clr	a
   00D1 F0                  377 	movx	@dptr,a
   00D2 90 00 13            378 	mov	dptr,#(_m + 0x0013)
   00D5 74 66               379 	mov	a,#0x66
   00D7 F0                  380 	movx	@dptr,a
   00D8 90 00 14            381 	mov	dptr,#(_m + 0x0014)
   00DB 74 45               382 	mov	a,#0x45
   00DD F0                  383 	movx	@dptr,a
   00DE 90 00 15            384 	mov	dptr,#(_m + 0x0015)
   00E1 74 E2               385 	mov	a,#0xE2
   00E3 F0                  386 	movx	@dptr,a
   00E4 90 00 16            387 	mov	dptr,#(_m + 0x0016)
   00E7 74 34               388 	mov	a,#0x34
   00E9 F0                  389 	movx	@dptr,a
   00EA 90 00 17            390 	mov	dptr,#(_m + 0x0017)
   00ED 74 61               391 	mov	a,#0x61
   00EF F0                  392 	movx	@dptr,a
   00F0 90 00 18            393 	mov	dptr,#(_m + 0x0018)
   00F3 74 27               394 	mov	a,#0x27
   00F5 F0                  395 	movx	@dptr,a
   00F6 90 00 19            396 	mov	dptr,#(_m + 0x0019)
   00F9 74 F2               397 	mov	a,#0xF2
   00FB F0                  398 	movx	@dptr,a
   00FC 90 00 1A            399 	mov	dptr,#(_m + 0x001a)
   00FF 74 57               400 	mov	a,#0x57
   0101 F0                  401 	movx	@dptr,a
   0102 90 00 1B            402 	mov	dptr,#(_m + 0x001b)
   0105 74 B3               403 	mov	a,#0xB3
   0107 F0                  404 	movx	@dptr,a
   0108 90 00 1C            405 	mov	dptr,#(_m + 0x001c)
   010B 74 42               406 	mov	a,#0x42
   010D F0                  407 	movx	@dptr,a
   010E 90 00 1D            408 	mov	dptr,#(_m + 0x001d)
   0111 74 21               409 	mov	a,#0x21
   0113 F0                  410 	movx	@dptr,a
   0114 90 00 1E            411 	mov	dptr,#(_m + 0x001e)
   0117 74 80               412 	mov	a,#0x80
   0119 F0                  413 	movx	@dptr,a
   011A 90 00 1F            414 	mov	dptr,#(_m + 0x001f)
   011D 74 95               415 	mov	a,#0x95
   011F F0                  416 	movx	@dptr,a
   0120 90 00 20            417 	mov	dptr,#(_m + 0x0020)
   0123 74 AB               418 	mov	a,#0xAB
   0125 F0                  419 	movx	@dptr,a
   0126 90 00 21            420 	mov	dptr,#(_m + 0x0021)
   0129 74 15               421 	mov	a,#0x15
   012B F0                  422 	movx	@dptr,a
   012C 90 00 22            423 	mov	dptr,#(_m + 0x0022)
   012F 74 A2               424 	mov	a,#0xA2
   0131 F0                  425 	movx	@dptr,a
   0132 90 00 23            426 	mov	dptr,#(_m + 0x0023)
   0135 74 1D               427 	mov	a,#0x1D
   0137 F0                  428 	movx	@dptr,a
   0138 90 00 24            429 	mov	dptr,#(_m + 0x0024)
   013B 74 53               430 	mov	a,#0x53
   013D F0                  431 	movx	@dptr,a
   013E 90 00 25            432 	mov	dptr,#(_m + 0x0025)
   0141 74 B2               433 	mov	a,#0xB2
   0143 F0                  434 	movx	@dptr,a
   0144 90 00 26            435 	mov	dptr,#(_m + 0x0026)
   0147 74 27               436 	mov	a,#0x27
   0149 F0                  437 	movx	@dptr,a
   014A 90 00 27            438 	mov	dptr,#(_m + 0x0027)
   014D 74 E6               439 	mov	a,#0xE6
   014F F0                  440 	movx	@dptr,a
   0150 90 00 28            441 	mov	dptr,#(_m + 0x0028)
   0153 74 56               442 	mov	a,#0x56
   0155 F0                  443 	movx	@dptr,a
   0156 90 00 29            444 	mov	dptr,#(_m + 0x0029)
   0159 74 93               445 	mov	a,#0x93
   015B F0                  446 	movx	@dptr,a
   015C 90 00 2A            447 	mov	dptr,#(_m + 0x002a)
   015F 74 27               448 	mov	a,#0x27
   0161 F0                  449 	movx	@dptr,a
   0162 90 00 2B            450 	mov	dptr,#(_m + 0x002b)
   0165 74 AF               451 	mov	a,#0xAF
   0167 F0                  452 	movx	@dptr,a
   0168 90 00 2C            453 	mov	dptr,#(_m + 0x002c)
   016B 74 C2               454 	mov	a,#0xC2
   016D F0                  455 	movx	@dptr,a
   016E 90 00 2D            456 	mov	dptr,#(_m + 0x002d)
   0171 74 EE               457 	mov	a,#0xEE
   0173 F0                  458 	movx	@dptr,a
   0174 90 00 2E            459 	mov	dptr,#(_m + 0x002e)
   0177 74 2B               460 	mov	a,#0x2B
   0179 F0                  461 	movx	@dptr,a
   017A 90 00 2F            462 	mov	dptr,#(_m + 0x002f)
   017D 74 2F               463 	mov	a,#0x2F
   017F F0                  464 	movx	@dptr,a
   0180 90 00 30            465 	mov	dptr,#(_m + 0x0030)
   0183 74 9A               466 	mov	a,#0x9A
   0185 F0                  467 	movx	@dptr,a
   0186 90 00 31            468 	mov	dptr,#(_m + 0x0031)
   0189 74 AE               469 	mov	a,#0xAE
   018B F0                  470 	movx	@dptr,a
   018C 90 00 32            471 	mov	dptr,#(_m + 0x0032)
   018F 74 6A               472 	mov	a,#0x6A
   0191 F0                  473 	movx	@dptr,a
   0192 90 00 33            474 	mov	dptr,#(_m + 0x0033)
   0195 74 09               475 	mov	a,#0x09
   0197 F0                  476 	movx	@dptr,a
   0198 90 00 34            477 	mov	dptr,#(_m + 0x0034)
   019B 74 E5               478 	mov	a,#0xE5
   019D F0                  479 	movx	@dptr,a
   019E 90 00 35            480 	mov	dptr,#(_m + 0x0035)
   01A1 74 7F               481 	mov	a,#0x7F
   01A3 F0                  482 	movx	@dptr,a
   01A4 90 00 36            483 	mov	dptr,#(_m + 0x0036)
   01A7 74 AE               484 	mov	a,#0xAE
   01A9 F0                  485 	movx	@dptr,a
   01AA 90 00 37            486 	mov	dptr,#(_m + 0x0037)
   01AD 74 7D               487 	mov	a,#0x7D
   01AF F0                  488 	movx	@dptr,a
   01B0 90 00 38            489 	mov	dptr,#(_m + 0x0038)
   01B3 74 2B               490 	mov	a,#0x2B
   01B5 F0                  491 	movx	@dptr,a
   01B6 90 00 39            492 	mov	dptr,#(_m + 0x0039)
   01B9 74 DD               493 	mov	a,#0xDD
   01BB F0                  494 	movx	@dptr,a
   01BC 90 00 3A            495 	mov	dptr,#(_m + 0x003a)
   01BF 74 58               496 	mov	a,#0x58
   01C1 F0                  497 	movx	@dptr,a
   01C2 90 00 3B            498 	mov	dptr,#(_m + 0x003b)
   01C5 74 2F               499 	mov	a,#0x2F
   01C7 F0                  500 	movx	@dptr,a
   01C8 90 00 3C            501 	mov	dptr,#(_m + 0x003c)
   01CB 74 87               502 	mov	a,#0x87
   01CD F0                  503 	movx	@dptr,a
   01CE 90 00 3D            504 	mov	dptr,#(_m + 0x003d)
   01D1 74 70               505 	mov	a,#0x70
   01D3 F0                  506 	movx	@dptr,a
   01D4 90 00 3E            507 	mov	dptr,#(_m + 0x003e)
   01D7 74 05               508 	mov	a,#0x05
   01D9 F0                  509 	movx	@dptr,a
   01DA 90 00 3F            510 	mov	dptr,#(_m + 0x003f)
   01DD 74 1F               511 	mov	a,#0x1F
   01DF F0                  512 	movx	@dptr,a
   01E0 90 00 40            513 	mov	dptr,#(_m + 0x0040)
   01E3 74 F8               514 	mov	a,#0xF8
   01E5 F0                  515 	movx	@dptr,a
   01E6 90 00 41            516 	mov	dptr,#(_m + 0x0041)
   01E9 74 BD               517 	mov	a,#0xBD
   01EB F0                  518 	movx	@dptr,a
   01EC 90 00 42            519 	mov	dptr,#(_m + 0x0042)
   01EF 74 0B               520 	mov	a,#0x0B
   01F1 F0                  521 	movx	@dptr,a
   01F2 90 00 43            522 	mov	dptr,#(_m + 0x0043)
   01F5 74 E0               523 	mov	a,#0xE0
   01F7 F0                  524 	movx	@dptr,a
   01F8 90 00 44            525 	mov	dptr,#(_m + 0x0044)
   01FB 74 FD               526 	mov	a,#0xFD
   01FD F0                  527 	movx	@dptr,a
   01FE 90 00 45            528 	mov	dptr,#(_m + 0x0045)
   0201 74 F1               529 	mov	a,#0xF1
   0203 F0                  530 	movx	@dptr,a
   0204 90 00 46            531 	mov	dptr,#(_m + 0x0046)
   0207 74 81               532 	mov	a,#0x81
   0209 F0                  533 	movx	@dptr,a
   020A 90 00 47            534 	mov	dptr,#(_m + 0x0047)
   020D 74 60               535 	mov	a,#0x60
   020F F0                  536 	movx	@dptr,a
   0210 90 00 48            537 	mov	dptr,#(_m + 0x0048)
   0213 74 BF               538 	mov	a,#0xBF
   0215 F0                  539 	movx	@dptr,a
   0216 90 00 49            540 	mov	dptr,#(_m + 0x0049)
   0219 74 D2               541 	mov	a,#0xD2
   021B F0                  542 	movx	@dptr,a
   021C 90 00 4A            543 	mov	dptr,#(_m + 0x004a)
   021F 74 FE               544 	mov	a,#0xFE
   0221 F0                  545 	movx	@dptr,a
   0222 90 00 4B            546 	mov	dptr,#(_m + 0x004b)
   0225 74 8F               547 	mov	a,#0x8F
   0227 F0                  548 	movx	@dptr,a
   0228 90 00 4C            549 	mov	dptr,#(_m + 0x004c)
   022B 74 7B               550 	mov	a,#0x7B
   022D F0                  551 	movx	@dptr,a
   022E 90 00 4D            552 	mov	dptr,#(_m + 0x004d)
   0231 74 B9               553 	mov	a,#0xB9
   0233 F0                  554 	movx	@dptr,a
   0234 90 00 4E            555 	mov	dptr,#(_m + 0x004e)
   0237 74 A9               556 	mov	a,#0xA9
   0239 F0                  557 	movx	@dptr,a
   023A 90 00 4F            558 	mov	dptr,#(_m + 0x004f)
   023D 74 A4               559 	mov	a,#0xA4
   023F F0                  560 	movx	@dptr,a
   0240 90 00 50            561 	mov	dptr,#(_m + 0x0050)
   0243 74 6A               562 	mov	a,#0x6A
   0245 F0                  563 	movx	@dptr,a
   0246 90 00 51            564 	mov	dptr,#(_m + 0x0051)
   0249 74 0A               565 	mov	a,#0x0A
   024B F0                  566 	movx	@dptr,a
   024C 90 00 52            567 	mov	dptr,#(_m + 0x0052)
   024F 74 A3               568 	mov	a,#0xA3
   0251 F0                  569 	movx	@dptr,a
   0252 90 00 53            570 	mov	dptr,#(_m + 0x0053)
   0255 74 A3               571 	mov	a,#0xA3
   0257 F0                  572 	movx	@dptr,a
   0258 90 00 54            573 	mov	dptr,#(_m + 0x0054)
   025B 74 70               574 	mov	a,#0x70
   025D F0                  575 	movx	@dptr,a
   025E 90 00 55            576 	mov	dptr,#(_m + 0x0055)
   0261 74 22               577 	mov	a,#0x22
   0263 F0                  578 	movx	@dptr,a
   0264 90 00 56            579 	mov	dptr,#(_m + 0x0056)
   0267 74 BF               580 	mov	a,#0xBF
   0269 F0                  581 	movx	@dptr,a
   026A 90 00 57            582 	mov	dptr,#(_m + 0x0057)
   026D 74 4C               583 	mov	a,#0x4C
   026F F0                  584 	movx	@dptr,a
   0270 90 00 58            585 	mov	dptr,#(_m + 0x0058)
   0273 74 1B               586 	mov	a,#0x1B
   0275 F0                  587 	movx	@dptr,a
   0276 90 00 59            588 	mov	dptr,#(_m + 0x0059)
   0279 74 B0               589 	mov	a,#0xB0
   027B F0                  590 	movx	@dptr,a
   027C 90 00 5A            591 	mov	dptr,#(_m + 0x005a)
   027F 74 41               592 	mov	a,#0x41
   0281 F0                  593 	movx	@dptr,a
   0282 90 00 5B            594 	mov	dptr,#(_m + 0x005b)
   0285 74 24               595 	mov	a,#0x24
   0287 F0                  596 	movx	@dptr,a
   0288 90 00 5C            597 	mov	dptr,#(_m + 0x005c)
   028B 74 4C               598 	mov	a,#0x4C
   028D F0                  599 	movx	@dptr,a
   028E 90 00 5D            600 	mov	dptr,#(_m + 0x005d)
   0291 74 3A               601 	mov	a,#0x3A
   0293 F0                  602 	movx	@dptr,a
   0294 90 00 5E            603 	mov	dptr,#(_m + 0x005e)
   0297 74 08               604 	mov	a,#0x08
   0299 F0                  605 	movx	@dptr,a
   029A 90 00 5F            606 	mov	dptr,#(_m + 0x005f)
   029D 74 EC               607 	mov	a,#0xEC
   029F F0                  608 	movx	@dptr,a
   02A0 90 00 60            609 	mov	dptr,#(_m + 0x0060)
   02A3 74 F4               610 	mov	a,#0xF4
   02A5 F0                  611 	movx	@dptr,a
   02A6 90 00 61            612 	mov	dptr,#(_m + 0x0061)
   02A9 74 91               613 	mov	a,#0x91
   02AB F0                  614 	movx	@dptr,a
   02AC 90 00 62            615 	mov	dptr,#(_m + 0x0062)
   02AF 74 FF               616 	mov	a,#0xFF
   02B1 F0                  617 	movx	@dptr,a
   02B2 90 00 63            618 	mov	dptr,#(_m + 0x0063)
   02B5 74 93               619 	mov	a,#0x93
   02B7 F0                  620 	movx	@dptr,a
   02B8 90 00 64            621 	mov	dptr,#(_m + 0x0064)
   02BB 74 8D               622 	mov	a,#0x8D
   02BD F0                  623 	movx	@dptr,a
   02BE 90 00 65            624 	mov	dptr,#(_m + 0x0065)
   02C1 74 FC               625 	mov	a,#0xFC
   02C3 F0                  626 	movx	@dptr,a
   02C4 90 00 66            627 	mov	dptr,#(_m + 0x0066)
   02C7 74 FA               628 	mov	a,#0xFA
   02C9 F0                  629 	movx	@dptr,a
   02CA 90 00 67            630 	mov	dptr,#(_m + 0x0067)
   02CD 74 4C               631 	mov	a,#0x4C
   02CF F0                  632 	movx	@dptr,a
   02D0 90 00 68            633 	mov	dptr,#(_m + 0x0068)
   02D3 74 26               634 	mov	a,#0x26
   02D5 F0                  635 	movx	@dptr,a
   02D6 90 00 69            636 	mov	dptr,#(_m + 0x0069)
   02D9 74 2D               637 	mov	a,#0x2D
   02DB F0                  638 	movx	@dptr,a
   02DC 90 00 6A            639 	mov	dptr,#(_m + 0x006a)
   02DF 74 D2               640 	mov	a,#0xD2
   02E1 F0                  641 	movx	@dptr,a
   02E2 90 00 6B            642 	mov	dptr,#(_m + 0x006b)
   02E5 74 E9               643 	mov	a,#0xE9
   02E7 F0                  644 	movx	@dptr,a
   02E8 90 00 6C            645 	mov	dptr,#(_m + 0x006c)
   02EB 74 FC               646 	mov	a,#0xFC
   02ED F0                  647 	movx	@dptr,a
   02EE 90 00 6D            648 	mov	dptr,#(_m + 0x006d)
   02F1 74 76               649 	mov	a,#0x76
   02F3 F0                  650 	movx	@dptr,a
   02F4 90 00 6E            651 	mov	dptr,#(_m + 0x006e)
   02F7 74 B1               652 	mov	a,#0xB1
   02F9 F0                  653 	movx	@dptr,a
   02FA 90 00 6F            654 	mov	dptr,#(_m + 0x006f)
   02FD 74 67               655 	mov	a,#0x67
   02FF F0                  656 	movx	@dptr,a
   0300 90 00 70            657 	mov	dptr,#(_m + 0x0070)
   0303 74 5E               658 	mov	a,#0x5E
   0305 F0                  659 	movx	@dptr,a
   0306 90 00 71            660 	mov	dptr,#(_m + 0x0071)
   0309 74 24               661 	mov	a,#0x24
   030B F0                  662 	movx	@dptr,a
   030C 90 00 72            663 	mov	dptr,#(_m + 0x0072)
   030F 74 9E               664 	mov	a,#0x9E
   0311 F0                  665 	movx	@dptr,a
   0312 90 00 73            666 	mov	dptr,#(_m + 0x0073)
   0315 74 31               667 	mov	a,#0x31
   0317 F0                  668 	movx	@dptr,a
   0318 90 00 74            669 	mov	dptr,#(_m + 0x0074)
   031B 74 66               670 	mov	a,#0x66
   031D F0                  671 	movx	@dptr,a
   031E 90 00 75            672 	mov	dptr,#(_m + 0x0075)
   0321 74 5D               673 	mov	a,#0x5D
   0323 F0                  674 	movx	@dptr,a
   0324 90 00 76            675 	mov	dptr,#(_m + 0x0076)
   0327 74 98               676 	mov	a,#0x98
   0329 F0                  677 	movx	@dptr,a
   032A 90 00 77            678 	mov	dptr,#(_m + 0x0077)
   032D 74 4C               679 	mov	a,#0x4C
   032F F0                  680 	movx	@dptr,a
   0330 90 00 78            681 	mov	dptr,#(_m + 0x0078)
   0333 74 0D               682 	mov	a,#0x0D
   0335 F0                  683 	movx	@dptr,a
   0336 90 00 79            684 	mov	dptr,#(_m + 0x0079)
   0339 74 79               685 	mov	a,#0x79
   033B F0                  686 	movx	@dptr,a
   033C 90 00 7A            687 	mov	dptr,#(_m + 0x007a)
   033F 74 81               688 	mov	a,#0x81
   0341 F0                  689 	movx	@dptr,a
   0342 90 00 7B            690 	mov	dptr,#(_m + 0x007b)
   0345 74 76               691 	mov	a,#0x76
   0347 F0                  692 	movx	@dptr,a
   0348 90 00 7C            693 	mov	dptr,#(_m + 0x007c)
   034B 74 AC               694 	mov	a,#0xAC
   034D F0                  695 	movx	@dptr,a
   034E 90 00 7D            696 	mov	dptr,#(_m + 0x007d)
   0351 74 1D               697 	mov	a,#0x1D
   0353 F0                  698 	movx	@dptr,a
   0354 90 00 7E            699 	mov	dptr,#(_m + 0x007e)
   0357 74 E2               700 	mov	a,#0xE2
   0359 F0                  701 	movx	@dptr,a
   035A 90 00 7F            702 	mov	dptr,#(_m + 0x007f)
   035D 74 CA               703 	mov	a,#0xCA
   035F F0                  704 	movx	@dptr,a
                            705 ;	main.c:12: volatile __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0360 90 00 80            706 	mov	dptr,#_a
   0363 74 FF               707 	mov	a,#0xFF
   0365 F0                  708 	movx	@dptr,a
   0366 90 00 81            709 	mov	dptr,#(_a + 0x0001)
   0369 74 7F               710 	mov	a,#0x7F
   036B F0                  711 	movx	@dptr,a
   036C 90 00 82            712 	mov	dptr,#(_a + 0x0002)
   036F 74 14               713 	mov	a,#0x14
   0371 F0                  714 	movx	@dptr,a
   0372 90 00 83            715 	mov	dptr,#(_a + 0x0003)
   0375 74 64               716 	mov	a,#0x64
   0377 F0                  717 	movx	@dptr,a
   0378 90 00 84            718 	mov	dptr,#(_a + 0x0004)
   037B 74 47               719 	mov	a,#0x47
   037D F0                  720 	movx	@dptr,a
   037E 90 00 85            721 	mov	dptr,#(_a + 0x0005)
   0381 74 68               722 	mov	a,#0x68
   0383 F0                  723 	movx	@dptr,a
   0384 90 00 86            724 	mov	dptr,#(_a + 0x0006)
   0387 74 C2               725 	mov	a,#0xC2
   0389 F0                  726 	movx	@dptr,a
   038A 90 00 87            727 	mov	dptr,#(_a + 0x0007)
   038D 74 B6               728 	mov	a,#0xB6
   038F F0                  729 	movx	@dptr,a
   0390 90 00 88            730 	mov	dptr,#(_a + 0x0008)
   0393 74 27               731 	mov	a,#0x27
   0395 F0                  732 	movx	@dptr,a
   0396 90 00 89            733 	mov	dptr,#(_a + 0x0009)
   0399 74 32               734 	mov	a,#0x32
   039B F0                  735 	movx	@dptr,a
   039C 90 00 8A            736 	mov	dptr,#(_a + 0x000a)
   039F 74 63               737 	mov	a,#0x63
   03A1 F0                  738 	movx	@dptr,a
   03A2 90 00 8B            739 	mov	dptr,#(_a + 0x000b)
   03A5 74 2C               740 	mov	a,#0x2C
   03A7 F0                  741 	movx	@dptr,a
   03A8 90 00 8C            742 	mov	dptr,#(_a + 0x000c)
   03AB 74 B0               743 	mov	a,#0xB0
   03AD F0                  744 	movx	@dptr,a
   03AE 90 00 8D            745 	mov	dptr,#(_a + 0x000d)
   03B1 74 C3               746 	mov	a,#0xC3
   03B3 F0                  747 	movx	@dptr,a
   03B4 90 00 8E            748 	mov	dptr,#(_a + 0x000e)
   03B7 74 95               749 	mov	a,#0x95
   03B9 F0                  750 	movx	@dptr,a
   03BA 90 00 8F            751 	mov	dptr,#(_a + 0x000f)
   03BD 74 13               752 	mov	a,#0x13
   03BF F0                  753 	movx	@dptr,a
   03C0 90 00 90            754 	mov	dptr,#(_a + 0x0010)
   03C3 74 C5               755 	mov	a,#0xC5
   03C5 F0                  756 	movx	@dptr,a
   03C6 90 00 91            757 	mov	dptr,#(_a + 0x0011)
   03C9 74 7E               758 	mov	a,#0x7E
   03CB F0                  759 	movx	@dptr,a
   03CC 90 00 92            760 	mov	dptr,#(_a + 0x0012)
   03CF 74 17               761 	mov	a,#0x17
   03D1 F0                  762 	movx	@dptr,a
   03D2 90 00 93            763 	mov	dptr,#(_a + 0x0013)
   03D5 74 22               764 	mov	a,#0x22
   03D7 F0                  765 	movx	@dptr,a
   03D8 90 00 94            766 	mov	dptr,#(_a + 0x0014)
   03DB 74 F3               767 	mov	a,#0xF3
   03DD F0                  768 	movx	@dptr,a
   03DE 90 00 95            769 	mov	dptr,#(_a + 0x0015)
   03E1 74 7C               770 	mov	a,#0x7C
   03E3 F0                  771 	movx	@dptr,a
   03E4 90 00 96            772 	mov	dptr,#(_a + 0x0016)
   03E7 74 2D               773 	mov	a,#0x2D
   03E9 F0                  774 	movx	@dptr,a
   03EA 90 00 97            775 	mov	dptr,#(_a + 0x0017)
   03ED 74 E8               776 	mov	a,#0xE8
   03EF F0                  777 	movx	@dptr,a
   03F0 90 00 98            778 	mov	dptr,#(_a + 0x0018)
   03F3 74 13               779 	mov	a,#0x13
   03F5 F0                  780 	movx	@dptr,a
   03F6 90 00 99            781 	mov	dptr,#(_a + 0x0019)
   03F9 74 47               782 	mov	a,#0x47
   03FB F0                  783 	movx	@dptr,a
   03FC 90 00 9A            784 	mov	dptr,#(_a + 0x001a)
   03FF 74 5E               785 	mov	a,#0x5E
   0401 F0                  786 	movx	@dptr,a
   0402 90 00 9B            787 	mov	dptr,#(_a + 0x001b)
   0405 74 15               788 	mov	a,#0x15
   0407 F0                  789 	movx	@dptr,a
   0408 90 00 9C            790 	mov	dptr,#(_a + 0x001c)
   040B 74 4E               791 	mov	a,#0x4E
   040D F0                  792 	movx	@dptr,a
   040E 90 00 9D            793 	mov	dptr,#(_a + 0x001d)
   0411 74 EF               794 	mov	a,#0xEF
   0413 F0                  795 	movx	@dptr,a
   0414 90 00 9E            796 	mov	dptr,#(_a + 0x001e)
   0417 74 83               797 	mov	a,#0x83
   0419 F0                  798 	movx	@dptr,a
   041A 90 00 9F            799 	mov	dptr,#(_a + 0x001f)
   041D 74 81               800 	mov	a,#0x81
   041F F0                  801 	movx	@dptr,a
   0420 90 00 A0            802 	mov	dptr,#(_a + 0x0020)
   0423 74 DF               803 	mov	a,#0xDF
   0425 F0                  804 	movx	@dptr,a
   0426 90 00 A1            805 	mov	dptr,#(_a + 0x0021)
   0429 74 C3               806 	mov	a,#0xC3
   042B F0                  807 	movx	@dptr,a
   042C 90 00 A2            808 	mov	dptr,#(_a + 0x0022)
   042F 74 47               809 	mov	a,#0x47
   0431 F0                  810 	movx	@dptr,a
   0432 90 00 A3            811 	mov	dptr,#(_a + 0x0023)
   0435 74 D3               812 	mov	a,#0xD3
   0437 F0                  813 	movx	@dptr,a
   0438 90 00 A4            814 	mov	dptr,#(_a + 0x0024)
   043B 74 60               815 	mov	a,#0x60
   043D F0                  816 	movx	@dptr,a
   043E 90 00 A5            817 	mov	dptr,#(_a + 0x0025)
   0441 74 BB               818 	mov	a,#0xBB
   0443 F0                  819 	movx	@dptr,a
   0444 90 00 A6            820 	mov	dptr,#(_a + 0x0026)
   0447 74 8B               821 	mov	a,#0x8B
   0449 F0                  822 	movx	@dptr,a
   044A 90 00 A7            823 	mov	dptr,#(_a + 0x0027)
   044D 74 3E               824 	mov	a,#0x3E
   044F F0                  825 	movx	@dptr,a
   0450 90 00 A8            826 	mov	dptr,#(_a + 0x0028)
   0453 74 B6               827 	mov	a,#0xB6
   0455 F0                  828 	movx	@dptr,a
   0456 90 00 A9            829 	mov	dptr,#(_a + 0x0029)
   0459 74 35               830 	mov	a,#0x35
   045B F0                  831 	movx	@dptr,a
   045C 90 00 AA            832 	mov	dptr,#(_a + 0x002a)
   045F 74 B1               833 	mov	a,#0xB1
   0461 F0                  834 	movx	@dptr,a
   0462 90 00 AB            835 	mov	dptr,#(_a + 0x002b)
   0465 74 6E               836 	mov	a,#0x6E
   0467 F0                  837 	movx	@dptr,a
   0468 90 00 AC            838 	mov	dptr,#(_a + 0x002c)
   046B 74 D1               839 	mov	a,#0xD1
   046D F0                  840 	movx	@dptr,a
   046E 90 00 AD            841 	mov	dptr,#(_a + 0x002d)
   0471 74 D5               842 	mov	a,#0xD5
   0473 F0                  843 	movx	@dptr,a
   0474 90 00 AE            844 	mov	dptr,#(_a + 0x002e)
   0477 74 DA               845 	mov	a,#0xDA
   0479 F0                  846 	movx	@dptr,a
   047A 90 00 AF            847 	mov	dptr,#(_a + 0x002f)
   047D 74 6F               848 	mov	a,#0x6F
   047F F0                  849 	movx	@dptr,a
   0480 90 00 B0            850 	mov	dptr,#(_a + 0x0030)
   0483 74 28               851 	mov	a,#0x28
   0485 F0                  852 	movx	@dptr,a
   0486 90 00 B1            853 	mov	dptr,#(_a + 0x0031)
   0489 74 16               854 	mov	a,#0x16
   048B F0                  855 	movx	@dptr,a
   048C 90 00 B2            856 	mov	dptr,#(_a + 0x0032)
   048F 74 2C               857 	mov	a,#0x2C
   0491 F0                  858 	movx	@dptr,a
   0492 90 00 B3            859 	mov	dptr,#(_a + 0x0033)
   0495 74 74               860 	mov	a,#0x74
   0497 F0                  861 	movx	@dptr,a
   0498 90 00 B4            862 	mov	dptr,#(_a + 0x0034)
   049B 74 36               863 	mov	a,#0x36
   049D F0                  864 	movx	@dptr,a
   049E 90 00 B5            865 	mov	dptr,#(_a + 0x0035)
   04A1 74 F9               866 	mov	a,#0xF9
   04A3 F0                  867 	movx	@dptr,a
   04A4 90 00 B6            868 	mov	dptr,#(_a + 0x0036)
   04A7 74 04               869 	mov	a,#0x04
   04A9 F0                  870 	movx	@dptr,a
   04AA 90 00 B7            871 	mov	dptr,#(_a + 0x0037)
   04AD 74 79               872 	mov	a,#0x79
   04AF F0                  873 	movx	@dptr,a
   04B0 90 00 B8            874 	mov	dptr,#(_a + 0x0038)
   04B3 74 F9               875 	mov	a,#0xF9
   04B5 F0                  876 	movx	@dptr,a
   04B6 90 00 B9            877 	mov	dptr,#(_a + 0x0039)
   04B9 74 76               878 	mov	a,#0x76
   04BB F0                  879 	movx	@dptr,a
   04BC 90 00 BA            880 	mov	dptr,#(_a + 0x003a)
   04BF 74 E2               881 	mov	a,#0xE2
   04C1 F0                  882 	movx	@dptr,a
   04C2 90 00 BB            883 	mov	dptr,#(_a + 0x003b)
   04C5 74 CC               884 	mov	a,#0xCC
   04C7 F0                  885 	movx	@dptr,a
   04C8 90 00 BC            886 	mov	dptr,#(_a + 0x003c)
   04CB 74 A4               887 	mov	a,#0xA4
   04CD F0                  888 	movx	@dptr,a
   04CE 90 00 BD            889 	mov	dptr,#(_a + 0x003d)
   04D1 74 82               890 	mov	a,#0x82
   04D3 F0                  891 	movx	@dptr,a
   04D4 90 00 BE            892 	mov	dptr,#(_a + 0x003e)
   04D7 74 A7               893 	mov	a,#0xA7
   04D9 F0                  894 	movx	@dptr,a
   04DA 90 00 BF            895 	mov	dptr,#(_a + 0x003f)
   04DD 74 A4               896 	mov	a,#0xA4
   04DF F0                  897 	movx	@dptr,a
   04E0 90 00 C0            898 	mov	dptr,#(_a + 0x0040)
   04E3 74 68               899 	mov	a,#0x68
   04E5 F0                  900 	movx	@dptr,a
   04E6 90 00 C1            901 	mov	dptr,#(_a + 0x0041)
   04E9 74 4E               902 	mov	a,#0x4E
   04EB F0                  903 	movx	@dptr,a
   04EC 90 00 C2            904 	mov	dptr,#(_a + 0x0042)
   04EF 74 24               905 	mov	a,#0x24
   04F1 F0                  906 	movx	@dptr,a
   04F2 90 00 C3            907 	mov	dptr,#(_a + 0x0043)
   04F5 74 A6               908 	mov	a,#0xA6
   04F7 F0                  909 	movx	@dptr,a
   04F8 90 00 C4            910 	mov	dptr,#(_a + 0x0044)
   04FB 74 C1               911 	mov	a,#0xC1
   04FD F0                  912 	movx	@dptr,a
   04FE 90 00 C5            913 	mov	dptr,#(_a + 0x0045)
   0501 74 58               914 	mov	a,#0x58
   0503 F0                  915 	movx	@dptr,a
   0504 90 00 C6            916 	mov	dptr,#(_a + 0x0046)
   0507 74 68               917 	mov	a,#0x68
   0509 F0                  918 	movx	@dptr,a
   050A 90 00 C7            919 	mov	dptr,#(_a + 0x0047)
   050D 74 24               920 	mov	a,#0x24
   050F F0                  921 	movx	@dptr,a
   0510 90 00 C8            922 	mov	dptr,#(_a + 0x0048)
   0513 74 58               923 	mov	a,#0x58
   0515 F0                  924 	movx	@dptr,a
   0516 90 00 C9            925 	mov	dptr,#(_a + 0x0049)
   0519 74 DC               926 	mov	a,#0xDC
   051B F0                  927 	movx	@dptr,a
   051C 90 00 CA            928 	mov	dptr,#(_a + 0x004a)
   051F 74 14               929 	mov	a,#0x14
   0521 F0                  930 	movx	@dptr,a
   0522 90 00 CB            931 	mov	dptr,#(_a + 0x004b)
   0525 74 F9               932 	mov	a,#0xF9
   0527 F0                  933 	movx	@dptr,a
   0528 90 00 CC            934 	mov	dptr,#(_a + 0x004c)
   052B 74 FF               935 	mov	a,#0xFF
   052D F0                  936 	movx	@dptr,a
   052E 90 00 CD            937 	mov	dptr,#(_a + 0x004d)
   0531 74 4D               938 	mov	a,#0x4D
   0533 F0                  939 	movx	@dptr,a
   0534 90 00 CE            940 	mov	dptr,#(_a + 0x004e)
   0537 74 A1               941 	mov	a,#0xA1
   0539 F0                  942 	movx	@dptr,a
   053A 90 00 CF            943 	mov	dptr,#(_a + 0x004f)
   053D 74 EF               944 	mov	a,#0xEF
   053F F0                  945 	movx	@dptr,a
   0540 90 00 D0            946 	mov	dptr,#(_a + 0x0050)
   0543 74 53               947 	mov	a,#0x53
   0545 F0                  948 	movx	@dptr,a
   0546 90 00 D1            949 	mov	dptr,#(_a + 0x0051)
   0549 74 A3               950 	mov	a,#0xA3
   054B F0                  951 	movx	@dptr,a
   054C 90 00 D2            952 	mov	dptr,#(_a + 0x0052)
   054F 74 C2               953 	mov	a,#0xC2
   0551 F0                  954 	movx	@dptr,a
   0552 90 00 D3            955 	mov	dptr,#(_a + 0x0053)
   0555 74 84               956 	mov	a,#0x84
   0557 F0                  957 	movx	@dptr,a
   0558 90 00 D4            958 	mov	dptr,#(_a + 0x0054)
   055B 74 1B               959 	mov	a,#0x1B
   055D F0                  960 	movx	@dptr,a
   055E 90 00 D5            961 	mov	dptr,#(_a + 0x0055)
   0561 74 81               962 	mov	a,#0x81
   0563 F0                  963 	movx	@dptr,a
   0564 90 00 D6            964 	mov	dptr,#(_a + 0x0056)
   0567 74 16               965 	mov	a,#0x16
   0569 F0                  966 	movx	@dptr,a
   056A 90 00 D7            967 	mov	dptr,#(_a + 0x0057)
   056D 74 6C               968 	mov	a,#0x6C
   056F F0                  969 	movx	@dptr,a
   0570 90 00 D8            970 	mov	dptr,#(_a + 0x0058)
   0573 74 DD               971 	mov	a,#0xDD
   0575 F0                  972 	movx	@dptr,a
   0576 90 00 D9            973 	mov	dptr,#(_a + 0x0059)
   0579 74 E3               974 	mov	a,#0xE3
   057B F0                  975 	movx	@dptr,a
   057C 90 00 DA            976 	mov	dptr,#(_a + 0x005a)
   057F 74 DB               977 	mov	a,#0xDB
   0581 F0                  978 	movx	@dptr,a
   0582 90 00 DB            979 	mov	dptr,#(_a + 0x005b)
   0585 74 A8               980 	mov	a,#0xA8
   0587 F0                  981 	movx	@dptr,a
   0588 90 00 DC            982 	mov	dptr,#(_a + 0x005c)
   058B 74 03               983 	mov	a,#0x03
   058D F0                  984 	movx	@dptr,a
   058E 90 00 DD            985 	mov	dptr,#(_a + 0x005d)
   0591 74 8F               986 	mov	a,#0x8F
   0593 F0                  987 	movx	@dptr,a
   0594 90 00 DE            988 	mov	dptr,#(_a + 0x005e)
   0597 74 F2               989 	mov	a,#0xF2
   0599 F0                  990 	movx	@dptr,a
   059A 90 00 DF            991 	mov	dptr,#(_a + 0x005f)
   059D 74 31               992 	mov	a,#0x31
   059F F0                  993 	movx	@dptr,a
   05A0 90 00 E0            994 	mov	dptr,#(_a + 0x0060)
   05A3 74 FD               995 	mov	a,#0xFD
   05A5 F0                  996 	movx	@dptr,a
   05A6 90 00 E1            997 	mov	dptr,#(_a + 0x0061)
   05A9 74 94               998 	mov	a,#0x94
   05AB F0                  999 	movx	@dptr,a
   05AC 90 00 E2           1000 	mov	dptr,#(_a + 0x0062)
   05AF 74 5D              1001 	mov	a,#0x5D
   05B1 F0                 1002 	movx	@dptr,a
   05B2 90 00 E3           1003 	mov	dptr,#(_a + 0x0063)
   05B5 74 26              1004 	mov	a,#0x26
   05B7 F0                 1005 	movx	@dptr,a
   05B8 90 00 E4           1006 	mov	dptr,#(_a + 0x0064)
   05BB 74 13              1007 	mov	a,#0x13
   05BD F0                 1008 	movx	@dptr,a
   05BE 90 00 E5           1009 	mov	dptr,#(_a + 0x0065)
   05C1 74 C6              1010 	mov	a,#0xC6
   05C3 F0                 1011 	movx	@dptr,a
   05C4 90 00 E6           1012 	mov	dptr,#(_a + 0x0066)
   05C7 74 68              1013 	mov	a,#0x68
   05C9 F0                 1014 	movx	@dptr,a
   05CA 90 00 E7           1015 	mov	dptr,#(_a + 0x0067)
   05CD 74 B4              1016 	mov	a,#0xB4
   05CF F0                 1017 	movx	@dptr,a
   05D0 90 00 E8           1018 	mov	dptr,#(_a + 0x0068)
   05D3 74 0D              1019 	mov	a,#0x0D
   05D5 F0                 1020 	movx	@dptr,a
   05D6 90 00 E9           1021 	mov	dptr,#(_a + 0x0069)
   05D9 74 CD              1022 	mov	a,#0xCD
   05DB F0                 1023 	movx	@dptr,a
   05DC 90 00 EA           1024 	mov	dptr,#(_a + 0x006a)
   05DF 74 F1              1025 	mov	a,#0xF1
   05E1 F0                 1026 	movx	@dptr,a
   05E2 90 00 EB           1027 	mov	dptr,#(_a + 0x006b)
   05E5 74 B8              1028 	mov	a,#0xB8
   05E7 F0                 1029 	movx	@dptr,a
   05E8 90 00 EC           1030 	mov	dptr,#(_a + 0x006c)
   05EB 74 66              1031 	mov	a,#0x66
   05ED F0                 1032 	movx	@dptr,a
   05EE 90 00 ED           1033 	mov	dptr,#(_a + 0x006d)
   05F1 74 0D              1034 	mov	a,#0x0D
   05F3 F0                 1035 	movx	@dptr,a
   05F4 90 00 EE           1036 	mov	dptr,#(_a + 0x006e)
   05F7 74 5D              1037 	mov	a,#0x5D
   05F9 F0                 1038 	movx	@dptr,a
   05FA 90 00 EF           1039 	mov	dptr,#(_a + 0x006f)
   05FD 74 3B              1040 	mov	a,#0x3B
   05FF F0                 1041 	movx	@dptr,a
   0600 90 00 F0           1042 	mov	dptr,#(_a + 0x0070)
   0603 74 2F              1043 	mov	a,#0x2F
   0605 F0                 1044 	movx	@dptr,a
   0606 90 00 F1           1045 	mov	dptr,#(_a + 0x0071)
   0609 74 C4              1046 	mov	a,#0xC4
   060B F0                 1047 	movx	@dptr,a
   060C 90 00 F2           1048 	mov	dptr,#(_a + 0x0072)
   060F 74 4A              1049 	mov	a,#0x4A
   0611 F0                 1050 	movx	@dptr,a
   0612 90 00 F3           1051 	mov	dptr,#(_a + 0x0073)
   0615 74 D1              1052 	mov	a,#0xD1
   0617 F0                 1053 	movx	@dptr,a
   0618 90 00 F4           1054 	mov	dptr,#(_a + 0x0074)
   061B 74 0B              1055 	mov	a,#0x0B
   061D F0                 1056 	movx	@dptr,a
   061E 90 00 F5           1057 	mov	dptr,#(_a + 0x0075)
   0621 74 36              1058 	mov	a,#0x36
   0623 F0                 1059 	movx	@dptr,a
   0624 90 00 F6           1060 	mov	dptr,#(_a + 0x0076)
   0627 74 C6              1061 	mov	a,#0xC6
   0629 F0                 1062 	movx	@dptr,a
   062A 90 00 F7           1063 	mov	dptr,#(_a + 0x0077)
   062D 74 10              1064 	mov	a,#0x10
   062F F0                 1065 	movx	@dptr,a
   0630 90 00 F8           1066 	mov	dptr,#(_a + 0x0078)
   0633 74 1A              1067 	mov	a,#0x1A
   0635 F0                 1068 	movx	@dptr,a
   0636 90 00 F9           1069 	mov	dptr,#(_a + 0x0079)
   0639 74 2F              1070 	mov	a,#0x2F
   063B F0                 1071 	movx	@dptr,a
   063C 90 00 FA           1072 	mov	dptr,#(_a + 0x007a)
   063F 74 72              1073 	mov	a,#0x72
   0641 F0                 1074 	movx	@dptr,a
   0642 90 00 FB           1075 	mov	dptr,#(_a + 0x007b)
   0645 74 D1              1076 	mov	a,#0xD1
   0647 F0                 1077 	movx	@dptr,a
   0648 90 00 FC           1078 	mov	dptr,#(_a + 0x007c)
   064B 74 BB              1079 	mov	a,#0xBB
   064D F0                 1080 	movx	@dptr,a
   064E 90 00 FD           1081 	mov	dptr,#(_a + 0x007d)
   0651 74 15              1082 	mov	a,#0x15
   0653 F0                 1083 	movx	@dptr,a
   0654 90 00 FE           1084 	mov	dptr,#(_a + 0x007e)
   0657 74 29              1085 	mov	a,#0x29
   0659 F0                 1086 	movx	@dptr,a
   065A 90 00 FF           1087 	mov	dptr,#(_a + 0x007f)
   065D 74 CA              1088 	mov	a,#0xCA
   065F F0                 1089 	movx	@dptr,a
                           1090 ;	main.c:13: volatile __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0660 90 01 00           1091 	mov	dptr,#_b
   0663 74 E1              1092 	mov	a,#0xE1
   0665 F0                 1093 	movx	@dptr,a
   0666 90 01 01           1094 	mov	dptr,#(_b + 0x0001)
   0669 74 8A              1095 	mov	a,#0x8A
   066B F0                 1096 	movx	@dptr,a
   066C 90 01 02           1097 	mov	dptr,#(_b + 0x0002)
   066F 74 03              1098 	mov	a,#0x03
   0671 F0                 1099 	movx	@dptr,a
   0672 90 01 03           1100 	mov	dptr,#(_b + 0x0003)
   0675 74 DB              1101 	mov	a,#0xDB
   0677 F0                 1102 	movx	@dptr,a
   0678 90 01 04           1103 	mov	dptr,#(_b + 0x0004)
   067B 74 E0              1104 	mov	a,#0xE0
   067D F0                 1105 	movx	@dptr,a
   067E 90 01 05           1106 	mov	dptr,#(_b + 0x0005)
   0681 74 D9              1107 	mov	a,#0xD9
   0683 F0                 1108 	movx	@dptr,a
   0684 90 01 06           1109 	mov	dptr,#(_b + 0x0006)
   0687 74 F6              1110 	mov	a,#0xF6
   0689 F0                 1111 	movx	@dptr,a
   068A 90 01 07           1112 	mov	dptr,#(_b + 0x0007)
   068D 74 55              1113 	mov	a,#0x55
   068F F0                 1114 	movx	@dptr,a
   0690 90 01 08           1115 	mov	dptr,#(_b + 0x0008)
   0693 74 B6              1116 	mov	a,#0xB6
   0695 F0                 1117 	movx	@dptr,a
   0696 90 01 09           1118 	mov	dptr,#(_b + 0x0009)
   0699 74 27              1119 	mov	a,#0x27
   069B F0                 1120 	movx	@dptr,a
   069C 90 01 0A           1121 	mov	dptr,#(_b + 0x000a)
   069F 74 0A              1122 	mov	a,#0x0A
   06A1 F0                 1123 	movx	@dptr,a
   06A2 90 01 0B           1124 	mov	dptr,#(_b + 0x000b)
   06A5 74 28              1125 	mov	a,#0x28
   06A7 F0                 1126 	movx	@dptr,a
   06A8 90 01 0C           1127 	mov	dptr,#(_b + 0x000c)
   06AB 74 F0              1128 	mov	a,#0xF0
   06AD F0                 1129 	movx	@dptr,a
   06AE 90 01 0D           1130 	mov	dptr,#(_b + 0x000d)
   06B1 74 5E              1131 	mov	a,#0x5E
   06B3 F0                 1132 	movx	@dptr,a
   06B4 90 01 0E           1133 	mov	dptr,#(_b + 0x000e)
   06B7 74 74              1134 	mov	a,#0x74
   06B9 F0                 1135 	movx	@dptr,a
   06BA 90 01 0F           1136 	mov	dptr,#(_b + 0x000f)
   06BD 74 7F              1137 	mov	a,#0x7F
   06BF F0                 1138 	movx	@dptr,a
   06C0 90 01 10           1139 	mov	dptr,#(_b + 0x0010)
   06C3 74 E6              1140 	mov	a,#0xE6
   06C5 F0                 1141 	movx	@dptr,a
   06C6 90 01 11           1142 	mov	dptr,#(_b + 0x0011)
   06C9 74 9F              1143 	mov	a,#0x9F
   06CB F0                 1144 	movx	@dptr,a
   06CC 90 01 12           1145 	mov	dptr,#(_b + 0x0012)
   06CF 74 4C              1146 	mov	a,#0x4C
   06D1 F0                 1147 	movx	@dptr,a
   06D2 90 01 13           1148 	mov	dptr,#(_b + 0x0013)
   06D5 74 FB              1149 	mov	a,#0xFB
   06D7 F0                 1150 	movx	@dptr,a
   06D8 90 01 14           1151 	mov	dptr,#(_b + 0x0014)
   06DB 74 26              1152 	mov	a,#0x26
   06DD F0                 1153 	movx	@dptr,a
   06DE 90 01 15           1154 	mov	dptr,#(_b + 0x0015)
   06E1 74 8C              1155 	mov	a,#0x8C
   06E3 F0                 1156 	movx	@dptr,a
   06E4 90 01 16           1157 	mov	dptr,#(_b + 0x0016)
   06E7 74 9E              1158 	mov	a,#0x9E
   06E9 F0                 1159 	movx	@dptr,a
   06EA 90 01 17           1160 	mov	dptr,#(_b + 0x0017)
   06ED 74 87              1161 	mov	a,#0x87
   06EF F0                 1162 	movx	@dptr,a
   06F0 90 01 18           1163 	mov	dptr,#(_b + 0x0018)
   06F3 74 83              1164 	mov	a,#0x83
   06F5 F0                 1165 	movx	@dptr,a
   06F6 90 01 19           1166 	mov	dptr,#(_b + 0x0019)
   06F9 74 22              1167 	mov	a,#0x22
   06FB F0                 1168 	movx	@dptr,a
   06FC 90 01 1A           1169 	mov	dptr,#(_b + 0x001a)
   06FF 74 F2              1170 	mov	a,#0xF2
   0701 F0                 1171 	movx	@dptr,a
   0702 90 01 1B           1172 	mov	dptr,#(_b + 0x001b)
   0705 74 75              1173 	mov	a,#0x75
   0707 F0                 1174 	movx	@dptr,a
   0708 90 01 1C           1175 	mov	dptr,#(_b + 0x001c)
   070B 74 D2              1176 	mov	a,#0xD2
   070D F0                 1177 	movx	@dptr,a
   070E 90 01 1D           1178 	mov	dptr,#(_b + 0x001d)
   0711 74 B3              1179 	mov	a,#0xB3
   0713 F0                 1180 	movx	@dptr,a
   0714 90 01 1E           1181 	mov	dptr,#(_b + 0x001e)
   0717 74 61              1182 	mov	a,#0x61
   0719 F0                 1183 	movx	@dptr,a
   071A 90 01 1F           1184 	mov	dptr,#(_b + 0x001f)
   071D 74 A2              1185 	mov	a,#0xA2
   071F F0                 1186 	movx	@dptr,a
   0720 90 01 20           1187 	mov	dptr,#(_b + 0x0020)
   0723 74 9D              1188 	mov	a,#0x9D
   0725 F0                 1189 	movx	@dptr,a
   0726 90 01 21           1190 	mov	dptr,#(_b + 0x0021)
   0729 74 50              1191 	mov	a,#0x50
   072B F0                 1192 	movx	@dptr,a
   072C 90 01 22           1193 	mov	dptr,#(_b + 0x0022)
   072F 74 71              1194 	mov	a,#0x71
   0731 F0                 1195 	movx	@dptr,a
   0732 90 01 23           1196 	mov	dptr,#(_b + 0x0023)
   0735 74 5E              1197 	mov	a,#0x5E
   0737 F0                 1198 	movx	@dptr,a
   0738 90 01 24           1199 	mov	dptr,#(_b + 0x0024)
   073B 74 C9              1200 	mov	a,#0xC9
   073D F0                 1201 	movx	@dptr,a
   073E 90 01 25           1202 	mov	dptr,#(_b + 0x0025)
   0741 74 DD              1203 	mov	a,#0xDD
   0743 F0                 1204 	movx	@dptr,a
   0744 90 01 26           1205 	mov	dptr,#(_b + 0x0026)
   0747 74 DD              1206 	mov	a,#0xDD
   0749 F0                 1207 	movx	@dptr,a
   074A 90 01 27           1208 	mov	dptr,#(_b + 0x0027)
   074D 74 74              1209 	mov	a,#0x74
   074F F0                 1210 	movx	@dptr,a
   0750 90 01 28           1211 	mov	dptr,#(_b + 0x0028)
   0753 74 0A              1212 	mov	a,#0x0A
   0755 F0                 1213 	movx	@dptr,a
   0756 90 01 29           1214 	mov	dptr,#(_b + 0x0029)
   0759 74 3C              1215 	mov	a,#0x3C
   075B F0                 1216 	movx	@dptr,a
   075C 90 01 2A           1217 	mov	dptr,#(_b + 0x002a)
   075F 74 C0              1218 	mov	a,#0xC0
   0761 F0                 1219 	movx	@dptr,a
   0762 90 01 2B           1220 	mov	dptr,#(_b + 0x002b)
   0765 74 30              1221 	mov	a,#0x30
   0767 F0                 1222 	movx	@dptr,a
   0768 90 01 2C           1223 	mov	dptr,#(_b + 0x002c)
   076B 74 3E              1224 	mov	a,#0x3E
   076D F0                 1225 	movx	@dptr,a
   076E 90 01 2D           1226 	mov	dptr,#(_b + 0x002d)
   0771 74 E5              1227 	mov	a,#0xE5
   0773 F0                 1228 	movx	@dptr,a
   0774 90 01 2E           1229 	mov	dptr,#(_b + 0x002e)
   0777 74 20              1230 	mov	a,#0x20
   0779 F0                 1231 	movx	@dptr,a
   077A 90 01 2F           1232 	mov	dptr,#(_b + 0x002f)
   077D 74 02              1233 	mov	a,#0x02
   077F F0                 1234 	movx	@dptr,a
   0780 90 01 30           1235 	mov	dptr,#(_b + 0x0030)
   0783 74 B3              1236 	mov	a,#0xB3
   0785 F0                 1237 	movx	@dptr,a
   0786 90 01 31           1238 	mov	dptr,#(_b + 0x0031)
   0789 74 12              1239 	mov	a,#0x12
   078B F0                 1240 	movx	@dptr,a
   078C 90 01 32           1241 	mov	dptr,#(_b + 0x0032)
   078F 74 4F              1242 	mov	a,#0x4F
   0791 F0                 1243 	movx	@dptr,a
   0792 90 01 33           1244 	mov	dptr,#(_b + 0x0033)
   0795 74 AB              1245 	mov	a,#0xAB
   0797 F0                 1246 	movx	@dptr,a
   0798 90 01 34           1247 	mov	dptr,#(_b + 0x0034)
   079B 74 60              1248 	mov	a,#0x60
   079D F0                 1249 	movx	@dptr,a
   079E 90 01 35           1250 	mov	dptr,#(_b + 0x0035)
   07A1 74 27              1251 	mov	a,#0x27
   07A3 F0                 1252 	movx	@dptr,a
   07A4 90 01 36           1253 	mov	dptr,#(_b + 0x0036)
   07A7 74 07              1254 	mov	a,#0x07
   07A9 F0                 1255 	movx	@dptr,a
   07AA 90 01 37           1256 	mov	dptr,#(_b + 0x0037)
   07AD 74 17              1257 	mov	a,#0x17
   07AF F0                 1258 	movx	@dptr,a
   07B0 90 01 38           1259 	mov	dptr,#(_b + 0x0038)
   07B3 74 DD              1260 	mov	a,#0xDD
   07B5 F0                 1261 	movx	@dptr,a
   07B6 90 01 39           1262 	mov	dptr,#(_b + 0x0039)
   07B9 E4                 1263 	clr	a
   07BA F0                 1264 	movx	@dptr,a
   07BB 90 01 3A           1265 	mov	dptr,#(_b + 0x003a)
   07BE 74 C2              1266 	mov	a,#0xC2
   07C0 F0                 1267 	movx	@dptr,a
   07C1 90 01 3B           1268 	mov	dptr,#(_b + 0x003b)
   07C4 74 E1              1269 	mov	a,#0xE1
   07C6 F0                 1270 	movx	@dptr,a
   07C7 90 01 3C           1271 	mov	dptr,#(_b + 0x003c)
   07CA 74 BC              1272 	mov	a,#0xBC
   07CC F0                 1273 	movx	@dptr,a
   07CD 90 01 3D           1274 	mov	dptr,#(_b + 0x003d)
   07D0 74 04              1275 	mov	a,#0x04
   07D2 F0                 1276 	movx	@dptr,a
   07D3 90 01 3E           1277 	mov	dptr,#(_b + 0x003e)
   07D6 74 AE              1278 	mov	a,#0xAE
   07D8 F0                 1279 	movx	@dptr,a
   07D9 90 01 3F           1280 	mov	dptr,#(_b + 0x003f)
   07DC 74 21              1281 	mov	a,#0x21
   07DE F0                 1282 	movx	@dptr,a
   07DF 90 01 40           1283 	mov	dptr,#(_b + 0x0040)
   07E2 74 38              1284 	mov	a,#0x38
   07E4 F0                 1285 	movx	@dptr,a
   07E5 90 01 41           1286 	mov	dptr,#(_b + 0x0041)
   07E8 74 CA              1287 	mov	a,#0xCA
   07EA F0                 1288 	movx	@dptr,a
   07EB 90 01 42           1289 	mov	dptr,#(_b + 0x0042)
   07EE 74 AA              1290 	mov	a,#0xAA
   07F0 F0                 1291 	movx	@dptr,a
   07F1 90 01 43           1292 	mov	dptr,#(_b + 0x0043)
   07F4 74 8F              1293 	mov	a,#0x8F
   07F6 F0                 1294 	movx	@dptr,a
   07F7 90 01 44           1295 	mov	dptr,#(_b + 0x0044)
   07FA 74 74              1296 	mov	a,#0x74
   07FC F0                 1297 	movx	@dptr,a
   07FD 90 01 45           1298 	mov	dptr,#(_b + 0x0045)
   0800 74 D5              1299 	mov	a,#0xD5
   0802 F0                 1300 	movx	@dptr,a
   0803 90 01 46           1301 	mov	dptr,#(_b + 0x0046)
   0806 74 02              1302 	mov	a,#0x02
   0808 F0                 1303 	movx	@dptr,a
   0809 90 01 47           1304 	mov	dptr,#(_b + 0x0047)
   080C 74 10              1305 	mov	a,#0x10
   080E F0                 1306 	movx	@dptr,a
   080F 90 01 48           1307 	mov	dptr,#(_b + 0x0048)
   0812 74 15              1308 	mov	a,#0x15
   0814 F0                 1309 	movx	@dptr,a
   0815 90 01 49           1310 	mov	dptr,#(_b + 0x0049)
   0818 74 87              1311 	mov	a,#0x87
   081A F0                 1312 	movx	@dptr,a
   081B 90 01 4A           1313 	mov	dptr,#(_b + 0x004a)
   081E 74 58              1314 	mov	a,#0x58
   0820 F0                 1315 	movx	@dptr,a
   0821 90 01 4B           1316 	mov	dptr,#(_b + 0x004b)
   0824 74 08              1317 	mov	a,#0x08
   0826 F0                 1318 	movx	@dptr,a
   0827 90 01 4C           1319 	mov	dptr,#(_b + 0x004c)
   082A 74 CC              1320 	mov	a,#0xCC
   082C F0                 1321 	movx	@dptr,a
   082D 90 01 4D           1322 	mov	dptr,#(_b + 0x004d)
   0830 74 9A              1323 	mov	a,#0x9A
   0832 F0                 1324 	movx	@dptr,a
   0833 90 01 4E           1325 	mov	dptr,#(_b + 0x004e)
   0836 74 42              1326 	mov	a,#0x42
   0838 F0                 1327 	movx	@dptr,a
   0839 90 01 4F           1328 	mov	dptr,#(_b + 0x004f)
   083C 74 BD              1329 	mov	a,#0xBD
   083E F0                 1330 	movx	@dptr,a
   083F 90 01 50           1331 	mov	dptr,#(_b + 0x0050)
   0842 74 02              1332 	mov	a,#0x02
   0844 F0                 1333 	movx	@dptr,a
   0845 90 01 51           1334 	mov	dptr,#(_b + 0x0051)
   0848 74 97              1335 	mov	a,#0x97
   084A F0                 1336 	movx	@dptr,a
   084B 90 01 52           1337 	mov	dptr,#(_b + 0x0052)
   084E 74 CE              1338 	mov	a,#0xCE
   0850 F0                 1339 	movx	@dptr,a
   0851 90 01 53           1340 	mov	dptr,#(_b + 0x0053)
   0854 74 2B              1341 	mov	a,#0x2B
   0856 F0                 1342 	movx	@dptr,a
   0857 90 01 54           1343 	mov	dptr,#(_b + 0x0054)
   085A 74 39              1344 	mov	a,#0x39
   085C F0                 1345 	movx	@dptr,a
   085D 90 01 55           1346 	mov	dptr,#(_b + 0x0055)
   0860 74 38              1347 	mov	a,#0x38
   0862 F0                 1348 	movx	@dptr,a
   0863 90 01 56           1349 	mov	dptr,#(_b + 0x0056)
   0866 74 99              1350 	mov	a,#0x99
   0868 F0                 1351 	movx	@dptr,a
   0869 90 01 57           1352 	mov	dptr,#(_b + 0x0057)
   086C 74 AC              1353 	mov	a,#0xAC
   086E F0                 1354 	movx	@dptr,a
   086F 90 01 58           1355 	mov	dptr,#(_b + 0x0058)
   0872 74 81              1356 	mov	a,#0x81
   0874 F0                 1357 	movx	@dptr,a
   0875 90 01 59           1358 	mov	dptr,#(_b + 0x0059)
   0878 74 BB              1359 	mov	a,#0xBB
   087A F0                 1360 	movx	@dptr,a
   087B 90 01 5A           1361 	mov	dptr,#(_b + 0x005a)
   087E 74 C3              1362 	mov	a,#0xC3
   0880 F0                 1363 	movx	@dptr,a
   0881 90 01 5B           1364 	mov	dptr,#(_b + 0x005b)
   0884 74 FF              1365 	mov	a,#0xFF
   0886 F0                 1366 	movx	@dptr,a
   0887 90 01 5C           1367 	mov	dptr,#(_b + 0x005c)
   088A 74 BC              1368 	mov	a,#0xBC
   088C F0                 1369 	movx	@dptr,a
   088D 90 01 5D           1370 	mov	dptr,#(_b + 0x005d)
   0890 74 C1              1371 	mov	a,#0xC1
   0892 F0                 1372 	movx	@dptr,a
   0893 90 01 5E           1373 	mov	dptr,#(_b + 0x005e)
   0896 74 B8              1374 	mov	a,#0xB8
   0898 F0                 1375 	movx	@dptr,a
   0899 90 01 5F           1376 	mov	dptr,#(_b + 0x005f)
   089C 74 E1              1377 	mov	a,#0xE1
   089E F0                 1378 	movx	@dptr,a
   089F 90 01 60           1379 	mov	dptr,#(_b + 0x0060)
   08A2 74 24              1380 	mov	a,#0x24
   08A4 F0                 1381 	movx	@dptr,a
   08A5 90 01 61           1382 	mov	dptr,#(_b + 0x0061)
   08A8 74 8D              1383 	mov	a,#0x8D
   08AA F0                 1384 	movx	@dptr,a
   08AB 90 01 62           1385 	mov	dptr,#(_b + 0x0062)
   08AE 74 C5              1386 	mov	a,#0xC5
   08B0 F0                 1387 	movx	@dptr,a
   08B1 90 01 63           1388 	mov	dptr,#(_b + 0x0063)
   08B4 74 20              1389 	mov	a,#0x20
   08B6 F0                 1390 	movx	@dptr,a
   08B7 90 01 64           1391 	mov	dptr,#(_b + 0x0064)
   08BA 74 89              1392 	mov	a,#0x89
   08BC F0                 1393 	movx	@dptr,a
   08BD 90 01 65           1394 	mov	dptr,#(_b + 0x0065)
   08C0 74 98              1395 	mov	a,#0x98
   08C2 F0                 1396 	movx	@dptr,a
   08C3 90 01 66           1397 	mov	dptr,#(_b + 0x0066)
   08C6 74 0B              1398 	mov	a,#0x0B
   08C8 F0                 1399 	movx	@dptr,a
   08C9 90 01 67           1400 	mov	dptr,#(_b + 0x0067)
   08CC 74 50              1401 	mov	a,#0x50
   08CE F0                 1402 	movx	@dptr,a
   08CF 90 01 68           1403 	mov	dptr,#(_b + 0x0068)
   08D2 74 B1              1404 	mov	a,#0xB1
   08D4 F0                 1405 	movx	@dptr,a
   08D5 90 01 69           1406 	mov	dptr,#(_b + 0x0069)
   08D8 74 16              1407 	mov	a,#0x16
   08DA F0                 1408 	movx	@dptr,a
   08DB 90 01 6A           1409 	mov	dptr,#(_b + 0x006a)
   08DE 74 9A              1410 	mov	a,#0x9A
   08E0 F0                 1411 	movx	@dptr,a
   08E1 90 01 6B           1412 	mov	dptr,#(_b + 0x006b)
   08E4 74 2D              1413 	mov	a,#0x2D
   08E6 F0                 1414 	movx	@dptr,a
   08E7 90 01 6C           1415 	mov	dptr,#(_b + 0x006c)
   08EA 74 6E              1416 	mov	a,#0x6E
   08EC F0                 1417 	movx	@dptr,a
   08ED 90 01 6D           1418 	mov	dptr,#(_b + 0x006d)
   08F0 74 5A              1419 	mov	a,#0x5A
   08F2 F0                 1420 	movx	@dptr,a
   08F3 90 01 6E           1421 	mov	dptr,#(_b + 0x006e)
   08F6 74 7B              1422 	mov	a,#0x7B
   08F8 F0                 1423 	movx	@dptr,a
   08F9 90 01 6F           1424 	mov	dptr,#(_b + 0x006f)
   08FC 74 2F              1425 	mov	a,#0x2F
   08FE F0                 1426 	movx	@dptr,a
   08FF 90 01 70           1427 	mov	dptr,#(_b + 0x0070)
   0902 74 D4              1428 	mov	a,#0xD4
   0904 F0                 1429 	movx	@dptr,a
   0905 90 01 71           1430 	mov	dptr,#(_b + 0x0071)
   0908 74 92              1431 	mov	a,#0x92
   090A F0                 1432 	movx	@dptr,a
   090B 90 01 72           1433 	mov	dptr,#(_b + 0x0072)
   090E 74 A1              1434 	mov	a,#0xA1
   0910 F0                 1435 	movx	@dptr,a
   0911 90 01 73           1436 	mov	dptr,#(_b + 0x0073)
   0914 74 AA              1437 	mov	a,#0xAA
   0916 F0                 1438 	movx	@dptr,a
   0917 90 01 74           1439 	mov	dptr,#(_b + 0x0074)
   091A 74 A6              1440 	mov	a,#0xA6
   091C F0                 1441 	movx	@dptr,a
   091D 90 01 75           1442 	mov	dptr,#(_b + 0x0075)
   0920 74 E5              1443 	mov	a,#0xE5
   0922 F0                 1444 	movx	@dptr,a
   0923 90 01 76           1445 	mov	dptr,#(_b + 0x0076)
   0926 74 A6              1446 	mov	a,#0xA6
   0928 F0                 1447 	movx	@dptr,a
   0929 90 01 77           1448 	mov	dptr,#(_b + 0x0077)
   092C 74 D2              1449 	mov	a,#0xD2
   092E F0                 1450 	movx	@dptr,a
   092F 90 01 78           1451 	mov	dptr,#(_b + 0x0078)
   0932 74 0D              1452 	mov	a,#0x0D
   0934 F0                 1453 	movx	@dptr,a
   0935 90 01 79           1454 	mov	dptr,#(_b + 0x0079)
   0938 74 0B              1455 	mov	a,#0x0B
   093A F0                 1456 	movx	@dptr,a
   093B 90 01 7A           1457 	mov	dptr,#(_b + 0x007a)
   093E 74 B7              1458 	mov	a,#0xB7
   0940 F0                 1459 	movx	@dptr,a
   0941 90 01 7B           1460 	mov	dptr,#(_b + 0x007b)
   0944 74 B2              1461 	mov	a,#0xB2
   0946 F0                 1462 	movx	@dptr,a
   0947 90 01 7C           1463 	mov	dptr,#(_b + 0x007c)
   094A 74 25              1464 	mov	a,#0x25
   094C F0                 1465 	movx	@dptr,a
   094D 90 01 7D           1466 	mov	dptr,#(_b + 0x007d)
   0950 74 23              1467 	mov	a,#0x23
   0952 F0                 1468 	movx	@dptr,a
   0953 90 01 7E           1469 	mov	dptr,#(_b + 0x007e)
   0956 74 23              1470 	mov	a,#0x23
   0958 F0                 1471 	movx	@dptr,a
   0959 90 01 7F           1472 	mov	dptr,#(_b + 0x007f)
   095C 74 BE              1473 	mov	a,#0xBE
   095E F0                 1474 	movx	@dptr,a
                           1475 	.area GSFINAL (CODE)
   095F 02 00 03           1476 	ljmp	__sdcc_program_startup
                           1477 ;--------------------------------------------------------
                           1478 ; Home
                           1479 ;--------------------------------------------------------
                           1480 	.area HOME    (CODE)
                           1481 	.area HOME    (CODE)
   0003                    1482 __sdcc_program_startup:
   0003 12 0A 0F           1483 	lcall	_main
                           1484 ;	return from main will lock up
   0006 80 FE              1485 	sjmp .
                           1486 ;--------------------------------------------------------
                           1487 ; code
                           1488 ;--------------------------------------------------------
                           1489 	.area CSEG    (CODE)
                           1490 ;------------------------------------------------------------
                           1491 ;Allocation info for local variables in function 'read_a'
                           1492 ;------------------------------------------------------------
                           1493 ;------------------------------------------------------------
                           1494 ;	main.c:21: void read_a() {
                           1495 ;	-----------------------------------------
                           1496 ;	 function read_a
                           1497 ;	-----------------------------------------
   0962                    1498 _read_a:
                    0002   1499 	ar2 = 0x02
                    0003   1500 	ar3 = 0x03
                    0004   1501 	ar4 = 0x04
                    0005   1502 	ar5 = 0x05
                    0006   1503 	ar6 = 0x06
                    0007   1504 	ar7 = 0x07
                    0000   1505 	ar0 = 0x00
                    0001   1506 	ar1 = 0x01
                           1507 ;	main.c:22: P1 = 0;
   0962 75 90 00           1508 	mov	_P1,#0x00
                           1509 ;	main.c:24: for (i = 0; i < SIZE; i++) {
   0965 75 08 00           1510 	mov	_i,#0x00
   0968                    1511 00101$:
   0968 74 80              1512 	mov	a,#0x100 - 0x80
   096A 25 08              1513 	add	a,_i
   096C 40 1A              1514 	jc	00104$
                           1515 ;	main.c:25: shared[i] = a[i];
   096E AA 08              1516 	mov	r2,_i
   0970 7B 40              1517 	mov	r3,#(_shared >> 8)
   0972 E5 08              1518 	mov	a,_i
   0974 24 80              1519 	add	a,#_a
   0976 F5 82              1520 	mov	dpl,a
   0978 E4                 1521 	clr	a
   0979 34 00              1522 	addc	a,#(_a >> 8)
   097B F5 83              1523 	mov	dph,a
   097D E0                 1524 	movx	a,@dptr
   097E FC                 1525 	mov	r4,a
   097F 8A 82              1526 	mov	dpl,r2
   0981 8B 83              1527 	mov	dph,r3
   0983 F0                 1528 	movx	@dptr,a
                           1529 ;	main.c:24: for (i = 0; i < SIZE; i++) {
   0984 05 08              1530 	inc	_i
   0986 80 E0              1531 	sjmp	00101$
   0988                    1532 00104$:
                           1533 ;	main.c:28: P0 = ins_read_a;
   0988 75 80 00           1534 	mov	_P0,#0x00
                           1535 ;	main.c:29: P0 = ins_idle;
   098B 75 80 04           1536 	mov	_P0,#0x04
   098E 22                 1537 	ret
                           1538 ;------------------------------------------------------------
                           1539 ;Allocation info for local variables in function 'read_b'
                           1540 ;------------------------------------------------------------
                           1541 ;------------------------------------------------------------
                           1542 ;	main.c:32: void read_b() {
                           1543 ;	-----------------------------------------
                           1544 ;	 function read_b
                           1545 ;	-----------------------------------------
   098F                    1546 _read_b:
                           1547 ;	main.c:33: P1 = 0;
   098F 75 90 00           1548 	mov	_P1,#0x00
                           1549 ;	main.c:35: for (i = 0; i < SIZE; i++) {
   0992 75 08 00           1550 	mov	_i,#0x00
   0995                    1551 00101$:
   0995 74 80              1552 	mov	a,#0x100 - 0x80
   0997 25 08              1553 	add	a,_i
   0999 40 15              1554 	jc	00104$
                           1555 ;	main.c:36: shared[i] = b[i];
   099B AA 08              1556 	mov	r2,_i
   099D 7B 40              1557 	mov	r3,#(_shared >> 8)
   099F 85 08 82           1558 	mov	dpl,_i
   09A2 75 83 01           1559 	mov	dph,#(_b >> 8)
   09A5 E0                 1560 	movx	a,@dptr
   09A6 FC                 1561 	mov	r4,a
   09A7 8A 82              1562 	mov	dpl,r2
   09A9 8B 83              1563 	mov	dph,r3
   09AB F0                 1564 	movx	@dptr,a
                           1565 ;	main.c:35: for (i = 0; i < SIZE; i++) {
   09AC 05 08              1566 	inc	_i
   09AE 80 E5              1567 	sjmp	00101$
   09B0                    1568 00104$:
                           1569 ;	main.c:39: P0 = ins_read_b;
   09B0 75 80 01           1570 	mov	_P0,#0x01
                           1571 ;	main.c:40: P0 = ins_idle;
   09B3 75 80 04           1572 	mov	_P0,#0x04
   09B6 22                 1573 	ret
                           1574 ;------------------------------------------------------------
                           1575 ;Allocation info for local variables in function 'read_m'
                           1576 ;------------------------------------------------------------
                           1577 ;------------------------------------------------------------
                           1578 ;	main.c:43: void read_m() {
                           1579 ;	-----------------------------------------
                           1580 ;	 function read_m
                           1581 ;	-----------------------------------------
   09B7                    1582 _read_m:
                           1583 ;	main.c:44: P1 = 0;
   09B7 75 90 00           1584 	mov	_P1,#0x00
                           1585 ;	main.c:46: for (i = 0; i < SIZE; i++) {
   09BA 75 08 00           1586 	mov	_i,#0x00
   09BD                    1587 00101$:
   09BD 74 80              1588 	mov	a,#0x100 - 0x80
   09BF 25 08              1589 	add	a,_i
   09C1 40 15              1590 	jc	00104$
                           1591 ;	main.c:47: shared[i] = m[i];
   09C3 AA 08              1592 	mov	r2,_i
   09C5 7B 40              1593 	mov	r3,#(_shared >> 8)
   09C7 85 08 82           1594 	mov	dpl,_i
   09CA 75 83 00           1595 	mov	dph,#(_m >> 8)
   09CD E0                 1596 	movx	a,@dptr
   09CE FC                 1597 	mov	r4,a
   09CF 8A 82              1598 	mov	dpl,r2
   09D1 8B 83              1599 	mov	dph,r3
   09D3 F0                 1600 	movx	@dptr,a
                           1601 ;	main.c:46: for (i = 0; i < SIZE; i++) {
   09D4 05 08              1602 	inc	_i
   09D6 80 E5              1603 	sjmp	00101$
   09D8                    1604 00104$:
                           1605 ;	main.c:50: P0 = ins_read_c;
   09D8 75 80 02           1606 	mov	_P0,#0x02
                           1607 ;	main.c:51: P0 = ins_idle;
   09DB 75 80 04           1608 	mov	_P0,#0x04
   09DE 22                 1609 	ret
                           1610 ;------------------------------------------------------------
                           1611 ;Allocation info for local variables in function 'write_r'
                           1612 ;------------------------------------------------------------
                           1613 ;------------------------------------------------------------
                           1614 ;	main.c:54: void write_r() {
                           1615 ;	-----------------------------------------
                           1616 ;	 function write_r
                           1617 ;	-----------------------------------------
   09DF                    1618 _write_r:
                           1619 ;	main.c:55: P0 = ins_write_r;
   09DF 75 80 03           1620 	mov	_P0,#0x03
                           1621 ;	main.c:57: for (i = 0; i < SIZE; i++) {
   09E2 75 08 00           1622 	mov	_i,#0x00
   09E5                    1623 00101$:
   09E5 74 80              1624 	mov	a,#0x100 - 0x80
   09E7 25 08              1625 	add	a,_i
   09E9 40 15              1626 	jc	00104$
                           1627 ;	main.c:58: r[i] = shared[i];
   09EB AA 08              1628 	mov	r2,_i
   09ED 7B 02              1629 	mov	r3,#(_r >> 8)
   09EF 85 08 82           1630 	mov	dpl,_i
   09F2 75 83 40           1631 	mov	dph,#(_shared >> 8)
   09F5 E0                 1632 	movx	a,@dptr
   09F6 FC                 1633 	mov	r4,a
   09F7 8A 82              1634 	mov	dpl,r2
   09F9 8B 83              1635 	mov	dph,r3
   09FB F0                 1636 	movx	@dptr,a
                           1637 ;	main.c:57: for (i = 0; i < SIZE; i++) {
   09FC 05 08              1638 	inc	_i
   09FE 80 E5              1639 	sjmp	00101$
   0A00                    1640 00104$:
                           1641 ;	main.c:61: P0 = ins_idle;
   0A00 75 80 04           1642 	mov	_P0,#0x04
   0A03 22                 1643 	ret
                           1644 ;------------------------------------------------------------
                           1645 ;Allocation info for local variables in function 'montgomery'
                           1646 ;------------------------------------------------------------
                           1647 ;------------------------------------------------------------
                           1648 ;	main.c:64: void montgomery() {
                           1649 ;	-----------------------------------------
                           1650 ;	 function montgomery
                           1651 ;	-----------------------------------------
   0A04                    1652 _montgomery:
                           1653 ;	main.c:65: P0 = ins_montgomery;
   0A04 75 80 05           1654 	mov	_P0,#0x05
                           1655 ;	main.c:66: P0 = ins_idle;
   0A07 75 80 04           1656 	mov	_P0,#0x04
   0A0A 22                 1657 	ret
                           1658 ;------------------------------------------------------------
                           1659 ;Allocation info for local variables in function 'terminate'
                           1660 ;------------------------------------------------------------
                           1661 ;------------------------------------------------------------
                           1662 ;	main.c:69: void terminate() {
                           1663 ;	-----------------------------------------
                           1664 ;	 function terminate
                           1665 ;	-----------------------------------------
   0A0B                    1666 _terminate:
                           1667 ;	main.c:70: P3 = 0x55;
   0A0B 75 B0 55           1668 	mov	_P3,#0x55
   0A0E 22                 1669 	ret
                           1670 ;------------------------------------------------------------
                           1671 ;Allocation info for local variables in function 'main'
                           1672 ;------------------------------------------------------------
                           1673 ;------------------------------------------------------------
                           1674 ;	main.c:73: int main() {
                           1675 ;	-----------------------------------------
                           1676 ;	 function main
                           1677 ;	-----------------------------------------
   0A0F                    1678 _main:
                           1679 ;	main.c:74: read_a();
   0A0F 12 09 62           1680 	lcall	_read_a
                           1681 ;	main.c:75: if (P1 == 1)
   0A12 74 01              1682 	mov	a,#0x01
   0A14 B5 90 03           1683 	cjne	a,_P1,00102$
                           1684 ;	main.c:76: read_b();
   0A17 12 09 8F           1685 	lcall	_read_b
   0A1A                    1686 00102$:
                           1687 ;	main.c:77: if (P1 == 1)
   0A1A 74 01              1688 	mov	a,#0x01
   0A1C B5 90 03           1689 	cjne	a,_P1,00104$
                           1690 ;	main.c:78: read_m();
   0A1F 12 09 B7           1691 	lcall	_read_m
   0A22                    1692 00104$:
                           1693 ;	main.c:80: startBrk=1;
   0A22 90 FF FE           1694 	mov	dptr,#_startBrk
   0A25 74 01              1695 	mov	a,#0x01
   0A27 F0                 1696 	movx	@dptr,a
                           1697 ;	main.c:82: montgomery();
   0A28 12 0A 04           1698 	lcall	_montgomery
                           1699 ;	main.c:84: endBrk=1;
   0A2B 90 FF FF           1700 	mov	dptr,#_endBrk
   0A2E 74 01              1701 	mov	a,#0x01
   0A30 F0                 1702 	movx	@dptr,a
                           1703 ;	main.c:86: write_r();
   0A31 12 09 DF           1704 	lcall	_write_r
                           1705 ;	main.c:88: terminate();
   0A34 12 0A 0B           1706 	lcall	_terminate
                           1707 ;	main.c:89: return 0;
   0A37 90 00 00           1708 	mov	dptr,#0x0000
   0A3A 22                 1709 	ret
                           1710 	.area CSEG    (CODE)
                           1711 	.area CONST   (CODE)
                           1712 	.area XINIT   (CODE)
                           1713 	.area CABS    (ABS,CODE)
