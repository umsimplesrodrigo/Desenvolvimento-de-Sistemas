/*Desenvolver um algoritmo que receba o valor do salário de uma pessoa e o valor de um  financiamento pretendido. Caso o financiamento seja menor ou igual a 5 vezes o salário da  pessoa, o algoritmo deverá escrever "Financiamento Concedido"; senão, ele deverá escrever  "Financiamento Negado".*/
programa
{
    
    funcao inicio()
    {
        real salario, financiamento

        escreva("Informe seu salário: ")
        leia(salario)
        escreva("Informe o valor do financiamento: ")
        leia(financiamento)
        limpa()

        se (financiamento <= salario * 5) {
            escreva("Financiamento Concedido!")
        } senao {
            escreva("Financiamento Negado!")
        }
    }
}

// Autor: umsimplesrodrigo
