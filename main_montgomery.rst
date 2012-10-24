                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
                              4 ; This file was generated Wed Oct 24 15:20:31 2012
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
                            109 	.globl _endBrk
                            110 	.globl _startBrk
                            111 	.globl _fips_PARM_5
                            112 	.globl _fips_PARM_4
                            113 	.globl _fips_PARM_3
                            114 	.globl _fips_PARM_2
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
   0008                     229 _fips_PARM_2:
   0008                     230 	.ds 3
   000B                     231 _fips_PARM_3:
   000B                     232 	.ds 3
   000E                     233 _fips_PARM_4:
   000E                     234 	.ds 1
   000F                     235 _fips_PARM_5:
   000F                     236 	.ds 3
   0012                     237 _fips_a_1_1:
   0012                     238 	.ds 3
   0015                     239 _fips_tmp_1_1:
   0015                     240 	.ds 2
   0017                     241 _fips_i_1_1:
   0017                     242 	.ds 2
   0019                     243 _fips_j_1_1:
   0019                     244 	.ds 2
   001B                     245 _fips_c_1_1:
   001B                     246 	.ds 1
   001C                     247 _fips_s_1_1:
   001C                     248 	.ds 1
   001D                     249 _fips_v_1_1:
   001D                     250 	.ds 1
   001E                     251 _fips_t_1_1:
   001E                     252 	.ds 3
   0021                     253 _fips_sloc0_1_0:
   0021                     254 	.ds 3
   0024                     255 _fips_sloc1_1_0:
   0024                     256 	.ds 3
   0027                     257 _fips_sloc2_1_0:
   0027                     258 	.ds 1
   0028                     259 _fips_sloc3_1_0:
   0028                     260 	.ds 2
   002A                     261 _fips_sloc4_1_0:
   002A                     262 	.ds 3
   002D                     263 _fips_sloc5_1_0:
   002D                     264 	.ds 2
                            265 ;--------------------------------------------------------
                            266 ; overlayable items in internal ram 
                            267 ;--------------------------------------------------------
                            268 	.area OSEG    (OVR,DATA)
                            269 ;--------------------------------------------------------
                            270 ; Stack segment in internal ram 
                            271 ;--------------------------------------------------------
                            272 	.area	SSEG	(DATA)
   0031                     273 __start__stack:
   0031                     274 	.ds	1
                            275 
                            276 ;--------------------------------------------------------
                            277 ; indirectly addressable internal ram data
                            278 ;--------------------------------------------------------
                            279 	.area ISEG    (DATA)
                            280 ;--------------------------------------------------------
                            281 ; absolute internal ram data
                            282 ;--------------------------------------------------------
                            283 	.area IABS    (ABS,DATA)
                            284 	.area IABS    (ABS,DATA)
                            285 ;--------------------------------------------------------
                            286 ; bit data
                            287 ;--------------------------------------------------------
                            288 	.area BSEG    (BIT)
                            289 ;--------------------------------------------------------
                            290 ; paged external ram data
                            291 ;--------------------------------------------------------
                            292 	.area PSEG    (PAG,XDATA)
                            293 ;--------------------------------------------------------
                            294 ; external ram data
                            295 ;--------------------------------------------------------
                            296 	.area XSEG    (XDATA)
                    FFFE    297 _startBrk	=	0xfffe
                    FFFF    298 _endBrk	=	0xffff
                    0400    299 _main_m_1_1	=	0x0400
                    0500    300 _fips_result_1_1	=	0x0500
                            301 ;--------------------------------------------------------
                            302 ; absolute external ram data
                            303 ;--------------------------------------------------------
                            304 	.area XABS    (ABS,XDATA)
                    0000    305 _main_n_1_1	=	0x0000
                    0080    306 _main_a_1_1	=	0x0080
                    0100    307 _main_b_1_1	=	0x0100
                    0300    308 _main_n_prime_1_1	=	0x0300
                            309 ;--------------------------------------------------------
                            310 ; external initialized ram data
                            311 ;--------------------------------------------------------
                            312 	.area XISEG   (XDATA)
                            313 	.area HOME    (CODE)
                            314 	.area GSINIT0 (CODE)
                            315 	.area GSINIT1 (CODE)
                            316 	.area GSINIT2 (CODE)
                            317 	.area GSINIT3 (CODE)
                            318 	.area GSINIT4 (CODE)
                            319 	.area GSINIT5 (CODE)
                            320 	.area GSINIT  (CODE)
                            321 	.area GSFINAL (CODE)
                            322 	.area CSEG    (CODE)
                            323 ;--------------------------------------------------------
                            324 ; interrupt vector 
                            325 ;--------------------------------------------------------
                            326 	.area HOME    (CODE)
   0000                     327 __interrupt_vect:
   0000 02 00 08            328 	ljmp	__sdcc_gsinit_startup
                            329 ;--------------------------------------------------------
                            330 ; global & static initialisations
                            331 ;--------------------------------------------------------
                            332 	.area HOME    (CODE)
                            333 	.area GSINIT  (CODE)
                            334 	.area GSFINAL (CODE)
                            335 	.area GSINIT  (CODE)
                            336 	.globl __sdcc_gsinit_startup
                            337 	.globl __sdcc_program_startup
                            338 	.globl __start__stack
                            339 	.globl __mcs51_genXINIT
                            340 	.globl __mcs51_genXRAMCLEAR
                            341 	.globl __mcs51_genRAMCLEAR
                            342 	.area GSFINAL (CODE)
   0061 02 00 03            343 	ljmp	__sdcc_program_startup
                            344 ;--------------------------------------------------------
                            345 ; Home
                            346 ;--------------------------------------------------------
                            347 	.area HOME    (CODE)
                            348 	.area HOME    (CODE)
   0003                     349 __sdcc_program_startup:
   0003 12 00 64            350 	lcall	_main
                            351 ;	return from main will lock up
   0006 80 FE               352 	sjmp .
                            353 ;--------------------------------------------------------
                            354 ; code
                            355 ;--------------------------------------------------------
                            356 	.area CSEG    (CODE)
                            357 ;------------------------------------------------------------
                            358 ;Allocation info for local variables in function 'main'
                            359 ;------------------------------------------------------------
                            360 ;m                         Allocated with name '_main_m_1_1'
                            361 ;------------------------------------------------------------
                            362 ;	main_montgomery.c:12: int main() {
                            363 ;	-----------------------------------------
                            364 ;	 function main
                            365 ;	-----------------------------------------
   0064                     366 _main:
                    0002    367 	ar2 = 0x02
                    0003    368 	ar3 = 0x03
                    0004    369 	ar4 = 0x04
                    0005    370 	ar5 = 0x05
                    0006    371 	ar6 = 0x06
                    0007    372 	ar7 = 0x07
                    0000    373 	ar0 = 0x00
                    0001    374 	ar1 = 0x01
                            375 ;	main_montgomery.c:13: __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
   0064 90 00 00            376 	mov	dptr,#_main_n_1_1
   0067 74 D3               377 	mov	a,#0xD3
   0069 F0                  378 	movx	@dptr,a
   006A 90 00 01            379 	mov	dptr,#(_main_n_1_1 + 0x0001)
   006D 74 55               380 	mov	a,#0x55
   006F F0                  381 	movx	@dptr,a
   0070 90 00 02            382 	mov	dptr,#(_main_n_1_1 + 0x0002)
   0073 74 A4               383 	mov	a,#0xA4
   0075 F0                  384 	movx	@dptr,a
   0076 90 00 03            385 	mov	dptr,#(_main_n_1_1 + 0x0003)
   0079 74 5F               386 	mov	a,#0x5F
   007B F0                  387 	movx	@dptr,a
   007C 90 00 04            388 	mov	dptr,#(_main_n_1_1 + 0x0004)
   007F 74 57               389 	mov	a,#0x57
   0081 F0                  390 	movx	@dptr,a
   0082 90 00 05            391 	mov	dptr,#(_main_n_1_1 + 0x0005)
   0085 74 F3               392 	mov	a,#0xF3
   0087 F0                  393 	movx	@dptr,a
   0088 90 00 06            394 	mov	dptr,#(_main_n_1_1 + 0x0006)
   008B 74 F9               395 	mov	a,#0xF9
   008D F0                  396 	movx	@dptr,a
   008E 90 00 07            397 	mov	dptr,#(_main_n_1_1 + 0x0007)
   0091 74 3E               398 	mov	a,#0x3E
   0093 F0                  399 	movx	@dptr,a
   0094 90 00 08            400 	mov	dptr,#(_main_n_1_1 + 0x0008)
   0097 74 CF               401 	mov	a,#0xCF
   0099 F0                  402 	movx	@dptr,a
   009A 90 00 09            403 	mov	dptr,#(_main_n_1_1 + 0x0009)
   009D 74 84               404 	mov	a,#0x84
   009F F0                  405 	movx	@dptr,a
   00A0 90 00 0A            406 	mov	dptr,#(_main_n_1_1 + 0x000a)
   00A3 74 6D               407 	mov	a,#0x6D
   00A5 F0                  408 	movx	@dptr,a
   00A6 90 00 0B            409 	mov	dptr,#(_main_n_1_1 + 0x000b)
   00A9 74 FF               410 	mov	a,#0xFF
   00AB F0                  411 	movx	@dptr,a
   00AC 90 00 0C            412 	mov	dptr,#(_main_n_1_1 + 0x000c)
   00AF 74 20               413 	mov	a,#0x20
   00B1 F0                  414 	movx	@dptr,a
   00B2 90 00 0D            415 	mov	dptr,#(_main_n_1_1 + 0x000d)
   00B5 74 C1               416 	mov	a,#0xC1
   00B7 F0                  417 	movx	@dptr,a
   00B8 90 00 0E            418 	mov	dptr,#(_main_n_1_1 + 0x000e)
   00BB 74 AE               419 	mov	a,#0xAE
   00BD F0                  420 	movx	@dptr,a
   00BE 90 00 0F            421 	mov	dptr,#(_main_n_1_1 + 0x000f)
   00C1 74 12               422 	mov	a,#0x12
   00C3 F0                  423 	movx	@dptr,a
   00C4 90 00 10            424 	mov	dptr,#(_main_n_1_1 + 0x0010)
   00C7 74 CF               425 	mov	a,#0xCF
   00C9 F0                  426 	movx	@dptr,a
   00CA 90 00 11            427 	mov	dptr,#(_main_n_1_1 + 0x0011)
   00CD 74 F1               428 	mov	a,#0xF1
   00CF F0                  429 	movx	@dptr,a
   00D0 90 00 12            430 	mov	dptr,#(_main_n_1_1 + 0x0012)
   00D3 E4                  431 	clr	a
   00D4 F0                  432 	movx	@dptr,a
   00D5 90 00 13            433 	mov	dptr,#(_main_n_1_1 + 0x0013)
   00D8 74 66               434 	mov	a,#0x66
   00DA F0                  435 	movx	@dptr,a
   00DB 90 00 14            436 	mov	dptr,#(_main_n_1_1 + 0x0014)
   00DE 74 45               437 	mov	a,#0x45
   00E0 F0                  438 	movx	@dptr,a
   00E1 90 00 15            439 	mov	dptr,#(_main_n_1_1 + 0x0015)
   00E4 74 E2               440 	mov	a,#0xE2
   00E6 F0                  441 	movx	@dptr,a
   00E7 90 00 16            442 	mov	dptr,#(_main_n_1_1 + 0x0016)
   00EA 74 34               443 	mov	a,#0x34
   00EC F0                  444 	movx	@dptr,a
   00ED 90 00 17            445 	mov	dptr,#(_main_n_1_1 + 0x0017)
   00F0 74 61               446 	mov	a,#0x61
   00F2 F0                  447 	movx	@dptr,a
   00F3 90 00 18            448 	mov	dptr,#(_main_n_1_1 + 0x0018)
   00F6 74 27               449 	mov	a,#0x27
   00F8 F0                  450 	movx	@dptr,a
   00F9 90 00 19            451 	mov	dptr,#(_main_n_1_1 + 0x0019)
   00FC 74 F2               452 	mov	a,#0xF2
   00FE F0                  453 	movx	@dptr,a
   00FF 90 00 1A            454 	mov	dptr,#(_main_n_1_1 + 0x001a)
   0102 74 57               455 	mov	a,#0x57
   0104 F0                  456 	movx	@dptr,a
   0105 90 00 1B            457 	mov	dptr,#(_main_n_1_1 + 0x001b)
   0108 74 B3               458 	mov	a,#0xB3
   010A F0                  459 	movx	@dptr,a
   010B 90 00 1C            460 	mov	dptr,#(_main_n_1_1 + 0x001c)
   010E 74 42               461 	mov	a,#0x42
   0110 F0                  462 	movx	@dptr,a
   0111 90 00 1D            463 	mov	dptr,#(_main_n_1_1 + 0x001d)
   0114 74 21               464 	mov	a,#0x21
   0116 F0                  465 	movx	@dptr,a
   0117 90 00 1E            466 	mov	dptr,#(_main_n_1_1 + 0x001e)
   011A 74 80               467 	mov	a,#0x80
   011C F0                  468 	movx	@dptr,a
   011D 90 00 1F            469 	mov	dptr,#(_main_n_1_1 + 0x001f)
   0120 74 95               470 	mov	a,#0x95
   0122 F0                  471 	movx	@dptr,a
   0123 90 00 20            472 	mov	dptr,#(_main_n_1_1 + 0x0020)
   0126 74 AB               473 	mov	a,#0xAB
   0128 F0                  474 	movx	@dptr,a
   0129 90 00 21            475 	mov	dptr,#(_main_n_1_1 + 0x0021)
   012C 74 15               476 	mov	a,#0x15
   012E F0                  477 	movx	@dptr,a
   012F 90 00 22            478 	mov	dptr,#(_main_n_1_1 + 0x0022)
   0132 74 A2               479 	mov	a,#0xA2
   0134 F0                  480 	movx	@dptr,a
   0135 90 00 23            481 	mov	dptr,#(_main_n_1_1 + 0x0023)
   0138 74 1D               482 	mov	a,#0x1D
   013A F0                  483 	movx	@dptr,a
   013B 90 00 24            484 	mov	dptr,#(_main_n_1_1 + 0x0024)
   013E 74 53               485 	mov	a,#0x53
   0140 F0                  486 	movx	@dptr,a
   0141 90 00 25            487 	mov	dptr,#(_main_n_1_1 + 0x0025)
   0144 74 B2               488 	mov	a,#0xB2
   0146 F0                  489 	movx	@dptr,a
   0147 90 00 26            490 	mov	dptr,#(_main_n_1_1 + 0x0026)
   014A 74 27               491 	mov	a,#0x27
   014C F0                  492 	movx	@dptr,a
   014D 90 00 27            493 	mov	dptr,#(_main_n_1_1 + 0x0027)
   0150 74 E6               494 	mov	a,#0xE6
   0152 F0                  495 	movx	@dptr,a
   0153 90 00 28            496 	mov	dptr,#(_main_n_1_1 + 0x0028)
   0156 74 56               497 	mov	a,#0x56
   0158 F0                  498 	movx	@dptr,a
   0159 90 00 29            499 	mov	dptr,#(_main_n_1_1 + 0x0029)
   015C 74 93               500 	mov	a,#0x93
   015E F0                  501 	movx	@dptr,a
   015F 90 00 2A            502 	mov	dptr,#(_main_n_1_1 + 0x002a)
   0162 74 27               503 	mov	a,#0x27
   0164 F0                  504 	movx	@dptr,a
   0165 90 00 2B            505 	mov	dptr,#(_main_n_1_1 + 0x002b)
   0168 74 AF               506 	mov	a,#0xAF
   016A F0                  507 	movx	@dptr,a
   016B 90 00 2C            508 	mov	dptr,#(_main_n_1_1 + 0x002c)
   016E 74 C2               509 	mov	a,#0xC2
   0170 F0                  510 	movx	@dptr,a
   0171 90 00 2D            511 	mov	dptr,#(_main_n_1_1 + 0x002d)
   0174 74 EE               512 	mov	a,#0xEE
   0176 F0                  513 	movx	@dptr,a
   0177 90 00 2E            514 	mov	dptr,#(_main_n_1_1 + 0x002e)
   017A 74 2B               515 	mov	a,#0x2B
   017C F0                  516 	movx	@dptr,a
   017D 90 00 2F            517 	mov	dptr,#(_main_n_1_1 + 0x002f)
   0180 74 2F               518 	mov	a,#0x2F
   0182 F0                  519 	movx	@dptr,a
   0183 90 00 30            520 	mov	dptr,#(_main_n_1_1 + 0x0030)
   0186 74 9A               521 	mov	a,#0x9A
   0188 F0                  522 	movx	@dptr,a
   0189 90 00 31            523 	mov	dptr,#(_main_n_1_1 + 0x0031)
   018C 74 AE               524 	mov	a,#0xAE
   018E F0                  525 	movx	@dptr,a
   018F 90 00 32            526 	mov	dptr,#(_main_n_1_1 + 0x0032)
   0192 74 6A               527 	mov	a,#0x6A
   0194 F0                  528 	movx	@dptr,a
   0195 90 00 33            529 	mov	dptr,#(_main_n_1_1 + 0x0033)
   0198 74 09               530 	mov	a,#0x09
   019A F0                  531 	movx	@dptr,a
   019B 90 00 34            532 	mov	dptr,#(_main_n_1_1 + 0x0034)
   019E 74 E5               533 	mov	a,#0xE5
   01A0 F0                  534 	movx	@dptr,a
   01A1 90 00 35            535 	mov	dptr,#(_main_n_1_1 + 0x0035)
   01A4 74 7F               536 	mov	a,#0x7F
   01A6 F0                  537 	movx	@dptr,a
   01A7 90 00 36            538 	mov	dptr,#(_main_n_1_1 + 0x0036)
   01AA 74 AE               539 	mov	a,#0xAE
   01AC F0                  540 	movx	@dptr,a
   01AD 90 00 37            541 	mov	dptr,#(_main_n_1_1 + 0x0037)
   01B0 74 7D               542 	mov	a,#0x7D
   01B2 F0                  543 	movx	@dptr,a
   01B3 90 00 38            544 	mov	dptr,#(_main_n_1_1 + 0x0038)
   01B6 74 2B               545 	mov	a,#0x2B
   01B8 F0                  546 	movx	@dptr,a
   01B9 90 00 39            547 	mov	dptr,#(_main_n_1_1 + 0x0039)
   01BC 74 DD               548 	mov	a,#0xDD
   01BE F0                  549 	movx	@dptr,a
   01BF 90 00 3A            550 	mov	dptr,#(_main_n_1_1 + 0x003a)
   01C2 74 58               551 	mov	a,#0x58
   01C4 F0                  552 	movx	@dptr,a
   01C5 90 00 3B            553 	mov	dptr,#(_main_n_1_1 + 0x003b)
   01C8 74 2F               554 	mov	a,#0x2F
   01CA F0                  555 	movx	@dptr,a
   01CB 90 00 3C            556 	mov	dptr,#(_main_n_1_1 + 0x003c)
   01CE 74 87               557 	mov	a,#0x87
   01D0 F0                  558 	movx	@dptr,a
   01D1 90 00 3D            559 	mov	dptr,#(_main_n_1_1 + 0x003d)
   01D4 74 70               560 	mov	a,#0x70
   01D6 F0                  561 	movx	@dptr,a
   01D7 90 00 3E            562 	mov	dptr,#(_main_n_1_1 + 0x003e)
   01DA 74 05               563 	mov	a,#0x05
   01DC F0                  564 	movx	@dptr,a
   01DD 90 00 3F            565 	mov	dptr,#(_main_n_1_1 + 0x003f)
   01E0 74 1F               566 	mov	a,#0x1F
   01E2 F0                  567 	movx	@dptr,a
   01E3 90 00 40            568 	mov	dptr,#(_main_n_1_1 + 0x0040)
   01E6 74 F8               569 	mov	a,#0xF8
   01E8 F0                  570 	movx	@dptr,a
   01E9 90 00 41            571 	mov	dptr,#(_main_n_1_1 + 0x0041)
   01EC 74 BD               572 	mov	a,#0xBD
   01EE F0                  573 	movx	@dptr,a
   01EF 90 00 42            574 	mov	dptr,#(_main_n_1_1 + 0x0042)
   01F2 74 0B               575 	mov	a,#0x0B
   01F4 F0                  576 	movx	@dptr,a
   01F5 90 00 43            577 	mov	dptr,#(_main_n_1_1 + 0x0043)
   01F8 74 E0               578 	mov	a,#0xE0
   01FA F0                  579 	movx	@dptr,a
   01FB 90 00 44            580 	mov	dptr,#(_main_n_1_1 + 0x0044)
   01FE 74 FD               581 	mov	a,#0xFD
   0200 F0                  582 	movx	@dptr,a
   0201 90 00 45            583 	mov	dptr,#(_main_n_1_1 + 0x0045)
   0204 74 F1               584 	mov	a,#0xF1
   0206 F0                  585 	movx	@dptr,a
   0207 90 00 46            586 	mov	dptr,#(_main_n_1_1 + 0x0046)
   020A 74 81               587 	mov	a,#0x81
   020C F0                  588 	movx	@dptr,a
   020D 90 00 47            589 	mov	dptr,#(_main_n_1_1 + 0x0047)
   0210 74 60               590 	mov	a,#0x60
   0212 F0                  591 	movx	@dptr,a
   0213 90 00 48            592 	mov	dptr,#(_main_n_1_1 + 0x0048)
   0216 74 BF               593 	mov	a,#0xBF
   0218 F0                  594 	movx	@dptr,a
   0219 90 00 49            595 	mov	dptr,#(_main_n_1_1 + 0x0049)
   021C 74 D2               596 	mov	a,#0xD2
   021E F0                  597 	movx	@dptr,a
   021F 90 00 4A            598 	mov	dptr,#(_main_n_1_1 + 0x004a)
   0222 74 FE               599 	mov	a,#0xFE
   0224 F0                  600 	movx	@dptr,a
   0225 90 00 4B            601 	mov	dptr,#(_main_n_1_1 + 0x004b)
   0228 74 8F               602 	mov	a,#0x8F
   022A F0                  603 	movx	@dptr,a
   022B 90 00 4C            604 	mov	dptr,#(_main_n_1_1 + 0x004c)
   022E 74 7B               605 	mov	a,#0x7B
   0230 F0                  606 	movx	@dptr,a
   0231 90 00 4D            607 	mov	dptr,#(_main_n_1_1 + 0x004d)
   0234 74 B9               608 	mov	a,#0xB9
   0236 F0                  609 	movx	@dptr,a
   0237 90 00 4E            610 	mov	dptr,#(_main_n_1_1 + 0x004e)
   023A 74 A9               611 	mov	a,#0xA9
   023C F0                  612 	movx	@dptr,a
   023D 90 00 4F            613 	mov	dptr,#(_main_n_1_1 + 0x004f)
   0240 74 A4               614 	mov	a,#0xA4
   0242 F0                  615 	movx	@dptr,a
   0243 90 00 50            616 	mov	dptr,#(_main_n_1_1 + 0x0050)
   0246 74 6A               617 	mov	a,#0x6A
   0248 F0                  618 	movx	@dptr,a
   0249 90 00 51            619 	mov	dptr,#(_main_n_1_1 + 0x0051)
   024C 74 0A               620 	mov	a,#0x0A
   024E F0                  621 	movx	@dptr,a
   024F 90 00 52            622 	mov	dptr,#(_main_n_1_1 + 0x0052)
   0252 74 A3               623 	mov	a,#0xA3
   0254 F0                  624 	movx	@dptr,a
   0255 90 00 53            625 	mov	dptr,#(_main_n_1_1 + 0x0053)
   0258 74 A3               626 	mov	a,#0xA3
   025A F0                  627 	movx	@dptr,a
   025B 90 00 54            628 	mov	dptr,#(_main_n_1_1 + 0x0054)
   025E 74 70               629 	mov	a,#0x70
   0260 F0                  630 	movx	@dptr,a
   0261 90 00 55            631 	mov	dptr,#(_main_n_1_1 + 0x0055)
   0264 74 22               632 	mov	a,#0x22
   0266 F0                  633 	movx	@dptr,a
   0267 90 00 56            634 	mov	dptr,#(_main_n_1_1 + 0x0056)
   026A 74 BF               635 	mov	a,#0xBF
   026C F0                  636 	movx	@dptr,a
   026D 90 00 57            637 	mov	dptr,#(_main_n_1_1 + 0x0057)
   0270 74 4C               638 	mov	a,#0x4C
   0272 F0                  639 	movx	@dptr,a
   0273 90 00 58            640 	mov	dptr,#(_main_n_1_1 + 0x0058)
   0276 74 1B               641 	mov	a,#0x1B
   0278 F0                  642 	movx	@dptr,a
   0279 90 00 59            643 	mov	dptr,#(_main_n_1_1 + 0x0059)
   027C 74 B0               644 	mov	a,#0xB0
   027E F0                  645 	movx	@dptr,a
   027F 90 00 5A            646 	mov	dptr,#(_main_n_1_1 + 0x005a)
   0282 74 41               647 	mov	a,#0x41
   0284 F0                  648 	movx	@dptr,a
   0285 90 00 5B            649 	mov	dptr,#(_main_n_1_1 + 0x005b)
   0288 74 24               650 	mov	a,#0x24
   028A F0                  651 	movx	@dptr,a
   028B 90 00 5C            652 	mov	dptr,#(_main_n_1_1 + 0x005c)
   028E 74 4C               653 	mov	a,#0x4C
   0290 F0                  654 	movx	@dptr,a
   0291 90 00 5D            655 	mov	dptr,#(_main_n_1_1 + 0x005d)
   0294 74 3A               656 	mov	a,#0x3A
   0296 F0                  657 	movx	@dptr,a
   0297 90 00 5E            658 	mov	dptr,#(_main_n_1_1 + 0x005e)
   029A 74 08               659 	mov	a,#0x08
   029C F0                  660 	movx	@dptr,a
   029D 90 00 5F            661 	mov	dptr,#(_main_n_1_1 + 0x005f)
   02A0 74 EC               662 	mov	a,#0xEC
   02A2 F0                  663 	movx	@dptr,a
   02A3 90 00 60            664 	mov	dptr,#(_main_n_1_1 + 0x0060)
   02A6 74 F4               665 	mov	a,#0xF4
   02A8 F0                  666 	movx	@dptr,a
   02A9 90 00 61            667 	mov	dptr,#(_main_n_1_1 + 0x0061)
   02AC 74 91               668 	mov	a,#0x91
   02AE F0                  669 	movx	@dptr,a
   02AF 90 00 62            670 	mov	dptr,#(_main_n_1_1 + 0x0062)
   02B2 74 FF               671 	mov	a,#0xFF
   02B4 F0                  672 	movx	@dptr,a
   02B5 90 00 63            673 	mov	dptr,#(_main_n_1_1 + 0x0063)
   02B8 74 93               674 	mov	a,#0x93
   02BA F0                  675 	movx	@dptr,a
   02BB 90 00 64            676 	mov	dptr,#(_main_n_1_1 + 0x0064)
   02BE 74 8D               677 	mov	a,#0x8D
   02C0 F0                  678 	movx	@dptr,a
   02C1 90 00 65            679 	mov	dptr,#(_main_n_1_1 + 0x0065)
   02C4 74 FC               680 	mov	a,#0xFC
   02C6 F0                  681 	movx	@dptr,a
   02C7 90 00 66            682 	mov	dptr,#(_main_n_1_1 + 0x0066)
   02CA 74 FA               683 	mov	a,#0xFA
   02CC F0                  684 	movx	@dptr,a
   02CD 90 00 67            685 	mov	dptr,#(_main_n_1_1 + 0x0067)
   02D0 74 4C               686 	mov	a,#0x4C
   02D2 F0                  687 	movx	@dptr,a
   02D3 90 00 68            688 	mov	dptr,#(_main_n_1_1 + 0x0068)
   02D6 74 26               689 	mov	a,#0x26
   02D8 F0                  690 	movx	@dptr,a
   02D9 90 00 69            691 	mov	dptr,#(_main_n_1_1 + 0x0069)
   02DC 74 2D               692 	mov	a,#0x2D
   02DE F0                  693 	movx	@dptr,a
   02DF 90 00 6A            694 	mov	dptr,#(_main_n_1_1 + 0x006a)
   02E2 74 D2               695 	mov	a,#0xD2
   02E4 F0                  696 	movx	@dptr,a
   02E5 90 00 6B            697 	mov	dptr,#(_main_n_1_1 + 0x006b)
   02E8 74 E9               698 	mov	a,#0xE9
   02EA F0                  699 	movx	@dptr,a
   02EB 90 00 6C            700 	mov	dptr,#(_main_n_1_1 + 0x006c)
   02EE 74 FC               701 	mov	a,#0xFC
   02F0 F0                  702 	movx	@dptr,a
   02F1 90 00 6D            703 	mov	dptr,#(_main_n_1_1 + 0x006d)
   02F4 74 76               704 	mov	a,#0x76
   02F6 F0                  705 	movx	@dptr,a
   02F7 90 00 6E            706 	mov	dptr,#(_main_n_1_1 + 0x006e)
   02FA 74 B1               707 	mov	a,#0xB1
   02FC F0                  708 	movx	@dptr,a
   02FD 90 00 6F            709 	mov	dptr,#(_main_n_1_1 + 0x006f)
   0300 74 67               710 	mov	a,#0x67
   0302 F0                  711 	movx	@dptr,a
   0303 90 00 70            712 	mov	dptr,#(_main_n_1_1 + 0x0070)
   0306 74 5E               713 	mov	a,#0x5E
   0308 F0                  714 	movx	@dptr,a
   0309 90 00 71            715 	mov	dptr,#(_main_n_1_1 + 0x0071)
   030C 74 24               716 	mov	a,#0x24
   030E F0                  717 	movx	@dptr,a
   030F 90 00 72            718 	mov	dptr,#(_main_n_1_1 + 0x0072)
   0312 74 9E               719 	mov	a,#0x9E
   0314 F0                  720 	movx	@dptr,a
   0315 90 00 73            721 	mov	dptr,#(_main_n_1_1 + 0x0073)
   0318 74 31               722 	mov	a,#0x31
   031A F0                  723 	movx	@dptr,a
   031B 90 00 74            724 	mov	dptr,#(_main_n_1_1 + 0x0074)
   031E 74 66               725 	mov	a,#0x66
   0320 F0                  726 	movx	@dptr,a
   0321 90 00 75            727 	mov	dptr,#(_main_n_1_1 + 0x0075)
   0324 74 5D               728 	mov	a,#0x5D
   0326 F0                  729 	movx	@dptr,a
   0327 90 00 76            730 	mov	dptr,#(_main_n_1_1 + 0x0076)
   032A 74 98               731 	mov	a,#0x98
   032C F0                  732 	movx	@dptr,a
   032D 90 00 77            733 	mov	dptr,#(_main_n_1_1 + 0x0077)
   0330 74 4C               734 	mov	a,#0x4C
   0332 F0                  735 	movx	@dptr,a
   0333 90 00 78            736 	mov	dptr,#(_main_n_1_1 + 0x0078)
   0336 74 0D               737 	mov	a,#0x0D
   0338 F0                  738 	movx	@dptr,a
   0339 90 00 79            739 	mov	dptr,#(_main_n_1_1 + 0x0079)
   033C 74 79               740 	mov	a,#0x79
   033E F0                  741 	movx	@dptr,a
   033F 90 00 7A            742 	mov	dptr,#(_main_n_1_1 + 0x007a)
   0342 74 81               743 	mov	a,#0x81
   0344 F0                  744 	movx	@dptr,a
   0345 90 00 7B            745 	mov	dptr,#(_main_n_1_1 + 0x007b)
   0348 74 76               746 	mov	a,#0x76
   034A F0                  747 	movx	@dptr,a
   034B 90 00 7C            748 	mov	dptr,#(_main_n_1_1 + 0x007c)
   034E 74 AC               749 	mov	a,#0xAC
   0350 F0                  750 	movx	@dptr,a
   0351 90 00 7D            751 	mov	dptr,#(_main_n_1_1 + 0x007d)
   0354 74 1D               752 	mov	a,#0x1D
   0356 F0                  753 	movx	@dptr,a
   0357 90 00 7E            754 	mov	dptr,#(_main_n_1_1 + 0x007e)
   035A 74 E2               755 	mov	a,#0xE2
   035C F0                  756 	movx	@dptr,a
   035D 90 00 7F            757 	mov	dptr,#(_main_n_1_1 + 0x007f)
   0360 74 CA               758 	mov	a,#0xCA
   0362 F0                  759 	movx	@dptr,a
                            760 ;	main_montgomery.c:14: __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
   0363 90 00 80            761 	mov	dptr,#_main_a_1_1
   0366 74 FF               762 	mov	a,#0xFF
   0368 F0                  763 	movx	@dptr,a
   0369 90 00 81            764 	mov	dptr,#(_main_a_1_1 + 0x0001)
   036C 74 7F               765 	mov	a,#0x7F
   036E F0                  766 	movx	@dptr,a
   036F 90 00 82            767 	mov	dptr,#(_main_a_1_1 + 0x0002)
   0372 74 14               768 	mov	a,#0x14
   0374 F0                  769 	movx	@dptr,a
   0375 90 00 83            770 	mov	dptr,#(_main_a_1_1 + 0x0003)
   0378 74 64               771 	mov	a,#0x64
   037A F0                  772 	movx	@dptr,a
   037B 90 00 84            773 	mov	dptr,#(_main_a_1_1 + 0x0004)
   037E 74 47               774 	mov	a,#0x47
   0380 F0                  775 	movx	@dptr,a
   0381 90 00 85            776 	mov	dptr,#(_main_a_1_1 + 0x0005)
   0384 74 68               777 	mov	a,#0x68
   0386 F0                  778 	movx	@dptr,a
   0387 90 00 86            779 	mov	dptr,#(_main_a_1_1 + 0x0006)
   038A 74 C2               780 	mov	a,#0xC2
   038C F0                  781 	movx	@dptr,a
   038D 90 00 87            782 	mov	dptr,#(_main_a_1_1 + 0x0007)
   0390 74 B6               783 	mov	a,#0xB6
   0392 F0                  784 	movx	@dptr,a
   0393 90 00 88            785 	mov	dptr,#(_main_a_1_1 + 0x0008)
   0396 74 27               786 	mov	a,#0x27
   0398 F0                  787 	movx	@dptr,a
   0399 90 00 89            788 	mov	dptr,#(_main_a_1_1 + 0x0009)
   039C 74 32               789 	mov	a,#0x32
   039E F0                  790 	movx	@dptr,a
   039F 90 00 8A            791 	mov	dptr,#(_main_a_1_1 + 0x000a)
   03A2 74 63               792 	mov	a,#0x63
   03A4 F0                  793 	movx	@dptr,a
   03A5 90 00 8B            794 	mov	dptr,#(_main_a_1_1 + 0x000b)
   03A8 74 2C               795 	mov	a,#0x2C
   03AA F0                  796 	movx	@dptr,a
   03AB 90 00 8C            797 	mov	dptr,#(_main_a_1_1 + 0x000c)
   03AE 74 B0               798 	mov	a,#0xB0
   03B0 F0                  799 	movx	@dptr,a
   03B1 90 00 8D            800 	mov	dptr,#(_main_a_1_1 + 0x000d)
   03B4 74 C3               801 	mov	a,#0xC3
   03B6 F0                  802 	movx	@dptr,a
   03B7 90 00 8E            803 	mov	dptr,#(_main_a_1_1 + 0x000e)
   03BA 74 95               804 	mov	a,#0x95
   03BC F0                  805 	movx	@dptr,a
   03BD 90 00 8F            806 	mov	dptr,#(_main_a_1_1 + 0x000f)
   03C0 74 13               807 	mov	a,#0x13
   03C2 F0                  808 	movx	@dptr,a
   03C3 90 00 90            809 	mov	dptr,#(_main_a_1_1 + 0x0010)
   03C6 74 C5               810 	mov	a,#0xC5
   03C8 F0                  811 	movx	@dptr,a
   03C9 90 00 91            812 	mov	dptr,#(_main_a_1_1 + 0x0011)
   03CC 74 7E               813 	mov	a,#0x7E
   03CE F0                  814 	movx	@dptr,a
   03CF 90 00 92            815 	mov	dptr,#(_main_a_1_1 + 0x0012)
   03D2 74 17               816 	mov	a,#0x17
   03D4 F0                  817 	movx	@dptr,a
   03D5 90 00 93            818 	mov	dptr,#(_main_a_1_1 + 0x0013)
   03D8 74 22               819 	mov	a,#0x22
   03DA F0                  820 	movx	@dptr,a
   03DB 90 00 94            821 	mov	dptr,#(_main_a_1_1 + 0x0014)
   03DE 74 F3               822 	mov	a,#0xF3
   03E0 F0                  823 	movx	@dptr,a
   03E1 90 00 95            824 	mov	dptr,#(_main_a_1_1 + 0x0015)
   03E4 74 7C               825 	mov	a,#0x7C
   03E6 F0                  826 	movx	@dptr,a
   03E7 90 00 96            827 	mov	dptr,#(_main_a_1_1 + 0x0016)
   03EA 74 2D               828 	mov	a,#0x2D
   03EC F0                  829 	movx	@dptr,a
   03ED 90 00 97            830 	mov	dptr,#(_main_a_1_1 + 0x0017)
   03F0 74 E8               831 	mov	a,#0xE8
   03F2 F0                  832 	movx	@dptr,a
   03F3 90 00 98            833 	mov	dptr,#(_main_a_1_1 + 0x0018)
   03F6 74 13               834 	mov	a,#0x13
   03F8 F0                  835 	movx	@dptr,a
   03F9 90 00 99            836 	mov	dptr,#(_main_a_1_1 + 0x0019)
   03FC 74 47               837 	mov	a,#0x47
   03FE F0                  838 	movx	@dptr,a
   03FF 90 00 9A            839 	mov	dptr,#(_main_a_1_1 + 0x001a)
   0402 74 5E               840 	mov	a,#0x5E
   0404 F0                  841 	movx	@dptr,a
   0405 90 00 9B            842 	mov	dptr,#(_main_a_1_1 + 0x001b)
   0408 74 15               843 	mov	a,#0x15
   040A F0                  844 	movx	@dptr,a
   040B 90 00 9C            845 	mov	dptr,#(_main_a_1_1 + 0x001c)
   040E 74 4E               846 	mov	a,#0x4E
   0410 F0                  847 	movx	@dptr,a
   0411 90 00 9D            848 	mov	dptr,#(_main_a_1_1 + 0x001d)
   0414 74 EF               849 	mov	a,#0xEF
   0416 F0                  850 	movx	@dptr,a
   0417 90 00 9E            851 	mov	dptr,#(_main_a_1_1 + 0x001e)
   041A 74 83               852 	mov	a,#0x83
   041C F0                  853 	movx	@dptr,a
   041D 90 00 9F            854 	mov	dptr,#(_main_a_1_1 + 0x001f)
   0420 74 81               855 	mov	a,#0x81
   0422 F0                  856 	movx	@dptr,a
   0423 90 00 A0            857 	mov	dptr,#(_main_a_1_1 + 0x0020)
   0426 74 DF               858 	mov	a,#0xDF
   0428 F0                  859 	movx	@dptr,a
   0429 90 00 A1            860 	mov	dptr,#(_main_a_1_1 + 0x0021)
   042C 74 C3               861 	mov	a,#0xC3
   042E F0                  862 	movx	@dptr,a
   042F 90 00 A2            863 	mov	dptr,#(_main_a_1_1 + 0x0022)
   0432 74 47               864 	mov	a,#0x47
   0434 F0                  865 	movx	@dptr,a
   0435 90 00 A3            866 	mov	dptr,#(_main_a_1_1 + 0x0023)
   0438 74 D3               867 	mov	a,#0xD3
   043A F0                  868 	movx	@dptr,a
   043B 90 00 A4            869 	mov	dptr,#(_main_a_1_1 + 0x0024)
   043E 74 60               870 	mov	a,#0x60
   0440 F0                  871 	movx	@dptr,a
   0441 90 00 A5            872 	mov	dptr,#(_main_a_1_1 + 0x0025)
   0444 74 BB               873 	mov	a,#0xBB
   0446 F0                  874 	movx	@dptr,a
   0447 90 00 A6            875 	mov	dptr,#(_main_a_1_1 + 0x0026)
   044A 74 8B               876 	mov	a,#0x8B
   044C F0                  877 	movx	@dptr,a
   044D 90 00 A7            878 	mov	dptr,#(_main_a_1_1 + 0x0027)
   0450 74 3E               879 	mov	a,#0x3E
   0452 F0                  880 	movx	@dptr,a
   0453 90 00 A8            881 	mov	dptr,#(_main_a_1_1 + 0x0028)
   0456 74 B6               882 	mov	a,#0xB6
   0458 F0                  883 	movx	@dptr,a
   0459 90 00 A9            884 	mov	dptr,#(_main_a_1_1 + 0x0029)
   045C 74 35               885 	mov	a,#0x35
   045E F0                  886 	movx	@dptr,a
   045F 90 00 AA            887 	mov	dptr,#(_main_a_1_1 + 0x002a)
   0462 74 B1               888 	mov	a,#0xB1
   0464 F0                  889 	movx	@dptr,a
   0465 90 00 AB            890 	mov	dptr,#(_main_a_1_1 + 0x002b)
   0468 74 6E               891 	mov	a,#0x6E
   046A F0                  892 	movx	@dptr,a
   046B 90 00 AC            893 	mov	dptr,#(_main_a_1_1 + 0x002c)
   046E 74 D1               894 	mov	a,#0xD1
   0470 F0                  895 	movx	@dptr,a
   0471 90 00 AD            896 	mov	dptr,#(_main_a_1_1 + 0x002d)
   0474 74 D5               897 	mov	a,#0xD5
   0476 F0                  898 	movx	@dptr,a
   0477 90 00 AE            899 	mov	dptr,#(_main_a_1_1 + 0x002e)
   047A 74 DA               900 	mov	a,#0xDA
   047C F0                  901 	movx	@dptr,a
   047D 90 00 AF            902 	mov	dptr,#(_main_a_1_1 + 0x002f)
   0480 74 6F               903 	mov	a,#0x6F
   0482 F0                  904 	movx	@dptr,a
   0483 90 00 B0            905 	mov	dptr,#(_main_a_1_1 + 0x0030)
   0486 74 28               906 	mov	a,#0x28
   0488 F0                  907 	movx	@dptr,a
   0489 90 00 B1            908 	mov	dptr,#(_main_a_1_1 + 0x0031)
   048C 74 16               909 	mov	a,#0x16
   048E F0                  910 	movx	@dptr,a
   048F 90 00 B2            911 	mov	dptr,#(_main_a_1_1 + 0x0032)
   0492 74 2C               912 	mov	a,#0x2C
   0494 F0                  913 	movx	@dptr,a
   0495 90 00 B3            914 	mov	dptr,#(_main_a_1_1 + 0x0033)
   0498 74 74               915 	mov	a,#0x74
   049A F0                  916 	movx	@dptr,a
   049B 90 00 B4            917 	mov	dptr,#(_main_a_1_1 + 0x0034)
   049E 74 36               918 	mov	a,#0x36
   04A0 F0                  919 	movx	@dptr,a
   04A1 90 00 B5            920 	mov	dptr,#(_main_a_1_1 + 0x0035)
   04A4 74 F9               921 	mov	a,#0xF9
   04A6 F0                  922 	movx	@dptr,a
   04A7 90 00 B6            923 	mov	dptr,#(_main_a_1_1 + 0x0036)
   04AA 74 04               924 	mov	a,#0x04
   04AC F0                  925 	movx	@dptr,a
   04AD 90 00 B7            926 	mov	dptr,#(_main_a_1_1 + 0x0037)
   04B0 74 79               927 	mov	a,#0x79
   04B2 F0                  928 	movx	@dptr,a
   04B3 90 00 B8            929 	mov	dptr,#(_main_a_1_1 + 0x0038)
   04B6 74 F9               930 	mov	a,#0xF9
   04B8 F0                  931 	movx	@dptr,a
   04B9 90 00 B9            932 	mov	dptr,#(_main_a_1_1 + 0x0039)
   04BC 74 76               933 	mov	a,#0x76
   04BE F0                  934 	movx	@dptr,a
   04BF 90 00 BA            935 	mov	dptr,#(_main_a_1_1 + 0x003a)
   04C2 74 E2               936 	mov	a,#0xE2
   04C4 F0                  937 	movx	@dptr,a
   04C5 90 00 BB            938 	mov	dptr,#(_main_a_1_1 + 0x003b)
   04C8 74 CC               939 	mov	a,#0xCC
   04CA F0                  940 	movx	@dptr,a
   04CB 90 00 BC            941 	mov	dptr,#(_main_a_1_1 + 0x003c)
   04CE 74 A4               942 	mov	a,#0xA4
   04D0 F0                  943 	movx	@dptr,a
   04D1 90 00 BD            944 	mov	dptr,#(_main_a_1_1 + 0x003d)
   04D4 74 82               945 	mov	a,#0x82
   04D6 F0                  946 	movx	@dptr,a
   04D7 90 00 BE            947 	mov	dptr,#(_main_a_1_1 + 0x003e)
   04DA 74 A7               948 	mov	a,#0xA7
   04DC F0                  949 	movx	@dptr,a
   04DD 90 00 BF            950 	mov	dptr,#(_main_a_1_1 + 0x003f)
   04E0 74 A4               951 	mov	a,#0xA4
   04E2 F0                  952 	movx	@dptr,a
   04E3 90 00 C0            953 	mov	dptr,#(_main_a_1_1 + 0x0040)
   04E6 74 68               954 	mov	a,#0x68
   04E8 F0                  955 	movx	@dptr,a
   04E9 90 00 C1            956 	mov	dptr,#(_main_a_1_1 + 0x0041)
   04EC 74 4E               957 	mov	a,#0x4E
   04EE F0                  958 	movx	@dptr,a
   04EF 90 00 C2            959 	mov	dptr,#(_main_a_1_1 + 0x0042)
   04F2 74 24               960 	mov	a,#0x24
   04F4 F0                  961 	movx	@dptr,a
   04F5 90 00 C3            962 	mov	dptr,#(_main_a_1_1 + 0x0043)
   04F8 74 A6               963 	mov	a,#0xA6
   04FA F0                  964 	movx	@dptr,a
   04FB 90 00 C4            965 	mov	dptr,#(_main_a_1_1 + 0x0044)
   04FE 74 C1               966 	mov	a,#0xC1
   0500 F0                  967 	movx	@dptr,a
   0501 90 00 C5            968 	mov	dptr,#(_main_a_1_1 + 0x0045)
   0504 74 58               969 	mov	a,#0x58
   0506 F0                  970 	movx	@dptr,a
   0507 90 00 C6            971 	mov	dptr,#(_main_a_1_1 + 0x0046)
   050A 74 68               972 	mov	a,#0x68
   050C F0                  973 	movx	@dptr,a
   050D 90 00 C7            974 	mov	dptr,#(_main_a_1_1 + 0x0047)
   0510 74 24               975 	mov	a,#0x24
   0512 F0                  976 	movx	@dptr,a
   0513 90 00 C8            977 	mov	dptr,#(_main_a_1_1 + 0x0048)
   0516 74 58               978 	mov	a,#0x58
   0518 F0                  979 	movx	@dptr,a
   0519 90 00 C9            980 	mov	dptr,#(_main_a_1_1 + 0x0049)
   051C 74 DC               981 	mov	a,#0xDC
   051E F0                  982 	movx	@dptr,a
   051F 90 00 CA            983 	mov	dptr,#(_main_a_1_1 + 0x004a)
   0522 74 14               984 	mov	a,#0x14
   0524 F0                  985 	movx	@dptr,a
   0525 90 00 CB            986 	mov	dptr,#(_main_a_1_1 + 0x004b)
   0528 74 F9               987 	mov	a,#0xF9
   052A F0                  988 	movx	@dptr,a
   052B 90 00 CC            989 	mov	dptr,#(_main_a_1_1 + 0x004c)
   052E 74 FF               990 	mov	a,#0xFF
   0530 F0                  991 	movx	@dptr,a
   0531 90 00 CD            992 	mov	dptr,#(_main_a_1_1 + 0x004d)
   0534 74 4D               993 	mov	a,#0x4D
   0536 F0                  994 	movx	@dptr,a
   0537 90 00 CE            995 	mov	dptr,#(_main_a_1_1 + 0x004e)
   053A 74 A1               996 	mov	a,#0xA1
   053C F0                  997 	movx	@dptr,a
   053D 90 00 CF            998 	mov	dptr,#(_main_a_1_1 + 0x004f)
   0540 74 EF               999 	mov	a,#0xEF
   0542 F0                 1000 	movx	@dptr,a
   0543 90 00 D0           1001 	mov	dptr,#(_main_a_1_1 + 0x0050)
   0546 74 53              1002 	mov	a,#0x53
   0548 F0                 1003 	movx	@dptr,a
   0549 90 00 D1           1004 	mov	dptr,#(_main_a_1_1 + 0x0051)
   054C 74 A3              1005 	mov	a,#0xA3
   054E F0                 1006 	movx	@dptr,a
   054F 90 00 D2           1007 	mov	dptr,#(_main_a_1_1 + 0x0052)
   0552 74 C2              1008 	mov	a,#0xC2
   0554 F0                 1009 	movx	@dptr,a
   0555 90 00 D3           1010 	mov	dptr,#(_main_a_1_1 + 0x0053)
   0558 74 84              1011 	mov	a,#0x84
   055A F0                 1012 	movx	@dptr,a
   055B 90 00 D4           1013 	mov	dptr,#(_main_a_1_1 + 0x0054)
   055E 74 1B              1014 	mov	a,#0x1B
   0560 F0                 1015 	movx	@dptr,a
   0561 90 00 D5           1016 	mov	dptr,#(_main_a_1_1 + 0x0055)
   0564 74 81              1017 	mov	a,#0x81
   0566 F0                 1018 	movx	@dptr,a
   0567 90 00 D6           1019 	mov	dptr,#(_main_a_1_1 + 0x0056)
   056A 74 16              1020 	mov	a,#0x16
   056C F0                 1021 	movx	@dptr,a
   056D 90 00 D7           1022 	mov	dptr,#(_main_a_1_1 + 0x0057)
   0570 74 6C              1023 	mov	a,#0x6C
   0572 F0                 1024 	movx	@dptr,a
   0573 90 00 D8           1025 	mov	dptr,#(_main_a_1_1 + 0x0058)
   0576 74 DD              1026 	mov	a,#0xDD
   0578 F0                 1027 	movx	@dptr,a
   0579 90 00 D9           1028 	mov	dptr,#(_main_a_1_1 + 0x0059)
   057C 74 E3              1029 	mov	a,#0xE3
   057E F0                 1030 	movx	@dptr,a
   057F 90 00 DA           1031 	mov	dptr,#(_main_a_1_1 + 0x005a)
   0582 74 DB              1032 	mov	a,#0xDB
   0584 F0                 1033 	movx	@dptr,a
   0585 90 00 DB           1034 	mov	dptr,#(_main_a_1_1 + 0x005b)
   0588 74 A8              1035 	mov	a,#0xA8
   058A F0                 1036 	movx	@dptr,a
   058B 90 00 DC           1037 	mov	dptr,#(_main_a_1_1 + 0x005c)
   058E 74 03              1038 	mov	a,#0x03
   0590 F0                 1039 	movx	@dptr,a
   0591 90 00 DD           1040 	mov	dptr,#(_main_a_1_1 + 0x005d)
   0594 74 8F              1041 	mov	a,#0x8F
   0596 F0                 1042 	movx	@dptr,a
   0597 90 00 DE           1043 	mov	dptr,#(_main_a_1_1 + 0x005e)
   059A 74 F2              1044 	mov	a,#0xF2
   059C F0                 1045 	movx	@dptr,a
   059D 90 00 DF           1046 	mov	dptr,#(_main_a_1_1 + 0x005f)
   05A0 74 31              1047 	mov	a,#0x31
   05A2 F0                 1048 	movx	@dptr,a
   05A3 90 00 E0           1049 	mov	dptr,#(_main_a_1_1 + 0x0060)
   05A6 74 FD              1050 	mov	a,#0xFD
   05A8 F0                 1051 	movx	@dptr,a
   05A9 90 00 E1           1052 	mov	dptr,#(_main_a_1_1 + 0x0061)
   05AC 74 94              1053 	mov	a,#0x94
   05AE F0                 1054 	movx	@dptr,a
   05AF 90 00 E2           1055 	mov	dptr,#(_main_a_1_1 + 0x0062)
   05B2 74 5D              1056 	mov	a,#0x5D
   05B4 F0                 1057 	movx	@dptr,a
   05B5 90 00 E3           1058 	mov	dptr,#(_main_a_1_1 + 0x0063)
   05B8 74 26              1059 	mov	a,#0x26
   05BA F0                 1060 	movx	@dptr,a
   05BB 90 00 E4           1061 	mov	dptr,#(_main_a_1_1 + 0x0064)
   05BE 74 13              1062 	mov	a,#0x13
   05C0 F0                 1063 	movx	@dptr,a
   05C1 90 00 E5           1064 	mov	dptr,#(_main_a_1_1 + 0x0065)
   05C4 74 C6              1065 	mov	a,#0xC6
   05C6 F0                 1066 	movx	@dptr,a
   05C7 90 00 E6           1067 	mov	dptr,#(_main_a_1_1 + 0x0066)
   05CA 74 68              1068 	mov	a,#0x68
   05CC F0                 1069 	movx	@dptr,a
   05CD 90 00 E7           1070 	mov	dptr,#(_main_a_1_1 + 0x0067)
   05D0 74 B4              1071 	mov	a,#0xB4
   05D2 F0                 1072 	movx	@dptr,a
   05D3 90 00 E8           1073 	mov	dptr,#(_main_a_1_1 + 0x0068)
   05D6 74 0D              1074 	mov	a,#0x0D
   05D8 F0                 1075 	movx	@dptr,a
   05D9 90 00 E9           1076 	mov	dptr,#(_main_a_1_1 + 0x0069)
   05DC 74 CD              1077 	mov	a,#0xCD
   05DE F0                 1078 	movx	@dptr,a
   05DF 90 00 EA           1079 	mov	dptr,#(_main_a_1_1 + 0x006a)
   05E2 74 F1              1080 	mov	a,#0xF1
   05E4 F0                 1081 	movx	@dptr,a
   05E5 90 00 EB           1082 	mov	dptr,#(_main_a_1_1 + 0x006b)
   05E8 74 B8              1083 	mov	a,#0xB8
   05EA F0                 1084 	movx	@dptr,a
   05EB 90 00 EC           1085 	mov	dptr,#(_main_a_1_1 + 0x006c)
   05EE 74 66              1086 	mov	a,#0x66
   05F0 F0                 1087 	movx	@dptr,a
   05F1 90 00 ED           1088 	mov	dptr,#(_main_a_1_1 + 0x006d)
   05F4 74 0D              1089 	mov	a,#0x0D
   05F6 F0                 1090 	movx	@dptr,a
   05F7 90 00 EE           1091 	mov	dptr,#(_main_a_1_1 + 0x006e)
   05FA 74 5D              1092 	mov	a,#0x5D
   05FC F0                 1093 	movx	@dptr,a
   05FD 90 00 EF           1094 	mov	dptr,#(_main_a_1_1 + 0x006f)
   0600 74 3B              1095 	mov	a,#0x3B
   0602 F0                 1096 	movx	@dptr,a
   0603 90 00 F0           1097 	mov	dptr,#(_main_a_1_1 + 0x0070)
   0606 74 2F              1098 	mov	a,#0x2F
   0608 F0                 1099 	movx	@dptr,a
   0609 90 00 F1           1100 	mov	dptr,#(_main_a_1_1 + 0x0071)
   060C 74 C4              1101 	mov	a,#0xC4
   060E F0                 1102 	movx	@dptr,a
   060F 90 00 F2           1103 	mov	dptr,#(_main_a_1_1 + 0x0072)
   0612 74 4A              1104 	mov	a,#0x4A
   0614 F0                 1105 	movx	@dptr,a
   0615 90 00 F3           1106 	mov	dptr,#(_main_a_1_1 + 0x0073)
   0618 74 D1              1107 	mov	a,#0xD1
   061A F0                 1108 	movx	@dptr,a
   061B 90 00 F4           1109 	mov	dptr,#(_main_a_1_1 + 0x0074)
   061E 74 0B              1110 	mov	a,#0x0B
   0620 F0                 1111 	movx	@dptr,a
   0621 90 00 F5           1112 	mov	dptr,#(_main_a_1_1 + 0x0075)
   0624 74 36              1113 	mov	a,#0x36
   0626 F0                 1114 	movx	@dptr,a
   0627 90 00 F6           1115 	mov	dptr,#(_main_a_1_1 + 0x0076)
   062A 74 C6              1116 	mov	a,#0xC6
   062C F0                 1117 	movx	@dptr,a
   062D 90 00 F7           1118 	mov	dptr,#(_main_a_1_1 + 0x0077)
   0630 74 10              1119 	mov	a,#0x10
   0632 F0                 1120 	movx	@dptr,a
   0633 90 00 F8           1121 	mov	dptr,#(_main_a_1_1 + 0x0078)
   0636 74 1A              1122 	mov	a,#0x1A
   0638 F0                 1123 	movx	@dptr,a
   0639 90 00 F9           1124 	mov	dptr,#(_main_a_1_1 + 0x0079)
   063C 74 2F              1125 	mov	a,#0x2F
   063E F0                 1126 	movx	@dptr,a
   063F 90 00 FA           1127 	mov	dptr,#(_main_a_1_1 + 0x007a)
   0642 74 72              1128 	mov	a,#0x72
   0644 F0                 1129 	movx	@dptr,a
   0645 90 00 FB           1130 	mov	dptr,#(_main_a_1_1 + 0x007b)
   0648 74 D1              1131 	mov	a,#0xD1
   064A F0                 1132 	movx	@dptr,a
   064B 90 00 FC           1133 	mov	dptr,#(_main_a_1_1 + 0x007c)
   064E 74 BB              1134 	mov	a,#0xBB
   0650 F0                 1135 	movx	@dptr,a
   0651 90 00 FD           1136 	mov	dptr,#(_main_a_1_1 + 0x007d)
   0654 74 15              1137 	mov	a,#0x15
   0656 F0                 1138 	movx	@dptr,a
   0657 90 00 FE           1139 	mov	dptr,#(_main_a_1_1 + 0x007e)
   065A 74 29              1140 	mov	a,#0x29
   065C F0                 1141 	movx	@dptr,a
   065D 90 00 FF           1142 	mov	dptr,#(_main_a_1_1 + 0x007f)
   0660 74 CA              1143 	mov	a,#0xCA
   0662 F0                 1144 	movx	@dptr,a
                           1145 ;	main_montgomery.c:15: __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
   0663 90 01 00           1146 	mov	dptr,#_main_b_1_1
   0666 74 E1              1147 	mov	a,#0xE1
   0668 F0                 1148 	movx	@dptr,a
   0669 90 01 01           1149 	mov	dptr,#(_main_b_1_1 + 0x0001)
   066C 74 8A              1150 	mov	a,#0x8A
   066E F0                 1151 	movx	@dptr,a
   066F 90 01 02           1152 	mov	dptr,#(_main_b_1_1 + 0x0002)
   0672 74 03              1153 	mov	a,#0x03
   0674 F0                 1154 	movx	@dptr,a
   0675 90 01 03           1155 	mov	dptr,#(_main_b_1_1 + 0x0003)
   0678 74 DB              1156 	mov	a,#0xDB
   067A F0                 1157 	movx	@dptr,a
   067B 90 01 04           1158 	mov	dptr,#(_main_b_1_1 + 0x0004)
   067E 74 E0              1159 	mov	a,#0xE0
   0680 F0                 1160 	movx	@dptr,a
   0681 90 01 05           1161 	mov	dptr,#(_main_b_1_1 + 0x0005)
   0684 74 D9              1162 	mov	a,#0xD9
   0686 F0                 1163 	movx	@dptr,a
   0687 90 01 06           1164 	mov	dptr,#(_main_b_1_1 + 0x0006)
   068A 74 F6              1165 	mov	a,#0xF6
   068C F0                 1166 	movx	@dptr,a
   068D 90 01 07           1167 	mov	dptr,#(_main_b_1_1 + 0x0007)
   0690 74 55              1168 	mov	a,#0x55
   0692 F0                 1169 	movx	@dptr,a
   0693 90 01 08           1170 	mov	dptr,#(_main_b_1_1 + 0x0008)
   0696 74 B6              1171 	mov	a,#0xB6
   0698 F0                 1172 	movx	@dptr,a
   0699 90 01 09           1173 	mov	dptr,#(_main_b_1_1 + 0x0009)
   069C 74 27              1174 	mov	a,#0x27
   069E F0                 1175 	movx	@dptr,a
   069F 90 01 0A           1176 	mov	dptr,#(_main_b_1_1 + 0x000a)
   06A2 74 0A              1177 	mov	a,#0x0A
   06A4 F0                 1178 	movx	@dptr,a
   06A5 90 01 0B           1179 	mov	dptr,#(_main_b_1_1 + 0x000b)
   06A8 74 28              1180 	mov	a,#0x28
   06AA F0                 1181 	movx	@dptr,a
   06AB 90 01 0C           1182 	mov	dptr,#(_main_b_1_1 + 0x000c)
   06AE 74 F0              1183 	mov	a,#0xF0
   06B0 F0                 1184 	movx	@dptr,a
   06B1 90 01 0D           1185 	mov	dptr,#(_main_b_1_1 + 0x000d)
   06B4 74 5E              1186 	mov	a,#0x5E
   06B6 F0                 1187 	movx	@dptr,a
   06B7 90 01 0E           1188 	mov	dptr,#(_main_b_1_1 + 0x000e)
   06BA 74 74              1189 	mov	a,#0x74
   06BC F0                 1190 	movx	@dptr,a
   06BD 90 01 0F           1191 	mov	dptr,#(_main_b_1_1 + 0x000f)
   06C0 74 7F              1192 	mov	a,#0x7F
   06C2 F0                 1193 	movx	@dptr,a
   06C3 90 01 10           1194 	mov	dptr,#(_main_b_1_1 + 0x0010)
   06C6 74 E6              1195 	mov	a,#0xE6
   06C8 F0                 1196 	movx	@dptr,a
   06C9 90 01 11           1197 	mov	dptr,#(_main_b_1_1 + 0x0011)
   06CC 74 9F              1198 	mov	a,#0x9F
   06CE F0                 1199 	movx	@dptr,a
   06CF 90 01 12           1200 	mov	dptr,#(_main_b_1_1 + 0x0012)
   06D2 74 4C              1201 	mov	a,#0x4C
   06D4 F0                 1202 	movx	@dptr,a
   06D5 90 01 13           1203 	mov	dptr,#(_main_b_1_1 + 0x0013)
   06D8 74 FB              1204 	mov	a,#0xFB
   06DA F0                 1205 	movx	@dptr,a
   06DB 90 01 14           1206 	mov	dptr,#(_main_b_1_1 + 0x0014)
   06DE 74 26              1207 	mov	a,#0x26
   06E0 F0                 1208 	movx	@dptr,a
   06E1 90 01 15           1209 	mov	dptr,#(_main_b_1_1 + 0x0015)
   06E4 74 8C              1210 	mov	a,#0x8C
   06E6 F0                 1211 	movx	@dptr,a
   06E7 90 01 16           1212 	mov	dptr,#(_main_b_1_1 + 0x0016)
   06EA 74 9E              1213 	mov	a,#0x9E
   06EC F0                 1214 	movx	@dptr,a
   06ED 90 01 17           1215 	mov	dptr,#(_main_b_1_1 + 0x0017)
   06F0 74 87              1216 	mov	a,#0x87
   06F2 F0                 1217 	movx	@dptr,a
   06F3 90 01 18           1218 	mov	dptr,#(_main_b_1_1 + 0x0018)
   06F6 74 83              1219 	mov	a,#0x83
   06F8 F0                 1220 	movx	@dptr,a
   06F9 90 01 19           1221 	mov	dptr,#(_main_b_1_1 + 0x0019)
   06FC 74 22              1222 	mov	a,#0x22
   06FE F0                 1223 	movx	@dptr,a
   06FF 90 01 1A           1224 	mov	dptr,#(_main_b_1_1 + 0x001a)
   0702 74 F2              1225 	mov	a,#0xF2
   0704 F0                 1226 	movx	@dptr,a
   0705 90 01 1B           1227 	mov	dptr,#(_main_b_1_1 + 0x001b)
   0708 74 75              1228 	mov	a,#0x75
   070A F0                 1229 	movx	@dptr,a
   070B 90 01 1C           1230 	mov	dptr,#(_main_b_1_1 + 0x001c)
   070E 74 D2              1231 	mov	a,#0xD2
   0710 F0                 1232 	movx	@dptr,a
   0711 90 01 1D           1233 	mov	dptr,#(_main_b_1_1 + 0x001d)
   0714 74 B3              1234 	mov	a,#0xB3
   0716 F0                 1235 	movx	@dptr,a
   0717 90 01 1E           1236 	mov	dptr,#(_main_b_1_1 + 0x001e)
   071A 74 61              1237 	mov	a,#0x61
   071C F0                 1238 	movx	@dptr,a
   071D 90 01 1F           1239 	mov	dptr,#(_main_b_1_1 + 0x001f)
   0720 74 A2              1240 	mov	a,#0xA2
   0722 F0                 1241 	movx	@dptr,a
   0723 90 01 20           1242 	mov	dptr,#(_main_b_1_1 + 0x0020)
   0726 74 9D              1243 	mov	a,#0x9D
   0728 F0                 1244 	movx	@dptr,a
   0729 90 01 21           1245 	mov	dptr,#(_main_b_1_1 + 0x0021)
   072C 74 50              1246 	mov	a,#0x50
   072E F0                 1247 	movx	@dptr,a
   072F 90 01 22           1248 	mov	dptr,#(_main_b_1_1 + 0x0022)
   0732 74 71              1249 	mov	a,#0x71
   0734 F0                 1250 	movx	@dptr,a
   0735 90 01 23           1251 	mov	dptr,#(_main_b_1_1 + 0x0023)
   0738 74 5E              1252 	mov	a,#0x5E
   073A F0                 1253 	movx	@dptr,a
   073B 90 01 24           1254 	mov	dptr,#(_main_b_1_1 + 0x0024)
   073E 74 C9              1255 	mov	a,#0xC9
   0740 F0                 1256 	movx	@dptr,a
   0741 90 01 25           1257 	mov	dptr,#(_main_b_1_1 + 0x0025)
   0744 74 DD              1258 	mov	a,#0xDD
   0746 F0                 1259 	movx	@dptr,a
   0747 90 01 26           1260 	mov	dptr,#(_main_b_1_1 + 0x0026)
   074A 74 DD              1261 	mov	a,#0xDD
   074C F0                 1262 	movx	@dptr,a
   074D 90 01 27           1263 	mov	dptr,#(_main_b_1_1 + 0x0027)
   0750 74 74              1264 	mov	a,#0x74
   0752 F0                 1265 	movx	@dptr,a
   0753 90 01 28           1266 	mov	dptr,#(_main_b_1_1 + 0x0028)
   0756 74 0A              1267 	mov	a,#0x0A
   0758 F0                 1268 	movx	@dptr,a
   0759 90 01 29           1269 	mov	dptr,#(_main_b_1_1 + 0x0029)
   075C 74 3C              1270 	mov	a,#0x3C
   075E F0                 1271 	movx	@dptr,a
   075F 90 01 2A           1272 	mov	dptr,#(_main_b_1_1 + 0x002a)
   0762 74 C0              1273 	mov	a,#0xC0
   0764 F0                 1274 	movx	@dptr,a
   0765 90 01 2B           1275 	mov	dptr,#(_main_b_1_1 + 0x002b)
   0768 74 30              1276 	mov	a,#0x30
   076A F0                 1277 	movx	@dptr,a
   076B 90 01 2C           1278 	mov	dptr,#(_main_b_1_1 + 0x002c)
   076E 74 3E              1279 	mov	a,#0x3E
   0770 F0                 1280 	movx	@dptr,a
   0771 90 01 2D           1281 	mov	dptr,#(_main_b_1_1 + 0x002d)
   0774 74 E5              1282 	mov	a,#0xE5
   0776 F0                 1283 	movx	@dptr,a
   0777 90 01 2E           1284 	mov	dptr,#(_main_b_1_1 + 0x002e)
   077A 74 20              1285 	mov	a,#0x20
   077C F0                 1286 	movx	@dptr,a
   077D 90 01 2F           1287 	mov	dptr,#(_main_b_1_1 + 0x002f)
   0780 74 02              1288 	mov	a,#0x02
   0782 F0                 1289 	movx	@dptr,a
   0783 90 01 30           1290 	mov	dptr,#(_main_b_1_1 + 0x0030)
   0786 74 B3              1291 	mov	a,#0xB3
   0788 F0                 1292 	movx	@dptr,a
   0789 90 01 31           1293 	mov	dptr,#(_main_b_1_1 + 0x0031)
   078C 74 12              1294 	mov	a,#0x12
   078E F0                 1295 	movx	@dptr,a
   078F 90 01 32           1296 	mov	dptr,#(_main_b_1_1 + 0x0032)
   0792 74 4F              1297 	mov	a,#0x4F
   0794 F0                 1298 	movx	@dptr,a
   0795 90 01 33           1299 	mov	dptr,#(_main_b_1_1 + 0x0033)
   0798 74 AB              1300 	mov	a,#0xAB
   079A F0                 1301 	movx	@dptr,a
   079B 90 01 34           1302 	mov	dptr,#(_main_b_1_1 + 0x0034)
   079E 74 60              1303 	mov	a,#0x60
   07A0 F0                 1304 	movx	@dptr,a
   07A1 90 01 35           1305 	mov	dptr,#(_main_b_1_1 + 0x0035)
   07A4 74 27              1306 	mov	a,#0x27
   07A6 F0                 1307 	movx	@dptr,a
   07A7 90 01 36           1308 	mov	dptr,#(_main_b_1_1 + 0x0036)
   07AA 74 07              1309 	mov	a,#0x07
   07AC F0                 1310 	movx	@dptr,a
   07AD 90 01 37           1311 	mov	dptr,#(_main_b_1_1 + 0x0037)
   07B0 74 17              1312 	mov	a,#0x17
   07B2 F0                 1313 	movx	@dptr,a
   07B3 90 01 38           1314 	mov	dptr,#(_main_b_1_1 + 0x0038)
   07B6 74 DD              1315 	mov	a,#0xDD
   07B8 F0                 1316 	movx	@dptr,a
   07B9 90 01 39           1317 	mov	dptr,#(_main_b_1_1 + 0x0039)
   07BC E4                 1318 	clr	a
   07BD F0                 1319 	movx	@dptr,a
   07BE 90 01 3A           1320 	mov	dptr,#(_main_b_1_1 + 0x003a)
   07C1 74 C2              1321 	mov	a,#0xC2
   07C3 F0                 1322 	movx	@dptr,a
   07C4 90 01 3B           1323 	mov	dptr,#(_main_b_1_1 + 0x003b)
   07C7 74 E1              1324 	mov	a,#0xE1
   07C9 F0                 1325 	movx	@dptr,a
   07CA 90 01 3C           1326 	mov	dptr,#(_main_b_1_1 + 0x003c)
   07CD 74 BC              1327 	mov	a,#0xBC
   07CF F0                 1328 	movx	@dptr,a
   07D0 90 01 3D           1329 	mov	dptr,#(_main_b_1_1 + 0x003d)
   07D3 74 04              1330 	mov	a,#0x04
   07D5 F0                 1331 	movx	@dptr,a
   07D6 90 01 3E           1332 	mov	dptr,#(_main_b_1_1 + 0x003e)
   07D9 74 AE              1333 	mov	a,#0xAE
   07DB F0                 1334 	movx	@dptr,a
   07DC 90 01 3F           1335 	mov	dptr,#(_main_b_1_1 + 0x003f)
   07DF 74 21              1336 	mov	a,#0x21
   07E1 F0                 1337 	movx	@dptr,a
   07E2 90 01 40           1338 	mov	dptr,#(_main_b_1_1 + 0x0040)
   07E5 74 38              1339 	mov	a,#0x38
   07E7 F0                 1340 	movx	@dptr,a
   07E8 90 01 41           1341 	mov	dptr,#(_main_b_1_1 + 0x0041)
   07EB 74 CA              1342 	mov	a,#0xCA
   07ED F0                 1343 	movx	@dptr,a
   07EE 90 01 42           1344 	mov	dptr,#(_main_b_1_1 + 0x0042)
   07F1 74 AA              1345 	mov	a,#0xAA
   07F3 F0                 1346 	movx	@dptr,a
   07F4 90 01 43           1347 	mov	dptr,#(_main_b_1_1 + 0x0043)
   07F7 74 8F              1348 	mov	a,#0x8F
   07F9 F0                 1349 	movx	@dptr,a
   07FA 90 01 44           1350 	mov	dptr,#(_main_b_1_1 + 0x0044)
   07FD 74 74              1351 	mov	a,#0x74
   07FF F0                 1352 	movx	@dptr,a
   0800 90 01 45           1353 	mov	dptr,#(_main_b_1_1 + 0x0045)
   0803 74 D5              1354 	mov	a,#0xD5
   0805 F0                 1355 	movx	@dptr,a
   0806 90 01 46           1356 	mov	dptr,#(_main_b_1_1 + 0x0046)
   0809 74 02              1357 	mov	a,#0x02
   080B F0                 1358 	movx	@dptr,a
   080C 90 01 47           1359 	mov	dptr,#(_main_b_1_1 + 0x0047)
   080F 74 10              1360 	mov	a,#0x10
   0811 F0                 1361 	movx	@dptr,a
   0812 90 01 48           1362 	mov	dptr,#(_main_b_1_1 + 0x0048)
   0815 74 15              1363 	mov	a,#0x15
   0817 F0                 1364 	movx	@dptr,a
   0818 90 01 49           1365 	mov	dptr,#(_main_b_1_1 + 0x0049)
   081B 74 87              1366 	mov	a,#0x87
   081D F0                 1367 	movx	@dptr,a
   081E 90 01 4A           1368 	mov	dptr,#(_main_b_1_1 + 0x004a)
   0821 74 58              1369 	mov	a,#0x58
   0823 F0                 1370 	movx	@dptr,a
   0824 90 01 4B           1371 	mov	dptr,#(_main_b_1_1 + 0x004b)
   0827 74 08              1372 	mov	a,#0x08
   0829 F0                 1373 	movx	@dptr,a
   082A 90 01 4C           1374 	mov	dptr,#(_main_b_1_1 + 0x004c)
   082D 74 CC              1375 	mov	a,#0xCC
   082F F0                 1376 	movx	@dptr,a
   0830 90 01 4D           1377 	mov	dptr,#(_main_b_1_1 + 0x004d)
   0833 74 9A              1378 	mov	a,#0x9A
   0835 F0                 1379 	movx	@dptr,a
   0836 90 01 4E           1380 	mov	dptr,#(_main_b_1_1 + 0x004e)
   0839 74 42              1381 	mov	a,#0x42
   083B F0                 1382 	movx	@dptr,a
   083C 90 01 4F           1383 	mov	dptr,#(_main_b_1_1 + 0x004f)
   083F 74 BD              1384 	mov	a,#0xBD
   0841 F0                 1385 	movx	@dptr,a
   0842 90 01 50           1386 	mov	dptr,#(_main_b_1_1 + 0x0050)
   0845 74 02              1387 	mov	a,#0x02
   0847 F0                 1388 	movx	@dptr,a
   0848 90 01 51           1389 	mov	dptr,#(_main_b_1_1 + 0x0051)
   084B 74 97              1390 	mov	a,#0x97
   084D F0                 1391 	movx	@dptr,a
   084E 90 01 52           1392 	mov	dptr,#(_main_b_1_1 + 0x0052)
   0851 74 CE              1393 	mov	a,#0xCE
   0853 F0                 1394 	movx	@dptr,a
   0854 90 01 53           1395 	mov	dptr,#(_main_b_1_1 + 0x0053)
   0857 74 2B              1396 	mov	a,#0x2B
   0859 F0                 1397 	movx	@dptr,a
   085A 90 01 54           1398 	mov	dptr,#(_main_b_1_1 + 0x0054)
   085D 74 39              1399 	mov	a,#0x39
   085F F0                 1400 	movx	@dptr,a
   0860 90 01 55           1401 	mov	dptr,#(_main_b_1_1 + 0x0055)
   0863 74 38              1402 	mov	a,#0x38
   0865 F0                 1403 	movx	@dptr,a
   0866 90 01 56           1404 	mov	dptr,#(_main_b_1_1 + 0x0056)
   0869 74 99              1405 	mov	a,#0x99
   086B F0                 1406 	movx	@dptr,a
   086C 90 01 57           1407 	mov	dptr,#(_main_b_1_1 + 0x0057)
   086F 74 AC              1408 	mov	a,#0xAC
   0871 F0                 1409 	movx	@dptr,a
   0872 90 01 58           1410 	mov	dptr,#(_main_b_1_1 + 0x0058)
   0875 74 81              1411 	mov	a,#0x81
   0877 F0                 1412 	movx	@dptr,a
   0878 90 01 59           1413 	mov	dptr,#(_main_b_1_1 + 0x0059)
   087B 74 BB              1414 	mov	a,#0xBB
   087D F0                 1415 	movx	@dptr,a
   087E 90 01 5A           1416 	mov	dptr,#(_main_b_1_1 + 0x005a)
   0881 74 C3              1417 	mov	a,#0xC3
   0883 F0                 1418 	movx	@dptr,a
   0884 90 01 5B           1419 	mov	dptr,#(_main_b_1_1 + 0x005b)
   0887 74 FF              1420 	mov	a,#0xFF
   0889 F0                 1421 	movx	@dptr,a
   088A 90 01 5C           1422 	mov	dptr,#(_main_b_1_1 + 0x005c)
   088D 74 BC              1423 	mov	a,#0xBC
   088F F0                 1424 	movx	@dptr,a
   0890 90 01 5D           1425 	mov	dptr,#(_main_b_1_1 + 0x005d)
   0893 74 C1              1426 	mov	a,#0xC1
   0895 F0                 1427 	movx	@dptr,a
   0896 90 01 5E           1428 	mov	dptr,#(_main_b_1_1 + 0x005e)
   0899 74 B8              1429 	mov	a,#0xB8
   089B F0                 1430 	movx	@dptr,a
   089C 90 01 5F           1431 	mov	dptr,#(_main_b_1_1 + 0x005f)
   089F 74 E1              1432 	mov	a,#0xE1
   08A1 F0                 1433 	movx	@dptr,a
   08A2 90 01 60           1434 	mov	dptr,#(_main_b_1_1 + 0x0060)
   08A5 74 24              1435 	mov	a,#0x24
   08A7 F0                 1436 	movx	@dptr,a
   08A8 90 01 61           1437 	mov	dptr,#(_main_b_1_1 + 0x0061)
   08AB 74 8D              1438 	mov	a,#0x8D
   08AD F0                 1439 	movx	@dptr,a
   08AE 90 01 62           1440 	mov	dptr,#(_main_b_1_1 + 0x0062)
   08B1 74 C5              1441 	mov	a,#0xC5
   08B3 F0                 1442 	movx	@dptr,a
   08B4 90 01 63           1443 	mov	dptr,#(_main_b_1_1 + 0x0063)
   08B7 74 20              1444 	mov	a,#0x20
   08B9 F0                 1445 	movx	@dptr,a
   08BA 90 01 64           1446 	mov	dptr,#(_main_b_1_1 + 0x0064)
   08BD 74 89              1447 	mov	a,#0x89
   08BF F0                 1448 	movx	@dptr,a
   08C0 90 01 65           1449 	mov	dptr,#(_main_b_1_1 + 0x0065)
   08C3 74 98              1450 	mov	a,#0x98
   08C5 F0                 1451 	movx	@dptr,a
   08C6 90 01 66           1452 	mov	dptr,#(_main_b_1_1 + 0x0066)
   08C9 74 0B              1453 	mov	a,#0x0B
   08CB F0                 1454 	movx	@dptr,a
   08CC 90 01 67           1455 	mov	dptr,#(_main_b_1_1 + 0x0067)
   08CF 74 50              1456 	mov	a,#0x50
   08D1 F0                 1457 	movx	@dptr,a
   08D2 90 01 68           1458 	mov	dptr,#(_main_b_1_1 + 0x0068)
   08D5 74 B1              1459 	mov	a,#0xB1
   08D7 F0                 1460 	movx	@dptr,a
   08D8 90 01 69           1461 	mov	dptr,#(_main_b_1_1 + 0x0069)
   08DB 74 16              1462 	mov	a,#0x16
   08DD F0                 1463 	movx	@dptr,a
   08DE 90 01 6A           1464 	mov	dptr,#(_main_b_1_1 + 0x006a)
   08E1 74 9A              1465 	mov	a,#0x9A
   08E3 F0                 1466 	movx	@dptr,a
   08E4 90 01 6B           1467 	mov	dptr,#(_main_b_1_1 + 0x006b)
   08E7 74 2D              1468 	mov	a,#0x2D
   08E9 F0                 1469 	movx	@dptr,a
   08EA 90 01 6C           1470 	mov	dptr,#(_main_b_1_1 + 0x006c)
   08ED 74 6E              1471 	mov	a,#0x6E
   08EF F0                 1472 	movx	@dptr,a
   08F0 90 01 6D           1473 	mov	dptr,#(_main_b_1_1 + 0x006d)
   08F3 74 5A              1474 	mov	a,#0x5A
   08F5 F0                 1475 	movx	@dptr,a
   08F6 90 01 6E           1476 	mov	dptr,#(_main_b_1_1 + 0x006e)
   08F9 74 7B              1477 	mov	a,#0x7B
   08FB F0                 1478 	movx	@dptr,a
   08FC 90 01 6F           1479 	mov	dptr,#(_main_b_1_1 + 0x006f)
   08FF 74 2F              1480 	mov	a,#0x2F
   0901 F0                 1481 	movx	@dptr,a
   0902 90 01 70           1482 	mov	dptr,#(_main_b_1_1 + 0x0070)
   0905 74 D4              1483 	mov	a,#0xD4
   0907 F0                 1484 	movx	@dptr,a
   0908 90 01 71           1485 	mov	dptr,#(_main_b_1_1 + 0x0071)
   090B 74 92              1486 	mov	a,#0x92
   090D F0                 1487 	movx	@dptr,a
   090E 90 01 72           1488 	mov	dptr,#(_main_b_1_1 + 0x0072)
   0911 74 A1              1489 	mov	a,#0xA1
   0913 F0                 1490 	movx	@dptr,a
   0914 90 01 73           1491 	mov	dptr,#(_main_b_1_1 + 0x0073)
   0917 74 AA              1492 	mov	a,#0xAA
   0919 F0                 1493 	movx	@dptr,a
   091A 90 01 74           1494 	mov	dptr,#(_main_b_1_1 + 0x0074)
   091D 74 A6              1495 	mov	a,#0xA6
   091F F0                 1496 	movx	@dptr,a
   0920 90 01 75           1497 	mov	dptr,#(_main_b_1_1 + 0x0075)
   0923 74 E5              1498 	mov	a,#0xE5
   0925 F0                 1499 	movx	@dptr,a
   0926 90 01 76           1500 	mov	dptr,#(_main_b_1_1 + 0x0076)
   0929 74 A6              1501 	mov	a,#0xA6
   092B F0                 1502 	movx	@dptr,a
   092C 90 01 77           1503 	mov	dptr,#(_main_b_1_1 + 0x0077)
   092F 74 D2              1504 	mov	a,#0xD2
   0931 F0                 1505 	movx	@dptr,a
   0932 90 01 78           1506 	mov	dptr,#(_main_b_1_1 + 0x0078)
   0935 74 0D              1507 	mov	a,#0x0D
   0937 F0                 1508 	movx	@dptr,a
   0938 90 01 79           1509 	mov	dptr,#(_main_b_1_1 + 0x0079)
   093B 74 0B              1510 	mov	a,#0x0B
   093D F0                 1511 	movx	@dptr,a
   093E 90 01 7A           1512 	mov	dptr,#(_main_b_1_1 + 0x007a)
   0941 74 B7              1513 	mov	a,#0xB7
   0943 F0                 1514 	movx	@dptr,a
   0944 90 01 7B           1515 	mov	dptr,#(_main_b_1_1 + 0x007b)
   0947 74 B2              1516 	mov	a,#0xB2
   0949 F0                 1517 	movx	@dptr,a
   094A 90 01 7C           1518 	mov	dptr,#(_main_b_1_1 + 0x007c)
   094D 74 25              1519 	mov	a,#0x25
   094F F0                 1520 	movx	@dptr,a
   0950 90 01 7D           1521 	mov	dptr,#(_main_b_1_1 + 0x007d)
   0953 74 23              1522 	mov	a,#0x23
   0955 F0                 1523 	movx	@dptr,a
   0956 90 01 7E           1524 	mov	dptr,#(_main_b_1_1 + 0x007e)
   0959 74 23              1525 	mov	a,#0x23
   095B F0                 1526 	movx	@dptr,a
   095C 90 01 7F           1527 	mov	dptr,#(_main_b_1_1 + 0x007f)
   095F 74 BE              1528 	mov	a,#0xBE
   0961 F0                 1529 	movx	@dptr,a
                           1530 ;	main_montgomery.c:17: __xdata __at (0x0300) unsigned char n_prime = 0xA5;
   0962 90 03 00           1531 	mov	dptr,#_main_n_prime_1_1
   0965 74 A5              1532 	mov	a,#0xA5
   0967 F0                 1533 	movx	@dptr,a
                           1534 ;	main_montgomery.c:21: startBrk=1;
   0968 90 FF FE           1535 	mov	dptr,#_startBrk
   096B 74 01              1536 	mov	a,#0x01
   096D F0                 1537 	movx	@dptr,a
                           1538 ;	main_montgomery.c:23: fips(a, b, n, n_prime, m);
   096E 75 08 00           1539 	mov	_fips_PARM_2,#_main_b_1_1
   0971 75 09 01           1540 	mov	(_fips_PARM_2 + 1),#(_main_b_1_1 >> 8)
   0974 75 0A 00           1541 	mov	(_fips_PARM_2 + 2),#0x00
   0977 75 0B 00           1542 	mov	_fips_PARM_3,#_main_n_1_1
   097A 75 0C 00           1543 	mov	(_fips_PARM_3 + 1),#(_main_n_1_1 >> 8)
   097D 75 0D 00           1544 	mov	(_fips_PARM_3 + 2),#0x00
   0980 90 03 00           1545 	mov	dptr,#_main_n_prime_1_1
   0983 E0                 1546 	movx	a,@dptr
   0984 F5 0E              1547 	mov	_fips_PARM_4,a
   0986 75 0F 00           1548 	mov	_fips_PARM_5,#_main_m_1_1
   0989 75 10 04           1549 	mov	(_fips_PARM_5 + 1),#(_main_m_1_1 >> 8)
   098C 75 11 00           1550 	mov	(_fips_PARM_5 + 2),#0x00
   098F 90 00 80           1551 	mov	dptr,#_main_a_1_1
   0992 75 F0 00           1552 	mov	b,#0x00
   0995 12 09 A2           1553 	lcall	_fips
                           1554 ;	main_montgomery.c:25: endBrk=1;
   0998 90 FF FF           1555 	mov	dptr,#_endBrk
   099B 74 01              1556 	mov	a,#0x01
   099D F0                 1557 	movx	@dptr,a
                           1558 ;	main_montgomery.c:26: return 0;
   099E 90 00 00           1559 	mov	dptr,#0x0000
   09A1 22                 1560 	ret
                           1561 ;------------------------------------------------------------
                           1562 ;Allocation info for local variables in function 'fips'
                           1563 ;------------------------------------------------------------
                           1564 ;b                         Allocated with name '_fips_PARM_2'
                           1565 ;n                         Allocated with name '_fips_PARM_3'
                           1566 ;n_prime                   Allocated with name '_fips_PARM_4'
                           1567 ;m                         Allocated with name '_fips_PARM_5'
                           1568 ;a                         Allocated with name '_fips_a_1_1'
                           1569 ;tmp                       Allocated with name '_fips_tmp_1_1'
                           1570 ;i                         Allocated with name '_fips_i_1_1'
                           1571 ;j                         Allocated with name '_fips_j_1_1'
                           1572 ;c                         Allocated with name '_fips_c_1_1'
                           1573 ;s                         Allocated with name '_fips_s_1_1'
                           1574 ;u                         Allocated to registers r5 
                           1575 ;v                         Allocated with name '_fips_v_1_1'
                           1576 ;t                         Allocated with name '_fips_t_1_1'
                           1577 ;sloc0                     Allocated with name '_fips_sloc0_1_0'
                           1578 ;sloc1                     Allocated with name '_fips_sloc1_1_0'
                           1579 ;sloc2                     Allocated with name '_fips_sloc2_1_0'
                           1580 ;sloc3                     Allocated with name '_fips_sloc3_1_0'
                           1581 ;sloc4                     Allocated with name '_fips_sloc4_1_0'
                           1582 ;sloc5                     Allocated with name '_fips_sloc5_1_0'
                           1583 ;result                    Allocated with name '_fips_result_1_1'
                           1584 ;------------------------------------------------------------
                           1585 ;	main_montgomery.c:29: void fips(unsigned char *a, unsigned char *b, unsigned char *n, unsigned char n_prime, unsigned char *m) {
                           1586 ;	-----------------------------------------
                           1587 ;	 function fips
                           1588 ;	-----------------------------------------
   09A2                    1589 _fips:
   09A2 85 82 12           1590 	mov	_fips_a_1_1,dpl
   09A5 85 83 13           1591 	mov	(_fips_a_1_1 + 1),dph
   09A8 85 F0 14           1592 	mov	(_fips_a_1_1 + 2),b
                           1593 ;	main_montgomery.c:37: signed   char  u    = 0;
   09AB 7D 00              1594 	mov	r5,#0x00
                           1595 ;	main_montgomery.c:40: unsigned char  t[3] = {0, 0, 0};
   09AD 75 1E 00           1596 	mov	_fips_t_1_1,#0x00
   09B0 75 1F 00           1597 	mov	(_fips_t_1_1 + 0x0001),#0x00
   09B3 75 20 00           1598 	mov	(_fips_t_1_1 + 0x0002),#0x00
                           1599 ;	main_montgomery.c:44: for (i = 0; i < SIZE; i++) {
   09B6 85 08 21           1600 	mov	_fips_sloc0_1_0,_fips_PARM_2
   09B9 85 09 22           1601 	mov	(_fips_sloc0_1_0 + 1),(_fips_PARM_2 + 1)
   09BC 85 0A 23           1602 	mov	(_fips_sloc0_1_0 + 2),(_fips_PARM_2 + 2)
   09BF 85 0B 24           1603 	mov	_fips_sloc1_1_0,_fips_PARM_3
   09C2 85 0C 25           1604 	mov	(_fips_sloc1_1_0 + 1),(_fips_PARM_3 + 1)
   09C5 85 0D 26           1605 	mov	(_fips_sloc1_1_0 + 2),(_fips_PARM_3 + 2)
   09C8 E4                 1606 	clr	a
   09C9 F5 17              1607 	mov	_fips_i_1_1,a
   09CB F5 18              1608 	mov	(_fips_i_1_1 + 1),a
   09CD                    1609 00107$:
   09CD C3                 1610 	clr	c
   09CE E5 17              1611 	mov	a,_fips_i_1_1
   09D0 94 80              1612 	subb	a,#0x80
   09D2 E5 18              1613 	mov	a,(_fips_i_1_1 + 1)
   09D4 94 00              1614 	subb	a,#0x00
   09D6 40 03              1615 	jc	00145$
   09D8 02 0B A1           1616 	ljmp	00110$
   09DB                    1617 00145$:
                           1618 ;	main_montgomery.c:45: for (j = 0; j < i; j++) {
   09DB E4                 1619 	clr	a
   09DC F5 19              1620 	mov	_fips_j_1_1,a
   09DE F5 1A              1621 	mov	(_fips_j_1_1 + 1),a
   09E0                    1622 00103$:
   09E0 C3                 1623 	clr	c
   09E1 E5 19              1624 	mov	a,_fips_j_1_1
   09E3 95 17              1625 	subb	a,_fips_i_1_1
   09E5 E5 1A              1626 	mov	a,(_fips_j_1_1 + 1)
   09E7 95 18              1627 	subb	a,(_fips_i_1_1 + 1)
   09E9 40 03              1628 	jc	00146$
   09EB 02 0A C7           1629 	ljmp	00106$
   09EE                    1630 00146$:
                           1631 ;	main_montgomery.c:46: tmp = t[0] + a[j]*b[i-j];
   09EE C0 05              1632 	push	ar5
   09F0 85 1E 28           1633 	mov	_fips_sloc3_1_0,_fips_t_1_1
   09F3 75 29 00           1634 	mov	(_fips_sloc3_1_0 + 1),#0x00
   09F6 E5 19              1635 	mov	a,_fips_j_1_1
   09F8 25 12              1636 	add	a,_fips_a_1_1
   09FA FF                 1637 	mov	r7,a
   09FB E5 1A              1638 	mov	a,(_fips_j_1_1 + 1)
   09FD 35 13              1639 	addc	a,(_fips_a_1_1 + 1)
   09FF FA                 1640 	mov	r2,a
   0A00 AB 14              1641 	mov	r3,(_fips_a_1_1 + 2)
   0A02 8F 82              1642 	mov	dpl,r7
   0A04 8A 83              1643 	mov	dph,r2
   0A06 8B F0              1644 	mov	b,r3
   0A08 12 0D DB           1645 	lcall	__gptrget
   0A0B F5 27              1646 	mov	_fips_sloc2_1_0,a
   0A0D E5 17              1647 	mov	a,_fips_i_1_1
   0A0F C3                 1648 	clr	c
   0A10 95 19              1649 	subb	a,_fips_j_1_1
   0A12 FA                 1650 	mov	r2,a
   0A13 E5 18              1651 	mov	a,(_fips_i_1_1 + 1)
   0A15 95 1A              1652 	subb	a,(_fips_j_1_1 + 1)
   0A17 FB                 1653 	mov	r3,a
   0A18 EA                 1654 	mov	a,r2
   0A19 25 21              1655 	add	a,_fips_sloc0_1_0
   0A1B FD                 1656 	mov	r5,a
   0A1C EB                 1657 	mov	a,r3
   0A1D 35 22              1658 	addc	a,(_fips_sloc0_1_0 + 1)
   0A1F FF                 1659 	mov	r7,a
   0A20 AC 23              1660 	mov	r4,(_fips_sloc0_1_0 + 2)
   0A22 8D 82              1661 	mov	dpl,r5
   0A24 8F 83              1662 	mov	dph,r7
   0A26 8C F0              1663 	mov	b,r4
   0A28 12 0D DB           1664 	lcall	__gptrget
   0A2B 85 27 F0           1665 	mov	b,_fips_sloc2_1_0
   0A2E A4                 1666 	mul	ab
   0A2F 25 28              1667 	add	a,_fips_sloc3_1_0
   0A31 F5 15              1668 	mov	_fips_tmp_1_1,a
   0A33 E5 29              1669 	mov	a,(_fips_sloc3_1_0 + 1)
   0A35 35 F0              1670 	addc	a,b
   0A37 F5 16              1671 	mov	(_fips_tmp_1_1 + 1),a
                           1672 ;	main_montgomery.c:47: s = tmp;
   0A39 85 15 1C           1673 	mov	_fips_s_1_1,_fips_tmp_1_1
                           1674 ;	main_montgomery.c:48: c = tmp >> 8;
   0A3C 85 16 1B           1675 	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
                           1676 ;	main_montgomery.c:51: tmp = t[1] + c;
   0A3F AC 1F              1677 	mov	r4,(_fips_t_1_1 + 0x0001)
   0A41 7D 00              1678 	mov	r5,#0x00
   0A43 AE 1B              1679 	mov	r6,_fips_c_1_1
   0A45 7F 00              1680 	mov	r7,#0x00
   0A47 EE                 1681 	mov	a,r6
   0A48 2C                 1682 	add	a,r4
   0A49 F5 15              1683 	mov	_fips_tmp_1_1,a
   0A4B EF                 1684 	mov	a,r7
   0A4C 3D                 1685 	addc	a,r5
   0A4D F5 16              1686 	mov	(_fips_tmp_1_1 + 1),a
                           1687 ;	main_montgomery.c:52: t[1] = tmp;
   0A4F AC 15              1688 	mov	r4,_fips_tmp_1_1
   0A51 8C 1F              1689 	mov	(_fips_t_1_1 + 0x0001),r4
                           1690 ;	main_montgomery.c:53: t[2] = t[2] + (tmp >> 8);
   0A53 E5 16              1691 	mov	a,(_fips_tmp_1_1 + 1)
   0A55 25 20              1692 	add	a,(_fips_t_1_1 + 0x0002)
   0A57 F5 27              1693 	mov	_fips_sloc2_1_0,a
   0A59 85 27 20           1694 	mov	(_fips_t_1_1 + 0x0002),_fips_sloc2_1_0
                           1695 ;	main_montgomery.c:55: tmp = s + m[j]*n[i-j];
   0A5C 85 1C 28           1696 	mov	_fips_sloc3_1_0,_fips_s_1_1
   0A5F 75 29 00           1697 	mov	(_fips_sloc3_1_0 + 1),#0x00
   0A62 E5 19              1698 	mov	a,_fips_j_1_1
   0A64 25 0F              1699 	add	a,_fips_PARM_5
   0A66 FE                 1700 	mov	r6,a
   0A67 E5 1A              1701 	mov	a,(_fips_j_1_1 + 1)
   0A69 35 10              1702 	addc	a,(_fips_PARM_5 + 1)
   0A6B FF                 1703 	mov	r7,a
   0A6C AD 11              1704 	mov	r5,(_fips_PARM_5 + 2)
   0A6E 8E 82              1705 	mov	dpl,r6
   0A70 8F 83              1706 	mov	dph,r7
   0A72 8D F0              1707 	mov	b,r5
   0A74 12 0D DB           1708 	lcall	__gptrget
   0A77 FE                 1709 	mov	r6,a
   0A78 EA                 1710 	mov	a,r2
   0A79 25 24              1711 	add	a,_fips_sloc1_1_0
   0A7B FA                 1712 	mov	r2,a
   0A7C EB                 1713 	mov	a,r3
   0A7D 35 25              1714 	addc	a,(_fips_sloc1_1_0 + 1)
   0A7F FB                 1715 	mov	r3,a
   0A80 AD 26              1716 	mov	r5,(_fips_sloc1_1_0 + 2)
   0A82 8A 82              1717 	mov	dpl,r2
   0A84 8B 83              1718 	mov	dph,r3
   0A86 8D F0              1719 	mov	b,r5
   0A88 12 0D DB           1720 	lcall	__gptrget
   0A8B 8E F0              1721 	mov	b,r6
   0A8D A4                 1722 	mul	ab
   0A8E 25 28              1723 	add	a,_fips_sloc3_1_0
   0A90 F5 15              1724 	mov	_fips_tmp_1_1,a
   0A92 E5 29              1725 	mov	a,(_fips_sloc3_1_0 + 1)
   0A94 35 F0              1726 	addc	a,b
   0A96 F5 16              1727 	mov	(_fips_tmp_1_1 + 1),a
                           1728 ;	main_montgomery.c:56: s = tmp;
   0A98 85 15 1C           1729 	mov	_fips_s_1_1,_fips_tmp_1_1
                           1730 ;	main_montgomery.c:57: c = tmp >> 8;
   0A9B 85 16 1B           1731 	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
                           1732 ;	main_montgomery.c:59: t[0] = s;
   0A9E 85 1C 1E           1733 	mov	_fips_t_1_1,_fips_s_1_1
                           1734 ;	main_montgomery.c:62: tmp = t[1] + c;
   0AA1 7A 00              1735 	mov	r2,#0x00
   0AA3 AB 1B              1736 	mov	r3,_fips_c_1_1
   0AA5 7D 00              1737 	mov	r5,#0x00
   0AA7 EB                 1738 	mov	a,r3
   0AA8 2C                 1739 	add	a,r4
   0AA9 F5 15              1740 	mov	_fips_tmp_1_1,a
   0AAB ED                 1741 	mov	a,r5
   0AAC 3A                 1742 	addc	a,r2
   0AAD F5 16              1743 	mov	(_fips_tmp_1_1 + 1),a
                           1744 ;	main_montgomery.c:63: t[1] = tmp;
   0AAF AA 15              1745 	mov	r2,_fips_tmp_1_1
   0AB1 8A 1F              1746 	mov	(_fips_t_1_1 + 0x0001),r2
                           1747 ;	main_montgomery.c:64: t[2] = t[2] + (tmp >> 8);
   0AB3 E5 16              1748 	mov	a,(_fips_tmp_1_1 + 1)
   0AB5 FA                 1749 	mov	r2,a
   0AB6 25 27              1750 	add	a,_fips_sloc2_1_0
   0AB8 F5 20              1751 	mov	(_fips_t_1_1 + 0x0002),a
                           1752 ;	main_montgomery.c:45: for (j = 0; j < i; j++) {
   0ABA 05 19              1753 	inc	_fips_j_1_1
   0ABC E4                 1754 	clr	a
   0ABD B5 19 02           1755 	cjne	a,_fips_j_1_1,00147$
   0AC0 05 1A              1756 	inc	(_fips_j_1_1 + 1)
   0AC2                    1757 00147$:
   0AC2 D0 05              1758 	pop	ar5
   0AC4 02 09 E0           1759 	ljmp	00103$
   0AC7                    1760 00106$:
                           1761 ;	main_montgomery.c:67: tmp = t[0] + a[i]*b[0];
   0AC7 C0 05              1762 	push	ar5
   0AC9 AA 1E              1763 	mov	r2,_fips_t_1_1
   0ACB 7B 00              1764 	mov	r3,#0x00
   0ACD E5 17              1765 	mov	a,_fips_i_1_1
   0ACF 25 12              1766 	add	a,_fips_a_1_1
   0AD1 FC                 1767 	mov	r4,a
   0AD2 E5 18              1768 	mov	a,(_fips_i_1_1 + 1)
   0AD4 35 13              1769 	addc	a,(_fips_a_1_1 + 1)
   0AD6 FE                 1770 	mov	r6,a
   0AD7 AF 14              1771 	mov	r7,(_fips_a_1_1 + 2)
   0AD9 8C 82              1772 	mov	dpl,r4
   0ADB 8E 83              1773 	mov	dph,r6
   0ADD 8F F0              1774 	mov	b,r7
   0ADF 12 0D DB           1775 	lcall	__gptrget
   0AE2 FC                 1776 	mov	r4,a
   0AE3 85 21 82           1777 	mov	dpl,_fips_sloc0_1_0
   0AE6 85 22 83           1778 	mov	dph,(_fips_sloc0_1_0 + 1)
   0AE9 85 23 F0           1779 	mov	b,(_fips_sloc0_1_0 + 2)
   0AEC 12 0D DB           1780 	lcall	__gptrget
   0AEF 8C F0              1781 	mov	b,r4
   0AF1 A4                 1782 	mul	ab
   0AF2 2A                 1783 	add	a,r2
   0AF3 F5 15              1784 	mov	_fips_tmp_1_1,a
   0AF5 EB                 1785 	mov	a,r3
   0AF6 35 F0              1786 	addc	a,b
   0AF8 F5 16              1787 	mov	(_fips_tmp_1_1 + 1),a
                           1788 ;	main_montgomery.c:68: s = tmp;
   0AFA 85 15 1C           1789 	mov	_fips_s_1_1,_fips_tmp_1_1
                           1790 ;	main_montgomery.c:69: c = tmp >> 8;
   0AFD 85 16 1B           1791 	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
                           1792 ;	main_montgomery.c:72: tmp = t[1] + c;
   0B00 AA 1F              1793 	mov	r2,(_fips_t_1_1 + 0x0001)
   0B02 7B 00              1794 	mov	r3,#0x00
   0B04 AC 1B              1795 	mov	r4,_fips_c_1_1
   0B06 7E 00              1796 	mov	r6,#0x00
   0B08 EC                 1797 	mov	a,r4
   0B09 2A                 1798 	add	a,r2
   0B0A F5 15              1799 	mov	_fips_tmp_1_1,a
   0B0C EE                 1800 	mov	a,r6
   0B0D 3B                 1801 	addc	a,r3
   0B0E F5 16              1802 	mov	(_fips_tmp_1_1 + 1),a
                           1803 ;	main_montgomery.c:73: t[1] = tmp;
   0B10 AA 15              1804 	mov	r2,_fips_tmp_1_1
   0B12 8A 1F              1805 	mov	(_fips_t_1_1 + 0x0001),r2
                           1806 ;	main_montgomery.c:74: t[2] = t[2] + (tmp >> 8);
   0B14 E5 16              1807 	mov	a,(_fips_tmp_1_1 + 1)
   0B16 25 20              1808 	add	a,(_fips_t_1_1 + 0x0002)
   0B18 FB                 1809 	mov	r3,a
   0B19 8B 20              1810 	mov	(_fips_t_1_1 + 0x0002),r3
                           1811 ;	main_montgomery.c:76: m[i] = (s*n_prime)%256;
   0B1B E5 17              1812 	mov	a,_fips_i_1_1
   0B1D 25 0F              1813 	add	a,_fips_PARM_5
   0B1F F5 2A              1814 	mov	_fips_sloc4_1_0,a
   0B21 E5 18              1815 	mov	a,(_fips_i_1_1 + 1)
   0B23 35 10              1816 	addc	a,(_fips_PARM_5 + 1)
   0B25 F5 2B              1817 	mov	(_fips_sloc4_1_0 + 1),a
   0B27 85 11 2C           1818 	mov	(_fips_sloc4_1_0 + 2),(_fips_PARM_5 + 2)
   0B2A 85 1C F0           1819 	mov	b,_fips_s_1_1
   0B2D E5 0E              1820 	mov	a,_fips_PARM_4
   0B2F A4                 1821 	mul	ab
   0B30 F5 82              1822 	mov	dpl,a
   0B32 85 F0 83           1823 	mov	dph,b
   0B35 75 2F 00           1824 	mov	__modsint_PARM_2,#0x00
   0B38 75 30 01           1825 	mov	(__modsint_PARM_2 + 1),#0x01
   0B3B C0 02              1826 	push	ar2
   0B3D C0 03              1827 	push	ar3
   0B3F 12 0D F7           1828 	lcall	__modsint
   0B42 AD 82              1829 	mov	r5,dpl
   0B44 D0 03              1830 	pop	ar3
   0B46 D0 02              1831 	pop	ar2
   0B48 85 2A 82           1832 	mov	dpl,_fips_sloc4_1_0
   0B4B 85 2B 83           1833 	mov	dph,(_fips_sloc4_1_0 + 1)
   0B4E 85 2C F0           1834 	mov	b,(_fips_sloc4_1_0 + 2)
   0B51 ED                 1835 	mov	a,r5
   0B52 12 0D 75           1836 	lcall	__gptrput
                           1837 ;	main_montgomery.c:78: tmp = s + m[i]*n[0];
   0B55 AC 1C              1838 	mov	r4,_fips_s_1_1
   0B57 7E 00              1839 	mov	r6,#0x00
   0B59 85 24 82           1840 	mov	dpl,_fips_sloc1_1_0
   0B5C 85 25 83           1841 	mov	dph,(_fips_sloc1_1_0 + 1)
   0B5F 85 26 F0           1842 	mov	b,(_fips_sloc1_1_0 + 2)
   0B62 12 0D DB           1843 	lcall	__gptrget
   0B65 FF                 1844 	mov	r7,a
   0B66 8D F0              1845 	mov	b,r5
   0B68 A4                 1846 	mul	ab
   0B69 2C                 1847 	add	a,r4
   0B6A F5 15              1848 	mov	_fips_tmp_1_1,a
   0B6C EE                 1849 	mov	a,r6
   0B6D 35 F0              1850 	addc	a,b
   0B6F F5 16              1851 	mov	(_fips_tmp_1_1 + 1),a
                           1852 ;	main_montgomery.c:80: c = tmp >> 8;
   0B71 85 16 1B           1853 	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
                           1854 ;	main_montgomery.c:83: tmp = t[1] + c;
   0B74 7C 00              1855 	mov	r4,#0x00
   0B76 AD 1B              1856 	mov	r5,_fips_c_1_1
   0B78 7E 00              1857 	mov	r6,#0x00
   0B7A ED                 1858 	mov	a,r5
   0B7B 2A                 1859 	add	a,r2
   0B7C F5 15              1860 	mov	_fips_tmp_1_1,a
   0B7E EE                 1861 	mov	a,r6
   0B7F 3C                 1862 	addc	a,r4
   0B80 F5 16              1863 	mov	(_fips_tmp_1_1 + 1),a
                           1864 ;	main_montgomery.c:84: t[1] = tmp;
   0B82 AA 15              1865 	mov	r2,_fips_tmp_1_1
   0B84 8A 1F              1866 	mov	(_fips_t_1_1 + 0x0001),r2
                           1867 ;	main_montgomery.c:85: t[2] = t[2] + (tmp >> 8);
   0B86 E5 16              1868 	mov	a,(_fips_tmp_1_1 + 1)
   0B88 FC                 1869 	mov	r4,a
   0B89 2B                 1870 	add	a,r3
   0B8A FB                 1871 	mov	r3,a
   0B8B 8B 20              1872 	mov	(_fips_t_1_1 + 0x0002),r3
                           1873 ;	main_montgomery.c:87: t[0] = t[1];
   0B8D 8A 1E              1874 	mov	_fips_t_1_1,r2
                           1875 ;	main_montgomery.c:88: t[1] = t[2];
   0B8F 8B 1F              1876 	mov	(_fips_t_1_1 + 0x0001),r3
                           1877 ;	main_montgomery.c:89: t[2] = 0;
   0B91 75 20 00           1878 	mov	(_fips_t_1_1 + 0x0002),#0x00
                           1879 ;	main_montgomery.c:44: for (i = 0; i < SIZE; i++) {
   0B94 05 17              1880 	inc	_fips_i_1_1
   0B96 E4                 1881 	clr	a
   0B97 B5 17 02           1882 	cjne	a,_fips_i_1_1,00148$
   0B9A 05 18              1883 	inc	(_fips_i_1_1 + 1)
   0B9C                    1884 00148$:
   0B9C D0 05              1885 	pop	ar5
   0B9E 02 09 CD           1886 	ljmp	00107$
   0BA1                    1887 00110$:
                           1888 ;	main_montgomery.c:92: for (i = SIZE; i < 2*SIZE; i++) {
   0BA1 75 17 80           1889 	mov	_fips_i_1_1,#0x80
   0BA4 E4                 1890 	clr	a
   0BA5 F5 18              1891 	mov	(_fips_i_1_1 + 1),a
   0BA7                    1892 00115$:
   0BA7 74 FF              1893 	mov	a,#0x100 - 0x01
   0BA9 25 18              1894 	add	a,(_fips_i_1_1 + 1)
   0BAB 50 03              1895 	jnc	00149$
   0BAD 02 0C D4           1896 	ljmp	00118$
   0BB0                    1897 00149$:
                           1898 ;	main_montgomery.c:93: for (j = i-SIZE+1; j < SIZE; j++) {
   0BB0 74 81              1899 	mov	a,#0x81
   0BB2 25 17              1900 	add	a,_fips_i_1_1
   0BB4 FC                 1901 	mov	r4,a
   0BB5 74 FF              1902 	mov	a,#0xFF
   0BB7 35 18              1903 	addc	a,(_fips_i_1_1 + 1)
   0BB9 FE                 1904 	mov	r6,a
   0BBA                    1905 00111$:
   0BBA C3                 1906 	clr	c
   0BBB EC                 1907 	mov	a,r4
   0BBC 94 80              1908 	subb	a,#0x80
   0BBE EE                 1909 	mov	a,r6
   0BBF 94 00              1910 	subb	a,#0x00
   0BC1 40 03              1911 	jc	00150$
   0BC3 02 0C 9E           1912 	ljmp	00114$
   0BC6                    1913 00150$:
                           1914 ;	main_montgomery.c:94: tmp = t[0] + a[j]*b[i-j];
   0BC6 C0 05              1915 	push	ar5
   0BC8 85 1E 2A           1916 	mov	_fips_sloc4_1_0,_fips_t_1_1
   0BCB 75 2B 00           1917 	mov	(_fips_sloc4_1_0 + 1),#0x00
   0BCE EC                 1918 	mov	a,r4
   0BCF 25 12              1919 	add	a,_fips_a_1_1
   0BD1 FB                 1920 	mov	r3,a
   0BD2 EE                 1921 	mov	a,r6
   0BD3 35 13              1922 	addc	a,(_fips_a_1_1 + 1)
   0BD5 FD                 1923 	mov	r5,a
   0BD6 AA 14              1924 	mov	r2,(_fips_a_1_1 + 2)
   0BD8 8B 82              1925 	mov	dpl,r3
   0BDA 8D 83              1926 	mov	dph,r5
   0BDC 8A F0              1927 	mov	b,r2
   0BDE 12 0D DB           1928 	lcall	__gptrget
   0BE1 F5 28              1929 	mov	_fips_sloc3_1_0,a
   0BE3 E5 17              1930 	mov	a,_fips_i_1_1
   0BE5 C3                 1931 	clr	c
   0BE6 9C                 1932 	subb	a,r4
   0BE7 F5 2D              1933 	mov	_fips_sloc5_1_0,a
   0BE9 E5 18              1934 	mov	a,(_fips_i_1_1 + 1)
   0BEB 9E                 1935 	subb	a,r6
   0BEC F5 2E              1936 	mov	(_fips_sloc5_1_0 + 1),a
   0BEE E5 2D              1937 	mov	a,_fips_sloc5_1_0
   0BF0 25 21              1938 	add	a,_fips_sloc0_1_0
   0BF2 FF                 1939 	mov	r7,a
   0BF3 E5 2E              1940 	mov	a,(_fips_sloc5_1_0 + 1)
   0BF5 35 22              1941 	addc	a,(_fips_sloc0_1_0 + 1)
   0BF7 FB                 1942 	mov	r3,a
   0BF8 AA 23              1943 	mov	r2,(_fips_sloc0_1_0 + 2)
   0BFA 8F 82              1944 	mov	dpl,r7
   0BFC 8B 83              1945 	mov	dph,r3
   0BFE 8A F0              1946 	mov	b,r2
   0C00 12 0D DB           1947 	lcall	__gptrget
   0C03 85 28 F0           1948 	mov	b,_fips_sloc3_1_0
   0C06 A4                 1949 	mul	ab
   0C07 25 2A              1950 	add	a,_fips_sloc4_1_0
   0C09 F5 15              1951 	mov	_fips_tmp_1_1,a
   0C0B E5 2B              1952 	mov	a,(_fips_sloc4_1_0 + 1)
   0C0D 35 F0              1953 	addc	a,b
   0C0F F5 16              1954 	mov	(_fips_tmp_1_1 + 1),a
                           1955 ;	main_montgomery.c:95: s = tmp;
   0C11 85 15 1C           1956 	mov	_fips_s_1_1,_fips_tmp_1_1
                           1957 ;	main_montgomery.c:96: c = tmp >> 8;
   0C14 85 16 1B           1958 	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
                           1959 ;	main_montgomery.c:99: tmp = t[1] + c;
   0C17 AA 1F              1960 	mov	r2,(_fips_t_1_1 + 0x0001)
   0C19 7B 00              1961 	mov	r3,#0x00
   0C1B AD 1B              1962 	mov	r5,_fips_c_1_1
   0C1D 7F 00              1963 	mov	r7,#0x00
   0C1F ED                 1964 	mov	a,r5
   0C20 2A                 1965 	add	a,r2
   0C21 F5 15              1966 	mov	_fips_tmp_1_1,a
   0C23 EF                 1967 	mov	a,r7
   0C24 3B                 1968 	addc	a,r3
   0C25 F5 16              1969 	mov	(_fips_tmp_1_1 + 1),a
                           1970 ;	main_montgomery.c:100: t[1] = tmp;
   0C27 AA 15              1971 	mov	r2,_fips_tmp_1_1
   0C29 8A 1F              1972 	mov	(_fips_t_1_1 + 0x0001),r2
                           1973 ;	main_montgomery.c:101: t[2] = t[2] + (tmp >> 8);
   0C2B E5 16              1974 	mov	a,(_fips_tmp_1_1 + 1)
   0C2D 25 20              1975 	add	a,(_fips_t_1_1 + 0x0002)
   0C2F F5 28              1976 	mov	_fips_sloc3_1_0,a
   0C31 85 28 20           1977 	mov	(_fips_t_1_1 + 0x0002),_fips_sloc3_1_0
                           1978 ;	main_montgomery.c:103: tmp = s + m[j]*n[i-j];
   0C34 85 1C 2A           1979 	mov	_fips_sloc4_1_0,_fips_s_1_1
   0C37 75 2B 00           1980 	mov	(_fips_sloc4_1_0 + 1),#0x00
   0C3A EC                 1981 	mov	a,r4
   0C3B 25 0F              1982 	add	a,_fips_PARM_5
   0C3D FD                 1983 	mov	r5,a
   0C3E EE                 1984 	mov	a,r6
   0C3F 35 10              1985 	addc	a,(_fips_PARM_5 + 1)
   0C41 FF                 1986 	mov	r7,a
   0C42 AB 11              1987 	mov	r3,(_fips_PARM_5 + 2)
   0C44 8D 82              1988 	mov	dpl,r5
   0C46 8F 83              1989 	mov	dph,r7
   0C48 8B F0              1990 	mov	b,r3
   0C4A 12 0D DB           1991 	lcall	__gptrget
   0C4D F5 27              1992 	mov	_fips_sloc2_1_0,a
   0C4F E5 2D              1993 	mov	a,_fips_sloc5_1_0
   0C51 25 24              1994 	add	a,_fips_sloc1_1_0
   0C53 FB                 1995 	mov	r3,a
   0C54 E5 2E              1996 	mov	a,(_fips_sloc5_1_0 + 1)
   0C56 35 25              1997 	addc	a,(_fips_sloc1_1_0 + 1)
   0C58 FF                 1998 	mov	r7,a
   0C59 AD 26              1999 	mov	r5,(_fips_sloc1_1_0 + 2)
   0C5B 8B 82              2000 	mov	dpl,r3
   0C5D 8F 83              2001 	mov	dph,r7
   0C5F 8D F0              2002 	mov	b,r5
   0C61 12 0D DB           2003 	lcall	__gptrget
   0C64 85 27 F0           2004 	mov	b,_fips_sloc2_1_0
   0C67 A4                 2005 	mul	ab
   0C68 25 2A              2006 	add	a,_fips_sloc4_1_0
   0C6A F5 15              2007 	mov	_fips_tmp_1_1,a
   0C6C E5 2B              2008 	mov	a,(_fips_sloc4_1_0 + 1)
   0C6E 35 F0              2009 	addc	a,b
   0C70 F5 16              2010 	mov	(_fips_tmp_1_1 + 1),a
                           2011 ;	main_montgomery.c:104: s = tmp;
   0C72 85 15 1C           2012 	mov	_fips_s_1_1,_fips_tmp_1_1
                           2013 ;	main_montgomery.c:105: c = tmp >> 8;
   0C75 85 16 1B           2014 	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
                           2015 ;	main_montgomery.c:107: t[0] = s;
   0C78 85 1C 1E           2016 	mov	_fips_t_1_1,_fips_s_1_1
                           2017 ;	main_montgomery.c:110: tmp = t[1] + c;
   0C7B 7B 00              2018 	mov	r3,#0x00
   0C7D AD 1B              2019 	mov	r5,_fips_c_1_1
   0C7F 7F 00              2020 	mov	r7,#0x00
   0C81 ED                 2021 	mov	a,r5
   0C82 2A                 2022 	add	a,r2
   0C83 F5 15              2023 	mov	_fips_tmp_1_1,a
   0C85 EF                 2024 	mov	a,r7
   0C86 3B                 2025 	addc	a,r3
   0C87 F5 16              2026 	mov	(_fips_tmp_1_1 + 1),a
                           2027 ;	main_montgomery.c:111: t[1] = tmp;
   0C89 AA 15              2028 	mov	r2,_fips_tmp_1_1
   0C8B 8A 1F              2029 	mov	(_fips_t_1_1 + 0x0001),r2
                           2030 ;	main_montgomery.c:112: t[2] = t[2] + (tmp >> 8);
   0C8D E5 16              2031 	mov	a,(_fips_tmp_1_1 + 1)
   0C8F FA                 2032 	mov	r2,a
   0C90 25 28              2033 	add	a,_fips_sloc3_1_0
   0C92 F5 20              2034 	mov	(_fips_t_1_1 + 0x0002),a
                           2035 ;	main_montgomery.c:93: for (j = i-SIZE+1; j < SIZE; j++) {
   0C94 0C                 2036 	inc	r4
   0C95 BC 00 01           2037 	cjne	r4,#0x00,00151$
   0C98 0E                 2038 	inc	r6
   0C99                    2039 00151$:
   0C99 D0 05              2040 	pop	ar5
   0C9B 02 0B BA           2041 	ljmp	00111$
   0C9E                    2042 00114$:
                           2043 ;	main_montgomery.c:115: m[i - SIZE] = t[0];
   0C9E E5 17              2044 	mov	a,_fips_i_1_1
   0CA0 24 80              2045 	add	a,#0x80
   0CA2 FA                 2046 	mov	r2,a
   0CA3 E5 18              2047 	mov	a,(_fips_i_1_1 + 1)
   0CA5 34 FF              2048 	addc	a,#0xff
   0CA7 FB                 2049 	mov	r3,a
   0CA8 EA                 2050 	mov	a,r2
   0CA9 25 0F              2051 	add	a,_fips_PARM_5
   0CAB FA                 2052 	mov	r2,a
   0CAC EB                 2053 	mov	a,r3
   0CAD 35 10              2054 	addc	a,(_fips_PARM_5 + 1)
   0CAF FB                 2055 	mov	r3,a
   0CB0 AC 11              2056 	mov	r4,(_fips_PARM_5 + 2)
   0CB2 AE 1E              2057 	mov	r6,_fips_t_1_1
   0CB4 8A 82              2058 	mov	dpl,r2
   0CB6 8B 83              2059 	mov	dph,r3
   0CB8 8C F0              2060 	mov	b,r4
   0CBA EE                 2061 	mov	a,r6
   0CBB 12 0D 75           2062 	lcall	__gptrput
                           2063 ;	main_montgomery.c:116: t[0] = t[1];
   0CBE AA 1F              2064 	mov	r2,(_fips_t_1_1 + 0x0001)
   0CC0 8A 1E              2065 	mov	_fips_t_1_1,r2
                           2066 ;	main_montgomery.c:117: t[1] = t[2];
   0CC2 AA 20              2067 	mov	r2,(_fips_t_1_1 + 0x0002)
   0CC4 8A 1F              2068 	mov	(_fips_t_1_1 + 0x0001),r2
                           2069 ;	main_montgomery.c:118: t[2] = 0;
   0CC6 75 20 00           2070 	mov	(_fips_t_1_1 + 0x0002),#0x00
                           2071 ;	main_montgomery.c:92: for (i = SIZE; i < 2*SIZE; i++) {
   0CC9 05 17              2072 	inc	_fips_i_1_1
   0CCB E4                 2073 	clr	a
   0CCC B5 17 02           2074 	cjne	a,_fips_i_1_1,00152$
   0CCF 05 18              2075 	inc	(_fips_i_1_1 + 1)
   0CD1                    2076 00152$:
   0CD1 02 0B A7           2077 	ljmp	00115$
   0CD4                    2078 00118$:
                           2079 ;	main_montgomery.c:121: v = 0;
                           2080 ;	main_montgomery.c:122: for (i = 0; i < SIZE; i++) {
   0CD4 E4                 2081 	clr	a
   0CD5 F5 1D              2082 	mov	_fips_v_1_1,a
   0CD7 F5 17              2083 	mov	_fips_i_1_1,a
   0CD9 F5 18              2084 	mov	(_fips_i_1_1 + 1),a
   0CDB                    2085 00119$:
   0CDB C3                 2086 	clr	c
   0CDC E5 17              2087 	mov	a,_fips_i_1_1
   0CDE 94 80              2088 	subb	a,#0x80
   0CE0 E5 18              2089 	mov	a,(_fips_i_1_1 + 1)
   0CE2 94 00              2090 	subb	a,#0x00
   0CE4 50 62              2091 	jnc	00122$
                           2092 ;	main_montgomery.c:123: tmp = m[i] - n[i] - v;
   0CE6 E5 17              2093 	mov	a,_fips_i_1_1
   0CE8 25 0F              2094 	add	a,_fips_PARM_5
   0CEA FE                 2095 	mov	r6,a
   0CEB E5 18              2096 	mov	a,(_fips_i_1_1 + 1)
   0CED 35 10              2097 	addc	a,(_fips_PARM_5 + 1)
   0CEF FF                 2098 	mov	r7,a
   0CF0 AA 11              2099 	mov	r2,(_fips_PARM_5 + 2)
   0CF2 8E 82              2100 	mov	dpl,r6
   0CF4 8F 83              2101 	mov	dph,r7
   0CF6 8A F0              2102 	mov	b,r2
   0CF8 12 0D DB           2103 	lcall	__gptrget
   0CFB FE                 2104 	mov	r6,a
   0CFC 7A 00              2105 	mov	r2,#0x00
   0CFE E5 17              2106 	mov	a,_fips_i_1_1
   0D00 25 24              2107 	add	a,_fips_sloc1_1_0
   0D02 FF                 2108 	mov	r7,a
   0D03 E5 18              2109 	mov	a,(_fips_i_1_1 + 1)
   0D05 35 25              2110 	addc	a,(_fips_sloc1_1_0 + 1)
   0D07 FB                 2111 	mov	r3,a
   0D08 AC 26              2112 	mov	r4,(_fips_sloc1_1_0 + 2)
   0D0A 8F 82              2113 	mov	dpl,r7
   0D0C 8B 83              2114 	mov	dph,r3
   0D0E 8C F0              2115 	mov	b,r4
   0D10 12 0D DB           2116 	lcall	__gptrget
   0D13 FF                 2117 	mov	r7,a
   0D14 7B 00              2118 	mov	r3,#0x00
   0D16 EE                 2119 	mov	a,r6
   0D17 C3                 2120 	clr	c
   0D18 9F                 2121 	subb	a,r7
   0D19 FE                 2122 	mov	r6,a
   0D1A EA                 2123 	mov	a,r2
   0D1B 9B                 2124 	subb	a,r3
   0D1C FA                 2125 	mov	r2,a
   0D1D E5 1D              2126 	mov	a,_fips_v_1_1
   0D1F FB                 2127 	mov	r3,a
   0D20 33                 2128 	rlc	a
   0D21 95 E0              2129 	subb	a,acc
   0D23 FC                 2130 	mov	r4,a
   0D24 EE                 2131 	mov	a,r6
   0D25 C3                 2132 	clr	c
   0D26 9B                 2133 	subb	a,r3
   0D27 F5 15              2134 	mov	_fips_tmp_1_1,a
   0D29 EA                 2135 	mov	a,r2
   0D2A 9C                 2136 	subb	a,r4
   0D2B F5 16              2137 	mov	(_fips_tmp_1_1 + 1),a
                           2138 ;	main_montgomery.c:124: v = tmp;
   0D2D 85 15 1D           2139 	mov	_fips_v_1_1,_fips_tmp_1_1
                           2140 ;	main_montgomery.c:125: u = tmp >> 8;
   0D30 AD 16              2141 	mov	r5,(_fips_tmp_1_1 + 1)
                           2142 ;	main_montgomery.c:127: result[i] = v;
   0D32 85 17 82           2143 	mov	dpl,_fips_i_1_1
   0D35 74 05              2144 	mov	a,#(_fips_result_1_1 >> 8)
   0D37 25 18              2145 	add	a,(_fips_i_1_1 + 1)
   0D39 F5 83              2146 	mov	dph,a
   0D3B E5 1D              2147 	mov	a,_fips_v_1_1
   0D3D F0                 2148 	movx	@dptr,a
                           2149 ;	main_montgomery.c:122: for (i = 0; i < SIZE; i++) {
   0D3E 05 17              2150 	inc	_fips_i_1_1
   0D40 E4                 2151 	clr	a
   0D41 B5 17 97           2152 	cjne	a,_fips_i_1_1,00119$
   0D44 05 18              2153 	inc	(_fips_i_1_1 + 1)
   0D46 80 93              2154 	sjmp	00119$
   0D48                    2155 00122$:
                           2156 ;	main_montgomery.c:130: tmp = m[SIZE] - u;
   0D48 74 80              2157 	mov	a,#0x80
   0D4A 25 0F              2158 	add	a,_fips_PARM_5
   0D4C FA                 2159 	mov	r2,a
   0D4D E4                 2160 	clr	a
   0D4E 35 10              2161 	addc	a,(_fips_PARM_5 + 1)
   0D50 FB                 2162 	mov	r3,a
   0D51 AC 11              2163 	mov	r4,(_fips_PARM_5 + 2)
   0D53 8A 82              2164 	mov	dpl,r2
   0D55 8B 83              2165 	mov	dph,r3
   0D57 8C F0              2166 	mov	b,r4
   0D59 12 0D DB           2167 	lcall	__gptrget
   0D5C FA                 2168 	mov	r2,a
   0D5D 7B 00              2169 	mov	r3,#0x00
   0D5F ED                 2170 	mov	a,r5
   0D60 33                 2171 	rlc	a
   0D61 95 E0              2172 	subb	a,acc
   0D63 FC                 2173 	mov	r4,a
   0D64 EA                 2174 	mov	a,r2
   0D65 C3                 2175 	clr	c
   0D66 9D                 2176 	subb	a,r5
   0D67 F5 15              2177 	mov	_fips_tmp_1_1,a
   0D69 EB                 2178 	mov	a,r3
   0D6A 9C                 2179 	subb	a,r4
   0D6B F5 16              2180 	mov	(_fips_tmp_1_1 + 1),a
                           2181 ;	main_montgomery.c:132: result[SIZE] = tmp >> 8;
   0D6D AA 16              2182 	mov	r2,(_fips_tmp_1_1 + 1)
   0D6F 90 05 80           2183 	mov	dptr,#(_fips_result_1_1 + 0x0080)
   0D72 EA                 2184 	mov	a,r2
   0D73 F0                 2185 	movx	@dptr,a
                           2186 ;	main_montgomery.c:140: return;
   0D74 22                 2187 	ret
                           2188 	.area CSEG    (CODE)
                           2189 	.area CONST   (CODE)
                           2190 	.area XINIT   (CODE)
                           2191 	.area CABS    (ABS,CODE)
