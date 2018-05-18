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
    public class DaoUtil
    {
        SqlConnection conexion;
        public DaoUtil()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }

        public string getValueById(string tabla, string columna, string columna_where, object valor_where)
        {
            SqlCommand cmd = new SqlCommand("SELECT " + columna + " " +
                                             " FROM " + tabla + " " +
                                            " WHERE " + columna_where + " = '" + valor_where + "'"
                                            , conexion);

            string valor_retornado = null;
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
                valor_retornado = reader[0].ToString();
            conexion.Close();

            return valor_retornado;
        }

        public string getValueByIds(string tabla, string columna, string columna_where_1, object valor_where_1, string columna_where_2, object valor_where_2)
        {
            SqlCommand cmd = new SqlCommand("SELECT " + columna +
                                             " FROM " + tabla +
                                            " WHERE " + columna_where_1 + " = '" + valor_where_1 + "'" +
                                              " AND " + columna_where_2 + " = '" + valor_where_2 + "'"
                                            , conexion);

            string valor_retornado = null;
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
                valor_retornado = reader[0].ToString();
            conexion.Close();

            return valor_retornado;
        }

        public string getLastId(string tabla, string columna)
        {
            SqlCommand cmd = new SqlCommand("SELECT " + columna + " " +
                                             " FROM " + tabla + " " +
                                              "ORDER BY " + columna + "  DESC"
                                            , conexion);

            string valor_retornado = null;
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
                valor_retornado = reader[0].ToString();
            conexion.Close();

            return valor_retornado;
        }

        public string updateValue(string tabla, string columna_where, object valor_where, string columna_update, object valor_update)
        {
            SqlCommand cmd = new SqlCommand("UPDATE " + tabla +
                                              " SET " + columna_update + " = '" + valor_update + "' " +
                                             "WHERE " + columna_where + " = '" + valor_where + "'"
                                            , conexion);

            string valor_retornado = null;
            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
                valor_retornado = reader[0].ToString();
            conexion.Close();

            return valor_retornado;
        }

        public string getDescTurno(string turno)
        {
            switch (turno)
            {
                case "1": return "MAÑANA";
                case "2": return "TARDE";
                case "3": return "NOCHE";
                case "4": return "MAÑANA - TARDE";
                case "5": return "MAÑANA - NOCHE";
                case "6": return "TARDE - NOCHE";
                default: return string.Empty;
            }
        }
    }
}
