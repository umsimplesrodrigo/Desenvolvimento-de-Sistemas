/*1- Escreva uma fun��o que recebe as 3 notas de um aluno por par�metro e uma
letra. Se a letra for A o procedimento calcula a m�dia aritm�tica das notas do
aluno, se for P, a sua m�dia ponderada (pesos: 5, 3 e 2). A m�dia calculada
tamb�m deve retornar por par�metro.*/
#include <stdio.h>
#include <locale.h>

float mediaAritmetica, mediaPonderada;

float mediaAlunos(float nota1, float nota2, float nota3, char tipoMedia) {
	float soma, somaProduto;
	soma = nota1 + nota2 + nota3;
	somaProduto = (nota1 * 5 + nota2 * 3 + nota3 * 2);
	mediaAritmetica = soma / 3;
	mediaPonderada = somaProduto / (5 + 3 + 2);
	
	if (tipoMedia == 'A') {
		return mediaAritmetica;
	}
	if (tipoMedia == 'P') {
		return mediaPonderada;
	}
}

int main() {
	setlocale(LC_ALL, "portuguese");
	
	float nota1, nota2, nota3, media;
	char tipoMedia;
	
	printf("Informe 1� nota: ");
	scanf("%f", &nota1);
	printf("Informe 2� nota: ");
	scanf("%f", &nota2);
	printf("Informe 3� nota: ");
	scanf("%f", &nota3);
	
	fflush(stdin);
	printf("Informe o tipo de m�dia (P: Ponderada A: Aritmetica): ");
	scanf("%c", &tipoMedia);
	
	mediaAlunos(nota1, nota2, nota3, tipoMedia);
 
 	if (tipoMedia == 'A') {
 		printf("%f", mediaAritmetica);
 	}
 	if (tipoMedia == 'P') {
 		printf("%f", mediaPonderada);
 	}
	
}

