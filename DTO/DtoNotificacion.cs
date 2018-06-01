using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DtoNotificacion
    {
        public string id_notificacion { get; set; }
        public DateTime fecha_emision { get; set; }
        public string clase_visto { get; set; }
        public string flg_visto { get; set; }
        public string titulo_color { get; set; }        
        public string titulo { get; set; }
        public int id_persona { get; set; }
        public string mensaje { get; set; }
        public string imagen { get; set; }
        public string flg_noti_mostrado { get; set; }
    }
}
