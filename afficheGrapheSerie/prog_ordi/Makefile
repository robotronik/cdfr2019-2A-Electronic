CC=gcc

CFLAGS=-g -Wall -Wextra -O4
LDFLAGS=


afficheGrapheSerie: afficheGrapheSerie.o
	$(CC) -o $@ $^ $(LDFLAGS) -lSDL2main -lSDL2 -lSDL2_ttf -lm


%.o: %.c
	$(CC) -c $< $(CFLAGS) -lm

clean:
	rm -f *.o
