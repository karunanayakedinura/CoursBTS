#include <stdio.h>
#include <stdlib.h>
void tabtri(int tab[],int valeur)
{
int perm,i;
for(i=0;i<=6;i++)
    {
    if (tab[i]>valeur)
        {
        perm=tab[i];
        tab[i]=valeur;
        tab[i+1]=perm;
        }

    }
}
int main()
{
    int valeur,i;
    int tab[6] = {2,3,5,11,13,19};
    printf("Veuillez saisir un nombre.\n");
    scanf("%d",&valeur);
    tabtri(tab,valeur);

    for(i=0;i<=6;i++){
        printf("tab[%d] = %d\n",i+1,tab[i]);}
}


