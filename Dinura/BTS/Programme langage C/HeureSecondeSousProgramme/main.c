#include <stdio.h>
#include <stdlib.h>
int heure (int h2, int m2, int s2)
	{
	while (m2 != 0)
        {
		m2 = m2 - 1;
		s2 = s2 + 60;
        }
	while (h2 != 0)
        {
		h2 = h2 - 1;
		s2 = s2 + 3600;
        }
    return s2;
	}
char seconde (int s3)
    {
    int h3,m3;
    h3 = 0;
    m3 = 0;
    while (s3 >= 3600)
        {
		s3 = s3 - 3600;
        h3 = h3 + 1;
        }
	while (s3 >= 60)
        {
		s3 = s3 - 60;
		m3 = m3 + 1;
        }
    return printf("%02d:%02d:%02d",h3,m3,s3);
    }
int main()
{
    int h,m,s,h1,m1,s1,diffsec;
    printf("Ce programme va calculer et afficher la difference en secondes de ces 2 horaires, puis l'afficher en h,m,s. \n");
    printf("Veuillez saisir la premiere heure , minute et seconde. \n");
    scanf("%d%d%d",&h,&m,&s);
    printf("Veuillez saisir la deuxieme heure, minute et seconde. \n");
    scanf("%d%d%d",&h1,&m1,&s1);
    diffsec = heure(h,m,s) - heure(h1,m1,s1);
    if (diffsec <= 0)
        diffsec = -diffsec;
    else
        diffsec = diffsec;
    printf("La difference de secondes entre les 2 horaires est de : %d \n",diffsec);
    printf("Son affichage en format heure:minute:seconde est de \n");
    printf("%c",seconde(diffsec));
    return 0;
}
