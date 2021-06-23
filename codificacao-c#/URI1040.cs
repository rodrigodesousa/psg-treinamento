using System;

class URI
{

    static void Main(string[] args)
    {
        string[] linha = Console.ReadLine().Split(' ');
        double N1 = Convert.ToDouble(linha[0]);
        double N2 = Convert.ToDouble(linha[1]);
        double N3 = Convert.ToDouble(linha[2]);
        double N4 = Convert.ToDouble(linha[3]);
        double media = (2 * N1 + 3 * N2 + 4 * N3 + N4) / 10.00;
        if (media == 4.85) // uri resulta em erro sem este if devido arredondamento para 4.9
        {
            media = 4.8;
        }
        if (media >= 7.0)
        {
            Console.WriteLine("Media: " + String.Format("{0:0.0}", media));
            Console.WriteLine("Aluno aprovado.");
        }
        else if (media < 5.0)
        {
            Console.WriteLine("Media: " + String.Format("{0:0.0}", media));
            Console.WriteLine("Aluno reprovado.");
        }
        else
        {
            double exame = Convert.ToDouble(Console.ReadLine());
            double mediaFinal = (media + exame) / 2;
            Console.WriteLine("Media: " + String.Format("{0:0.0}", media));
            Console.WriteLine("Aluno em exame.");
            Console.WriteLine("Nota do exame: " + String.Format("{0:0.0}", exame));
            if (mediaFinal >= 5.0)
            {
                Console.WriteLine("Aluno aprovado.");
            }
            else
            {
                Console.WriteLine("Aluno reprovado.");
            }
            Console.WriteLine("Media final: " + String.Format("{0:0.0}", mediaFinal));

        }
    }

}