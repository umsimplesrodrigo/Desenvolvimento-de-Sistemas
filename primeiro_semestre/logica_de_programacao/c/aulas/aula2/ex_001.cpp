#include <stdio.h>
#include <string.h>
#include <locale.h>
#include <stdlib.h>

struct FichaDeAluno {
	char nome[50];
	char disciplina[30];
	float notaProva1;
	float notaProva2;
};

int main() {
	setlocale(LC_ALL, "portuguese");
	struct FichaDeAluno aluno1, aluno2, alunos[10];
	
	strcpy(aluno1.nome, "Jao");
	strcpy(aluno1.disciplina, "LP");
	aluno1.notaProva1 = 7.5;
	aluno1.notaProva2 = 10;
	
	printf("%s\n", aluno1.nome);
	printf("%s\n", aluno1.disciplina);
	printf("%f\n", aluno1.notaProva1);
	printf("%f\n\n",  aluno1.notaProva2);
	
	//system("cls");
	
	printf("Informe o nome do aluno 2: ");
	gets(aluno2.nome);
	
	printf("Informe a diciplina do aluno 2: ");
	gets(aluno2.disciplina);
	
	printf("Informe a nota da prova 1 do aluno 2: ");
	scanf("%f", &aluno2.notaProva1);
	
	printf("Informe a nota da prova 2 do aluno 2: ");
	scanf("%f", &aluno2.notaProva2);
	
	printf("\n%s\n", aluno2.nome);
	printf("%s\n", aluno2.disciplina);
	printf("%f\n", aluno2.notaProva1);
	printf("%f\n\n",  aluno2.notaProva2);
	
	strcpy(alunos[0].nome, "JecaPauGordin");
	
	printf("%s", alunos[0]);
}