/*Escreva um algoritmo que calcule a m�dia dos n�meros digitados pelo usu�rio, se eles forem
pares. Termine a leitura se o usu�rio digitar zero (0).*/
#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	
	int number, soma = 0, contador = 0, media, totalPar = 0;
	
	do {
		printf("Informe o %d� n�mero: ", contador + 1);
		scanf("%d", &number);
		
		contador ++;

		if (number % 2 == 0 && number != 0) {
			soma += number;
			totalPar ++;
		}
	} while (number != 0);
	
	media = soma / totalPar;
	
	printf("M�dia dos n�meros pares: %d", media);
}
