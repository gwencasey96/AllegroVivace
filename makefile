CC=gcc 
CFLAGS= -g -Wall  #debug info for hello.c #with all errors

hello: hello.c
	$(CC) hello.c -o hello $$(pkg-config allegro-5 allegro_font-5 --libs --cflags)

.PHONY: clean 
clean:
	rm -f .o
