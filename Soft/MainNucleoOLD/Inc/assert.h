#ifndef ASSERTH
#define ASSERTH

#include "main.h"
#include "math.h"

#define PI 3.1415926535898

#define AXISLENGTH 165
#define TICKSPERMM 44

#define Vmax 500
#define Amax 600
#define Afrein 1000

#define VmaxCap 500
#define AmaxCap 600
#define AfreinCap 1000

#define dt 0.005 //5ms

#define P 1
#define D 0


void updatePos(int tickRight, int tickGauche, double* positionX, double* positionY, double* angle);

void PID(double* X0, double* Y0, double* T0, int* moteurR, int* dirR, int* moteurL, int* dirL, double X2, double Y2, int T2);


#endif
