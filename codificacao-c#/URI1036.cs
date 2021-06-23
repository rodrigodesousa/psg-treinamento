using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        double A = Convert.ToDouble(linha[0]);
        double B = Convert.ToDouble(linha[1]);
        double C = Convert.ToDouble(linha[2]);
        double delta = Math.Pow(B, 2) - 4 * A * C;
        double divisor1 = (-B + Math.Sqrt(delta));
        double divisor2 = (-B - Math.Sqrt(delta));
        double dividendo = 2 * A;

        if (divisor1 == 0 || divisor2 == 0 || dividendo == 0 || delta < 0)
        {
            Console.WriteLine("Impossivel calcular");
        }
        else
        {
            double r1 = divisor1 / dividendo;
            double r2 = divisor2 / dividendo;
            Console.WriteLine("R1 = " + String.Format("{0:0.00000}", r1));
            Console.WriteLine("R2 = " + String.Format("{0:0.00000}", r2));
        }
    }

}