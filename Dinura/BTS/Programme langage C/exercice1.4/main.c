#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("Le programme calcule et affiche le prix d'un troupeau\n");
    printf("une vache = 300e et un mouton = 100e\n");
    int v, m, pm = 100, pv = 300;
    printf("saisir le nombre de vaches du troupeau, puis le nombre de moutons du troupeau : ");
    scanf("%d %d", &v, &m);
    printf("votre troupeau vaut : %d\n", v * pv + m * pm);
    return 0;
}
