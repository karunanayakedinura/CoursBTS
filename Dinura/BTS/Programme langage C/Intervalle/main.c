#include <stdio.h>
#include <stdlib.h>

int main()
{
    float nombre;
    printf("Ce programme va afficher si le nombre choisi est compris entre 2 et 20");
    printf("Saisir un nombre");
    scanf("%f",&nombre);
    if (nombre > 1 && nombre < 21)
        printf("Le nombre %.2f\n est compris entre 2 et 20",nombre);
}
