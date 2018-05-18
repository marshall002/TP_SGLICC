using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;

namespace DAO
{
    public class DaoImagenesPublicacion
    {
        SqlConnection conexion;

        public DaoImagenesPublicacion()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }

        public void Dao_Insertar_Imagenes_De_Propietario(DtoCliente dto_cliente, DtoImagenesPublicacion dto_imagenes_publicacion)
        {
            SqlCommand cmd = new SqlCommand("sp_Insertar_Publicacion", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_cliente.id_persona);
            cmd.Parameters.AddWithValue("@imagen", dto_imagenes_publicacion.imagen);

            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }

       
    }
}
