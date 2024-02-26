/*A prefeitura de uma cidade precisa fazer uma pesquisa entre seus habitantes, coletando dados  sobre o salário e número de filhos. A prefeitura deseja saber:  
 a) média do salário da população; 
 b) média do número de filhos; 
 c) maior salário; 
 d) percentual de pessoas com salário até R$1000,00. 
 Desenvolva um algoritmo para auxiliar nessa tarefa 
*/
programa
{
	
	funcao inicio()
	{
		inteiro quantiaHabitantes, filhos, somaFilhos = 0, mediaFilhos, salariosMil = 0, porcentagemSalarios = 0
		real somaSalario = 0.0, salario, mediaSalario, maiorSalario = 0.0
	
		escreva("Quantos habitantes irão participar da pesquisa? ")
		leia(quantiaHabitantes)
		limpa()

		para (inteiro i = 1; i <= quantiaHabitantes; i++) {
			escreva("Informe o salário do ", i, "° habitante: ")
			leia(salario)
			escreva("Quantia de filhos: ")
			leia(filhos)
			limpa()

			somaSalario += salario
			somaFilhos += filhos

			se (salario > maiorSalario) {
				maiorSalario = salario
			}

			se (salario <= 1000) {
				salariosMil += salariosMil
				porcentagemSalarios = (salariosMil * 100) / quantiaHabitantes
			}
		}
		mediaSalario = somaSalario / quantiaHabitantes
		mediaFilhos = somaFilhos / quantiaHabitantes
		
		escreva("Salário médio da população: ", mediaSalario)
		escreva("\nMédia número de filhos: ", mediaFilhos)
		escreva("\nMaior salário: ", maiorSalario)
		escreva("\nPercentual de pessoas com salário até R$1000,00: ", porcentagemSalarios, "%")
		
	}
}
