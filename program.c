//Meu Primeiro Programa em C

#include <stdio.h>

int main(void){

    int porta = 80;
    char ip[] = "192.168.0.1";
    float ver = 1.1;

    printf("Desec Security\n");
    printf("Scan Vesao: %.1f\n",ver);
    printf("Varrendo host: %s na porta %i\n",ip,porta);

    return 0;
}