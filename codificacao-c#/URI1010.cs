using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha1 = Console.ReadLine().Split(' ');
        string[] linha2 = Console.ReadLine().Split(' ');
        int codigo1 = Convert.ToInt32(linha1[0]);
        int quantidade1 = Convert.ToInt32(linha1[1]);
        double valor1 = Convert.ToDouble(linha1[2]);
        int codigo2 = Convert.ToInt32(linha2[0]);
        int quantidade2 = Convert.ToInt32(linha2[1]);
        double valor2 = Convert.ToDouble(linha2[2]);
        double total = quantidade1 * valor1 + quantidade2 * valor2;
        Console.WriteLine("VALOR A PAGAR: R$ " + String.Format("{0:0.00}", total));
    }

}