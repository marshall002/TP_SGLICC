using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoCaracteristicasInmueble : DtoTipoInmueble
    {
        public int id_caracteristica { get; set; }
        public string descripcion_caracteristica_inmueble { get; set; }
    }
}
