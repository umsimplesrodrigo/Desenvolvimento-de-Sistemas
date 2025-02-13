/*Escreva um programa que lê o sexo de uma pessoa. O sexo deverá ser com o tipo de dado
caractere e o programa deverá aceitar apenas os valores “M”, “F” ou “I”. O programa deve
continuar pedindo o sexo enquanto o valor informado for diferente de “M”, “F” ou “I”.*/
programa
{
	
	funcao inicio()
	{
	
		caracter sexo
			
		faca {
			escreva("Informe seu sexo (M/F/I): ")
			leia(sexo)
		} enquanto (sexo != 'F' e sexo != 'M' e sexo != 'I')
	}
}
