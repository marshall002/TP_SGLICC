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
    public class DaoPersona
    {
        SqlConnection conexion;
        public DaoPersona()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }

        public bool DaoConsultarLogueo(DtoPersona dto_persona,DtoUsuario dto_usuario)
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultarLogeo", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@dni_o_correo",dto_persona.dni_o_correo);
            cmd.Parameters.AddWithValue("@clave",dto_persona.clave);

            conexion.Open();
            bool hayRegistros;

            SqlDataReader reader = cmd.ExecuteReader();
            hayRegistros = reader.Read();

            if (hayRegistros)
            {
                dto_persona.id_persona = int.Parse(reader[0].ToString());
                dto_persona.nombres = reader[1].ToString();
                dto_persona.apellidos = reader[2].ToString();
                //dto_persona.fecha_nac = Convert.ToDateTime(reader[3].ToString());
                dto_persona.dni = reader[4].ToString();
                //dto_persona.celular = Convert.ToInt32(reader[5].ToString());
                //dto_persona.telefono = Convert.ToInt32(reader[6].ToString());
                //dto_persona.direccion = reader[7].ToString();
                dto_persona.correo = reader[8].ToString();
                dto_persona.clave = reader[9].ToString();
                dto_persona.img_ruta = reader[10].ToString();
                dto_persona.id_estado = int.Parse(reader[11].ToString());
                //dto_persona.id_distrito = int.Parse(reader[12].ToString());
                //dto_usuario.nombre_empresa = reader[13].ToString();
                //dto_usuario.ruc = Convert.ToInt32(reader[14].ToString());
                //dto_usuario.logo = reader[15].ToString();
                dto_usuario.id_perfil = int.Parse(reader[16].ToString());               
            }

            conexion.Close();
            return hayRegistros;
        }


        public bool DaoObtenerCorreoPersona(string correo)
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultarCorreoPersona", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@correo", correo);

            conexion.Open();
            bool hayRegistros;

            SqlDataReader reader = cmd.ExecuteReader();
            hayRegistros = reader.Read();

            conexion.Close();
            return hayRegistros;
        }

        public bool Dao_ConsultarDocumentoPersona(int documento)
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultarDocumentoPersona", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@documento ", documento);

            conexion.Open();
            bool HayRegistros;
            SqlDataReader reader = cmd.ExecuteReader();
            HayRegistros = reader.Read();

            conexion.Close();
            return HayRegistros;
        }

        public bool Dao_ConsultarCorreo_o_Documento(DtoPersona dto_persona, string correo, int documento)
        {
            SqlCommand cmd = new SqlCommand("sp_ConsultarDniyCorreo", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@correo", correo);
            cmd.Parameters.AddWithValue("@dni", documento);

            conexion.Open();
            bool hayRegistros;

            SqlDataReader reader = cmd.ExecuteReader();
            hayRegistros = reader.Read();

            if (hayRegistros)
            {
                dto_persona.correo =reader[0].ToString();
                dto_persona.dni = reader[1].ToString();                
            }

            conexion.Close();
            return hayRegistros;
        }
                
        public DataSet Dao_SeleccionarUltimoRegistroPersona(DtoPersona dto_persona)
        {
            SqlCommand cmd = new SqlCommand("sp_SeleccionarUltimoRegistroPersona", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            //unComando.Parameters.AddWithValue("@idviaje", dtoviaje.codViaje);
            DataSet ds = new DataSet();
            conexion.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            da.Dispose();

            if (ds.Tables[0].Rows.Count == 1)
            {
                dto_persona.id_persona = (int)ds.Tables[0].Rows[0].ItemArray[0];               
            }
            conexion.Close();
            conexion.Dispose();
            return ds;
        }

        public void Dao_RegistrarPersona(DtoCliente dto_cliente)
        {

            SqlCommand cmd = new SqlCommand("sp_RegistrarPersona", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@documento", dto_cliente.dni);
            cmd.Parameters.AddWithValue("@nombres", dto_cliente.nombres);
            cmd.Parameters.AddWithValue("@apellidos", dto_cliente.apellidos);
            cmd.Parameters.AddWithValue("@correo", dto_cliente.correo);
            cmd.Parameters.AddWithValue("@clave", dto_cliente.clave);
            cmd.Parameters.AddWithValue("@imagen_perfil", dto_cliente.img_ruta);
            cmd.Parameters.AddWithValue("@fecha_registro", dto_cliente.fecha_registro);
            cmd.Parameters.AddWithValue("@logoempresa", dto_cliente.logo);
            cmd.Parameters.AddWithValue("@token", dto_cliente.token);

            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }



    }
}
