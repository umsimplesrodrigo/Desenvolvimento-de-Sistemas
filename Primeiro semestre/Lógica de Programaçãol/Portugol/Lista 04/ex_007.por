/*Construa um algoritmo para determinar o IMC (Índice de Massa Corpórea) do indivíduo que é  definida como sendo a relação entre o peso (PESO) e o quadrado da Altura (ALTURA) do  indivíduo. O programa deve verificar e imprimir em tela a condição e situação do IMC encontrado, conforme tabela abaixo:
IMC Abaixo de 20 = Abaixo do peso
IMC de 20 até 25 = Peso normal
IMC de 25 até 30 = Sobre peso
IMC de 30 até 40 = Obeso
IMC acima de 40 = Obeso Mórbido*/
programa
{
    
    funcao inicio()
    {
        real altura, peso, imc
        
        escreva("Infome sua altura: ")
        leia(altura)
        escreva("Infome seu peso: ")
        leia(peso)
        
        imc = peso/(altura*altura)
        
        escreva("Seu IMC: ", imc, "\n")

        se (imc < 20) {
            escreva("Abaixo do peso")
        }
        se (imc > 20 e imc < 25) {
            escreva("Peso Normal")
        }
        se (imc > 25 e imc < 30) {
            escreva("Sobre Peso")
        }
        se (imc > 30 e imc < 40) {
            escreva("Obeso")
        }
        se (imc > 40) {
            escreva("Obeso Mórbido")
        }
    }
}
// umsimplesrodrigo
