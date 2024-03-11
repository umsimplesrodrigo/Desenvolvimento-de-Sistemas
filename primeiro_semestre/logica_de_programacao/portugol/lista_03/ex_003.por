/*Escrever um algoritmo que leia o nome de um aluno e as notas das três provas que ele obteve
no semestre. No final informar o nome do aluno e a sua média (aritmética).*/
programa
{
    
    funcao inicio()
    {
        cadeia nome
        real notaUm, notaDois, notaTres, media

        escreva("Informe seu nome: ")
        leia(nome)
        limpa()
        escreva("Informe 1° nota: ")
        leia(notaUm)
        escreva("Informe 2° nota: ")
        leia(notaDois)
        escreva("Informe 3° nota: ")
        leia(notaTres)
        limpa()

        media = (notaUm + notaDois + notaTres) / 3

        escreva("Aluno: ", nome, "\nMédia: ", media)
        
    }
//  Autor: umsimplesrodrigo
}
