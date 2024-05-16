#include <stdio.h>
#include <stdlib.h>
#define t 0.2
int main ()
{
    float pht;
    printf("calcule du prix d'un cafe taxe comprise et de 10 cafes\nSaisir le prix d'un cafe : ");
    scanf("%f",&pht);
    printf("Prix d'un cafe taxe comprise : %.2f\n",pht*(1 + t));
    printf("Prix de dix cafes : %.2f\n", pht*(1 + t) * 10);
    return 0;
}










