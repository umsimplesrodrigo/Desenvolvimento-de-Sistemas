package com.example.demo.entities;

public class Lanche {
    private int codigo;
    private String nome;
    private Double preco;
    private String imagem;

    public Lanche(int codigo, String nome, Double preco, String imagem) {
        this.codigo = codigo;
        this.nome = nome;
        this.preco = preco;
        this.imagem = imagem;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Double getPreco() {
        return preco;
    }

    public void setPreco(Double preco) {
        this.preco = preco;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    @Override
    public String toString() {
        return "Lanche{" +
                "codigo=" + codigo +
                ", nome='" + nome + '\'' +
                ", preco=" + preco +
                ", imagem='" + imagem + '\'' +
                '}';
    }
}


