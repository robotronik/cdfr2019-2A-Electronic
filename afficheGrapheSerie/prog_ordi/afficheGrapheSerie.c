#include <stdio.h>
#include <stdlib.h>
#include <termios.h>
#include <fcntl.h>
#include <unistd.h>
#include <math.h>
#include "afficheGrapheSerie.h"
#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>//pour pouvoir écrire du texte dans une fenêtre

//paramètre de la liaison série
#define FIN_TRAME 10 //le caractère de fin de trame

#define DEBIT B921600
#define TAILLE_TAMPON 64//taille du tampon de réception des trames, le nombre maximum de flottant pouvant composer une trame

//paramètres de l'affichage
#define HAUTEUR 600//les dimensions de la fenêtre graphique
#define LARGEUR 1200
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

/*

typedef struct _IplImage
{
  // ...
  int  width;      // nb de colonnes de la matrice
  int  height;     // nb de lignes de la matrice
  // ...
  int  imageSize;  // taille totale des données en octets
  char *imageData; // pointeur sur les données
  int  widthStep;  // largeur d'une ligne en octets
  // ...
}
IplImage;
*/

int main (int argc, char* argv[])
{
  /*
  printf("argc :%d ", argc);
  int i;
  for(i=0;i<argc;i++){
    printf("%s |", argv[i]);
  }
  */
  //récupère les arguments
  if(argc<=1){
    printf("Synthaxe incorrecte\n");
    affiche_aide(argv[0]);
    exit(EXIT_FAILURE);
  }
  int i;
  int deboggage = 0;
  //récupère d'abord les options de la ligne de commande (s'il y en a)
  for(i=0;i<argc-1;i++){
    if(strcmp(argv[i+1], "-d")==0){
      deboggage = 1;//passe en mode deboggage
    }else{
      break;
    }
  }
  //i est égale au nombre d'options valides de la ligne de commande
  calibration_echelle cal;
  cal.nb_signaux = argc-1-i;
  cal.bornes_min = calloc(cal.nb_signaux, sizeof(float));
  cal.bornes_max = calloc(cal.nb_signaux, sizeof(float));
  cal.couleurs = calloc(cal.nb_signaux, sizeof(SDL_Color));
  int j = i;
  for(;i<argc-1;i++){//on commence la boucle en gardant l'ancienne valeur de i
    if(sscanf(argv[i+1], "%f:%f", cal.bornes_min+i-j, cal.bornes_max+i-j)!=2 || cal.bornes_min[i-j]>=cal.bornes_max[i-j]){
      printf("Synthaxe incorrecte %d\n", i);
      affiche_aide(argv[0]);
      libere_calibration_echelle(cal);
      exit(EXIT_FAILURE);
    }
    char r, g, b;
    switch (i-j) {
      case 0: r=255; g=157; b=0;
      break;//initialise les couleurs qui seront utilisées pour le tracé
      case 1: r=197; g=12; b=41;
      break;
      case 2: r=73; g=158; b=53;
      break;
      case 3: r=45; g=125; b=179;
      break;
    }
    cal.couleurs[i-j].r = r; cal.couleurs[i-j].g = g; cal.couleurs[i-j].b = b; cal.couleurs[i-j].a = 255;
  }
  affiche_calibration(cal);
  if(cal.nb_signaux>3){
    printf("Un maximum de quatre signaux est supporté.\n");
    exit(EXIT_FAILURE);
  }

  //initialise le port série
  int fd_tty;
  if(init_port_serie(&fd_tty)!=0){
    exit(EXIT_FAILURE);
  }

  int x;//position sur l'image : x abscisse, y ordonnée
  unsigned char tampon[TAILLE_TAMPON*4];
  float valeurs[TAILLE_TAMPON];
  int remplissage_tampon;

  if (SDL_Init(SDL_INIT_VIDEO) == -1) // Démarrage de la SDL. Si erreur :
  {
    fprintf(stderr, "Erreur d'initialisation de la SDL : %s\n", SDL_GetError()); // Écriture de l'erreur
    exit(EXIT_FAILURE);
  }
  SDL_Window* fenetre = SDL_CreateWindow("graphe STM32", 0, 0, LARGEUR, HAUTEUR, SDL_WINDOW_SHOWN);
  if(fenetre == NULL){
    fprintf(stderr, "Erreur SDL_CreateWindow : %s", SDL_GetError());
    SDL_Quit();
    return EXIT_FAILURE;
  }
  SDL_Renderer* rendu = SDL_CreateRenderer(fenetre, -1, SDL_RENDERER_SOFTWARE);
  if(rendu==NULL){
    fprintf(stderr, "Erreur SDL_CreateRender : %s", SDL_GetError());
    SDL_DestroyWindow(fenetre);
    SDL_Quit();
    return EXIT_FAILURE;
  }
  //initialise la couleur du fond de la fenêtre
  if(SDL_SetRenderDrawColor(rendu, COULEUR_FOND_R ,COULEUR_FOND_V ,COULEUR_FOND_B ,COULEUR_FOND_A)!=0)
  {
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      exit(EXIT_FAILURE);
  }
  if(SDL_RenderClear(rendu)!=0)
  {
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
  }
  SDL_RenderPresent(rendu);//rafraîchit la fenêtre
  //fin de l'initialisation

  if(TTF_Init()==-1){
		printf("Erreur TTF_Init: %s\n", TTF_GetError());
		exit(EXIT_FAILURE);
	}

  init_echelle_graphe(rendu, cal);

  //if(lecture_trame(tampon, fd_tty)==-1){//cette trame ne sera pas prise en compte car elle est probablement incomplète, on la récupère juste pour se synchroniser
  //  exit(EXIT_FAILURE);
  //}

  //////////////////////////////////
  //boucle infinie d'affichage
  x=MARGE_DEBUT_AFFICHAGE_GRAPHE;
  while(test_arret()==0){//pour gérer l'arrêt du programme
    remplissage_tampon = lecture_trame(tampon, fd_tty, deboggage);
    if(remplissage_tampon!=-1  && interprete_trame(tampon, remplissage_tampon, valeurs, cal.nb_signaux, deboggage)==0){
      if(deboggage!=0) affiche_console_valeurs(valeurs, remplissage_tampon/8);
      affiche_valeurs(valeurs, rendu, x, cal);
      SDL_RenderPresent(rendu);//applique les changements sur la fenêtre

      int abscisse_a_effacer = x+LARGEUR_ESPACE_EFFACE;
      abscisse_a_effacer = abscisse_a_effacer >= LARGEUR ? abscisse_a_effacer-LARGEUR+MARGE_DEBUT_AFFICHAGE_GRAPHE : abscisse_a_effacer;
      efface_colonne(rendu, abscisse_a_effacer);//efface en avance une colonne de l'image

      x++;
      if(x>=LARGEUR){
        x=MARGE_DEBUT_AFFICHAGE_GRAPHE;
      }
    }
  }
  close(fd_tty);
  libere_calibration_echelle(cal);
  SDL_DestroyRenderer(rendu);
  SDL_DestroyWindow(fenetre);
  TTF_Quit();
  SDL_Quit();
  exit(EXIT_SUCCESS);
}

