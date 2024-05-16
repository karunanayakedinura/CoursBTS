#include <stdio.h>
#include <stdlib.h>

int main()
{
    float ttc,ht;
    char car;
    int q;
    printf("Ce programme va calculer le prix total ttc d'achats de produit en fonction du prix ht et la quantite choisi \n");
    car = 'v';
    ttc = 0;
    do
        {
        printf("Veuillez mettre le prix HT du produit. \n");
        scanf("%f",&ht);
        printf("Veuillez mettre la quantite que vous souhaitez prendre. \n");
        scanf("%d",&q);
        ttc = ttc + (ht*q*1.2);
        printf("Le prix TTC du produit est de %.2f \n",ht*q*1.2);
        printf("Veuillez vous savoir le prix total TTC d'un autre produit? ('f' pour arreter le programme) \n");
        fflush(stdin);
        scanf("%c",&car);
        }
    while (car != 'f');
    printf("Le prix total TTC est de %.2f \n",ttc);
    return 0;
}
