#ifndef ASSERTH
#define ASSERTH

#include "main.h"
#include "math.h"


#define AXISLENGTH 165
#define TICKSPERMM 20


void updatePos(int tickRight, int tickGauche, double* positionX, double* positionY, double* angle);
void stateMachine(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, int tim4, int tim5);
void move(int* consigneDroit, int* consigneGauche, double positionX, double positionY, double angle, int targetX, int targetY, int tim4, int tim5);


#endif
