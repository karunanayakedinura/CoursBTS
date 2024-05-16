#include <stdio.h>
#include <stdlib.h>

int main()
{
	int h,m,s,hi,mi,si;
	printf("Ce programme va convertir la forme heure:minute:seconde en secondes. \n");
	printf("Selectionner votre heure. \n");
	scanf("%d",&h);
	while (h < 0 || h > 23)
        {
        printf("Erreur : votre nombre d'heure doit etre compris entre 0 et 23. \n");
        printf("Selectionner votre heure.\n");
        scanf("%d",&h);
        }
    printf("Selectionner votre minute. \n");
	scanf("%d:",&m);
	while (m < 0 || m > 59)
        {
        printf("Erreur : votre nombre de minutes doit etre compris entre 0 et 59. \n");
        printf("Selectionner votre minute. \n");
        scanf("%d",&m);
        }
    printf("Selectionner votre seconde. \n");
    scanf("%d:",&s);
    while (s < 0 || s > 59)
        {
        printf("Erreur : votre nombre de secondes doit etre compris entre 0 et 59. \n");
        printf("Selectionner votre seconde. \n");
        scanf("%d",&s);
        }
    hi = h;
    mi = m;
    si = s;
	while (m != 0)
        {
		m = m - 1;
		s = s + 60;
        }
	while (h != 0)
        {
		h = h - 1;
		s = s + 3600;
        }
    printf("La conversion de %02d:%02d:%02d est de %d secondes",hi,mi,si,s);
	return 0;
}
