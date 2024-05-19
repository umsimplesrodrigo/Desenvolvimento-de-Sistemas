#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Jogador {
    char nome[50];
    char marcador;
    int vitorias;
} jogadores[2];

char tabuleiro[3][3] = { {'1', '2', '3'},
                         {'4', '5', '6'},
                         {'7', '8', '9'} };

int jogador_atual = 0;
int empates = 0;

void desenharTabuleiro() {
    system("clear"); // system("cls");
    printf("%s (X)  -  %s (O)\n\n", jogadores[0].nome, jogadores[1].nome);
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c  \n", tabuleiro[0][0], tabuleiro[0][1], tabuleiro[0][2]);
    printf("_____|_____|_____\n");
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c  \n", tabuleiro[1][0], tabuleiro[1][1], tabuleiro[1][2]);
    printf("_____|_____|_____\n");
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c  \n", tabuleiro[2][0], tabuleiro[2][1], tabuleiro[2][2]);
    printf("     |     |     \n\n");
    printf("Acesse nosso repositório no github: \n");
    printf("https://github.com/umsimplesrodrigo/Desenvolvimento-de-Sistemas\n\n");
}

void resetarTabuleiro() {
    char novo_tabuleiro[3][3] = { {'1', '2', '3'},
                                  {'4', '5', '6'},
                                  {'7', '8', '9'} };
    memcpy(tabuleiro, novo_tabuleiro, sizeof(tabuleiro));
}

int colocarMarcador(int slot) {
    int linha = (slot - 1) / 3;
    int coluna = (slot - 1) % 3;

    if (tabuleiro[linha][coluna] != 'X' && tabuleiro[linha][coluna] != 'O') {
        tabuleiro[linha][coluna] = jogadores[jogador_atual].marcador;
        return 1;
    } else {
        return 0;
    }
}

int verificarVencedor() {
    // Linhas
    for (int i = 0; i < 3; i++) {
        if (tabuleiro[i][0] == tabuleiro[i][1] && tabuleiro[i][1] == tabuleiro[i][2]) {
            return jogador_atual;
        }
    }
    // Colunas
    for (int i = 0; i < 3; i++) {
        if (tabuleiro[0][i] == tabuleiro[1][i] && tabuleiro[1][i] == tabuleiro[2][i]) {
            return jogador_atual;
        }
    }
    // Diagonais
    if (tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[1][1] == tabuleiro[2][2]) {
        return jogador_atual;
    }
    if (tabuleiro[0][2] == tabuleiro[1][1] && tabuleiro[1][1] == tabuleiro[2][0]) {
        return jogador_atual;
    }

    return -1; // Agora retorna -1 pois 0 agora é um índice que define um jogador
}

void trocarJogador() {
    jogador_atual = (jogador_atual + 1) % 2;
}

void mostrarPlacar() {
    printf("Placar:\n");
    printf("%s: %d\n", jogadores[0].nome, jogadores[0].vitorias);
    printf("%s: %d\n", jogadores[1].nome, jogadores[1].vitorias);
    printf("Empates: %d\n", empates);
}

void jogo() {
    printf("Jogador 1, informe seu nome: ");
    fgets(jogadores[0].nome, sizeof(jogadores[0].nome), stdin);
    jogadores[0].nome[strcspn(jogadores[0].nome, "\n")] = 0;
    jogadores[0].marcador = 'X';
    jogadores[0].vitorias = 0;

    printf("Jogador 2, informe seu nome: ");
    fgets(jogadores[1].nome, sizeof(jogadores[1].nome), stdin);
    jogadores[1].nome[strcspn(jogadores[1].nome, "\n")] = 0;
    jogadores[1].marcador = 'O';
    jogadores[1].vitorias = 0;

    while (1) {
        desenharTabuleiro();
        int jogador_vencedor = -1;

        for (int i = 0; i < 9; i++) {
            printf("É a vez de %s. Insira o número do campo: ", jogadores[jogador_atual].nome);
            char entrada[10];
            scanf("%s", entrada);

            int slot = atoi(entrada);

            if (slot < 1 || slot > 9 || entrada[1] != '\0') {
                printf("Campo inválido! Tente novamente.\n");
                i--;
                continue;
            }

            if (!colocarMarcador(slot)) {
                printf("Campo ocupado! Tente novamente.\n");
                i--;
                continue;
            }

            desenharTabuleiro();

            jogador_vencedor = verificarVencedor();

            if (jogador_vencedor != -1) {
                printf("Parabens! %s, você é o(a) vencedor(a)!\n\n", jogadores[jogador_vencedor].nome);
                jogadores[jogador_vencedor].vitorias++;
                break;
            }

            trocarJogador();
        }

        if (jogador_vencedor == -1) {
            printf("Empate!!\n\n");
            empates++;
        }

        int escolha;

        printf("|--------MENU--------|\n");
        printf("| 1- Jogar novamente |\n");
        printf("| 2- Ver placar      |\n");
        printf("| 3- Sair            |\n");
        printf("|--------------------|\n");
        printf("Escolha uma opção: ");
        scanf("%d", &escolha);

        if (escolha == 1) {
            resetarTabuleiro();
            jogador_atual = 0;
        } else if (escolha == 2) {
            mostrarPlacar();
            printf("Pressione Enter para continuar...");
            getchar(); // Limpar buffer
            getchar(); // Esperar Enter, ou qualquer outra tecla
        } else {
            break;
        }
    }
}

int main() {
    jogo();
    return 0;
}
