#include "SPI.h" 

int ss=10; // using digital pin 10 for SPI slave select

unsigned char DataTXBuffer[8] = {0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x44};
unsigned char DataRXBuffer[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

unsigned char DisableScrub[8][8]=
{
    { 0x0F, 0x51, 0x4A, 0x1E, 0x2F, 0x7B, 0x89, 0x8D},  //Enter level 1a
    { 0x6F, 0x43, 0x50, 0x00, 0x0C, 0x01, 0x80, 0xA7},  //going to write page C010  SYSTEM_REG_P
    { 0x7F, 0x40, 0x40, 0x00, 0x00, 0x0A, 0x85, 0x12},  //adresse 40 put A5         -------------|-SCRUB_DISABLE_0
    { 0x7F, 0x44, 0x40, 0x00, 0x00, 0x05, 0x8A, 0xB3},  //address 44 put 5A                      |-SCRUB_DISABLE_1
    { 0x6F, 0x43, 0x50, 0x00, 0x0F, 0x01, 0x80, 0xB5},  //going to write page F010  SYSTEM_REG_S
    { 0x7F, 0x30, 0x40, 0x00, 0x00, 0x0A, 0x85, 0x75},  //address 30 put A5         -------------|-SCRUB_DISABLE_0
    { 0x7F, 0x34, 0x40, 0x00, 0x00, 0x05, 0x8A, 0xD4},  //address 34 put 5A                      |-SCRUB_DISABLE_1
    { 0x4F, 0x51, 0x40, 0x00, 0x00, 0x00, 0x80, 0x3F}   //quit level 1A
};

unsigned char ReadOTPData[21][8]=
{
    { 0x0F, 0x51, 0x4A, 0x1E, 0x2F, 0x7B, 0x89, 0x8D},
    { 0x4F, 0x43, 0x40, 0x00, 0x0C, 0x05, 0x80, 0x30},
    { 0x5F, 0x12, 0x40, 0x00, 0x00, 0x06, 0x80, 0x0C},
    { 0x4F, 0x43, 0x40, 0x00, 0x0C, 0x10, 0x80, 0x29},
    { 0xDF, 0x00, 0x20, 0x00, 0x00, 0x00, 0x80, 0xE5},
    { 0xDF, 0x04, 0x20, 0x00, 0x00, 0x00, 0x80, 0x9A},
    { 0xDF, 0x08, 0x20, 0x00, 0x00, 0x00, 0x80, 0x1B},
    { 0xDF, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x80, 0x64},
    { 0xDF, 0x10, 0x20, 0x00, 0x00, 0x00, 0x80, 0x36},
    { 0xDF, 0x14, 0x20, 0x00, 0x00, 0x00, 0x80, 0x49},
    { 0xDF, 0x18, 0x20, 0x00, 0x00, 0x00, 0x80, 0xC8},
    { 0xDF, 0x1C, 0x20, 0x00, 0x00, 0x00, 0x80, 0xB7},
    { 0xDF, 0x20, 0x20, 0x00, 0x00, 0x00, 0x80, 0x6C},
    { 0xDF, 0x24, 0x20, 0x00, 0x00, 0x00, 0x80, 0x13},
    { 0xDF, 0x28, 0x20, 0x00, 0x00, 0x00, 0x80, 0x92},
    { 0xDF, 0x2C, 0x20, 0x00, 0x00, 0x00, 0x80, 0xED},
    { 0xDF, 0x30, 0x20, 0x00, 0x00, 0x00, 0x80, 0xBF},
    { 0xDF, 0x34, 0x20, 0x00, 0x00, 0x00, 0x80, 0xC0},
    { 0x4F, 0x43, 0x40, 0x00, 0x0C, 0x05, 0x80, 0x30},
    { 0x5F, 0x12, 0x40, 0x00, 0x00, 0x00, 0x80, 0x24},
    { 0x4F, 0x51, 0x40, 0x00, 0x00, 0x00, 0x80, 0x3F}
};

unsigned char PrepareWrite[2][8]=
{
    { 0x0F, 0x54, 0x4F, 0x9C, 0xA0, 0x27, 0x8D, 0xAF},
    { 0x4F, 0x43, 0x40, 0x00, 0x0F, 0x00, 0x80, 0x1E}
};

unsigned char WriteData[14][8]=
{
//    { 0x5F, 0x00, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0xAD},
//    { 0x5F, 0x04, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0xD2},
//    { 0x5F, 0x08, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x53},
//    { 0x5F, 0x0C, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x2C},
//    { 0x5F, 0x10, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x7E},
//    { 0x5F, 0x14, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x01},
//    { 0x5F, 0x18, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x80},
//    { 0x5F, 0x1C, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0xFF},
//    { 0x5F, 0x20, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x24},
//    { 0x5F, 0x24, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x5B},
//    { 0x5F, 0x28, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0xDA},
//    { 0x5F, 0x2C, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0xA5},
//    { 0x5F, 0x30, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0xF7},
//    { 0x5F, 0x34, 0x6F, 0xFF, 0xFF, 0xFF, 0x8F, 0x88}

//      An example of what the frames could look like when the data fields are filled.
    { 0x5F, 0x00, 0xF0, 0x04, 0x00, 0x40, 0xF6, 0xAD},
    { 0x5F, 0x04, 0xF7, 0x70, 0x00, 0x30, 0xF3, 0xD2},
    { 0x5F, 0x08, 0xF0, 0x70, 0x00, 0x30, 0xF3, 0x53},
    { 0x5F, 0x0C, 0xF0, 0x00, 0x10, 0x00, 0xF0, 0x2C},
    { 0x5F, 0x10, 0xF0, 0x00, 0xFF, 0xE0, 0xF0, 0x7E},
    { 0x5F, 0x14, 0xF0, 0x20, 0x00, 0x00, 0xF0, 0x01},
    { 0x5F, 0x18, 0xF0, 0x00, 0x00, 0x00, 0xF0, 0x80},
    { 0x5F, 0x1C, 0xF0, 0x07, 0x70, 0x00, 0xF0, 0xFF},
    { 0x5F, 0x20, 0xF0, 0x01, 0xD0, 0x00, 0xF0, 0x24},
    { 0x5F, 0x24, 0xF0, 0x00, 0x00, 0x00, 0xF0, 0x5B},
    { 0x5F, 0x28, 0xF0, 0x0F, 0xF0, 0x44, 0xFF, 0xDA},
    { 0x5F, 0x2C, 0xF0, 0x00, 0x00, 0x00, 0xF0, 0xA5},
    { 0x5F, 0x30, 0xF8, 0xF0, 0x00, 0x00, 0xF0, 0xF7},
    { 0x5F, 0x34, 0xFF, 0xBF, 0xF5, 0x6C, 0xF2, 0x88}


};

unsigned char EndWriting[3][8] =
{
    { 0x4F, 0x43, 0x40, 0x00, 0x0F, 0x00, 0x82, 0x40},
    { 0x5F, 0x00, 0x40, 0x00, 0x00, 0x03, 0x86, 0xA9},
    { 0x4F, 0x54, 0x40, 0x00, 0x00, 0x00, 0x80, 0x14}
};

unsigned char FinishProcedure[15][8]=
{   //jguhdo
    { 0x0F, 0x51, 0x4A, 0x1E, 0x2F, 0x7B, 0x89, 0x8D},
    { 0x4F, 0x43, 0x40, 0x00, 0x0C, 0x00, 0x83, 0x7D},
    { 0x5F, 0x18, 0x40, 0x00, 0x00, 0x00, 0x88, 0x25},
    { 0x5F, 0x19, 0x40, 0x00, 0x00, 0x00, 0x81, 0x09},
    { 0x5F, 0x1A, 0x40, 0x00, 0x00, 0x00, 0x80, 0xDA},
    { 0x5F, 0x00, 0x40, 0x00, 0x00, 0x00, 0x80, 0x5F},
    { 0x4F, 0x43, 0x40, 0x00, 0x0F, 0x00, 0x83, 0x6F},
    { 0x5F, 0x30, 0x40, 0x00, 0x00, 0x00, 0x80, 0x05},
    { 0x4F, 0x51, 0x40, 0x00, 0x00, 0x00, 0x80, 0x3F},
    //bghfdygfi
    { 0x0F, 0x51, 0x4A, 0x1E, 0x2F, 0x7B, 0x89, 0x8D},
    { 0x6F, 0x43, 0x50, 0x00, 0x0C, 0x00, 0x85, 0xDD},
    { 0x7F, 0x00, 0x40, 0x00, 0x00, 0x02, 0x88, 0x6E},
    { 0x6F, 0x43, 0x50, 0x00, 0x0F, 0x00, 0x85, 0xCF},
    { 0x7F, 0x00, 0x40, 0x00, 0x00, 0x01, 0x84, 0x91},
    { 0x4F, 0x51, 0x40, 0x00, 0x00, 0x00, 0x80, 0x3F}
};




void setup()
{
  Serial.begin(115200);
  pinMode(ss, OUTPUT); // we use this for SS pin
  SPI.begin(); // wake up the SPI bus.
  SPI.setBitOrder(MSBFIRST);
  SPI.beginTransaction(SPISettings(14000, MSBFIRST, SPI_MODE0));
  Serial.print("Hi");
  delay(200);


  for(int i = 0; i < 8; i++)
  {
    sendFrame(DataTXBuffer);
    delay(100);
  }

  
  for(int i = 0; i < 8; i++)
  {
    sendFrame(DisableScrub[i]);
    delay(100);
  }

  for(int i = 0; i < 21; i++)
  {
    sendFrame(ReadOTPData[i]);
    delay(100);
  }

  for(int i = 0; i < 2; i++)
  {
    sendFrame(PrepareWrite[i]);
    delay(100);
  }

  for(int i = 0; i < 14; i++)
  {
    sendFrame(WriteData[i]);
    delay(100);
  }

  for(int i = 0; i < 3; i++)
  {
    sendFrame(EndWriting[i]);
    delay(100);
  }

  for(int i = 0; i < 15; i++)
  {
    sendFrame(FinishProcedure[i]);
    delay(100);
  }

  
  
}
 
void sendFrame(unsigned char * Frame)
{
  digitalWrite(ss, LOW);
  delayMicroseconds(1);
  for (int i = 0; i<8; i++)
  {
    DataRXBuffer[i] = SPI.transfer(Frame[i]); // send value (0~255)
  }
  delayMicroseconds(1);
  digitalWrite(ss, HIGH);
   for ( int i = 0; i<8; i++)
  {
    Serial.print(DataRXBuffer[i],HEX);
  }
  Serial.println("");
}
 
void loop()
{
   
  sendFrame(DataTXBuffer);
  //To print frames
//  for ( int i = 0; i<8; i++)
//  {
//    Serial.print(DataRXBuffer[i],HEX);
//  }
//  Serial.println("");

  //To print values
  int TCNT = ((DataRXBuffer[5] & 0x0F) << 8) + DataRXBuffer[6];
  int PANG = ((DataRXBuffer[0] & 0x03) << 12) + (DataRXBuffer[1] << 4) + ((DataRXBuffer[2] & 0xF0) >> 4);
  int SANG = ((DataRXBuffer[2] & 0x0F) << 8) + DataRXBuffer[3];
  Serial.print(PANG);
  Serial.print(",");
  Serial.print(SANG);
  Serial.print(",");
  Serial.print(TCNT);
  Serial.print(",");
  Serial.print("0");
  Serial.println("");
  delay(100);
}
