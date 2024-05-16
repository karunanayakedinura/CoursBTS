#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i = 1,n;
    printf("Veuillez saisir la table que vous souhaitez. \n");
	scanf("%d",&n);
	printf("La table de multiplication de %d est: \n",n);
	while(i<=10)
        {
        printf("%d x %d = %d \n",i,n,i*n);
        i = i+1;
        }
    return 0;
}
