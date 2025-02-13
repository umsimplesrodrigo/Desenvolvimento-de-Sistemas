#include <stdio.h>

int main() {
	float number;
	
	printf("Informe um numero: ");
	scanf("%f", &number);
	
	if (number > 100 && number < 200) {
		printf("%f esta no intervalo entre 100 e 200\n", number);
	} else {
		printf("%f nao esta no intervalo entre 100 e 200\n", number);
	}
}