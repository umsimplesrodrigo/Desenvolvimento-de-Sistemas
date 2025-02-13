#include <stdio.h>

int main() {
	int number[2][2];
	
	for (int i = 0; i < 2; i++) {
		for (int x = 0; x < 2; x++) {
			scanf("%d", &number[i][x]);
		}
	}
	for (int i = 0; i < 2; i++) {
		for (int x = 0; x < 2; x++) {
			printf("[%d]", number[i][x]);
		}
		printf("\n");
	}
}
