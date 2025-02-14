public class Main {
    public static void main(String[] args) {
        Animal cachorro = new Cachorro("Bob", 10, "Caramelo");

        cachorro.andar(10);
        cachorro.falar("au au");
        cachorro.respirar(10);

        Animal cavalo = new Cavalo("Leste", 20, "Cruz Machado");

        cavalo.andar(10);
        cavalo.falar("relincha");
        cavalo.respirar(10);

        Animal peixe = new Peixe("Nemo", 8, "Beta");

        peixe.andar(10);
        peixe.falar("relincha");
        peixe.respirar(10);
    }
}
