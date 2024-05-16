#include <stdio.h>
#include <stdlib.h>

int main()
{
    int nombre;
    printf("Ce programme permet de afficher uniquement les nombres pairs \n");
    printf("Saisir un nombre: \n");
    scanf("%d",&nombre);
    if (nombre%2 == 0)
        printf("Le nombre %d\n est pair",nombre);
}
