#include <stdio.h>
#include <stdlib.h>

int main()
{
    int x,y;
    printf("Ce programme afiche la valeur absolu de la difference entre 2 nombres entiers. \n");
    printf("Saisir x et y. \n");
    scanf("%d%d",&x,&y);
    if (x>y)
        {printf("Le resultat est %d",x-y);
        }
    else
        {printf("Le resultat est %d",y-x);
        }

}
