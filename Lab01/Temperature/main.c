#include <mcs51/8052.h>
#include "string.h"
#include "ds18b20.h"
#include "stdio.h"

//Định nghĩa các chân điều khiển LCD
#define MOTOR           P1_0
#define TH0_5ms         0xEE
#define TL0_5ms         0x00

#define LCD_DATA    P0
#define LCD_EN      P2_7
#define LCD_RS      P2_6
#define LCD_RW      P2_5
//Khai bao prototype
void Init_System();
void Delay_ms(int interval);
void LCD_init();
void Wait_For_LCD();
void LCD_Send_Command(unsigned char x);
void LCD_Write_One_Char(unsigned char c);
void LCD_Write_String(unsigned char *s);
void main()
{
    //int i;
    Init_System();
    LCD_init();
    unsigned char temp = ReadTemperature();
    char temperature[16];
    MOTOR = 0;
    sprintf(temperature, "Temperature: %d", temp);
    LCD_Write_String(temperature);
    while(1){
        LCD_init();
        temp = ReadTemperature();
        sprintf(temperature, "Temperature: %d", temp);
        LCD_Write_String(temperature);
        Delay_ms(150);
    }
}
void Init_System()
{
    //Thiet lap LCD o che do doc
    LCD_RW=1;
}
void Delay_ms(int interval)
{
    int i,j;
    for(i=0;i<1000;i++)
    {
        for(j=0;j<interval;j++);
    }
}
void Delay_us(int interval)
{
    int j;
    for(j=0;j<interval;j++);
}
//Ham gui mot lenh xuong LCD
void LCD_Send_Command(unsigned char x)
{
    LCD_DATA=x;
    LCD_RS=0; //Chon thanh ghi lenh
    LCD_RW=0; //De ghi du lieu
    LCD_EN=1;
    Delay_us(100);
    LCD_EN=0;
    Wait_For_LCD(); //Doi cho LCD san sang
    LCD_EN=1;
}
//Ham kiem tra va cho den khi LCD san sang
void Wait_For_LCD()
{
    Delay_us(100);
}
void LCD_init()
{
    LCD_Send_Command(0x38); //Chon che do 8 bit, 2 hang cho LCD
    LCD_Send_Command(0x0E); //Bat hien thi, nhap nhay con tro
    LCD_Send_Command(0x01); //Xoa man hinh
    LCD_Send_Command(0x80); //Ve dau dong



}
//Ham de LCD hien thi mot ky tu
void LCD_Write_One_Char(unsigned char c)
{
    LCD_DATA=c; //Dua du lieu vao thanh ghi
    LCD_RS=1; //Chon thanh ghi du lieu
    LCD_RW=0;
    LCD_EN=1;
    Delay_us(10);
    LCD_EN=0;
    Wait_For_LCD();
    LCD_EN=1;
}
//Ham de LCD hien thi mot xau
void LCD_Write_String(unsigned char *s)
{
    unsigned char length;
    length=strlen(s); //Lay do dai xau
    while(length!=0)
    {
        LCD_Write_One_Char(*s); //Ghi ra LCD gia tri duoc tro boi con tro
        s++; //Tang con tro
        length--;
    }
}
