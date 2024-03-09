#include <stdio.h>

int main() {
	int a, b, c, soma;
	
	printf("Informe o valor de A: "); // Comando de saída
	scanf("%d", &a); // Comando de entrada
	
	printf("Informe o valor de B: ");
	scanf("%d", &b);
	
	printf("Informe o valor de C: ");
	scanf("%d", &c);
	
	soma = a + b;
	
	/*system("pause");
	system("cls");*/
	
	if (soma < c) {
		printf("A soma de A mais B eh menor do que C\n");
		printf("%d < %d", soma, c );
	}
}
