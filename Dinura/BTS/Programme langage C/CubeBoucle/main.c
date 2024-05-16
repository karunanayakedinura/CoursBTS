#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
    int nombre;
    printf("Ce programme va afficher  et calculer en boucle le cube des nombres tant que vous n'avez pas saisi 0. \n");
    printf("Veuillez saisir un nombre. (autre que 0) \n");
    scanf("%d",&nombre);
    while (nombre!=0)
        {
        printf("Le cube de %d est de %.2f . Veuillez saisir un autre nombre. \n", nombre,pow(nombre,3));
        scanf("%d",&nombre);
        }
    printf("Programme fini.");
    return 0;
}
