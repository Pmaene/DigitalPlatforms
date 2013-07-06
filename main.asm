;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Feb  3 2010) (UNIX)
; This file was generated Sat Jul  6 11:33:11 2013
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _privateKey
	.globl _publicKey
	.globl _message
	.globl _modulus
	.globl _r2modm
	.globl _rmodm
	.globl _decryptedMessage
	.globl _encryptedMessage
	.globl _sR
	.globl _sM
	.globl _sB
	.globl _sA
	.globl _montMultiply_Result_PARM_2
	.globl _montMultiply_One_PARM_3
	.globl _montMultiply_PARM_4
	.globl _montModExp_PARM_3
	.globl _montModExp_PARM_2
	.globl _montMultiply_One_PARM_2
	.globl _montMultiply_PARM_3
	.globl _montMultiply_PARM_2
	.globl _montMultiply
	.globl _montMultiply_One
	.globl _montMultiply_Result
	.globl _montModExp
	.globl __findFirstOne
	.globl __mul1_writeAll
	.globl __mul1_writeOne
	.globl __mul1_writeReg
	.globl __mul1_readResult
	.globl __mul1_writeResult
	.globl __mul1_montgomery
	.globl __terminate
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
_montMultiply_PARM_2:
	.ds 3
_montMultiply_PARM_3:
	.ds 3
_montMultiply_One_PARM_2:
	.ds 3
_montModExp_PARM_2:
	.ds 3
_montModExp_PARM_3:
	.ds 3
_montModExp_r_1_1:
	.ds 3
_montModExp_t_1_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
__findFirstOne_e_1_1::
	.ds 3
__findFirstOne_i_1_1::
	.ds 1
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
_montMultiply_PARM_4:
	.ds 1
_montMultiply_One_PARM_3:
	.ds 1
_montMultiply_Result_PARM_2:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_sA	=	0x2000
_sB	=	0x2081
_sM	=	0x2101
_sR	=	0x3000
_encryptedMessage	=	0x5000
_decryptedMessage	=	0x5100
_montModExp_one_1_1	=	0x1100
_montModExp_xTilde_1_1	=	0x1200
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
	.org 0x4000
_rmodm::
	.ds 128
	.org 0x4100
_r2modm::
	.ds 128
	.org 0x4200
_modulus::
	.ds 128
	.org 0x4300
_message::
	.ds 128
	.org 0x4400
_publicKey::
	.ds 128
	.org 0x4500
_privateKey::
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
;	main.c:34: volatile __xdata __at (0x4000) unsigned char rmodm[SIZE] = {0x95, 0x0C, 0x9E, 0x79, 0xEC, 0xD3, 0x0A, 0xE4, 0x35, 0x6B, 0x60, 0xED, 0x25, 0x25, 0x33, 0xD9, 0x26, 0x8C, 0xD1, 0x99, 0xEE, 0x9C, 0x11, 0x8D, 0xBC, 0xBF, 0x68, 0xAA, 0xB3, 0xF9, 0xDF, 0xDC, 0x80, 0xB8, 0x28, 0x60, 0x2B, 0x21, 0x03, 0x89, 0xEF, 0x2C, 0xE6, 0x93, 0x6F, 0xBB, 0xA7, 0x56, 0x28, 0xB5, 0x99, 0xD7, 0x69, 0xDB, 0x6B, 0x09, 0xF7, 0x0B, 0x84, 0xE5, 0xB2, 0xF8, 0x79, 0xC4, 0xD5, 0x7B, 0x06, 0x45, 0xB5, 0x22, 0xC2, 0x28, 0xF8, 0x7A, 0x39, 0x98, 0xE7, 0xA4, 0x54, 0x45, 0xA2, 0x0D, 0xCA, 0xB1, 0x3B, 0x9E, 0x59, 0xF9, 0xFB, 0xAA, 0x30, 0x97, 0x6D, 0x9B, 0x24, 0x6F, 0x74, 0x30, 0xA7, 0xAF, 0xFF, 0x84, 0x2C, 0x49, 0x1B, 0x30, 0x9F, 0xB5, 0x96, 0x3D, 0x8F, 0xC2, 0xF0, 0x3B, 0xFC, 0xD4, 0xB2, 0x78, 0x05, 0xD3, 0xCB, 0x80, 0x88, 0x85, 0x95, 0x7A, 0xB7, 0x64};
	mov	dptr,#_rmodm
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0001)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0002)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0003)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0004)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0005)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0006)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0007)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0008)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0009)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000a)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000b)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000c)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000d)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000e)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000f)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0010)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0011)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0012)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0013)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0014)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0015)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0016)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0017)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0018)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0019)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001a)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001b)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001c)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001d)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001e)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001f)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0020)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0021)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0022)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0023)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0024)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0025)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0026)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0027)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0028)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0029)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002a)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002b)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002c)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002d)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002e)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002f)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0030)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0031)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0032)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0033)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0034)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0035)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0036)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0037)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0038)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0039)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003a)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003b)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003c)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003d)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003e)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003f)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0040)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0041)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0042)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0043)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0044)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0045)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0046)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0047)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0048)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0049)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004a)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004b)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004c)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004d)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004e)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004f)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0050)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0051)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0052)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0053)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0054)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0055)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0056)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0057)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0058)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0059)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005a)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005b)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005c)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005d)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005e)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005f)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0060)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0061)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0062)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0063)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0064)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0065)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0066)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0067)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0068)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0069)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006a)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006b)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006c)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006d)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006e)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006f)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0070)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0071)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0072)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0073)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0074)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0075)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0076)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0077)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0078)
	mov	a,#0xCB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0079)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007a)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007b)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007c)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007d)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007e)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007f)
	mov	a,#0x64
	movx	@dptr,a
