using System;

class URI
{

    static void Main(string[] args)
    {
        double[] precos = new double[5] { 4.00, 4.50, 5.00, 2.00, 1.50 };
        string[] linha = Console.ReadLine().Split(' ');
        int codigo = Convert.ToInt32(linha[0]);
        int quantidade = Convert.ToInt32(linha[1]);
        double total = quantidade * precos[codigo - 1];
        Console.WriteLine("Total: R$ " + String.Format("{0:0.00}", total));
    }

}