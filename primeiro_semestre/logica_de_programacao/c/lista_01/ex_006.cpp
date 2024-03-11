/*Escreva um programa que leia do teclado as duas notas de um aluno, calcule e exiba a média
aritmética das notas. O programa deve, adicionalmente, exibir a mensagem de resultado se o
aluno está aprovado (média superior ou igual a 7,0), em recuperação (média superior ou
igual a 5,0 e inferior a 7,0) ou reprovado (média inferior a 5,0).*/
#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	float notaOne, notaTwo, soma, media;
	
	printf("Informe a 1° nota: ");
	scanf("%f", &notaOne);
	
	printf("Informe a 2° nota: ");
	scanf("%f", &notaTwo);
	
	media = (notaOne + notaTwo) / 2;
	
	if (media >= 7) {
		printf("Parabéns! Você está aprovado. Sua média foi %f", media);
	} 
	else if (media >= 5) {
		printf("Recuperação! Média: %f", media);
	}
	else {
		printf("REPROVADO! Com média %f", media);
	}
}
