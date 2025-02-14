- [1. Introdução](#1-introdução)
- [2. Casos de Uso](#2-casos-de-uso)

# 1. Introdução

- Nesse exemplo, o professor demonstrou o uso da Composição na _POO_, e seus problemas de **DESIGN**

# 2. Casos de Uso

- No caso de uso da Composição, o professor tranformou os métodos andar(), respirar(), falar() em classes separadas em outro pacote.
  - Como na Hierarquia, a subclasse Peixe era obrigada a herdar os métodos da classe Animal, não fazia sentido ela herdar o falar();
  - Então agora é possível que o peixe tenha apenas os comportamentos nescessários;
  - O problema é que o objeto de comportamento era criando dentro da própria classe (Cachorro, Cavalo, etc), Então por exemplo se fossemos mudar os animais falam, teriamos que alterar em cada classe;