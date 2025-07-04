FILES = main.c chunk.c memory.c debug.c

a:
	gcc $(FILES) -o clox
	./clox
