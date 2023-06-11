
#include <mcs51/8051.h>

void main(void)
{

    // Insert code
    P3_2 = 0x00;
    while(1)
        {
                P2_7 = P3_2;
        }

}
