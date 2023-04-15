CC = gcc
CFLAGS = -Wall -g

build: main

main: main.o operations.o utils.o f_print.o input_data.o
	$(CC) -o main $^ 

main.o: main.c
	$(CC) $(CFLAGS) -c $^

operations.o: operations.c
	$(CC) $(CFLAGS) -c $^

utils.o: utils.c
	$(CC) $(CFLAGS) -c $^

f_print.o: f_print.c
	$(CC) $(CFLAGS) -c $^

input_data.o: input_data.c
	$(CC) $(CFLAGS) -c $^

run: build
	./main

clean:
	rm -f *.o main