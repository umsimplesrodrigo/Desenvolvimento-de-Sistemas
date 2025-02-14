import comportamentos.Andar;
import comportamentos.Falar;
import comportamentos.Respirar;

public class Cavalo extends Animal {

    private Falar falar;
    private Respirar respirar;
    private Andar andar;

    public Cavalo(String nome, int idade, String categoria) {
        super(nome, idade, categoria);

        falar = new Falar();
        respirar = new Respirar();
        andar = new Andar();
    }

    public void falar() {
        this.falar.falar("relinxar");
    }
}
