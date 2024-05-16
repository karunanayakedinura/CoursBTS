#include <stdio.h>
#include <stdlib.h>

int main()
{
    int mois;
    printf("Ce programme va afficher le mois correspondant a son numero. \n");
    printf("Veuillez saisir un nombre. (entre 1 et 12) \n");
    scanf("%d",&mois);
    switch(mois)
        {
         case 1 : printf("Janvier");
         break;
         case 2 : printf("Fevrier");
         break;
         case 3 : printf("Mars");
         break;
         case 4 : printf("Avril");
         break;
         case 5 : printf("Mai");
         break;
         case 6 : printf("Juin");
         break;
         case 7 : printf("Juillet");
         break;
         case 8 : printf("Aout");
         break;
         case 9 : printf("Septembre");
         break;
         case 10 : printf("Octobre");
         break;
         case 11 : printf("Novembre");
         break;
         case 12 : printf("Decembre");
         break;
         default : printf("Erreur de saisie : le numero du mois doit etre compris entre 1 et 12. \n");
        }
}
