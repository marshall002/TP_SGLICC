using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using DAO;

namespace CTR
{
    public class CtrNotificacion
    {
        DaoNotificacion d_noti;
        public CtrNotificacion()
        {
            d_noti = new DaoNotificacion();
        }

        public List<DtoNotificacion> listarNotificacionesByPersona(string id_persona)
        {
            return d_noti.getNotificacionesByPersona(id_persona);
        }
        public void Ctr_InsertarNotificaciones(DtoNotificacion dto_notificaciones)
        {
            d_noti.InsertarNotificaciones(dto_notificaciones);
        }
        public void Ctr_ActualizarFLG_NOTI_MOSTRADO(string flg_noti_mostrado,int id_notificacion)
        {
            d_noti.Dao_ActualizarFLG_NOTI_MOSTRADO(flg_noti_mostrado, id_notificacion);
        }
        public List<DtoNotificacion> Ctr_MostrarUltimaNotificacion(DtoNotificacion dto_notificacion, int id_persona)
        {
            return d_noti.Dao_MostrarUltimaNotificacion(dto_notificacion, id_persona);
        }
        public bool Ctr_ConsultarUltimoFLG_NOTI_MOSTRADO_Notificacion(DtoNotificacion dto_notificacion2 , int id_persona)
        {
            return d_noti.Dao_ConsultarUltimoFLG_NOTI_MOSTRADO_Notificacion(dto_notificacion2, id_persona);
        }
    }
}
