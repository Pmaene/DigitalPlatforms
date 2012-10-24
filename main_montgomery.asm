;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Aug  6 2010) (UNIX)
; This file was generated Wed Oct 24 15:20:31 2012
;--------------------------------------------------------
	.module main_montgomery
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
	.globl _endBrk
	.globl _startBrk
	.globl _fips_PARM_5
	.globl _fips_PARM_4
	.globl _fips_PARM_3
	.globl _fips_PARM_2
	.globl _fips
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
_fips_PARM_2:
	.ds 3
_fips_PARM_3:
	.ds 3
_fips_PARM_4:
	.ds 1
_fips_PARM_5:
	.ds 3
_fips_a_1_1:
	.ds 3
_fips_tmp_1_1:
	.ds 2
_fips_i_1_1:
	.ds 2
_fips_j_1_1:
	.ds 2
_fips_c_1_1:
	.ds 1
_fips_s_1_1:
	.ds 1
_fips_v_1_1:
	.ds 1
_fips_t_1_1:
	.ds 3
_fips_sloc0_1_0:
	.ds 3
_fips_sloc1_1_0:
	.ds 3
_fips_sloc2_1_0:
	.ds 1
_fips_sloc3_1_0:
	.ds 2
_fips_sloc4_1_0:
	.ds 3
_fips_sloc5_1_0:
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
_startBrk	=	0xfffe
_endBrk	=	0xffff
_main_m_1_1	=	0x0400
_fips_result_1_1	=	0x0500
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
_main_n_1_1	=	0x0000
_main_a_1_1	=	0x0080
_main_b_1_1	=	0x0100
_main_n_prime_1_1	=	0x0300
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
;m                         Allocated with name '_main_m_1_1'
;------------------------------------------------------------
;	main_montgomery.c:12: int main() {
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
;	main_montgomery.c:13: __xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
	mov	dptr,#_main_n_1_1
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0001)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0002)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0003)
	mov	a,#0x5F
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0004)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0005)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0006)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0007)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0008)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0009)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x000a)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x000b)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x000c)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x000d)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x000e)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x000f)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0010)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0011)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0012)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0013)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0014)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0015)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0016)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0017)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0018)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0019)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x001a)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x001b)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x001c)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x001d)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x001e)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x001f)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0020)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0021)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0022)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0023)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0024)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0025)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0026)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0027)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0028)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0029)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x002a)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x002b)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x002c)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x002d)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x002e)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x002f)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0030)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0031)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0032)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0033)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0034)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0035)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0036)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0037)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0038)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0039)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x003a)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x003b)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x003c)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x003d)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x003e)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x003f)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0040)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0041)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0042)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0043)
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0044)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0045)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0046)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0047)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0048)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0049)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x004a)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x004b)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x004c)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x004d)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x004e)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x004f)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0050)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0051)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0052)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0053)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0054)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0055)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0056)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0057)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0058)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0059)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x005a)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x005b)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x005c)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x005d)
	mov	a,#0x3A
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x005e)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x005f)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0060)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0061)
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0062)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0063)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0064)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0065)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0066)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0067)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0068)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0069)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x006a)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x006b)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x006c)
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x006d)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x006e)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x006f)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0070)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0071)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0072)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0073)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0074)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0075)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0076)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0077)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0078)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x0079)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x007a)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x007b)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x007c)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x007d)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x007e)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_main_n_1_1 + 0x007f)
	mov	a,#0xCA
	movx	@dptr,a
