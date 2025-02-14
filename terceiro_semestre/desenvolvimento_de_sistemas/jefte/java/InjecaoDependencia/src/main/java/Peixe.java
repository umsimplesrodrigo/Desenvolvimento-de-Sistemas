import comportamentos.Nadar;
import comportamentos.Respirar;

public class Peixe extends Animal {
    private Nadar nadar;
    private Respirar respirar;

    public Peixe(String nome, int idade, String categoria) {
        super(nome, idade, categoria);

        respirar = new Respirar();
        nadar = new Nadar();
    }

    public void respirar() {
        this.respirar.respirar(10);
    }

    public void nadar() {
        this.nadar.Nadar();
    }
}
