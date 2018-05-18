using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoSubTipoInmueble :DtoTipoInmueble
    {
        public int id_sub_tipo_inmueble { get; set; }
        public string descripcion_subtipo_inmueble { get; set; }
    }
}
