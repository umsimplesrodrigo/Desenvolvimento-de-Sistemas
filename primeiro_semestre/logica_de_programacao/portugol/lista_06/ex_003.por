programa
{
	
	funcao inicio()
	{
		inteiro numeros[10], divisivel, divisiveis[10]

		para (inteiro i = 0; i < 10; i++) {
			escreva("Informe o ", i + 1, "° número: ")
			leia(numeros[i])
		}
		
		escreva("Informe um valor inteiro: ")
		leia(divisivel)
		se (divisivel <= 0) {
			faca {
				escreva("Valor incorreto!\n")
				escreva("Informe um valor inteiro: ")
				leia(divisivel)
			} enquanto (divisivel <= 0)
		}

		para (inteiro i = 0; i < 10; i++) {
			se (numeros[i] % divisivel == 0) {
				divisiveis[i] = numeros[i]
			}
		}
		limpa()
		para (inteiro i = 0; i < 10; i++) {
			escreva("[", divisiveis[i], "]")
		}
	}
// Autor: umsimplesrodrigo
}
