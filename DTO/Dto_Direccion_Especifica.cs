using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoDireccion_Especifica:DtoPersona
    {       
        public string latitud { get; set; }
        public string longitud { get; set; }
        public string region { get; set; }
    }
    public class aux_Dto_Direccion_Especifica : aux_DtoPersona
    {
       
    }
}
