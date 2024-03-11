/*Escrever um algoritmo para determinar o consumo médio de um automóvel sendo fornecida a
distância Total percorrida pelo automóvel e o total de combustível gasto.*/
programa
{
    
    funcao inicio()
    {
        real combustivel, totalPercorrido, consumoMedio

        escreva("CONSUMO MÉDIO DO SEU AUTOMÓVEL")
        escreva("\n")
        escreva("\nInforme quantos KM foram percorridos: ")
        leia(totalPercorrido)
        escreva("Informe o quantos litros de combustivel foram gastos: ")
        leia(combustivel)
        limpa()
        
        consumoMedio = combustivel / totalPercorrido

        escreva("Seu consumo médio foi de ", consumoMedio, "l/h")
        
    }
// Autor: umsimplesrodrigo
}