;	main.c:35: volatile __xdata __at (0x4100) unsigned char r2modm[SIZE] = {0xE4, 0xC4, 0x31, 0x31, 0x08, 0x64, 0x1B, 0xC5, 0x40, 0x21, 0xD5, 0x3F, 0x82, 0x98, 0xB5, 0x8B, 0x0C, 0xDA, 0xDE, 0x0A, 0x73, 0xD6, 0x75, 0x80, 0x81, 0x7B, 0xAF, 0x90, 0x51, 0xA2, 0x22, 0xDF, 0x60, 0xAD, 0x1A, 0x5A, 0x69, 0x4E, 0x87, 0xF5, 0x82, 0x19, 0xC7, 0xDD, 0xAF, 0xEB, 0x7A, 0x3E, 0xF3, 0xDA, 0xB1, 0xE1, 0xED, 0xD2, 0x2E, 0x26, 0x7D, 0xD5, 0xB7, 0xC3, 0x13, 0x09, 0xD5, 0x11, 0xDE, 0x9E, 0x12, 0x6A, 0x51, 0xF5, 0x83, 0x1B, 0xDE, 0xAB, 0x6D, 0xD7, 0xAD, 0x32, 0x07, 0x6C, 0x95, 0x2A, 0x56, 0xFF, 0xD7, 0xE7, 0x00, 0x85, 0xBE, 0xB4, 0x3E, 0xEF, 0x73, 0x88, 0x75, 0xD9, 0x5C, 0x6A, 0xB1, 0x58, 0x4A, 0xBC, 0x80, 0x53, 0x63, 0x48, 0xFD, 0xA0, 0xFC, 0xAD, 0xD9, 0x34, 0xFB, 0xD3, 0xA9, 0xE8, 0x18, 0x32, 0x33, 0x78, 0xB0, 0x08, 0xE4, 0x7B, 0x59, 0xF2, 0x45, 0x8A};
	mov	dptr,#_r2modm
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0001)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0002)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0003)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0004)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0005)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0006)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0007)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0008)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0009)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000a)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000b)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000c)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000d)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000e)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000f)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0010)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0011)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0012)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0013)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0014)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0015)
	mov	a,#0xD6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0016)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0017)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0018)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0019)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001a)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001b)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001c)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001d)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001e)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001f)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0020)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0021)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0022)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0023)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0024)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0025)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0026)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0027)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0028)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0029)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002a)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002b)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002c)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002d)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002e)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002f)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0030)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0031)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0032)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0033)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0034)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0035)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0036)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0037)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0038)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0039)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003a)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003b)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003c)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003d)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003e)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003f)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0040)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0041)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0042)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0043)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0044)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0045)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0046)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0047)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0048)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0049)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004a)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004b)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004c)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004d)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004e)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004f)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0050)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0051)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0052)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0053)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0054)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0055)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0056)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0057)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0058)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0059)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005a)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005b)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005c)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005d)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005e)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005f)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0060)
	mov	a,#0x5C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0061)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0062)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0063)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0064)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0065)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0066)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0067)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0068)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0069)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006a)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006b)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006c)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006d)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006e)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006f)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0070)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0071)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0072)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0073)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0074)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0075)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0076)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0077)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0078)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0079)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007a)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007b)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007c)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007d)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007e)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007f)
	mov	a,#0x8A
	movx	@dptr,a
