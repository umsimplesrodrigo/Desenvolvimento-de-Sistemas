#include <stdio.h>
#include <stdlib.h>

struct Funcionario {
	char nome[50];
	int idade;
	char cargo[50];
	float salario;
};

int main() {
	float mediaSalarios, somaSalarios = 0;
	struct Funcionario funcionarios[5];
	
	for (int i = 0; i < 5; i++) {
		
		fflush(stdin);
		printf("Informe o nome do funcionario %d: ", i + 1);
		fgets(funcionarios[i].nome, 50, stdin);
		
		fflush(stdin);
		printf("Informe a idade do funcionario %d: ", i + 1);
		scanf("%d", &funcionarios[i].idade);
		
		fflush(stdin);
		printf("Informe a o cargo do funcionario %d: ", i + 1);
		fgets(funcionarios[i].cargo, 50, stdin);
		
		fflush(stdin);
		printf("Informe o salario do funcionario %d: ", i + 1);
		scanf("%f", &funcionarios[i].salario);
		
		somaSalarios += funcionarios[i].salario;
		
		system("cls");
	}
	
	mediaSalarios = somaSalarios / 5;
	
	printf("%f", mediaSalarios);
	
}