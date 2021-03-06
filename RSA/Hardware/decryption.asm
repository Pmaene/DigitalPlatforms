;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
; This file was generated Thu Dec 13 10:43:59 2012
;--------------------------------------------------------
	.module decryption
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _terminate
	.globl _montgomery_exp
	.globl _read_r
	.globl _write_data
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _dec_exp
	.globl _message
	.globl _modulus
	.globl _r2modm
	.globl _rmodm
	.globl _r
	.globl _i
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_i::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_r	=	0x5000
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
	.org 0x4101
_rmodm::
	.ds 128
	.org 0x4081
_r2modm::
	.ds 128
	.org 0x4201
_modulus::
	.ds 128
	.org 0x4000
_message::
	.ds 129
	.org 0x4181
_dec_exp::
	.ds 128
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	decryption.c:6: volatile __xdata __at (0x4101) unsigned char rmodm[SIZE] = {0xA3,0x10,0x6B,0x83,0x7C,0x40,0xBF,0xB2,0x54,0x28,0x20,0x4D,0xB2,0xD4,0xF8,0xA6,0xE5,0xB7,0x51,0xBA,0xE8,0xD1,0x95,0x9A,0xFE,0xAB,0x0A,0x48,0x23,0xA2,0x70,0xB3,0xCC,0x7B,0x8F,0x44,0xF4,0x5B,0x53,0x78,0x7D,0xE2,0xF2,0xAF,0xD2,0xBA,0x06,0x0F,0xEE,0xA4,0x37,0x06,0xE7,0x04,0x2C,0x90,0x3C,0x8B,0xFD,0x54,0xCD,0xB9,0x94,0xAD,0x64,0x8E,0x26,0xDE,0x8C,0xC5,0x33,0x92,0x24,0xEF,0x76,0x34,0xC4,0xB8,0xEC,0xF1,0x9A,0x79,0x61,0x80,0xC1,0xBC,0x6D,0x03,0x49,0x95,0x94,0xC8,0x6F,0x14,0xB0,0x16,0x14,0x63,0xD0,0x94,0xD9,0x10,0x4B,0x44,0x03,0xC2,0xCC,0x04,0x68,0x98,0x6C,0xD9,0x69,0xC7,0x1A,0x0F,0xC5,0x39,0x5C,0x6A,0x5A,0x67,0x0B,0x47,0xF4,0x77,0x1E,0x2B};
	mov	dptr,#_rmodm
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0001)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0002)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0003)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0004)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0005)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0006)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0007)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0008)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0009)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000a)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000b)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000c)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000d)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000e)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000f)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0010)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0011)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0012)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0013)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0014)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0015)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0016)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0017)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0018)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0019)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001a)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001b)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001c)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001d)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001e)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001f)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0020)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0021)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0022)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0023)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0024)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0025)
	mov	a,#0x5B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0026)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0027)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0028)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0029)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002a)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002b)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002c)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002d)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002e)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002f)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0030)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0031)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0032)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0033)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0034)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0035)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0036)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0037)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0038)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0039)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003a)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003b)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003c)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003d)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003e)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003f)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0040)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0041)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0042)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0043)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0044)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0045)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0046)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0047)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0048)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0049)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004a)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004b)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004c)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004d)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004e)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004f)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0050)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0051)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0052)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0053)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0054)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0055)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0056)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0057)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0058)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0059)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005a)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005b)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005c)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005d)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005e)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005f)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0060)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0061)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0062)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0063)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0064)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0065)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0066)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0067)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0068)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0069)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006a)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006b)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006c)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006d)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006e)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006f)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0070)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0071)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0072)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0073)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0074)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0075)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0076)
	mov	a,#0x5C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0077)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0078)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0079)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007a)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007b)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007c)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007d)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007e)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007f)
	mov	a,#0x2B
	movx	@dptr,a
