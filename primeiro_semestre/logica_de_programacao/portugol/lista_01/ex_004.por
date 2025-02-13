/*Criar um algoritmo que leia a um valor em dólar e a cotação atual e fazer a conversão em
real (R$) e exibir na tela.*/
programa {
  funcao inicio() {
    real dollarMoeda, cotacao, realMoeda
    
    escreva("Informe a quantia em $: ")
    leia(dollarMoeda)
    escreva("Informe a cotação atual ($ 1,00 = R$ ?): ")
    leia(cotacao)
    limpa()

    realMoeda = dollarMoeda * cotacao

    escreva("$ ", dollarMoeda, " = R$ ", realMoeda)

  }
// Autor: umsimplesrodrigo
}
