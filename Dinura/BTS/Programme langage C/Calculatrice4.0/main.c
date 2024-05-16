#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int main()
{
    float nombre1,nombre2;
    int a,b,boucle;
    char operateur;
    printf("Cette calculatrice permet de calculer les operations suivantes: somme, soustraction, multiplication, division, modulo, puissance, valeur absolue. \n");
    boucle = 1;
    while (boucle == 1)
        {
        printf("Veuillez saisir un premier nombre , puis un deuxieme nombre. \n");
        scanf("%f%f",&nombre1,&nombre2);
        a = (int)nombre1;
        b = (int)nombre2;
        printf("Veuillez saisir votre operateur: \nPour la somme :'+' \nPour la difference :'-' \nPour le produit :'*' \nPour le quotient :'/'\nPour le modulo :'m' \nPour la puissance :'^' \nPour la valeur absolue :'|'\n");
        fflush(stdin);
        scanf("%c",&operateur);
        switch(operateur)
            {
        case '+' : printf("La somme de %.2f + %.2f = %.2f .\n", nombre1, nombre2, nombre1+nombre2);
            break;
            case '-' : printf("La diference de %.2f - %.2f = %.2f .\n", nombre1,nombre2,nombre1-nombre2);
            break;
            case '*' : printf("Le produit de  %.2f x %.2f = %.2f .\n", nombre1,nombre2,nombre1*nombre2);
            break;
            case '/' : printf("La division de  %.2f / %.2f = %.2f .\n", nombre1,nombre2,nombre1/nombre2);
            break;
            case 'm' :
                if (nombre1<nombre2)
                    printf("Erreur de saisie , le premier nombre doit etre plus grand que le deuxieme nombre.\n");
                else
                    printf("Le modulo de de vos 2 nombres est egale a %d .\n", a%b);
            break;
            case '^' : printf("Le resultat du premier nombre exposant du deuxieme nombre est de %.2f .\n", pow(nombre1,nombre2));
            break;
            case '|' :
                if (nombre1 >= 0 && nombre2 >= 0)
                    printf("La valeur absolue de vos 2 nombres sera de %.2f et %.2f .\n", nombre1,nombre2);
                    else if (nombre1 >= 0 && nombre2 <=0)
                        printf("La valeur absolue de vos 2 nombres sera de %.2f et %.2f .\n", nombre1,-nombre2);
                        else if (nombre1 <= 0 && nombre2 >= 0)
                            printf("La valeur absolue de vos 2 nombres sera de %.2f et %.2f .\n", -nombre1,nombre2);
                else
                    printf("La valeur absolue de vos 2 nombres sera de %.2f et %.2f .\n", -nombre1,-nombre2);
            break;
            default : printf("Erreur de saisie : l'operateur doit etre: \nPour la somme :'+' \nPour la difference :'-' \nPour le produit :'*' \nPour le quotient :'/'\nPour le modulo :'m' \nPour la puissance :'^' \nPour la valeur absolue :'|') \n");
            }
        printf("Voulez vous refaire un autre calcul? (Saisir '1' pour effectuer un autre calcul et '0' pour arreter.)\n");
        scanf("%d",&boucle);
        }
    printf("Arret de la calculatrice.");
    return 0;
}
