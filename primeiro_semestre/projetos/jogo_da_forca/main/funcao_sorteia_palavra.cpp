#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_PALAVRAS 5
#define TAMANHO_MAXIMO_PALAVRA 20

typedef struct {
    char palavra[TAMANHO_MAXIMO_PALAVRA];
    char dica[TAMANHO_MAXIMO_PALAVRA];
} PalavraComDica;

PalavraComDica listaPalavras[MAX_PALAVRAS] = {
    {"cachorro", "Animal de estimação"},
    {"gato", "Animal doméstico"},
    {"elefante", "Animal grande com tromba"},
    {"leao", "Rei da selva"},
    {"tigre", "Animal selvagem listrado"}
};


PalavraComDica sortearPalavraComDica() {
    srand(time(NULL));

    int indice = rand() % MAX_PALAVRAS;

    return listaPalavras[indice];
}

int main() {
    PalavraComDica palavraSorteada = sortearPalavraComDica();

    printf("Palavra: %s\n", palavraSorteada.palavra);
    printf("Dica: %s\n", palavraSorteada.dica);

    return 0;
}