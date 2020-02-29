#ifndef _AFFICHAGE_H
#define _AFFICHAGE_H

#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>//pour pouvoir écrire du texte dans une fenêtre
#include "afficheGrapheSerie.h"

int affiche_texte(SDL_Renderer* rendu, char* chaine, int pos_x, int pos_y, SDL_Color couleur, TTF_Font* police);
void affiche_couleur_unie(SDL_Renderer* rendu);
void init_echelle_graphe(SDL_Renderer* rendu, calibration_fenetre cal);
void efface_colonne_fenetres(calibration_t calib, int x);
void efface_colonne(SDL_Renderer* rendu, int x);
void affiche_valeurs_fenetres(float* valeurs, int x, calibration_t cal);
void affiche_valeurs(float* valeurs, int x, calibration_fenetre cal);









#endif
