######################################################################
#CC=gcc 
#CFLAGS= -g -Wall  #debug info for hello.c #with all errors

#hello: hello.c
#	$(CC) hello.c -o hello $$(pkg-config allegro-5 allegro_font-5 --libs --CFLAGS)

#.PHONY: clean 
#clean:
#	rm -f hello

#help:
#	@echo ' clean -remove source files'
#	@echo ' hello -compile source files'
#	@echo ' help  -lists targets       '

##########################################################################

CC=gcc
CFLAGS= -g -Wall  #debug info for hello.c #with all errors

hello: hello.c
	$(CC)$(CFLAGS) hello.c -o hello $$(pkg-config allegro-5 allegro_font-5 --libs --cflags)

.PHONY: clean help
clean:
	rm -f hello

help:
	@echo 'clean -remove source files'

	@echo 'help -lists targets'

	@echo 'hello -compile sources files'

