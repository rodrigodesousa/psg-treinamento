using System;

class URI
{

    static void Main(string[] args)
    {
        int tempo = Convert.ToInt32(Console.ReadLine());
        int velocidade = Convert.ToInt32(Console.ReadLine());
        double litros = velocidade * tempo / 12.00;
        Console.WriteLine(String.Format("{0:0.000}", litros));
    }

}