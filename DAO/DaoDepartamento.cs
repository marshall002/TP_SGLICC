using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;


namespace DAO
{

    public class DaoDepartamento
    {
        SqlConnection conexion = new SqlConnection(ConexionBD.CadenaConexion);

        public DataTable ListarDepartamentos()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_ListarDepartamentos", conexion);
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch
            {
                return null;
            }
        }


    }
}