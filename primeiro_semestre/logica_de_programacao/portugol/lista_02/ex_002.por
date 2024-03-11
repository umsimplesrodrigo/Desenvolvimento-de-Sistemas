/*Faça um algoritmo para ler a base e a altura de um triangulo. Em seguida, calcular a sua área. Imprimir:  base, altura e a área.*/
programa {
  funcao inicio() {
    // Área de um triângulo: base * altura / 2 (b*h/2)
    real baseTriangulo, alturaTriangulo, areaTriangulo

    escreva("Informe a base do triângulo (cm): ")
    leia(baseTriangulo)
    escreva("Informe a altura do triângulo (cm): ")
    leia(alturaTriangulo)
    limpa()

    areaTriangulo = (baseTriangulo * alturaTriangulo) / 2
    
    escreva("Base: ", baseTriangulo, "cm")
    escreva("Altura: ", alturaTriangulo, "cm") // Tinha me esquecido de colocar estes dois
    escreva("Área do triângulo: ", areaTriangulo, "cm2")
  }
// Autor: umsimplesrodrigo
}
