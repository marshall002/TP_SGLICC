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
    public class DaoDocumento_X_Aviso
    {
        SqlConnection conexion;
        public DaoDocumento_X_Aviso()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }



        //royer
        public void Dao_Insertar_Documentos_X_Aviso(DtoDocumentos_X_Aviso dto_documentos_x_aviso)
        {
            SqlCommand cmd = new SqlCommand("sp_Insertar_Documentos_X_Aviso", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@id_aviso", aux_dtoaviso.id_aviso);
            cmd.Parameters.AddWithValue("@nombre_documento", dto_documentos_x_aviso.nombre_documento);

            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }

















    }

}