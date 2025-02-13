/*5- Escreva uma função que recebe, por parâmetro, um valor inteiro e positivo e
retorna o somatório desse valor.*/
#include <stdio.h>
#include <locale.h>

float result;

float soma(int number1, int number2) {
	
		result = number1 + number2;
		return result;
}

int main() {
	setlocale(LC_ALL, "portuguese");
	
	int number1, number2;
	
	printf("Informe o 1° número: ");
	scanf("%d", &number1);
	printf("Informe o 1° número: ");
	scanf("%d", &number2);
	
	soma(number1, number2);
	
	if (number1 >= 0 && number2 >= 0 ) {
	   printf("Soma dos números positvos: %f", result);
	}
}
