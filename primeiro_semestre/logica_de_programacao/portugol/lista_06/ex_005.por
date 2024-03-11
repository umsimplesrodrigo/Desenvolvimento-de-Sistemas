programa
{
	
	funcao inicio()
	{
		inteiro numeros[10], soma = 0, multiplicacao = 1

		para (inteiro i = 0; i < 10; i++) {
			escreva("Informe o ", i + 1, "° número: ")
			leia(numeros[i])

			se (numeros[i] % 2 == 0) {
				multiplicacao *= numeros[i]
			} senao {
				soma += numeros[i]
			}
		}
		limpa()
		escreva("Soma do números pares: ", soma)
		escreva("\nMultiplicação dos números ímpares: ", multiplicacao)
	}
// Autor: umsimplesrodrigo
}
