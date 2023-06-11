
#include <mcs51/8051.h>



#define TH0_50ms        0x4C
#define TL0_50ms        0x00
#define LED_1           P2_0
#define LED7SEG_DATA    P0
#define LED7SEG_ADDR0   P2_2
#define LED7SEG_ADDR1   P2_3
#define LED7SEG_ADDR2   P2_4

int count;
int x;

unsigned char const mask[10]={0x3F, 0x06, 0x5B, 0x4F,
0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

void output_7seg(unsigned char value)
{
    if(value < 10)
    {
        P0=mask[value];
    }
}

void delay(int n){
    int i, j;
    for(i=0; i<60; i++)
        for(j=0; j<n; j++);
}

void output_7seg_off(){
}


//display 3 digits
void display_number(unsigned char iNum){
    unsigned char i;
    unsigned char temp;
    for(i=0; i<3; i++){
        temp = iNum % 10;
        iNum = iNum / 10;
        LED7SEG_ADDR0 = i & 0x01;
        LED7SEG_ADDR1 = i & 0x02;
        LED7SEG_ADDR2 = i & 0x04;
        output_7seg(temp);
        delay(2);
//        output_7seg_off();
    }
}



void init_counter(){
    P3_2 = 1; //3_2 input for interrupt 0
    EX0 = 1; //Cho phep ngat ngoai 0
    IT0 = 1; //Ngat theo suon
    EA = 1; //Global interrupt
    EX1 = 1;
    IT1 = 1;
}

void init_timer(){
    count = 0;
    LED7SEG_DATA = 0x00;



    TMOD = 0x01;    //timer 0 mode 1
    TH0 = TH0_50ms;
    TL0 = TL0_50ms;



    IE  = 0b10000010;
    TF0 = 0;
    TR0 = 1;
}


void EXT0_Process() __interrupt IE0_VECTOR
{
    EA=0; //Cam ngat
    count++;
    EA=1; //Cho phep ngat
}

void EXT1_Process() __interrupt IE1_VECTOR
{
    EA=0; //Cam ngat
    count--;
    EA=1; //Cho phep ngat
}
//7-seg display

void TIMER0_ISR() __interrupt TF0_VECTOR
{
    TH0 = TH0_50ms;
    TL0 = TL0_50ms;
    x++;
    if(x==20){
        count++;
        x=0;
    }
}

void main(){
    init_timer();
    while(1){
        display_number(count);
    }
}
