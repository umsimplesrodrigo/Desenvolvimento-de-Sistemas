/*2- Fa�a uma fun��o que recebe por par�metro um valor inteiro e retorna o
valor l�gico Verdadeiro caso o valor seja par e Falso em caso contr�rio.*/
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
	
	printf("Informe um n�mero: ");
	scanf("%d", &number);
	
	parOrImpar(number);
	
	printf("%d", trueOrFalse);
}
