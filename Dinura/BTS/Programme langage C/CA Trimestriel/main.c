#include <stdio.h>
#include <stdlib.h>
int main()
{
    int i;
    float ca,tca;
    printf("Ce programme va afficher le CA trimestriel des commerciaux. \n");
    tca = 0;
    do
        {
        for (i=0;i<3;i++)
            {
            printf("Veuillez saisir votre CA de ce mois. \n");
            scanf("%f",&ca);
            tca = tca+ca;
            }
        i = i+1;
        }
    while (i == 3);
    printf("Le CA trimestriel est de %.2f \n",tca);
    return 0;
}
