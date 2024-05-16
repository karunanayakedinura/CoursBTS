#include <stdio.h>
#include <stdlib.h>

int main()
{
    int somme = 0,compteur = 0, nombre;
    printf("Ce programme va afficher et calculer la somme des entiers de 1 au nombre que vous souhaitez. \n");
    printf("Veuillez saisir le nombre limite que vous souhaitez. \n");
    scanf("%d",&nombre);
    while (compteur != nombre)
        {
        compteur = compteur + 1;
        somme = somme + compteur;
        }
    printf("La somme des entiers de 1 a %d sera de %d",nombre,somme);
    return 0;
}
