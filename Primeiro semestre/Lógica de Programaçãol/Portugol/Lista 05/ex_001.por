/*Chico tem 1,50m e cresce 2 centímetros por ano, enquanto Juca tem 1,10m e cresce 3
centímetros por ano. Construir um algoritmo que calcule e imprima quantos anos serão
necessários para que Juca seja maior que Chico.*/
programa
{
	
	funcao inicio()
	{
		real hChico = 1.5 , hJuca = 1.1
		inteiro ano = 0

		enquanto (hChico > hJuca) {
			
hChico = hChico + 0.2
			hJuca = hJuca + 0.3
			ano++
		}

		escreva(ano, " anos para que Juca seja maior que Chico")
		escreva("\nEle terá ", hJuca, "cm")
	}
// Autor: umsimplesrodrigo	
}
