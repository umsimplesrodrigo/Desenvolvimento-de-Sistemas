/*Escrever um algoritmo que l� 5 valores para A, um de cada vez, e conta quantos destes valores
s�o negativos, escrevendo esta informa��o.*/
#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	int numberNegative, qtdNegativeNumber = 0;
	
	for (int i = 1; i < 6; i++) {
		printf("Iforme o %d� numero: ", i);
		scanf("%d", &numberNegative);
		
		if (numberNegative < 0) {
			qtdNegativeNumber ++;
		}
	}
	printf("%d n�meros negativos", qtdNegativeNumber);
}