int test_arret(){
  //retourne 1 si l'utilisateur demande l'arrêt du programme, et 0 sinon
  SDL_Event evenement;
  while(SDL_PollEvent(&evenement)){//teste tous les évenements qui si sont produits depuis le dernier appel à la fonction "test_arrêt"
    if(evenement.type == SDL_QUIT){//teste si clic sur la croix de la fenêtre
      return 1;
    }
    if(evenement.type == SDL_KEYDOWN && evenement.key.keysym.sym == SDLK_ESCAPE){//teste si appui sur la touche échap
      return 1;
    }
  }
  return 0;
}

int lecture_trame(unsigned char* tampon, int fd_tty, int deboggage){
  //enregistre dans le tampon les octets reçus, jusqu'à rencontrer le saut de ligne
  //retourne le nombre d'octets reçus (sans prendre en compte le caractère de fin de trame), -1 en cas d'erreur
  //si deboggage est différent de 0, affiche les trames reçues dans la console
  int l = 0;
  int nb_lu;
  unsigned char octet;
  if(deboggage!=0) printf("Lecture d'une trame : ");
  do{
    do{
      nb_lu = read(fd_tty, &octet, 1);
      if(nb_lu==0)SDL_Delay(2);
    }while(nb_lu!=1);

    if(deboggage!=0) printf("0x%x ", (unsigned char) octet);
    if((octet>=48 && octet<=57) || (octet>=65 && octet<=70) || (octet>=97 && octet<=102)){//si valeur sous forme ascii (en hexadécimal)
      //stocke la valeur reçue dans le tampon
      if(l>=TAILLE_TAMPON){
        printf("ERREUR Trame reçue trop longue, qui entraine un débordement de la mémoire tampon.\n");
        if(deboggage==0) affiche_option_deboggage();
        return -1;
      }
      tampon[l]=octet;
    }else if(octet!=FIN_TRAME){
      printf("ERREUR Caractère incorrect reçu : %d (ce n'est ni caractère ASCII codant un chiffre hexadécimal, ni un caractère de fin de ligne).\n", octet);
      if(deboggage==0) affiche_option_deboggage();
      return -1;
    }
    l++;
  }while(octet!=FIN_TRAME);
  if(deboggage!=0) printf("\n");
  return l-1;
}