;	decryption.c:7: volatile __xdata __at (0x4081) unsigned char r2modm[SIZE] = {0x4B,0x61,0xD1,0xA8,0x05,0x36,0xB5,0xE7,0xC6,0x6A,0x09,0x48,0xE1,0x09,0x9A,0x62,0x6C,0xCC,0xB9,0x82,0x01,0x88,0xED,0x37,0xC7,0xDD,0xEB,0x8C,0xC1,0xF2,0x96,0x83,0x19,0x5E,0xD1,0x3F,0xF6,0x80,0x15,0xBB,0xAC,0x60,0x27,0x80,0x83,0x3C,0x25,0x9B,0xF1,0x89,0xE3,0x78,0x10,0x3D,0x53,0x21,0x16,0x4A,0xA3,0x0C,0xAD,0x64,0xD2,0x50,0xC2,0x10,0x48,0x87,0xDA,0xC2,0xEB,0xF1,0xFC,0x8F,0xFF,0xE5,0xCA,0x4D,0xA9,0x68,0xCD,0x3A,0x7B,0x41,0x83,0x53,0x5E,0xBB,0x44,0x8D,0x9A,0x34,0x86,0xB3,0x62,0x7F,0x9D,0x96,0xB0,0xAC,0xB1,0x30,0xCD,0x25,0x60,0xB0,0x42,0xC3,0xE7,0xB0,0xED,0xDA,0xB9,0x11,0x7D,0x2C,0x27,0xF6,0x8C,0xD8,0xAA,0x3B,0xE7,0x4F,0x86,0x1F,0x96,0x2E};
	mov	dptr,#_r2modm
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0001)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0002)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0003)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0004)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0005)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0006)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0007)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0008)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0009)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000a)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000b)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000c)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000d)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000e)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000f)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0010)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0011)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0012)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0013)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0014)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0015)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0016)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0017)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0018)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0019)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001a)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001b)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001c)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001d)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001e)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001f)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0020)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0021)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0022)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0023)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0024)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0025)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0026)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0027)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0028)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0029)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002a)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002b)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002c)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002d)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002e)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002f)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0030)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0031)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0032)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0033)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0034)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0035)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0036)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0037)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0038)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0039)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003a)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003b)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003c)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003d)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003e)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003f)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0040)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0041)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0042)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0043)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0044)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0045)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0046)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0047)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0048)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0049)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004a)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004b)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004c)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004d)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004e)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004f)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0050)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0051)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0052)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0053)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0054)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0055)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0056)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0057)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0058)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0059)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005a)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005b)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005c)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005d)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005e)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005f)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0060)
	mov	a,#0x9D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0061)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0062)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0063)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0064)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0065)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0066)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0067)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0068)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0069)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006a)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006b)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006c)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006d)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006e)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006f)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0070)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0071)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0072)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0073)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0074)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0075)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0076)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0077)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0078)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0079)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007a)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007b)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007c)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007d)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007e)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007f)
	mov	a,#0x2E
	movx	@dptr,a
