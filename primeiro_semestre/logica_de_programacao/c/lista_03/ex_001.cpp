#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	int number[8], maiorNumber = number[0], posicaoMaiorNumber;

	for (int i = 0; i < 8; i++) {
		printf("Informe o %d� n�mero: ", i + 1);
		scanf("%d", &number[i]);

		if (number[i] > maiorNumber) {
			maiorNumber = number[i];
			posicaoMaiorNumber = i;
		}
	}
	
	printf("Maior n�mero: %d\n�ndice: %d", maiorNumber, posicaoMaiorNumber);
}
