/*4- Fa�a uma fun��o que recebe um valor inteiro e verifica se o valor � positivo
ou negativo. A fun��o deve retornar um valor booleano.*/
#include <stdio.h>
#include <locale.h>

int negativeOrPositive(int number) {
	if (number  >= 0) {
		return 1;
	}
	else {
		return 0;
	}
}

int main() {
	setlocale(LC_ALL, "portuguese");
	
	int number;
	int result;
	
	printf("Informe um valor: ");
	scanf("%d", &number);
	
	result = negativeOrPositive(number);
	
	printf("%d", result);
}
