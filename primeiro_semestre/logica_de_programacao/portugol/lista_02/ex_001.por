/*Construa um algoritmo para ler dois números. Em seguida, calcule a soma, a subtração, a multiplicação e a  divisão desses números, armazenando os resultados em outras variáveis. Imprimir os dados iniciais e os  resultados.*/
programa {
  funcao inicio() {
    real numeroUm, numeroDois, soma, subtracao, divisao, multiplicacao
  
    escreva("Informe o primeiro número: ")
    leia(numeroUm)
    escreva("Informe o segundo número: ")
    leia(numeroDois)
    
    soma = numeroUm + numeroDois
    subtracao = numeroUm - numeroDois
    multiplicacao = numeroUm * numeroDois
    divisao = numeroUm / numeroDois
    escreva(numeroUm, " + ", numeroDois, " = ", soma)
    escreva("\n", numeroUm, " - ", numeroDois, " = ", subtracao)
    escreva("\n", numeroUm, " * ", numeroDois, " = ", multiplicacao)
    escreva("\n", numeroUm, " / ", numeroDois, " = ", divisao)
  }
// Autor: umsimplesrodrigo
}
