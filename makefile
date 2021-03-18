CC = gcc
CFLAGS = -g -Wall   #debug info for hello.c #with all errors
NOLINKER = -c
all: hello

hello: hello.o util.o
	$(CC) $(CFLAGS) -o hello hello.o util.o $$(pkg-config allegro-5 allegro_font-5 --libs --cflags)

hello.o: hello.c util.h
	$(CC) $(CFLAGS) $(NOLINKER) hello.c $$(pkg-config allegro-5 allegro_font-5 --libs --cflags)

util.o: util.c
	$(CC) $(CFLAGS) $(NOLINKER) util.c $$(pkg-config allegro-5 allegro_font-5 --libs --cflags)



.PHONY: clean help
clean:
	rm -f hello *.o

help:
	@echo 'clean -remove source files'
	@echo 'help -lists targets'
	@echo 'hello -compile sources files'

