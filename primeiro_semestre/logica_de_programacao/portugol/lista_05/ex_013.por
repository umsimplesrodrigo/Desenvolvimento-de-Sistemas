/* Desenvolver um algoritmo que leia a altura de 15 pessoas. Este programa deverá calcular e  mostrar: 
 a. A menor altura do grupo; 
 b. A maior altura do grupo; 
*/
programa
{
	
	funcao inicio()
	{
		real h, hMenor, hMaior

		hMenor = 99.0
		hMaior = 0.0
		
		para (inteiro i = 1; i < 16; i++) {
			escreva("Informe a ", i, "° altura: ")
			leia(h)
			
			se 
(h < hMenor) {
				hMenor = h
			}

			se (h > hMaior) {
				hMaior = h
			}
		}
		escreva("Maior altura: ", hMaior)
		escreva("\nMenor altura: ", hMenor)
	}
// Autor: umsimplesrodrigo
}
