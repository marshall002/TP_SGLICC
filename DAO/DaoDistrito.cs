using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DTO;


namespace DAO
{

    public class DaoDistrito
    {
        SqlConnection conexion = new SqlConnection(ConexionBD.CadenaConexion);

        public DataTable ListarDistritos()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_ListarDistritos", conexion);
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

        public List<DtoDistrito> getDistritos(int codProvincia)
        {
            SqlCommand cmd = new SqlCommand("sp_ListarDistritosDeProvincia", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codProvincia", codProvincia);

            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            List<DtoDistrito> listaDistritos = new List<DtoDistrito>();
            DtoDistrito distrito;
            while (reader.Read())
            {
                distrito = new DtoDistrito();
                distrito.id_distrito = int.Parse(reader[0].ToString());
                distrito.nombre = reader[1].ToString();

                listaDistritos.Add(distrito);
            }
            conexion.Close();
            return listaDistritos;
        }

        public List<DtoDistrito> getDistritosDeDepartamento(int codDepartamento)
        {
            SqlCommand cmd = new SqlCommand("sp_ListarDistritosDeDepartamento", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@codDepartamento", codDepartamento);

            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            List<DtoDistrito> listaDistritosDeDepartamento = new List<DtoDistrito>();
            DtoDistrito distrito;
            while (reader.Read())
            {
                distrito = new DtoDistrito();
                distrito.id_distrito = int.Parse(reader[0].ToString());
                distrito.nombre = reader[1].ToString();

                listaDistritosDeDepartamento.Add(distrito);
            }
            conexion.Close();
            return listaDistritosDeDepartamento;

        }
    }
}