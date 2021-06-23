using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        int A = Convert.ToInt32(linha[0]);
        int B = Convert.ToInt32(linha[1]);
        int C = Convert.ToInt32(linha[2]);
        int D = Convert.ToInt32(linha[3]);
        bool res = true;
        if (B <= C)
        {
            res = false;
        }
        if (D <= A)
        {
            res = false;
        }
        if ((C + D) <= (A + B))
        {
            res = false;
        }
        if (C < 0 || D < 0)
        {
            res = false;
        }
        if ((A % 2) != 0)
        {
            res = false;
        }
        if (res)
        {
            Console.WriteLine("Valores aceitos");
        }
        else
        {
            Console.WriteLine("Valores nao aceitos");
        }

    }

}