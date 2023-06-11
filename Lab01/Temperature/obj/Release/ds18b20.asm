;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module ds18b20
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ReadTemperature
	.globl _WriteByteToScratchpad
	.globl _ReadByteFromScratchpad
	.globl _Init_DS18B20
	.globl _delay_us_DS18B20
	.globl _delay_ms
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
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
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
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
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;t                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	ds18b20.c:5: void delay_ms(unsigned int t)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
	mov	r7,dph
;	ds18b20.c:8: for(i = 0; i < t; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00107$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00109$
;	ds18b20.c:9: for(j = 0; j < 125; j++);
	mov	r2,#0x7d
	mov	r3,#0x00
00105$:
	dec	r2
	cjne	r2,#0xff,00130$
	dec	r3
00130$:
	mov	a,r2
	orl	a,r3
	jnz	00105$
;	ds18b20.c:8: for(i = 0; i < t; i++)
	inc	r4
	cjne	r4,#0x00,00107$
	inc	r5
	sjmp	00107$
00109$:
;	ds18b20.c:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us_DS18B20'
;------------------------------------------------------------
;t                         Allocated to registers 
;------------------------------------------------------------
;	ds18b20.c:12: void delay_us_DS18B20(unsigned char t)
;	-----------------------------------------
;	 function delay_us_DS18B20
;	-----------------------------------------
_delay_us_DS18B20:
	mov	r7,dpl
;	ds18b20.c:14: while(t--);
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
;	ds18b20.c:15: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Init_DS18B20'
;------------------------------------------------------------
;	ds18b20.c:17: void Init_DS18B20()
;	-----------------------------------------
;	 function Init_DS18B20
;	-----------------------------------------
_Init_DS18B20:
;	ds18b20.c:19: DQ = 1;
;	assignBit
	setb	_P3_7
;	ds18b20.c:20: delay_us_DS18B20(10);
	mov	dpl,#0x0a
	lcall	_delay_us_DS18B20
;	ds18b20.c:21: DQ = 0;					//Reset pulse ...
;	assignBit
	clr	_P3_7
;	ds18b20.c:22: delay_us_DS18B20(150); 	//for a minimum period. See the datasheet.
	mov	dpl,#0x96
	lcall	_delay_us_DS18B20
;	ds18b20.c:23: DQ = 1;					//Rising edge
;	assignBit
	setb	_P3_7
;	ds18b20.c:24: delay_us_DS18B20(20);   //Wait for the DS18B20 to response
	mov	dpl,#0x14
;	ds18b20.c:25: }
	ljmp	_delay_us_DS18B20
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadByteFromScratchpad'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;byte                      Allocated to registers r7 
;------------------------------------------------------------
;	ds18b20.c:27: unsigned char ReadByteFromScratchpad()
;	-----------------------------------------
;	 function ReadByteFromScratchpad
;	-----------------------------------------
_ReadByteFromScratchpad:
;	ds18b20.c:30: unsigned char byte = 0;
	mov	r7,#0x00
