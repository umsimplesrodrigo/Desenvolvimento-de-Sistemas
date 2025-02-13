#include <stdio.h>

int main () {
	float peso, altura, imc;
	
	printf("Informe sua altura em metros: ");
	scanf("%f", &altura);
	printf("Informe seu peso em kg: ");
	scanf("%f", &peso);
	
	imc = peso / (altura * altura);
	
	if (imc > 40) {
		printf("IMC: %f Obeso Morbido!", imc);
	} else if (imc > 30){
		printf("IMC: %f Obeso!", imc);
	} else if (imc > 25){
		printf("IMC: %f Sobre Peso!", imc);
	} else if (imc > 20){
		printf("IMC: %f Peso Normal!", imc);
	} else {
		printf("IMC: %f Abaixo do Peso!", imc);
	}
}