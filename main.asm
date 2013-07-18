;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
; This file was generated Thu Jul 18 16:01:45 2013
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
	.globl _r2modq
	.globl _rmodq
	.globl _r2modp
	.globl _rmodp
	.globl _r2modm
	.globl _rmodm
	.globl _garnerConstant
	.globl _privateKey_Q
	.globl _privateKey_P
	.globl _privateKey
	.globl _publicKey
	.globl _message
	.globl _q
	.globl _p
	.globl _modulus
	.globl _decryptedMessage
	.globl _encryptedMessage
	.globl _montMultiply_Result_PARM_2
	.globl _montMultiply_Both_PARM_4
	.globl _montMultiply_Single_PARM_3
	.globl _mpSubtract_Single_PARM_3
	.globl _mpAdd_Single_PARM_3
	.globl _crtModExp_PARM_12
	.globl _crtModExp_PARM_11
	.globl _crtModExp_PARM_10
	.globl _crtModExp_PARM_9
	.globl _crtModExp_PARM_8
	.globl _crtModExp_PARM_7
	.globl _crtModExp_PARM_6
	.globl _crtModExp_PARM_5
	.globl _crtModExp_PARM_4
	.globl _crtModExp_PARM_3
	.globl _crtModExp_PARM_2
	.globl _montModExp_PARM_6
	.globl _montModExp_PARM_5
	.globl _montModExp_PARM_4
	.globl _montModExp_PARM_3
	.globl _montModExp_PARM_2
	.globl _montMultiply_Both_PARM_3
	.globl _montMultiply_Both_PARM_2
	.globl _montMultiply_Single_PARM_2
	.globl _mpSubtract_Single_PARM_2
	.globl _mpAdd_Single_PARM_2
	.globl _mpAdd_Single
	.globl _mpSubtract_Single
	.globl _montMultiply_Single
	.globl _montMultiply_Both
	.globl _montMultiply_Result
	.globl _montModExp
	.globl _crtModExp
	.globl __displayCycles
	.globl __displayResult
	.globl __writeModulus
	.globl __writeA_Mem
	.globl __writeA_Reg
	.globl __writeB_Mem
	.globl __writeB_Reg
	.globl __writeResult
	.globl __readResult
	.globl __mul_montgomery
	.globl __adder_add
	.globl __adder_subtract
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
_mpAdd_Single_PARM_2:
	.ds 1
_mpSubtract_Single_PARM_2:
	.ds 1
_montMultiply_Single_PARM_2:
	.ds 1
_montMultiply_Both_PARM_2:
	.ds 1
_montMultiply_Both_PARM_3:
	.ds 1
_montModExp_PARM_2:
	.ds 1
_montModExp_PARM_3:
	.ds 3
_montModExp_PARM_4:
	.ds 1
_montModExp_PARM_5:
	.ds 1
_montModExp_PARM_6:
	.ds 1
_montModExp_r_1_1:
	.ds 1
_montModExp_i_1_1:
	.ds 1
_montModExp_t_1_1:
	.ds 2
_crtModExp_PARM_2:
	.ds 1
_crtModExp_PARM_3:
	.ds 3
_crtModExp_PARM_4:
	.ds 3
_crtModExp_PARM_5:
	.ds 1
_crtModExp_PARM_6:
	.ds 1
_crtModExp_PARM_7:
	.ds 1
_crtModExp_PARM_8:
	.ds 1
_crtModExp_PARM_9:
	.ds 1
_crtModExp_PARM_10:
	.ds 1
_crtModExp_PARM_11:
	.ds 1
_crtModExp_PARM_12:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_mpAdd_Single_PARM_3:
	.ds 1
_mpSubtract_Single_PARM_3:
	.ds 1
_montMultiply_Single_PARM_3:
	.ds 1
_montMultiply_Both_PARM_4:
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
_encryptedMessage	=	0x2000
_decryptedMessage	=	0x2100
_montModExp_one_1_1	=	0x0000
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
	.org 0x1000
_modulus::
	.ds 128
	.org 0x1100
_p::
	.ds 128
	.org 0x1200
_q::
	.ds 128
	.org 0x1300
_message::
	.ds 128
	.org 0x1400
_publicKey::
	.ds 128
	.org 0x1500
_privateKey::
	.ds 128
	.org 0x1600
_privateKey_P::
	.ds 128
	.org 0x1700
_privateKey_Q::
	.ds 128
	.org 0x1800
_garnerConstant::
	.ds 128
	.org 0x1900
_rmodm::
	.ds 128
	.org 0x1A00
_r2modm::
	.ds 128
	.org 0x1B00
_rmodp::
	.ds 128
	.org 0x1C00
_r2modp::
	.ds 128
	.org 0x1D00
_rmodq::
	.ds 128
	.org 0x1E00
_r2modq::
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
;	main.c:26: volatile __xdata __at (0x1000) unsigned char modulus[SIZE] = {0x6B, 0xF3, 0x61, 0x86, 0x13, 0x2C, 0xF5, 0x1B, 0xCA, 0x94, 0x9F, 0x12, 0xDA, 0xDA, 0xCC, 0x26, 0xD9, 0x73, 0x2E, 0x66, 0x11, 0x63, 0xEE, 0x72, 0x43, 0x40, 0x97, 0x55, 0x4C, 0x06, 0x20, 0x23, 0x7F, 0x47, 0xD7, 0x9F, 0xD4, 0xDE, 0xFC, 0x76, 0x10, 0xD3, 0x19, 0x6C, 0x90, 0x44, 0x58, 0xA9, 0xD7, 0x4A, 0x66, 0x28, 0x96, 0x24, 0x94, 0xF6, 0x08, 0xF4, 0x7B, 0x1A, 0x4D, 0x07, 0x86, 0x3B, 0x2A, 0x84, 0xF9, 0xBA, 0x4A, 0xDD, 0x3D, 0xD7, 0x07, 0x85, 0xC6, 0x67, 0x18, 0x5B, 0xAB, 0xBA, 0x5D, 0xF2, 0x35, 0x4E, 0xC4, 0x61, 0xA6, 0x06, 0x04, 0x55, 0xCF, 0x68, 0x92, 0x64, 0xDB, 0x90, 0x8B, 0xCF, 0x58, 0x50, 0x00, 0x7B, 0xD3, 0xB6, 0xE4, 0xCF, 0x60, 0x4A, 0x69, 0xC2, 0x70, 0x3D, 0x0F, 0xC4, 0x03, 0x2B, 0x4D, 0x87, 0xFA, 0x2C, 0x34, 0x7F, 0x77, 0x7A, 0x6A, 0x85, 0x48, 0x9B};
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
;	main.c:27: volatile __xdata __at (0x1100) unsigned char p[SIZE] = {0x6B, 0xFE, 0xC7, 0x5A, 0x4E, 0xFA, 0xE5, 0x44, 0x6B, 0xFF, 0xB0, 0x12, 0x7B, 0xB0, 0x4D, 0x08, 0x94, 0x76, 0x9A, 0xEB, 0x53, 0xBC, 0xF2, 0x6D, 0x8C, 0x63, 0xA2, 0x79, 0x40, 0x4D, 0xCB, 0xA0, 0x1C, 0xC5, 0x23, 0x90, 0xF1, 0x61, 0xF6, 0x3B, 0x81, 0xF2, 0xD9, 0x03, 0x99, 0x3E, 0xA6, 0xA5, 0x33, 0x40, 0x08, 0x26, 0xED, 0x9E, 0xD8, 0xAB, 0xC1, 0xAF, 0x15, 0x8F, 0x01, 0xDF, 0xB7, 0xCA};
	mov	dptr,#_p
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_p + 0x0001)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_p + 0x0002)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_p + 0x0003)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_p + 0x0004)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_p + 0x0005)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_p + 0x0006)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_p + 0x0007)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_p + 0x0008)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_p + 0x0009)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_p + 0x000a)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_p + 0x000b)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_p + 0x000c)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_p + 0x000d)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_p + 0x000e)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_p + 0x000f)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_p + 0x0010)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_p + 0x0011)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_p + 0x0012)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_p + 0x0013)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_p + 0x0014)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_p + 0x0015)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_p + 0x0016)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_p + 0x0017)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_p + 0x0018)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_p + 0x0019)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_p + 0x001a)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_p + 0x001b)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_p + 0x001c)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_p + 0x001d)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_p + 0x001e)
	mov	a,#0xCB
	movx	@dptr,a
	mov	dptr,#(_p + 0x001f)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_p + 0x0020)
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_p + 0x0021)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_p + 0x0022)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_p + 0x0023)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_p + 0x0024)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_p + 0x0025)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_p + 0x0026)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_p + 0x0027)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_p + 0x0028)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_p + 0x0029)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_p + 0x002a)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_p + 0x002b)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_p + 0x002c)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_p + 0x002d)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_p + 0x002e)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_p + 0x002f)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_p + 0x0030)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_p + 0x0031)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_p + 0x0032)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_p + 0x0033)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_p + 0x0034)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_p + 0x0035)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_p + 0x0036)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_p + 0x0037)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_p + 0x0038)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_p + 0x0039)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_p + 0x003a)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_p + 0x003b)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_p + 0x003c)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_p + 0x003d)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_p + 0x003e)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_p + 0x003f)
	mov	a,#0xCA
	movx	@dptr,a
