/*Escreva um algoritmo que leia dois valores (A e B) e inverta e exiba esses valores.*/
programa {
  // Sinceramente, não entendi exatamente a questão
  funcao inicio() {
    inteiro a, b, c // "c" é a váriavél temporária que irá armazenar o valor de "a"
    escreva("Informe o valor de A: ")
    leia(a)
    escreva("Informe o valor de B: ")
    leia(b)

    c = a
    a = b
    b = c

    escreva("Valores invertidos: ")
    escreva("\n A = ", a)
    escreva("\n B = ", b)

    // Eu sei, eu podia só colocar ao contrário. Porém achei assim mas semântico
  }
// Autor: umsimplesrodrigo
}
