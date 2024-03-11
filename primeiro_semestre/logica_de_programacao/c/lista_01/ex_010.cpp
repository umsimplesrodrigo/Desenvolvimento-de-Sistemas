/*Desenvolver um algoritmo que receba o valor do salário de uma pessoa e o valor de um
financiamento pretendido. Caso o financiamento seja menor ou igual a 5 vezes o salário da
pessoa, o algoritmo deverá escrever "Financiamento Concedido"; senão, ele deverá escrever
"Financiamento Negado".*/
#include <stdio.h>

int main() {
	float salarioPeople, financiamentoPretendido;
	
	printf("Informe seu salario: ");
	scanf("%f", &salarioPeople);
	
	printf("Financiamento pretendido: ");
	scanf("%f", &financiamentoPretendido);
	
	if (financiamentoPretendido <= (salarioPeople * 5)) {
		printf("Financiamento concedido!");
	} else {
		printf("Financiamento nao concedido!");
	}
}
