#include "assert.h"



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


void PID(double* positionX, double* positionY, double* angle, int* moteurR, int* dirR, int* moteurL, int* dirR, int targetX, int targetY, int targetAngle)
{
    static 
    //distance between robot and target
    double distanceTarget = sqrt((targetX-(*positionX))*(targetX-(*positionX))+(targetY-(*positionY))*(targetY-(*positionY)));
    int signe = 0;
    //target left or right ?
    if(positionY > targetY)
    {
        signe = 1;
    }else
    {
        signe = -1;
    }

    //On calcule l'angle entre le robot et la cible
    double consigneOrientation = signe * acos((xC-xR)/((xC-xR)*(xC-xR)*(yC-yR)*(yC-yR));

    //On détermine les commandes à envoyer aux moteurs
    int (*moteurR) = abs((int)distanceCible);
    if((*moteurR)>10000)
    {
        (*moteurR) = 10000;
    }
    (*moteurL) = (*moteurR);
   
    //Calcul de l'erreur
    double erreurAngle =  consigneOrientation - (*angle);
   
    //Calcul de la différence entre l'erreur au coup précédent et l'erreur actuelle.
    double deltaErreur = erreurAngle - erreurPre;

    //Mise en mémoire de l'erreur actuelle
    erreurPre  = erreurAngle;

    //Calcul de la valeur à envoyer aux moteurs pour tourner
    int detltaCommande = coeffP*erreurAngle + coeffD * deltaErreur;
   
    (*moteurL) += deltaCommande;
    (*moteurR) -= deltaCommande;
   
    if((*moteurR)>10000)
    {
        (*moteurR) = 10000;
    }else if((*moteurR) < 0)
    {
        (*moteurR) = 0;
    }

    if((*moteurL)>10000)
    {
        (*moteurL) = 10000;
    }else if((*moteurL) < 0)
    {
        (*moteurL) = 0;
    }
    *dirR = 1;
    *dirL = 1;
}
