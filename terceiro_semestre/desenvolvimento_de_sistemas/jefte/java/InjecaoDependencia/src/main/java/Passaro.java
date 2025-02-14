import comportamentos.Respirar;
import comportamentos.Voar;

public class Passaro extends Animal {
    private Voar voar;
    private Respirar respirar;

    public Passaro(String nome, int idade, String categoria) {
        super(nome, idade, categoria);

        voar = new Voar();
        respirar = new Respirar();
    }
}
