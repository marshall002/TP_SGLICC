using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
   public class DtoInmuebles_x_avisos:DtoAviso
    {
        public int id_inmuebles_avisos { get; set; }
        public int Piso { get; set; }
        public string descripcion_sub_aviso { get; set; }
        public double precio_sub_aviso { get; set; }
        public int cantidad { get; set; }
    }
}
