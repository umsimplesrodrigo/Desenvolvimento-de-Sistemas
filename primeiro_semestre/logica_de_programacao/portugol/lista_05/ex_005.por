/*Escreva um algoritmo que calcule a média dos números digitados pelo usuário, se eles forem
pares. Termine a leitura se o usuário digitar zero (0).*/
programa
{
	
	funcao inicio()
	{

		inteiro num, soma = 0, media, contador = 0
		
		faca {
			escreva("informe um número: ")
			leia(num)

			contador++
			soma = soma + num
			
		} enquanto (num % 2 == 0 e num != 0)

		soma = soma - num
		media = soma / (contador - 1)
		escreva(media)
	}
// Autor: umsimplesrodrigo
}
