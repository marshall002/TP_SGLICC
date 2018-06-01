using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DTO;


namespace DAO
{

    public class DaoProvincia
    {
        SqlConnection conexion = new SqlConnection(ConexionBD.CadenaConexion);

        public DataTable ListarProvincias()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_ListarProvincias", conexion);
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


        public List<DtoProvincia> getProvincias(int codDepartamento)
        {
            SqlCommand cmd = new SqlCommand("sp_ListarProvinciasDeDepartamento", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codDepartamento", codDepartamento);

            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            List<DtoProvincia> listaProvincias = new List<DtoProvincia>();
            DtoProvincia provincia;
            while (reader.Read())
            {
                provincia = new DtoProvincia();
                provincia.id_provincia = int.Parse(reader[0].ToString());
                provincia.nombre = reader[1].ToString();

                listaProvincias.Add(provincia);
            }

            conexion.Close();
            return listaProvincias;

        }
    }
}