all: first sum


sum: sum.o
	gcc -o sum.out sum.o
sum.o: sum1.s
	as -o sum.o sum1.s


first: first.o
	gcc -o first.out first.o

first.o: first.s
	as -o first.o first.s

clean:
	rm -rf *.out 
	rm -rf *.o
