/*
 * system.c
 *
 *  Created on: Mar 10, 2019
 *      Author: Jose
 */
#include "xparameters.h"
#include "xgpio.h"
#include <stdio.h>
#include <unistd.h>

int main(void)
{

	XGpio dip, push;
	int psb_check, dip_check;


	xil_printf("\t-- Start of the Program --\r\n");

	// Initialize the XGpio instance provided by the caller based on the given DeviceID.
	XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID);
	XGpio_Initialize(&push,XPAR_BUTTONS_DEVICE_ID);


	// Set the direction for all signals to be outputs
	XGpio_SetDataDirection(&dip,  1 , 0xffffffff);
	XGpio_SetDataDirection(&push, 1 , 0xffffffff);

	while(1)
	{
		// Read the state of the Push Buttons
		psb_check = XGpio_DiscreteRead(&push,1);
		xil_printf("Push Buttons Status %x\r\n", psb_check);

		// Read the state of the Dip Switch
		dip_check = XGpio_DiscreteRead(&dip,1);
		xil_printf("Dip Switch Status %x\r\n", dip_check);
		sleep(1);
	}
}

