using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculaMedia.media
{
    class Media
    {
        public double Nota1 { get; set; }
        public double Nota2 { get; set; }
        public double Nota3 { get; set; }

        public double CalcularMedia()
        {
            return (Nota1 * 2.0 + Nota2 * 3.0 + Nota3 * 5) / 10;
        }
    }
}
