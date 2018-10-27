// Include libraries to support ESP8266 serial communication with arduino IDE:

#include <SoftwareSerial.h>
SoftwareSerial esp8266(2, 3); 
void setup() { 
// Begin serial communication with baud rate of 115200:
Serial.begin(115200);


while (!Serial) {
; // For native USB port support only, serial port is connected:
} 
Serial.println("Started"); 

//Set data baud rate for the SoftwareSerial port too:
esp8266.begin(115200); 
esp8266.write("AT\r\n"); 
} 
void loop() 
{ 
if (esp8266.available()) 
{
Serial.write(esp8266.read()); 
} 
if (Serial.available()) {
esp8266.write(Serial.read()); 
} 
}