;	main.c:28: volatile __xdata __at (0x1200) unsigned char q[SIZE] = {0x01, 0x1F, 0x21, 0x78, 0x77, 0x7A, 0x26, 0x6B, 0xC5, 0x9A, 0xFE, 0x71, 0x68, 0xEB, 0x9D, 0xCD, 0xFE, 0xAD, 0x8D, 0xF7, 0x33, 0x2E, 0x69, 0x23, 0x4F, 0xC5, 0x20, 0x61, 0x46, 0x37, 0x47, 0xA7, 0xC8, 0x7D, 0xD2, 0x75, 0xB4, 0x3A, 0xE0, 0x34, 0x5F, 0x40, 0xE2, 0xD2, 0xD8, 0x39, 0x81, 0x9C, 0xB5, 0x30, 0x94, 0xBC, 0x26, 0x22, 0xCA, 0xAF, 0xF2, 0xA5, 0xFC, 0xFE, 0x3A, 0xEF, 0x18, 0xC4};
	mov	dptr,#_q
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_q + 0x0001)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_q + 0x0002)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_q + 0x0003)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_q + 0x0004)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_q + 0x0005)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_q + 0x0006)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_q + 0x0007)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_q + 0x0008)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_q + 0x0009)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_q + 0x000a)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_q + 0x000b)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_q + 0x000c)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_q + 0x000d)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_q + 0x000e)
	mov	a,#0x9D
	movx	@dptr,a
	mov	dptr,#(_q + 0x000f)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_q + 0x0010)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_q + 0x0011)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_q + 0x0012)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_q + 0x0013)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_q + 0x0014)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_q + 0x0015)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_q + 0x0016)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_q + 0x0017)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_q + 0x0018)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_q + 0x0019)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_q + 0x001a)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_q + 0x001b)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_q + 0x001c)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_q + 0x001d)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_q + 0x001e)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_q + 0x001f)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_q + 0x0020)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_q + 0x0021)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_q + 0x0022)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_q + 0x0023)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_q + 0x0024)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_q + 0x0025)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_q + 0x0026)
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_q + 0x0027)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_q + 0x0028)
	mov	a,#0x5F
	movx	@dptr,a
	mov	dptr,#(_q + 0x0029)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_q + 0x002a)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_q + 0x002b)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_q + 0x002c)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_q + 0x002d)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_q + 0x002e)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_q + 0x002f)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_q + 0x0030)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_q + 0x0031)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_q + 0x0032)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_q + 0x0033)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_q + 0x0034)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_q + 0x0035)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_q + 0x0036)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_q + 0x0037)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_q + 0x0038)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_q + 0x0039)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_q + 0x003a)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_q + 0x003b)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_q + 0x003c)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_q + 0x003d)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_q + 0x003e)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_q + 0x003f)
	mov	a,#0xC4
	movx	@dptr,a