;	main.c:37: volatile __xdata __at (0x4200) unsigned char modulus[SIZE] = {0x6B, 0xF3, 0x61, 0x86, 0x13, 0x2C, 0xF5, 0x1B, 0xCA, 0x94, 0x9F, 0x12, 0xDA, 0xDA, 0xCC, 0x26, 0xD9, 0x73, 0x2E, 0x66, 0x11, 0x63, 0xEE, 0x72, 0x43, 0x40, 0x97, 0x55, 0x4C, 0x06, 0x20, 0x23, 0x7F, 0x47, 0xD7, 0x9F, 0xD4, 0xDE, 0xFC, 0x76, 0x10, 0xD3, 0x19, 0x6C, 0x90, 0x44, 0x58, 0xA9, 0xD7, 0x4A, 0x66, 0x28, 0x96, 0x24, 0x94, 0xF6, 0x08, 0xF4, 0x7B, 0x1A, 0x4D, 0x07, 0x86, 0x3B, 0x2A, 0x84, 0xF9, 0xBA, 0x4A, 0xDD, 0x3D, 0xD7, 0x07, 0x85, 0xC6, 0x67, 0x18, 0x5B, 0xAB, 0xBA, 0x5D, 0xF2, 0x35, 0x4E, 0xC4, 0x61, 0xA6, 0x06, 0x04, 0x55, 0xCF, 0x68, 0x92, 0x64, 0xDB, 0x90, 0x8B, 0xCF, 0x58, 0x50, 0x00, 0x7B, 0xD3, 0xB6, 0xE4, 0xCF, 0x60, 0x4A, 0x69, 0xC2, 0x70, 0x3D, 0x0F, 0xC4, 0x03, 0x2B, 0x4D, 0x87, 0xFA, 0x2C, 0x34, 0x7F, 0x77, 0x7A, 0x6A, 0x85, 0x48, 0x9B};
	mov	dptr,#_modulus
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0001)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0002)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0003)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0004)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0005)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0006)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0007)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0008)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0009)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000a)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000b)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000c)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000d)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000e)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x000f)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0010)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0011)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0012)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0013)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0014)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0015)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0016)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0017)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0018)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0019)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001a)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001b)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001c)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001d)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001e)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x001f)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0020)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0021)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0022)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0023)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0024)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0025)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0026)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0027)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0028)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0029)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002a)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002b)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002c)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002d)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002e)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x002f)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0030)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0031)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0032)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0033)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0034)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0035)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0036)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0037)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0038)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0039)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003a)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003b)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003c)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003d)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003e)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x003f)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0040)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0041)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0042)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0043)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0044)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0045)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0046)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0047)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0048)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0049)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004a)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004b)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004c)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004d)
	mov	a,#0x5B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004e)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x004f)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0050)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0051)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0052)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0053)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0054)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0055)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0056)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0057)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0058)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0059)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005a)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005b)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005c)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005d)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005e)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x005f)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0060)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0061)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0062)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0063)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0064)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0065)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0066)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0067)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0068)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0069)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006a)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006b)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006c)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006d)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006e)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x006f)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0070)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0071)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0072)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0073)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0074)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0075)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0076)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0077)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0078)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x0079)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007a)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007b)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007c)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007d)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007e)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_modulus + 0x007f)
	mov	a,#0x9B
	movx	@dptr,a
