#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i,nb;
    char reponse;
    printf("Ce programme vous affiche la ou les tables de votre choix. \n");
    do
        {
        printf("Quelle table de multiplication souhaitez vous afficher? \n");
        scanf("%d",&nb);
        for (i=1;i<=10;i++)
            printf("%d x %d = %d \n",nb,i,nb*i);
        printf("Voulez-vous afficher une autre table de multiplication? (o/n) \n");
        fflush(stdin);
        scanf("%c",&reponse);
        }
    while (reponse != 'n');
    printf("Fin du programme.");
    return 0;
}
