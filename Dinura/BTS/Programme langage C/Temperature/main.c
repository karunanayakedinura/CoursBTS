#include <stdio.h>
#include <stdlib.h>

int main()
{
    int temperature;
    printf("Ce programme affiche l'etat de l'eau en fonction de la temperature choisi par l'utilisateur. \n");
    printf("Saisir une temperature. \n");
    scanf("%d",&temperature);
    if (temperature <= 0)
        {printf("L'etat de l'eau est solide.");
        }
    else if (temperature >=100)
        {printf("L'etat de l'eau est gazeux.");
        }
        else
            {printf("L'etat de l'eau est liquide");
            }
    return 0;
}
