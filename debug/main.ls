   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.5 - 16 Jun 2021
   3                     ; Generator (Limited) V4.5.3 - 16 Jun 2021
  62                     ; 10 void delay_ms(uint16_t time)
  62                     ; 11 {
  64                     	switch	.text
  65  0000               _delay_ms:
  67  0000 89            	pushw	x
  68  0001 5204          	subw	sp,#4
  69       00000004      OFST:	set	4
  72  0003 201f          	jra	L53
  73  0005               L33:
  74                     ; 16 		i = 30;
  76  0005 ae001e        	ldw	x,#30
  77  0008 1f03          	ldw	(OFST-1,sp),x
  78  000a ae0000        	ldw	x,#0
  79  000d 1f01          	ldw	(OFST-3,sp),x
  82  000f               L54:
  83                     ; 17 		while (i-- > 0)
  85  000f 96            	ldw	x,sp
  86  0010 1c0001        	addw	x,#OFST-3
  87  0013 cd0000        	call	c_ltor
  89  0016 96            	ldw	x,sp
  90  0017 1c0001        	addw	x,#OFST-3
  91  001a a601          	ld	a,#1
  92  001c cd0000        	call	c_lgsbc
  95  001f cd0000        	call	c_lrzmp
  97  0022 26eb          	jrne	L54
  98  0024               L53:
  99                     ; 14 	while (time-- > 0)
 101  0024 1e05          	ldw	x,(OFST+1,sp)
 102  0026 1d0001        	subw	x,#1
 103  0029 1f05          	ldw	(OFST+1,sp),x
 104  002b 1c0001        	addw	x,#1
 105  002e a30000        	cpw	x,#0
 106  0031 26d2          	jrne	L33
 107                     ; 21 }
 110  0033 5b06          	addw	sp,#6
 111  0035 81            	ret
 135                     ; 24 int main(void)
 135                     ; 25 {
 136                     	switch	.text
 137  0036               _main:
 141                     ; 26 	PIN_CONFIGURATION(LED_GREEN);
 143  0036 72165011      	bset	20497,#3
 146  003a 72165012      	bset	20498,#3
 149  003e 72165013      	bset	20499,#3
 150  0042               L16:
 151                     ; 30 		PIN_ON(LED_GREEN);
 153  0042 7217500f      	bres	20495,#3
 154                     ; 31 		delay_ms(100);
 157  0046 ae0064        	ldw	x,#100
 158  0049 adb5          	call	_delay_ms
 160                     ; 32 		PIN_OFF(LED_GREEN);
 162  004b 7216500f      	bset	20495,#3
 163                     ; 33 		delay_ms(100);
 166  004f ae0064        	ldw	x,#100
 167  0052 adac          	call	_delay_ms
 170  0054 20ec          	jra	L16
 205                     ; 48 void assert_failed(u8* file, u32 line)
 205                     ; 49 { 
 206                     	switch	.text
 207  0056               _assert_failed:
 211  0056               L301:
 212  0056 20fe          	jra	L301
 225                     	xdef	_main
 226                     	xdef	_delay_ms
 227                     	xdef	_assert_failed
 246                     	xref	c_lrzmp
 247                     	xref	c_lgsbc
 248                     	xref	c_ltor
 249                     	end