;	main_montgomery.c:14: __xdata __at (0x0080) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
	mov	dptr,#_main_a_1_1
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0001)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0002)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0003)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0004)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0005)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0006)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0007)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0008)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0009)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x000a)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x000b)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x000c)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x000d)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x000e)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x000f)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0010)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0011)
	mov	a,#0x7E
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0012)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0013)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0014)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0015)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0016)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0017)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0018)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0019)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x001a)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x001b)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x001c)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x001d)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x001e)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x001f)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0020)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0021)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0022)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0023)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0024)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0025)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0026)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0027)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0028)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0029)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x002a)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x002b)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x002c)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x002d)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x002e)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x002f)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0030)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0031)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0032)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0033)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0034)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0035)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0036)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0037)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0038)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0039)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x003a)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x003b)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x003c)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x003d)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x003e)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x003f)
	mov	a,#0xA4
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0040)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0041)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0042)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0043)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0044)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0045)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0046)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0047)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0048)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0049)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x004a)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x004b)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x004c)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x004d)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x004e)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x004f)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0050)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0051)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0052)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0053)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0054)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0055)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0056)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0057)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0058)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0059)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x005a)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x005b)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x005c)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x005d)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x005e)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x005f)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0060)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0061)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0062)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0063)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0064)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0065)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0066)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0067)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0068)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0069)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x006a)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x006b)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x006c)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x006d)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x006e)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x006f)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0070)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0071)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0072)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0073)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0074)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0075)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0076)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0077)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0078)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x0079)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x007a)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x007b)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x007c)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x007d)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x007e)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_main_a_1_1 + 0x007f)
	mov	a,#0xCA
	movx	@dptr,a
;	main_montgomery.c:15: __xdata __at (0x0100) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
	mov	dptr,#_main_b_1_1
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0001)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0003)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0004)
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0005)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0006)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0007)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0008)
	mov	a,#0xB6
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0009)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x000a)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x000b)
	mov	a,#0x28
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x000c)
	mov	a,#0xF0
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x000d)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x000e)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x000f)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0010)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0011)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0012)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0013)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0014)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0015)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0016)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0017)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0018)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0019)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x001a)
	mov	a,#0xF2
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x001b)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x001c)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x001d)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x001e)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x001f)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0020)
	mov	a,#0x9D
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0021)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0022)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0023)
	mov	a,#0x5E
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0024)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0025)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0026)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0027)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0028)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0029)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x002a)
	mov	a,#0xC0
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x002b)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x002c)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x002d)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x002e)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x002f)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0030)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0031)
	mov	a,#0x12
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0032)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0033)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0034)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0035)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0036)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0037)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0038)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0039)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x003a)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x003b)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x003c)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x003d)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x003e)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x003f)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0040)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0041)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0042)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0043)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0044)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0045)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0046)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0047)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0048)
	mov	a,#0x15
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0049)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x004a)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x004b)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x004c)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x004d)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x004e)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x004f)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0050)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0051)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0052)
	mov	a,#0xCE
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0053)
	mov	a,#0x2B
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0054)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0055)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0056)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0057)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0058)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0059)
	mov	a,#0xBB
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x005a)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x005b)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x005c)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x005d)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x005e)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x005f)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0060)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0061)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0062)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0063)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0064)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0065)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0066)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0067)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0068)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0069)
	mov	a,#0x16
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x006a)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x006b)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x006c)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x006d)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x006e)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x006f)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0070)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0071)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0072)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0073)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0074)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0075)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0076)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0077)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0078)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x0079)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x007a)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x007b)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x007c)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x007d)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x007e)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_main_b_1_1 + 0x007f)
	mov	a,#0xBE
	movx	@dptr,a
;	main_montgomery.c:17: __xdata __at (0x0300) unsigned char n_prime = 0xA5;
	mov	dptr,#_main_n_prime_1_1
	mov	a,#0xA5
	movx	@dptr,a
;	main_montgomery.c:21: startBrk=1;
	mov	dptr,#_startBrk
	mov	a,#0x01
	movx	@dptr,a
