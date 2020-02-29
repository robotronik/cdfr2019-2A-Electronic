/*
AUTEUR : Guillaume BOUCHEX-BELLOMIÉ
guillaume.bouchex-bellomie@phelma.grenoble-inp.fr
*/



#include <stdio.h>
#include <stdlib.h>
#include <termios.h>
#include <fcntl.h>
#include <unistd.h>
#include <math.h>
#include "afficheGrapheSerie.h"
#include "affichage.h"
#include <SDL2/SDL.h>
#include <SDL2/SDL_ttf.h>//pour pouvoir écrire du texte dans une fenêtre


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
  int j = i;
  calibration_t calib;
  //compte le nombre de fenêtre à créer
  calib.nb_fenetre = 1;
  for(;i<argc-1;i++){//on commence la boucle en gardant l'ancienne valeur de i
    if(strcmp(argv[i+1], "/") == 0){
      calib.nb_fenetre ++;
    }
  }
  calib.tab = calloc(calib.nb_fenetre, sizeof(*(calib.tab)));
  calib.nb_total_signaux = 0;
  int i_fenetre;
  int nb_signaux;
  //compte le nombre de signaux dans chaque fenêtre
  for(i=j, i_fenetre=0, nb_signaux=0 ; i<argc-1 ; i++){//on commence la boucle à partir de j
    if(strcmp(argv[i+1], "/") == 0 || i == argc-2){//i==argc-2 signifie qu'on est dans le dernier tour de boucle
      if(i == argc-2){
        nb_signaux ++;
      }
      if(nb_signaux>5){
        printf("Un maximum de cinq signaux par fenêtre est supporté.\n");
        exit(EXIT_FAILURE);
      }
      calib.tab[i_fenetre].nb_signaux = nb_signaux;
      calib.nb_total_signaux += nb_signaux;
      //alloue les tableaux pour cette fenêtre
      calib.tab[i_fenetre].tab = calloc(nb_signaux, sizeof(calibration_signal));

      nb_signaux = 0;
      i_fenetre ++;
    }else{
      nb_signaux ++;
    }
  }

  int k;
  for(i=j, k=0, i_fenetre=0; i<argc-1 ; i++){//on commence la boucle à partir de j
    if(strcmp(argv[i+1], "/") == 0){
      i_fenetre ++;
      k=0;
      continue;
    }
    if(sscanf(argv[i+1], "%f:%f", &(calib.tab[i_fenetre].tab[k].bornes_min), &(calib.tab[i_fenetre].tab[k].bornes_max))!=2){
      printf("Synthaxe incorrecte %d\n", i);
      affiche_aide(argv[0]);
      //libere_calibration_fenetre(calib);
      exit(EXIT_FAILURE);
    }
    if(calib.tab[i_fenetre].tab[k].bornes_min >= calib.tab[i_fenetre].tab[k].bornes_max){
      printf("La valeur max est plus petite que la valeur min.\n");
      //libere_calibration_fenetre(calib);
      exit(EXIT_FAILURE);
    }
    char r, g, b;
    switch (k) {
      case 0: r=255; g=157; b=0;
      break;//initialise les couleurs qui seront utilisées pour le tracé
      case 1: r=197; g=12; b=41;
      break;
      case 2: r=73; g=158; b=53;
      break;
      case 3: r=45; g=125; b=179;
      break;
      case 4: r=87; g=189; b=181;
      break;
    }
    calib.tab[i_fenetre].tab[k].couleurs.r = r; calib.tab[i_fenetre].tab[k].couleurs.g = g;
    calib.tab[i_fenetre].tab[k].couleurs.b = b; calib.tab[i_fenetre].tab[k].couleurs.a = 255;
    k++;
  }
  affiche_calibration(calib);

  //initialise le port série
  int fd_tty;
  if(init_port_serie(&fd_tty)!=0){
    libere_calibration(calib);
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
  if(TTF_Init()==-1){
    printf("Erreur TTF_Init: %s\n", TTF_GetError());
    exit(EXIT_FAILURE);
  }

  char nom_fenetre[64];
  for(i=0 ; i<calib.nb_fenetre ; i++){
    sprintf(nom_fenetre, "graphe STM32, fenêtre %d", i);
    calib.tab[i].fenetre = SDL_CreateWindow(nom_fenetre, 0, 0, LARGEUR, HAUTEUR, SDL_WINDOW_SHOWN);
    if(calib.tab[i].fenetre == NULL){
      fprintf(stderr, "Erreur SDL_CreateWindow : %s", SDL_GetError());
      SDL_Quit();
      return EXIT_FAILURE;
    }
    calib.tab[i].rendu = SDL_CreateRenderer(calib.tab[i].fenetre, -1, SDL_RENDERER_SOFTWARE);
    if(calib.tab[i].rendu == NULL){
      fprintf(stderr, "Erreur SDL_CreateRender : %s", SDL_GetError());
      SDL_Quit();
      return EXIT_FAILURE;
    }
    //initialise la couleur du fond de la fenêtre
    affiche_couleur_unie(calib.tab[i].rendu);
    init_echelle_graphe(calib.tab[i].rendu, calib.tab[i]);
  }
  //fin de l'initialisation

  //if(lecture_trame(tampon, fd_tty)==-1){//cette trame ne sera pas prise en compte car elle est probablement incomplète, on la récupère juste pour se synchroniser
  //  exit(EXIT_FAILURE);
  //}

  //////////////////////////////////
  //boucle infinie d'affichage
  x=MARGE_DEBUT_AFFICHAGE_GRAPHE;
  while(test_arret()==0){//pour gérer l'arrêt du programme
    remplissage_tampon = lecture_trame(tampon, fd_tty, deboggage);
    if(remplissage_tampon!=-1  && interprete_trame(tampon, remplissage_tampon, valeurs, calib.nb_total_signaux, deboggage)==0){
      if(deboggage!=0) affiche_console_valeurs(valeurs, remplissage_tampon/8);
      affiche_valeurs_fenetres(valeurs, x, calib);

      int abscisse_a_effacer = x+LARGEUR_ESPACE_EFFACE;
      abscisse_a_effacer = abscisse_a_effacer >= LARGEUR ? abscisse_a_effacer-LARGEUR+MARGE_DEBUT_AFFICHAGE_GRAPHE : abscisse_a_effacer;
      efface_colonne_fenetres(calib, abscisse_a_effacer);//efface en avance une colonne de chaque fenêtre

      x++;
      if(x>=LARGEUR){
        x=MARGE_DEBUT_AFFICHAGE_GRAPHE;
      }
    }
  }
  close(fd_tty);
  libere_calibration(calib);
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
  *fd_tty_p = open(CHEMIN_PORT_SERIE, O_RDONLY | O_NOCTTY);//, O_RDWR | O_NDELAY);//RDWR pour lecture et écriture, RDONLY pour lecture seule
  tcgetattr(*fd_tty_p, &tty);//récupère les paramètres de la liaison série
  cfsetispeed(&tty, DEBIT);
  cfsetospeed(&tty, DEBIT);
  //printf("Débit paramétré à 115200 baud.\n");
  tcsetattr(*fd_tty_p, TCSANOW, &tty);//écrit les paramètres de la liaison série
  if(*fd_tty_p <0){
    printf("Impossible d'accéder au port série %s.\n", CHEMIN_PORT_SERIE);
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
  printf("Pour afficher des courbes dans plusieurs fenêtres, utiliser le caractère '/', par exemple :\n");
  printf("%s -5:5 -2:2 / 0:10 \t affichera deux courbes dans une fenêtre et une courbe dans une deuxième fenêtre\n", argv0);
  printf("Pour quitter le programme, cliquez sur la croix de la fenêtre ou appuyer sur la touche \"Échap\".\n");
}
void affiche_option_deboggage(){
  printf("Utilisez l'option -d pour afficher des informations de deboggage.\n");
}

void libere_calibration(calibration_t cal){
  int i;
  if(cal.tab != NULL){
    for(i=0; i<cal.nb_fenetre; i++){
      libere_calibration_fenetre(cal.tab[i]);
    }
    free(cal.tab);
    cal.tab = NULL;
  }
  cal.nb_fenetre = 0;
  cal.nb_total_signaux = 0;
}

void libere_calibration_fenetre(calibration_fenetre cal){
  free(cal.tab);
  SDL_DestroyRenderer(cal.rendu);
  cal.rendu = NULL;
  SDL_DestroyWindow(cal.fenetre);
  cal.fenetre = NULL;
  cal.nb_signaux = 0;
}

void affiche_calibration(calibration_t calib){
  int i, j;
  for(i=0 ; i<calib.nb_fenetre ; i++){
    printf("Fenêtre %d :\n", i);
    for(j=0 ; j<calib.tab[i].nb_signaux ; j++){
      printf("\tsignal %d : borne min : %f ; borne max %f\n", j, calib.tab[i].tab[j].bornes_min, calib.tab[i].tab[j].bornes_max);
    }
  }
}
