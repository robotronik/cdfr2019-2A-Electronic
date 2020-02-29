#ifndef AFFICHEGRAPHESERIE
#define AFFICHEGRAPHESERIE

#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>

//paramètre de la liaison série
#define FIN_TRAME 10 //le caractère de fin de trame

#define DEBIT B921600
#define CHEMIN_PORT_SERIE "/dev/ttyACM1" //généralement /dev/ttyACM0
#define TAILLE_TAMPON 128//taille du tampon de réception des trames, le nombre maximum de flottant pouvant composer une trame

//paramètres de l'affichage
#define HAUTEUR 600//les dimensions de la fenêtre graphique
#define LARGEUR 1900
#define LARGEUR_ESPACE_EFFACE 40

#define ECHELLE_MARGE_BAS 6//HAUTEUR/100
#define ECHELLE_MARGE_HAUT 6
#define ECHELLE_POS_X_FLECHE 120 //position en abscisse de la flèche
#define ECHELLE_LONGUEUR_BOUT_FLECHE 6
#define MARGE_DEBUT_AFFICHAGE_GRAPHE ECHELLE_POS_X_FLECHE+ECHELLE_LONGUEUR_BOUT_FLECHE+1

#define ECHELLE_POS_VAL_BAS 588//HAUTEUR-2*ECHELLE_MARGE_BAS
#define ECHELLE_POS_VAL_HAUT 24//ECHELLE_MARGE_HAUT+ECHELLE_LONGUEUR_BOUT_FLECHE*3

#define COULEUR_FOND_R 0//la couleur d'arrière plan de la fenêtre
#define COULEUR_FOND_V 0
#define COULEUR_FOND_B 0
#define COULEUR_FOND_A 0
#define NIVEAU_GRIS 64
#define TAILLE_POLICE 16

struct flottant_divise {char A:8, B:8, C:8, D:8;}; //utilise des champs de bits pour accéder aux quatre octets d'un flottant
typedef union{
  float val;
  struct flottant_divise octets;
} flottant;

typedef struct{
  float bornes_min;
  float bornes_max;
  SDL_Color couleurs;//couleur du tracé
} calibration_signal;

typedef struct{ //structure pour stocker les informations nécessaires au calibrage de l'échelle (ou des échelles) du graphe
  int nb_signaux;
  calibration_signal* tab;
  SDL_Window* fenetre;
  SDL_Renderer* rendu;
} calibration_fenetre;

typedef struct{
    calibration_fenetre* tab;
    int nb_fenetre;
    int nb_total_signaux;
} calibration_t;

int lecture_trame(unsigned char* tampon, int fd_tty, int deboggage);
int init_port_serie(int* fd_tty_p);
int interprete_trame(unsigned char* tampon, int remplissage_tampon, float* valeurs, int nb_signaux, int deboggage);
void affiche_console_valeurs(float* valeurs, int nb_valeurs);
void affiche_aide(char* argv0);
void affiche_option_deboggage();
void libere_calibration(calibration_t cal);
void libere_calibration_fenetre(calibration_fenetre cal);
void affiche_calibration(calibration_t cal);
int test_arret();

#endif
