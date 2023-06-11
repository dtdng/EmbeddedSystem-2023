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
                                     11 	.globl _mask
                                     12 	.globl _main
                                     13 	.globl _TIMER0_ISR
                                     14 	.globl _EXT1_Process
                                     15 	.globl _EXT0_Process
                                     16 	.globl _init_timer
                                     17 	.globl _init_counter
                                     18 	.globl _display_number
                                     19 	.globl _output_7seg_off
                                     20 	.globl _delay
                                     21 	.globl _output_7seg
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _x
                                    119 	.globl _count
                                    120 ;--------------------------------------------------------
                                    121 ; special function registers
                                    122 ;--------------------------------------------------------
                                    123 	.area RSEG    (ABS,DATA)
      000000                        124 	.org 0x0000
                           000080   125 _P0	=	0x0080
                           000081   126 _SP	=	0x0081
                           000082   127 _DPL	=	0x0082
                           000083   128 _DPH	=	0x0083
                           000087   129 _PCON	=	0x0087
                           000088   130 _TCON	=	0x0088
                           000089   131 _TMOD	=	0x0089
                           00008A   132 _TL0	=	0x008a
                           00008B   133 _TL1	=	0x008b
                           00008C   134 _TH0	=	0x008c
                           00008D   135 _TH1	=	0x008d
                           000090   136 _P1	=	0x0090
                           000098   137 _SCON	=	0x0098
                           000099   138 _SBUF	=	0x0099
                           0000A0   139 _P2	=	0x00a0
                           0000A8   140 _IE	=	0x00a8
                           0000B0   141 _P3	=	0x00b0
                           0000B8   142 _IP	=	0x00b8
                           0000D0   143 _PSW	=	0x00d0
                           0000E0   144 _ACC	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _F1	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                                    226 ;--------------------------------------------------------
                                    227 ; overlayable register banks
                                    228 ;--------------------------------------------------------
                                    229 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        230 	.ds 8
                                    231 ;--------------------------------------------------------
                                    232 ; internal ram data
                                    233 ;--------------------------------------------------------
                                    234 	.area DSEG    (DATA)
      000008                        235 _count::
      000008                        236 	.ds 2
      00000A                        237 _x::
      00000A                        238 	.ds 2
                                    239 ;--------------------------------------------------------
                                    240 ; overlayable items in internal ram
                                    241 ;--------------------------------------------------------
                                    242 	.area	OSEG    (OVR,DATA)
                                    243 	.area	OSEG    (OVR,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; Stack segment in internal ram
                                    246 ;--------------------------------------------------------
                                    247 	.area	SSEG
      00000E                        248 __start__stack:
      00000E                        249 	.ds	1
                                    250 
                                    251 ;--------------------------------------------------------
                                    252 ; indirectly addressable internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area ISEG    (DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; absolute internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area IABS    (ABS,DATA)
                                    259 	.area IABS    (ABS,DATA)
                                    260 ;--------------------------------------------------------
                                    261 ; bit data
                                    262 ;--------------------------------------------------------
                                    263 	.area BSEG    (BIT)
                                    264 ;--------------------------------------------------------
                                    265 ; paged external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area PSEG    (PAG,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XSEG    (XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XABS    (ABS,XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; external initialized ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XISEG   (XDATA)
                                    280 	.area HOME    (CODE)
                                    281 	.area GSINIT0 (CODE)
                                    282 	.area GSINIT1 (CODE)
                                    283 	.area GSINIT2 (CODE)
                                    284 	.area GSINIT3 (CODE)
                                    285 	.area GSINIT4 (CODE)
                                    286 	.area GSINIT5 (CODE)
                                    287 	.area GSINIT  (CODE)
                                    288 	.area GSFINAL (CODE)
                                    289 	.area CSEG    (CODE)
                                    290 ;--------------------------------------------------------
                                    291 ; interrupt vector
                                    292 ;--------------------------------------------------------
                                    293 	.area HOME    (CODE)
      000000                        294 __interrupt_vect:
      000000 02 00 19         [24]  295 	ljmp	__sdcc_gsinit_startup
      000003 02 01 45         [24]  296 	ljmp	_EXT0_Process
      000006                        297 	.ds	5
      00000B 02 01 70         [24]  298 	ljmp	_TIMER0_ISR
      00000E                        299 	.ds	5
      000013 02 01 5A         [24]  300 	ljmp	_EXT1_Process
                                    301 ;--------------------------------------------------------
                                    302 ; global & static initialisations
                                    303 ;--------------------------------------------------------
                                    304 	.area HOME    (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area GSINIT  (CODE)
                                    308 	.globl __sdcc_gsinit_startup
                                    309 	.globl __sdcc_program_startup
                                    310 	.globl __start__stack
                                    311 	.globl __mcs51_genXINIT
                                    312 	.globl __mcs51_genXRAMCLEAR
                                    313 	.globl __mcs51_genRAMCLEAR
                                    314 	.area GSFINAL (CODE)
      000072 02 00 16         [24]  315 	ljmp	__sdcc_program_startup
                                    316 ;--------------------------------------------------------
                                    317 ; Home
                                    318 ;--------------------------------------------------------
                                    319 	.area HOME    (CODE)
                                    320 	.area HOME    (CODE)
      000016                        321 __sdcc_program_startup:
      000016 02 01 A1         [24]  322 	ljmp	_main
                                    323 ;	return from main will return to caller
                                    324 ;--------------------------------------------------------
                                    325 ; code
                                    326 ;--------------------------------------------------------
                                    327 	.area CSEG    (CODE)
                                    328 ;------------------------------------------------------------
                                    329 ;Allocation info for local variables in function 'output_7seg'
                                    330 ;------------------------------------------------------------
                                    331 ;value                     Allocated to registers r7 
                                    332 ;------------------------------------------------------------
                                    333 ;	main.c:20: void output_7seg(unsigned char value)
                                    334 ;	-----------------------------------------
                                    335 ;	 function output_7seg
                                    336 ;	-----------------------------------------
      000075                        337 _output_7seg:
                           000007   338 	ar7 = 0x07
                           000006   339 	ar6 = 0x06
                           000005   340 	ar5 = 0x05
                           000004   341 	ar4 = 0x04
                           000003   342 	ar3 = 0x03
                           000002   343 	ar2 = 0x02
                           000001   344 	ar1 = 0x01
                           000000   345 	ar0 = 0x00
      000075 AF 82            [24]  346 	mov	r7,dpl
                                    347 ;	main.c:22: if(value < 10)
      000077 BF 0A 00         [24]  348 	cjne	r7,#0x0a,00109$
      00007A                        349 00109$:
      00007A 50 07            [24]  350 	jnc	00103$
                                    351 ;	main.c:24: P0=mask[value];
      00007C EF               [12]  352 	mov	a,r7
      00007D 90 02 94         [24]  353 	mov	dptr,#_mask
      000080 93               [24]  354 	movc	a,@a+dptr
      000081 F5 80            [12]  355 	mov	_P0,a
      000083                        356 00103$:
                                    357 ;	main.c:26: }
      000083 22               [24]  358 	ret
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'delay'
                                    361 ;------------------------------------------------------------
                                    362 ;n                         Allocated to registers r6 r7 
                                    363 ;i                         Allocated to registers r4 r5 
                                    364 ;j                         Allocated to registers r2 r3 
                                    365 ;------------------------------------------------------------
                                    366 ;	main.c:28: void delay(int n){
                                    367 ;	-----------------------------------------
                                    368 ;	 function delay
                                    369 ;	-----------------------------------------
      000084                        370 _delay:
      000084 AE 82            [24]  371 	mov	r6,dpl
      000086 AF 83            [24]  372 	mov	r7,dph
                                    373 ;	main.c:30: for(i=0; i<100; i++)
      000088 7C 00            [12]  374 	mov	r4,#0x00
      00008A 7D 00            [12]  375 	mov	r5,#0x00
                                    376 ;	main.c:31: for(j=0; j<n; j++);
      00008C                        377 00111$:
      00008C 7A 00            [12]  378 	mov	r2,#0x00
      00008E 7B 00            [12]  379 	mov	r3,#0x00
      000090                        380 00104$:
      000090 C3               [12]  381 	clr	c
      000091 EA               [12]  382 	mov	a,r2
      000092 9E               [12]  383 	subb	a,r6
      000093 EB               [12]  384 	mov	a,r3
      000094 64 80            [12]  385 	xrl	a,#0x80
      000096 8F F0            [24]  386 	mov	b,r7
      000098 63 F0 80         [24]  387 	xrl	b,#0x80
      00009B 95 F0            [12]  388 	subb	a,b
      00009D 50 07            [24]  389 	jnc	00107$
      00009F 0A               [12]  390 	inc	r2
      0000A0 BA 00 ED         [24]  391 	cjne	r2,#0x00,00104$
      0000A3 0B               [12]  392 	inc	r3
      0000A4 80 EA            [24]  393 	sjmp	00104$
      0000A6                        394 00107$:
                                    395 ;	main.c:30: for(i=0; i<100; i++)
      0000A6 0C               [12]  396 	inc	r4
      0000A7 BC 00 01         [24]  397 	cjne	r4,#0x00,00126$
      0000AA 0D               [12]  398 	inc	r5
      0000AB                        399 00126$:
      0000AB C3               [12]  400 	clr	c
      0000AC EC               [12]  401 	mov	a,r4
      0000AD 94 64            [12]  402 	subb	a,#0x64
      0000AF ED               [12]  403 	mov	a,r5
      0000B0 64 80            [12]  404 	xrl	a,#0x80
      0000B2 94 80            [12]  405 	subb	a,#0x80
      0000B4 40 D6            [24]  406 	jc	00111$
                                    407 ;	main.c:32: }
      0000B6 22               [24]  408 	ret
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'output_7seg_off'
                                    411 ;------------------------------------------------------------
                                    412 ;	main.c:34: void output_7seg_off(){
                                    413 ;	-----------------------------------------
                                    414 ;	 function output_7seg_off
                                    415 ;	-----------------------------------------
      0000B7                        416 _output_7seg_off:
                                    417 ;	main.c:35: }
      0000B7 22               [24]  418 	ret
                                    419 ;------------------------------------------------------------
                                    420 ;Allocation info for local variables in function 'display_number'
                                    421 ;------------------------------------------------------------
                                    422 ;iNum                      Allocated to registers r7 
                                    423 ;i                         Allocated to registers r6 
                                    424 ;temp                      Allocated to registers r2 
                                    425 ;------------------------------------------------------------
                                    426 ;	main.c:39: void display_number(unsigned char iNum){
                                    427 ;	-----------------------------------------
                                    428 ;	 function display_number
                                    429 ;	-----------------------------------------
      0000B8                        430 _display_number:
      0000B8 AF 82            [24]  431 	mov	r7,dpl
                                    432 ;	main.c:42: for(i=0; i<3; i++){
      0000BA 7E 00            [12]  433 	mov	r6,#0x00
      0000BC                        434 00102$:
                                    435 ;	main.c:43: temp = iNum % 10;
      0000BC 8F 04            [24]  436 	mov	ar4,r7
      0000BE 7D 00            [12]  437 	mov	r5,#0x00
      0000C0 75 0C 0A         [24]  438 	mov	__modsint_PARM_2,#0x0a
                                    439 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0000C3 8D 0D            [24]  440 	mov	(__modsint_PARM_2 + 1),r5
      0000C5 8C 82            [24]  441 	mov	dpl,r4
      0000C7 8D 83            [24]  442 	mov	dph,r5
      0000C9 C0 06            [24]  443 	push	ar6
      0000CB C0 05            [24]  444 	push	ar5
      0000CD C0 04            [24]  445 	push	ar4
      0000CF 12 02 22         [24]  446 	lcall	__modsint
      0000D2 AA 82            [24]  447 	mov	r2,dpl
      0000D4 D0 04            [24]  448 	pop	ar4
      0000D6 D0 05            [24]  449 	pop	ar5
                                    450 ;	main.c:44: iNum = iNum / 10;
      0000D8 75 0C 0A         [24]  451 	mov	__divsint_PARM_2,#0x0a
      0000DB 75 0D 00         [24]  452 	mov	(__divsint_PARM_2 + 1),#0x00
      0000DE 8C 82            [24]  453 	mov	dpl,r4
      0000E0 8D 83            [24]  454 	mov	dph,r5
      0000E2 C0 02            [24]  455 	push	ar2
      0000E4 12 02 58         [24]  456 	lcall	__divsint
      0000E7 AC 82            [24]  457 	mov	r4,dpl
      0000E9 D0 02            [24]  458 	pop	ar2
      0000EB D0 06            [24]  459 	pop	ar6
      0000ED 8C 07            [24]  460 	mov	ar7,r4
                                    461 ;	main.c:45: LED7SEG_ADDR0 = i & 0x01;
      0000EF EE               [12]  462 	mov	a,r6
      0000F0 54 01            [12]  463 	anl	a,#0x01
                                    464 ;	assignBit
      0000F2 24 FF            [12]  465 	add	a,#0xff
      0000F4 92 A2            [24]  466 	mov	_P2_2,c
                                    467 ;	main.c:46: LED7SEG_ADDR1 = i & 0x02;
      0000F6 EE               [12]  468 	mov	a,r6
      0000F7 03               [12]  469 	rr	a
      0000F8 54 01            [12]  470 	anl	a,#0x01
                                    471 ;	assignBit
      0000FA 24 FF            [12]  472 	add	a,#0xff
      0000FC 92 A3            [24]  473 	mov	_P2_3,c
                                    474 ;	main.c:47: LED7SEG_ADDR2 = i & 0x04;
      0000FE EE               [12]  475 	mov	a,r6
      0000FF 03               [12]  476 	rr	a
      000100 03               [12]  477 	rr	a
      000101 54 01            [12]  478 	anl	a,#0x01
                                    479 ;	assignBit
      000103 24 FF            [12]  480 	add	a,#0xff
      000105 92 A4            [24]  481 	mov	_P2_4,c
                                    482 ;	main.c:48: output_7seg(temp);
      000107 8A 82            [24]  483 	mov	dpl,r2
      000109 C0 07            [24]  484 	push	ar7
      00010B C0 06            [24]  485 	push	ar6
      00010D 12 00 75         [24]  486 	lcall	_output_7seg
                                    487 ;	main.c:49: delay(1);
      000110 90 00 01         [24]  488 	mov	dptr,#0x0001
      000113 12 00 84         [24]  489 	lcall	_delay
      000116 D0 06            [24]  490 	pop	ar6
      000118 D0 07            [24]  491 	pop	ar7
                                    492 ;	main.c:42: for(i=0; i<3; i++){
      00011A 0E               [12]  493 	inc	r6
      00011B BE 03 00         [24]  494 	cjne	r6,#0x03,00111$
      00011E                        495 00111$:
      00011E 40 9C            [24]  496 	jc	00102$
                                    497 ;	main.c:52: }
      000120 22               [24]  498 	ret
                                    499 ;------------------------------------------------------------
                                    500 ;Allocation info for local variables in function 'init_counter'
                                    501 ;------------------------------------------------------------
                                    502 ;	main.c:56: void init_counter(){
                                    503 ;	-----------------------------------------
                                    504 ;	 function init_counter
                                    505 ;	-----------------------------------------
      000121                        506 _init_counter:
                                    507 ;	main.c:57: P3_2 = 1; //3_2 input for interrupt 0
                                    508 ;	assignBit
      000121 D2 B2            [12]  509 	setb	_P3_2
                                    510 ;	main.c:58: EX0 = 1; //Cho phep ngat ngoai 0
                                    511 ;	assignBit
      000123 D2 A8            [12]  512 	setb	_EX0
                                    513 ;	main.c:59: IT0 = 1; //Ngat theo suon
                                    514 ;	assignBit
      000125 D2 88            [12]  515 	setb	_IT0
                                    516 ;	main.c:60: EA = 1; //Global interrupt
                                    517 ;	assignBit
      000127 D2 AF            [12]  518 	setb	_EA
                                    519 ;	main.c:61: EX1 = 1;
                                    520 ;	assignBit
      000129 D2 AA            [12]  521 	setb	_EX1
                                    522 ;	main.c:62: IT1 = 1;
                                    523 ;	assignBit
      00012B D2 8A            [12]  524 	setb	_IT1
                                    525 ;	main.c:63: }
      00012D 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'init_timer'
                                    529 ;------------------------------------------------------------
                                    530 ;	main.c:65: void init_timer(){
                                    531 ;	-----------------------------------------
                                    532 ;	 function init_timer
                                    533 ;	-----------------------------------------
      00012E                        534 _init_timer:
                                    535 ;	main.c:66: count = 0;
      00012E E4               [12]  536 	clr	a
      00012F F5 08            [12]  537 	mov	_count,a
      000131 F5 09            [12]  538 	mov	(_count + 1),a
                                    539 ;	main.c:67: LED7SEG_DATA = 0x00;
                                    540 ;	1-genFromRTrack replaced	mov	_P0,#0x00
      000133 F5 80            [12]  541 	mov	_P0,a
                                    542 ;	main.c:71: TMOD = 0x01;    //timer 0 mode 1
      000135 75 89 01         [24]  543 	mov	_TMOD,#0x01
                                    544 ;	main.c:72: TH0 = TH0_50ms;
      000138 75 8C 4C         [24]  545 	mov	_TH0,#0x4c
                                    546 ;	main.c:73: TL0 = TL0_50ms;
                                    547 ;	1-genFromRTrack replaced	mov	_TL0,#0x00
      00013B F5 8A            [12]  548 	mov	_TL0,a
                                    549 ;	main.c:77: IE  = 0b10000010;
      00013D 75 A8 82         [24]  550 	mov	_IE,#0x82
                                    551 ;	main.c:78: TF0 = 0;
                                    552 ;	assignBit
      000140 C2 8D            [12]  553 	clr	_TF0
                                    554 ;	main.c:79: TR0 = 1;
                                    555 ;	assignBit
      000142 D2 8C            [12]  556 	setb	_TR0
                                    557 ;	main.c:80: }
      000144 22               [24]  558 	ret
                                    559 ;------------------------------------------------------------
                                    560 ;Allocation info for local variables in function 'EXT0_Process'
                                    561 ;------------------------------------------------------------
                                    562 ;	main.c:83: void EXT0_Process() __interrupt IE0_VECTOR
                                    563 ;	-----------------------------------------
                                    564 ;	 function EXT0_Process
                                    565 ;	-----------------------------------------
      000145                        566 _EXT0_Process:
      000145 C0 E0            [24]  567 	push	acc
      000147 C0 D0            [24]  568 	push	psw
                                    569 ;	main.c:85: EA=0; //Cam ngat
                                    570 ;	assignBit
      000149 C2 AF            [12]  571 	clr	_EA
                                    572 ;	main.c:86: count++;
      00014B 05 08            [12]  573 	inc	_count
      00014D E4               [12]  574 	clr	a
      00014E B5 08 02         [24]  575 	cjne	a,_count,00103$
      000151 05 09            [12]  576 	inc	(_count + 1)
      000153                        577 00103$:
                                    578 ;	main.c:87: EA=1; //Cho phep ngat
                                    579 ;	assignBit
      000153 D2 AF            [12]  580 	setb	_EA
                                    581 ;	main.c:88: }
      000155 D0 D0            [24]  582 	pop	psw
      000157 D0 E0            [24]  583 	pop	acc
      000159 32               [24]  584 	reti
                                    585 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    586 ;	eliminated unneeded push/pop dpl
                                    587 ;	eliminated unneeded push/pop dph
                                    588 ;	eliminated unneeded push/pop b
                                    589 ;------------------------------------------------------------
                                    590 ;Allocation info for local variables in function 'EXT1_Process'
                                    591 ;------------------------------------------------------------
                                    592 ;	main.c:90: void EXT1_Process() __interrupt IE1_VECTOR
                                    593 ;	-----------------------------------------
                                    594 ;	 function EXT1_Process
                                    595 ;	-----------------------------------------
      00015A                        596 _EXT1_Process:
      00015A C0 E0            [24]  597 	push	acc
      00015C C0 D0            [24]  598 	push	psw
                                    599 ;	main.c:92: EA=0; //Cam ngat
                                    600 ;	assignBit
      00015E C2 AF            [12]  601 	clr	_EA
                                    602 ;	main.c:93: count--;
      000160 15 08            [12]  603 	dec	_count
      000162 74 FF            [12]  604 	mov	a,#0xff
      000164 B5 08 02         [24]  605 	cjne	a,_count,00103$
      000167 15 09            [12]  606 	dec	(_count + 1)
      000169                        607 00103$:
                                    608 ;	main.c:94: EA=1; //Cho phep ngat
                                    609 ;	assignBit
      000169 D2 AF            [12]  610 	setb	_EA
                                    611 ;	main.c:95: }
      00016B D0 D0            [24]  612 	pop	psw
      00016D D0 E0            [24]  613 	pop	acc
      00016F 32               [24]  614 	reti
                                    615 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    616 ;	eliminated unneeded push/pop dpl
                                    617 ;	eliminated unneeded push/pop dph
                                    618 ;	eliminated unneeded push/pop b
                                    619 ;------------------------------------------------------------
                                    620 ;Allocation info for local variables in function 'TIMER0_ISR'
                                    621 ;------------------------------------------------------------
                                    622 ;	main.c:98: void TIMER0_ISR() __interrupt TF0_VECTOR
                                    623 ;	-----------------------------------------
                                    624 ;	 function TIMER0_ISR
                                    625 ;	-----------------------------------------
      000170                        626 _TIMER0_ISR:
      000170 C0 E0            [24]  627 	push	acc
      000172 C0 D0            [24]  628 	push	psw
                                    629 ;	main.c:100: TH0 = TH0_50ms;
      000174 75 8C 4C         [24]  630 	mov	_TH0,#0x4c
                                    631 ;	main.c:101: TL0 = TL0_50ms;
      000177 75 8A 00         [24]  632 	mov	_TL0,#0x00
                                    633 ;	main.c:102: x++;
      00017A 05 0A            [12]  634 	inc	_x
      00017C E4               [12]  635 	clr	a
      00017D B5 0A 02         [24]  636 	cjne	a,_x,00109$
      000180 05 0B            [12]  637 	inc	(_x + 1)
      000182                        638 00109$:
                                    639 ;	main.c:103: if(x==20){
      000182 74 14            [12]  640 	mov	a,#0x14
      000184 B5 0A 06         [24]  641 	cjne	a,_x,00110$
      000187 E4               [12]  642 	clr	a
      000188 B5 0B 02         [24]  643 	cjne	a,(_x + 1),00110$
      00018B 80 02            [24]  644 	sjmp	00111$
      00018D                        645 00110$:
      00018D 80 0D            [24]  646 	sjmp	00103$
      00018F                        647 00111$:
                                    648 ;	main.c:104: count++;
      00018F 05 08            [12]  649 	inc	_count
      000191 E4               [12]  650 	clr	a
      000192 B5 08 02         [24]  651 	cjne	a,_count,00112$
      000195 05 09            [12]  652 	inc	(_count + 1)
      000197                        653 00112$:
                                    654 ;	main.c:105: x=0;
      000197 E4               [12]  655 	clr	a
      000198 F5 0A            [12]  656 	mov	_x,a
      00019A F5 0B            [12]  657 	mov	(_x + 1),a
      00019C                        658 00103$:
                                    659 ;	main.c:107: }
      00019C D0 D0            [24]  660 	pop	psw
      00019E D0 E0            [24]  661 	pop	acc
      0001A0 32               [24]  662 	reti
                                    663 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    664 ;	eliminated unneeded push/pop dpl
                                    665 ;	eliminated unneeded push/pop dph
                                    666 ;	eliminated unneeded push/pop b
                                    667 ;------------------------------------------------------------
                                    668 ;Allocation info for local variables in function 'main'
                                    669 ;------------------------------------------------------------
                                    670 ;	main.c:109: void main(){
                                    671 ;	-----------------------------------------
                                    672 ;	 function main
                                    673 ;	-----------------------------------------
      0001A1                        674 _main:
                                    675 ;	main.c:110: init_timer();
      0001A1 12 01 2E         [24]  676 	lcall	_init_timer
                                    677 ;	main.c:111: while(1){
      0001A4                        678 00102$:
                                    679 ;	main.c:112: display_number(count);
      0001A4 85 08 82         [24]  680 	mov	dpl,_count
      0001A7 12 00 B8         [24]  681 	lcall	_display_number
                                    682 ;	main.c:114: }
      0001AA 80 F8            [24]  683 	sjmp	00102$
                                    684 	.area CSEG    (CODE)
                                    685 	.area CONST   (CODE)
      000294                        686 _mask:
      000294 3F                     687 	.db #0x3f	; 63
      000295 06                     688 	.db #0x06	; 6
      000296 5B                     689 	.db #0x5b	; 91
      000297 4F                     690 	.db #0x4f	; 79	'O'
      000298 66                     691 	.db #0x66	; 102	'f'
      000299 6D                     692 	.db #0x6d	; 109	'm'
      00029A 7D                     693 	.db #0x7d	; 125
      00029B 07                     694 	.db #0x07	; 7
      00029C 7F                     695 	.db #0x7f	; 127
      00029D 6F                     696 	.db #0x6f	; 111	'o'
                                    697 	.area XINIT   (CODE)
                                    698 	.area CABS    (ABS,CODE)
