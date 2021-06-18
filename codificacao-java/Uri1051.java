import java.io.IOException;
import java.util.Scanner;

public class Main {
 
    public static void main(String[] args) throws IOException {
 
        Scanner sc = new Scanner(System.in);
        double salario = sc.nextDouble();
        if(salario <= 2000) {
        	System.out.println("Isento");
        } else if (salario <= 3000) {
        	double imposto = (salario - 2000) * 0.08;
        	System.out.println("R$ " + String.format("%.2f", imposto));
        } else if (salario <= 4500) {
        	double imposto = (salario - 3000) * 0.18 + 80;
        	System.out.println("R$ " + String.format("%.2f", imposto));
        } else {
        	double imposto = (salario - 4500) * 0.28 + 350;
        	System.out.println("R$ " + String.format("%.2f", imposto));
        }
 
    }
 
}
