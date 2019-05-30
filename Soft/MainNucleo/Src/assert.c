#include "assert.h"

#define Kp_Droite 10
#define Ki_Droite 0
#define Kd_Droite 0


#define Kp_Gauche 10
#define Ki_Gauche 0
#define Kd_Gauche 0

#define Kp_Angle 1000

/*
//Homo  90deg = 1.85     11cm = 100
char consignes[] = {'M', 'A',  'M',  'A',  'M',   'E'};
double val1[] = {   300, -1.7, 200, -1.7,  200,  0  };
double val2[] = {   0,   0,     1 ,   0,    0,    0 };
*/

//cote jaune
char consignes[] = {'M', 'A', 'M',  'A',  'M',   'M',    'A'   , 'M',    'A', 'B',      'M' ,  'B',   'M'     ,'A'  ,  'S',  'M'  ,   'T'    ,'M' ,     'A',   'M',  'A'  ,   'M',   'R',  'E'};
double val1[] = {    600, 1.6, 300, -1.6,  200,   1200,  1.6,     200,    -1.6 , 2500,  360,   1500,   350,     1.7,    0  ,  100,     3000   ,200,     -1.7,   90,  -1.7 ,    1100,  0,    0 };
double val2[] = {    0,   0,   0 ,   0,   1,      0,     0 ,       0,      0,   0,      0,     0,      0   ,    0,      0  ,  0   ,    0      ,1,        0 ,    0,    0,       0    , 0 ,  0 };

/*
//cote violet
char consignes[] = {'M', 'A', 'M',  'A',  'M', 'E'};
double val1[] = {    200, 1.7, 400, 3.2,  600, 0 };
double val2[] = {    0,   0,   0 ,   0,   0,   0 };
*/
/*//test servo
char consignes[] = {'B', 'T',  'B',  'T',  'B',   'E'};
double val1[] = {   1000, 1000, 1500, 1000,  2500,  0  };
double val2[] = {   0,   0,     0 ,   0,    0,    0 };
*/
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
        HAL_UART_Transmit(&huart2, "Fin de l'action\n", sizeof("Fin de l'action\n"), HAL_MAX_DELAY);
        //resetPos();
    }
    
    switch(consignes[state])
    {
      case 'M':
        move(consigneDroit, consigneGauche, positionX, positionY, angle, val1[state], val2[state], tim4, tim5, huart2);
        //char buffer[50] = "";
		//sprintf(buffer, " move %d / %d blbl\n",(int)val1[state], (int)val2[state]);
		//HAL_UART_Transmit(&huart2, buffer, sizeof(buffer), HAL_MAX_DELAY);
        break;
        
      case 'A':
		turn(consigneDroit, consigneGauche, positionX, positionY, angle, val1[state], val2[state], tim4, tim5, huart2);
		break;
        
      case 'T':
        HAL_UART_Transmit(&huart2, "Let's wait !\n", sizeof("Let's wait !\n"), HAL_MAX_DELAY);
        HAL_Delay(val1[state]);
        endOfMvt = 1;
		break;
        
      case 'S': //Suck
        HAL_GPIO_WritePin(VaccumPump1_GPIO_Port, VaccumPump1_Pin, GPIO_PIN_SET);
        endOfMvt = 1;
        break;
      
      case 'R': //release
        HAL_GPIO_WritePin(VaccumPump1_GPIO_Port, VaccumPump1_Pin, GPIO_PIN_RESET);
        endOfMvt = 1;
        break;
        
      case 'B'://Baffe sur l'accelerateur avec le servo
        HAL_UART_Transmit(&huart2, "Cerveau\n", sizeof("Cerveau\n"), HAL_MAX_DELAY);
        servoPos(val1[state]);
        endOfMvt = 1;
        break;

      case 'E':  //end of the match
        HAL_UART_Transmit(&huart2, "Fin de match\n", sizeof("Fin de match\n"), HAL_MAX_DELAY);
        while(1){}
        break;
}
}


