/*2- Faça uma função que recebe por parâmetro um valor inteiro e retorna o
valor lógico Verdadeiro caso o valor seja par e Falso em caso contrário.*/
#include <stdio.h>
#include <locale.h>

int trueOrFalse;

int parOrImpar(int number) {
	if (number % 2 == 0) {
		trueOrFalse = 1;
		return trueOrFalse;
	}
	else {
		trueOrFalse = 0;
		return trueOrFalse;
	}
}

int main() {
	setlocale(LC_ALL, "portuguese");
	int number;
	
	printf("Informe um número: ");
	scanf("%d", &number);
	
	parOrImpar(number);
	
	printf("%d", trueOrFalse);
}
