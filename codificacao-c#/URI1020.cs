using System;

class URI
{

    static void Main(string[] args)
    {
        int dias = Convert.ToInt32(Console.ReadLine());
        int anos = dias / 365;
        dias = dias % 365;
        int meses = dias / 30;
        dias = dias % 30;
        Console.WriteLine(anos + " ano(s)");
        Console.WriteLine(meses + " mes(es)");
        Console.WriteLine(dias + " dia(s)");
    }

}