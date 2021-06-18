using System;

class URI
{

    static void Main(string[] args)
    {
        double salario = Convert.ToDouble(Console.ReadLine());
        if (salario <= 2000)
        {
            Console.WriteLine("Isento");
        }
        else if (salario <= 3000)
        {
            double imposto = (salario - 2000) * 0.08;
            Console.WriteLine("R$ " + String.Format("{0:0.00}", imposto));
        }
        else if (salario <= 4500)
        {
            double imposto = (salario - 3000) * 0.18 + 80;
            Console.WriteLine("R$ " + String.Format("{0:0.00}", imposto));
        }
        else
        {
            double imposto = (salario - 4500) * 0.28 + 350;
            Console.WriteLine("R$ " + String.Format("{0:0.00}", imposto));
        }
    }

}