using System;

class URI
{

    static void Main(string[] args)
    {
        int valor = Convert.ToInt32(Console.ReadLine());
        int cem = valor / 100;
        int resto = valor % 100;
        int cinquenta = resto / 50;
        resto = resto % 50;
        int vinte = resto / 20;
        resto = resto % 20;
        int dez = resto / 10;
        resto = resto % 10;
        int cinco = resto / 5;
        resto = resto % 5;
        int dois = resto / 2;
        resto = resto % 2;
        Console.WriteLine(valor);
        Console.WriteLine(cem + " nota(s) de R$ 100,00");
        Console.WriteLine(cinquenta + " nota(s) de R$ 50,00");
        Console.WriteLine(vinte + " nota(s) de R$ 20,00");
        Console.WriteLine(dez + " nota(s) de R$ 10,00");
        Console.WriteLine(cinco + " nota(s) de R$ 5,00");
        Console.WriteLine(dois + " nota(s) de R$ 2,00");
        Console.WriteLine(resto + " nota(s) de R$ 1,00");
    }

}