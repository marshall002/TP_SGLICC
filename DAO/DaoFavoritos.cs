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
    public class DaoFavoritos
    {
        SqlConnection conexion = new SqlConnection(ConexionBD.CadenaConexion);

        public DataSet Dao_ListarFavoritos(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_VerFavoritos_Avisos_Inmobiliarios", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }

        public DataSet Dao_ListarFavoritos_Proyectos_Inmobiliarios(int id_persona)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_VerFavoritos_Avisos_Inmobiliarios_Proyectos", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id_persona", id_persona);
                DataSet dt = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }
        public void Dao_Eliminar_Favoritos(DtoFavoritos dto_favorito)
        {
            SqlCommand cmd = new SqlCommand("sp_Eliminar_Favorito", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_aviso",dto_favorito.id_aviso);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }
        public void Dao_Insertar_Favoritos(DtoFavoritos dto_favorito)
        {
            SqlCommand cmd = new SqlCommand("sp_Insertar_Favorito", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_favorito.id_persona);
            cmd.Parameters.AddWithValue("@id_aviso", dto_favorito.id_aviso);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }
    }
}
