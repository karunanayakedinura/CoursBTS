#include <stdio.h>
#include <stdlib.h>

int main()
{
    int nb1,nb2;
    void permut(int,int);
    printf("Ce programme va permuter les valeurs de 2 variables diffenrentes. \n");
    printf("Saisir premier et deuxieme nombre. \n");
    scanf("%d%d",&nb1,&nb2);
    permut(nb1,nb2);
    printf("Valeur de nb1 : %d et de nb2 : %d \n",nb1,nb2);
    return 0;
}
void permut(int a, int b)
    {
        int c;
        c = b;
        b = a;
        a = c;
        printf("valeur de a : %d et de b : %d \n",a,b);
    }
