using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoUsuario : DtoPersona
    {        
        public string nombre_empresa { get; set; }
        public int? ruc { get; set; }
        public string logo { get; set; }
        public int id_perfil { get; set; }       
       
    }
    public class aux_DtoUsuario : aux_DtoPersona
    {        
        public int ruc { get; set; }  
    }

}
