/*Escreva um algoritmo que calcule a média dos números digitados pelo usuário, se eles forem
pares. Termine a leitura se o usuário digitar zero (0).*/
#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	
	int number, soma = 0, contador = 0, media, totalPar = 0;
	
	do {
		printf("Informe o %d° número: ", contador + 1);
		scanf("%d", &number);
		
		contador ++;

		if (number % 2 == 0 && number != 0) {
			soma += number;
			totalPar ++;
		}
	} while (number != 0);
	
	media = soma / totalPar;
	
	printf("Média dos números pares: %d", media);
}
