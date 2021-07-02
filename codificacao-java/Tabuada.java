import java.util.ArrayList;
import java.util.Scanner;

public class Tabuada {

	public static void main(String[] args) {
		while (true) {
			Scanner sc = new Scanner(System.in);
			System.out.println("Qual tabuada ? ");
			int tabuada = sc.nextInt();

			System.out.println("Tabuada...:" + tabuada);

			if (tabuada == 0) {
				break;
			}
			
			int t = tabuada;
			int x = 0;
			
			for (int i = 1; i < 11; i++ ) {
				x = t * i;
				System.out.println(t + " x " + i + " = " + x); 
			}
			
		}

	}

}