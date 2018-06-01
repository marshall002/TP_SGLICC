using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoCompra
    {
        public int id_vendedor_persona { get; set; }
        public int id_comprador_persona { get; set; }
        public string nombre_vendedor { get; set; }
        public string nombre_comprador { get; set; }
        public DateTime fecha_compra { get; set; }
        public int codigo { get; set; }
        public string estado { get; set; }
        public string descripcion_subtipo_inmueble { get; set; }
        public double precio { get; set; }
        public int subtotal { get; set; }
        public string tipo_servicio { get; set; }
        public int id_aviso { get; set; }
        public int cuotas { get; set; }
    }
}
