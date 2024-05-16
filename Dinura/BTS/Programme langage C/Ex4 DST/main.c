#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a,b;
    printf("Ce programme va afficher et calculer soit la multiplication ou la division en fonction des valeurs de a et b. \n");
    a = 10;
    printf("Veuillez saisir la valeur de b. \n");
    scanf("%d",&b);
    if (b>1)
        printf("b x a = %d",b*a);
    else if (b<0)
        printf("b / a = %d",b/a);
    else
        printf("pas d'operation effectuee");
    return 0;
}
