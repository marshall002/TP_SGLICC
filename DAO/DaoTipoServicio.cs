using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class DaoTipoServicio
    {
        SqlConnection conexion;

        public DaoTipoServicio()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        

        public DataTable Dao_Seleccionar_Tipo_Servicio()
        {
            try
            {
            SqlCommand cmd = new SqlCommand("sp_Seleccionar_Tipo_De_Servicio", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            conexion.Open();
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
