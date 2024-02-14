/*Escreva um programa que leia do teclado as duas notas de um aluno, calcule e exiba a média  aritmética das notas. O programa deve, adicionalmente, exibir uma mensagem de parabéns  caso o aluno esteja aprovado (média superior ou igual a 5,0) */
programa
{
    
    funcao inicio()
    {
        real notaUm, notaDois, media

        escreva("Infome 1° nota: ")
        leia(notaUm)
        escreva("Infome 2° nota: ")
        leia(notaDois)
        limpa()

        media = (notaUm + notaDois) / 2

        se (media >= 5) {
            escreva("PARABÉNS!! \nVocê foi aprovado com ", media, " pontos na média.")
        }
    }
}

// Autor: umsimplesrodrigo
