/*Faça um programa que leia um código de operação (+, -, * ou /), e também dois valores inteiros  A e B. O programa deve calcular o resultado da operação escolhida aplicado a A e B. Por  exemplo, se a operação escolhida foi * e A = 1 e B = 3, o programa deve fornecer como  resultado o valor de 13, que é 3. */
programa
{

    funcao inicio()
    {
        real a, b, resultado
        caracter operador

        escreva("Informe 1° valor: ")
        leia(a)
        escreva("Informe 2° valor: ")
        leia(b)
        escreva("Informe a operação aritmética (+, -, ou /): ")
        leia(operador)
        limpa()

        se (operador == '+') {
            resultado = a + b
            escreva(a, " + ", b, " = ", resultado)
        } senao se (operador == '-') {
            resultado = a - b
            escreva(a, " - ", b, " = ", resultado)
        } senao se (operador == '') {
            resultado = a b
            escreva(a, " * ", b, " = ", resultado)
        } senao {
            resultado = a / b
            escreva(a, " / ", b, " = ", resultado)
        }
    }
}

// Autor: umsimplesrodrigo
