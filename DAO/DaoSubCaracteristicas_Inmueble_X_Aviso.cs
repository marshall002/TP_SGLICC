using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DTO;

namespace DAO
{
    public class DaoSubCaracteristicas_Inmueble_X_Aviso
    {
        SqlConnection conexion;

        public DaoSubCaracteristicas_Inmueble_X_Aviso()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }


        //royer
        public void Dao_Insertar_SubCaracteristicas_X_Aviso(DtoSubCaracteristicas_Inmueble_X_Aviso dto_subcaracteristicas_inmueble_x_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Insertar_SubCaracteristicas_X_Aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@id_aviso", aux_dtoaviso.id_aviso);
           
            cmd.Parameters.AddWithValue("@id_caracteristica", dto_subcaracteristicas_inmueble_x_aviso.id_caracteristica);
            cmd.Parameters.AddWithValue("@id_sub_caracteristica", dto_subcaracteristicas_inmueble_x_aviso.id_sub_caracteristica);

            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }








    }
}
