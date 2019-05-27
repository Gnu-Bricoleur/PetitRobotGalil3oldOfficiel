#include "Adafruit_VL53L0X.h"

 

Adafruit_VL53L0X lox1 = Adafruit_VL53L0X();

Adafruit_VL53L0X lox2 = Adafruit_VL53L0X();

 

void setup() {

  //Serial.begin(115200);

  pinMode(11, OUTPUT);

  pinMode(3, OUTPUT);

  pinMode(A2, OUTPUT);

  pinMode(LED_BUILTIN, OUTPUT);

  digitalWrite(LED_BUILTIN, LOW);

  digitalWrite(A2, LOW);

 

  // wait until serial port opens for native USB devices

  /*while (! Serial) {

    delay(1);

  }*/

 

  //Serial.println("Adafruit VL53L0X test");

  digitalWrite(11, LOW);

  digitalWrite(12, LOW);

  delay(10);

  digitalWrite(11, HIGH);

  digitalWrite(12, HIGH);

  delay(10);

  digitalWrite(12, LOW);

  delay(10);

 

  if (!lox1.begin(0x31)) {

    //Serial.println(F("Failed to boot VL53L0X #1"));

    while(1);

  }

 

  delay(10);

  digitalWrite(12, HIGH);

 

  if (!lox2.begin(0x32)) {

    //Serial.println(F("Failed to boot VL53L0X #2"));

    while(1);

  }

 

  // power

  //Serial.println(F("VL53L0X API Simple Ranging example\n\n"));

}

 

 

void loop() {

  VL53L0X_RangingMeasurementData_t measure1;

  VL53L0X_RangingMeasurementData_t measure2;

   

  //Serial.println("Reading a measurement... ");

  lox1.rangingTest(&measure1, false); // pass in 'true' to get debug data printout!

  lox2.rangingTest(&measure2, false); // pass in 'true' to get debug data printout!

 

  if (measure1.RangeStatus != 4) {  // phase failures have incorrect data

    //Serial.print("Distance (mm): "); Serial.println(measure1.RangeMilliMeter);

  } else {

    //Serial.println(" out of range ");

  }

 

  if (measure2.RangeStatus != 4) {  // phase failures have incorrect data

    //Serial.print("Distance (mm): "); Serial.println(measure2.RangeMilliMeter);

  } else {

    //Serial.println(" out of range ");

  }

 

 

  if (measure1.RangeMilliMeter < 400)

  {

      digitalWrite(A2, HIGH);

      //Serial.println("Alerte a Babord !!!");

      digitalWrite(LED_BUILTIN, HIGH);

  }

    if (measure2.RangeMilliMeter < 400)

  {

      digitalWrite(A2, HIGH);

      //Serial.println("Alerte a Tribord !!!");

      digitalWrite(LED_BUILTIN, HIGH);

  }

 

  delay(100);

  digitalWrite(LED_BUILTIN, LOW);

}
