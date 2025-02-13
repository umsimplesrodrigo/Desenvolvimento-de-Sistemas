 /* Desenvolva um algoritmo em pseudocódigo para ler o cargo e salário do funcionário e o
valor do salário mínimo. Em seguida o algoritmo deve calcular a quantidade de salários
mínimo que o funcionário recebe e exibir na tela com o cargo.*/
programa {
  funcao inicio() {
      cadeia cargo
      real salario, salarioMinimo, quantiaSalarios

      escreva("Informe seu cargo: ")
      leia(cargo)
      escreva("Informe seu salário? ")
      leia(salario)
      escreva("Atualmente, qual o valor do salário mínimo? ")
      leia(salarioMinimo)
      limpa()
      quantiaSalarios = salario / salarioMinimo

      escreva("Cargo: ", cargo)
      escreva("\nSalário: ", salario)
      escreva("\nSalário mínimo: ", salarioMinimo)
      escreva("\nSeu salário corresponde a ", quantiaSalarios, " sálario (s) mínimo (s)")
  }
// Autor: umsimplesrodrigo
}

