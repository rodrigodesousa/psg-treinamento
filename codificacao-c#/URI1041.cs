using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        double x = Convert.ToDouble(linha[0]);
        double y = Convert.ToDouble(linha[1]);

        if (x == 0 && y == 0)
        {
            Console.WriteLine("Origem");
        }
        else if (x != 0 && y == 0)
        {
            Console.WriteLine("Eixo X");
        }
        else if (x == 0 && y != 0)
        {
            Console.WriteLine("Eixo Y");
        }
        else if (x > 0 && y > 0)
        {
            Console.WriteLine("Q1");
        }
        else if (x < 0 && y < 0)
        {
            Console.WriteLine("Q3");
        }
        else if (x > 0 && y < 0)
        {
            Console.WriteLine("Q4");
        }
        else
        {
            Console.WriteLine("Q2");
        }
    }

}