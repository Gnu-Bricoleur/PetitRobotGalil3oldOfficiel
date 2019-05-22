#include "assert.h"



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
