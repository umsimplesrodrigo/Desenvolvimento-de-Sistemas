/*Faça um algoritmo que leia o nome, o sexo e o estado civil de uma pessoa. Caso sexo seja “F” e  estado civil seja “CASADA”, solicitar o tempo de casada (anos). */
programa
{
    
    funcao inicio()
    {
        cadeia nome, estadoCivil
        caracter sexo
        inteiro anosCasada

        escreva("Infome o nome: ")
        leia(nome)
        escreva("Gênero (F) feminino (M) masculino: ")
        leia(sexo)
        escreva("Estado civil (Solteiro(a)/Casado(a): ")
        leia(estadoCivil)
        limpa()

        se (sexo == 'F' e estadoCivil == "Casada") {
            escreva("Quantos anos de casada, ", nome, "? ")
            leia(anosCasada)
            limpa()
        }
    }
}
