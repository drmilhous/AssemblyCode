#include <stdlib.h>
#include <stdio.h>

int main(int argc, char ** argv)
{
	int a = 1;
	int b = 2;
	short c = 3;
	float f = 4;
	if(argc > 3)
	{
		f = 3.14;
		c = -1;
		b = -15;
	}
	else
	{
		f = 8.9;
		c = 255;
		a = 102;
	}
	
	printf("%08X ^^ %lf",a,f);
	printf("%d", a * b* c*f);

}
