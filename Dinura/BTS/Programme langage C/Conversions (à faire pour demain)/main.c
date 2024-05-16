#include <stdio.h>
#include <stdlib.h>

void convert_duree(int duree)
{
    int H,M,S;
	H = duree / 3600;
	M = (duree % 3600) / 60;
	S = (duree % 3600) % 60;
	printf("Une duree de %d sec correspond a  %02d:%02d:%02d\n",duree,H,M,S);
}
int convert_horaire(int h,int m, int s)
{
    return h*3600+m*60+s;
}

int main()
{
    int h,m,s,duree,h2,m2,s2,duree2,diff ;
    printf("Le programme demande a l’utilisateur de saisir un nombre de secondes compris entre 0 et 86400 secondes et affiche la conversion sous forme HH:MM:SS\n");
    do
        {
        printf("Saisir heure");
        scanf("%d",&h);
        }while(h<0 ||h>23);
    do
        {
        printf("Saisir minute");
        scanf("%d",&m);
        }while(m<0 ||m>59);
    do
        {
        printf("Saisir seconde");
        scanf("%d",&s);
        }while(s<0 ||s>59);
        duree=convert_horaire(h,m,s);
        do
        {
        printf("Saisir heure");
        scanf("%d",&h2);
        }while(h2<0 ||h2>23);
    do
        {
        printf("Saisir minute");
        scanf("%d",&m2);
        }while(m2<0 ||m2>59);
    do
        {
        printf("Saisir seconde");
        scanf("%d",&s2);
        }while(s2<0 ||s>259);
        duree2=convert_horaire(h2,m2,s2);
    if (duree<duree2)
        diff = duree2 - duree;
    else
        diff = duree - duree2;
    convert_duree(diff);
    return 0;
}
