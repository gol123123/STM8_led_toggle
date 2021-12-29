   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.5 - 16 Jun 2021
   3                     ; Generator (Limited) V4.5.3 - 16 Jun 2021
  42                     ; 44 uint8_t ITC_GetCPUCC(void)
  42                     ; 45 {
  44                     	switch	.text
  45  0000               _ITC_GetCPUCC:
  49                     ; 47   _asm("push cc");
  52  0000 8a            push cc
  54                     ; 48   _asm("pop a");
  57  0001 84            pop a
  59                     ; 49   return; /* Ignore compiler warning, the returned value is in A register */
  62  0002 81            	ret
  85                     ; 75 void ITC_DeInit(void)
  85                     ; 76 {
  86                     	switch	.text
  87  0003               _ITC_DeInit:
  91                     ; 77     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  93  0003 35ff7f70      	mov	32624,#255
  94                     ; 78     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  96  0007 35ff7f71      	mov	32625,#255
  97                     ; 79     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  99  000b 35ff7f72      	mov	32626,#255
 100                     ; 80     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 102  000f 35ff7f73      	mov	32627,#255
 103                     ; 81     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 105  0013 35ff7f74      	mov	32628,#255
 106                     ; 82     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 108  0017 35ff7f75      	mov	32629,#255
 109                     ; 83     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 111  001b 35ff7f76      	mov	32630,#255
 112                     ; 84     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 114  001f 35ff7f77      	mov	32631,#255
 115                     ; 85 }
 118  0023 81            	ret
 143                     ; 92 uint8_t ITC_GetSoftIntStatus(void)
 143                     ; 93 {
 144                     	switch	.text
 145  0024               _ITC_GetSoftIntStatus:
 149                     ; 94     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 151  0024 adda          	call	_ITC_GetCPUCC
 153  0026 a428          	and	a,#40
 156  0028 81            	ret
 406                     .const:	section	.text
 407  0000               L62:
 408  0000 0065          	dc.w	L14
 409  0002 0065          	dc.w	L14
 410  0004 0065          	dc.w	L14
 411  0006 0065          	dc.w	L14
 412  0008 006e          	dc.w	L34
 413  000a 006e          	dc.w	L34
 414  000c 006e          	dc.w	L34
 415  000e 006e          	dc.w	L34
 416  0010 00a2          	dc.w	L502
 417  0012 00a2          	dc.w	L502
 418  0014 0077          	dc.w	L54
 419  0016 0077          	dc.w	L54
 420  0018 0080          	dc.w	L74
 421  001a 0080          	dc.w	L74
 422  001c 0080          	dc.w	L74
 423  001e 0080          	dc.w	L74
 424  0020 0089          	dc.w	L15
 425  0022 0089          	dc.w	L15
 426  0024 0089          	dc.w	L15
 427  0026 0089          	dc.w	L15
 428  0028 00a2          	dc.w	L502
 429  002a 00a2          	dc.w	L502
 430  002c 0092          	dc.w	L35
 431  002e 0092          	dc.w	L35
 432  0030 009b          	dc.w	L55
 433                     ; 102 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 433                     ; 103 {
 434                     	switch	.text
 435  0029               _ITC_GetSoftwarePriority:
 437  0029 88            	push	a
 438  002a 89            	pushw	x
 439       00000002      OFST:	set	2
 442                     ; 105     uint8_t Value = 0;
 444  002b 0f02          	clr	(OFST+0,sp)
 446                     ; 106     uint8_t Mask = 0;
 448                     ; 109     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 450  002d a119          	cp	a,#25
 451  002f 2403          	jruge	L41
 452  0031 4f            	clr	a
 453  0032 2010          	jra	L61
 454  0034               L41:
 455  0034 ae006d        	ldw	x,#109
 456  0037 89            	pushw	x
 457  0038 ae0000        	ldw	x,#0
 458  003b 89            	pushw	x
 459  003c ae0064        	ldw	x,#L102
 460  003f cd0000        	call	_assert_failed
 462  0042 5b04          	addw	sp,#4
 463  0044               L61:
 464                     ; 112     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 466  0044 7b03          	ld	a,(OFST+1,sp)
 467  0046 a403          	and	a,#3
 468  0048 48            	sll	a
 469  0049 5f            	clrw	x
 470  004a 97            	ld	xl,a
 471  004b a603          	ld	a,#3
 472  004d 5d            	tnzw	x
 473  004e 2704          	jreq	L02
 474  0050               L22:
 475  0050 48            	sll	a
 476  0051 5a            	decw	x
 477  0052 26fc          	jrne	L22
 478  0054               L02:
 479  0054 6b01          	ld	(OFST-1,sp),a
 481                     ; 114     switch (IrqNum)
 483  0056 7b03          	ld	a,(OFST+1,sp)
 485                     ; 184     default:
 485                     ; 185         break;
 486  0058 a119          	cp	a,#25
 487  005a 2407          	jruge	L42
 488  005c 5f            	clrw	x
 489  005d 97            	ld	xl,a
 490  005e 58            	sllw	x
 491  005f de0000        	ldw	x,(L62,x)
 492  0062 fc            	jp	(x)
 493  0063               L42:
 494  0063 203d          	jra	L502
 495  0065               L14:
 496                     ; 116     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 496                     ; 117     case ITC_IRQ_AWU:
 496                     ; 118     case ITC_IRQ_CLK:
 496                     ; 119     case ITC_IRQ_PORTA:
 496                     ; 120         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 498  0065 c67f70        	ld	a,32624
 499  0068 1401          	and	a,(OFST-1,sp)
 500  006a 6b02          	ld	(OFST+0,sp),a
 502                     ; 121         break;
 504  006c 2034          	jra	L502
 505  006e               L34:
 506                     ; 122     case ITC_IRQ_PORTB:
 506                     ; 123     case ITC_IRQ_PORTC:
 506                     ; 124     case ITC_IRQ_PORTD:
 506                     ; 125     case ITC_IRQ_PORTE:
 506                     ; 126         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 508  006e c67f71        	ld	a,32625
 509  0071 1401          	and	a,(OFST-1,sp)
 510  0073 6b02          	ld	(OFST+0,sp),a
 512                     ; 127         break;
 514  0075 202b          	jra	L502
 515  0077               L54:
 516                     ; 137     case ITC_IRQ_SPI:
 516                     ; 138     case ITC_IRQ_TIM1_OVF:
 516                     ; 139         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 518  0077 c67f72        	ld	a,32626
 519  007a 1401          	and	a,(OFST-1,sp)
 520  007c 6b02          	ld	(OFST+0,sp),a
 522                     ; 140         break;
 524  007e 2022          	jra	L502
 525  0080               L74:
 526                     ; 141     case ITC_IRQ_TIM1_CAPCOM:
 526                     ; 142 #ifdef STM8S903
 526                     ; 143     case ITC_IRQ_TIM5_OVFTRI:
 526                     ; 144     case ITC_IRQ_TIM5_CAPCOM:
 526                     ; 145 #else
 526                     ; 146     case ITC_IRQ_TIM2_OVF:
 526                     ; 147     case ITC_IRQ_TIM2_CAPCOM:
 526                     ; 148 #endif /*STM8S903*/
 526                     ; 149 
 526                     ; 150     case ITC_IRQ_TIM3_OVF:
 526                     ; 151         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 528  0080 c67f73        	ld	a,32627
 529  0083 1401          	and	a,(OFST-1,sp)
 530  0085 6b02          	ld	(OFST+0,sp),a
 532                     ; 152         break;
 534  0087 2019          	jra	L502
 535  0089               L15:
 536                     ; 153     case ITC_IRQ_TIM3_CAPCOM:
 536                     ; 154     case ITC_IRQ_UART1_TX:
 536                     ; 155     case ITC_IRQ_UART1_RX:
 536                     ; 156     case ITC_IRQ_I2C:
 536                     ; 157         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 538  0089 c67f74        	ld	a,32628
 539  008c 1401          	and	a,(OFST-1,sp)
 540  008e 6b02          	ld	(OFST+0,sp),a
 542                     ; 158         break;
 544  0090 2010          	jra	L502
 545  0092               L35:
 546                     ; 171     case ITC_IRQ_ADC1:
 546                     ; 172 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 546                     ; 173 
 546                     ; 174 #ifdef STM8S903
 546                     ; 175     case ITC_IRQ_TIM6_OVFTRI:
 546                     ; 176 #else
 546                     ; 177     case ITC_IRQ_TIM4_OVF:
 546                     ; 178 #endif /*STM8S903*/
 546                     ; 179         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 548  0092 c67f75        	ld	a,32629
 549  0095 1401          	and	a,(OFST-1,sp)
 550  0097 6b02          	ld	(OFST+0,sp),a
 552                     ; 180         break;
 554  0099 2007          	jra	L502
 555  009b               L55:
 556                     ; 181     case ITC_IRQ_EEPROM_EEC:
 556                     ; 182         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 558  009b c67f76        	ld	a,32630
 559  009e 1401          	and	a,(OFST-1,sp)
 560  00a0 6b02          	ld	(OFST+0,sp),a
 562                     ; 183         break;
 564  00a2               L75:
 565                     ; 184     default:
 565                     ; 185         break;
 567  00a2               L502:
 568                     ; 188     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 570  00a2 7b03          	ld	a,(OFST+1,sp)
 571  00a4 a403          	and	a,#3
 572  00a6 48            	sll	a
 573  00a7 5f            	clrw	x
 574  00a8 97            	ld	xl,a
 575  00a9 7b02          	ld	a,(OFST+0,sp)
 576  00ab 5d            	tnzw	x
 577  00ac 2704          	jreq	L03
 578  00ae               L23:
 579  00ae 44            	srl	a
 580  00af 5a            	decw	x
 581  00b0 26fc          	jrne	L23
 582  00b2               L03:
 583  00b2 6b02          	ld	(OFST+0,sp),a
 585                     ; 190     return((ITC_PriorityLevel_TypeDef)Value);
 587  00b4 7b02          	ld	a,(OFST+0,sp)
 590  00b6 5b03          	addw	sp,#3
 591  00b8 81            	ret
 657                     	switch	.const
 658  0032               L66:
 659  0032 014a          	dc.w	L702
 660  0034 014a          	dc.w	L702
 661  0036 014a          	dc.w	L702
 662  0038 014a          	dc.w	L702
 663  003a 015c          	dc.w	L112
 664  003c 015c          	dc.w	L112
 665  003e 015c          	dc.w	L112
 666  0040 015c          	dc.w	L112
 667  0042 01c6          	dc.w	L362
 668  0044 01c6          	dc.w	L362
 669  0046 016e          	dc.w	L312
 670  0048 016e          	dc.w	L312
 671  004a 0180          	dc.w	L512
 672  004c 0180          	dc.w	L512
 673  004e 0180          	dc.w	L512
 674  0050 0180          	dc.w	L512
 675  0052 0192          	dc.w	L712
 676  0054 0192          	dc.w	L712
 677  0056 0192          	dc.w	L712
 678  0058 0192          	dc.w	L712
 679  005a 01c6          	dc.w	L362
 680  005c 01c6          	dc.w	L362
 681  005e 01a4          	dc.w	L122
 682  0060 01a4          	dc.w	L122
 683  0062 01b6          	dc.w	L322
 684                     ; 207 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 684                     ; 208 {
 685                     	switch	.text
 686  00b9               _ITC_SetSoftwarePriority:
 688  00b9 89            	pushw	x
 689  00ba 89            	pushw	x
 690       00000002      OFST:	set	2
 693                     ; 210     uint8_t Mask = 0;
 695                     ; 211     uint8_t NewPriority = 0;
 697                     ; 214     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 699  00bb 9e            	ld	a,xh
 700  00bc a119          	cp	a,#25
 701  00be 2403          	jruge	L63
 702  00c0 4f            	clr	a
 703  00c1 2010          	jra	L04
 704  00c3               L63:
 705  00c3 ae00d6        	ldw	x,#214
 706  00c6 89            	pushw	x
 707  00c7 ae0000        	ldw	x,#0
 708  00ca 89            	pushw	x
 709  00cb ae0064        	ldw	x,#L102
 710  00ce cd0000        	call	_assert_failed
 712  00d1 5b04          	addw	sp,#4
 713  00d3               L04:
 714                     ; 215     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 716  00d3 7b04          	ld	a,(OFST+2,sp)
 717  00d5 a102          	cp	a,#2
 718  00d7 2710          	jreq	L44
 719  00d9 7b04          	ld	a,(OFST+2,sp)
 720  00db a101          	cp	a,#1
 721  00dd 270a          	jreq	L44
 722  00df 0d04          	tnz	(OFST+2,sp)
 723  00e1 2706          	jreq	L44
 724  00e3 7b04          	ld	a,(OFST+2,sp)
 725  00e5 a103          	cp	a,#3
 726  00e7 2603          	jrne	L24
 727  00e9               L44:
 728  00e9 4f            	clr	a
 729  00ea 2010          	jra	L64
 730  00ec               L24:
 731  00ec ae00d7        	ldw	x,#215
 732  00ef 89            	pushw	x
 733  00f0 ae0000        	ldw	x,#0
 734  00f3 89            	pushw	x
 735  00f4 ae0064        	ldw	x,#L102
 736  00f7 cd0000        	call	_assert_failed
 738  00fa 5b04          	addw	sp,#4
 739  00fc               L64:
 740                     ; 218     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 742  00fc cd0024        	call	_ITC_GetSoftIntStatus
 744  00ff a128          	cp	a,#40
 745  0101 2603          	jrne	L05
 746  0103 4f            	clr	a
 747  0104 2010          	jra	L25
 748  0106               L05:
 749  0106 ae00da        	ldw	x,#218
 750  0109 89            	pushw	x
 751  010a ae0000        	ldw	x,#0
 752  010d 89            	pushw	x
 753  010e ae0064        	ldw	x,#L102
 754  0111 cd0000        	call	_assert_failed
 756  0114 5b04          	addw	sp,#4
 757  0116               L25:
 758                     ; 222     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 760  0116 7b03          	ld	a,(OFST+1,sp)
 761  0118 a403          	and	a,#3
 762  011a 48            	sll	a
 763  011b 5f            	clrw	x
 764  011c 97            	ld	xl,a
 765  011d a603          	ld	a,#3
 766  011f 5d            	tnzw	x
 767  0120 2704          	jreq	L45
 768  0122               L65:
 769  0122 48            	sll	a
 770  0123 5a            	decw	x
 771  0124 26fc          	jrne	L65
 772  0126               L45:
 773  0126 43            	cpl	a
 774  0127 6b01          	ld	(OFST-1,sp),a
 776                     ; 225     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 778  0129 7b03          	ld	a,(OFST+1,sp)
 779  012b a403          	and	a,#3
 780  012d 48            	sll	a
 781  012e 5f            	clrw	x
 782  012f 97            	ld	xl,a
 783  0130 7b04          	ld	a,(OFST+2,sp)
 784  0132 5d            	tnzw	x
 785  0133 2704          	jreq	L06
 786  0135               L26:
 787  0135 48            	sll	a
 788  0136 5a            	decw	x
 789  0137 26fc          	jrne	L26
 790  0139               L06:
 791  0139 6b02          	ld	(OFST+0,sp),a
 793                     ; 227     switch (IrqNum)
 795  013b 7b03          	ld	a,(OFST+1,sp)
 797                     ; 311     default:
 797                     ; 312         break;
 798  013d a119          	cp	a,#25
 799  013f 2407          	jruge	L46
 800  0141 5f            	clrw	x
 801  0142 97            	ld	xl,a
 802  0143 58            	sllw	x
 803  0144 de0032        	ldw	x,(L66,x)
 804  0147 fc            	jp	(x)
 805  0148               L46:
 806  0148 207c          	jra	L362
 807  014a               L702:
 808                     ; 230     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 808                     ; 231     case ITC_IRQ_AWU:
 808                     ; 232     case ITC_IRQ_CLK:
 808                     ; 233     case ITC_IRQ_PORTA:
 808                     ; 234         ITC->ISPR1 &= Mask;
 810  014a c67f70        	ld	a,32624
 811  014d 1401          	and	a,(OFST-1,sp)
 812  014f c77f70        	ld	32624,a
 813                     ; 235         ITC->ISPR1 |= NewPriority;
 815  0152 c67f70        	ld	a,32624
 816  0155 1a02          	or	a,(OFST+0,sp)
 817  0157 c77f70        	ld	32624,a
 818                     ; 236         break;
 820  015a 206a          	jra	L362
 821  015c               L112:
 822                     ; 238     case ITC_IRQ_PORTB:
 822                     ; 239     case ITC_IRQ_PORTC:
 822                     ; 240     case ITC_IRQ_PORTD:
 822                     ; 241     case ITC_IRQ_PORTE:
 822                     ; 242         ITC->ISPR2 &= Mask;
 824  015c c67f71        	ld	a,32625
 825  015f 1401          	and	a,(OFST-1,sp)
 826  0161 c77f71        	ld	32625,a
 827                     ; 243         ITC->ISPR2 |= NewPriority;
 829  0164 c67f71        	ld	a,32625
 830  0167 1a02          	or	a,(OFST+0,sp)
 831  0169 c77f71        	ld	32625,a
 832                     ; 244         break;
 834  016c 2058          	jra	L362
 835  016e               L312:
 836                     ; 254     case ITC_IRQ_SPI:
 836                     ; 255     case ITC_IRQ_TIM1_OVF:
 836                     ; 256         ITC->ISPR3 &= Mask;
 838  016e c67f72        	ld	a,32626
 839  0171 1401          	and	a,(OFST-1,sp)
 840  0173 c77f72        	ld	32626,a
 841                     ; 257         ITC->ISPR3 |= NewPriority;
 843  0176 c67f72        	ld	a,32626
 844  0179 1a02          	or	a,(OFST+0,sp)
 845  017b c77f72        	ld	32626,a
 846                     ; 258         break;
 848  017e 2046          	jra	L362
 849  0180               L512:
 850                     ; 260     case ITC_IRQ_TIM1_CAPCOM:
 850                     ; 261 #ifdef STM8S903
 850                     ; 262     case ITC_IRQ_TIM5_OVFTRI:
 850                     ; 263     case ITC_IRQ_TIM5_CAPCOM:
 850                     ; 264 #else
 850                     ; 265     case ITC_IRQ_TIM2_OVF:
 850                     ; 266     case ITC_IRQ_TIM2_CAPCOM:
 850                     ; 267 #endif /*STM8S903*/
 850                     ; 268 
 850                     ; 269     case ITC_IRQ_TIM3_OVF:
 850                     ; 270         ITC->ISPR4 &= Mask;
 852  0180 c67f73        	ld	a,32627
 853  0183 1401          	and	a,(OFST-1,sp)
 854  0185 c77f73        	ld	32627,a
 855                     ; 271         ITC->ISPR4 |= NewPriority;
 857  0188 c67f73        	ld	a,32627
 858  018b 1a02          	or	a,(OFST+0,sp)
 859  018d c77f73        	ld	32627,a
 860                     ; 272         break;
 862  0190 2034          	jra	L362
 863  0192               L712:
 864                     ; 274     case ITC_IRQ_TIM3_CAPCOM:
 864                     ; 275     case ITC_IRQ_UART1_TX:
 864                     ; 276     case ITC_IRQ_UART1_RX:
 864                     ; 277     case ITC_IRQ_I2C:
 864                     ; 278         ITC->ISPR5 &= Mask;
 866  0192 c67f74        	ld	a,32628
 867  0195 1401          	and	a,(OFST-1,sp)
 868  0197 c77f74        	ld	32628,a
 869                     ; 279         ITC->ISPR5 |= NewPriority;
 871  019a c67f74        	ld	a,32628
 872  019d 1a02          	or	a,(OFST+0,sp)
 873  019f c77f74        	ld	32628,a
 874                     ; 280         break;
 876  01a2 2022          	jra	L362
 877  01a4               L122:
 878                     ; 294     case ITC_IRQ_ADC1:
 878                     ; 295 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 878                     ; 296 
 878                     ; 297 #ifdef STM8S903
 878                     ; 298     case ITC_IRQ_TIM6_OVFTRI:
 878                     ; 299 #else
 878                     ; 300     case ITC_IRQ_TIM4_OVF:
 878                     ; 301 #endif /*STM8S903*/
 878                     ; 302         ITC->ISPR6 &= Mask;
 880  01a4 c67f75        	ld	a,32629
 881  01a7 1401          	and	a,(OFST-1,sp)
 882  01a9 c77f75        	ld	32629,a
 883                     ; 303         ITC->ISPR6 |= NewPriority;
 885  01ac c67f75        	ld	a,32629
 886  01af 1a02          	or	a,(OFST+0,sp)
 887  01b1 c77f75        	ld	32629,a
 888                     ; 304         break;
 890  01b4 2010          	jra	L362
 891  01b6               L322:
 892                     ; 306     case ITC_IRQ_EEPROM_EEC:
 892                     ; 307         ITC->ISPR7 &= Mask;
 894  01b6 c67f76        	ld	a,32630
 895  01b9 1401          	and	a,(OFST-1,sp)
 896  01bb c77f76        	ld	32630,a
 897                     ; 308         ITC->ISPR7 |= NewPriority;
 899  01be c67f76        	ld	a,32630
 900  01c1 1a02          	or	a,(OFST+0,sp)
 901  01c3 c77f76        	ld	32630,a
 902                     ; 309         break;
 904  01c6               L522:
 905                     ; 311     default:
 905                     ; 312         break;
 907  01c6               L362:
 908                     ; 316 }
 911  01c6 5b04          	addw	sp,#4
 912  01c8 81            	ret
 925                     	xdef	_ITC_GetSoftwarePriority
 926                     	xdef	_ITC_SetSoftwarePriority
 927                     	xdef	_ITC_GetSoftIntStatus
 928                     	xdef	_ITC_DeInit
 929                     	xdef	_ITC_GetCPUCC
 930                     	xref	_assert_failed
 931                     	switch	.const
 932  0064               L102:
 933  0064 7374645f6c69  	dc.b	"std_lib\src\stm8s_"
 934  0076 6974632e6300  	dc.b	"itc.c",0
 954                     	end
