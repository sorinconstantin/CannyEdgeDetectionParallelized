CC = gcc
CFLAGS = -g -Wall


serial: ./src/canny_edge.c
	$(CC) $(CFLAGS) $^ -o $@ -lm

canny_openmp: ./src/canny_edge_openmp.c
	$(CC) $(CFLAGS) -fopenmp $^ -o $@ -lm 
