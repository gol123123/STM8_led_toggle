   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32.1 - 30 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  15                     .const:	section	.text
  16  0000               _lcd_nokia1100_decode:
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
  33  0010               _lcd_nokia1100_font_5x8:
  34  0010 00            	dc.b	0
  35  0011 00            	dc.b	0
  36  0012 00            	dc.b	0
  37  0013 00            	dc.b	0
  38  0014 00            	dc.b	0
  39  0015 00            	dc.b	0
  40  0016 00            	dc.b	0
  41  0017 5f            	dc.b	95
  42  0018 00            	dc.b	0
  43  0019 00            	dc.b	0
  44  001a 00            	dc.b	0
  45  001b 07            	dc.b	7
  46  001c 00            	dc.b	0
  47  001d 07            	dc.b	7
  48  001e 00            	dc.b	0
  49  001f 14            	dc.b	20
  50  0020 7f            	dc.b	127
  51  0021 14            	dc.b	20
  52  0022 7f            	dc.b	127
  53  0023 14            	dc.b	20
  54  0024 24            	dc.b	36
  55  0025 2a            	dc.b	42
  56  0026 7f            	dc.b	127
  57  0027 2a            	dc.b	42
  58  0028 12            	dc.b	18
  59  0029 23            	dc.b	35
  60  002a 13            	dc.b	19
  61  002b 08            	dc.b	8
  62  002c 64            	dc.b	100
  63  002d 62            	dc.b	98
  64  002e 36            	dc.b	54
  65  002f 49            	dc.b	73
  66  0030 55            	dc.b	85
  67  0031 22            	dc.b	34
  68  0032 50            	dc.b	80
  69  0033 00            	dc.b	0
  70  0034 05            	dc.b	5
  71  0035 03            	dc.b	3
  72  0036 00            	dc.b	0
  73  0037 00            	dc.b	0
  74  0038 00            	dc.b	0
  75  0039 1c            	dc.b	28
  76  003a 22            	dc.b	34
  77  003b 41            	dc.b	65
  78  003c 00            	dc.b	0
  79  003d 00            	dc.b	0
  80  003e 41            	dc.b	65
  81  003f 22            	dc.b	34
  82  0040 1c            	dc.b	28
  83  0041 00            	dc.b	0
  84  0042 08            	dc.b	8
  85  0043 2a            	dc.b	42
  86  0044 1c            	dc.b	28
  87  0045 2a            	dc.b	42
  88  0046 08            	dc.b	8
  89  0047 08            	dc.b	8
  90  0048 08            	dc.b	8
  91  0049 3e            	dc.b	62
  92  004a 08            	dc.b	8
  93  004b 08            	dc.b	8
  94  004c 00            	dc.b	0
  95  004d 50            	dc.b	80
  96  004e 30            	dc.b	48
  97  004f 00            	dc.b	0
  98  0050 00            	dc.b	0
  99  0051 08            	dc.b	8
 100  0052 08            	dc.b	8
 101  0053 08            	dc.b	8
 102  0054 08            	dc.b	8
 103  0055 08            	dc.b	8
 104  0056 00            	dc.b	0
 105  0057 30            	dc.b	48
 106  0058 30            	dc.b	48
 107  0059 00            	dc.b	0
 108  005a 00            	dc.b	0
 109  005b 20            	dc.b	32
 110  005c 10            	dc.b	16
 111  005d 08            	dc.b	8
 112  005e 04            	dc.b	4
 113  005f 02            	dc.b	2
 114  0060 3e            	dc.b	62
 115  0061 51            	dc.b	81
 116  0062 49            	dc.b	73
 117  0063 45            	dc.b	69
 118  0064 3e            	dc.b	62
 119  0065 00            	dc.b	0
 120  0066 42            	dc.b	66
 121  0067 7f            	dc.b	127
 122  0068 40            	dc.b	64
 123  0069 00            	dc.b	0
 124  006a 42            	dc.b	66
 125  006b 61            	dc.b	97
 126  006c 51            	dc.b	81
 127  006d 49            	dc.b	73
 128  006e 46            	dc.b	70
 129  006f 21            	dc.b	33
 130  0070 41            	dc.b	65
 131  0071 45            	dc.b	69
 132  0072 4b            	dc.b	75
 133  0073 31            	dc.b	49
 134  0074 18            	dc.b	24
 135  0075 14            	dc.b	20
 136  0076 12            	dc.b	18
 137  0077 7f            	dc.b	127
 138  0078 10            	dc.b	16
 139  0079 27            	dc.b	39
 140  007a 45            	dc.b	69
 141  007b 45            	dc.b	69
 142  007c 45            	dc.b	69
 143  007d 39            	dc.b	57
 144  007e 3c            	dc.b	60
 145  007f 4a            	dc.b	74
 146  0080 49            	dc.b	73
 147  0081 49            	dc.b	73
 148  0082 30            	dc.b	48
 149  0083 01            	dc.b	1
 150  0084 71            	dc.b	113
 151  0085 09            	dc.b	9
 152  0086 05            	dc.b	5
 153  0087 03            	dc.b	3
 154  0088 36            	dc.b	54
 155  0089 49            	dc.b	73
 156  008a 49            	dc.b	73
 157  008b 49            	dc.b	73
 158  008c 36            	dc.b	54
 159  008d 06            	dc.b	6
 160  008e 49            	dc.b	73
 161  008f 49            	dc.b	73
 162  0090 29            	dc.b	41
 163  0091 1e            	dc.b	30
 164  0092 00            	dc.b	0
 165  0093 36            	dc.b	54
 166  0094 36            	dc.b	54
 167  0095 00            	dc.b	0
 168  0096 00            	dc.b	0
 169  0097 00            	dc.b	0
 170  0098 56            	dc.b	86
 171  0099 36            	dc.b	54
 172  009a 00            	dc.b	0
 173  009b 00            	dc.b	0
 174  009c 00            	dc.b	0
 175  009d 08            	dc.b	8
 176  009e 14            	dc.b	20
 177  009f 22            	dc.b	34
 178  00a0 41            	dc.b	65
 179  00a1 14            	dc.b	20
 180  00a2 14            	dc.b	20
 181  00a3 14            	dc.b	20
 182  00a4 14            	dc.b	20
 183  00a5 14            	dc.b	20
 184  00a6 41            	dc.b	65
 185  00a7 22            	dc.b	34
 186  00a8 14            	dc.b	20
 187  00a9 08            	dc.b	8
 188  00aa 00            	dc.b	0
 189  00ab 02            	dc.b	2
 190  00ac 01            	dc.b	1
 191  00ad 51            	dc.b	81
 192  00ae 09            	dc.b	9
 193  00af 06            	dc.b	6
 194  00b0 32            	dc.b	50
 195  00b1 49            	dc.b	73
 196  00b2 79            	dc.b	121
 197  00b3 41            	dc.b	65
 198  00b4 3e            	dc.b	62
 199  00b5 7e            	dc.b	126
 200  00b6 11            	dc.b	17
 201  00b7 11            	dc.b	17
 202  00b8 11            	dc.b	17
 203  00b9 7e            	dc.b	126
 204  00ba 7f            	dc.b	127
 205  00bb 49            	dc.b	73
 206  00bc 49            	dc.b	73
 207  00bd 49            	dc.b	73
 208  00be 36            	dc.b	54
 209  00bf 3e            	dc.b	62
 210  00c0 41            	dc.b	65
 211  00c1 41            	dc.b	65
 212  00c2 41            	dc.b	65
 213  00c3 22            	dc.b	34
 214  00c4 7f            	dc.b	127
 215  00c5 41            	dc.b	65
 216  00c6 41            	dc.b	65
 217  00c7 22            	dc.b	34
 218  00c8 1c            	dc.b	28
 219  00c9 7f            	dc.b	127
 220  00ca 49            	dc.b	73
 221  00cb 49            	dc.b	73
 222  00cc 49            	dc.b	73
 223  00cd 41            	dc.b	65
 224  00ce 7f            	dc.b	127
 225  00cf 09            	dc.b	9
 226  00d0 09            	dc.b	9
 227  00d1 01            	dc.b	1
 228  00d2 01            	dc.b	1
 229  00d3 3e            	dc.b	62
 230  00d4 41            	dc.b	65
 231  00d5 41            	dc.b	65
 232  00d6 51            	dc.b	81
 233  00d7 32            	dc.b	50
 234  00d8 7f            	dc.b	127
 235  00d9 08            	dc.b	8
 236  00da 08            	dc.b	8
 237  00db 08            	dc.b	8
 238  00dc 7f            	dc.b	127
 239  00dd 00            	dc.b	0
 240  00de 41            	dc.b	65
 241  00df 7f            	dc.b	127
 242  00e0 41            	dc.b	65
 243  00e1 00            	dc.b	0
 244  00e2 20            	dc.b	32
 245  00e3 40            	dc.b	64
 246  00e4 41            	dc.b	65
 247  00e5 3f            	dc.b	63
 248  00e6 01            	dc.b	1
 249  00e7 7f            	dc.b	127
 250  00e8 08            	dc.b	8
 251  00e9 14            	dc.b	20
 252  00ea 22            	dc.b	34
 253  00eb 41            	dc.b	65
 254  00ec 7f            	dc.b	127
 255  00ed 40            	dc.b	64
 256  00ee 40            	dc.b	64
 257  00ef 40            	dc.b	64
 258  00f0 40            	dc.b	64
 259  00f1 7f            	dc.b	127
 260  00f2 02            	dc.b	2
 261  00f3 04            	dc.b	4
 262  00f4 02            	dc.b	2
 263  00f5 7f            	dc.b	127
 264  00f6 7f            	dc.b	127
 265  00f7 04            	dc.b	4
 266  00f8 08            	dc.b	8
 267  00f9 10            	dc.b	16
 268  00fa 7f            	dc.b	127
 269  00fb 3e            	dc.b	62
 270  00fc 41            	dc.b	65
 271  00fd 41            	dc.b	65
 272  00fe 41            	dc.b	65
 273  00ff 3e            	dc.b	62
 274  0100 7f            	dc.b	127
 275  0101 09            	dc.b	9
 276  0102 09            	dc.b	9
 277  0103 09            	dc.b	9
 278  0104 06            	dc.b	6
 279  0105 3e            	dc.b	62
 280  0106 41            	dc.b	65
 281  0107 51            	dc.b	81
 282  0108 21            	dc.b	33
 283  0109 5e            	dc.b	94
 284  010a 7f            	dc.b	127
 285  010b 09            	dc.b	9
 286  010c 19            	dc.b	25
 287  010d 29            	dc.b	41
 288  010e 46            	dc.b	70
 289  010f 46            	dc.b	70
 290  0110 49            	dc.b	73
 291  0111 49            	dc.b	73
 292  0112 49            	dc.b	73
 293  0113 31            	dc.b	49
 294  0114 01            	dc.b	1
 295  0115 01            	dc.b	1
 296  0116 7f            	dc.b	127
 297  0117 01            	dc.b	1
 298  0118 01            	dc.b	1
 299  0119 3f            	dc.b	63
 300  011a 40            	dc.b	64
 301  011b 40            	dc.b	64
 302  011c 40            	dc.b	64
 303  011d 3f            	dc.b	63
 304  011e 1f            	dc.b	31
 305  011f 20            	dc.b	32
 306  0120 40            	dc.b	64
 307  0121 20            	dc.b	32
 308  0122 1f            	dc.b	31
 309  0123 7f            	dc.b	127
 310  0124 20            	dc.b	32
 311  0125 18            	dc.b	24
 312  0126 20            	dc.b	32
 313  0127 7f            	dc.b	127
 314  0128 63            	dc.b	99
 315  0129 14            	dc.b	20
 316  012a 08            	dc.b	8
 317  012b 14            	dc.b	20
 318  012c 63            	dc.b	99
 319  012d 03            	dc.b	3
 320  012e 04            	dc.b	4
 321  012f 78            	dc.b	120
 322  0130 04            	dc.b	4
 323  0131 03            	dc.b	3
 324  0132 61            	dc.b	97
 325  0133 51            	dc.b	81
 326  0134 49            	dc.b	73
 327  0135 45            	dc.b	69
 328  0136 43            	dc.b	67
 329  0137 00            	dc.b	0
 330  0138 00            	dc.b	0
 331  0139 7f            	dc.b	127
 332  013a 41            	dc.b	65
 333  013b 41            	dc.b	65
 334  013c 02            	dc.b	2
 335  013d 04            	dc.b	4
 336  013e 08            	dc.b	8
 337  013f 10            	dc.b	16
 338  0140 20            	dc.b	32
 339  0141 41            	dc.b	65
 340  0142 41            	dc.b	65
 341  0143 7f            	dc.b	127
 342  0144 00            	dc.b	0
 343  0145 00            	dc.b	0
 344  0146 04            	dc.b	4
 345  0147 02            	dc.b	2
 346  0148 01            	dc.b	1
 347  0149 02            	dc.b	2
 348  014a 04            	dc.b	4
 349  014b 40            	dc.b	64
 350  014c 40            	dc.b	64
 351  014d 40            	dc.b	64
 352  014e 40            	dc.b	64
 353  014f 40            	dc.b	64
 354  0150 00            	dc.b	0
 355  0151 01            	dc.b	1
 356  0152 02            	dc.b	2
 357  0153 04            	dc.b	4
 358  0154 00            	dc.b	0
 359  0155 20            	dc.b	32
 360  0156 54            	dc.b	84
 361  0157 54            	dc.b	84
 362  0158 54            	dc.b	84
 363  0159 78            	dc.b	120
 364  015a 7f            	dc.b	127
 365  015b 48            	dc.b	72
 366  015c 44            	dc.b	68
 367  015d 44            	dc.b	68
 368  015e 38            	dc.b	56
 369  015f 38            	dc.b	56
 370  0160 44            	dc.b	68
 371  0161 44            	dc.b	68
 372  0162 44            	dc.b	68
 373  0163 20            	dc.b	32
 374  0164 38            	dc.b	56
 375  0165 44            	dc.b	68
 376  0166 44            	dc.b	68
 377  0167 48            	dc.b	72
 378  0168 7f            	dc.b	127
 379  0169 38            	dc.b	56
 380  016a 54            	dc.b	84
 381  016b 54            	dc.b	84
 382  016c 54            	dc.b	84
 383  016d 18            	dc.b	24
 384  016e 08            	dc.b	8
 385  016f 7e            	dc.b	126
 386  0170 09            	dc.b	9
 387  0171 01            	dc.b	1
 388  0172 02            	dc.b	2
 389  0173 08            	dc.b	8
 390  0174 14            	dc.b	20
 391  0175 54            	dc.b	84
 392  0176 54            	dc.b	84
 393  0177 3c            	dc.b	60
 394  0178 7f            	dc.b	127
 395  0179 08            	dc.b	8
 396  017a 04            	dc.b	4
 397  017b 04            	dc.b	4
 398  017c 78            	dc.b	120
 399  017d 00            	dc.b	0
 400  017e 44            	dc.b	68
 401  017f 7d            	dc.b	125
 402  0180 40            	dc.b	64
 403  0181 00            	dc.b	0
 404  0182 20            	dc.b	32
 405  0183 40            	dc.b	64
 406  0184 44            	dc.b	68
 407  0185 3d            	dc.b	61
 408  0186 00            	dc.b	0
 409  0187 00            	dc.b	0
 410  0188 7f            	dc.b	127
 411  0189 10            	dc.b	16
 412  018a 28            	dc.b	40
 413  018b 44            	dc.b	68
 414  018c 00            	dc.b	0
 415  018d 41            	dc.b	65
 416  018e 7f            	dc.b	127
 417  018f 40            	dc.b	64
 418  0190 00            	dc.b	0
 419  0191 7c            	dc.b	124
 420  0192 04            	dc.b	4
 421  0193 18            	dc.b	24
 422  0194 04            	dc.b	4
 423  0195 78            	dc.b	120
 424  0196 7c            	dc.b	124
 425  0197 08            	dc.b	8
 426  0198 04            	dc.b	4
 427  0199 04            	dc.b	4
 428  019a 78            	dc.b	120
 429  019b 38            	dc.b	56
 430  019c 44            	dc.b	68
 431  019d 44            	dc.b	68
 432  019e 44            	dc.b	68
 433  019f 38            	dc.b	56
 434  01a0 7c            	dc.b	124
 435  01a1 14            	dc.b	20
 436  01a2 14            	dc.b	20
 437  01a3 14            	dc.b	20
 438  01a4 08            	dc.b	8
 439  01a5 08            	dc.b	8
 440  01a6 14            	dc.b	20
 441  01a7 14            	dc.b	20
 442  01a8 18            	dc.b	24
 443  01a9 7c            	dc.b	124
 444  01aa 7c            	dc.b	124
 445  01ab 08            	dc.b	8
 446  01ac 04            	dc.b	4
 447  01ad 04            	dc.b	4
 448  01ae 08            	dc.b	8
 449  01af 48            	dc.b	72
 450  01b0 54            	dc.b	84
 451  01b1 54            	dc.b	84
 452  01b2 54            	dc.b	84
 453  01b3 20            	dc.b	32
 454  01b4 04            	dc.b	4
 455  01b5 3f            	dc.b	63
 456  01b6 44            	dc.b	68
 457  01b7 40            	dc.b	64
 458  01b8 20            	dc.b	32
 459  01b9 3c            	dc.b	60
 460  01ba 40            	dc.b	64
 461  01bb 40            	dc.b	64
 462  01bc 20            	dc.b	32
 463  01bd 7c            	dc.b	124
 464  01be 1c            	dc.b	28
 465  01bf 20            	dc.b	32
 466  01c0 40            	dc.b	64
 467  01c1 20            	dc.b	32
 468  01c2 1c            	dc.b	28
 469  01c3 3c            	dc.b	60
 470  01c4 40            	dc.b	64
 471  01c5 30            	dc.b	48
 472  01c6 40            	dc.b	64
 473  01c7 3c            	dc.b	60
 474  01c8 44            	dc.b	68
 475  01c9 28            	dc.b	40
 476  01ca 10            	dc.b	16
 477  01cb 28            	dc.b	40
 478  01cc 44            	dc.b	68
 479  01cd 0c            	dc.b	12
 480  01ce 50            	dc.b	80
 481  01cf 50            	dc.b	80
 482  01d0 50            	dc.b	80
 483  01d1 3c            	dc.b	60
 484  01d2 44            	dc.b	68
 485  01d3 64            	dc.b	100
 486  01d4 54            	dc.b	84
 487  01d5 4c            	dc.b	76
 488  01d6 44            	dc.b	68
 489  01d7 00            	dc.b	0
 490  01d8 08            	dc.b	8
 491  01d9 36            	dc.b	54
 492  01da 41            	dc.b	65
 493  01db 00            	dc.b	0
 494  01dc 00            	dc.b	0
 495  01dd 00            	dc.b	0
 496  01de 7f            	dc.b	127
 497  01df 00            	dc.b	0
 498  01e0 00            	dc.b	0
 499  01e1 00            	dc.b	0
 500  01e2 41            	dc.b	65
 501  01e3 36            	dc.b	54
 502  01e4 08            	dc.b	8
 503  01e5 00            	dc.b	0
 504  01e6 08            	dc.b	8
 505  01e7 08            	dc.b	8
 506  01e8 2a            	dc.b	42
 507  01e9 1c            	dc.b	28
 508  01ea 08            	dc.b	8
 509  01eb 08            	dc.b	8
 510  01ec 1c            	dc.b	28
 511  01ed 2a            	dc.b	42
 512  01ee 08            	dc.b	8
 513  01ef 08            	dc.b	8
 563                     ; 130 void lcd_nokia1100_write(uint8_t data)
 563                     ; 131 {
 565                     	switch	.text
 566  0000               _lcd_nokia1100_write:
 568  0000 88            	push	a
 569  0001 88            	push	a
 570       00000001      OFST:	set	1
 573                     ; 134 	for (bit_number = 8; bit_number-- > 0;)
 575  0002 a608          	ld	a,#8
 576  0004 6b01          	ld	(OFST+0,sp),a
 578  0006 201a          	jra	L73
 579  0008               L33:
 580                     ; 136 		PIN_OFF(LCD_NOKIA_1100_SCLK);
 582  0008 7219500f      	bres	20495,#4
 583                     ; 138 		if (data & 0x80)
 586  000c 7b02          	ld	a,(OFST+1,sp)
 587  000e a580          	bcp	a,#128
 588  0010 2706          	jreq	L34
 589                     ; 140 			PIN_ON(LCD_NOKIA_1100_SDA);
 591  0012 7214500f      	bset	20495,#2
 594  0016 2004          	jra	L54
 595  0018               L34:
 596                     ; 144 			PIN_OFF(LCD_NOKIA_1100_SDA);
 598  0018 7215500f      	bres	20495,#2
 599  001c               L54:
 600                     ; 147 		PIN_ON(LCD_NOKIA_1100_SCLK);
 602  001c 7218500f      	bset	20495,#4
 603                     ; 149 		data <<= 1;
 606  0020 0802          	sll	(OFST+1,sp)
 607  0022               L73:
 608                     ; 134 	for (bit_number = 8; bit_number-- > 0;)
 610  0022 7b01          	ld	a,(OFST+0,sp)
 611  0024 0a01          	dec	(OFST+0,sp)
 612  0026 4d            	tnz	a
 613  0027 26df          	jrne	L33
 614                     ; 151 }
 617  0029 85            	popw	x
 618  002a 81            	ret
 654                     ; 154 void lcd_nokia1100_write_command(uint8_t data)
 654                     ; 155 {
 655                     	switch	.text
 656  002b               _lcd_nokia1100_write_command:
 660                     ; 156 	PIN_ON(LCD_NOKIA_1100_CS);
 662  002b 72135014      	bres	20500,#1
 663                     ; 158 	PIN_OFF(LCD_NOKIA_1100_SCLK);
 666  002f 7219500f      	bres	20495,#4
 667                     ; 159 	PIN_OFF(LCD_NOKIA_1100_SDA);
 670  0033 7215500f      	bres	20495,#2
 671                     ; 160 	PIN_ON(LCD_NOKIA_1100_SCLK);
 674  0037 7218500f      	bset	20495,#4
 675                     ; 162 	lcd_nokia1100_write(data);
 678  003b adc3          	call	_lcd_nokia1100_write
 680                     ; 164 	PIN_OFF(LCD_NOKIA_1100_CS);
 682  003d 72125014      	bset	20500,#1
 683                     ; 165 }
 687  0041 81            	ret
 723                     ; 168 void lcd_nokia1100_write_data(uint8_t data)
 723                     ; 169 {
 724                     	switch	.text
 725  0042               _lcd_nokia1100_write_data:
 729                     ; 170 	PIN_ON(LCD_NOKIA_1100_CS);
 731  0042 72135014      	bres	20500,#1
 732                     ; 172 	PIN_OFF(LCD_NOKIA_1100_SCLK);
 735  0046 7219500f      	bres	20495,#4
 736                     ; 173 	PIN_ON(LCD_NOKIA_1100_SDA);
 739  004a 7214500f      	bset	20495,#2
 740                     ; 174 	PIN_ON(LCD_NOKIA_1100_SCLK);
 743  004e 7218500f      	bset	20495,#4
 744                     ; 176 	lcd_nokia1100_write(data);
 747  0052 adac          	call	_lcd_nokia1100_write
 749                     ; 178 	PIN_OFF(LCD_NOKIA_1100_CS);
 751  0054 72125014      	bset	20500,#1
 752                     ; 179 }
 756  0058 81            	ret
 793                     ; 182 void lcd_nokia1100_clear(void)
 793                     ; 183 {
 794                     	switch	.text
 795  0059               _lcd_nokia1100_clear:
 797  0059 88            	push	a
 798       00000001      OFST:	set	1
 801                     ; 186 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_START_ROW_ADDRESS_6BITS);
 803  005a a640          	ld	a,#64
 804  005c adcd          	call	_lcd_nokia1100_write_command
 806                     ; 187 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_X_ADDRESS_UPPER_3BITS | 0x0);
 808  005e a610          	ld	a,#16
 809  0060 adc9          	call	_lcd_nokia1100_write_command
 811                     ; 188 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_X_ADDRESS_LOWER_4BITS | 0x0);
 813  0062 4f            	clr	a
 814  0063 adc6          	call	_lcd_nokia1100_write_command
 816                     ; 189 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_Y_ADDRESS | 0x0);
 818  0065 a6b0          	ld	a,#176
 819  0067 adc2          	call	_lcd_nokia1100_write_command
 821                     ; 190 	lcd_nokia1100_write_command(LCD_NOKIA1100_DIPLAY_OFF);
 823  0069 a6ae          	ld	a,#174
 824  006b adbe          	call	_lcd_nokia1100_write_command
 826                     ; 192 	for (i = 0; i < 216; i++)
 828  006d 0f01          	clr	(OFST+0,sp)
 829  006f               L121:
 830                     ; 194 		lcd_nokia1100_write_data(0x00);
 832  006f 4f            	clr	a
 833  0070 add0          	call	_lcd_nokia1100_write_data
 835                     ; 195 		lcd_nokia1100_write_data(0x00);
 837  0072 4f            	clr	a
 838  0073 adcd          	call	_lcd_nokia1100_write_data
 840                     ; 196 		lcd_nokia1100_write_data(0x00);
 842  0075 4f            	clr	a
 843  0076 adca          	call	_lcd_nokia1100_write_data
 845                     ; 197 		lcd_nokia1100_write_data(0x00);
 847  0078 4f            	clr	a
 848  0079 adc7          	call	_lcd_nokia1100_write_data
 850                     ; 192 	for (i = 0; i < 216; i++)
 852  007b 0c01          	inc	(OFST+0,sp)
 855  007d 7b01          	ld	a,(OFST+0,sp)
 856  007f a1d8          	cp	a,#216
 857  0081 25ec          	jrult	L121
 858                     ; 200 	lcd_nokia1100_write_command(LCD_NOKIA1100_DIPLAY_ON);
 860  0083 a6af          	ld	a,#175
 861  0085 ada4          	call	_lcd_nokia1100_write_command
 863                     ; 201 }
 866  0087 84            	pop	a
 867  0088 81            	ret
 912                     ; 204 void lcd_nokia1100_set_position(uint8_t row, uint8_t column)
 912                     ; 205 {
 913                     	switch	.text
 914  0089               _lcd_nokia1100_set_position:
 916  0089 89            	pushw	x
 917       00000000      OFST:	set	0
 920                     ; 206 	column *= 6;
 922  008a ae0006        	ldw	x,#6
 923  008d 7b02          	ld	a,(OFST+2,sp)
 924  008f 42            	mul	x,a
 925  0090 9f            	ld	a,xl
 926  0091 6b02          	ld	(OFST+2,sp),a
 927                     ; 208 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_Y_ADDRESS | (uint8_t)(row & 0x0F));
 929  0093 7b01          	ld	a,(OFST+1,sp)
 930  0095 a40f          	and	a,#15
 931  0097 aab0          	or	a,#176
 932  0099 ad90          	call	_lcd_nokia1100_write_command
 934                     ; 209 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_X_ADDRESS_UPPER_3BITS
 934                     ; 210 			| ((column >> 4) & 0x07));
 936  009b 7b02          	ld	a,(OFST+2,sp)
 937  009d 4e            	swap	a
 938  009e a40f          	and	a,#15
 939  00a0 a407          	and	a,#7
 940  00a2 aa10          	or	a,#16
 941  00a4 ad85          	call	_lcd_nokia1100_write_command
 943                     ; 211 	lcd_nokia1100_write_command(LCD_NOKIA1100_SET_X_ADDRESS_LOWER_4BITS
 943                     ; 212 			| (column & 0x0F));
 945  00a6 7b02          	ld	a,(OFST+2,sp)
 946  00a8 a40f          	and	a,#15
 947  00aa cd002b        	call	_lcd_nokia1100_write_command
 949                     ; 213 }
 952  00ad 85            	popw	x
 953  00ae 81            	ret
 999                     ; 216 void lcd_nokia1100_print_char(uint8_t simbol)
 999                     ; 217 {
1000                     	switch	.text
1001  00af               _lcd_nokia1100_print_char:
1003  00af 88            	push	a
1004  00b0 88            	push	a
1005       00000001      OFST:	set	1
1008                     ; 220 	for (line_number = 0; line_number < 5; line_number++)
1010  00b1 0f01          	clr	(OFST+0,sp)
1011  00b3               L371:
1012                     ; 222 		lcd_nokia1100_write_data(
1012                     ; 223 				lcd_nokia1100_font_5x8[simbol - 32][line_number]);
1014  00b3 7b02          	ld	a,(OFST+1,sp)
1015  00b5 97            	ld	xl,a
1016  00b6 a605          	ld	a,#5
1017  00b8 42            	mul	x,a
1018  00b9 1d00a0        	subw	x,#160
1019  00bc 01            	rrwa	x,a
1020  00bd 1b01          	add	a,(OFST+0,sp)
1021  00bf 2401          	jrnc	L02
1022  00c1 5c            	incw	x
1023  00c2               L02:
1024  00c2 02            	rlwa	x,a
1025  00c3 d60010        	ld	a,(_lcd_nokia1100_font_5x8,x)
1026  00c6 cd0042        	call	_lcd_nokia1100_write_data
1028                     ; 220 	for (line_number = 0; line_number < 5; line_number++)
1030  00c9 0c01          	inc	(OFST+0,sp)
1033  00cb 7b01          	ld	a,(OFST+0,sp)
1034  00cd a105          	cp	a,#5
1035  00cf 25e2          	jrult	L371
1036                     ; 226 	lcd_nokia1100_write_data(0x00);
1038  00d1 4f            	clr	a
1039  00d2 cd0042        	call	_lcd_nokia1100_write_data
1041                     ; 227 }
1044  00d5 85            	popw	x
1045  00d6 81            	ret
1083                     ; 230 void lcd_nokia1100_print_string(uint8_t * string)
1083                     ; 231 {
1084                     	switch	.text
1085  00d7               _lcd_nokia1100_print_string:
1087  00d7 89            	pushw	x
1088       00000000      OFST:	set	0
1091                     ; 232 	lcd_nokia1100_write_command(LCD_NOKIA1100_DIPLAY_OFF);
1093  00d8 a6ae          	ld	a,#174
1094  00da cd002b        	call	_lcd_nokia1100_write_command
1097  00dd 200d          	jra	L122
1098  00df               L712:
1099                     ; 236 		lcd_nokia1100_print_char(*string++);
1101  00df 1e01          	ldw	x,(OFST+1,sp)
1102  00e1 1c0001        	addw	x,#1
1103  00e4 1f01          	ldw	(OFST+1,sp),x
1104  00e6 1d0001        	subw	x,#1
1105  00e9 f6            	ld	a,(x)
1106  00ea adc3          	call	_lcd_nokia1100_print_char
1108  00ec               L122:
1109                     ; 234 	while (*string)
1111  00ec 1e01          	ldw	x,(OFST+1,sp)
1112  00ee 7d            	tnz	(x)
1113  00ef 26ee          	jrne	L712
1114                     ; 239 	lcd_nokia1100_write_command(LCD_NOKIA1100_DIPLAY_ON);
1116  00f1 a6af          	ld	a,#175
1117  00f3 cd002b        	call	_lcd_nokia1100_write_command
1119                     ; 240 }
1122  00f6 85            	popw	x
1123  00f7 81            	ret
1160                     ; 243 void lcd_nokia1100_print_hex_xx(uint8_t data)
1160                     ; 244 {
1161                     	switch	.text
1162  00f8               _lcd_nokia1100_print_hex_xx:
1164  00f8 88            	push	a
1165       00000000      OFST:	set	0
1168                     ; 245 	lcd_nokia1100_print_char(lcd_nokia1100_decode[(data >> 4) & 0x0F]);
1170  00f9 4e            	swap	a
1171  00fa a40f          	and	a,#15
1172  00fc 5f            	clrw	x
1173  00fd 97            	ld	xl,a
1174  00fe d60000        	ld	a,(_lcd_nokia1100_decode,x)
1175  0101 adac          	call	_lcd_nokia1100_print_char
1177                     ; 246 	lcd_nokia1100_print_char(lcd_nokia1100_decode[data & 0x0F]);
1179  0103 7b01          	ld	a,(OFST+1,sp)
1180  0105 a40f          	and	a,#15
1181  0107 5f            	clrw	x
1182  0108 97            	ld	xl,a
1183  0109 d60000        	ld	a,(_lcd_nokia1100_decode,x)
1184  010c ada1          	call	_lcd_nokia1100_print_char
1186                     ; 247 }
1189  010e 84            	pop	a
1190  010f 81            	ret
1227                     ; 250 void lcd_nokia1100_print_dec_xxx(uint8_t data)
1227                     ; 251 {
1228                     	switch	.text
1229  0110               _lcd_nokia1100_print_dec_xxx:
1231  0110 88            	push	a
1232       00000000      OFST:	set	0
1235                     ; 252 	lcd_nokia1100_print_char(lcd_nokia1100_decode[(data / 100) & 0x0F]);
1237  0111 5f            	clrw	x
1238  0112 97            	ld	xl,a
1239  0113 a664          	ld	a,#100
1240  0115 cd0000        	call	c_sdivx
1242  0118 01            	rrwa	x,a
1243  0119 a40f          	and	a,#15
1244  011b 5f            	clrw	x
1245  011c 02            	rlwa	x,a
1246  011d d60000        	ld	a,(_lcd_nokia1100_decode,x)
1247  0120 ad8d          	call	_lcd_nokia1100_print_char
1249                     ; 253 	lcd_nokia1100_print_char(lcd_nokia1100_decode[((data % 100) / 10) & 0x0F]);
1251  0122 7b01          	ld	a,(OFST+1,sp)
1252  0124 5f            	clrw	x
1253  0125 97            	ld	xl,a
1254  0126 a664          	ld	a,#100
1255  0128 cd0000        	call	c_smodx
1257  012b a60a          	ld	a,#10
1258  012d cd0000        	call	c_sdivx
1260  0130 01            	rrwa	x,a
1261  0131 a40f          	and	a,#15
1262  0133 5f            	clrw	x
1263  0134 02            	rlwa	x,a
1264  0135 d60000        	ld	a,(_lcd_nokia1100_decode,x)
1265  0138 cd00af        	call	_lcd_nokia1100_print_char
1267                     ; 254 	lcd_nokia1100_print_char(lcd_nokia1100_decode[((data % 100) % 10) & 0x0F]);
1269  013b 7b01          	ld	a,(OFST+1,sp)
1270  013d 5f            	clrw	x
1271  013e 97            	ld	xl,a
1272  013f a664          	ld	a,#100
1273  0141 cd0000        	call	c_smodx
1275  0144 a60a          	ld	a,#10
1276  0146 cd0000        	call	c_smodx
1278  0149 01            	rrwa	x,a
1279  014a a40f          	and	a,#15
1280  014c 5f            	clrw	x
1281  014d 02            	rlwa	x,a
1282  014e d60000        	ld	a,(_lcd_nokia1100_decode,x)
1283  0151 cd00af        	call	_lcd_nokia1100_print_char
1285                     ; 255 }
1288  0154 84            	pop	a
1289  0155 81            	ret
1326                     ; 258 void lcd_nokia1100_print_dec_xx(uint8_t data)
1326                     ; 259 {
1327                     	switch	.text
1328  0156               _lcd_nokia1100_print_dec_xx:
1330  0156 88            	push	a
1331       00000000      OFST:	set	0
1334                     ; 260 	lcd_nokia1100_print_char(lcd_nokia1100_decode[((data % 100) / 10) & 0x0F]);
1336  0157 5f            	clrw	x
1337  0158 97            	ld	xl,a
1338  0159 a664          	ld	a,#100
1339  015b cd0000        	call	c_smodx
1341  015e a60a          	ld	a,#10
1342  0160 cd0000        	call	c_sdivx
1344  0163 01            	rrwa	x,a
1345  0164 a40f          	and	a,#15
1346  0166 5f            	clrw	x
1347  0167 02            	rlwa	x,a
1348  0168 d60000        	ld	a,(_lcd_nokia1100_decode,x)
1349  016b cd00af        	call	_lcd_nokia1100_print_char
1351                     ; 261 	lcd_nokia1100_print_char(lcd_nokia1100_decode[((data % 100) % 10) & 0x0F]);
1353  016e 7b01          	ld	a,(OFST+1,sp)
1354  0170 5f            	clrw	x
1355  0171 97            	ld	xl,a
1356  0172 a664          	ld	a,#100
1357  0174 cd0000        	call	c_smodx
1359  0177 a60a          	ld	a,#10
1360  0179 cd0000        	call	c_smodx
1362  017c 01            	rrwa	x,a
1363  017d a40f          	and	a,#15
1364  017f 5f            	clrw	x
1365  0180 02            	rlwa	x,a
1366  0181 d60000        	ld	a,(_lcd_nokia1100_decode,x)
1367  0184 cd00af        	call	_lcd_nokia1100_print_char
1369                     ; 262 }
1372  0187 84            	pop	a
1373  0188 81            	ret
1399                     ; 265 void lcd_nokia1100_init(void)
1399                     ; 266 {
1400                     	switch	.text
1401  0189               _lcd_nokia1100_init:
1405                     ; 267 	PIN_CONFIGURATION(LCD_NOKIA_1100_CS);
1407  0189 72125016      	bset	20502,#1
1410  018d 72125017      	bset	20503,#1
1413  0191 72125018      	bset	20504,#1
1414                     ; 268 	PIN_CONFIGURATION(LCD_NOKIA_1100_RST);
1418  0195 72165016      	bset	20502,#3
1421  0199 72165017      	bset	20503,#3
1424  019d 72165018      	bset	20504,#3
1425                     ; 269 	PIN_CONFIGURATION(LCD_NOKIA_1100_SCLK);
1429  01a1 72185011      	bset	20497,#4
1432  01a5 72185012      	bset	20498,#4
1435  01a9 72185013      	bset	20499,#4
1436                     ; 270 	PIN_CONFIGURATION(LCD_NOKIA_1100_SDA);
1440  01ad 72145011      	bset	20497,#2
1443  01b1 72145012      	bset	20498,#2
1446  01b5 72145013      	bset	20499,#2
1447                     ; 272 	PIN_ON(LCD_NOKIA_1100_RST);
1451  01b9 72175014      	bres	20500,#3
1452                     ; 273 	delay_ms(5);
1455  01bd ae0005        	ldw	x,#5
1456  01c0 cd0000        	call	_delay_ms
1458                     ; 274 	PIN_OFF(LCD_NOKIA_1100_RST);
1460  01c3 72165014      	bset	20500,#3
1461                     ; 276 	lcd_nokia1100_write_command(LCD_NOKIA1100_PIXELS_ALL_OFF);
1464  01c7 a6a4          	ld	a,#164
1465  01c9 cd002b        	call	_lcd_nokia1100_write_command
1467                     ; 277 	lcd_nokia1100_write_command(LCD_NOKIA1100_CHARGE_PUMP_ON);
1469  01cc a62f          	ld	a,#47
1470  01ce cd002b        	call	_lcd_nokia1100_write_command
1472                     ; 279 	lcd_nokia1100_clear();
1474  01d1 cd0059        	call	_lcd_nokia1100_clear
1476                     ; 280 }
1479  01d4 81            	ret
1633                     	xdef	_lcd_nokia1100_write_data
1634                     	xdef	_lcd_nokia1100_write_command
1635                     	xdef	_lcd_nokia1100_write
1636                     	switch	.ubsct
1637  0000               _lcd_nokia1100_command:
1638  0000 00            	ds.b	1
1639                     	xdef	_lcd_nokia1100_command
1640                     	xdef	_lcd_nokia1100_font_5x8
1641                     	xdef	_lcd_nokia1100_decode
1642                     	xref	_delay_ms
1643                     	xdef	_lcd_nokia1100_print_dec_xx
1644                     	xdef	_lcd_nokia1100_print_dec_xxx
1645                     	xdef	_lcd_nokia1100_print_hex_xx
1646                     	xdef	_lcd_nokia1100_clear
1647                     	xdef	_lcd_nokia1100_set_position
1648                     	xdef	_lcd_nokia1100_print_char
1649                     	xdef	_lcd_nokia1100_print_string
1650                     	xdef	_lcd_nokia1100_init
1651                     	xref.b	c_x
1671                     	xref	c_smodx
1672                     	xref	c_sdivx
1673                     	end
