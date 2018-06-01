using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using System.Data.SqlClient;

namespace DAO
{
    public class DaoImagenes_sub_Avisos
    {
        SqlConnection conexion;
        public DaoImagenes_sub_Avisos()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoImagenes_sub_Avisos> Cargar_imagen_sub_aviso (DtoInmuebles_x_avisos dto_sub_aviso,DtoAviso dto_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Capturar_Imagen_sub_Aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            cmd.Parameters.AddWithValue("@piso", dto_sub_aviso.Piso);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoImagenes_sub_Avisos> listarImagenesdeAviso = new List<DtoImagenes_sub_Avisos>();
            DtoImagenes_sub_Avisos dto_imagen;
            while(reader.Read())
            {
                dto_imagen = new DtoImagenes_sub_Avisos();
                dto_imagen.imagen = reader[0].ToString();
                dto_imagen.tipo_servicio= reader[1].ToString();
                listarImagenesdeAviso.Add(dto_imagen);
            }
            conexion.Close();
            return listarImagenesdeAviso;
        }
    }
}
