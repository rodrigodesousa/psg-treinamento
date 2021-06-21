using System;
using System.Collections.Generic;

class URI
{

    static Boolean AchaM(int valor, int m)
    {
        List<int> vet = new List<int>();
        for (int i = 0; i < valor; i++)
        {
            vet.Add(i + 1);
        }
        int index = 0;
        if (vet.Count > 1)
        {
            while (true)
            {
                vet.RemoveAt(index);
                index = (index - 1 + m) % vet.Count;
                if (!(vet.Count > 1))
                {
                    break;
                }
            }
        }
        return vet[0] == 13;
    }
    static void Main(string[] args)
    {
        int valor = -1;
        List<int> valores = new List<int>();
        while (valor != 0)
        {
            valor = Convert.ToInt32(Console.ReadLine());
            int m = 1;
            if (valor != 0)
            {
                while (!AchaM(valor, m))
                {
                    m++;
                }
            }
            if (valor != 0)
            {
                valores.Add(m);
            }
        }
        foreach (int x in valores)
        {
            Console.WriteLine(x);
        }
    }
}