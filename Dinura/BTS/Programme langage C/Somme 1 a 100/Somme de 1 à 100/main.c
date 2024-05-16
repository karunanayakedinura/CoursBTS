#include <stdio.h>
#include <stdlib.h>

int main()
{
    int somme = 0,compteur = 0;
    printf("Ce programme va afficher et calculer la somme des entiers de 1 a 100. \n");
    while (compteur != 100)
        {
        compteur = compteur + 1;
        somme = somme + compteur;
        }
    printf("La somme des entiers de 1 a 100 sera de %d",somme);
    return 0;
}
