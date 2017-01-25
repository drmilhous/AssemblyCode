#include <stdio.h>
#include <stdlib.h>

int main(int argc, char ** argv)
{
	int * intArray;	
	intArray = malloc(sizeof(int) * 29 );
	for(int i = 0; i < 29; i++)
	{
		//*(intArray + i * 4) = 31; 
		intArray[i] = 31;
	}
	
	intArray[10] = 100;
	return 0;
}
