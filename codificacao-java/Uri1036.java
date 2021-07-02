import java.io.IOException;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        double A = sc.nextDouble();
        double B = sc.nextDouble();
        double C = sc.nextDouble();
        double delta = Math.pow(B, 2) - 4 * A * C;
        double divisor1 = (-B + Math.sqrt(delta));
        double divisor2 = (-B - Math.sqrt(delta));
        double dividendo = 2 * A;

        if(divisor1 == 0 || divisor2 == 0 || dividendo == 0 || delta < 0)
        {
            System.out.println("Impossivel calcular");
        } else
        {
            double r1 = divisor1 / dividendo;
            double r2 = divisor2 / dividendo;
            System.out.println("R1 = " + String.format("%.5f", r1));
            System.out.println("R2 = " + String.format("%.5f", r2));
        }
	}

}