;	ds18b20.c:31: for (i = 8; i > 0; i--){
	mov	r6,#0x08
00104$:
;	ds18b20.c:32: DQ = 0;
;	assignBit
	clr	_P3_7
;	ds18b20.c:33: byte >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	ds18b20.c:34: DQ = 1;			//The master bus releases the 1-Wire bus
;	assignBit
	setb	_P3_7
;	ds18b20.c:35: if(DQ)			//Read 1? Otherwise, Read 0
	jnb	_P3_7,00102$
;	ds18b20.c:36: byte |= 0x80;
	orl	ar7,#0x80
00102$:
;	ds18b20.c:37: delay_us_DS18B20(20);
	mov	dpl,#0x14
	push	ar7
	push	ar6
	lcall	_delay_us_DS18B20
	pop	ar6
	pop	ar7
;	ds18b20.c:31: for (i = 8; i > 0; i--){
	djnz	r6,00104$
;	ds18b20.c:39: return(byte);
	mov	dpl,r7
;	ds18b20.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'WriteByteToScratchpad'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	ds18b20.c:42: void WriteByteToScratchpad(unsigned char byte)
;	-----------------------------------------
;	 function WriteByteToScratchpad
;	-----------------------------------------
_WriteByteToScratchpad:
	mov	r7,dpl
;	ds18b20.c:45: for (i = 8; i > 0; i--){
	mov	r6,#0x08
00105$:
;	ds18b20.c:46: DQ = 0;
;	assignBit
	clr	_P3_7
;	ds18b20.c:47: DQ = byte&0x01;
	mov	a,r7
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P3_7,c
;	ds18b20.c:48: if(DQ)						//Write 1
	jnb	_P3_7,00102$
;	ds18b20.c:49: delay_us_DS18B20(3);
	mov	dpl,#0x03
	push	ar7
	push	ar6
	lcall	_delay_us_DS18B20
	pop	ar6
	pop	ar7
	sjmp	00103$
00102$:
;	ds18b20.c:51: delay_us_DS18B20(20);
	mov	dpl,#0x14
	push	ar7
	push	ar6
	lcall	_delay_us_DS18B20
	pop	ar6
	pop	ar7
00103$:
;	ds18b20.c:52: DQ = 1;	  					//The master bus releases the 1-Wire bus
;	assignBit
	setb	_P3_7
;	ds18b20.c:53: byte >>= 1;
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
;	ds18b20.c:45: for (i = 8; i > 0; i--){
	djnz	r6,00105$
;	ds18b20.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadTemperature'
;------------------------------------------------------------
;Byte0                     Allocated to registers r7 
;Byte1                     Allocated to registers r6 
;------------------------------------------------------------
;	ds18b20.c:57: unsigned char ReadTemperature()
;	-----------------------------------------
;	 function ReadTemperature
;	-----------------------------------------
_ReadTemperature:
;	ds18b20.c:62: Init_DS18B20();				   	//DS18B20 initialization
	lcall	_Init_DS18B20
;	ds18b20.c:63: WriteByteToScratchpad(0xCC);	//The master issues Skip ROM [CCh] command
	mov	dpl,#0xcc
	lcall	_WriteByteToScratchpad
;	ds18b20.c:64: WriteByteToScratchpad(0x44);	//Convert T [44h] command. To initiate a temp measurement and A-to-D conversion.
	mov	dpl,#0x44
	lcall	_WriteByteToScratchpad
;	ds18b20.c:65: delay_us_DS18B20(10);
	mov	dpl,#0x0a
	lcall	_delay_us_DS18B20
;	ds18b20.c:67: Init_DS18B20();					//DS18B20 initialization
	lcall	_Init_DS18B20
;	ds18b20.c:68: WriteByteToScratchpad(0xCC);	//The master issues Skip ROM [CCh] command
	mov	dpl,#0xcc
	lcall	_WriteByteToScratchpad
;	ds18b20.c:69: WriteByteToScratchpad(0xBE);	//Read temp value. Read Scratpad [BEh] command.
	mov	dpl,#0xbe
	lcall	_WriteByteToScratchpad
;	ds18b20.c:70: delay_us_DS18B20(10);
	mov	dpl,#0x0a
	lcall	_delay_us_DS18B20
;	ds18b20.c:71: Byte0=ReadByteFromScratchpad();	//Read Byte0 of the Scratchpad (low byte of the temp value)
	lcall	_ReadByteFromScratchpad
	mov	r7,dpl
;	ds18b20.c:72: Byte1=ReadByteFromScratchpad();	//Read Byte1 of the Scratchpad (high byte of the temp value)
	push	ar7
	lcall	_ReadByteFromScratchpad
	mov	r6,dpl
	pop	ar7
;	ds18b20.c:74: return ((Byte1*256+Byte0)>>4);	//Calculate the temp value from Byte0 & Byte1. Then save it to the temp variable.
	mov	ar5,r6
	clr	a
	mov	r6,a
	mov	r4,a
	mov	a,r7
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r5
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0f
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0f
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.3,00103$
	orl	a,#0xf0
00103$:
	mov	dpl,r6
;	ds18b20.c:75: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
