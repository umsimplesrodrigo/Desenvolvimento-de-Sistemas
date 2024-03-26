#include <stdio.h>
#include <stdlib.h>

struct Livro {
	char titulo[50];
	char autor[50];
	char anoPublicacao[10];
	float preco;
};

int main() {
	struct Livro livros[10];
	int contador = -1;
	char continarCadastrando = 's';
	
	do {
		contador ++;
		
		fflush(stdin);
		printf("Informe o titulo do livro %d: ", contador + 1);
		fgets(livros[contador].titulo, 50, stdin);
		
		fflush(stdin);
		printf("Informe o autor do livro: ");
		fgets(livros[contador].autor, 50, stdin);
		
		fflush(stdin);
		printf("Informe o ano de publicacao: ");
		fgets(livros[contador].anoPublicacao, 10, stdin);
		
		fflush(stdin);
		printf("Informe o preco do livro: ");
		scanf("%f", &livros[contador].preco);
		
		
		system("cls");
		
		fflush(stdin);
		printf("Deseja continuar cadastrando livros (s/n): ");
		scanf("%c", &continarCadastrando);
		
	} while (continarCadastrando == 's');

	for (int i = 0; i <= contador; i++) {
		printf("Livro: %s", livros[i].titulo);
		printf("Autor: %s\n", livros[i].autor);
	}
	
}