;	main.c:38: volatile __xdata __at (0x4300) unsigned char message[SIZE] = {0xE0, 0xFA, 0x7D, 0xF4, 0x9E, 0xFF, 0x31, 0x8A, 0x4A, 0x17, 0x7A, 0xE9, 0x37, 0x86, 0x15, 0x27, 0x2B, 0x29, 0x06, 0x53, 0xE1, 0x08, 0xD2, 0x11, 0xC6, 0xEF, 0x43, 0xB6, 0xC8, 0x93, 0x4F, 0x27, 0xD1, 0x62, 0xCF, 0x12, 0xC3, 0xE6, 0xA4, 0x32, 0x85, 0xA6, 0x4F, 0x26, 0x12, 0x66, 0x87, 0x5A, 0x8F, 0xAE, 0x57, 0xE2, 0x7C, 0x8E, 0xFB, 0xA6, 0xE3, 0x6A, 0x84, 0xF7, 0x92, 0x5D, 0x66, 0x09, 0x17, 0xFC, 0x4A, 0x98, 0x1E, 0xDA, 0xB7, 0xA1, 0x94, 0xE8, 0x59, 0xAE, 0x3A, 0xA3, 0x80, 0x13, 0x13, 0x81, 0x0A, 0x1C, 0x6F, 0x0C, 0x16, 0x67, 0x48, 0x2A, 0x1F, 0x40, 0x8F, 0x97, 0xBB, 0x55, 0x52, 0x35, 0x88, 0x65, 0xD8, 0x01, 0x8F, 0x77, 0x86, 0xA5, 0x55, 0x66, 0x53, 0x02, 0xF3, 0x41, 0xF4, 0x26, 0xCC, 0xD7, 0x0A, 0xEA, 0xE4, 0x3C, 0xA1, 0x65, 0xBA, 0x8D, 0x71, 0x08, 0xEE, 0x98};
	mov	dptr,#_message
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_message + 0x0001)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_message + 0x0002)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_message + 0x0003)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_message + 0x0004)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0005)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_message + 0x0006)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_message + 0x0007)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0008)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0009)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_message + 0x000a)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_message + 0x000b)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_message + 0x000c)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_message + 0x000d)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_message + 0x000e)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_message + 0x000f)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_message + 0x0010)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_message + 0x0011)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_message + 0x0012)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_message + 0x0013)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_message + 0x0014)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_message + 0x0015)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_message + 0x0016)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_message + 0x0017)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_message + 0x0018)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_message + 0x0019)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_message + 0x001a)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_message + 0x001b)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_message + 0x001c)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_message + 0x001d)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_message + 0x001e)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_message + 0x001f)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_message + 0x0020)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_message + 0x0021)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_message + 0x0022)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_message + 0x0023)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_message + 0x0024)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_message + 0x0025)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_message + 0x0026)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_message + 0x0027)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_message + 0x0028)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_message + 0x0029)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_message + 0x002a)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_message + 0x002b)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_message + 0x002c)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_message + 0x002d)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_message + 0x002e)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_message + 0x002f)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0030)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_message + 0x0031)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_message + 0x0032)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_message + 0x0033)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_message + 0x0034)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0035)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0036)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_message + 0x0037)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_message + 0x0038)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_message + 0x0039)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_message + 0x003a)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_message + 0x003b)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_message + 0x003c)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_message + 0x003d)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_message + 0x003e)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_message + 0x003f)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_message + 0x0040)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_message + 0x0041)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_message + 0x0042)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0043)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_message + 0x0044)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_message + 0x0045)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_message + 0x0046)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_message + 0x0047)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_message + 0x0048)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_message + 0x0049)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_message + 0x004a)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_message + 0x004b)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_message + 0x004c)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_message + 0x004d)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_message + 0x004e)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_message + 0x004f)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_message + 0x0050)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_message + 0x0051)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_message + 0x0052)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0053)
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0054)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_message + 0x0055)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0056)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_message + 0x0057)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_message + 0x0058)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_message + 0x0059)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_message + 0x005a)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_message + 0x005b)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_message + 0x005c)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_message + 0x005d)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_message + 0x005e)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_message + 0x005f)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_message + 0x0060)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_message + 0x0061)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_message + 0x0062)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_message + 0x0063)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_message + 0x0064)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_message + 0x0065)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_message + 0x0066)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_message + 0x0067)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_message + 0x0068)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_message + 0x0069)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_message + 0x006a)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_message + 0x006b)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_message + 0x006c)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_message + 0x006d)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_message + 0x006e)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_message + 0x006f)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_message + 0x0070)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_message + 0x0071)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_message + 0x0072)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_message + 0x0073)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_message + 0x0074)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_message + 0x0075)
	mov	a,#0xEA
	movx	@dptr,a
	mov	dptr,#(_message + 0x0076)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_message + 0x0077)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_message + 0x0078)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_message + 0x0079)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_message + 0x007a)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_message + 0x007b)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_message + 0x007c)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_message + 0x007d)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_message + 0x007e)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_message + 0x007f)
	mov	a,#0x98
	movx	@dptr,a
;	main.c:39: volatile __xdata __at (0x4400) unsigned char publicKey[SIZE] = {0x01, 0x01};
	mov	dptr,#_publicKey
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_publicKey + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	main.c:40: volatile __xdata __at (0x4500) unsigned char privateKey[SIZE] = {0x01, 0x23, 0xC5, 0xD2, 0x6A, 0xE6, 0x8B, 0x2B, 0xE7, 0x41, 0x5A, 0x8E, 0xBA, 0x08, 0x1A, 0x66, 0x97, 0xC4, 0xB7, 0x6E, 0x54, 0x5D, 0xC4, 0x99, 0x40, 0x63, 0x65, 0xED, 0x77, 0xCA, 0xCF, 0xEB, 0x75, 0xCF, 0x29, 0x3C, 0xE5, 0x27, 0x0B, 0x54, 0xD0, 0x11, 0x7E, 0xB2, 0x0B, 0x12, 0x9F, 0xBD, 0xBF, 0x2F, 0x51, 0x4C, 0x51, 0x6D, 0x2F, 0xF8, 0x2D, 0x62, 0xB4, 0x1E, 0xA5, 0xEC, 0xE9, 0xDE, 0x0B, 0xE9, 0x7A, 0x72, 0xAE, 0xA4, 0x56, 0xAF, 0xE3, 0xAF, 0x72, 0x54, 0x05, 0xBE, 0x14, 0xA1, 0x01, 0x4D, 0x0D, 0x8D, 0x02, 0x7F, 0xCA, 0xEF, 0xEC, 0x83, 0xE2, 0xA0, 0x75, 0x0A, 0xEF, 0x0C, 0x2C, 0x61, 0xC2, 0x5C, 0xDC, 0x95, 0xC3, 0x36, 0x63, 0x69, 0x6A, 0x76, 0x64, 0xD2, 0x57, 0x56, 0x7F, 0xE3, 0xC9, 0xCA, 0x11, 0x1F, 0xFD, 0xFC, 0x1A, 0x54, 0xA0, 0x70, 0x42, 0x97, 0xF7, 0x6D};
	mov	dptr,#_privateKey
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0001)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0002)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0003)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0004)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0005)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0006)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0007)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0008)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0009)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x000a)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x000b)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x000c)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x000d)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x000e)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x000f)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0010)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0011)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0012)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0013)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0014)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0015)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0016)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0017)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0018)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0019)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x001a)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x001b)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x001c)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x001d)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x001e)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x001f)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0020)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0021)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0022)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0023)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0024)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0025)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0026)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0027)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0028)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0029)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x002a)
	mov	a,#0x7E
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x002b)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x002c)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x002d)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x002e)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x002f)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0030)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0031)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0032)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0033)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0034)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0035)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0036)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0037)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0038)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0039)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x003a)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x003b)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x003c)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x003d)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x003e)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x003f)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0040)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0041)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0042)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0043)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0044)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0045)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0046)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0047)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0048)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0049)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x004a)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x004b)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x004c)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x004d)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x004e)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x004f)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0050)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0051)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0052)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0053)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0054)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0055)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0056)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0057)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0058)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0059)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x005a)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x005b)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x005c)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x005d)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x005e)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x005f)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0060)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0061)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0062)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0063)
	mov	a,#0x5C
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0064)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0065)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0066)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0067)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0068)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0069)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x006a)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x006b)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x006c)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x006d)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x006e)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x006f)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0070)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0071)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0072)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0073)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0074)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0075)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0076)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0077)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0078)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x0079)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x007a)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x007b)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x007c)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x007d)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x007e)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_privateKey + 0x007f)
	mov	a,#0x6D
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:64: int main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:66: memcpy(sM, modulus, SIZE);
	mov	_memcpy_PARM_2,#_modulus
	mov	(_memcpy_PARM_2 + 1),#(_modulus >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dptr,#_sM
	mov	b,#0x00
	lcall	_memcpy
