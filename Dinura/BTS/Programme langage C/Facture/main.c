#include <stdio.h>
#include <stdlib.h>
#define remise 0.01
int main()
{
    float montant;
    printf("Ce programme permet de calculer le montant que le client doit payer. \n");
    printf("Saisir un montant de facture : \n");
    scanf("%f",&montant);
    if (montant > 800)
        montant = montant*(1-remise);
    printf("Voici le montant a payer est de: %.2f\n", montant);
}
