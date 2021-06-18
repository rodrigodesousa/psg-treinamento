using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        double a = Convert.ToDouble(linha[0]);
        double b = Convert.ToDouble(linha[1]);
        double c = Convert.ToDouble(linha[2]);
        double areaTriangulo = a * c / 2;
        double areaCirculo = 3.14159 * Math.Pow(c, 2);
        double areaTrapezio = (a + b) * c / 2;
        double areaQuadrado = Math.Pow(b, 2);
        double areaRetangulo = a * b;
        Console.WriteLine("TRIANGULO: " + String.Format("{0:0.000}", areaTriangulo));
        Console.WriteLine("CIRCULO: " + String.Format("{0:0.000}", areaCirculo));
        Console.WriteLine("TRAPEZIO: " + String.Format("{0:0.000}", areaTrapezio));
        Console.WriteLine("QUADRADO: " + String.Format("{0:0.000}", areaQuadrado));
        Console.WriteLine("RETANGULO: " + String.Format("{0:0.000}", areaRetangulo));
    }

}