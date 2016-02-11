#include <string.h>
#include <stdio.h>
#include <stdlib.h>

int main()
{
	char * s = malloc(100);
	scanf("%s", s);
	int res = strcmp(s, "abcdef");
	if(res == 0)
	{
		printf("You got it!");
	}
	
}
