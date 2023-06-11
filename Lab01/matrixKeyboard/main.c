/*
 */

#include <mcs51/8051.h>

void keyscan()

{

    keypressed = 0;

    P1=0xfe;

    if(P1!=0xfe)

    {

        delay(1000);

        if(P1!=0xfe)

        {

  key=P1&0xf0;

  switch(key)

  {

        //find the key pressed here

  }

        }

        while(P1!=0xfe);

        //process key here if needed

        keypressed = 1;

    }



    //other keys

}


void main(void)
{

    // Insert code

    while(1)
        ;

}
