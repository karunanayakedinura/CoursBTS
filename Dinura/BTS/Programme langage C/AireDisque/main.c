#include <stdio.h>
#include <stdlib.h>

int main()
{
    float rayon;
    char reponse;
    printf("Calcul l'aire d'un disque. \n");
    do
        {
        printf("Entrez le rayon d'un cercle en cm. \n");
        scanf("%f",&rayon);
        printf("L'aire du disque est %f cm^2. \n",rayon*rayon*3.14);
        printf("Voulez-vous l'aire d'un autre disque? (o/n) \n");
        fflush(stdin);
        scanf("%c",&reponse);
        }
    while (reponse == 'o');
    printf("Le programme est termine! \n");
    return 0;
}
