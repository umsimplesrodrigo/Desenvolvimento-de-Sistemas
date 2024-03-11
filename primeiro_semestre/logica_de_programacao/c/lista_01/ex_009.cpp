/*Elabore um algoritmo que, dada a idade de um nadador. Classifique-o em uma das seguintes
categorias:

Infantil A = 5 – 7 anos
Infantil B = 8 – 10 anos
Juvenil A = 11 – 13 anos
Juvenil B = 14 – 17 anos
Sênior = 18 – 25 anos

Apresentar mensagem “idade fora da faixa etária” quando for outro ano não contemplado.*/
#include <stdio.h>

int main() {
	int idadeNadador;
	
	printf("Informe sua idade: ");
	scanf("%d", &idadeNadador);
	
	if (idadeNadador > 18 && idadeNadador < 25) {
		printf("Categoria: Senior");
	} else if (idadeNadador > 14 && idadeNadador < 17) {
		printf("Categoria: Juvenil B");
	} else if (idadeNadador > 11 && idadeNadador < 13) {
		printf("Categoria: Juvenil A");
	} else if (idadeNadador > 8 && idadeNadador < 10) {
		printf("Categoria: Infantil B");
	} else if (idadeNadador >= 5 && idadeNadador < 7) {
		printf("Categoria: Infantil A");
	} else {
		printf("Idade fora da faixa etaria!");
	}
}
