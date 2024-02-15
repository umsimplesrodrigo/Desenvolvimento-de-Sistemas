/*Escrever um algoritmo que leia três valores inteiros distintos e os escreva em ordem crescente.*/
programa
{
    
    funcao inicio()
    {
        real a, b, c

        escreva("Informe o 1° valor: ")
        leia(a)
        escreva("Informe o 2° valor: ")
        leia(b)
        escreva("Informe o 3° valor: ")
        leia(c)
        limpa()

        // A permutação do 3 variaveis (3! = 3 * 2 * 1 = 6) resulta em 6 resultados possíveis:
        // a, b, c | a, c, b | b, a, c | b, c, a | c, a, b | c, b, a

        se ( a == b ou a == c ou b == c) {
        	escreva("Informe valores distintos!")
        }
        senao se (a <= b e b <= c) {
            escreva(a, " ", b , " ", c)
        }
        senao se (a <= c e c <= b) {
            escreva(a, " ", c, " ", b)
        }
        senao se (b <= a e a <= c) {
            escreva(b, " ", a, " ", c)
        }
        senao se (b <= c e c <= a) {
            escreva(b, " ", c, " ", a)
        }
        senao se (c <= a e a <= b) {
            escreva(c, " ", a, " ", b)
        }
        senao se (c <= b e b <= a) {
            escreva(c, " ", b, " ", a)
        }
    }
}
// Autor: umsimplesrodrigo
