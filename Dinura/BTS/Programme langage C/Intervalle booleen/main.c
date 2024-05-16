#include <stdio.h>
#include <stdlib.h>
#define true 1
#define false 0
int main()
{
    int nombre,appartient;
    printf ("Ce programme va afficher si le nombre choisi est compris dans l'intervalle [5,10] ou [15,20]. \n");
    printf ("Veuillez saisir un nombre. \n");
    scanf("%d",&nombre);
    appartient = ( nombre <= 10 && nombre >= 5) || ( nombre >= 15 && nombre <= 20);
    if (appartient)
        {printf ("Votre nombre choisi appartient bien aux intervalles definis");
        }
    else
        {printf ("Votre nombre choisi n'appartient pas aux intervalles definis");
        }
    return 0;
}
