CC = mpicc
CFLAGS = -O4 -fopt-info-optall-optimized -ftree-vectorize -march=native

SRC = main.c 
OBJ = $(SRC:.c=.o)

all:	hw4

hw4:	$(OBJ)
	@echo LINK $(OBJ) INTO $@
	$(CC) $(OBJ) -lm -o $@

clean:
	rm -f *.o *~ hw4
