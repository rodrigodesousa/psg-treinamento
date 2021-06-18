using System;

class URI
{

    static void Main(string[] args)
    {
        String nome = Console.ReadLine();
        double fixo = Convert.ToDouble(Console.ReadLine());
        double vendas = Convert.ToDouble(Console.ReadLine());
        double total = fixo + vendas * 0.15;
        Console.WriteLine("TOTAL = R$ " + String.Format("{0:0.00}", total));
    }

}