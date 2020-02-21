#include "afficheGrapheSerieSTM.h"
#include "stm32f4xx_hal.h"
#include <stdio.h>
#include <stdlib.h>

UART_HandleTypeDef huart2;

int transmetFlottant(float val){
  flottant valeur;
  valeur.val = val;
  char tampon[8];
  sprintf(tampon, "%02x%02x%02x%02x", valeur.octets.A, valeur.octets.B, valeur.octets.C, valeur.octets.D);
  HAL_UART_Transmit(&huart2, tampon, 8, 10);
  return 0;
}

int transmetTrame(float* tab_val, int nb_val){
  int i;
  for(i=0;i<nb_val;i++){
    transmetFlottant(tab_val[i]);
  }
  char tampon[2] = "\n";
  HAL_UART_Transmit(&huart2, tampon, 1, 10);
  return 0;
}
