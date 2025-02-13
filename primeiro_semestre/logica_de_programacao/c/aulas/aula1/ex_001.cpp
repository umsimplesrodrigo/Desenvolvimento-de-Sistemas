#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <ctype.h>
// #include "local/arquivo.teste" Para incluir um arquivo funcao ou biblioteca

void questao1(), questao2(), questao3(), questao4();

int main() {
	setlocale(LC_ALL, "portuguese");
	int option;
	
	do {
	   printf("\t\t\t##########################\n");
	   printf("\t\t\t## EXERCICIOS - ANEXO 8 ##\n");
	   printf("\t\t\t##########################\n\n");
	   
	   printf("1 - Q1\n");
	   printf("2 - Q2\n");
	   printf("3 - Q3\n");
	   printf("4 - Q4\n");
	   printf("0 - Sair\n");
	   printf("Escolha uma opção: ");
	   scanf("%d", &option);
	   
	   system("pause");
	   system("cls");
	   
	   switch(option) {
		  case 1:
		  	questao1();
		  	break;
		  case 2:
		  	questao2();
		  	break;
		  case 3:
		  	questao3();
		  	break;
		  case 4:
		  	questao4();
		  	break;
		  case 0:
		  	abort();
		  	break;
		  default:
		  	printf("Opção Inválida!!\n");
		  	abort();
	   }
	   	
	} while (option != 0);
}

void questao1() {
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

void questao2() {
	char sexo, estadoCivil[50], sexoUpper, nome[50];
	int tempoCasada;
	
	printf("Informe seu nome: ");
	scanf("%s", nome);
	
	fflush(stdin);
	printf("Informe seu sexo (F/M): ");
	scanf("%c", &sexo);
	
	printf("Informe seu estado civil: ");
	scanf("%s", estadoCivil);
	
	sexoUpper = toupper(sexo); //Funcao que tranforma dados do tipo char em maisculo
	
	if (sexoUpper == 'F' && strcmp(estadoCivil, "Casada") == 0) { //Funcao que compara strings, valor 0 significa que eh verdadeiro
		printf("Quanto tempo de casada: ");
		scanf("%d", &tempoCasada);
	}
}

void questao3() {
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

void questao4() {
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
