using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CalculaMedia.media;

namespace CalculaMedia
{
    class Program
    {
        static void Main(string[] args)
        {
            Media media = new Media();
            Console.WriteLine("Digite sua primeira nota");
            media.Nota1 = double.Parse(Console.ReadLine());
            Console.WriteLine("Digite sua segunda nota");
            media.Nota2 = double.Parse(Console.ReadLine());
            Console.WriteLine("Digite sua terceira nota");
            media.Nota3 = double.Parse(Console.ReadLine());

            Console.WriteLine("Sua Media é " + String.Format("{0:0.0}", media.CalcularMedia()));

            Console.ReadLine();
        }
    }
}
