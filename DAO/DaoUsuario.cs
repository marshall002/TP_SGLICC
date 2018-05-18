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
    public class DaoUsuario
    {
        SqlConnection conexion;
        public DaoUsuario()
        {
            conexion = new SqlConnection(ConexionBD.CadenaConexion);
        }
        
        public bool Dao_VerificarToken(DtoUsuario dto_usuario,string token)
        {
            SqlCommand cmd = new SqlCommand("sp_VerificarToken", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@token", token);
            conexion.Open();
            bool HayRegistros;
            SqlDataReader reader = cmd.ExecuteReader();
            HayRegistros = reader.Read();

            if (HayRegistros)
            {
                dto_usuario.token = reader[0].ToString();
            }
            conexion.Close();
            return HayRegistros;

        }

        public void Dao_ActualizarMiInformacion(DtoUsuario dto_usuario, aux_DtoUsuario aux_dto_usuario, DtoDireccion_Especifica dto_direccion_especifica )
        {
            //Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd/MM/yyyy") : "No Especificado")
            SqlCommand cmd = new SqlCommand("sp_ActualizarMiInformacion", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("id_persona", dto_usuario.id_persona);
            cmd.Parameters.AddWithValue("imagen_perfil",dto_usuario.img_ruta);
            cmd.Parameters.AddWithValue("nombres", dto_usuario.nombres);
            cmd.Parameters.AddWithValue("apellidos", dto_usuario.apellidos);
            cmd.Parameters.AddWithValue("fecha_nacimiento", aux_dto_usuario.fecha_nac);
            cmd.Parameters.AddWithValue("direccion", dto_usuario.direccion);
            cmd.Parameters.AddWithValue("latitud", dto_direccion_especifica.latitud);
            cmd.Parameters.AddWithValue("longitud", dto_direccion_especifica.longitud);
            cmd.Parameters.AddWithValue("region", dto_direccion_especifica.region);
            cmd.Parameters.AddWithValue("id_distrito", aux_dto_usuario.id_distrito);
            cmd.Parameters.AddWithValue("celular", aux_dto_usuario.celular);
            cmd.Parameters.AddWithValue("telefono", aux_dto_usuario.telefono);
            cmd.Parameters.AddWithValue("correo", dto_usuario.correo);
            cmd.Parameters.AddWithValue("documento", dto_usuario.dni);
            cmd.Parameters.AddWithValue("imagen_empresa", dto_usuario.logo);
            cmd.Parameters.AddWithValue("nombre_empresa", dto_usuario.nombre_empresa);
            cmd.Parameters.AddWithValue("ruc", aux_dto_usuario.ruc);
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();

        }
        public void Dao_Poner_Token_Por_Correo_Cambiado(DtoUsuario dto_usuario , string token3)
        {
            //Convert.ToString(dto_cliente.fecha_nac.HasValue ? dto_cliente.fecha_nac.Value.ToString("dd/MM/yyyy") : "No Especificado")
            SqlCommand cmd = new SqlCommand("sp_Poner_Token_Por_Correo_Cambiado", conexion);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("id_persona", dto_usuario.id_persona);
            cmd.Parameters.AddWithValue("token", token3);
            
            conexion.Open();
            cmd.ExecuteNonQuery();
            conexion.Close();
        }

      }
    }

