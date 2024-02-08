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

