using System;

class URI
{

    static void Main(string[] args)
    {
        double raio = Convert.ToDouble(Console.ReadLine());
        double volume = (4.0 / 3) * 3.14159 * Math.Pow(raio, 3);
        Console.WriteLine("VOLUME = " + String.Format("{0:0.000}", volume));
    }

}