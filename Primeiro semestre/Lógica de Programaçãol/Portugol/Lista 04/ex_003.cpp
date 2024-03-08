/*Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se
somar os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se
atribuir o resultado para uma variável C e mostrar seu conteúdo na tela.*/
#include <stdio.h>

int main() {
	float a, b, c;
	
	printf("Infome o valor de A: ");
	scanf("%f", &a);
	
	printf("Infome o valor de B: ");
	scanf("%f", &b);
	
	if (a ==  b) {
		c = a + b;
		printf("%f ", c);	
	} else {
		c = a * b;
		printf("%f ", c);
	}
}
