#include <stdio.h> 
#include <stdlib.h>
#include <string.h>


int main(int argc, char ** argv,char ** envp)
{
	int i = 0;
	for (i = 0; i < argc; i++)
	{
		printf("Argument %d %s\n", i, argv[i]);
	}
}
