// Include ESP8266 serial communication library for Arduino interfacing
#include <SoftwareSerial.h>
SoftwareSerial ESPserial(2, 3); // RX | TX

// Assign the required  Baud rate:
void setup() 
{
  Serial.begin(9600);
  ESPserial.begin(115200);
  ESPserial.println("AT+IPR=9600");
  delay(1000);
  ESPserial.end();
  // Begin software serial for communication with the ESP8266:
  ESPserial.begin(9600);

  Serial.println("Ready");
  ESPserial.println("AT+GMR");
}

void loop() 
{
    //Detect serial communication and copy it to the serial monitor:
    if ( ESPserial.available() )   {  Serial.write( ESPserial.read() );  }

   // Find input from user and relay it to ESP 8266:
    if ( Serial.available() )       {  ESPserial.write( Serial.read() );  }
}
