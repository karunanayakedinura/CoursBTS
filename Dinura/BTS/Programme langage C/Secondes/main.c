#include <stdio.h>
#include <stdlib.h>

int main()
{
	int sec,seci,HH,MM,SS;
	printf("Ce programme va convertir les secondes sous la forme heure:minute:seconde. \n");
	printf("Selectionner votre nombre de secondes. \n");
	scanf("%d",&sec);
	while (sec < 0 || sec >86400)
        {
        printf("Erreur : votre nombre de secondes doit etre compris entre 0 et 86400. \n");
        printf("Selectionner votre nombre de secondes. \n");
        scanf("%d",&sec);
        }
	seci = sec;
	HH = 0;
	MM = 0;
	SS = 0;
	while (sec >= 3600)
        {
		sec = sec - 3600;
		HH = HH + 1;
        }
	while (sec >= 60)
        {
		sec = sec - 60;
		MM = MM + 1;
        }
	SS = sec;
    printf("La conversion de %d est de %02d:%02d:%02d",seci,HH,MM,SS);
	return 0;
}
