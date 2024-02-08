/*A Loja Mamão com Açucar está vendendo seus produtos em 5 (cinco) prestações sem juros.
Faça um algoritmo que receba um valor de uma compra e mostre o valor das prestações.*/
programa
{
    
    funcao inicio()
    {
        real valorCompras, valorPrestacao

        escreva("LOJA MAMÃO COM AÇUCAR")
        escreva("\n")
        escreva("\nValor da compra: ")
        leia(valorCompras)
        limpa()

        valorPrestacao = valorCompras / 5
        
        escreva("5x de R$ ", valorPrestacao, " sem juros!")
    }
// Autor: umsimplesrodrigo
}
