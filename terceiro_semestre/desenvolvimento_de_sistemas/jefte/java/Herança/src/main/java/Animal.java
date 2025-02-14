public class Animal {
    private String nome;
    private int idade;
    private String categoria;

    public Animal(String nome, int idade, String categoria) {
        this.nome = nome;
        this.idade = idade;
        this.categoria = categoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void falar(String som) {
        System.out.println("Som :" + som);
    }

    public void andar(int velocidade) {
        System.out.println("Velocidade: " + velocidade);
    }

    public void respirar(int qtdeOxigenio) {
        System.out.println("Oxigenio: " + qtdeOxigenio);
    }

    public void nadar(int qtdeOxigenio) {
        System.out.println("Oxigenio: " + qtdeOxigenio);
    }
}
