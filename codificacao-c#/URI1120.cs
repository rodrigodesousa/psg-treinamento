using System;
using System.Collections.Generic;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        string N = linha[0];
        string D = linha[1];
        List<string> valores = new List<string>();
        while (!(N + " " + D).Equals("0 0"))
        {
            string valor = D.Replace(N, "");
            while (valor.IndexOf("0") == 0)
            {
                valor = valor.Substring(1);
            }
            valores.Add(valor.Equals("") ? "0" : valor);
            linha = Console.ReadLine().Split(' ');
            N = linha[0];
            D = linha[1];
        }

        foreach (string x in valores)
        {
            Console.WriteLine(x);
        };
    }

}