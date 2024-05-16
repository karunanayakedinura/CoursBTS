#include <stdio.h>
#include <stdlib.h>

int main()
{
    char choix;
    float total;
    printf("Ce programme va afficher et calculer le total en fonction du choix que l'on va choisir. \n");
    printf("Veuillez saisir un total. \n");
    scanf("%f",&total);
    printf("Veuillez saisir un choix.\n'e' pour express\n'n' pour normal \n");
    fflush(stdin);
    scanf("%c",&choix);
     switch(choix)
        {
         case 'e' : printf("le total est de %f. \n",total*0.3);
         break;
         case 'n' : printf("Le total est de %f. \n",total*0.1);
         break;
         default : printf("Le total est de %f. \n",total);
        }
    return 0;
}
