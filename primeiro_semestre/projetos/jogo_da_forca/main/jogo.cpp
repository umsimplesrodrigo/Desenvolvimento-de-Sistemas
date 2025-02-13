#include <stdio.h>
#include <string.h>
#include <ctype.h>

#define MAX_TENTATIVAS 6
#define TAMANHO_PALAVRA 10

void imprimirForca(int tentativas) {
    switch (tentativas) {
        case 0:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        \n");
            printf(" |        \n");
            printf(" |        \n");
            printf(" |        \n");
            printf("|__ \n");
            break;
        case 1:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        0\n");
            printf(" |        \n");
            printf(" |        \n");
            printf(" |        \n");
            printf("|__ \n");
            break;
        case 2:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        0\n");
            printf(" |        |\n");
            printf(" |        \n");
            printf(" |        \n");
            printf("|__ \n");
            break;
        case 3:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        0\n");
            printf(" |       /|\n");
            printf(" |        \n");
            printf(" |        \n");
            printf("|__ \n");
            break;
        case 4:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        0\n");
            printf(" |       /|\\\n");
            printf(" |        \n");
            printf(" |        \n");
            printf("|__ \n");
            break;
        case 5:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        0\n");
            printf(" |       /|\\\n");
            printf(" |       / \n");
            printf(" |        \n");
            printf("|__ \n");
            break;
        case 6:
            printf("  ____\n");
            printf(" |        |\n");
            printf(" |        0\n");
            printf(" |       /|\\\n");
            printf(" |       / \\\n");
            printf(" |        \n");
            printf("|__ \n");
            break;
    }
}

int main() {
    char palavra[TAMANHO_PALAVRA + 1];
    char letrasErradas[MAX_TENTATIVAS];
    char letrasCertas[TAMANHO_PALAVRA];
    int tentativas = 0;
    int letrasDescobertas = 0;

    printf("Digite a palavra a ser adivinhada (maximo de %d caracteres): ", TAMANHO_PALAVRA);
    scanf("%s", palavra);
    while (getchar() != '\n');

    for (int i = 0; i < strlen(palavra); i++) {
        letrasCertas[i] = ' ';
    }

    while (tentativas < MAX_TENTATIVAS) {
        imprimirForca(tentativas);
        printf("\nPalavra: ");
        for (int i = 0; i < strlen(palavra); i++) {
            if (letrasCertas[i] == ' ') {
                printf("_ ");
            } else {
                printf("%c ", letrasCertas[i]);
            }
        }
        printf("\n");

        if (letrasDescobertas == strlen(palavra)) {
            printf("Parabens, voce descobriu a palavra!\n");
            break;
        }

        char letra;
        printf("Digite uma letra: ");
        scanf(" %c", &letra);
        while (getchar() != '\n');

        bool jaTentada = false;
        for (int i = 0; i < tentativas; i++) {
            if (tolower(letrasErradas[i]) == tolower(letra)) {
                jaTentada = true;
                break;
            }
        }
        if (jaTentada) {
            printf("Voce ja tentou essa letra. Tente outra.\n");
            continue;
        }

        bool acertou = false;
        for (int i = 0; i < strlen(palavra); i++) {
            if (tolower(palavra[i]) == tolower(letra)) {
                letrasCertas[i] = palavra[i];
                letrasDescobertas++;
                acertou = true;
            }
        }

        if (!acertou) {
            letrasErradas[tentativas] = letra;
            tentativas++;
        }
    }

    if (tentativas == MAX_TENTATIVAS) {
        imprimirForca(tentativas);
        printf("Voce perdeu! A palavra era: %s\n", palavra);
    }

    return 0;
}