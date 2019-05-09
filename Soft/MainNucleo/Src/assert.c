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
    //On calcule la distance séparant le robot de sa cible
	distanceCible = sqrt((xC-xR)*(xC-xR)+(yC-yR)*(yC-yR));

	//On regarde si la cible est à gauche ou à droite du robot
	if(yR > yC)
	{
		signe = 1;
	}else
	{
		signe = -1;
	}

	//On calcule l'angle entre le robot et la cible
	consigneOrientation = signe * acos((xC-xR)/((xC-xR)*(xC-xR)*(yC-yR)*(yC-yR));
						
	//On détermine les commandes à envoyer aux moteurs
	cmdD = abs((int)distanceCible);
	if(cmdD>255)
	{
	  	cmdD = 255;
	}
	cmdG = cmdD;
									   
	//Calcul de l'erreur
	erreurAngle =  consigneOrientation - orientation;
									   
	//Calcul de la différence entre l'erreur au coup précédent et l'erreur actuelle.
	deltaErreur = erreurAngle - erreurPre;

	//Mise en mémoire de l'erreur actuelle
	erreurPre  = erreurAngle;
				
	//Calcul de la valeur à envoyer aux moteurs pour tourner
	int detltaCommande = coeffP*erreurAngle + coeffD * deltaErreur;
									   
	cmdG += deltaCommande;
	cmdD -= deltaCommande;
									   
	if(cmdD>255)
	{
	  	cmdD = 255;
	}else if(cmdD < 0)
	{
	  	cmdD = 0;
	}
									   
	if(cmdG>255)
	{
	  	cmdG = 255;
	}else if(cmdG < 0)
	{
	  	cmdG = 0;
	}
}