;	decryption.c:8: volatile __xdata __at (0x4201) unsigned char modulus[SIZE] = {0x5D,0xEF,0x94,0x7C,0x83,0xBF,0x40,0x4D,0xAB,0xD7,0xDF,0xB2,0x4D,0x2B,0x07,0x59,0x1A,0x48,0xAE,0x45,0x17,0x2E,0x6A,0x65,0x01,0x54,0xF5,0xB7,0xDC,0x5D,0x8F,0x4C,0x33,0x84,0x70,0xBB,0x0B,0xA4,0xAC,0x87,0x82,0x1D,0x0D,0x50,0x2D,0x45,0xF9,0xF0,0x11,0x5B,0xC8,0xF9,0x18,0xFB,0xD3,0x6F,0xC3,0x74,0x02,0xAB,0x32,0x46,0x6B,0x52,0x9B,0x71,0xD9,0x21,0x73,0x3A,0xCC,0x6D,0xDB,0x10,0x89,0xCB,0x3B,0x47,0x13,0x0E,0x65,0x86,0x9E,0x7F,0x3E,0x43,0x92,0xFC,0xB6,0x6A,0x6B,0x37,0x90,0xEB,0x4F,0xE9,0xEB,0x9C,0x2F,0x6B,0x26,0xEF,0xB4,0xBB,0xFC,0x3D,0x33,0xFB,0x97,0x67,0x93,0x26,0x96,0x38,0xE5,0xF0,0x3A,0xC6,0xA3,0x95,0xA5,0x98,0xF4,0xB8,0x0B,0x88,0xE1,0xD4};
	mov	dptr,#_modulus
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0001)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0002)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0003)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0004)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0005)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0006)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0007)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0008)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0009)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000a)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000b)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000c)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000d)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000e)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000f)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0010)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0011)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0012)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0013)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0014)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0015)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0016)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0017)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0018)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0019)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001a)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001b)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001c)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001d)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001e)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001f)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0020)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0021)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0022)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0023)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0024)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0025)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0026)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0027)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0028)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0029)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002a)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002b)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002c)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002d)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002e)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002f)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0030)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0031)
	mov	a,#0x5B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0032)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0033)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0034)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0035)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0036)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0037)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0038)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0039)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003a)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003b)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003c)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003d)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003e)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003f)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0040)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0041)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0042)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0043)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0044)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0045)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0046)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0047)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0048)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0049)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004a)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004b)
	mov	a,#0xCB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004c)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004d)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004e)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004f)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0050)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0051)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0052)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0053)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0054)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0055)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0056)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0057)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0058)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0059)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005a)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005b)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005c)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005d)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005e)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005f)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0060)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0061)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0062)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0063)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0064)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0065)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0066)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0067)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0068)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0069)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006a)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006b)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006c)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006d)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006e)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006f)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0070)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0071)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0072)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0073)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0074)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0075)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0076)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0077)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0078)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0079)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007a)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007b)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007c)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007d)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007e)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007f)
	mov	a,#0xD4
	movx	@dptr,a
