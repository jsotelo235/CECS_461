/*
 * midterm_1.c
 *
 *  Created on: Feb 14, 2019
 *      Author: Jose Sotelo
 */

#include "xparameters.h"
#include "xgpio.h"

#define SWITCH_1 0x01
#define SWITCH_2 0x02
#define SWITCH_3 0x04
#define SWITCH_4 0x08
#define DELAY	 10000000

int main (void)
{

    XGpio dip, push, led;
	u32 psb_check, dip_check, led_check, led_mask;

    xil_printf("-- Start of the Program --\r\n");

    XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID);
	XGpio_SetDataDirection(&dip, 1, 0xffffffff);		// set as input

	XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID);
	XGpio_SetDataDirection(&push, 1, 0xffffffff);		// set as input

	XGpio_Initialize(&led, XPAR_LEDS_DEVICE_ID);
	XGpio_SetDataDirection(&led, 1, 0x00000000);		// set as output

	while (1)
	{
		// Push Button
		psb_check = XGpio_DiscreteRead(&push, 1);

		switch(psb_check)
		{
			case SWITCH_1:
					led_mask = 0x01;
					led_check = XGpio_DiscreteRead(&led, 1);

					XGpio_DiscreteWrite(&led, 1, led_mask);
					for (int i = 0; i < DELAY; i++);
					XGpio_DiscreteWrite(&led, 1, led_mask ^= led_mask);

					xil_printf("Push Button 1 Status %x\r\n", psb_check);
					xil_printf("LEDs Status 1 %x\r\n", led_check);
				break;
			case SWITCH_2:
					led_mask = 0x02;
					led_check = XGpio_DiscreteRead(&led, 1);

					XGpio_DiscreteWrite(&led, 1, led_mask);
					for (int i = 0; i < DELAY; i++);
					XGpio_DiscreteWrite(&led, 1, led_mask ^= led_mask);

					xil_printf("Push Button 2 Status %x\r\n", psb_check);
					xil_printf("LEDs Status 2 %x\r\n", led_check);
				break;
			case SWITCH_3:
					led_mask = 0x04;
					led_check = XGpio_DiscreteRead(&led, 1);

					XGpio_DiscreteWrite(&led, 1, led_mask);
					for (int i = 0; i < DELAY; i++);
					XGpio_DiscreteWrite(&led, 1, led_mask ^= led_mask);

					xil_printf("Push Button 3 Status %x\r\n", psb_check);
					xil_printf("LEDs Status 3 %x\r\n", led_check);
				break;
			case SWITCH_4:
					led_mask = 0x08;
					led_check = XGpio_DiscreteRead(&led, 1);

					XGpio_DiscreteWrite(&led, 1, led_mask);
					for (int i = 0; i < DELAY; i++);
					XGpio_DiscreteWrite(&led, 1, led_mask ^= led_mask);

					xil_printf("Push Button 4 Status %x\r\n", psb_check);
					xil_printf("LEDs Status 4 %x\r\n", led_check);
				break;
			default:
				led_mask = 0x00;
		}

		// DIP Switches
		dip_check = XGpio_DiscreteRead(&dip, 1);

		XGpio_DiscreteWrite(&led, 1, dip_check);
		xil_printf("DIP Switch Status %x\r\n", dip_check);
		xil_printf("LEDs Status %x\r\n", led_check);

		sleep(1);
	}
}
