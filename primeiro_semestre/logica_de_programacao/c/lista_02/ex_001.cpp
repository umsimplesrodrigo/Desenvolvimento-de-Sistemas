/*Chico tem 1,50m e cresce 2 centímetros por ano, enquanto Juca tem 1,10m e cresce 3
centímetros por ano. Construir um algoritmo que calcule e imprima quantos anos serão
necessários para que Juca seja maior que Chico.*/
#include <stdio.h>
#include <locale.h>

int main () {
	setlocale(LC_ALL, "portuguese");
	float hChico = 1.5, hJuca = 1.1;
	int anos = 0;
	
	do {
		anos ++;
		hChico = hChico + 0.02;
		hJuca = hJuca + 0.03;
	} while (hChico > hJuca);
	
	printf("Demorará %d anos para Juca ficar maior que Chico", anos);
}
