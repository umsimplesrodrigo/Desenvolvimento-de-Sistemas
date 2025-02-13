/*Fa�a um programa que leia um c�digo de opera��o (+, -, * ou /), e tamb�m dois valores inteiros
A e B. O programa deve calcular o resultado da opera��o escolhida aplicado a A e B. Por
exemplo, se a opera��o escolhida foi * e A = 1 e B = 3, o programa deve fornecer como
resultado o valor de 1*3, que � 3.*/
#include <stdio.h>
#include <locale.h> // Para usar a funcao setlocale() para definir um local

int main() {
	setlocale(LC_ALL, "portuguese");
	char operador;
	float a, b, result;
	
	printf("Infome o valor de A: ");
	scanf("%f", &a);
	
	fflush(stdin);
	printf("Infome o operador aritmetico(+ - / *): ");
	scanf("%c", &operador);
	
	printf("Infome o valor de B: ");
	scanf("%f", &b);
	
	switch (operador) {
		case '+': result = a + b;
			break;
		case '-': result = a - b;
			break;
		case '*': result = a * b;
			break;
		case '/': result = a / b;
			break;
		default:
			printf("\nOperador inv�lido!");
			return 1;
	}
	
	printf("%.1f", result);	
}
