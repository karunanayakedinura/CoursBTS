#include <stdio.h>
#include <stdlib.h>
#define TRUE 1
#define FALSE 0
int main()
{
    int compteur = 0;
    char carac;
    trouve = FALSE;
    printf("Ce programme va afficher si vous avez gagne ou perdu au bout de 3 essais. \n");
    printf("Veuillez saisir un caractere. \n");
    scanf("%c",&carac);
    fflush(stdin);
    fflush(stdin);
    while (!trouve && carac != '0')
        {
        printf("Essai n° %d",compteur);
        scanf("%c",&carac);
        if (carac == '0')
            trouve = TRUE;
        compteur = compteur + 1;
        }
    if (trouve)
        printf("Vous avez gagne");
    else
        printf("Vous avez perdu.");
    return 0;
}

