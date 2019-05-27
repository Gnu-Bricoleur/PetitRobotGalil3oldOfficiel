#include "assert.h"

#define Kp_Droite 10
#define Ki_Droite 0
#define Kd_Droite 0


#define Kp_Gauche 10
#define Ki_Gauche 0
#define Kd_Gauche 0

#define Kp_Angle 1000

char consignes[] = {'M','E'};
double val1[] = { 2000, 0 };
double val2[] = { 0, 0 };

int endOfMvt = 0;


void updatePos(int tickRight, int tickGauche, double* positionX, double* positionY, double* angle)
{ 
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



void stateMachine(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, int tim4, int tim5, UART_HandleTypeDef huart2)
{
    static int state = 0;
    
    if (endOfMvt == 1)
    {
        endOfMvt = 0;
        state += 1;
    }
    
    switch(consignes[state])
    {
      case 'M':
        move(consigneDroit, consigneGauche, positionX, positionY, angle, val1[state], val2[state], tim4, tim5, huart2);
        //char buffer[50] = "";
		//sprintf(buffer, " move %d / %d blbl\n",(int)val1[state], (int)val2[state]);
		//HAL_UART_Transmit(&huart2, buffer, sizeof(buffer), HAL_MAX_DELAY);
        break;

      case 'E':  //end of the match
        HAL_UART_Transmit(&huart2, "Fin de match", sizeof("Fin de match"), HAL_MAX_DELAY);
        while(1){}
        break;
}
}





void move(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, double targetX, double targetY, int tim4, int tim5, UART_HandleTypeDef huart2)
{
    static int isMvtDone = 0;
    static int oldErrorDroite = 0;
    static int errorSumDroite = 0;
    static int oldErrorGauche = 0;
    static int errorSumGauche = 0;
    
    if ((absPerso(positionX - targetX) < 50) && (absPerso(positionY - targetY) < 50))
    {
		//char buffer[50] = "";
		//sprintf(buffer, "%d / %d\n",(int)targetX, (int)absPerso(positionY - targetY));
		//HAL_UART_Transmit(&huart2, buffer, sizeof(buffer), HAL_MAX_DELAY);
        isMvtDone += 1;
    }
    if(isMvtDone > 500)
    {
        isMvtDone = 0;
        endOfMvt = 1;
    }
    
    //No ramps for the time being :/ refer to MainNucleoOLD for implementation
    
    
    //need to modify the target sppeed for positionning
    int targetSpeed = 170; //tick per ms
    
    int errorDroite = targetSpeed - tim5;
    errorSumDroite += errorDroite;
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
    *consigneDroit = Kp_Droite * errorDroite + Ki_Droite * errorSumDroite + Kd_Droite * errorVariationDroite + Kp_Angle * angle;
    oldErrorDroite = errorDroite;
    
    
    int errorGauche = targetSpeed - tim4;
    errorSumGauche += errorGauche;
    int errorVariationGauche = errorGauche - oldErrorGauche;
    *consigneGauche = Kp_Gauche * errorGauche + Ki_Gauche * errorSumGauche + Kd_Gauche * errorVariationGauche - Kp_Angle * angle;
    oldErrorGauche = errorGauche;
    
}

double absPerso(double x)
{
	if(x < 0) x = -x; 
	return x;
}