int init_port_serie(int* fd_tty_p){
  //initialise le port série
  //retourne 0 en cas de succès, -1 sinon
  struct termios tty;
  //configuration du port série
  *fd_tty_p = open("/dev/ttyACM0", O_RDONLY | O_NOCTTY);//, O_RDWR | O_NDELAY);//RDWR pour lecture et écriture, RDONLY pour lecture seule
  tcgetattr(*fd_tty_p, &tty);//récupère les paramètres de la liaison série
  cfsetispeed(&tty, DEBIT);
  cfsetospeed(&tty, DEBIT);
  //printf("Débit paramétré à 115200 baud.\n");
  tcsetattr(*fd_tty_p, TCSANOW, &tty);//écrit les paramètres de la liaison série
  if(*fd_tty_p <0){
    printf("Impossible d'accéder au port série ttyACM0.\n");
    return -1;
  }
  return 0;
}

int interprete_trame(unsigned char* tampon, int remplissage_tampon, float* valeurs, int nb_signaux, int deboggage){
  //converti la trame en un tableau de valeurs
  //Les données (des flottant sur 4 octets) sont transmises en ascii en hexadécimal, (un flottant est transmis par 8 octets)
  //donc si le nombre d'octets reçu n'est pas un multiple de 8, il y a une erreur.
  if(remplissage_tampon%8!=0){
    printf("ERREUR Trame incorrecte : le nombre d'octets composants la trame n'est pas cohérent avec le protocole de transmission.\n");
    if(deboggage==0) affiche_option_deboggage();
    return -1;
  }
  if(remplissage_tampon/8 != nb_signaux){
    printf("ERREUR Trame incorrecte : le nombre de signaux reçu n'est pas égale au nombre spécifié en argument du programme.\n");
    if(deboggage==0) affiche_option_deboggage();
    return -1;
  }
  int i;
  unsigned int a, b, c, d, e;
  char temp[12];
  flottant valeur_temp;
  for(i=0;i<remplissage_tampon/8;i++){
    temp[0] = tampon[8*i];
    temp[1] = tampon[8*i+1];
    temp[2] = ' ';
    temp[3] = tampon[8*i+2];
    temp[4] = tampon[8*i+3];
    temp[5] = ' ';
    temp[6] = tampon[8*i+4];
    temp[7] = tampon[8*i+5];
    temp[8] = ' ';
    temp[9] = tampon[8*i+6];
    temp[10] = tampon[8*i+7];
    temp[11] = '\0';
    e = sscanf(temp, "%02x %02x %02x %02x ", &a, &b, &c, &d);
    if(e!=4){
      printf("Erreur lors de la lecture d'une trame %d.\n", e);
      if(deboggage==0) affiche_option_deboggage();
    }
    //printf("%x %x %x %x ", a, b, c, d);
    valeur_temp.octets.A = (unsigned char)a;
    valeur_temp.octets.B = (unsigned char)b;
    valeur_temp.octets.C = (unsigned char)c;
    valeur_temp.octets.D = (unsigned char)d;

    valeurs[i] = valeur_temp.val;
  }
  return 0;
}

