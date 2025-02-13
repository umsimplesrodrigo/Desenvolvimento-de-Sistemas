/*Escrever um algoritmo que lê 5 valores para A, um de cada vez, e conta quantos destes valores
são negativos, escrevendo esta informação.*/
programa
{
	
	funcao inicio()
	{
		inteiro a, contador = 0
		
		para (inteiro i = 1; i <= 5; i++) {
			escreva("Informe o ", i, "° valor: ")
			leia(a)
			limpa()

			se (a < 0) {
				contador++
			}
		}
		se (contador == 1) {
			escreva(contador, " valor é negativo.")
		} senao {
			escreva(contador, " valores são negativos.")
		}
	}
// Autor: umsimplesrodrigo
}
