using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;

namespace DAO
{

    public class DaoCliente_X_Tipo_Cliente
    {
        SqlConnection conexion;

        public DaoCliente_X_Tipo_Cliente()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }

        

        public List<DtoCliente_X_Tipo_Cliente> Dao_Seleccionar_Identificador_de_Tipo_Cliente(DtoCliente_X_Tipo_Cliente dto_cliente_x_tipo_cliente)
        {
            SqlCommand cmd = new SqlCommand("sp_Seleccionar_Identificador_de_Tipo_Cliente", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_cliente_x_tipo_cliente.id_persona);
            cmd.Parameters.AddWithValue("@id_tipo_cliente", dto_cliente_x_tipo_cliente.id_tipo_cliente);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCliente_X_Tipo_Cliente> listar_tipo_cliente = new List<DtoCliente_X_Tipo_Cliente>();

            while (reader.Read())
            {
                dto_cliente_x_tipo_cliente.id_persona_cliente = int.Parse(reader[0].ToString());
                listar_tipo_cliente.Add(dto_cliente_x_tipo_cliente);
            }
            conexion.Close();
            return listar_tipo_cliente;
        }


    }
}
