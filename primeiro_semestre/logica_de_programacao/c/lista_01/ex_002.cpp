/*Faça um algoritmo que leia o nome, o sexo e o estado civil de uma pessoa. Caso sexo seja “F” e
estado civil seja “CASADA”, solicitar o tempo de casada (anos).*/

#include <stdio.h> //Para usar as funcoes printf e scanf
#include <string.h> //Para usar a funcao strcmp
#include <ctype.h> //Para usar a funcao toupper()

int main() {
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
