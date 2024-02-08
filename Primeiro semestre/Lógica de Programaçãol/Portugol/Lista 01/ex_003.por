/*Elaborar um algoritmo que leia a temperatura em graus Celsius e apresente-a em
Fahrenheit. F=(9C+160) / 5.*/
programa {
  funcao inicio() {
    real celsius, fahrenheit

    escreva("Informe a temperatura em graos Celsius: ")
    leia(celsius)

    fahrenheit = (9 * celsius + 160) / 5 //F=(9*C+160) / 5
    limpa()
    escreva(celsius, "°C = ", fahrenheit, "°F")
  }
// Autor: umsimplesrodrigo
}
