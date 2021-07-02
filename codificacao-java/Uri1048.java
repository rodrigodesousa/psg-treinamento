import java.io.IOException;
import java.util.*;

public class Main {

	public static void main(String[] args) throws IOException {
        Scanner sc = new Scanner(System.in);
        double salarioAtual = sc.nextDouble();
        double novoSalario = 0;
        double reajuste = 0;
        int porcentagem = 0;
        if(salarioAtual <= 400.00)
        {
            reajuste = salarioAtual * 0.15;
            novoSalario = salarioAtual + reajuste;
            porcentagem = 15;
        }
        else if (salarioAtual <= 800.00)
        {
            reajuste = salarioAtual * 0.12;
            novoSalario = salarioAtual + reajuste;
            porcentagem = 12;
        }
        else if (salarioAtual <= 1200.00)
        {
            reajuste = salarioAtual * 0.10;
            novoSalario = salarioAtual + reajuste;
            porcentagem = 10;
        }
        else if (salarioAtual <= 2000.00)
        {
            reajuste = salarioAtual * 0.07;
            novoSalario = salarioAtual + reajuste;
            porcentagem = 7;
        }
        else
        {
            reajuste = salarioAtual * 0.04;
            novoSalario = salarioAtual + reajuste;
            porcentagem = 4;
        }
        System.out.println("Novo salario: " + String.format("%.2f", novoSalario));
        System.out.println("Reajuste ganho: " + String.format("%.2f", reajuste));
        System.out.println("Em percentual: " + porcentagem + " %");
	}

}