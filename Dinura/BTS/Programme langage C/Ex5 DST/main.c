#include <stdio.h>
#include <stdlib.h>

int main()
{
    int A,A2,B,C;
    printf("Ce programme va afficher et calculer des calculs. \n");
    printf("Veuillez saisir les valeurs de A, B et C. \n");
    scanf("%d%d%d",&A,&B,&C);
    if ((A=B||A!=C)&&(B!=C))
        A2=A+(B-C);
    else
        {
        A=2*C;
        C=2*C;
        printf("A=%d B=%d C=%d",A,B,C);
        }

    if (A2<B)
        {
        B=A2;
        C=3;
        }
    else
        A2=B;

    C=2*C;
    printf("A=%d B=%d C=%d",A2,B,C);
    return 0;
}
