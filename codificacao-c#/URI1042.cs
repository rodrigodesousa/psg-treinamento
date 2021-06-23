using System;
using System.Collections.Generic;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        List<int> valores = new List<int>();
        for (int i = 0; i < linha.Length; i++)
        {
            valores.Add(Convert.ToInt32(linha[i]));
        }
        valores.Sort();
        foreach (int x in valores)
        {
            Console.WriteLine(x);
        }
        Console.WriteLine("");
        for (int i = 0; i < linha.Length; i++)
        {
            Console.WriteLine(linha[i]);
        }
    }

}