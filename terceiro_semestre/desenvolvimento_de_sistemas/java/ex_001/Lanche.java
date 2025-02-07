package com.mycompany.lanche;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Scanner;

class Item {
    private static int contador = 1;
    int cod;
    String esp;
    double preco;
    String diretorioOrigem;
    String diretorioDestino;

    public Item(String esp, double preco, String diretorioOrigem, String diretorioDestino) {
        this.cod = contador++;
        this.esp = esp;
        this.preco = preco;
        this.diretorioOrigem = diretorioOrigem;
        this.diretorioDestino = diretorioDestino;
    }

    public boolean copiarImagem() {
        File origem = new File(diretorioOrigem);
        File destino = new File(diretorioDestino);

        if (!origem.exists()) {
            System.out.println("Erro: Arquivo de origem nao encontrado!");
            return false;
        }

        try {
            Files.copy(origem.toPath(), destino.toPath(), StandardCopyOption.REPLACE_EXISTING);
            System.out.println("Imagem copiada com sucesso!");
            return true;
        } catch (IOException e) {
            System.out.println("Erro ao copiar imagem: " + e.getMessage());
            return false;
        }
    }
}

public class Lanche {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            ArrayList<Item> itens = new ArrayList<>();

            while (true) {
                System.out.println("\n1 - Cadastrar Item\n2 - Listar Itens\n3 - Registrar Venda\n4 - Sair");
                int opcao = scanner.nextInt();
                scanner.nextLine(); // Limpar buffer

                switch (opcao) {
                    case 1 -> {
                        System.out.print("Descricao: ");
                        String esp = scanner.nextLine();
                        System.out.print("Preco: ");
                        double preco = scanner.nextDouble();
                        scanner.nextLine();
                        System.out.print("Diretorio de origem da imagem: ");
                        String diretorioOrigem = scanner.nextLine();
                        System.out.print("Diretorio de destino da imagem: ");
                        String diretorioDestino = scanner.nextLine();

                        Item novoItem = new Item(esp, preco, diretorioOrigem, diretorioDestino);
                        if (novoItem.copiarImagem()) {
                            itens.add(novoItem);
                            System.out.println("Item cadastrado com sucesso!");
                        } else {
                            System.out.println("Falha ao cadastrar item.");
                        }
                    }
                    case 2 -> {
                        for (Item item : itens) {
                            System.out.println("Codigo: " + item.cod + ", Descricao: " + item.esp +
                                    ", Preco: " + item.preco + ", Imagem copiada para: " + item.diretorioDestino);
                        }
                    }
                    case 3 -> {
                        System.out.print("Codigo do item: ");
                        int codigo = scanner.nextInt();
                        System.out.print("Quantidade: ");
                        int quantidade = scanner.nextInt();

                        Item itemSelecionado = null;
                        for (Item item : itens) {
                            if (item.cod == codigo) {
                                itemSelecionado = item;
                                break;
                            }
                        }

                        if (itemSelecionado != null) {
                            double total = itemSelecionado.preco * quantidade;
                            System.out.println("Codigo: " + itemSelecionado.cod +
                                    ", Quantidade: " + quantidade + ", Valor Total: " + total);
                        } else {
                            System.out.println("Item nao encontrado.");
                        }
                    }
                    case 4 -> {
                        System.out.println("Saindo...");
                        return;
                    }
                    default -> System.out.println("Opcao invalida.");
                }
            }
        }
    }
}