;	main_montgomery.c:23: fips(a, b, n, n_prime, m);
	mov	_fips_PARM_2,#_main_b_1_1
	mov	(_fips_PARM_2 + 1),#(_main_b_1_1 >> 8)
	mov	(_fips_PARM_2 + 2),#0x00
	mov	_fips_PARM_3,#_main_n_1_1
	mov	(_fips_PARM_3 + 1),#(_main_n_1_1 >> 8)
	mov	(_fips_PARM_3 + 2),#0x00
	mov	dptr,#_main_n_prime_1_1
	movx	a,@dptr
	mov	_fips_PARM_4,a
	mov	_fips_PARM_5,#_main_m_1_1
	mov	(_fips_PARM_5 + 1),#(_main_m_1_1 >> 8)
	mov	(_fips_PARM_5 + 2),#0x00
	mov	dptr,#_main_a_1_1
	mov	b,#0x00
	lcall	_fips
;	main_montgomery.c:25: endBrk=1;
	mov	dptr,#_endBrk
	mov	a,#0x01
	movx	@dptr,a
;	main_montgomery.c:26: return 0;
	mov	dptr,#0x0000
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fips'
;------------------------------------------------------------
;b                         Allocated with name '_fips_PARM_2'
;n                         Allocated with name '_fips_PARM_3'
;n_prime                   Allocated with name '_fips_PARM_4'
;m                         Allocated with name '_fips_PARM_5'
;a                         Allocated with name '_fips_a_1_1'
;tmp                       Allocated with name '_fips_tmp_1_1'
;i                         Allocated with name '_fips_i_1_1'
;j                         Allocated with name '_fips_j_1_1'
;c                         Allocated with name '_fips_c_1_1'
;s                         Allocated with name '_fips_s_1_1'
;u                         Allocated to registers r5 
;v                         Allocated with name '_fips_v_1_1'
;t                         Allocated with name '_fips_t_1_1'
;sloc0                     Allocated with name '_fips_sloc0_1_0'
;sloc1                     Allocated with name '_fips_sloc1_1_0'
;sloc2                     Allocated with name '_fips_sloc2_1_0'
;sloc3                     Allocated with name '_fips_sloc3_1_0'
;sloc4                     Allocated with name '_fips_sloc4_1_0'
;sloc5                     Allocated with name '_fips_sloc5_1_0'
;result                    Allocated with name '_fips_result_1_1'
;------------------------------------------------------------
;	main_montgomery.c:29: void fips(unsigned char *a, unsigned char *b, unsigned char *n, unsigned char n_prime, unsigned char *m) {
;	-----------------------------------------
;	 function fips
;	-----------------------------------------
_fips:
	mov	_fips_a_1_1,dpl
	mov	(_fips_a_1_1 + 1),dph
	mov	(_fips_a_1_1 + 2),b
;	main_montgomery.c:37: signed   char  u    = 0;
	mov	r5,#0x00
;	main_montgomery.c:40: unsigned char  t[3] = {0, 0, 0};
	mov	_fips_t_1_1,#0x00
	mov	(_fips_t_1_1 + 0x0001),#0x00
	mov	(_fips_t_1_1 + 0x0002),#0x00
;	main_montgomery.c:44: for (i = 0; i < SIZE; i++) {
	mov	_fips_sloc0_1_0,_fips_PARM_2
	mov	(_fips_sloc0_1_0 + 1),(_fips_PARM_2 + 1)
	mov	(_fips_sloc0_1_0 + 2),(_fips_PARM_2 + 2)
	mov	_fips_sloc1_1_0,_fips_PARM_3
	mov	(_fips_sloc1_1_0 + 1),(_fips_PARM_3 + 1)
	mov	(_fips_sloc1_1_0 + 2),(_fips_PARM_3 + 2)
	clr	a
	mov	_fips_i_1_1,a
	mov	(_fips_i_1_1 + 1),a
00107$:
	clr	c
	mov	a,_fips_i_1_1
	subb	a,#0x80
	mov	a,(_fips_i_1_1 + 1)
	subb	a,#0x00
	jc	00145$
	ljmp	00110$
00145$:
;	main_montgomery.c:45: for (j = 0; j < i; j++) {
	clr	a
	mov	_fips_j_1_1,a
	mov	(_fips_j_1_1 + 1),a
00103$:
	clr	c
	mov	a,_fips_j_1_1
	subb	a,_fips_i_1_1
	mov	a,(_fips_j_1_1 + 1)
	subb	a,(_fips_i_1_1 + 1)
	jc	00146$
	ljmp	00106$
00146$:
;	main_montgomery.c:46: tmp = t[0] + a[j]*b[i-j];
	push	ar5
	mov	_fips_sloc3_1_0,_fips_t_1_1
	mov	(_fips_sloc3_1_0 + 1),#0x00
	mov	a,_fips_j_1_1
	add	a,_fips_a_1_1
	mov	r7,a
	mov	a,(_fips_j_1_1 + 1)
	addc	a,(_fips_a_1_1 + 1)
	mov	r2,a
	mov	r3,(_fips_a_1_1 + 2)
	mov	dpl,r7
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	_fips_sloc2_1_0,a
	mov	a,_fips_i_1_1
	clr	c
	subb	a,_fips_j_1_1
	mov	r2,a
	mov	a,(_fips_i_1_1 + 1)
	subb	a,(_fips_j_1_1 + 1)
	mov	r3,a
	mov	a,r2
	add	a,_fips_sloc0_1_0
	mov	r5,a
	mov	a,r3
	addc	a,(_fips_sloc0_1_0 + 1)
	mov	r7,a
	mov	r4,(_fips_sloc0_1_0 + 2)
	mov	dpl,r5
	mov	dph,r7
	mov	b,r4
	lcall	__gptrget
	mov	b,_fips_sloc2_1_0
	mul	ab
	add	a,_fips_sloc3_1_0
	mov	_fips_tmp_1_1,a
	mov	a,(_fips_sloc3_1_0 + 1)
	addc	a,b
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:47: s = tmp;
	mov	_fips_s_1_1,_fips_tmp_1_1
;	main_montgomery.c:48: c = tmp >> 8;
	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:51: tmp = t[1] + c;
	mov	r4,(_fips_t_1_1 + 0x0001)
	mov	r5,#0x00
	mov	r6,_fips_c_1_1
	mov	r7,#0x00
	mov	a,r6
	add	a,r4
	mov	_fips_tmp_1_1,a
	mov	a,r7
	addc	a,r5
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:52: t[1] = tmp;
	mov	r4,_fips_tmp_1_1
	mov	(_fips_t_1_1 + 0x0001),r4
;	main_montgomery.c:53: t[2] = t[2] + (tmp >> 8);
	mov	a,(_fips_tmp_1_1 + 1)
	add	a,(_fips_t_1_1 + 0x0002)
	mov	_fips_sloc2_1_0,a
	mov	(_fips_t_1_1 + 0x0002),_fips_sloc2_1_0
;	main_montgomery.c:55: tmp = s + m[j]*n[i-j];
	mov	_fips_sloc3_1_0,_fips_s_1_1
	mov	(_fips_sloc3_1_0 + 1),#0x00
	mov	a,_fips_j_1_1
	add	a,_fips_PARM_5
	mov	r6,a
	mov	a,(_fips_j_1_1 + 1)
	addc	a,(_fips_PARM_5 + 1)
	mov	r7,a
	mov	r5,(_fips_PARM_5 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	a,r2
	add	a,_fips_sloc1_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_fips_sloc1_1_0 + 1)
	mov	r3,a
	mov	r5,(_fips_sloc1_1_0 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r5
	lcall	__gptrget
	mov	b,r6
	mul	ab
	add	a,_fips_sloc3_1_0
	mov	_fips_tmp_1_1,a
	mov	a,(_fips_sloc3_1_0 + 1)
	addc	a,b
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:56: s = tmp;
	mov	_fips_s_1_1,_fips_tmp_1_1
;	main_montgomery.c:57: c = tmp >> 8;
	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:59: t[0] = s;
	mov	_fips_t_1_1,_fips_s_1_1
;	main_montgomery.c:62: tmp = t[1] + c;
	mov	r2,#0x00
	mov	r3,_fips_c_1_1
	mov	r5,#0x00
	mov	a,r3
	add	a,r4
	mov	_fips_tmp_1_1,a
	mov	a,r5
	addc	a,r2
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:63: t[1] = tmp;
	mov	r2,_fips_tmp_1_1
	mov	(_fips_t_1_1 + 0x0001),r2
;	main_montgomery.c:64: t[2] = t[2] + (tmp >> 8);
	mov	a,(_fips_tmp_1_1 + 1)
	mov	r2,a
	add	a,_fips_sloc2_1_0
	mov	(_fips_t_1_1 + 0x0002),a
;	main_montgomery.c:45: for (j = 0; j < i; j++) {
	inc	_fips_j_1_1
	clr	a
	cjne	a,_fips_j_1_1,00147$
	inc	(_fips_j_1_1 + 1)
00147$:
	pop	ar5
	ljmp	00103$
00106$:
;	main_montgomery.c:67: tmp = t[0] + a[i]*b[0];
	push	ar5
	mov	r2,_fips_t_1_1
	mov	r3,#0x00
	mov	a,_fips_i_1_1
	add	a,_fips_a_1_1
	mov	r4,a
	mov	a,(_fips_i_1_1 + 1)
	addc	a,(_fips_a_1_1 + 1)
	mov	r6,a
	mov	r7,(_fips_a_1_1 + 2)
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	dpl,_fips_sloc0_1_0
	mov	dph,(_fips_sloc0_1_0 + 1)
	mov	b,(_fips_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	b,r4
	mul	ab
	add	a,r2
	mov	_fips_tmp_1_1,a
	mov	a,r3
	addc	a,b
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:68: s = tmp;
	mov	_fips_s_1_1,_fips_tmp_1_1
;	main_montgomery.c:69: c = tmp >> 8;
	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:72: tmp = t[1] + c;
	mov	r2,(_fips_t_1_1 + 0x0001)
	mov	r3,#0x00
	mov	r4,_fips_c_1_1
	mov	r6,#0x00
	mov	a,r4
	add	a,r2
	mov	_fips_tmp_1_1,a
	mov	a,r6
	addc	a,r3
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:73: t[1] = tmp;
	mov	r2,_fips_tmp_1_1
	mov	(_fips_t_1_1 + 0x0001),r2
;	main_montgomery.c:74: t[2] = t[2] + (tmp >> 8);
	mov	a,(_fips_tmp_1_1 + 1)
	add	a,(_fips_t_1_1 + 0x0002)
	mov	r3,a
	mov	(_fips_t_1_1 + 0x0002),r3
;	main_montgomery.c:76: m[i] = (s*n_prime)%256;
	mov	a,_fips_i_1_1
	add	a,_fips_PARM_5
	mov	_fips_sloc4_1_0,a
	mov	a,(_fips_i_1_1 + 1)
	addc	a,(_fips_PARM_5 + 1)
	mov	(_fips_sloc4_1_0 + 1),a
	mov	(_fips_sloc4_1_0 + 2),(_fips_PARM_5 + 2)
	mov	b,_fips_s_1_1
	mov	a,_fips_PARM_4
	mul	ab
	mov	dpl,a
	mov	dph,b
	mov	__modsint_PARM_2,#0x00
	mov	(__modsint_PARM_2 + 1),#0x01
	push	ar2
	push	ar3
	lcall	__modsint
	mov	r5,dpl
	pop	ar3
	pop	ar2
	mov	dpl,_fips_sloc4_1_0
	mov	dph,(_fips_sloc4_1_0 + 1)
	mov	b,(_fips_sloc4_1_0 + 2)
	mov	a,r5
	lcall	__gptrput
;	main_montgomery.c:78: tmp = s + m[i]*n[0];
	mov	r4,_fips_s_1_1
	mov	r6,#0x00
	mov	dpl,_fips_sloc1_1_0
	mov	dph,(_fips_sloc1_1_0 + 1)
	mov	b,(_fips_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r7,a
	mov	b,r5
	mul	ab
	add	a,r4
	mov	_fips_tmp_1_1,a
	mov	a,r6
	addc	a,b
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:80: c = tmp >> 8;
	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:83: tmp = t[1] + c;
	mov	r4,#0x00
	mov	r5,_fips_c_1_1
	mov	r6,#0x00
	mov	a,r5
	add	a,r2
	mov	_fips_tmp_1_1,a
	mov	a,r6
	addc	a,r4
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:84: t[1] = tmp;
	mov	r2,_fips_tmp_1_1
	mov	(_fips_t_1_1 + 0x0001),r2
;	main_montgomery.c:85: t[2] = t[2] + (tmp >> 8);
	mov	a,(_fips_tmp_1_1 + 1)
	mov	r4,a
	add	a,r3
	mov	r3,a
	mov	(_fips_t_1_1 + 0x0002),r3
;	main_montgomery.c:87: t[0] = t[1];
	mov	_fips_t_1_1,r2
;	main_montgomery.c:88: t[1] = t[2];
	mov	(_fips_t_1_1 + 0x0001),r3
;	main_montgomery.c:89: t[2] = 0;
	mov	(_fips_t_1_1 + 0x0002),#0x00
;	main_montgomery.c:44: for (i = 0; i < SIZE; i++) {
	inc	_fips_i_1_1
	clr	a
	cjne	a,_fips_i_1_1,00148$
	inc	(_fips_i_1_1 + 1)
00148$:
	pop	ar5
	ljmp	00107$
00110$:
;	main_montgomery.c:92: for (i = SIZE; i < 2*SIZE; i++) {
	mov	_fips_i_1_1,#0x80
	clr	a
	mov	(_fips_i_1_1 + 1),a
00115$:
	mov	a,#0x100 - 0x01
	add	a,(_fips_i_1_1 + 1)
	jnc	00149$
	ljmp	00118$
00149$:
;	main_montgomery.c:93: for (j = i-SIZE+1; j < SIZE; j++) {
	mov	a,#0x81
	add	a,_fips_i_1_1
	mov	r4,a
	mov	a,#0xFF
	addc	a,(_fips_i_1_1 + 1)
	mov	r6,a
00111$:
	clr	c
	mov	a,r4
	subb	a,#0x80
	mov	a,r6
	subb	a,#0x00
	jc	00150$
	ljmp	00114$
00150$:
;	main_montgomery.c:94: tmp = t[0] + a[j]*b[i-j];
	push	ar5
	mov	_fips_sloc4_1_0,_fips_t_1_1
	mov	(_fips_sloc4_1_0 + 1),#0x00
	mov	a,r4
	add	a,_fips_a_1_1
	mov	r3,a
	mov	a,r6
	addc	a,(_fips_a_1_1 + 1)
	mov	r5,a
	mov	r2,(_fips_a_1_1 + 2)
	mov	dpl,r3
	mov	dph,r5
	mov	b,r2
	lcall	__gptrget
	mov	_fips_sloc3_1_0,a
	mov	a,_fips_i_1_1
	clr	c
	subb	a,r4
	mov	_fips_sloc5_1_0,a
	mov	a,(_fips_i_1_1 + 1)
	subb	a,r6
	mov	(_fips_sloc5_1_0 + 1),a
	mov	a,_fips_sloc5_1_0
	add	a,_fips_sloc0_1_0
	mov	r7,a
	mov	a,(_fips_sloc5_1_0 + 1)
	addc	a,(_fips_sloc0_1_0 + 1)
	mov	r3,a
	mov	r2,(_fips_sloc0_1_0 + 2)
	mov	dpl,r7
	mov	dph,r3
	mov	b,r2
	lcall	__gptrget
	mov	b,_fips_sloc3_1_0
	mul	ab
	add	a,_fips_sloc4_1_0
	mov	_fips_tmp_1_1,a
	mov	a,(_fips_sloc4_1_0 + 1)
	addc	a,b
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:95: s = tmp;
	mov	_fips_s_1_1,_fips_tmp_1_1
;	main_montgomery.c:96: c = tmp >> 8;
	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:99: tmp = t[1] + c;
	mov	r2,(_fips_t_1_1 + 0x0001)
	mov	r3,#0x00
	mov	r5,_fips_c_1_1
	mov	r7,#0x00
	mov	a,r5
	add	a,r2
	mov	_fips_tmp_1_1,a
	mov	a,r7
	addc	a,r3
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:100: t[1] = tmp;
	mov	r2,_fips_tmp_1_1
	mov	(_fips_t_1_1 + 0x0001),r2
;	main_montgomery.c:101: t[2] = t[2] + (tmp >> 8);
	mov	a,(_fips_tmp_1_1 + 1)
	add	a,(_fips_t_1_1 + 0x0002)
	mov	_fips_sloc3_1_0,a
	mov	(_fips_t_1_1 + 0x0002),_fips_sloc3_1_0
;	main_montgomery.c:103: tmp = s + m[j]*n[i-j];
	mov	_fips_sloc4_1_0,_fips_s_1_1
	mov	(_fips_sloc4_1_0 + 1),#0x00
	mov	a,r4
	add	a,_fips_PARM_5
	mov	r5,a
	mov	a,r6
	addc	a,(_fips_PARM_5 + 1)
	mov	r7,a
	mov	r3,(_fips_PARM_5 + 2)
	mov	dpl,r5
	mov	dph,r7
	mov	b,r3
	lcall	__gptrget
	mov	_fips_sloc2_1_0,a
	mov	a,_fips_sloc5_1_0
	add	a,_fips_sloc1_1_0
	mov	r3,a
	mov	a,(_fips_sloc5_1_0 + 1)
	addc	a,(_fips_sloc1_1_0 + 1)
	mov	r7,a
	mov	r5,(_fips_sloc1_1_0 + 2)
	mov	dpl,r3
	mov	dph,r7
	mov	b,r5
	lcall	__gptrget
	mov	b,_fips_sloc2_1_0
	mul	ab
	add	a,_fips_sloc4_1_0
	mov	_fips_tmp_1_1,a
	mov	a,(_fips_sloc4_1_0 + 1)
	addc	a,b
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:104: s = tmp;
	mov	_fips_s_1_1,_fips_tmp_1_1
;	main_montgomery.c:105: c = tmp >> 8;
	mov	_fips_c_1_1,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:107: t[0] = s;
	mov	_fips_t_1_1,_fips_s_1_1
;	main_montgomery.c:110: tmp = t[1] + c;
	mov	r3,#0x00
	mov	r5,_fips_c_1_1
	mov	r7,#0x00
	mov	a,r5
	add	a,r2
	mov	_fips_tmp_1_1,a
	mov	a,r7
	addc	a,r3
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:111: t[1] = tmp;
	mov	r2,_fips_tmp_1_1
	mov	(_fips_t_1_1 + 0x0001),r2
;	main_montgomery.c:112: t[2] = t[2] + (tmp >> 8);
	mov	a,(_fips_tmp_1_1 + 1)
	mov	r2,a
	add	a,_fips_sloc3_1_0
	mov	(_fips_t_1_1 + 0x0002),a
;	main_montgomery.c:93: for (j = i-SIZE+1; j < SIZE; j++) {
	inc	r4
	cjne	r4,#0x00,00151$
	inc	r6
00151$:
	pop	ar5
	ljmp	00111$
00114$:
;	main_montgomery.c:115: m[i - SIZE] = t[0];
	mov	a,_fips_i_1_1
	add	a,#0x80
	mov	r2,a
	mov	a,(_fips_i_1_1 + 1)
	addc	a,#0xff
	mov	r3,a
	mov	a,r2
	add	a,_fips_PARM_5
	mov	r2,a
	mov	a,r3
	addc	a,(_fips_PARM_5 + 1)
	mov	r3,a
	mov	r4,(_fips_PARM_5 + 2)
	mov	r6,_fips_t_1_1
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	__gptrput
;	main_montgomery.c:116: t[0] = t[1];
	mov	r2,(_fips_t_1_1 + 0x0001)
	mov	_fips_t_1_1,r2
;	main_montgomery.c:117: t[1] = t[2];
	mov	r2,(_fips_t_1_1 + 0x0002)
	mov	(_fips_t_1_1 + 0x0001),r2
;	main_montgomery.c:118: t[2] = 0;
	mov	(_fips_t_1_1 + 0x0002),#0x00
;	main_montgomery.c:92: for (i = SIZE; i < 2*SIZE; i++) {
	inc	_fips_i_1_1
	clr	a
	cjne	a,_fips_i_1_1,00152$
	inc	(_fips_i_1_1 + 1)
00152$:
	ljmp	00115$
00118$:
;	main_montgomery.c:121: v = 0;
;	main_montgomery.c:122: for (i = 0; i < SIZE; i++) {
	clr	a
	mov	_fips_v_1_1,a
	mov	_fips_i_1_1,a
	mov	(_fips_i_1_1 + 1),a
00119$:
	clr	c
	mov	a,_fips_i_1_1
	subb	a,#0x80
	mov	a,(_fips_i_1_1 + 1)
	subb	a,#0x00
	jnc	00122$
;	main_montgomery.c:123: tmp = m[i] - n[i] - v;
	mov	a,_fips_i_1_1
	add	a,_fips_PARM_5
	mov	r6,a
	mov	a,(_fips_i_1_1 + 1)
	addc	a,(_fips_PARM_5 + 1)
	mov	r7,a
	mov	r2,(_fips_PARM_5 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r2
	lcall	__gptrget
	mov	r6,a
	mov	r2,#0x00
	mov	a,_fips_i_1_1
	add	a,_fips_sloc1_1_0
	mov	r7,a
	mov	a,(_fips_i_1_1 + 1)
	addc	a,(_fips_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_fips_sloc1_1_0 + 2)
	mov	dpl,r7
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r7,a
	mov	r3,#0x00
	mov	a,r6
	clr	c
	subb	a,r7
	mov	r6,a
	mov	a,r2
	subb	a,r3
	mov	r2,a
	mov	a,_fips_v_1_1
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r6
	clr	c
	subb	a,r3
	mov	_fips_tmp_1_1,a
	mov	a,r2
	subb	a,r4
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:124: v = tmp;
	mov	_fips_v_1_1,_fips_tmp_1_1
;	main_montgomery.c:125: u = tmp >> 8;
	mov	r5,(_fips_tmp_1_1 + 1)
;	main_montgomery.c:127: result[i] = v;
	mov	dpl,_fips_i_1_1
	mov	a,#(_fips_result_1_1 >> 8)
	add	a,(_fips_i_1_1 + 1)
	mov	dph,a
	mov	a,_fips_v_1_1
	movx	@dptr,a
;	main_montgomery.c:122: for (i = 0; i < SIZE; i++) {
	inc	_fips_i_1_1
	clr	a
	cjne	a,_fips_i_1_1,00119$
	inc	(_fips_i_1_1 + 1)
	sjmp	00119$
00122$:
;	main_montgomery.c:130: tmp = m[SIZE] - u;
	mov	a,#0x80
	add	a,_fips_PARM_5
	mov	r2,a
	clr	a
	addc	a,(_fips_PARM_5 + 1)
	mov	r3,a
	mov	r4,(_fips_PARM_5 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r3,#0x00
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	clr	c
	subb	a,r5
	mov	_fips_tmp_1_1,a
	mov	a,r3
	subb	a,r4
	mov	(_fips_tmp_1_1 + 1),a
;	main_montgomery.c:132: result[SIZE] = tmp >> 8;
	mov	r2,(_fips_tmp_1_1 + 1)
	mov	dptr,#(_fips_result_1_1 + 0x0080)
	mov	a,r2
	movx	@dptr,a
;	main_montgomery.c:140: return;
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
