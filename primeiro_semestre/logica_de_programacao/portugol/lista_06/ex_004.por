programa
{
	
	funcao inicio()
	{
		inteiro numeros[5], numerosIn[5], c = 0

		para (inteiro i = 0; i < 5; i ++) {
			escreva("Informe o ", i  + 1, "° número: " )
			leia(numeros[i])

		}
		para (inteiro i = 4; i >= 0 ; i--) {
			numerosIn[c] = numeros[i]
			c++
		}
		para (inteiro i = 0; i < 5; i++) {
			numeros[i] = numerosIn[i]
			escreva("[", numeros[i], "]")
		}
	}
// Autor: umsimplesrodrigo
}
