/*3- Faça uma função que recebe a idade de uma pessoa em anos, meses e dias
e retorna essa idade expressa em dias.*/
#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

int totalDias;

int idade(int anos, int meses, int dias) {
	totalDias = (anos * 365) + (meses * 30) + dias;
	
	return totalDias;
}

int main() {
	setlocale(LC_ALL, "portuguese");
	
	int anos, meses, dias;
	
	printf("Informe quantos anos você possui: ");
	scanf("%d", &anos);
	printf("Quantos meses: ");
	scanf("%d", &meses);
	printf("Quantos dias: ");
	scanf("%d", &dias);
	
	idade(anos, meses, dias);
	
	system("cls");
	
	printf("Você tem %d dias de vividos: ", totalDias);
}
