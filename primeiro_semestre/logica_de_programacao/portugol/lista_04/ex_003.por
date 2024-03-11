/*Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se  somar os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se  atribuir o resultado para uma variável C e mostrar seu conteúdo na tela. */
programa
{
    
    funcao inicio()
    {
        real a, b, soma, multiplicacao

        escreva("Informe o valor de A: ")
        leia(a)
        escreva("Informe o valor de B: ")
        leia(b)
        limpa()

        soma = a + b
        multiplicacao = a * b

        se (a == b) {
            escreva("A soma de ", a, " + ", b, " = ", soma)
        } senao {
            escreva("O produto de ", a, " * ", b, " = ", multiplicacao)
        }
    }
}

// Autor: umsimplesrodrigo
