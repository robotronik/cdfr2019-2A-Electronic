#ifndef AFFICHEGRAPHESERIE
#define AFFICHEGRAPHESERIE

#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>

struct flottant_divise {char A:8, B:8, C:8, D:8;}; //utilise des champs de bits pour accéder aux quatre octets d'un flottant
typedef union{
  float val;
  struct flottant_divise octets;
} flottant;

typedef struct{ //structure pour stocker les informations nécessaires au calibrage de l'échelle (ou des échelles) du graphe
  int nb_signaux;
  float* bornes_min;
  float* bornes_max;
  SDL_Color* couleurs;
} calibration_echelle;


int lecture_trame(unsigned char* tampon, int fd_tty, int deboggage);
int init_port_serie(int* fd_tty_p);
int interprete_trame(unsigned char* tampon, int remplissage_tampon, float* valeurs, int nb_signaux, int deboggage);
void efface_colonne(SDL_Renderer* rendu, int x);
void affiche_valeurs(float* valeurs, SDL_Renderer* rendu, int x, calibration_echelle cal);
void affiche_console_valeurs(float* valeurs, int nb_valeurs);
void affiche_aide(char* argv0);
void affiche_option_deboggage();
void libere_calibration_echelle(calibration_echelle cal);
void affiche_calibration(calibration_echelle cal);
void init_echelle_graphe(SDL_Renderer* rendu, calibration_echelle cal);
int test_arret();
int affiche_texte(SDL_Renderer* rendu, char* chaine, int pos_x, int pos_y, SDL_Color couleur, TTF_Font* police);

#endif
