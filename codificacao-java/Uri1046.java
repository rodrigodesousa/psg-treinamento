import java.io.IOException;
import java.util.*;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int hora1 = sc.nextInt();
        int hora2 = sc.nextInt();
        int duracao = hora1 < hora2 ? hora2 - hora1 : hora2 - hora1 + 24;
        System.out.println("O JOGO DUROU " + duracao + " HORA(S)");
	}
}