;	main.c:29: volatile __xdata __at (0x1300) unsigned char message[SIZE] = {0xE0, 0xFA, 0x7D, 0xF4, 0x9E, 0xFF, 0x31, 0x8A, 0x4A, 0x17, 0x7A, 0xE9, 0x37, 0x86, 0x15, 0x27, 0x2B, 0x29, 0x06, 0x53, 0xE1, 0x08, 0xD2, 0x11, 0xC6, 0xEF, 0x43, 0xB6, 0xC8, 0x93, 0x4F, 0x27, 0xD1, 0x62, 0xCF, 0x12, 0xC3, 0xE6, 0xA4, 0x32, 0x85, 0xA6, 0x4F, 0x26, 0x12, 0x66, 0x87, 0x5A, 0x8F, 0xAE, 0x57, 0xE2, 0x7C, 0x8E, 0xFB, 0xA6, 0xE3, 0x6A, 0x84, 0xF7, 0x92, 0x5D, 0x66, 0x09, 0x17, 0xFC, 0x4A, 0x98, 0x1E, 0xDA, 0xB7, 0xA1, 0x94, 0xE8, 0x59, 0xAE, 0x3A, 0xA3, 0x80, 0x13, 0x13, 0x81, 0x0A, 0x1C, 0x6F, 0x0C, 0x16, 0x67, 0x48, 0x2A, 0x1F, 0x40, 0x8F, 0x97, 0xBB, 0x55, 0x52, 0x35, 0x88, 0x65, 0xD8, 0x01, 0x8F, 0x77, 0x86, 0xA5, 0x55, 0x66, 0x53, 0x02, 0xF3, 0x41, 0xF4, 0x26, 0xCC, 0xD7, 0x0A, 0xEA, 0xE4, 0x3C, 0xA1, 0x65, 0xBA, 0x8D, 0x71, 0x08, 0xEE, 0x98};
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
;	main.c:30: volatile __xdata __at (0x1400) unsigned char publicKey[SIZE] = {0x01, 0x01};
	mov	dptr,#_publicKey
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_publicKey + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
;	main.c:31: volatile __xdata __at (0x1500) unsigned char privateKey[SIZE] = {0x01, 0x23, 0xC5, 0xD2, 0x6A, 0xE6, 0x8B, 0x2B, 0xE7, 0x41, 0x5A, 0x8E, 0xBA, 0x08, 0x1A, 0x66, 0x97, 0xC4, 0xB7, 0x6E, 0x54, 0x5D, 0xC4, 0x99, 0x40, 0x63, 0x65, 0xED, 0x77, 0xCA, 0xCF, 0xEB, 0x75, 0xCF, 0x29, 0x3C, 0xE5, 0x27, 0x0B, 0x54, 0xD0, 0x11, 0x7E, 0xB2, 0x0B, 0x12, 0x9F, 0xBD, 0xBF, 0x2F, 0x51, 0x4C, 0x51, 0x6D, 0x2F, 0xF8, 0x2D, 0x62, 0xB4, 0x1E, 0xA5, 0xEC, 0xE9, 0xDE, 0x0B, 0xE9, 0x7A, 0x72, 0xAE, 0xA4, 0x56, 0xAF, 0xE3, 0xAF, 0x72, 0x54, 0x05, 0xBE, 0x14, 0xA1, 0x01, 0x4D, 0x0D, 0x8D, 0x02, 0x7F, 0xCA, 0xEF, 0xEC, 0x83, 0xE2, 0xA0, 0x75, 0x0A, 0xEF, 0x0C, 0x2C, 0x61, 0xC2, 0x5C, 0xDC, 0x95, 0xC3, 0x36, 0x63, 0x69, 0x6A, 0x76, 0x64, 0xD2, 0x57, 0x56, 0x7F, 0xE3, 0xC9, 0xCA, 0x11, 0x1F, 0xFD, 0xFC, 0x1A, 0x54, 0xA0, 0x70, 0x42, 0x97, 0xF7, 0x6D};
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
;	main.c:32: volatile __xdata __at (0x1600) unsigned char privateKey_P[SIZE] = {0x2C, 0x67, 0x47, 0x48, 0x1D, 0xC5, 0xD9, 0x0C, 0x53, 0x27, 0xDE, 0xEC, 0xA5, 0xE8, 0xE3, 0x91, 0x6D, 0x1B, 0xAB, 0x01, 0x64, 0xCF, 0x45, 0x82, 0xA8, 0xC7, 0x1D, 0x2A, 0xC3, 0xA4, 0x02, 0x74, 0x44, 0xD3, 0x4F, 0x30, 0xD7, 0x27, 0x34, 0xAB, 0x70, 0x6F, 0x60, 0x15, 0x64, 0xD9, 0x82, 0x50, 0x16, 0x98, 0xD1, 0x59, 0xB6, 0x12, 0x8C, 0xD8, 0x27, 0xC0, 0xBB, 0xD1, 0x94, 0xC6, 0x6B, 0xB5};
	mov	dptr,#_privateKey_P
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0001)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0002)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0003)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0004)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0005)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0006)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0007)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0008)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0009)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x000a)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x000b)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x000c)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x000d)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x000e)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x000f)
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0010)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0011)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0012)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0013)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0014)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0015)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0016)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0017)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0018)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0019)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x001a)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x001b)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x001c)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x001d)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x001e)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x001f)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0020)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0021)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0022)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0023)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0024)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0025)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0026)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0027)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0028)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0029)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x002a)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x002b)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x002c)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x002d)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x002e)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x002f)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0030)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0031)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0032)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0033)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0034)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0035)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0036)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0037)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0038)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x0039)
	mov	a,#0xC0
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x003a)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x003b)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x003c)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x003d)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x003e)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_privateKey_P + 0x003f)
	mov	a,#0xB5
	movx	@dptr,a
;	main.c:33: volatile __xdata __at (0x1700) unsigned char privateKey_Q[SIZE] = {0x30, 0xF3, 0xDF, 0x20, 0xFD, 0xBE, 0x6E, 0x65, 0xC8, 0x9B, 0x9A, 0xE2, 0xE2, 0x5E, 0xEB, 0xF2, 0x4D, 0x4C, 0x25, 0x1D, 0x18, 0x2D, 0xBF, 0xCC, 0x41, 0x66, 0x1A, 0x69, 0x57, 0x4C, 0xA0, 0xD7, 0x40, 0x2A, 0xF5, 0x51, 0x5D, 0xBB, 0x78, 0xAC, 0xF1, 0xD1, 0x4C, 0x27, 0x46, 0x65, 0x3B, 0xC4, 0xA7, 0x61, 0x27, 0x34, 0x47, 0x42, 0xA4, 0x14, 0xAD, 0x84, 0x0A, 0x00, 0x68, 0xE3, 0x3F, 0x28};
	mov	dptr,#_privateKey_Q
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0001)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0002)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0003)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0004)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0005)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0006)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0007)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0008)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0009)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x000a)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x000b)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x000c)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x000d)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x000e)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x000f)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0010)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0011)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0012)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0013)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0014)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0015)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0016)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0017)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0018)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0019)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x001a)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x001b)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x001c)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x001d)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x001e)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x001f)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0020)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0021)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0022)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0023)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0024)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0025)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0026)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0027)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0028)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0029)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x002a)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x002b)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x002c)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x002d)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x002e)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x002f)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0030)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0031)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0032)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0033)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0034)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0035)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0036)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0037)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0038)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x0039)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x003a)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x003b)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x003c)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x003d)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x003e)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_privateKey_Q + 0x003f)
	mov	a,#0x28
	movx	@dptr,a
;	main.c:34: volatile __xdata __at (0x1800) unsigned char garnerConstant[SIZE] = {0x6C, 0x33, 0xE4, 0x85, 0x8E, 0x9C, 0x7D, 0x8B, 0xE4, 0x3A, 0x69, 0x9A, 0x4B, 0x1B, 0xB7, 0x75, 0x8D, 0xBB, 0x68, 0x42, 0x31, 0x91, 0xC6, 0xB9, 0x8B, 0x78, 0x3A, 0x14, 0x92, 0x2B, 0x69, 0x0A, 0xE4, 0x2A, 0x55, 0x9C, 0x44, 0x11, 0x47, 0x2B, 0xE6, 0x94, 0xB2, 0xCB, 0xEF, 0x85, 0xDC, 0x15, 0x42, 0x75, 0x04, 0x68, 0x75, 0xE3, 0x83, 0xAF, 0x1E, 0x36, 0x9A, 0x2C, 0x3F, 0xD6, 0xBC, 0x2B};
	mov	dptr,#_garnerConstant
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0001)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0002)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0003)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0004)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0005)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0006)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0007)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0008)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0009)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x000a)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x000b)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x000c)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x000d)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x000e)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x000f)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0010)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0011)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0012)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0013)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0014)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0015)
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0016)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0017)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0018)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0019)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x001a)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x001b)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x001c)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x001d)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x001e)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x001f)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0020)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0021)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0022)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0023)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0024)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0025)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0026)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0027)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0028)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0029)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x002a)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x002b)
	mov	a,#0xCB
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x002c)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x002d)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x002e)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x002f)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0030)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0031)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0032)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0033)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0034)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0035)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0036)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0037)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0038)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x0039)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x003a)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x003b)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x003c)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x003d)
	mov	a,#0xD6
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x003e)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_garnerConstant + 0x003f)
	mov	a,#0x2B
	movx	@dptr,a
