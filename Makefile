all: func.o main.o
	gcc func.o main.o -o app

func.o: func.c
	gcc -c func.c

main.o: main.c
	gcc -c main.c

# run `make static` to build libhello.a
static: func.c func.h
	mkdir -p lib/static
	gcc -c func.c
	ar -crv lib/static/libhello.a func.o

# run `make dynamic` to build libhello.so
dynamic: func.c func.h
	# make lib dir
	# add option '-p' to avoid directory exists error 
	mkdir -p lib/dynamic
	gcc -c func.c
	gcc -shared -fPIC -o libhello.so func.c
	mv libhello.so lib/dynamic

clean:
	# add '-' to ignore errors return by 'rm'
	-rm -f *.o app