;	decryption.c:9: volatile __xdata __at (0x4000) unsigned char message[SIZE+1] = {0xcb,0xd0,0x7a,0xfc,0x21,0x61,0x42,0x14,0x1f,0xf0,0x50,0x6b,0x46,0x15,0x8d,0x8f,0xb2,0x3b,0xeb,0xdd,0xa7,0xdc,0x0c,0x2c,0x6d,0x31,0x99,0xf9,0xc1,0xc6,0x7e,0xec,0xfe,0x13,0xae,0x24,0x61,0x91,0xb0,0xf6,0x69,0xed,0x03,0x06,0x8b,0xd1,0x7c,0x29,0x5b,0x5d,0x5c,0xad,0xb9,0xa4,0x24,0x6e,0x3a,0x34,0xf9,0xb8,0xe7,0x10,0x97,0x82,0x96,0xa5,0xce,0x2b,0x80,0x83,0x3e,0x75,0x56,0xa4,0x3e,0x3e,0xdb,0xdd,0xb0,0xdb,0xef,0x10,0x35,0x6c,0xb8,0xab,0xa4,0xe9,0x1c,0xb0,0xf5,0xb9,0xf1,0x3e,0x2b,0x0a,0xf3,0xdf,0x02,0x87,0xaf,0xa8,0xb3,0x37,0x03,0x7c,0xc1,0xc5,0x71,0x76,0x72,0x1d,0x82,0x98,0xa9,0x3e,0xc3,0xe2,0xad,0x1a,0x4e,0x43,0x79,0x7a,0xc3,0xbe,0x8a,0x6e};
	mov	dptr,#_message
	mov	a,#0xCB
	movx	@dptr,a
	mov	dptr,#(_message + 0x0001)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_message + 0x0002)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0003)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_message + 0x0004)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_message + 0x0005)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_message + 0x0006)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_message + 0x0007)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_message + 0x0008)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_message + 0x0009)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_message + 0x000a)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_message + 0x000b)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_message + 0x000c)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_message + 0x000d)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_message + 0x000e)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_message + 0x000f)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_message + 0x0010)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_message + 0x0011)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_message + 0x0012)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_message + 0x0013)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_message + 0x0014)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_message + 0x0015)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_message + 0x0016)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0017)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0018)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_message + 0x0019)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_message + 0x001a)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_message + 0x001b)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_message + 0x001c)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_message + 0x001d)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_message + 0x001e)
	mov	a,#0x7E
	movx	@dptr,a
	mov	dptr,#(_message + 0x001f)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_message + 0x0020)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_message + 0x0021)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_message + 0x0022)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_message + 0x0023)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_message + 0x0024)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_message + 0x0025)
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#(_message + 0x0026)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_message + 0x0027)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_message + 0x0028)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_message + 0x0029)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_message + 0x002a)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_message + 0x002b)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_message + 0x002c)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_message + 0x002d)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_message + 0x002e)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_message + 0x002f)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_message + 0x0030)
	mov	a,#0x5B
	movx	@dptr,a
	mov	dptr,#(_message + 0x0031)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_message + 0x0032)
	mov	a,#0x5C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0033)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_message + 0x0034)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_message + 0x0035)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_message + 0x0036)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_message + 0x0037)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0038)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0039)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_message + 0x003a)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_message + 0x003b)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_message + 0x003c)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_message + 0x003d)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_message + 0x003e)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_message + 0x003f)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_message + 0x0040)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_message + 0x0041)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_message + 0x0042)
	mov	a,#0xCE
	movx	@dptr,a
	mov	dptr,#(_message + 0x0043)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_message + 0x0044)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_message + 0x0045)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_message + 0x0046)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0047)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_message + 0x0048)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_message + 0x0049)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_message + 0x004a)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_message + 0x004b)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_message + 0x004c)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_message + 0x004d)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_message + 0x004e)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_message + 0x004f)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_message + 0x0050)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_message + 0x0051)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_message + 0x0052)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_message + 0x0053)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0054)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_message + 0x0055)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_message + 0x0056)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_message + 0x0057)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_message + 0x0058)
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0059)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_message + 0x005a)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_message + 0x005b)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_message + 0x005c)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_message + 0x005d)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_message + 0x005e)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_message + 0x005f)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0060)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_message + 0x0061)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_message + 0x0062)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_message + 0x0063)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_message + 0x0064)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_message + 0x0065)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_message + 0x0066)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_message + 0x0067)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_message + 0x0068)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_message + 0x0069)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_message + 0x006a)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_message + 0x006b)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_message + 0x006c)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_message + 0x006d)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_message + 0x006e)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_message + 0x006f)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_message + 0x0070)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_message + 0x0071)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_message + 0x0072)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_message + 0x0073)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0074)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_message + 0x0075)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_message + 0x0076)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_message + 0x0077)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0078)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0079)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_message + 0x007a)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_message + 0x007b)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_message + 0x007c)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_message + 0x007d)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_message + 0x007e)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_message + 0x007f)
	mov	a,#0x6E
	movx	@dptr,a
