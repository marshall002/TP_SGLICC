using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoPersona
    {
        public int id_persona { get; set; }
        public string nombres { get; set; }
        public string apellidos { get; set; }
        public DateTime? fecha_nac { get; set; }
        public string dni { get; set; }
        public int? celular { get; set; }
        public int? telefono { get; set; }
        public string direccion { get; set; }
        public string correo { get; set; }
        public string clave { get; set; }
        public string img_ruta { get; set; }
        public int id_estado { get; set; }
        public int? id_distrito { get; set; }
        public DateTime fecha_registro { get; set; }
        public string token { get; set; }

        public string dni_o_correo { get; set; }
        public string nombre_distrito { get; set; }
        public string tipo_perfil { get; set; }
        public string nombre_estado { get; set; }
    }

    public class aux_DtoPersona
    {
        public DateTime fecha_nac { get; set; }
        public int celular { get; set; }
        public int telefono { get; set; }
        public int id_distrito { get; set; }

    }
}
