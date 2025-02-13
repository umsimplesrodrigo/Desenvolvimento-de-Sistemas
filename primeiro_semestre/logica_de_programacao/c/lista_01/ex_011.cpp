/*Escrever um algoritmo que leia três valores inteiros distintos e os escreva em ordem crescente.*/
#include <stdio.h>

int main() {
	int a, b, c;
	
	printf("Informe o 1 valor: ");
	scanf("%d", &a);
	
	printf("Informe o 2 valor: ");
	scanf("%d", &b);
	
	printf("Informe o 3 valor: ");
	scanf("%d", &c);

	// a b c | a c b | b a c | b c a | c a b | c b a
	
	if (a <= b && b <= c){
		printf("%d %d %d", a, b, c);
	} else if (a <= c && c <= b) {
		printf("%d %d %d", a, c, b);
	} else if (b <= a && a <= c) {
		printf("%d %d %d", b, a, c);
	} else if (b <= c && c <= a) {
		printf("%d %d %d", b, c, a);
	} else if (c <= a && a <= b) {
		printf("%d %d %d", c, a, b);
	} else if (c <= b && b <= a) {
		printf("%d %d %d", c, b, a);
	}
}
