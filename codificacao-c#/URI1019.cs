using System;

class URI
{

    static void Main(string[] args)
    {
        int segundos = Convert.ToInt32(Console.ReadLine());
        int horas = segundos / 3600;
        segundos = segundos % 3600;
        int minutos = segundos / 60;
        segundos = segundos % 60;
        Console.WriteLine(horas + ":" + minutos + ":" + segundos);
    }

}