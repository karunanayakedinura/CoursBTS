#include <stdio.h>
#include <stdlib.h>
int maximum(int nbr1,int nbr2)
    {
    if (nbr1<nbr2)
        return nbr2;
    else
        return nbr1;
    }
int main()
{
    int nb1,nb2;
    printf("Ce programme va afficher le maximum entre 2 valeurs. \n");
    printf("Veuillez saisir un premier nombre , puis un second nombre. \n");
    scanf("%d%d",&nb1,&nb2);
    printf("Le maximum entre %d et %d est : %d \n",nb1,nb2,maximum(nb1,nb2));
    return 0;
}