;	main.c:36: volatile __xdata __at (0x1900) unsigned char rmodm[SIZE] = {0x95, 0x0C, 0x9E, 0x79, 0xEC, 0xD3, 0x0A, 0xE4, 0x35, 0x6B, 0x60, 0xED, 0x25, 0x25, 0x33, 0xD9, 0x26, 0x8C, 0xD1, 0x99, 0xEE, 0x9C, 0x11, 0x8D, 0xBC, 0xBF, 0x68, 0xAA, 0xB3, 0xF9, 0xDF, 0xDC, 0x80, 0xB8, 0x28, 0x60, 0x2B, 0x21, 0x03, 0x89, 0xEF, 0x2C, 0xE6, 0x93, 0x6F, 0xBB, 0xA7, 0x56, 0x28, 0xB5, 0x99, 0xD7, 0x69, 0xDB, 0x6B, 0x09, 0xF7, 0x0B, 0x84, 0xE5, 0xB2, 0xF8, 0x79, 0xC4, 0xD5, 0x7B, 0x06, 0x45, 0xB5, 0x22, 0xC2, 0x28, 0xF8, 0x7A, 0x39, 0x98, 0xE7, 0xA4, 0x54, 0x45, 0xA2, 0x0D, 0xCA, 0xB1, 0x3B, 0x9E, 0x59, 0xF9, 0xFB, 0xAA, 0x30, 0x97, 0x6D, 0x9B, 0x24, 0x6F, 0x74, 0x30, 0xA7, 0xAF, 0xFF, 0x84, 0x2C, 0x49, 0x1B, 0x30, 0x9F, 0xB5, 0x96, 0x3D, 0x8F, 0xC2, 0xF0, 0x3B, 0xFC, 0xD4, 0xB2, 0x78, 0x05, 0xD3, 0xCB, 0x80, 0x88, 0x85, 0x95, 0x7A, 0xB7, 0x64};
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
;	main.c:37: volatile __xdata __at (0x1A00) unsigned char r2modm[SIZE] = {0xE4, 0xC4, 0x31, 0x31, 0x08, 0x64, 0x1B, 0xC5, 0x40, 0x21, 0xD5, 0x3F, 0x82, 0x98, 0xB5, 0x8B, 0x0C, 0xDA, 0xDE, 0x0A, 0x73, 0xD6, 0x75, 0x80, 0x81, 0x7B, 0xAF, 0x90, 0x51, 0xA2, 0x22, 0xDF, 0x60, 0xAD, 0x1A, 0x5A, 0x69, 0x4E, 0x87, 0xF5, 0x82, 0x19, 0xC7, 0xDD, 0xAF, 0xEB, 0x7A, 0x3E, 0xF3, 0xDA, 0xB1, 0xE1, 0xED, 0xD2, 0x2E, 0x26, 0x7D, 0xD5, 0xB7, 0xC3, 0x13, 0x09, 0xD5, 0x11, 0xDE, 0x9E, 0x12, 0x6A, 0x51, 0xF5, 0x83, 0x1B, 0xDE, 0xAB, 0x6D, 0xD7, 0xAD, 0x32, 0x07, 0x6C, 0x95, 0x2A, 0x56, 0xFF, 0xD7, 0xE7, 0x00, 0x85, 0xBE, 0xB4, 0x3E, 0xEF, 0x73, 0x88, 0x75, 0xD9, 0x5C, 0x6A, 0xB1, 0x58, 0x4A, 0xBC, 0x80, 0x53, 0x63, 0x48, 0xFD, 0xA0, 0xFC, 0xAD, 0xD9, 0x34, 0xFB, 0xD3, 0xA9, 0xE8, 0x18, 0x32, 0x33, 0x78, 0xB0, 0x08, 0xE4, 0x7B, 0x59, 0xF2, 0x45, 0x8A};
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
;	main.c:38: volatile __xdata __at (0x1B00) unsigned char rmodp[SIZE] = {0xF3, 0x1C, 0x0F, 0xBF, 0x66, 0x8C, 0x48, 0xFA, 0x38, 0xB7, 0x15, 0xAE, 0x74, 0x30, 0xB7, 0xA2, 0xBB, 0xBF, 0xB0, 0xE1, 0x74, 0x89, 0xF5, 0x1D, 0x6C, 0x88, 0xD4, 0xB3, 0x33, 0x16, 0xBE, 0xBF, 0x3B, 0x2F, 0x54, 0x6C, 0x57, 0x84, 0xCC, 0x3A, 0x61, 0xF4, 0x27, 0x6B, 0xEB, 0x0B, 0x35, 0xC7, 0x74, 0x41, 0xAB, 0x04, 0xEC, 0x56, 0x15, 0x32, 0x04, 0x15, 0x76, 0x07, 0x44, 0xD7, 0x31, 0xC8};
	mov	dptr,#_rmodp
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0001)
	mov	a,#0x1C
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0002)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0003)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0004)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0005)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0006)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0007)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0008)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0009)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x000a)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x000b)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x000c)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x000d)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x000e)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x000f)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0010)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0011)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0012)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0013)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0014)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0015)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0016)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0017)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0018)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0019)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x001a)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x001b)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x001c)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x001d)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x001e)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x001f)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0020)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0021)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0022)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0023)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0024)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0025)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0026)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0027)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0028)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0029)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x002a)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x002b)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x002c)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x002d)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x002e)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x002f)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0030)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0031)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0032)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0033)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0034)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0035)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0036)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0037)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0038)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x0039)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x003a)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x003b)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x003c)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x003d)
	mov	a,#0xD7
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x003e)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_rmodp + 0x003f)
	mov	a,#0xC8
	movx	@dptr,a
;	main.c:39: volatile __xdata __at (0x1C00) unsigned char r2modp[SIZE] = {0xFE, 0xA0, 0x07, 0x26, 0xAE, 0xCA, 0x7F, 0x54, 0xD2, 0xEC, 0xB4, 0x77, 0x2E, 0xD2, 0xBF, 0xB0, 0x09, 0x97, 0x9C, 0x81, 0x50, 0xF6, 0x75, 0xFB, 0xBD, 0x1B, 0x3C, 0xE9, 0x03, 0x6C, 0xBB, 0x73, 0xB3, 0x8A, 0x04, 0x9B, 0xE3, 0x99, 0xC9, 0x45, 0xBA, 0x53, 0x9C, 0x75, 0x9E, 0x10, 0x79, 0x8C, 0x21, 0x82, 0xE9, 0x06, 0x8E, 0x1E, 0xBA, 0xDD, 0xC4, 0x28, 0xEE, 0x80, 0xBE, 0x65, 0x72, 0x2B};
	mov	dptr,#_r2modp
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0001)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0002)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0003)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0004)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0005)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0006)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0007)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0008)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0009)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x000a)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x000b)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x000c)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x000d)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x000e)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x000f)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0010)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0011)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0012)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0013)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0014)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0015)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0016)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0017)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0018)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0019)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x001a)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x001b)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x001c)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x001d)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x001e)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x001f)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0020)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0021)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0022)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0023)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0024)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0025)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0026)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0027)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0028)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0029)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x002a)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x002b)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x002c)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x002d)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x002e)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x002f)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0030)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0031)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0032)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0033)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0034)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0035)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0036)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0037)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0038)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x0039)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x003a)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x003b)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x003c)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x003d)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x003e)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_r2modp + 0x003f)
	mov	a,#0x2B
	movx	@dptr,a