void efface_colonne(SDL_Renderer* rendu, int x){
  //efface la colonne d'abscisse x de l'image
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

void affiche_valeurs(float* valeurs, SDL_Renderer* rendu, int x, calibration_echelle cal){
  int y;
  int i;
  for(i=0;i<cal.nb_signaux;i++){
    y = ECHELLE_POS_VAL_HAUT + (ECHELLE_POS_VAL_BAS - ECHELLE_POS_VAL_HAUT)*(1-(valeurs[i]-cal.bornes_min[i])/(cal.bornes_max[i]-cal.bornes_min[i]));
    //printf("%d %d %d %d\n", y, ECHELLE_POS_VAL_BAS, ECHELLE_POS_VAL_HAUT, ECHELLE_POS_VAL_BAS - ECHELLE_POS_VAL_HAUT);
    if(y<0)y=0;//prend en charge les dépassements de la fenêtre
    if(y>ECHELLE_POS_VAL_BAS)y=ECHELLE_POS_VAL_BAS;
    if(SDL_SetRenderDrawColor(rendu, cal.couleurs[i].r,cal.couleurs[i].g,cal.couleurs[i].b,255)!=0){
      fprintf(stderr, "Erreur SDL_SetRenderDrawColor : %s", SDL_GetError());
      return;
    }
    if(SDL_RenderDrawPoint(rendu, x, y)!=0){
      fprintf(stderr, "Erreur SDL_RenderDrawPoint : %s", SDL_GetError());
      return;
    }
  }
}

void affiche_console_valeurs(float* valeurs, int nb_valeurs){
  int i;
  if(nb_valeurs==1){
    printf("Signal reçu : ");
  }else{
    printf("Signaux reçus : ");
  }
  for(i=0;i<nb_valeurs;i++){
    printf("%f ", valeurs[i]);
  }
  printf("\n");
}

void affiche_aide(char* argv0){
  printf("USAGE : %s [option] borne_min_signal_1:borne_max_signal_1 borne_min_signal_2:borne_max_signal_2 ... borne_min_signal_N:borne_max_signal_N\n", argv0);
  printf("option possible : -d\t pour afficher des informations de deboggage\n");
  printf("Pour quitter le programme, cliquez sur la croix de la fenêtre ou appuyer sur la touche \"Échap\".\n");
}
void affiche_option_deboggage(){
  printf("Utilisez l'option -d pour afficher des informations de deboggage.\n");
}

void libere_calibration_echelle(calibration_echelle cal){
  free(cal.bornes_min);
  free(cal.bornes_max);
  cal.nb_signaux = 0;
}

void affiche_calibration(calibration_echelle cal){
  int i;
  if(cal.bornes_max==NULL || cal.bornes_min==NULL){
    printf("ERREUR la structure de calibration n'a pas été initialisée.\n");
    return;
  }
  for(i=0;i<cal.nb_signaux;i++){
      printf("signal %d : borne min : %f ; borne max %f\n", i, cal.bornes_min[i], cal.bornes_max[i]);
  }
}

void init_echelle_graphe(SDL_Renderer* rendu, calibration_echelle cal){
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
    sprintf(chaine, "%10f", cal.bornes_min[i]);
    affiche_texte(rendu, chaine, 5, ECHELLE_POS_VAL_BAS-TAILLE_POLICE*(cal.nb_signaux-i-1+0.5), cal.couleurs[i], police);
    sprintf(chaine, "%10f", cal.bornes_max[i]);
    affiche_texte(rendu, chaine, 5, ECHELLE_POS_VAL_HAUT+TAILLE_POLICE*(i-0.5), cal.couleurs[i], police);
    sprintf(chaine, "%10f", (cal.bornes_min[i]+cal.bornes_max[i])/2);
    affiche_texte(rendu, chaine, 5, (ECHELLE_POS_VAL_BAS+ECHELLE_POS_VAL_HAUT)/2+TAILLE_POLICE*(i-0.5), cal.couleurs[i], police);
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
