using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data.SqlClient;
using System.Data;

namespace DAO
{
    public class DaoInmueble_x_avisos
    {
        SqlConnection conexion;
        public DaoInmueble_x_avisos()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoInmuebles_x_avisos> Dao_Listar_Sub_Avisos(DtoAviso dto_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_Sub_Avisos", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoInmuebles_x_avisos> listarsubavisos = new List<DtoInmuebles_x_avisos>();
            while (reader.Read())
            {
                DtoInmuebles_x_avisos dto_subavisos = new DtoInmuebles_x_avisos();
                dto_subavisos.id_inmuebles_avisos = int.Parse(reader[0].ToString());
                dto_subavisos.Piso = int.Parse(reader[1].ToString());
                dto_subavisos.cantidad = int.Parse(reader[2].ToString());
                dto_subavisos.descripcion_tipo_inmueble = reader[3].ToString();
                dto_subavisos.descripcion_subtipo_inmueble = reader[4].ToString();
                dto_subavisos.precio_sub_aviso = double.Parse(reader[5].ToString());
                listarsubavisos.Add(dto_subavisos);
            }
            return listarsubavisos;
        }
        public List<DtoUsuario> Dao_Cargar_informacion_de_la_Empresa(DtoUsuario dto_usuario)
        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_informacion_de_la_Empresa", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_usuario.id_persona);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoUsuario> CargarEmpresa = new List<DtoUsuario>();
            while (reader.Read())
            {
                dto_usuario.nombre_empresa = reader[0].ToString();
                dto_usuario.ruc = int.Parse(reader[1].ToString());
                dto_usuario.logo = reader[2].ToString();
            }
            return CargarEmpresa;
        }
        public List<DtoInmuebles_x_avisos> Cargar_informacion_del_sub_aviso(DtoInmuebles_x_avisos dto_sub_aviso, DtoAviso dto_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_informacion_del_sub_aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            cmd.Parameters.AddWithValue("@piso", dto_sub_aviso.Piso);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoInmuebles_x_avisos> Cargar_Informacion_Sub_aviso = new List<DtoInmuebles_x_avisos>();
            while (reader.Read())
            {
                dto_sub_aviso.descripcion_tipo_inmueble = reader[0].ToString();
                dto_sub_aviso.descripcion_subtipo_inmueble = reader[1].ToString();
                dto_sub_aviso.descripcion_sub_aviso = reader[2].ToString();
                dto_sub_aviso.precio_sub_aviso = double.Parse(reader[3].ToString());
                Cargar_Informacion_Sub_aviso.Add(dto_sub_aviso);
            }
            return Cargar_Informacion_Sub_aviso;
        }
        public List<DtoCaracteristicasAviso> Dao_Cargar_Caracteristicas_Adicionales_del_Aviso(DtoCaracteristicasAviso dto_aviso,DtoInmuebles_x_avisos dto_subaviso,int caracteristica)
        {
            SqlCommand cmd = new SqlCommand("sp_Listar_Caracteristicas_subAviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_caracteristica", caracteristica);
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            cmd.Parameters.AddWithValue("@piso", dto_subaviso.Piso);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCaracteristicasAviso> listarSubCaracteristicasdeAviso = new List<DtoCaracteristicasAviso>();
            DtoCaracteristicasAviso dto_subcaviso;
            while (reader.Read())
            {
                dto_subcaviso = new DtoCaracteristicasAviso();
                dto_subcaviso.descripcion_sub_caracteristica = reader[0].ToString();
                listarSubCaracteristicasdeAviso.Add(dto_subcaviso);
            }
            conexion.Close();
            return listarSubCaracteristicasdeAviso;
        }
    }
}
