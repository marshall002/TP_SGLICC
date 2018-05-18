using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;

namespace DAO
{
    public class DaoCliente
    {
        SqlConnection conexion;
        public DaoCliente()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        public List<DtoCliente> Dao_ListarClientes()
        {
            SqlCommand cmd = new SqlCommand("sp_ListarClientes", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCliente> listarClientes = new List<DtoCliente>();
            DtoCliente dto_clientes;
            while (reader.Read())
            {
                dto_clientes = new DtoCliente();
                dto_clientes.id_persona = int.Parse(reader[0].ToString());
                dto_clientes.nombres = reader[1].ToString().Trim();
                dto_clientes.dni = reader[2].ToString();
                dto_clientes.img_ruta = Constante.FOTO_PERFIL + reader[3].ToString();
                dto_clientes.nombre_estado = reader[4].ToString();
                dto_clientes.tipo_perfil = reader[5].ToString();

                listarClientes.Add(dto_clientes);
            }
            conexion.Close();
            return listarClientes;
        }

        public List<DtoCliente> Dao_CargarInformacionCliente(DtoPersona dto_persona, DtoCliente dto_cliente)
        {
            SqlCommand cmd = new SqlCommand("sp_CargarInformacionDeCliente", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_persona.id_persona);
            conexion.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCliente> listarInformacioncliente = new List<DtoCliente>();

            while (reader.Read())
            {
                dto_cliente.id_persona = int.Parse(reader[0].ToString());
                dto_cliente.nombres = reader[1].ToString();
                dto_cliente.fecha_nac = reader[2] == DBNull.Value ? (DateTime?)null : reader.GetDateTime(2);
                dto_cliente.dni = reader[3].ToString().Trim();
                dto_cliente.celular = reader[4] == System.DBNull.Value ? default(int) : int.Parse(reader[4].ToString());
                dto_cliente.telefono = reader[5] == System.DBNull.Value ? default(int) : int.Parse(reader[5].ToString());
                dto_cliente.direccion = reader[6].ToString().Trim();
                dto_cliente.correo = reader[7].ToString().Trim();
                dto_cliente.img_ruta = Constante.FOTO_PERFIL + reader[8].ToString();
                dto_cliente.nombre_estado = reader[9].ToString();
                dto_cliente.tipo_perfil = reader[10].ToString();
                dto_cliente.nombre_distrito = reader[11].ToString();
                dto_cliente.nombre_empresa = reader[12].ToString();
                dto_cliente.ruc = reader[13] == System.DBNull.Value ? default(int) : int.Parse(reader[13].ToString());
                dto_cliente.logo = Constante.URL_IMAGEN_EMPRESA + reader[14].ToString();

                listarInformacioncliente.Add(dto_cliente);
            }
            conexion.Close();
            return listarInformacioncliente;
        }

        public void Dao_InsertarTipoDeCliente(DtoCliente dto_cliente)
        {
            SqlCommand cmd = new SqlCommand("sp_InsertarTipoDeCliente", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@id_persona", dto_cliente.id_persona);           
            cmd.Parameters.AddWithValue("@propietario", 1);
            cmd.Parameters.AddWithValue("@empresa", 2);

            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }

        //public DataSet Dao_SeleccionarEstadoCliente(DtoCliente dto_cliente,int id_persona)
        //{
        //    SqlCommand cmd = new SqlCommand("sp_SeleccionarEstadoCliente", conexion);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@id_persona", id_persona);

        //    DataSet ds = new DataSet();
        //    conexion.Open();
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(ds);
        //    da.Dispose();

        //    if (ds.Tables[0].Rows.Count == 1)
        //    {
        //        dto_cliente.estado_cliente = "False";
        //    }
        //    conexion.Close();
        //    conexion.Dispose();
        //    return ds;
        //}

        public void Dao_SeleccionarEstadoCliente(DtoCliente dto_cliente, int id_persona)
        {
            SqlCommand cmd = new SqlCommand("sp_SeleccionarEstadoCliente", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", id_persona);
            DataSet ds = new DataSet();
            conexion.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            da.Dispose();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                dto_cliente.estado_cliente = reader[0].ToString();  
            }
            conexion.Close();
            conexion.Dispose();
        }

        public List<DtoCliente> Dao_CargarMiInformacion(DtoPersona dto_persona,DtoCliente dto_cliente)
        {
            SqlCommand cmd = new SqlCommand("sp_CargarMiInformacion", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_persona.id_persona);

            conexion.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            List<DtoCliente> listar_mi_informacion = new List<DtoCliente>();
            while(reader.Read())
            {
                dto_cliente.id_persona = int.Parse(reader[0].ToString());
                dto_cliente.nombres = reader[1].ToString();
                dto_cliente.fecha_nac =  reader[2] == DBNull.Value ? (DateTime?)null : reader.GetDateTime(2);
                dto_cliente.dni = reader[3].ToString();
                dto_cliente.celular = reader[4] == System.DBNull.Value ? default(int) : int.Parse(reader[4].ToString());
                dto_cliente.telefono = reader[5] == System.DBNull.Value ? default(int) : int.Parse(reader[5].ToString());
                dto_cliente.direccion = reader[6].ToString();
                dto_cliente.correo = reader[7].ToString();
                dto_cliente.img_ruta = Constante.FOTO_PERFIL + reader[8].ToString();
                dto_cliente.nombre_estado = reader[9].ToString();
                dto_cliente.tipo_perfil = reader[10].ToString();
                dto_cliente.nombre_distrito = reader[11].ToString().Trim();
                dto_cliente.nombre_empresa = reader[12].ToString();
                dto_cliente.ruc = reader[13] == System.DBNull.Value ? default(int) : int.Parse(reader[13].ToString());
                dto_cliente.logo = Constante.URL_IMAGEN_EMPRESA + reader[14].ToString();

                listar_mi_informacion.Add(dto_cliente);
            }
            conexion.Close();
            return listar_mi_informacion;
        }


        public void Dao_Saber_Que_Tipo_Cliente_es(DtoCliente dto_cliente,DtoTipoCliente dto_tipo_cliente)
        {
            SqlCommand cmd = new SqlCommand("sp_Saber_Que_Tipo_Cliente_es", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona", dto_cliente.id_persona);
            cmd.Parameters.AddWithValue("@id_tipo_cliente", dto_tipo_cliente.id_tipo_cliente);
            DataSet ds = new DataSet();
            conexion.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            da.Dispose();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                dto_tipo_cliente.id_tipo_cliente = int.Parse(reader[0].ToString());
            }
            conexion.Close();
            conexion.Dispose();
        }

        public void Dao_Cargar_Mi_Direccion(DtoCliente dto_cliente,DtoDireccion_Especifica dto_direccion_especifica)
        {
            SqlCommand cmd = new SqlCommand("sp_Cargar_Mis_Datos_Para_Publicacion", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id_persona",dto_cliente.id_persona);
            DataSet ds = new DataSet();
            conexion.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            da.Dispose();

            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                dto_direccion_especifica.id_persona = int.Parse(reader[0].ToString());
                dto_direccion_especifica.direccion = reader[1].ToString();
                dto_direccion_especifica.latitud = reader[2].ToString();
                dto_direccion_especifica.longitud = reader[3].ToString();
                dto_direccion_especifica.region = reader[4].ToString();
                dto_direccion_especifica.nombre_distrito = reader[5].ToString();
            }
            conexion.Close();
            conexion.Dispose();
        }


    }
}
