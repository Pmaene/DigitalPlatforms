                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Sun Nov  4 15:08:37 2012
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
                            109 	.globl _n
                            110 	.globl _b
                            111 	.globl _a
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
   0100                     286 _a::
   0100                     287 	.ds 128
   0200                     288 	.org 0x0200
   0200                     289 _b::
   0200                     290 	.ds 128
   0000                     291 	.org 0x0000
   0000                     292 _n::
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
                            327 ;	main.c:27: unsigned short tmp   = 0;
   0061 E4                  328 	clr	a
   0062 F5 08               329 	mov	_tmp,a
   0064 F5 09               330 	mov	(_tmp + 1),a
                            331 ;	main.c:28: unsigned char i      = 0;
   0066 75 0A 00            332 	mov	_i,#0x00
                            333 ;	main.c:29: unsigned char j      = 0;
   0069 75 0B 00            334 	mov	_j,#0x00
                            335 ;	main.c:31: unsigned short t     = 0;
   006C E4                  336 	clr	a
   006D F5 0C               337 	mov	_t,a
   006F F5 0D               338 	mov	(_t + 1),a
                            339 ;	main.c:20: __xdata __at (0x0100) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0071 90 01 00            340 	mov	dptr,#_a
   0074 74 FF               341 	mov	a,#0xFF
   0076 F0                  342 	movx	@dptr,a
   0077 90 01 01            343 	mov	dptr,#(_a + 0x0001)
   007A 74 7F               344 	mov	a,#0x7F
   007C F0                  345 	movx	@dptr,a
   007D 90 01 02            346 	mov	dptr,#(_a + 0x0002)
   0080 74 14               347 	mov	a,#0x14
   0082 F0                  348 	movx	@dptr,a
   0083 90 01 03            349 	mov	dptr,#(_a + 0x0003)
   0086 74 64               350 	mov	a,#0x64
   0088 F0                  351 	movx	@dptr,a
   0089 90 01 04            352 	mov	dptr,#(_a + 0x0004)
   008C 74 47               353 	mov	a,#0x47
   008E F0                  354 	movx	@dptr,a
   008F 90 01 05            355 	mov	dptr,#(_a + 0x0005)
   0092 74 68               356 	mov	a,#0x68
   0094 F0                  357 	movx	@dptr,a
   0095 90 01 06            358 	mov	dptr,#(_a + 0x0006)
   0098 74 C2               359 	mov	a,#0xC2
   009A F0                  360 	movx	@dptr,a
   009B 90 01 07            361 	mov	dptr,#(_a + 0x0007)
   009E 74 B6               362 	mov	a,#0xB6
   00A0 F0                  363 	movx	@dptr,a
   00A1 90 01 08            364 	mov	dptr,#(_a + 0x0008)
   00A4 74 27               365 	mov	a,#0x27
   00A6 F0                  366 	movx	@dptr,a
   00A7 90 01 09            367 	mov	dptr,#(_a + 0x0009)
   00AA 74 32               368 	mov	a,#0x32
   00AC F0                  369 	movx	@dptr,a
   00AD 90 01 0A            370 	mov	dptr,#(_a + 0x000a)
   00B0 74 63               371 	mov	a,#0x63
   00B2 F0                  372 	movx	@dptr,a
   00B3 90 01 0B            373 	mov	dptr,#(_a + 0x000b)
   00B6 74 2C               374 	mov	a,#0x2C
   00B8 F0                  375 	movx	@dptr,a
   00B9 90 01 0C            376 	mov	dptr,#(_a + 0x000c)
   00BC 74 B0               377 	mov	a,#0xB0
   00BE F0                  378 	movx	@dptr,a
   00BF 90 01 0D            379 	mov	dptr,#(_a + 0x000d)
   00C2 74 C3               380 	mov	a,#0xC3
   00C4 F0                  381 	movx	@dptr,a
   00C5 90 01 0E            382 	mov	dptr,#(_a + 0x000e)
   00C8 74 95               383 	mov	a,#0x95
   00CA F0                  384 	movx	@dptr,a
   00CB 90 01 0F            385 	mov	dptr,#(_a + 0x000f)
   00CE 74 13               386 	mov	a,#0x13
   00D0 F0                  387 	movx	@dptr,a
   00D1 90 01 10            388 	mov	dptr,#(_a + 0x0010)
   00D4 74 C5               389 	mov	a,#0xC5
   00D6 F0                  390 	movx	@dptr,a
   00D7 90 01 11            391 	mov	dptr,#(_a + 0x0011)
   00DA 74 7E               392 	mov	a,#0x7E
   00DC F0                  393 	movx	@dptr,a
   00DD 90 01 12            394 	mov	dptr,#(_a + 0x0012)
   00E0 74 17               395 	mov	a,#0x17
   00E2 F0                  396 	movx	@dptr,a
   00E3 90 01 13            397 	mov	dptr,#(_a + 0x0013)
   00E6 74 22               398 	mov	a,#0x22
   00E8 F0                  399 	movx	@dptr,a
   00E9 90 01 14            400 	mov	dptr,#(_a + 0x0014)
   00EC 74 F3               401 	mov	a,#0xF3
   00EE F0                  402 	movx	@dptr,a
   00EF 90 01 15            403 	mov	dptr,#(_a + 0x0015)
   00F2 74 7C               404 	mov	a,#0x7C
   00F4 F0                  405 	movx	@dptr,a
   00F5 90 01 16            406 	mov	dptr,#(_a + 0x0016)
   00F8 74 2D               407 	mov	a,#0x2D
   00FA F0                  408 	movx	@dptr,a
   00FB 90 01 17            409 	mov	dptr,#(_a + 0x0017)
   00FE 74 E8               410 	mov	a,#0xE8
   0100 F0                  411 	movx	@dptr,a
   0101 90 01 18            412 	mov	dptr,#(_a + 0x0018)
   0104 74 13               413 	mov	a,#0x13
   0106 F0                  414 	movx	@dptr,a
   0107 90 01 19            415 	mov	dptr,#(_a + 0x0019)
   010A 74 47               416 	mov	a,#0x47
   010C F0                  417 	movx	@dptr,a
   010D 90 01 1A            418 	mov	dptr,#(_a + 0x001a)
   0110 74 5E               419 	mov	a,#0x5E
   0112 F0                  420 	movx	@dptr,a
   0113 90 01 1B            421 	mov	dptr,#(_a + 0x001b)
   0116 74 15               422 	mov	a,#0x15
   0118 F0                  423 	movx	@dptr,a
   0119 90 01 1C            424 	mov	dptr,#(_a + 0x001c)
   011C 74 4E               425 	mov	a,#0x4E
   011E F0                  426 	movx	@dptr,a
   011F 90 01 1D            427 	mov	dptr,#(_a + 0x001d)
   0122 74 EF               428 	mov	a,#0xEF
   0124 F0                  429 	movx	@dptr,a
   0125 90 01 1E            430 	mov	dptr,#(_a + 0x001e)
   0128 74 83               431 	mov	a,#0x83
   012A F0                  432 	movx	@dptr,a
   012B 90 01 1F            433 	mov	dptr,#(_a + 0x001f)
   012E 74 81               434 	mov	a,#0x81
   0130 F0                  435 	movx	@dptr,a
   0131 90 01 20            436 	mov	dptr,#(_a + 0x0020)
   0134 74 DF               437 	mov	a,#0xDF
   0136 F0                  438 	movx	@dptr,a
   0137 90 01 21            439 	mov	dptr,#(_a + 0x0021)
   013A 74 C3               440 	mov	a,#0xC3
   013C F0                  441 	movx	@dptr,a
   013D 90 01 22            442 	mov	dptr,#(_a + 0x0022)
   0140 74 47               443 	mov	a,#0x47
   0142 F0                  444 	movx	@dptr,a
   0143 90 01 23            445 	mov	dptr,#(_a + 0x0023)
   0146 74 D3               446 	mov	a,#0xD3
   0148 F0                  447 	movx	@dptr,a
   0149 90 01 24            448 	mov	dptr,#(_a + 0x0024)
   014C 74 60               449 	mov	a,#0x60
   014E F0                  450 	movx	@dptr,a
   014F 90 01 25            451 	mov	dptr,#(_a + 0x0025)
   0152 74 BB               452 	mov	a,#0xBB
   0154 F0                  453 	movx	@dptr,a
   0155 90 01 26            454 	mov	dptr,#(_a + 0x0026)
   0158 74 8B               455 	mov	a,#0x8B
   015A F0                  456 	movx	@dptr,a
   015B 90 01 27            457 	mov	dptr,#(_a + 0x0027)
   015E 74 3E               458 	mov	a,#0x3E
   0160 F0                  459 	movx	@dptr,a
   0161 90 01 28            460 	mov	dptr,#(_a + 0x0028)
   0164 74 B6               461 	mov	a,#0xB6
   0166 F0                  462 	movx	@dptr,a
   0167 90 01 29            463 	mov	dptr,#(_a + 0x0029)
   016A 74 35               464 	mov	a,#0x35
   016C F0                  465 	movx	@dptr,a
   016D 90 01 2A            466 	mov	dptr,#(_a + 0x002a)
   0170 74 B1               467 	mov	a,#0xB1
   0172 F0                  468 	movx	@dptr,a
   0173 90 01 2B            469 	mov	dptr,#(_a + 0x002b)
   0176 74 6E               470 	mov	a,#0x6E
   0178 F0                  471 	movx	@dptr,a
   0179 90 01 2C            472 	mov	dptr,#(_a + 0x002c)
   017C 74 D1               473 	mov	a,#0xD1
   017E F0                  474 	movx	@dptr,a
   017F 90 01 2D            475 	mov	dptr,#(_a + 0x002d)
   0182 74 D5               476 	mov	a,#0xD5
   0184 F0                  477 	movx	@dptr,a
   0185 90 01 2E            478 	mov	dptr,#(_a + 0x002e)
   0188 74 DA               479 	mov	a,#0xDA
   018A F0                  480 	movx	@dptr,a
   018B 90 01 2F            481 	mov	dptr,#(_a + 0x002f)
   018E 74 6F               482 	mov	a,#0x6F
   0190 F0                  483 	movx	@dptr,a
   0191 90 01 30            484 	mov	dptr,#(_a + 0x0030)
   0194 74 28               485 	mov	a,#0x28
   0196 F0                  486 	movx	@dptr,a
   0197 90 01 31            487 	mov	dptr,#(_a + 0x0031)
   019A 74 16               488 	mov	a,#0x16
   019C F0                  489 	movx	@dptr,a
   019D 90 01 32            490 	mov	dptr,#(_a + 0x0032)
   01A0 74 2C               491 	mov	a,#0x2C
   01A2 F0                  492 	movx	@dptr,a
   01A3 90 01 33            493 	mov	dptr,#(_a + 0x0033)
   01A6 74 74               494 	mov	a,#0x74
   01A8 F0                  495 	movx	@dptr,a
   01A9 90 01 34            496 	mov	dptr,#(_a + 0x0034)
   01AC 74 36               497 	mov	a,#0x36
   01AE F0                  498 	movx	@dptr,a
   01AF 90 01 35            499 	mov	dptr,#(_a + 0x0035)
   01B2 74 F9               500 	mov	a,#0xF9
   01B4 F0                  501 	movx	@dptr,a
   01B5 90 01 36            502 	mov	dptr,#(_a + 0x0036)
   01B8 74 04               503 	mov	a,#0x04
   01BA F0                  504 	movx	@dptr,a
   01BB 90 01 37            505 	mov	dptr,#(_a + 0x0037)
   01BE 74 79               506 	mov	a,#0x79
   01C0 F0                  507 	movx	@dptr,a
   01C1 90 01 38            508 	mov	dptr,#(_a + 0x0038)
   01C4 74 F9               509 	mov	a,#0xF9
   01C6 F0                  510 	movx	@dptr,a
   01C7 90 01 39            511 	mov	dptr,#(_a + 0x0039)
   01CA 74 76               512 	mov	a,#0x76
   01CC F0                  513 	movx	@dptr,a
   01CD 90 01 3A            514 	mov	dptr,#(_a + 0x003a)
   01D0 74 E2               515 	mov	a,#0xE2
   01D2 F0                  516 	movx	@dptr,a
   01D3 90 01 3B            517 	mov	dptr,#(_a + 0x003b)
   01D6 74 CC               518 	mov	a,#0xCC
   01D8 F0                  519 	movx	@dptr,a
   01D9 90 01 3C            520 	mov	dptr,#(_a + 0x003c)
   01DC 74 A4               521 	mov	a,#0xA4
   01DE F0                  522 	movx	@dptr,a
   01DF 90 01 3D            523 	mov	dptr,#(_a + 0x003d)
   01E2 74 82               524 	mov	a,#0x82
   01E4 F0                  525 	movx	@dptr,a
   01E5 90 01 3E            526 	mov	dptr,#(_a + 0x003e)
   01E8 74 A7               527 	mov	a,#0xA7
   01EA F0                  528 	movx	@dptr,a
   01EB 90 01 3F            529 	mov	dptr,#(_a + 0x003f)
   01EE 74 A4               530 	mov	a,#0xA4
   01F0 F0                  531 	movx	@dptr,a
   01F1 90 01 40            532 	mov	dptr,#(_a + 0x0040)
   01F4 74 68               533 	mov	a,#0x68
   01F6 F0                  534 	movx	@dptr,a
   01F7 90 01 41            535 	mov	dptr,#(_a + 0x0041)
   01FA 74 4E               536 	mov	a,#0x4E
   01FC F0                  537 	movx	@dptr,a
   01FD 90 01 42            538 	mov	dptr,#(_a + 0x0042)
   0200 74 24               539 	mov	a,#0x24
   0202 F0                  540 	movx	@dptr,a
   0203 90 01 43            541 	mov	dptr,#(_a + 0x0043)
   0206 74 A6               542 	mov	a,#0xA6
   0208 F0                  543 	movx	@dptr,a
   0209 90 01 44            544 	mov	dptr,#(_a + 0x0044)
   020C 74 C1               545 	mov	a,#0xC1
   020E F0                  546 	movx	@dptr,a
   020F 90 01 45            547 	mov	dptr,#(_a + 0x0045)
   0212 74 58               548 	mov	a,#0x58
   0214 F0                  549 	movx	@dptr,a
   0215 90 01 46            550 	mov	dptr,#(_a + 0x0046)
   0218 74 68               551 	mov	a,#0x68
   021A F0                  552 	movx	@dptr,a
   021B 90 01 47            553 	mov	dptr,#(_a + 0x0047)
   021E 74 24               554 	mov	a,#0x24
   0220 F0                  555 	movx	@dptr,a
   0221 90 01 48            556 	mov	dptr,#(_a + 0x0048)
   0224 74 58               557 	mov	a,#0x58
   0226 F0                  558 	movx	@dptr,a
   0227 90 01 49            559 	mov	dptr,#(_a + 0x0049)
   022A 74 DC               560 	mov	a,#0xDC
   022C F0                  561 	movx	@dptr,a
   022D 90 01 4A            562 	mov	dptr,#(_a + 0x004a)
   0230 74 14               563 	mov	a,#0x14
   0232 F0                  564 	movx	@dptr,a
   0233 90 01 4B            565 	mov	dptr,#(_a + 0x004b)
   0236 74 F9               566 	mov	a,#0xF9
   0238 F0                  567 	movx	@dptr,a
   0239 90 01 4C            568 	mov	dptr,#(_a + 0x004c)
   023C 74 FF               569 	mov	a,#0xFF
   023E F0                  570 	movx	@dptr,a
   023F 90 01 4D            571 	mov	dptr,#(_a + 0x004d)
   0242 74 4D               572 	mov	a,#0x4D
   0244 F0                  573 	movx	@dptr,a
   0245 90 01 4E            574 	mov	dptr,#(_a + 0x004e)
   0248 74 A1               575 	mov	a,#0xA1
   024A F0                  576 	movx	@dptr,a
   024B 90 01 4F            577 	mov	dptr,#(_a + 0x004f)
   024E 74 EF               578 	mov	a,#0xEF
   0250 F0                  579 	movx	@dptr,a
   0251 90 01 50            580 	mov	dptr,#(_a + 0x0050)
   0254 74 53               581 	mov	a,#0x53
   0256 F0                  582 	movx	@dptr,a
   0257 90 01 51            583 	mov	dptr,#(_a + 0x0051)
   025A 74 A3               584 	mov	a,#0xA3
   025C F0                  585 	movx	@dptr,a
   025D 90 01 52            586 	mov	dptr,#(_a + 0x0052)
   0260 74 C2               587 	mov	a,#0xC2
   0262 F0                  588 	movx	@dptr,a
   0263 90 01 53            589 	mov	dptr,#(_a + 0x0053)
   0266 74 84               590 	mov	a,#0x84
   0268 F0                  591 	movx	@dptr,a
   0269 90 01 54            592 	mov	dptr,#(_a + 0x0054)
   026C 74 1B               593 	mov	a,#0x1B
   026E F0                  594 	movx	@dptr,a
   026F 90 01 55            595 	mov	dptr,#(_a + 0x0055)
   0272 74 81               596 	mov	a,#0x81
   0274 F0                  597 	movx	@dptr,a
   0275 90 01 56            598 	mov	dptr,#(_a + 0x0056)
   0278 74 16               599 	mov	a,#0x16
   027A F0                  600 	movx	@dptr,a
   027B 90 01 57            601 	mov	dptr,#(_a + 0x0057)
   027E 74 6C               602 	mov	a,#0x6C
   0280 F0                  603 	movx	@dptr,a
   0281 90 01 58            604 	mov	dptr,#(_a + 0x0058)
   0284 74 DD               605 	mov	a,#0xDD
   0286 F0                  606 	movx	@dptr,a
   0287 90 01 59            607 	mov	dptr,#(_a + 0x0059)
   028A 74 E3               608 	mov	a,#0xE3
   028C F0                  609 	movx	@dptr,a
   028D 90 01 5A            610 	mov	dptr,#(_a + 0x005a)
   0290 74 DB               611 	mov	a,#0xDB
   0292 F0                  612 	movx	@dptr,a
   0293 90 01 5B            613 	mov	dptr,#(_a + 0x005b)
   0296 74 A8               614 	mov	a,#0xA8
   0298 F0                  615 	movx	@dptr,a
   0299 90 01 5C            616 	mov	dptr,#(_a + 0x005c)
   029C 74 03               617 	mov	a,#0x03
   029E F0                  618 	movx	@dptr,a
   029F 90 01 5D            619 	mov	dptr,#(_a + 0x005d)
   02A2 74 8F               620 	mov	a,#0x8F
   02A4 F0                  621 	movx	@dptr,a
   02A5 90 01 5E            622 	mov	dptr,#(_a + 0x005e)
   02A8 74 F2               623 	mov	a,#0xF2
   02AA F0                  624 	movx	@dptr,a
   02AB 90 01 5F            625 	mov	dptr,#(_a + 0x005f)
   02AE 74 31               626 	mov	a,#0x31
   02B0 F0                  627 	movx	@dptr,a
   02B1 90 01 60            628 	mov	dptr,#(_a + 0x0060)
   02B4 74 FD               629 	mov	a,#0xFD
   02B6 F0                  630 	movx	@dptr,a
   02B7 90 01 61            631 	mov	dptr,#(_a + 0x0061)
   02BA 74 94               632 	mov	a,#0x94
   02BC F0                  633 	movx	@dptr,a
   02BD 90 01 62            634 	mov	dptr,#(_a + 0x0062)
   02C0 74 5D               635 	mov	a,#0x5D
   02C2 F0                  636 	movx	@dptr,a
   02C3 90 01 63            637 	mov	dptr,#(_a + 0x0063)
   02C6 74 26               638 	mov	a,#0x26
   02C8 F0                  639 	movx	@dptr,a
   02C9 90 01 64            640 	mov	dptr,#(_a + 0x0064)
   02CC 74 13               641 	mov	a,#0x13
   02CE F0                  642 	movx	@dptr,a
   02CF 90 01 65            643 	mov	dptr,#(_a + 0x0065)
   02D2 74 C6               644 	mov	a,#0xC6
   02D4 F0                  645 	movx	@dptr,a
   02D5 90 01 66            646 	mov	dptr,#(_a + 0x0066)
   02D8 74 68               647 	mov	a,#0x68
   02DA F0                  648 	movx	@dptr,a
   02DB 90 01 67            649 	mov	dptr,#(_a + 0x0067)
   02DE 74 B4               650 	mov	a,#0xB4
   02E0 F0                  651 	movx	@dptr,a
   02E1 90 01 68            652 	mov	dptr,#(_a + 0x0068)
   02E4 74 0D               653 	mov	a,#0x0D
   02E6 F0                  654 	movx	@dptr,a
   02E7 90 01 69            655 	mov	dptr,#(_a + 0x0069)
   02EA 74 CD               656 	mov	a,#0xCD
   02EC F0                  657 	movx	@dptr,a
   02ED 90 01 6A            658 	mov	dptr,#(_a + 0x006a)
   02F0 74 F1               659 	mov	a,#0xF1
   02F2 F0                  660 	movx	@dptr,a
   02F3 90 01 6B            661 	mov	dptr,#(_a + 0x006b)
   02F6 74 B8               662 	mov	a,#0xB8
   02F8 F0                  663 	movx	@dptr,a
   02F9 90 01 6C            664 	mov	dptr,#(_a + 0x006c)
   02FC 74 66               665 	mov	a,#0x66
   02FE F0                  666 	movx	@dptr,a
   02FF 90 01 6D            667 	mov	dptr,#(_a + 0x006d)
   0302 74 0D               668 	mov	a,#0x0D
   0304 F0                  669 	movx	@dptr,a
   0305 90 01 6E            670 	mov	dptr,#(_a + 0x006e)
   0308 74 5D               671 	mov	a,#0x5D
   030A F0                  672 	movx	@dptr,a
   030B 90 01 6F            673 	mov	dptr,#(_a + 0x006f)
   030E 74 3B               674 	mov	a,#0x3B
   0310 F0                  675 	movx	@dptr,a
   0311 90 01 70            676 	mov	dptr,#(_a + 0x0070)
   0314 74 2F               677 	mov	a,#0x2F
   0316 F0                  678 	movx	@dptr,a
   0317 90 01 71            679 	mov	dptr,#(_a + 0x0071)
   031A 74 C4               680 	mov	a,#0xC4
   031C F0                  681 	movx	@dptr,a
   031D 90 01 72            682 	mov	dptr,#(_a + 0x0072)
   0320 74 4A               683 	mov	a,#0x4A
   0322 F0                  684 	movx	@dptr,a
   0323 90 01 73            685 	mov	dptr,#(_a + 0x0073)
   0326 74 D1               686 	mov	a,#0xD1
   0328 F0                  687 	movx	@dptr,a
   0329 90 01 74            688 	mov	dptr,#(_a + 0x0074)
   032C 74 0B               689 	mov	a,#0x0B
   032E F0                  690 	movx	@dptr,a
   032F 90 01 75            691 	mov	dptr,#(_a + 0x0075)
   0332 74 36               692 	mov	a,#0x36
   0334 F0                  693 	movx	@dptr,a
   0335 90 01 76            694 	mov	dptr,#(_a + 0x0076)
   0338 74 C6               695 	mov	a,#0xC6
   033A F0                  696 	movx	@dptr,a
   033B 90 01 77            697 	mov	dptr,#(_a + 0x0077)
   033E 74 10               698 	mov	a,#0x10
   0340 F0                  699 	movx	@dptr,a
   0341 90 01 78            700 	mov	dptr,#(_a + 0x0078)
   0344 74 1A               701 	mov	a,#0x1A
   0346 F0                  702 	movx	@dptr,a
   0347 90 01 79            703 	mov	dptr,#(_a + 0x0079)
   034A 74 2F               704 	mov	a,#0x2F
   034C F0                  705 	movx	@dptr,a
   034D 90 01 7A            706 	mov	dptr,#(_a + 0x007a)
   0350 74 72               707 	mov	a,#0x72
   0352 F0                  708 	movx	@dptr,a
   0353 90 01 7B            709 	mov	dptr,#(_a + 0x007b)
   0356 74 D1               710 	mov	a,#0xD1
   0358 F0                  711 	movx	@dptr,a
   0359 90 01 7C            712 	mov	dptr,#(_a + 0x007c)
   035C 74 BB               713 	mov	a,#0xBB
   035E F0                  714 	movx	@dptr,a
   035F 90 01 7D            715 	mov	dptr,#(_a + 0x007d)
   0362 74 15               716 	mov	a,#0x15
   0364 F0                  717 	movx	@dptr,a
   0365 90 01 7E            718 	mov	dptr,#(_a + 0x007e)
   0368 74 29               719 	mov	a,#0x29
   036A F0                  720 	movx	@dptr,a
   036B 90 01 7F            721 	mov	dptr,#(_a + 0x007f)
   036E 74 CA               722 	mov	a,#0xCA
   0370 F0                  723 	movx	@dptr,a
                            724 ;	main.c:21: __xdata __at (0x0200) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0371 90 02 00            725 	mov	dptr,#_b
   0374 74 E1               726 	mov	a,#0xE1
   0376 F0                  727 	movx	@dptr,a
   0377 90 02 01            728 	mov	dptr,#(_b + 0x0001)
   037A 74 8A               729 	mov	a,#0x8A
   037C F0                  730 	movx	@dptr,a
   037D 90 02 02            731 	mov	dptr,#(_b + 0x0002)
   0380 74 03               732 	mov	a,#0x03
   0382 F0                  733 	movx	@dptr,a
   0383 90 02 03            734 	mov	dptr,#(_b + 0x0003)
   0386 74 DB               735 	mov	a,#0xDB
   0388 F0                  736 	movx	@dptr,a
   0389 90 02 04            737 	mov	dptr,#(_b + 0x0004)
   038C 74 E0               738 	mov	a,#0xE0
   038E F0                  739 	movx	@dptr,a
   038F 90 02 05            740 	mov	dptr,#(_b + 0x0005)
   0392 74 D9               741 	mov	a,#0xD9
   0394 F0                  742 	movx	@dptr,a
   0395 90 02 06            743 	mov	dptr,#(_b + 0x0006)
   0398 74 F6               744 	mov	a,#0xF6
   039A F0                  745 	movx	@dptr,a
   039B 90 02 07            746 	mov	dptr,#(_b + 0x0007)
   039E 74 55               747 	mov	a,#0x55
   03A0 F0                  748 	movx	@dptr,a
   03A1 90 02 08            749 	mov	dptr,#(_b + 0x0008)
   03A4 74 B6               750 	mov	a,#0xB6
   03A6 F0                  751 	movx	@dptr,a
   03A7 90 02 09            752 	mov	dptr,#(_b + 0x0009)
   03AA 74 27               753 	mov	a,#0x27
   03AC F0                  754 	movx	@dptr,a
   03AD 90 02 0A            755 	mov	dptr,#(_b + 0x000a)
   03B0 74 0A               756 	mov	a,#0x0A
   03B2 F0                  757 	movx	@dptr,a
   03B3 90 02 0B            758 	mov	dptr,#(_b + 0x000b)
   03B6 74 28               759 	mov	a,#0x28
   03B8 F0                  760 	movx	@dptr,a
   03B9 90 02 0C            761 	mov	dptr,#(_b + 0x000c)
   03BC 74 F0               762 	mov	a,#0xF0
   03BE F0                  763 	movx	@dptr,a
   03BF 90 02 0D            764 	mov	dptr,#(_b + 0x000d)
   03C2 74 5E               765 	mov	a,#0x5E
   03C4 F0                  766 	movx	@dptr,a
   03C5 90 02 0E            767 	mov	dptr,#(_b + 0x000e)
   03C8 74 74               768 	mov	a,#0x74
   03CA F0                  769 	movx	@dptr,a
   03CB 90 02 0F            770 	mov	dptr,#(_b + 0x000f)
   03CE 74 7F               771 	mov	a,#0x7F
   03D0 F0                  772 	movx	@dptr,a
   03D1 90 02 10            773 	mov	dptr,#(_b + 0x0010)
   03D4 74 E6               774 	mov	a,#0xE6
   03D6 F0                  775 	movx	@dptr,a
   03D7 90 02 11            776 	mov	dptr,#(_b + 0x0011)
   03DA 74 9F               777 	mov	a,#0x9F
   03DC F0                  778 	movx	@dptr,a
   03DD 90 02 12            779 	mov	dptr,#(_b + 0x0012)
   03E0 74 4C               780 	mov	a,#0x4C
   03E2 F0                  781 	movx	@dptr,a
   03E3 90 02 13            782 	mov	dptr,#(_b + 0x0013)
   03E6 74 FB               783 	mov	a,#0xFB
   03E8 F0                  784 	movx	@dptr,a
   03E9 90 02 14            785 	mov	dptr,#(_b + 0x0014)
   03EC 74 26               786 	mov	a,#0x26
   03EE F0                  787 	movx	@dptr,a
   03EF 90 02 15            788 	mov	dptr,#(_b + 0x0015)
   03F2 74 8C               789 	mov	a,#0x8C
   03F4 F0                  790 	movx	@dptr,a
   03F5 90 02 16            791 	mov	dptr,#(_b + 0x0016)
   03F8 74 9E               792 	mov	a,#0x9E
   03FA F0                  793 	movx	@dptr,a
   03FB 90 02 17            794 	mov	dptr,#(_b + 0x0017)
   03FE 74 87               795 	mov	a,#0x87
   0400 F0                  796 	movx	@dptr,a
   0401 90 02 18            797 	mov	dptr,#(_b + 0x0018)
   0404 74 83               798 	mov	a,#0x83
   0406 F0                  799 	movx	@dptr,a
   0407 90 02 19            800 	mov	dptr,#(_b + 0x0019)
   040A 74 22               801 	mov	a,#0x22
   040C F0                  802 	movx	@dptr,a
   040D 90 02 1A            803 	mov	dptr,#(_b + 0x001a)
   0410 74 F2               804 	mov	a,#0xF2
   0412 F0                  805 	movx	@dptr,a
   0413 90 02 1B            806 	mov	dptr,#(_b + 0x001b)
   0416 74 75               807 	mov	a,#0x75
   0418 F0                  808 	movx	@dptr,a
   0419 90 02 1C            809 	mov	dptr,#(_b + 0x001c)
   041C 74 D2               810 	mov	a,#0xD2
   041E F0                  811 	movx	@dptr,a
   041F 90 02 1D            812 	mov	dptr,#(_b + 0x001d)
   0422 74 B3               813 	mov	a,#0xB3
   0424 F0                  814 	movx	@dptr,a
   0425 90 02 1E            815 	mov	dptr,#(_b + 0x001e)
   0428 74 61               816 	mov	a,#0x61
   042A F0                  817 	movx	@dptr,a
   042B 90 02 1F            818 	mov	dptr,#(_b + 0x001f)
   042E 74 A2               819 	mov	a,#0xA2
   0430 F0                  820 	movx	@dptr,a
   0431 90 02 20            821 	mov	dptr,#(_b + 0x0020)
   0434 74 9D               822 	mov	a,#0x9D
   0436 F0                  823 	movx	@dptr,a
   0437 90 02 21            824 	mov	dptr,#(_b + 0x0021)
   043A 74 50               825 	mov	a,#0x50
   043C F0                  826 	movx	@dptr,a
   043D 90 02 22            827 	mov	dptr,#(_b + 0x0022)
   0440 74 71               828 	mov	a,#0x71
   0442 F0                  829 	movx	@dptr,a
   0443 90 02 23            830 	mov	dptr,#(_b + 0x0023)
   0446 74 5E               831 	mov	a,#0x5E
   0448 F0                  832 	movx	@dptr,a
   0449 90 02 24            833 	mov	dptr,#(_b + 0x0024)
   044C 74 C9               834 	mov	a,#0xC9
   044E F0                  835 	movx	@dptr,a
   044F 90 02 25            836 	mov	dptr,#(_b + 0x0025)
   0452 74 DD               837 	mov	a,#0xDD
   0454 F0                  838 	movx	@dptr,a
   0455 90 02 26            839 	mov	dptr,#(_b + 0x0026)
   0458 74 DD               840 	mov	a,#0xDD
   045A F0                  841 	movx	@dptr,a
   045B 90 02 27            842 	mov	dptr,#(_b + 0x0027)
   045E 74 74               843 	mov	a,#0x74
   0460 F0                  844 	movx	@dptr,a
   0461 90 02 28            845 	mov	dptr,#(_b + 0x0028)
   0464 74 0A               846 	mov	a,#0x0A
   0466 F0                  847 	movx	@dptr,a
   0467 90 02 29            848 	mov	dptr,#(_b + 0x0029)
   046A 74 3C               849 	mov	a,#0x3C
   046C F0                  850 	movx	@dptr,a
   046D 90 02 2A            851 	mov	dptr,#(_b + 0x002a)
   0470 74 C0               852 	mov	a,#0xC0
   0472 F0                  853 	movx	@dptr,a
   0473 90 02 2B            854 	mov	dptr,#(_b + 0x002b)
   0476 74 30               855 	mov	a,#0x30
   0478 F0                  856 	movx	@dptr,a
   0479 90 02 2C            857 	mov	dptr,#(_b + 0x002c)
   047C 74 3E               858 	mov	a,#0x3E
   047E F0                  859 	movx	@dptr,a
   047F 90 02 2D            860 	mov	dptr,#(_b + 0x002d)
   0482 74 E5               861 	mov	a,#0xE5
   0484 F0                  862 	movx	@dptr,a
   0485 90 02 2E            863 	mov	dptr,#(_b + 0x002e)
   0488 74 20               864 	mov	a,#0x20
   048A F0                  865 	movx	@dptr,a
   048B 90 02 2F            866 	mov	dptr,#(_b + 0x002f)
   048E 74 02               867 	mov	a,#0x02
   0490 F0                  868 	movx	@dptr,a
   0491 90 02 30            869 	mov	dptr,#(_b + 0x0030)
   0494 74 B3               870 	mov	a,#0xB3
   0496 F0                  871 	movx	@dptr,a
   0497 90 02 31            872 	mov	dptr,#(_b + 0x0031)
   049A 74 12               873 	mov	a,#0x12
   049C F0                  874 	movx	@dptr,a
   049D 90 02 32            875 	mov	dptr,#(_b + 0x0032)
   04A0 74 4F               876 	mov	a,#0x4F
   04A2 F0                  877 	movx	@dptr,a
   04A3 90 02 33            878 	mov	dptr,#(_b + 0x0033)
   04A6 74 AB               879 	mov	a,#0xAB
   04A8 F0                  880 	movx	@dptr,a
   04A9 90 02 34            881 	mov	dptr,#(_b + 0x0034)
   04AC 74 60               882 	mov	a,#0x60
   04AE F0                  883 	movx	@dptr,a
   04AF 90 02 35            884 	mov	dptr,#(_b + 0x0035)
   04B2 74 27               885 	mov	a,#0x27
   04B4 F0                  886 	movx	@dptr,a
   04B5 90 02 36            887 	mov	dptr,#(_b + 0x0036)
   04B8 74 07               888 	mov	a,#0x07
   04BA F0                  889 	movx	@dptr,a
   04BB 90 02 37            890 	mov	dptr,#(_b + 0x0037)
   04BE 74 17               891 	mov	a,#0x17
   04C0 F0                  892 	movx	@dptr,a
   04C1 90 02 38            893 	mov	dptr,#(_b + 0x0038)
   04C4 74 DD               894 	mov	a,#0xDD
   04C6 F0                  895 	movx	@dptr,a
   04C7 90 02 39            896 	mov	dptr,#(_b + 0x0039)
   04CA E4                  897 	clr	a
   04CB F0                  898 	movx	@dptr,a
   04CC 90 02 3A            899 	mov	dptr,#(_b + 0x003a)
   04CF 74 C2               900 	mov	a,#0xC2
   04D1 F0                  901 	movx	@dptr,a
   04D2 90 02 3B            902 	mov	dptr,#(_b + 0x003b)
   04D5 74 E1               903 	mov	a,#0xE1
   04D7 F0                  904 	movx	@dptr,a
   04D8 90 02 3C            905 	mov	dptr,#(_b + 0x003c)
   04DB 74 BC               906 	mov	a,#0xBC
   04DD F0                  907 	movx	@dptr,a
   04DE 90 02 3D            908 	mov	dptr,#(_b + 0x003d)
   04E1 74 04               909 	mov	a,#0x04
   04E3 F0                  910 	movx	@dptr,a
   04E4 90 02 3E            911 	mov	dptr,#(_b + 0x003e)
   04E7 74 AE               912 	mov	a,#0xAE
   04E9 F0                  913 	movx	@dptr,a
   04EA 90 02 3F            914 	mov	dptr,#(_b + 0x003f)
   04ED 74 21               915 	mov	a,#0x21
   04EF F0                  916 	movx	@dptr,a
   04F0 90 02 40            917 	mov	dptr,#(_b + 0x0040)
   04F3 74 38               918 	mov	a,#0x38
   04F5 F0                  919 	movx	@dptr,a
   04F6 90 02 41            920 	mov	dptr,#(_b + 0x0041)
   04F9 74 CA               921 	mov	a,#0xCA
   04FB F0                  922 	movx	@dptr,a
   04FC 90 02 42            923 	mov	dptr,#(_b + 0x0042)
   04FF 74 AA               924 	mov	a,#0xAA
   0501 F0                  925 	movx	@dptr,a
   0502 90 02 43            926 	mov	dptr,#(_b + 0x0043)
   0505 74 8F               927 	mov	a,#0x8F
   0507 F0                  928 	movx	@dptr,a
   0508 90 02 44            929 	mov	dptr,#(_b + 0x0044)
   050B 74 74               930 	mov	a,#0x74
   050D F0                  931 	movx	@dptr,a
   050E 90 02 45            932 	mov	dptr,#(_b + 0x0045)
   0511 74 D5               933 	mov	a,#0xD5
   0513 F0                  934 	movx	@dptr,a
   0514 90 02 46            935 	mov	dptr,#(_b + 0x0046)
   0517 74 02               936 	mov	a,#0x02
   0519 F0                  937 	movx	@dptr,a
   051A 90 02 47            938 	mov	dptr,#(_b + 0x0047)
   051D 74 10               939 	mov	a,#0x10
   051F F0                  940 	movx	@dptr,a
   0520 90 02 48            941 	mov	dptr,#(_b + 0x0048)
   0523 74 15               942 	mov	a,#0x15
   0525 F0                  943 	movx	@dptr,a
   0526 90 02 49            944 	mov	dptr,#(_b + 0x0049)
   0529 74 87               945 	mov	a,#0x87
   052B F0                  946 	movx	@dptr,a
   052C 90 02 4A            947 	mov	dptr,#(_b + 0x004a)
   052F 74 58               948 	mov	a,#0x58
   0531 F0                  949 	movx	@dptr,a
   0532 90 02 4B            950 	mov	dptr,#(_b + 0x004b)
   0535 74 08               951 	mov	a,#0x08
   0537 F0                  952 	movx	@dptr,a
   0538 90 02 4C            953 	mov	dptr,#(_b + 0x004c)
   053B 74 CC               954 	mov	a,#0xCC
   053D F0                  955 	movx	@dptr,a
   053E 90 02 4D            956 	mov	dptr,#(_b + 0x004d)
   0541 74 9A               957 	mov	a,#0x9A
   0543 F0                  958 	movx	@dptr,a
   0544 90 02 4E            959 	mov	dptr,#(_b + 0x004e)
   0547 74 42               960 	mov	a,#0x42
   0549 F0                  961 	movx	@dptr,a
   054A 90 02 4F            962 	mov	dptr,#(_b + 0x004f)
   054D 74 BD               963 	mov	a,#0xBD
   054F F0                  964 	movx	@dptr,a
   0550 90 02 50            965 	mov	dptr,#(_b + 0x0050)
   0553 74 02               966 	mov	a,#0x02
   0555 F0                  967 	movx	@dptr,a
   0556 90 02 51            968 	mov	dptr,#(_b + 0x0051)
   0559 74 97               969 	mov	a,#0x97
   055B F0                  970 	movx	@dptr,a
   055C 90 02 52            971 	mov	dptr,#(_b + 0x0052)
   055F 74 CE               972 	mov	a,#0xCE
   0561 F0                  973 	movx	@dptr,a
   0562 90 02 53            974 	mov	dptr,#(_b + 0x0053)
   0565 74 2B               975 	mov	a,#0x2B
   0567 F0                  976 	movx	@dptr,a
   0568 90 02 54            977 	mov	dptr,#(_b + 0x0054)
   056B 74 39               978 	mov	a,#0x39
   056D F0                  979 	movx	@dptr,a
   056E 90 02 55            980 	mov	dptr,#(_b + 0x0055)
   0571 74 38               981 	mov	a,#0x38
   0573 F0                  982 	movx	@dptr,a
   0574 90 02 56            983 	mov	dptr,#(_b + 0x0056)
   0577 74 99               984 	mov	a,#0x99
   0579 F0                  985 	movx	@dptr,a
   057A 90 02 57            986 	mov	dptr,#(_b + 0x0057)
   057D 74 AC               987 	mov	a,#0xAC
   057F F0                  988 	movx	@dptr,a
   0580 90 02 58            989 	mov	dptr,#(_b + 0x0058)
   0583 74 81               990 	mov	a,#0x81
   0585 F0                  991 	movx	@dptr,a
   0586 90 02 59            992 	mov	dptr,#(_b + 0x0059)
   0589 74 BB               993 	mov	a,#0xBB
   058B F0                  994 	movx	@dptr,a
   058C 90 02 5A            995 	mov	dptr,#(_b + 0x005a)
   058F 74 C3               996 	mov	a,#0xC3
   0591 F0                  997 	movx	@dptr,a
   0592 90 02 5B            998 	mov	dptr,#(_b + 0x005b)
   0595 74 FF               999 	mov	a,#0xFF
   0597 F0                 1000 	movx	@dptr,a
   0598 90 02 5C           1001 	mov	dptr,#(_b + 0x005c)
   059B 74 BC              1002 	mov	a,#0xBC
   059D F0                 1003 	movx	@dptr,a
   059E 90 02 5D           1004 	mov	dptr,#(_b + 0x005d)
   05A1 74 C1              1005 	mov	a,#0xC1
   05A3 F0                 1006 	movx	@dptr,a
   05A4 90 02 5E           1007 	mov	dptr,#(_b + 0x005e)
   05A7 74 B8              1008 	mov	a,#0xB8
   05A9 F0                 1009 	movx	@dptr,a
   05AA 90 02 5F           1010 	mov	dptr,#(_b + 0x005f)
   05AD 74 E1              1011 	mov	a,#0xE1
   05AF F0                 1012 	movx	@dptr,a
   05B0 90 02 60           1013 	mov	dptr,#(_b + 0x0060)
   05B3 74 24              1014 	mov	a,#0x24
   05B5 F0                 1015 	movx	@dptr,a
   05B6 90 02 61           1016 	mov	dptr,#(_b + 0x0061)
   05B9 74 8D              1017 	mov	a,#0x8D
   05BB F0                 1018 	movx	@dptr,a
   05BC 90 02 62           1019 	mov	dptr,#(_b + 0x0062)
   05BF 74 C5              1020 	mov	a,#0xC5
   05C1 F0                 1021 	movx	@dptr,a
   05C2 90 02 63           1022 	mov	dptr,#(_b + 0x0063)
   05C5 74 20              1023 	mov	a,#0x20
   05C7 F0                 1024 	movx	@dptr,a
   05C8 90 02 64           1025 	mov	dptr,#(_b + 0x0064)
   05CB 74 89              1026 	mov	a,#0x89
   05CD F0                 1027 	movx	@dptr,a
   05CE 90 02 65           1028 	mov	dptr,#(_b + 0x0065)
   05D1 74 98              1029 	mov	a,#0x98
   05D3 F0                 1030 	movx	@dptr,a
   05D4 90 02 66           1031 	mov	dptr,#(_b + 0x0066)
   05D7 74 0B              1032 	mov	a,#0x0B
   05D9 F0                 1033 	movx	@dptr,a
   05DA 90 02 67           1034 	mov	dptr,#(_b + 0x0067)
   05DD 74 50              1035 	mov	a,#0x50
   05DF F0                 1036 	movx	@dptr,a
   05E0 90 02 68           1037 	mov	dptr,#(_b + 0x0068)
   05E3 74 B1              1038 	mov	a,#0xB1
   05E5 F0                 1039 	movx	@dptr,a
   05E6 90 02 69           1040 	mov	dptr,#(_b + 0x0069)
   05E9 74 16              1041 	mov	a,#0x16
   05EB F0                 1042 	movx	@dptr,a
   05EC 90 02 6A           1043 	mov	dptr,#(_b + 0x006a)
   05EF 74 9A              1044 	mov	a,#0x9A
   05F1 F0                 1045 	movx	@dptr,a
   05F2 90 02 6B           1046 	mov	dptr,#(_b + 0x006b)
   05F5 74 2D              1047 	mov	a,#0x2D
   05F7 F0                 1048 	movx	@dptr,a
   05F8 90 02 6C           1049 	mov	dptr,#(_b + 0x006c)
   05FB 74 6E              1050 	mov	a,#0x6E
   05FD F0                 1051 	movx	@dptr,a
   05FE 90 02 6D           1052 	mov	dptr,#(_b + 0x006d)
   0601 74 5A              1053 	mov	a,#0x5A
   0603 F0                 1054 	movx	@dptr,a
   0604 90 02 6E           1055 	mov	dptr,#(_b + 0x006e)
   0607 74 7B              1056 	mov	a,#0x7B
   0609 F0                 1057 	movx	@dptr,a
   060A 90 02 6F           1058 	mov	dptr,#(_b + 0x006f)
   060D 74 2F              1059 	mov	a,#0x2F
   060F F0                 1060 	movx	@dptr,a
   0610 90 02 70           1061 	mov	dptr,#(_b + 0x0070)
   0613 74 D4              1062 	mov	a,#0xD4
   0615 F0                 1063 	movx	@dptr,a
   0616 90 02 71           1064 	mov	dptr,#(_b + 0x0071)
   0619 74 92              1065 	mov	a,#0x92
   061B F0                 1066 	movx	@dptr,a
   061C 90 02 72           1067 	mov	dptr,#(_b + 0x0072)
   061F 74 A1              1068 	mov	a,#0xA1
   0621 F0                 1069 	movx	@dptr,a
   0622 90 02 73           1070 	mov	dptr,#(_b + 0x0073)
   0625 74 AA              1071 	mov	a,#0xAA
   0627 F0                 1072 	movx	@dptr,a
   0628 90 02 74           1073 	mov	dptr,#(_b + 0x0074)
   062B 74 A6              1074 	mov	a,#0xA6
   062D F0                 1075 	movx	@dptr,a
   062E 90 02 75           1076 	mov	dptr,#(_b + 0x0075)
   0631 74 E5              1077 	mov	a,#0xE5
   0633 F0                 1078 	movx	@dptr,a
   0634 90 02 76           1079 	mov	dptr,#(_b + 0x0076)
   0637 74 A6              1080 	mov	a,#0xA6
   0639 F0                 1081 	movx	@dptr,a
   063A 90 02 77           1082 	mov	dptr,#(_b + 0x0077)
   063D 74 D2              1083 	mov	a,#0xD2
   063F F0                 1084 	movx	@dptr,a
   0640 90 02 78           1085 	mov	dptr,#(_b + 0x0078)
   0643 74 0D              1086 	mov	a,#0x0D
   0645 F0                 1087 	movx	@dptr,a
   0646 90 02 79           1088 	mov	dptr,#(_b + 0x0079)
   0649 74 0B              1089 	mov	a,#0x0B
   064B F0                 1090 	movx	@dptr,a
   064C 90 02 7A           1091 	mov	dptr,#(_b + 0x007a)
   064F 74 B7              1092 	mov	a,#0xB7
   0651 F0                 1093 	movx	@dptr,a
   0652 90 02 7B           1094 	mov	dptr,#(_b + 0x007b)
   0655 74 B2              1095 	mov	a,#0xB2
   0657 F0                 1096 	movx	@dptr,a
   0658 90 02 7C           1097 	mov	dptr,#(_b + 0x007c)
   065B 74 25              1098 	mov	a,#0x25
   065D F0                 1099 	movx	@dptr,a
   065E 90 02 7D           1100 	mov	dptr,#(_b + 0x007d)
   0661 74 23              1101 	mov	a,#0x23
   0663 F0                 1102 	movx	@dptr,a
   0664 90 02 7E           1103 	mov	dptr,#(_b + 0x007e)
   0667 74 23              1104 	mov	a,#0x23
   0669 F0                 1105 	movx	@dptr,a
   066A 90 02 7F           1106 	mov	dptr,#(_b + 0x007f)
   066D 74 BE              1107 	mov	a,#0xBE
   066F F0                 1108 	movx	@dptr,a
                           1109 ;	main.c:22: __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0670 90 00 00           1110 	mov	dptr,#_n
   0673 74 D3              1111 	mov	a,#0xD3
   0675 F0                 1112 	movx	@dptr,a
   0676 90 00 01           1113 	mov	dptr,#(_n + 0x0001)
   0679 74 55              1114 	mov	a,#0x55
   067B F0                 1115 	movx	@dptr,a
   067C 90 00 02           1116 	mov	dptr,#(_n + 0x0002)
   067F 74 A4              1117 	mov	a,#0xA4
   0681 F0                 1118 	movx	@dptr,a
   0682 90 00 03           1119 	mov	dptr,#(_n + 0x0003)
   0685 74 5F              1120 	mov	a,#0x5F
   0687 F0                 1121 	movx	@dptr,a
   0688 90 00 04           1122 	mov	dptr,#(_n + 0x0004)
   068B 74 57              1123 	mov	a,#0x57
   068D F0                 1124 	movx	@dptr,a
   068E 90 00 05           1125 	mov	dptr,#(_n + 0x0005)
   0691 74 F3              1126 	mov	a,#0xF3
   0693 F0                 1127 	movx	@dptr,a
   0694 90 00 06           1128 	mov	dptr,#(_n + 0x0006)
   0697 74 F9              1129 	mov	a,#0xF9
   0699 F0                 1130 	movx	@dptr,a
   069A 90 00 07           1131 	mov	dptr,#(_n + 0x0007)
   069D 74 3E              1132 	mov	a,#0x3E
   069F F0                 1133 	movx	@dptr,a
   06A0 90 00 08           1134 	mov	dptr,#(_n + 0x0008)
   06A3 74 CF              1135 	mov	a,#0xCF
   06A5 F0                 1136 	movx	@dptr,a
   06A6 90 00 09           1137 	mov	dptr,#(_n + 0x0009)
   06A9 74 84              1138 	mov	a,#0x84
   06AB F0                 1139 	movx	@dptr,a
   06AC 90 00 0A           1140 	mov	dptr,#(_n + 0x000a)
   06AF 74 6D              1141 	mov	a,#0x6D
   06B1 F0                 1142 	movx	@dptr,a
   06B2 90 00 0B           1143 	mov	dptr,#(_n + 0x000b)
   06B5 74 FF              1144 	mov	a,#0xFF
   06B7 F0                 1145 	movx	@dptr,a
   06B8 90 00 0C           1146 	mov	dptr,#(_n + 0x000c)
   06BB 74 20              1147 	mov	a,#0x20
   06BD F0                 1148 	movx	@dptr,a
   06BE 90 00 0D           1149 	mov	dptr,#(_n + 0x000d)
   06C1 74 C1              1150 	mov	a,#0xC1
   06C3 F0                 1151 	movx	@dptr,a
   06C4 90 00 0E           1152 	mov	dptr,#(_n + 0x000e)
   06C7 74 AE              1153 	mov	a,#0xAE
   06C9 F0                 1154 	movx	@dptr,a
   06CA 90 00 0F           1155 	mov	dptr,#(_n + 0x000f)
   06CD 74 12              1156 	mov	a,#0x12
   06CF F0                 1157 	movx	@dptr,a
   06D0 90 00 10           1158 	mov	dptr,#(_n + 0x0010)
   06D3 74 CF              1159 	mov	a,#0xCF
   06D5 F0                 1160 	movx	@dptr,a
   06D6 90 00 11           1161 	mov	dptr,#(_n + 0x0011)
   06D9 74 F1              1162 	mov	a,#0xF1
   06DB F0                 1163 	movx	@dptr,a
   06DC 90 00 12           1164 	mov	dptr,#(_n + 0x0012)
   06DF E4                 1165 	clr	a
   06E0 F0                 1166 	movx	@dptr,a
   06E1 90 00 13           1167 	mov	dptr,#(_n + 0x0013)
   06E4 74 66              1168 	mov	a,#0x66
   06E6 F0                 1169 	movx	@dptr,a
   06E7 90 00 14           1170 	mov	dptr,#(_n + 0x0014)
   06EA 74 45              1171 	mov	a,#0x45
   06EC F0                 1172 	movx	@dptr,a
   06ED 90 00 15           1173 	mov	dptr,#(_n + 0x0015)
   06F0 74 E2              1174 	mov	a,#0xE2
   06F2 F0                 1175 	movx	@dptr,a
   06F3 90 00 16           1176 	mov	dptr,#(_n + 0x0016)
   06F6 74 34              1177 	mov	a,#0x34
   06F8 F0                 1178 	movx	@dptr,a
   06F9 90 00 17           1179 	mov	dptr,#(_n + 0x0017)
   06FC 74 61              1180 	mov	a,#0x61
   06FE F0                 1181 	movx	@dptr,a
   06FF 90 00 18           1182 	mov	dptr,#(_n + 0x0018)
   0702 74 27              1183 	mov	a,#0x27
   0704 F0                 1184 	movx	@dptr,a
   0705 90 00 19           1185 	mov	dptr,#(_n + 0x0019)
   0708 74 F2              1186 	mov	a,#0xF2
   070A F0                 1187 	movx	@dptr,a
   070B 90 00 1A           1188 	mov	dptr,#(_n + 0x001a)
   070E 74 57              1189 	mov	a,#0x57
   0710 F0                 1190 	movx	@dptr,a
   0711 90 00 1B           1191 	mov	dptr,#(_n + 0x001b)
   0714 74 B3              1192 	mov	a,#0xB3
   0716 F0                 1193 	movx	@dptr,a
   0717 90 00 1C           1194 	mov	dptr,#(_n + 0x001c)
   071A 74 42              1195 	mov	a,#0x42
   071C F0                 1196 	movx	@dptr,a
   071D 90 00 1D           1197 	mov	dptr,#(_n + 0x001d)
   0720 74 21              1198 	mov	a,#0x21
   0722 F0                 1199 	movx	@dptr,a
   0723 90 00 1E           1200 	mov	dptr,#(_n + 0x001e)
   0726 74 80              1201 	mov	a,#0x80
   0728 F0                 1202 	movx	@dptr,a
   0729 90 00 1F           1203 	mov	dptr,#(_n + 0x001f)
   072C 74 95              1204 	mov	a,#0x95
   072E F0                 1205 	movx	@dptr,a
   072F 90 00 20           1206 	mov	dptr,#(_n + 0x0020)
   0732 74 AB              1207 	mov	a,#0xAB
   0734 F0                 1208 	movx	@dptr,a
   0735 90 00 21           1209 	mov	dptr,#(_n + 0x0021)
   0738 74 15              1210 	mov	a,#0x15
   073A F0                 1211 	movx	@dptr,a
   073B 90 00 22           1212 	mov	dptr,#(_n + 0x0022)
   073E 74 A2              1213 	mov	a,#0xA2
   0740 F0                 1214 	movx	@dptr,a
   0741 90 00 23           1215 	mov	dptr,#(_n + 0x0023)
   0744 74 1D              1216 	mov	a,#0x1D
   0746 F0                 1217 	movx	@dptr,a
   0747 90 00 24           1218 	mov	dptr,#(_n + 0x0024)
   074A 74 53              1219 	mov	a,#0x53
   074C F0                 1220 	movx	@dptr,a
   074D 90 00 25           1221 	mov	dptr,#(_n + 0x0025)
   0750 74 B2              1222 	mov	a,#0xB2
   0752 F0                 1223 	movx	@dptr,a
   0753 90 00 26           1224 	mov	dptr,#(_n + 0x0026)
   0756 74 27              1225 	mov	a,#0x27
   0758 F0                 1226 	movx	@dptr,a
   0759 90 00 27           1227 	mov	dptr,#(_n + 0x0027)
   075C 74 E6              1228 	mov	a,#0xE6
   075E F0                 1229 	movx	@dptr,a
   075F 90 00 28           1230 	mov	dptr,#(_n + 0x0028)
   0762 74 56              1231 	mov	a,#0x56
   0764 F0                 1232 	movx	@dptr,a
   0765 90 00 29           1233 	mov	dptr,#(_n + 0x0029)
   0768 74 93              1234 	mov	a,#0x93
   076A F0                 1235 	movx	@dptr,a
   076B 90 00 2A           1236 	mov	dptr,#(_n + 0x002a)
   076E 74 27              1237 	mov	a,#0x27
   0770 F0                 1238 	movx	@dptr,a
   0771 90 00 2B           1239 	mov	dptr,#(_n + 0x002b)
   0774 74 AF              1240 	mov	a,#0xAF
   0776 F0                 1241 	movx	@dptr,a
   0777 90 00 2C           1242 	mov	dptr,#(_n + 0x002c)
   077A 74 C2              1243 	mov	a,#0xC2
   077C F0                 1244 	movx	@dptr,a
   077D 90 00 2D           1245 	mov	dptr,#(_n + 0x002d)
   0780 74 EE              1246 	mov	a,#0xEE
   0782 F0                 1247 	movx	@dptr,a
   0783 90 00 2E           1248 	mov	dptr,#(_n + 0x002e)
   0786 74 2B              1249 	mov	a,#0x2B
   0788 F0                 1250 	movx	@dptr,a
   0789 90 00 2F           1251 	mov	dptr,#(_n + 0x002f)
   078C 74 2F              1252 	mov	a,#0x2F
   078E F0                 1253 	movx	@dptr,a
   078F 90 00 30           1254 	mov	dptr,#(_n + 0x0030)
   0792 74 9A              1255 	mov	a,#0x9A
   0794 F0                 1256 	movx	@dptr,a
   0795 90 00 31           1257 	mov	dptr,#(_n + 0x0031)
   0798 74 AE              1258 	mov	a,#0xAE
   079A F0                 1259 	movx	@dptr,a
   079B 90 00 32           1260 	mov	dptr,#(_n + 0x0032)
   079E 74 6A              1261 	mov	a,#0x6A
   07A0 F0                 1262 	movx	@dptr,a
   07A1 90 00 33           1263 	mov	dptr,#(_n + 0x0033)
   07A4 74 09              1264 	mov	a,#0x09
   07A6 F0                 1265 	movx	@dptr,a
   07A7 90 00 34           1266 	mov	dptr,#(_n + 0x0034)
   07AA 74 E5              1267 	mov	a,#0xE5
   07AC F0                 1268 	movx	@dptr,a
   07AD 90 00 35           1269 	mov	dptr,#(_n + 0x0035)
   07B0 74 7F              1270 	mov	a,#0x7F
   07B2 F0                 1271 	movx	@dptr,a
   07B3 90 00 36           1272 	mov	dptr,#(_n + 0x0036)
   07B6 74 AE              1273 	mov	a,#0xAE
   07B8 F0                 1274 	movx	@dptr,a
   07B9 90 00 37           1275 	mov	dptr,#(_n + 0x0037)
   07BC 74 7D              1276 	mov	a,#0x7D
   07BE F0                 1277 	movx	@dptr,a
   07BF 90 00 38           1278 	mov	dptr,#(_n + 0x0038)
   07C2 74 2B              1279 	mov	a,#0x2B
   07C4 F0                 1280 	movx	@dptr,a
   07C5 90 00 39           1281 	mov	dptr,#(_n + 0x0039)
   07C8 74 DD              1282 	mov	a,#0xDD
   07CA F0                 1283 	movx	@dptr,a
   07CB 90 00 3A           1284 	mov	dptr,#(_n + 0x003a)
   07CE 74 58              1285 	mov	a,#0x58
   07D0 F0                 1286 	movx	@dptr,a
   07D1 90 00 3B           1287 	mov	dptr,#(_n + 0x003b)
   07D4 74 2F              1288 	mov	a,#0x2F
   07D6 F0                 1289 	movx	@dptr,a
   07D7 90 00 3C           1290 	mov	dptr,#(_n + 0x003c)
   07DA 74 87              1291 	mov	a,#0x87
   07DC F0                 1292 	movx	@dptr,a
   07DD 90 00 3D           1293 	mov	dptr,#(_n + 0x003d)
   07E0 74 70              1294 	mov	a,#0x70
   07E2 F0                 1295 	movx	@dptr,a
   07E3 90 00 3E           1296 	mov	dptr,#(_n + 0x003e)
   07E6 74 05              1297 	mov	a,#0x05
   07E8 F0                 1298 	movx	@dptr,a
   07E9 90 00 3F           1299 	mov	dptr,#(_n + 0x003f)
   07EC 74 1F              1300 	mov	a,#0x1F
   07EE F0                 1301 	movx	@dptr,a
   07EF 90 00 40           1302 	mov	dptr,#(_n + 0x0040)
   07F2 74 F8              1303 	mov	a,#0xF8
   07F4 F0                 1304 	movx	@dptr,a
   07F5 90 00 41           1305 	mov	dptr,#(_n + 0x0041)
   07F8 74 BD              1306 	mov	a,#0xBD
   07FA F0                 1307 	movx	@dptr,a
   07FB 90 00 42           1308 	mov	dptr,#(_n + 0x0042)
   07FE 74 0B              1309 	mov	a,#0x0B
   0800 F0                 1310 	movx	@dptr,a
   0801 90 00 43           1311 	mov	dptr,#(_n + 0x0043)
   0804 74 E0              1312 	mov	a,#0xE0
   0806 F0                 1313 	movx	@dptr,a
   0807 90 00 44           1314 	mov	dptr,#(_n + 0x0044)
   080A 74 FD              1315 	mov	a,#0xFD
   080C F0                 1316 	movx	@dptr,a
   080D 90 00 45           1317 	mov	dptr,#(_n + 0x0045)
   0810 74 F1              1318 	mov	a,#0xF1
   0812 F0                 1319 	movx	@dptr,a
   0813 90 00 46           1320 	mov	dptr,#(_n + 0x0046)
   0816 74 81              1321 	mov	a,#0x81
   0818 F0                 1322 	movx	@dptr,a
   0819 90 00 47           1323 	mov	dptr,#(_n + 0x0047)
   081C 74 60              1324 	mov	a,#0x60
   081E F0                 1325 	movx	@dptr,a
   081F 90 00 48           1326 	mov	dptr,#(_n + 0x0048)
   0822 74 BF              1327 	mov	a,#0xBF
   0824 F0                 1328 	movx	@dptr,a
   0825 90 00 49           1329 	mov	dptr,#(_n + 0x0049)
   0828 74 D2              1330 	mov	a,#0xD2
   082A F0                 1331 	movx	@dptr,a
   082B 90 00 4A           1332 	mov	dptr,#(_n + 0x004a)
   082E 74 FE              1333 	mov	a,#0xFE
   0830 F0                 1334 	movx	@dptr,a
   0831 90 00 4B           1335 	mov	dptr,#(_n + 0x004b)
   0834 74 8F              1336 	mov	a,#0x8F
   0836 F0                 1337 	movx	@dptr,a
   0837 90 00 4C           1338 	mov	dptr,#(_n + 0x004c)
   083A 74 7B              1339 	mov	a,#0x7B
   083C F0                 1340 	movx	@dptr,a
   083D 90 00 4D           1341 	mov	dptr,#(_n + 0x004d)
   0840 74 B9              1342 	mov	a,#0xB9
   0842 F0                 1343 	movx	@dptr,a
   0843 90 00 4E           1344 	mov	dptr,#(_n + 0x004e)
   0846 74 A9              1345 	mov	a,#0xA9
   0848 F0                 1346 	movx	@dptr,a
   0849 90 00 4F           1347 	mov	dptr,#(_n + 0x004f)
   084C 74 A4              1348 	mov	a,#0xA4
   084E F0                 1349 	movx	@dptr,a
   084F 90 00 50           1350 	mov	dptr,#(_n + 0x0050)
   0852 74 6A              1351 	mov	a,#0x6A
   0854 F0                 1352 	movx	@dptr,a
   0855 90 00 51           1353 	mov	dptr,#(_n + 0x0051)
   0858 74 0A              1354 	mov	a,#0x0A
   085A F0                 1355 	movx	@dptr,a
   085B 90 00 52           1356 	mov	dptr,#(_n + 0x0052)
   085E 74 A3              1357 	mov	a,#0xA3
   0860 F0                 1358 	movx	@dptr,a
   0861 90 00 53           1359 	mov	dptr,#(_n + 0x0053)
   0864 74 A3              1360 	mov	a,#0xA3
   0866 F0                 1361 	movx	@dptr,a
   0867 90 00 54           1362 	mov	dptr,#(_n + 0x0054)
   086A 74 70              1363 	mov	a,#0x70
   086C F0                 1364 	movx	@dptr,a
   086D 90 00 55           1365 	mov	dptr,#(_n + 0x0055)
   0870 74 22              1366 	mov	a,#0x22
   0872 F0                 1367 	movx	@dptr,a
   0873 90 00 56           1368 	mov	dptr,#(_n + 0x0056)
   0876 74 BF              1369 	mov	a,#0xBF
   0878 F0                 1370 	movx	@dptr,a
   0879 90 00 57           1371 	mov	dptr,#(_n + 0x0057)
   087C 74 4C              1372 	mov	a,#0x4C
   087E F0                 1373 	movx	@dptr,a
   087F 90 00 58           1374 	mov	dptr,#(_n + 0x0058)
   0882 74 1B              1375 	mov	a,#0x1B
   0884 F0                 1376 	movx	@dptr,a
   0885 90 00 59           1377 	mov	dptr,#(_n + 0x0059)
   0888 74 B0              1378 	mov	a,#0xB0
   088A F0                 1379 	movx	@dptr,a
   088B 90 00 5A           1380 	mov	dptr,#(_n + 0x005a)
   088E 74 41              1381 	mov	a,#0x41
   0890 F0                 1382 	movx	@dptr,a
   0891 90 00 5B           1383 	mov	dptr,#(_n + 0x005b)
   0894 74 24              1384 	mov	a,#0x24
   0896 F0                 1385 	movx	@dptr,a
   0897 90 00 5C           1386 	mov	dptr,#(_n + 0x005c)
   089A 74 4C              1387 	mov	a,#0x4C
   089C F0                 1388 	movx	@dptr,a
   089D 90 00 5D           1389 	mov	dptr,#(_n + 0x005d)
   08A0 74 3A              1390 	mov	a,#0x3A
   08A2 F0                 1391 	movx	@dptr,a
   08A3 90 00 5E           1392 	mov	dptr,#(_n + 0x005e)
   08A6 74 08              1393 	mov	a,#0x08
   08A8 F0                 1394 	movx	@dptr,a
   08A9 90 00 5F           1395 	mov	dptr,#(_n + 0x005f)
   08AC 74 EC              1396 	mov	a,#0xEC
   08AE F0                 1397 	movx	@dptr,a
   08AF 90 00 60           1398 	mov	dptr,#(_n + 0x0060)
   08B2 74 F4              1399 	mov	a,#0xF4
   08B4 F0                 1400 	movx	@dptr,a
   08B5 90 00 61           1401 	mov	dptr,#(_n + 0x0061)
   08B8 74 91              1402 	mov	a,#0x91
   08BA F0                 1403 	movx	@dptr,a
   08BB 90 00 62           1404 	mov	dptr,#(_n + 0x0062)
   08BE 74 FF              1405 	mov	a,#0xFF
   08C0 F0                 1406 	movx	@dptr,a
   08C1 90 00 63           1407 	mov	dptr,#(_n + 0x0063)
   08C4 74 93              1408 	mov	a,#0x93
   08C6 F0                 1409 	movx	@dptr,a
   08C7 90 00 64           1410 	mov	dptr,#(_n + 0x0064)
   08CA 74 8D              1411 	mov	a,#0x8D
   08CC F0                 1412 	movx	@dptr,a
   08CD 90 00 65           1413 	mov	dptr,#(_n + 0x0065)
   08D0 74 FC              1414 	mov	a,#0xFC
   08D2 F0                 1415 	movx	@dptr,a
   08D3 90 00 66           1416 	mov	dptr,#(_n + 0x0066)
   08D6 74 FA              1417 	mov	a,#0xFA
   08D8 F0                 1418 	movx	@dptr,a
   08D9 90 00 67           1419 	mov	dptr,#(_n + 0x0067)
   08DC 74 4C              1420 	mov	a,#0x4C
   08DE F0                 1421 	movx	@dptr,a
   08DF 90 00 68           1422 	mov	dptr,#(_n + 0x0068)
   08E2 74 26              1423 	mov	a,#0x26
   08E4 F0                 1424 	movx	@dptr,a
   08E5 90 00 69           1425 	mov	dptr,#(_n + 0x0069)
   08E8 74 2D              1426 	mov	a,#0x2D
   08EA F0                 1427 	movx	@dptr,a
   08EB 90 00 6A           1428 	mov	dptr,#(_n + 0x006a)
   08EE 74 D2              1429 	mov	a,#0xD2
   08F0 F0                 1430 	movx	@dptr,a
   08F1 90 00 6B           1431 	mov	dptr,#(_n + 0x006b)
   08F4 74 E9              1432 	mov	a,#0xE9
   08F6 F0                 1433 	movx	@dptr,a
   08F7 90 00 6C           1434 	mov	dptr,#(_n + 0x006c)
   08FA 74 FC              1435 	mov	a,#0xFC
   08FC F0                 1436 	movx	@dptr,a
   08FD 90 00 6D           1437 	mov	dptr,#(_n + 0x006d)
   0900 74 76              1438 	mov	a,#0x76
   0902 F0                 1439 	movx	@dptr,a
   0903 90 00 6E           1440 	mov	dptr,#(_n + 0x006e)
   0906 74 B1              1441 	mov	a,#0xB1
   0908 F0                 1442 	movx	@dptr,a
   0909 90 00 6F           1443 	mov	dptr,#(_n + 0x006f)
   090C 74 67              1444 	mov	a,#0x67
   090E F0                 1445 	movx	@dptr,a
   090F 90 00 70           1446 	mov	dptr,#(_n + 0x0070)
   0912 74 5E              1447 	mov	a,#0x5E
   0914 F0                 1448 	movx	@dptr,a
   0915 90 00 71           1449 	mov	dptr,#(_n + 0x0071)
   0918 74 24              1450 	mov	a,#0x24
   091A F0                 1451 	movx	@dptr,a
   091B 90 00 72           1452 	mov	dptr,#(_n + 0x0072)
   091E 74 9E              1453 	mov	a,#0x9E
   0920 F0                 1454 	movx	@dptr,a
   0921 90 00 73           1455 	mov	dptr,#(_n + 0x0073)
   0924 74 31              1456 	mov	a,#0x31
   0926 F0                 1457 	movx	@dptr,a
   0927 90 00 74           1458 	mov	dptr,#(_n + 0x0074)
   092A 74 66              1459 	mov	a,#0x66
   092C F0                 1460 	movx	@dptr,a
   092D 90 00 75           1461 	mov	dptr,#(_n + 0x0075)
   0930 74 5D              1462 	mov	a,#0x5D
   0932 F0                 1463 	movx	@dptr,a
   0933 90 00 76           1464 	mov	dptr,#(_n + 0x0076)
   0936 74 98              1465 	mov	a,#0x98
   0938 F0                 1466 	movx	@dptr,a
   0939 90 00 77           1467 	mov	dptr,#(_n + 0x0077)
   093C 74 4C              1468 	mov	a,#0x4C
   093E F0                 1469 	movx	@dptr,a
   093F 90 00 78           1470 	mov	dptr,#(_n + 0x0078)
   0942 74 0D              1471 	mov	a,#0x0D
   0944 F0                 1472 	movx	@dptr,a
   0945 90 00 79           1473 	mov	dptr,#(_n + 0x0079)
   0948 74 79              1474 	mov	a,#0x79
   094A F0                 1475 	movx	@dptr,a
   094B 90 00 7A           1476 	mov	dptr,#(_n + 0x007a)
   094E 74 81              1477 	mov	a,#0x81
   0950 F0                 1478 	movx	@dptr,a
   0951 90 00 7B           1479 	mov	dptr,#(_n + 0x007b)
   0954 74 76              1480 	mov	a,#0x76
   0956 F0                 1481 	movx	@dptr,a
   0957 90 00 7C           1482 	mov	dptr,#(_n + 0x007c)
   095A 74 AC              1483 	mov	a,#0xAC
   095C F0                 1484 	movx	@dptr,a
   095D 90 00 7D           1485 	mov	dptr,#(_n + 0x007d)
   0960 74 1D              1486 	mov	a,#0x1D
   0962 F0                 1487 	movx	@dptr,a
   0963 90 00 7E           1488 	mov	dptr,#(_n + 0x007e)
   0966 74 E2              1489 	mov	a,#0xE2
   0968 F0                 1490 	movx	@dptr,a
   0969 90 00 7F           1491 	mov	dptr,#(_n + 0x007f)
   096C 74 CA              1492 	mov	a,#0xCA
   096E F0                 1493 	movx	@dptr,a
                           1494 	.area GSFINAL (CODE)
   096F 02 00 03           1495 	ljmp	__sdcc_program_startup
                           1496 ;--------------------------------------------------------
                           1497 ; Home
                           1498 ;--------------------------------------------------------
                           1499 	.area HOME    (CODE)
                           1500 	.area HOME    (CODE)
   0003                    1501 __sdcc_program_startup:
   0003 12 09 72           1502 	lcall	_main
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
                           1513 ;	main.c:35: int main() {
                           1514 ;	-----------------------------------------
                           1515 ;	 function main
                           1516 ;	-----------------------------------------
   0972                    1517 _main:
                    0002   1518 	ar2 = 0x02
                    0003   1519 	ar3 = 0x03
                    0004   1520 	ar4 = 0x04
                    0005   1521 	ar5 = 0x05
                    0006   1522 	ar6 = 0x06
                    0007   1523 	ar7 = 0x07
                    0000   1524 	ar0 = 0x00
                    0001   1525 	ar1 = 0x01
                           1526 ;	main.c:36: startBrk=1;
   0972 90 FF FE           1527 	mov	dptr,#_startBrk
   0975 74 01              1528 	mov	a,#0x01
   0977 F0                 1529 	movx	@dptr,a
                           1530 ;	main.c:37: fips();
   0978 12 09 85           1531 	lcall	_fips
                           1532 ;	main.c:38: endBrk=1;
   097B 90 FF FF           1533 	mov	dptr,#_endBrk
   097E 74 01              1534 	mov	a,#0x01
   0980 F0                 1535 	movx	@dptr,a
                           1536 ;	main.c:39: return 0;
   0981 90 00 00           1537 	mov	dptr,#0x0000
   0984 22                 1538 	ret
                           1539 ;------------------------------------------------------------
                           1540 ;Allocation info for local variables in function 'fips'
                           1541 ;------------------------------------------------------------
                           1542 ;------------------------------------------------------------
                           1543 ;	main.c:42: void fips()
                           1544 ;	-----------------------------------------
                           1545 ;	 function fips
                           1546 ;	-----------------------------------------
   0985                    1547 _fips:
                           1548 ;	main.c:50: __endasm;
                           1549 	
   0985 85 00 82           1550 	        mov dpl, 0x00
   0988 75 83 00           1551 	        mov dph, #(_n >> 8)
   098B E0                 1552 	        movx a, @dptr
   098C FA                 1553 	        mov r2, a
                           1554 	    
                           1555 ;	main.c:58: __endasm;
                           1556 	
   098D 85 00 82           1557 	        mov dpl, 0x00
   0990 75 83 02           1558 	        mov dph, #(_b >> 8)
   0993 E0                 1559 	        movx a, @dptr
   0994 FB                 1560 	        mov r3, a
                           1561 	    
                           1562 ;	main.c:128: _endasm;
                           1563 	
                           1564         ; write registers to stack
   0995 89 0E              1565 	        mov _stack, r1
   0997 C0 0E              1566 	        push _stack
                           1567 	
                           1568         ; load a[0]
   0999 75 82 00           1569 	        mov dpl, #0x00
   099C 75 83 01           1570 	        mov dph, #(_a >> 8)
   099F E0                 1571 	        movx a,@dptr
   09A0 F5 F0              1572 	        mov b, a
                           1573 	
                           1574         ; load b0
   09A2 EB                 1575 	        mov a, r3
                           1576 	
                           1577         ; a[0]*b[0]
   09A3 A4                 1578 	        mul ab
                           1579 	
                           1580         ; tmp = (unsigned char)(tmp) + a[0]*b0
   09A4 25 08              1581 	        add a, _tmp
   09A6 F5 08              1582 	        mov _tmp, a
                           1583 	
                           1584         ; t = t + (tmp >> 8)
   09A8 E5 F0              1585 	        mov a, b
   09AA 35 0C              1586 	        addc a, _t
   09AC F5 0C              1587 	        mov _t, a
   09AE E4                 1588 	        clr a
   09AF 35 0D              1589 	        addc a, (_t + 1)
   09B1 F5 0D              1590 	        mov (_t + 1), a
                           1591 	
                           1592         ; c = (unsigned char)(tmp)*0xA5
   09B3 74 A5              1593 	        mov a, #0xA5
   09B5 85 08 F0           1594 	        mov b, _tmp
   09B8 A4                 1595 	        mul ab
   09B9 F9                 1596 	        mov r1, a
                           1597 	
                           1598         ;n[0] ophalen
   09BA EA                 1599 	        mov a, r2
                           1600 	
                           1601         ; c*n[0]
   09BB 89 F0              1602 	        mov b, r1
   09BD A4                 1603 	        mul ab
                           1604 	
                           1605         ; tmp = (unsigned char)(tmp) + c*n0
   09BE 25 08              1606 	        add a, _tmp
   09C0 F5 08              1607 	        mov _tmp, a
                           1608 	
                           1609         ; m[0] = c
   09C2 75 82 00           1610 	        mov dpl, #0x00
   09C5 75 83 04           1611 	        mov dph, #(_m >> 8)
   09C8 E9                 1612 	        mov a,r1
   09C9 F0                 1613 	        movx @dptr,a
                           1614 	
                           1615         ; tmp = t + (tmp >> 8)
   09CA E5 F0              1616 	        mov a, b
   09CC 35 0C              1617 	        addc a, _t
   09CE F5 0C              1618 	        mov _t, a
   09D0 E4                 1619 	        clr a
   09D1 35 0D              1620 	        addc a, (_t + 1)
   09D3 F5 0D              1621 	        mov (_t + 1), a
                           1622 	
                           1623         ; t = tmp >> 8;
   09D5 85 0C 08           1624 	        mov _tmp, _t
   09D8 85 0D 0C           1625 	        mov _t, (_t + 1)
   09DB 75 0D 00           1626 	        mov (_t + 1), #0x00
                           1627 	
   09DE D0 0E              1628 	        pop _stack
   09E0 A9 0E              1629 	        mov r1, _stack
                           1630 	    
                           1631 ;	main.c:130: for(i = 1; i < SIZE; i++) {
   09E2 75 0A 01           1632 	mov	_i,#0x01
   09E5                    1633 00101$:
   09E5 74 80              1634 	mov	a,#0x100 - 0x80
   09E7 25 0A              1635 	add	a,_i
   09E9 50 03              1636 	jnc	00120$
   09EB 02 0A 92           1637 	ljmp	00104$
   09EE                    1638 00120$:
                           1639 ;	main.c:131: stack = i;
   09EE 85 0A 0E           1640 	mov	_stack,_i
                           1641 ;	main.c:263: _endasm;
                           1642 	
   09F1 75 0B 00           1643 	            mov _j, #0x00
                           1644 	
   09F4 89 0E              1645 	            mov _stack, r1
   09F6 C0 0E              1646 	            push _stack
                           1647 	
   09F8                    1648 	            00001$:
                           1649             ; load a[j]
   09F8 85 0B 82           1650 	            mov dpl,_j
   09FB 75 83 01           1651 	            mov dph, #(_a >> 8)
   09FE E0                 1652 	            movx a,@dptr
   09FF F5 F0              1653 	            mov b, a
                           1654 	
                           1655             ; load b[i-j]
   0A01 E5 0A              1656 	            mov a, _i
   0A03 C3                 1657 	            clr c
   0A04 95 0B              1658 	            subb a, _j
   0A06 F5 82              1659 	            mov dpl, a
   0A08 FC                 1660 	            mov r4, a
   0A09 75 83 02           1661 	            mov dph, #(_b >> 8)
   0A0C E0                 1662 	            movx a,@dptr
                           1663 	
                           1664             ; a[j]*b[i-j]
   0A0D A4                 1665 	            mul ab
                           1666 	
                           1667             ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
   0A0E 25 08              1668 	            add a, _tmp
   0A10 F5 08              1669 	            mov _tmp, a
                           1670 	
                           1671             ; t = t + (tmp >> 8)
   0A12 E5 F0              1672 	            mov a, b
   0A14 35 0C              1673 	            addc a, _t
   0A16 F5 0C              1674 	            mov _t, a
   0A18 E4                 1675 	            clr a
   0A19 35 0D              1676 	            addc a, (_t + 1)
   0A1B F5 0D              1677 	            mov (_t + 1), a
                           1678 	
                           1679             ; load m[j]
   0A1D 85 0B 82           1680 	            mov dpl, _j
   0A20 75 83 04           1681 	            mov dph, #(_m >> 8)
   0A23 E0                 1682 	            movx a,@dptr
   0A24 F5 F0              1683 	            mov b, a
                           1684 	
                           1685             ; load n[i-j]
   0A26 8C 82              1686 	            mov dpl, r4
   0A28 75 83 00           1687 	            mov dph, #(_n >> 8)
   0A2B E0                 1688 	            movx a,@dptr
                           1689 	
                           1690             ; m[j]*n[i-j]
   0A2C A4                 1691 	            mul ab
                           1692 	
                           1693             ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
   0A2D 25 08              1694 	            add a, _tmp
   0A2F F5 08              1695 	            mov _tmp, a
                           1696 	
                           1697             ; t = t + (tmp >> 8)
   0A31 E5 F0              1698 	            mov a, b
   0A33 35 0C              1699 	            addc a, _t
   0A35 F5 0C              1700 	            mov _t, a
   0A37 E4                 1701 	            clr a
   0A38 35 0D              1702 	            addc a, (_t + 1)
   0A3A F5 0D              1703 	            mov (_t + 1), a
                           1704 	
                           1705             ; for (j = 0; j < i; j++)
   0A3C E5 0A              1706 	            mov a, _i
   0A3E 05 0B              1707 	            inc _j
   0A40 95 0B              1708 	            subb a, _j
   0A42 70 B4              1709 	            jnz 00001$
                           1710 	
                           1711             ; load a[i]
   0A44 85 0A 82           1712 	            mov dpl, _i
   0A47 75 83 01           1713 	            mov dph, #(_a >> 8)
   0A4A E0                 1714 	            movx a, @dptr
   0A4B F5 F0              1715 	            mov b, a
                           1716 	
                           1717             ; load b0
   0A4D EB                 1718 	            mov a, r3
                           1719 	
                           1720             ; a[i]*b[0]
   0A4E A4                 1721 	            mul ab
                           1722 	
                           1723             ; tmp = (unsigned char)(tmp) + a[i]*b0
   0A4F 25 08              1724 	            add a, _tmp
   0A51 F5 08              1725 	            mov _tmp, a
                           1726 	
                           1727             ; t = t + (tmp >> 8)
   0A53 E5 F0              1728 	            mov a, b
   0A55 35 0C              1729 	            addc a, _t
   0A57 F5 0C              1730 	            mov _t, a
   0A59 E4                 1731 	            clr a
   0A5A 35 0D              1732 	            addc a, (_t + 1)
   0A5C F5 0D              1733 	            mov (_t + 1), a
                           1734 	
                           1735             ; c = (unsigned char)(tmp)*0xA5
   0A5E 74 A5              1736 	            mov a, #0xA5
   0A60 85 08 F0           1737 	            mov b, _tmp
   0A63 A4                 1738 	            mul ab
   0A64 F9                 1739 	            mov r1, a
                           1740 	
                           1741             ; load n[0]
   0A65 EA                 1742 	            mov a, r2
                           1743 	
                           1744             ; c*n[0]
   0A66 89 F0              1745 	            mov b, r1
   0A68 A4                 1746 	            mul ab
                           1747 	
                           1748             ; tmp = (unsigned char)(tmp) + c*n0
   0A69 25 08              1749 	            add a, _tmp
   0A6B F5 08              1750 	            mov _tmp, a
                           1751 	
                           1752             ; m[i] = c
   0A6D 85 0A 82           1753 	            mov dpl, _i
   0A70 75 83 04           1754 	            mov dph, #(_m >> 8)
   0A73 E9                 1755 	            mov a, r1
   0A74 F0                 1756 	            movx @dptr,a
                           1757 	
                           1758             ; tmp = t + (tmp >> 8)
   0A75 E5 F0              1759 	            mov a, b
   0A77 35 0C              1760 	            addc a, _t
   0A79 F5 0C              1761 	            mov _t, a
   0A7B E4                 1762 	            clr a
   0A7C 35 0D              1763 	            addc a, (_t + 1)
   0A7E F5 0D              1764 	            mov (_t + 1), a
                           1765 	
                           1766             ; t = tmp >> 8;
   0A80 85 0C 08           1767 	            mov _tmp, _t
   0A83 85 0D 0C           1768 	            mov _t, (_t + 1)
   0A86 75 0D 00           1769 	            mov (_t + 1), #0x00
                           1770 	
   0A89 D0 0E              1771 	            pop _stack
   0A8B A9 0E              1772 	            mov r1, _stack
                           1773 	        
                           1774 ;	main.c:130: for(i = 1; i < SIZE; i++) {
   0A8D 05 0A              1775 	inc	_i
   0A8F 02 09 E5           1776 	ljmp	00101$
   0A92                    1777 00104$:
                           1778 ;	main.c:284: for(i = SIZE; i < 255; i++) {
   0A92 75 0A 80           1779 	mov	_i,#0x80
   0A95                    1780 00105$:
   0A95 74 01              1781 	mov	a,#0x100 - 0xFF
   0A97 25 0A              1782 	add	a,_i
   0A99 50 03              1783 	jnc	00121$
   0A9B 02 0B 0F           1784 	ljmp	00108$
   0A9E                    1785 00121$:
                           1786 ;	main.c:285: stack = i;
   0A9E 85 0A 0E           1787 	mov	_stack,_i
                           1788 ;	main.c:370: _endasm;
                           1789 	
                           1790             ; i - 128 + 1
   0AA1 E5 0A              1791 	            mov a, _i
   0AA3 C3                 1792 	            clr c
   0AA4 94 81              1793 	            subb a, #0x81
   0AA6 F5 0B              1794 	            mov _j, a
                           1795 	
   0AA8                    1796 	            00002$:
                           1797 	
                           1798             ; load a[j]
   0AA8 85 0B 82           1799 	            mov dpl, _j
   0AAB 75 83 01           1800 	            mov dph, #(_a >> 8)
   0AAE E0                 1801 	            movx a,@dptr
   0AAF F5 F0              1802 	            mov b, a
                           1803 	
                           1804             ; load b[i-j]
   0AB1 C3                 1805 	            clr c
   0AB2 E5 0A              1806 	            mov a, _i
   0AB4 95 0B              1807 	            subb a, _j
   0AB6 FC                 1808 	            mov r4, a
   0AB7 F5 82              1809 	            mov dpl, a
   0AB9 75 83 02           1810 	            mov dph, #(_b >> 8)
   0ABC E0                 1811 	            movx a,@dptr
                           1812 	
                           1813             ; a[j]*b[i-j]
   0ABD A4                 1814 	            mul ab
                           1815 	
                           1816             ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
   0ABE 25 08              1817 	            add a, _tmp
   0AC0 F5 08              1818 	            mov _tmp, a
                           1819 	
                           1820             ; t = t + (tmp >> 8)
   0AC2 E5 F0              1821 	            mov a, b
   0AC4 35 0C              1822 	            addc a, _t
   0AC6 F5 0C              1823 	            mov _t, a
   0AC8 E4                 1824 	            clr a
   0AC9 35 0D              1825 	            addc a, (_t + 1)
   0ACB F5 0D              1826 	            mov (_t + 1), a
                           1827 	
                           1828             ; load m[j]
   0ACD 85 0B 82           1829 	            mov dpl, _j
   0AD0 75 83 04           1830 	            mov dph, #(_m >> 8)
   0AD3 E0                 1831 	            movx a,@dptr
   0AD4 F5 F0              1832 	            mov b, a
                           1833 	
                           1834             ; load n[i-j]
   0AD6 8C 82              1835 	            mov dpl, r4
   0AD8 75 83 00           1836 	            mov dph, #(_n >> 8)
   0ADB E0                 1837 	            movx a, @dptr
                           1838 	
                           1839             ; m[j]*n[i-j]
   0ADC A4                 1840 	            mul ab
                           1841 	
                           1842             ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
   0ADD 25 08              1843 	            add a, _tmp
   0ADF F5 08              1844 	            mov _tmp, a
                           1845 	
                           1846             ; t = t + (tmp >> 8)
   0AE1 E5 F0              1847 	            mov a, b
   0AE3 35 0C              1848 	            addc a, _t
   0AE5 F5 0C              1849 	            mov _t, a
   0AE7 E4                 1850 	            clr a
   0AE8 35 0D              1851 	            addc a, (_t + 1)
   0AEA F5 0D              1852 	            mov (_t + 1), a
                           1853 	
                           1854             ; for (j = i-128 +1; j < 128; j++)
   0AEC 05 0B              1855 	            inc _j
   0AEE 74 80              1856 	            mov a, #0x80
   0AF0 95 0B              1857 	            subb a, _j
   0AF2 70 B4              1858 	            jnz 00002$
                           1859 	
                           1860             ; m[i-128] = (unsigned char)tmp
   0AF4 E5 0A              1861 	            mov a, _i
   0AF6 C3                 1862 	            clr c
   0AF7 94 80              1863 	            subb a, #0x80
   0AF9 F5 82              1864 	            mov dpl, a
   0AFB 75 83 04           1865 	            mov dph, #(_m >> 8)
   0AFE E5 08              1866 	            mov a, _tmp
   0B00 F0                 1867 	            movx @dptr, a
                           1868 	
                           1869             ; tmp = (unsigned char)t
   0B01 85 0C 08           1870 	            mov _tmp, _t
   0B04 85 0D 0C           1871 	            mov _t, (_t + 1)
   0B07 75 0D 00           1872 	            mov (_t + 1), #0x00
                           1873 	        
                           1874 ;	main.c:284: for(i = SIZE; i < 255; i++) {
   0B0A 05 0A              1875 	inc	_i
   0B0C 02 0A 95           1876 	ljmp	00105$
   0B0F                    1877 00108$:
                           1878 ;	main.c:404: _endasm;
                           1879 	
                           1880         ; m[127] = (unsigned char)(tmp);
   0B0F 75 82 7F           1881 	        mov dpl, #0x7F
   0B12 E5 08              1882 	        mov a, _tmp
   0B14 F0                 1883 	        movx @dptr, a
                           1884 	
                           1885         ; m[128] = (unsigned char)(t);
   0B15 75 82 80           1886 	        mov dpl, #0x80
   0B18 E5 0C              1887 	        mov a, _t
   0B1A F0                 1888 	        movx @dptr, a
                           1889 	
                           1890         ; load m[0]
   0B1B 75 82 00           1891 	        mov dpl, #0x00
   0B1E E0                 1892 	        movx a, @dptr
                           1893 	
                           1894         ; tmp = m[0] - n[0]
   0B1F C3                 1895 	        clr c
   0B20 9A                 1896 	        subb a, r2
   0B21 F5 08              1897 	        mov _tmp, a
                           1898 	    
                           1899 ;	main.c:410: for(i = 1; i <= SIZE; i++) {
   0B23 75 0A 80           1900 	mov	_i,#0x80
   0B26                    1901 00111$:
                           1902 ;	main.c:434: _endasm;
                           1903 	
   0B26 89 0E              1904 	            mov _stack, r1
   0B28 C0 0E              1905 	            push _stack
                           1906 	
                           1907             ; load m[i]
   0B2A 85 0A 82           1908 	            mov dpl, _i
   0B2D 75 83 04           1909 	            mov dph, #(_m >> 8)
   0B30 E0                 1910 	            movx a, @dptr
   0B31 F9                 1911 	            mov r1, a
                           1912 	
                           1913             ; load n[i]
   0B32 75 83 00           1914 	            mov dph, #(_n >> 8)
   0B35 E0                 1915 	            movx a, @dptr
                           1916 	
                           1917             ; m[i] - n[i]
   0B36 99                 1918 	            subb a, r1
                           1919 	
                           1920             ; u[i] = (unsigned char)tmp;
   0B37 75 83 05           1921 	            mov dph, #(_u >> 8)
   0B3A F0                 1922 	            movx @dptr, a
                           1923 	
   0B3B D0 0E              1924 	            pop _stack
   0B3D A9 0E              1925 	            mov r1, _stack
                           1926 	        
   0B3F 15 0A              1927 	dec	_i
                           1928 ;	main.c:410: for(i = 1; i <= SIZE; i++) {
   0B41 E5 0A              1929 	mov	a,_i
   0B43 60 03              1930 	jz	00122$
   0B45 02 0B 26           1931 	ljmp	00111$
   0B48                    1932 00122$:
   0B48 75 0A 81           1933 	mov	_i,#0x81
                           1934 ;	main.c:586: _endasm;
                           1935 	
   0B4B E4                 1936 	        clr a
   0B4C 34 00              1937 	        addc a, #0x00
   0B4E F5 08              1938 	        mov _tmp, a
                           1939 	
   0B50 70 01              1940 	        jnz 00003$
   0B52 22                 1941 	        ret
                           1942 	
   0B53                    1943 	        00003$:
   0B53 85 00 82 75 83 05  1944 	        mov dpl, 0x00 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B5E 85 01 82 75 83 05  1945 	        mov dpl, 0x01 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B69 85 02 82 75 83 05  1946 	        mov dpl, 0x02 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B74 85 03 82 75 83 05  1947 	        mov dpl, 0x03 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B7F 85 04 82 75 83 05  1948 	        mov dpl, 0x04 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B8A 85 05 82 75 83 05  1949 	        mov dpl, 0x05 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0B95 85 06 82 75 83 05  1950 	        mov dpl, 0x06 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BA0 85 07 82 75 83 05  1951 	        mov dpl, 0x07 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BAB 85 08 82 75 83 05  1952 	        mov dpl, 0x08 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BB6 85 09 82 75 83 05  1953 	        mov dpl, 0x09 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BC1 85 0A 82 75 83 05  1954 	        mov dpl, 0x0A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BCC 85 0B 82 75 83 05  1955 	        mov dpl, 0x0B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BD7 85 0C 82 75 83 05  1956 	        mov dpl, 0x0C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BE2 85 0D 82 75 83 05  1957 	        mov dpl, 0x0D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BED 85 0E 82 75 83 05  1958 	        mov dpl, 0x0E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0BF8 85 0F 82 75 83 05  1959 	        mov dpl, 0x0F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C03 85 10 82 75 83 05  1960 	        mov dpl, 0x10 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C0E 85 11 82 75 83 05  1961 	        mov dpl, 0x11 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C19 85 12 82 75 83 05  1962 	        mov dpl, 0x12 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C24 85 13 82 75 83 05  1963 	        mov dpl, 0x13 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C2F 85 14 82 75 83 05  1964 	        mov dpl, 0x14 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C3A 85 15 82 75 83 05  1965 	        mov dpl, 0x15 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C45 85 16 82 75 83 05  1966 	        mov dpl, 0x16 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C50 85 17 82 75 83 05  1967 	        mov dpl, 0x17 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C5B 85 18 82 75 83 05  1968 	        mov dpl, 0x18 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C66 85 19 82 75 83 05  1969 	        mov dpl, 0x19 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C71 85 1A 82 75 83 05  1970 	        mov dpl, 0x1A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C7C 85 1B 82 75 83 05  1971 	        mov dpl, 0x1B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C87 85 1C 82 75 83 05  1972 	        mov dpl, 0x1C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C92 85 1D 82 75 83 05  1973 	        mov dpl, 0x1D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0C9D 85 1E 82 75 83 05  1974 	        mov dpl, 0x1E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CA8 85 1F 82 75 83 05  1975 	        mov dpl, 0x1F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CB3 85 20 82 75 83 05  1976 	        mov dpl, 0x20 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CBE 85 21 82 75 83 05  1977 	        mov dpl, 0x21 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CC9 85 22 82 75 83 05  1978 	        mov dpl, 0x22 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CD4 85 23 82 75 83 05  1979 	        mov dpl, 0x23 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CDF 85 24 82 75 83 05  1980 	        mov dpl, 0x24 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CEA 85 25 82 75 83 05  1981 	        mov dpl, 0x25 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0CF5 85 26 82 75 83 05  1982 	        mov dpl, 0x26 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D00 85 27 82 75 83 05  1983 	        mov dpl, 0x27 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D0B 85 28 82 75 83 05  1984 	        mov dpl, 0x28 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D16 85 29 82 75 83 05  1985 	        mov dpl, 0x29 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D21 85 2A 82 75 83 05  1986 	        mov dpl, 0x2A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D2C 85 2B 82 75 83 05  1987 	        mov dpl, 0x2B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D37 85 2C 82 75 83 05  1988 	        mov dpl, 0x2C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D42 85 2D 82 75 83 05  1989 	        mov dpl, 0x2D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D4D 85 2E 82 75 83 05  1990 	        mov dpl, 0x2E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D58 85 2F 82 75 83 05  1991 	        mov dpl, 0x2F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D63 85 30 82 75 83 05  1992 	        mov dpl, 0x30 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D6E 85 31 82 75 83 05  1993 	        mov dpl, 0x31 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D79 85 32 82 75 83 05  1994 	        mov dpl, 0x32 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D84 85 33 82 75 83 05  1995 	        mov dpl, 0x33 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D8F 85 34 82 75 83 05  1996 	        mov dpl, 0x34 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0D9A 85 35 82 75 83 05  1997 	        mov dpl, 0x35 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DA5 85 36 82 75 83 05  1998 	        mov dpl, 0x36 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DB0 85 37 82 75 83 05  1999 	        mov dpl, 0x37 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DBB 85 38 82 75 83 05  2000 	        mov dpl, 0x38 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DC6 85 39 82 75 83 05  2001 	        mov dpl, 0x39 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DD1 85 3A 82 75 83 05  2002 	        mov dpl, 0x3A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DDC 85 3B 82 75 83 05  2003 	        mov dpl, 0x3B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DE7 85 3C 82 75 83 05  2004 	        mov dpl, 0x3C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DF2 85 3D 82 75 83 05  2005 	        mov dpl, 0x3D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0DFD 85 3E 82 75 83 05  2006 	        mov dpl, 0x3E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E08 85 3F 82 75 83 05  2007 	        mov dpl, 0x3F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E13 85 40 82 75 83 05  2008 	        mov dpl, 0x40 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E1E 85 41 82 75 83 05  2009 	        mov dpl, 0x41 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E29 85 42 82 75 83 05  2010 	        mov dpl, 0x42 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E34 85 43 82 75 83 05  2011 	        mov dpl, 0x43 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E3F 85 44 82 75 83 05  2012 	        mov dpl, 0x44 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E4A 85 45 82 75 83 05  2013 	        mov dpl, 0x45 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E55 85 46 82 75 83 05  2014 	        mov dpl, 0x46 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E60 85 47 82 75 83 05  2015 	        mov dpl, 0x47 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E6B 85 48 82 75 83 05  2016 	        mov dpl, 0x48 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E76 85 49 82 75 83 05  2017 	        mov dpl, 0x49 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E81 85 4A 82 75 83 05  2018 	        mov dpl, 0x4A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E8C 85 4B 82 75 83 05  2019 	        mov dpl, 0x4B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0E97 85 4C 82 75 83 05  2020 	        mov dpl, 0x4C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EA2 85 4D 82 75 83 05  2021 	        mov dpl, 0x4D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EAD 85 4E 82 75 83 05  2022 	        mov dpl, 0x4E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EB8 85 4F 82 75 83 05  2023 	        mov dpl, 0x4F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EC3 85 50 82 75 83 05  2024 	        mov dpl, 0x50 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0ECE 85 51 82 75 83 05  2025 	        mov dpl, 0x51 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0ED9 85 52 82 75 83 05  2026 	        mov dpl, 0x52 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EE4 85 53 82 75 83 05  2027 	        mov dpl, 0x53 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EEF 85 54 82 75 83 05  2028 	        mov dpl, 0x54 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0EFA 85 55 82 75 83 05  2029 	        mov dpl, 0x55 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F05 85 56 82 75 83 05  2030 	        mov dpl, 0x56 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F10 85 57 82 75 83 05  2031 	        mov dpl, 0x57 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F1B 85 58 82 75 83 05  2032 	        mov dpl, 0x58 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F26 85 59 82 75 83 05  2033 	        mov dpl, 0x59 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F31 85 5A 82 75 83 05  2034 	        mov dpl, 0x5A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F3C 85 5B 82 75 83 05  2035 	        mov dpl, 0x5B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F47 85 5C 82 75 83 05  2036 	        mov dpl, 0x5C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F52 85 5D 82 75 83 05  2037 	        mov dpl, 0x5D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F5D 85 5E 82 75 83 05  2038 	        mov dpl, 0x5E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F68 85 5F 82 75 83 05  2039 	        mov dpl, 0x5F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F73 85 60 82 75 83 05  2040 	        mov dpl, 0x60 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F7E 85 61 82 75 83 05  2041 	        mov dpl, 0x61 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F89 85 62 82 75 83 05  2042 	        mov dpl, 0x62 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F94 85 63 82 75 83 05  2043 	        mov dpl, 0x63 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0F9F 85 64 82 75 83 05  2044 	        mov dpl, 0x64 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FAA 85 65 82 75 83 05  2045 	        mov dpl, 0x65 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FB5 85 66 82 75 83 05  2046 	        mov dpl, 0x66 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FC0 85 67 82 75 83 05  2047 	        mov dpl, 0x67 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FCB 85 68 82 75 83 05  2048 	        mov dpl, 0x68 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FD6 85 69 82 75 83 05  2049 	        mov dpl, 0x69 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FE1 85 6A 82 75 83 05  2050 	        mov dpl, 0x6A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FEC 85 6B 82 75 83 05  2051 	        mov dpl, 0x6B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   0FF7 85 6C 82 75 83 05  2052 	        mov dpl, 0x6C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1002 85 6D 82 75 83 05  2053 	        mov dpl, 0x6D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   100D 85 6E 82 75 83 05  2054 	        mov dpl, 0x6E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1018 85 6F 82 75 83 05  2055 	        mov dpl, 0x6F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1023 85 70 82 75 83 05  2056 	        mov dpl, 0x70 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   102E 85 71 82 75 83 05  2057 	        mov dpl, 0x71 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1039 85 72 82 75 83 05  2058 	        mov dpl, 0x72 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1044 85 73 82 75 83 05  2059 	        mov dpl, 0x73 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   104F 85 74 82 75 83 05  2060 	        mov dpl, 0x74 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   105A 85 75 82 75 83 05  2061 	        mov dpl, 0x75 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1065 85 76 82 75 83 05  2062 	        mov dpl, 0x76 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1070 85 77 82 75 83 05  2063 	        mov dpl, 0x77 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   107B 85 78 82 75 83 05  2064 	        mov dpl, 0x78 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1086 85 79 82 75 83 05  2065 	        mov dpl, 0x79 mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   1091 85 7A 82 75 83 05  2066 	        mov dpl, 0x7A mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   109C 85 7B 82 75 83 05  2067 	        mov dpl, 0x7B mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10A7 85 7C 82 75 83 05  2068 	        mov dpl, 0x7C mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10B2 85 7D 82 75 83 05  2069 	        mov dpl, 0x7D mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10BD 85 7E 82 75 83 05  2070 	        mov dpl, 0x7E mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10C8 85 7F 82 75 83 05  2071 	        mov dpl, 0x7F mov dph, #(_u >> 8) movx a, @dptr mov dph, #(_m >> 8) movx @dptr, a
        E0 75 83 04 F0
   10D3 22                 2072 	        ret
                           2073 	    
   10D4 22                 2074 	ret
                           2075 	.area CSEG    (CODE)
                           2076 	.area CONST   (CODE)
                           2077 	.area XINIT   (CODE)
                           2078 	.area CABS    (ABS,CODE)
