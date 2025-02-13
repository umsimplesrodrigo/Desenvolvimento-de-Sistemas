/*20. Foi feita uma pesquisa entre os habitantes de uma região. Foram coletados os dados de idade,
sexo (M/F) e salário. Faça um algoritmo que informe:
a) a média de salário do grupo;
b) maior e menor idade do grupo;
c) quantidade de homens com salário até R$2000,00.*/
#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	
	float mediaSalario, salario, somaSalario = 0;
	int idade, maiorIdade, menorIdade, qtdHomensSalarios2000 = 0, cttPesquisas = 0;
	char continuar, sexo;
	
	do {
		printf("Idade: ");
		scanf("%d", &idade);
		
		fflush(stdin);
		printf("Sexo (F/M): ");
		scanf("%c", &sexo);
		
		fflush(stdin);
		printf("Salário: ");
		scanf("%f", &salario);
		
		if (cttPesquisas == 0) {
			maiorIdade = idade;
			menorIdade = idade;
		}
		
		if (idade >= maiorIdade) {
			maiorIdade = idade;
		}
		
		if (idade >= menorIdade) {
			menorIdade = idade;
		}
		
		if (salario <= 2000 && sexo == 'M') {
			qtdHomensSalarios2000 ++;
		}
		
		somaSalario += salario;
		cttPesquisas++;
		
		fflush(stdin);
		printf("Deseja continuar a pesquisa (s/n): ");
		scanf("%c", &continuar);
		
	} while(continuar == 's');
	
	mediaSalario = somaSalario / cttPesquisas;
	
	printf("Média salarial: %f\n", mediaSalario);
	printf("Maior idade : %d \nMenor idade: %d\n", maiorIdade, menorIdade);
	printf("Homens com sálario até R$ 2000,00: %d", qtdHomensSalarios2000);
}
