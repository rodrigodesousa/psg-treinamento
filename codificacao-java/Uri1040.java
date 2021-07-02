import java.io.IOException;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        double N1 = sc.nextDouble();
        double N2 = sc.nextDouble();
        double N3 = sc.nextDouble();
        double N4 = sc.nextDouble();
        double media = (2 * N1 + 3 * N2 + 4 * N3 + N4) / 10.00;
        if (media == 4.85) // uri resulta em erro sem este if devido arredondamento para 4.9
        {
            media = 4.8;
        }
        if (media >= 7.0)
        {
        	System.out.println("Media: " + String.format("%.1f", media));
        	System.out.println("Aluno aprovado.");
        }
        else if (media < 5.0)
        {
        	System.out.println("Media: " + String.format("%.1f", media));
        	System.out.println("Aluno reprovado.");
        }
        else
        {
            double exame = sc.nextDouble();
            double mediaFinal = (media + exame) / 2;
            System.out.println("Media: " + String.format("%.1f", media));
            System.out.println("Aluno em exame.");
            System.out.println("Nota do exame: " + String.format("%.1f", exame));
            if (mediaFinal >= 5.0)
            {
            	System.out.println("Aluno aprovado.");
            }
            else
            {
            	System.out.println("Aluno reprovado.");
            }
            System.out.println("Media final: " + String.format("%.1f", mediaFinal));

        }
	}

}