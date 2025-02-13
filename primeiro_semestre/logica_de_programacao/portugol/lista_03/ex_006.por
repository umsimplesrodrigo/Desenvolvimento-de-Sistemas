/*Faça um algoritmo que receba o preço de custo de um produto e mostre o valor de venda. Sabe-se que o preço de custo recebera um acréscimo de acordo com um percentual informado pelo usuário.*/
programa
{
    
    funcao inicio()
    {
        real valorCusto, valorVenda, percentual

        escreva("Preço de custo do produto: ")
        leia(valorCusto)
        escreva("Percentual a ser acrescentado: ")
        leia(percentual)
        limpa()

        valorVenda = (percentual / 100 + 1) * valorCusto

        escreva("Valor de venda: R$ ", valorVenda)
    }
// Autor: umsimplesrodrigo
}
