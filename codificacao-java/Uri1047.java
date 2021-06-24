import java.io.IOException;
import java.util.*;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        int hora1 = sc.nextInt();
        int minuto1 = sc.nextInt();
        int hora2 = sc.nextInt();
        int minuto2 = sc.nextInt();
        int duracaoHoras = hora1 < hora2 ? hora2 - hora1 : (hora1 == hora2 && minuto2 > minuto1) ? 0 : hora2 - hora1 + 24;
        duracaoHoras = minuto1 <= minuto2 ? duracaoHoras : duracaoHoras - 1;
        int duracaoMinutos = minuto1 < minuto2 ? minuto2 - minuto1 : minuto2 == minuto1 ? 0 : minuto2 - minuto1 + 60;
        System.out.println("O JOGO DUROU " + duracaoHoras + " HORA(S) E " + duracaoMinutos + " MINUTO(S)");
	}

}