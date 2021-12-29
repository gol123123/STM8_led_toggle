/*
 *	File:	main.c
 *	Date:	24.04.2011
 *	Denis Zheleznjakov @ ZiBlog.ru
 */
 
#include "main.h"

//-----------------------------------------------------------------------------
void delay_ms(uint16_t time)
{
	volatile uint32_t i;

	while (time-- > 0)
	{
		i = 30;
		while (i-- > 0)
		{
		}
	}
}

//------------------------------------------------------------------------------
int main(void)
{
	PIN_CONFIGURATION(LED_GREEN);
	
	while (1)
	{
		PIN_ON(LED_GREEN);
		delay_ms(100);
		PIN_OFF(LED_GREEN);
		delay_ms(100);
	}

	return 0;
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, u32 line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
