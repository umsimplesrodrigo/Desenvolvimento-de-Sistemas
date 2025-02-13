/*Escrever um programa de computador que leia 10 números inteiros e, ao final, apresente a
soma de todos os números lidos.*/
programa
{
	
	funcao inicio()
	{
		inteiro soma = 0, num
		
		para (inteiro i = 1; i <= 10; i++) {
			escreva("Informe o ", i, "° número: ")
			leia(num)
			
			
soma += num
		}

		escreva("Soma dos números: ", soma)
	}
// Autor: umsimplesrodrigo
}
