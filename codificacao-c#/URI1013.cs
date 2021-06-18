using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        int a = Convert.ToInt32(linha[0]);
        int b = Convert.ToInt32(linha[1]);
        int c = Convert.ToInt32(linha[2]);
        int maiorAB = (a + b + Math.Abs(a - b)) / 2;
        int maiorABC = (maiorAB + c + Math.Abs(maiorAB - c)) / 2;
        Console.WriteLine(maiorABC + " eh o maior");
    }

}