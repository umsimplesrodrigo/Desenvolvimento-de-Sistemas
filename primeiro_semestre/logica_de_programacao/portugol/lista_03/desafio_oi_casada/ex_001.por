programa {
    inclua biblioteca Graficos --> g // Defini "g" como várivél para facilitar quando eu for chamar essa biblioteca
    inclua biblioteca Teclado --> t // Mesma ideia que doq escrevi acima

    inteiro oiCasada = -1 // Declarei a varivél e atribui "-1" apenas para informar que ela tem que estar em uso mas ainda não precisa ter um valor válido

    funcao inicio() {
        cadeia nome, estadoCivil
        caracter sexo

        escreva("Infome o nome: ")
        leia(nome)
        escreva("Gênero (F) feminino (M) masculino: ")
        leia(sexo)
        escreva("Estado civil (Solteiro(a)/Casado(a): ")
        leia(estadoCivil)
        limpa()

        se (estadoCivil == "Casada" e sexo == 'F') {
            g.iniciar_modo_grafico(verdadeiro) // "g" inicia a minha biblioteca e "iniciar_modo_grafico" é o método para iniciar o gŕafico, consegui entender esse método pelo exemplo aqui do próprio portugol
            g.definir_dimensoes_janela(195, 195) // o método já tem um nome autoexplicativo, denifi o tamanho da janela igual o da imagem que vou utilizar
            oiCasada = g.carregar_imagem("oicasada.jpeg") // Esse método carregou a imagem no local descrito na minha máquina
            exibirImagem() // Sob a condição ai em cima, puxei a função que foi criada logo abaixo
        } senao {
        	escreva(nome, ", sua resposta está errada!")
        }
    }

    funcao exibirImagem() { // Função que irá exibir minha imagem
        enquanto (verdadeiro) { // Laço de condição que vai executar os comandos abaixo até que a condição que informei seja realizada
            g.limpar() // Não é nescessário, mas esse método limpa o que foi inserido na janela antes desse bloco de código
            g.desenhar_imagem(0, 0, oiCasada) // Método que coloco a imagem na janela, os atributos são a posição e a imagem(váriavél que defini)
            g.renderizar() // ... Renderiza a imagem né pae

            se (t.tecla_pressionada(t.TECLA_P)) { // Usei a biblioteca teclado com a condição para que assim o usuário digitar "P" execute o comando abaixo
                retorne // É um comando para finalizar a função atual (exibirImagem()) e retornar ao ponto onde a função foi chamada
			// Como a função inicio() já havia sido executada e a função exibirImagem() foi chamada dentro dela, o retorno leva de volta para o ponto de chamada da função exibirImagem()
			// Porém, como a função exibirImagem() só é executada quando a condição da função inicio() é satisfeita, o retorno da função exibirImagem() leva de volta à execução da função inicio()
			// Como não há mais código a ser executado após a função exibirImagem(), a execução do programa é finalizada
			// Caso você não tenha entendido o retorne ainda, pode falar comigo no discord umsimplesrodrigo#8537
            }
        }
    }
// Autor: umsimplesrodrigo
}
