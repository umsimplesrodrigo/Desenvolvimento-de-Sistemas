/*Elabore um algoritmo que, dada a idade de um nadador. Classifique-o em uma das seguintes  categorias: 
Infantil A = 5 – 7 anos 
Infantil B = 8 – 10 anos 
Juvenil A = 11 – 13 anos 
Juvenil B = 14 – 17 anos 
Sênior = 18 – 25 anos 
Apresentar mensagem “idade fora da faixa etária” quando for outro ano não contemplado.*/
programa
{
    
    funcao inicio()
    {
        inteiro idade

        escreva("Informe idade: ")
        leia(idade)

        se (idade >= 5 e idade <= 7) {
            escreva("Infantil A")
        }
        se (idade >= 8 e idade <= 10) {
            escreva("Infantil B")
        }
        se (idade >= 11 e idade <= 13) {
            escreva("Juvenil A")
        }
        se (idade >= 14 e idade <= 17) {
            escreva("Juvenil B")
        }
        se (idade >= 18 e idade <= 25) {
            escreva("Sênior")
        }
        senao {
            escreva("Idade fora da faixa etária.")
        }
    }
}

// Autor: umsimplesrodrigo
