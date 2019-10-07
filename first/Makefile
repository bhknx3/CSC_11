# Makefile
all: first

first: first.o
	gcc -o $@ $+

first.o: first.s
	as -o $@ $<

clean:
	rm -rf first *.o
