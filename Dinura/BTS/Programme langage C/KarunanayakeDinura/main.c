#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n1,n2;
    char c;
    printf("Ce programme calcule la somme ou le produit en fonction de l'operateur. \n");
    printf("Saisir un caractere. \n");
    scanf("%c",&c);
    printf("Saisir un premier nombre. \n");
    scanf("%d",&n1);
    printf("Saisir un deuxieme nombre. \n");
    scanf("%d",&n2);
    if (c == 'S' || c=='s')
        {printf("La somme de %d avec %d est egale a %d ",n1,n2,n1+n2);
        }
    else
        {printf("Le produit de %d avec %d est egale a %d",n1,n2,n1*n2);
        }
}
