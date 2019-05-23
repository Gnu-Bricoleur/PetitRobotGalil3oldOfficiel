#include "assert.h"

#define Kp_Droite 150
#define Ki_Droite 0
#define Kd_Droite 0

char consignes[] = {'M','E'};
int val1[] = { 200, 0 };
int val2[] = { 0, 0 };

int endOfMvt = 0;


void updatePos(int tickRight, int tickGauche, double* positionX, double* positionY, double* angle)
{
  TIM4->CNT = 30000;
  TIM5->CNT = 30000;
    
  // instant angle and distance
  double dDist = (tickRight + tickGauche) / 2.0f;
  double dTheta = (tickRight - tickGauche) / 2.0f;

  // new angle
  *angle += dTheta / ((AXISLENGTH*TICKSPERMM)/2);

  // New X Y
  double dX = dDist * cos(*angle);
  double dY = dDist * sin(*angle);
  *positionX += dX / TICKSPERMM;
  *positionY += dY / TICKSPERMM;
}



void stateMachine(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, int tim4, int tim5)
{
    static int state = 0;
    
    if (endOfMvt == 1)
    {
        endOfMvt = 0;
        state += 1;
    }
    
    switch(consignes[etat])
    {
      case 'M':
        move(consigneDroit, consigneGauche, positionX, positionY, angle, val1[state], val2[state], tim4, tim5);
        break;

      case 'E':  //end of the match
        while(1){}
        break;


}
}





void move(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, int targetX, int targetY, int tim4, int tim5)
{
    static int isMvtDone = 0;
    static int oldErrorDroite = 0;
    
    if ((positionX - targetX < 50) && (positionY - targetY < 50))
    {
        isMvtDone += 1;
    }
    if(isMvtDone > 500)
    {
        isMvtDone = 0;
        endOfMvt = 1;
    }
    
    //No ramps for the time being :/ refer to MainNucleoOLD for implementation
    
    
    //need to modify the target sppeed for positionning
    int targetSpeed = 10; //tick per ms
    
    int errorDroite = targetSpeed - tim5;
    int errorSumDroite += errorDroite;
    /*//circular buffer
    int errorSumDroite = 0;
    static int indexBuffer = 0;
    static int circularBuffer[100] = {0};
    for (int i = 0; i < 100; i++) {errorSumDroite += circularBuffer[i];}
    circularBuffer[indexBuffer] = errorDroite;
    indexBuffer += 1;
    if(indexBuffer > 100){indexBuffer = 0;}
    */
    int errorVariationDroite = errorDroite - oldErrorDroite;
    *consigneDroit = Kp_Droite * errorDroite + Ki_Droite * errorSumDroite + Kd_Droite * errorVariationDroite;
    oldErrorDroite = errorDroite;
    
    
    
    
}




