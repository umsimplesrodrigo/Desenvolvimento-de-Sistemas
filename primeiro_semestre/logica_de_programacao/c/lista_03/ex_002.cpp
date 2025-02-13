#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	
	int numbers[10], soma = 0;
	
	for (int i = 0; i < 10; i++) {
		printf("Informe o %d° valor: ", i + 1);
		scanf("%d", &numbers[i]);
		
		soma += numbers[i];
	}
	
	printf("Soma dos números: %d", soma);
}
