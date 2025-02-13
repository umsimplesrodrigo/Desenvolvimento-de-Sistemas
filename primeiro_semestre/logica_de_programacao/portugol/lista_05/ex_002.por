/*Faça um algoritmo que exiba a tabuada de um número x. Obs: tabuada: x*1, x*2 ... x*10;*/
programa
{
	
	funcao inicio()
	{

		inteiro mult, num
		
		escreva("Informe um número inteiro: ")
		leia(num)
		
		para (inteiro i = 1; i <= 10; i++) {
			mult = i * num
			escreva(i, " * ", num, " = ", mult, "\n")
		}
	}
// Autor: umsimplesrodrigo
}
