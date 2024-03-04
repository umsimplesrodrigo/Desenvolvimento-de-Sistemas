programa
{
	
	funcao inicio()
	{
		inteiro numeros[8], maiorP = 0, posicao = 0

		para (inteiro i = 0; i < 8; i++) {
			escreva("Informe o ", i + 1, "° número: ")
			leia(numeros[i])

			maiorP = numeros[0]

			se (numeros[i] > maiorP) {
				maiorP = numeros[i]
				posicao = i + 1
				
			}
		}
		escreva(maiorP, "\n", posicao)
	}
// Autor: umsimplesrodrigo
}
