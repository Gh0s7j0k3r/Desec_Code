#include <stdio.h>

int main(void){

    int porta;
    char ip[16];
    char text[10];
    
    printf("Desec Security\n");

    printf("Digite o IP \n");
    scanf("%s",&ip);

    printf("Digite a porta \n");
    scanf("%i",&porta);

    printf("Qual o seu nome? \n");
    fgets(text,10,stdin);

    printf("Varrendo host: %s na porta %i\n",ip,porta);
    printf("Nome: %s \n",text);

    return 0;
}