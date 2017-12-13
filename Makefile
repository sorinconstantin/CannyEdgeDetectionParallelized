CC = gcc
CFLAGS = -g -Wall


serial: canny_edge.c
	$(CC) $(CFLAGS) $^ -o $@ -lm

canny_openmp: canny_edge_openmp.c
	$(CC) $(CFLAGS) -fopenmp $^ -o $@ -lm 
