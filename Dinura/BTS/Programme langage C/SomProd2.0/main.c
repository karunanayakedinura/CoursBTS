#include <stdio.h>
#include <stdlib.h>

int main()
{
    float nombre1,nombre2;
    char operateur;
    printf("Ce programme affiche et calcule la somme, la diiference , le produit ou le quotient en fonction de l'operateur choisi. \n");
    printf("Veuillez saisir un premier nombre , puis un deuxieme nombre. \n");
    scanf("%f%f",&nombre1,&nombre2);
    printf("Veuillez saisir votre operateur. (pour la somme :'+', pour la difference :'-', pour le produit :'*' et pour le quotient :'/') \n");
    fflush(stdin);
    scanf("%c",&operateur);
    switch(operateur)
        {
         case '+' : printf("La somme de vos 2 nombres est egale a %.2f", nombre1+nombre2);
         break;
         case '-' : printf("La diference de vos 2 nombres est egale a %.2f", nombre1-nombre2);
         break;
         case '*' : printf("Le produit de vos 2 nombres est egale a %.2f", nombre1*nombre2);
         break;
         case '/' : printf("Le quotient de vos 2 nombres est egale a %.2f", nombre1/nombre2);
         break;
         default : printf("Erreur de saisie : l'operateur doit etre soit '+' pour l'addition , '-' pour la soustraction , '*' pour la multiplication ou '/' pour la division \n");
        }
    return 0;
}
