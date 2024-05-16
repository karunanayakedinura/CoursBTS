#include <stdio.h>
#include <stdlib.h>

int main()
{
    int i,c;
    int tab[6] = {0,1,2,3,4,5};
    for (i=0;i<=5;i++)
        {
        while (tab[i] < tab[i+1])
            {
            c = tab[i];
            tab[i] = tab[i+1];
            tab[i+1]=c;
            printf("%d ",tab[i]);
            i = i+1;
            }
        }
}
