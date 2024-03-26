#include <stdio.h>
#include <stdlib.h>

struct Aluno {
	char nome[50];
	int idade;
	char matricula[12];
	float nota;
};

int main() {
	struct Aluno alunos[3];
	for (int i = 0; i < 3; i++) {
		
		fflush(stdin);
		printf("Informe o nome do aluno %d: ", i + 1);
		fgets(alunos[i].nome, 50, stdin);
		
		fflush(stdin);
		printf("Informe a idade do aluno %d: ", i + 1);
		scanf("%d", &alunos[i].idade );
		
		fflush(stdin);
		printf("Informe a matricula do aluno %d: ", i + 1);
		fgets(alunos[i].matricula, 12, stdin);
		
		fflush(stdin);
		printf("Informe a nota do aluno %d: ", i + 1);
		scanf("%f", &alunos[i].nota);
		
		system("cls");
	}
	
	for (int i = 0; i < 3; i++) {
		printf("ALUNO: %d\n", i + 1);
		printf("Nome: %s", alunos[i].nome);
		printf("Idade: %d\n", alunos[i].idade);
		printf("Matricula: %s", alunos[i].matricula);
		printf("Nota: %f\n\n", alunos[i].nota);
	}
}