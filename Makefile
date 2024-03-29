CC = gcc
CFLAGS = -Wall -g

build: main

main: main.o operations.o utils.o f_print.o input_data.o f_analyze.o f_clear.o free_all.o
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

f_analyze.o: f_analyze.c
	$(CC) $(CFLAGS) -c $^

f_clear.o: f_clear.c
	$(CC) $(CFLAGS) -c $^

free_all.o: free_all.c
	$(CC) $(CFLAGS) -c $^

run: build
	./main

clean:
	rm -f *.o main

pack:
	zip -FSr 311CA_StaicuDan-Dominic_Tema1.zip README.md Makefile *.c *.h
