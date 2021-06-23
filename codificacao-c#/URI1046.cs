using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        int hora1 = Convert.ToInt32(linha[0]);
        int hora2 = Convert.ToInt32(linha[1]);
        int duracao = hora1 < hora2 ? hora2 - hora1 : hora2 - hora1 + 24;
        Console.WriteLine("O JOGO DUROU " + duracao + " HORA(S)");
    }

}