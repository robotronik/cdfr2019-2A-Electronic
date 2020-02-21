//structure pour récupérer les 4 octets composants une variable de type float
typedef union{
  float val;
  struct {unsigned char A:8;unsigned char B:8;unsigned char C:8;unsigned char D:8;}octets;
}flottant;

int transmetTrame(float* tab_val, int nb_val);
int transmetFlottant(float val);
