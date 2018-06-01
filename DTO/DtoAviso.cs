using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoAviso : DtoSubTipoInmueble
    {
        public string nombre_propietario { get; set; }
        public int id_aviso { get; set; }
        public string tipo_servicio { get; set; }
        public string titulo { get; set; }
        public string descripcion { get; set; }
        public string direccion { get; set; }
        public string visitas { get; set; }
        public int codigo { get; set; }
        public double precio { get; set; }
        public DateTime fecha_inicio { get; set; }
        public DateTime fecha_fin { get; set; }
        public int id_distrito { get; set; }
        public int id_persona { get; set; }
        public int id_tipo_cliete { get; set; }
        public string estado { get; set; }
        public string aviso_tipo { get; set; }
        public int tiempo { get; set; }
        public string latitud { get; set; }
        public string longitud { get; set; }
        public string region_inmueble { get; set; }
        public string departamento_provincia_distrito { get; set; }



        // Falta modificar

        public int Tipo_servicio { get; set; }
        public int Tipo_inmueble { get; set; }
        public DateTime fecha_Fin { get; set; }
        public int id_Distrito { get; set; }
        public int id_Persona { get; set; }
        public string nombre_completo_Persona { get; set; }
        public string Tipo_servicio_text { get; set; }
        public string tipo_cliente_text { get; set; }
        public string nombre_directo { get; set; }


        //referenciar a clase compra
        public int id_vendedor { get; set; }
        public int id_comprador { get; set; }
        public string nombre_vendedor { get; set; }
        public string nombre_comprador { get; set; }
        public DateTime fecha_compra { get; set; }
        public int codigo_compra { get; set; }
    }



    public class aux_DtoAviso
    {
        public int id_aviso { get; set; }
        public int id_tipo_servicio { get; set; }
        public int id_tipo_inmueble { get; set; }
        public int id_sub_tipo_inmueble { get; set; }
        public string titulo { get; set; }
        public string descripcion { get; set; }
        public string direccion { get; set; }
        public int visitas { get; set; }
        public int codigo { get; set; }
        public double precio { get; set; }
        public DateTime fecha_inicio { get; set; }
        public DateTime fecha_fin { get; set; }
        public int id_distrito { get; set; }
        public int id_persona_cliente { get; set; }
        public int estado { get; set; }
        public string tipo_aviso { get; set; }
        public int tiempo_aviso { get; set; }
        public string latitud { get; set; }
        public string longitud { get; set; }
        public string region_inmueble { get; set; }

        public int id_cliente { get; set; }
    }


    public class aux_DtoAviso2 : aux_DtoAviso
    {

        public string nombre_tipo_servicio { get; set; }
        public string nombre_tipo_inmueble { get; set; }
        public string nombre_estado { get; set; }


    }


}
