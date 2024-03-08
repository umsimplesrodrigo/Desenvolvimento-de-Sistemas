/*Escreva um programa que leia do teclado as duas notas de um aluno, calcule e exiba a média
aritmética das notas. O programa deve, adicionalmente, exibir uma mensagem de parabéns
caso o aluno esteja aprovado (média superior ou igual a 5,0)*/
#include <stdio.h>

int main() {
	float notaOne, notaTwo, soma, media;
	
	printf("Informe a 1 nota: ");
	scanf("%f", &notaOne);
	
	printf("Informe a 2 nota: ");
	scanf("%f", &notaTwo);
	
	media = (notaOne + notaTwo) / 2;
	
	if (media > 5) {
		printf("Parabens! Voce esta aprovado.");
	} else {
		printf("Infelizmente nao foi dessa vez!");
	}
}
