/*
 * File: main.h
 * Date: 28.01.2011
 * Denis Zheleznjakov @ ZiBlog.ru
 */

#ifndef MAIN_H_
#define MAIN_H_

#include "stm8s.h"

#include "macros.h"

#include "mcu_gpio.h"

#define LED_GREEN		D, 3, LOW, OUTPUT_PUSH_PULL_SPEED_LIMIT_10MHZ

extern void delay_ms(uint16_t time);

#endif /* MAIN_H_ */
