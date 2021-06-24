using System;
using System.Collections.Generic;

class URI
{
    public static string criptografarString(string str)
    {
        char[] ascii = str.ToCharArray();
        char[] asciiInvertido = new char[ascii.Length];
        for (int i = 0; i < ascii.Length; i++)
        {
            if (((int)ascii[i] <= 90 && (int)ascii[i] >= 65) || ((int)ascii[i] <= 122 && (int)ascii[i] >= 97))
            {
                ascii[i] = (char)((int)ascii[i] + 3);
            }
            asciiInvertido[ascii.Length - 1 - i] = ascii[i];
        }
        string strFinal = "";
        for (int i = 0; i < asciiInvertido.Length; i++)
        {
            if (i >= (asciiInvertido.Length / 2))
            {
                asciiInvertido[i] = (int)asciiInvertido[i] != 0 ? (char)((int)asciiInvertido[i] - 1) : (char)255;
            }
            strFinal += asciiInvertido[i];
        }
        return strFinal;
    }

    static void Main(string[] args)
    {
        int N = Convert.ToInt32(Console.ReadLine());
        List<string> lista = new List<string>();
        for (int i = 0; i < N; i++)
        {
            string str = Console.ReadLine();
            lista.Add(criptografarString(str));
        }
        foreach (string x in lista)
        {
            Console.WriteLine(x);
        }
    }
}