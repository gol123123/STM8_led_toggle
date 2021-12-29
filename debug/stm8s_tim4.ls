   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.5 - 16 Jun 2021
   3                     ; Generator (Limited) V4.5.3 - 16 Jun 2021
  42                     ; 43 void TIM4_DeInit(void)
  42                     ; 44 {
  44                     	switch	.text
  45  0000               _TIM4_DeInit:
  49                     ; 45     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  51  0000 725f5340      	clr	21312
  52                     ; 46     TIM4->IER = TIM4_IER_RESET_VALUE;
  54  0004 725f5343      	clr	21315
  55                     ; 47     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  57  0008 725f5346      	clr	21318
  58                     ; 48     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  60  000c 725f5347      	clr	21319
  61                     ; 49     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  63  0010 35ff5348      	mov	21320,#255
  64                     ; 50     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  66  0014 725f5344      	clr	21316
  67                     ; 51 }
  70  0018 81            	ret
 177                     ; 59 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 177                     ; 60 {
 178                     	switch	.text
 179  0019               _TIM4_TimeBaseInit:
 181  0019 89            	pushw	x
 182       00000000      OFST:	set	0
 185                     ; 62     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 187  001a 9e            	ld	a,xh
 188  001b 4d            	tnz	a
 189  001c 2723          	jreq	L21
 190  001e 9e            	ld	a,xh
 191  001f a101          	cp	a,#1
 192  0021 271e          	jreq	L21
 193  0023 9e            	ld	a,xh
 194  0024 a102          	cp	a,#2
 195  0026 2719          	jreq	L21
 196  0028 9e            	ld	a,xh
 197  0029 a103          	cp	a,#3
 198  002b 2714          	jreq	L21
 199  002d 9e            	ld	a,xh
 200  002e a104          	cp	a,#4
 201  0030 270f          	jreq	L21
 202  0032 9e            	ld	a,xh
 203  0033 a105          	cp	a,#5
 204  0035 270a          	jreq	L21
 205  0037 9e            	ld	a,xh
 206  0038 a106          	cp	a,#6
 207  003a 2705          	jreq	L21
 208  003c 9e            	ld	a,xh
 209  003d a107          	cp	a,#7
 210  003f 2603          	jrne	L01
 211  0041               L21:
 212  0041 4f            	clr	a
 213  0042 2010          	jra	L41
 214  0044               L01:
 215  0044 ae003e        	ldw	x,#62
 216  0047 89            	pushw	x
 217  0048 ae0000        	ldw	x,#0
 218  004b 89            	pushw	x
 219  004c ae0000        	ldw	x,#L76
 220  004f cd0000        	call	_assert_failed
 222  0052 5b04          	addw	sp,#4
 223  0054               L41:
 224                     ; 64     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 226  0054 7b01          	ld	a,(OFST+1,sp)
 227  0056 c75347        	ld	21319,a
 228                     ; 66     TIM4->ARR = (uint8_t)(TIM4_Period);
 230  0059 7b02          	ld	a,(OFST+2,sp)
 231  005b c75348        	ld	21320,a
 232                     ; 67 }
 235  005e 85            	popw	x
 236  005f 81            	ret
 292                     ; 77 void TIM4_Cmd(FunctionalState NewState)
 292                     ; 78 {
 293                     	switch	.text
 294  0060               _TIM4_Cmd:
 296  0060 88            	push	a
 297       00000000      OFST:	set	0
 300                     ; 80     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 302  0061 4d            	tnz	a
 303  0062 2704          	jreq	L22
 304  0064 a101          	cp	a,#1
 305  0066 2603          	jrne	L02
 306  0068               L22:
 307  0068 4f            	clr	a
 308  0069 2010          	jra	L42
 309  006b               L02:
 310  006b ae0050        	ldw	x,#80
 311  006e 89            	pushw	x
 312  006f ae0000        	ldw	x,#0
 313  0072 89            	pushw	x
 314  0073 ae0000        	ldw	x,#L76
 315  0076 cd0000        	call	_assert_failed
 317  0079 5b04          	addw	sp,#4
 318  007b               L42:
 319                     ; 83     if (NewState != DISABLE)
 321  007b 0d01          	tnz	(OFST+1,sp)
 322  007d 2706          	jreq	L711
 323                     ; 85         TIM4->CR1 |= TIM4_CR1_CEN;
 325  007f 72105340      	bset	21312,#0
 327  0083 2004          	jra	L121
 328  0085               L711:
 329                     ; 89         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 331  0085 72115340      	bres	21312,#0
 332  0089               L121:
 333                     ; 91 }
 336  0089 84            	pop	a
 337  008a 81            	ret
 396                     ; 103 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 396                     ; 104 {
 397                     	switch	.text
 398  008b               _TIM4_ITConfig:
 400  008b 89            	pushw	x
 401       00000000      OFST:	set	0
 404                     ; 106     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 406  008c 9e            	ld	a,xh
 407  008d a101          	cp	a,#1
 408  008f 2603          	jrne	L03
 409  0091 4f            	clr	a
 410  0092 2010          	jra	L23
 411  0094               L03:
 412  0094 ae006a        	ldw	x,#106
 413  0097 89            	pushw	x
 414  0098 ae0000        	ldw	x,#0
 415  009b 89            	pushw	x
 416  009c ae0000        	ldw	x,#L76
 417  009f cd0000        	call	_assert_failed
 419  00a2 5b04          	addw	sp,#4
 420  00a4               L23:
 421                     ; 107     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 423  00a4 0d02          	tnz	(OFST+2,sp)
 424  00a6 2706          	jreq	L63
 425  00a8 7b02          	ld	a,(OFST+2,sp)
 426  00aa a101          	cp	a,#1
 427  00ac 2603          	jrne	L43
 428  00ae               L63:
 429  00ae 4f            	clr	a
 430  00af 2010          	jra	L04
 431  00b1               L43:
 432  00b1 ae006b        	ldw	x,#107
 433  00b4 89            	pushw	x
 434  00b5 ae0000        	ldw	x,#0
 435  00b8 89            	pushw	x
 436  00b9 ae0000        	ldw	x,#L76
 437  00bc cd0000        	call	_assert_failed
 439  00bf 5b04          	addw	sp,#4
 440  00c1               L04:
 441                     ; 109     if (NewState != DISABLE)
 443  00c1 0d02          	tnz	(OFST+2,sp)
 444  00c3 270a          	jreq	L351
 445                     ; 112         TIM4->IER |= (uint8_t)TIM4_IT;
 447  00c5 c65343        	ld	a,21315
 448  00c8 1a01          	or	a,(OFST+1,sp)
 449  00ca c75343        	ld	21315,a
 451  00cd 2009          	jra	L551
 452  00cf               L351:
 453                     ; 117         TIM4->IER &= (uint8_t)(~TIM4_IT);
 455  00cf 7b01          	ld	a,(OFST+1,sp)
 456  00d1 43            	cpl	a
 457  00d2 c45343        	and	a,21315
 458  00d5 c75343        	ld	21315,a
 459  00d8               L551:
 460                     ; 119 }
 463  00d8 85            	popw	x
 464  00d9 81            	ret
 501                     ; 127 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 501                     ; 128 {
 502                     	switch	.text
 503  00da               _TIM4_UpdateDisableConfig:
 505  00da 88            	push	a
 506       00000000      OFST:	set	0
 509                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 511  00db 4d            	tnz	a
 512  00dc 2704          	jreq	L64
 513  00de a101          	cp	a,#1
 514  00e0 2603          	jrne	L44
 515  00e2               L64:
 516  00e2 4f            	clr	a
 517  00e3 2010          	jra	L05
 518  00e5               L44:
 519  00e5 ae0082        	ldw	x,#130
 520  00e8 89            	pushw	x
 521  00e9 ae0000        	ldw	x,#0
 522  00ec 89            	pushw	x
 523  00ed ae0000        	ldw	x,#L76
 524  00f0 cd0000        	call	_assert_failed
 526  00f3 5b04          	addw	sp,#4
 527  00f5               L05:
 528                     ; 133     if (NewState != DISABLE)
 530  00f5 0d01          	tnz	(OFST+1,sp)
 531  00f7 2706          	jreq	L571
 532                     ; 135         TIM4->CR1 |= TIM4_CR1_UDIS;
 534  00f9 72125340      	bset	21312,#1
 536  00fd 2004          	jra	L771
 537  00ff               L571:
 538                     ; 139         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 540  00ff 72135340      	bres	21312,#1
 541  0103               L771:
 542                     ; 141 }
 545  0103 84            	pop	a
 546  0104 81            	ret
 605                     ; 151 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 605                     ; 152 {
 606                     	switch	.text
 607  0105               _TIM4_UpdateRequestConfig:
 609  0105 88            	push	a
 610       00000000      OFST:	set	0
 613                     ; 154     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 615  0106 4d            	tnz	a
 616  0107 2704          	jreq	L65
 617  0109 a101          	cp	a,#1
 618  010b 2603          	jrne	L45
 619  010d               L65:
 620  010d 4f            	clr	a
 621  010e 2010          	jra	L06
 622  0110               L45:
 623  0110 ae009a        	ldw	x,#154
 624  0113 89            	pushw	x
 625  0114 ae0000        	ldw	x,#0
 626  0117 89            	pushw	x
 627  0118 ae0000        	ldw	x,#L76
 628  011b cd0000        	call	_assert_failed
 630  011e 5b04          	addw	sp,#4
 631  0120               L06:
 632                     ; 157     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 634  0120 0d01          	tnz	(OFST+1,sp)
 635  0122 2706          	jreq	L722
 636                     ; 159         TIM4->CR1 |= TIM4_CR1_URS;
 638  0124 72145340      	bset	21312,#2
 640  0128 2004          	jra	L132
 641  012a               L722:
 642                     ; 163         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 644  012a 72155340      	bres	21312,#2
 645  012e               L132:
 646                     ; 165 }
 649  012e 84            	pop	a
 650  012f 81            	ret
 708                     ; 175 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 708                     ; 176 {
 709                     	switch	.text
 710  0130               _TIM4_SelectOnePulseMode:
 712  0130 88            	push	a
 713       00000000      OFST:	set	0
 716                     ; 178     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 718  0131 a101          	cp	a,#1
 719  0133 2703          	jreq	L66
 720  0135 4d            	tnz	a
 721  0136 2603          	jrne	L46
 722  0138               L66:
 723  0138 4f            	clr	a
 724  0139 2010          	jra	L07
 725  013b               L46:
 726  013b ae00b2        	ldw	x,#178
 727  013e 89            	pushw	x
 728  013f ae0000        	ldw	x,#0
 729  0142 89            	pushw	x
 730  0143 ae0000        	ldw	x,#L76
 731  0146 cd0000        	call	_assert_failed
 733  0149 5b04          	addw	sp,#4
 734  014b               L07:
 735                     ; 181     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 737  014b 0d01          	tnz	(OFST+1,sp)
 738  014d 2706          	jreq	L162
 739                     ; 183         TIM4->CR1 |= TIM4_CR1_OPM;
 741  014f 72165340      	bset	21312,#3
 743  0153 2004          	jra	L362
 744  0155               L162:
 745                     ; 187         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 747  0155 72175340      	bres	21312,#3
 748  0159               L362:
 749                     ; 190 }
 752  0159 84            	pop	a
 753  015a 81            	ret
 822                     ; 212 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 822                     ; 213 {
 823                     	switch	.text
 824  015b               _TIM4_PrescalerConfig:
 826  015b 89            	pushw	x
 827       00000000      OFST:	set	0
 830                     ; 215     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 832  015c 9f            	ld	a,xl
 833  015d 4d            	tnz	a
 834  015e 2705          	jreq	L67
 835  0160 9f            	ld	a,xl
 836  0161 a101          	cp	a,#1
 837  0163 2603          	jrne	L47
 838  0165               L67:
 839  0165 4f            	clr	a
 840  0166 2010          	jra	L001
 841  0168               L47:
 842  0168 ae00d7        	ldw	x,#215
 843  016b 89            	pushw	x
 844  016c ae0000        	ldw	x,#0
 845  016f 89            	pushw	x
 846  0170 ae0000        	ldw	x,#L76
 847  0173 cd0000        	call	_assert_failed
 849  0176 5b04          	addw	sp,#4
 850  0178               L001:
 851                     ; 216     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 853  0178 0d01          	tnz	(OFST+1,sp)
 854  017a 272a          	jreq	L401
 855  017c 7b01          	ld	a,(OFST+1,sp)
 856  017e a101          	cp	a,#1
 857  0180 2724          	jreq	L401
 858  0182 7b01          	ld	a,(OFST+1,sp)
 859  0184 a102          	cp	a,#2
 860  0186 271e          	jreq	L401
 861  0188 7b01          	ld	a,(OFST+1,sp)
 862  018a a103          	cp	a,#3
 863  018c 2718          	jreq	L401
 864  018e 7b01          	ld	a,(OFST+1,sp)
 865  0190 a104          	cp	a,#4
 866  0192 2712          	jreq	L401
 867  0194 7b01          	ld	a,(OFST+1,sp)
 868  0196 a105          	cp	a,#5
 869  0198 270c          	jreq	L401
 870  019a 7b01          	ld	a,(OFST+1,sp)
 871  019c a106          	cp	a,#6
 872  019e 2706          	jreq	L401
 873  01a0 7b01          	ld	a,(OFST+1,sp)
 874  01a2 a107          	cp	a,#7
 875  01a4 2603          	jrne	L201
 876  01a6               L401:
 877  01a6 4f            	clr	a
 878  01a7 2010          	jra	L601
 879  01a9               L201:
 880  01a9 ae00d8        	ldw	x,#216
 881  01ac 89            	pushw	x
 882  01ad ae0000        	ldw	x,#0
 883  01b0 89            	pushw	x
 884  01b1 ae0000        	ldw	x,#L76
 885  01b4 cd0000        	call	_assert_failed
 887  01b7 5b04          	addw	sp,#4
 888  01b9               L601:
 889                     ; 219     TIM4->PSCR = (uint8_t)Prescaler;
 891  01b9 7b01          	ld	a,(OFST+1,sp)
 892  01bb c75347        	ld	21319,a
 893                     ; 222     TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 895  01be 7b02          	ld	a,(OFST+2,sp)
 896  01c0 c75345        	ld	21317,a
 897                     ; 223 }
 900  01c3 85            	popw	x
 901  01c4 81            	ret
 938                     ; 231 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 938                     ; 232 {
 939                     	switch	.text
 940  01c5               _TIM4_ARRPreloadConfig:
 942  01c5 88            	push	a
 943       00000000      OFST:	set	0
 946                     ; 234     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 948  01c6 4d            	tnz	a
 949  01c7 2704          	jreq	L411
 950  01c9 a101          	cp	a,#1
 951  01cb 2603          	jrne	L211
 952  01cd               L411:
 953  01cd 4f            	clr	a
 954  01ce 2010          	jra	L611
 955  01d0               L211:
 956  01d0 ae00ea        	ldw	x,#234
 957  01d3 89            	pushw	x
 958  01d4 ae0000        	ldw	x,#0
 959  01d7 89            	pushw	x
 960  01d8 ae0000        	ldw	x,#L76
 961  01db cd0000        	call	_assert_failed
 963  01de 5b04          	addw	sp,#4
 964  01e0               L611:
 965                     ; 237     if (NewState != DISABLE)
 967  01e0 0d01          	tnz	(OFST+1,sp)
 968  01e2 2706          	jreq	L533
 969                     ; 239         TIM4->CR1 |= TIM4_CR1_ARPE;
 971  01e4 721e5340      	bset	21312,#7
 973  01e8 2004          	jra	L733
 974  01ea               L533:
 975                     ; 243         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 977  01ea 721f5340      	bres	21312,#7
 978  01ee               L733:
 979                     ; 245 }
 982  01ee 84            	pop	a
 983  01ef 81            	ret
