CC=gcc

CFLAGS=-g -Wall -Wextra -O4 -I/usr/include/x86_64-linux-gnu/SDL2
LDFLAGS=


afficheGrapheSerie: afficheGrapheSerie.o affichage.o
	$(CC) -o $@ $^ $(LDFLAGS) -lSDL2main -lSDL2 -lSDL2_ttf -lm


%.o: %.c
	$(CC) -c $< $(CFLAGS)

clean:
	rm -f *.o
