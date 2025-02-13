/*Faça um algoritmo que receba um número e diga se este número está no intervalo entre 100 e 200. */
programa
{
    
    funcao inicio()
    {
        real numero
        
        escreva("Infome um valor: ")
        leia(numero)
        
        se (numero > 100 e numero < 200) {
            escreva(numero,  ", está entre 100 e 200.")
        } senao {
            escreva("Erro! O número não está entre 100 e 200.")
        }
    }
}
// Autor: umsimplesrodrigo
