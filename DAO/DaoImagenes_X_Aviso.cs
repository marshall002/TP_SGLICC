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
    public class DaoImagenes_X_Aviso
    {
        SqlConnection conexion;
        public DaoImagenes_X_Aviso()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoImagenes_X_Aviso> Dao_Capturar_Imagenes(DtoAviso dto_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Capturar_Imagen", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@codigo", dto_aviso.codigo);
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoImagenes_X_Aviso> listarImagenesdeAviso = new List<DtoImagenes_X_Aviso>();
            DtoImagenes_X_Aviso dto_imagen;
            while (reader.Read())
            {
                dto_imagen = new DtoImagenes_X_Aviso();
                dto_imagen.imagen = reader[0].ToString();
                dto_imagen.tipo_servicio = reader[1].ToString();
                listarImagenesdeAviso.Add(dto_imagen);
            }
            conexion.Close();
            return listarImagenesdeAviso;
        }



        //royer
        public void Dao_Insertar_Imagenes_X_Aviso(DtoImagenes_X_Aviso dto_imagenes_x_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Insertar_Imagenes_X_Aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@id_aviso", aux_dtoaviso.id_aviso);
            cmd.Parameters.AddWithValue("@nombre_imagen", dto_imagenes_x_aviso.imagen);

            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }


    }
}
