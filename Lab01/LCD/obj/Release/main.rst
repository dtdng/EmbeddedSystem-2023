                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Delay_us
                                     12 	.globl _main
                                     13 	.globl _strlen
                                     14 	.globl _TF2
                                     15 	.globl _EXF2
                                     16 	.globl _RCLK
                                     17 	.globl _TCLK
                                     18 	.globl _EXEN2
                                     19 	.globl _TR2
                                     20 	.globl _C_T2
                                     21 	.globl _CP_RL2
                                     22 	.globl _T2CON_7
                                     23 	.globl _T2CON_6
                                     24 	.globl _T2CON_5
                                     25 	.globl _T2CON_4
                                     26 	.globl _T2CON_3
                                     27 	.globl _T2CON_2
                                     28 	.globl _T2CON_1
                                     29 	.globl _T2CON_0
                                     30 	.globl _PT2
                                     31 	.globl _ET2
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _TH2
                                    108 	.globl _TL2
                                    109 	.globl _RCAP2H
                                    110 	.globl _RCAP2L
                                    111 	.globl _T2CON
                                    112 	.globl _B
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _IP
                                    116 	.globl _P3
                                    117 	.globl _IE
                                    118 	.globl _P2
                                    119 	.globl _SBUF
                                    120 	.globl _SCON
                                    121 	.globl _P1
                                    122 	.globl _TH1
                                    123 	.globl _TH0
                                    124 	.globl _TL1
                                    125 	.globl _TL0
                                    126 	.globl _TMOD
                                    127 	.globl _TCON
                                    128 	.globl _PCON
                                    129 	.globl _DPH
                                    130 	.globl _DPL
                                    131 	.globl _SP
                                    132 	.globl _P0
                                    133 	.globl _Init_System
                                    134 	.globl _Delay_ms
                                    135 	.globl _LCD_Send_Command
                                    136 	.globl _Wait_For_LCD
                                    137 	.globl _LCD_init
                                    138 	.globl _LCD_Write_One_Char
                                    139 	.globl _LCD_Write_String
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000098   200 _RI	=	0x0098
                           000099   201 _TI	=	0x0099
                           00009A   202 _RB8	=	0x009a
                           00009B   203 _TB8	=	0x009b
                           00009C   204 _REN	=	0x009c
                           00009D   205 _SM2	=	0x009d
                           00009E   206 _SM1	=	0x009e
                           00009F   207 _SM0	=	0x009f
                           0000A0   208 _P2_0	=	0x00a0
                           0000A1   209 _P2_1	=	0x00a1
                           0000A2   210 _P2_2	=	0x00a2
                           0000A3   211 _P2_3	=	0x00a3
                           0000A4   212 _P2_4	=	0x00a4
                           0000A5   213 _P2_5	=	0x00a5
                           0000A6   214 _P2_6	=	0x00a6
                           0000A7   215 _P2_7	=	0x00a7
                           0000A8   216 _EX0	=	0x00a8
                           0000A9   217 _ET0	=	0x00a9
                           0000AA   218 _EX1	=	0x00aa
                           0000AB   219 _ET1	=	0x00ab
                           0000AC   220 _ES	=	0x00ac
                           0000AF   221 _EA	=	0x00af
                           0000B0   222 _P3_0	=	0x00b0
                           0000B1   223 _P3_1	=	0x00b1
                           0000B2   224 _P3_2	=	0x00b2
                           0000B3   225 _P3_3	=	0x00b3
                           0000B4   226 _P3_4	=	0x00b4
                           0000B5   227 _P3_5	=	0x00b5
                           0000B6   228 _P3_6	=	0x00b6
                           0000B7   229 _P3_7	=	0x00b7
                           0000B0   230 _RXD	=	0x00b0
                           0000B1   231 _TXD	=	0x00b1
                           0000B2   232 _INT0	=	0x00b2
                           0000B3   233 _INT1	=	0x00b3
                           0000B4   234 _T0	=	0x00b4
                           0000B5   235 _T1	=	0x00b5
                           0000B6   236 _WR	=	0x00b6
                           0000B7   237 _RD	=	0x00b7
                           0000B8   238 _PX0	=	0x00b8
                           0000B9   239 _PT0	=	0x00b9
                           0000BA   240 _PX1	=	0x00ba
                           0000BB   241 _PT1	=	0x00bb
                           0000BC   242 _PS	=	0x00bc
                           0000D0   243 _P	=	0x00d0
                           0000D1   244 _F1	=	0x00d1
                           0000D2   245 _OV	=	0x00d2
                           0000D3   246 _RS0	=	0x00d3
                           0000D4   247 _RS1	=	0x00d4
                           0000D5   248 _F0	=	0x00d5
                           0000D6   249 _AC	=	0x00d6
                           0000D7   250 _CY	=	0x00d7
                           0000AD   251 _ET2	=	0x00ad
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram
                                    280 ;--------------------------------------------------------
                                    281 	.area	OSEG    (OVR,DATA)
                                    282 	.area	OSEG    (OVR,DATA)
                                    283 ;--------------------------------------------------------
                                    284 ; Stack segment in internal ram
                                    285 ;--------------------------------------------------------
                                    286 	.area	SSEG
      000008                        287 __start__stack:
      000008                        288 	.ds	1
                                    289 
                                    290 ;--------------------------------------------------------
                                    291 ; indirectly addressable internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area ISEG    (DATA)
                                    294 ;--------------------------------------------------------
                                    295 ; absolute internal ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area IABS    (ABS,DATA)
                                    298 	.area IABS    (ABS,DATA)
                                    299 ;--------------------------------------------------------
                                    300 ; bit data
                                    301 ;--------------------------------------------------------
                                    302 	.area BSEG    (BIT)
                                    303 ;--------------------------------------------------------
                                    304 ; paged external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area PSEG    (PAG,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XSEG    (XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external initialized ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
                                    319 	.area HOME    (CODE)
                                    320 	.area GSINIT0 (CODE)
                                    321 	.area GSINIT1 (CODE)
                                    322 	.area GSINIT2 (CODE)
                                    323 	.area GSINIT3 (CODE)
                                    324 	.area GSINIT4 (CODE)
                                    325 	.area GSINIT5 (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area CSEG    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; interrupt vector
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
      000000                        333 __interrupt_vect:
      000000 02 00 06         [24]  334 	ljmp	__sdcc_gsinit_startup
                                    335 ;--------------------------------------------------------
                                    336 ; global & static initialisations
                                    337 ;--------------------------------------------------------
                                    338 	.area HOME    (CODE)
                                    339 	.area GSINIT  (CODE)
                                    340 	.area GSFINAL (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.globl __sdcc_gsinit_startup
                                    343 	.globl __sdcc_program_startup
                                    344 	.globl __start__stack
                                    345 	.globl __mcs51_genXINIT
                                    346 	.globl __mcs51_genXRAMCLEAR
                                    347 	.globl __mcs51_genRAMCLEAR
                                    348 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  349 	ljmp	__sdcc_program_startup
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
      000003                        355 __sdcc_program_startup:
      000003 02 00 62         [24]  356 	ljmp	_main
                                    357 ;	return from main will return to caller
                                    358 ;--------------------------------------------------------
                                    359 ; code
                                    360 ;--------------------------------------------------------
                                    361 	.area CSEG    (CODE)
                                    362 ;------------------------------------------------------------
                                    363 ;Allocation info for local variables in function 'main'
                                    364 ;------------------------------------------------------------
                                    365 ;i                         Allocated with name '_main_i_65536_30'
                                    366 ;i                         Allocated to registers r6 r7 
                                    367 ;i                         Allocated to registers r6 r7 
                                    368 ;------------------------------------------------------------
                                    369 ;	main.c:16: void main()
                                    370 ;	-----------------------------------------
                                    371 ;	 function main
                                    372 ;	-----------------------------------------
      000062                        373 _main:
                           000007   374 	ar7 = 0x07
                           000006   375 	ar6 = 0x06
                           000005   376 	ar5 = 0x05
                           000004   377 	ar4 = 0x04
                           000003   378 	ar3 = 0x03
                           000002   379 	ar2 = 0x02
                           000001   380 	ar1 = 0x01
                           000000   381 	ar0 = 0x00
                                    382 ;	main.c:19: Init_System();
      000062 12 00 E2         [24]  383 	lcall	_Init_System
                                    384 ;	main.c:20: LCD_init();
      000065 12 01 54         [24]  385 	lcall	_LCD_init
                                    386 ;	main.c:21: LCD_Write_String("Hello Elitech 65");
      000068 90 01 FF         [24]  387 	mov	dptr,#___str_0
      00006B 75 F0 80         [24]  388 	mov	b,#0x80
      00006E 12 01 83         [24]  389 	lcall	_LCD_Write_String
                                    390 ;	main.c:22: LCD_Send_Command(0xC0); //Chuyen con tro xuong dong thu 2
      000071 75 82 C0         [24]  391 	mov	dpl,#0xc0
      000074 12 01 37         [24]  392 	lcall	_LCD_Send_Command
                                    393 ;	main.c:23: LCD_Write_String("****************");
      000077 90 02 10         [24]  394 	mov	dptr,#___str_1
      00007A 75 F0 80         [24]  395 	mov	b,#0x80
      00007D 12 01 83         [24]  396 	lcall	_LCD_Write_String
                                    397 ;	main.c:24: LCD_Send_Command(0xE); //Chuyen con tro xuong dong thu 2
      000080 75 82 0E         [24]  398 	mov	dpl,#0x0e
      000083 12 01 37         [24]  399 	lcall	_LCD_Send_Command
                                    400 ;	main.c:26: for(int i = 0; i < 16; i++){
      000086                        401 00115$:
      000086 7E 00            [12]  402 	mov	r6,#0x00
      000088 7F 00            [12]  403 	mov	r7,#0x00
      00008A                        404 00107$:
      00008A C3               [12]  405 	clr	c
      00008B EE               [12]  406 	mov	a,r6
      00008C 94 10            [12]  407 	subb	a,#0x10
      00008E EF               [12]  408 	mov	a,r7
      00008F 64 80            [12]  409 	xrl	a,#0x80
      000091 94 80            [12]  410 	subb	a,#0x80
      000093 50 1B            [24]  411 	jnc	00101$
                                    412 ;	main.c:27: Delay_ms(50);
      000095 90 00 32         [24]  413 	mov	dptr,#0x0032
      000098 C0 07            [24]  414 	push	ar7
      00009A C0 06            [24]  415 	push	ar6
      00009C 12 00 E5         [24]  416 	lcall	_Delay_ms
                                    417 ;	main.c:28: LCD_Send_Command(0x18);
      00009F 75 82 18         [24]  418 	mov	dpl,#0x18
      0000A2 12 01 37         [24]  419 	lcall	_LCD_Send_Command
      0000A5 D0 06            [24]  420 	pop	ar6
      0000A7 D0 07            [24]  421 	pop	ar7
                                    422 ;	main.c:26: for(int i = 0; i < 16; i++){
      0000A9 0E               [12]  423 	inc	r6
      0000AA BE 00 DD         [24]  424 	cjne	r6,#0x00,00107$
      0000AD 0F               [12]  425 	inc	r7
      0000AE 80 DA            [24]  426 	sjmp	00107$
      0000B0                        427 00101$:
                                    428 ;	main.c:30: for(int i = 0; i < 16; i++){
      0000B0 7E 00            [12]  429 	mov	r6,#0x00
      0000B2 7F 00            [12]  430 	mov	r7,#0x00
      0000B4                        431 00110$:
      0000B4 C3               [12]  432 	clr	c
      0000B5 EE               [12]  433 	mov	a,r6
      0000B6 94 10            [12]  434 	subb	a,#0x10
      0000B8 EF               [12]  435 	mov	a,r7
      0000B9 64 80            [12]  436 	xrl	a,#0x80
      0000BB 94 80            [12]  437 	subb	a,#0x80
      0000BD 50 1B            [24]  438 	jnc	00102$
                                    439 ;	main.c:31: Delay_ms(50);
      0000BF 90 00 32         [24]  440 	mov	dptr,#0x0032
      0000C2 C0 07            [24]  441 	push	ar7
      0000C4 C0 06            [24]  442 	push	ar6
      0000C6 12 00 E5         [24]  443 	lcall	_Delay_ms
                                    444 ;	main.c:32: LCD_Send_Command(0x1C);
      0000C9 75 82 1C         [24]  445 	mov	dpl,#0x1c
      0000CC 12 01 37         [24]  446 	lcall	_LCD_Send_Command
      0000CF D0 06            [24]  447 	pop	ar6
      0000D1 D0 07            [24]  448 	pop	ar7
                                    449 ;	main.c:30: for(int i = 0; i < 16; i++){
      0000D3 0E               [12]  450 	inc	r6
      0000D4 BE 00 DD         [24]  451 	cjne	r6,#0x00,00110$
      0000D7 0F               [12]  452 	inc	r7
      0000D8 80 DA            [24]  453 	sjmp	00110$
      0000DA                        454 00102$:
                                    455 ;	main.c:34: Delay_ms(300);
      0000DA 90 01 2C         [24]  456 	mov	dptr,#0x012c
      0000DD 12 00 E5         [24]  457 	lcall	_Delay_ms
                                    458 ;	main.c:36: }
      0000E0 80 A4            [24]  459 	sjmp	00115$
                                    460 ;------------------------------------------------------------
                                    461 ;Allocation info for local variables in function 'Init_System'
                                    462 ;------------------------------------------------------------
                                    463 ;	main.c:37: void Init_System()
                                    464 ;	-----------------------------------------
                                    465 ;	 function Init_System
                                    466 ;	-----------------------------------------
      0000E2                        467 _Init_System:
                                    468 ;	main.c:40: LCD_RW=1;
                                    469 ;	assignBit
      0000E2 D2 A5            [12]  470 	setb	_P2_5
                                    471 ;	main.c:41: }
      0000E4 22               [24]  472 	ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'Delay_ms'
                                    475 ;------------------------------------------------------------
                                    476 ;interval                  Allocated to registers r6 r7 
                                    477 ;i                         Allocated to registers r4 r5 
                                    478 ;j                         Allocated to registers r2 r3 
                                    479 ;------------------------------------------------------------
                                    480 ;	main.c:42: void Delay_ms(int interval)
                                    481 ;	-----------------------------------------
                                    482 ;	 function Delay_ms
                                    483 ;	-----------------------------------------
      0000E5                        484 _Delay_ms:
      0000E5 AE 82            [24]  485 	mov	r6,dpl
      0000E7 AF 83            [24]  486 	mov	r7,dph
                                    487 ;	main.c:45: for(i=0;i<1000;i++)
      0000E9 7C 00            [12]  488 	mov	r4,#0x00
      0000EB 7D 00            [12]  489 	mov	r5,#0x00
                                    490 ;	main.c:47: for(j=0;j<interval;j++);
      0000ED                        491 00111$:
      0000ED 7A 00            [12]  492 	mov	r2,#0x00
      0000EF 7B 00            [12]  493 	mov	r3,#0x00
      0000F1                        494 00104$:
      0000F1 C3               [12]  495 	clr	c
      0000F2 EA               [12]  496 	mov	a,r2
      0000F3 9E               [12]  497 	subb	a,r6
      0000F4 EB               [12]  498 	mov	a,r3
      0000F5 64 80            [12]  499 	xrl	a,#0x80
      0000F7 8F F0            [24]  500 	mov	b,r7
      0000F9 63 F0 80         [24]  501 	xrl	b,#0x80
      0000FC 95 F0            [12]  502 	subb	a,b
      0000FE 50 07            [24]  503 	jnc	00107$
      000100 0A               [12]  504 	inc	r2
      000101 BA 00 ED         [24]  505 	cjne	r2,#0x00,00104$
      000104 0B               [12]  506 	inc	r3
      000105 80 EA            [24]  507 	sjmp	00104$
      000107                        508 00107$:
                                    509 ;	main.c:45: for(i=0;i<1000;i++)
      000107 0C               [12]  510 	inc	r4
      000108 BC 00 01         [24]  511 	cjne	r4,#0x00,00126$
      00010B 0D               [12]  512 	inc	r5
      00010C                        513 00126$:
      00010C C3               [12]  514 	clr	c
      00010D EC               [12]  515 	mov	a,r4
      00010E 94 E8            [12]  516 	subb	a,#0xe8
      000110 ED               [12]  517 	mov	a,r5
      000111 64 80            [12]  518 	xrl	a,#0x80
      000113 94 83            [12]  519 	subb	a,#0x83
      000115 40 D6            [24]  520 	jc	00111$
                                    521 ;	main.c:49: }
      000117 22               [24]  522 	ret
                                    523 ;------------------------------------------------------------
                                    524 ;Allocation info for local variables in function 'Delay_us'
                                    525 ;------------------------------------------------------------
                                    526 ;interval                  Allocated to registers r6 r7 
                                    527 ;j                         Allocated to registers r4 r5 
                                    528 ;------------------------------------------------------------
                                    529 ;	main.c:50: void Delay_us(int interval)
                                    530 ;	-----------------------------------------
                                    531 ;	 function Delay_us
                                    532 ;	-----------------------------------------
      000118                        533 _Delay_us:
      000118 AE 82            [24]  534 	mov	r6,dpl
      00011A AF 83            [24]  535 	mov	r7,dph
                                    536 ;	main.c:53: for(j=0;j<interval;j++);
      00011C 7C 00            [12]  537 	mov	r4,#0x00
      00011E 7D 00            [12]  538 	mov	r5,#0x00
      000120                        539 00103$:
      000120 C3               [12]  540 	clr	c
      000121 EC               [12]  541 	mov	a,r4
      000122 9E               [12]  542 	subb	a,r6
      000123 ED               [12]  543 	mov	a,r5
      000124 64 80            [12]  544 	xrl	a,#0x80
      000126 8F F0            [24]  545 	mov	b,r7
      000128 63 F0 80         [24]  546 	xrl	b,#0x80
      00012B 95 F0            [12]  547 	subb	a,b
      00012D 50 07            [24]  548 	jnc	00105$
      00012F 0C               [12]  549 	inc	r4
      000130 BC 00 ED         [24]  550 	cjne	r4,#0x00,00103$
      000133 0D               [12]  551 	inc	r5
      000134 80 EA            [24]  552 	sjmp	00103$
      000136                        553 00105$:
                                    554 ;	main.c:54: }
      000136 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function 'LCD_Send_Command'
                                    558 ;------------------------------------------------------------
                                    559 ;x                         Allocated to registers 
                                    560 ;------------------------------------------------------------
                                    561 ;	main.c:56: void LCD_Send_Command(unsigned char x)
                                    562 ;	-----------------------------------------
                                    563 ;	 function LCD_Send_Command
                                    564 ;	-----------------------------------------
      000137                        565 _LCD_Send_Command:
      000137 85 82 80         [24]  566 	mov	_P0,dpl
                                    567 ;	main.c:59: LCD_RS=0; //Chon thanh ghi lenh
                                    568 ;	assignBit
      00013A C2 A6            [12]  569 	clr	_P2_6
                                    570 ;	main.c:60: LCD_RW=0; //De ghi du lieu
                                    571 ;	assignBit
      00013C C2 A5            [12]  572 	clr	_P2_5
                                    573 ;	main.c:61: LCD_EN=1;
                                    574 ;	assignBit
      00013E D2 A7            [12]  575 	setb	_P2_7
                                    576 ;	main.c:62: Delay_us(100);
      000140 90 00 64         [24]  577 	mov	dptr,#0x0064
      000143 12 01 18         [24]  578 	lcall	_Delay_us
                                    579 ;	main.c:63: LCD_EN=0;
                                    580 ;	assignBit
      000146 C2 A7            [12]  581 	clr	_P2_7
                                    582 ;	main.c:64: Wait_For_LCD(); //Doi cho LCD san sang
      000148 12 01 4E         [24]  583 	lcall	_Wait_For_LCD
                                    584 ;	main.c:65: LCD_EN=1;
                                    585 ;	assignBit
      00014B D2 A7            [12]  586 	setb	_P2_7
                                    587 ;	main.c:66: }
      00014D 22               [24]  588 	ret
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'Wait_For_LCD'
                                    591 ;------------------------------------------------------------
                                    592 ;	main.c:68: void Wait_For_LCD()
                                    593 ;	-----------------------------------------
                                    594 ;	 function Wait_For_LCD
                                    595 ;	-----------------------------------------
      00014E                        596 _Wait_For_LCD:
                                    597 ;	main.c:70: Delay_us(100);
      00014E 90 00 64         [24]  598 	mov	dptr,#0x0064
                                    599 ;	main.c:71: }
      000151 02 01 18         [24]  600 	ljmp	_Delay_us
                                    601 ;------------------------------------------------------------
                                    602 ;Allocation info for local variables in function 'LCD_init'
                                    603 ;------------------------------------------------------------
                                    604 ;	main.c:72: void LCD_init()
                                    605 ;	-----------------------------------------
                                    606 ;	 function LCD_init
                                    607 ;	-----------------------------------------
      000154                        608 _LCD_init:
                                    609 ;	main.c:74: LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
      000154 75 82 38         [24]  610 	mov	dpl,#0x38
      000157 12 01 37         [24]  611 	lcall	_LCD_Send_Command
                                    612 ;	main.c:75: LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
      00015A 75 82 0E         [24]  613 	mov	dpl,#0x0e
      00015D 12 01 37         [24]  614 	lcall	_LCD_Send_Command
                                    615 ;	main.c:76: LCD_Send_Command(0x01); //Xoa man hinh
      000160 75 82 01         [24]  616 	mov	dpl,#0x01
      000163 12 01 37         [24]  617 	lcall	_LCD_Send_Command
                                    618 ;	main.c:77: LCD_Send_Command(0x80); //Ve dau dong
      000166 75 82 80         [24]  619 	mov	dpl,#0x80
                                    620 ;	main.c:81: }
      000169 02 01 37         [24]  621 	ljmp	_LCD_Send_Command
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'LCD_Write_One_Char'
                                    624 ;------------------------------------------------------------
                                    625 ;c                         Allocated to registers 
                                    626 ;------------------------------------------------------------
                                    627 ;	main.c:83: void LCD_Write_One_Char(unsigned char c)
                                    628 ;	-----------------------------------------
                                    629 ;	 function LCD_Write_One_Char
                                    630 ;	-----------------------------------------
      00016C                        631 _LCD_Write_One_Char:
      00016C 85 82 80         [24]  632 	mov	_P0,dpl
                                    633 ;	main.c:86: LCD_RS=1; //Chon thanh ghi du lieu
                                    634 ;	assignBit
      00016F D2 A6            [12]  635 	setb	_P2_6
                                    636 ;	main.c:87: LCD_RW=0;
                                    637 ;	assignBit
      000171 C2 A5            [12]  638 	clr	_P2_5
                                    639 ;	main.c:88: LCD_EN=1;
                                    640 ;	assignBit
      000173 D2 A7            [12]  641 	setb	_P2_7
                                    642 ;	main.c:89: Delay_us(10);
      000175 90 00 0A         [24]  643 	mov	dptr,#0x000a
      000178 12 01 18         [24]  644 	lcall	_Delay_us
                                    645 ;	main.c:90: LCD_EN=0;
                                    646 ;	assignBit
      00017B C2 A7            [12]  647 	clr	_P2_7
                                    648 ;	main.c:91: Wait_For_LCD();
      00017D 12 01 4E         [24]  649 	lcall	_Wait_For_LCD
                                    650 ;	main.c:92: LCD_EN=1;
                                    651 ;	assignBit
      000180 D2 A7            [12]  652 	setb	_P2_7
                                    653 ;	main.c:93: }
      000182 22               [24]  654 	ret
                                    655 ;------------------------------------------------------------
                                    656 ;Allocation info for local variables in function 'LCD_Write_String'
                                    657 ;------------------------------------------------------------
                                    658 ;s                         Allocated to registers r5 r6 r7 
                                    659 ;length                    Allocated to registers 
                                    660 ;------------------------------------------------------------
                                    661 ;	main.c:95: void LCD_Write_String(unsigned char *s)
                                    662 ;	-----------------------------------------
                                    663 ;	 function LCD_Write_String
                                    664 ;	-----------------------------------------
      000183                        665 _LCD_Write_String:
                                    666 ;	main.c:98: length=strlen(s); //Lay do dai xau
      000183 AD 82            [24]  667 	mov	r5,dpl
      000185 AE 83            [24]  668 	mov	r6,dph
      000187 AF F0            [24]  669 	mov	r7,b
      000189 C0 07            [24]  670 	push	ar7
      00018B C0 06            [24]  671 	push	ar6
      00018D C0 05            [24]  672 	push	ar5
      00018F 12 01 C7         [24]  673 	lcall	_strlen
      000192 AB 82            [24]  674 	mov	r3,dpl
      000194 AC 83            [24]  675 	mov	r4,dph
      000196 D0 05            [24]  676 	pop	ar5
      000198 D0 06            [24]  677 	pop	ar6
      00019A D0 07            [24]  678 	pop	ar7
                                    679 ;	main.c:99: while(length!=0)
      00019C                        680 00101$:
      00019C EB               [12]  681 	mov	a,r3
      00019D 60 27            [24]  682 	jz	00104$
                                    683 ;	main.c:101: LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
      00019F 8D 82            [24]  684 	mov	dpl,r5
      0001A1 8E 83            [24]  685 	mov	dph,r6
      0001A3 8F F0            [24]  686 	mov	b,r7
      0001A5 12 01 DF         [24]  687 	lcall	__gptrget
      0001A8 FC               [12]  688 	mov	r4,a
      0001A9 A3               [24]  689 	inc	dptr
      0001AA AD 82            [24]  690 	mov	r5,dpl
      0001AC AE 83            [24]  691 	mov	r6,dph
      0001AE 8C 82            [24]  692 	mov	dpl,r4
      0001B0 C0 07            [24]  693 	push	ar7
      0001B2 C0 06            [24]  694 	push	ar6
      0001B4 C0 05            [24]  695 	push	ar5
      0001B6 C0 03            [24]  696 	push	ar3
      0001B8 12 01 6C         [24]  697 	lcall	_LCD_Write_One_Char
      0001BB D0 03            [24]  698 	pop	ar3
      0001BD D0 05            [24]  699 	pop	ar5
      0001BF D0 06            [24]  700 	pop	ar6
      0001C1 D0 07            [24]  701 	pop	ar7
                                    702 ;	main.c:102: s++; //Tang con tro
                                    703 ;	main.c:103: length--;
      0001C3 1B               [12]  704 	dec	r3
      0001C4 80 D6            [24]  705 	sjmp	00101$
      0001C6                        706 00104$:
                                    707 ;	main.c:105: }
      0001C6 22               [24]  708 	ret
                                    709 	.area CSEG    (CODE)
                                    710 	.area CONST   (CODE)
                                    711 	.area CONST   (CODE)
      0001FF                        712 ___str_0:
      0001FF 48 65 6C 6C 6F 20 45   713 	.ascii "Hello Elitech 65"
             6C 69 74 65 63 68 20
             36 35
      00020F 00                     714 	.db 0x00
                                    715 	.area CSEG    (CODE)
                                    716 	.area CONST   (CODE)
      000210                        717 ___str_1:
      000210 2A 2A 2A 2A 2A 2A 2A   718 	.ascii "****************"
             2A 2A 2A 2A 2A 2A 2A
             2A 2A
      000220 00                     719 	.db 0x00
                                    720 	.area CSEG    (CODE)
                                    721 	.area XINIT   (CODE)
                                    722 	.area CABS    (ABS,CODE)
