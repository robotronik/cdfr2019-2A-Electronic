#include "affichage.h"
#include "afficheGrapheSerie.h"

void efface_colonne_fenetres(calibration_t calib, int x){
  //efface la colonne d'abscisse x de toutes les fenêtres
  int i;
  for(i=0 ; i<calib.nb_fenetre ; i++){
    efface_colonne(calib.tab[i].rendu, x);
  }
}

void efface_colonne(SDL_Renderer* rendu, int x){
  //efface la colonne d'abscisse x de la fenêtre
  if(x>LARGEUR || x<0){
    printf("Erreur dans la fonction \"efface_colonne\", l'abscisse spécifiée n'est pas correcte.\n");
    return;
  }
  if(SDL_SetRenderDrawColor(rendu, COULEUR_FOND_R ,COULEUR_FOND_V ,COULEUR_FOND_B ,COULEUR_FOND_A)!=0){//change la couleur de tracé
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      return;
  }
  SDL_RenderDrawLine(rendu, x, 0, x, HAUTEUR-1);//efface la colonne
  if(SDL_SetRenderDrawColor(rendu, NIVEAU_GRIS, NIVEAU_GRIS, NIVEAU_GRIS ,COULEUR_FOND_A)!=0){//change la couleur de tracé en gris
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      return;
  }
  if(SDL_RenderDrawPoint(rendu, x, ECHELLE_POS_VAL_BAS)!=0){
    fprintf(stderr, "Erreur SDL_RenderDrawPoint : %s", SDL_GetError());
    return;
  }
  if(SDL_RenderDrawPoint(rendu, x, ECHELLE_POS_VAL_HAUT)!=0){
    fprintf(stderr, "Erreur SDL_RenderDrawPoint : %s", SDL_GetError());
    return;
  }
  if(SDL_RenderDrawPoint(rendu, x, (ECHELLE_POS_VAL_BAS+ECHELLE_POS_VAL_HAUT)/2)!=0){
    fprintf(stderr, "Erreur SDL_RenderDrawPoint : %s", SDL_GetError());
    return;
  }
}

void affiche_valeurs_fenetres(float* valeurs, int x, calibration_t cal){
  int i, j;
  for(i=0, j=0 ; i<cal.nb_fenetre ; i++){
    affiche_valeurs(valeurs+j, x, cal.tab[i]);
    SDL_RenderPresent(cal.tab[i].rendu);//applique les changements sur la fenêtre
    j += cal.tab[i].nb_signaux;
  }
}

void affiche_valeurs(float* valeurs, int x, calibration_fenetre cal){
  int y;
  int i;
  for(i=0;i<cal.nb_signaux;i++){
    y = ECHELLE_POS_VAL_HAUT + (ECHELLE_POS_VAL_BAS - ECHELLE_POS_VAL_HAUT)*(1-(valeurs[i]-cal.tab[i].bornes_min)/(cal.tab[i].bornes_max-cal.tab[i].bornes_min));
    //printf("%d %d %d %d\n", y, ECHELLE_POS_VAL_BAS, ECHELLE_POS_VAL_HAUT, ECHELLE_POS_VAL_BAS - ECHELLE_POS_VAL_HAUT);
    if(y<0)y=0;//prend en charge les dépassements de la fenêtre
    if(y>ECHELLE_POS_VAL_BAS)y=ECHELLE_POS_VAL_BAS;
    if(SDL_SetRenderDrawColor(cal.rendu, cal.tab[i].couleurs.r, cal.tab[i].couleurs.g, cal.tab[i].couleurs.b,255)!=0){
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      return;
    }
    if(SDL_RenderDrawPoint(cal.rendu, x, y)!=0){
      fprintf(stderr, "Erreur SDL_RenderDrawPoint : %s", SDL_GetError());
      return;
    }
  }
}

