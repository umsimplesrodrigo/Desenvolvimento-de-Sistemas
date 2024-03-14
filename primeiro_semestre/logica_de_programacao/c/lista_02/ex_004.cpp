/*Escreva um algoritmo que gere os números de 1000 a 1999 e escreva aqueles que dividido por
11 dão resto igual a 5.*/
#include <stdio.h>
#include <locale.h>

int main() {
	setlocale(LC_ALL, "portuguese");
	
	for (int i = 1000; i < 2000; i++) {
		if (i % 5 == 0) {
			printf("%d\n", i);
		}
	}
}
