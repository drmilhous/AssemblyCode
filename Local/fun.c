
#include <stdio.h>
#include <stdlib.h>


int foo(int c, int b, int a)
{
	int tempC = c;
	if(a > b)
		return b +tempC;
	else if( b > a)
		 return b * tempC;
	else
		return a + b;

} 


int main()
{
	int a, b, c;
	scanf("%d %d %d", &a, &b, &c);
	int res = foo(c,b, a);
	printf("%d\n", res);

}



