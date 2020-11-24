#include <msp430.h> 
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	//
	P1DIR = BIT0+BIT6;
	while(1)
	{
	    P1OUT=BIT0;
	    P1OUT&=~BIT6;
	    _delay_cycles(500000);
	    P1OUT=BIT6;
	    P1OUT&=~BIT0;
	    _delay_cycles(500000);
	}