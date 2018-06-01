using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using DTO;

namespace DAO
{
    public class DaoNotificacion
    {
        SqlConnection conexion;
        public DaoNotificacion()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoNotificacion> getNotificacionesByPersona(string id_persona)
        {
            SqlCommand cmd = new SqlCommand("sp_ListarNotificaciones", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_persona", id_persona);            
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoNotificacion> lista = new List<DtoNotificacion>();
            DtoNotificacion noti;
            while (reader.Read())
            {
                noti = new DtoNotificacion();
                noti.id_notificacion = reader[0].ToString();
                noti.fecha_emision = DateTime.Parse(reader[1].ToString());
                noti.clase_visto = reader[2].ToString();
                noti.flg_visto = reader[3].ToString();
                noti.titulo_color = reader[4].ToString();
                noti.titulo = reader[5].ToString();
                noti.mensaje = reader[6].ToString();
                noti.imagen = reader[7].ToString();
                noti.flg_noti_mostrado = reader[8].ToString();
                noti.id_persona = int.Parse(reader[9].ToString());                
                lista.Add(noti);
            }
            conexion.Close();
            return lista;
        }

        public List<DtoNotificacion> Dao_MostrarUltimaNotificacion(DtoNotificacion dto_notificacion , int id_persona)
        {
            SqlCommand cmd = new SqlCommand("sp_MostrarUltimaNotificacion", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_persona", id_persona);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoNotificacion> lista = new List<DtoNotificacion>();
           
            while (reader.Read())
            {

                dto_notificacion.id_notificacion = reader[0].ToString();
                dto_notificacion.fecha_emision = DateTime.Parse(reader[1].ToString());
                dto_notificacion.clase_visto = reader[2].ToString();
                dto_notificacion.flg_visto = reader[3].ToString();
                dto_notificacion.titulo_color = reader[4].ToString();               
                dto_notificacion.titulo = reader[5].ToString();
                dto_notificacion.mensaje = reader[6].ToString();
                dto_notificacion.imagen = reader[7].ToString();
                dto_notificacion.flg_noti_mostrado = reader[8].ToString();
                dto_notificacion.id_persona = int.Parse(reader[9].ToString());
                lista.Add(dto_notificacion);
            }
            conexion.Close();
            return lista;
        }

        public void InsertarNotificaciones(DtoNotificacion dto_notificaciones)
        {

            SqlCommand cmd = new SqlCommand("sp_InsertarNotificaciones", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@fecha_emision", dto_notificaciones.fecha_emision);
            cmd.Parameters.AddWithValue("@clase_visto", dto_notificaciones.clase_visto);
            cmd.Parameters.AddWithValue("@flg_visto", dto_notificaciones.flg_visto);
            cmd.Parameters.AddWithValue("@titulo_color", dto_notificaciones.titulo_color);           
            cmd.Parameters.AddWithValue("@titulo", dto_notificaciones.titulo);
            cmd.Parameters.AddWithValue("@mensaje", dto_notificaciones.mensaje);
            cmd.Parameters.AddWithValue("@imagen", dto_notificaciones.imagen);
            cmd.Parameters.AddWithValue("@flg_noti_mostrado", dto_notificaciones.flg_noti_mostrado);
            cmd.Parameters.AddWithValue("@id_persona", dto_notificaciones.id_persona);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }


        public void Dao_ActualizarFLG_NOTI_MOSTRADO(string flg_noti_mostrado,int id_notificacion)
        {

            SqlCommand cmd = new SqlCommand("sp_ActualizarFLG_NOTI_MOSTRADO", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@flg_noti_mostrado", flg_noti_mostrado);
            cmd.Parameters.AddWithValue("@id_notificacion", id_notificacion);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }

      
        public bool Dao_ConsultarUltimoFLG_NOTI_MOSTRADO_Notificacion(DtoNotificacion dto_notificacion2, int id_persona)
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultarUltimoFLG_NOTI_MOSTRADO_Notificacion", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_persona", id_persona);
            conexion.Open();
            bool hayRegistros;
            SqlDataReader reader = cmd.ExecuteReader();
            hayRegistros = reader.Read();
            if (hayRegistros)
            {
                dto_notificacion2.flg_noti_mostrado = reader[0].ToString();                
            }
            conexion.Close();
            return hayRegistros;
        }
    }
}
