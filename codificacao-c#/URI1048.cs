using System;

class URI
{

    static void Main(string[] args)
    {
        double salarioAtual = Convert.ToDouble(Console.ReadLine());
        double novoSalario = 0;
        double reajuste = 0;
        int porcentagem = 0;
        if (salarioAtual <= 400.00)
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
        Console.WriteLine("Novo salario: " + String.Format("{0:0.00}", novoSalario));
        Console.WriteLine("Reajuste ganho: " + String.Format("{0:0.00}", reajuste));
        Console.WriteLine("Em percentual: " + porcentagem + " %");
    }

}