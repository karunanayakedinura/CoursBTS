#include <stdio.h>
#include <stdlib.h>

int main()
{
    int aa,an;
    printf ("Ce programme calcule et affiche votre age.");
    aa=2022;
    an=0;
    printf ("Entrer votre annee de naissance:");
    scanf ("%d",&an);
    aa=aa-an;
    printf ("Vous avez ou vous aurez %d ans cette annee.",aa);
}
