using System;

class URI
{

    static void Main(string[] args)
    {
        int numero = Convert.ToInt32(Console.ReadLine());
        int horas = Convert.ToInt32(Console.ReadLine());
        double valorHora = Convert.ToDouble(Console.ReadLine());
        double salario = valorHora * horas;
        Console.WriteLine("NUMBER = " + numero);
        Console.WriteLine("SALARY = U$ " + String.Format("{0:0.00}", salario));
    }

}