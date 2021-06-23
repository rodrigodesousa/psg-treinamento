using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        int hora1 = Convert.ToInt32(linha[0]);
        int minuto1 = Convert.ToInt32(linha[1]);
        int hora2 = Convert.ToInt32(linha[2]);
        int minuto2 = Convert.ToInt32(linha[3]);
        int duracaoHoras = hora1 < hora2 ? hora2 - hora1 : (hora1 == hora2 && minuto2 > minuto1) ? 0 : hora2 - hora1 + 24;
        duracaoHoras = minuto1 <= minuto2 ? duracaoHoras : duracaoHoras - 1;
        int duracaoMinutos = minuto1 < minuto2 ? minuto2 - minuto1 : minuto2 == minuto1 ? 0 : minuto2 - minuto1 + 60;
        Console.WriteLine("O JOGO DUROU " + duracaoHoras + " HORA(S) E " + duracaoMinutos + " MINUTO(S)");
    }

}