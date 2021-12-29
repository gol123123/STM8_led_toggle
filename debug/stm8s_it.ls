   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.5 - 16 Jun 2021
   3                     ; Generator (Limited) V4.5.3 - 16 Jun 2021
  43                     ; 47 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  43                     ; 48 {
  44                     	switch	.text
  45  0000               f_NonHandledInterrupt:
  49                     ; 52 }
  52  0000 80            	iret
  74                     ; 60 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  74                     ; 61 {
  75                     	switch	.text
  76  0001               f_TRAP_IRQHandler:
  80                     ; 65 }
  83  0001 80            	iret
 105                     ; 71 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
 105                     ; 72 
 105                     ; 73 {
 106                     	switch	.text
 107  0002               f_TLI_IRQHandler:
 111                     ; 77 }
 114  0002 80            	iret
 136                     ; 84 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 136                     ; 85 {
 137                     	switch	.text
 138  0003               f_AWU_IRQHandler:
 142                     ; 89 }
 145  0003 80            	iret
 167                     ; 96 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 167                     ; 97 {
 168                     	switch	.text
 169  0004               f_CLK_IRQHandler:
 173                     ; 101 }
 176  0004 80            	iret
 199                     ; 108 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 199                     ; 109 {
 200                     	switch	.text
 201  0005               f_EXTI_PORTA_IRQHandler:
 205                     ; 113 }
 208  0005 80            	iret
 231                     ; 120 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 231                     ; 121 {
 232                     	switch	.text
 233  0006               f_EXTI_PORTB_IRQHandler:
 237                     ; 125 }
 240  0006 80            	iret
 263                     ; 132 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 263                     ; 133 {
 264                     	switch	.text
 265  0007               f_EXTI_PORTC_IRQHandler:
 269                     ; 137 }
 272  0007 80            	iret
 295                     ; 144 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 295                     ; 145 {
 296                     	switch	.text
 297  0008               f_EXTI_PORTD_IRQHandler:
 301                     ; 149 }
 304  0008 80            	iret
 327                     ; 156 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 327                     ; 157 {
 328                     	switch	.text
 329  0009               f_EXTI_PORTE_IRQHandler:
 333                     ; 161 }
 336  0009 80            	iret
 358                     ; 207 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 358                     ; 208 {
 359                     	switch	.text
 360  000a               f_SPI_IRQHandler:
 364                     ; 212 }
 367  000a 80            	iret
 390                     ; 219 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 390                     ; 220 {
 391                     	switch	.text
 392  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 396                     ; 224 }
 399  000b 80            	iret
 422                     ; 231 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 422                     ; 232 {
 423                     	switch	.text
 424  000c               f_TIM1_CAP_COM_IRQHandler:
 428                     ; 236 }
 431  000c 80            	iret
 454                     ; 268  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 454                     ; 269  {
 455                     	switch	.text
 456  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 460                     ; 273  }
 463  000d 80            	iret
 486                     ; 280  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 486                     ; 281  {
 487                     	switch	.text
 488  000e               f_TIM2_CAP_COM_IRQHandler:
 492                     ; 285  }
 495  000e 80            	iret
 518                     ; 322  INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
 518                     ; 323  {
 519                     	switch	.text
 520  000f               f_UART1_TX_IRQHandler:
 524                     ; 327  }
 527  000f 80            	iret
 550                     ; 334  INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
 550                     ; 335  {
 551                     	switch	.text
 552  0010               f_UART1_RX_IRQHandler:
 556                     ; 339  }
 559  0010 80            	iret
 581                     ; 347 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 581                     ; 348 {
 582                     	switch	.text
 583  0011               f_I2C_IRQHandler:
 587                     ; 352 }
 590  0011 80            	iret
 612                     ; 426  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 612                     ; 427  {
 613                     	switch	.text
 614  0012               f_ADC1_IRQHandler:
 618                     ; 431  }
 621  0012 80            	iret
 644                     ; 452  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 644                     ; 453  {
 645                     	switch	.text
 646  0013               f_TIM4_UPD_OVF_IRQHandler:
 650                     ; 457  }
 653  0013 80            	iret
 676                     ; 465 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 676                     ; 466 {
 677                     	switch	.text
 678  0014               f_EEPROM_EEC_IRQHandler:
 682                     ; 470 }
 685  0014 80            	iret
 697                     	xdef	f_EEPROM_EEC_IRQHandler
 698                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 699                     	xdef	f_ADC1_IRQHandler
 700                     	xdef	f_I2C_IRQHandler
 701                     	xdef	f_UART1_RX_IRQHandler
 702                     	xdef	f_UART1_TX_IRQHandler
 703                     	xdef	f_TIM2_CAP_COM_IRQHandler
 704                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 705                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 706                     	xdef	f_TIM1_CAP_COM_IRQHandler
 707                     	xdef	f_SPI_IRQHandler
 708                     	xdef	f_EXTI_PORTE_IRQHandler
 709                     	xdef	f_EXTI_PORTD_IRQHandler
 710                     	xdef	f_EXTI_PORTC_IRQHandler
 711                     	xdef	f_EXTI_PORTB_IRQHandler
 712                     	xdef	f_EXTI_PORTA_IRQHandler
 713                     	xdef	f_CLK_IRQHandler
 714                     	xdef	f_AWU_IRQHandler
 715                     	xdef	f_TLI_IRQHandler
 716                     	xdef	f_TRAP_IRQHandler
 717                     	xdef	f_NonHandledInterrupt
 736                     	end
