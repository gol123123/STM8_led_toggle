   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _lcd_2x16_decode:
  17  0000 30            	dc.b	48
  18  0001 31            	dc.b	49
  19  0002 32            	dc.b	50
  20  0003 33            	dc.b	51
  21  0004 34            	dc.b	52
  22  0005 35            	dc.b	53
  23  0006 36            	dc.b	54
  24  0007 37            	dc.b	55
  25  0008 38            	dc.b	56
  26  0009 39            	dc.b	57
  27  000a 41            	dc.b	65
  28  000b 42            	dc.b	66
  29  000c 43            	dc.b	67
  30  000d 44            	dc.b	68
  31  000e 45            	dc.b	69
  32  000f 46            	dc.b	70
  73                     ; 42 void lcd_2x16_write(uint8_t data)
  73                     ; 43 {
  75                     	switch	.text
  76  0000               _lcd_2x16_write:
  78  0000 88            	push	a
  79       00000000      OFST:	set	0
  82                     ; 44 	if (data & BIT(7))
  84  0001 a580          	bcp	a,#128
  85  0003 2704          	jreq	L72
  86                     ; 45 		PIN_ON(LCD_2X16_DB7);
  88  0005 72165014      	bset	20500,#3
  89  0009               L72:
  90                     ; 47 	if (data & BIT(6))
  93  0009 7b01          	ld	a,(OFST+1,sp)
  94  000b a540          	bcp	a,#64
  95  000d 2704          	jreq	L13
  96                     ; 48 		PIN_ON(LCD_2X16_DB6);
  98  000f 72125014      	bset	20500,#1
  99  0013               L13:
 100                     ; 50 	if (data & BIT(5))
 103  0013 7b01          	ld	a,(OFST+1,sp)
 104  0015 a520          	bcp	a,#32
 105  0017 2704          	jreq	L33
 106                     ; 51 		PIN_ON(LCD_2X16_DB5);
 108  0019 7210500f      	bset	20495,#0
 109  001d               L33:
 110                     ; 53 	if (data & BIT(4))
 113  001d 7b01          	ld	a,(OFST+1,sp)
 114  001f a510          	bcp	a,#16
 115  0021 2704          	jreq	L53
 116                     ; 54 		PIN_ON(LCD_2X16_DB4);
 118  0023 7214500f      	bset	20495,#2
 119  0027               L53:
 120                     ; 56 	PIN_ON(LCD_2X16_E);
 123  0027 7218500f      	bset	20495,#4
 124                     ; 57 	delay_ms(1);
 127  002b ae0001        	ldw	x,#1
 128  002e cd0000        	call	_delay_ms
 130                     ; 58 	PIN_OFF(LCD_2X16_E);
 132  0031 7219500f      	bres	20495,#4
 133                     ; 60 	PIN_OFF(LCD_2X16_DB7);
 136  0035 72175014      	bres	20500,#3
 137                     ; 61 	PIN_OFF(LCD_2X16_DB6);
 140  0039 72135014      	bres	20500,#1
 141                     ; 62 	PIN_OFF(LCD_2X16_DB5);
 144  003d 7211500f      	bres	20495,#0
 145                     ; 63 	PIN_OFF(LCD_2X16_DB4);
 148  0041 7215500f      	bres	20495,#2
 149                     ; 64 }
 153  0045 84            	pop	a
 154  0046 81            	ret
 190                     ; 67 void lcd_2x16_write_command(uint8_t data)
 190                     ; 68 {
 191                     	switch	.text
 192  0047               _lcd_2x16_write_command:
 194  0047 88            	push	a
 195       00000000      OFST:	set	0
 198                     ; 69 	PIN_OFF(LCD_2X16_RS);
 200  0048 721d500f      	bres	20495,#6
 201                     ; 71 	lcd_2x16_write(data);
 204  004c adb2          	call	_lcd_2x16_write
 206                     ; 72 	lcd_2x16_write(data << 4);
 208  004e 7b01          	ld	a,(OFST+1,sp)
 209  0050 97            	ld	xl,a
 210  0051 a610          	ld	a,#16
 211  0053 42            	mul	x,a
 212  0054 9f            	ld	a,xl
 213  0055 ada9          	call	_lcd_2x16_write
 215                     ; 73 }
 218  0057 84            	pop	a
 219  0058 81            	ret
 255                     ; 76 void lcd_2x16_write_data(uint8_t data)
 255                     ; 77 {
 256                     	switch	.text
 257  0059               _lcd_2x16_write_data:
 259  0059 88            	push	a
 260       00000000      OFST:	set	0
 263                     ; 78 	PIN_ON(LCD_2X16_RS);
 265  005a 721c500f      	bset	20495,#6
 266                     ; 80 	lcd_2x16_write(data);
 269  005e ada0          	call	_lcd_2x16_write
 271                     ; 81 	lcd_2x16_write(data << 4);
 273  0060 7b01          	ld	a,(OFST+1,sp)
 274  0062 97            	ld	xl,a
 275  0063 a610          	ld	a,#16
 276  0065 42            	mul	x,a
 277  0066 9f            	ld	a,xl
 278  0067 ad97          	call	_lcd_2x16_write
 280                     ; 82 }
 283  0069 84            	pop	a
 284  006a 81            	ret
 338                     ; 85 void lcd_2x16_set_position(uint8_t row, uint8_t colum)
 338                     ; 86 {
 339                     	switch	.text
 340  006b               _lcd_2x16_set_position:
 342  006b 89            	pushw	x
 343  006c 88            	push	a
 344       00000001      OFST:	set	1
 347                     ; 87 	uint8_t position = LCD_2X16_DDRAM_ADDR;
 349  006d a680          	ld	a,#128
 350  006f 6b01          	ld	(OFST+0,sp),a
 351                     ; 89 	if (row > 0)
 353  0071 9e            	ld	a,xh
 354  0072 4d            	tnz	a
 355  0073 2706          	jreq	L121
 356                     ; 91 		position |= LCD_2X16_NEXT_LINE;
 358  0075 7b01          	ld	a,(OFST+0,sp)
 359  0077 aa40          	or	a,#64
 360  0079 6b01          	ld	(OFST+0,sp),a
 361  007b               L121:
 362                     ; 94 	lcd_2x16_write_command(position | colum);
 364  007b 7b01          	ld	a,(OFST+0,sp)
 365  007d 1a03          	or	a,(OFST+2,sp)
 366  007f adc6          	call	_lcd_2x16_write_command
 368                     ; 95 }
 371  0081 5b03          	addw	sp,#3
 372  0083 81            	ret
 409                     ; 98 void lcd_2x16_print_char(uint8_t data)
 409                     ; 99 {
 410                     	switch	.text
 411  0084               _lcd_2x16_print_char:
 413  0084 88            	push	a
 414       00000000      OFST:	set	0
 417                     ; 100 	if (data == '\n')
 419  0085 a10a          	cp	a,#10
 420  0087 2606          	jrne	L141
 421                     ; 102 		lcd_2x16_write_command(LCD_2X16_DDRAM_ADDR | LCD_2X16_NEXT_LINE);
 423  0089 a6c0          	ld	a,#192
 424  008b adba          	call	_lcd_2x16_write_command
 427  008d 2004          	jra	L341
 428  008f               L141:
 429                     ; 106 		lcd_2x16_write_data(data);
 431  008f 7b01          	ld	a,(OFST+1,sp)
 432  0091 adc6          	call	_lcd_2x16_write_data
 434  0093               L341:
 435                     ; 108 }
 438  0093 84            	pop	a
 439  0094 81            	ret
 476                     ; 111 void lcd_2x16_print_string(uint8_t * string)
 476                     ; 112 {
 477                     	switch	.text
 478  0095               _lcd_2x16_print_string:
 480  0095 89            	pushw	x
 481       00000000      OFST:	set	0
 484  0096 200d          	jra	L561
 485  0098               L361:
 486                     ; 115 		lcd_2x16_print_char(*string++);
 488  0098 1e01          	ldw	x,(OFST+1,sp)
 489  009a 1c0001        	addw	x,#1
 490  009d 1f01          	ldw	(OFST+1,sp),x
 491  009f 1d0001        	subw	x,#1
 492  00a2 f6            	ld	a,(x)
 493  00a3 addf          	call	_lcd_2x16_print_char
 495  00a5               L561:
 496                     ; 113 	while (*string != 0x00)
 498  00a5 1e01          	ldw	x,(OFST+1,sp)
 499  00a7 7d            	tnz	(x)
 500  00a8 26ee          	jrne	L361
 501                     ; 117 }
 504  00aa 85            	popw	x
 505  00ab 81            	ret
 542                     ; 120 void lcd_2x16_print_hex_xx(uint8_t data)
 542                     ; 121 {
 543                     	switch	.text
 544  00ac               _lcd_2x16_print_hex_xx:
 546  00ac 88            	push	a
 547       00000000      OFST:	set	0
 550                     ; 122 	lcd_2x16_print_char(lcd_2x16_decode[(data >> 4) & 0x0F]);
 552  00ad 4e            	swap	a
 553  00ae a40f          	and	a,#15
 554  00b0 5f            	clrw	x
 555  00b1 97            	ld	xl,a
 556  00b2 d60000        	ld	a,(_lcd_2x16_decode,x)
 557  00b5 adcd          	call	_lcd_2x16_print_char
 559                     ; 123 	lcd_2x16_print_char(lcd_2x16_decode[data & 0x0F]);
 561  00b7 7b01          	ld	a,(OFST+1,sp)
 562  00b9 a40f          	and	a,#15
 563  00bb 5f            	clrw	x
 564  00bc 97            	ld	xl,a
 565  00bd d60000        	ld	a,(_lcd_2x16_decode,x)
 566  00c0 adc2          	call	_lcd_2x16_print_char
 568                     ; 124 }
 571  00c2 84            	pop	a
 572  00c3 81            	ret
 609                     ; 127 void lcd_2x16_print_dec_xxx(uint8_t data)
 609                     ; 128 {
 610                     	switch	.text
 611  00c4               _lcd_2x16_print_dec_xxx:
 613  00c4 88            	push	a
 614       00000000      OFST:	set	0
 617                     ; 129 	lcd_2x16_print_char(lcd_2x16_decode[(data / 100) & 0x0F]);
 619  00c5 5f            	clrw	x
 620  00c6 97            	ld	xl,a
 621  00c7 a664          	ld	a,#100
 622  00c9 cd0000        	call	c_sdivx
 624  00cc 01            	rrwa	x,a
 625  00cd a40f          	and	a,#15
 626  00cf 5f            	clrw	x
 627  00d0 02            	rlwa	x,a
 628  00d1 d60000        	ld	a,(_lcd_2x16_decode,x)
 629  00d4 adae          	call	_lcd_2x16_print_char
 631                     ; 130 	lcd_2x16_print_char(lcd_2x16_decode[((data % 100) / 10) & 0x0F]);
 633  00d6 7b01          	ld	a,(OFST+1,sp)
 634  00d8 5f            	clrw	x
 635  00d9 97            	ld	xl,a
 636  00da a664          	ld	a,#100
 637  00dc cd0000        	call	c_smodx
 639  00df a60a          	ld	a,#10
 640  00e1 cd0000        	call	c_sdivx
 642  00e4 01            	rrwa	x,a
 643  00e5 a40f          	and	a,#15
 644  00e7 5f            	clrw	x
 645  00e8 02            	rlwa	x,a
 646  00e9 d60000        	ld	a,(_lcd_2x16_decode,x)
 647  00ec ad96          	call	_lcd_2x16_print_char
 649                     ; 131 	lcd_2x16_print_char(lcd_2x16_decode[((data % 100) % 10) & 0x0F]);
 651  00ee 7b01          	ld	a,(OFST+1,sp)
 652  00f0 5f            	clrw	x
 653  00f1 97            	ld	xl,a
 654  00f2 a664          	ld	a,#100
 655  00f4 cd0000        	call	c_smodx
 657  00f7 a60a          	ld	a,#10
 658  00f9 cd0000        	call	c_smodx
 660  00fc 01            	rrwa	x,a
 661  00fd a40f          	and	a,#15
 662  00ff 5f            	clrw	x
 663  0100 02            	rlwa	x,a
 664  0101 d60000        	ld	a,(_lcd_2x16_decode,x)
 665  0104 cd0084        	call	_lcd_2x16_print_char
 667                     ; 132 }
 670  0107 84            	pop	a
 671  0108 81            	ret
 708                     ; 135 void lcd_2x16_print_dec_xx(uint8_t data)
 708                     ; 136 {
 709                     	switch	.text
 710  0109               _lcd_2x16_print_dec_xx:
 712  0109 88            	push	a
 713       00000000      OFST:	set	0
 716                     ; 137 	lcd_2x16_print_char(lcd_2x16_decode[((data % 100) / 10) & 0x0F]);
 718  010a 5f            	clrw	x
 719  010b 97            	ld	xl,a
 720  010c a664          	ld	a,#100
 721  010e cd0000        	call	c_smodx
 723  0111 a60a          	ld	a,#10
 724  0113 cd0000        	call	c_sdivx
 726  0116 01            	rrwa	x,a
 727  0117 a40f          	and	a,#15
 728  0119 5f            	clrw	x
 729  011a 02            	rlwa	x,a
 730  011b d60000        	ld	a,(_lcd_2x16_decode,x)
 731  011e cd0084        	call	_lcd_2x16_print_char
 733                     ; 138 	lcd_2x16_print_char(lcd_2x16_decode[((data % 100) % 10) & 0x0F]);
 735  0121 7b01          	ld	a,(OFST+1,sp)
 736  0123 5f            	clrw	x
 737  0124 97            	ld	xl,a
 738  0125 a664          	ld	a,#100
 739  0127 cd0000        	call	c_smodx
 741  012a a60a          	ld	a,#10
 742  012c cd0000        	call	c_smodx
 744  012f 01            	rrwa	x,a
 745  0130 a40f          	and	a,#15
 746  0132 5f            	clrw	x
 747  0133 02            	rlwa	x,a
 748  0134 d60000        	ld	a,(_lcd_2x16_decode,x)
 749  0137 cd0084        	call	_lcd_2x16_print_char
 751                     ; 139 }
 754  013a 84            	pop	a
 755  013b 81            	ret
 780                     ; 142 void lcd_2x16_init(void)
 780                     ; 143 {
 781                     	switch	.text
 782  013c               _lcd_2x16_init:
 786                     ; 144 	PIN_CONFIGURATION(LCD_2X16_E);
 788  013c 72185011      	bset	20497,#4
 791  0140 72185012      	bset	20498,#4
 794  0144 72185013      	bset	20499,#4
 795                     ; 145 	PIN_CONFIGURATION(LCD_2X16_RS);
 799  0148 721c5011      	bset	20497,#6
 802  014c 721c5012      	bset	20498,#6
 805  0150 721c5013      	bset	20499,#6
 806                     ; 146 	PIN_CONFIGURATION(LCD_2X16_DB7);
 810  0154 72165016      	bset	20502,#3
 813  0158 72165017      	bset	20503,#3
 816  015c 72165018      	bset	20504,#3
 817                     ; 147 	PIN_CONFIGURATION(LCD_2X16_DB6);
 821  0160 72125016      	bset	20502,#1
 824  0164 72125017      	bset	20503,#1
 827  0168 72125018      	bset	20504,#1
 828                     ; 148 	PIN_CONFIGURATION(LCD_2X16_DB5);
 832  016c 72105011      	bset	20497,#0
 835  0170 72105012      	bset	20498,#0
 838  0174 72105013      	bset	20499,#0
 839                     ; 149 	PIN_CONFIGURATION(LCD_2X16_DB4);
 843  0178 72145011      	bset	20497,#2
 846  017c 72145012      	bset	20498,#2
 849  0180 72145013      	bset	20499,#2
 850                     ; 151 	PIN_OFF(LCD_2X16_E);
 854  0184 7219500f      	bres	20495,#4
 855                     ; 152 	PIN_OFF(LCD_2X16_RS);
 858  0188 721d500f      	bres	20495,#6
 859                     ; 153 	PIN_OFF(LCD_2X16_DB7);
 862  018c 72175014      	bres	20500,#3
 863                     ; 154 	PIN_OFF(LCD_2X16_DB6);
 866  0190 72135014      	bres	20500,#1
 867                     ; 155 	PIN_OFF(LCD_2X16_DB5);
 870  0194 7211500f      	bres	20495,#0
 871                     ; 156 	PIN_OFF(LCD_2X16_DB4);
 874  0198 7215500f      	bres	20495,#2
 875                     ; 158 	delay_ms(15);
 878  019c ae000f        	ldw	x,#15
 879  019f cd0000        	call	_delay_ms
 881                     ; 160 	lcd_2x16_write(LCD_2X16_RESET);
 883  01a2 a630          	ld	a,#48
 884  01a4 cd0000        	call	_lcd_2x16_write
 886                     ; 161 	delay_ms(5);
 888  01a7 ae0005        	ldw	x,#5
 889  01aa cd0000        	call	_delay_ms
 891                     ; 163 	lcd_2x16_write(LCD_2X16_RESET);
 893  01ad a630          	ld	a,#48
 894  01af cd0000        	call	_lcd_2x16_write
 896                     ; 164 	delay_ms(1);
 898  01b2 ae0001        	ldw	x,#1
 899  01b5 cd0000        	call	_delay_ms
 901                     ; 166 	lcd_2x16_write(LCD_2X16_RESET);
 903  01b8 a630          	ld	a,#48
 904  01ba cd0000        	call	_lcd_2x16_write
 906                     ; 168 	lcd_2x16_write(LCD_2X16_4_BIT_BUS);
 908  01bd a620          	ld	a,#32
 909  01bf cd0000        	call	_lcd_2x16_write
 911                     ; 169 	lcd_2x16_write(LCD_2X16_4_BIT_BUS);
 913  01c2 a620          	ld	a,#32
 914  01c4 cd0000        	call	_lcd_2x16_write
 916                     ; 170 	lcd_2x16_write(0x80);
 918  01c7 a680          	ld	a,#128
 919  01c9 cd0000        	call	_lcd_2x16_write
 921                     ; 172 	lcd_2x16_write(0x00);
 923  01cc 4f            	clr	a
 924  01cd cd0000        	call	_lcd_2x16_write
 926                     ; 173 	lcd_2x16_write(0xC0);
 928  01d0 a6c0          	ld	a,#192
 929  01d2 cd0000        	call	_lcd_2x16_write
 931                     ; 174 	delay_ms(1);
 933  01d5 ae0001        	ldw	x,#1
 934  01d8 cd0000        	call	_delay_ms
 936                     ; 176 	lcd_2x16_write(0x00);
 938  01db 4f            	clr	a
 939  01dc cd0000        	call	_lcd_2x16_write
 941                     ; 177 	lcd_2x16_write(0x10);
 943  01df a610          	ld	a,#16
 944  01e1 cd0000        	call	_lcd_2x16_write
 946                     ; 178 	delay_ms(1);
 948  01e4 ae0001        	ldw	x,#1
 949  01e7 cd0000        	call	_delay_ms
 951                     ; 180 	lcd_2x16_write(0x00);
 953  01ea 4f            	clr	a
 954  01eb cd0000        	call	_lcd_2x16_write
 956                     ; 181 	lcd_2x16_write(0x60);
 958  01ee a660          	ld	a,#96
 959  01f0 cd0000        	call	_lcd_2x16_write
 961                     ; 182 	delay_ms(1);
 963  01f3 ae0001        	ldw	x,#1
 964  01f6 cd0000        	call	_delay_ms
 966                     ; 183 }
 969  01f9 81            	ret
1198                     	xdef	_lcd_2x16_write_data
1199                     	xdef	_lcd_2x16_write_command
1200                     	xdef	_lcd_2x16_write
1201                     	switch	.ubsct
1202  0000               _lcd_2x16_command:
1203  0000 00            	ds.b	1
1204                     	xdef	_lcd_2x16_command
1205                     	xref	_delay_ms
1206                     	xdef	_lcd_2x16_decode
1207                     	xdef	_lcd_2x16_print_dec_xx
1208                     	xdef	_lcd_2x16_print_dec_xxx
1209                     	xdef	_lcd_2x16_print_hex_xx
1210                     	xdef	_lcd_2x16_print_string
1211                     	xdef	_lcd_2x16_print_char
1212                     	xdef	_lcd_2x16_set_position
1213                     	xdef	_lcd_2x16_init
1214                     	xref.b	c_x
1234                     	xref	c_smodx
1235                     	xref	c_sdivx
1236                     	end