void turn(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, double targetX, double targetY, int tim4, int tim5, UART_HandleTypeDef huart2)
{
	//char buffer[50] = "";
	//sprintf(buffer, "%g / %g / %g\n",targetX, angle, absPerso(angle - targetX));
	//HAL_UART_Transmit(&huart2, buffer, sizeof(buffer), HAL_MAX_DELAY);
	
	static double angleInit = 0.0;
    
    static int firstLoopPass = 1;
    
    if (firstLoopPass == 1)
    {
        angleInit = angle;
        firstLoopPass = 0;
    }
    
	
	if (targetX > 0 /*absPerso(angle) < absPerso(targetX)*/)
    {
		if(targetX + angleInit > angle)
		{
			*consigneGauche = 1000;
			*consigneDroit = -1000;
		}
		else
		{
			*consigneGauche = 0;
			*consigneDroit = 0;
			endOfMvt = 1;
			firstLoopPass = 1;
		}
	}
	else
	{
		if(targetX + angleInit < angle)
		{
			*consigneGauche = -1000;
			*consigneDroit = 1000;
			}
		else
		{
			*consigneGauche = 0;
			*consigneDroit = 0;
			endOfMvt = 1;
			firstLoopPass = 1;
		}
    }
}


void move(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, double targetX, double targetY, int tim4, int tim5, UART_HandleTypeDef huart2)
{
    static int isMvtDone = 0;
    static int oldErrorDroite = 0;
    static int errorSumDroite = 0;
    static int oldErrorGauche = 0;
    static int errorSumGauche = 0;
    static double angleInit = 0.0;
    static double positionXInit = 0.0;
    static double positionYInit = 0.0;
    static double distanceTravelled = 0.0;
    static double distanceTarget = 0.0;
    
    static int firstLoopPass = 1;
    
    if (firstLoopPass == 1)
    {
        angleInit = angle;
        positionXInit = positionX;
        positionYInit = positionY;
        distanceTarget = targetX;//sqrt((targetX)*(targetX) + (targetY)*(targetY));
        //distanceTarget = sqrt((targetX - positionX)*(targetX - positionX) + (targetY- positionY)*(targetY-positionY));
        firstLoopPass = 0;
        distanceTravelled = 0.0;
    }
    
    distanceTravelled = sqrt((positionX - positionXInit)*(positionX - positionXInit) + (positionY- positionYInit)*(positionY-positionYInit));
    angle = angle-angleInit;
    
    
    if (distanceTravelled > distanceTarget/*(absPerso(positionX - targetX) < 50) && (absPerso(positionY - targetY) < 50)*/)
    {
		//char buffer[50] = "";
		//sprintf(buffer, "%d / %d\n",(int)targetX, (int)absPerso(positionY - targetY));
		//HAL_UART_Transmit(&huart2, buffer, sizeof(buffer), HAL_MAX_DELAY);
        isMvtDone += 1;
    }
    if(isMvtDone > 5)
    {
        isMvtDone = 0;
        endOfMvt = 1;
        *consigneDroit = 0;
        *consigneGauche = 0;
        firstLoopPass = 1;
    }
    else
    {
		//No ramps for the time being :/ refer to MainNucleoOLD for implementation
		
		
		//need to modify the target sppeed for positionning
		int targetSpeed = 170; //tick per ms
		
		if(targetY == 0)//		avance ou recule
		{targetSpeed = 170;}
		else
		{targetSpeed = -170;}
		
		
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
		//*consigneDroit = Kp_Droite * errorDroite + Ki_Droite * errorSumDroite + Kd_Droite * errorVariationDroite + Kp_Angle * angle;
		oldErrorDroite = errorDroite;
		
		
		int errorGauche = targetSpeed - tim4;
		errorSumGauche += errorGauche;
		int errorVariationGauche = errorGauche - oldErrorGauche;
		//*consigneGauche = Kp_Gauche * errorGauche + Ki_Gauche * errorSumGauche + Kd_Gauche * errorVariationGauche - Kp_Angle * angle;
		oldErrorGauche = errorGauche;
		
		
		/*if(targetY == 0)//si on avance
		{*/
			*consigneDroit = Kp_Droite * errorDroite + Ki_Droite * errorSumDroite + Kd_Droite * errorVariationDroite + Kp_Angle * angle;
			*consigneGauche = Kp_Gauche * errorGauche + Ki_Gauche * errorSumGauche + Kd_Gauche * errorVariationGauche - Kp_Angle * angle;
		/*}
		else
		{
			*consigneDroit = -(Kp_Droite * errorDroite + Ki_Droite * errorSumDroite + Kd_Droite * errorVariationDroite + Kp_Angle * angle);
			*consigneGauche = -(Kp_Gauche * errorGauche + Ki_Gauche * errorSumGauche + Kd_Gauche * errorVariationGauche - Kp_Angle * angle);
		}*/
	}
    
}

double absPerso(double x)
{
	if(x < 0) x = -x; 
	return x;
}


