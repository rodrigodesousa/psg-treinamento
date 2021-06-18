using System;

class URI
{

    static void Main(string[] args)
    {
        double raio = Convert.ToDouble(Console.ReadLine());
        double area = 3.14159 * Math.Pow(raio, 2);
        Console.WriteLine("A=" + String.Format("{0:0.0000}", area));
    }

}