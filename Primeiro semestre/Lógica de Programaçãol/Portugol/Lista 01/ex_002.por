/*Escreva um algoritmo que leia o nome, o salário fixo, o percentual de comissão e o total
de vendas (em R$) de um vendedor. Ao final deve informar ao usuário o nome, salário fixo,
valor da comissão (em R$) e o salário final.*/
programa {
  funcao inicio() {
    cadeia nome
    real salarioFixo,percentualComissao, totalVendas, valorComissao, salarioVariavel

    escreva("Informe seu nome: ")
    leia(nome)
    limpa()
    escreva("Informe seu salário mínimo: ")
    leia(salarioFixo)
    limpa()
    escreva("Qual o percentual de comissão (%)? ")
    leia(percentualComissao)
    limpa()
    escreva("Qual foi o valor total de vendas R$? ")
    leia(totalVendas)
    limpa()

    valorComissao = (percentualComissao / 100) * totalVendas
    salarioVariavel = valorComissao + salarioFixo

    escreva("Nome: ", nome)
    escreva("\nSalário fixo: ", salarioFixo)
    escreva("\nValor da comissão: ", valorComissao)
    escreva("\nSalário final: ", salarioVariavel)
  }
// Autor: umsimplesrodrigo
}