void init_echelle_graphe(SDL_Renderer* rendu, calibration_fenetre cal){
  //Trace l'échelle sur l'image
  if(SDL_SetRenderDrawColor(rendu, 255 ,255 ,255 ,COULEUR_FOND_A)!=0){//change la couleur de tracé en blanc
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      return;
  }
  SDL_RenderDrawLine(rendu, ECHELLE_POS_X_FLECHE, HAUTEUR - ECHELLE_MARGE_BAS, ECHELLE_POS_X_FLECHE, ECHELLE_MARGE_HAUT);//trace la flèche de l'axe des ordonnées
  SDL_RenderDrawLine(rendu, ECHELLE_POS_X_FLECHE, ECHELLE_MARGE_HAUT, ECHELLE_POS_X_FLECHE-ECHELLE_LONGUEUR_BOUT_FLECHE, ECHELLE_MARGE_HAUT+ECHELLE_LONGUEUR_BOUT_FLECHE*2);
  SDL_RenderDrawLine(rendu, ECHELLE_POS_X_FLECHE, ECHELLE_MARGE_HAUT, ECHELLE_POS_X_FLECHE+ECHELLE_LONGUEUR_BOUT_FLECHE, ECHELLE_MARGE_HAUT+ECHELLE_LONGUEUR_BOUT_FLECHE*2);

  //traits horizontaux en gris
  if(SDL_SetRenderDrawColor(rendu, NIVEAU_GRIS, NIVEAU_GRIS, NIVEAU_GRIS,COULEUR_FOND_A)!=0){//change la couleur de tracé en gris
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      return;
  }
  //du bas
  SDL_RenderDrawLine(rendu, ECHELLE_POS_X_FLECHE-5, ECHELLE_POS_VAL_BAS, LARGEUR-1, ECHELLE_POS_VAL_BAS);
  //du haut
  SDL_RenderDrawLine(rendu, ECHELLE_POS_X_FLECHE-5, ECHELLE_POS_VAL_HAUT, LARGEUR-1, ECHELLE_POS_VAL_HAUT);
  //du milieu
  SDL_RenderDrawLine(rendu, ECHELLE_POS_X_FLECHE-5, (ECHELLE_POS_VAL_BAS+ECHELLE_POS_VAL_HAUT)/2, LARGEUR-1, (ECHELLE_POS_VAL_BAS+ECHELLE_POS_VAL_HAUT)/2);


  ////////////pour écrire des valeurs :
  //charge la police
  TTF_Font *police = NULL;
  police = TTF_OpenFont("FreeMono.ttf", TAILLE_POLICE);
  if(police==NULL)printf("ERREUR Impossible d'utiliser la police \"FreeMono.ttf\"\n");
  char chaine[16];
  int i;
  for(i=0;i<cal.nb_signaux;i++){
    sprintf(chaine, "%10f", cal.tab[i].bornes_min);
    affiche_texte(rendu, chaine, 5, ECHELLE_POS_VAL_BAS-TAILLE_POLICE*(cal.nb_signaux-i-1+0.5), cal.tab[i].couleurs, police);
    sprintf(chaine, "%10f", cal.tab[i].bornes_max);
    affiche_texte(rendu, chaine, 5, ECHELLE_POS_VAL_HAUT+TAILLE_POLICE*(i-0.5), cal.tab[i].couleurs, police);
    sprintf(chaine, "%10f", (cal.tab[i].bornes_min+cal.tab[i].bornes_max)/2);
    affiche_texte(rendu, chaine, 5, (ECHELLE_POS_VAL_BAS+ECHELLE_POS_VAL_HAUT)/2+TAILLE_POLICE*(i-0.5), cal.tab[i].couleurs, police);
  }
  TTF_CloseFont(police);
}

int affiche_texte(SDL_Renderer* rendu, char* chaine, int pos_x, int pos_y, SDL_Color couleur, TTF_Font* police){
  //affiche le texte dans la fenêtre, à la position (pos_x, pos_y), retourne 0 si succès et -1 en cas d'échec
  //pour modifier la taille de texte, il faut modifier un paramètre passé à la fonction de chargement de la police
  SDL_Surface* texte = NULL;
  //écrit le texte dans une surface, puis la transforme en une texture
  texte = TTF_RenderText_Solid(police, chaine, couleur);
  SDL_Texture* texture = SDL_CreateTextureFromSurface(rendu, texte);
  SDL_FreeSurface(texte);//on n'a plus besoin de la surface
  if(NULL == texture)
  {
    fprintf(stderr, "Erreur SDL_CreateTextureFromSurface : %s", SDL_GetError());
    return -1;
  }
  SDL_Rect dst = {0, 0, 0, 0};
  SDL_QueryTexture(texture, NULL, NULL, &dst.w, &dst.h);//récupère les dimensions de la texture
  dst.x = pos_x;
  dst.y = pos_y;
  SDL_RenderCopy(rendu, texture, NULL, &dst);//copie la texture dans le rendu, en conservant ses dimensions
  SDL_DestroyTexture(texture);
  return 0;
}

void affiche_couleur_unie(SDL_Renderer* rendu){
  if(SDL_SetRenderDrawColor(rendu, COULEUR_FOND_R ,COULEUR_FOND_V ,COULEUR_FOND_B ,COULEUR_FOND_A)!=0)
  {
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      exit(EXIT_FAILURE);
  }
  if(SDL_RenderClear(rendu)!=0)
  {
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      exit(EXIT_FAILURE);
  }
  SDL_RenderPresent(rendu);//rafraîchit la fenêtre
}
