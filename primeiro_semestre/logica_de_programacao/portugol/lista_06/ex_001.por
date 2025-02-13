programa
{
	
	funcao inicio()
	{
		inteiro numeros[10], soma = 0

		para (inteiro i = 0; i < 10; i++) {
			escreva("Informe o ", i , "° número: ")
			leia(numeros[i])

			soma += numeros[i]
		}
		limpa()
		escreva("A soma dos números é: ", soma)
	}
// Autor: umsimplesrodrigo
}
