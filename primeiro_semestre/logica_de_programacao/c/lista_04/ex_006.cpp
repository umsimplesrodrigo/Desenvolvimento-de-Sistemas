#include <stdio.h>
#include <locale.h>
#include <stdlib.h>

float intervaloJogoHoras(float horasInicio, float horasFim) {
	float finalHoras = horasFim - horasInicio;
	return finalHoras;
}

float intervaloJogoMinutos(float minutosInicio, float minutosFim) {
	float finalMinutos = minutosFim - minutosInicio;
	return finalMinutos;
}

int main() {
	setlocale(LC_ALL, "portuguese");
	float intervaloHoras, intervaloMinutos;
	float horasInicio, minutosInicio, horasFim, minutosFim;
	
	printf("Informe a hora ínicio do jogo (0 a 23): ");
	scanf("%f", &horasInicio);
	printf("Informe os minutos ínicio do jogo (0 a 60): ");
	scanf("%f", &minutosInicio);
	printf("Informe a hora fim do jogo (1 a 23): ");
	scanf("%f", &horasFim);
	printf("Informe os minutos fim do jogo (0 a 60): ");
	scanf("%f", &minutosFim);
	
	system("cls");
	
	intervaloHoras = intervaloJogoHoras(horasInicio, horasFim);
	intervaloMinutos = intervaloJogoMinutos(minutosInicio, minutosFim);
	
	if (horasInicio > 0 && horasInicio < 24 && minutosInicio > 0 && minutosInicio < 60 && horasFim > 0 && horasFim < 24 && minutosFim > 0 && minutosFim < 60 ) {
		
		if (intervaloMinutos < 0) {
		intervaloHoras = intervaloHoras - 1;
		intervaloMinutos = 60 + intervaloMinutos;
		}
	
		if (intervaloHoras < 10) {
   		   printf("0%.0f:%.0f", intervaloHoras, intervaloMinutos);
		} 
		else if (intervaloMinutos < 10) {
			 printf("%.0f:0%.0f", intervaloHoras, intervaloMinutos);
		}
		else {
			 printf("%.0f:%.0f", intervaloHoras, intervaloMinutos);
        }
    }
 	else {
		printf("ERRO! - PARÂMETROS INCORRETOS!");
	}
}