;	main.c:40: volatile __xdata __at (0x1D00) unsigned char rmodq[SIZE] = {0x78, 0xA1, 0xC1, 0xCA, 0x4F, 0x28, 0xB2, 0x7A, 0x24, 0x09, 0x19, 0x8B, 0xEB, 0xA7, 0x99, 0x68, 0x1E, 0xFD, 0x83, 0x23, 0xC6, 0xFF, 0x8D, 0x26, 0x3F, 0xA9, 0x56, 0xBE, 0xF6, 0x01, 0x6D, 0xB5, 0xA9, 0xE1, 0x50, 0x17, 0xA5, 0xC6, 0xE8, 0x88, 0xB0, 0xB9, 0x7C, 0x21, 0x0B, 0x1D, 0xDD, 0x6F, 0x36, 0x12, 0xAB, 0x3F, 0x9B, 0x30, 0x9C, 0xAF, 0x97, 0x75, 0x88, 0x9E, 0x40, 0xB3, 0xF4, 0xBC};
	mov	dptr,#_rmodq
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0001)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0002)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0003)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0004)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0005)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0006)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0007)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0008)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0009)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x000a)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x000b)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x000c)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x000d)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x000e)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x000f)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0010)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0011)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0012)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0013)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0014)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0015)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0016)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0017)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0018)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0019)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x001a)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x001b)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x001c)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x001d)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x001e)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x001f)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0020)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0021)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0022)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0023)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0024)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0025)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0026)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0027)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0028)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0029)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x002a)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x002b)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x002c)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x002d)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x002e)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x002f)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0030)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0031)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0032)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0033)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0034)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0035)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0036)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0037)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0038)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x0039)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x003a)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x003b)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x003c)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x003d)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x003e)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_rmodq + 0x003f)
	mov	a,#0xBC
	movx	@dptr,a
