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
                                     11 	.globl _ISR0
                                     12 	.globl _main
                                     13 	.globl _delay_ms
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
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0	=	0x0080
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           000090   149 _P1	=	0x0090
                           000098   150 _SCON	=	0x0098
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 _P2	=	0x00a0
                           0000A8   153 _IE	=	0x00a8
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 _ACC	=	0x00e0
                           0000F0   158 _B	=	0x00f0
                           0000C8   159 _T2CON	=	0x00c8
                           0000CA   160 _RCAP2L	=	0x00ca
                           0000CB   161 _RCAP2H	=	0x00cb
                           0000CC   162 _TL2	=	0x00cc
                           0000CD   163 _TH2	=	0x00cd
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                           0000AD   244 _ET2	=	0x00ad
                           0000BD   245 _PT2	=	0x00bd
                           0000C8   246 _T2CON_0	=	0x00c8
                           0000C9   247 _T2CON_1	=	0x00c9
                           0000CA   248 _T2CON_2	=	0x00ca
                           0000CB   249 _T2CON_3	=	0x00cb
                           0000CC   250 _T2CON_4	=	0x00cc
                           0000CD   251 _T2CON_5	=	0x00cd
                           0000CE   252 _T2CON_6	=	0x00ce
                           0000CF   253 _T2CON_7	=	0x00cf
                           0000C8   254 _CP_RL2	=	0x00c8
                           0000C9   255 _C_T2	=	0x00c9
                           0000CA   256 _TR2	=	0x00ca
                           0000CB   257 _EXEN2	=	0x00cb
                           0000CC   258 _TCLK	=	0x00cc
                           0000CD   259 _RCLK	=	0x00cd
                           0000CE   260 _EXF2	=	0x00ce
                           0000CF   261 _TF2	=	0x00cf
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable register banks
                                    264 ;--------------------------------------------------------
                                    265 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        266 	.ds 8
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable items in internal ram
                                    273 ;--------------------------------------------------------
                                    274 	.area	OSEG    (OVR,DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; Stack segment in internal ram
                                    277 ;--------------------------------------------------------
                                    278 	.area	SSEG
      000008                        279 __start__stack:
      000008                        280 	.ds	1
                                    281 
                                    282 ;--------------------------------------------------------
                                    283 ; indirectly addressable internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area ISEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area IABS    (ABS,DATA)
                                    290 	.area IABS    (ABS,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; bit data
                                    293 ;--------------------------------------------------------
                                    294 	.area BSEG    (BIT)
                                    295 ;--------------------------------------------------------
                                    296 ; paged external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area PSEG    (PAG,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XSEG    (XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XABS    (ABS,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external initialized ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XISEG   (XDATA)
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT0 (CODE)
                                    313 	.area GSINIT1 (CODE)
                                    314 	.area GSINIT2 (CODE)
                                    315 	.area GSINIT3 (CODE)
                                    316 	.area GSINIT4 (CODE)
                                    317 	.area GSINIT5 (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area CSEG    (CODE)
                                    321 ;--------------------------------------------------------
                                    322 ; interrupt vector
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
      000000                        325 __interrupt_vect:
      000000 02 00 09         [24]  326 	ljmp	__sdcc_gsinit_startup
      000003 02 00 A2         [24]  327 	ljmp	_ISR0
                                    328 ;--------------------------------------------------------
                                    329 ; global & static initialisations
                                    330 ;--------------------------------------------------------
                                    331 	.area HOME    (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.area GSFINAL (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.globl __sdcc_gsinit_startup
                                    336 	.globl __sdcc_program_startup
                                    337 	.globl __start__stack
                                    338 	.globl __mcs51_genXINIT
                                    339 	.globl __mcs51_genXRAMCLEAR
                                    340 	.globl __mcs51_genRAMCLEAR
                                    341 	.area GSFINAL (CODE)
      000062 02 00 06         [24]  342 	ljmp	__sdcc_program_startup
                                    343 ;--------------------------------------------------------
                                    344 ; Home
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area HOME    (CODE)
      000006                        348 __sdcc_program_startup:
      000006 02 00 98         [24]  349 	ljmp	_main
                                    350 ;	return from main will return to caller
                                    351 ;--------------------------------------------------------
                                    352 ; code
                                    353 ;--------------------------------------------------------
                                    354 	.area CSEG    (CODE)
                                    355 ;------------------------------------------------------------
                                    356 ;Allocation info for local variables in function 'delay_ms'
                                    357 ;------------------------------------------------------------
                                    358 ;n                         Allocated to registers r6 r7 
                                    359 ;i                         Allocated to registers r4 r5 
                                    360 ;j                         Allocated to registers r2 r3 
                                    361 ;------------------------------------------------------------
                                    362 ;	main.c:15: void delay_ms(int n){
                                    363 ;	-----------------------------------------
                                    364 ;	 function delay_ms
                                    365 ;	-----------------------------------------
      000065                        366 _delay_ms:
                           000007   367 	ar7 = 0x07
                           000006   368 	ar6 = 0x06
                           000005   369 	ar5 = 0x05
                           000004   370 	ar4 = 0x04
                           000003   371 	ar3 = 0x03
                           000002   372 	ar2 = 0x02
                           000001   373 	ar1 = 0x01
                           000000   374 	ar0 = 0x00
      000065 AE 82            [24]  375 	mov	r6,dpl
      000067 AF 83            [24]  376 	mov	r7,dph
                                    377 ;	main.c:17: for(i=0; i<60;i++)
      000069 7C 00            [12]  378 	mov	r4,#0x00
      00006B 7D 00            [12]  379 	mov	r5,#0x00
                                    380 ;	main.c:18: for(j=0; j<n; j++);
      00006D                        381 00111$:
      00006D 7A 00            [12]  382 	mov	r2,#0x00
      00006F 7B 00            [12]  383 	mov	r3,#0x00
      000071                        384 00104$:
      000071 C3               [12]  385 	clr	c
      000072 EA               [12]  386 	mov	a,r2
      000073 9E               [12]  387 	subb	a,r6
      000074 EB               [12]  388 	mov	a,r3
      000075 64 80            [12]  389 	xrl	a,#0x80
      000077 8F F0            [24]  390 	mov	b,r7
      000079 63 F0 80         [24]  391 	xrl	b,#0x80
      00007C 95 F0            [12]  392 	subb	a,b
      00007E 50 07            [24]  393 	jnc	00107$
      000080 0A               [12]  394 	inc	r2
      000081 BA 00 ED         [24]  395 	cjne	r2,#0x00,00104$
      000084 0B               [12]  396 	inc	r3
      000085 80 EA            [24]  397 	sjmp	00104$
      000087                        398 00107$:
                                    399 ;	main.c:17: for(i=0; i<60;i++)
      000087 0C               [12]  400 	inc	r4
      000088 BC 00 01         [24]  401 	cjne	r4,#0x00,00126$
      00008B 0D               [12]  402 	inc	r5
      00008C                        403 00126$:
      00008C C3               [12]  404 	clr	c
      00008D EC               [12]  405 	mov	a,r4
      00008E 94 3C            [12]  406 	subb	a,#0x3c
      000090 ED               [12]  407 	mov	a,r5
      000091 64 80            [12]  408 	xrl	a,#0x80
      000093 94 80            [12]  409 	subb	a,#0x80
      000095 40 D6            [24]  410 	jc	00111$
                                    411 ;	main.c:19: }
      000097 22               [24]  412 	ret
                                    413 ;------------------------------------------------------------
                                    414 ;Allocation info for local variables in function 'main'
                                    415 ;------------------------------------------------------------
                                    416 ;	main.c:21: void main(void){
                                    417 ;	-----------------------------------------
                                    418 ;	 function main
                                    419 ;	-----------------------------------------
      000098                        420 _main:
                                    421 ;	main.c:22: IT0 =1;
                                    422 ;	assignBit
      000098 D2 88            [12]  423 	setb	_IT0
                                    424 ;	main.c:23: EX0 = 1;
                                    425 ;	assignBit
      00009A D2 A8            [12]  426 	setb	_EX0
                                    427 ;	main.c:24: EA = 1;
                                    428 ;	assignBit
      00009C D2 AF            [12]  429 	setb	_EA
                                    430 ;	main.c:25: EX0_PIN =1;
                                    431 ;	assignBit
      00009E D2 B2            [12]  432 	setb	_P3_2
                                    433 ;	main.c:27: while(1);
      0000A0                        434 00102$:
                                    435 ;	main.c:28: }
      0000A0 80 FE            [24]  436 	sjmp	00102$
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'ISR0'
                                    439 ;------------------------------------------------------------
                                    440 ;	main.c:30: void ISR0() __interrupt IE0_VECTOR
                                    441 ;	-----------------------------------------
                                    442 ;	 function ISR0
                                    443 ;	-----------------------------------------
      0000A2                        444 _ISR0:
                                    445 ;	main.c:32: LED_1 = !LED_1;
      0000A2 B2 A0            [12]  446 	cpl	_P2_0
                                    447 ;	main.c:33: }
      0000A4 32               [24]  448 	reti
                                    449 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    450 ;	eliminated unneeded push/pop not_psw
                                    451 ;	eliminated unneeded push/pop dpl
                                    452 ;	eliminated unneeded push/pop dph
                                    453 ;	eliminated unneeded push/pop b
                                    454 ;	eliminated unneeded push/pop acc
                                    455 	.area CSEG    (CODE)
                                    456 	.area CONST   (CODE)
                                    457 	.area XINIT   (CODE)
                                    458 	.area CABS    (ABS,CODE)
