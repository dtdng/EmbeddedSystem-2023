
#include <mcs51/8052.h>


#define LED_PORT    P2


#define LED7SEG_DATA    P0
#define LED7SEG_ADDR0   P2_2
#define LED7SEG_ADDR1   P2_3
#define LED7SEG_ADDR2   P2_4
#define LED_1           P2_0
#define EX0_PIN         P3_2

void delay_ms(int n){
    int i, j;
    for(i=0; i<60;i++)
        for(j=0; j<n; j++);
}

void main(void){
    IT0 = 1; //khoi dong ngat ngoai (falling egde interrupt)
    EX0 = 1; // bit ngat ngoai so 0  (enable EX0 intr)
    EA = 1;  // bit cho phep ngat tong (enable global intr)
    EX0_PIN = 1;  //    (set intr pin to input)

    while(1);
}

void ISR0() __interrupt IE0_VECTOR
{
    LED_1 = !LED_1;
}
