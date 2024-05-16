#include <stdio.h>
#include <stdlib.h>

int main()
{
    const float PrLD = 1.722, PrLE = 1.939;

    float frE, coutCarbu;
    int nbKm, cyl;
    char typCarbu;

	printf(" Saisir le nombre de kilometre, le type de carburant (E ou G), le cylindre (en cm3) ");
	//fflush(stdin);
	scanf ("%d %c %d",&nbKm, &typCarbu, &cyl);

	if ((typCarbu=='g') || (typCarbu=='G'))
        {
        coutCarbu = ((0.08)*PrLD)*nbKm/12;
		frE = coutCarbu*0.7;
        }

    else
        {
		if (cyl > 2000)
			coutCarbu = ((0.1)*PrLE)*nbKm/12;
		else
			coutCarbu = ((0.08)*PrLE)*nbKm/12;
		frE = coutCarbu*0.6;
        }
    printf("les frais mensuels sont de %.2f d'euros",frE + coutCarbu);

    return 0;
}
