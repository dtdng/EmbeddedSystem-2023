#ifndef __DS18B20_H
#define __DS18B20_H

void Init_DS18B20();										// Ham khoi tao DS18B20
unsigned char ReadByteFromScratchpad(void);					// Ham doc 1 byte tu DS18b20 ra ngoai
void WriteByteToScratchpad(unsigned char Data);		        // Ham viet 1 byte vao DS18b20
unsigned char ReadTemperature(void);

#endif
// ------------------END OF FILE--------------------
// -------------------------------------------------