;	decryption.c:10: volatile __xdata __at (0x4181) unsigned char dec_exp[SIZE] = {0xA1,0x80,0x48,0x28,0xC3,0xFE,0x04,0xB3,0xF2,0xEF,0xAF,0x3E,0x55,0x46,0x4E,0xC8,0x47,0x7A,0x1C,0x83,0x74,0xD7,0x11,0xD1,0xFB,0x16,0x44,0x72,0x8C,0x4B,0xD5,0xFD,0xB9,0xFA,0x04,0xE1,0x3E,0x3A,0x16,0x04,0x55,0x41,0xD0,0x8A,0x92,0x38,0xF4,0xD4,0xAE,0x7A,0x60,0xE2,0x69,0xAA,0xA6,0x63,0xA1,0xEB,0x05,0x71,0x99,0x71,0xE3,0x67,0x2A,0x57,0xF7,0x6B,0x82,0xB3,0xF0,0x82,0x58,0x54,0xAF,0xC3,0xD1,0xEF,0x68,0x7E,0x88,0xBD,0x39,0x2B,0x2A,0x7C,0x14,0xF8,0xC7,0xD0,0xF9,0x64,0x9A,0xBA,0x6F,0x45,0x28,0x5D,0xD7,0xE2,0xC4,0x8E,0x9F,0x6F,0xA8,0x88,0xAD,0xFD,0x28,0x92,0x4F,0x63,0x41,0x70,0x22,0xAD,0xAB,0x4E,0x1D,0x63,0x89,0xCC,0x09,0x42,0xFE,0xBC,0xCF,0x3A};
	mov	dptr,#_dec_exp
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0001)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0002)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0003)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0004)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0005)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0006)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0007)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0008)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0009)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x000a)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x000b)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x000c)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x000d)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x000e)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x000f)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0010)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0011)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0012)
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0013)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0014)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0015)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0016)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0017)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0018)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0019)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x001a)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x001b)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x001c)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x001d)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x001e)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x001f)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0020)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0021)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0022)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0023)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0024)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0025)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0026)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0027)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0028)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0029)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x002a)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x002b)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x002c)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x002d)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x002e)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x002f)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0030)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0031)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0032)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0033)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0034)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0035)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0036)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0037)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0038)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0039)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x003a)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x003b)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x003c)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x003d)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x003e)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x003f)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0040)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0041)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0042)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0043)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0044)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0045)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0046)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0047)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0048)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0049)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x004a)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x004b)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x004c)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x004d)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x004e)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x004f)
	mov	a,#0x7E
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0050)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0051)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0052)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0053)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0054)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0055)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0056)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0057)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0058)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0059)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x005a)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x005b)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x005c)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x005d)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x005e)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x005f)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0060)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0061)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0062)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0063)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0064)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0065)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0066)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0067)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0068)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0069)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x006a)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x006b)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x006c)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x006d)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x006e)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x006f)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0070)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0071)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0072)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0073)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0074)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0075)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0076)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0077)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0078)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x0079)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x007a)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x007b)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x007c)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x007d)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x007e)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_dec_exp + 0x007f)
	mov	a,#0x3A
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'write_data'
;------------------------------------------------------------
;------------------------------------------------------------
;	decryption.c:16: void write_data() {
;	-----------------------------------------
;	 function write_data
;	-----------------------------------------
_write_data:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	decryption.c:17: P1 = 0;
	mov	_P1,#0x00
;	decryption.c:19: P0 = ins_write_data;
	mov	_P0,#0x01
;	decryption.c:20: P0 = ins_idle;
	mov	_P0,#0x00
;	decryption.c:22: while (P1 == 0) {}
00101$:
	mov	a,_P1
	jz	00101$
;	decryption.c:23: P0 = ins_ack;
	mov	_P0,#0x04
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_r'
;------------------------------------------------------------
;------------------------------------------------------------
;	decryption.c:26: void read_r() {
;	-----------------------------------------
;	 function read_r
;	-----------------------------------------
_read_r:
;	decryption.c:27: P0 = ins_read_r;
	mov	_P0,#0x03
;	decryption.c:28: while (P1 == 0) {}
00101$:
	mov	a,_P1
	jz	00101$
;	decryption.c:29: P0 = ins_ack;
	mov	_P0,#0x04
;	decryption.c:31: P0 = ins_idle;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montgomery_exp'
;------------------------------------------------------------
;------------------------------------------------------------
;	decryption.c:34: void montgomery_exp() {
;	-----------------------------------------
;	 function montgomery_exp
;	-----------------------------------------
_montgomery_exp:
;	decryption.c:35: P0 = ins_montgomery_exp;
	mov	_P0,#0x02
;	decryption.c:36: P0 = ins_idle;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'terminate'
;------------------------------------------------------------
;------------------------------------------------------------
;	decryption.c:39: void terminate() {
;	-----------------------------------------
;	 function terminate
;	-----------------------------------------
_terminate:
;	decryption.c:40: P3 = 0x55;
	mov	_P3,#0x55
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	decryption.c:43: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	decryption.c:44: write_data();
	lcall	_write_data
;	decryption.c:45: montgomery_exp();
	lcall	_montgomery_exp
;	decryption.c:46: read_r();
	lcall	_read_r
;	decryption.c:48: terminate();
	lcall	_terminate
;	decryption.c:49: return 0;
	mov	dptr,#0x0000
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