;	main.c:41: volatile __xdata __at (0x1E00) unsigned char r2modq[SIZE] = {0x09, 0x70, 0x9C, 0xA3, 0x36, 0x13, 0xCB, 0x7A, 0x92, 0xFF, 0x79, 0x25, 0x48, 0x67, 0xB6, 0xAB, 0x0C, 0xC4, 0x22, 0x0B, 0x8C, 0xAB, 0x09, 0x10, 0x77, 0x66, 0x8C, 0x20, 0x05, 0x38, 0x76, 0x56, 0x16, 0xA1, 0x94, 0xAC, 0xC2, 0x85, 0xBC, 0xCD, 0x1B, 0xB1, 0xB0, 0xA3, 0xE6, 0xA6, 0x87, 0xDC, 0xF0, 0x98, 0x67, 0x7E, 0xD3, 0xAD, 0x5A, 0xC2, 0x75, 0x49, 0xC1, 0xC2, 0x47, 0x5D, 0xC2, 0x6F};
	mov	dptr,#_r2modq
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0001)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0002)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0003)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0004)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0005)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0006)
	mov	a,#0xCB
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0007)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0008)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0009)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x000a)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x000b)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x000c)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x000d)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x000e)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x000f)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0010)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0011)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0012)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0013)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0014)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0015)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0016)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0017)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0018)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0019)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x001a)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x001b)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x001c)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x001d)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x001e)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x001f)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0020)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0021)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0022)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0023)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0024)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0025)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0026)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0027)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0028)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0029)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x002a)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x002b)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x002c)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x002d)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x002e)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x002f)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0030)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0031)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0032)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0033)
	mov	a,#0x7E
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0034)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0035)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0036)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0037)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0038)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x0039)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x003a)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x003b)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x003c)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x003d)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x003e)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_r2modq + 0x003f)
	mov	a,#0x6F
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
;	main.c:79: int main() {
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
;	main.c:81: montModExp(0x20, 0x13, publicKey, 0x10, 0x19, 0x1A);
	mov	_montModExp_PARM_3,#_publicKey
	mov	(_montModExp_PARM_3 + 1),#(_publicKey >> 8)
	mov	(_montModExp_PARM_3 + 2),#0x00
	mov	_montModExp_PARM_2,#0x13
	mov	_montModExp_PARM_4,#0x10
	mov	_montModExp_PARM_5,#0x19
	mov	_montModExp_PARM_6,#0x1A
	mov	dpl,#0x20
	lcall	_montModExp
;	main.c:82: _displayResult();
	lcall	__displayResult
;	main.c:85: montModExp(0x21, 0x20, privateKey, 0x10, 0x19, 0x1A);
	mov	_montModExp_PARM_3,#_privateKey
	mov	(_montModExp_PARM_3 + 1),#(_privateKey >> 8)
	mov	(_montModExp_PARM_3 + 2),#0x00
	mov	_montModExp_PARM_2,#0x20
	mov	_montModExp_PARM_4,#0x10
	mov	_montModExp_PARM_5,#0x19
	mov	_montModExp_PARM_6,#0x1A
	mov	dpl,#0x21
	lcall	_montModExp
;	main.c:86: _displayResult();
	lcall	__displayResult
;	main.c:94: _terminate();
	lcall	__terminate
;	main.c:95: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mpAdd_Single'
;------------------------------------------------------------
;a                         Allocated with name '_mpAdd_Single_PARM_2'
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:98: void mpAdd_Single(unsigned char r, unsigned char a, bool readResult) {
;	-----------------------------------------
;	 function mpAdd_Single
;	-----------------------------------------
_mpAdd_Single:
	mov	r2,dpl
;	main.c:99: _writeA_Mem(a);
	mov	dpl,_mpAdd_Single_PARM_2
	push	ar2
	lcall	__writeA_Mem
;	main.c:100: _writeB_Reg();
	lcall	__writeB_Reg
;	main.c:102: _adder_add();
	lcall	__adder_add
	pop	ar2
;	main.c:104: if (readResult)
	jnb	_mpAdd_Single_PARM_3,00103$
;	main.c:105: _readResult(r);
	mov	dpl,r2
	ljmp	__readResult
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mpSubtract_Single'
;------------------------------------------------------------
;a                         Allocated with name '_mpSubtract_Single_PARM_2'
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:108: void mpSubtract_Single(unsigned char r, unsigned char a, bool readResult) {
;	-----------------------------------------
;	 function mpSubtract_Single
;	-----------------------------------------
_mpSubtract_Single:
	mov	r2,dpl
;	main.c:109: _writeA_Mem(a);
	mov	dpl,_mpSubtract_Single_PARM_2
	push	ar2
	lcall	__writeA_Mem
;	main.c:110: _writeB_Reg();
	lcall	__writeB_Reg
;	main.c:112: _adder_subtract();
	lcall	__adder_subtract
	pop	ar2
;	main.c:114: if (readResult)
	jnb	_mpSubtract_Single_PARM_3,00103$
;	main.c:115: _readResult(r);
	mov	dpl,r2
	ljmp	__readResult
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montMultiply_Single'
;------------------------------------------------------------
;a                         Allocated with name '_montMultiply_Single_PARM_2'
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:118: void montMultiply_Single(unsigned char r, unsigned char a, bool readResult) {
;	-----------------------------------------
;	 function montMultiply_Single
;	-----------------------------------------
_montMultiply_Single:
	mov	r2,dpl
;	main.c:119: _writeA_Mem(a);
	mov	dpl,_montMultiply_Single_PARM_2
	push	ar2
	lcall	__writeA_Mem
;	main.c:120: _writeB_Reg();
	lcall	__writeB_Reg
;	main.c:122: _mul_montgomery();
	lcall	__mul_montgomery
	pop	ar2
;	main.c:124: if (readResult)
	jnb	_montMultiply_Single_PARM_3,00103$
;	main.c:125: _readResult(r);
	mov	dpl,r2
	ljmp	__readResult
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montMultiply_Both'
;------------------------------------------------------------
;a                         Allocated with name '_montMultiply_Both_PARM_2'
;b                         Allocated with name '_montMultiply_Both_PARM_3'
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:128: void montMultiply_Both(unsigned char r, unsigned char a, unsigned char b, bool readResult) {
;	-----------------------------------------
;	 function montMultiply_Both
;	-----------------------------------------
_montMultiply_Both:
	mov	r2,dpl
;	main.c:129: _writeA_Mem(a);
	mov	dpl,_montMultiply_Both_PARM_2
	push	ar2
	lcall	__writeA_Mem
;	main.c:130: _writeB_Mem(b);
	mov	dpl,_montMultiply_Both_PARM_3
	lcall	__writeB_Mem
;	main.c:132: _mul_montgomery();
	lcall	__mul_montgomery
	pop	ar2
;	main.c:134: if (readResult)
	jnb	_montMultiply_Both_PARM_4,00103$
;	main.c:135: _readResult(r);
	mov	dpl,r2
	ljmp	__readResult
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montMultiply_Result'
;------------------------------------------------------------
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:138: void montMultiply_Result(unsigned char r, bool readResult) {
;	-----------------------------------------
;	 function montMultiply_Result
;	-----------------------------------------
_montMultiply_Result:
	mov	r2,dpl
;	main.c:139: _writeA_Reg();
	push	ar2
	lcall	__writeA_Reg
;	main.c:140: _writeB_Reg();
	lcall	__writeB_Reg
;	main.c:142: _mul_montgomery();
	lcall	__mul_montgomery
	pop	ar2
;	main.c:144: if (readResult)
	jnb	_montMultiply_Result_PARM_2,00103$
;	main.c:145: _readResult(r);
	mov	dpl,r2
	ljmp	__readResult
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'montModExp'
;------------------------------------------------------------
;x                         Allocated with name '_montModExp_PARM_2'
;e                         Allocated with name '_montModExp_PARM_3'
;m                         Allocated with name '_montModExp_PARM_4'
;rmodm                     Allocated with name '_montModExp_PARM_5'
;r2modm                    Allocated with name '_montModExp_PARM_6'
;r                         Allocated with name '_montModExp_r_1_1'
;i                         Allocated with name '_montModExp_i_1_1'
;j                         Allocated to registers r6 
;k                         Allocated to registers r2 r3 
;t                         Allocated with name '_montModExp_t_1_1'
;one                       Allocated with name '_montModExp_one_1_1'
;------------------------------------------------------------
;	main.c:148: void montModExp(unsigned char r, unsigned char x, unsigned char *e, unsigned char m, unsigned char rmodm, unsigned char r2modm) {
;	-----------------------------------------
;	 function montModExp
;	-----------------------------------------
_montModExp:
	mov	_montModExp_r_1_1,dpl
;	main.c:157: *one = 0x01;
	mov	dptr,#_montModExp_one_1_1
	mov	a,#0x01
	movx	@dptr,a
;	main.c:160: _writeModulus(m);
	mov	dpl,_montModExp_PARM_4
	lcall	__writeModulus
;	main.c:163: montMultiply_Both(0x01, x, r2modm, true);
	mov	_montMultiply_Both_PARM_2,_montModExp_PARM_2
	mov	_montMultiply_Both_PARM_3,_montModExp_PARM_6
	setb	_montMultiply_Both_PARM_4
	mov	dpl,#0x01
	lcall	_montMultiply_Both
;	main.c:166: t = 0;
;	main.c:167: for (i = 0; i < SIZE; i++) {
	clr	a
	mov	_montModExp_t_1_1,a
	mov	(_montModExp_t_1_1 + 1),a
	mov	_montModExp_i_1_1,a
00114$:
	mov	a,#0x100 - 0x80
	add	a,_montModExp_i_1_1
	jnc	00135$
	ljmp	00105$
00135$:
;	main.c:168: if (e[(SIZE-1)-i] != 0) {
	mov	r6,_montModExp_i_1_1
	mov	r7,#0x00
	mov	a,#0x7F
	clr	c
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	mov	a,r6
	add	a,_montModExp_PARM_3
	mov	r6,a
	mov	a,r7
	addc	a,(_montModExp_PARM_3 + 1)
	mov	r7,a
	mov	r0,(_montModExp_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	jz	00116$
;	main.c:169: for (j = 0; j < 8; j++) {
	mov	r6,#0x00
00110$:
	cjne	r6,#0x08,00137$
00137$:
	jnc	00116$
;	main.c:170: if (e[(SIZE-1)-i] >> (7-j) & 1) {
	mov	r7,_montModExp_i_1_1
	mov	r0,#0x00
	mov	a,#0x7F
	clr	c
	subb	a,r7
	mov	r1,a
	clr	a
	subb	a,r0
	mov	r2,a
	mov	a,r1
	add	a,_montModExp_PARM_3
	mov	r1,a
	mov	a,r2
	addc	a,(_montModExp_PARM_3 + 1)
	mov	r2,a
	mov	r3,(_montModExp_PARM_3 + 2)
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
	sjmp	00140$
00139$:
	clr	c
	rrc	a
00140$:
	djnz	b,00139$
	jnb	acc.0,00112$
;	main.c:171: t = 8*((SIZE-1)-i) + (7-j);
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
	mov	_montModExp_t_1_1,a
	mov	a,r3
	addc	a,r0
	mov	(_montModExp_t_1_1 + 1),a
;	main.c:172: goto exitLoop;
	sjmp	00105$
00112$:
;	main.c:169: for (j = 0; j < 8; j++) {
	inc	r6
	sjmp	00110$
00116$:
;	main.c:167: for (i = 0; i < SIZE; i++) {
	inc	_montModExp_i_1_1
	ljmp	00114$
;	main.c:178: exitLoop:
00105$:
;	main.c:181: _writeResult(rmodm);
	mov	dpl,_montModExp_PARM_5
	lcall	__writeResult
;	main.c:182: if (((e[t/8] >> t%8)) & 1)
	mov	r2,_montModExp_t_1_1
	mov	a,(_montModExp_t_1_1 + 1)
	swap	a
	rl	a
	xch	a,r2
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x1f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
	mov	a,r2
	add	a,_montModExp_PARM_3
	mov	r2,a
	mov	a,r3
	addc	a,(_montModExp_PARM_3 + 1)
	mov	r3,a
	mov	r4,(_montModExp_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	a,#0x07
	anl	a,_montModExp_t_1_1
	mov	r3,a
	mov	r4,#0x00
	mov	b,r3
	inc	b
	mov	a,r2
	sjmp	00143$
00142$:
	clr	c
	rrc	a
00143$:
	djnz	b,00142$
	jnb	acc.0,00133$
;	main.c:184: montMultiply_Single(r, 0x01, false);
	mov	_montMultiply_Single_PARM_2,#0x01
	clr	_montMultiply_Single_PARM_3
	mov	dpl,_montModExp_r_1_1
	lcall	_montMultiply_Single
;	main.c:186: for (k = 1; k <= t; k++) {
00133$:
	mov	r2,#0x01
	mov	r3,#0x00
00118$:
	clr	c
	mov	a,_montModExp_t_1_1
	subb	a,r2
	mov	a,(_montModExp_t_1_1 + 1)
	subb	a,r3
	jc	00121$
;	main.c:187: montMultiply_Result(r, false);
	clr	_montMultiply_Result_PARM_2
	mov	dpl,_montModExp_r_1_1
	push	ar2
	push	ar3
	lcall	_montMultiply_Result
	pop	ar3
	pop	ar2
;	main.c:188: if (((e[(t-k)/8] >> (t-k)%8)) & 1)
	mov	a,_montModExp_t_1_1
	clr	c
	subb	a,r2
	mov	r4,a
	mov	a,(_montModExp_t_1_1 + 1)
	subb	a,r3
	mov	ar6,r4
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r7,a
	mov	a,r6
	add	a,_montModExp_PARM_3
	mov	r6,a
	mov	a,r7
	addc	a,(_montModExp_PARM_3 + 1)
	mov	r7,a
	mov	r0,(_montModExp_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	anl	ar4,#0x07
	mov	r5,#0x00
	mov	b,r4
	inc	b
	mov	a,r6
	sjmp	00147$
00146$:
	clr	c
	rrc	a
00147$:
	djnz	b,00146$
	jnb	acc.0,00120$
;	main.c:190: montMultiply_Single(r, 0x01, false);
	mov	_montMultiply_Single_PARM_2,#0x01
	clr	_montMultiply_Single_PARM_3
	mov	dpl,_montModExp_r_1_1
	push	ar2
	push	ar3
	lcall	_montMultiply_Single
	pop	ar3
	pop	ar2
00120$:
;	main.c:186: for (k = 1; k <= t; k++) {
	inc	r2
	cjne	r2,#0x00,00118$
	inc	r3
	sjmp	00118$
00121$:
;	main.c:194: montMultiply_Single(r, 0x00, true);
	mov	_montMultiply_Single_PARM_2,#0x00
	setb	_montMultiply_Single_PARM_3
	mov	dpl,_montModExp_r_1_1
	ljmp	_montMultiply_Single
;------------------------------------------------------------
;Allocation info for local variables in function 'crtModExp'
;------------------------------------------------------------
;x                         Allocated with name '_crtModExp_PARM_2'
;eP                        Allocated with name '_crtModExp_PARM_3'
;eQ                        Allocated with name '_crtModExp_PARM_4'
;p                         Allocated with name '_crtModExp_PARM_5'
;rmodp                     Allocated with name '_crtModExp_PARM_6'
;r2modp                    Allocated with name '_crtModExp_PARM_7'
;q                         Allocated with name '_crtModExp_PARM_8'
;rmodq                     Allocated with name '_crtModExp_PARM_9'
;r2modq                    Allocated with name '_crtModExp_PARM_10'
;m                         Allocated with name '_crtModExp_PARM_11'
;r2modm                    Allocated with name '_crtModExp_PARM_12'
;r                         Allocated to registers r2 
;------------------------------------------------------------
;	main.c:197: void crtModExp(
;	-----------------------------------------
;	 function crtModExp
;	-----------------------------------------
_crtModExp:
	mov	r2,dpl
;	main.c:208: montModExp(0x00, x, eP, p, rmodp, r2modp);
	mov	_montModExp_PARM_2,_crtModExp_PARM_2
	mov	_montModExp_PARM_3,_crtModExp_PARM_3
	mov	(_montModExp_PARM_3 + 1),(_crtModExp_PARM_3 + 1)
	mov	(_montModExp_PARM_3 + 2),(_crtModExp_PARM_3 + 2)
	mov	_montModExp_PARM_4,_crtModExp_PARM_5
	mov	_montModExp_PARM_5,_crtModExp_PARM_6
	mov	_montModExp_PARM_6,_crtModExp_PARM_7
	mov	dpl,#0x00
	push	ar2
	lcall	_montModExp
;	main.c:209: _displayResult();
	lcall	__displayResult
;	main.c:212: montModExp(0x01, x, eQ, q, rmodq, r2modq);
	mov	_montModExp_PARM_2,_crtModExp_PARM_2
	mov	_montModExp_PARM_3,_crtModExp_PARM_4
	mov	(_montModExp_PARM_3 + 1),(_crtModExp_PARM_4 + 1)
	mov	(_montModExp_PARM_3 + 2),(_crtModExp_PARM_4 + 2)
	mov	_montModExp_PARM_4,_crtModExp_PARM_8
	mov	_montModExp_PARM_5,_crtModExp_PARM_9
	mov	_montModExp_PARM_6,_crtModExp_PARM_10
	mov	dpl,#0x01
	lcall	_montModExp
;	main.c:213: _displayResult();
	lcall	__displayResult
;	main.c:217: mpSubtract_Single(0x02, 0x00, true);
	mov	_mpSubtract_Single_PARM_2,#0x00
	setb	_mpSubtract_Single_PARM_3
	mov	dpl,#0x02
	lcall	_mpSubtract_Single
;	main.c:224: montMultiply_Both(0x03, 0x01, 0x1A, false);
	mov	_montMultiply_Both_PARM_2,#0x01
	mov	_montMultiply_Both_PARM_3,#0x1A
	clr	_montMultiply_Both_PARM_4
	mov	dpl,#0x03
	lcall	_montMultiply_Both
;	main.c:226: montMultiply_Single(0x03, r2modm, false);
	mov	_montMultiply_Single_PARM_2,_crtModExp_PARM_12
	clr	_montMultiply_Single_PARM_3
	mov	dpl,#0x03
	lcall	_montMultiply_Single
;	main.c:230: _writeModulus(m);
	mov	dpl,_crtModExp_PARM_11
	lcall	__writeModulus
;	main.c:233: montMultiply_Single(0x03, p, false);
	mov	_montMultiply_Single_PARM_2,_crtModExp_PARM_5
	clr	_montMultiply_Single_PARM_3
	mov	dpl,#0x03
	lcall	_montMultiply_Single
;	main.c:235: montMultiply_Single(0x03, r2modm, false);
	mov	_montMultiply_Single_PARM_2,_crtModExp_PARM_12
	clr	_montMultiply_Single_PARM_3
	mov	dpl,#0x03
	lcall	_montMultiply_Single
	pop	ar2
;	main.c:237: mpAdd_Single(r, 0x00, true);
	mov	_mpAdd_Single_PARM_2,#0x00
	setb	_mpAdd_Single_PARM_3
	mov	dpl,r2
	ljmp	_mpAdd_Single
;------------------------------------------------------------
;Allocation info for local variables in function '_displayCycles'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:241: void _displayCycles() {
;	-----------------------------------------
;	 function _displayCycles
;	-----------------------------------------
__displayCycles:
;	main.c:242: P0 = INS_DISPLAY_CYCLES;
	mov	_P0,#0x01
;	main.c:243: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_displayResult'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:246: void _displayResult() {
;	-----------------------------------------
;	 function _displayResult
;	-----------------------------------------
__displayResult:
;	main.c:247: P0 = INS_DISPLAY_RESULT;
	mov	_P0,#0x02
;	main.c:248: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_writeModulus'
;------------------------------------------------------------
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	main.c:251: void _writeModulus(unsigned char address) {
;	-----------------------------------------
;	 function _writeModulus
;	-----------------------------------------
__writeModulus:
	mov	r2,dpl
;	main.c:252: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00113$
	sjmp	00101$
00113$:
;	main.c:254: P2 = 0;
	mov	_P2,#0x00
;	main.c:255: P1 = address;
	mov	_P1,r2
;	main.c:257: P0 = INS_WRITE_MODULUS;
	mov	_P0,#0x10
;	main.c:258: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:260: while (P2 == 0) {}
00104$:
	mov	a,_P2
	jz	00104$
;	main.c:261: P0 = INS_ACK;
	mov	_P0,#0x0F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_writeA_Mem'
;------------------------------------------------------------
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	main.c:264: void _writeA_Mem(unsigned char address) {
;	-----------------------------------------
;	 function _writeA_Mem
;	-----------------------------------------
__writeA_Mem:
	mov	r2,dpl
;	main.c:265: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00113$
	sjmp	00101$
00113$:
;	main.c:267: P2 = 0;
	mov	_P2,#0x00
;	main.c:268: P1 = address;
	mov	_P1,r2
;	main.c:270: P0 = INS_WRITE_A_MEM;
	mov	_P0,#0x11
;	main.c:271: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:273: while (P2 == 0) {}
00104$:
	mov	a,_P2
	jz	00104$
;	main.c:274: P0 = INS_ACK;
	mov	_P0,#0x0F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_writeA_Reg'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:277: void _writeA_Reg() {
;	-----------------------------------------
;	 function _writeA_Reg
;	-----------------------------------------
__writeA_Reg:
;	main.c:278: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00108$
	sjmp	00101$
00108$:
;	main.c:280: P0 = INS_WRITE_A_REG;
	mov	_P0,#0x12
;	main.c:281: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_writeB_Mem'
;------------------------------------------------------------
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	main.c:284: void _writeB_Mem(unsigned char address) {
;	-----------------------------------------
;	 function _writeB_Mem
;	-----------------------------------------
__writeB_Mem:
	mov	r2,dpl
;	main.c:285: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00113$
	sjmp	00101$
00113$:
;	main.c:287: P2 = 0;
	mov	_P2,#0x00
;	main.c:288: P1 = address;
	mov	_P1,r2
;	main.c:290: P0 = INS_WRITE_B_MEM;
	mov	_P0,#0x13
;	main.c:291: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:293: while (P2 == 0) {}
00104$:
	mov	a,_P2
	jz	00104$
;	main.c:294: P0 = INS_ACK;
	mov	_P0,#0x0F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_writeB_Reg'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:297: void _writeB_Reg() {
;	-----------------------------------------
;	 function _writeB_Reg
;	-----------------------------------------
__writeB_Reg:
;	main.c:298: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00108$
	sjmp	00101$
00108$:
;	main.c:300: P0 = INS_WRITE_B_REG;
	mov	_P0,#0x14
;	main.c:301: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_writeResult'
;------------------------------------------------------------
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	main.c:304: void _writeResult(unsigned char address) {
;	-----------------------------------------
;	 function _writeResult
;	-----------------------------------------
__writeResult:
	mov	r2,dpl
;	main.c:305: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00113$
	sjmp	00101$
00113$:
;	main.c:307: P2 = 0;
	mov	_P2,#0x00
;	main.c:308: P1 = address;
	mov	_P1,r2
;	main.c:310: P0 = INS_WRITE_RESULT;
	mov	_P0,#0x15
;	main.c:311: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:313: while (P2 == 0) {}
00104$:
	mov	a,_P2
	jz	00104$
;	main.c:314: P0 = INS_ACK;
	mov	_P0,#0x0F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_readResult'
;------------------------------------------------------------
;address                   Allocated to registers r2 
;------------------------------------------------------------
;	main.c:317: void _readResult(unsigned char address) {
;	-----------------------------------------
;	 function _readResult
;	-----------------------------------------
__readResult:
	mov	r2,dpl
;	main.c:318: while (P2 == 2) {}
00101$:
	mov	a,#0x02
	cjne	a,_P2,00113$
	sjmp	00101$
00113$:
;	main.c:320: P2 = 0;
	mov	_P2,#0x00
;	main.c:321: P1 = address;
	mov	_P1,r2
;	main.c:323: P0 = INS_READ_RESULT;
	mov	_P0,#0x16
;	main.c:324: P0 = INS_IDLE;
	mov	_P0,#0x00
;	main.c:326: while (P2 == 0) {}
00104$:
	mov	a,_P2
	jz	00104$
;	main.c:327: P0 = INS_ACK;
	mov	_P0,#0x0F
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mul_montgomery'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:330: void _mul_montgomery() {
;	-----------------------------------------
;	 function _mul_montgomery
;	-----------------------------------------
__mul_montgomery:
;	main.c:331: P2 = 0;
	mov	_P2,#0x00
;	main.c:333: P0 = INS_MUL_MONTGOMERY;
	mov	_P0,#0x20
;	main.c:334: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_adder_add'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:337: void _adder_add() {
;	-----------------------------------------
;	 function _adder_add
;	-----------------------------------------
__adder_add:
;	main.c:338: P2 = 0;
	mov	_P2,#0x00
;	main.c:340: P0 = INS_ADDER_ADD;
	mov	_P0,#0x30
;	main.c:341: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_adder_subtract'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:344: void _adder_subtract() {
;	-----------------------------------------
;	 function _adder_subtract
;	-----------------------------------------
__adder_subtract:
;	main.c:345: P2 = 0;
	mov	_P2,#0x00
;	main.c:347: P0 = INS_ADDER_SUBTRACT;
	mov	_P0,#0x31
;	main.c:348: P0 = INS_IDLE;
	mov	_P0,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_terminate'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:351: void _terminate() {
;	-----------------------------------------
;	 function _terminate
;	-----------------------------------------
__terminate:
;	main.c:352: P3 = 0x55;
	mov	_P3,#0x55
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
