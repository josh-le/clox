FILES = main.c chunk.c memory.c debug.c value.c

a:
	gcc $(FILES) -o clox
	./clox
