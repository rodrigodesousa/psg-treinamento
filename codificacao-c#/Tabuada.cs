using System;

class Program
{
    static void Main(string[] args)
    {
        while (true)
        {
            Console.WriteLine("Qual tabuada? :");

            int tabuada = Convert.ToInt32(Console.ReadLine());
            if (tabuada == 0)
            {
                break;
            }

            Console.WriteLine("Tabuada do: " + tabuada);

            int x = 0;

            for (int i = 1; i < 11; i++)
            {
                x = tabuada * i;
                Console.WriteLine(tabuada + " x " + i + " = " + x);
            }
        }
    }
}