// Include the libraries we need

#include <OneWire.h>
#include <DallasTemperature.h>
#include "RTClib.h"
#include "EEPROM.h"
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128 // OLED display width, in pixels
#define SCREEN_HEIGHT 64 // OLED display height, in pixels
#define SCREEN_ADDRESS 0x3C ///< See datasheet for Address; 0x3D for 128x64, 0x3C for 128x32
#define OLED_RESET     -1 // Reset pin # (or -1 if sharing Arduino reset pin)
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

// Data wire is plugged into port 2 on the Arduino

#define ONE_WIRE_BUS D6

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)

OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature.

DallasTemperature sensors(&oneWire);

RTC_DS1307 rtc;

/*

 * The setup function. We only start the sensors here

 */

void setup(void)

{

  // start serial port

  Serial.begin(9600);
  EEPROM.begin(512);
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }
  Serial.println("Dallas Temperature IC Control Library Demo");
  // Start up the library

  #ifndef ESP8266
  while (!Serial); // wait for serial port to connect. Needed for native USB

#endif

  if (! rtc.begin()) {
    Serial.println("Couldn't find RTC");\
    Serial.flush();
    while (1) delay(10);
  }

  if (! rtc.isrunning()) {
    Serial.println("RTC is NOT running, let's set the time!");
    // When time needs to be set on a new device, or after a power loss, the
    // following line sets the RTC to the date & time this sketch was compiled
    rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
    // This line sets the RTC with an explicit date & time, for example to set
    // January 21, 2014 at 3am you would call:
    // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  }

  // When time needs to be re-set on a previously configured device, the
  // following line sets the RTC to the date & time this sketch was compiled
  // rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  // This line sets the RTC with an explicit date & time, for example to set
  // January 21, 2014 at 3am you would call:
  // rtc.adjust(DateTime(2014, 1, 21, 3, 0, 0));
  rtc.adjust(DateTime(F(__DATE__), F(__TIME__)));
  sensors.begin();
  display.display();
  delay(2000); // Pause for 2 seconds

  display.clearDisplay();
}

/*

 * Main function, get and show the temperature

 */

void loop(void)
{
  draw();
}

struct TimeTemp {
  String time;
  float temp;
};

String command = "INITIAL";
int eeAddress = 0; //location to store values in EEPROM
bool measure = true;

void draw(){
  if (Serial.available()){
    command = Serial.readString();
    command.trim();
    Serial.println(command);
  }

  if (command == "INITIAL"){
    TimeTemp tt = getTimeTemp();

    displayOnScreen(tt.time, tt.temp);
    delay(5000);
  } else if (command == "STAT"){
    TimeTemp tt = getTimeTemp();
    displayOnScreen(tt.time, tt.temp);
    displayOnPC(tt.time, tt.temp);
    
    EEPROM.put(eeAddress, tt);
    eeAddress += sizeof(TimeTemp);
  
    if (eeAddress >= 512){
      eeAddress = 0;
      if (EEPROM.commit()){
        Serial.println("EEPROM successfully committed");
      } else {
        Serial.println("ERROR! EEPROM commit failed");
      }
    }
      delay(5000);
  } else if (command == "READ"){
      Serial.println("Requesting from EEPROM...");

      int iterator = eeAddress - sizeof(TimeTemp);
      for (int i = 0; i < 10; i++){
        TimeTemp tt;
        EEPROM.get(iterator, tt);
        Serial.println(String(i+1) + " - " + tt.time + ", " + String(tt.temp));
        iterator -= sizeof(TimeTemp);
        if (iterator < 0) break;
      }
      command = "STAT";

  }else if (command == "STOP"){
    while(command == "STOP")
      if (Serial.available()){
        command = Serial.readString();
        command.trim();
        Serial.println(command);
        break;
      }
  }

}

struct TimeTemp getTimeTemp(){
  sensors.requestTemperatures(); // Send the command to get temperatures
      DateTime now = rtc.now();
      String curTime = String(now.hour()) + ":" + String(now.minute()) + ":" + String(now.second());
      float tempC = sensors.getTempCByIndex(0);
    TimeTemp tt = {
      curTime,
      tempC
    };
      return tt;

}

void displayOnScreen(String curTime, float tempC){
    display.clearDisplay();
    display.setTextSize(2);             // Normal 1:1 pixel scale
    display.setTextColor(SSD1306_WHITE);        // Draw white text
    display.setCursor(0,0);             // Start at top-left corner
    display.println(curTime);
    display.println("Temp:" + String(tempC));
    display.display();
}

void displayOnPC(String curTime, float tempC){
  Serial.println(curTime + ": " + tempC + "\n");
}