;	main.c:68: montModExp(encryptedMessage, message, publicKey);
	mov	_montModExp_PARM_2,#_message
	mov	(_montModExp_PARM_2 + 1),#(_message >> 8)
	mov	(_montModExp_PARM_2 + 2),#0x00
	mov	_montModExp_PARM_3,#_publicKey
	mov	(_montModExp_PARM_3 + 1),#(_publicKey >> 8)
	mov	(_montModExp_PARM_3 + 2),#0x00
	mov	dptr,#_encryptedMessage
	mov	b,#0x00
	lcall	_montModExp
;	main.c:69: montModExp(decryptedMessage, encryptedMessage, privateKey);
	mov	_montModExp_PARM_2,#_encryptedMessage
	mov	(_montModExp_PARM_2 + 1),#(_encryptedMessage >> 8)
	mov	(_montModExp_PARM_2 + 2),#0x00
	mov	_montModExp_PARM_3,#_privateKey
	mov	(_montModExp_PARM_3 + 1),#(_privateKey >> 8)
	mov	(_montModExp_PARM_3 + 2),#0x00
	mov	dptr,#_decryptedMessage
	mov	b,#0x00
	lcall	_montModExp
;	main.c:70: _terminate();
	lcall	__terminate
;	main.c:71: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montMultiply'
;------------------------------------------------------------
;a                         Allocated with name '_montMultiply_PARM_2'
;b                         Allocated with name '_montMultiply_PARM_3'
;r                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:74: void montMultiply(unsigned char *r, unsigned char *a, unsigned char *b, bool readResult) {
;	-----------------------------------------
;	 function montMultiply
;	-----------------------------------------
_montMultiply:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:75: memcpy(sA, a, SIZE);
	mov	_memcpy_PARM_2,_montMultiply_PARM_2
	mov	(_memcpy_PARM_2 + 1),(_montMultiply_PARM_2 + 1)
	mov	(_memcpy_PARM_2 + 2),(_montMultiply_PARM_2 + 2)
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dptr,#_sA
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	lcall	_memcpy
;	main.c:76: memcpy(sB, b, SIZE);
	mov	_memcpy_PARM_2,_montMultiply_PARM_3
	mov	(_memcpy_PARM_2 + 1),(_montMultiply_PARM_3 + 1)
	mov	(_memcpy_PARM_2 + 2),(_montMultiply_PARM_3 + 2)
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dptr,#_sB
	mov	b,#0x00
	lcall	_memcpy
;	main.c:78: _mul1_writeAll();
	lcall	__mul1_writeAll
;	main.c:79: _mul1_montgomery();
	lcall	__mul1_montgomery
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:81: if (readResult) {
	jnb	_montMultiply_PARM_4,00103$
;	main.c:82: _mul1_readResult();
	push	ar2
	push	ar3
	push	ar4
	lcall	__mul1_readResult
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:83: memcpy(r, sR, SIZE);
	mov	_memcpy_PARM_2,#_sR
	mov	(_memcpy_PARM_2 + 1),#(_sR >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	_memcpy
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montMultiply_One'
;------------------------------------------------------------
;a                         Allocated with name '_montMultiply_One_PARM_2'
;r                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:87: void montMultiply_One(unsigned char *r, unsigned char *a, bool readResult) {
;	-----------------------------------------
;	 function montMultiply_One
;	-----------------------------------------
_montMultiply_One:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:88: memcpy(sA, a, SIZE);
	mov	_memcpy_PARM_2,_montMultiply_One_PARM_2
	mov	(_memcpy_PARM_2 + 1),(_montMultiply_One_PARM_2 + 1)
	mov	(_memcpy_PARM_2 + 2),(_montMultiply_One_PARM_2 + 2)
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dptr,#_sA
	mov	b,#0x00
	push	ar2
	push	ar3
	push	ar4
	lcall	_memcpy
;	main.c:90: _mul1_writeOne();
	lcall	__mul1_writeOne
;	main.c:91: _mul1_montgomery();
	lcall	__mul1_montgomery
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:93: if (readResult) {
	jnb	_montMultiply_One_PARM_3,00103$
;	main.c:94: _mul1_readResult();
	push	ar2
	push	ar3
	push	ar4
	lcall	__mul1_readResult
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:95: memcpy(r, sR, SIZE);
	mov	_memcpy_PARM_2,#_sR
	mov	(_memcpy_PARM_2 + 1),#(_sR >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	_memcpy
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montMultiply_Result'
;------------------------------------------------------------
;r                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main.c:99: void montMultiply_Result(unsigned char *r, bool readResult) {
;	-----------------------------------------
;	 function montMultiply_Result
;	-----------------------------------------
_montMultiply_Result:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main.c:100: _mul1_writeReg();
	push	ar2
	push	ar3
	push	ar4
	lcall	__mul1_writeReg
;	main.c:101: _mul1_montgomery();
	lcall	__mul1_montgomery
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:103: if (readResult) {
	jnb	_montMultiply_Result_PARM_2,00103$
;	main.c:104: _mul1_readResult();
	push	ar2
	push	ar3
	push	ar4
	lcall	__mul1_readResult
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:105: memcpy(r, sR, SIZE);
	mov	_memcpy_PARM_2,#_sR
	mov	(_memcpy_PARM_2 + 1),#(_sR >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	ljmp	_memcpy
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montModExp'
;------------------------------------------------------------
;x                         Allocated with name '_montModExp_PARM_2'
;e                         Allocated with name '_montModExp_PARM_3'
;r                         Allocated with name '_montModExp_r_1_1'
;i                         Allocated to registers r7 r0 
;t                         Allocated with name '_montModExp_t_1_1'
;one                       Allocated with name '_montModExp_one_1_1'
;xTilde                    Allocated with name '_montModExp_xTilde_1_1'
;------------------------------------------------------------
;	main.c:109: void montModExp(unsigned char *r, unsigned char *x, unsigned char *e) {
;	-----------------------------------------
;	 function montModExp
;	-----------------------------------------
_montModExp:
	mov	_montModExp_r_1_1,dpl
	mov	(_montModExp_r_1_1 + 1),dph
	mov	(_montModExp_r_1_1 + 2),b
;	main.c:116: *one = 0x01;
	mov	dptr,#_montModExp_one_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:118: t = _findFirstOne(e);
	mov	dpl,_montModExp_PARM_3
	mov	dph,(_montModExp_PARM_3 + 1)
	mov	b,(_montModExp_PARM_3 + 2)
	lcall	__findFirstOne
	mov	_montModExp_t_1_1,dpl
	mov	(_montModExp_t_1_1 + 1),dph
;	main.c:120: montMultiply(xTilde, x, r2modm, true);
	mov	_montMultiply_PARM_3,#_r2modm
	mov	(_montMultiply_PARM_3 + 1),#(_r2modm >> 8)
	mov	(_montMultiply_PARM_3 + 2),#0x00
	mov	_montMultiply_PARM_2,_montModExp_PARM_2
	mov	(_montMultiply_PARM_2 + 1),(_montModExp_PARM_2 + 1)
	mov	(_montMultiply_PARM_2 + 2),(_montModExp_PARM_2 + 2)
	setb	_montMultiply_PARM_4
	mov	dptr,#_montModExp_xTilde_1_1
	mov	b,#0x00
	lcall	_montMultiply
;	main.c:122: memcpy(sR, rmodm, SIZE);
	mov	_memcpy_PARM_2,#_rmodm
	mov	(_memcpy_PARM_2 + 1),#(_rmodm >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x80
	clr	a
	mov	(_memcpy_PARM_3 + 1),a
	mov	dptr,#_sR
	mov	b,#0x00
	lcall	_memcpy
;	main.c:123: _mul1_writeResult();
	lcall	__mul1_writeResult
;	main.c:125: for (i = 0; i <= t; i++) {
	mov	r7,#0x00
	mov	r0,#0x00
00105$:
	clr	c
	mov	a,_montModExp_t_1_1
	subb	a,r7
	mov	a,(_montModExp_t_1_1 + 1)
	subb	a,r0
	jnc	00116$
	ljmp	00108$
00116$:
;	main.c:126: if (i != 0)
	mov	a,r7
	orl	a,r0
	jz	00102$
;	main.c:127: montMultiply_Result(r, ((e[(t-i)/8] >> (t-i)%8)) & 1);
	mov	a,_montModExp_t_1_1
	clr	c
	subb	a,r7
	mov	r1,a
	mov	a,(_montModExp_t_1_1 + 1)
	subb	a,r0
	mov	ar3,r1
	swap	a
	rl	a
	xch	a,r3
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r3
	xch	a,r3
	anl	a,#0x1f
	xch	a,r3
	xrl	a,r3
	xch	a,r3
	mov	r4,a
	mov	a,r3
	add	a,_montModExp_PARM_3
	mov	r3,a
	mov	a,r4
	addc	a,(_montModExp_PARM_3 + 1)
	mov	r4,a
	mov	r5,(_montModExp_PARM_3 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	anl	ar1,#0x07
	mov	r2,#0x00
	mov	b,r1
	inc	b
	mov	a,r3
	sjmp	00119$
00118$:
	clr	c
	rrc	a
00119$:
	djnz	b,00118$
	rrc	a
	mov	_montMultiply_Result_PARM_2,c
	mov	dpl,_montModExp_r_1_1
	mov	dph,(_montModExp_r_1_1 + 1)
	mov	b,(_montModExp_r_1_1 + 2)
	push	ar7
	push	ar0
	lcall	_montMultiply_Result
	pop	ar0
	pop	ar7
00102$:
;	main.c:128: if (((e[(t-i)/8] >> (t-i)%8)) & 1)
	mov	a,_montModExp_t_1_1
	clr	c
	subb	a,r7
	mov	r2,a
	mov	a,(_montModExp_t_1_1 + 1)
	subb	a,r0
	mov	ar4,r2
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r4
	add	a,_montModExp_PARM_3
	mov	r4,a
	mov	a,r5
	addc	a,(_montModExp_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_montModExp_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	anl	ar2,#0x07
	mov	r3,#0x00
	mov	b,r2
	inc	b
	mov	a,r4
	sjmp	00121$
00120$:
	clr	c
	rrc	a
00121$:
	djnz	b,00120$
	jnb	acc.0,00107$
;	main.c:129: montMultiply_One(r, xTilde, false);
	mov	_montMultiply_One_PARM_2,#_montModExp_xTilde_1_1
	mov	(_montMultiply_One_PARM_2 + 1),#(_montModExp_xTilde_1_1 >> 8)
	mov	(_montMultiply_One_PARM_2 + 2),#0x00
	clr	_montMultiply_One_PARM_3
	mov	dpl,_montModExp_r_1_1
	mov	dph,(_montModExp_r_1_1 + 1)
	mov	b,(_montModExp_r_1_1 + 2)
	push	ar7
	push	ar0
	lcall	_montMultiply_One
	pop	ar0
	pop	ar7
00107$:
;	main.c:125: for (i = 0; i <= t; i++) {
	inc	r7
	cjne	r7,#0x00,00123$
	inc	r0
00123$:
	ljmp	00105$
00108$:
;	main.c:132: montMultiply_One(r, one, true);
	mov	_montMultiply_One_PARM_2,#_montModExp_one_1_1
	mov	(_montMultiply_One_PARM_2 + 1),#(_montModExp_one_1_1 >> 8)
	mov	(_montMultiply_One_PARM_2 + 2),#0x00
	setb	_montMultiply_One_PARM_3
	mov	dpl,_montModExp_r_1_1
	mov	dph,(_montModExp_r_1_1 + 1)
	mov	b,(_montModExp_r_1_1 + 2)
	ljmp	_montMultiply_One
;------------------------------------------------------------
;Allocation info for local variables in function '_findFirstOne'
;------------------------------------------------------------
;e                         Allocated with name '__findFirstOne_e_1_1'
;i                         Allocated with name '__findFirstOne_i_1_1'
;j                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:136: unsigned short _findFirstOne(unsigned char *e) {
;	-----------------------------------------
;	 function _findFirstOne
;	-----------------------------------------
__findFirstOne:
	mov	__findFirstOne_e_1_1,dpl
	mov	(__findFirstOne_e_1_1 + 1),dph
	mov	(__findFirstOne_e_1_1 + 2),b
;	main.c:140: for (i = 0; i < SIZE; i++) {
	mov	__findFirstOne_i_1_1,#0x00
00109$:
	mov	a,#0x100 - 0x80
	add	a,__findFirstOne_i_1_1
	jnc	00121$
	ljmp	00112$
00121$:
;	main.c:141: if (e[(SIZE-1)-i] != 0) {
	mov	r6,__findFirstOne_i_1_1
	mov	r7,#0x00
	mov	a,#0x7F
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,r6
	add	a,__findFirstOne_e_1_1
	mov	r6,a
	mov	a,r7
	addc	a,(__findFirstOne_e_1_1 + 1)
	mov	r7,a
	mov	r0,(__findFirstOne_e_1_1 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	jnz	00122$
	ljmp	00111$
00122$:
;	main.c:142: for (j = 0; j < 8; j++) {
	mov	r6,#0x00
00105$:
	cjne	r6,#0x08,00123$
00123$:
	jnc	00111$
;	main.c:143: if (e[(SIZE-1)-i] >> (7-j) & 1)
	mov	r7,__findFirstOne_i_1_1
	mov	r0,#0x00
	mov	a,#0x7F
	clr	c
	subb	a,r7
	mov	r1,a
	clr	a
	subb	a,r0
	mov	r2,a
	mov	a,r1
	add	a,__findFirstOne_e_1_1
	mov	r1,a
	mov	a,r2
	addc	a,(__findFirstOne_e_1_1 + 1)
	mov	r2,a
	mov	r3,(__findFirstOne_e_1_1 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	ar2,r6
	mov	r3,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r2
	mov	r4,a
	clr	a
	subb	a,r3
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,r1
	sjmp	00126$
00125$:
	clr	c
	rrc	a
00126$:
	djnz	b,00125$
	jnb	acc.0,00107$
;	main.c:144: return 8*((SIZE-1)-i) + (7-j);
	mov	a,#0x7F
	clr	c
	subb	a,r7
	mov	r7,a
	clr	a
	subb	a,r0
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r7
	swap	a
	rr	a
	xch	a,r7
	xrl	a,r7
	xch	a,r7
	anl	a,#0xf8
	xch	a,r7
	xrl	a,r7
	mov	r0,a
	mov	a,#0x07
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	a,r2
	add	a,r7
	mov	dpl,a
	mov	a,r3
	addc	a,r0
	mov	dph,a
	ret
00107$:
;	main.c:142: for (j = 0; j < 8; j++) {
	inc	r6
	ljmp	00105$
00111$:
;	main.c:140: for (i = 0; i < SIZE; i++) {
	inc	__findFirstOne_i_1_1
	ljmp	00109$
00112$:
;	main.c:149: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul1_writeAll'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:152: void _mul1_writeAll() {
;	-----------------------------------------
;	 function _mul1_writeAll
;	-----------------------------------------
__mul1_writeAll:
;	main.c:153: P1 = 0;
	mov	_P1,#0x00
;	main.c:155: P0 = INS_MUL1_WRITE_ALL;
	mov	_P0,#0x10
;	main.c:156: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:158: while (P1 == 0) {}
00101$:
	mov	a,_P1
	jz	00101$
;	main.c:159: P0 = INS_ACK;
	mov	_P0,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul1_writeOne'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:162: void _mul1_writeOne() {
;	-----------------------------------------
;	 function _mul1_writeOne
;	-----------------------------------------
__mul1_writeOne:
;	main.c:163: P1 = 0;
	mov	_P1,#0x00
;	main.c:165: P0 = INS_MUL1_WRITE_ONE;
	mov	_P0,#0x11
;	main.c:166: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:168: while (P1 == 0) {}
00101$:
	mov	a,_P1
	jz	00101$
;	main.c:169: P0 = INS_ACK;
	mov	_P0,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul1_writeReg'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:172: void _mul1_writeReg() {
;	-----------------------------------------
;	 function _mul1_writeReg
;	-----------------------------------------
__mul1_writeReg:
;	main.c:173: P0 = INS_MUL1_WRITE_REG;
	mov	_P0,#0x12
;	main.c:174: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul1_readResult'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:177: void _mul1_readResult() {
;	-----------------------------------------
;	 function _mul1_readResult
;	-----------------------------------------
__mul1_readResult:
;	main.c:178: P1 = 0;
	mov	_P1,#0x00
;	main.c:180: P0 = INS_MUL1_READ_RESULT;
	mov	_P0,#0x13
;	main.c:181: while (P1 == 0) {}
00101$:
	mov	a,_P1
	jz	00101$
;	main.c:182: P0 = INS_ACK;
	mov	_P0,#0x01
;	main.c:184: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul1_writeResult'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:187: void _mul1_writeResult() {
;	-----------------------------------------
;	 function _mul1_writeResult
;	-----------------------------------------
__mul1_writeResult:
;	main.c:188: P1 = 0;
	mov	_P1,#0x00
;	main.c:190: P0 = INS_MUL1_WRITE_RESULT;
	mov	_P0,#0x14
;	main.c:191: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:193: while (P1 == 0) {}
00101$:
	mov	a,_P1
	jz	00101$
;	main.c:194: P0 = INS_ACK;
	mov	_P0,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul1_montgomery'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:197: void _mul1_montgomery() {
;	-----------------------------------------
;	 function _mul1_montgomery
;	-----------------------------------------
__mul1_montgomery:
;	main.c:198: P0 = INS_MUL1_MONTGOMERY;
	mov	_P0,#0x15
;	main.c:199: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_terminate'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:202: void _terminate() {
;	-----------------------------------------
;	 function _terminate
;	-----------------------------------------
__terminate:
;	main.c:203: P3 = 0x55;
	mov	_P3,#0x55
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