1033                     ; 254 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
1033                     ; 255 {
1034                     	switch	.text
1035  01f0               _TIM4_GenerateEvent:
1037  01f0 88            	push	a
1038       00000000      OFST:	set	0
1041                     ; 257     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
1043  01f1 a101          	cp	a,#1
1044  01f3 2603          	jrne	L221
1045  01f5 4f            	clr	a
1046  01f6 2010          	jra	L421
1047  01f8               L221:
1048  01f8 ae0101        	ldw	x,#257
1049  01fb 89            	pushw	x
1050  01fc ae0000        	ldw	x,#0
1051  01ff 89            	pushw	x
1052  0200 ae0000        	ldw	x,#L76
1053  0203 cd0000        	call	_assert_failed
1055  0206 5b04          	addw	sp,#4
1056  0208               L421:
1057                     ; 260     TIM4->EGR = (uint8_t)(TIM4_EventSource);
1059  0208 7b01          	ld	a,(OFST+1,sp)
1060  020a c75345        	ld	21317,a
1061                     ; 261 }
1064  020d 84            	pop	a
1065  020e 81            	ret
1099                     ; 270 void TIM4_SetCounter(uint8_t Counter)
1099                     ; 271 {
1100                     	switch	.text
1101  020f               _TIM4_SetCounter:
1105                     ; 273     TIM4->CNTR = (uint8_t)(Counter);
1107  020f c75346        	ld	21318,a
1108                     ; 274 }
1111  0212 81            	ret
1145                     ; 283 void TIM4_SetAutoreload(uint8_t Autoreload)
1145                     ; 284 {
1146                     	switch	.text
1147  0213               _TIM4_SetAutoreload:
1151                     ; 286     TIM4->ARR = (uint8_t)(Autoreload);
1153  0213 c75348        	ld	21320,a
1154                     ; 287 }
1157  0216 81            	ret
1180                     ; 294 uint8_t TIM4_GetCounter(void)
1180                     ; 295 {
1181                     	switch	.text
1182  0217               _TIM4_GetCounter:
1186                     ; 297     return (uint8_t)(TIM4->CNTR);
1188  0217 c65346        	ld	a,21318
1191  021a 81            	ret
1215                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1215                     ; 306 {
1216                     	switch	.text
1217  021b               _TIM4_GetPrescaler:
1221                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1223  021b c65347        	ld	a,21319
1226  021e 81            	ret
1306                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1306                     ; 319 {
1307                     	switch	.text
1308  021f               _TIM4_GetFlagStatus:
1310  021f 88            	push	a
1311  0220 88            	push	a
1312       00000001      OFST:	set	1
1315                     ; 320     FlagStatus bitstatus = RESET;
1317                     ; 323     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1319  0221 a101          	cp	a,#1
1320  0223 2603          	jrne	L041
1321  0225 4f            	clr	a
1322  0226 2010          	jra	L241
1323  0228               L041:
1324  0228 ae0143        	ldw	x,#323
1325  022b 89            	pushw	x
1326  022c ae0000        	ldw	x,#0
1327  022f 89            	pushw	x
1328  0230 ae0000        	ldw	x,#L76
1329  0233 cd0000        	call	_assert_failed
1331  0236 5b04          	addw	sp,#4
1332  0238               L241:
1333                     ; 325   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1335  0238 c65344        	ld	a,21316
1336  023b 1502          	bcp	a,(OFST+1,sp)
1337  023d 2706          	jreq	L105
1338                     ; 327     bitstatus = SET;
1340  023f a601          	ld	a,#1
1341  0241 6b01          	ld	(OFST+0,sp),a
1344  0243 2002          	jra	L305
1345  0245               L105:
1346                     ; 331     bitstatus = RESET;
1348  0245 0f01          	clr	(OFST+0,sp)
1350  0247               L305:
1351                     ; 333   return ((FlagStatus)bitstatus);
1353  0247 7b01          	ld	a,(OFST+0,sp)
1356  0249 85            	popw	x
1357  024a 81            	ret
1393                     ; 343 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1393                     ; 344 {
1394                     	switch	.text
1395  024b               _TIM4_ClearFlag:
1397  024b 88            	push	a
1398       00000000      OFST:	set	0
1401                     ; 346     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1403  024c a101          	cp	a,#1
1404  024e 2603          	jrne	L641
1405  0250 4f            	clr	a
1406  0251 2010          	jra	L051
1407  0253               L641:
1408  0253 ae015a        	ldw	x,#346
1409  0256 89            	pushw	x
1410  0257 ae0000        	ldw	x,#0
1411  025a 89            	pushw	x
1412  025b ae0000        	ldw	x,#L76
1413  025e cd0000        	call	_assert_failed
1415  0261 5b04          	addw	sp,#4
1416  0263               L051:
1417                     ; 349     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1419  0263 7b01          	ld	a,(OFST+1,sp)
1420  0265 43            	cpl	a
1421  0266 c75344        	ld	21316,a
1422                     ; 351 }
1425  0269 84            	pop	a
1426  026a 81            	ret
1491                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1491                     ; 361 {
1492                     	switch	.text
1493  026b               _TIM4_GetITStatus:
1495  026b 88            	push	a
1496  026c 89            	pushw	x
1497       00000002      OFST:	set	2
1500                     ; 362     ITStatus bitstatus = RESET;
1502                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1506                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1508  026d a101          	cp	a,#1
1509  026f 2603          	jrne	L451
1510  0271 4f            	clr	a
1511  0272 2010          	jra	L651
1512  0274               L451:
1513  0274 ae016f        	ldw	x,#367
1514  0277 89            	pushw	x
1515  0278 ae0000        	ldw	x,#0
1516  027b 89            	pushw	x
1517  027c ae0000        	ldw	x,#L76
1518  027f cd0000        	call	_assert_failed
1520  0282 5b04          	addw	sp,#4
1521  0284               L651:
1522                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1524  0284 c65344        	ld	a,21316
1525  0287 1403          	and	a,(OFST+1,sp)
1526  0289 6b01          	ld	(OFST-1,sp),a
1528                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1530  028b c65343        	ld	a,21315
1531  028e 1403          	and	a,(OFST+1,sp)
1532  0290 6b02          	ld	(OFST+0,sp),a
1534                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1536  0292 0d01          	tnz	(OFST-1,sp)
1537  0294 270a          	jreq	L555
1539  0296 0d02          	tnz	(OFST+0,sp)
1540  0298 2706          	jreq	L555
1541                     ; 375     bitstatus = (ITStatus)SET;
1543  029a a601          	ld	a,#1
1544  029c 6b02          	ld	(OFST+0,sp),a
1547  029e 2002          	jra	L755
1548  02a0               L555:
1549                     ; 379     bitstatus = (ITStatus)RESET;
1551  02a0 0f02          	clr	(OFST+0,sp)
1553  02a2               L755:
1554                     ; 381   return ((ITStatus)bitstatus);
1556  02a2 7b02          	ld	a,(OFST+0,sp)
1559  02a4 5b03          	addw	sp,#3
1560  02a6 81            	ret
1597                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1597                     ; 392 {
1598                     	switch	.text
1599  02a7               _TIM4_ClearITPendingBit:
1601  02a7 88            	push	a
1602       00000000      OFST:	set	0
1605                     ; 394     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1607  02a8 a101          	cp	a,#1
1608  02aa 2603          	jrne	L261
1609  02ac 4f            	clr	a
1610  02ad 2010          	jra	L461
1611  02af               L261:
1612  02af ae018a        	ldw	x,#394
1613  02b2 89            	pushw	x
1614  02b3 ae0000        	ldw	x,#0
1615  02b6 89            	pushw	x
1616  02b7 ae0000        	ldw	x,#L76
1617  02ba cd0000        	call	_assert_failed
1619  02bd 5b04          	addw	sp,#4
1620  02bf               L461:
1621                     ; 397     TIM4->SR1 = (uint8_t)(~TIM4_IT);
1623  02bf 7b01          	ld	a,(OFST+1,sp)
1624  02c1 43            	cpl	a
1625  02c2 c75344        	ld	21316,a
1626                     ; 398 }
1629  02c5 84            	pop	a
1630  02c6 81            	ret
1643                     	xdef	_TIM4_ClearITPendingBit
1644                     	xdef	_TIM4_GetITStatus
1645                     	xdef	_TIM4_ClearFlag
1646                     	xdef	_TIM4_GetFlagStatus
1647                     	xdef	_TIM4_GetPrescaler
1648                     	xdef	_TIM4_GetCounter
1649                     	xdef	_TIM4_SetAutoreload
1650                     	xdef	_TIM4_SetCounter
1651                     	xdef	_TIM4_GenerateEvent
1652                     	xdef	_TIM4_ARRPreloadConfig
1653                     	xdef	_TIM4_PrescalerConfig
1654                     	xdef	_TIM4_SelectOnePulseMode
1655                     	xdef	_TIM4_UpdateRequestConfig
1656                     	xdef	_TIM4_UpdateDisableConfig
1657                     	xdef	_TIM4_ITConfig
1658                     	xdef	_TIM4_Cmd
1659                     	xdef	_TIM4_TimeBaseInit
1660                     	xdef	_TIM4_DeInit
1661                     	xref	_assert_failed
1662                     .const:	section	.text
1663  0000               L76:
1664  0000 7374645f6c69  	dc.b	"std_lib\src\stm8s_"
1665  0012 74696d342e63  	dc.b	"tim4.c",0
1685                     	end
