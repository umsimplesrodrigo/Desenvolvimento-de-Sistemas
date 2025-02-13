/*Escreva um algoritmo que gere os números de 1000 a 1999 e escreva aqueles que dividido por
11 dão resto igual a 5.*/
programa
{
	
	funcao inicio()
	{
		inteiro i, divi

		para ( i = 1000; i <= 1999; i++) {

			divi = i % 11

			se (divi == 5) {
				escreva(i, "\n")
			}
		}
	}
// Autor: umsimplesrodrigo
}
