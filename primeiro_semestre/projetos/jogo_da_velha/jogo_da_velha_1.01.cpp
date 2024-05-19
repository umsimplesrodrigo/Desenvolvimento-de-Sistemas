#include <stdio.h>
#include <stdlib.h>

char tabuleiro[3][3] = { {'1', '2', '3'},
                         {'4', '5', '6'},
                         {'7', '8', '9'} };

char marcador_jogador1;
char marcador_atual;
int jogador_atual;

void desenharTabuleiro() {
    char marcador_jogador2;
    
    if (marcador_jogador1 == 'X') {
    	marcador_jogador2 = 'O';
	} else {
		marcador_jogador2 = 'X';
	}
	
	system("cls"); // Use system("cls"); if you are on Windows
    printf("Jogador 1 (%c)  -  Jogador 2 (%c)\n\n", marcador_jogador1, marcador_jogador2);
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c  \n", tabuleiro[0][0], tabuleiro[0][1], tabuleiro[0][2]);
    printf("_____|_____|_____\n");
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c  \n", tabuleiro[1][0], tabuleiro[1][1], tabuleiro[1][2]);
    printf("_____|_____|_____\n");
    printf("     |     |     \n");
    printf("  %c  |  %c  |  %c  \n", tabuleiro[2][0], tabuleiro[2][1], tabuleiro[2][2]);
    printf("     |     |     \n\n");
}

int colocarMarcador(int slot) {
    int linha = (slot - 1) / 3;
    int coluna = (slot - 1) % 3;

    if (tabuleiro[linha][coluna] != 'X' && tabuleiro[linha][coluna] != 'O') {
        tabuleiro[linha][coluna] = marcador_atual;
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

    return 0;
}

void trocarJogadorEMarcador() {
    if (marcador_atual == 'X') {
        marcador_atual = 'O';
    } else {
        marcador_atual = 'X';
    }

    if (jogador_atual == 1) {
        jogador_atual = 2;
    } else {
        jogador_atual = 1;
    }
}

void jogo() {
    printf("Jogador 1, escolha seu marcador (X ou O): ");
    while (1) {
        scanf(" %c", &marcador_jogador1);
        if (marcador_jogador1 == 'X' || marcador_jogador1 == 'O') {
            break;
        } else {
            printf("Marcador inválido! Escolha X ou O: ");
        }
    }

    jogador_atual = 1;
    marcador_atual = marcador_jogador1;

    desenharTabuleiro();

    int jogador_vencedor = 0;

    for (int i = 0; i < 9; i++) {
        printf("É a vez do jogador %d. Insira o número do campo: ", jogador_atual);
        int slot;
        scanf("%d", &slot);

        if (slot < 1 || slot > 9) {
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

        if (jogador_vencedor == 1) {
            printf("Jogador 1 vence!\n");
            break;
        }
        if (jogador_vencedor == 2) {
            printf("Jogador 2 vence!\n");
            break;
        }

        trocarJogadorEMarcador();
    }

    if (jogador_vencedor == 0) {
        printf("É um empate!\n");
    }
}

int main() {
    jogo();
    return 0;
}
