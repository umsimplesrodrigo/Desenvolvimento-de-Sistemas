/*Fa�a um algoritmo que exiba a tabuada de um n�mero x. Obs: tabuada: x*1, x*2 ... x*10;*/
#include <stdio.h>
#include <locale.h>

int main () {
	setlocale(LC_ALL, "portuguese");
	int number, result;
	
	printf("Informe o n�mero: ");
	scanf("%d", &number);
	
	fflush(stdin);
	
	for (int i = 1; i <= 10; i++ ) {
		result = number * i;
		printf("%d * %d = %d\n", i, number, result);
	}
}
