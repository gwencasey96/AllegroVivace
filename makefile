CC=gcc 
CFLAGS= -g #debug info for hello.c -Wall #with all errors

hello: hello.o
	$(cc) hello.o -o hello

hello.o: hello.c
	$(cc) -c hello.c

clean: rm*.o hello
